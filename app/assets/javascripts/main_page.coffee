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

  init_modal_window()
