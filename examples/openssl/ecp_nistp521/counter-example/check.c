#include <stdio.h>
#include <inttypes.h>
#include <crypto/ec/ecp_nistp521.c>
#include <openssl/bn.h>

void felem2bn(const felem fe_in, BIGNUM *bn_out);
void largefelem2bn(const largefelem lfe_in, BIGNUM *bn_out);
void print_uint128x(uint128_t n);
void test_felem_square(const felem in);
void test_felem_mul(const felem in1, const felem in2);
void test_felem_diff_128_64(largefelem in1, const felem in2);

# define WIDTH 16


int main() {

  // ///////////////////////////////////////////////////
  //
  //        test cases
  // 
  // ///////////////////////////////////////////////////  

  // felem_square: counter-example
  const felem felem_square_ce_in = {
    0x3fd9049d07fdc0ad, 0x3ece5f4000000000, 0x39c5349d6a623811,
    0x3bf48f8409415499, 0x3ffdac80c8300000, 0x3ff3f3de63be6baf,
    0x3fa3eff5c6db1743, 0x3dde8d0ddc21079f, 0x3e068b5ec961f8fc
  };
  
  // felem_square: passed input
  const felem felem_square_pass_in = {
    0x03d9049d07fdc0ad, 0x03ce5f4000000000, 0x03c5349d6a623811,
    0x03f48f8409415499, 0x03fdac80c8300000, 0x03f3f3de63be6baf,
    0x03a3eff5c6db1743, 0x03de8d0ddc21079f, 0x03068b5ec961f8fc
  };

  test_felem_square(felem_square_ce_in);
  test_felem_square(felem_square_pass_in);  

  // this set of counter-example and passed example also
  // applies to felem_mul
  test_felem_mul(felem_square_ce_in, felem_square_ce_in);
  test_felem_mul(felem_square_pass_in, felem_square_pass_in);

  /* ***************

  // felem_mul: counter-example
  const felem felem_mul_ce_in1 ={
    0x1b3e1fbef8001001, 0x7f242123e1c46fde, 0x7f10040641544b02,
    0x7fe1d322ad709e50, 0x7faf1f7800008008, 0x0000000000000000,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000
  };
  const felem felem_mul_ce_in2 = {
    0x0000000000000000, 0x7f9893c0f6a10cd6, 0x7fbff2c00f07ec56,
    0x7fa01f1d8ab5bb53, 0x75a2b33a238bce82, 0x3fc66780b6dab606,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000
  };

  // felem_mul: passed input
  const felem felem_mul_pass_in1 ={
    0x1b3e1fbef8001001, 0x3f242123e1c46fde, 0x3f10040641544b02,
    0x3fe1d322ad709e50, 0x3faf1f7800008008, 0x0000000000000000,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000
  };
  const felem felem_mul_pass_in2 = {
    0x0000000000000000, 0x3f9893c0f6a10cd6, 0x3fbff2c00f07ec56,
    0x3fa01f1d8ab5bb53, 0x35a2b33a238bce82, 0x3fc66780b6dab606,
    0x0000000000000000, 0x0000000000000000, 0x0000000000000000
  };

  test_felem_mul(felem_mul_ce_in1, felem_mul_ce_in2);
  test_felem_mul(felem_mul_pass_in1, felem_mul_pass_in2);

  *************** */

  // felem_diff_128_64: counter-example
  largefelem felem_diff_128_64_ce_in1 = {
    0,0,0,
    0,0,0,
    0,0,0
  };
  const felem felem_diff_128_64_ce_in2 = {
    0x4000000000012270, 0x1000000000000000, 0x0010000000000000,
    0x0400000000000000, 0x0800000000000000, 0x0020000000000000,
    0x0000000040000000, 0x0002000000000000, 0x0000000400000000
  };

  // felem_diff_128_64: passed input
  largefelem felem_diff_128_64_pass_in1 = {
    0,0,0,
    0,0,0,
    0,0,0
  };
  const felem felem_diff_128_64_pass_in2 = {
    0x3000000000012270, 0x1000000000000000, 0x0010000000000000,
    0x0400000000000000, 0x0800000000000000, 0x0020000000000000,
    0x0000000040000000, 0x0002000000000000, 0x0000000400000000
  };
  
  test_felem_diff_128_64(felem_diff_128_64_ce_in1, felem_diff_128_64_ce_in2);
  test_felem_diff_128_64(felem_diff_128_64_pass_in1, felem_diff_128_64_pass_in2);  


  return 0;
}

