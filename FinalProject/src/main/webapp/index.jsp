<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="LogicClasses.Person" %>
<% Person person1 = new Person();   //Instance for the program%>

<% 
    String myText = (String) request.getAttribute("myText");
    String choose = (String) request.getAttribute("choose");
    System.out.println("texto: "+myText+"choose: "+choose);
    if(choose==null){
    choose="";
    }
 
    switch (choose) {          
        case "1":   //General information 
              person1.setGeneralInformation(myText);     
            System.out.println("caso 1");
         break;               
        
        case "2":   //Experience             
            System.out.println("caso 2");
            person1.setExperience(myText);                           
         break;                     
        
        case "3":   //Skills
            System.out.println("caso 3");
              person1.setSkills(myText);         
         break;
        default:
                break;
    } 
%>








<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Curriculum Vitae</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
    <link rel="icon" href="" type="image/x-icon">
</head>
<body>
    
    <div class="container">
        <div class="row mt-5">
                <div class="col-md-12 text-center">
                                     
                    <div class="col-md-4 text-center">
                         <img src="Resources/Spyderman.jpg" alt="alt"/>
                    </div>
                </div>
                <h1>Name</h1>
                <p>Dg 12B #50-12 | 3125467907  | fulanito@gov.co</p>
            </div>
        </div>
        <hr>
        <div class="row">       <!-- general information-->
            <div class="col-md-4">
                <h3>General information</h3>
              
            <% 
                 if (person1.getGeneralInformation() == null || person1.getGeneralInformation().isEmpty()) { %>
                  <p>Here will be the general information you want to add</p>
                    <%}else{ %>
                    <p><%= person1.getGeneralInformation() %></p>
                    <%}%>
          
                <form action="SvCurriculum" method="POST"> 
                    
                  <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">
                      <input type="hidden" name="choose" value="1">

                    
                    <button type="submit"> Modify</button>
                </form>
                
                   <form action="SvCurriculum" method="POST">
                       
                    <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">

                    
                    <input type="hidden" name="choose" value="1.1">
                    <button type="submit"> Delete</button>
                </form>
                
            </div>


            <div class="col-md-4"> <!-- Experience-->
                <h3>Experience</h3>

                    
           <% 
                 if (person1.getExperience() == null || person1.getExperience().isEmpty()) { %>
                  <p>Here will be the general information you want to add</p>
                    <%}else{ %>
                    <p><%= person1.getExperience() %></p>
                    <%}%>
                    
              
                
                <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="2">
                    
                     <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">
                    
                    <button type="submit"> Modify</button>
                </form>
                   <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1.2">
                    
                     <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">
                    
                    <button type="submit"> Delete</button>
                </form>
                
            </div>

            <div class="col-md-4">  <!-- Skills -->
                <h3>Skills</h3>
 <% 
                 if (person1.getSkills() == null || person1.getSkills().isEmpty()) { %>
                  <p>Here will be the general information you want to add</p>
                    <%}else{ %>
                    <p><%= person1.getSkills() %></p>
                    <%}%>
                
                <p>Habilidad 1</p>
               <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="3">
                    
                      <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">
                    
                   
                </form>
                   <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1.3">
                    
                    <input type="hidden" name="GenInformationtxt" value="<%= person1.getGeneralInformation() %>">
                     <input type="hidden" name="Experiencetxt" value="<%= person1.getExperience() %>">
                    <input type="hidden" name="Skillstxt" value="<%= person1.getSkills() %>">
                    
                    <button type="submit"> Delete</button>
                </form>
                
            </div>
        </div>
        <hr>
        <div class="row">
 

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
