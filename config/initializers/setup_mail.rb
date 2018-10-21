ActionMailer::Base.smtp_settings = {
  address:              "smtp.gmail.com",
  domain: 'gmail.com',
  port:                 587,
  enable_starttls_auto: true,
  authentication:       :login,
  user_name:            ENV["email_user_name"],
  password:             ENV["email_password"]
}
