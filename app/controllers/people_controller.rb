class PeopleController < ApplicationController
  def index
    
  end

  def directory
    @people = Person.find_by_first_alphabet(params[:alphabet]).paginate :page => params[:page], :per_page => 20
  end

  def search
    @results = Person.find_all_by_query_and_filter(params).paginate :page => params[:page], :per_page => 20
  end

  def show
    @person = Person.find_by_id(params[:id])
    @children = @person.children
    respond_to do |format|

#      format.html { render :xml => @person.to_xml(:include => {:contact_detail, {:businesses => {:include => [:contact_detail]}}, :father, :mother}, :methods => [:children])}
       format.html { render :xml => @person.to_xml(:include => { 
                                    :father => {:except => {:methods => :children}},
                                    :mother => {:except => {:methods => :children}},
                                    :businesses => {:include => [:contact_detail]}},
                                    :contact_detail => {},
                                    :methods => [:children])}
     format.json { render :json => @person.to_json }
    end
  end
end
