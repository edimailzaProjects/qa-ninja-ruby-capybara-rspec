describe 'caixas de seleção', :radio do
  before(:each) do
    visit '/radios'
  end
  it 'selecao por ID' do
    choose('cap') #funciona só com id
  end
  it 'selecao por find e css selector' do
    find('input[value=guardians]').click
  end
  after(:each) do
    sleep 3
  end
end