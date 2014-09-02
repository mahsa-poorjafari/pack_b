class StaticController < ApplicationController
  def home
    @categories = Category.all
    @about = Page.where(title: "About us")
    @contact = Page.where(title: "Contact us")
    
  end
  def googlebc5f5c16062b24b0
  
  end
  def sitemap
    respond_to do |format|
      format.xml
    end
  end
end
