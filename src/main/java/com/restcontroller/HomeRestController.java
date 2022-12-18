package com.restcontroller;

import com.api.sns.kakao.KakaoInfo;
import com.aws.file.FileUploadUtility;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.model.Review;
import com.model.Video;
import com.model.common.MFile;
import com.response.DefaultRes;
import com.response.Message;
import com.service.HomeService;
import com.util.Time;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.bramp.ffmpeg.FFprobe;
import net.bramp.ffmpeg.probe.FFmpegFormat;
import net.bramp.ffmpeg.probe.FFmpegProbeResult;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.api.LoginAPI;
import com.api.sns.google.GoogleAPI;
import com.api.sns.google.GoogleAccess;
import com.api.sns.google.GoogleInfo;
import com.model.User;



@Slf4j
@RestController
@RequiredArgsConstructor
public class HomeRestController {

    private final HomeService homeService;
    private final FileUploadUtility fileUploadUtility;

    private final GoogleAPI googleAPI;

    @Value("${DEFAULT.PROFILE.IMAGE.URL}")
    private String DEFAULT_PROFILE_IMAGE_URL;
    @Value("${DEFAULT.PROFILE.IMAGE.NAME}")
    private String DEFAULT_PROFILE_IMAGE_NAME;


    int last_no;
    public String word;
    Time times = new Time();


    @PostMapping("/test/main")

    public ResponseEntity videoInsert(HttpServletRequest request, Video video) {

        Gson gson = new Gson();
        Message message = new Message();

        //ArrayList<String> strings = new ArrayList<>();
        //strings.add("blahblah");
        MFile mFile = null;

        if (video.getThumbnail_file() == null || video.getThumbnail_file().getSize()==0){
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getThumbnail_file(), null);
            String uploadThumbnail = gson.toJson(mFile);
            video.setThumbnail(uploadThumbnail);
        }

        if (video.getVideo_file() == null || video.getVideo_file().getSize() == 0) {
            message.put("status", false);
        } else {
            mFile = fileUploadUtility.uploadFile(video.getVideo_file(), null);
            //GSON 변환
            String uploadVideo = gson.toJson(mFile);
            video.setVideoFile(uploadVideo);
        }

        message.put("status", true);

        String returnData = "0";

        try {
            FFprobe ffprobe = new FFprobe("C:/Users/user/ffmpeg-5.1.2-essentials_build/ffmpeg-5.1.2-essentials_build/bin/ffprobe.exe"); // window에 설치된  ffprobe.exe 경로
            log.info(mFile.getUrl());
            FFmpegProbeResult probeResult = ffprobe.probe(mFile.getUrl()); // 동영상 경로
            FFmpegFormat format = probeResult.getFormat();
            double second = format.duration; // 초단위
            int videoSecond = (int) Double.parseDouble(String.valueOf(second));
            Math.floor(videoSecond);

            returnData = videoSecond + "";
            System.out.println("second==" + videoSecond);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            System.out.println("@@ media_player_time end @@");
        }

        log.info(returnData);
        video.setTime(returnData);
        int videoNum = homeService.insertVideo(video);

