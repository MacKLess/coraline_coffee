require 'rails_helper'

describe Review do
  it { should validate_presence_of :coffee }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :user }
  it { should validate_presence_of :content }

  it { should belong_to :coffee }
  # it { should belong_to :user }
end
