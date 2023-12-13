# encoding: utf-8
class UserMailer < ApplicationMailer
  def welcome_email(email)
    validation_code = ValidationCode.find_by_email(email)
    @code = validation_code
    mail(to: :email, subject: "山竹记账验证码")
  end
end
