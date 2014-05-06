require 'spec_helper'

describe Frames do
  fixtures :frames

  it "gets /api/frames.json" do
    visit "/api/frames.json"
    response.body == Frame.all.to_json
    frames = JSON.parse(response.body)
    frames.size.should eq(3)
    assert frames.any? { |s| s["title"] == frames(:study_1).title }
  end

  it "gets /api/frames/:id" do
    frames = frames(:study_1)
    visit "/api/frames/#{frame.id}.json"
    response.body == frame.to_json
    assert JSON.parse(response.body)["title"] == frame.title
  end
end
