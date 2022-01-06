# frozen_string_literal: true

describe 'Meu primeiro script', :ola do
  it 'visitar a página' do
    visit '/'
    # Pegando o titulo da pagina
    expect(page.title).to eql 'Training Wheels Protocol'
  end
  
end