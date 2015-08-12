require('rspec')
require('dealership')

describe(Dealership) do

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new("Flying Dragon Used Cars")
      expect(test_dealership.name()).to(eq("Flying Dragon Used Cars"))
    end
  end

  describe('#id') do
    it('returns the id of the dealership') do
      test_dealership = Dealership.new("Flying Dragon Used Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe('#cars') do
    it('adds an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Flying Dragon Used Cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a dealership to the array of saved dealerships') do
      test_dealership = Dealership.new("Flying Dragon Used Cars")
      test_dealership.save()
      expect(Dealership.all()).to(eq([test_dealership]))
    end
  end

end
