require 'rails_helper'

describe Coffee do
  it { should validate_presence_of :blend_name }
  # it { should validate_presence_of :origin }
  # it { shoud validate_presence_of :cost }
  # it { should validate_presence_of :variety }
  # it { should validate_presenece_of :notes }
  #
  # it { should have_many :reviews }
end
