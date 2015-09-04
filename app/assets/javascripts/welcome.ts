// Loads all Bootstrap javascripts
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require footer_fixed.js
//= require browser_timezone_rails/application.js

$("a.github_auth").click(function () {
  ga('send', 'event', 'button', 'click', {'page': '/users/auth/github'})
  ga('send', 'event', 'button', 'click', {'page': '/users/auth/github'})
});

mixpanel.track_links("a.github_auth", "Click GitHub Auth");

class Hoge {

  foo(): {
    if ("a" == "b") {
    }
  }    

}
