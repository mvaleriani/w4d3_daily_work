# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :string           not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
  validates :color, presence:true
  validates :birth_date, presence:true
  validates :name, presence:true
  validates :sex, presence:true
  validates :description, presence:true
end
