//$.fn.homedisplay = function(requestContextPath) {

var homedisplay = function(requestContextPath) {
		
			$(".tabContents").hide(); // Hide all tab conten divs by default
			$(".tabContents:first").show(); // Show the first div of tab content by default

			$("#tabContaier ul li a").click(function() { //Fire the click event

				var activeTab = $(this).attr("href"); // Catch the click link
				$("#tabContaier ul li a").removeClass("active"); // Remove pre-highlighted link
				$(this).addClass("active"); // set clicked link to highlight state
				$(".tabContents").hide(); // hide currently visible tab content div
				$(activeTab).fadeIn(); // show the target tab content div by matching clicked link.
			});
			var totmessage = 1;
			var amq = org.activemq.Amq;
			amq.init({
				uri : requestContextPath + "/amq",
				logging : true,
				timeout : 20
			});
			var myDestination = "queue://orderQueue";
			var myMessage = "someMessage";
			var myId = "tan";
			var myHandler = {
				rcvMessage : function(message) {
					totmessage = totmessage + 1;
					console.log("received " + message);
				}
			};
			
			$("#online").tooltip({
				bodyHandler: function() {
					return totmessage;
				},
				showURL: false,
				top:-40,
				left:-10
			});


			amq.addListener(myId, myDestination, myHandler.rcvMessage);
			window.setInterval(function() {
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
			}, 5000);
			
			console.log("Inside Script Sending message");
		

};