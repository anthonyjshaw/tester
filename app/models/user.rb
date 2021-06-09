class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable

  has_one_attached :photo

  has_many :projects, dependent: :destroy
  has_many :tests, through: :projects, dependent: :destroy
  has_many :test_users, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :messages, dependent: :destroy

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.repo_url = "https://api.github.com/users/#{auth.info.nickname}/repos"
    end
  end
end
