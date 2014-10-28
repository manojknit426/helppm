OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '380635138759442', '2ab127f27071e03fb28bcb926b8a27b0', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end