IBC COACHIG TESTE

1º - Rodar rails db:create && rails db:migrate
2º - rails db:seed para popular o banco

Existem duas rotas - a rota /pinterests que é a de cadastro e a rota home que seria a de listagem principal e pesquisa.

Criei 2 testes, um de model e outro de controller. Você vai notar que eles são bem básicos, é porque fiz eles estudando algumas hroas dessa semana pois aqui aonde trabalho não utilizamos testes então já havia esquecido tudo o que eu aprendi sobre eles. Consegui fazer funcionar mas vou me aprofundar mais agora, já que vi a importância deles. :)

Para rodar os testes:

1º model - rspec spec/models/pinterest_spec.rb
2º controller - rspec spec/controllers/pinterest_controller_spec.rb