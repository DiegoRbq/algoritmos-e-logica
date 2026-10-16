programa
{
	funcao inicio()
	{
		real valor_desconto_dia
		cadeia nomes[6]
		real gastos[6]
		
		real total_loja = 0.0
		real valor_final
		inteiro qtd_descontos = 0

		escreva("--- Configuração do Sistema ---\n\n")
		escreva("Qual o valor do desconto do dia ? (em R$)? ")
		leia(valor_desconto_dia)

		limpa() 

		escreva("--- Cadastro de Vendas ---\n\n")
		
		para (inteiro i = 0; i < 6; i++) 
		{
			escreva("Qual o nome do(a) Cliente ", i + 1, " ? - Nome: ")
			leia(nomes[i])
			
			escreva("Cliente ", i + 1, " - Quanto ", nomes[i], " gastou na loja ? R$: ")
			leia(gastos[i])
			escreva("\n")
		}

		limpa()

		escreva("--- Relatório Individual ---\n\n")

		para (inteiro i = 0; i < 6; i++)
		{
			 valor_final = gastos[i] 

			se (gastos[i] > 100.0)
			{
				valor_final = gastos[i] - valor_desconto_dia 
				qtd_descontos = qtd_descontos + 1 
				escreva(nomes[i], " | Gasto Original: ", gastos[i], " | RECEBEU DESCONTO | Valor Total ( Com desconto ): ", valor_final, "\n")
			}
			senao
			{
				escreva(nomes[i], " | Gasto Original: ", gastos[i], " | NÃO RECEBEU DESCONTO | Valor Total: ", valor_final, "\n")
			}

			total_loja = total_loja + valor_final
		}

		escreva("\n--------------------------------\n\n")
		escreva("--- Resumo do Dia: ---\n\n")
		escreva("Valor total recebido pela loja: R$ ", total_loja, "\n")
		escreva("Quantos usuários tiveram desconto: ", qtd_descontos, "\n")
	}
}
