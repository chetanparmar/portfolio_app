class Company < ActiveRecord::Base
  validate :symbol_len_2_or_3
  def symbol_len_2_or_3
    if symbol.length<2 || symbol.length>3
      errors.add :symbol,"Should be 2 or 3 characters"
    end
end
end
