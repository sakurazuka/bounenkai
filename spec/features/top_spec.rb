require 'rails_helper'

describe 'root pages' do
  before do
    visit root_path
  end

  it 'default' do
    expect(page).to have_content '日程＆場所調整くん！'
  end

  it 'click 忘年会.rb' do
    click_link '忘年会.rb'
    expect(current_path).to eq top_index_path
  end

  it 'click 新しいイベントを作る' do
    click_link '新しいイベントを作る'
    expect(current_path).to eq "/events/#{Event.last.id}/event_steps/planner"
  end
end
