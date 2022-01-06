#!/bin/awk -f

BEGIN { 
	proof=0
}

/begin{proof}/ || /begin{prova}/ { 
	proof++
}

{
	if(!proof)
		print $0
}

/end{proof}/ || /end{prova}/ {
	proof--
}
