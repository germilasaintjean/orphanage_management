class PrintPreviewController < ApplicationController
	respond_to? :html, :json
	def registration_card_print
		@person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
		# prints_registration_card_print_path unless @person.present?
		render :"/print_preview/registration_card_print"
	end

	def income_certificate_print
        @person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_income_certificate_print_path unless @person.present?

	end

	def community_certificate_print
        @person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_community_certificate_print_path unless @person.present?
	    render :layout => false
	end

	def disability_certificate_print
		@person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_disability_certificate_print_path unless @person.present?
	end
end
 # f = File.new("statements.xml", 'w')
 # f << Account.find(1).statements.to_xml
 # f.close 