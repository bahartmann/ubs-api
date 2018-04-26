module UbsScore
  class Score < Faker::Base
    class << self
      def score
        fetch('name.ubs_scores')
      end
    end
  end
end
Faker.prepend UbsScore
