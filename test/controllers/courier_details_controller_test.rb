require 'test_helper'

class CourierDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courier_detail = courier_details(:one)
  end

  test "should get index" do
    get courier_details_url
    assert_response :success
  end

  test "should get new" do
    get new_courier_detail_url
    assert_response :success
  end

  test "should create courier_detail" do
    assert_difference('CourierDetail.count') do
      post courier_details_url, params: { courier_detail: { parcel_weight: @courier_detail.parcel_weight, payment_mode: @courier_detail.payment_mode, receiver_address: @courier_detail.receiver_address, receiver_contact: @courier_detail.receiver_contact, receiver_name: @courier_detail.receiver_name, receiver_pincode: @courier_detail.receiver_pincode, sender_address: @courier_detail.sender_address, sender_contact: @courier_detail.sender_contact, sender_name: @courier_detail.sender_name, sender_pincode: @courier_detail.sender_pincode, service_cost: @courier_detail.service_cost, service_type: @courier_detail.service_type, user_id: @courier_detail.user_id } }
    end

    assert_redirected_to courier_detail_url(CourierDetail.last)
  end

  test "should show courier_detail" do
    get courier_detail_url(@courier_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_courier_detail_url(@courier_detail)
    assert_response :success
  end

  test "should update courier_detail" do
    patch courier_detail_url(@courier_detail), params: { courier_detail: { parcel_weight: @courier_detail.parcel_weight, payment_mode: @courier_detail.payment_mode, receiver_address: @courier_detail.receiver_address, receiver_contact: @courier_detail.receiver_contact, receiver_name: @courier_detail.receiver_name, receiver_pincode: @courier_detail.receiver_pincode, sender_address: @courier_detail.sender_address, sender_contact: @courier_detail.sender_contact, sender_name: @courier_detail.sender_name, sender_pincode: @courier_detail.sender_pincode, service_cost: @courier_detail.service_cost, service_type: @courier_detail.service_type, user_id: @courier_detail.user_id } }
    assert_redirected_to courier_detail_url(@courier_detail)
  end

  test "should destroy courier_detail" do
    assert_difference('CourierDetail.count', -1) do
      delete courier_detail_url(@courier_detail)
    end

    assert_redirected_to courier_details_url
  end
end
