// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.remotipart

// Include all twitter's javascripts
//= require twitter/bootstrap
 
// Or peek any of them yourself
//= require twitter/bootstrap/transition
//= require twitter/bootstrap/alert
//= require twitter/bootstrap/modal
//= require twitter/bootstrap/dropdown
// require twitter/bootstrap/scrollspy
// require twitter/bootstrap/tab
//require twitter/bootstrap/tooltip
//require twitter/bootstrap/popover
//= require twitter/bootstrap/button
// require twitter/bootstrap/collapse
//= require twitter/bootstrap/carousel
// require twitter/bootstrap/affix
$(document).ready(function() {

				$("#searchsubmit").click(function() {
					$("#load").text("loading....");
				});

				$("#sendto").keyup(function() {

					$("#suggesion").text("loading....");
					$("#suggesionPanel").css("z-index", "1");
					$("#suggesion").show();

					$("#sendtoform").submit();

				});
				$("#sendto").click(function() {
					$("#suggesionPanel").css("z-index", "1");
					$("#suggesion").show();
				});
				$("#sendto").click(function() {

					$("#suggesion").show();
				});
				$("#main,#suggesion").click(function() {
					$("#suggesionPanel").css("z-index", "-1");
					$("#suggesion").hide();

				});

				$("#sugg_close").click(function() {
					$("#suggesion").hide();
					$("#suggesionPanel").css("z-index", "-1");
				});

			});


