require 'spec_helper'
require 'square'

RSpec.describe Square do

  context "a blank square" do
    it "is not valid" do
      expect(described_class.new('')).to_not be_valid
      expect(described_class.new(nil)).to_not be_valid
    end
  end

  context "a square with a number" do
    subject { described_class.new(1) }

    it "is valid if int" do
      expect(subject).to be_valid
    end


    context "number is <1" do
      subject { described_class.new(0) }
      it "is not valid" do
        expect(subject).to_not be_valid
      end
    end

    context 'number is >9' do
      subject { described_class.new(10) }
      it "is not valid" do
        expect(subject).to_not be_valid
      end
    end

    context 'square contains float' do

      subject { described_class.new(4.5) }
      it "is not valid" do
        expect(subject).to_not be_valid
      end
    end

  end
end
