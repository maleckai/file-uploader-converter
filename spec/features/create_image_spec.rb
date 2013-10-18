require 'spec_helper'

describe 'Creating a new image' do

  before :each do
    visit root_path
  end

  it 'should create a new row in the list of images', js: true do
    enter_valid_image_data
    submit_new_image

    image_table = find_by_id 'image-table'
    image_table.all('tr').count.should == 2 # The number of rows should be 2, to include the header row
  end

  it 'should create a new image in a database', js: true do
    enter_valid_image_data
    submit_new_image

    Image.count.should == 1
  end

  def enter_valid_image_data
    fill_in 'image_name', with: "Test Puppies"
    attach_file 'image_file', Rails.root + 'spec/fixtures/images/testimage1.jpg', visible: false
  end

  def submit_new_image
    click_button "Begin Upload"
  end

end