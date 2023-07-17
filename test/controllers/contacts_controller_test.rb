require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
    @contact_p_string = contacts(:two)
    @contact_p_tm_numbers = contacts(:three)
    @contact_p_negative_number = contacts(:four)
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference("Contact.count") do
      post contacts_url, params: { contact: { first_name: @contact.first_name, last_name: @contact.last_name, phone_number: @contact.phone_number } }
    end

    assert_redirected_to contacts_url
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { first_name: @contact.first_name, last_name: @contact.last_name, phone_number: @contact.phone_number } }
    assert_redirected_to contacts_url
  end

  test "should destroy contact" do
    assert_difference("Contact.count", -1) do
      delete contact_url(@contact)
    end

    assert_redirected_to contacts_url
  end

  test "should not create contact with invalid attributes" do
    assert_no_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: '', last_name: '', phone_number: '' } }
    end
    assert_response :unprocessable_entity
  end

  test "should not update contact with invalid attributes" do
    patch contact_url(@contact), params: { contact: { first_name: '', last_name: '', phone_number: '' } }
    assert_response :unprocessable_entity
  end

  test "should create contact without last name" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: @contact.first_name, last_name: '', phone_number: @contact.phone_number } }
    end
    assert_redirected_to contacts_url
  end

  test "should update contact without last_name" do
    patch contact_url(@contact), params: { contact: { first_name: @contact.first_name, last_name: '', phone_number: @contact.phone_number } }
    assert_redirected_to contacts_url
  end

  test "should not create contact with string phone" do
    assert_no_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: @contact_p_string.first_name, last_name: '', phone_number: @contact_p_string.phone_number } }
    end
    assert_response :unprocessable_entity
  end

  test "should not update contact with string phone" do
    patch contact_url(@contact), params: { contact: { first_name: @contact_p_string.first_name, last_name: '', phone_number: @contact_p_string.phone_number } }
    assert_response :unprocessable_entity
  end

  test "should not create contact with too many numbers on phone" do
    assert_no_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: @contact_p_tm_numbers.first_name, last_name: '', phone_number: @contact_p_tm_numbers.phone_number } }
    end
    assert_response :unprocessable_entity
  end

  test "should not update contact with too many numbers on phone" do
    patch contact_url(@contact), params: { contact: { first_name: @contact_p_tm_numbers.first_name, last_name: '', phone_number: @contact_p_tm_numbers.phone_number } }
    assert_response :unprocessable_entity
  end

  test "should not create contact with negative number on phone" do
    assert_no_difference('Contact.count') do
      post contacts_url, params: { contact: { first_name: @contact_p_negative_number.first_name, last_name: '', phone_number: @contact_p_negative_number.phone_number } }
    end
    assert_response :unprocessable_entity
  end

  test "should not update contact with negative number on phone" do
    patch contact_url(@contact), params: { contact: { first_name: @contact_p_negative_number.first_name, last_name: '', phone_number: @contact_p_negative_number.phone_number } }
    assert_response :unprocessable_entity
  end

end
