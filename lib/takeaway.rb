require_relative 'order'
require_relative 'customer'
require 'twilio-ruby'

class Takeaway

	attr_accessor :menu, :orders

	def initialize(menu = Menu.new, orders=[])
		@menu = menu
		@orders = []
	end

	def order_count
		orders.count
	end

	def take_order(order, customer)
		orders << order
		send_confirmation(order, customer)
	end

	def complete(complete_order)
		orders.reject!{|order| order == complete_order}
	end


def send_confirmation(order, customer)
		account_sid = "ACc45838593bc587799da37ef4f9460edf"
		auth_token = "9b8e42a2c3806e0d5e452f797230af5f"

		@client = Twilio::REST::Client.new account_sid, auth_token

		@message = @client.account.messages.create({:to => "+447724872208", :from => "+44 141 280 3504", :body => "Dear #{customer.name}, thank you for your order! Your meal will be delivered in the next 60 minutes. It will cost £#{'%.2f' % order.final_price}."})
	end

end