class ScheduledItem < ApplicationRecord
	belongs_to :item
	belongs_to :schedule
end
