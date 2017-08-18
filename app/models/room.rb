# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
# pricepernight  :float 
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
  validates :title,  :description, :beds, :guests, :image_url, :price_per_night, presence: true, length: { m: 400 }
  validates :beds, :guests, numericality: { only_integer: true }
  validates :price_per_night, numericality: { only_float: true }
  has_many :vehiculos
end
