require "application_system_test_case"

class CourierDetailsTest < ApplicationSystemTestCase
  setup do
    @courier_detail = courier_details(:one)
  end

  test "visiting the index" do
    visit courier_details_url
    assert_selector "h1", text: "Courier Details"
  end

  test "creating a Courier detail" do
    visit courier_details_url
    click_on "New Courier Detail"

    fill_in "Parcel weight", with: @courier_detail.parcel_weight
    fill_in "Payment mode", with: @courier_detail.payment_mode
    fill_in "Receiver address", with: @courier_detail.receiver_address
    fill_in "Receiver contact", with: @courier_detail.receiver_contact
    fill_in "Receiver name", with: @courier_detail.receiver_name
    fill_in "Receiver pincode", with: @courier_detail.receiver_pincode
    fill_in "Sender address", with: @courier_detail.sender_address
    fill_in "Sender contact", with: @courier_detail.sender_contact
    fill_in "Sender name", with: @courier_detail.sender_name
    fill_in "Sender pincode", with: @courier_detail.sender_pincode
    fill_in "Service cost", with: @courier_detail.service_cost
    fill_in "Service type", with: @courier_detail.service_type
    fill_in "User", with: @courier_detail.user_id
    click_on "Create Courier detail"

    assert_text "Courier detail was successfully created"
    click_on "Back"
  end

  test "updating a Courier detail" do
    visit courier_details_url
    click_on "Edit", match: :first

    fill_in "Parcel weight", with: @courier_detail.parcel_weight
    fill_in "Payment mode", with: @courier_detail.payment_mode
    fill_in "Receiver address", with: @courier_detail.receiver_address
    fill_in "Receiver contact", with: @courier_detail.receiver_contact
    fill_in "Receiver name", with: @courier_detail.receiver_name
    fill_in "Receiver pincode", with: @courier_detail.receiver_pincode
    fill_in "Sender address", with: @courier_detail.sender_address
    fill_in "Sender contact", with: @courier_detail.sender_contact
    fill_in "Sender name", with: @courier_detail.sender_name
    fill_in "Sender pincode", with: @courier_detail.sender_pincode
    fill_in "Service cost", with: @courier_detail.service_cost
    fill_in "Service type", with: @courier_detail.service_type
    fill_in "User", with: @courier_detail.user_id
    click_on "Update Courier detail"

    assert_text "Courier detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Courier detail" do
    visit courier_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Courier detail was successfully destroyed"
  end
end
