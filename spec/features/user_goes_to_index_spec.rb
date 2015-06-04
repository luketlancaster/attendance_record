feature "User goes to index" do

  scenario "User shows up on front page" do
    Fabricate(:student, first_name: "Joe", last_name: "Blow")
    Fabricate(:student, first_name: "James", last_name: "Blam")
    Fabricate(:student, first_name: "Phil", last_name: "Flam")
    Fabricate(:student, first_name: "Zardu", last_name: "Sparftern")
    visit root_path
    page.should have_content("Attendance Record")
    within("select#students") do
      page.should have_css("option", text: "Joe Blow")
      page.should have_css("option", text: "James Blam")
      page.should have_css("option", text: "Phil Flam")
      page.should have_css("option", text: "Zardu Sparftern")
    end
    page.should have_css("button", text: "Present")
  end
end
