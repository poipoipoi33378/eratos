require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe '#prime_number' do
  it '2' do
    eratos = Eratos.new
    expect(eratos.prime_number(2)).to eq [2]
  end

  it '2 3' do
    eratos = Eratos.new
    expect(eratos.prime_number(3)).to eq [2,3]
  end

end


