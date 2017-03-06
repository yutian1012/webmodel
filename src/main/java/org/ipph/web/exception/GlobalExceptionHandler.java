package org.ipph.web.exception;

import javax.servlet.http.HttpServletRequest;
import javax.validation.ValidationException;

import org.apache.log4j.Logger;
import org.ipph.web.enumration.StatusEnum;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
/**
 * 全局异常处理
 * System Exception: Exception 和 SQL exception
 * Business Exception: BadRequestException, NotFoundException,ServerRejectException, SystemException--自定义异常，这些自定义的异常在什么地方抛出？
 * 参考：http://blog.csdn.net/jingshuaizh/article/details/42646063
 */
@ControllerAdvice
public class GlobalExceptionHandler {
	private static final Logger logger = Logger.getLogger(GlobalExceptionHandler.class);  
    /**
     * 处理所有异常
     * @param request
     * @param ex
     * @return
     */
    @ExceptionHandler(Exception.class)  
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)  
    @ResponseBody
    public ExceptionModel handleAllException(HttpServletRequest request,Exception ex) {
    	return commonHandle(request,ex);
    }
    
    @ExceptionHandler
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public String handle(ValidationException exception) {
        System.out.println("bad request, " + exception.getMessage());
        return "bad request, " + exception.getMessage();
    }
    
    /**
     * 处理所有异常
     * @param request
     * @param ex
     * @return
     */
    @ExceptionHandler(NotFoundException.class)  
    @ResponseStatus(value = HttpStatus.NOT_FOUND)  
    @ResponseBody
    public ExceptionModel handleNotFoundException(HttpServletRequest request,NotFoundException ex) {
       return commonHandle(request, ex);
    }
    /**
     * 通用处理
     * @param request
     * @param ex
     * @return
     */
    private ExceptionModel commonHandle(HttpServletRequest request,Exception ex){
    	 handleLog(request, ex);
         ExceptionModel exceptionModel=new ExceptionModel();
         exceptionModel.setErrorCode(HttpStatus.INTERNAL_SERVER_ERROR.ordinal());
         exceptionModel.setStatus(StatusEnum.ERROR.ordinal());
         exceptionModel.setMessage(ex.toString());
         return exceptionModel;
    }
    /**
     * 日志记录。
     * @param request
     * @param ex
     */
    private void handleLog(HttpServletRequest request, Exception ex) {
        StringBuffer logBuffer = new StringBuffer();  
        if (request != null) {  
            logBuffer.append("  request method=" + request.getMethod());  
            logBuffer.append("  url=" + request.getRequestURL());  
        }  
        if (ex != null) {
            logBuffer.append("  exception:" + ex);  
        }  
        logger.error(logBuffer.toString());  
    }
}
