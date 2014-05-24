require 'spec_helper'

describe "static_pages/contact.html.erb" do
  before { render }
  subject { rendered }

  it { should have_selector '#contact' }
end
