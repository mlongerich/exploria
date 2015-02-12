require 'rails_helper'

RSpec.describe "Students", type: :request do
  describe "GET /students" do
    it "works! (now write some real specs)" do
      get students_path
      expect(response).to have_http_status(200)
    end
  end
  describe "new student form filled in", type: :feature do 
    before do
      visit new_student_path
      fill_in "First name", with: "Anakin"
      fill_in "Last name", with: "Skywalker"
      fill_in "Nickname", with: "Vader"
      fill_in "Homeroom", with: "Deathstar"
      check "Is boarding"
      fill_in "Grade", with: "12"
      select "1995", from: "student_birthdate_1i"
      select "January", from: "student_birthdate_2i"
      select "1", from: "student_birthdate_3i"
      fill_in "Email", with: "dvader@example.com"
      fill_in "Phone number", with: "0888888888"
      fill_in "Health details", with: "Asthmatic amputee" 
    end
    describe "correctly" do
      it "should save to database" do
        expect {click_button "Create Student"}.to change(Student, :count).by(1)
      end
    end
    describe "incorrectly" do
      describe "- no first name" do
        before {fill_in "First name", with: ""}
        it "should not save to database" do
          expect {click_button "Create Student"}.to_not change(Student, :count)    
        end
      end
      describe "- no last name" do
        before {fill_in "Last name", with: ""}
        it "should not save to database" do
          expect {click_button "Create Student"}.to_not change(Student, :count)    
        end
      end
      describe "- no homeroom" do
        before {fill_in "Homeroom", with: ""}
        it "should not save to database" do
          expect {click_button "Create Student"}.to_not change(Student, :count)    
        end
      end
      describe "- no grade" do
        before {fill_in "Grade", with: ""}
        it "should not save to database" do
          expect {click_button "Create Student"}.to_not change(Student, :count)    
        end
      end
      describe "- no email" do
        before {fill_in "Email", with: ""}
        it "should not save to database" do
          expect {click_button "Create Student"}.to_not change(Student, :count)    
        end
      end
    end
  end
end
