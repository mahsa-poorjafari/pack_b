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
    ret = []
    
    [1,2,3].each do |slide|
      ret << "{image : \"assets/slide#{slide}.jpg\", title : \"<div class='slide-content'>description#{slide}</div>\", thumb : '', url : ''}"
    end
    ret.join(",")
  end

end
