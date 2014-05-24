require 'spec_helper'

describe "static_pages/works.html.erb" do
  before { render }
  subject { rendered }

  it { should have_selector '#portfolio' }
end
