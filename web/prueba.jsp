<!DOCTYPE html>
<html>
	<head>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
    <link href="build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>
    <script src="src/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
  </head>
  <body>
    Datetimepicker: 
    <div class="well">
      <div id="txtFechaI" class="input-append date">
          <input name="txtFechaI" id="txtFechaI" data-format="dd/MM/yyyy " type="text">
        <span class="add-on">
          <i data-time-icon="icon-time" data-date-icon="icon-calendar">
          </i>
        </span>
      
      </div>
        Datetimepicker: 
    
     <div id="txtFechaF" class="input-append date">
         <input name="txtFechaF" id="txtFechaF" data-format="dd/MM/yyyy"  type="text">
        <span class="add-on">
          <i data-time-icon="icon-time" data-date-icon="icon-calendar">
          </i>
        </span>
     </div>
</div>

       <script type="text/javascript">
      $(function() {
        $('#txtFechaI').datetimepicker({
          
        });
      });
        $(function() {
        $('#txtFechaF').datetimepicker({
          
        });
      });
    </script></body>
</html>
