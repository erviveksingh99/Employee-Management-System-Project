package com.transline.handler;

import com.transline.custome.IdNotFoundException;
import com.transline.error.ErrorDetails;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.server.ResponseStatusException;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(ResponseStatusException.class)
    public ResponseEntity<ErrorDetails> handleResponseStatusException(ResponseStatusException ex, WebRequest request) {
        ErrorDetails details = new ErrorDetails();
        details.setStatusCode(ex.getStatusCode().value());
        details.setError(ex.getStatusCode().toString());
        details.setException(ex.getClass().getName());
        details.setMessage(ex.getReason());
        details.setStatus(false);
        details.setPath(request.getDescription(false).replace("uri=", ""));
        return new ResponseEntity<>(details, ex.getStatusCode());
    }

    @ExceptionHandler(IdNotFoundException.class)
    public ResponseEntity<ErrorDetails> handleIdNotFoundException(IdNotFoundException ex, WebRequest request) {

        ErrorDetails details = new ErrorDetails();
        details.setStatusCode(HttpStatus.NOT_FOUND.value());
        details.setError(HttpStatus.NOT_FOUND.toString());
        details.setException(ex.getClass().getName());
        details.setMessage(ex.getMessage());
        details.setStatus(false);
        details.setPath(request.getDescription(false).replace("uri=", ""));
        return new ResponseEntity<>(details, HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorDetails> handleException(Exception ex, WebRequest request) {
        ErrorDetails details = new ErrorDetails();
        details.setStatusCode(HttpStatus.BAD_REQUEST.value());
        details.setError(HttpStatus.BAD_REQUEST.toString());
        details.setException(ex.getClass().getName());
        details.setMessage(ex.getMessage());
        details.setStatus(false);
        details.setPath(request.getDescription(false).replace("uri=", ""));  // Extract URI path
        return new ResponseEntity<>(details, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
