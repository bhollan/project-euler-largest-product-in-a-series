describe "LargestProduct" do
  it 'returns the largest product of four digits' do
    answer = LargestProductFour.new.four_answer
    expect(encode_answer(answer)).to eq("55d264f8671b50b5dbaffa56d1ee719fd429e8f4")
  end
end
