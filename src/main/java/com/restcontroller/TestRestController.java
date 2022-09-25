package com.restcontroller;

import com.api.LoginAPI;
import com.api.mail.MailBuilder;
import com.api.mail.MailFooter;
import com.api.mail.MailLogo;
import com.api.mail.MailType;
import com.model.User;
import com.model.queue.ServerTokenType;
import com.model.queue.Token;
import com.response.DefaultRes;
import com.response.Message;
import com.service.ServerTokenService;
import com.util.TokenGenerator;
import com.validator.test.Test;
import com.validator.test.TestValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.codehaus.jackson.annotate.JsonProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;

@Slf4j
@RestController
@RequiredArgsConstructor
public class TestRestController {

}