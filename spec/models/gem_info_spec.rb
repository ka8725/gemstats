require 'spec_helper'

describe GemStats::Gem do
  let(:gem) { Factory(:gem) }
  subject { gem }

  it { should be_valid }
end
