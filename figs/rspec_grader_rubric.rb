describe "#sum" do
  
  it "should be defined" do
    expect { sum([1,3,4]) }.not_to raise_error
  end

  it "returns correct sum [20 points]" do
    sum([1,2,3,4,5]).should be_a_kind_of Fixnum
    sum([1,2,3,4,5]).should == 15
    sum([1,2,3,4,-5]).should == 5
    sum([1,2,3,4,-5,5,-100]).should == -90
  end

  it "works on the empty array [10 points]" do
    expect { sum([]) }.not_to raise_error
    sum([]).should be_zero
  end
  
end