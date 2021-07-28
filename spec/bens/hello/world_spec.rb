RSpec.describe Bens::Hello::World do
  it "has a version number" do
    expect(Bens::Hello::World::VERSION).not_to be nil
  end

  it "passes the first test" do
    expect(true).to eq(true)
  end
end
