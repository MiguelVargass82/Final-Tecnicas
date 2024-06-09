<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="LogicClasses.Person" %>
<% Person person1 = new Person();   //Instance for the program%>

<% 
    String myText = (String) request.getAttribute("myText");
    String choose = (String) request.getAttribute("choose");
    if (choose == null) {
        choose = "";
    }
 
    switch (choose) {          
        case "1":   //General information 
            person1.setGeneralInformation(myText);     
            break;               
        
        case "2":   //Experience
            person1.setExperience(myText);                           
            break;                     
        
        case "3":   //Skills
            person1.setSkills(myText);         
            break;
        default:
            break;
    } 
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Curriculum Vitae</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="styles.css" rel="stylesheet">
    <link rel="icon" href="/src/main/webapp/Resources/LinkedIn_icon.svg.co" type="image/x-icon">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12 profile-header bg-primary text-white text-center">
               
                <h2>Peter Andres Parker Gonzales</h2>
             
                <img src="Resources/Spyderman.jpg" alt="Profile Picture" class="img-thumbnail" style="max-width: 100px;">
         <p>Dg 12B #50-12           | 3125467907 |         spydermancosteño@gov.co</p>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="profile-info card">
                    <div class="card-body">
                        <h3 class="card-title">General Information</h3>
                        <% if (person1.getGeneralInformation() == null || person1.getGeneralInformation().isEmpty()) { %>
                            <p class="card-text">Here will be the general information you want to add</p>
                        <% } else { %>
                            <p class="card-text"><%= person1.getGeneralInformation() %></p>
                        <% } %>
                        <form action="SvCurriculum" method="POST"> 
                            <input type="hidden" name="choose" value="1">
                            <button type="submit" class="btn btn-primary">Modify</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="profile-info card">
                    <div class="card-body">
                        <h3 class="card-title">Experience</h3>
                        <% if (person1.getExperience() == null || person1.getExperience().isEmpty()) { %>
                            <p class="card-text">Here will be the experience information you want to add</p>
                        <% } else { %>
                            <p class="card-text"><%= person1.getExperience() %></p>
                        <% } %>
                        <form action="SvCurriculum" method="POST"> 
                            <input type="hidden" name="choose" value="2">
                            <button type="submit" class="btn btn-primary">Modify</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="profile-info card">
                    <div class="card-body">
                        <h3 class="card-title">Skills</h3>
                        <% if (person1.getSkills() == null || person1.getSkills().isEmpty()) { %>
                            <p class="card-text">Here will be the skills information you want to add</p>
                        <% } else { %>
                            <p class="card-text"><%= person1.getSkills() %></p>
                        <% } %>
                        <form action="SvCurriculum" method="POST"> 
                            <input type="hidden" name="choose" value="3">
                            <button type="submit" class="btn btn-primary">Modify</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
