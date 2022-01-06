# frozen_string_literal: true

describe 'drag and drop', :dd do
  before(:each) do
    visit ''
  end
  it 'homem aranha pertence ao time stark' do
    stark = find('.team-stark .column')
    cap = find('.team-cap .column')
    spiderman = find('img[alt$=Aranha]')
    spiderman.drag_to stark
    sleep 5
    expect(stark).to have_css 'img[alt$=Aranha]'
    expect(cap).not_to have_css 'img[alt$=Aranha]'
  end
end
