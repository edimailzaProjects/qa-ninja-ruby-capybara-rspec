# frozen_string_literal: true

# Rode no cmd com >>>>> rspec --tag @dropdown
# é assim que se põe uma tag no elemento

describe 'caixa de opções', :dropdown do
  it 'item específico simples' do
    visit '/dropdown'
    select('Loki', from: 'dropdown') # So funciona se houver id's
    sleep 3
  end

  it 'item específico com o find' do
    visit '/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3
  end

  it 'qualquer item', :sample do
    visit '/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample
    # O sample sorteia um elemento qualquer dentro do array
    sleep 3
  end
end
