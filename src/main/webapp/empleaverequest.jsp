<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Employee Leave Request Form</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }

      body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #fff;
        padding: 30px;
      }
.container {
  position: relative;
  max-width: 850px;
  width: 100%;
  background: #fff;
  padding: 40px 30px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  perspective: 2700px;
  margin-top: 80px; /* Added space below navbar */
}


      .container .cover {
        position: absolute;
        top: 0;
        left: 50%;
        height: 100%;
        width: 50%;
        z-index: 98;
        transition: all 1s ease;
        transform-origin: left;
        transform-style: preserve-3d;
        backface-visibility: hidden;
      }

      .container #flip:checked ~ .cover {
        transform: rotateY(-180deg);
      }

      .container .cover .front,
      .container .cover .back {
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
      }

      .cover .back {
        transform: rotateY(180deg);
      }

      .container .cover img {
        position: absolute;
        height: 100%;
        width: 100%;
        object-fit: cover;
        z-index: 10;
      }

      body,
      html {
        height: 100%;
        line-height: 1.8;
      }

      .w3-bar .w3-button {
        padding: 16px;
      }

      .container .cover .text {
        position: absolute;
        z-index: 10;
        height: 100%;
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
      }

      .container .cover .text::before {
        content: '';
        position: absolute;
        height: 100%;
        width: 100%;
        opacity: 0.5;
        background: #7d2ae8;
      }

      .cover .text .text-1,
      .cover .text .text-2 {
        z-index: 20;
        font-size: 26px;
        font-weight: 600;
        color: #fff;
        text-align: center;
      }

      .cover .text .text-2 {
        font-size: 15px;
        font-weight: 500;
      }

      .container .forms {
        height: 100%;
        width: 100%;
        background: #fff;
      }

      .container .form-content {
        display: flex;
        align-items: center;
        justify-content: space-between;
      }

      .form-content .leave-form {
        width: calc(100% / 2 - 25px);
      }

      .forms .form-content .title {
        position: relative;
        font-size: 24px;
        font-weight: 500;
        color: #333;
      }

      .forms .form-content .title:before {
        content: '';
        position: absolute;
        left: 0;
        bottom: 0;
        height: 3px;
        width: 25px;
        background: #7d2ae8;
      }

      .forms .leave-form .title:before {
        width: 20px;
      }

      .forms .form-content .input-boxes {
        margin-top: 30px;
      }

      .forms .form-content .input-box {
        display: flex;
        align-items: center;
        height: 50px;
        width: 100%;
        margin: 10px 0;
        position: relative;
      }

      .form-content .input-box input {
        height: 100%;
        width: 100%;
        outline: none;
        border: none;
        padding: 0 30px;
        font-size: 16px;
        font-weight: 500;
        border-bottom: 2px solid rgba(0, 0, 0, 0.2);
        transition: all 0.3s ease;
      }

      .form-content .input-box input:focus,
      .form-content .input-box input:valid {
        border-color: #7d2ae8;
      }

      .form-content .input-box i {
        position: absolute;
        color: #7d2ae8;
        font-size: 17px;
      }

      .forms .form-content .text {
        font-size: 14px;
        font-weight: 500;
        color: #333;
      }

      .forms .form-content .text a {
        text-decoration: none;
      }

      .forms .form-content .text a:hover {
        text-decoration: underline;
      }

      .forms .form-content .button {
        color: #fff;
        margin-top: 40px;
      }

      .forms .form-content .button input {
        color: #fff;
        background: #7d2ae8;
        border-radius: 6px;
        padding: 0;
        cursor: pointer;
        transition: all 0.4s ease;
      }

      .forms .form-content .button input:hover {
        background: #5b13b9;
      }

      .forms .form-content label {
        color: #000;
        font-weight: bold;
        cursor: pointer;
      }

      .forms .form-content label:hover {
        text-decoration: underline;
      }

      .forms .form-content .login-text,
      .forms .form-content .sign-up-text {
        text-align: center;
        margin-top: 25px;
      }

      .container #flip {
        display: none;
      }

      @media (max-width: 730px) {
        .container .cover {
          display: none;
        }

        .form-content .leave-form {
          width: 100%;
        }

        .container #flip:checked ~ .forms .leave-form {
          display: block;
        }
      }

      textarea {
        width: 100%;
        height: 50px;
        padding: 15px;
        font-size: 16px;
        border: 2px solid #7d2ae8;
        border-radius: 6px;
      }

      select {
        width: 100%;
        height: 50px;
        padding: 0 30px;
        font-size: 16px;
        border: 2px solid #7d2ae8;
        border-radius: 6px;
        background-color: white;
      }
    </style>
  </head>
  <body>
    <jsp:include page="emphome.jsp"></jsp:include>
    <div class="container">
      <div class="cover">
        <div class="front">
          <img src="https://img.freepik.com/free-vector/appointment-booking-with-calendar-concept_23-2148556783.jpg?t=st=1734003288~exp=1734006888~hmac=b24370ce41ad25f0aebca88eb4d471952669ac32499dfa7755ba712a37f098b8&w=826" alt="">
        </div>
      </div>
      <div class="forms">
        <div class="form-content">
          <div class="leave-form">
            <div class="title">Leave Request</div>
            <form action="empleaverequest" method="post">
              <div class="input-boxes">
                <label>Enter Name</label><br>
                <div class="input-box">
                  <i class="fas fa-user"></i>
                  <input type="text" placeholder="Enter your name" name="name" required>
                </div>

                <label>Enter Email</label>
                <div class="input-box">
                  <i class="fas fa-envelope"></i>
                  <input type="email" placeholder="Enter your email" name="email" required>
                </div>

                <label>Start Date</label>
                <div class="input-box">
                  <i class="fas fa-calendar-day"></i>
                  <input type="date" placeholder="Start Date" name="sdate" required>
                </div>

                <label>End Date</label>
                <div class="input-box">
                  <i class="fas fa-calendar-day"></i>
                  <input type="date" placeholder="End Date" name="edate" required>
                </div>

                <label>Leave Type</label>
                <div class="input-box">
                  <i class="fas fa-calendar-check"></i>
                  <select  name="ltype" required>
                    <option value="casual_leave">Casual Leave</option>
                    <option value="sick_leave">Sick Leave</option>
                    <option value="annual_leave">Annual Leave</option>
                  </select>
                </div>

                <label>Reason for leave</label>
                <div class="input-box">
                  <i class="fas fa-clipboard"></i>
                  <textarea placeholder="Enter reason for leave"  name="lreason"   required></textarea>
                </div>

                <div class="button input-box">
                  <input type="submit" value="Submit Request">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
