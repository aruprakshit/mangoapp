class User < ActiveRecord::Base
  attr_accessible :age, :department, :designation, :email_id, :location, :name

  def self.search(search)  
    if search  
      where('name like ? or age like ? or 
            department like ? or designation like ? or
            email_id like ? or location like ?',
            "%#{search}%", "%#{search}%", "%#{search}%",
            "%#{search}%", "%#{search}%", "%#{search}%")  
    else  
      scoped  
    end  
  end
end
