OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '994029750510-t62q8etuvnpi856i98gah5sdvpfbbn0p.apps.googleusercontent.com', 'wZz4ONUg-Yl3ax6GoKp3mCpD', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
