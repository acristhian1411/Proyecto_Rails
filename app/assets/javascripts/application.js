// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require select2
//= require charts-custom
//= require charts-home

//= require vendor/chart.js/Chart.bundle
//= require vendor/chart.js/Chart.bundle.min
//= require vendor/chart.js/Chart
//= require vendor/chart.js/Chart.min

//= require vendor/bootstrap/js/bootstrap
//= require vendor/bootstrap/js/bootstrap.min


//= require front
//= require turbolinks
//= require_tree .



$( "#dropdown" ).select2({
    theme: "bootstrap"
});

