# frozen_string_literal: true

describe 'Alterna Janelas', :janelas do
  before(:each) do
    visit '/windows'
  end

  it 'nova janela e fecha' do
    nova_janela = window_opened_by { click_link 'Clique aqui' }
    within_window -> { page.title == 'Nova Janela' } do
      expect(nova_janela.closed?).to be false
      sleep 3
    end
  end

  it 'troca de janela' do
    click_link 'Clique aqui'
    within_window -> { page.title == 'Nova Janela' } do
      expect(page).to have_content 'Aqui temos uma nova janela \o/'
      sleep 3
    end
  end
end
