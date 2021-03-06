-- -*- coding: utf-8 -*-
document {
     Key => (symbol _*,Ideal),
     Headline => "get the list of generators of an ideal",
     Usage => "I_*",
     Inputs => {"I"},
     Outputs => {{"the list of generators of ", TT "I"}},
     EXAMPLE lines ///
     R = QQ[a..c]
     I = ideal (a,b,c);
     J = I^2
     J_*     
     ///
     }

document {
     Key => Ideal,
     Headline => "the class of all ideals",
     SeeAlso => "ideals",
     "For basic information about ideals in ", EM "Macaulay2", ", see ",
     TO "ideals", ".",
     PARA{},
     "Common ways to make an ideal:",
     UL {
	  TO "ideal",
	  TO "annihilator",
	  TO "content",
	  TO "fittingIdeal",
	  TO (kernel, RingMap),
	  TO minors,
	  TO pfaffians
  	  },
     "Common ways to get information about an ideal:",
     UL {
	  TO (generators, Ideal),
	  TO (symbol _*,Ideal),
	  TO (isSubset, Ideal, Ideal),
	  },
     "Common operations on ideals:",
     UL {
	  TO (symbol +,Ideal,Ideal),
	  TO (symbol *,Ideal,Ideal),
	  TO (symbol ==,Ideal,Ideal),
	  TO (symbol ==,Ideal,ZZ),
	  TO (symbol ^,Ideal,ZZ),
	  TO (trim, Ideal)
	  },
     "Gröbner bases, normal forms, free resolutions",
     UL {
	  TO gb,
	  TO leadTerm,
	  TO codim,
	  TO dim,
	  TO (symbol%,Matrix,Ideal),
	  TO resolution,
	  TO betti
	  },
     "Numeric information about homogeneous ideals",
     UL {
	  TO degree,
	  TO poincare,
	  TO hilbertFunction,
	  TO hilbertPolynomial,
	  TO hilbertSeries,
	  TO genera,
	  TO euler
	  },
     "Primary decomposition and components of an ideal",
     UL {
	  TO minimalPrimes,
	  TO radical,
	  TO associatedPrimes,
	  TO primaryDecomposition,
	  TO topComponents,
	  TO saturate,
	  TO quotient,
	  TO (symbol :,Ideal,Ideal),
	  TO intersect
	  },
     "Ideals from geometry",
     UL {
	  TO Fano,
	  TO Grassmannian,
	  TO monomialCurveIdeal,
	  TO singularLocus
	  },
     "Common ways to use an ideal:",
     UL {
	  TO (symbol /, Ring, Ideal),
	  },
     PARA{},
     "An ideal ", TT "I", " is an immutable object, so if you want to 
     cache information about it, put it in the hash table ", TT "I.cache", "."
     }
document {
     Key => {(symbol *,Ideal,Ideal),
	  (symbol *,Ideal,MonomialIdeal),
	  (symbol *,MonomialIdeal,Ideal)
	  },
     Headline => "product of ideals",
     Usage => "I * J",
     Inputs => { "I", "J" => {"in the same ring as ", TT "I"},
	  },
     Outputs => {
	  {"the product of the two ideals ", TT "I", " and ", TT "J", ""}
	  },
     EXAMPLE {
	  "R = QQ[t][a..d];",
	  "I = ideal(a,(t+1)*c) * ideal(a^2,b^2)"
	  },
     "The generators produced are not generally minimal.  Use ",
     TO (trim,Ideal), " or ", TO (mingens,Ideal), " to find a smaller
     generating set.",
     SeeAlso => {"ideals"}
     }
document {
     Key => {(symbol +,Ideal,Ideal),
	  (symbol +,Ideal,MonomialIdeal),
	  (symbol +,MonomialIdeal,Ideal)
	  },
     Headline => "sum of ideals",
     Usage => "I + J",
     Inputs => { "I", "J" => {"in the same ring as ", TT "I"}, },
     Outputs => {
	  {"the sum of the two ideals ", TT "I", " and ", TT "J", ""}
	  },
     EXAMPLE {
	  "R = QQ[t][a..d];",
	  "I = ideal(a,(t+1)*c) + ideal(a^2,b^2)"
	  },
     "The generators produced are not generally minimal.  Use ",
     TO (trim,Ideal), " or ", TO (mingens,Ideal), " to find a smaller
     generating set.",
     EXAMPLE {
	  "trim I"
	  },
     SeeAlso => {"ideals"}
     }
document {
     Key => {(symbol ^,Ideal,ZZ),
	  (symbol ^,MonomialIdeal,ZZ)
	  },
     Headline => "power",
     Usage => "I^n",
     Inputs => { "I", "n" => {"at least zero"}, },
     Outputs => { {"the ideal ", TT "I^n"} },
     EXAMPLE {
	  "R = QQ[a..d];",
	  "I = ideal(a^2, b^2-c*d);",
	  "I^3"
	  },
     "The generators produced are often not minimal.  Use ",
     TO (trim,Ideal), " or ", TO (mingens,Ideal), " to find a smaller
     generating set.",
     EXAMPLE {
	  "trim I^3"
	  },
     SeeAlso => {"ideals"}
     }

