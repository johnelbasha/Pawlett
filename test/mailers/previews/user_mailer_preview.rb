class UserMailerPreview < ActionMailer::Preview
  def welcome
    @user = User.first
    raise
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: User.first, discount: true).welcome
  end
end
