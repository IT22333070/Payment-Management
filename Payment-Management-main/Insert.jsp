<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insert Your Payment Details</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-image: url('https://www.forbes.com/advisor/wp-content/uploads/2021/09/how_to_accept_credit_cards_-_article_image.jpg'); /* Set your background image URL here */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
      }

      h1 {
        text-align: center;
      }

      .container {
        max-width: 400px;
        margin: 0 auto;
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      label {
        font-weight: bold;
      }

      input[type="text"],
      input[type="email"],
      select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }

      input[type="text"]:focus,
      input[type="email"]:focus,
      select:focus {
        outline: none;
        border-color: #007BFF;
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
    <h1>Insert Your Payment Details</h1>
    <div class="container">
      <form action="insert" method="post">
        <label for="id">ID</label>
        <input type="text" id="id" name="id" required /><br /><br />

        <label for="name">Name</label>
        <input type="text" id="name" name="name" required /><br /><br />

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required /><br /><br />

        <label for="phone">Phone Number</label>
        <input type="text" id="phone" name="phone" pattern="[0-9]{10}" required /><br /><br />

        <label for="section">Section</label>
        <select id="section" name="section" required>
          <option value="A">A</option>
          <option value="B">B</option>
          <option value="C">C</option>
        </select><br /><br />

        <label for="method">Payment Method</label>
        <select id="method" name="method" required>
          <option value="Card Payment">Card Payment</option>
          <option value="Paypal">Paypal</option>
          <option value="Apple Pay">Apple Pay</option>
        </select><br /><br />

        <label for="amount">Payment Amount</label>
        <input type="text" id="amount" name="amount" required /><br /><br />

        <div class="btncls">
          <button type="submit">Submit</button>
        </div>
      </form>
    </div>
  </body>
</html>