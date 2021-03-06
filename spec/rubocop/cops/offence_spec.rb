require 'spec_helper'

module Rubocop
  module Cop
    describe Offence do
      it 'has a few required attributes' do
        offence = Offence.new(:convention, 1, 'line', 'message')

        offence.severity.should == :convention
        offence.line_number.should == 1
        offence.line.should == 'line'
        offence.message.should == 'message'
      end

      it 'overrides #to_s' do
        offence = Offence.new(:convention, 1, 'line', 'message')

        offence.to_s.should == 'C:  1: message'
      end
    end
  end
end
