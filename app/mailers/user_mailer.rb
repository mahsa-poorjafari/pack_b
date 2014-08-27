class UserMailer < ActionMailer::Base

  def send_msg_user
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "پیام ارسال شده کاربر ", :from => "web-development@raush.com")
  end 
  def send_order_user
    @message = Message.last
    mail(:to =>  User.all.collect(&:email).join(','), :subject => "سفارش ارسال شده توسط کاربر ", :from => "web-development@raush.com")
  end
  
end
