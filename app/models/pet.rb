class Pet < ApplicationRecord
  SPECIES = %w(dog cat rabbit) # ["dog", "cat", "rabbit"]
  validates :species, inclusion: { in: SPECIES, message: 'We only foster cats, dogs and rabbits'}

  def found_days_ago
    (Date.today - self.found_on).to_i
  end
end
