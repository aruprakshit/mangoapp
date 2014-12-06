class User < ActiveRecord::Base
  attr_accessible :age, :department, :designation, :email_id, :location, :name

  def self.search(search)  
    if search  
      where('name LIKE ?', "%#{search}%")  
    else  
      scoped  
    end  
  end
end
