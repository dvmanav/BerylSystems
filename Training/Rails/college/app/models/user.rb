class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    validates :name, :email, :password, :phone, :date_of_birth, :accepted_tos, presence: true
    #validates :accepted_tos, inclusion: {in: %w(true t "true" 1 "1" "y" "yes" "Y" "Yes" "YES")}
    validates :email , uniqueness: true
    validates :phone , uniqueness: true
    #validates :gender, inclusion: {in: %w("m", "f")}
    has_one :image, as: :image_profile

end
