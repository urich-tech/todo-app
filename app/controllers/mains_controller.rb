class MainsController < ApplicationController
  
  def main_home
  	@lists = List.all
  end
end
