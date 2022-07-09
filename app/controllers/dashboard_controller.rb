class DashboardController < ApplicationController
  def index
  end

  def referral
  end

  def referral_mail
    if User.where(email: params[:email]).blank?
      ReferralNotifierMailer.referral_mail(params[:email]).deliver
    else
      redirect_to :root, notice: "You Friend is already in our Database"
    end
    redirect_to :root
  end
end
