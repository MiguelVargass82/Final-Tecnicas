<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Formulario con Textarea</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row mt-5">
            <div class="col-md-12">
             
                
                 <% String myText = (String) request.getAttribute("myText");%>
                 <% String choose = (String) request.getAttribute("choose");%>    
                 
                 
                 <%      
                 switch (choose) {          
            case "1":   //General information %>
                
                <h1>Modify General Information</h1>              
          <%      break;               
            case "2":   //Experience %>            
                <h1>Modify Experience information</h1>                                
                <%     break;                     
            case "3":   //Skills %>
               
                <h1>Modify Skills</h1>           
               <% break;
                   }
                 %>
                 
                 
                <form action="SvModify" method="POST">
                    
                    <div class="form-group">
                       <input type="text" class="form-control" id="textModify" name="textModify" value="<%= myText %>">                
                         <input type="hidden" id="chooseModify" name="chooseModify" value="<%=choose %>">

                         <h1><%= myText %> </h1>
                         <h1><%= choose %> </h1>
                    </div>
                    <button type="submit" class="btn btn-primary">Modify</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
