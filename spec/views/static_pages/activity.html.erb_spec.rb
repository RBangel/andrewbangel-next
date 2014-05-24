require 'spec_helper'

describe "static_pages/activity.html.erb" do
  before { render }
  subject { rendered }

  it { should have_selector '#activity' }
end
