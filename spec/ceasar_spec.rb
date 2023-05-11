require_relative '../ceasar'

describe Ceasar do
    describe '#main' do
        it "does the thing" do
            ceasar = Ceasar.new
            expect(ceasar.main('abc', 1)).to eql('bcd')
        end
    end
end
