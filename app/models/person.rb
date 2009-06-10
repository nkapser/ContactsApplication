class Person < ActiveRecord::Base

  belongs_to :father,
    :class_name => "Person",
    :foreign_key => "father_id"

  belongs_to :mother,
    :class_name => "Person",
    :foreign_key => "mother_id"

  has_and_belongs_to_many :spouses,
    :class_name => "Person",
    :join_table => "marriages",
    :foreign_key => "person_id",
    :association_foreign_key => "spouse_id"
  
  has_many :husband_relation,
    :foreign_key => 'husband_id',  :class_name => 'Marriage'
  has_many :wife_relation,
    :foreign_key => 'wife_id', :class_name => 'Marriage'
  has_many :husbands,
    :through => :husband_relation, :source => :wife, :conditions => {:sex => 'M'}
  has_many :wives,
    :through => :wife_relation, :source => :husband, :conditions => {:sex => 'F'}

  belongs_to :contact_detail

  has_many :businesses


  def children
    Person.find(:all,
           :conditions => {:father_id => self})
  end

  def self.find_by_first_alphabet(alphabet = nil)
    Person.find(:all, :conditions => "first_name LIKE '#{alphabet}%'", :order => :first_name)
  end

end






