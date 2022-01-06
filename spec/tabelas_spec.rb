# frozen_string_literal: true

describe 'tabelas', :tabelas do
  before(:each) do
    visit '/tables'
  end

  it 'pega o tony na lista' do
    # expect(page).to have_content 'Robert Downey Jr'
    atores = all('table tbody tr')
    stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
    expect(stark.text).to include '10.000.000'
  end

  it 'deve exibir o salário do vin diesel' do
    diesel = find('table tbody tr', text: '@vindiesel')
    expect(diesel.text).to include '10.000.000'
  end

  it 'deve exibir o filme velozes e furiosos' do
    diesel = find('table tbody tr', text: '@vindiesel')
    movie = diesel.all('td')[2].text
    expect(movie).to eql 'Velozes e Furiosos'
  end

  it 'deve exibir o insta do Chris' do
    evans = find('table tbody tr', text: 'Chris Evans')
    insta = evans.all('td')[4].text
    expect(insta).to eql '@teamcevans'
  end
  # rever essa aula!!
  it 'deve clicar em remoção em Chris Prat' do
    prat = find('table tbody tr', text: 'Chris Prat')
    prat.find('a', text: 'delete').click

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
  end
end
