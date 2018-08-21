require 'spec_helper'
describe Spree::ContentController do
  it "should not display a local file" do
    expect {
      spree_get :show, :path => "../../Gemfile"
    }.to render_template(:file => "#{Rails.root}/public/404.html")
  end

  it "should display CVV page" do
    spree_get :cvv
    response.response_code.should == 200
  end
end
