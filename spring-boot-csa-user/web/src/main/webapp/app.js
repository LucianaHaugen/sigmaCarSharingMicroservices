$(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/api/csa/users/1"
    }).then(function(data, status, jqxhr) {
       $('.user-id').append(user.userId);
       $('.user-name').append(user.userName);
       console.log(jqxhr);
    });
});