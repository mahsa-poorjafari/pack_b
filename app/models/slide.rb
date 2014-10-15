# encoding: UTF-8
class Slide < ActiveRecord::Base
  has_attached_file :image, :styles => {  :medium => "450x450>", :small => "300x350>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

  def description    
    if I18n.locale == :en
      self.read_attribute("description")
    else
      self.read_attribute("description_fa")
    end    
  end
  def self.get_supersized_js
    @contact = Page.where(title: "Contact us")
    ret = []
    
    Slide.all.each do |slide|
      ret << "{image : \"#{slide.image(:medium)}\", title : \"<div class='slide-content'> </div>\", thumb : '', url : ''}"
             
    end
    ret.join(",")
  end

end
