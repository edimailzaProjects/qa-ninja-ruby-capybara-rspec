describe 'Dynamic Control', :dc do
  before(:each) do
    visit '/dynamic_controls'
  end
  it 'quando habilita o campo' do
    # quando temos a propriedade disabled true, o campo esta desabilitado
    # quando nao tem disable, o campo esta habilitado
    res = page.has_field? 'movie', disabled: true
    puts res
    click_button 'Habilita'
    res = page.has_field? 'movie', disabled: false
    puts res
  end
end
