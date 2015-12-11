require 'rails_helper'

describe Tweet do
  it 'has a valid factory' do
    expect(build(:tweet)).to be_valid
  end

  it 'is invalid without content' do
    expect(build(:tweet, content: nil)).to_not be_valid
  end

  it 'is invalid without a user_id' do
    expect(build(:tweet, user_id: nil)).to_not be_valid
  end

  it 'is invalid with content greater than 140 characters' do
    expect(build(:tweet, content: "poop"*50)).to_not be_valid
  end

  it 'is invalid with negative likes' do
    expect(build(:tweet, likes: -1)).to_not be_valid
  end

  it 'is invalid with non-integer likes' do
    expect(build(:tweet, likes: 1.5)).to_not be_valid
  end
end
