class User < ActiveRecord::Base
  has_many  :link_site_users
  has_many  :sites, through: :link_site_users

  has_many  :link_tag_users
  has_many  :tags, through: :link_tag_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessor :login
  validates :username,
  :uniqueness => { :case_sensitive => false }


  # configure user
  after_create do |user|
    if user.username.present?
      Tag.first.sites.each do |site|
        LinkSiteUser.create({user_id: user.id, site_id: site.id})
      end

      user_tags = Tag.find([2, 4, 6, 7])
      user_tags.each do |tag|
        LinkTagUser.create({user_id: user.id, tag_id: tag.id})
      end
    end
  end


  # https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign-in-using-their-username-or-email-address
  #
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
end
