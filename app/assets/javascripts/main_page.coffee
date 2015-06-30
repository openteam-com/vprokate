$ ->
  clock = $('.js-countdown').FlipClock({
    clockFace: 'DailyCounter'
    countdown: true
    language: 'russian'
  })

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo $(selected).offset().top-50, 750

    false

  $('#phone_order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  $('.new_phone_order').on 'ajax:success', ->
    alert 'Ваша заявка принята'
    $('#myModal').modal('hide')

  $('.new_phone_order').on 'ajax:error', ->
    alert 'Все поля обязательны для заполнения'

  return
