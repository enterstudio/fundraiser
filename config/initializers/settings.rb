Fundraiser::Settings.load_from_persistance

if Fundraiser::Settings.ready?
  Fundraiser::Settings.amazon_checkout_url = "https://authorize.payments-sandbox.amazon.com/pba/paypipeline"
end
