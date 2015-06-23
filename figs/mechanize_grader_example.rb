it "has checkboxes for ratings [5 points]" do
  @page.form_with(:id => 'ratings_form').checkboxes.each do |checkbox|
    checkbox[:id].should =~ /ratings_\w+/
  end
end

it "displays movie rating in 2nd column of movies table [5 points]" do
  rating = @page.search("table[@id=movies]/tbody/tr[1]/td[2]").text
  rating.should_not be_empty
end

it "should only display movies of selected rating [20 points]" do
  %(G PG PG-13 R).each do |rating|
    # Check corresponding rating, uncheck all other ratings
    ratings_form.checkboxes.each do |box|
      if box['id'] == "ratings_#{rating}" then box.check else box.uncheck end
    end
    response = form.button_with(:id => 'ratings_submit').submit
    MoviesTable.new(response).each_table_row do |row|
      row.columns[:rating].should == rating
    end
  end
end
