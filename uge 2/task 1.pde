String month = "Januar";  // Default måned
int days=31;

switch(month) {
  case "Januar":
  days = 31;
break; 
  case "februar":
  days = 28;
break;
  case "Marts":
  days = 31;
break; 
  case "April":
  days = 30;
break;
  case "Maj":
  days = 31;
break; 
  case "Juni":
  days = 30;
break;
  case "Juli":
  days = 31;
break; 
  case "August":
  days = 30;
break;
  case "September":
  days = 31;
break; 
  case "Oktober":
  days = 30;
break;
  case "November":
  days = 30;
break; 
  case "December":
  days = 31;
break;
}
println("The month of " + month + " has " +days+ "of days");
