require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Description", with: @user.description
    fill_in "Education", with: @user.education
    fill_in "Email", with: @user.email
    fill_in "Exp1", with: @user.exp1
    fill_in "Exp2", with: @user.exp2
    fill_in "Exp3", with: @user.exp3
    fill_in "Extras", with: @user.extras
    fill_in "Gender", with: @user.gender
    fill_in "Name", with: @user.name
    fill_in "Phone", with: @user.phone
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Description", with: @user.description
    fill_in "Education", with: @user.education
    fill_in "Email", with: @user.email
    fill_in "Exp1", with: @user.exp1
    fill_in "Exp2", with: @user.exp2
    fill_in "Exp3", with: @user.exp3
    fill_in "Extras", with: @user.extras
    fill_in "Gender", with: @user.gender
    fill_in "Name", with: @user.name
    fill_in "Phone", with: @user.phone
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
