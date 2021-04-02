# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    validates :birth_date, :color, :name, :sex, presence: true
    validates :sex, inclusion: { in: %w(M F) }, presence: true
    validates :color, inclusion: { in: %w(Orange Tabby Brown White) }, presence: true

    
end
