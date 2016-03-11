$(document).ready(function() {
$("li").on("click",".postvote",function(event){
      event.preventDefault();
      var that = $(this)
      var id = $(this).attr("href")
      var num = $(this).siblings().first().text()
      $.ajax({
        type: "POST",
        url: "/posts/"+id+"/postvotes",
        data: $(this).serialize()
       })
      .done(function(response){
        debugger
        that.children().first().toggle()
        var voted_num = parseInt(num)+1
        var num_string = voted_num.toString()
        that.siblings().first().text(num_string)
        // #target the url element in order to increase the value by one
        // #text should be able to do both jobs
      });
  });
});
