class ReportMailer < ApplicationMailer
	def report_email(report_id)
		@report = Report.find(report_id)
		mail(to: "sccssoccerproject@gmail.com", subject: "Interested in league #{report_id}" )
	end

end
