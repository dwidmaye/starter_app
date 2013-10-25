require 'spec_helper'

describe Comment do
  context "associations check" do
    it { should belong_to(:story) }
  end
end
