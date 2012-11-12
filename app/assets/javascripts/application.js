// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
function log(msg) {
    setTimeout(function() {
        throw new Error(msg);
    }, 0);
}

// Abilities, AKA, stats
var PointBuy = 20;
var statHash = {};
statHash[7] = 4;
statHash[8] = 2;
statHash[9] = 1;
statHash[10] = 0;
statHash[11] = -1;
statHash[12] = -2;
statHash[13] = -3;
statHash[14] = -5;
statHash[15] = -7;
statHash[16] = -10;
statHash[17] = -13;
statHash[18] = -17;

function totalCalc (oldval, newval){
  var total = $('h1.total')
  var submit = $('input#stats_submit')
  PointBuy = PointBuy - statHash[parseInt(oldval)]
  PointBuy = PointBuy + statHash[parseInt(newval)]
  if (PointBuy < 0)
    {
      total.css('color', 'red')
      submit.attr('disabled', 'disabled')
    }
  else
    {
      total.css('color', '#333')
      submit.attr('disabled', false)
    }
  total.text(PointBuy)
};

$('.inc_button').click(function() {
  $(this).parent().find('.desc_button').attr('disabled', false)
  var input = $(this).parent().find('input')
  var oldVal = input.val()
  if (oldVal == 18)
    { return false }
  else
  {
  var newVal = input.val(parseInt(oldVal) + 1).val()
  input.val(newVal)
  totalCalc(oldVal, newVal)

  if (newVal == 18)
    {
    $(this).attr("disabled", "disabled");
    }
  }
});

$('.desc_button').click(function() {
  $(this).parent().find('.inc_button').attr('disabled', false)
  var input = $(this).parent().find('input')
  var oldVal = input.val()
  if (oldVal == 7)
    { return false }
  else
  {
  var newVal = input.val(parseInt(oldVal) - 1).val()
  input.val(newVal)
  totalCalc(oldVal, newVal)
  if (newVal == 7)
    {
    $(this).attr("disabled", "disabled");

    }
  }
});

// Race
$('.race-select').click(function(){
  $(this).parent().parent().find('.race-select').attr('disabled', false)
  $(this).attr('disabled', 'disabled')
  $('.race-box').css("display", "none")
  var id = $(this).attr('id')
  switch(id)
    {
    case 'elf-race-select':
      $('#elf-race').css("display", "block");
      break;
    case 'human-race-select':
      $('#human-race').css("display", "block");
      break;
    }
});

// Role
$('.role-select').click(function(){
  $(this).parent().parent().find('.role-select').attr('disabled', false)
  $(this).attr('disabled', 'disabled')
  $('.role-box').css("display", "none")
  var id = $(this).attr('id')
  switch(id)
    {
    case 'fighter-role-select':
      $('#fighter-role').css("display", "block");
      break;
    case 'wizard-role-select':
      $('#wizard-role').css("display", "block");
      break;
    }
});
