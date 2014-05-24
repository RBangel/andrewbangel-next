require 'spec_helper'

describe "static_pages/resume.html.erb" do
  before { render }
  subject { rendered }

  it { should have_selector '#resume' }
end
