class User < ApplicationRecord
  has_secure_password
end

# class User < ApplicationRecord
#   # validates :username, :email, :pw_hash, presence: true
#   # validates :email, uniqueness: true
#   # has_many :restaurants
#   # has_many :reviews
#
#   # include BCrypt
#
#   def password
#     @password ||= BCrypt::Password.new(self.password_hash)
#     # @password ||= Password.new(pw_hash)
#   end
#
#   def password=(new_password)
#     @password = BCrypt::Password.create(new_password)
#     self.password_hash = @password
#   end
#
#   # def self.authenticate(email, password)
#   def self.authenticate(email, submitted_password)
#     user = User.find_by_email(email)
#     if user && user.password == submitted_password
#       return user
#     else
#       return nil
#     end
#   end
#
#
#   # attr_accessible :email, :password, :password_confirmation
#
#   # attr_accessor :password
#   # before_save :encrypt_password
#
#   # validates_confirmation_of :password
#   # validates_presence_of :password, :on => :create
#   # validates_presence_of :email
#   # validates_uniqueness_of :email
#
#   # def self.authenticate(email, password)
#   #   user = find_by_email(email)
#   #   if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#   #     user
#   #   else
#   #     nil
#   #   end
#   # end
#   #
#   # def encrypt_password
#   #   if password.present?
#   #     self.password_salt = BCrypt::Engine.generate_salt
#   #     self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#   #   end
#   # end
#
# end
