class PeopleController < ApplicationController
  def index
    
  end

  def show_all
    @people = People.find :all
  end
end
