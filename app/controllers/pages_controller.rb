class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def show
  	@lists = List.all
  end
end
