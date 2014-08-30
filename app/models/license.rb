# encoding: UTF-8
class License < ActiveRecord::Base
  has_attached_file :image, :styles => { :original => "500x500>" , :medium => "300x300>", :small => "220x170>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
                                            
                                            
  def text
    if I18n.locale == :en
      self.read_attribute("text")
    else
      self.read_attribute("text_fa")
    end    
  end
  def title
    if I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
end
