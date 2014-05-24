require 'spec_helper'

describe "static_pages/home.html.erb" do
  before { render }
  subject { rendered }

  it { should have_selector '#demoreel' }
  it { should have_content "Shot Breakdown" }
end
