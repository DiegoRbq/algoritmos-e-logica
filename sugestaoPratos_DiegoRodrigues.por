programa
{
	funcao inicio()
	{
		cadeia nome, vegetariano, dieta, pagamento, sugestao = "" 
		
		escreva("--- Sistema de Sugestão de Pratos ---\n\n")
		
		escreva("Por favor, digite o nome do cliente: ")
		leia(nome)

		escreva("O cliente é vegetariano? (sim/não): ")
		leia(vegetariano)

		escreva("O cliente está em dieta? (sim/não): ")
		leia(dieta)

		escreva("\n-------------------------------------\n")

		se (dieta == "sim" e vegetariano == "sim")
		{
			sugestao = "Saladas"
		}
		senao se (dieta == "sim" e vegetariano == "não")
		{
			sugestao = "Frango Grelhado"
		}
		senao se (dieta == "não" e vegetariano == "sim")
		{
		     sugestao = "Macarrão"
		}
		senao se (dieta == "não" e vegetariano == "não")
		{
			sugestao = "Feijoada"
		}
		senao
		{
			escreva("Opção inválida inserida! (verifique se digitou sim/não)\n")
		}

	     escreva("\n--- Cliente: ", nome, " ---\n")
	     escreva("Sugestão de prato: ", sugestao, "\n")

		escreva("\n-------------------------------------\n")

	     escreva("\nQual a forma de pagamento ? (dinheiro/cartão): ")
		leia(pagamento)

		se (pagamento == "dinheiro")
		{
			escreva("\n--- Cliente possui 15% de desconto ---\n")
		}
		
		escreva("\nFim do atendimento.\nObrigado!")
		escreva("\n-------------------------------------\n")
	}
}
