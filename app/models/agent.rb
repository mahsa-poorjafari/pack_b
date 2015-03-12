# encoding: UTF-8
class Agent < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :name_fa
  def name
    if I18n.locale == :en
      self.read_attribute("name_en")
    else
      self.read_attribute("name_fa")
    end    
  end
  
  def address
    if I18n.locale == :en
      self.read_attribute("address_en")
    else
      self.read_attribute("address_fa")
    end    
  end
end
