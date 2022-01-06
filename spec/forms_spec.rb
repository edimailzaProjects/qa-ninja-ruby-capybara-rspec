describe 'Formularios' do
  it 'login com sucesso' do
    visit '/login'
    fill_in 'username', with: 'stark'
    fill_in 'password', with: 'jarvis!'
    click_button 'Login'
    expect(find('#flash').visible?).to be true
    puts 'Contém o texto'
    expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    puts 'Este valor contém no texto'
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    puts 'Existe o conteúdo no elemento'
    puts 'have content e include fazem a mesma coisa!!'
  end
end