require 'spec_helper'

describe Frame do
  fixtures :frames
  before(:each) do
    @frame_defaults = {
      title:        'Lorem ipsum',
      description:      'Lorem ipsum ...',
      institution: 'Some institution',
      from:     '01/01/2013',
      to:         '01/01/2014',
      kind:       'study'
    }
  end

  it "should be invalid if missing required data" do
    frame = Frame.new
    assert !frame.valid?
    [:title, :description, :to, :from, :institution].each do |field_name|
      frame.errors.keys.should include(field_name)
    end
  end

  it "should be valid if required data exists" do
    frame = Frame.new(@frame_defaults)
    frame.should be_valid
  end
end
