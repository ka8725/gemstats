require 'spec_helper'

describe GemInfo do
  let(:gem_info) { Factory(:gem_info) }
  subject { gem_info }

  it { should be_valid }
end
