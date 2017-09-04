class InformationController < ApplicationController

  def index
  end

  def generate
    @name = params[:name]
    @city = params[:city]
    @primary_role = params[:primary_role]
    @additional_role = params[:additional_role]
    respond_to do |format|
      format.pdf { send_data certificate_pdf, filename: "#{@name.upcase}.pdf", type: 'application/pdf' }
    end
  end

  private

  def certificate_pdf
    render_to_string pdf: "Volunteer Certificate",
                     template: "information/certificate",
                     orientation: :landscape,
                     margin: { top: 0, bottom: 0, right: 0, left: 0 },
                     page_size: 'A5'
  end
end
