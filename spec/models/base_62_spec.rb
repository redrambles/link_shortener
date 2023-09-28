require 'rails_helper'

RSpec.describe Base62, type: :model do
  describe '#encode' do
    it 'returns a base62 encoded string' do
      expect(Base62.encode(0)).to eq('0')
      expect(Base62.encode(1)).to eq('1')
      expect(Base62.encode(62)).to eq('10')
      expect(Base62.encode(999_999)).to eq('4c91')
    end
  end

  describe '#decode' do
    it 'returns a base10 decoded number' do
      expect(Base62.decode('0')).to eq(0)
      expect(Base62.decode('1')).to eq(1)
      expect(Base62.decode('10')).to eq(62)
      expect(Base62.decode('4c91')).to eq(999_999)
    end
  end
end
