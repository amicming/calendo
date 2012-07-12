class Event < ActiveRecord::Base
	attr_accessible :all_day, :description, :ends_at, :starts_at, :title

	validates :title, presence: true
	validates :description, presence: true

	scope :before, lambda {|end_time| {:conditions => ["ends_at < ?", Event.format_date(end_time)] }}
	scope :after, lambda {|start_time| {:conditions => ["starts_at > ?", Event.format_date(start_time)] }}
  
	def as_json(options = {}) {
		:id => self.id,
		:title => self.title,
		:description => self.description || "",
		:start => starts_at.rfc822,
		:end => ends_at.rfc822,
		:allDay => self.all_day,
		:recurring => false,
		:url => Rails.application.routes.url_helpers.event_path(id)
		}    
	end

	def self.format_date(date_time)
		Time.at(date_time.to_i).to_formatted_s(:db)
	end
end
