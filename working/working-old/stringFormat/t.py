import math

print( "%d" % 17 )
print( "%s" % "Santi" )
print( "%f" % math.pi )

print( "|%8s|" % "Santi" )
print( "%2d" % 8 )
print( "%7.2f" % 23.54 )
print( "%.4f" % math.pi )

print( "|%-8s|" % "Santi" )

print( "|%7.2f|%7.2f|%-7s|" % (-8.52,84.46,"Santi") )
print( "|%+7.2f|%+7.2f|%-7s|" % (-8.52,84.46,"Santi") )




p = math.pi
print( f'{p:8.2f}')
print( "%8.2f" % p )