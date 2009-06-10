class PeopleController < ApplicationController
  def index
    
  end

  def directory
     @people = Person.find_by_first_alphabet(params[:alphabet]).paginate :page => params[:page], :per_page => 20
  end
end
