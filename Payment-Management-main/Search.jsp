<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search Your Payment Details</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgzrSxGXnHGhgIdFFpQTSfnQ4SwcF2QDDvqA&usqp=CAU');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
      }

      h1 {
        text-align: center;
        margin-top: 50px;
        color: #fff;
      }

      form {
        max-width: 300px;
        margin: 0 auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); 
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      label {
        font-weight: bold;
      }

      input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }

      input[type="text"]:focus {
        outline: none;
        border-color: #007BFF;
      }

      .btncls {
        text-align: center;
      }

      button {
        background-color: #007BFF;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
      }

      button:hover {
        background-color: #0056b3;
      }
    </style>
  </head>
  <body>
    <h1>Search Your Payment Details</h1>
    <form action="search" method="post">
      <label>Enter name</label>
      <input
        type="text"
        name="name"
        class="form-group"
        placeholder="Enter name"
        required
      /><br /><br />
      <label>Enter email</label>
      <input
        type="text"
        name="email"
        class="form-group"
        placeholder="Enter email"
        required
      /><br />
      <div class="btncls">
        <button>Search</button>
      </div>
    </form>
  </body>
</html>