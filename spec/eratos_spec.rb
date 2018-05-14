require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe '#prime_number' do
  it '2' do
    eratos = Eratos.new
    expect(eratos.prime_number(2)).to eq [2]
  end

  it '3' do
    eratos = Eratos.new
    expect(eratos.prime_number(3)).to eq [2,3]
  end

  it '30' do
    eratos = Eratos.new
    expect(eratos.prime_number(30)).to eq [2,3,5,7,11,13,17,19,23,29]
  end

  it '120' do
    eratos = Eratos.new
    expect(eratos.prime_number(120)).to eq [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113]
  end

end


