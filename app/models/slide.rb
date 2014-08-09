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
    
    #[1,2,3].each do |slide|
    ret << "{image : \"assets/slide1-eb5e74ff4a5d6b7240247b826751aaea.jpg\", title : \"<div class='slide-content'>description</div>\", thumb : '', url : ''} , 
            {image : \"assets/slide2-2a522a37d3e9da964ecd8b22c219d99a.jpg\", title : \"<div class='slide-content'>description</div>\", thumb : '', url : ''} ,
            {image : \"assets/slide3-43d724a09f019f63aa871e17942c2612.jpg\", title : \"<div class='slide-content'>description</div>\", thumb : '', url : ''}"
    #end
    #ret.join(",")
  end

end
