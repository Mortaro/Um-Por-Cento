class Member < ActiveRecord::Base
  def self.us
    where(kind: 'Nós')
  end

  def self.guardians
    where(kind: 'Guardiões')
  end

  def self.ambassadors
    where(kind: 'Embaixadores')
  end

end
