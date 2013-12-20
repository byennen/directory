jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  order.setupForm()

order =
  setupForm: ->
    $('.order_form').submit ->
      $('input[type=submit]').attr('disabled', true)
      bill_me_later = $("#bill_me_later").is(":checked")
      if $('#card_number').length && !bill_me_later
        order.processCard()
        false
      else
        true
    $("#bill_me_later").click ->
      if $(this).is(":checked")
        $("#card-form").addClass('hide')
      else
        $("#card-form").removeClass('hide')
        
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
      $('#stripe_error').removeClass('hide')
      $('input[type=submit]').attr('disabled', false)