void test_felem_square(const felem fe_in) {

  BN_CTX *ctx = BN_CTX_new();  

  // p = 2^521 - 1
  BIGNUM *bn_p = BN_new();
  BN_one(bn_p);
  BN_lshift(bn_p, bn_p, 521);
  BN_sub(bn_p, bn_p, BN_value_one());
  //printf("%s\n", BN_bn2hex(bn_p));

  printf("==== Input of *felem_square* ====\n");
  printf("==== (in form of felem)      ====\n");
  printf("felem_square_in = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t%016"PRIx64",\n", fe_in[i]);
  }
  printf("}\n\n");


  // ///////////////////////////////////////////////////
  //
  //        compute with felem_square
  // 
  // ///////////////////////////////////////////////////  

  largefelem lfe_felem_square_out;  
  felem_square(lfe_felem_square_out, fe_in);

  printf("==== Output of *felem_square* ====\n");
  printf("==== (in form of largefelem)  ====\n");
  printf("felem_square_out = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t");
    print_uint128x(lfe_felem_square_out[i]);
    printf(",\n");
  }
  printf("}\n\n");
  

  // transformed into BIGNUM
  BIGNUM *bn_felem_square_out = BN_new();
  largefelem2bn(lfe_felem_square_out, bn_felem_square_out);

  printf("==== Output of *felem_square* ====\n");
  printf("==== (in form of BIGNUM)      ====\n");
  printf("felem_square_out = \n%s\n\n", BN_bn2hex(bn_felem_square_out));  


  // perform a full reduction
  BIGNUM *bn_felem_square_out_reduce = BN_new();
  BN_nnmod(bn_felem_square_out_reduce, bn_felem_square_out, bn_p, ctx);

  printf("==== Output of *felem_square* after full reduction ====\n");
  printf("==== (in form of BIGNUM)                           ====\n");
  printf("felem_square_out = \n%s\n\n", BN_bn2hex(bn_felem_square_out_reduce));  
  
  

  // ///////////////////////////////////////////////////
  //
  //        compute with BN_mod_sqr
  // 
  // ///////////////////////////////////////////////////  
  
  BIGNUM *bn_in = BN_new();
  felem2bn(fe_in, bn_in);

  BIGNUM *bn_BN_mod_sqr_out = BN_new();  
  BN_mod_sqr(bn_BN_mod_sqr_out, bn_in, bn_p, ctx);

  printf("==== Output of *BN_mod_sqr* ====\n");
  printf("==== (in form of BIGNUM)    ====\n");
  printf("BN_mod_sqr_out = \n%s\n\n", BN_bn2hex(bn_BN_mod_sqr_out));  
  


  // ///////////////////////////////////////////////////
  //
  //        compare two outputs
  // 
  // ///////////////////////////////////////////////////  

  if (BN_cmp(bn_felem_square_out_reduce, bn_BN_mod_sqr_out) == 0) {
    printf("***** Two outputs are the SAME. *****\n\n");
  } else {
    printf("***** Two outputs are DIFFERENT!!! *****\n\n");
  }

  
  BN_free(bn_p);
  BN_free(bn_felem_square_out);
  BN_free(bn_felem_square_out_reduce);
  BN_free(bn_in);
  BN_free(bn_BN_mod_sqr_out);  
  BN_CTX_free(ctx);  
}


