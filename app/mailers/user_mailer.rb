class UserMailer < ApplicationMailer
  add_template_helper TrackingHelper

  def ask_question email
    @email = email
    mail to: email, subject: "Test Tracking Email"
  end
end
