package com.slj.blog.common;

public class Result {
	private int code;
	private Object data;
	private String msg;
	
	public Result() {
		super();
	}


	public Result(int code, Object data, String msg) {
		super();
		this.code = code;
		this.data = data;
		this.msg = msg;
	}
	

	public Result(int code, Object data) {
		super();
		this.code = code;
		this.data = data;
	}



	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public static Result createSuccess(){
		return new Result(CodeStatus.SUCCESS,null);
	}
	
	public static Result createFailed(String error){
		return new Result(CodeStatus.FAILED,error);
	}
}
