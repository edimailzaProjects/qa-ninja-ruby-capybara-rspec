# frozen_string_literal: true

describe 'Login 3', :login3 do
  before(:each) do
    visit '/access'
  end

  it 'login com sucesso' do
    #Técnica de escopo
    #trazer o elemento pai para dentro dos elementos filhos do formulário de login

    #login_form = find('#login')

    #login_form.find('input[name=username]').set 'stark'
    #login_form.find('input[name=password]').set 'jarvis!'

    #click_button 'Entrar'

    #Dentro do elemento Login, busque os campos e coloque estas entradas

    within('#login') do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
      click_button 'Entrar'
    end
    expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    page.save_screenshot('log/login_com_sucesso.png')
  end

  it 'cadastro com sucesso' do
    within('#signup') do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
      click_link 'Criar Conta'
    end
    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 3
  end
end
