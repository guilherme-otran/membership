if ENV["MAIL_ADDRESS"].present?
  ActionMailer::Base.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
    :address        => ENV["MAIL_ADDRESS"],
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['MAIL_USERNAME'],
    :password       => ENV['MAIL_PASSWORD'],
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }

  ActionMailer::Base.default_options = {
    from: "noreply@example.com"
  }
end
