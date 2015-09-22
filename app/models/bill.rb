class Bill < ActiveRecord::Base

	before_update :update_paid_at

	def update_paid_at
		if self.paid && !self.paid_at
			self.paid_at = Date.new
		end
	end

end
