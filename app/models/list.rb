class List < ApplicationRecord
	include Discard::Model

	has_many :list_item
end
