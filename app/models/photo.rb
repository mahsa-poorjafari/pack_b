# encoding: UTF-8
class Photo < ActiveRecord::Base
  belongs_to :product  
  
  has_attached_file :image, :styles => { :original => "500x500>" , :medium => "300x300>", :small => "320x270>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
  
  def description    
    if I18n.locale == :en
      self.read_attribute("description")
    else
      self.read_attribute("description_fa")
    end    
  end
end
