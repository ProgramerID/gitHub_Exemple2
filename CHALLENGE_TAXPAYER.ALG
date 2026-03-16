 funcao taxOverSalary(amount: real):real
 var
 salary: real
 inicio

       salary <- amount /12
       se salary < 3000 entao
          retorne 0
       senao
            se salary <= 5000 entao
               retorne amount * 0.10)
            senao
                 retorne amount * 0.20)
            fimse
       fimse
 fimfuncao
 
 
 funcao taxOverServices(amount: real):real
 var
 inicio
       se amount <> 0 entao
          retorne amount * 0.15
       senao
            retorne 0.00
       fimse
 fimfuncao
 
 
 funcao taxOverGC(amount : real): real
 var
 inicio
       se amount <> 0 entao
          retorne amount * 0.20
       senao
            retorne 0.00
       fimse
 fimfuncao
 
 
 funcao totalGrossTax(salary:real; services: real; gc: real):real
 var
 inicio
 

       retorne  taxOverSalary(salary) + taxOverServices(services) + taxOverGC(gc)

 fimfuncao
 

 funcao depression(salary:real;services:real;gc:real;medicalSpend:real;educationSpend:real):real
 var
    aux: real
 inicio
 
       aux <- medicalSpend + educationSpend
       se totalGrossTax(salary, services, gc) < aux entao
          retorne totalGrossTax(salary, services, gc) * 0.30
       senao
            retorne aux
       fimse
 fimfuncao
 
 procedimento showTaxDue(salary:real;services:real;gc:real;medicalSpend:real;educationSpend:real)
 var
    result : real
 inicio
 
       result <- totalGrossTax(salary,services,gc) - depression(salary,services,gc,medicalSpend,educationSpend)
       escreval("Tax Due: ", result:1:2)
 
 fimprocedimento
 

Algoritmo "Challenge_taxPayer"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/03/2026
Var
// Seção de Declarações das variáveis 

   annualSalary, annualServices, annualCG, medSpend, eduSpend: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

   escreval("Enter the datas of Tax Payer:")
   escreva("Annual income with salary: ")
   leia(annualSalary)
   escreva("Annual income with provision of services: ")
   leia(annualServices)
   escreva("Annual income with capital gain: ")
   leia(annualCG)
   escreva("Medical Spend: ")
   leia(medSpend)
   escreva("Education Spend: ")
   leia(eduSpend)
   escreval()

   escreval()
   escreval("REPORT:")
   escreval("Tax Over Salary: ",taxOverSalary(annualSalary):1:2)
   escreval("Tax Over Services: ",taxOverServices(annualServices):1:2)
   escreval("Tax Over Capital Gain: ",taxOverGC(annualCG):1:2)
   escreval("Total GrossTax: ",totalGrossTax(annualSalary, annualServices, annualCG):1:2)
   escreval("depression: ",depression(annualSalary,annualServices,annualCG, medSpend, eduSpend):1:2)
   showTaxDue(annualSalary,annualServices,annualCG, medSpend, eduSpend)
   
Fimalgoritmo
