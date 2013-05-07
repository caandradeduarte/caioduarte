class ContactMailer < ActionMailer::Base
	default :to => 'ca.andrade.duarte@gmail.com'

	def contact_email contact
		@contact = contact

		mail({
			:from => ["#{contact.name} <#{contact.email}>"],
			:subject => I18n.t('contact_mailer.contact_from_site') + ' - ' + contact.subject
		})
	end
end