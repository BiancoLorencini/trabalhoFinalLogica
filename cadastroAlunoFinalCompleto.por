programa
{
	inclua biblioteca Tipos
	inclua biblioteca Util
	inclua biblioteca Texto
	/*  Projeto Lógica de Programação: GERENCIAMENTO DE TURMA
	1- Cadastro de Alunos: nome, mês de nascimento, turma e 3 notas
	2- Média da turma: retorna média da turma media<6 = Ruim, 6>=media<8 = Médio, 8>=media<10 = Bom, media = 10 = Excelente.
	3- Situação do Aluno: Reprovado se media < 6, caso contrário, Aprovado
	4- Exibição de Alunos: exibir lista de alunos, contendo todas as informações cadastradas. 
	5- Sair: fim do programa
	*/
	funcao exibirMenu()
	{
		limpa()
		escreva("\n\t\t\t\t\tREGISTRO DE ALUNOS")
		escreva("\n\t\t\t\t================================")
		escreva("\n\t\t\t1 - Cadastrar Aluno\t\t4 - Listar Alunos")
		escreva("\n\t\t\t2 - Média da Turma\t\t5 - Mural de Aniversariantes")
		escreva("\n\t\t\t3 - Situação do Aluno\t\t6 - Sair")
		escreva("\n\n")
		escreva("\n\nEscolha uma opção: ")
	}

	funcao cadastrarAluno(cadeia listaDeAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(listaDeAlunos)
		para(inteiro i=0; i<linhas; i++)
		{
			se(listaDeAlunos[i][0] == "")
			{
			cadeia nome, mesNasc, turma, mes
			real nota1, nota2, nota3, medAluno
			caracter parar	

			limpa()		
			escreva("CADASTRO DE ALUNO: ")			
			escreva("\n\nNome: ")
			leia(nome)
			
			faca
			{
				escreva("Mês do Nascimento: ")
				leia(mes)
				mesNasc = Texto.caixa_baixa(mes)
			}enquanto(mesNasc != "janeiro" e mesNasc != "fevereiro" e mesNasc != "março" e mesNasc != "abril" e mesNasc != "maio" e mesNasc != "junho" e mesNasc != "julho" e mesNasc != "agosto" e mesNasc != "setembro" e mesNasc != "outubro" e mesNasc != "novembro"  e mesNasc != "dezembro")
			
			escreva("Turma: ")
			leia(turma)

			faca
			{
				escreva("Nota 1: ")
				leia(nota1)
			}enquanto( nota1 < 0 ou nota1 > 10)
			
			faca
			{
				escreva("Nota 2: ")
				leia(nota2)
			}enquanto( nota2 < 0 ou nota2 > 10)

			faca
			{
				escreva("Nota 3: ")
				leia(nota3)
			}enquanto( nota3 < 0 ou nota3 > 10)

			medAluno = (nota1 + nota2 + nota3) / 3

			se(medAluno < 6)
			{
				listaDeAlunos[i][7] = "Reprovado"
			}
			senao
			{
				listaDeAlunos[i][7] = "Aprovado"
			}
			
			listaDeAlunos[i][0] = nome
			listaDeAlunos[i][1] = mesNasc
			listaDeAlunos[i][2] = turma
			listaDeAlunos[i][3] = Tipos.real_para_cadeia(nota1)
			listaDeAlunos[i][4] = Tipos.real_para_cadeia(nota2)
			listaDeAlunos[i][5] = Tipos.real_para_cadeia(nota3)
			listaDeAlunos[i][6] = Tipos.real_para_cadeia(medAluno)
			
			escreva("Deseja parar? \n")
			escreva("Digite S - sim ou N - não: ")
			leia(parar)
	
			se(parar == 'S' ou parar == 's')
				pare
			}
		}		
	}

	funcao exibirMural(cadeia listaDeAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(listaDeAlunos)
		
		escreva("\nANIVERSARIANTES\n")
		escreva("\n===================\n")
		escreva("\nJANEIRO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{
				se(listaDeAlunos[i][1] == "janeiro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nFEVEREIRO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "fevereiro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nMARÇO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "março")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nABRIL")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "abril")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nMAIO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "maio")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nJUNHO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "junho")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nJULHO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "julho")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nAGOSTO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "agosto")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
			
		escreva("\nSETEMBRO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "setembro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nOUTUBRO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "outubro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nNOVEMBRO")
		escreva("\n-------------------\n")
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "novembro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
		
		escreva("\nDEZEMBRO")
		escreva("\n-------------------\n")		
		para(inteiro i=0; i<linhas; i++)
			{				
				se(listaDeAlunos[i][1] == "dezembro")
				{
					escreva(listaDeAlunos[i][0] + "\n")
				}
			}
		escreva("\n===================\n")
	}
	
	funcao exibirAlunos(cadeia listaDeAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(listaDeAlunos)
		para(inteiro i=0; i<linhas; i++)
		{
			se(listaDeAlunos[i][0] != "")
			{
				escreva("\n----------------------------\n")
				escreva("\nNome: " + listaDeAlunos[i][0])
				escreva("\nMês de Nascimento: " + listaDeAlunos[i][1])
				escreva("\nTurma: " + listaDeAlunos[i][2])
				escreva("\nNota 1: " + listaDeAlunos[i][3])
				escreva("\nNota 2: " + listaDeAlunos[i][4])
				escreva("\nNota 3: " + listaDeAlunos[i][5])
				escreva("\nMédia do Aluno: " + listaDeAlunos[i][6])
				escreva("\nSituação do Aluno: " + listaDeAlunos[i][7])
				escreva("\n----------------------------\n")
			}
		}
	}
		
	funcao situacaoTurma(real mediaTurmaX)
	{
		se(mediaTurmaX < 6)
		{
			escreva(" - Ruim")
		}
		senao se(mediaTurmaX >= 6 e mediaTurmaX < 8)
		{
			escreva(" - Médio")
		}
		senao se(mediaTurmaX >=8 e mediaTurmaX < 10)
		{
			escreva(" - Bom")
		}
		senao
		{
			escreva(" - Excelente")
		}
	}
	
     funcao real calcularMediaTurma(cadeia listaDeAlunos[][])
	{
		inteiro linhas = Util.numero_linhas(listaDeAlunos)
		real soma = 0.0
		inteiro qtdAluno = 0
		cadeia turma
		real media = -1.0
		
		escreva("Qual nome da turma: ")
		leia(turma)
		
		para(inteiro i=0; i<linhas; i++)
		{
			se(listaDeAlunos[i][2] == turma )
			{
				soma += Tipos.cadeia_para_real(listaDeAlunos[i][3]) + Tipos.cadeia_para_real(listaDeAlunos[i][4]) + Tipos.cadeia_para_real(listaDeAlunos[i][5])
				qtdAluno++
				media = soma / (qtdAluno * 3)			 			 					
			}																	
		}
		 retorne media
     }

	funcao cadeia buscarAluno(cadeia listaDeAlunos[][])
	{		
		inteiro linhas = Util.numero_linhas(listaDeAlunos)
		limpa()
		cadeia aluno
		
		escreva("Qual nome do aluno: ")
		leia(aluno)
		limpa()
		para(inteiro i=0; i<linhas; i++)
		{
			se(listaDeAlunos[i][0] == aluno)
			{
				retorne "SITUAÇÃO DO ALUNO: \n\nNome: " + listaDeAlunos[i][0] + "\nTurma: " + listaDeAlunos[i][2] + "\nNota 1: " + listaDeAlunos[i][3] + "\nNota 2: " + listaDeAlunos[i][4] + "\nNota 3: " + listaDeAlunos[i][5] + "\nMédia : " + listaDeAlunos[i][6] + "\nSituação do Aluno: " + listaDeAlunos[i][7] 
			}
		}
		retorne "Aluno não encontrado!"
	}
	
	funcao inicio()
	{
		const inteiro LIN = 10, COL = 8
		cadeia lista[LIN][COL]
		inteiro opcao
		logico fimPrograma = falso

		enquanto(nao fimPrograma)
		{
			faca
			{
				exibirMenu()
				leia(opcao)
			}enquanto(opcao < 1 ou opcao > 6)

			escolha(opcao)
			{
				caso 1: //1- Cadastro de Alunos
					cadastrarAluno(lista)
					Util.aguarde(1000)
				pare
				caso 2: //2- Média da turma
					limpa()
					real media = calcularMediaTurma(lista)
					se(media == -1)
					{
						escreva("\nTurma não encontrada\n")
					}
					senao
					{
						limpa()
						escreva("MÉDIA DA TURMA: \n\nA média da turma é: " + media + " ")
						situacaoTurma(media)
					}
					Util.aguarde(5000)
				pare
				caso 3: //3- Situação do Aluno
					limpa()
					cadeia mensagem = buscarAluno(lista)	
					escreva(mensagem)
					Util.aguarde(5000)				
				pare
				caso 4: //4- Exibição de Alunos
					limpa()
					escreva("\nLISTA DE ALUNOS:")
					exibirAlunos(lista)
					Util.aguarde(10000)
				pare
				caso 5: //5- Mural de Aniversariantes:
					limpa()
					exibirMural(lista)
					Util.aguarde(17000)
				pare
				caso 6: //6- Sair
					limpa()
					fimPrograma = verdadeiro
				pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6411; 
 * @DOBRAMENTO-CODIGO = [5, 12, 24, 97, 236, 257, 277, 300];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */