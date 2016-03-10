$(document).ready(function() {
$("li").on("click",".postvote",function(event){
      event.preventDefault();
      var that = $(this).attr("href")
      debugger
      $.ajax({
        type: "POST",
        url: "/posts/"+that+"/postvotes",
        data: $(this).serialize()
       })
      .done(function(response){
        $("#upvote-arrow").toggle()

      });
  });
});
