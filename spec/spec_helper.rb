# INSTRUÇÕES
# Na pasta capy, crie o Gemfile e escreva os códigos padrão para baixar as bibiotecas
# Depois, escreva bundle install no cmder
# Em seguida rspec --init para ele criar os novos diretórios
# Apague todos os comentários dessa página, rode o rspec no prompt
# Após isso, integre ao cappybara com os  imports que em ruby é'require'

require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  #insira mais código do capybara aqui em baixo
  config.include Capybara::DSL

  config.before(:example) do
    page.current_window.resize_to(1280, 800) #(1920, 1080)
  end

  config.after(:example) do |e|
    nome = e.description.gsub(/[^A-Za-z0-9]/, '').tr(' ', '_')
    page.save_screenshot('log/' + nome + '.png') # if e.exception se eu quiser pegar cenario que falha
  end
end

#E configure o driver do capybara

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #_headless se eu quiser que as automações só abram por baixo
  config.default_max_wait_time = 15
  config.app_host = 'http://training-wheels-protocol.herokuapp.com'
end