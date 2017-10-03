<!doctype html>
<html lang = "en">
   <head>
      <meta charset = "utf-8">
      <title>jQuery UI Dialog functionality</title>
      <link href = "<%=request.getContextPath()%>/Assets/jquery-ui-1.12.1.custom/jquery-ui.css"  rel = "stylesheet">
      <script src = "<%=request.getContextPath()%>/Assets/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
      <script src = "<%=request.getContextPath()%>/Assets/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
      
      <!-- CSS -->
      <style>
         .ui-widget-header,.ui-state-default, ui-button {
            background:#b9cd6d;
            border: 1px solid #b9cd6d;
            color: #FFFFFF;
            font-weight: bold;
         }
      </style>
      
      <!-- Javascript -->
      <script>
         $(function() {
            $( "#dialog-4" ).dialog({
               autoOpen: false, 
               modal: true,
               buttons: {
                  OK: function() {$(this).dialog("close");}
               },
            });
            $( "#opener-4" ).click(function() {
               $( "#dialog-4" ).dialog( "open" );
            });
         });
      </script>
   </head>
   
   <body>
      <!-- HTML --> 
      <div id = "dialog-4" title = "Dialog Title goes here...">This my first jQuery UI Dialog!</div>
      <button id = "opener-4">Open Dialog</button>
      <p>
         Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt 
         ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco 
         laboris nisi ut aliquip ex ea commodo consequat.
      </p>
      <label for = "textbox">Enter Name: </label>
      <input type = "text">
   </body>
</html>