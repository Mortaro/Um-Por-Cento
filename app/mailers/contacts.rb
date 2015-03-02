class Contacts < ApplicationMailer

  def contact params
    @params = params
    mail to: "contato@umporcento.org"
  end

end
