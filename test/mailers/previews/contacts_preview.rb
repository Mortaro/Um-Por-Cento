# Preview all emails at http://localhost:3000/rails/mailers/contacts
class ContactsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contacts/contact
  def contact
    Contacts.contact
  end

end
