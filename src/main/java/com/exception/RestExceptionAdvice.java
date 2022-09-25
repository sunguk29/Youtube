package com.exception;


import com.response.DefaultRes;
import lombok.extern.slf4j.Slf4j;
import org.json.JSONException;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.servlet.NoHandlerFoundException;

import java.io.FileNotFoundException;

@ComponentScan
@RestControllerAdvice(basePackages = "com.restcontroller")
@Slf4j
public class RestExceptionAdvice {

    /**
     * JSON 파싱, 역파싱 관련 Exception 발생시
     */
    @ExceptionHandler(JSONException.class)
    protected ResponseEntity handleJSONException(JSONException e) {
        e.printStackTrace();
        return new ResponseEntity(DefaultRes.res(HttpStatus.INTERNAL_SERVER_ERROR), HttpStatus.OK);
    }

    /**
     * Schedule Exception 발생시
     */
    @ExceptionHandler(InterruptedException.class)
    protected void handleInterruptedException(InterruptedException e) {
        e.printStackTrace();
    }

    /**
     * 잘못된 Handler URI를 사용 했을때 NoHandlerFoundException 발생
     */
    @ExceptionHandler(NoHandlerFoundException.class)
    protected ResponseEntity handleNoHandlerFoundException(NoHandlerFoundException e) {
        e.printStackTrace();
        log.info("handleNoHandlerFoundException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.NOT_FOUND), HttpStatus.OK);
    }

    /**
     * 권한이 부족 및 없을 때 GrantAccessDeniedException 발생
     */
    @ExceptionHandler(GrantAccessDeniedException.class)
    protected ResponseEntity handleGrantAccessDeniedException(GrantAccessDeniedException e) {
        e.printStackTrace();
        log.info("handleGrantAccessDeniedException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.FORBIDDEN), HttpStatus.OK);
    }

    /**
     * javax.validation.Valid or @Validated 으로 binding error 발생시 발생한다.
     * HttpMessageConverter 에서 등록한 HttpMessageConverter binding 못할경우 발생
     * 주로 @RequestBody, @RequestPart 어노테이션에서 발생
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    protected ResponseEntity handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        e.printStackTrace();
        log.info("handleMethodArgumentNotValidException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.BAD_REQUEST), HttpStatus.OK);
    }

    /**
     * @ModelAttribut 으로 binding error 발생시 BindException 발생한다.
     * ref https://docs.spring.io/spring/docs/current/spring-framework-reference/web.html#mvc-ann-modelattrib-method-args
     */
    @ExceptionHandler(BindException.class)
    protected ResponseEntity handleBindException(BindException e) {
        e.printStackTrace();
        log.info("handleBindException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.BAD_REQUEST), HttpStatus.OK);
    }

    /**
     * enum type 일치하지 않아 binding 못할 경우 발생
     * 주로 @RequestParam enum으로 binding 못했을 경우 발생
     */
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    protected ResponseEntity handleMethodArgumentTypeMismatchException(MethodArgumentTypeMismatchException e) {
        e.printStackTrace();
        log.info("handleMethodArgumentTypeMismatchException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.BAD_REQUEST), HttpStatus.OK);
    }

    /**
     * 지원하지 않은 HTTP method 호출 할 경우 발생
     */
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    protected ResponseEntity handleHttpRequestMethodNotSupportedException(HttpRequestMethodNotSupportedException e) {
        e.printStackTrace();
        log.info("handleHttpRequestMethodNotSupportedException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.BAD_REQUEST), HttpStatus.OK);
    }

    @ExceptionHandler(NullPointerException.class)
    protected ResponseEntity handleNullPointerException(Exception e) {
        e.printStackTrace();
        log.info("NullPointerException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.INTERNAL_SERVER_ERROR), HttpStatus.OK);
    }

    @ExceptionHandler(Exception.class)
    protected ResponseEntity handleException(Exception e) {
        e.printStackTrace();
        log.info("Global General Exception");
        return new ResponseEntity(DefaultRes.res(HttpStatus.INTERNAL_SERVER_ERROR), HttpStatus.OK);
    }

    @ExceptionHandler(FileNotFoundException.class)
    protected ResponseEntity handleFileNotFoundException(FileNotFoundException e) {
        e.printStackTrace();
        log.info("handleFileNotFoundException");
        return new ResponseEntity(DefaultRes.res(HttpStatus.NO_CONTENT), HttpStatus.OK);
    }
}
