# Função que calcula o digito verificador do CPF (podendo ser o 1º digito ou 2º)
# argumento é CPF com 9 ou 10 digitos para encontrar o próximo
def calcular_digito_verificador_CPF(CPF_digito_verificador_incompleto):
    peso_inicial = 10 if len(CPF_digito_verificador_incompleto) == 9 else 11
    
    soma_digitos = 0
    for numero_CPF, peso in zip( CPF_digito_verificador_incompleto, range(peso_inicial, 1, -1) ):
        soma_digitos += int(numero_CPF) * peso
    resto_digitos = soma_digitos % 11

    if (resto_digitos >= 2):
        digito_verificador = 11 - resto_digitos
    else:
        digito_verificador = 0

    return str(digito_verificador)


CPF_digitado = input("Digite seu CPF (somente números): ")
CPF_validado = CPF_digitado[0:9:1]

for i in range(2):
    CPF_validado += calcular_digito_verificador_CPF(CPF_validado)    

print(CPF_validado)