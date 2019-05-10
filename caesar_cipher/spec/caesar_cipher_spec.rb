require "./caesar_cipher"

RSpec.describe "#caesar_cipher" do
	subject { "hello world" }

	context "lowercase characters" do
		it "returns same phrase when shift is zero" do
			expect(caesar_cipher(subject, 0)).to eql("hello world")
		end

		it "shifts small distances" do
			expect(caesar_cipher(subject, 2)).to eql("jgnnq yqtnf")
		end

		it "shifts large distances" do 
			expect(caesar_cipher(subject, 15)).to eql("wtaad ldgas")
		end

		it "shifts in the negative direction" do
			expect(caesar_cipher(subject, -3)).to eql("ebiil tloia")
		end
	end

	context "with upper and lower case characters" do
		it "maintains cases with small shift" do
			expect(caesar_cipher("Chicken Waffles", 2)).to eql("Ejkemgp Ychhngu")
		end

		it "maintains cases with huge shift" do
			expect(caesar_cipher("Chicken Waffles", 38)).to eql("Otuowqz Imrrxqe")
		end

		it "ignores punctuation" do
			expect(caesar_cipher("!Hey? Man#", 4)).to eql("!Lic? Qer#")
		end
	end

end