void test_felem_mul(const felem fe_in1, const felem fe_in2) {

  BN_CTX *ctx = BN_CTX_new();  

  // p = 2^521 - 1
  BIGNUM *bn_p = BN_new();
  BN_one(bn_p);
  BN_lshift(bn_p, bn_p, 521);
  BN_sub(bn_p, bn_p, BN_value_one());
  //printf("%s\n", BN_bn2hex(bn_p));

  printf("==== Input of *felem_mul* ====\n");
  printf("==== (in form of felem)   ====\n");
  printf("felem_mul_in1 = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t%016"PRIx64",\n", fe_in1[i]);
  }
  printf("}\n");
  printf("felem_mul_in2 = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t%016"PRIx64",\n", fe_in2[i]);
  }
  printf("}\n\n");  



  // ///////////////////////////////////////////////////
  //
  //        compute with felem_mul
  // 
  // ///////////////////////////////////////////////////  

  largefelem lfe_felem_mul_out;  
  felem_mul(lfe_felem_mul_out, fe_in1, fe_in2);

  printf("==== Output of *felem_mul*   ====\n");
  printf("==== (in form of largefelem) ====\n");
  printf("felem_mul_out = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t");
    print_uint128x(lfe_felem_mul_out[i]);
    printf(",\n");
  }
  printf("}\n\n");
  

  // transformed into BIGNUM
  BIGNUM *bn_felem_mul_out = BN_new();
  largefelem2bn(lfe_felem_mul_out, bn_felem_mul_out);

  printf("==== Output of *felem_mul* ====\n");
  printf("==== (in form of BIGNUM)   ====\n");
  printf("felem_mul_out = \n%s\n\n", BN_bn2hex(bn_felem_mul_out));  


  // perform a full reduction
  BIGNUM *bn_felem_mul_out_reduce = BN_new();
  BN_nnmod(bn_felem_mul_out_reduce, bn_felem_mul_out, bn_p, ctx);

  printf("==== Output of *felem_mul* after full reduction ====\n");
  printf("==== (in form of BIGNUM)                        ====\n");
  printf("felem_mul_out = \n%s\n\n", BN_bn2hex(bn_felem_mul_out_reduce));  
  
  

  // ///////////////////////////////////////////////////
  //
  //        compute with BN_mod_mul
  // 
  // ///////////////////////////////////////////////////  
  
  BIGNUM *bn_in1 = BN_new();
  BIGNUM *bn_in2 = BN_new();
  felem2bn(fe_in1, bn_in1);
  felem2bn(fe_in2, bn_in2);  

  BIGNUM *bn_BN_mod_mul_out = BN_new();  
  BN_mod_mul(bn_BN_mod_mul_out, bn_in1, bn_in2, bn_p, ctx);

  printf("==== Output of *BN_mod_mul* ====\n");
  printf("==== (in form of BIGNUM)    ====\n");
  printf("BN_mod_mul_out = \n%s\n\n", BN_bn2hex(bn_BN_mod_mul_out));  
  


  // ///////////////////////////////////////////////////
  //
  //        compare two outputs
  // 
  // ///////////////////////////////////////////////////  

  if (BN_cmp(bn_felem_mul_out_reduce, bn_BN_mod_mul_out) == 0) {
    printf("***** Two outputs are the SAME. *****\n\n");
  } else {
    printf("***** Two outputs are DIFFERENT!!! *****\n\n");
  }

  
  BN_free(bn_p);
  BN_free(bn_felem_mul_out);
  BN_free(bn_felem_mul_out_reduce);
  BN_free(bn_in1);
  BN_free(bn_in2);  
  BN_free(bn_BN_mod_mul_out);  
  BN_CTX_free(ctx);  
}


void test_felem_diff_128_64(largefelem lfe_in1, const felem fe_in2) {

  BN_CTX *ctx = BN_CTX_new();  

  // p = 2^521 - 1
  BIGNUM *bn_p = BN_new();
  BN_one(bn_p);
  BN_lshift(bn_p, bn_p, 521);
  BN_sub(bn_p, bn_p, BN_value_one());
  //printf("%s\n", BN_bn2hex(bn_p));

  printf("==== Input of *felem_diff_128_64* ====\n");
  printf("==== (in form of (large)felem)    ====\n");
  printf("felem_diff_128_64_in1 = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t");
    print_uint128x(lfe_in1[i]);
    printf(",\n");
  }
  printf("}\n");
  printf("felem_diff_128_64_in2 = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t%016"PRIx64",\n", fe_in2[i]);
  }
  printf("}\n\n");  



  // ///////////////////////////////////////////////////
  //
  //        compute with felem_diff_128_64
  // 
  // ///////////////////////////////////////////////////  


  // store in1
  BIGNUM *bn_in1 = BN_new();
  largefelem2bn(lfe_in1, bn_in1);
  
  felem_diff_128_64(lfe_in1, fe_in2);

  printf("==== Output of *felem_diff_128_64* ====\n");
  printf("==== (in form of largefelem)       ====\n");
  printf("felem_diff_128_64_out = {\n");
  for (int i = 0; i < 9; i++) {
    printf("\t");
    print_uint128x(lfe_in1[i]);
    printf(",\n");
  }
  printf("}\n\n");
  

  // transformed into BIGNUM
  BIGNUM *bn_felem_diff_128_64_out = BN_new();
  largefelem2bn(lfe_in1, bn_felem_diff_128_64_out);

  printf("==== Output of *felem_diff_128_64* ====\n");
  printf("==== (in form of BIGNUM)           ====\n");
  printf("felem_diff_128_64_out = \n%s\n\n", BN_bn2hex(bn_felem_diff_128_64_out));  


  // perform a full reduction
  BIGNUM *bn_felem_diff_128_64_out_reduce = BN_new();
  BN_nnmod(bn_felem_diff_128_64_out_reduce, bn_felem_diff_128_64_out, bn_p, ctx);

  printf("==== Output of *felem_diff_128_64* after full reduction ====\n");
  printf("==== (in form of BIGNUM)                                ====\n");
  printf("felem_diff_128_64_out = \n%s\n\n", BN_bn2hex(bn_felem_diff_128_64_out_reduce));  
  
  

  // ///////////////////////////////////////////////////
  //
  //        compute with BN_mod_sub
  // 
  // ///////////////////////////////////////////////////  
  
  BIGNUM *bn_in2 = BN_new();
  felem2bn(fe_in2, bn_in2);  

  BIGNUM *bn_BN_mod_sub_out = BN_new();  
  BN_mod_sub(bn_BN_mod_sub_out, bn_in1, bn_in2, bn_p, ctx);

  printf("==== Output of *BN_mod_sub* ====\n");
  printf("==== (in form of BIGNUM)    ====\n");
  printf("BN_mod_sub_out = \n%s\n\n", BN_bn2hex(bn_BN_mod_sub_out));  
  


  // ///////////////////////////////////////////////////
  //
  //        compare two outputs
  // 
  // ///////////////////////////////////////////////////  

  if (BN_cmp(bn_felem_diff_128_64_out_reduce, bn_BN_mod_sub_out) == 0) {
    printf("***** Two outputs are the SAME. *****\n\n");
  } else {
    printf("***** Two outputs are DIFFERENT!!! *****\n\n");
  }

  
  BN_free(bn_p);
  BN_free(bn_felem_diff_128_64_out);
  BN_free(bn_felem_diff_128_64_out_reduce);
  BN_free(bn_in1);
  BN_free(bn_in2);  
  BN_free(bn_BN_mod_sub_out);  
  BN_CTX_free(ctx);  
}


