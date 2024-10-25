package com.payment;


public class User {
    private String id;
    private String name;
    private String email;
    private String phone;
    private String section;
    private String method;
    private String amount;
	public User(String id, String name, String email, String phone, String section, String method, String amount) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.section = section;
		this.method = method;
		this.amount = amount;
	}
	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getSection() {
		return section;
	}
	
	public String getMethod() {
		return method;
	}
	
	public String getAmount() {
		return amount;
	}

    
    
	
    
    
	
    
    
   
	

	  
}

