// Copyright 2008 by Michael Stillman

#ifndef _rand_h_
#define _rand_h

#include "engine-includes.hpp"

#if defined(__cplusplus)
extern "C" {
#endif

  void rawRandomInitialize();

  void rawSetRandomSeed(gmp_ZZ newseed);

  void rawSetRandomMax(gmp_ZZ);

  int32_t rawRandomInt(int32_t max);
  /* generate a random number in the range 0..max-1 */

  gmp_ZZ rawRandomInteger(gmp_ZZ maxN);
  /* if height is the null pointer, use the default height */

  gmp_QQ rawRandomQQ(gmp_ZZ height);
  /* returns random a/b, where 1 <= b <= height, 1 <= a <= height */
  /* if height is the null pointer, use the default height */

  gmp_RR rawRandomRR(unsigned long prec);
  /* returns a uniformly distributed random real with the given precision, in range [0.0,1.0] */

  void rawRandomMpfr(mpfr_t result, unsigned long precision);

  gmp_CC rawRandomCC(unsigned long prec);

#if defined(__cplusplus)
}
#endif

#endif

// Local Variables:
// compile-command: "make -C $M2BUILDDIR/Macaulay2/e "
// indent-tabs-mode: nil
// End:
