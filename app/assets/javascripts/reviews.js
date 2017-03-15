
$(document).on('turbolinks:load', function () {
  click('taste', $('input[name="review[taste]"]:checked').val())
  click('price', $('input[name="review[price]"]:checked').val())
  click('location', $('input[name="review[location]"]:checked').val())

  $('.taste-radio').click(function () {
    console.log($(this).val())
  	var num = $(this).val()
    click('taste', num)
  })

  $('.price-radio').click(function () {
    console.log($(this).val())
  	var num = $(this).val()
    click('price', num)
  })

  $('.location-radio').click(function () {
    console.log($(this).val())
  	var num = $(this).val()
    click('location', num)
  })

  function click (attr, num) {
    console.log(attr, num)
  	switch (num) {
    case '1':
      $('#' + attr + '1-label').addClass('selected')
      $('#' + attr + '2-label').removeClass('selected')
      $('#' + attr + '3-label').removeClass('selected')
      break
    case '2':
      $('#' + attr + '1-label').addClass('selected')
      $('#' + attr + '2-label').addClass('selected')
      $('#' + attr + '3-label').removeClass('selected')
      break
    case '3':
      $('#' + attr + '1-label').addClass('selected')
      $('#' + attr + '2-label').addClass('selected')
      $('#' + attr + '3-label').addClass('selected')
      break
  }
  }
})
