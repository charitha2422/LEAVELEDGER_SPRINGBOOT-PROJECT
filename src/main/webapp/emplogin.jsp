<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<!-- Coding by CodingNepal | www.codingnepalweb.com-->
<html lang="en" dir="ltr">
  <head>
  
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title> Login and Registration Form in HTML & CSS | CodingLab </title>
  
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style type="text/css">
    
    /* Google Font Link */
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
  margin-top: 70px; /* Add margin to push it below the navbar */
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

.container #flip:checked ~ .forms .login-form {
  pointer-events: none;
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
body, html {
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

.form-content .login-form,
.form-content .signup-form {
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

.forms .signup-form .title:before {
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
  color: #5b13b9;
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

  .form-content .login-form,
  .form-content .signup-form {
    width: 100%;
  }

  .form-content .signup-form {
    display: none;
  }

  .container #flip:checked ~ .forms .signup-form {
    display: block;
  }

  .container #flip:checked ~ .forms .login-form {
    display: none;
  }
}
/* Styling for Gender labels and inputs in black bold */
.gender-options {
  display: flex;
  justify-content: space-between;
  gap: 15px; /* Adjust spacing between radio buttons */
  padding: 10px 0;
}

.gender-options label {
  display: flex;
  align-items: center;
  font-size: 16px;
   /* Makes the label text bold */
  color: black; /* Changes the color to black */
}

.gender-options input {
  margin-right: 5px; /* Space between the radio button and the label */
}

/* Styling for the Select dropdown to match the size of input fields */
input[type="text"],
input[type="email"],
input[type="tel"],
input[type="date"],
input[type="password"],
select {
  width: 100%; /* Ensure it takes up the full width */
  padding: 0 30px; /* Match padding with other inputs */
  font-size: 16px;
  font-weight: 500;
  border-bottom: 2px solid rgba(0, 0, 0, 0.2);
  height: 50px; /* Same height as input fields */
  transition: all 0.3s ease;
}

select {
  -webkit-appearance: none; /* Remove default styling on some browsers like Safari */
  -moz-appearance: none;
  appearance: none;
  padding: 0 30px; /* Align padding with input fields */
  border-bottom: 2px solid rgba(0, 0, 0, 0.2); /* Similar border as input */
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="tel"]:focus,
input[type="date"]:focus,
input[type="password"]:focus,
select:focus {
  border-color: #7d2ae8; /* Focused border color */
}
  /* Animation for blinking message */
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0; }
            100% { opacity: 1; }
        }

h4 {
            color: red;
            text-align: center;
            padding-top: 10px;
            font:bold;
            animation: blink 1s infinite; /* Apply blink animation */
        }


</style>
   </head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg" alt="">
        <div class="text">
          <span class="text-1">Not Yet Registered!!</span>
          <span class="text-2">Let's get connected</span>
        </div>
      </div>
      <div class="back">
        <!--<img class="backImg" src="images/backImg.jpg" alt="">-->
        <div class="text">
          <span class="text-1">Complete miles of journey <br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
          <div class="login-form">
            <div class="title">Login</div>
            <h4><c:out value="${msg }"></c:out></h4>
          <form action="checkemplogin" method="post">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" name="email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" name="password" required>
              </div>
              <div class="text"><a href="#">Forgot password?</a></div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
            </div>
        </form>
      </div>
        <div class="signup-form">
          <div class="title">Signup</div>
        <form action="empreg" method="post">
            <div class="input-boxes">
              <div class="input-box">
                  <i class="fas fa-user"></i>
                  <input type="text" name="name" placeholder="Enter your Full Name" required>
                </div>
               

                <!-- Gender -->
          <!-- Gender -->
<div class="input-box">
    <label for="gender"><b>Choose Gender</b></label>&nbsp;&nbsp;&nbsp;
    <div class="gender-options">
        <label for="male">
            <input type="radio" id="male" name="gender" value="Male" required>
            Male
        </label>
        <label for="female">
            <input type="radio" id="female" name="gender" value="Female">
            Female
        </label>
        <label for="other">
            <input type="radio" id="other" name="gender" value="Other">
            Other
        </label>
    </div>
</div>
          
                <!-- Email -->
                <div class="input-box">
                  <i class="fas fa-envelope"></i>
                  <input type="email" name="email" placeholder="Enter your email" required>
                </div>

                <!-- Phone Number -->
                <div class="input-box">
                  <i class="fas fa-phone-alt"></i>
                  <input type="tel" name="phone" placeholder="Enter your phone number" required>
                </div>

                <!-- Address -->
                <div class="input-box">
                  <i class="fas fa-home"></i>
                  <input type="text" name="address" placeholder="Enter your address" required>
                </div>

                <!-- Date of Joining -->
                <label><b>Enter Date of Joining</b></label>
                <div class="input-box">
                  <i class="fas fa-calendar-day"></i>
                  <input type="date" name="doj"  required>
                </div>

                <!-- Department -->
                <div class="input-box">
                  <i class="fas fa-building"></i>
                  <select name="department" required>
                    <option value="" disabled selected>Select Department</option>
                    <option value="HR">HR</option>
                    <option value="IT">IT</option>
                    <option value="Finance">Finance</option>
                    <option value="Marketing">Marketing</option>
                  </select>
                </div>

                <!-- Work Location -->
                <div class="input-box">
                  <i class="fas fa-map-marker-alt"></i>
                  <input type="text" name="location" placeholder="Enter work location" required>
                </div>

                <!-- Password -->
                <div class="input-box">
                  <i class="fas fa-lock"></i>
                  <input type="password" name="password" placeholder="Enter your password" required>
                </div>
              <div class="button input-box">
                <input type="submit" value="Submit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
      </form>
    </div>
    </div>
    </div>
  </div>
</body>
</html>