// convert an felem fe_in into a BIGNUM bn_out
void felem2bn(const felem fe_in, BIGNUM *bn_out) {
  BN_CTX *ctx = BN_CTX_new();
  
  BIGNUM *bn_base = BN_new();
  BN_one(bn_base);         // bn_base = 1

  char str_tmp[WIDTH + 1];
  BIGNUM *bn_limb = BN_new();
  BIGNUM *bn_tmp = BN_new();

  BN_zero(bn_out);         // bn_out = 0

  for (int i = 0; i < 9; i++) {
    sprintf(str_tmp, "%016"PRIx64, fe_in[i]);
    BN_hex2bn(&bn_limb, str_tmp);

    BN_mul(bn_tmp, bn_limb, bn_base, ctx);  // bn_tmp = bn_limb * bn_base
    BN_add(bn_out, bn_out, bn_tmp);         // bn_out += bn_tmp

    BN_lshift(bn_base, bn_base, 58);        // bn_base = bn_base * 2^58
  }
  
  BN_free(bn_base);
  BN_free(bn_limb);
  BN_free(bn_tmp);

  BN_CTX_free(ctx);
}


// convert a largefelem lfe_in into a BIGNUM bn_out
void largefelem2bn(const largefelem lfe_in, BIGNUM *bn_out) {
  BN_CTX *ctx = BN_CTX_new();
  
  BIGNUM *bn_base = BN_new();
  BN_one(bn_base);         // bn_base = 1

  char str_tmp[2 * WIDTH + 1];
  BIGNUM *bn_limb = BN_new();
  BIGNUM *bn_tmp = BN_new();

  BN_zero(bn_out);         // bn_out = 0

  for (int i = 0; i < 9; i++) {
    sprintf(str_tmp, "%016"PRIx64"%016"PRIx64,
	    (uint64_t)(lfe_in[i] >> 64), (uint64_t)(lfe_in[i]));
    BN_hex2bn(&bn_limb, str_tmp);

    BN_mul(bn_tmp, bn_limb, bn_base, ctx);  // bn_tmp = bn_limb * bn_base
    BN_add(bn_out, bn_out, bn_tmp);         // bn_out += bn_tmp

    BN_lshift(bn_base, bn_base, 58);        // bn_base = bn_base * 2^58
  }
  
  BN_free(bn_base);
  BN_free(bn_limb);
  BN_free(bn_tmp);

  BN_CTX_free(ctx);
}


// print a 128-bit unsigned int in hex
void print_uint128x(uint128_t n)
{
  printf("%016"PRIx64"%016"PRIx64, (uint64_t)(n>>64), (uint64_t)n);
}
