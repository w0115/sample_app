# Preview all emails at http://http://11cfe6f04d874e708ab8b661419fa8fc.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at 
  # http://http://11cfe6f04d874e708ab8b661419fa8fc.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://11cfe6f04d874e708ab8b661419fa8fc.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end

end
