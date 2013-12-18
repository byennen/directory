jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  order.setupForm()

order =
  setupForm: ->
    $('.order_form').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#card_number').length
        order.processCard()
        false
      else
        true
    $("#bill_me_later").click ->
      if $(this).is(":checked")
        $("#card-form").addClass('hide')
        $(this).closest("form").removeClass("order_form")
      else
        $("#card-form").removeClass('hide')
        $(this).closest("form").addClass("order_form")
        
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      expMonth: $('#card_month').val()
      expYear: $('#card_year').val()
    Stripe.createToken(card, order.handleStripeResponse)

  handleStripeResponse: (status, response) ->
    if status == 200
      $('#user_stripe_card_token').val(response.id)
      $('.order_form')[0].submit()
    else
      $('#stripe_error').text(response.error.message)
      $('input[type=submit]').attr('disabled', false)
