class Trainer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pokemons
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
