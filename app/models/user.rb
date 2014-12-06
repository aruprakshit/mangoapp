class User < ActiveRecord::Base
  attr_accessible :age, :department, :designation, :email_id, :location, :name

  def self.search(search)  
    if search  
      where('name like :search or age like :search or 
            department like :search or designation like :search or
            email_id like :search or location like :search',
            {:search => "%#{search}%"})  
    else  
      scoped  
    end  
  end
end
