def m(*pa, **kwa):
    print( f"Positional arguments: {pa}" )
    print( f"Keyword arguments: {kwa}" )

m(1, 2, 3, a= 'alpha', b= 'beta')
