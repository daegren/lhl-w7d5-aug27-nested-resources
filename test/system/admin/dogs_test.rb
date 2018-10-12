require "application_system_test_case"

class Admin::DogsTest < ApplicationSystemTestCase
  setup do
    @admin_dog = admin_dogs(:one)
  end

  test "visiting the index" do
    visit admin_dogs_url
    assert_selector "h1", text: "Admin/Dogs"
  end

  test "creating a Dog" do
    visit admin_dogs_url
    click_on "New Admin/Dog"

    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit admin_dogs_url
    click_on "Edit", match: :first

    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit admin_dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
