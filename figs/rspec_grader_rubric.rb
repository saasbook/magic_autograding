describe "#my_sum" do
  it "should be defined" do
    expect { my_sum([1,3,4]) }.not_to raise_error
  end
  it "does not use built-in library function" do
    arg = [1,2]
    expect(arg).not_to receive(:sum)
    my_sum(arg)
  end
  it "returns correct sum [20 points]" do
    my_sum([1,2,3,4,-5,5,-100]).should be_a_kind_of Fixnum
    my_sum([1,2,3,4,-5,5,-100]).should == 90
  end
  it "returns 0 for the empty array [10 points]" do
    expect { my_sum([]) }.not_to raise_error
    my_sum([]).should == 0
  end
end
