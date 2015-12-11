FactoryGirl.define do
  factory :tweet do
  	user { FactoryGirl.build(:user) }
  	content { FFaker::BaconIpsum.sentence[1..140]}
  	likes { rand(100) }
  end

end
