<?php
$to = 'rlin@risd.edu';
$subject = 'One Proposal';
$message = 'Hi Jane, will you marry me?';
$from = 'peterparker@email.com';

// Sending email
if(mail($to, $subject, $message)){
    echo 'Your mail has been sent successfully.';
} else{
    echo 'Unable to send email. Please try again.';
}

//You can call the "event" variable whatever you wish
$("#getAnswer").click(function(event) {
//Prevent the default action of the event: in this case, prevent form from submitting data 
  event.preventDefault();
//Other code for click event here
});
?>
