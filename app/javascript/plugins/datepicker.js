import "bootstrap-datepicker";
import "bootstrap-datepicker/dist/css/bootstrap-datepicker.standalone.min.css";


$('.input-datepicker').datepicker({
  format: 'mm/dd/yyyy',
  startDate: '-3d'
});