Dado('que estou na página do professor') do
    visit "/views/professor"
  end
  
  Quando('e clico na opção de corrigir redação') do
    select # TODO
  end
  
  Então('devo ser direcionado para página para corrigir a redação') do
    visit "views/correcao"
  end