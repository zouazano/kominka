# frozen_string_literal: true

require 'test_helper'

class StayPrefecturesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get stay_prefectures_index_url
    assert_response :success
  end

  test 'should get show' do
    get stay_prefectures_show_url
    assert_response :success
  end
end
