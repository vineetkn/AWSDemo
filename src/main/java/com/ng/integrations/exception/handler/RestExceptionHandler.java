package com.ng.integrations.exception.handler;

import java.security.InvalidKeyException;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.ng.integrations.commons.exception.RestTemplateRemoteException;
import com.ng.integrations.response.APIError;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Order(Ordered.HIGHEST_PRECEDENCE)
@ControllerAdvice
public class RestExceptionHandler extends ResponseEntityExceptionHandler {

	@Override
	protected ResponseEntity<Object> handleHttpRequestMethodNotSupported(
			HttpRequestMethodNotSupportedException ex, HttpHeaders headers, HttpStatus status, WebRequest request) {
		String error = "Malformed JSON request";
		log.debug("context path" + request.getContextPath());
		return buildResponseEntity(new APIError(HttpStatus.METHOD_NOT_ALLOWED, error, ex));
	}
	
	
	
	@Override
	protected ResponseEntity<Object> handleHttpMessageNotReadable(HttpMessageNotReadableException ex,
			HttpHeaders headers, HttpStatus status, WebRequest request) {
		String error = "Malformed JSON request";
		return buildResponseEntity(new APIError(HttpStatus.BAD_REQUEST, error, ex));
	}
	
	
	private ResponseEntity<Object> buildResponseEntity(APIError apiError) {
		Map<String, String> res = new HashMap<String, String>();
		res.put("status", apiError.getStatus().toString());
		res.put("timestamp", apiError.getTimestamp().toString());
		res.put("message", apiError.getMessage());
		res.put("error", apiError.getError());
		res.put("path", apiError.getPath());
		return new ResponseEntity<>(res, apiError.getStatus());
	}

	@ExceptionHandler(EntityNotFoundException.class)
	protected ResponseEntity<Object> handleEntityNotFound(EntityNotFoundException ex) {
		APIError apiError = new APIError(HttpStatus.NOT_FOUND);
		apiError.setMessage(ex.getMessage());
		return buildResponseEntity(apiError);
	}
	
    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handle(Exception ex, 
                HttpServletRequest request, HttpServletResponse response) {
		log.debug("context path handleException " + request.getContextPath());
		log.debug("context path handleException " + ex);
        if (ex instanceof NullPointerException) {
    		APIError apiError = new APIError(HttpStatus.BAD_REQUEST);
    		apiError.setMessage(ex.getMessage());
    		apiError.setPath(request.getContextPath());
    		apiError.setTimestamp(LocalDateTime.now());
    		apiError.setError("Invalid Request.");
    		return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }

	@Override
	protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException ex,
			HttpHeaders headers, HttpStatus status, WebRequest request) {

		log.debug("ERROR = " + ex.getMessage() + " " + ex.getCause(), ex);
		APIError apiError = new APIError(HttpStatus.BAD_REQUEST);
		String message = ex.getFieldErrors()
			        .stream()
			        .map(fieldError -> fieldError.getField() + ": " + fieldError.getDefaultMessage())
			        .collect(Collectors.joining("; "));
//		apiError.setMessage(ex.getBindingResult().getAllErrors().get(0).getDefaultMessage());
		apiError.setMessage(message);
		apiError.setError("Bad Request");
		return buildResponseEntity(apiError);
	}
    
    @ExceptionHandler(HttpClientErrorException.class)
    public ResponseEntity<Object> handleHttpExceptions(Exception ex, 
                HttpServletRequest request, HttpServletResponse response) {
        
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
    }
    
    @ExceptionHandler(RestTemplateRemoteException.class)
    public ResponseEntity<Object> restTemplateRemoteExceptionHandler(RestTemplateRemoteException ex, 
                HttpServletRequest request, HttpServletResponse response) {
		APIError apiError = new APIError(ex.getStatusCode());
		apiError.setMessage(ex.getMessage());
		return buildResponseEntity(apiError);
    }
    
    
    @ExceptionHandler(InvalidKeyException.class)
    public ResponseEntity<Object> handleInvalidKeyException(Exception ex, 
                HttpServletRequest request, HttpServletResponse response) {
        
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }
    
    
    
}
