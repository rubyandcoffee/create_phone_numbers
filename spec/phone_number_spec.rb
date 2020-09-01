require 'phone_number'

RSpec.describe PhoneNumber do
  let(:subject) { PhoneNumber.create(numbers) }
  let(:numbers) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] }

  describe '.create' do
    let(:phone_number) { '(123) 456-7890' }

    it 'converts a series of integers into a phone number format' do
      expect(subject).to eql(phone_number)
    end

    context 'all integers are identical' do
      let(:numbers) { [1, 1, 1, 1, 1, 1, 1, 1, 1, 1] }
      let(:phone_number) { '(111) 111-1111' }

      it { is_expected.to eql(phone_number) }
    end
  end
end
