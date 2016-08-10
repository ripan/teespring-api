require_relative '../lib/teespring'

describe Teespring do
  let(:auth_token){"60280daf-4297-4d6b-8381-f670a3b7a074"}
  let(:teespringApi){Teespring::Api.new(auth_token)}

  it "should return 1000 inks" do
    expect(teespringApi.inks["inks"].length).to eq(10000)
  end

  it "should return 1 practice question" do
    expect(teespringApi.questions_practice["questions"].length).to eq(1)
  end

  it "should return 100 evaluate question" do
    expect(teespringApi.questions_evaluate["questions"].length).to eq(100)
  end


end
