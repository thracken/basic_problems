require_relative "../cipher.rb"

describe "caesar_cipher" do
  it "'abcde' shifts 2 to become 'cdefg'" do
    expect(caesar_cipher("abcde", 2)).to eq("cdefg")
  end

  it "'hello?' shifts 1 to become 'Ifmmp@'" do
    expect(caesar_cipher("Hello?", 1)).to eq("Ifmmp@")
  end

  it "'Testing with Rspec' shifts 15 becomes 'Ithixcv lxiw Ghetr'" do
    expect(caesar_cipher("Testing with Rspec", 15)).to eq("Ithixcv lxiw Ghetr")
  end
end
