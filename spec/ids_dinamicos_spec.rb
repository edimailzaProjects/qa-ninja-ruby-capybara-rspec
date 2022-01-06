# frozen_string_literal: true

describe 'IDs dinamicos', :ids_dinamicos do
  before(:each) do
    visit '/access'
  end
# $ => começa com
# ^ => termina com
# *=> contém
  it 'cadastro' do
    find('input[id$=UsernameInput]').set 'edi'
    find('input[id^=PasswordInput]').set '123456'
    find('a[id*=GetStartedButton]').click

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 3
  end
end
