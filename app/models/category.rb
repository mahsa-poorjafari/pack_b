# encoding: UTF-8
class Category < ActiveRecord::Base
  has_many :products
  
  def title    
    if I18n.locale == :en
      self.read_attribute("title_en")
    else
      self.read_attribute("title_fa")
    end    
  end
  
  def description    
    if I18n.locale == :en
      self.read_attribute("description_en")
    else
      self.read_attribute("description_fa")
    end    
  end
end
