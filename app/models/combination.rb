class Combination < ActiveRecord::Base

	has_many :quotes, dependent: :destroy
	has_many :comments, dependent: :destroy
end
