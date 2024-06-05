<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Curriculum Vitae</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles.css" rel="stylesheet">
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
                <p>Here will be the general information you want to add</p>
                <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1">
                    <button type="submit"> Modify</button>
                </form>
                
                   <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1.1">
                    <button type="submit"> Delete</button>
                </form>
                
            </div>


            <div class="col-md-4"> <!-- Experience-->
                <h3>Experience</h3>
                <p>Empresa 1, Cargo</p>
                
                <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="2">
                    <button type="submit"> Modify</button>
                </form>
                   <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1.2">
                    <button type="submit"> Delete</button>
                </form>
                
            </div>

            <div class="col-md-4">  <!-- Skills -->
                <h3>Skills</h3>
                <p>Habilidad 1</p>
               <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="3">
                    <button type="submit"> Modificar</button>
                </form>
                   <form action="SvCurriculum" method="POST">
                    <input type="hidden" name="choose" value="1.3">
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
