Dado('que estou na página do aluno') do
    visit 'aluno/view'
  end
  
  Quando('clico em editar redacoes') do
    click_on 'Editar Redacoes'
  end
  
  Quando('deverei editar a redacao na qual cliquei') do
    expect(page).to have_content(redacao_text_box)
  end
  
  Quando('deverei editar o titulo da redacao a qual cliquei') do
    expect(page).to have_content(titulo_text_box)
  end