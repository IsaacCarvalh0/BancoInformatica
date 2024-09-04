programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    real saldo=0, saque=0, dep=0
    cadeia senha, extrato="", aaa = ""
    inteiro menu=99
    escreva("digite sua senha: ")
    leia(senha)
    limpa()
    enquanto(senha != "oi"){
      escreva("digite novamente: ")
      leia(senha)
      limpa()
    }
    enquanto(menu != 0){
      escreva("saldo: R$", saldo, "\n")
      escreva("1. deposito\n2. saque\n3. extrato\n0. sair\n")
      escreva("escolha: ")
      leia(menu)
      limpa()
      escolha(menu){
        caso 1:
          escreva("digite o valor do dep. max.R$5.000,00 : ")
          leia(dep)
          limpa()
          enquanto(dep > 5000){
            escreva("valor digitado excede o limite.\n")
            escreva("digite novamente: ")
            leia(dep)
            limpa()
          }
          saldo = saldo + dep
          se(dep != 0){
            extrato = extrato + ("deposito R$" + dep + "\n")
          }
          senao{
            extrato = extrato + ("deposito interferido.\n")
          }
          escreva("deposito feito com sucesso!")
          u.aguarde(3000)
          limpa()
        pare
        caso 2:
          escreva("digite o valor do saque. max. (", saldo, "): ")
          leia(saque)
          limpa()
          enquanto(saque > saldo){
            escreva("valor do saque excede o seu dinheiro.\n")
            escreva("digite novamente: ")
            leia(saque)
            limpa()
          }
          saldo = saldo - saque
          se(saque != 0){
            extrato = extrato + ("saque R$" + saque+ "\n")
          }
          senao{
            extrato = extrato + ("saque interferido.\n")
          }
          escreva("saque feito com sucesso!")
          u.aguarde(3000)
          limpa()
        pare
        caso 3:
          escreva(extrato)
          leia(aaa)
          limpa()
        pare
      }
    }
  }
}
