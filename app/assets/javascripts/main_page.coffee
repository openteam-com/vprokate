$ ->
  finalDay = new Date($('.js-timer-info').attr('data-date'))
  now = new Date()
  date_difference = finalDay/1000 - now.getTime()/1000


  clock = $('.js-countdown').FlipClock(date_difference,{
    clockFace: 'DailyCounter'
    countdown: true
    language: 'russian'
  })

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo $(selected).offset().top-120, 750

    false

  $('#phone_order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  $('.new_phone_order').on 'ajax:success', ->
    alert 'Ваша заявка принята'
    $('#myModal').modal('hide')

  $('.new_phone_order').on 'ajax:error', ->
    alert 'Все поля обязательны для заполнения'

  return
