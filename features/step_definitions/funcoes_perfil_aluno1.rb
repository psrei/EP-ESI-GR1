 Dado('que estou na página de aluno') do
    visit "/views/home_alunos/home_aluno.html.erb"
  end
  
  Quando('e clico na opção de {escrever redação}') do
    select 'link_to'
  end
  
  Então('devo chegar a página de redação') do
    visit "views/redacao/new.html.erb"
  end