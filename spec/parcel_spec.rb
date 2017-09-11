require('rspec')
require('pry')
require('parcel')

  describe('#parcel') do
    it('calculates base cost of parcel with weight and volume') do
      expect(Parcel.new(1,2,3,3,0,0).base_cost).to(eq(6.5))
    end
    it('calculates additional shipping fees based on distance and speed of delivery') do
      expect(Parcel.new(1,2,3,3,5,15).additional_fees).to(eq(20))
    end
    it('calculates total shipping cost by adding base cost and additional fees') do
      expect(Parcel.new(1,2,3,3,5,15).total_cost).to(eq('26.50'))
    end
  end
