ActionMailer::Base.smtp_settings = {
  :user_name => 'seminario.ibvn@gmail.com',
  :password => 'ibvn2014Secret',
  :domain => 'sbvnonline.org',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}