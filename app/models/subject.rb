class Subject < ApplicationRecord
	
	scope :visible, -> { where(:visible => true) }
	scope :invisible, -> { where(:visible => false) }
	scope :sorted, -> { order("position ASC") }
	scope :newest_first, -> { order("created_at DESC") }
	scope :search, lambda {|q| where(["name LIKE ?", "%#{q}%"])}
end
