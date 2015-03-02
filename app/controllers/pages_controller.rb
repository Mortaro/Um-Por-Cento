class PagesController < ApplicationController
  def contact
    if request.post?
      Contacts.contact(params).deliver_later
      redirect_to root_path
    end
  end
end