        log.info(String.valueOf(video));
        //message.put("strings", strings);
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/testPreview", method = RequestMethod.POST)
    public ResponseEntity<String> uploadPreviewVideo(ModelAndView mav, HttpServletRequest request, MultipartFile video_file)throws Exception{
        Message message = new Message();

        MFile file = fileUploadUtility.uploadFile(video_file, null);
        message.put("file", file);
        message.put("url", file.getUrl());

        mav.addObject("file", video_file);

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);

    }

    @PostMapping(value = "/getLastNo")
    public ResponseEntity<String> getLastNo(HttpServletRequest request, @RequestBody Map<String, Object> params )throws Exception{

        last_no = Integer.parseInt(params.get("lastNo").toString()) ;

//        log.info("sssssssssssssssssssss   " + params.get("lastNo").toString());
        Message message = new Message();

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @RequestMapping(value = "/getinfinity", method = RequestMethod.GET)
    public ResponseEntity<String> getInfinity(HttpServletRequest request, Video video )throws Exception{

//        last_no = 19;

        int hour, minute, second;

//        log.info("hhhhhhhhhhhhhh  " + String.valueOf(last_no));

        ArrayList<Video> videoList = homeService.selectInfinityVideoList(video, last_no);

        Message message = new Message();

        for(Video tmp:videoList){
            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
            String time = tmp.getTime();
            int videoTime = Integer.parseInt(time);

            LocalDateTime localDateTime = tmp.getReg_datetime();
            String regDateTime = times.TimeFormatChatTimeString(localDateTime);
            tmp.setCompare_reg_datetime(regDateTime);



            second = videoTime % 60;
            minute = videoTime / 60;
            hour = minute / 60;
            int realMinute = minute % 60;

            String dbMinute = Integer.toString(realMinute);
            String dbHour = Integer.toString(hour);
            String dbSecond = Integer.toString(second);

            if (realMinute < 10) {
                dbMinute = "0" + realMinute;
            }

            if (hour < 10) {
                dbHour = "0" + hour;
            }

            if (second < 10) {
                dbSecond = "0" + second;
            }

            String videoTimed;

            if (dbHour.equals("00")) {
                videoTimed = dbMinute + ":" + dbSecond;
            } else {
                videoTimed = dbHour + ":" + dbMinute + ":" + dbSecond;
            }
            tmp.setTime(videoTimed);
        }




        message.put("videoList", videoList);


//        mav.addObject("videoList", videoList);
//
//        mav.setViewName("main");
//        log.info("NNNNNNNNNNNNNNNNNNNN   " + String.valueOf(last_no));

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

    @PostMapping(value = "/postSearchWord")
    public ResponseEntity<String> postSearchWord(HttpServletRequest request, @RequestBody Map<String, Object> params)throws Exception{

        log.info("sssssssssssssssssssss   " + params.get("word").toString());

        word = params.get("word").toString();

        Message message = new Message();

        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
    }

//    @RequestMapping(value = "/getSearch", method = RequestMethod.GET)
//    public ResponseEntity<String> getSearch(HttpServletRequest request, Video video )throws Exception{
//
////        last_no = 19;
//
//        ArrayList<Video> videoList = homeService.searchWord(word);
//
//
//        int hour, minute, second;
//
////        log.info("hhhhhhhhhhhhhh  " + String.valueOf(last_no));
//
//
//        Message message = new Message();
//
//        for(Video tmp:videoList){
//            tmp.setThumbnail_mfile(new Gson().fromJson(tmp.getThumbnail(), MFile.class));
//            tmp.setVideo_mfile(new Gson().fromJson(tmp.getVideoFile(), MFile.class));
//            String time = tmp.getTime();
//            int videoTime = Integer.parseInt(time);
//
//            second = videoTime % 60;
//            minute = videoTime / 60;
//            hour = minute / 60;
//            int realMinute = minute % 60;
//
//            String dbMinute = Integer.toString(realMinute);
//            String dbHour = Integer.toString(hour);
//            String dbSecond = Integer.toString(second);
//
//            if (realMinute < 10) {
//                dbMinute = "0" + realMinute;
//            }
//
//            if (hour < 10) {
//                dbHour = "0" + hour;
//            }
//
//            if (second < 10) {
//                dbSecond = "0" + second;
//            }
//
//            String videoTimed;
//
//            if (dbHour.equals("00")) {
//                videoTimed = dbMinute + ":" + dbSecond;
//            } else {
//                videoTimed = dbHour + ":" + dbMinute + ":" + dbSecond;
//            }
//            tmp.setTime(videoTimed);
//        }
//
//        log.info("hhhhhhhhhhhhhhhhhhhhhhhhhhh         " + videoList.toString());
//
//
//
//
//        message.put("videoList", videoList);
////        mav.setViewName("search");
//
////        mav.addObject("videoList", videoList);
////
////        mav.setViewName("main");
////        log.info("NNNNNNNNNNNNNNNNNNNN   " + String.valueOf(last_no));
//
//
//        return new ResponseEntity(DefaultRes.res(HttpStatus.OK, message), HttpStatus.OK);
////        return mav;
//    }

    @PostMapping("/googleLogin")
    public ResponseEntity googleLogin(HttpServletRequest req, @RequestBody Map<String, Object> pr)throws Exception{

        //log.info("aaaaaaaaaaaaaa" + String.valueOf(params));

        String idToken = pr.get("apiToken").toString();

        String code = pr.get("apiParams").toString();
        String clientSecret = "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";
        String clientId = "558731967747-jev153qunta4ipl2s3p3dunvj3sn0ku3.apps.googleusercontent.com";
        String redirectUri = "http://localhost:8080";


        String RequestUrl = "https://www.googleapis.com/oauth2/v4/token";

        List<NameValuePair> postParams = new ArrayList<NameValuePair>();
        postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
        postParams.add(new BasicNameValuePair("client_id", clientId));
        postParams.add(new BasicNameValuePair("client_secret", clientSecret));
        postParams.add(new BasicNameValuePair("redirect_uri", redirectUri)); // 리다이렉트 URI
        postParams.add(new BasicNameValuePair("code", code)); // auth code 값

        HttpClient client = HttpClientBuilder.create().build();
        HttpPost post = new HttpPost(RequestUrl);
        JsonNode returnNode = null;

        log.info("jjjjjjjjjjjjjjjjj" + code);


        try {
            post.setEntity(new UrlEncodedFormEntity(postParams));
            HttpResponse response = client.execute(post);
            int responseCode = response.getStatusLine().getStatusCode();

            log.info("Sending 'POST' request to URL : " + RequestUrl);
            log.info("Post parameters : " + postParams);
            log.info("Response Code : " + responseCode);


            // JSON 형태 반환값 처리
            ObjectMapper mapper = new ObjectMapper();
            returnNode = mapper.readTree(response.getEntity().getContent());

            log.info("tttttttttttttt" + returnNode.get("access_token"));


            User user = new User();
            MFile profile_img = new MFile();


            GoogleInfo googleInfo = code != null ? googleAPI.getUser(returnNode.get("access_token").toString()) : null;

            log.info("iiiiiiiiiiiiiii" + googleInfo);

            if (googleInfo == null) {
                /** Login Failed*/
                return null;
            }

            user.setEmail(googleInfo.getEmail());
            user.setId(googleInfo.getId());
            user.setName(googleInfo.getName() == null ? "Empty User Name" : googleInfo.getName());
            profile_img.setUrl(googleInfo.getPicture() != null ? googleInfo.getPicture() : null);
            if (profile_img.getUrl() == null) {
                profile_img.setUrl(DEFAULT_PROFILE_IMAGE_URL);
                profile_img.setName(DEFAULT_PROFILE_IMAGE_NAME);
            }
            user.setProfile_img(profile_img);

            log.info("kkkkkkkkkkk" + user);

            HttpSession session =  req.getSession();

            log.info(session.getId());

            session.setAttribute("test", new User());

            User user2 = (User) session.getAttribute("test");

            log.info("qqqqqqqqq" + user2);

        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (ClientProtocolException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity(DefaultRes.res(HttpStatus.OK), HttpStatus.OK);
    }



}