@init_modal_window = ->
  $('#phone_order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  $('.new_phone_order').on 'ajax:success', ->
    alert 'Ваша заявка принята'
    $('#myModal').modal('hide')

  $('.new_phone_order').on 'ajax:error', ->
    alert 'Все поля обязательны для заполнения'

  return
