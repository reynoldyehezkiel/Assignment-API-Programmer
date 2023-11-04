//package com.nutech.config;
//
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.authentication.BadCredentialsException;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;
//
//import com.nutech.model.response.HttpApiResponse;
//
//public class ErrorExceptionHandler extends ResponseEntityExceptionHandler {
//	
//	@ExceptionHandler({ BadCredentialsException.class })
//	@ResponseBody
//	public ResponseEntity<HttpApiResponse> handleUnauthorizeException(Exception e) {
//		HttpApiResponse<Object> res = new HttpApiResponse<Object>();
//		res.setStatus(108);
//		res.setMessage("Token tidak tidak valid atau kadaluwarsa");
//		
//		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(res);
//	}
//}
