class PagesController < ApplicationController
  before_action :assign_meta_tags

  def home
      @contact = Contact.new
    end
end
