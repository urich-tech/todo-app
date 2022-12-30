class PagesController < ApplicationController
  def home
  	@lists = List.all
  end

  def contact
  end

  def show
  	@lists = List.all
  end
end
