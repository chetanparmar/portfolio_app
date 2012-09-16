class Investment < ActiveRecord::Base
  validate :quantity
  def quantity
    if qty<0
      errors.add :qty, 'should be positive'
    end
  end
end
