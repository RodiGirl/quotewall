class Combination < ActiveRecord::Base

	has_many :quotes, dependent: :destroy
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :quotes, :comments



end
