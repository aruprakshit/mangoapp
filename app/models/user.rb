class User < ActiveRecord::Base
  include Archive::Archiver

  attr_accessible :age, :department, :designation, :email_id, :location, :name

  default_scope where("archive is null")

  def self.search(search)
    if search
      where('name LIKE :search or age LIKE :search or 
            department LIKE :search or designation LIKE :search or
            email_id LIKE :search or location LIKE :search',
            {:search => "%#{search}%"})
    else
      scoped
    end
  end

  def self.group_users_by(grouping_attribute)
    User.all
        .group_by { |user| user.public_send(grouping_attribute) }
        .map { |grouping_key, users| [grouping_key, users.map(&:name).join("||")] }
  end
end
