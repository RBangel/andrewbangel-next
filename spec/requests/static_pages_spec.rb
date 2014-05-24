require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Andrew Bangel'" do
      visit root_path
      expect(page).to have_text(:all, 'Andrew Bangel')
    end

    it "should have the correct title 'Andrew Bangel | Home'" do
      visit root_path
      expect(page).to have_title('Andrew Bangel')
    end
  end

  describe "Works page" do
    it "should have the content 'Andrew Bangel'" do
      visit works_path
      expect(page).to have_text(:all, 'Andrew Bangel')
    end

    it "should have the correct title 'Andrew Bangel | Works'" do
      visit works_path
      expect(page).to have_title('Andrew Bangel | Works')
    end
  end

  describe "Activity page" do
    it "should have the content 'Andrew Bangel'" do
      visit '/static_pages/activity'
      expect(page).to have_text(:all, 'Andrew Bangel')
    end

    it "should have the correct title 'Andrew Bangel | Recent Activity'" do
      visit '/static_pages/activity'
      expect(page).to have_title('Andrew Bangel | Recent Activity')
    end
  end

  describe "Resume page" do
    it "should have the content 'Andrew Bangel'" do
      visit '/static_pages/resume'
      expect(page).to have_text(:all, 'Andrew Bangel')
    end

    it "should have the correct title 'Andrew Bangel | Resume'" do
      visit '/static_pages/resume'
      expect(page).to have_title('Andrew Bangel | Resume')
    end
  end

  describe "Contact page" do
    it "should have the content 'Andrew Bangel'" do
      visit '/static_pages/contact'
      expect(page).to have_text(:all, 'Andrew Bangel')
    end

    it "should have the correct title 'Andrew Bangel | Contact Me'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Andrew Bangel | Contact Me')
    end
  end
end
