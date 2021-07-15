class InquiriesController < ApplicationController

  def index
    @inquiry = Inquiry.new
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.received_email(@inquiry).deliver_now
  end
  private
  def inquiry_params
    params.require(:inquiry).permit(:email,:name,:relation,:context)
  end
end
