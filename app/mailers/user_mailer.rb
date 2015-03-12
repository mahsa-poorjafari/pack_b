# encoding: UTF-8
class UserMailer < ActionMailer::Base

  def send_msg_user
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "پیام ارسال شده کاربر- سایت کیمیاکاران ", :from => "info@raush.ir")
  end 
  def send_order_user
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "سفارش ارسال شده توسط کاربر - سایت کیمیاکاران", :from => "info@raush.ir")
  end
  
end
