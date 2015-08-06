$(document).ready ->
  $('.grid').masonry
    percentPosition: true,
    itemSelector: '.grid-item',
    gutter: 20



$(document).ready ->
  $('.scaler').each ->
    quantity = $(this).find('.quantity').text()
    total = $(this).find('.total').text()
    percentage = Math.floor(quantity / total * 100)
    $(this).find('.scale').css( "width", percentage + "%" )

