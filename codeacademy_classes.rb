#Including require, require_relative, include. Include a module in a class (Mixin)
module Party_stuff
	def lay_table
		puts "table laid"
	end
end


class Event
	@@location = "29 Cruden St"
	@@events = 0

	def initialize (occasion, date = "tbc")
		@occasion = occasion
		@date = date
		@@events += 1
	end

	def location
		puts "location: #{@@location}"
	end

	def self.number_of_events
		@@events
	end

	private

	def send_invites
		puts "invites sent"
	end

end

class Party < Event
	include Party_stuff #Use Extent for class level mixin
	$host = {"Harriet": "wife", "George": "husband"}
	@@parties = 0
	attr_reader :occasion #can use attr_writer or attr_accessor

	def initialize (occasion, date)
		super
		@@parties += 1
		@guests = {}
	end

	def self.number_of_parties
		@@parties
	end

	def party_details
		puts "You are holding a party for #{@occasion} on #{@date}"
	end

	def new_guest (name, address)
		@guests[name] = address
	end

	def admin
		send_invites
	end

	def give_gifts
		puts main_present.downcase == "car" ? "Happy" : "Not happy"
	end

	private

	def main_present
		@main_present = "Car"
	end

end

bdayParty = Party.new("George's Birthday", Time.mktime(2018, 10,20))

bdayParty.party_details

bdayParty.location

puts "Events: #{Event.number_of_events}, Parties: #{Party.number_of_parties}"

puts bdayParty.occasion

bdayParty.new_guest("Dave", "Battersea")

bdayParty.admin

bdayParty.lay_table

bdayParty.give_gifts