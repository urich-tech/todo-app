class User < ApplicationRecord
   include Devise::JWT::RevocationStrategies::JTIMatcher  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :list_items, dependent: :destroy
  #has_many :lists, dependent: :destroy

  def jwt_payload
     super
  end
end
