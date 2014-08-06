class StaticController < ApplicationController
  def home
    @categories = Category.all
    @about = Page.where(title: "About us")
    @contact = Page.where(title: "Contact us")
    
  end
end
