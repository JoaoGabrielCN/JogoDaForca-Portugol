programa
{

	/*
	 Nomes: Caíque André de Moraes Oliveira
	 	   João Gabriel Correia Neves
	 	   
	 Turma: Info 1-B
	 Data de entrega: 30/06/23
	 */
	inclua biblioteca Texto--> tx //inclui a biblioteca de texto para ser usada no codigo

	
	//declaração das variaveis e seus vetores que vão ser usadas
	inteiro tamanho, vidas = 6, acertos = 0
	cadeia palavra, word[100], tentativa, palavra_secreta[100], jog1, jog2, dica
	logico igual= falso, achou = falso

	
	funcao inicio()
	{	
		//pede os jogadores para inserir seus nomes
		escreva("Insira o nome do jogador 1: ")
		leia(jog1)

		escreva("Insira o nome do jogador 2: ")
		leia(jog2)

		limpa() //limpa assim que os usuarios digitarem seus nomes para ficar mais fluido
		
		escreva(jog1,", insira uma palavra: ") //pede o jogador 1 para digitar a palavra que vai ser usada e a salva na variavel
		leia(palavra)

		escreva("Agora escreva uma dica relacionada a essa palavra: ") //pede o primeiro jogador para inserir uma dica sobre a palavra escolhida dele
		leia(dica)//salva a dica

		tamanho = tx.numero_caracteres(palavra)	//ultiliza a biblioteca de texto para ver qual o números de caracteres tem na palavra e salva na variavel

		para(inteiro i = 0; i < tamanho; i++){

			word[i] = tx.extrair_subtexto(palavra, i, i+ 1)} //verifica se a letra digitada pelo 2 jogador tem na palavra digitada e a coloca se tiver
			
		
		limpa() //limpa tudo para que o jogador 2 não veja a palavra digitada pelo primeiro jogador

		para(inteiro i = 0; i < tamanho; i++){ //coloca toda a palavra digitada como _ , e vai revelando quando o jogador 2 for acertando a letra

			palavra_secreta[i] = "_ "
			escreva(palavra_secreta[i])}
		
	
		para(inteiro j= 0; vidas > 0 e acertos < tamanho; j++){ //escreve a dica fornecida no inicio pelo jogador 1, e pede para o jogador 2 digitar uma letra

			escreva("\n\nA dica é ", dica)
			escreva("\n\n", jog2,", escreva uma letra: ")
			
			
			leia(tentativa)
			achou = falso
			
		para (inteiro i = 0; i < tamanho; i++){
			
		
			se (word[i] == tentativa){ // caso o jogador 2 acerte a letra vai rodar essa função "se"
				
				limpa()
				
				palavra_secreta[i] = tentativa
				achou = verdadeiro
				acertos = acertos + 1

				}
			}
		
		
		se (achou == falso) //caso ele erre a letra vai rodar essa função "se", vai avisar que ele errou a letra e retirar uma vida e lhe informar quantas vidas restam
		{
			limpa()
			escreva ("Essa letra nao esta na palavra!\n\n")
			vidas = vidas -1		
					
		}
			escreva("Voce ainda tem ",vidas, " vidas.\n")
			para (inteiro a = 0; a < tamanho; a++){
					escreva(palavra_secreta[a])
					
		}
	

	}
		se(acertos == tamanho){ //verifica se o jogador acertou todas as letra e caso seja verdadeiro vai rodar esse "se" e lhe informar que venceu o jogo
			escreva("\nParabens ", jog2, " você adivinhou a palavra e ganhou!")
	}

		se(vidas==0){ // verifica se o números de vidas chegou a 0, caso tenho chegado vai rodar esse "se" e informar ao jogador 2 que ele perdeu e vai finalizar o jogo
			escreva("\nVoce perdeu! \nO ",jog1," ganhou!")
	}

	

}}

