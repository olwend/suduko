require 'spec_helper'
require './lib/validarray'

RSpec.describe Validarray do
  context 'a blank column-row' do
    subject { described_class.new([" "]) }
    it 'is not valid' do
      expect(subject).to_not be_valid
    end
  end

  context 'it is nine squares' do
    it 'is valid' do
      subject = described_class.new([1,2,3,4,5,6,7,8,9])
      expect(subject).to be_valid
    end
  end


    it 'is invalid with a !' do
      subject = described_class.new([1,'!',3,4,5,6,7,8,9])
      expect(subject).not_to be_valid
    end


  context 'if contains duplicate squares' do
    it 'is not valid' do
      subject = described_class.new([1,1,3,4,5,6,7,8,9])
      expect(subject).not_to be_valid
    end
  end

end
