require 'rails_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid without a username' do
    expect(build(:user, username: nil)).to_not be_valid
  end

  it 'is invalid without an email' do
    expect(build(:user, email: nil)).to_not be_valid
  end

  it 'does not allow weird characters in username ' do
    expect(build(:user,username: 'Q*@(&#(*!' )).to_not be_valid
  end

  it 'does not allow weird characters in email' do
    expect(build(:user,email: 'Q*@(@poop.com' )).to_not be_valid
  end
end
