if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_yeKlzeF1x7RddmlrCC155zhz',
    :secret_key => 'sk_test_4ro30pGYypWJCOtBu8Eh6Oyk'
  }
end
Stripe.api_key = Rails.configuration.stripe[:secret_key]
