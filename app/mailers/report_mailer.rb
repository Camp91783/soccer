class ReportMailer < ApplicationMailer
	def report_email(report_id)
		@report = Report.find(report_id)
	end
end
