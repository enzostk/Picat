Rails.configuration.stripe = {
    :publishable_key => 'pk_live_51KdUqvHzHphRh9omC8MacCESMne1CLeB74ulp16uVXACEvkDJR3evSw9d1f1RsKjXnAktzm5UluqNv4lgxX2PoUx00HHQFEbpp',
    :secret_key      => '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'
  }
  
  Stripe.api_key = Rails.configuration.stripe[:secret_key]
  