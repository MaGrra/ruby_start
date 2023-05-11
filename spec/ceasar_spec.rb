require_relative '../ceasar'

describe Ceasar do
    describe '#cipher' do
        it "Changes the letter for 1 place" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('abc', 1)).to eql('bcd')
        end
        it "Does not change symbols" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('a.@b', 1)).to eql('b.@c')
        end
        it "Does not change numbers" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('1a2b', 1)).to eql('1b2c')
        end
        it "Case insensative" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('aBcD', 1)).to eql('bCdE')
        end
        it "Loops around at the end" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('zYz', 3)).to eql('cBc')
        end
        it "Works with actual words and stuff" do
            ceasar = Ceasar.new
            expect(ceasar.cipher('My name is Bob. I am 10', 1)).to eql('Nz obnf jt Cpc. J bn 10')
        end

    end
end
