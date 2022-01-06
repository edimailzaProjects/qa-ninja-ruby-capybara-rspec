# frozen_string_literal: true

describe 'caixas de seleção', :checkbox do
  before(:each) do
    visit 'checkboxes'
  end
  it 'marcando uma opcao' do
    check('thor') # funciona so com id
  end

  it 'desmarcando uma opcao' do
    uncheck('antman') # funciona so com id
  end

  it 'marcando com find set true' do
    find('input[value=cap]').set(true)
  end

  it 'marcando com find set false' do
    find('input[value=guardians]').set(false)
  end

  after(:each) do
    sleep 3
  end
end
