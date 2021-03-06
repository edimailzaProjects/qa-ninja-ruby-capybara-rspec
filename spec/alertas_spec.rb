# frozen_string_literal: true

describe 'Alerta de JS', :alerts do
  before(:each) do
    visit '/javascript_alerts'
  end

  it 'alerta' do
    click_button 'Alerta'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 3
  end

  it 'sim confirma' do
    click_button 'Confirma'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
  end

  it 'nao confirma' do
    click_button 'Confirma'

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
  end

  it 'accept prompt', :accept_prompt do
    accept_prompt(with: 'Edi') do
      click_button 'Prompt'
      sleep 2
    end

    expect(page).to have_content 'Edi'
  end

  it 'dismiss prompt', :dismiss_prompt do
    # Quando eu não aceito este prompt
    # Então a mensagem deve ser null
  end
end
