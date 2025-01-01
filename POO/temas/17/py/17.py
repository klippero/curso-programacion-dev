edadTuya = int(input("dime tu edad: "))
edadAmigo = int( input("dime la edad de tu amigo: "))

if edadTuya > edadAmigo:
    print( "Tienes más años más que tu amigo" )
elif edadTuya < edadAmigo:
    print( "Tu amigo tiene más años más que tú" )
else:
    print( "Tenéis la misma edad" )
