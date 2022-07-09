class ReferralNotifierMailer < ApplicationMailer
  def referral_mail(email)
    @email=email
    mail(to: email, subject: "You just got referred🎉")
  end
end
