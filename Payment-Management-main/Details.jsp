<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Your Payment Details</title>
    <style>
      body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url('https://tse1.mm.bing.net/th?id=OIP.WHPGXpX25yn9Ti_LXO9QCgHaEK&pid=Api&rs=1&c=1&qlt=95&w=211&h=118');
        background-size: cover;
        background-position: center;
      }

      h1 {
        text-align: center;
        color: #454545;
      }

      .container {
        width: 70%;
        margin: 0 auto;
        background: rgba(255, 255, 255, 0.8); 
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        margin-top: 50px;
      }

 

      label {
        font-weight: bold;
      }

      input {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      .btncls {
        text-align: center;
        margin-top: 20px;
      }

      button {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50; 
        color: white;
        cursor: pointer;
        margin: 5px;
      }

      button.dkt {
        background-color: #f44336; 
      }
    </style>
  </head>
  <body>
  
  
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="name" value="${ cus.name}" />
	<c:set var="email" value="${ cus.email}" />
	<c:set var="phone" value="${ cus.phone}" />
	<c:set var="section" value="${ cus.section}" />
	<c:set var="method" value="${ cus.method}" />
	<c:set var="amount" value="${ cus.amount}" />

    <div class="container">
      <div class="right-half">
	  
		<h1>Payment Details</h1>
        <label for="username">Id</label>
        <input type="text" value="${cus.id}" readonly /><br /><br />

        <label for="username">Name</label>
        <input type="text" value="${cus.name}" readonly /><br /><br />

        <label for="email">Email</label>
        <input type="email" value="${cus.email}" readonly /><br /><br />

        <label>Phone Number</label>
        <input type="text" value="${cus.phone}" readonly /><br /><br />

        <label f>Section</label>
        <input type="text" value="${cus.section}" readonly /><br /><br />

        <label>Payment Method</label>
        <input type="text" value="${cus.method}" readonly /><br /><br />

        <label>Payment Amount</label>
        <input type="text" value="${cus.amount}" readonly /><br /><br />
		
		
		</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="section" value="${section}"/>
	<c:param name="method" value="${method}"/>
	<c:param name="amount" value="${amount}"/>
	
	 </c:url>
	 
	 <c:url value="Delete.jsp" var="cusdelete">
	 
<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="section" value="${section}"/>
	<c:param name="method" value="${method}"/>
	<c:param name="amount" value="${amount}"/>

	 </c:url>




        <div class="btncls">
          <a href="${cusupdate }"><button name="update" >Update</button></a>
          <a href="${cusdelete }"><button name="delete" class="dkt">Delete</button></a>
        </div>
      </div>
    </div>

  </body>
</html>