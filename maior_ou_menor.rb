def da_boas_vindas
  puts "Bem Vindo ao jodo da advinhaçao"
  puts "Qual seu nome\n"
  nome=gets.strip
  puts="\n"
  puts "Começaremos o jogo para você, #{nome}"  
end

def sorteia_numero_secreto
puts "Escolhendo um número secreto entre 0 e 200..."
sorteado=175 
puts "Escolhido...que tal adivinhar hoje nosso número secreto? "
puts "\n"
sorteado
end

def pede_um_numero(chutes,tentativa,limite_de_tentativas)
  puts "\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts "Entre com o número"
  chute = gets.strip
  puts "Sera que vc acertou?\n Você chutou #{chute}"
  chute.to_i 
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chuted
  if acertou
    puts "Acertou!"
    return true
  end
  maior = numero_secreto > chute
  if maior
    puts "o número secreto é maior"
  else
    puts "o número secreto é menor"
  end
  false
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []
for tentativa in 1..limite_de_tentativas
  chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
  chutes << chute

  if verifica_se_acertou(numero_secreto,chute)
     break 
  end

end
