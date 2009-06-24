class PeopleController < ApplicationController
  def index
    
  end

  def directory
    @people = Person.find_by_first_alphabet(params[:alphabet]).paginate :page => params[:page], :per_page => 20
  end

  def search
    @results = fetch_using_filter(params[:query], params[:filter], params[:page])
  end

  private
  def fetch_using_filter(query,filter,page)
    if(filter == "Name")
      @people = Person.find_all_by_name(query).paginate :page => page, :per_page => 20
    end

  end
end
