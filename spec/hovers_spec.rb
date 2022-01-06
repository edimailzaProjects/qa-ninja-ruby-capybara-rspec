describe 'Dynamic Control', :hover do
  before(:each) do
    visit '/hovers'
  end

  it 'quando eu passo o mouse sobre o blade' do
    card = find('img[alt=Blade]')
    card.hover
  end
  it 'quando eu passo o mouse sobre o pantera negra' do
    card = find('img[alt^=Pantera]') #utilizando expressão regular para dizer que começa com pantera
    card.hover
  end
  it 'quando eu passo o mouse sobre o homem aranha' do
    card = find('img[alt$=Aranha]') #utilizando expressão regular para dizer que termina com aranha
    card.hover
  end
  after(:each) do
    sleep 2
  end
end