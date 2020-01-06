; ModuleID = 'crypto/ec/ecp_nistp256.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type opaque
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8* }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void* }
%struct.stack_st_void = type opaque
%struct.nistp256_pre_comp_st = type { [2 x [16 x [3 x [4 x i64]]]], i32, i8* }

@EC_GFp_nistp256_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ec_GFp_nistp256_group_init, void (%struct.ec_group_st*)* @ec_GFp_simple_group_finish, void (%struct.ec_group_st*)* @ec_GFp_simple_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ec_GFp_nist_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp256_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_set_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_get_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp256_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* @ec_GFp_nistp256_points_mul, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_nistp256_precompute_mult, i32 (%struct.ec_group_st*)* @ec_GFp_nistp256_have_precompute_mult, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i64 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ecdh_simple_compute_key, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"crypto/ec/ecp_nistp256.c\00", align 1
@nistp256_curve_params = internal constant [5 x [32 x i8]] [[32 x i8] c"\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [32 x i8] c"\FF\FF\FF\FF\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC", [32 x i8] c"Z\C65\D8\AA:\93\E7\B3\EB\BDUv\98\86\BCe\1D\06\B0\CCS\B0\F6;\CE<>'\D2`K", [32 x i8] c"k\17\D1\F2\E1,BG\F8\BC\E6\E5c\A4@\F2w\03}\81-\EB3\A0\F4\A19E\D8\98\C2\96", [32 x i8] c"O\E3B\E2\FE\1A\7F\9B\8E\E7\EBJ|\0F\9E\16+\CE3Wk1^\CE\CB\B6@h7\BFQ\F5"], align 16
@gmul = internal constant [2 x [16 x [3 x [4 x i64]]]] [[16 x [3 x [4 x i64]]] [[3 x [4 x i64]] zeroinitializer, [3 x [4 x i64]] [[4 x i64] [i64 -819310685055303018, i64 8575836109218198432, i64 -523289583788211982, i64 7716867327612699207], [4 x i64] [i64 -3767753221892779531, i64 3156516839386865358, i64 -8149286295562117610, i64 5756518291402817435], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -8005327882080167069, i64 2974974633094487934, i64 -8893948259153861154, i64 1128189898177751717], [4 x i64] [i64 -2012787613663613209, i64 3796998824736490229, i64 8019455993423272075, i64 -4614981353730234355], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -7838201919314488657, i64 -1626757152771804678, i64 -5595791949754783863, i64 3461662536726114927], [4 x i64] [i64 -6173130442334460000, i64 6607324557975488165, i64 9159718173381901423, i64 8262636234751034948], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 6325393404965010821, i64 -273031286785316157, i64 -317451179560372626, i64 4935227880232410727], [4 x i64] [i64 900213915829558066, i64 4410321002173228288, i64 -2220664301993414665, i64 3262899348601647598], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 1410924739154491007, i64 -1189023783784410697, i64 -2466276548762796960, i64 -1183011622250319105], [4 x i64] [i64 1828520442025400488, i64 2528836098827360064, i64 -4472470224063684196, i64 6998206532957187227], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -3827301492497845060, i64 2969806602452450358, i64 9073174912575879359, i64 6126693716495300056], [4 x i64] [i64 4971941098638972492, i64 -6938967894376121375, i64 791015059971985637, i64 1545126667594020945], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -1977419985569653247, i64 8992990158826594086, i64 -6707842797392739439, i64 -1486901160738471446], [4 x i64] [i64 -3834507346368121735, i64 -8794917652192250299, i64 689304323628231918, i64 -1513927542394011269], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 7850354671997102270, i64 -7619081691830240950, i64 2825726755471450053, i64 -6425626802671807882], [4 x i64] [i64 -956249438402644492, i64 -9058267119685991013, i64 7401871309252586719, i64 7444314345419016214], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 3311425576568130110, i64 8421783014622864747, i64 3568363273336651483, i64 5653880613779398061], [4 x i64] [i64 -6574303941521785936, i64 -316692955919211867, i64 2215777003961086593, i64 4808032968947992163], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 7996512021131061433, i64 -3316726880412049103, i64 9213270411358356600, i64 8685067594097287245], [4 x i64] [i64 -7177971368579769994, i64 7696184534049525071, i64 -2426573594706272785, i64 -5275052867798777055], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 9194414004818818419, i64 6594076190914360470, i64 6439111866792803502, i64 903178766089130631], [4 x i64] [i64 4204039210694913192, i64 8971594821414511859, i64 1788410310064137898, i64 -2495593822746042938], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -1627354195349558004, i64 4873073520113514799, i64 -1161748233492477453, i64 7562463719493563494], [4 x i64] [i64 -3603416421415891638, i64 7389276838502450726, i64 6939722928163815411, i64 3583110508470077984], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -3212395252738937217, i64 944084751294372904, i64 7366871684117878688, i64 4634977297227980217], [4 x i64] [i64 2547392258115446251, i64 -1791039323068445605, i64 -8778669347295523640, i64 -85764855181542303], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 8373436425878949804, i64 -5773794215328307292, i64 1311113366226075514, i64 2224139274171900954], [4 x i64] [i64 -8097279518613178300, i64 3954278663023761687, i64 884381536816411552, i64 4832447639533305084], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -7631994908670330651, i64 7399658494733087819, i64 741483134296471098, i64 -5436365143422819812], [4 x i64] [i64 498686754927156013, i64 -4610309410349445224, i64 7211137999908042344, i64 -378279002780123733], [4 x i64] [i64 1, i64 0, i64 0, i64 0]]], [16 x [3 x [4 x i64]]] [[3 x [4 x i64]] zeroinitializer, [3 x [4 x i64]] [[4 x i64] [i64 4204847071378430275, i64 1925598036946706358, i64 2406447439032381914, i64 9215327188090531721], [4 x i64] [i64 -3094794088439045887, i64 8409299702805885458, i64 -6986785048739666191, i64 -1830761248447908316], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -6320053062818717298, i64 -1610844249957727935, i64 6307303622281718018, i64 5357964581017122726], [4 x i64] [i64 858738897768626240, i64 7092519962948038045, i64 -4312754113296040640, i64 -1507784360227468815], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -433773790512270719, i64 6796710378924666044, i64 -4376770434300524457, i64 540915916971057674], [4 x i64] [i64 6522131241343737728, i64 -8577089071115270685, i64 -7515767467141929932, i64 7569669774902629779], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -5842919835130384598, i64 -7040193262291913670, i64 -764998459777936602, i64 -8479328848578136553], [4 x i64] [i64 -4181134117868366665, i64 -3610422874364676503, i64 4026262154848670399, i64 312367424096734167], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 867627015970731481, i64 -458030832185129916, i64 5787311655235732089, i64 484940130495201910], [4 x i64] [i64 -3984367553714005303, i64 -2396607369839573233, i64 4791065911985892208, i64 6577346714434056586], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 8961105821002642442, i64 5572184639073054523, i64 3001457500238366168, i64 4479258976280561928], [4 x i64] [i64 1453864872937502800, i64 -5974230770093664384, i64 2239712233336787437, i64 2565803748450573950], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 8702104923482042922, i64 3485186220776451982, i64 -2609071437058265388, i64 -9074949128484081673], [4 x i64] [i64 7837746206991051732, i64 8484321636022914244, i64 1965851040684971219, i64 1442285393364518380], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 7669699507266117383, i64 -182971954745611304, i64 -1487587662492561410, i64 7563435295795044334], [4 x i64] [i64 -8014314371365657003, i64 -3507578625537818753, i64 -303988241833111512, i64 -3755440536968491802], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -1614312960860691263, i64 -251375796863720844, i64 2526363943779232039, i64 -3408387858065391351], [4 x i64] [i64 4829457343136483686, i64 1204775539773815621, i64 9057411091819482746, i64 -7560319457235101211], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 5464756572288098249, i64 6337288834372384886, i64 -4407392751013591417, i64 -7631894925096359238], [4 x i64] [i64 5303406157379959390, i64 7614207622125570852, i64 3238635979046982428, i64 8848341461748899396], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 2688230699866182848, i64 -756872393402980261, i64 -6481374688840406294, i64 2660390208594493275], [4 x i64] [i64 -2027098347023999510, i64 -76680757953008817, i64 8372514931683904589, i64 7636013446400604620], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -1232777705105885515, i64 9137858211030508120, i64 -5466576204428507884, i64 -1936736421692661497], [4 x i64] [i64 -6747573736673692611, i64 -8311073231578851250, i64 -6471786242089510394, i64 2031292942051382151], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -7884153769852156839, i64 -5764246319699670642, i64 -4250105610839713752, i64 2357770240294970627], [4 x i64] [i64 3486656228478141047, i64 2005572102683722461, i64 941725040706691140, i64 -736626295146318146], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -8316936342867698159, i64 4068663205997555039, i64 -6605439271308383658, i64 2222475534487523513], [4 x i64] [i64 -6845161203817990007, i64 424693911077573444, i64 5959705901008562724, i64 4191448208365790586], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 -1004370131262045123, i64 -923198282311837086, i64 -253007947967919045, i64 1584956206744459766], [4 x i64] [i64 5773195294502653146, i64 4751157856429321220, i64 6160255002369724667, i64 5383409808306421633], [4 x i64] [i64 1, i64 0, i64 0, i64 0]]]], align 16

; Function Attrs: nounwind uwtable
define void @felem_mul(i128* nocapture %out, i128* nocapture readonly %in1, i128* nocapture readonly %in2) #0 {
entry:
  %small1 = alloca [4 x i64], align 16
  %small2 = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %small1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = bitcast [4 x i64]* %small2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds i128, i128* %in1, i64 3
  %2 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %2, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %in1, i64 2
  %3 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %3, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %3, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %4 = load i128, i128* %in1, align 16, !tbaa !2
  %add16.i = add i128 %4, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %in1, i64 1
  %5 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %5, 1298074214633706907132628377272319
  %shr22.i = lshr i128 %add8.i, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i, 18446744073709551615
  %sub.i = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %add50.i = add i128 %add16.i, %conv48.i
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %sub54.i = sub i128 %add19.i, %shl52.i
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %conv86.i = trunc i128 %sub70.i to i64
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %conv96.i = trunc i128 %add84.i to i64
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv106.i = trunc i128 %add94.i to i64
  store i64 %conv86.i, i64* %arraydecay, align 16, !tbaa !6
  %arrayidx114.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 1
  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !6
  %arrayidx117.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 2
  store i64 %conv106.i, i64* %arrayidx117.i, align 16, !tbaa !6
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds [4 x i64], [4 x i64]* %small1, i64 0, i64 3
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6
  %arraydecay1 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 0
  %arrayidx.i.4 = getelementptr inbounds i128, i128* %in2, i64 3
  %6 = load i128, i128* %arrayidx.i.4, align 16, !tbaa !2
  %add.i.5 = add i128 %6, 18446744069414584320
  %arrayidx6.i.6 = getelementptr inbounds i128, i128* %in2, i64 2
  %7 = load i128, i128* %arrayidx6.i.6, align 16, !tbaa !2
  %shr.i.7 = lshr i128 %7, 64
  %add8.i.8 = add i128 %add.i.5, %shr.i.7
  %conv12.i.9 = and i128 %7, 18446744073709551615
  %add13.i.10 = add nuw nsw i128 %conv12.i.9, 18446673704965373952
  %8 = load i128, i128* %in2, align 16, !tbaa !2
  %add16.i.11 = add i128 %8, 18446744073709551615
  %arrayidx18.i.12 = getelementptr inbounds i128, i128* %in2, i64 1
  %9 = load i128, i128* %arrayidx18.i.12, align 16, !tbaa !2
  %add19.i.13 = add i128 %9, 1298074214633706907132628377272319
  %shr22.i.14 = lshr i128 %add8.i.8, 64
  %conv23.i.15 = trunc i128 %shr22.i.14 to i64
  %conv26.i.16 = and i128 %add8.i.8, 18446744073709551615
  %sub.i.17 = sub nsw i128 %conv26.i.16, %shr22.i.14
  %shl.i.18 = shl nuw nsw i128 %shr22.i.14, 32
  %add32.i.19 = add nsw i128 %sub.i.17, %shl.i.18
  %shr34.i.20 = lshr i128 %add32.i.19, 64
  %conv35.i.21 = trunc i128 %shr34.i.20 to i64
  %add36.i.22 = add i64 %conv35.i.21, %conv23.i.15
  %conv39.i.23 = and i128 %add32.i.19, 18446744073709551615
  %sub43.i.24 = sub nsw i128 %conv39.i.23, %shr34.i.20
  %shl45.i.25 = shl nuw nsw i128 %shr34.i.20, 32
  %add47.i.26 = add nsw i128 %sub43.i.24, %shl45.i.25
  %conv48.i.27 = zext i64 %add36.i.22 to i128
  %add50.i.28 = add i128 %add16.i.11, %conv48.i.27
  %shl52.i.29 = shl nuw nsw i128 %conv48.i.27, 32
  %sub54.i.30 = sub i128 %add19.i.13, %shl52.i.29
  %shr56.i.31 = lshr i128 %add47.i.26, 64
  %conv57.i.32 = trunc i128 %shr56.i.31 to i64
  %sub58.i.33 = sub i64 0, %conv57.i.32
  %conv60.i.34 = trunc i128 %add47.i.26 to i64
  %and.i.35 = and i64 %conv60.i.34, 9223372036854775807
  %neg.i.36 = sub nsw i64 9223372032559808512, %and.i.35
  %sub62177.i.37 = and i64 %neg.i.36, %conv60.i.34
  %and66.i.38 = ashr i64 %sub62177.i.37, 63
  %or.i.39 = or i64 %and66.i.38, %sub58.i.33
  %conv68.i.40 = zext i64 %or.i.39 to i128
  %sub70.i.41 = sub i128 %add50.i.28, %conv68.i.40
  %and71.i.42 = and i64 %or.i.39, 4294967295
  %conv72.i.43 = zext i64 %and71.i.42 to i128
  %sub74.i.44 = sub i128 %sub54.i.30, %conv72.i.43
  %and75.i.45 = and i64 %or.i.39, -4294967295
  %conv76.i.46 = zext i64 %and75.i.45 to i128
  %sub78.i.47 = sub nsw i128 %add47.i.26, %conv76.i.46
  %shr80.i.48 = lshr i128 %sub70.i.41, 64
  %add84.i.49 = add i128 %sub74.i.44, %shr80.i.48
  %conv86.i.50 = trunc i128 %sub70.i.41 to i64
  %shr90.i.51 = lshr i128 %add84.i.49, 64
  %add94.i.52 = add nuw nsw i128 %add13.i.10, %shr90.i.51
  %conv96.i.53 = trunc i128 %add84.i.49 to i64
  %shr100.i.54 = lshr i128 %add94.i.52, 64
  %add104.i.55 = add nsw i128 %sub78.i.47, %shr100.i.54
  %conv106.i.56 = trunc i128 %add94.i.52 to i64
  store i64 %conv86.i.50, i64* %arraydecay1, align 16, !tbaa !6
  %arrayidx114.i.57 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 1
  store i64 %conv96.i.53, i64* %arrayidx114.i.57, align 8, !tbaa !6
  %arrayidx117.i.58 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 2
  store i64 %conv106.i.56, i64* %arrayidx117.i.58, align 16, !tbaa !6
  %conv119.i.59 = trunc i128 %add104.i.55 to i64
  %arrayidx120.i.60 = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 3
  store i64 %conv119.i.59, i64* %arrayidx120.i.60, align 8, !tbaa !6
  call fastcc void @smallfelem_mul(i128* %out, i64* %arraydecay, i64* %arraydecay1)
  call void @llvm.lifetime.end(i64 32, i8* %1) #1
  call void @llvm.lifetime.end(i64 32, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @smallfelem_mul(i128* nocapture %out, i64* nocapture readonly %small1, i64* nocapture readonly %small2) #0 {
entry:
  %0 = load i64, i64* %small1, align 8, !tbaa !6
  %conv = zext i64 %0 to i128
  %1 = load i64, i64* %small2, align 8, !tbaa !6
  %conv2 = zext i64 %1 to i128
  %mul = mul nuw i128 %conv2, %conv
  %shr = lshr i128 %mul, 64
  %conv5 = and i128 %mul, 18446744073709551615
  store i128 %conv5, i128* %out, align 16, !tbaa !2
  %arrayidx8 = getelementptr inbounds i128, i128* %out, i64 1
  %arrayidx11 = getelementptr inbounds i64, i64* %small2, i64 1
  %2 = load i64, i64* %arrayidx11, align 8, !tbaa !6
  %conv12 = zext i64 %2 to i128
  %mul13 = mul nuw i128 %conv12, %conv
  %shr15 = lshr i128 %mul13, 64
  %conv17 = and i128 %mul13, 18446744073709551615
  %add = add nuw nsw i128 %conv17, %shr
  %arrayidx20 = getelementptr inbounds i128, i128* %out, i64 2
  %arrayidx21 = getelementptr inbounds i64, i64* %small1, i64 1
  %3 = load i64, i64* %arrayidx21, align 8, !tbaa !6
  %conv22 = zext i64 %3 to i128
  %mul25 = mul nuw i128 %conv2, %conv22
  %shr27 = lshr i128 %mul25, 64
  %conv29 = and i128 %mul25, 18446744073709551615
  %add31 = add nuw nsw i128 %conv29, %add
  store i128 %add31, i128* %arrayidx8, align 16, !tbaa !2
  %add34 = add nuw nsw i128 %shr27, %shr15
  %arrayidx37 = getelementptr inbounds i64, i64* %small2, i64 2
  %4 = load i64, i64* %arrayidx37, align 8, !tbaa !6
  %conv38 = zext i64 %4 to i128
  %mul39 = mul nuw i128 %conv38, %conv
  %shr41 = lshr i128 %mul39, 64
  %conv43 = and i128 %mul39, 18446744073709551615
  %add45 = add nuw nsw i128 %conv43, %add34
  %arrayidx47 = getelementptr inbounds i128, i128* %out, i64 3
  %mul52 = mul nuw i128 %conv12, %conv22
  %shr54 = lshr i128 %mul52, 64
  %conv56 = and i128 %mul52, 18446744073709551615
  %add58 = add nuw nsw i128 %conv56, %add45
  %add61 = add nuw nsw i128 %shr54, %shr41
  %arrayidx62 = getelementptr inbounds i64, i64* %small1, i64 2
  %5 = load i64, i64* %arrayidx62, align 8, !tbaa !6
  %conv63 = zext i64 %5 to i128
  %mul66 = mul nuw i128 %conv2, %conv63
  %shr68 = lshr i128 %mul66, 64
  %conv70 = and i128 %mul66, 18446744073709551615
  %add72 = add nuw nsw i128 %conv70, %add58
  store i128 %add72, i128* %arrayidx20, align 16, !tbaa !2
  %add75 = add nuw nsw i128 %shr68, %add61
  %arrayidx78 = getelementptr inbounds i64, i64* %small2, i64 3
  %6 = load i64, i64* %arrayidx78, align 8, !tbaa !6
  %conv79 = zext i64 %6 to i128
  %mul80 = mul nuw i128 %conv79, %conv
  %shr82 = lshr i128 %mul80, 64
  %conv84 = and i128 %mul80, 18446744073709551615
  %add86 = add nuw nsw i128 %conv84, %add75
  %arrayidx88 = getelementptr inbounds i128, i128* %out, i64 4
  %mul93 = mul nuw i128 %conv38, %conv22
  %shr95 = lshr i128 %mul93, 64
  %conv97 = and i128 %mul93, 18446744073709551615
  %add99 = add nuw nsw i128 %conv97, %add86
  %add102 = add nuw nsw i128 %shr95, %shr82
  %mul107 = mul nuw i128 %conv12, %conv63
  %shr109 = lshr i128 %mul107, 64
  %conv111 = and i128 %mul107, 18446744073709551615
  %add113 = add nuw nsw i128 %conv111, %add99
  %add116 = add nuw nsw i128 %shr109, %add102
  %arrayidx117 = getelementptr inbounds i64, i64* %small1, i64 3
  %7 = load i64, i64* %arrayidx117, align 8, !tbaa !6
  %conv118 = zext i64 %7 to i128
  %mul121 = mul nuw i128 %conv2, %conv118
  %shr123 = lshr i128 %mul121, 64
  %conv125 = and i128 %mul121, 18446744073709551615
  %add127 = add nuw nsw i128 %conv125, %add113
  store i128 %add127, i128* %arrayidx47, align 16, !tbaa !2
  %add130 = add nuw nsw i128 %shr123, %add116
  %mul135 = mul nuw i128 %conv79, %conv22
  %shr137 = lshr i128 %mul135, 64
  %conv139 = and i128 %mul135, 18446744073709551615
  %add141 = add nuw nsw i128 %conv139, %add130
  %arrayidx143 = getelementptr inbounds i128, i128* %out, i64 5
  %mul148 = mul nuw i128 %conv38, %conv63
  %shr150 = lshr i128 %mul148, 64
  %conv152 = and i128 %mul148, 18446744073709551615
  %add154 = add nuw nsw i128 %conv152, %add141
  %add157 = add nuw nsw i128 %shr150, %shr137
  %mul162 = mul nuw i128 %conv12, %conv118
  %shr164 = lshr i128 %mul162, 64
  %conv166 = and i128 %mul162, 18446744073709551615
  %add168 = add nuw nsw i128 %conv166, %add154
  store i128 %add168, i128* %arrayidx88, align 16, !tbaa !2
  %add171 = add nuw nsw i128 %shr164, %add157
  %mul176 = mul nuw i128 %conv79, %conv63
  %shr178 = lshr i128 %mul176, 64
  %conv180 = and i128 %mul176, 18446744073709551615
  %add182 = add nuw nsw i128 %conv180, %add171
  %arrayidx184 = getelementptr inbounds i128, i128* %out, i64 6
  %mul189 = mul nuw i128 %conv38, %conv118
  %shr191 = lshr i128 %mul189, 64
  %conv193 = and i128 %mul189, 18446744073709551615
  %add195 = add nuw nsw i128 %conv193, %add182
  store i128 %add195, i128* %arrayidx143, align 16, !tbaa !2
  %add198 = add nuw nsw i128 %shr191, %shr178
  %mul203 = mul nuw i128 %conv79, %conv118
  %shr205 = lshr i128 %mul203, 64
  %conv207 = and i128 %mul203, 18446744073709551615
  %add209 = add nuw nsw i128 %conv207, %add198
  store i128 %add209, i128* %arrayidx184, align 16, !tbaa !2
  %arrayidx211 = getelementptr inbounds i128, i128* %out, i64 7
  store i128 %shr205, i128* %arrayidx211, align 16, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone uwtable
define %struct.ec_method_st* @EC_GFp_nistp256_method() #2 {
entry:
  ret %struct.ec_method_st* @EC_GFp_nistp256_method.ret
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp256_group_init(%struct.ec_group_st* %group) #0 {
entry:
  %call = tail call i32 @ec_GFp_simple_group_init(%struct.ec_group_st* %group) #1
  %a_is_minus3 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  store i32 1, i32* %a_is_minus3, align 4, !tbaa !8
  ret i32 %call
}

declare void @ec_GFp_simple_group_finish(%struct.ec_group_st*) #3

declare void @ec_GFp_simple_group_clear_finish(%struct.ec_group_st*) #3

declare i32 @ec_GFp_nist_group_copy(%struct.ec_group_st*, %struct.ec_group_st*) #3

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp256_group_set_curve(%struct.ec_group_st* %group, %struct.bignum_st* %p, %struct.bignum_st* %a, %struct.bignum_st* %b, %struct.bignum_ctx* %ctx) #0 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #1
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %if.then, %entry
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx.addr.0) #1
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #1
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #1
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #1
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %err, label %if.end.9

if.end.9:                                         ; preds = %if.end.3
  %call10 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [32 x i8]], [5 x [32 x i8]]* @nistp256_curve_params, i64 0, i64 0, i64 0), i32 32, %struct.bignum_st* %call4) #1
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [32 x i8]], [5 x [32 x i8]]* @nistp256_curve_params, i64 0, i64 1, i64 0), i32 32, %struct.bignum_st* %call5) #1
  %call12 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [32 x i8]], [5 x [32 x i8]]* @nistp256_curve_params, i64 0, i64 2, i64 0), i32 32, %struct.bignum_st* %call6) #1
  %call13 = tail call i32 @BN_cmp(%struct.bignum_st* %call4, %struct.bignum_st* %p) #1
  %tobool = icmp eq i32 %call13, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %if.end.9
  %call14 = tail call i32 @BN_cmp(%struct.bignum_st* %call5, %struct.bignum_st* %a) #1
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.19

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %call17 = tail call i32 @BN_cmp(%struct.bignum_st* %call6, %struct.bignum_st* %b) #1
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %if.end.9
  tail call void @ERR_put_error(i32 16, i32 230, i32 145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1920) #1
  br label %err

if.end.20:                                        ; preds = %lor.lhs.false.16
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_256, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !12
  %call21 = tail call i32 @ec_GFp_simple_group_set_curve(%struct.ec_group_st* %group, %struct.bignum_st* %p, %struct.bignum_st* %a, %struct.bignum_st* %b, %struct.bignum_ctx* %ctx.addr.0) #1
  br label %err

err:                                              ; preds = %if.end.3, %if.end.20, %if.then.19
  %ret.0 = phi i32 [ 0, %if.end.3 ], [ 0, %if.then.19 ], [ %call21, %if.end.20 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* %ctx.addr.0) #1
  tail call void @BN_CTX_free(%struct.bignum_ctx* %new_ctx.0) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ec_GFp_simple_group_get_curve(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_group_get_degree(%struct.ec_group_st*) #3

declare i32 @ec_group_simple_order_bits(%struct.ec_group_st*) #3

declare i32 @ec_GFp_simple_group_check_discriminant(%struct.ec_group_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_point_init(%struct.ec_point_st*) #3

declare void @ec_GFp_simple_point_finish(%struct.ec_point_st*) #3

declare void @ec_GFp_simple_point_clear_finish(%struct.ec_point_st*) #3

declare i32 @ec_GFp_simple_point_copy(%struct.ec_point_st*, %struct.ec_point_st*) #3

declare i32 @ec_GFp_simple_point_set_to_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #3

declare i32 @ec_GFp_simple_set_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_get_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_point_set_affine_coordinates(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp256_point_get_affine_coordinates(%struct.ec_group_st* %group, %struct.ec_point_st* %point, %struct.bignum_st* %x, %struct.bignum_st* %y, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %b_in.i = alloca [32 x i8], align 16
  %b_out.i = alloca [32 x i8], align 16
  %z1 = alloca [4 x i128], align 16
  %z2 = alloca [4 x i128], align 16
  %x_in = alloca [4 x i128], align 16
  %y_in = alloca [4 x i128], align 16
  %x_out = alloca [4 x i64], align 16
  %y_out = alloca [4 x i64], align 16
  %tmp = alloca [8 x i128], align 16
  %0 = bitcast [4 x i128]* %z1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [4 x i128]* %z2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x i128]* %x_in to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [4 x i128]* %y_in to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast [4 x i64]* %x_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast [4 x i64]* %y_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #1
  %6 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #1
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* %group, %struct.ec_point_st* %point) #1
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 232, i32 106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1946) #1
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 0
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call1 = call fastcc i32 @BN_to_felem(i128* %arraydecay, %struct.bignum_st* %7)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call4 = call fastcc i32 @BN_to_felem(i128* %arraydecay3, %struct.bignum_st* %8)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %cleanup, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call8 = call fastcc i32 @BN_to_felem(i128* %arraydecay7, %struct.bignum_st* %9)
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %cleanup, label %if.end.11

if.end.11:                                        ; preds = %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 0
  call fastcc void @felem_inv(i128* %arraydecay12, i128* %arraydecay7)
  %arraydecay14 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 3
  %10 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.i = add i128 %10, 18446744069414584320
  %arrayidx6.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 2
  %11 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.i = lshr i128 %11, 64
  %add8.i.i = add i128 %add.i.i, %shr.i.i
  %conv12.i.i = and i128 %11, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %12 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add16.i.i = add i128 %12, 18446744073709551615
  %arrayidx18.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 1
  %13 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.i = add i128 %13, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i, %shl.i.i
  %shr34.i.i = lshr i128 %add32.i.i, 64
  %conv35.i.i = trunc i128 %shr34.i.i to i64
  %add36.i.i = add i64 %conv35.i.i, %conv23.i.i
  %conv39.i.i = and i128 %add32.i.i, 18446744073709551615
  %sub43.i.i = sub nsw i128 %conv39.i.i, %shr34.i.i
  %shl45.i.i = shl nuw nsw i128 %shr34.i.i, 32
  %add47.i.i = add nsw i128 %sub43.i.i, %shl45.i.i
  %conv48.i.i = zext i64 %add36.i.i to i128
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %shl52.i.i = shl nuw nsw i128 %conv48.i.i, 32
  %sub54.i.i = sub i128 %add19.i.i, %shl52.i.i
  %shr56.i.i = lshr i128 %add47.i.i, 64
  %conv57.i.i = trunc i128 %shr56.i.i to i64
  %sub58.i.i = sub i64 0, %conv57.i.i
  %conv60.i.i = trunc i128 %add47.i.i to i64
  %and.i.i = and i64 %conv60.i.i, 9223372036854775807
  %neg.i.i = sub nsw i64 9223372032559808512, %and.i.i
  %sub62177.i.i = and i64 %neg.i.i, %conv60.i.i
  %and66.i.i = ashr i64 %sub62177.i.i, 63
  %or.i.i = or i64 %and66.i.i, %sub58.i.i
  %conv68.i.i = zext i64 %or.i.i to i128
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %sub74.i.i = sub i128 %sub54.i.i, %conv72.i.i
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %add84.i.i = add i128 %sub74.i.i, %shr80.i.i
  %shr90.i.i = lshr i128 %add84.i.i, 64
  %add94.i.i = add nuw nsw i128 %add13.i.i, %shr90.i.i
  %shr100.i.i = lshr i128 %add94.i.i, 64
  %add104.i.i = add nsw i128 %sub78.i.i, %shr100.i.i
  %conv.i = and i128 %sub70.i.i, 18446744073709551615
  %mul.i = mul nuw i128 %conv.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  store i128 %conv5.i, i128* %arraydecay14, align 16, !tbaa !2
  %arrayidx8.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %conv12.i = and i128 %add84.i.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  store i128 %add21.i, i128* %arrayidx8.i, align 16, !tbaa !2
  %arrayidx23.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %conv27.i = and i128 %add94.i.i, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %arrayidx38.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %conv42.i = and i128 %add104.i.i, 18446744073709551615
  %mul43.i = mul nuw i128 %conv42.i, %conv.i
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %arrayidx51.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i, %conv12.i
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i
  store i128 %add78.i, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  store i128 %add81.i, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %arrayidx96.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %mul101.i = mul nuw i128 %conv42.i, %conv27.i
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %arrayidx111.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv27.i, %conv27.i
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  store i128 %add125.i, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  store i128 %add128.i, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i = mul nuw i128 %conv42.i, %conv42.i
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  store i128 %add139.i, i128* %arrayidx111.i, align 16, !tbaa !2
  %arrayidx141.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  store i128 %shr135.i, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i = or i128 %add21.i, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 1
  %add6.i = add nuw nsw i128 %add78.i, 1267650600228229401427983728656
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 2
  %add9.i = add nuw nsw i128 %add81.i, 1267650600228229401427983728656
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 3
  %shl.i.i.67 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.68 = add nuw nsw i128 %shl.i.i.67, %add125.i
  %add3.i.i = add nuw nsw i128 %add.i.i.68, %add.i
  %sub.i.i.69 = sub nsw i128 %add9.i, %add.i.i.68
  %sub7.i.i = sub nsw i128 %add128.i, %shr135.i
  %add9.i.i = add nsw i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub nsw i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl nuw nsw i128 %add125.i, 32
  %sub15.i.i = sub nsw i128 %add9.i.i, %shl13.i.i
  %add19.i.i.71 = add i128 %shl13.i.i, %sub.i.i.69
  %sub23.i.i = sub nsw i128 %sub11.i.i, %shl.i.i.67
  %sub26.i.i = sub i128 %add3.i.i, %add139.i
  %shl28.i.i = shl nuw nsw i128 %add139.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nuw nsw i128 %add139.i, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl nuw nsw i128 %add139.i, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i.71, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %shr135.i
  %shl46.i.i = shl nuw nsw i128 %shr135.i, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %shr135.i, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %shr135.i, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay14, i128* %arraydecay, i128* %arraydecay7)
  %14 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %add.i.72 = add i128 %14, 1267650600228229401427983728624
  %15 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.74 = add i128 %15, 1267650600228229401496703205376
  %arrayidx4.i.75 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 1
  %16 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.77 = add i128 %16, 1267650600228229401427983728656
  %arrayidx7.i.78 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 2
  %17 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.80 = add i128 %17, 1267650600228229401427983728656
  %arrayidx10.i.81 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 3
  %18 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %19 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.84 = shl i128 %19, 32
  %add.i.i.85 = add i128 %shl.i.i.84, %18
  %add3.i.i.86 = add i128 %add.i.i.85, %add.i.72
  %sub.i.i.87 = sub i128 %add9.i.80, %add.i.i.85
  %20 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.89 = sub i128 %19, %20
  %add9.i.i.90 = add i128 %sub7.i.i.89, %add3.i.74
  %sub11.i.i.91 = sub i128 %add6.i.77, %sub7.i.i.89
  %shl13.i.i.92 = shl i128 %18, 32
  %sub15.i.i.93 = sub i128 %add9.i.i.90, %shl13.i.i.92
  %add19.i.i.95 = add i128 %shl13.i.i.92, %sub.i.i.87
  %sub23.i.i.97 = sub i128 %sub11.i.i.91, %shl.i.i.84
  %21 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.99 = sub i128 %add3.i.i.86, %21
  %shl28.i.i.100 = shl i128 %21, 32
  %sub30.i.i.101 = sub i128 %sub26.i.i.99, %shl28.i.i.100
  %shl32.i.i.102 = shl i128 %21, 33
  %add34.i.i.103 = add i128 %shl32.i.i.102, %sub15.i.i.93
  store i128 %add34.i.i.103, i128* %arrayidx4.i.75, align 16, !tbaa !2
  %mul.i.i.104 = shl i128 %21, 1
  %add37.i.i.105 = add i128 %mul.i.i.104, %sub23.i.i.97
  %sub41.i.i.107 = sub i128 %add19.i.i.95, %shl28.i.i.100
  %sub44.i.i.108 = sub i128 %sub30.i.i.101, %20
  %shl46.i.i.109 = shl i128 %20, 32
  %sub48.i.i.110 = sub i128 %sub44.i.i.108, %shl46.i.i.109
  store i128 %sub48.i.i.110, i128* %arraydecay, align 16, !tbaa !2
  %shl50.i.i.111 = shl i128 %20, 33
  %add52.i.i.112 = add i128 %shl50.i.i.111, %add37.i.i.105
  store i128 %add52.i.i.112, i128* %arrayidx7.i.78, align 16, !tbaa !2
  %mul54.i.i.113 = mul i128 %20, 3
  %add56.i.i.114 = add i128 %mul54.i.i.113, %sub41.i.i.107
  store i128 %add56.i.i.114, i128* %arrayidx10.i.81, align 16, !tbaa !2
  %arraydecay23 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay23, i128* %arraydecay)
  %cmp = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.end.11
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %22) #1
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %23) #1
  %24 = bitcast [4 x i64]* %x_out to <2 x i64>*
  %25 = load <2 x i64>, <2 x i64>* %24, align 16, !tbaa !6
  %26 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %26, align 16, !tbaa !6
  %arrayidx4.i.i.162 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  %arrayidx5.i.i.163 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %27 = bitcast i64* %arrayidx4.i.i.162 to <2 x i64>*
  %28 = load <2 x i64>, <2 x i64>* %27, align 16, !tbaa !6
  %29 = bitcast i8* %arrayidx5.i.i.163 to <2 x i64>*
  store <2 x i64> %28, <2 x i64>* %29, align 16, !tbaa !6
  br label %vector.body

vector.body:                                      ; preds = %if.then.25
  %30 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %31 = bitcast i8* %30 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %31, align 16, !tbaa !17
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %32 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %32, align 16, !tbaa !17
  %33 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %33, align 16, !tbaa !17
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %35 = bitcast i8* %34 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %35, align 16, !tbaa !17
  %call.i.173 = call %struct.bignum_st* @BN_bin2bn(i8* %23, i32 32, %struct.bignum_st* %x) #1
  call void @llvm.lifetime.end(i64 32, i8* %23) #1
  call void @llvm.lifetime.end(i64 32, i8* %22) #1
  %tobool28 = icmp eq %struct.bignum_st* %call.i.173, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %vector.body
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1961) #1
  br label %cleanup

if.end.31:                                        ; preds = %vector.body, %if.end.11
  call void @felem_mul(i128* %arraydecay14, i128* %arraydecay7, i128* %arraydecay12)
  %36 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %add.i.175 = add i128 %36, 1267650600228229401427983728624
  %37 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.177 = add i128 %37, 1267650600228229401496703205376
  %38 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.180 = add i128 %38, 1267650600228229401427983728656
  %39 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.183 = add i128 %39, 1267650600228229401427983728656
  %40 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %41 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.187 = shl i128 %41, 32
  %add.i.i.188 = add i128 %shl.i.i.187, %40
  %add3.i.i.189 = add i128 %add.i.i.188, %add.i.175
  %sub.i.i.190 = sub i128 %add9.i.183, %add.i.i.188
  %42 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.192 = sub i128 %41, %42
  %add9.i.i.193 = add i128 %sub7.i.i.192, %add3.i.177
  %sub11.i.i.194 = sub i128 %add6.i.180, %sub7.i.i.192
  %shl13.i.i.195 = shl i128 %40, 32
  %sub15.i.i.196 = sub i128 %add9.i.i.193, %shl13.i.i.195
  %add19.i.i.198 = add i128 %shl13.i.i.195, %sub.i.i.190
  %sub23.i.i.200 = sub i128 %sub11.i.i.194, %shl.i.i.187
  %43 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.202 = sub i128 %add3.i.i.189, %43
  %shl28.i.i.203 = shl i128 %43, 32
  %sub30.i.i.204 = sub i128 %sub26.i.i.202, %shl28.i.i.203
  %shl32.i.i.205 = shl i128 %43, 33
  %add34.i.i.206 = add i128 %shl32.i.i.205, %sub15.i.i.196
  store i128 %add34.i.i.206, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.207 = shl i128 %43, 1
  %add37.i.i.208 = add i128 %mul.i.i.207, %sub23.i.i.200
  %sub41.i.i.210 = sub i128 %add19.i.i.198, %shl28.i.i.203
  %sub44.i.i.211 = sub i128 %sub30.i.i.204, %42
  %shl46.i.i.212 = shl i128 %42, 32
  %sub48.i.i.213 = sub i128 %sub44.i.i.211, %shl46.i.i.212
  store i128 %sub48.i.i.213, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i.214 = shl i128 %42, 33
  %add52.i.i.215 = add i128 %shl50.i.i.214, %add37.i.i.208
  store i128 %add52.i.i.215, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.216 = mul i128 %42, 3
  %add56.i.i.217 = add i128 %mul54.i.i.216, %sub41.i.i.210
  store i128 %add56.i.i.217, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay14, i128* %arraydecay3, i128* %arraydecay7)
  %44 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %add.i.115 = add i128 %44, 1267650600228229401427983728624
  %45 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.117 = add i128 %45, 1267650600228229401496703205376
  %arrayidx4.i.118 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 1
  %46 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.120 = add i128 %46, 1267650600228229401427983728656
  %arrayidx7.i.121 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 2
  %47 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.123 = add i128 %47, 1267650600228229401427983728656
  %arrayidx10.i.124 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 3
  %48 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %49 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.127 = shl i128 %49, 32
  %add.i.i.128 = add i128 %shl.i.i.127, %48
  %add3.i.i.129 = add i128 %add.i.i.128, %add.i.115
  %sub.i.i.130 = sub i128 %add9.i.123, %add.i.i.128
  %50 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.132 = sub i128 %49, %50
  %add9.i.i.133 = add i128 %sub7.i.i.132, %add3.i.117
  %sub11.i.i.134 = sub i128 %add6.i.120, %sub7.i.i.132
  %shl13.i.i.135 = shl i128 %48, 32
  %sub15.i.i.136 = sub i128 %add9.i.i.133, %shl13.i.i.135
  %add19.i.i.138 = add i128 %shl13.i.i.135, %sub.i.i.130
  %sub23.i.i.140 = sub i128 %sub11.i.i.134, %shl.i.i.127
  %51 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.142 = sub i128 %add3.i.i.129, %51
  %shl28.i.i.143 = shl i128 %51, 32
  %sub30.i.i.144 = sub i128 %sub26.i.i.142, %shl28.i.i.143
  %shl32.i.i.145 = shl i128 %51, 33
  %add34.i.i.146 = add i128 %shl32.i.i.145, %sub15.i.i.136
  store i128 %add34.i.i.146, i128* %arrayidx4.i.118, align 16, !tbaa !2
  %mul.i.i.147 = shl i128 %51, 1
  %add37.i.i.148 = add i128 %mul.i.i.147, %sub23.i.i.140
  %sub41.i.i.150 = sub i128 %add19.i.i.138, %shl28.i.i.143
  %sub44.i.i.151 = sub i128 %sub30.i.i.144, %50
  %shl46.i.i.152 = shl i128 %50, 32
  %sub48.i.i.153 = sub i128 %sub44.i.i.151, %shl46.i.i.152
  store i128 %sub48.i.i.153, i128* %arraydecay3, align 16, !tbaa !2
  %shl50.i.i.154 = shl i128 %50, 33
  %add52.i.i.155 = add i128 %shl50.i.i.154, %add37.i.i.148
  store i128 %add52.i.i.155, i128* %arrayidx7.i.121, align 16, !tbaa !2
  %mul54.i.i.156 = mul i128 %50, 3
  %add56.i.i.157 = add i128 %mul54.i.i.156, %sub41.i.i.150
  store i128 %add56.i.i.157, i128* %arrayidx10.i.124, align 16, !tbaa !2
  %arraydecay42 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay42, i128* %arraydecay3)
  %cmp44 = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp44, label %cleanup, label %if.then.45

if.then.45:                                       ; preds = %if.end.31
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %52) #1
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %53) #1
  %54 = bitcast [4 x i64]* %y_out to <2 x i64>*
  %55 = load <2 x i64>, <2 x i64>* %54, align 16, !tbaa !6
  %56 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %55, <2 x i64>* %56, align 16, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  %arrayidx5.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %57 = bitcast i64* %arrayidx4.i.i to <2 x i64>*
  %58 = load <2 x i64>, <2 x i64>* %57, align 16, !tbaa !6
  %59 = bitcast i8* %arrayidx5.i.i to <2 x i64>*
  store <2 x i64> %58, <2 x i64>* %59, align 16, !tbaa !6
  br label %vector.body226

vector.body226:                                   ; preds = %if.then.45
  %60 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  %wide.load241 = load <16 x i8>, <16 x i8>* %61, align 16, !tbaa !17
  %reverse242 = shufflevector <16 x i8> %wide.load241, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %62 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse242, <16 x i8>* %62, align 16, !tbaa !17
  %63 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load241.1 = load <16 x i8>, <16 x i8>* %63, align 16, !tbaa !17
  %reverse242.1 = shufflevector <16 x i8> %wide.load241.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %65 = bitcast i8* %64 to <16 x i8>*
  store <16 x i8> %reverse242.1, <16 x i8>* %65, align 16, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %53, i32 32, %struct.bignum_st* %y) #1
  call void @llvm.lifetime.end(i64 32, i8* %53) #1
  call void @llvm.lifetime.end(i64 32, i8* %52) #1
  %tobool48 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool48, label %if.then.49, label %cleanup

if.then.49:                                       ; preds = %vector.body226
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1973) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %vector.body226, %if.end, %lor.lhs.false, %lor.lhs.false.6, %if.then.49, %if.then.29, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.49 ], [ 0, %if.then.29 ], [ 0, %lor.lhs.false.6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %vector.body226 ], [ 1, %if.end.31 ]
  call void @llvm.lifetime.end(i64 128, i8* %6) #1
  call void @llvm.lifetime.end(i64 32, i8* %5) #1
  call void @llvm.lifetime.end(i64 32, i8* %4) #1
  call void @llvm.lifetime.end(i64 64, i8* %3) #1
  call void @llvm.lifetime.end(i64 64, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret i32 %retval.0
}

declare i32 @ec_GFp_simple_add(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_dbl(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_invert(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_is_at_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #3

declare i32 @ec_GFp_simple_is_on_curve(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_cmp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_make_affine(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_points_make_affine(%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*) #3

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp256_points_mul(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %scalar, i64 %num, %struct.ec_point_st** nocapture readonly %points, %struct.bignum_st** nocapture readonly %scalars, %struct.bignum_ctx* %ctx) #0 {
entry:
  %felem_x3.i = alloca [4 x i128], align 16
  %felem_y3.i = alloca [4 x i128], align 16
  %felem_z3.i = alloca [4 x i128], align 16
  %felem_x1.i = alloca [4 x i128], align 16
  %felem_y1.i = alloca [4 x i128], align 16
  %felem_z1.i = alloca [4 x i128], align 16
  %b_in.i = alloca [32 x i8], align 16
  %b_out.i = alloca [32 x i8], align 16
  %g_secret = alloca [32 x i8], align 16
  %tmp = alloca [32 x i8], align 16
  %x_in = alloca [4 x i64], align 16
  %y_in = alloca [4 x i64], align 16
  %z_in = alloca [4 x i64], align 16
  %x_out = alloca [4 x i128], align 16
  %y_out = alloca [4 x i128], align 16
  %z_out = alloca [4 x i128], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  %2 = bitcast [4 x i64]* %x_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #1
  %3 = bitcast [4 x i64]* %y_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #1
  %4 = bitcast [4 x i64]* %z_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #1
  %5 = bitcast [4 x i128]* %x_out to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast [4 x i128]* %y_out to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #1
  %7 = bitcast [4 x i128]* %z_out to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx) #1
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call18 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %cmp = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp19 = icmp ne %struct.bignum_st* %scalar, null
  br i1 %cmp19, label %if.then.20, label %if.end.59

if.then.20:                                       ; preds = %if.end
  %pre_comp21 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %nistp256 = bitcast %union.anon* %pre_comp21 to %struct.nistp256_pre_comp_st**
  %8 = load %struct.nistp256_pre_comp_st*, %struct.nistp256_pre_comp_st** %nistp256, align 8, !tbaa !18
  %tobool = icmp eq %struct.nistp256_pre_comp_st* %8, null
  %arraydecay = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %8, i64 0, i32 0, i64 0
  %g_pre_comp.0 = select i1 %tobool, [16 x [3 x [4 x i64]]]* getelementptr inbounds ([2 x [16 x [3 x [4 x i64]]]], [2 x [16 x [3 x [4 x i64]]]]* @gmul, i64 0, i64 0), [16 x [3 x [4 x i64]]]* %arraydecay
  %call25 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #1
  %cmp26 = icmp eq %struct.ec_point_st* %call25, null
  br i1 %cmp26, label %err, label %if.end.28

if.end.28:                                        ; preds = %if.then.20
  %arraydecay31 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 0
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %11 = load i64, i64* %arraydecay31, align 8, !tbaa !6
  %12 = bitcast [32 x i8]* %b_in.i to i64*
  store i64 %11, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 1
  %13 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !6
  %arrayidx3.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 8
  %14 = bitcast i8* %arrayidx3.i.i to i64*
  store i64 %13, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 2
  %15 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !6
  %arrayidx5.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %16 = bitcast i8* %arrayidx5.i.i to i64*
  store i64 %15, i64* %16, align 16, !tbaa !6
  %arrayidx6.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 3
  %17 = load i64, i64* %arrayidx6.i.i, align 8, !tbaa !6
  %arrayidx7.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 24
  %18 = bitcast i8* %arrayidx7.i.i to i64*
  store i64 %17, i64* %18, align 8, !tbaa !6
  br label %vector.body

vector.body:                                      ; preds = %if.end.28
  %19 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %20 = bitcast i8* %19 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %20, align 16, !tbaa !17
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %21 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %21, align 16, !tbaa !17
  %22 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %22, align 16, !tbaa !17
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %24 = bitcast i8* %23 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %24, align 16, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 32, %struct.bignum_st* %call) #1
  call void @llvm.lifetime.end(i64 32, i8* %10) #1
  call void @llvm.lifetime.end(i64 32, i8* %9) #1
  %tobool33 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool33, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %vector.body
  %arraydecay37 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %25 = load i64, i64* %arraydecay37, align 8, !tbaa !6
  store i64 %25, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i.473 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 1
  %26 = load i64, i64* %arrayidx2.i.i.473, align 8, !tbaa !6
  store i64 %26, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i.475 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 2
  %27 = load i64, i64* %arrayidx4.i.i.475, align 8, !tbaa !6
  store i64 %27, i64* %16, align 16, !tbaa !6
  %arrayidx6.i.i.477 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 3
  %28 = load i64, i64* %arrayidx6.i.i.477, align 8, !tbaa !6
  store i64 %28, i64* %18, align 8, !tbaa !6
  br label %vector.body1078

vector.body1078:                                  ; preds = %lor.lhs.false
  %29 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %30 = bitcast i8* %29 to <16 x i8>*
  %wide.load1093 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !17
  %reverse1094 = shufflevector <16 x i8> %wide.load1093, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %31 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse1094, <16 x i8>* %31, align 16, !tbaa !17
  %32 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load1093.1 = load <16 x i8>, <16 x i8>* %32, align 16, !tbaa !17
  %reverse1094.1 = shufflevector <16 x i8> %wide.load1093.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %34 = bitcast i8* %33 to <16 x i8>*
  store <16 x i8> %reverse1094.1, <16 x i8>* %34, align 16, !tbaa !17
  %call.i.486 = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 32, %struct.bignum_st* %call16) #1
  call void @llvm.lifetime.end(i64 32, i8* %10) #1
  call void @llvm.lifetime.end(i64 32, i8* %9) #1
  %tobool39 = icmp eq %struct.bignum_st* %call.i.486, null
  br i1 %tobool39, label %if.then.47, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %vector.body1078
  %arraydecay44 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %9) #1
  call void @llvm.lifetime.start(i64 32, i8* %10) #1
  %35 = load i64, i64* %arraydecay44, align 8, !tbaa !6
  store i64 %35, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i.490 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 1
  %36 = load i64, i64* %arrayidx2.i.i.490, align 8, !tbaa !6
  store i64 %36, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i.492 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 2
  %37 = load i64, i64* %arrayidx4.i.i.492, align 8, !tbaa !6
  store i64 %37, i64* %16, align 16, !tbaa !6
  %arrayidx6.i.i.494 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 3
  %38 = load i64, i64* %arrayidx6.i.i.494, align 8, !tbaa !6
  store i64 %38, i64* %18, align 8, !tbaa !6
  br label %vector.body1096

vector.body1096:                                  ; preds = %lor.lhs.false.40
  %39 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %40 = bitcast i8* %39 to <16 x i8>*
  %wide.load1111 = load <16 x i8>, <16 x i8>* %40, align 16, !tbaa !17
  %reverse1112 = shufflevector <16 x i8> %wide.load1111, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %41 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse1112, <16 x i8>* %41, align 16, !tbaa !17
  %42 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load1111.1 = load <16 x i8>, <16 x i8>* %42, align 16, !tbaa !17
  %reverse1112.1 = shufflevector <16 x i8> %wide.load1111.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %44 = bitcast i8* %43 to <16 x i8>*
  store <16 x i8> %reverse1112.1, <16 x i8>* %44, align 16, !tbaa !17
  %call.i.503 = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 32, %struct.bignum_st* %call17) #1
  call void @llvm.lifetime.end(i64 32, i8* %10) #1
  call void @llvm.lifetime.end(i64 32, i8* %9) #1
  %tobool46 = icmp eq %struct.bignum_st* %call.i.503, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %vector.body1096, %vector.body1078, %vector.body
  call void @ERR_put_error(i32 16, i32 231, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2061) #1
  br label %err

if.end.48:                                        ; preds = %vector.body1096
  %call49 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call25, %struct.bignum_st* %call, %struct.bignum_st* %call16, %struct.bignum_st* %call17, %struct.bignum_ctx* %ctx) #1
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %err, label %if.end.52

if.end.52:                                        ; preds = %if.end.48
  %generator53 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %45 = load %struct.ec_point_st*, %struct.ec_point_st** %generator53, align 8, !tbaa !19
  %call54 = call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call25, %struct.ec_point_st* %45, %struct.bignum_ctx* %ctx) #1
  %cmp55 = icmp eq i32 %call54, 0
  %.470 = zext i1 %cmp55 to i32
  %46 = zext i1 %cmp55 to i64
  %inc = xor i64 %46, 1
  %num.inc = add i64 %inc, %num
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.52, %if.end
  %have_pre_comp.0 = phi i32 [ 0, %if.end ], [ %.470, %if.end.52 ]
  %num_points.0 = phi i64 [ %num, %if.end ], [ %num.inc, %if.end.52 ]
  %g_pre_comp.1 = phi [16 x [3 x [4 x i64]]]* [ null, %if.end ], [ %g_pre_comp.0, %if.end.52 ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end ], [ %call25, %if.end.52 ]
  %cmp60 = icmp eq i64 %num_points.0, 0
  br i1 %cmp60, label %if.end.264, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %cmp62 = icmp ugt i64 %num_points.0, 2
  %mul = shl i64 %num_points.0, 5
  %call65 = call i8* @CRYPTO_malloc(i64 %mul, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2086) #1
  %47 = bitcast i8* %call65 to [32 x i8]*
  %mul66 = mul i64 %num_points.0, 1632
  %call67 = call i8* @CRYPTO_malloc(i64 %mul66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2087) #1
  %48 = bitcast i8* %call67 to [17 x [3 x [4 x i64]]]*
  br i1 %cmp62, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %if.then.61
  %add = mul i64 %num_points.0, 544
  %mul71 = add i64 %add, 32
  %call72 = call i8* @CRYPTO_malloc(i64 %mul71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2090) #1
  %49 = bitcast i8* %call72 to [4 x i64]*
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.69, %if.then.61
  %tmp_smallfelems.0 = phi [4 x i64]* [ %49, %if.then.69 ], [ null, %if.then.61 ]
  %cmp74 = icmp eq i8* %call65, null
  %cmp76 = icmp eq i8* %call67, null
  %or.cond = or i1 %cmp74, %cmp76
  %cmp79 = icmp eq [4 x i64]* %tmp_smallfelems.0, null
  %or.cond321 = and i1 %cmp62, %cmp79
  %or.cond469 = or i1 %or.cond, %or.cond321
  br i1 %or.cond469, label %if.then.80, label %for.body.lr.ph

if.then.80:                                       ; preds = %if.end.73
  call void @ERR_put_error(i32 16, i32 231, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2093) #1
  br label %err

for.body.lr.ph:                                   ; preds = %if.end.73
  call void @llvm.memset.p0i8.i64(i8* %call65, i8 0, i64 %mul, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* %call67, i8 0, i64 %mul66, i32 8, i1 false)
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %arraydecay123 = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 0
  %arraydecay127 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 0
  %arraydecay131 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 0
  %arrayidx.i.523 = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 3
  %arrayidx6.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 2
  %arrayidx18.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 1
  %arrayidx.i.542 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 3
  %arrayidx6.i.544 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 2
  %arrayidx18.i.550 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 1
  %arrayidx.i.616 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 3
  %arrayidx6.i.618 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 2
  %arrayidx18.i.624 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 1
  %50 = bitcast [4 x i128]* %felem_x3.i to i8*
  %51 = bitcast [4 x i128]* %felem_y3.i to i8*
  %52 = bitcast [4 x i128]* %felem_z3.i to i8*
  %53 = bitcast [4 x i128]* %felem_x1.i to i8*
  %54 = bitcast [4 x i128]* %felem_y1.i to i8*
  %55 = bitcast [4 x i128]* %felem_z1.i to i8*
  %arraydecay.i.677 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x1.i, i64 0, i64 0
  %arrayidx4.i.i.681 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x1.i, i64 0, i64 1
  %arrayidx7.i.i.684 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x1.i, i64 0, i64 2
  %arrayidx10.i.i.687 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x1.i, i64 0, i64 3
  %arraydecay1.i.688 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y1.i, i64 0, i64 0
  %arrayidx4.i.15.i.692 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y1.i, i64 0, i64 1
  %arrayidx7.i.18.i.695 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y1.i, i64 0, i64 2
  %arrayidx10.i.21.i.698 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y1.i, i64 0, i64 3
  %arraydecay2.i.699 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z1.i, i64 0, i64 0
  %arrayidx4.i.25.i.703 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z1.i, i64 0, i64 1
  %arrayidx7.i.28.i.706 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z1.i, i64 0, i64 2
  %arrayidx10.i.31.i.709 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z1.i, i64 0, i64 3
  %arraydecay3.i.710 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x3.i, i64 0, i64 0
  %arraydecay4.i.711 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y3.i, i64 0, i64 0
  %arraydecay5.i.712 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z3.i, i64 0, i64 0
  %arrayidx.i.726 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x3.i, i64 0, i64 3
  %arrayidx6.i.728 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x3.i, i64 0, i64 2
  %arrayidx18.i.734 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x3.i, i64 0, i64 1
  %arrayidx.i.783 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y3.i, i64 0, i64 3
  %arrayidx6.i.785 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y3.i, i64 0, i64 2
  %arrayidx18.i.791 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y3.i, i64 0, i64 1
  %arrayidx.i.840 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z3.i, i64 0, i64 3
  %arrayidx6.i.842 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z3.i, i64 0, i64 2
  %arrayidx18.i.848 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z3.i, i64 0, i64 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.255
  %conv1072 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.255 ]
  %i.01071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc256, %for.inc.255 ]
  %cmp87 = icmp eq i64 %conv1072, %num
  br i1 %cmp87, label %if.then.89, label %if.else.91

if.then.89:                                       ; preds = %for.body
  %call90 = call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* %group) #1
  br label %if.end.95

if.else.91:                                       ; preds = %for.body
  %arrayidx92 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %conv1072
  %56 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx92, align 8, !tbaa !18
  %arrayidx94 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalars, i64 %conv1072
  %57 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx94, align 8, !tbaa !18
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.91, %if.then.89
  %p.0 = phi %struct.ec_point_st* [ %call90, %if.then.89 ], [ %56, %if.else.91 ]
  %p_scalar.0 = phi %struct.bignum_st* [ %scalar, %if.then.89 ], [ %57, %if.else.91 ]
  %cmp96 = icmp ne %struct.bignum_st* %p_scalar.0, null
  %cmp99 = icmp ne %struct.ec_point_st* %p.0, null
  %or.cond322 = and i1 %cmp99, %cmp96
  br i1 %or.cond322, label %if.then.101, label %for.inc.255

if.then.101:                                      ; preds = %if.end.95
  %call102 = call i32 @BN_num_bits(%struct.bignum_st* %p_scalar.0) #1
  %cmp103 = icmp sgt i32 %call102, 256
  br i1 %cmp103, label %if.then.108, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %if.then.101
  %call106 = call i32 @BN_is_negative(%struct.bignum_st* %p_scalar.0) #1
  %tobool107 = icmp eq i32 %call106, 0
  br i1 %tobool107, label %if.else.115, label %if.then.108

if.then.108:                                      ; preds = %lor.lhs.false.105, %if.then.101
  %58 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !20
  %call109 = call i32 @BN_nnmod(%struct.bignum_st* %call18, %struct.bignum_st* %p_scalar.0, %struct.bignum_st* %58, %struct.bignum_ctx* %ctx) #1
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.108
  call void @ERR_put_error(i32 16, i32 231, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2127) #1
  br label %err

if.end.112:                                       ; preds = %if.then.108
  %call114 = call i32 @BN_bn2bin(%struct.bignum_st* %call18, i8* %1) #1
  br label %if.end.118

if.else.115:                                      ; preds = %lor.lhs.false.105
  %call117 = call i32 @BN_bn2bin(%struct.bignum_st* %p_scalar.0, i8* %1) #1
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.end.112
  %num_bytes.0 = phi i32 [ %call114, %if.end.112 ], [ %call117, %if.else.115 ]
  %cmp.9.i = icmp eq i32 %num_bytes.0, 0
  br i1 %cmp.9.i, label %flip_endian.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.118
  %sub.i = add i32 %num_bytes.0, -1
  %xtraiter1167 = and i32 %num_bytes.0, 3
  %lcmp.mod1168 = icmp eq i32 %xtraiter1167, 0
  br i1 %lcmp.mod1168, label %for.body.lr.ph.i.split, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol, %for.body.i.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ 0, %for.body.i.prol.preheader ]
  %prol.iter1169 = phi i32 [ %prol.iter1169.sub, %for.body.i.prol ], [ %xtraiter1167, %for.body.i.prol.preheader ]
  %59 = trunc i64 %indvars.iv.i.prol to i32
  %sub1.i.prol = sub i32 %sub.i, %59
  %idxprom.i.prol = zext i32 %sub1.i.prol to i64
  %arrayidx.i.prol = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.prol
  %60 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !17
  %arrayidx3.i.prol = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 %conv1072, i64 %indvars.iv.i.prol
  store i8 %60, i8* %arrayidx3.i.prol, align 1, !tbaa !17
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter1169.sub = add i32 %prol.iter1169, -1
  %prol.iter1169.cmp = icmp eq i32 %prol.iter1169.sub, 0
  br i1 %prol.iter1169.cmp, label %for.body.lr.ph.i.split.loopexit, label %for.body.i.prol, !llvm.loop !21

for.body.lr.ph.i.split.loopexit:                  ; preds = %for.body.i.prol
  %indvars.iv.next.i.prol.lcssa = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  br label %for.body.lr.ph.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i, %for.body.lr.ph.i.split.loopexit
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol.lcssa, %for.body.lr.ph.i.split.loopexit ]
  %61 = icmp ult i32 %sub.i, 3
  br i1 %61, label %flip_endian.exit.loopexit, label %for.body.lr.ph.i.split.split

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.split.split ], [ %indvars.iv.next.i.3, %for.body.i ]
  %62 = trunc i64 %indvars.iv.i to i32
  %sub1.i = sub i32 %sub.i, %62
  %idxprom.i = zext i32 %sub1.i to i64
  %arrayidx.i = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i
  %63 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %arrayidx3.i = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 %conv1072, i64 %indvars.iv.i
  store i8 %63, i8* %arrayidx3.i, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %64 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %64
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.1
  %65 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !17
  %arrayidx3.i.1 = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 %conv1072, i64 %indvars.iv.next.i
  store i8 %65, i8* %arrayidx3.i.1, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %66 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %66
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.2
  %67 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !17
  %arrayidx3.i.2 = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 %conv1072, i64 %indvars.iv.next.i.1
  store i8 %67, i8* %arrayidx3.i.2, align 1, !tbaa !17
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %68 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %68
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.3
  %69 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !17
  %arrayidx3.i.3 = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 %conv1072, i64 %indvars.iv.next.i.2
  store i8 %69, i8* %arrayidx3.i.3, align 1, !tbaa !17
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv1073.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond1074.3 = icmp eq i32 %lftr.wideiv1073.3, %num_bytes.0
  br i1 %exitcond1074.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %flip_endian.exit.loopexit, %if.end.118
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 2
  %70 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call124 = call fastcc i32 @BN_to_felem(i128* %arraydecay123, %struct.bignum_st* %70)
  %tobool125 = icmp eq i32 %call124, 0
  br i1 %tobool125, label %err.loopexit, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %flip_endian.exit
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 3
  %71 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call128 = call fastcc i32 @BN_to_felem(i128* %arraydecay127, %struct.bignum_st* %71)
  %tobool129 = icmp eq i32 %call128, 0
  br i1 %tobool129, label %err.loopexit, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.126
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 4
  %72 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call132 = call fastcc i32 @BN_to_felem(i128* %arraydecay131, %struct.bignum_st* %72)
  %tobool133 = icmp eq i32 %call132, 0
  br i1 %tobool133, label %err.loopexit, label %if.end.135

if.end.135:                                       ; preds = %lor.lhs.false.130
  %arraydecay140 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 0
  %73 = load i128, i128* %arrayidx.i.523, align 16, !tbaa !2
  %add.i = add i128 %73, 18446744069414584320
  %74 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %74, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %74, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %75 = load i128, i128* %arraydecay123, align 16, !tbaa !2
  %add16.i = add i128 %75, 18446744073709551615
  %76 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %76, 1298074214633706907132628377272319
  %shr22.i = lshr i128 %add8.i, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i, 18446744073709551615
  %sub.i.524 = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i.524, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %add50.i = add i128 %add16.i, %conv48.i
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %sub54.i = sub i128 %add19.i, %shl52.i
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %conv86.i = trunc i128 %sub70.i to i64
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %conv96.i = trunc i128 %add84.i to i64
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv106.i = trunc i128 %add94.i to i64
  store i64 %conv86.i, i64* %arraydecay140, align 8, !tbaa !6
  %arrayidx114.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 1
  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !6
  %arrayidx117.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 2
  store i64 %conv106.i, i64* %arrayidx117.i, align 8, !tbaa !6
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 3
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6
  %arraydecay146 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 0
  %77 = load i128, i128* %arrayidx.i.542, align 16, !tbaa !2
  %add.i.543 = add i128 %77, 18446744069414584320
  %78 = load i128, i128* %arrayidx6.i.544, align 16, !tbaa !2
  %shr.i.545 = lshr i128 %78, 64
  %add8.i.546 = add i128 %add.i.543, %shr.i.545
  %conv12.i.547 = and i128 %78, 18446744073709551615
  %add13.i.548 = add nuw nsw i128 %conv12.i.547, 18446673704965373952
  %79 = load i128, i128* %arraydecay127, align 16, !tbaa !2
  %add16.i.549 = add i128 %79, 18446744073709551615
  %80 = load i128, i128* %arrayidx18.i.550, align 16, !tbaa !2
  %add19.i.551 = add i128 %80, 1298074214633706907132628377272319
  %shr22.i.552 = lshr i128 %add8.i.546, 64
  %conv23.i.553 = trunc i128 %shr22.i.552 to i64
  %conv26.i.554 = and i128 %add8.i.546, 18446744073709551615
  %sub.i.555 = sub nsw i128 %conv26.i.554, %shr22.i.552
  %shl.i.556 = shl nuw nsw i128 %shr22.i.552, 32
  %add32.i.557 = add nsw i128 %sub.i.555, %shl.i.556
  %shr34.i.558 = lshr i128 %add32.i.557, 64
  %conv35.i.559 = trunc i128 %shr34.i.558 to i64
  %add36.i.560 = add i64 %conv35.i.559, %conv23.i.553
  %conv39.i.561 = and i128 %add32.i.557, 18446744073709551615
  %sub43.i.562 = sub nsw i128 %conv39.i.561, %shr34.i.558
  %shl45.i.563 = shl nuw nsw i128 %shr34.i.558, 32
  %add47.i.564 = add nsw i128 %sub43.i.562, %shl45.i.563
  %conv48.i.565 = zext i64 %add36.i.560 to i128
  %add50.i.566 = add i128 %add16.i.549, %conv48.i.565
  %shl52.i.567 = shl nuw nsw i128 %conv48.i.565, 32
  %sub54.i.568 = sub i128 %add19.i.551, %shl52.i.567
  %shr56.i.569 = lshr i128 %add47.i.564, 64
  %conv57.i.570 = trunc i128 %shr56.i.569 to i64
  %sub58.i.571 = sub i64 0, %conv57.i.570
  %conv60.i.572 = trunc i128 %add47.i.564 to i64
  %and.i.573 = and i64 %conv60.i.572, 9223372036854775807
  %neg.i.574 = sub nsw i64 9223372032559808512, %and.i.573
  %sub62177.i.575 = and i64 %neg.i.574, %conv60.i.572
  %and66.i.576 = ashr i64 %sub62177.i.575, 63
  %or.i.577 = or i64 %and66.i.576, %sub58.i.571
  %conv68.i.578 = zext i64 %or.i.577 to i128
  %sub70.i.579 = sub i128 %add50.i.566, %conv68.i.578
  %and71.i.580 = and i64 %or.i.577, 4294967295
  %conv72.i.581 = zext i64 %and71.i.580 to i128
  %sub74.i.582 = sub i128 %sub54.i.568, %conv72.i.581
  %and75.i.583 = and i64 %or.i.577, -4294967295
  %conv76.i.584 = zext i64 %and75.i.583 to i128
  %sub78.i.585 = sub nsw i128 %add47.i.564, %conv76.i.584
  %shr80.i.586 = lshr i128 %sub70.i.579, 64
  %add84.i.587 = add i128 %sub74.i.582, %shr80.i.586
  %conv86.i.588 = trunc i128 %sub70.i.579 to i64
  %shr90.i.589 = lshr i128 %add84.i.587, 64
  %add94.i.590 = add nuw nsw i128 %add13.i.548, %shr90.i.589
  %conv96.i.591 = trunc i128 %add84.i.587 to i64
  %shr100.i.592 = lshr i128 %add94.i.590, 64
  %add104.i.593 = add nsw i128 %sub78.i.585, %shr100.i.592
  %conv106.i.594 = trunc i128 %add94.i.590 to i64
  store i64 %conv86.i.588, i64* %arraydecay146, align 8, !tbaa !6
  %arrayidx114.i.595 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 1
  store i64 %conv96.i.591, i64* %arrayidx114.i.595, align 8, !tbaa !6
  %arrayidx117.i.596 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 2
  store i64 %conv106.i.594, i64* %arrayidx117.i.596, align 8, !tbaa !6
  %conv119.i.597 = trunc i128 %add104.i.593 to i64
  %arrayidx120.i.598 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 3
  store i64 %conv119.i.597, i64* %arrayidx120.i.598, align 8, !tbaa !6
  %arraydecay152 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 0
  %81 = load i128, i128* %arrayidx.i.616, align 16, !tbaa !2
  %add.i.617 = add i128 %81, 18446744069414584320
  %82 = load i128, i128* %arrayidx6.i.618, align 16, !tbaa !2
  %shr.i.619 = lshr i128 %82, 64
  %add8.i.620 = add i128 %add.i.617, %shr.i.619
  %conv12.i.621 = and i128 %82, 18446744073709551615
  %add13.i.622 = add nuw nsw i128 %conv12.i.621, 18446673704965373952
  %83 = load i128, i128* %arraydecay131, align 16, !tbaa !2
  %add16.i.623 = add i128 %83, 18446744073709551615
  %84 = load i128, i128* %arrayidx18.i.624, align 16, !tbaa !2
  %add19.i.625 = add i128 %84, 1298074214633706907132628377272319
  %shr22.i.626 = lshr i128 %add8.i.620, 64
  %conv23.i.627 = trunc i128 %shr22.i.626 to i64
  %conv26.i.628 = and i128 %add8.i.620, 18446744073709551615
  %sub.i.629 = sub nsw i128 %conv26.i.628, %shr22.i.626
  %shl.i.630 = shl nuw nsw i128 %shr22.i.626, 32
  %add32.i.631 = add nsw i128 %sub.i.629, %shl.i.630
  %shr34.i.632 = lshr i128 %add32.i.631, 64
  %conv35.i.633 = trunc i128 %shr34.i.632 to i64
  %add36.i.634 = add i64 %conv35.i.633, %conv23.i.627
  %conv39.i.635 = and i128 %add32.i.631, 18446744073709551615
  %sub43.i.636 = sub nsw i128 %conv39.i.635, %shr34.i.632
  %shl45.i.637 = shl nuw nsw i128 %shr34.i.632, 32
  %add47.i.638 = add nsw i128 %sub43.i.636, %shl45.i.637
  %conv48.i.639 = zext i64 %add36.i.634 to i128
  %add50.i.640 = add i128 %add16.i.623, %conv48.i.639
  %shl52.i.641 = shl nuw nsw i128 %conv48.i.639, 32
  %sub54.i.642 = sub i128 %add19.i.625, %shl52.i.641
  %shr56.i.643 = lshr i128 %add47.i.638, 64
  %conv57.i.644 = trunc i128 %shr56.i.643 to i64
  %sub58.i.645 = sub i64 0, %conv57.i.644
  %conv60.i.646 = trunc i128 %add47.i.638 to i64
  %and.i.647 = and i64 %conv60.i.646, 9223372036854775807
  %neg.i.648 = sub nsw i64 9223372032559808512, %and.i.647
  %sub62177.i.649 = and i64 %neg.i.648, %conv60.i.646
  %and66.i.650 = ashr i64 %sub62177.i.649, 63
  %or.i.651 = or i64 %and66.i.650, %sub58.i.645
  %conv68.i.652 = zext i64 %or.i.651 to i128
  %sub70.i.653 = sub i128 %add50.i.640, %conv68.i.652
  %and71.i.654 = and i64 %or.i.651, 4294967295
  %conv72.i.655 = zext i64 %and71.i.654 to i128
  %sub74.i.656 = sub i128 %sub54.i.642, %conv72.i.655
  %and75.i.657 = and i64 %or.i.651, -4294967295
  %conv76.i.658 = zext i64 %and75.i.657 to i128
  %sub78.i.659 = sub nsw i128 %add47.i.638, %conv76.i.658
  %shr80.i.660 = lshr i128 %sub70.i.653, 64
  %add84.i.661 = add i128 %sub74.i.656, %shr80.i.660
  %conv86.i.662 = trunc i128 %sub70.i.653 to i64
  %shr90.i.663 = lshr i128 %add84.i.661, 64
  %add94.i.664 = add nuw nsw i128 %add13.i.622, %shr90.i.663
  %conv96.i.665 = trunc i128 %add84.i.661 to i64
  %shr100.i.666 = lshr i128 %add94.i.664, 64
  %add104.i.667 = add nsw i128 %sub78.i.659, %shr100.i.666
  %conv106.i.668 = trunc i128 %add94.i.664 to i64
  store i64 %conv86.i.662, i64* %arraydecay152, align 8, !tbaa !6
  %arrayidx114.i.669 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 1
  store i64 %conv96.i.665, i64* %arrayidx114.i.669, align 8, !tbaa !6
  %arrayidx117.i.670 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 2
  store i64 %conv106.i.668, i64* %arrayidx117.i.670, align 8, !tbaa !6
  %conv119.i.671 = trunc i128 %add104.i.667 to i64
  %arrayidx120.i.672 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 3
  store i64 %conv119.i.671, i64* %arrayidx120.i.672, align 8, !tbaa !6
  br label %for.body.157

for.body.157:                                     ; preds = %for.inc, %if.end.135
  %indvars.iv = phi i64 [ 2, %if.end.135 ], [ %indvars.iv.next, %for.inc ]
  %85 = trunc i64 %indvars.iv to i32
  %and = and i32 %85, 1
  %tobool158 = icmp eq i32 %and, 0
  %arraydecay165 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 0
  %arraydecay171 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 0
  %arraydecay177 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 0
  br i1 %tobool158, label %if.else.213, label %if.then.159

if.then.159:                                      ; preds = %for.body.157
  %86 = add nsw i64 %indvars.iv, -1
  %arraydecay198 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %86, i64 0, i64 0
  %arraydecay205 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %86, i64 1, i64 0
  %arraydecay212 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %86, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %50) #1
  call void @llvm.lifetime.start(i64 64, i8* %51) #1
  call void @llvm.lifetime.start(i64 64, i8* %52) #1
  call void @llvm.lifetime.start(i64 64, i8* %53) #1
  call void @llvm.lifetime.start(i64 64, i8* %54) #1
  call void @llvm.lifetime.start(i64 64, i8* %55) #1
  %87 = load i64, i64* %arraydecay140, align 8, !tbaa !6
  %conv.i.i = zext i64 %87 to i128
  store i128 %conv.i.i, i128* %arraydecay.i.677, align 16, !tbaa !2
  %88 = load i64, i64* %arrayidx114.i, align 8, !tbaa !6
  %conv3.i.i = zext i64 %88 to i128
  store i128 %conv3.i.i, i128* %arrayidx4.i.i.681, align 16, !tbaa !2
  %89 = load i64, i64* %arrayidx117.i, align 8, !tbaa !6
  %conv6.i.i = zext i64 %89 to i128
  store i128 %conv6.i.i, i128* %arrayidx7.i.i.684, align 16, !tbaa !2
  %90 = load i64, i64* %arrayidx120.i, align 8, !tbaa !6
  %conv9.i.i = zext i64 %90 to i128
  store i128 %conv9.i.i, i128* %arrayidx10.i.i.687, align 16, !tbaa !2
  %91 = load i64, i64* %arraydecay146, align 8, !tbaa !6
  %conv.i.12.i = zext i64 %91 to i128
  store i128 %conv.i.12.i, i128* %arraydecay1.i.688, align 16, !tbaa !2
  %92 = load i64, i64* %arrayidx114.i.595, align 8, !tbaa !6
  %conv3.i.14.i = zext i64 %92 to i128
  store i128 %conv3.i.14.i, i128* %arrayidx4.i.15.i.692, align 16, !tbaa !2
  %93 = load i64, i64* %arrayidx117.i.596, align 8, !tbaa !6
  %conv6.i.17.i = zext i64 %93 to i128
  store i128 %conv6.i.17.i, i128* %arrayidx7.i.18.i.695, align 16, !tbaa !2
  %94 = load i64, i64* %arrayidx120.i.598, align 8, !tbaa !6
  %conv9.i.20.i = zext i64 %94 to i128
  store i128 %conv9.i.20.i, i128* %arrayidx10.i.21.i.698, align 16, !tbaa !2
  %95 = load i64, i64* %arraydecay152, align 8, !tbaa !6
  %conv.i.22.i = zext i64 %95 to i128
  store i128 %conv.i.22.i, i128* %arraydecay2.i.699, align 16, !tbaa !2
  %96 = load i64, i64* %arrayidx114.i.669, align 8, !tbaa !6
  %conv3.i.24.i = zext i64 %96 to i128
  store i128 %conv3.i.24.i, i128* %arrayidx4.i.25.i.703, align 16, !tbaa !2
  %97 = load i64, i64* %arrayidx117.i.670, align 8, !tbaa !6
  %conv6.i.27.i = zext i64 %97 to i128
  store i128 %conv6.i.27.i, i128* %arrayidx7.i.28.i.706, align 16, !tbaa !2
  %98 = load i64, i64* %arrayidx120.i.672, align 8, !tbaa !6
  %conv9.i.30.i = zext i64 %98 to i128
  store i128 %conv9.i.30.i, i128* %arrayidx10.i.31.i.709, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i.710, i128* %arraydecay4.i.711, i128* %arraydecay5.i.712, i128* %arraydecay.i.677, i128* %arraydecay1.i.688, i128* %arraydecay2.i.699, i32 0, i64* %arraydecay198, i64* %arraydecay205, i64* %arraydecay212) #1
  %99 = load i128, i128* %arrayidx.i.726, align 16, !tbaa !2
  %add.i.898 = add i128 %99, 18446744069414584320
  %100 = load i128, i128* %arrayidx6.i.728, align 16, !tbaa !2
  %shr.i.900 = lshr i128 %100, 64
  %add8.i.901 = add i128 %add.i.898, %shr.i.900
  %conv12.i.902 = and i128 %100, 18446744073709551615
  %add13.i.903 = add nuw nsw i128 %conv12.i.902, 18446673704965373952
  %101 = load i128, i128* %arraydecay3.i.710, align 16, !tbaa !2
  %add16.i.904 = add i128 %101, 18446744073709551615
  %102 = load i128, i128* %arrayidx18.i.734, align 16, !tbaa !2
  %add19.i.906 = add i128 %102, 1298074214633706907132628377272319
  %shr22.i.907 = lshr i128 %add8.i.901, 64
  %conv23.i.908 = trunc i128 %shr22.i.907 to i64
  %conv26.i.909 = and i128 %add8.i.901, 18446744073709551615
  %sub.i.910 = sub nsw i128 %conv26.i.909, %shr22.i.907
  %shl.i.911 = shl nuw nsw i128 %shr22.i.907, 32
  %add32.i.912 = add nsw i128 %sub.i.910, %shl.i.911
  %shr34.i.913 = lshr i128 %add32.i.912, 64
  %conv35.i.914 = trunc i128 %shr34.i.913 to i64
  %add36.i.915 = add i64 %conv35.i.914, %conv23.i.908
  %conv39.i.916 = and i128 %add32.i.912, 18446744073709551615
  %sub43.i.917 = sub nsw i128 %conv39.i.916, %shr34.i.913
  %shl45.i.918 = shl nuw nsw i128 %shr34.i.913, 32
  %add47.i.919 = add nsw i128 %sub43.i.917, %shl45.i.918
  %conv48.i.920 = zext i64 %add36.i.915 to i128
  %add50.i.921 = add i128 %add16.i.904, %conv48.i.920
  %shl52.i.922 = shl nuw nsw i128 %conv48.i.920, 32
  %sub54.i.923 = sub i128 %add19.i.906, %shl52.i.922
  %shr56.i.924 = lshr i128 %add47.i.919, 64
  %conv57.i.925 = trunc i128 %shr56.i.924 to i64
  %sub58.i.926 = sub i64 0, %conv57.i.925
  %conv60.i.927 = trunc i128 %add47.i.919 to i64
  %and.i.928 = and i64 %conv60.i.927, 9223372036854775807
  %neg.i.929 = sub nsw i64 9223372032559808512, %and.i.928
  %sub62177.i.930 = and i64 %neg.i.929, %conv60.i.927
  %and66.i.931 = ashr i64 %sub62177.i.930, 63
  %or.i.932 = or i64 %and66.i.931, %sub58.i.926
  %conv68.i.933 = zext i64 %or.i.932 to i128
  %sub70.i.934 = sub i128 %add50.i.921, %conv68.i.933
  %and71.i.935 = and i64 %or.i.932, 4294967295
  %conv72.i.936 = zext i64 %and71.i.935 to i128
  %sub74.i.937 = sub i128 %sub54.i.923, %conv72.i.936
  %and75.i.938 = and i64 %or.i.932, -4294967295
  %conv76.i.939 = zext i64 %and75.i.938 to i128
  %sub78.i.940 = sub nsw i128 %add47.i.919, %conv76.i.939
  %shr80.i.941 = lshr i128 %sub70.i.934, 64
  %add84.i.942 = add i128 %sub74.i.937, %shr80.i.941
  %conv86.i.943 = trunc i128 %sub70.i.934 to i64
  %shr90.i.944 = lshr i128 %add84.i.942, 64
  %add94.i.945 = add nuw nsw i128 %add13.i.903, %shr90.i.944
  %conv96.i.946 = trunc i128 %add84.i.942 to i64
  %shr100.i.947 = lshr i128 %add94.i.945, 64
  %add104.i.948 = add nsw i128 %sub78.i.940, %shr100.i.947
  %conv106.i.949 = trunc i128 %add94.i.945 to i64
  store i64 %conv86.i.943, i64* %arraydecay165, align 8, !tbaa !6
  %arrayidx114.i.950 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 1
  store i64 %conv96.i.946, i64* %arrayidx114.i.950, align 8, !tbaa !6
  %arrayidx117.i.951 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 2
  store i64 %conv106.i.949, i64* %arrayidx117.i.951, align 8, !tbaa !6
  %conv119.i.952 = trunc i128 %add104.i.948 to i64
  %arrayidx120.i.953 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 3
  store i64 %conv119.i.952, i64* %arrayidx120.i.953, align 8, !tbaa !6
  %103 = load i128, i128* %arrayidx.i.783, align 16, !tbaa !2
  %add.i.955 = add i128 %103, 18446744069414584320
  %104 = load i128, i128* %arrayidx6.i.785, align 16, !tbaa !2
  %shr.i.957 = lshr i128 %104, 64
  %add8.i.958 = add i128 %add.i.955, %shr.i.957
  %conv12.i.959 = and i128 %104, 18446744073709551615
  %add13.i.960 = add nuw nsw i128 %conv12.i.959, 18446673704965373952
  %105 = load i128, i128* %arraydecay4.i.711, align 16, !tbaa !2
  %add16.i.961 = add i128 %105, 18446744073709551615
  %106 = load i128, i128* %arrayidx18.i.791, align 16, !tbaa !2
  %add19.i.963 = add i128 %106, 1298074214633706907132628377272319
  %shr22.i.964 = lshr i128 %add8.i.958, 64
  %conv23.i.965 = trunc i128 %shr22.i.964 to i64
  %conv26.i.966 = and i128 %add8.i.958, 18446744073709551615
  %sub.i.967 = sub nsw i128 %conv26.i.966, %shr22.i.964
  %shl.i.968 = shl nuw nsw i128 %shr22.i.964, 32
  %add32.i.969 = add nsw i128 %sub.i.967, %shl.i.968
  %shr34.i.970 = lshr i128 %add32.i.969, 64
  %conv35.i.971 = trunc i128 %shr34.i.970 to i64
  %add36.i.972 = add i64 %conv35.i.971, %conv23.i.965
  %conv39.i.973 = and i128 %add32.i.969, 18446744073709551615
  %sub43.i.974 = sub nsw i128 %conv39.i.973, %shr34.i.970
  %shl45.i.975 = shl nuw nsw i128 %shr34.i.970, 32
  %add47.i.976 = add nsw i128 %sub43.i.974, %shl45.i.975
  %conv48.i.977 = zext i64 %add36.i.972 to i128
  %add50.i.978 = add i128 %add16.i.961, %conv48.i.977
  %shl52.i.979 = shl nuw nsw i128 %conv48.i.977, 32
  %sub54.i.980 = sub i128 %add19.i.963, %shl52.i.979
  %shr56.i.981 = lshr i128 %add47.i.976, 64
  %conv57.i.982 = trunc i128 %shr56.i.981 to i64
  %sub58.i.983 = sub i64 0, %conv57.i.982
  %conv60.i.984 = trunc i128 %add47.i.976 to i64
  %and.i.985 = and i64 %conv60.i.984, 9223372036854775807
  %neg.i.986 = sub nsw i64 9223372032559808512, %and.i.985
  %sub62177.i.987 = and i64 %neg.i.986, %conv60.i.984
  %and66.i.988 = ashr i64 %sub62177.i.987, 63
  %or.i.989 = or i64 %and66.i.988, %sub58.i.983
  %conv68.i.990 = zext i64 %or.i.989 to i128
  %sub70.i.991 = sub i128 %add50.i.978, %conv68.i.990
  %and71.i.992 = and i64 %or.i.989, 4294967295
  %conv72.i.993 = zext i64 %and71.i.992 to i128
  %sub74.i.994 = sub i128 %sub54.i.980, %conv72.i.993
  %and75.i.995 = and i64 %or.i.989, -4294967295
  %conv76.i.996 = zext i64 %and75.i.995 to i128
  %sub78.i.997 = sub nsw i128 %add47.i.976, %conv76.i.996
  %shr80.i.998 = lshr i128 %sub70.i.991, 64
  %add84.i.999 = add i128 %sub74.i.994, %shr80.i.998
  %conv86.i.1000 = trunc i128 %sub70.i.991 to i64
  %shr90.i.1001 = lshr i128 %add84.i.999, 64
  %add94.i.1002 = add nuw nsw i128 %add13.i.960, %shr90.i.1001
  %conv96.i.1003 = trunc i128 %add84.i.999 to i64
  %shr100.i.1004 = lshr i128 %add94.i.1002, 64
  %add104.i.1005 = add nsw i128 %sub78.i.997, %shr100.i.1004
  %conv106.i.1006 = trunc i128 %add94.i.1002 to i64
  store i64 %conv86.i.1000, i64* %arraydecay171, align 8, !tbaa !6
  %arrayidx114.i.1007 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 1
  store i64 %conv96.i.1003, i64* %arrayidx114.i.1007, align 8, !tbaa !6
  %arrayidx117.i.1008 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 2
  store i64 %conv106.i.1006, i64* %arrayidx117.i.1008, align 8, !tbaa !6
  %conv119.i.1009 = trunc i128 %add104.i.1005 to i64
  %arrayidx120.i.1010 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 3
  store i64 %conv119.i.1009, i64* %arrayidx120.i.1010, align 8, !tbaa !6
  %107 = load i128, i128* %arrayidx.i.840, align 16, !tbaa !2
  %add.i.1012 = add i128 %107, 18446744069414584320
  %108 = load i128, i128* %arrayidx6.i.842, align 16, !tbaa !2
  %shr.i.1014 = lshr i128 %108, 64
  %add8.i.1015 = add i128 %add.i.1012, %shr.i.1014
  %conv12.i.1016 = and i128 %108, 18446744073709551615
  %add13.i.1017 = add nuw nsw i128 %conv12.i.1016, 18446673704965373952
  %109 = load i128, i128* %arraydecay5.i.712, align 16, !tbaa !2
  %add16.i.1018 = add i128 %109, 18446744073709551615
  %110 = load i128, i128* %arrayidx18.i.848, align 16, !tbaa !2
  %add19.i.1020 = add i128 %110, 1298074214633706907132628377272319
  %shr22.i.1021 = lshr i128 %add8.i.1015, 64
  %conv23.i.1022 = trunc i128 %shr22.i.1021 to i64
  %conv26.i.1023 = and i128 %add8.i.1015, 18446744073709551615
  %sub.i.1024 = sub nsw i128 %conv26.i.1023, %shr22.i.1021
  %shl.i.1025 = shl nuw nsw i128 %shr22.i.1021, 32
  %add32.i.1026 = add nsw i128 %sub.i.1024, %shl.i.1025
  %shr34.i.1027 = lshr i128 %add32.i.1026, 64
  %conv35.i.1028 = trunc i128 %shr34.i.1027 to i64
  %add36.i.1029 = add i64 %conv35.i.1028, %conv23.i.1022
  %conv39.i.1030 = and i128 %add32.i.1026, 18446744073709551615
  %sub43.i.1031 = sub nsw i128 %conv39.i.1030, %shr34.i.1027
  %shl45.i.1032 = shl nuw nsw i128 %shr34.i.1027, 32
  %add47.i.1033 = add nsw i128 %sub43.i.1031, %shl45.i.1032
  %conv48.i.1034 = zext i64 %add36.i.1029 to i128
  %add50.i.1035 = add i128 %add16.i.1018, %conv48.i.1034
  %shl52.i.1036 = shl nuw nsw i128 %conv48.i.1034, 32
  %sub54.i.1037 = sub i128 %add19.i.1020, %shl52.i.1036
  %shr56.i.1038 = lshr i128 %add47.i.1033, 64
  %conv57.i.1039 = trunc i128 %shr56.i.1038 to i64
  %sub58.i.1040 = sub i64 0, %conv57.i.1039
  %conv60.i.1041 = trunc i128 %add47.i.1033 to i64
  %and.i.1042 = and i64 %conv60.i.1041, 9223372036854775807
  %neg.i.1043 = sub nsw i64 9223372032559808512, %and.i.1042
  %sub62177.i.1044 = and i64 %neg.i.1043, %conv60.i.1041
  %and66.i.1045 = ashr i64 %sub62177.i.1044, 63
  %or.i.1046 = or i64 %and66.i.1045, %sub58.i.1040
  %conv68.i.1047 = zext i64 %or.i.1046 to i128
  %sub70.i.1048 = sub i128 %add50.i.1035, %conv68.i.1047
  %and71.i.1049 = and i64 %or.i.1046, 4294967295
  %conv72.i.1050 = zext i64 %and71.i.1049 to i128
  %sub74.i.1051 = sub i128 %sub54.i.1037, %conv72.i.1050
  %and75.i.1052 = and i64 %or.i.1046, -4294967295
  %conv76.i.1053 = zext i64 %and75.i.1052 to i128
  %sub78.i.1054 = sub nsw i128 %add47.i.1033, %conv76.i.1053
  %shr80.i.1055 = lshr i128 %sub70.i.1048, 64
  %add84.i.1056 = add i128 %sub74.i.1051, %shr80.i.1055
  %conv86.i.1057 = trunc i128 %sub70.i.1048 to i64
  %shr90.i.1058 = lshr i128 %add84.i.1056, 64
  %add94.i.1059 = add nuw nsw i128 %add13.i.1017, %shr90.i.1058
  %conv96.i.1060 = trunc i128 %add84.i.1056 to i64
  %shr100.i.1061 = lshr i128 %add94.i.1059, 64
  %add104.i.1062 = add nsw i128 %sub78.i.1054, %shr100.i.1061
  %conv106.i.1063 = trunc i128 %add94.i.1059 to i64
  store i64 %conv86.i.1057, i64* %arraydecay177, align 8, !tbaa !6
  %arrayidx114.i.1064 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 1
  store i64 %conv96.i.1060, i64* %arrayidx114.i.1064, align 8, !tbaa !6
  %arrayidx117.i.1065 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 2
  store i64 %conv106.i.1063, i64* %arrayidx117.i.1065, align 8, !tbaa !6
  %conv119.i.1066 = trunc i128 %add104.i.1062 to i64
  %arrayidx120.i.1067 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 3
  store i64 %conv119.i.1066, i64* %arrayidx120.i.1067, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %55) #1
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  call void @llvm.lifetime.end(i64 64, i8* %53) #1
  call void @llvm.lifetime.end(i64 64, i8* %52) #1
  call void @llvm.lifetime.end(i64 64, i8* %51) #1
  call void @llvm.lifetime.end(i64 64, i8* %50) #1
  br label %for.inc

if.else.213:                                      ; preds = %for.body.157
  %div = sdiv i32 %85, 2
  %idxprom232 = sext i32 %div to i64
  %arraydecay237 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 0
  %arraydecay244 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 0
  %arraydecay251 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %50) #1
  call void @llvm.lifetime.start(i64 64, i8* %51) #1
  call void @llvm.lifetime.start(i64 64, i8* %52) #1
  call void @llvm.lifetime.start(i64 64, i8* %53) #1
  call void @llvm.lifetime.start(i64 64, i8* %54) #1
  call void @llvm.lifetime.start(i64 64, i8* %55) #1
  %111 = load i64, i64* %arraydecay237, align 8, !tbaa !6
  %conv.i.i.678 = zext i64 %111 to i128
  store i128 %conv.i.i.678, i128* %arraydecay.i.677, align 16, !tbaa !2
  %arrayidx2.i.i.679 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 1
  %112 = load i64, i64* %arrayidx2.i.i.679, align 8, !tbaa !6
  %conv3.i.i.680 = zext i64 %112 to i128
  store i128 %conv3.i.i.680, i128* %arrayidx4.i.i.681, align 16, !tbaa !2
  %arrayidx5.i.i.682 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 2
  %113 = load i64, i64* %arrayidx5.i.i.682, align 8, !tbaa !6
  %conv6.i.i.683 = zext i64 %113 to i128
  store i128 %conv6.i.i.683, i128* %arrayidx7.i.i.684, align 16, !tbaa !2
  %arrayidx8.i.i.685 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 3
  %114 = load i64, i64* %arrayidx8.i.i.685, align 8, !tbaa !6
  %conv9.i.i.686 = zext i64 %114 to i128
  store i128 %conv9.i.i.686, i128* %arrayidx10.i.i.687, align 16, !tbaa !2
  %115 = load i64, i64* %arraydecay244, align 8, !tbaa !6
  %conv.i.12.i.689 = zext i64 %115 to i128
  store i128 %conv.i.12.i.689, i128* %arraydecay1.i.688, align 16, !tbaa !2
  %arrayidx2.i.13.i.690 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 1
  %116 = load i64, i64* %arrayidx2.i.13.i.690, align 8, !tbaa !6
  %conv3.i.14.i.691 = zext i64 %116 to i128
  store i128 %conv3.i.14.i.691, i128* %arrayidx4.i.15.i.692, align 16, !tbaa !2
  %arrayidx5.i.16.i.693 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 2
  %117 = load i64, i64* %arrayidx5.i.16.i.693, align 8, !tbaa !6
  %conv6.i.17.i.694 = zext i64 %117 to i128
  store i128 %conv6.i.17.i.694, i128* %arrayidx7.i.18.i.695, align 16, !tbaa !2
  %arrayidx8.i.19.i.696 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 3
  %118 = load i64, i64* %arrayidx8.i.19.i.696, align 8, !tbaa !6
  %conv9.i.20.i.697 = zext i64 %118 to i128
  store i128 %conv9.i.20.i.697, i128* %arrayidx10.i.21.i.698, align 16, !tbaa !2
  %119 = load i64, i64* %arraydecay251, align 8, !tbaa !6
  %conv.i.22.i.700 = zext i64 %119 to i128
  store i128 %conv.i.22.i.700, i128* %arraydecay2.i.699, align 16, !tbaa !2
  %arrayidx2.i.23.i.701 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 1
  %120 = load i64, i64* %arrayidx2.i.23.i.701, align 8, !tbaa !6
  %conv3.i.24.i.702 = zext i64 %120 to i128
  store i128 %conv3.i.24.i.702, i128* %arrayidx4.i.25.i.703, align 16, !tbaa !2
  %arrayidx5.i.26.i.704 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 2
  %121 = load i64, i64* %arrayidx5.i.26.i.704, align 8, !tbaa !6
  %conv6.i.27.i.705 = zext i64 %121 to i128
  store i128 %conv6.i.27.i.705, i128* %arrayidx7.i.28.i.706, align 16, !tbaa !2
  %arrayidx8.i.29.i.707 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 3
  %122 = load i64, i64* %arrayidx8.i.29.i.707, align 8, !tbaa !6
  %conv9.i.30.i.708 = zext i64 %122 to i128
  store i128 %conv9.i.30.i.708, i128* %arrayidx10.i.31.i.709, align 16, !tbaa !2
  call fastcc void @point_double(i128* %arraydecay3.i.710, i128* %arraydecay4.i.711, i128* %arraydecay5.i.712, i128* %arraydecay.i.677, i128* %arraydecay1.i.688, i128* %arraydecay2.i.699) #1
  %123 = load i128, i128* %arrayidx.i.726, align 16, !tbaa !2
  %add.i.727 = add i128 %123, 18446744069414584320
  %124 = load i128, i128* %arrayidx6.i.728, align 16, !tbaa !2
  %shr.i.729 = lshr i128 %124, 64
  %add8.i.730 = add i128 %add.i.727, %shr.i.729
  %conv12.i.731 = and i128 %124, 18446744073709551615
  %add13.i.732 = add nuw nsw i128 %conv12.i.731, 18446673704965373952
  %125 = load i128, i128* %arraydecay3.i.710, align 16, !tbaa !2
  %add16.i.733 = add i128 %125, 18446744073709551615
  %126 = load i128, i128* %arrayidx18.i.734, align 16, !tbaa !2
  %add19.i.735 = add i128 %126, 1298074214633706907132628377272319
  %shr22.i.736 = lshr i128 %add8.i.730, 64
  %conv23.i.737 = trunc i128 %shr22.i.736 to i64
  %conv26.i.738 = and i128 %add8.i.730, 18446744073709551615
  %sub.i.739 = sub nsw i128 %conv26.i.738, %shr22.i.736
  %shl.i.740 = shl nuw nsw i128 %shr22.i.736, 32
  %add32.i.741 = add nsw i128 %sub.i.739, %shl.i.740
  %shr34.i.742 = lshr i128 %add32.i.741, 64
  %conv35.i.743 = trunc i128 %shr34.i.742 to i64
  %add36.i.744 = add i64 %conv35.i.743, %conv23.i.737
  %conv39.i.745 = and i128 %add32.i.741, 18446744073709551615
  %sub43.i.746 = sub nsw i128 %conv39.i.745, %shr34.i.742
  %shl45.i.747 = shl nuw nsw i128 %shr34.i.742, 32
  %add47.i.748 = add nsw i128 %sub43.i.746, %shl45.i.747
  %conv48.i.749 = zext i64 %add36.i.744 to i128
  %add50.i.750 = add i128 %add16.i.733, %conv48.i.749
  %shl52.i.751 = shl nuw nsw i128 %conv48.i.749, 32
  %sub54.i.752 = sub i128 %add19.i.735, %shl52.i.751
  %shr56.i.753 = lshr i128 %add47.i.748, 64
  %conv57.i.754 = trunc i128 %shr56.i.753 to i64
  %sub58.i.755 = sub i64 0, %conv57.i.754
  %conv60.i.756 = trunc i128 %add47.i.748 to i64
  %and.i.757 = and i64 %conv60.i.756, 9223372036854775807
  %neg.i.758 = sub nsw i64 9223372032559808512, %and.i.757
  %sub62177.i.759 = and i64 %neg.i.758, %conv60.i.756
  %and66.i.760 = ashr i64 %sub62177.i.759, 63
  %or.i.761 = or i64 %and66.i.760, %sub58.i.755
  %conv68.i.762 = zext i64 %or.i.761 to i128
  %sub70.i.763 = sub i128 %add50.i.750, %conv68.i.762
  %and71.i.764 = and i64 %or.i.761, 4294967295
  %conv72.i.765 = zext i64 %and71.i.764 to i128
  %sub74.i.766 = sub i128 %sub54.i.752, %conv72.i.765
  %and75.i.767 = and i64 %or.i.761, -4294967295
  %conv76.i.768 = zext i64 %and75.i.767 to i128
  %sub78.i.769 = sub nsw i128 %add47.i.748, %conv76.i.768
  %shr80.i.770 = lshr i128 %sub70.i.763, 64
  %add84.i.771 = add i128 %sub74.i.766, %shr80.i.770
  %conv86.i.772 = trunc i128 %sub70.i.763 to i64
  %shr90.i.773 = lshr i128 %add84.i.771, 64
  %add94.i.774 = add nuw nsw i128 %add13.i.732, %shr90.i.773
  %conv96.i.775 = trunc i128 %add84.i.771 to i64
  %shr100.i.776 = lshr i128 %add94.i.774, 64
  %add104.i.777 = add nsw i128 %sub78.i.769, %shr100.i.776
  %conv106.i.778 = trunc i128 %add94.i.774 to i64
  store i64 %conv86.i.772, i64* %arraydecay165, align 8, !tbaa !6
  %arrayidx114.i.779 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 1
  store i64 %conv96.i.775, i64* %arrayidx114.i.779, align 8, !tbaa !6
  %arrayidx117.i.780 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 2
  store i64 %conv106.i.778, i64* %arrayidx117.i.780, align 8, !tbaa !6
  %conv119.i.781 = trunc i128 %add104.i.777 to i64
  %arrayidx120.i.782 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 3
  store i64 %conv119.i.781, i64* %arrayidx120.i.782, align 8, !tbaa !6
  %127 = load i128, i128* %arrayidx.i.783, align 16, !tbaa !2
  %add.i.784 = add i128 %127, 18446744069414584320
  %128 = load i128, i128* %arrayidx6.i.785, align 16, !tbaa !2
  %shr.i.786 = lshr i128 %128, 64
  %add8.i.787 = add i128 %add.i.784, %shr.i.786
  %conv12.i.788 = and i128 %128, 18446744073709551615
  %add13.i.789 = add nuw nsw i128 %conv12.i.788, 18446673704965373952
  %129 = load i128, i128* %arraydecay4.i.711, align 16, !tbaa !2
  %add16.i.790 = add i128 %129, 18446744073709551615
  %130 = load i128, i128* %arrayidx18.i.791, align 16, !tbaa !2
  %add19.i.792 = add i128 %130, 1298074214633706907132628377272319
  %shr22.i.793 = lshr i128 %add8.i.787, 64
  %conv23.i.794 = trunc i128 %shr22.i.793 to i64
  %conv26.i.795 = and i128 %add8.i.787, 18446744073709551615
  %sub.i.796 = sub nsw i128 %conv26.i.795, %shr22.i.793
  %shl.i.797 = shl nuw nsw i128 %shr22.i.793, 32
  %add32.i.798 = add nsw i128 %sub.i.796, %shl.i.797
  %shr34.i.799 = lshr i128 %add32.i.798, 64
  %conv35.i.800 = trunc i128 %shr34.i.799 to i64
  %add36.i.801 = add i64 %conv35.i.800, %conv23.i.794
  %conv39.i.802 = and i128 %add32.i.798, 18446744073709551615
  %sub43.i.803 = sub nsw i128 %conv39.i.802, %shr34.i.799
  %shl45.i.804 = shl nuw nsw i128 %shr34.i.799, 32
  %add47.i.805 = add nsw i128 %sub43.i.803, %shl45.i.804
  %conv48.i.806 = zext i64 %add36.i.801 to i128
  %add50.i.807 = add i128 %add16.i.790, %conv48.i.806
  %shl52.i.808 = shl nuw nsw i128 %conv48.i.806, 32
  %sub54.i.809 = sub i128 %add19.i.792, %shl52.i.808
  %shr56.i.810 = lshr i128 %add47.i.805, 64
  %conv57.i.811 = trunc i128 %shr56.i.810 to i64
  %sub58.i.812 = sub i64 0, %conv57.i.811
  %conv60.i.813 = trunc i128 %add47.i.805 to i64
  %and.i.814 = and i64 %conv60.i.813, 9223372036854775807
  %neg.i.815 = sub nsw i64 9223372032559808512, %and.i.814
  %sub62177.i.816 = and i64 %neg.i.815, %conv60.i.813
  %and66.i.817 = ashr i64 %sub62177.i.816, 63
  %or.i.818 = or i64 %and66.i.817, %sub58.i.812
  %conv68.i.819 = zext i64 %or.i.818 to i128
  %sub70.i.820 = sub i128 %add50.i.807, %conv68.i.819
  %and71.i.821 = and i64 %or.i.818, 4294967295
  %conv72.i.822 = zext i64 %and71.i.821 to i128
  %sub74.i.823 = sub i128 %sub54.i.809, %conv72.i.822
  %and75.i.824 = and i64 %or.i.818, -4294967295
  %conv76.i.825 = zext i64 %and75.i.824 to i128
  %sub78.i.826 = sub nsw i128 %add47.i.805, %conv76.i.825
  %shr80.i.827 = lshr i128 %sub70.i.820, 64
  %add84.i.828 = add i128 %sub74.i.823, %shr80.i.827
  %conv86.i.829 = trunc i128 %sub70.i.820 to i64
  %shr90.i.830 = lshr i128 %add84.i.828, 64
  %add94.i.831 = add nuw nsw i128 %add13.i.789, %shr90.i.830
  %conv96.i.832 = trunc i128 %add84.i.828 to i64
  %shr100.i.833 = lshr i128 %add94.i.831, 64
  %add104.i.834 = add nsw i128 %sub78.i.826, %shr100.i.833
  %conv106.i.835 = trunc i128 %add94.i.831 to i64
  store i64 %conv86.i.829, i64* %arraydecay171, align 8, !tbaa !6
  %arrayidx114.i.836 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 1
  store i64 %conv96.i.832, i64* %arrayidx114.i.836, align 8, !tbaa !6
  %arrayidx117.i.837 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 2
  store i64 %conv106.i.835, i64* %arrayidx117.i.837, align 8, !tbaa !6
  %conv119.i.838 = trunc i128 %add104.i.834 to i64
  %arrayidx120.i.839 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 3
  store i64 %conv119.i.838, i64* %arrayidx120.i.839, align 8, !tbaa !6
  %131 = load i128, i128* %arrayidx.i.840, align 16, !tbaa !2
  %add.i.841 = add i128 %131, 18446744069414584320
  %132 = load i128, i128* %arrayidx6.i.842, align 16, !tbaa !2
  %shr.i.843 = lshr i128 %132, 64
  %add8.i.844 = add i128 %add.i.841, %shr.i.843
  %conv12.i.845 = and i128 %132, 18446744073709551615
  %add13.i.846 = add nuw nsw i128 %conv12.i.845, 18446673704965373952
  %133 = load i128, i128* %arraydecay5.i.712, align 16, !tbaa !2
  %add16.i.847 = add i128 %133, 18446744073709551615
  %134 = load i128, i128* %arrayidx18.i.848, align 16, !tbaa !2
  %add19.i.849 = add i128 %134, 1298074214633706907132628377272319
  %shr22.i.850 = lshr i128 %add8.i.844, 64
  %conv23.i.851 = trunc i128 %shr22.i.850 to i64
  %conv26.i.852 = and i128 %add8.i.844, 18446744073709551615
  %sub.i.853 = sub nsw i128 %conv26.i.852, %shr22.i.850
  %shl.i.854 = shl nuw nsw i128 %shr22.i.850, 32
  %add32.i.855 = add nsw i128 %sub.i.853, %shl.i.854
  %shr34.i.856 = lshr i128 %add32.i.855, 64
  %conv35.i.857 = trunc i128 %shr34.i.856 to i64
  %add36.i.858 = add i64 %conv35.i.857, %conv23.i.851
  %conv39.i.859 = and i128 %add32.i.855, 18446744073709551615
  %sub43.i.860 = sub nsw i128 %conv39.i.859, %shr34.i.856
  %shl45.i.861 = shl nuw nsw i128 %shr34.i.856, 32
  %add47.i.862 = add nsw i128 %sub43.i.860, %shl45.i.861
  %conv48.i.863 = zext i64 %add36.i.858 to i128
  %add50.i.864 = add i128 %add16.i.847, %conv48.i.863
  %shl52.i.865 = shl nuw nsw i128 %conv48.i.863, 32
  %sub54.i.866 = sub i128 %add19.i.849, %shl52.i.865
  %shr56.i.867 = lshr i128 %add47.i.862, 64
  %conv57.i.868 = trunc i128 %shr56.i.867 to i64
  %sub58.i.869 = sub i64 0, %conv57.i.868
  %conv60.i.870 = trunc i128 %add47.i.862 to i64
  %and.i.871 = and i64 %conv60.i.870, 9223372036854775807
  %neg.i.872 = sub nsw i64 9223372032559808512, %and.i.871
  %sub62177.i.873 = and i64 %neg.i.872, %conv60.i.870
  %and66.i.874 = ashr i64 %sub62177.i.873, 63
  %or.i.875 = or i64 %and66.i.874, %sub58.i.869
  %conv68.i.876 = zext i64 %or.i.875 to i128
  %sub70.i.877 = sub i128 %add50.i.864, %conv68.i.876
  %and71.i.878 = and i64 %or.i.875, 4294967295
  %conv72.i.879 = zext i64 %and71.i.878 to i128
  %sub74.i.880 = sub i128 %sub54.i.866, %conv72.i.879
  %and75.i.881 = and i64 %or.i.875, -4294967295
  %conv76.i.882 = zext i64 %and75.i.881 to i128
  %sub78.i.883 = sub nsw i128 %add47.i.862, %conv76.i.882
  %shr80.i.884 = lshr i128 %sub70.i.877, 64
  %add84.i.885 = add i128 %sub74.i.880, %shr80.i.884
  %conv86.i.886 = trunc i128 %sub70.i.877 to i64
  %shr90.i.887 = lshr i128 %add84.i.885, 64
  %add94.i.888 = add nuw nsw i128 %add13.i.846, %shr90.i.887
  %conv96.i.889 = trunc i128 %add84.i.885 to i64
  %shr100.i.890 = lshr i128 %add94.i.888, 64
  %add104.i.891 = add nsw i128 %sub78.i.883, %shr100.i.890
  %conv106.i.892 = trunc i128 %add94.i.888 to i64
  store i64 %conv86.i.886, i64* %arraydecay177, align 8, !tbaa !6
  %arrayidx114.i.893 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 1
  store i64 %conv96.i.889, i64* %arrayidx114.i.893, align 8, !tbaa !6
  %arrayidx117.i.894 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 2
  store i64 %conv106.i.892, i64* %arrayidx117.i.894, align 8, !tbaa !6
  %conv119.i.895 = trunc i128 %add104.i.891 to i64
  %arrayidx120.i.896 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 3
  store i64 %conv119.i.895, i64* %arrayidx120.i.896, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %55) #1
  call void @llvm.lifetime.end(i64 64, i8* %54) #1
  call void @llvm.lifetime.end(i64 64, i8* %53) #1
  call void @llvm.lifetime.end(i64 64, i8* %52) #1
  call void @llvm.lifetime.end(i64 64, i8* %51) #1
  call void @llvm.lifetime.end(i64 64, i8* %50) #1
  br label %for.inc

for.inc:                                          ; preds = %if.then.159, %if.else.213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond1076 = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond1076, label %for.inc.255.loopexit, label %for.body.157

for.inc.255.loopexit:                             ; preds = %for.inc
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.inc.255.loopexit, %if.end.95
  %inc256 = add i32 %i.01071, 1
  %conv = zext i32 %inc256 to i64
  %cmp84 = icmp ult i64 %conv, %num_points.0
  br i1 %cmp84, label %for.body, label %for.end.257

for.end.257:                                      ; preds = %for.inc.255
  br i1 %cmp62, label %if.then.259, label %if.end.264

if.then.259:                                      ; preds = %for.end.257
  %mul260 = mul i64 %num_points.0, 17
  %135 = bitcast [4 x i64]* %tmp_smallfelems.0 to i8*
  call void @ec_GFp_nistp_points_make_affine_internal(i64 %mul260, i8* %call67, i64 32, i8* %135, void (i8*)* bitcast (void (i64*)* @smallfelem_one to void (i8*)*), i32 (i8*)* nonnull @smallfelem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_square_contract to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @smallfelem_mul_contract to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_inv_contract to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_assign to void (i8*, i8*)*)) #1
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.59, %for.end.257, %if.then.259
  %mixed.1 = phi i32 [ 1, %if.then.259 ], [ 0, %for.end.257 ], [ 0, %if.end.59 ]
  %secrets.0 = phi [32 x i8]* [ %47, %if.then.259 ], [ %47, %for.end.257 ], [ null, %if.end.59 ]
  %pre_comp.0 = phi [17 x [3 x [4 x i64]]]* [ %48, %if.then.259 ], [ %48, %for.end.257 ], [ null, %if.end.59 ]
  %tmp_smallfelems.1 = phi [4 x i64]* [ %tmp_smallfelems.0, %if.then.259 ], [ %tmp_smallfelems.0, %for.end.257 ], [ null, %if.end.59 ]
  %tobool268 = icmp ne i32 %have_pre_comp.0, 0
  %or.cond323 = and i1 %cmp19, %tobool268
  br i1 %or.cond323, label %if.then.269, label %if.else.295

if.then.269:                                      ; preds = %if.end.264
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 16, i1 false)
  %call270 = call i32 @BN_num_bits(%struct.bignum_st* %scalar) #1
  %cmp271 = icmp sgt i32 %call270, 256
  br i1 %cmp271, label %if.then.276, label %lor.lhs.false.273

lor.lhs.false.273:                                ; preds = %if.then.269
  %call274 = call i32 @BN_is_negative(%struct.bignum_st* %scalar) #1
  %tobool275 = icmp eq i32 %call274, 0
  br i1 %tobool275, label %if.else.284, label %if.then.276

if.then.276:                                      ; preds = %lor.lhs.false.273, %if.then.269
  %order277 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %136 = load %struct.bignum_st*, %struct.bignum_st** %order277, align 8, !tbaa !20
  %call278 = call i32 @BN_nnmod(%struct.bignum_st* %call18, %struct.bignum_st* %scalar, %struct.bignum_st* %136, %struct.bignum_ctx* %ctx) #1
  %tobool279 = icmp eq i32 %call278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %if.then.276
  call void @ERR_put_error(i32 16, i32 231, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2175) #1
  br label %err

if.end.281:                                       ; preds = %if.then.276
  %call283 = call i32 @BN_bn2bin(%struct.bignum_st* %call18, i8* %1) #1
  br label %if.end.287

if.else.284:                                      ; preds = %lor.lhs.false.273
  %call286 = call i32 @BN_bn2bin(%struct.bignum_st* %scalar, i8* %1) #1
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.284, %if.end.281
  %num_bytes.1 = phi i32 [ %call283, %if.end.281 ], [ %call286, %if.else.284 ]
  %cmp.9.i.713 = icmp eq i32 %num_bytes.1, 0
  br i1 %cmp.9.i.713, label %flip_endian.exit725, label %for.body.lr.ph.i.715

for.body.lr.ph.i.715:                             ; preds = %if.end.287
  %sub.i.714 = add i32 %num_bytes.1, -1
  %xtraiter = and i32 %num_bytes.1, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.i.715.split, label %for.body.i.724.prol.preheader

for.body.i.724.prol.preheader:                    ; preds = %for.body.lr.ph.i.715
  br label %for.body.i.724.prol

for.body.i.724.prol:                              ; preds = %for.body.i.724.prol.preheader, %for.body.i.724.prol
  %indvars.iv.i.716.prol = phi i64 [ %indvars.iv.next.i.721.prol, %for.body.i.724.prol ], [ 0, %for.body.i.724.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.i.724.prol ], [ %xtraiter, %for.body.i.724.prol.preheader ]
  %137 = trunc i64 %indvars.iv.i.716.prol to i32
  %sub1.i.717.prol = sub i32 %sub.i.714, %137
  %idxprom.i.718.prol = zext i32 %sub1.i.717.prol to i64
  %arrayidx.i.719.prol = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.718.prol
  %138 = load i8, i8* %arrayidx.i.719.prol, align 1, !tbaa !17
  %arrayidx3.i.720.prol = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.716.prol
  store i8 %138, i8* %arrayidx3.i.720.prol, align 1, !tbaa !17
  %indvars.iv.next.i.721.prol = add nuw nsw i64 %indvars.iv.i.716.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.i.715.split.loopexit, label %for.body.i.724.prol, !llvm.loop !23

for.body.lr.ph.i.715.split.loopexit:              ; preds = %for.body.i.724.prol
  %indvars.iv.next.i.721.prol.lcssa = phi i64 [ %indvars.iv.next.i.721.prol, %for.body.i.724.prol ]
  br label %for.body.lr.ph.i.715.split

for.body.lr.ph.i.715.split:                       ; preds = %for.body.lr.ph.i.715.split.loopexit, %for.body.lr.ph.i.715
  %indvars.iv.i.716.unr = phi i64 [ 0, %for.body.lr.ph.i.715 ], [ %indvars.iv.next.i.721.prol.lcssa, %for.body.lr.ph.i.715.split.loopexit ]
  %139 = icmp ult i32 %sub.i.714, 3
  br i1 %139, label %flip_endian.exit725.loopexit, label %for.body.lr.ph.i.715.split.split

for.body.lr.ph.i.715.split.split:                 ; preds = %for.body.lr.ph.i.715.split
  br label %for.body.i.724

for.body.i.724:                                   ; preds = %for.body.i.724, %for.body.lr.ph.i.715.split.split
  %indvars.iv.i.716 = phi i64 [ %indvars.iv.i.716.unr, %for.body.lr.ph.i.715.split.split ], [ %indvars.iv.next.i.721.3, %for.body.i.724 ]
  %140 = trunc i64 %indvars.iv.i.716 to i32
  %sub1.i.717 = sub i32 %sub.i.714, %140
  %idxprom.i.718 = zext i32 %sub1.i.717 to i64
  %arrayidx.i.719 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.718
  %141 = load i8, i8* %arrayidx.i.719, align 1, !tbaa !17
  %arrayidx3.i.720 = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.716
  store i8 %141, i8* %arrayidx3.i.720, align 1, !tbaa !17
  %indvars.iv.next.i.721 = add nuw nsw i64 %indvars.iv.i.716, 1
  %142 = trunc i64 %indvars.iv.next.i.721 to i32
  %sub1.i.717.1 = sub i32 %sub.i.714, %142
  %idxprom.i.718.1 = zext i32 %sub1.i.717.1 to i64
  %arrayidx.i.719.1 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.718.1
  %143 = load i8, i8* %arrayidx.i.719.1, align 1, !tbaa !17
  %arrayidx3.i.720.1 = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.721
  store i8 %143, i8* %arrayidx3.i.720.1, align 1, !tbaa !17
  %indvars.iv.next.i.721.1 = add nsw i64 %indvars.iv.i.716, 2
  %144 = trunc i64 %indvars.iv.next.i.721.1 to i32
  %sub1.i.717.2 = sub i32 %sub.i.714, %144
  %idxprom.i.718.2 = zext i32 %sub1.i.717.2 to i64
  %arrayidx.i.719.2 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.718.2
  %145 = load i8, i8* %arrayidx.i.719.2, align 1, !tbaa !17
  %arrayidx3.i.720.2 = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.721.1
  store i8 %145, i8* %arrayidx3.i.720.2, align 1, !tbaa !17
  %indvars.iv.next.i.721.2 = add nsw i64 %indvars.iv.i.716, 3
  %146 = trunc i64 %indvars.iv.next.i.721.2 to i32
  %sub1.i.717.3 = sub i32 %sub.i.714, %146
  %idxprom.i.718.3 = zext i32 %sub1.i.717.3 to i64
  %arrayidx.i.719.3 = getelementptr inbounds [32 x i8], [32 x i8]* %tmp, i64 0, i64 %idxprom.i.718.3
  %147 = load i8, i8* %arrayidx.i.719.3, align 1, !tbaa !17
  %arrayidx3.i.720.3 = getelementptr inbounds [32 x i8], [32 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.721.2
  store i8 %147, i8* %arrayidx3.i.720.3, align 1, !tbaa !17
  %indvars.iv.next.i.721.3 = add nsw i64 %indvars.iv.i.716, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.721.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %num_bytes.1
  br i1 %exitcond.3, label %flip_endian.exit725.loopexit.unr-lcssa, label %for.body.i.724

flip_endian.exit725.loopexit.unr-lcssa:           ; preds = %for.body.i.724
  br label %flip_endian.exit725.loopexit

flip_endian.exit725.loopexit:                     ; preds = %for.body.lr.ph.i.715.split, %flip_endian.exit725.loopexit.unr-lcssa
  br label %flip_endian.exit725

flip_endian.exit725:                              ; preds = %flip_endian.exit725.loopexit, %if.end.287
  %arraydecay290 = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 0
  %arraydecay291 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 0
  %arraydecay292 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 0
  %conv293 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i128* %arraydecay290, i128* %arraydecay291, i128* %arraydecay292, [32 x i8]* %secrets.0, i32 %conv293, i8* %0, i32 %mixed.1, [17 x [3 x [4 x i64]]]* %pre_comp.0, [16 x [3 x [4 x i64]]]* %g_pre_comp.1)
  br label %if.end.300

if.else.295:                                      ; preds = %if.end.264
  %arraydecay296 = getelementptr inbounds [4 x i128], [4 x i128]* %x_out, i64 0, i64 0
  %arraydecay297 = getelementptr inbounds [4 x i128], [4 x i128]* %y_out, i64 0, i64 0
  %arraydecay298 = getelementptr inbounds [4 x i128], [4 x i128]* %z_out, i64 0, i64 0
  %conv299 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i128* %arraydecay296, i128* %arraydecay297, i128* %arraydecay298, [32 x i8]* %secrets.0, i32 %conv299, i8* null, i32 %mixed.1, [17 x [3 x [4 x i64]]]* %pre_comp.0, [16 x [3 x [4 x i64]]]* null)
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.295, %flip_endian.exit725
  %arraydecay306.pre-phi = phi i128* [ %arraydecay298, %if.else.295 ], [ %arraydecay292, %flip_endian.exit725 ]
  %arraydecay304.pre-phi = phi i128* [ %arraydecay297, %if.else.295 ], [ %arraydecay291, %flip_endian.exit725 ]
  %arraydecay302.pre-phi = phi i128* [ %arraydecay296, %if.else.295 ], [ %arraydecay290, %flip_endian.exit725 ]
  %arraydecay301 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay301, i128* %arraydecay302.pre-phi)
  %arraydecay303 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay303, i128* %arraydecay304.pre-phi)
  %arraydecay305 = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay305, i128* %arraydecay306.pre-phi)
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %148) #1
  %149 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %149) #1
  %150 = bitcast [4 x i64]* %x_in to <2 x i64>*
  %151 = load <2 x i64>, <2 x i64>* %150, align 16, !tbaa !6
  %152 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %151, <2 x i64>* %152, align 16, !tbaa !6
  %arrayidx4.i.i.603 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 2
  %arrayidx5.i.i.604 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %153 = bitcast i64* %arrayidx4.i.i.603 to <2 x i64>*
  %154 = load <2 x i64>, <2 x i64>* %153, align 16, !tbaa !6
  %155 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %154, <2 x i64>* %155, align 16, !tbaa !6
  br label %vector.body1114

vector.body1114:                                  ; preds = %if.end.300
  %156 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %157 = bitcast i8* %156 to <16 x i8>*
  %wide.load1129 = load <16 x i8>, <16 x i8>* %157, align 16, !tbaa !17
  %reverse1130 = shufflevector <16 x i8> %wide.load1129, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %158 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse1130, <16 x i8>* %158, align 16, !tbaa !17
  %159 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load1129.1 = load <16 x i8>, <16 x i8>* %159, align 16, !tbaa !17
  %reverse1130.1 = shufflevector <16 x i8> %wide.load1129.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %160 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %161 = bitcast i8* %160 to <16 x i8>*
  store <16 x i8> %reverse1130.1, <16 x i8>* %161, align 16, !tbaa !17
  %call.i.614 = call %struct.bignum_st* @BN_bin2bn(i8* %149, i32 32, %struct.bignum_st* %call) #1
  call void @llvm.lifetime.end(i64 32, i8* %149) #1
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %tobool309 = icmp eq %struct.bignum_st* %call.i.614, null
  br i1 %tobool309, label %if.then.318, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %vector.body1114
  call void @llvm.lifetime.start(i64 32, i8* %148) #1
  call void @llvm.lifetime.start(i64 32, i8* %149) #1
  %162 = bitcast [4 x i64]* %y_in to <2 x i64>*
  %163 = load <2 x i64>, <2 x i64>* %162, align 16, !tbaa !6
  %164 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %163, <2 x i64>* %164, align 16, !tbaa !6
  %arrayidx4.i.i.529 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 2
  %165 = bitcast i64* %arrayidx4.i.i.529 to <2 x i64>*
  %166 = load <2 x i64>, <2 x i64>* %165, align 16, !tbaa !6
  %167 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %167, align 16, !tbaa !6
  br label %vector.body1132

vector.body1132:                                  ; preds = %lor.lhs.false.310
  %168 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %169 = bitcast i8* %168 to <16 x i8>*
  %wide.load1147 = load <16 x i8>, <16 x i8>* %169, align 16, !tbaa !17
  %reverse1148 = shufflevector <16 x i8> %wide.load1147, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %170 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse1148, <16 x i8>* %170, align 16, !tbaa !17
  %171 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load1147.1 = load <16 x i8>, <16 x i8>* %171, align 16, !tbaa !17
  %reverse1148.1 = shufflevector <16 x i8> %wide.load1147.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %173 = bitcast i8* %172 to <16 x i8>*
  store <16 x i8> %reverse1148.1, <16 x i8>* %173, align 16, !tbaa !17
  %call.i.540 = call %struct.bignum_st* @BN_bin2bn(i8* %149, i32 32, %struct.bignum_st* %call16) #1
  call void @llvm.lifetime.end(i64 32, i8* %149) #1
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %tobool313 = icmp eq %struct.bignum_st* %call.i.540, null
  br i1 %tobool313, label %if.then.318, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %vector.body1132
  call void @llvm.lifetime.start(i64 32, i8* %148) #1
  call void @llvm.lifetime.start(i64 32, i8* %149) #1
  %174 = bitcast [4 x i64]* %z_in to <2 x i64>*
  %175 = load <2 x i64>, <2 x i64>* %174, align 16, !tbaa !6
  %176 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %175, <2 x i64>* %176, align 16, !tbaa !6
  %arrayidx4.i.i.510 = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 2
  %177 = bitcast i64* %arrayidx4.i.i.510 to <2 x i64>*
  %178 = load <2 x i64>, <2 x i64>* %177, align 16, !tbaa !6
  %179 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %178, <2 x i64>* %179, align 16, !tbaa !6
  br label %vector.body1150

vector.body1150:                                  ; preds = %lor.lhs.false.314
  %180 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %181 = bitcast i8* %180 to <16 x i8>*
  %wide.load1165 = load <16 x i8>, <16 x i8>* %181, align 16, !tbaa !17
  %reverse1166 = shufflevector <16 x i8> %wide.load1165, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %182 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse1166, <16 x i8>* %182, align 16, !tbaa !17
  %183 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load1165.1 = load <16 x i8>, <16 x i8>* %183, align 16, !tbaa !17
  %reverse1166.1 = shufflevector <16 x i8> %wide.load1165.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %185 = bitcast i8* %184 to <16 x i8>*
  store <16 x i8> %reverse1166.1, <16 x i8>* %185, align 16, !tbaa !17
  %call.i.521 = call %struct.bignum_st* @BN_bin2bn(i8* %149, i32 32, %struct.bignum_st* %call17) #1
  call void @llvm.lifetime.end(i64 32, i8* %149) #1
  call void @llvm.lifetime.end(i64 32, i8* %148) #1
  %tobool317 = icmp eq %struct.bignum_st* %call.i.521, null
  br i1 %tobool317, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %vector.body1150, %vector.body1132, %vector.body1114
  call void @ERR_put_error(i32 16, i32 231, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2198) #1
  br label %err

if.end.319:                                       ; preds = %vector.body1150
  %call320 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %call, %struct.bignum_st* %call16, %struct.bignum_st* %call17, %struct.bignum_ctx* %ctx) #1
  br label %err

err.loopexit:                                     ; preds = %flip_endian.exit, %lor.lhs.false.126, %lor.lhs.false.130
  br label %err

err:                                              ; preds = %err.loopexit, %if.end.48, %if.then.20, %entry, %if.end.319, %if.then.318, %if.then.280, %if.then.111, %if.then.80, %if.then.47
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then.20 ], [ 0, %if.then.80 ], [ 0, %if.then.111 ], [ %call320, %if.end.319 ], [ 0, %if.then.318 ], [ 0, %if.then.280 ], [ 0, %if.end.48 ], [ 0, %if.then.47 ], [ 0, %err.loopexit ]
  %secrets.1 = phi [32 x i8]* [ null, %entry ], [ null, %if.then.20 ], [ %47, %if.then.80 ], [ %47, %if.then.111 ], [ %secrets.0, %if.end.319 ], [ %secrets.0, %if.then.318 ], [ %secrets.0, %if.then.280 ], [ null, %if.end.48 ], [ null, %if.then.47 ], [ %47, %err.loopexit ]
  %pre_comp.1 = phi [17 x [3 x [4 x i64]]]* [ null, %entry ], [ null, %if.then.20 ], [ %48, %if.then.80 ], [ %48, %if.then.111 ], [ %pre_comp.0, %if.end.319 ], [ %pre_comp.0, %if.then.318 ], [ %pre_comp.0, %if.then.280 ], [ null, %if.end.48 ], [ null, %if.then.47 ], [ %48, %err.loopexit ]
  %tmp_smallfelems.2 = phi [4 x i64]* [ null, %entry ], [ null, %if.then.20 ], [ %tmp_smallfelems.0, %if.then.80 ], [ %tmp_smallfelems.0, %if.then.111 ], [ %tmp_smallfelems.1, %if.end.319 ], [ %tmp_smallfelems.1, %if.then.318 ], [ %tmp_smallfelems.1, %if.then.280 ], [ null, %if.end.48 ], [ null, %if.then.47 ], [ %tmp_smallfelems.0, %err.loopexit ]
  %generator.1 = phi %struct.ec_point_st* [ null, %entry ], [ null, %if.then.20 ], [ %generator.0, %if.then.80 ], [ %generator.0, %if.then.111 ], [ %generator.0, %if.end.319 ], [ %generator.0, %if.then.318 ], [ %generator.0, %if.then.280 ], [ %call25, %if.end.48 ], [ %call25, %if.then.47 ], [ %generator.0, %err.loopexit ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx) #1
  call void @EC_POINT_free(%struct.ec_point_st* %generator.1) #1
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %secrets.1, i64 0, i64 0
  call void @CRYPTO_free(i8* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2206) #1
  %187 = bitcast [17 x [3 x [4 x i64]]]* %pre_comp.1 to i8*
  call void @CRYPTO_free(i8* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2207) #1
  %188 = bitcast [4 x i64]* %tmp_smallfelems.2 to i8*
  call void @CRYPTO_free(i8* %188, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2208) #1
  call void @llvm.lifetime.end(i64 64, i8* %7) #1
  call void @llvm.lifetime.end(i64 64, i8* %6) #1
  call void @llvm.lifetime.end(i64 64, i8* %5) #1
  call void @llvm.lifetime.end(i64 32, i8* %4) #1
  call void @llvm.lifetime.end(i64 32, i8* %3) #1
  call void @llvm.lifetime.end(i64 32, i8* %2) #1
  call void @llvm.lifetime.end(i64 32, i8* %1) #1
  call void @llvm.lifetime.end(i64 32, i8* %0) #1
  ret i32 %ret.0
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp256_precompute_mult(%struct.ec_group_st* %group, %struct.bignum_ctx* %ctx) #0 {
entry:
  %felem_x_out.i = alloca [4 x i128], align 16
  %felem_y_out.i = alloca [4 x i128], align 16
  %felem_z_out.i = alloca [4 x i128], align 16
  %felem_x_in.i = alloca [4 x i128], align 16
  %felem_y_in.i = alloca [4 x i128], align 16
  %felem_z_in.i = alloca [4 x i128], align 16
  %tmp_smallfelems = alloca [32 x [4 x i64]], align 16
  %x_tmp = alloca [4 x i128], align 16
  %y_tmp = alloca [4 x i128], align 16
  %z_tmp = alloca [4 x i128], align 16
  %0 = bitcast [32 x [4 x i64]]* %tmp_smallfelems to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = bitcast [4 x i128]* %x_tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x i128]* %y_tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [4 x i128]* %z_tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  tail call void @EC_pre_comp_free(%struct.ec_group_st* %group) #1
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #1
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %if.then, %entry
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx.addr.0) #1
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #1
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #1
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %err, label %if.end.8

if.end.8:                                         ; preds = %if.end.3
  %generator9 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %4 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %cmp10 = icmp eq %struct.ec_point_st* %4, null
  br i1 %cmp10, label %err, label %if.end.12

if.end.12:                                        ; preds = %if.end.8
  %call13 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #1
  %cmp14 = icmp eq %struct.ec_point_st* %call13, null
  br i1 %cmp14, label %err, label %if.end.16

if.end.16:                                        ; preds = %if.end.12
  %call17 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [32 x i8]], [5 x [32 x i8]]* @nistp256_curve_params, i64 0, i64 3, i64 0), i32 32, %struct.bignum_st* %call4) #1
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [32 x i8]], [5 x [32 x i8]]* @nistp256_curve_params, i64 0, i64 4, i64 0), i32 32, %struct.bignum_st* %call5) #1
  %call19 = tail call i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.bignum_st* %call4, %struct.bignum_st* %call5, %struct.bignum_ctx* %ctx.addr.0) #1
  %tobool = icmp eq i32 %call19, 0
  br i1 %tobool, label %err, label %if.end.21

if.end.21:                                        ; preds = %if.end.16
  %call.i = tail call i8* @CRYPTO_zalloc(i64 3088, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1842) #1
  %5 = bitcast i8* %call.i to %struct.nistp256_pre_comp_st*
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %nistp256_pre_comp_new.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.21
  %references.i = getelementptr inbounds i8, i8* %call.i, i64 3072
  %6 = bitcast i8* %references.i to i32*
  store i32 1, i32* %6, align 4, !tbaa !24
  %call1.i = tail call i8* @CRYPTO_THREAD_lock_new() #1
  %lock.i = getelementptr inbounds i8, i8* %call.i, i64 3080
  %7 = bitcast i8* %lock.i to i8**
  store i8* %call1.i, i8** %7, align 8, !tbaa !26
  %cmp3.i = icmp eq i8* %call1.i, null
  br i1 %cmp3.i, label %nistp256_pre_comp_new.exit.thread, label %if.end.25

nistp256_pre_comp_new.exit.thread:                ; preds = %if.end.i
  tail call void @ERR_put_error(i32 16, i32 236, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1853) #1
  tail call void @CRYPTO_free(i8* %call.i, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1854) #1
  br label %err

nistp256_pre_comp_new.exit:                       ; preds = %if.end.21
  tail call void @ERR_put_error(i32 16, i32 236, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1845) #1
  br label %err

if.end.25:                                        ; preds = %if.end.i
  %8 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %call27 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.ec_point_st* %8, %struct.bignum_ctx* %ctx.addr.0) #1
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* bitcast ([2 x [16 x [3 x [4 x i64]]]]* @gmul to i8*), i64 3072, i32 8, i1 false)
  br label %done

if.end.30:                                        ; preds = %if.end.25
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %x_tmp, i64 0, i64 0
  %9 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %9, i64 0, i32 2
  %10 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call32 = call fastcc i32 @BN_to_felem(i128* %arraydecay, %struct.bignum_st* %10)
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %arraydecay34 = getelementptr inbounds [4 x i128], [4 x i128]* %y_tmp, i64 0, i64 0
  %11 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %11, i64 0, i32 3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call36 = call fastcc i32 @BN_to_felem(i128* %arraydecay34, %struct.bignum_st* %12)
  %tobool37 = icmp eq i32 %call36, 0
  br i1 %tobool37, label %err, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %arraydecay39 = getelementptr inbounds [4 x i128], [4 x i128]* %z_tmp, i64 0, i64 0
  %13 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %13, i64 0, i32 4
  %14 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call41 = call fastcc i32 @BN_to_felem(i128* %arraydecay39, %struct.bignum_st* %14)
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %err, label %if.end.44

if.end.44:                                        ; preds = %lor.lhs.false.38
  %arrayidx46 = getelementptr inbounds i8, i8* %call.i, i64 96
  %arraydecay48 = bitcast i8* %arrayidx46 to i64*
  %arrayidx.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_tmp, i64 0, i64 3
  %15 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %15, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_tmp, i64 0, i64 2
  %16 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %16, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %16, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %17 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add16.i = add i128 %17, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_tmp, i64 0, i64 1
  %18 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %18, 1298074214633706907132628377272319
  %shr22.i = lshr i128 %add8.i, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i, 18446744073709551615
  %sub.i = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %add50.i = add i128 %add16.i, %conv48.i
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %sub54.i = sub i128 %add19.i, %shl52.i
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %conv86.i = trunc i128 %sub70.i to i64
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %conv96.i = trunc i128 %add84.i to i64
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv106.i = trunc i128 %add94.i to i64
  store i64 %conv86.i, i64* %arraydecay48, align 8, !tbaa !6
  %arrayidx114.i = getelementptr inbounds i8, i8* %call.i, i64 104
  %19 = bitcast i8* %arrayidx114.i to i64*
  store i64 %conv96.i, i64* %19, align 8, !tbaa !6
  %arrayidx117.i = getelementptr inbounds i8, i8* %call.i, i64 112
  %20 = bitcast i8* %arrayidx117.i to i64*
  store i64 %conv106.i, i64* %20, align 8, !tbaa !6
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds i8, i8* %call.i, i64 120
  %21 = bitcast i8* %arrayidx120.i to i64*
  store i64 %conv119.i, i64* %21, align 8, !tbaa !6
  %arraydecay54 = getelementptr inbounds i8, i8* %call.i, i64 128
  %22 = bitcast i8* %arraydecay54 to i64*
  %arrayidx.i.732 = getelementptr inbounds [4 x i128], [4 x i128]* %y_tmp, i64 0, i64 3
  %23 = load i128, i128* %arrayidx.i.732, align 16, !tbaa !2
  %add.i.733 = add i128 %23, 18446744069414584320
  %arrayidx6.i.734 = getelementptr inbounds [4 x i128], [4 x i128]* %y_tmp, i64 0, i64 2
  %24 = load i128, i128* %arrayidx6.i.734, align 16, !tbaa !2
  %shr.i.735 = lshr i128 %24, 64
  %add8.i.736 = add i128 %add.i.733, %shr.i.735
  %conv12.i.737 = and i128 %24, 18446744073709551615
  %add13.i.738 = add nuw nsw i128 %conv12.i.737, 18446673704965373952
  %25 = load i128, i128* %arraydecay34, align 16, !tbaa !2
  %add16.i.739 = add i128 %25, 18446744073709551615
  %arrayidx18.i.740 = getelementptr inbounds [4 x i128], [4 x i128]* %y_tmp, i64 0, i64 1
  %26 = load i128, i128* %arrayidx18.i.740, align 16, !tbaa !2
  %add19.i.741 = add i128 %26, 1298074214633706907132628377272319
  %shr22.i.742 = lshr i128 %add8.i.736, 64
  %conv23.i.743 = trunc i128 %shr22.i.742 to i64
  %conv26.i.744 = and i128 %add8.i.736, 18446744073709551615
  %sub.i.745 = sub nsw i128 %conv26.i.744, %shr22.i.742
  %shl.i.746 = shl nuw nsw i128 %shr22.i.742, 32
  %add32.i.747 = add nsw i128 %sub.i.745, %shl.i.746
  %shr34.i.748 = lshr i128 %add32.i.747, 64
  %conv35.i.749 = trunc i128 %shr34.i.748 to i64
  %add36.i.750 = add i64 %conv35.i.749, %conv23.i.743
  %conv39.i.751 = and i128 %add32.i.747, 18446744073709551615
  %sub43.i.752 = sub nsw i128 %conv39.i.751, %shr34.i.748
  %shl45.i.753 = shl nuw nsw i128 %shr34.i.748, 32
  %add47.i.754 = add nsw i128 %sub43.i.752, %shl45.i.753
  %conv48.i.755 = zext i64 %add36.i.750 to i128
  %add50.i.756 = add i128 %add16.i.739, %conv48.i.755
  %shl52.i.757 = shl nuw nsw i128 %conv48.i.755, 32
  %sub54.i.758 = sub i128 %add19.i.741, %shl52.i.757
  %shr56.i.759 = lshr i128 %add47.i.754, 64
  %conv57.i.760 = trunc i128 %shr56.i.759 to i64
  %sub58.i.761 = sub i64 0, %conv57.i.760
  %conv60.i.762 = trunc i128 %add47.i.754 to i64
  %and.i.763 = and i64 %conv60.i.762, 9223372036854775807
  %neg.i.764 = sub nsw i64 9223372032559808512, %and.i.763
  %sub62177.i.765 = and i64 %neg.i.764, %conv60.i.762
  %and66.i.766 = ashr i64 %sub62177.i.765, 63
  %or.i.767 = or i64 %and66.i.766, %sub58.i.761
  %conv68.i.768 = zext i64 %or.i.767 to i128
  %sub70.i.769 = sub i128 %add50.i.756, %conv68.i.768
  %and71.i.770 = and i64 %or.i.767, 4294967295
  %conv72.i.771 = zext i64 %and71.i.770 to i128
  %sub74.i.772 = sub i128 %sub54.i.758, %conv72.i.771
  %and75.i.773 = and i64 %or.i.767, -4294967295
  %conv76.i.774 = zext i64 %and75.i.773 to i128
  %sub78.i.775 = sub nsw i128 %add47.i.754, %conv76.i.774
  %shr80.i.776 = lshr i128 %sub70.i.769, 64
  %add84.i.777 = add i128 %sub74.i.772, %shr80.i.776
  %conv86.i.778 = trunc i128 %sub70.i.769 to i64
  %shr90.i.779 = lshr i128 %add84.i.777, 64
  %add94.i.780 = add nuw nsw i128 %add13.i.738, %shr90.i.779
  %conv96.i.781 = trunc i128 %add84.i.777 to i64
  %shr100.i.782 = lshr i128 %add94.i.780, 64
  %add104.i.783 = add nsw i128 %sub78.i.775, %shr100.i.782
  %conv106.i.784 = trunc i128 %add94.i.780 to i64
  store i64 %conv86.i.778, i64* %22, align 8, !tbaa !6
  %arrayidx114.i.785 = getelementptr inbounds i8, i8* %call.i, i64 136
  %27 = bitcast i8* %arrayidx114.i.785 to i64*
  store i64 %conv96.i.781, i64* %27, align 8, !tbaa !6
  %arrayidx117.i.786 = getelementptr inbounds i8, i8* %call.i, i64 144
  %28 = bitcast i8* %arrayidx117.i.786 to i64*
  store i64 %conv106.i.784, i64* %28, align 8, !tbaa !6
  %conv119.i.787 = trunc i128 %add104.i.783 to i64
  %arrayidx120.i.788 = getelementptr inbounds i8, i8* %call.i, i64 152
  %29 = bitcast i8* %arrayidx120.i.788 to i64*
  store i64 %conv119.i.787, i64* %29, align 8, !tbaa !6
  %arraydecay60 = getelementptr inbounds i8, i8* %call.i, i64 160
  %30 = bitcast i8* %arraydecay60 to i64*
  %arrayidx.i.789 = getelementptr inbounds [4 x i128], [4 x i128]* %z_tmp, i64 0, i64 3
  %31 = load i128, i128* %arrayidx.i.789, align 16, !tbaa !2
  %add.i.790 = add i128 %31, 18446744069414584320
  %arrayidx6.i.791 = getelementptr inbounds [4 x i128], [4 x i128]* %z_tmp, i64 0, i64 2
  %32 = load i128, i128* %arrayidx6.i.791, align 16, !tbaa !2
  %shr.i.792 = lshr i128 %32, 64
  %add8.i.793 = add i128 %add.i.790, %shr.i.792
  %conv12.i.794 = and i128 %32, 18446744073709551615
  %add13.i.795 = add nuw nsw i128 %conv12.i.794, 18446673704965373952
  %33 = load i128, i128* %arraydecay39, align 16, !tbaa !2
  %add16.i.796 = add i128 %33, 18446744073709551615
  %arrayidx18.i.797 = getelementptr inbounds [4 x i128], [4 x i128]* %z_tmp, i64 0, i64 1
  %34 = load i128, i128* %arrayidx18.i.797, align 16, !tbaa !2
  %add19.i.798 = add i128 %34, 1298074214633706907132628377272319
  %shr22.i.799 = lshr i128 %add8.i.793, 64
  %conv23.i.800 = trunc i128 %shr22.i.799 to i64
  %conv26.i.801 = and i128 %add8.i.793, 18446744073709551615
  %sub.i.802 = sub nsw i128 %conv26.i.801, %shr22.i.799
  %shl.i.803 = shl nuw nsw i128 %shr22.i.799, 32
  %add32.i.804 = add nsw i128 %sub.i.802, %shl.i.803
  %shr34.i.805 = lshr i128 %add32.i.804, 64
  %conv35.i.806 = trunc i128 %shr34.i.805 to i64
  %add36.i.807 = add i64 %conv35.i.806, %conv23.i.800
  %conv39.i.808 = and i128 %add32.i.804, 18446744073709551615
  %sub43.i.809 = sub nsw i128 %conv39.i.808, %shr34.i.805
  %shl45.i.810 = shl nuw nsw i128 %shr34.i.805, 32
  %add47.i.811 = add nsw i128 %sub43.i.809, %shl45.i.810
  %conv48.i.812 = zext i64 %add36.i.807 to i128
  %add50.i.813 = add i128 %add16.i.796, %conv48.i.812
  %shl52.i.814 = shl nuw nsw i128 %conv48.i.812, 32
  %sub54.i.815 = sub i128 %add19.i.798, %shl52.i.814
  %shr56.i.816 = lshr i128 %add47.i.811, 64
  %conv57.i.817 = trunc i128 %shr56.i.816 to i64
  %sub58.i.818 = sub i64 0, %conv57.i.817
  %conv60.i.819 = trunc i128 %add47.i.811 to i64
  %and.i.820 = and i64 %conv60.i.819, 9223372036854775807
  %neg.i.821 = sub nsw i64 9223372032559808512, %and.i.820
  %sub62177.i.822 = and i64 %neg.i.821, %conv60.i.819
  %and66.i.823 = ashr i64 %sub62177.i.822, 63
  %or.i.824 = or i64 %and66.i.823, %sub58.i.818
  %conv68.i.825 = zext i64 %or.i.824 to i128
  %sub70.i.826 = sub i128 %add50.i.813, %conv68.i.825
  %and71.i.827 = and i64 %or.i.824, 4294967295
  %conv72.i.828 = zext i64 %and71.i.827 to i128
  %sub74.i.829 = sub i128 %sub54.i.815, %conv72.i.828
  %and75.i.830 = and i64 %or.i.824, -4294967295
  %conv76.i.831 = zext i64 %and75.i.830 to i128
  %sub78.i.832 = sub nsw i128 %add47.i.811, %conv76.i.831
  %shr80.i.833 = lshr i128 %sub70.i.826, 64
  %add84.i.834 = add i128 %sub74.i.829, %shr80.i.833
  %conv86.i.835 = trunc i128 %sub70.i.826 to i64
  %shr90.i.836 = lshr i128 %add84.i.834, 64
  %add94.i.837 = add nuw nsw i128 %add13.i.795, %shr90.i.836
  %conv96.i.838 = trunc i128 %add84.i.834 to i64
  %shr100.i.839 = lshr i128 %add94.i.837, 64
  %add104.i.840 = add nsw i128 %sub78.i.832, %shr100.i.839
  %conv106.i.841 = trunc i128 %add94.i.837 to i64
  store i64 %conv86.i.835, i64* %30, align 8, !tbaa !6
  %arrayidx114.i.842 = getelementptr inbounds i8, i8* %call.i, i64 168
  %35 = bitcast i8* %arrayidx114.i.842 to i64*
  store i64 %conv96.i.838, i64* %35, align 8, !tbaa !6
  %arrayidx117.i.843 = getelementptr inbounds i8, i8* %call.i, i64 176
  %36 = bitcast i8* %arrayidx117.i.843 to i64*
  store i64 %conv106.i.841, i64* %36, align 8, !tbaa !6
  %conv119.i.844 = trunc i128 %add104.i.840 to i64
  %arrayidx120.i.845 = getelementptr inbounds i8, i8* %call.i, i64 184
  %37 = bitcast i8* %arrayidx120.i.845 to i64*
  store i64 %conv119.i.844, i64* %37, align 8, !tbaa !6
  %38 = bitcast [4 x i128]* %felem_x_out.i to i8*
  %39 = bitcast [4 x i128]* %felem_y_out.i to i8*
  %40 = bitcast [4 x i128]* %felem_z_out.i to i8*
  %41 = bitcast [4 x i128]* %felem_x_in.i to i8*
  %42 = bitcast [4 x i128]* %felem_y_in.i to i8*
  %43 = bitcast [4 x i128]* %felem_z_in.i to i8*
  %arraydecay.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_in.i, i64 0, i64 0
  %arrayidx4.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_in.i, i64 0, i64 1
  %arrayidx7.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_in.i, i64 0, i64 2
  %arrayidx10.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_in.i, i64 0, i64 3
  %arraydecay1.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_in.i, i64 0, i64 0
  %arrayidx4.i.15.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_in.i, i64 0, i64 1
  %arrayidx7.i.18.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_in.i, i64 0, i64 2
  %arrayidx10.i.21.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_in.i, i64 0, i64 3
  %arraydecay2.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_in.i, i64 0, i64 0
  %arrayidx4.i.25.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_in.i, i64 0, i64 1
  %arrayidx7.i.28.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_in.i, i64 0, i64 2
  %arrayidx10.i.31.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_in.i, i64 0, i64 3
  %arraydecay3.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_out.i, i64 0, i64 0
  %arraydecay4.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_out.i, i64 0, i64 0
  %arraydecay5.i = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_out.i, i64 0, i64 0
  %arrayidx.i.2638 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_out.i, i64 0, i64 3
  %arrayidx6.i.2640 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_out.i, i64 0, i64 2
  %arrayidx18.i.2646 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_x_out.i, i64 0, i64 1
  %arrayidx.i.1213 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_out.i, i64 0, i64 3
  %arrayidx6.i.1215 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_out.i, i64 0, i64 2
  %arrayidx18.i.1221 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_y_out.i, i64 0, i64 1
  %arrayidx.i.1156 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_out.i, i64 0, i64 3
  %arrayidx6.i.1158 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_out.i, i64 0, i64 2
  %arrayidx18.i.1164 = getelementptr inbounds [4 x i128], [4 x i128]* %felem_z_out.i, i64 0, i64 1
  %arraydecay91.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 128
  %44 = bitcast i8* %arraydecay91.phi.trans.insert to i64*
  %.pre = load i64, i64* %44, align 8, !tbaa !6
  %arrayidx2.i.13.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 136
  %45 = bitcast i8* %arrayidx2.i.13.i.phi.trans.insert to i64*
  %.pre2713 = load i64, i64* %45, align 8, !tbaa !6
  %arrayidx5.i.16.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 144
  %46 = bitcast i8* %arrayidx5.i.16.i.phi.trans.insert to i64*
  %.pre2714 = load i64, i64* %46, align 8, !tbaa !6
  %arrayidx8.i.19.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 152
  %47 = bitcast i8* %arrayidx8.i.19.i.phi.trans.insert to i64*
  %.pre2715 = load i64, i64* %47, align 8, !tbaa !6
  br label %for.body

for.body:                                         ; preds = %if.end.44, %for.inc.226
  %48 = phi i64 [ %conv119.i.844, %if.end.44 ], [ %conv119.i.2294.lcssa, %for.inc.226 ]
  %49 = phi i64 [ %conv106.i.841, %if.end.44 ], [ %conv106.i.2291.lcssa, %for.inc.226 ]
  %50 = phi i64 [ %conv96.i.838, %if.end.44 ], [ %conv96.i.2288.lcssa, %for.inc.226 ]
  %51 = phi i64 [ %conv86.i.835, %if.end.44 ], [ %conv86.i.2285.lcssa, %for.inc.226 ]
  %52 = phi i64 [ %.pre2715, %if.end.44 ], [ %conv119.i.2237.lcssa, %for.inc.226 ]
  %53 = phi i64 [ %.pre2714, %if.end.44 ], [ %conv106.i.2234.lcssa, %for.inc.226 ]
  %54 = phi i64 [ %.pre2713, %if.end.44 ], [ %conv96.i.2231.lcssa, %for.inc.226 ]
  %55 = phi i64 [ %.pre, %if.end.44 ], [ %conv86.i.2228.lcssa, %for.inc.226 ]
  %i.02705 = phi i32 [ 1, %if.end.44 ], [ %mul, %for.inc.226 ]
  %idxprom = sext i32 %i.02705 to i64
  %arraydecay67 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 0
  %arraydecay79 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 0
  %arraydecay85 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %56 = load i64, i64* %arraydecay85, align 8, !tbaa !6
  %conv.i.i = zext i64 %56 to i128
  store i128 %conv.i.i, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 1
  %57 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !6
  %conv3.i.i = zext i64 %57 to i128
  store i128 %conv3.i.i, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 2
  %58 = load i64, i64* %arrayidx5.i.i, align 8, !tbaa !6
  %conv6.i.i = zext i64 %58 to i128
  store i128 %conv6.i.i, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 3
  %59 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %conv9.i.i = zext i64 %59 to i128
  store i128 %conv9.i.i, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %conv.i.12.i = zext i64 %55 to i128
  store i128 %conv.i.12.i, i128* %arraydecay1.i, align 16, !tbaa !2
  %conv3.i.14.i = zext i64 %54 to i128
  store i128 %conv3.i.14.i, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %conv6.i.17.i = zext i64 %53 to i128
  store i128 %conv6.i.17.i, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %conv9.i.20.i = zext i64 %52 to i128
  store i128 %conv9.i.20.i, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %conv.i.22.i = zext i64 %51 to i128
  store i128 %conv.i.22.i, i128* %arraydecay2.i, align 16, !tbaa !2
  %conv3.i.24.i = zext i64 %50 to i128
  store i128 %conv3.i.24.i, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %conv6.i.27.i = zext i64 %49 to i128
  store i128 %conv6.i.27.i, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %conv9.i.30.i = zext i64 %48 to i128
  store i128 %conv9.i.30.i, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_double(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i) #1
  %60 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.2639 = add i128 %60, 18446744069414584320
  %61 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.2641 = lshr i128 %61, 64
  %add8.i.2642 = add i128 %add.i.2639, %shr.i.2641
  %conv12.i.2643 = and i128 %61, 18446744073709551615
  %add13.i.2644 = add nuw nsw i128 %conv12.i.2643, 18446673704965373952
  %62 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.2645 = add i128 %62, 18446744073709551615
  %63 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.2647 = add i128 %63, 1298074214633706907132628377272319
  %shr22.i.2648 = lshr i128 %add8.i.2642, 64
  %conv23.i.2649 = trunc i128 %shr22.i.2648 to i64
  %conv26.i.2650 = and i128 %add8.i.2642, 18446744073709551615
  %sub.i.2651 = sub nsw i128 %conv26.i.2650, %shr22.i.2648
  %shl.i.2652 = shl nuw nsw i128 %shr22.i.2648, 32
  %add32.i.2653 = add nsw i128 %sub.i.2651, %shl.i.2652
  %shr34.i.2654 = lshr i128 %add32.i.2653, 64
  %conv35.i.2655 = trunc i128 %shr34.i.2654 to i64
  %add36.i.2656 = add i64 %conv35.i.2655, %conv23.i.2649
  %conv39.i.2657 = and i128 %add32.i.2653, 18446744073709551615
  %sub43.i.2658 = sub nsw i128 %conv39.i.2657, %shr34.i.2654
  %shl45.i.2659 = shl nuw nsw i128 %shr34.i.2654, 32
  %add47.i.2660 = add nsw i128 %sub43.i.2658, %shl45.i.2659
  %conv48.i.2661 = zext i64 %add36.i.2656 to i128
  %add50.i.2662 = add i128 %add16.i.2645, %conv48.i.2661
  %shl52.i.2663 = shl nuw nsw i128 %conv48.i.2661, 32
  %sub54.i.2664 = sub i128 %add19.i.2647, %shl52.i.2663
  %shr56.i.2665 = lshr i128 %add47.i.2660, 64
  %conv57.i.2666 = trunc i128 %shr56.i.2665 to i64
  %sub58.i.2667 = sub i64 0, %conv57.i.2666
  %conv60.i.2668 = trunc i128 %add47.i.2660 to i64
  %and.i.2669 = and i64 %conv60.i.2668, 9223372036854775807
  %neg.i.2670 = sub nsw i64 9223372032559808512, %and.i.2669
  %sub62177.i.2671 = and i64 %neg.i.2670, %conv60.i.2668
  %and66.i.2672 = ashr i64 %sub62177.i.2671, 63
  %or.i.2673 = or i64 %and66.i.2672, %sub58.i.2667
  %conv68.i.2674 = zext i64 %or.i.2673 to i128
  %sub70.i.2675 = sub i128 %add50.i.2662, %conv68.i.2674
  %and71.i.2676 = and i64 %or.i.2673, 4294967295
  %conv72.i.2677 = zext i64 %and71.i.2676 to i128
  %sub74.i.2678 = sub i128 %sub54.i.2664, %conv72.i.2677
  %and75.i.2679 = and i64 %or.i.2673, -4294967295
  %conv76.i.2680 = zext i64 %and75.i.2679 to i128
  %sub78.i.2681 = sub nsw i128 %add47.i.2660, %conv76.i.2680
  %shr80.i.2682 = lshr i128 %sub70.i.2675, 64
  %add84.i.2683 = add i128 %sub74.i.2678, %shr80.i.2682
  %conv86.i.2684 = trunc i128 %sub70.i.2675 to i64
  %shr90.i.2685 = lshr i128 %add84.i.2683, 64
  %add94.i.2686 = add nuw nsw i128 %add13.i.2644, %shr90.i.2685
  %conv96.i.2687 = trunc i128 %add84.i.2683 to i64
  %shr100.i.2688 = lshr i128 %add94.i.2686, 64
  %add104.i.2689 = add nsw i128 %sub78.i.2681, %shr100.i.2688
  %conv106.i.2690 = trunc i128 %add94.i.2686 to i64
  store i64 %conv86.i.2684, i64* %arraydecay67, align 8, !tbaa !6
  %arrayidx114.i.2691 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 1
  store i64 %conv96.i.2687, i64* %arrayidx114.i.2691, align 8, !tbaa !6
  %arrayidx117.i.2692 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 2
  store i64 %conv106.i.2690, i64* %arrayidx117.i.2692, align 8, !tbaa !6
  %conv119.i.2693 = trunc i128 %add104.i.2689 to i64
  %arrayidx120.i.2694 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 3
  store i64 %conv119.i.2693, i64* %arrayidx120.i.2694, align 8, !tbaa !6
  %64 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.1214 = add i128 %64, 18446744069414584320
  %65 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.1216 = lshr i128 %65, 64
  %add8.i.1217 = add i128 %add.i.1214, %shr.i.1216
  %conv12.i.1218 = and i128 %65, 18446744073709551615
  %add13.i.1219 = add nuw nsw i128 %conv12.i.1218, 18446673704965373952
  %66 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.1220 = add i128 %66, 18446744073709551615
  %67 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.1222 = add i128 %67, 1298074214633706907132628377272319
  %shr22.i.1223 = lshr i128 %add8.i.1217, 64
  %conv23.i.1224 = trunc i128 %shr22.i.1223 to i64
  %conv26.i.1225 = and i128 %add8.i.1217, 18446744073709551615
  %sub.i.1226 = sub nsw i128 %conv26.i.1225, %shr22.i.1223
  %shl.i.1227 = shl nuw nsw i128 %shr22.i.1223, 32
  %add32.i.1228 = add nsw i128 %sub.i.1226, %shl.i.1227
  %shr34.i.1229 = lshr i128 %add32.i.1228, 64
  %conv35.i.1230 = trunc i128 %shr34.i.1229 to i64
  %add36.i.1231 = add i64 %conv35.i.1230, %conv23.i.1224
  %conv39.i.1232 = and i128 %add32.i.1228, 18446744073709551615
  %sub43.i.1233 = sub nsw i128 %conv39.i.1232, %shr34.i.1229
  %shl45.i.1234 = shl nuw nsw i128 %shr34.i.1229, 32
  %add47.i.1235 = add nsw i128 %sub43.i.1233, %shl45.i.1234
  %conv48.i.1236 = zext i64 %add36.i.1231 to i128
  %add50.i.1237 = add i128 %add16.i.1220, %conv48.i.1236
  %shl52.i.1238 = shl nuw nsw i128 %conv48.i.1236, 32
  %sub54.i.1239 = sub i128 %add19.i.1222, %shl52.i.1238
  %shr56.i.1240 = lshr i128 %add47.i.1235, 64
  %conv57.i.1241 = trunc i128 %shr56.i.1240 to i64
  %sub58.i.1242 = sub i64 0, %conv57.i.1241
  %conv60.i.1243 = trunc i128 %add47.i.1235 to i64
  %and.i.1244 = and i64 %conv60.i.1243, 9223372036854775807
  %neg.i.1245 = sub nsw i64 9223372032559808512, %and.i.1244
  %sub62177.i.1246 = and i64 %neg.i.1245, %conv60.i.1243
  %and66.i.1247 = ashr i64 %sub62177.i.1246, 63
  %or.i.1248 = or i64 %and66.i.1247, %sub58.i.1242
  %conv68.i.1249 = zext i64 %or.i.1248 to i128
  %sub70.i.1250 = sub i128 %add50.i.1237, %conv68.i.1249
  %and71.i.1251 = and i64 %or.i.1248, 4294967295
  %conv72.i.1252 = zext i64 %and71.i.1251 to i128
  %sub74.i.1253 = sub i128 %sub54.i.1239, %conv72.i.1252
  %and75.i.1254 = and i64 %or.i.1248, -4294967295
  %conv76.i.1255 = zext i64 %and75.i.1254 to i128
  %sub78.i.1256 = sub nsw i128 %add47.i.1235, %conv76.i.1255
  %shr80.i.1257 = lshr i128 %sub70.i.1250, 64
  %add84.i.1258 = add i128 %sub74.i.1253, %shr80.i.1257
  %conv86.i.1259 = trunc i128 %sub70.i.1250 to i64
  %shr90.i.1260 = lshr i128 %add84.i.1258, 64
  %add94.i.1261 = add nuw nsw i128 %add13.i.1219, %shr90.i.1260
  %conv96.i.1262 = trunc i128 %add84.i.1258 to i64
  %shr100.i.1263 = lshr i128 %add94.i.1261, 64
  %add104.i.1264 = add nsw i128 %sub78.i.1256, %shr100.i.1263
  %conv106.i.1265 = trunc i128 %add94.i.1261 to i64
  store i64 %conv86.i.1259, i64* %arraydecay73, align 8, !tbaa !6
  %arrayidx114.i.1266 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 1
  store i64 %conv96.i.1262, i64* %arrayidx114.i.1266, align 8, !tbaa !6
  %arrayidx117.i.1267 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 2
  store i64 %conv106.i.1265, i64* %arrayidx117.i.1267, align 8, !tbaa !6
  %conv119.i.1268 = trunc i128 %add104.i.1264 to i64
  %arrayidx120.i.1269 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 3
  store i64 %conv119.i.1268, i64* %arrayidx120.i.1269, align 8, !tbaa !6
  %68 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.1157 = add i128 %68, 18446744069414584320
  %69 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.1159 = lshr i128 %69, 64
  %add8.i.1160 = add i128 %add.i.1157, %shr.i.1159
  %conv12.i.1161 = and i128 %69, 18446744073709551615
  %add13.i.1162 = add nuw nsw i128 %conv12.i.1161, 18446673704965373952
  %70 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.1163 = add i128 %70, 18446744073709551615
  %71 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.1165 = add i128 %71, 1298074214633706907132628377272319
  %shr22.i.1166 = lshr i128 %add8.i.1160, 64
  %conv23.i.1167 = trunc i128 %shr22.i.1166 to i64
  %conv26.i.1168 = and i128 %add8.i.1160, 18446744073709551615
  %sub.i.1169 = sub nsw i128 %conv26.i.1168, %shr22.i.1166
  %shl.i.1170 = shl nuw nsw i128 %shr22.i.1166, 32
  %add32.i.1171 = add nsw i128 %sub.i.1169, %shl.i.1170
  %shr34.i.1172 = lshr i128 %add32.i.1171, 64
  %conv35.i.1173 = trunc i128 %shr34.i.1172 to i64
  %add36.i.1174 = add i64 %conv35.i.1173, %conv23.i.1167
  %conv39.i.1175 = and i128 %add32.i.1171, 18446744073709551615
  %sub43.i.1176 = sub nsw i128 %conv39.i.1175, %shr34.i.1172
  %shl45.i.1177 = shl nuw nsw i128 %shr34.i.1172, 32
  %add47.i.1178 = add nsw i128 %sub43.i.1176, %shl45.i.1177
  %conv48.i.1179 = zext i64 %add36.i.1174 to i128
  %add50.i.1180 = add i128 %add16.i.1163, %conv48.i.1179
  %shl52.i.1181 = shl nuw nsw i128 %conv48.i.1179, 32
  %sub54.i.1182 = sub i128 %add19.i.1165, %shl52.i.1181
  %shr56.i.1183 = lshr i128 %add47.i.1178, 64
  %conv57.i.1184 = trunc i128 %shr56.i.1183 to i64
  %sub58.i.1185 = sub i64 0, %conv57.i.1184
  %conv60.i.1186 = trunc i128 %add47.i.1178 to i64
  %and.i.1187 = and i64 %conv60.i.1186, 9223372036854775807
  %neg.i.1188 = sub nsw i64 9223372032559808512, %and.i.1187
  %sub62177.i.1189 = and i64 %neg.i.1188, %conv60.i.1186
  %and66.i.1190 = ashr i64 %sub62177.i.1189, 63
  %or.i.1191 = or i64 %and66.i.1190, %sub58.i.1185
  %conv68.i.1192 = zext i64 %or.i.1191 to i128
  %sub70.i.1193 = sub i128 %add50.i.1180, %conv68.i.1192
  %and71.i.1194 = and i64 %or.i.1191, 4294967295
  %conv72.i.1195 = zext i64 %and71.i.1194 to i128
  %sub74.i.1196 = sub i128 %sub54.i.1182, %conv72.i.1195
  %and75.i.1197 = and i64 %or.i.1191, -4294967295
  %conv76.i.1198 = zext i64 %and75.i.1197 to i128
  %sub78.i.1199 = sub nsw i128 %add47.i.1178, %conv76.i.1198
  %shr80.i.1200 = lshr i128 %sub70.i.1193, 64
  %add84.i.1201 = add i128 %sub74.i.1196, %shr80.i.1200
  %conv86.i.1202 = trunc i128 %sub70.i.1193 to i64
  %shr90.i.1203 = lshr i128 %add84.i.1201, 64
  %add94.i.1204 = add nuw nsw i128 %add13.i.1162, %shr90.i.1203
  %conv96.i.1205 = trunc i128 %add84.i.1201 to i64
  %shr100.i.1206 = lshr i128 %add94.i.1204, 64
  %add104.i.1207 = add nsw i128 %sub78.i.1199, %shr100.i.1206
  %conv106.i.1208 = trunc i128 %add94.i.1204 to i64
  store i64 %conv86.i.1202, i64* %arraydecay79, align 8, !tbaa !6
  %arrayidx114.i.1209 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 1
  store i64 %conv96.i.1205, i64* %arrayidx114.i.1209, align 8, !tbaa !6
  %arrayidx117.i.1210 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 2
  store i64 %conv106.i.1208, i64* %arrayidx117.i.1210, align 8, !tbaa !6
  %conv119.i.1211 = trunc i128 %add104.i.1207 to i64
  %arrayidx120.i.1212 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 3
  store i64 %conv119.i.1211, i64* %arrayidx120.i.1212, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  br label %for.body.100

for.body.100:                                     ; preds = %for.body.100, %for.body
  %72 = phi i64 [ %conv119.i.1211, %for.body ], [ %conv119.i.2636, %for.body.100 ]
  %73 = phi i64 [ %conv106.i.1208, %for.body ], [ %conv106.i.2633, %for.body.100 ]
  %74 = phi i64 [ %conv96.i.1205, %for.body ], [ %conv96.i.2630, %for.body.100 ]
  %75 = phi i64 [ %conv86.i.1202, %for.body ], [ %conv86.i.2627, %for.body.100 ]
  %76 = phi i64 [ %conv119.i.1268, %for.body ], [ %conv119.i.2579, %for.body.100 ]
  %77 = phi i64 [ %conv106.i.1265, %for.body ], [ %conv106.i.2576, %for.body.100 ]
  %78 = phi i64 [ %conv96.i.1262, %for.body ], [ %conv96.i.2573, %for.body.100 ]
  %79 = phi i64 [ %conv86.i.1259, %for.body ], [ %conv86.i.2570, %for.body.100 ]
  %j.02703 = phi i32 [ 0, %for.body ], [ %inc, %for.body.100 ]
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %80 = load i64, i64* %arraydecay67, align 8, !tbaa !6
  %conv.i.i.853 = zext i64 %80 to i128
  store i128 %conv.i.i.853, i128* %arraydecay.i, align 16, !tbaa !2
  %81 = load i64, i64* %arrayidx114.i.2691, align 8, !tbaa !6
  %conv3.i.i.855 = zext i64 %81 to i128
  store i128 %conv3.i.i.855, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %82 = load i64, i64* %arrayidx117.i.2692, align 8, !tbaa !6
  %conv6.i.i.858 = zext i64 %82 to i128
  store i128 %conv6.i.i.858, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %83 = load i64, i64* %arrayidx120.i.2694, align 8, !tbaa !6
  %conv9.i.i.861 = zext i64 %83 to i128
  store i128 %conv9.i.i.861, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %conv.i.12.i.864 = zext i64 %79 to i128
  store i128 %conv.i.12.i.864, i128* %arraydecay1.i, align 16, !tbaa !2
  %conv3.i.14.i.866 = zext i64 %78 to i128
  store i128 %conv3.i.14.i.866, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %conv6.i.17.i.869 = zext i64 %77 to i128
  store i128 %conv6.i.17.i.869, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %conv9.i.20.i.872 = zext i64 %76 to i128
  store i128 %conv9.i.20.i.872, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %conv.i.22.i.875 = zext i64 %75 to i128
  store i128 %conv.i.22.i.875, i128* %arraydecay2.i, align 16, !tbaa !2
  %conv3.i.24.i.877 = zext i64 %74 to i128
  store i128 %conv3.i.24.i.877, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %conv6.i.27.i.880 = zext i64 %73 to i128
  store i128 %conv6.i.27.i.880, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %conv9.i.30.i.883 = zext i64 %72 to i128
  store i128 %conv9.i.30.i.883, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_double(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i) #1
  %84 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.2468 = add i128 %84, 18446744069414584320
  %85 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.2470 = lshr i128 %85, 64
  %add8.i.2471 = add i128 %add.i.2468, %shr.i.2470
  %conv12.i.2472 = and i128 %85, 18446744073709551615
  %add13.i.2473 = add nuw nsw i128 %conv12.i.2472, 18446673704965373952
  %86 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.2474 = add i128 %86, 18446744073709551615
  %87 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.2476 = add i128 %87, 1298074214633706907132628377272319
  %shr22.i.2477 = lshr i128 %add8.i.2471, 64
  %conv23.i.2478 = trunc i128 %shr22.i.2477 to i64
  %conv26.i.2479 = and i128 %add8.i.2471, 18446744073709551615
  %sub.i.2480 = sub nsw i128 %conv26.i.2479, %shr22.i.2477
  %shl.i.2481 = shl nuw nsw i128 %shr22.i.2477, 32
  %add32.i.2482 = add nsw i128 %sub.i.2480, %shl.i.2481
  %shr34.i.2483 = lshr i128 %add32.i.2482, 64
  %conv35.i.2484 = trunc i128 %shr34.i.2483 to i64
  %add36.i.2485 = add i64 %conv35.i.2484, %conv23.i.2478
  %conv39.i.2486 = and i128 %add32.i.2482, 18446744073709551615
  %sub43.i.2487 = sub nsw i128 %conv39.i.2486, %shr34.i.2483
  %shl45.i.2488 = shl nuw nsw i128 %shr34.i.2483, 32
  %add47.i.2489 = add nsw i128 %sub43.i.2487, %shl45.i.2488
  %conv48.i.2490 = zext i64 %add36.i.2485 to i128
  %add50.i.2491 = add i128 %add16.i.2474, %conv48.i.2490
  %shl52.i.2492 = shl nuw nsw i128 %conv48.i.2490, 32
  %sub54.i.2493 = sub i128 %add19.i.2476, %shl52.i.2492
  %shr56.i.2494 = lshr i128 %add47.i.2489, 64
  %conv57.i.2495 = trunc i128 %shr56.i.2494 to i64
  %sub58.i.2496 = sub i64 0, %conv57.i.2495
  %conv60.i.2497 = trunc i128 %add47.i.2489 to i64
  %and.i.2498 = and i64 %conv60.i.2497, 9223372036854775807
  %neg.i.2499 = sub nsw i64 9223372032559808512, %and.i.2498
  %sub62177.i.2500 = and i64 %neg.i.2499, %conv60.i.2497
  %and66.i.2501 = ashr i64 %sub62177.i.2500, 63
  %or.i.2502 = or i64 %and66.i.2501, %sub58.i.2496
  %conv68.i.2503 = zext i64 %or.i.2502 to i128
  %sub70.i.2504 = sub i128 %add50.i.2491, %conv68.i.2503
  %and71.i.2505 = and i64 %or.i.2502, 4294967295
  %conv72.i.2506 = zext i64 %and71.i.2505 to i128
  %sub74.i.2507 = sub i128 %sub54.i.2493, %conv72.i.2506
  %and75.i.2508 = and i64 %or.i.2502, -4294967295
  %conv76.i.2509 = zext i64 %and75.i.2508 to i128
  %sub78.i.2510 = sub nsw i128 %add47.i.2489, %conv76.i.2509
  %shr80.i.2511 = lshr i128 %sub70.i.2504, 64
  %add84.i.2512 = add i128 %sub74.i.2507, %shr80.i.2511
  %conv86.i.2513 = trunc i128 %sub70.i.2504 to i64
  %shr90.i.2514 = lshr i128 %add84.i.2512, 64
  %add94.i.2515 = add nuw nsw i128 %add13.i.2473, %shr90.i.2514
  %conv96.i.2516 = trunc i128 %add84.i.2512 to i64
  %shr100.i.2517 = lshr i128 %add94.i.2515, 64
  %add104.i.2518 = add nsw i128 %sub78.i.2510, %shr100.i.2517
  %conv106.i.2519 = trunc i128 %add94.i.2515 to i64
  store i64 %conv86.i.2513, i64* %arraydecay67, align 8, !tbaa !6
  store i64 %conv96.i.2516, i64* %arrayidx114.i.2691, align 8, !tbaa !6
  store i64 %conv106.i.2519, i64* %arrayidx117.i.2692, align 8, !tbaa !6
  %conv119.i.2522 = trunc i128 %add104.i.2518 to i64
  store i64 %conv119.i.2522, i64* %arrayidx120.i.2694, align 8, !tbaa !6
  %88 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.2525 = add i128 %88, 18446744069414584320
  %89 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.2527 = lshr i128 %89, 64
  %add8.i.2528 = add i128 %add.i.2525, %shr.i.2527
  %conv12.i.2529 = and i128 %89, 18446744073709551615
  %add13.i.2530 = add nuw nsw i128 %conv12.i.2529, 18446673704965373952
  %90 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.2531 = add i128 %90, 18446744073709551615
  %91 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.2533 = add i128 %91, 1298074214633706907132628377272319
  %shr22.i.2534 = lshr i128 %add8.i.2528, 64
  %conv23.i.2535 = trunc i128 %shr22.i.2534 to i64
  %conv26.i.2536 = and i128 %add8.i.2528, 18446744073709551615
  %sub.i.2537 = sub nsw i128 %conv26.i.2536, %shr22.i.2534
  %shl.i.2538 = shl nuw nsw i128 %shr22.i.2534, 32
  %add32.i.2539 = add nsw i128 %sub.i.2537, %shl.i.2538
  %shr34.i.2540 = lshr i128 %add32.i.2539, 64
  %conv35.i.2541 = trunc i128 %shr34.i.2540 to i64
  %add36.i.2542 = add i64 %conv35.i.2541, %conv23.i.2535
  %conv39.i.2543 = and i128 %add32.i.2539, 18446744073709551615
  %sub43.i.2544 = sub nsw i128 %conv39.i.2543, %shr34.i.2540
  %shl45.i.2545 = shl nuw nsw i128 %shr34.i.2540, 32
  %add47.i.2546 = add nsw i128 %sub43.i.2544, %shl45.i.2545
  %conv48.i.2547 = zext i64 %add36.i.2542 to i128
  %add50.i.2548 = add i128 %add16.i.2531, %conv48.i.2547
  %shl52.i.2549 = shl nuw nsw i128 %conv48.i.2547, 32
  %sub54.i.2550 = sub i128 %add19.i.2533, %shl52.i.2549
  %shr56.i.2551 = lshr i128 %add47.i.2546, 64
  %conv57.i.2552 = trunc i128 %shr56.i.2551 to i64
  %sub58.i.2553 = sub i64 0, %conv57.i.2552
  %conv60.i.2554 = trunc i128 %add47.i.2546 to i64
  %and.i.2555 = and i64 %conv60.i.2554, 9223372036854775807
  %neg.i.2556 = sub nsw i64 9223372032559808512, %and.i.2555
  %sub62177.i.2557 = and i64 %neg.i.2556, %conv60.i.2554
  %and66.i.2558 = ashr i64 %sub62177.i.2557, 63
  %or.i.2559 = or i64 %and66.i.2558, %sub58.i.2553
  %conv68.i.2560 = zext i64 %or.i.2559 to i128
  %sub70.i.2561 = sub i128 %add50.i.2548, %conv68.i.2560
  %and71.i.2562 = and i64 %or.i.2559, 4294967295
  %conv72.i.2563 = zext i64 %and71.i.2562 to i128
  %sub74.i.2564 = sub i128 %sub54.i.2550, %conv72.i.2563
  %and75.i.2565 = and i64 %or.i.2559, -4294967295
  %conv76.i.2566 = zext i64 %and75.i.2565 to i128
  %sub78.i.2567 = sub nsw i128 %add47.i.2546, %conv76.i.2566
  %shr80.i.2568 = lshr i128 %sub70.i.2561, 64
  %add84.i.2569 = add i128 %sub74.i.2564, %shr80.i.2568
  %conv86.i.2570 = trunc i128 %sub70.i.2561 to i64
  %shr90.i.2571 = lshr i128 %add84.i.2569, 64
  %add94.i.2572 = add nuw nsw i128 %add13.i.2530, %shr90.i.2571
  %conv96.i.2573 = trunc i128 %add84.i.2569 to i64
  %shr100.i.2574 = lshr i128 %add94.i.2572, 64
  %add104.i.2575 = add nsw i128 %sub78.i.2567, %shr100.i.2574
  %conv106.i.2576 = trunc i128 %add94.i.2572 to i64
  store i64 %conv86.i.2570, i64* %arraydecay73, align 8, !tbaa !6
  store i64 %conv96.i.2573, i64* %arrayidx114.i.1266, align 8, !tbaa !6
  store i64 %conv106.i.2576, i64* %arrayidx117.i.1267, align 8, !tbaa !6
  %conv119.i.2579 = trunc i128 %add104.i.2575 to i64
  store i64 %conv119.i.2579, i64* %arrayidx120.i.1269, align 8, !tbaa !6
  %92 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.2582 = add i128 %92, 18446744069414584320
  %93 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.2584 = lshr i128 %93, 64
  %add8.i.2585 = add i128 %add.i.2582, %shr.i.2584
  %conv12.i.2586 = and i128 %93, 18446744073709551615
  %add13.i.2587 = add nuw nsw i128 %conv12.i.2586, 18446673704965373952
  %94 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.2588 = add i128 %94, 18446744073709551615
  %95 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.2590 = add i128 %95, 1298074214633706907132628377272319
  %shr22.i.2591 = lshr i128 %add8.i.2585, 64
  %conv23.i.2592 = trunc i128 %shr22.i.2591 to i64
  %conv26.i.2593 = and i128 %add8.i.2585, 18446744073709551615
  %sub.i.2594 = sub nsw i128 %conv26.i.2593, %shr22.i.2591
  %shl.i.2595 = shl nuw nsw i128 %shr22.i.2591, 32
  %add32.i.2596 = add nsw i128 %sub.i.2594, %shl.i.2595
  %shr34.i.2597 = lshr i128 %add32.i.2596, 64
  %conv35.i.2598 = trunc i128 %shr34.i.2597 to i64
  %add36.i.2599 = add i64 %conv35.i.2598, %conv23.i.2592
  %conv39.i.2600 = and i128 %add32.i.2596, 18446744073709551615
  %sub43.i.2601 = sub nsw i128 %conv39.i.2600, %shr34.i.2597
  %shl45.i.2602 = shl nuw nsw i128 %shr34.i.2597, 32
  %add47.i.2603 = add nsw i128 %sub43.i.2601, %shl45.i.2602
  %conv48.i.2604 = zext i64 %add36.i.2599 to i128
  %add50.i.2605 = add i128 %add16.i.2588, %conv48.i.2604
  %shl52.i.2606 = shl nuw nsw i128 %conv48.i.2604, 32
  %sub54.i.2607 = sub i128 %add19.i.2590, %shl52.i.2606
  %shr56.i.2608 = lshr i128 %add47.i.2603, 64
  %conv57.i.2609 = trunc i128 %shr56.i.2608 to i64
  %sub58.i.2610 = sub i64 0, %conv57.i.2609
  %conv60.i.2611 = trunc i128 %add47.i.2603 to i64
  %and.i.2612 = and i64 %conv60.i.2611, 9223372036854775807
  %neg.i.2613 = sub nsw i64 9223372032559808512, %and.i.2612
  %sub62177.i.2614 = and i64 %neg.i.2613, %conv60.i.2611
  %and66.i.2615 = ashr i64 %sub62177.i.2614, 63
  %or.i.2616 = or i64 %and66.i.2615, %sub58.i.2610
  %conv68.i.2617 = zext i64 %or.i.2616 to i128
  %sub70.i.2618 = sub i128 %add50.i.2605, %conv68.i.2617
  %and71.i.2619 = and i64 %or.i.2616, 4294967295
  %conv72.i.2620 = zext i64 %and71.i.2619 to i128
  %sub74.i.2621 = sub i128 %sub54.i.2607, %conv72.i.2620
  %and75.i.2622 = and i64 %or.i.2616, -4294967295
  %conv76.i.2623 = zext i64 %and75.i.2622 to i128
  %sub78.i.2624 = sub nsw i128 %add47.i.2603, %conv76.i.2623
  %shr80.i.2625 = lshr i128 %sub70.i.2618, 64
  %add84.i.2626 = add i128 %sub74.i.2621, %shr80.i.2625
  %conv86.i.2627 = trunc i128 %sub70.i.2618 to i64
  %shr90.i.2628 = lshr i128 %add84.i.2626, 64
  %add94.i.2629 = add nuw nsw i128 %add13.i.2587, %shr90.i.2628
  %conv96.i.2630 = trunc i128 %add84.i.2626 to i64
  %shr100.i.2631 = lshr i128 %add94.i.2629, 64
  %add104.i.2632 = add nsw i128 %sub78.i.2624, %shr100.i.2631
  %conv106.i.2633 = trunc i128 %add94.i.2629 to i64
  store i64 %conv86.i.2627, i64* %arraydecay79, align 8, !tbaa !6
  store i64 %conv96.i.2630, i64* %arrayidx114.i.1209, align 8, !tbaa !6
  store i64 %conv106.i.2633, i64* %arrayidx117.i.1210, align 8, !tbaa !6
  %conv119.i.2636 = trunc i128 %add104.i.2632 to i64
  store i64 %conv119.i.2636, i64* %arrayidx120.i.1212, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %inc = add nuw nsw i32 %j.02703, 1
  %exitcond2711 = icmp eq i32 %inc, 31
  br i1 %exitcond2711, label %for.end, label %for.body.100

for.end:                                          ; preds = %for.body.100
  %add104.i.2632.lcssa = phi i128 [ %add104.i.2632, %for.body.100 ]
  %add94.i.2629.lcssa = phi i128 [ %add94.i.2629, %for.body.100 ]
  %add84.i.2626.lcssa = phi i128 [ %add84.i.2626, %for.body.100 ]
  %sub70.i.2618.lcssa = phi i128 [ %sub70.i.2618, %for.body.100 ]
  %add104.i.2575.lcssa = phi i128 [ %add104.i.2575, %for.body.100 ]
  %add94.i.2572.lcssa = phi i128 [ %add94.i.2572, %for.body.100 ]
  %add84.i.2569.lcssa = phi i128 [ %add84.i.2569, %for.body.100 ]
  %sub70.i.2561.lcssa = phi i128 [ %sub70.i.2561, %for.body.100 ]
  %cmp137 = icmp eq i32 %i.02705, 8
  br i1 %cmp137, label %for.body.230.preheader, label %if.end.139

if.end.139:                                       ; preds = %for.end
  %mul = shl i32 %i.02705, 1
  %idxprom140 = sext i32 %mul to i64
  %arraydecay145 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 0
  %arraydecay152 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 0
  %arraydecay159 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %96 = load i64, i64* %arraydecay67, align 8, !tbaa !6
  %conv.i.i.895 = zext i64 %96 to i128
  store i128 %conv.i.i.895, i128* %arraydecay.i, align 16, !tbaa !2
  %97 = load i64, i64* %arrayidx114.i.2691, align 8, !tbaa !6
  %conv3.i.i.897 = zext i64 %97 to i128
  store i128 %conv3.i.i.897, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %98 = load i64, i64* %arrayidx117.i.2692, align 8, !tbaa !6
  %conv6.i.i.900 = zext i64 %98 to i128
  store i128 %conv6.i.i.900, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %99 = load i64, i64* %arrayidx120.i.2694, align 8, !tbaa !6
  %conv9.i.i.903 = zext i64 %99 to i128
  store i128 %conv9.i.i.903, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %conv.i.12.i.906 = and i128 %sub70.i.2561.lcssa, 18446744073709551615
  store i128 %conv.i.12.i.906, i128* %arraydecay1.i, align 16, !tbaa !2
  %conv3.i.14.i.908 = and i128 %add84.i.2569.lcssa, 18446744073709551615
  store i128 %conv3.i.14.i.908, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %conv6.i.17.i.911 = and i128 %add94.i.2572.lcssa, 18446744073709551615
  store i128 %conv6.i.17.i.911, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %conv9.i.20.i.914 = and i128 %add104.i.2575.lcssa, 18446744073709551615
  store i128 %conv9.i.20.i.914, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %conv.i.22.i.917 = and i128 %sub70.i.2618.lcssa, 18446744073709551615
  store i128 %conv.i.22.i.917, i128* %arraydecay2.i, align 16, !tbaa !2
  %conv3.i.24.i.919 = and i128 %add84.i.2626.lcssa, 18446744073709551615
  store i128 %conv3.i.24.i.919, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %conv6.i.27.i.922 = and i128 %add94.i.2629.lcssa, 18446744073709551615
  store i128 %conv6.i.27.i.922, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %conv9.i.30.i.925 = and i128 %add104.i.2632.lcssa, 18446744073709551615
  store i128 %conv9.i.30.i.925, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_double(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i) #1
  %100 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.2297 = add i128 %100, 18446744069414584320
  %101 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.2299 = lshr i128 %101, 64
  %add8.i.2300 = add i128 %add.i.2297, %shr.i.2299
  %conv12.i.2301 = and i128 %101, 18446744073709551615
  %add13.i.2302 = add nuw nsw i128 %conv12.i.2301, 18446673704965373952
  %102 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.2303 = add i128 %102, 18446744073709551615
  %103 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.2305 = add i128 %103, 1298074214633706907132628377272319
  %shr22.i.2306 = lshr i128 %add8.i.2300, 64
  %conv23.i.2307 = trunc i128 %shr22.i.2306 to i64
  %conv26.i.2308 = and i128 %add8.i.2300, 18446744073709551615
  %sub.i.2309 = sub nsw i128 %conv26.i.2308, %shr22.i.2306
  %shl.i.2310 = shl nuw nsw i128 %shr22.i.2306, 32
  %add32.i.2311 = add nsw i128 %sub.i.2309, %shl.i.2310
  %shr34.i.2312 = lshr i128 %add32.i.2311, 64
  %conv35.i.2313 = trunc i128 %shr34.i.2312 to i64
  %add36.i.2314 = add i64 %conv35.i.2313, %conv23.i.2307
  %conv39.i.2315 = and i128 %add32.i.2311, 18446744073709551615
  %sub43.i.2316 = sub nsw i128 %conv39.i.2315, %shr34.i.2312
  %shl45.i.2317 = shl nuw nsw i128 %shr34.i.2312, 32
  %add47.i.2318 = add nsw i128 %sub43.i.2316, %shl45.i.2317
  %conv48.i.2319 = zext i64 %add36.i.2314 to i128
  %add50.i.2320 = add i128 %add16.i.2303, %conv48.i.2319
  %shl52.i.2321 = shl nuw nsw i128 %conv48.i.2319, 32
  %sub54.i.2322 = sub i128 %add19.i.2305, %shl52.i.2321
  %shr56.i.2323 = lshr i128 %add47.i.2318, 64
  %conv57.i.2324 = trunc i128 %shr56.i.2323 to i64
  %sub58.i.2325 = sub i64 0, %conv57.i.2324
  %conv60.i.2326 = trunc i128 %add47.i.2318 to i64
  %and.i.2327 = and i64 %conv60.i.2326, 9223372036854775807
  %neg.i.2328 = sub nsw i64 9223372032559808512, %and.i.2327
  %sub62177.i.2329 = and i64 %neg.i.2328, %conv60.i.2326
  %and66.i.2330 = ashr i64 %sub62177.i.2329, 63
  %or.i.2331 = or i64 %and66.i.2330, %sub58.i.2325
  %conv68.i.2332 = zext i64 %or.i.2331 to i128
  %sub70.i.2333 = sub i128 %add50.i.2320, %conv68.i.2332
  %and71.i.2334 = and i64 %or.i.2331, 4294967295
  %conv72.i.2335 = zext i64 %and71.i.2334 to i128
  %sub74.i.2336 = sub i128 %sub54.i.2322, %conv72.i.2335
  %and75.i.2337 = and i64 %or.i.2331, -4294967295
  %conv76.i.2338 = zext i64 %and75.i.2337 to i128
  %sub78.i.2339 = sub nsw i128 %add47.i.2318, %conv76.i.2338
  %shr80.i.2340 = lshr i128 %sub70.i.2333, 64
  %add84.i.2341 = add i128 %sub74.i.2336, %shr80.i.2340
  %conv86.i.2342 = trunc i128 %sub70.i.2333 to i64
  %shr90.i.2343 = lshr i128 %add84.i.2341, 64
  %add94.i.2344 = add nuw nsw i128 %add13.i.2302, %shr90.i.2343
  %conv96.i.2345 = trunc i128 %add84.i.2341 to i64
  %shr100.i.2346 = lshr i128 %add94.i.2344, 64
  %add104.i.2347 = add nsw i128 %sub78.i.2339, %shr100.i.2346
  %conv106.i.2348 = trunc i128 %add94.i.2344 to i64
  store i64 %conv86.i.2342, i64* %arraydecay145, align 8, !tbaa !6
  %arrayidx114.i.2349 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 1
  store i64 %conv96.i.2345, i64* %arrayidx114.i.2349, align 8, !tbaa !6
  %arrayidx117.i.2350 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 2
  store i64 %conv106.i.2348, i64* %arrayidx117.i.2350, align 8, !tbaa !6
  %conv119.i.2351 = trunc i128 %add104.i.2347 to i64
  %arrayidx120.i.2352 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 3
  store i64 %conv119.i.2351, i64* %arrayidx120.i.2352, align 8, !tbaa !6
  %104 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.2354 = add i128 %104, 18446744069414584320
  %105 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.2356 = lshr i128 %105, 64
  %add8.i.2357 = add i128 %add.i.2354, %shr.i.2356
  %conv12.i.2358 = and i128 %105, 18446744073709551615
  %add13.i.2359 = add nuw nsw i128 %conv12.i.2358, 18446673704965373952
  %106 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.2360 = add i128 %106, 18446744073709551615
  %107 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.2362 = add i128 %107, 1298074214633706907132628377272319
  %shr22.i.2363 = lshr i128 %add8.i.2357, 64
  %conv23.i.2364 = trunc i128 %shr22.i.2363 to i64
  %conv26.i.2365 = and i128 %add8.i.2357, 18446744073709551615
  %sub.i.2366 = sub nsw i128 %conv26.i.2365, %shr22.i.2363
  %shl.i.2367 = shl nuw nsw i128 %shr22.i.2363, 32
  %add32.i.2368 = add nsw i128 %sub.i.2366, %shl.i.2367
  %shr34.i.2369 = lshr i128 %add32.i.2368, 64
  %conv35.i.2370 = trunc i128 %shr34.i.2369 to i64
  %add36.i.2371 = add i64 %conv35.i.2370, %conv23.i.2364
  %conv39.i.2372 = and i128 %add32.i.2368, 18446744073709551615
  %sub43.i.2373 = sub nsw i128 %conv39.i.2372, %shr34.i.2369
  %shl45.i.2374 = shl nuw nsw i128 %shr34.i.2369, 32
  %add47.i.2375 = add nsw i128 %sub43.i.2373, %shl45.i.2374
  %conv48.i.2376 = zext i64 %add36.i.2371 to i128
  %add50.i.2377 = add i128 %add16.i.2360, %conv48.i.2376
  %shl52.i.2378 = shl nuw nsw i128 %conv48.i.2376, 32
  %sub54.i.2379 = sub i128 %add19.i.2362, %shl52.i.2378
  %shr56.i.2380 = lshr i128 %add47.i.2375, 64
  %conv57.i.2381 = trunc i128 %shr56.i.2380 to i64
  %sub58.i.2382 = sub i64 0, %conv57.i.2381
  %conv60.i.2383 = trunc i128 %add47.i.2375 to i64
  %and.i.2384 = and i64 %conv60.i.2383, 9223372036854775807
  %neg.i.2385 = sub nsw i64 9223372032559808512, %and.i.2384
  %sub62177.i.2386 = and i64 %neg.i.2385, %conv60.i.2383
  %and66.i.2387 = ashr i64 %sub62177.i.2386, 63
  %or.i.2388 = or i64 %and66.i.2387, %sub58.i.2382
  %conv68.i.2389 = zext i64 %or.i.2388 to i128
  %sub70.i.2390 = sub i128 %add50.i.2377, %conv68.i.2389
  %and71.i.2391 = and i64 %or.i.2388, 4294967295
  %conv72.i.2392 = zext i64 %and71.i.2391 to i128
  %sub74.i.2393 = sub i128 %sub54.i.2379, %conv72.i.2392
  %and75.i.2394 = and i64 %or.i.2388, -4294967295
  %conv76.i.2395 = zext i64 %and75.i.2394 to i128
  %sub78.i.2396 = sub nsw i128 %add47.i.2375, %conv76.i.2395
  %shr80.i.2397 = lshr i128 %sub70.i.2390, 64
  %add84.i.2398 = add i128 %sub74.i.2393, %shr80.i.2397
  %conv86.i.2399 = trunc i128 %sub70.i.2390 to i64
  %shr90.i.2400 = lshr i128 %add84.i.2398, 64
  %add94.i.2401 = add nuw nsw i128 %add13.i.2359, %shr90.i.2400
  %conv96.i.2402 = trunc i128 %add84.i.2398 to i64
  %shr100.i.2403 = lshr i128 %add94.i.2401, 64
  %add104.i.2404 = add nsw i128 %sub78.i.2396, %shr100.i.2403
  %conv106.i.2405 = trunc i128 %add94.i.2401 to i64
  store i64 %conv86.i.2399, i64* %arraydecay152, align 8, !tbaa !6
  %arrayidx114.i.2406 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 1
  store i64 %conv96.i.2402, i64* %arrayidx114.i.2406, align 8, !tbaa !6
  %arrayidx117.i.2407 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 2
  store i64 %conv106.i.2405, i64* %arrayidx117.i.2407, align 8, !tbaa !6
  %conv119.i.2408 = trunc i128 %add104.i.2404 to i64
  %arrayidx120.i.2409 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 3
  store i64 %conv119.i.2408, i64* %arrayidx120.i.2409, align 8, !tbaa !6
  %108 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.2411 = add i128 %108, 18446744069414584320
  %109 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.2413 = lshr i128 %109, 64
  %add8.i.2414 = add i128 %add.i.2411, %shr.i.2413
  %conv12.i.2415 = and i128 %109, 18446744073709551615
  %add13.i.2416 = add nuw nsw i128 %conv12.i.2415, 18446673704965373952
  %110 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.2417 = add i128 %110, 18446744073709551615
  %111 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.2419 = add i128 %111, 1298074214633706907132628377272319
  %shr22.i.2420 = lshr i128 %add8.i.2414, 64
  %conv23.i.2421 = trunc i128 %shr22.i.2420 to i64
  %conv26.i.2422 = and i128 %add8.i.2414, 18446744073709551615
  %sub.i.2423 = sub nsw i128 %conv26.i.2422, %shr22.i.2420
  %shl.i.2424 = shl nuw nsw i128 %shr22.i.2420, 32
  %add32.i.2425 = add nsw i128 %sub.i.2423, %shl.i.2424
  %shr34.i.2426 = lshr i128 %add32.i.2425, 64
  %conv35.i.2427 = trunc i128 %shr34.i.2426 to i64
  %add36.i.2428 = add i64 %conv35.i.2427, %conv23.i.2421
  %conv39.i.2429 = and i128 %add32.i.2425, 18446744073709551615
  %sub43.i.2430 = sub nsw i128 %conv39.i.2429, %shr34.i.2426
  %shl45.i.2431 = shl nuw nsw i128 %shr34.i.2426, 32
  %add47.i.2432 = add nsw i128 %sub43.i.2430, %shl45.i.2431
  %conv48.i.2433 = zext i64 %add36.i.2428 to i128
  %add50.i.2434 = add i128 %add16.i.2417, %conv48.i.2433
  %shl52.i.2435 = shl nuw nsw i128 %conv48.i.2433, 32
  %sub54.i.2436 = sub i128 %add19.i.2419, %shl52.i.2435
  %shr56.i.2437 = lshr i128 %add47.i.2432, 64
  %conv57.i.2438 = trunc i128 %shr56.i.2437 to i64
  %sub58.i.2439 = sub i64 0, %conv57.i.2438
  %conv60.i.2440 = trunc i128 %add47.i.2432 to i64
  %and.i.2441 = and i64 %conv60.i.2440, 9223372036854775807
  %neg.i.2442 = sub nsw i64 9223372032559808512, %and.i.2441
  %sub62177.i.2443 = and i64 %neg.i.2442, %conv60.i.2440
  %and66.i.2444 = ashr i64 %sub62177.i.2443, 63
  %or.i.2445 = or i64 %and66.i.2444, %sub58.i.2439
  %conv68.i.2446 = zext i64 %or.i.2445 to i128
  %sub70.i.2447 = sub i128 %add50.i.2434, %conv68.i.2446
  %and71.i.2448 = and i64 %or.i.2445, 4294967295
  %conv72.i.2449 = zext i64 %and71.i.2448 to i128
  %sub74.i.2450 = sub i128 %sub54.i.2436, %conv72.i.2449
  %and75.i.2451 = and i64 %or.i.2445, -4294967295
  %conv76.i.2452 = zext i64 %and75.i.2451 to i128
  %sub78.i.2453 = sub nsw i128 %add47.i.2432, %conv76.i.2452
  %shr80.i.2454 = lshr i128 %sub70.i.2447, 64
  %add84.i.2455 = add i128 %sub74.i.2450, %shr80.i.2454
  %conv86.i.2456 = trunc i128 %sub70.i.2447 to i64
  %shr90.i.2457 = lshr i128 %add84.i.2455, 64
  %add94.i.2458 = add nuw nsw i128 %add13.i.2416, %shr90.i.2457
  %conv96.i.2459 = trunc i128 %add84.i.2455 to i64
  %shr100.i.2460 = lshr i128 %add94.i.2458, 64
  %add104.i.2461 = add nsw i128 %sub78.i.2453, %shr100.i.2460
  %conv106.i.2462 = trunc i128 %add94.i.2458 to i64
  store i64 %conv86.i.2456, i64* %arraydecay159, align 8, !tbaa !6
  %arrayidx114.i.2463 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 1
  store i64 %conv96.i.2459, i64* %arrayidx114.i.2463, align 8, !tbaa !6
  %arrayidx117.i.2464 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 2
  store i64 %conv106.i.2462, i64* %arrayidx117.i.2464, align 8, !tbaa !6
  %conv119.i.2465 = trunc i128 %add104.i.2461 to i64
  %arrayidx120.i.2466 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 3
  store i64 %conv119.i.2465, i64* %arrayidx120.i.2466, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  br label %for.body.180

for.body.180:                                     ; preds = %for.body.180, %if.end.139
  %112 = phi i64 [ %conv119.i.2465, %if.end.139 ], [ %conv119.i.2294, %for.body.180 ]
  %113 = phi i64 [ %conv106.i.2462, %if.end.139 ], [ %conv106.i.2291, %for.body.180 ]
  %114 = phi i64 [ %conv96.i.2459, %if.end.139 ], [ %conv96.i.2288, %for.body.180 ]
  %115 = phi i64 [ %conv86.i.2456, %if.end.139 ], [ %conv86.i.2285, %for.body.180 ]
  %116 = phi i64 [ %conv119.i.2408, %if.end.139 ], [ %conv119.i.2237, %for.body.180 ]
  %117 = phi i64 [ %conv106.i.2405, %if.end.139 ], [ %conv106.i.2234, %for.body.180 ]
  %118 = phi i64 [ %conv96.i.2402, %if.end.139 ], [ %conv96.i.2231, %for.body.180 ]
  %119 = phi i64 [ %conv86.i.2399, %if.end.139 ], [ %conv86.i.2228, %for.body.180 ]
  %j.12704 = phi i32 [ 0, %if.end.139 ], [ %inc224, %for.body.180 ]
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %120 = load i64, i64* %arraydecay145, align 8, !tbaa !6
  %conv.i.i.937 = zext i64 %120 to i128
  store i128 %conv.i.i.937, i128* %arraydecay.i, align 16, !tbaa !2
  %121 = load i64, i64* %arrayidx114.i.2349, align 8, !tbaa !6
  %conv3.i.i.939 = zext i64 %121 to i128
  store i128 %conv3.i.i.939, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %122 = load i64, i64* %arrayidx117.i.2350, align 8, !tbaa !6
  %conv6.i.i.942 = zext i64 %122 to i128
  store i128 %conv6.i.i.942, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %123 = load i64, i64* %arrayidx120.i.2352, align 8, !tbaa !6
  %conv9.i.i.945 = zext i64 %123 to i128
  store i128 %conv9.i.i.945, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %conv.i.12.i.948 = zext i64 %119 to i128
  store i128 %conv.i.12.i.948, i128* %arraydecay1.i, align 16, !tbaa !2
  %conv3.i.14.i.950 = zext i64 %118 to i128
  store i128 %conv3.i.14.i.950, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %conv6.i.17.i.953 = zext i64 %117 to i128
  store i128 %conv6.i.17.i.953, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %conv9.i.20.i.956 = zext i64 %116 to i128
  store i128 %conv9.i.20.i.956, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %conv.i.22.i.959 = zext i64 %115 to i128
  store i128 %conv.i.22.i.959, i128* %arraydecay2.i, align 16, !tbaa !2
  %conv3.i.24.i.961 = zext i64 %114 to i128
  store i128 %conv3.i.24.i.961, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %conv6.i.27.i.964 = zext i64 %113 to i128
  store i128 %conv6.i.27.i.964, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %conv9.i.30.i.967 = zext i64 %112 to i128
  store i128 %conv9.i.30.i.967, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_double(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i) #1
  %124 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.2126 = add i128 %124, 18446744069414584320
  %125 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.2128 = lshr i128 %125, 64
  %add8.i.2129 = add i128 %add.i.2126, %shr.i.2128
  %conv12.i.2130 = and i128 %125, 18446744073709551615
  %add13.i.2131 = add nuw nsw i128 %conv12.i.2130, 18446673704965373952
  %126 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.2132 = add i128 %126, 18446744073709551615
  %127 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.2134 = add i128 %127, 1298074214633706907132628377272319
  %shr22.i.2135 = lshr i128 %add8.i.2129, 64
  %conv23.i.2136 = trunc i128 %shr22.i.2135 to i64
  %conv26.i.2137 = and i128 %add8.i.2129, 18446744073709551615
  %sub.i.2138 = sub nsw i128 %conv26.i.2137, %shr22.i.2135
  %shl.i.2139 = shl nuw nsw i128 %shr22.i.2135, 32
  %add32.i.2140 = add nsw i128 %sub.i.2138, %shl.i.2139
  %shr34.i.2141 = lshr i128 %add32.i.2140, 64
  %conv35.i.2142 = trunc i128 %shr34.i.2141 to i64
  %add36.i.2143 = add i64 %conv35.i.2142, %conv23.i.2136
  %conv39.i.2144 = and i128 %add32.i.2140, 18446744073709551615
  %sub43.i.2145 = sub nsw i128 %conv39.i.2144, %shr34.i.2141
  %shl45.i.2146 = shl nuw nsw i128 %shr34.i.2141, 32
  %add47.i.2147 = add nsw i128 %sub43.i.2145, %shl45.i.2146
  %conv48.i.2148 = zext i64 %add36.i.2143 to i128
  %add50.i.2149 = add i128 %add16.i.2132, %conv48.i.2148
  %shl52.i.2150 = shl nuw nsw i128 %conv48.i.2148, 32
  %sub54.i.2151 = sub i128 %add19.i.2134, %shl52.i.2150
  %shr56.i.2152 = lshr i128 %add47.i.2147, 64
  %conv57.i.2153 = trunc i128 %shr56.i.2152 to i64
  %sub58.i.2154 = sub i64 0, %conv57.i.2153
  %conv60.i.2155 = trunc i128 %add47.i.2147 to i64
  %and.i.2156 = and i64 %conv60.i.2155, 9223372036854775807
  %neg.i.2157 = sub nsw i64 9223372032559808512, %and.i.2156
  %sub62177.i.2158 = and i64 %neg.i.2157, %conv60.i.2155
  %and66.i.2159 = ashr i64 %sub62177.i.2158, 63
  %or.i.2160 = or i64 %and66.i.2159, %sub58.i.2154
  %conv68.i.2161 = zext i64 %or.i.2160 to i128
  %sub70.i.2162 = sub i128 %add50.i.2149, %conv68.i.2161
  %and71.i.2163 = and i64 %or.i.2160, 4294967295
  %conv72.i.2164 = zext i64 %and71.i.2163 to i128
  %sub74.i.2165 = sub i128 %sub54.i.2151, %conv72.i.2164
  %and75.i.2166 = and i64 %or.i.2160, -4294967295
  %conv76.i.2167 = zext i64 %and75.i.2166 to i128
  %sub78.i.2168 = sub nsw i128 %add47.i.2147, %conv76.i.2167
  %shr80.i.2169 = lshr i128 %sub70.i.2162, 64
  %add84.i.2170 = add i128 %sub74.i.2165, %shr80.i.2169
  %conv86.i.2171 = trunc i128 %sub70.i.2162 to i64
  %shr90.i.2172 = lshr i128 %add84.i.2170, 64
  %add94.i.2173 = add nuw nsw i128 %add13.i.2131, %shr90.i.2172
  %conv96.i.2174 = trunc i128 %add84.i.2170 to i64
  %shr100.i.2175 = lshr i128 %add94.i.2173, 64
  %add104.i.2176 = add nsw i128 %sub78.i.2168, %shr100.i.2175
  %conv106.i.2177 = trunc i128 %add94.i.2173 to i64
  store i64 %conv86.i.2171, i64* %arraydecay145, align 8, !tbaa !6
  store i64 %conv96.i.2174, i64* %arrayidx114.i.2349, align 8, !tbaa !6
  store i64 %conv106.i.2177, i64* %arrayidx117.i.2350, align 8, !tbaa !6
  %conv119.i.2180 = trunc i128 %add104.i.2176 to i64
  store i64 %conv119.i.2180, i64* %arrayidx120.i.2352, align 8, !tbaa !6
  %128 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.2183 = add i128 %128, 18446744069414584320
  %129 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.2185 = lshr i128 %129, 64
  %add8.i.2186 = add i128 %add.i.2183, %shr.i.2185
  %conv12.i.2187 = and i128 %129, 18446744073709551615
  %add13.i.2188 = add nuw nsw i128 %conv12.i.2187, 18446673704965373952
  %130 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.2189 = add i128 %130, 18446744073709551615
  %131 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.2191 = add i128 %131, 1298074214633706907132628377272319
  %shr22.i.2192 = lshr i128 %add8.i.2186, 64
  %conv23.i.2193 = trunc i128 %shr22.i.2192 to i64
  %conv26.i.2194 = and i128 %add8.i.2186, 18446744073709551615
  %sub.i.2195 = sub nsw i128 %conv26.i.2194, %shr22.i.2192
  %shl.i.2196 = shl nuw nsw i128 %shr22.i.2192, 32
  %add32.i.2197 = add nsw i128 %sub.i.2195, %shl.i.2196
  %shr34.i.2198 = lshr i128 %add32.i.2197, 64
  %conv35.i.2199 = trunc i128 %shr34.i.2198 to i64
  %add36.i.2200 = add i64 %conv35.i.2199, %conv23.i.2193
  %conv39.i.2201 = and i128 %add32.i.2197, 18446744073709551615
  %sub43.i.2202 = sub nsw i128 %conv39.i.2201, %shr34.i.2198
  %shl45.i.2203 = shl nuw nsw i128 %shr34.i.2198, 32
  %add47.i.2204 = add nsw i128 %sub43.i.2202, %shl45.i.2203
  %conv48.i.2205 = zext i64 %add36.i.2200 to i128
  %add50.i.2206 = add i128 %add16.i.2189, %conv48.i.2205
  %shl52.i.2207 = shl nuw nsw i128 %conv48.i.2205, 32
  %sub54.i.2208 = sub i128 %add19.i.2191, %shl52.i.2207
  %shr56.i.2209 = lshr i128 %add47.i.2204, 64
  %conv57.i.2210 = trunc i128 %shr56.i.2209 to i64
  %sub58.i.2211 = sub i64 0, %conv57.i.2210
  %conv60.i.2212 = trunc i128 %add47.i.2204 to i64
  %and.i.2213 = and i64 %conv60.i.2212, 9223372036854775807
  %neg.i.2214 = sub nsw i64 9223372032559808512, %and.i.2213
  %sub62177.i.2215 = and i64 %neg.i.2214, %conv60.i.2212
  %and66.i.2216 = ashr i64 %sub62177.i.2215, 63
  %or.i.2217 = or i64 %and66.i.2216, %sub58.i.2211
  %conv68.i.2218 = zext i64 %or.i.2217 to i128
  %sub70.i.2219 = sub i128 %add50.i.2206, %conv68.i.2218
  %and71.i.2220 = and i64 %or.i.2217, 4294967295
  %conv72.i.2221 = zext i64 %and71.i.2220 to i128
  %sub74.i.2222 = sub i128 %sub54.i.2208, %conv72.i.2221
  %and75.i.2223 = and i64 %or.i.2217, -4294967295
  %conv76.i.2224 = zext i64 %and75.i.2223 to i128
  %sub78.i.2225 = sub nsw i128 %add47.i.2204, %conv76.i.2224
  %shr80.i.2226 = lshr i128 %sub70.i.2219, 64
  %add84.i.2227 = add i128 %sub74.i.2222, %shr80.i.2226
  %conv86.i.2228 = trunc i128 %sub70.i.2219 to i64
  %shr90.i.2229 = lshr i128 %add84.i.2227, 64
  %add94.i.2230 = add nuw nsw i128 %add13.i.2188, %shr90.i.2229
  %conv96.i.2231 = trunc i128 %add84.i.2227 to i64
  %shr100.i.2232 = lshr i128 %add94.i.2230, 64
  %add104.i.2233 = add nsw i128 %sub78.i.2225, %shr100.i.2232
  %conv106.i.2234 = trunc i128 %add94.i.2230 to i64
  store i64 %conv86.i.2228, i64* %arraydecay152, align 8, !tbaa !6
  store i64 %conv96.i.2231, i64* %arrayidx114.i.2406, align 8, !tbaa !6
  store i64 %conv106.i.2234, i64* %arrayidx117.i.2407, align 8, !tbaa !6
  %conv119.i.2237 = trunc i128 %add104.i.2233 to i64
  store i64 %conv119.i.2237, i64* %arrayidx120.i.2409, align 8, !tbaa !6
  %132 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.2240 = add i128 %132, 18446744069414584320
  %133 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.2242 = lshr i128 %133, 64
  %add8.i.2243 = add i128 %add.i.2240, %shr.i.2242
  %conv12.i.2244 = and i128 %133, 18446744073709551615
  %add13.i.2245 = add nuw nsw i128 %conv12.i.2244, 18446673704965373952
  %134 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.2246 = add i128 %134, 18446744073709551615
  %135 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.2248 = add i128 %135, 1298074214633706907132628377272319
  %shr22.i.2249 = lshr i128 %add8.i.2243, 64
  %conv23.i.2250 = trunc i128 %shr22.i.2249 to i64
  %conv26.i.2251 = and i128 %add8.i.2243, 18446744073709551615
  %sub.i.2252 = sub nsw i128 %conv26.i.2251, %shr22.i.2249
  %shl.i.2253 = shl nuw nsw i128 %shr22.i.2249, 32
  %add32.i.2254 = add nsw i128 %sub.i.2252, %shl.i.2253
  %shr34.i.2255 = lshr i128 %add32.i.2254, 64
  %conv35.i.2256 = trunc i128 %shr34.i.2255 to i64
  %add36.i.2257 = add i64 %conv35.i.2256, %conv23.i.2250
  %conv39.i.2258 = and i128 %add32.i.2254, 18446744073709551615
  %sub43.i.2259 = sub nsw i128 %conv39.i.2258, %shr34.i.2255
  %shl45.i.2260 = shl nuw nsw i128 %shr34.i.2255, 32
  %add47.i.2261 = add nsw i128 %sub43.i.2259, %shl45.i.2260
  %conv48.i.2262 = zext i64 %add36.i.2257 to i128
  %add50.i.2263 = add i128 %add16.i.2246, %conv48.i.2262
  %shl52.i.2264 = shl nuw nsw i128 %conv48.i.2262, 32
  %sub54.i.2265 = sub i128 %add19.i.2248, %shl52.i.2264
  %shr56.i.2266 = lshr i128 %add47.i.2261, 64
  %conv57.i.2267 = trunc i128 %shr56.i.2266 to i64
  %sub58.i.2268 = sub i64 0, %conv57.i.2267
  %conv60.i.2269 = trunc i128 %add47.i.2261 to i64
  %and.i.2270 = and i64 %conv60.i.2269, 9223372036854775807
  %neg.i.2271 = sub nsw i64 9223372032559808512, %and.i.2270
  %sub62177.i.2272 = and i64 %neg.i.2271, %conv60.i.2269
  %and66.i.2273 = ashr i64 %sub62177.i.2272, 63
  %or.i.2274 = or i64 %and66.i.2273, %sub58.i.2268
  %conv68.i.2275 = zext i64 %or.i.2274 to i128
  %sub70.i.2276 = sub i128 %add50.i.2263, %conv68.i.2275
  %and71.i.2277 = and i64 %or.i.2274, 4294967295
  %conv72.i.2278 = zext i64 %and71.i.2277 to i128
  %sub74.i.2279 = sub i128 %sub54.i.2265, %conv72.i.2278
  %and75.i.2280 = and i64 %or.i.2274, -4294967295
  %conv76.i.2281 = zext i64 %and75.i.2280 to i128
  %sub78.i.2282 = sub nsw i128 %add47.i.2261, %conv76.i.2281
  %shr80.i.2283 = lshr i128 %sub70.i.2276, 64
  %add84.i.2284 = add i128 %sub74.i.2279, %shr80.i.2283
  %conv86.i.2285 = trunc i128 %sub70.i.2276 to i64
  %shr90.i.2286 = lshr i128 %add84.i.2284, 64
  %add94.i.2287 = add nuw nsw i128 %add13.i.2245, %shr90.i.2286
  %conv96.i.2288 = trunc i128 %add84.i.2284 to i64
  %shr100.i.2289 = lshr i128 %add94.i.2287, 64
  %add104.i.2290 = add nsw i128 %sub78.i.2282, %shr100.i.2289
  %conv106.i.2291 = trunc i128 %add94.i.2287 to i64
  store i64 %conv86.i.2285, i64* %arraydecay159, align 8, !tbaa !6
  store i64 %conv96.i.2288, i64* %arrayidx114.i.2463, align 8, !tbaa !6
  store i64 %conv106.i.2291, i64* %arrayidx117.i.2464, align 8, !tbaa !6
  %conv119.i.2294 = trunc i128 %add104.i.2290 to i64
  store i64 %conv119.i.2294, i64* %arrayidx120.i.2466, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %inc224 = add nuw nsw i32 %j.12704, 1
  %exitcond2712 = icmp eq i32 %inc224, 31
  br i1 %exitcond2712, label %for.inc.226, label %for.body.180

for.inc.226:                                      ; preds = %for.body.180
  %conv119.i.2294.lcssa = phi i64 [ %conv119.i.2294, %for.body.180 ]
  %conv106.i.2291.lcssa = phi i64 [ %conv106.i.2291, %for.body.180 ]
  %conv96.i.2288.lcssa = phi i64 [ %conv96.i.2288, %for.body.180 ]
  %conv86.i.2285.lcssa = phi i64 [ %conv86.i.2285, %for.body.180 ]
  %conv119.i.2237.lcssa = phi i64 [ %conv119.i.2237, %for.body.180 ]
  %conv106.i.2234.lcssa = phi i64 [ %conv106.i.2234, %for.body.180 ]
  %conv96.i.2231.lcssa = phi i64 [ %conv96.i.2231, %for.body.180 ]
  %conv86.i.2228.lcssa = phi i64 [ %conv86.i.2228, %for.body.180 ]
  %cmp62 = icmp slt i32 %mul, 9
  br i1 %cmp62, label %for.body, label %for.body.230.preheader

for.body.230.preheader:                           ; preds = %for.end, %for.inc.226
  br label %for.body.230

for.body.230:                                     ; preds = %for.body.230.preheader, %for.inc.525
  %indvars.iv2708 = phi i64 [ %indvars.iv.next2709, %for.inc.525 ], [ 0, %for.body.230.preheader ]
  %arrayidx233 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708
  %136 = bitcast [16 x [3 x [4 x i64]]]* %arrayidx233 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %136, i8 0, i64 96, i32 8, i1 false)
  %arraydecay240 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 0
  %arraydecay246 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 0
  %arraydecay252 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 0
  %arraydecay258 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 0
  %arraydecay264 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 0
  %arraydecay270 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 0
  %arraydecay276 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 2, i64 0, i64 0
  %arraydecay282 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 2, i64 1, i64 0
  %arraydecay288 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 2, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %137 = load i64, i64* %arraydecay258, align 8, !tbaa !6
  %conv.i.i.973 = zext i64 %137 to i128
  store i128 %conv.i.i.973, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.974 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 1
  %138 = load i64, i64* %arrayidx2.i.i.974, align 8, !tbaa !6
  %conv3.i.i.975 = zext i64 %138 to i128
  store i128 %conv3.i.i.975, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.977 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 2
  %139 = load i64, i64* %arrayidx5.i.i.977, align 8, !tbaa !6
  %conv6.i.i.978 = zext i64 %139 to i128
  store i128 %conv6.i.i.978, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.980 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 3
  %140 = load i64, i64* %arrayidx8.i.i.980, align 8, !tbaa !6
  %conv9.i.i.981 = zext i64 %140 to i128
  store i128 %conv9.i.i.981, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %141 = load i64, i64* %arraydecay264, align 8, !tbaa !6
  %conv.i.12.i.984 = zext i64 %141 to i128
  store i128 %conv.i.12.i.984, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.985 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 1
  %142 = load i64, i64* %arrayidx2.i.13.i.985, align 8, !tbaa !6
  %conv3.i.14.i.986 = zext i64 %142 to i128
  store i128 %conv3.i.14.i.986, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.988 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 2
  %143 = load i64, i64* %arrayidx5.i.16.i.988, align 8, !tbaa !6
  %conv6.i.17.i.989 = zext i64 %143 to i128
  store i128 %conv6.i.17.i.989, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.991 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 3
  %144 = load i64, i64* %arrayidx8.i.19.i.991, align 8, !tbaa !6
  %conv9.i.20.i.992 = zext i64 %144 to i128
  store i128 %conv9.i.20.i.992, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %145 = load i64, i64* %arraydecay270, align 8, !tbaa !6
  %conv.i.22.i.995 = zext i64 %145 to i128
  store i128 %conv.i.22.i.995, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.996 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 1
  %146 = load i64, i64* %arrayidx2.i.23.i.996, align 8, !tbaa !6
  %conv3.i.24.i.997 = zext i64 %146 to i128
  store i128 %conv3.i.24.i.997, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.999 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 2
  %147 = load i64, i64* %arrayidx5.i.26.i.999, align 8, !tbaa !6
  %conv6.i.27.i.1000 = zext i64 %147 to i128
  store i128 %conv6.i.27.i.1000, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1002 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 3
  %148 = load i64, i64* %arrayidx8.i.29.i.1002, align 8, !tbaa !6
  %conv9.i.30.i.1003 = zext i64 %148 to i128
  store i128 %conv9.i.30.i.1003, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i, i32 0, i64* %arraydecay276, i64* %arraydecay282, i64* %arraydecay288) #1
  %149 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.1955 = add i128 %149, 18446744069414584320
  %150 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.1957 = lshr i128 %150, 64
  %add8.i.1958 = add i128 %add.i.1955, %shr.i.1957
  %conv12.i.1959 = and i128 %150, 18446744073709551615
  %add13.i.1960 = add nuw nsw i128 %conv12.i.1959, 18446673704965373952
  %151 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.1961 = add i128 %151, 18446744073709551615
  %152 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.1963 = add i128 %152, 1298074214633706907132628377272319
  %shr22.i.1964 = lshr i128 %add8.i.1958, 64
  %conv23.i.1965 = trunc i128 %shr22.i.1964 to i64
  %conv26.i.1966 = and i128 %add8.i.1958, 18446744073709551615
  %sub.i.1967 = sub nsw i128 %conv26.i.1966, %shr22.i.1964
  %shl.i.1968 = shl nuw nsw i128 %shr22.i.1964, 32
  %add32.i.1969 = add nsw i128 %sub.i.1967, %shl.i.1968
  %shr34.i.1970 = lshr i128 %add32.i.1969, 64
  %conv35.i.1971 = trunc i128 %shr34.i.1970 to i64
  %add36.i.1972 = add i64 %conv35.i.1971, %conv23.i.1965
  %conv39.i.1973 = and i128 %add32.i.1969, 18446744073709551615
  %sub43.i.1974 = sub nsw i128 %conv39.i.1973, %shr34.i.1970
  %shl45.i.1975 = shl nuw nsw i128 %shr34.i.1970, 32
  %add47.i.1976 = add nsw i128 %sub43.i.1974, %shl45.i.1975
  %conv48.i.1977 = zext i64 %add36.i.1972 to i128
  %add50.i.1978 = add i128 %add16.i.1961, %conv48.i.1977
  %shl52.i.1979 = shl nuw nsw i128 %conv48.i.1977, 32
  %sub54.i.1980 = sub i128 %add19.i.1963, %shl52.i.1979
  %shr56.i.1981 = lshr i128 %add47.i.1976, 64
  %conv57.i.1982 = trunc i128 %shr56.i.1981 to i64
  %sub58.i.1983 = sub i64 0, %conv57.i.1982
  %conv60.i.1984 = trunc i128 %add47.i.1976 to i64
  %and.i.1985 = and i64 %conv60.i.1984, 9223372036854775807
  %neg.i.1986 = sub nsw i64 9223372032559808512, %and.i.1985
  %sub62177.i.1987 = and i64 %neg.i.1986, %conv60.i.1984
  %and66.i.1988 = ashr i64 %sub62177.i.1987, 63
  %or.i.1989 = or i64 %and66.i.1988, %sub58.i.1983
  %conv68.i.1990 = zext i64 %or.i.1989 to i128
  %sub70.i.1991 = sub i128 %add50.i.1978, %conv68.i.1990
  %and71.i.1992 = and i64 %or.i.1989, 4294967295
  %conv72.i.1993 = zext i64 %and71.i.1992 to i128
  %sub74.i.1994 = sub i128 %sub54.i.1980, %conv72.i.1993
  %and75.i.1995 = and i64 %or.i.1989, -4294967295
  %conv76.i.1996 = zext i64 %and75.i.1995 to i128
  %sub78.i.1997 = sub nsw i128 %add47.i.1976, %conv76.i.1996
  %shr80.i.1998 = lshr i128 %sub70.i.1991, 64
  %add84.i.1999 = add i128 %sub74.i.1994, %shr80.i.1998
  %conv86.i.2000 = trunc i128 %sub70.i.1991 to i64
  %shr90.i.2001 = lshr i128 %add84.i.1999, 64
  %add94.i.2002 = add nuw nsw i128 %add13.i.1960, %shr90.i.2001
  %conv96.i.2003 = trunc i128 %add84.i.1999 to i64
  %shr100.i.2004 = lshr i128 %add94.i.2002, 64
  %add104.i.2005 = add nsw i128 %sub78.i.1997, %shr100.i.2004
  %conv106.i.2006 = trunc i128 %add94.i.2002 to i64
  store i64 %conv86.i.2000, i64* %arraydecay240, align 8, !tbaa !6
  %arrayidx114.i.2007 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 1
  store i64 %conv96.i.2003, i64* %arrayidx114.i.2007, align 8, !tbaa !6
  %arrayidx117.i.2008 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 2
  store i64 %conv106.i.2006, i64* %arrayidx117.i.2008, align 8, !tbaa !6
  %conv119.i.2009 = trunc i128 %add104.i.2005 to i64
  %arrayidx120.i.2010 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 3
  store i64 %conv119.i.2009, i64* %arrayidx120.i.2010, align 8, !tbaa !6
  %153 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.2012 = add i128 %153, 18446744069414584320
  %154 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.2014 = lshr i128 %154, 64
  %add8.i.2015 = add i128 %add.i.2012, %shr.i.2014
  %conv12.i.2016 = and i128 %154, 18446744073709551615
  %add13.i.2017 = add nuw nsw i128 %conv12.i.2016, 18446673704965373952
  %155 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.2018 = add i128 %155, 18446744073709551615
  %156 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.2020 = add i128 %156, 1298074214633706907132628377272319
  %shr22.i.2021 = lshr i128 %add8.i.2015, 64
  %conv23.i.2022 = trunc i128 %shr22.i.2021 to i64
  %conv26.i.2023 = and i128 %add8.i.2015, 18446744073709551615
  %sub.i.2024 = sub nsw i128 %conv26.i.2023, %shr22.i.2021
  %shl.i.2025 = shl nuw nsw i128 %shr22.i.2021, 32
  %add32.i.2026 = add nsw i128 %sub.i.2024, %shl.i.2025
  %shr34.i.2027 = lshr i128 %add32.i.2026, 64
  %conv35.i.2028 = trunc i128 %shr34.i.2027 to i64
  %add36.i.2029 = add i64 %conv35.i.2028, %conv23.i.2022
  %conv39.i.2030 = and i128 %add32.i.2026, 18446744073709551615
  %sub43.i.2031 = sub nsw i128 %conv39.i.2030, %shr34.i.2027
  %shl45.i.2032 = shl nuw nsw i128 %shr34.i.2027, 32
  %add47.i.2033 = add nsw i128 %sub43.i.2031, %shl45.i.2032
  %conv48.i.2034 = zext i64 %add36.i.2029 to i128
  %add50.i.2035 = add i128 %add16.i.2018, %conv48.i.2034
  %shl52.i.2036 = shl nuw nsw i128 %conv48.i.2034, 32
  %sub54.i.2037 = sub i128 %add19.i.2020, %shl52.i.2036
  %shr56.i.2038 = lshr i128 %add47.i.2033, 64
  %conv57.i.2039 = trunc i128 %shr56.i.2038 to i64
  %sub58.i.2040 = sub i64 0, %conv57.i.2039
  %conv60.i.2041 = trunc i128 %add47.i.2033 to i64
  %and.i.2042 = and i64 %conv60.i.2041, 9223372036854775807
  %neg.i.2043 = sub nsw i64 9223372032559808512, %and.i.2042
  %sub62177.i.2044 = and i64 %neg.i.2043, %conv60.i.2041
  %and66.i.2045 = ashr i64 %sub62177.i.2044, 63
  %or.i.2046 = or i64 %and66.i.2045, %sub58.i.2040
  %conv68.i.2047 = zext i64 %or.i.2046 to i128
  %sub70.i.2048 = sub i128 %add50.i.2035, %conv68.i.2047
  %and71.i.2049 = and i64 %or.i.2046, 4294967295
  %conv72.i.2050 = zext i64 %and71.i.2049 to i128
  %sub74.i.2051 = sub i128 %sub54.i.2037, %conv72.i.2050
  %and75.i.2052 = and i64 %or.i.2046, -4294967295
  %conv76.i.2053 = zext i64 %and75.i.2052 to i128
  %sub78.i.2054 = sub nsw i128 %add47.i.2033, %conv76.i.2053
  %shr80.i.2055 = lshr i128 %sub70.i.2048, 64
  %add84.i.2056 = add i128 %sub74.i.2051, %shr80.i.2055
  %conv86.i.2057 = trunc i128 %sub70.i.2048 to i64
  %shr90.i.2058 = lshr i128 %add84.i.2056, 64
  %add94.i.2059 = add nuw nsw i128 %add13.i.2017, %shr90.i.2058
  %conv96.i.2060 = trunc i128 %add84.i.2056 to i64
  %shr100.i.2061 = lshr i128 %add94.i.2059, 64
  %add104.i.2062 = add nsw i128 %sub78.i.2054, %shr100.i.2061
  %conv106.i.2063 = trunc i128 %add94.i.2059 to i64
  store i64 %conv86.i.2057, i64* %arraydecay246, align 8, !tbaa !6
  %arrayidx114.i.2064 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 1
  store i64 %conv96.i.2060, i64* %arrayidx114.i.2064, align 8, !tbaa !6
  %arrayidx117.i.2065 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 2
  store i64 %conv106.i.2063, i64* %arrayidx117.i.2065, align 8, !tbaa !6
  %conv119.i.2066 = trunc i128 %add104.i.2062 to i64
  %arrayidx120.i.2067 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 3
  store i64 %conv119.i.2066, i64* %arrayidx120.i.2067, align 8, !tbaa !6
  %157 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.2069 = add i128 %157, 18446744069414584320
  %158 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.2071 = lshr i128 %158, 64
  %add8.i.2072 = add i128 %add.i.2069, %shr.i.2071
  %conv12.i.2073 = and i128 %158, 18446744073709551615
  %add13.i.2074 = add nuw nsw i128 %conv12.i.2073, 18446673704965373952
  %159 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.2075 = add i128 %159, 18446744073709551615
  %160 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.2077 = add i128 %160, 1298074214633706907132628377272319
  %shr22.i.2078 = lshr i128 %add8.i.2072, 64
  %conv23.i.2079 = trunc i128 %shr22.i.2078 to i64
  %conv26.i.2080 = and i128 %add8.i.2072, 18446744073709551615
  %sub.i.2081 = sub nsw i128 %conv26.i.2080, %shr22.i.2078
  %shl.i.2082 = shl nuw nsw i128 %shr22.i.2078, 32
  %add32.i.2083 = add nsw i128 %sub.i.2081, %shl.i.2082
  %shr34.i.2084 = lshr i128 %add32.i.2083, 64
  %conv35.i.2085 = trunc i128 %shr34.i.2084 to i64
  %add36.i.2086 = add i64 %conv35.i.2085, %conv23.i.2079
  %conv39.i.2087 = and i128 %add32.i.2083, 18446744073709551615
  %sub43.i.2088 = sub nsw i128 %conv39.i.2087, %shr34.i.2084
  %shl45.i.2089 = shl nuw nsw i128 %shr34.i.2084, 32
  %add47.i.2090 = add nsw i128 %sub43.i.2088, %shl45.i.2089
  %conv48.i.2091 = zext i64 %add36.i.2086 to i128
  %add50.i.2092 = add i128 %add16.i.2075, %conv48.i.2091
  %shl52.i.2093 = shl nuw nsw i128 %conv48.i.2091, 32
  %sub54.i.2094 = sub i128 %add19.i.2077, %shl52.i.2093
  %shr56.i.2095 = lshr i128 %add47.i.2090, 64
  %conv57.i.2096 = trunc i128 %shr56.i.2095 to i64
  %sub58.i.2097 = sub i64 0, %conv57.i.2096
  %conv60.i.2098 = trunc i128 %add47.i.2090 to i64
  %and.i.2099 = and i64 %conv60.i.2098, 9223372036854775807
  %neg.i.2100 = sub nsw i64 9223372032559808512, %and.i.2099
  %sub62177.i.2101 = and i64 %neg.i.2100, %conv60.i.2098
  %and66.i.2102 = ashr i64 %sub62177.i.2101, 63
  %or.i.2103 = or i64 %and66.i.2102, %sub58.i.2097
  %conv68.i.2104 = zext i64 %or.i.2103 to i128
  %sub70.i.2105 = sub i128 %add50.i.2092, %conv68.i.2104
  %and71.i.2106 = and i64 %or.i.2103, 4294967295
  %conv72.i.2107 = zext i64 %and71.i.2106 to i128
  %sub74.i.2108 = sub i128 %sub54.i.2094, %conv72.i.2107
  %and75.i.2109 = and i64 %or.i.2103, -4294967295
  %conv76.i.2110 = zext i64 %and75.i.2109 to i128
  %sub78.i.2111 = sub nsw i128 %add47.i.2090, %conv76.i.2110
  %shr80.i.2112 = lshr i128 %sub70.i.2105, 64
  %add84.i.2113 = add i128 %sub74.i.2108, %shr80.i.2112
  %conv86.i.2114 = trunc i128 %sub70.i.2105 to i64
  %shr90.i.2115 = lshr i128 %add84.i.2113, 64
  %add94.i.2116 = add nuw nsw i128 %add13.i.2074, %shr90.i.2115
  %conv96.i.2117 = trunc i128 %add84.i.2113 to i64
  %shr100.i.2118 = lshr i128 %add94.i.2116, 64
  %add104.i.2119 = add nsw i128 %sub78.i.2111, %shr100.i.2118
  %conv106.i.2120 = trunc i128 %add94.i.2116 to i64
  store i64 %conv86.i.2114, i64* %arraydecay252, align 8, !tbaa !6
  %arrayidx114.i.2121 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 1
  store i64 %conv96.i.2117, i64* %arrayidx114.i.2121, align 8, !tbaa !6
  %arrayidx117.i.2122 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 2
  store i64 %conv106.i.2120, i64* %arrayidx117.i.2122, align 8, !tbaa !6
  %conv119.i.2123 = trunc i128 %add104.i.2119 to i64
  %arrayidx120.i.2124 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 3
  store i64 %conv119.i.2123, i64* %arrayidx120.i.2124, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %arraydecay294 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 0
  %arraydecay300 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 0
  %arraydecay306 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 0
  %arraydecay312 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 0
  %arraydecay318 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 0
  %arraydecay324 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %161 = load i64, i64* %arraydecay312, align 8, !tbaa !6
  %conv.i.i.1009 = zext i64 %161 to i128
  store i128 %conv.i.i.1009, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.1010 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 1
  %162 = load i64, i64* %arrayidx2.i.i.1010, align 8, !tbaa !6
  %conv3.i.i.1011 = zext i64 %162 to i128
  store i128 %conv3.i.i.1011, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.1013 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 2
  %163 = load i64, i64* %arrayidx5.i.i.1013, align 8, !tbaa !6
  %conv6.i.i.1014 = zext i64 %163 to i128
  store i128 %conv6.i.i.1014, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.1016 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 3
  %164 = load i64, i64* %arrayidx8.i.i.1016, align 8, !tbaa !6
  %conv9.i.i.1017 = zext i64 %164 to i128
  store i128 %conv9.i.i.1017, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %165 = load i64, i64* %arraydecay318, align 8, !tbaa !6
  %conv.i.12.i.1020 = zext i64 %165 to i128
  store i128 %conv.i.12.i.1020, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.1021 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 1
  %166 = load i64, i64* %arrayidx2.i.13.i.1021, align 8, !tbaa !6
  %conv3.i.14.i.1022 = zext i64 %166 to i128
  store i128 %conv3.i.14.i.1022, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.1024 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 2
  %167 = load i64, i64* %arrayidx5.i.16.i.1024, align 8, !tbaa !6
  %conv6.i.17.i.1025 = zext i64 %167 to i128
  store i128 %conv6.i.17.i.1025, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.1027 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 3
  %168 = load i64, i64* %arrayidx8.i.19.i.1027, align 8, !tbaa !6
  %conv9.i.20.i.1028 = zext i64 %168 to i128
  store i128 %conv9.i.20.i.1028, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %169 = load i64, i64* %arraydecay324, align 8, !tbaa !6
  %conv.i.22.i.1031 = zext i64 %169 to i128
  store i128 %conv.i.22.i.1031, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.1032 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 1
  %170 = load i64, i64* %arrayidx2.i.23.i.1032, align 8, !tbaa !6
  %conv3.i.24.i.1033 = zext i64 %170 to i128
  store i128 %conv3.i.24.i.1033, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.1035 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 2
  %171 = load i64, i64* %arrayidx5.i.26.i.1035, align 8, !tbaa !6
  %conv6.i.27.i.1036 = zext i64 %171 to i128
  store i128 %conv6.i.27.i.1036, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1038 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 3
  %172 = load i64, i64* %arrayidx8.i.29.i.1038, align 8, !tbaa !6
  %conv9.i.30.i.1039 = zext i64 %172 to i128
  store i128 %conv9.i.30.i.1039, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i, i32 0, i64* %arraydecay276, i64* %arraydecay282, i64* %arraydecay288) #1
  %173 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.1784 = add i128 %173, 18446744069414584320
  %174 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.1786 = lshr i128 %174, 64
  %add8.i.1787 = add i128 %add.i.1784, %shr.i.1786
  %conv12.i.1788 = and i128 %174, 18446744073709551615
  %add13.i.1789 = add nuw nsw i128 %conv12.i.1788, 18446673704965373952
  %175 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.1790 = add i128 %175, 18446744073709551615
  %176 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.1792 = add i128 %176, 1298074214633706907132628377272319
  %shr22.i.1793 = lshr i128 %add8.i.1787, 64
  %conv23.i.1794 = trunc i128 %shr22.i.1793 to i64
  %conv26.i.1795 = and i128 %add8.i.1787, 18446744073709551615
  %sub.i.1796 = sub nsw i128 %conv26.i.1795, %shr22.i.1793
  %shl.i.1797 = shl nuw nsw i128 %shr22.i.1793, 32
  %add32.i.1798 = add nsw i128 %sub.i.1796, %shl.i.1797
  %shr34.i.1799 = lshr i128 %add32.i.1798, 64
  %conv35.i.1800 = trunc i128 %shr34.i.1799 to i64
  %add36.i.1801 = add i64 %conv35.i.1800, %conv23.i.1794
  %conv39.i.1802 = and i128 %add32.i.1798, 18446744073709551615
  %sub43.i.1803 = sub nsw i128 %conv39.i.1802, %shr34.i.1799
  %shl45.i.1804 = shl nuw nsw i128 %shr34.i.1799, 32
  %add47.i.1805 = add nsw i128 %sub43.i.1803, %shl45.i.1804
  %conv48.i.1806 = zext i64 %add36.i.1801 to i128
  %add50.i.1807 = add i128 %add16.i.1790, %conv48.i.1806
  %shl52.i.1808 = shl nuw nsw i128 %conv48.i.1806, 32
  %sub54.i.1809 = sub i128 %add19.i.1792, %shl52.i.1808
  %shr56.i.1810 = lshr i128 %add47.i.1805, 64
  %conv57.i.1811 = trunc i128 %shr56.i.1810 to i64
  %sub58.i.1812 = sub i64 0, %conv57.i.1811
  %conv60.i.1813 = trunc i128 %add47.i.1805 to i64
  %and.i.1814 = and i64 %conv60.i.1813, 9223372036854775807
  %neg.i.1815 = sub nsw i64 9223372032559808512, %and.i.1814
  %sub62177.i.1816 = and i64 %neg.i.1815, %conv60.i.1813
  %and66.i.1817 = ashr i64 %sub62177.i.1816, 63
  %or.i.1818 = or i64 %and66.i.1817, %sub58.i.1812
  %conv68.i.1819 = zext i64 %or.i.1818 to i128
  %sub70.i.1820 = sub i128 %add50.i.1807, %conv68.i.1819
  %and71.i.1821 = and i64 %or.i.1818, 4294967295
  %conv72.i.1822 = zext i64 %and71.i.1821 to i128
  %sub74.i.1823 = sub i128 %sub54.i.1809, %conv72.i.1822
  %and75.i.1824 = and i64 %or.i.1818, -4294967295
  %conv76.i.1825 = zext i64 %and75.i.1824 to i128
  %sub78.i.1826 = sub nsw i128 %add47.i.1805, %conv76.i.1825
  %shr80.i.1827 = lshr i128 %sub70.i.1820, 64
  %add84.i.1828 = add i128 %sub74.i.1823, %shr80.i.1827
  %conv86.i.1829 = trunc i128 %sub70.i.1820 to i64
  %shr90.i.1830 = lshr i128 %add84.i.1828, 64
  %add94.i.1831 = add nuw nsw i128 %add13.i.1789, %shr90.i.1830
  %conv96.i.1832 = trunc i128 %add84.i.1828 to i64
  %shr100.i.1833 = lshr i128 %add94.i.1831, 64
  %add104.i.1834 = add nsw i128 %sub78.i.1826, %shr100.i.1833
  %conv106.i.1835 = trunc i128 %add94.i.1831 to i64
  store i64 %conv86.i.1829, i64* %arraydecay294, align 8, !tbaa !6
  %arrayidx114.i.1836 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 1
  store i64 %conv96.i.1832, i64* %arrayidx114.i.1836, align 8, !tbaa !6
  %arrayidx117.i.1837 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 2
  store i64 %conv106.i.1835, i64* %arrayidx117.i.1837, align 8, !tbaa !6
  %conv119.i.1838 = trunc i128 %add104.i.1834 to i64
  %arrayidx120.i.1839 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 3
  store i64 %conv119.i.1838, i64* %arrayidx120.i.1839, align 8, !tbaa !6
  %177 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.1841 = add i128 %177, 18446744069414584320
  %178 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.1843 = lshr i128 %178, 64
  %add8.i.1844 = add i128 %add.i.1841, %shr.i.1843
  %conv12.i.1845 = and i128 %178, 18446744073709551615
  %add13.i.1846 = add nuw nsw i128 %conv12.i.1845, 18446673704965373952
  %179 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.1847 = add i128 %179, 18446744073709551615
  %180 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.1849 = add i128 %180, 1298074214633706907132628377272319
  %shr22.i.1850 = lshr i128 %add8.i.1844, 64
  %conv23.i.1851 = trunc i128 %shr22.i.1850 to i64
  %conv26.i.1852 = and i128 %add8.i.1844, 18446744073709551615
  %sub.i.1853 = sub nsw i128 %conv26.i.1852, %shr22.i.1850
  %shl.i.1854 = shl nuw nsw i128 %shr22.i.1850, 32
  %add32.i.1855 = add nsw i128 %sub.i.1853, %shl.i.1854
  %shr34.i.1856 = lshr i128 %add32.i.1855, 64
  %conv35.i.1857 = trunc i128 %shr34.i.1856 to i64
  %add36.i.1858 = add i64 %conv35.i.1857, %conv23.i.1851
  %conv39.i.1859 = and i128 %add32.i.1855, 18446744073709551615
  %sub43.i.1860 = sub nsw i128 %conv39.i.1859, %shr34.i.1856
  %shl45.i.1861 = shl nuw nsw i128 %shr34.i.1856, 32
  %add47.i.1862 = add nsw i128 %sub43.i.1860, %shl45.i.1861
  %conv48.i.1863 = zext i64 %add36.i.1858 to i128
  %add50.i.1864 = add i128 %add16.i.1847, %conv48.i.1863
  %shl52.i.1865 = shl nuw nsw i128 %conv48.i.1863, 32
  %sub54.i.1866 = sub i128 %add19.i.1849, %shl52.i.1865
  %shr56.i.1867 = lshr i128 %add47.i.1862, 64
  %conv57.i.1868 = trunc i128 %shr56.i.1867 to i64
  %sub58.i.1869 = sub i64 0, %conv57.i.1868
  %conv60.i.1870 = trunc i128 %add47.i.1862 to i64
  %and.i.1871 = and i64 %conv60.i.1870, 9223372036854775807
  %neg.i.1872 = sub nsw i64 9223372032559808512, %and.i.1871
  %sub62177.i.1873 = and i64 %neg.i.1872, %conv60.i.1870
  %and66.i.1874 = ashr i64 %sub62177.i.1873, 63
  %or.i.1875 = or i64 %and66.i.1874, %sub58.i.1869
  %conv68.i.1876 = zext i64 %or.i.1875 to i128
  %sub70.i.1877 = sub i128 %add50.i.1864, %conv68.i.1876
  %and71.i.1878 = and i64 %or.i.1875, 4294967295
  %conv72.i.1879 = zext i64 %and71.i.1878 to i128
  %sub74.i.1880 = sub i128 %sub54.i.1866, %conv72.i.1879
  %and75.i.1881 = and i64 %or.i.1875, -4294967295
  %conv76.i.1882 = zext i64 %and75.i.1881 to i128
  %sub78.i.1883 = sub nsw i128 %add47.i.1862, %conv76.i.1882
  %shr80.i.1884 = lshr i128 %sub70.i.1877, 64
  %add84.i.1885 = add i128 %sub74.i.1880, %shr80.i.1884
  %conv86.i.1886 = trunc i128 %sub70.i.1877 to i64
  %shr90.i.1887 = lshr i128 %add84.i.1885, 64
  %add94.i.1888 = add nuw nsw i128 %add13.i.1846, %shr90.i.1887
  %conv96.i.1889 = trunc i128 %add84.i.1885 to i64
  %shr100.i.1890 = lshr i128 %add94.i.1888, 64
  %add104.i.1891 = add nsw i128 %sub78.i.1883, %shr100.i.1890
  %conv106.i.1892 = trunc i128 %add94.i.1888 to i64
  store i64 %conv86.i.1886, i64* %arraydecay300, align 8, !tbaa !6
  %arrayidx114.i.1893 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 1
  store i64 %conv96.i.1889, i64* %arrayidx114.i.1893, align 8, !tbaa !6
  %arrayidx117.i.1894 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 2
  store i64 %conv106.i.1892, i64* %arrayidx117.i.1894, align 8, !tbaa !6
  %conv119.i.1895 = trunc i128 %add104.i.1891 to i64
  %arrayidx120.i.1896 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 3
  store i64 %conv119.i.1895, i64* %arrayidx120.i.1896, align 8, !tbaa !6
  %181 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.1898 = add i128 %181, 18446744069414584320
  %182 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.1900 = lshr i128 %182, 64
  %add8.i.1901 = add i128 %add.i.1898, %shr.i.1900
  %conv12.i.1902 = and i128 %182, 18446744073709551615
  %add13.i.1903 = add nuw nsw i128 %conv12.i.1902, 18446673704965373952
  %183 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.1904 = add i128 %183, 18446744073709551615
  %184 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.1906 = add i128 %184, 1298074214633706907132628377272319
  %shr22.i.1907 = lshr i128 %add8.i.1901, 64
  %conv23.i.1908 = trunc i128 %shr22.i.1907 to i64
  %conv26.i.1909 = and i128 %add8.i.1901, 18446744073709551615
  %sub.i.1910 = sub nsw i128 %conv26.i.1909, %shr22.i.1907
  %shl.i.1911 = shl nuw nsw i128 %shr22.i.1907, 32
  %add32.i.1912 = add nsw i128 %sub.i.1910, %shl.i.1911
  %shr34.i.1913 = lshr i128 %add32.i.1912, 64
  %conv35.i.1914 = trunc i128 %shr34.i.1913 to i64
  %add36.i.1915 = add i64 %conv35.i.1914, %conv23.i.1908
  %conv39.i.1916 = and i128 %add32.i.1912, 18446744073709551615
  %sub43.i.1917 = sub nsw i128 %conv39.i.1916, %shr34.i.1913
  %shl45.i.1918 = shl nuw nsw i128 %shr34.i.1913, 32
  %add47.i.1919 = add nsw i128 %sub43.i.1917, %shl45.i.1918
  %conv48.i.1920 = zext i64 %add36.i.1915 to i128
  %add50.i.1921 = add i128 %add16.i.1904, %conv48.i.1920
  %shl52.i.1922 = shl nuw nsw i128 %conv48.i.1920, 32
  %sub54.i.1923 = sub i128 %add19.i.1906, %shl52.i.1922
  %shr56.i.1924 = lshr i128 %add47.i.1919, 64
  %conv57.i.1925 = trunc i128 %shr56.i.1924 to i64
  %sub58.i.1926 = sub i64 0, %conv57.i.1925
  %conv60.i.1927 = trunc i128 %add47.i.1919 to i64
  %and.i.1928 = and i64 %conv60.i.1927, 9223372036854775807
  %neg.i.1929 = sub nsw i64 9223372032559808512, %and.i.1928
  %sub62177.i.1930 = and i64 %neg.i.1929, %conv60.i.1927
  %and66.i.1931 = ashr i64 %sub62177.i.1930, 63
  %or.i.1932 = or i64 %and66.i.1931, %sub58.i.1926
  %conv68.i.1933 = zext i64 %or.i.1932 to i128
  %sub70.i.1934 = sub i128 %add50.i.1921, %conv68.i.1933
  %and71.i.1935 = and i64 %or.i.1932, 4294967295
  %conv72.i.1936 = zext i64 %and71.i.1935 to i128
  %sub74.i.1937 = sub i128 %sub54.i.1923, %conv72.i.1936
  %and75.i.1938 = and i64 %or.i.1932, -4294967295
  %conv76.i.1939 = zext i64 %and75.i.1938 to i128
  %sub78.i.1940 = sub nsw i128 %add47.i.1919, %conv76.i.1939
  %shr80.i.1941 = lshr i128 %sub70.i.1934, 64
  %add84.i.1942 = add i128 %sub74.i.1937, %shr80.i.1941
  %conv86.i.1943 = trunc i128 %sub70.i.1934 to i64
  %shr90.i.1944 = lshr i128 %add84.i.1942, 64
  %add94.i.1945 = add nuw nsw i128 %add13.i.1903, %shr90.i.1944
  %conv96.i.1946 = trunc i128 %add84.i.1942 to i64
  %shr100.i.1947 = lshr i128 %add94.i.1945, 64
  %add104.i.1948 = add nsw i128 %sub78.i.1940, %shr100.i.1947
  %conv106.i.1949 = trunc i128 %add94.i.1945 to i64
  store i64 %conv86.i.1943, i64* %arraydecay306, align 8, !tbaa !6
  %arrayidx114.i.1950 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 1
  store i64 %conv96.i.1946, i64* %arrayidx114.i.1950, align 8, !tbaa !6
  %arrayidx117.i.1951 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 2
  store i64 %conv106.i.1949, i64* %arrayidx117.i.1951, align 8, !tbaa !6
  %conv119.i.1952 = trunc i128 %add104.i.1948 to i64
  %arrayidx120.i.1953 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 3
  store i64 %conv119.i.1952, i64* %arrayidx120.i.1953, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %arraydecay348 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 0
  %arraydecay354 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 0
  %arraydecay360 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %185 = load i64, i64* %arraydecay312, align 8, !tbaa !6
  %conv.i.i.1045 = zext i64 %185 to i128
  store i128 %conv.i.i.1045, i128* %arraydecay.i, align 16, !tbaa !2
  %186 = load i64, i64* %arrayidx2.i.i.1010, align 8, !tbaa !6
  %conv3.i.i.1047 = zext i64 %186 to i128
  store i128 %conv3.i.i.1047, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %187 = load i64, i64* %arrayidx5.i.i.1013, align 8, !tbaa !6
  %conv6.i.i.1050 = zext i64 %187 to i128
  store i128 %conv6.i.i.1050, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %188 = load i64, i64* %arrayidx8.i.i.1016, align 8, !tbaa !6
  %conv9.i.i.1053 = zext i64 %188 to i128
  store i128 %conv9.i.i.1053, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %189 = load i64, i64* %arraydecay318, align 8, !tbaa !6
  %conv.i.12.i.1056 = zext i64 %189 to i128
  store i128 %conv.i.12.i.1056, i128* %arraydecay1.i, align 16, !tbaa !2
  %190 = load i64, i64* %arrayidx2.i.13.i.1021, align 8, !tbaa !6
  %conv3.i.14.i.1058 = zext i64 %190 to i128
  store i128 %conv3.i.14.i.1058, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %191 = load i64, i64* %arrayidx5.i.16.i.1024, align 8, !tbaa !6
  %conv6.i.17.i.1061 = zext i64 %191 to i128
  store i128 %conv6.i.17.i.1061, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %192 = load i64, i64* %arrayidx8.i.19.i.1027, align 8, !tbaa !6
  %conv9.i.20.i.1064 = zext i64 %192 to i128
  store i128 %conv9.i.20.i.1064, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %193 = load i64, i64* %arraydecay324, align 8, !tbaa !6
  %conv.i.22.i.1067 = zext i64 %193 to i128
  store i128 %conv.i.22.i.1067, i128* %arraydecay2.i, align 16, !tbaa !2
  %194 = load i64, i64* %arrayidx2.i.23.i.1032, align 8, !tbaa !6
  %conv3.i.24.i.1069 = zext i64 %194 to i128
  store i128 %conv3.i.24.i.1069, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %195 = load i64, i64* %arrayidx5.i.26.i.1035, align 8, !tbaa !6
  %conv6.i.27.i.1072 = zext i64 %195 to i128
  store i128 %conv6.i.27.i.1072, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %196 = load i64, i64* %arrayidx8.i.29.i.1038, align 8, !tbaa !6
  %conv9.i.30.i.1075 = zext i64 %196 to i128
  store i128 %conv9.i.30.i.1075, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i, i32 0, i64* %arraydecay258, i64* %arraydecay264, i64* %arraydecay270) #1
  %197 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.1613 = add i128 %197, 18446744069414584320
  %198 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.1615 = lshr i128 %198, 64
  %add8.i.1616 = add i128 %add.i.1613, %shr.i.1615
  %conv12.i.1617 = and i128 %198, 18446744073709551615
  %add13.i.1618 = add nuw nsw i128 %conv12.i.1617, 18446673704965373952
  %199 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.1619 = add i128 %199, 18446744073709551615
  %200 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.1621 = add i128 %200, 1298074214633706907132628377272319
  %shr22.i.1622 = lshr i128 %add8.i.1616, 64
  %conv23.i.1623 = trunc i128 %shr22.i.1622 to i64
  %conv26.i.1624 = and i128 %add8.i.1616, 18446744073709551615
  %sub.i.1625 = sub nsw i128 %conv26.i.1624, %shr22.i.1622
  %shl.i.1626 = shl nuw nsw i128 %shr22.i.1622, 32
  %add32.i.1627 = add nsw i128 %sub.i.1625, %shl.i.1626
  %shr34.i.1628 = lshr i128 %add32.i.1627, 64
  %conv35.i.1629 = trunc i128 %shr34.i.1628 to i64
  %add36.i.1630 = add i64 %conv35.i.1629, %conv23.i.1623
  %conv39.i.1631 = and i128 %add32.i.1627, 18446744073709551615
  %sub43.i.1632 = sub nsw i128 %conv39.i.1631, %shr34.i.1628
  %shl45.i.1633 = shl nuw nsw i128 %shr34.i.1628, 32
  %add47.i.1634 = add nsw i128 %sub43.i.1632, %shl45.i.1633
  %conv48.i.1635 = zext i64 %add36.i.1630 to i128
  %add50.i.1636 = add i128 %add16.i.1619, %conv48.i.1635
  %shl52.i.1637 = shl nuw nsw i128 %conv48.i.1635, 32
  %sub54.i.1638 = sub i128 %add19.i.1621, %shl52.i.1637
  %shr56.i.1639 = lshr i128 %add47.i.1634, 64
  %conv57.i.1640 = trunc i128 %shr56.i.1639 to i64
  %sub58.i.1641 = sub i64 0, %conv57.i.1640
  %conv60.i.1642 = trunc i128 %add47.i.1634 to i64
  %and.i.1643 = and i64 %conv60.i.1642, 9223372036854775807
  %neg.i.1644 = sub nsw i64 9223372032559808512, %and.i.1643
  %sub62177.i.1645 = and i64 %neg.i.1644, %conv60.i.1642
  %and66.i.1646 = ashr i64 %sub62177.i.1645, 63
  %or.i.1647 = or i64 %and66.i.1646, %sub58.i.1641
  %conv68.i.1648 = zext i64 %or.i.1647 to i128
  %sub70.i.1649 = sub i128 %add50.i.1636, %conv68.i.1648
  %and71.i.1650 = and i64 %or.i.1647, 4294967295
  %conv72.i.1651 = zext i64 %and71.i.1650 to i128
  %sub74.i.1652 = sub i128 %sub54.i.1638, %conv72.i.1651
  %and75.i.1653 = and i64 %or.i.1647, -4294967295
  %conv76.i.1654 = zext i64 %and75.i.1653 to i128
  %sub78.i.1655 = sub nsw i128 %add47.i.1634, %conv76.i.1654
  %shr80.i.1656 = lshr i128 %sub70.i.1649, 64
  %add84.i.1657 = add i128 %sub74.i.1652, %shr80.i.1656
  %conv86.i.1658 = trunc i128 %sub70.i.1649 to i64
  %shr90.i.1659 = lshr i128 %add84.i.1657, 64
  %add94.i.1660 = add nuw nsw i128 %add13.i.1618, %shr90.i.1659
  %conv96.i.1661 = trunc i128 %add84.i.1657 to i64
  %shr100.i.1662 = lshr i128 %add94.i.1660, 64
  %add104.i.1663 = add nsw i128 %sub78.i.1655, %shr100.i.1662
  %conv106.i.1664 = trunc i128 %add94.i.1660 to i64
  store i64 %conv86.i.1658, i64* %arraydecay348, align 8, !tbaa !6
  %arrayidx114.i.1665 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 1
  store i64 %conv96.i.1661, i64* %arrayidx114.i.1665, align 8, !tbaa !6
  %arrayidx117.i.1666 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 2
  store i64 %conv106.i.1664, i64* %arrayidx117.i.1666, align 8, !tbaa !6
  %conv119.i.1667 = trunc i128 %add104.i.1663 to i64
  %arrayidx120.i.1668 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 3
  store i64 %conv119.i.1667, i64* %arrayidx120.i.1668, align 8, !tbaa !6
  %201 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.1670 = add i128 %201, 18446744069414584320
  %202 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.1672 = lshr i128 %202, 64
  %add8.i.1673 = add i128 %add.i.1670, %shr.i.1672
  %conv12.i.1674 = and i128 %202, 18446744073709551615
  %add13.i.1675 = add nuw nsw i128 %conv12.i.1674, 18446673704965373952
  %203 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.1676 = add i128 %203, 18446744073709551615
  %204 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.1678 = add i128 %204, 1298074214633706907132628377272319
  %shr22.i.1679 = lshr i128 %add8.i.1673, 64
  %conv23.i.1680 = trunc i128 %shr22.i.1679 to i64
  %conv26.i.1681 = and i128 %add8.i.1673, 18446744073709551615
  %sub.i.1682 = sub nsw i128 %conv26.i.1681, %shr22.i.1679
  %shl.i.1683 = shl nuw nsw i128 %shr22.i.1679, 32
  %add32.i.1684 = add nsw i128 %sub.i.1682, %shl.i.1683
  %shr34.i.1685 = lshr i128 %add32.i.1684, 64
  %conv35.i.1686 = trunc i128 %shr34.i.1685 to i64
  %add36.i.1687 = add i64 %conv35.i.1686, %conv23.i.1680
  %conv39.i.1688 = and i128 %add32.i.1684, 18446744073709551615
  %sub43.i.1689 = sub nsw i128 %conv39.i.1688, %shr34.i.1685
  %shl45.i.1690 = shl nuw nsw i128 %shr34.i.1685, 32
  %add47.i.1691 = add nsw i128 %sub43.i.1689, %shl45.i.1690
  %conv48.i.1692 = zext i64 %add36.i.1687 to i128
  %add50.i.1693 = add i128 %add16.i.1676, %conv48.i.1692
  %shl52.i.1694 = shl nuw nsw i128 %conv48.i.1692, 32
  %sub54.i.1695 = sub i128 %add19.i.1678, %shl52.i.1694
  %shr56.i.1696 = lshr i128 %add47.i.1691, 64
  %conv57.i.1697 = trunc i128 %shr56.i.1696 to i64
  %sub58.i.1698 = sub i64 0, %conv57.i.1697
  %conv60.i.1699 = trunc i128 %add47.i.1691 to i64
  %and.i.1700 = and i64 %conv60.i.1699, 9223372036854775807
  %neg.i.1701 = sub nsw i64 9223372032559808512, %and.i.1700
  %sub62177.i.1702 = and i64 %neg.i.1701, %conv60.i.1699
  %and66.i.1703 = ashr i64 %sub62177.i.1702, 63
  %or.i.1704 = or i64 %and66.i.1703, %sub58.i.1698
  %conv68.i.1705 = zext i64 %or.i.1704 to i128
  %sub70.i.1706 = sub i128 %add50.i.1693, %conv68.i.1705
  %and71.i.1707 = and i64 %or.i.1704, 4294967295
  %conv72.i.1708 = zext i64 %and71.i.1707 to i128
  %sub74.i.1709 = sub i128 %sub54.i.1695, %conv72.i.1708
  %and75.i.1710 = and i64 %or.i.1704, -4294967295
  %conv76.i.1711 = zext i64 %and75.i.1710 to i128
  %sub78.i.1712 = sub nsw i128 %add47.i.1691, %conv76.i.1711
  %shr80.i.1713 = lshr i128 %sub70.i.1706, 64
  %add84.i.1714 = add i128 %sub74.i.1709, %shr80.i.1713
  %conv86.i.1715 = trunc i128 %sub70.i.1706 to i64
  %shr90.i.1716 = lshr i128 %add84.i.1714, 64
  %add94.i.1717 = add nuw nsw i128 %add13.i.1675, %shr90.i.1716
  %conv96.i.1718 = trunc i128 %add84.i.1714 to i64
  %shr100.i.1719 = lshr i128 %add94.i.1717, 64
  %add104.i.1720 = add nsw i128 %sub78.i.1712, %shr100.i.1719
  %conv106.i.1721 = trunc i128 %add94.i.1717 to i64
  store i64 %conv86.i.1715, i64* %arraydecay354, align 8, !tbaa !6
  %arrayidx114.i.1722 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 1
  store i64 %conv96.i.1718, i64* %arrayidx114.i.1722, align 8, !tbaa !6
  %arrayidx117.i.1723 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 2
  store i64 %conv106.i.1721, i64* %arrayidx117.i.1723, align 8, !tbaa !6
  %conv119.i.1724 = trunc i128 %add104.i.1720 to i64
  %arrayidx120.i.1725 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 3
  store i64 %conv119.i.1724, i64* %arrayidx120.i.1725, align 8, !tbaa !6
  %205 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.1727 = add i128 %205, 18446744069414584320
  %206 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.1729 = lshr i128 %206, 64
  %add8.i.1730 = add i128 %add.i.1727, %shr.i.1729
  %conv12.i.1731 = and i128 %206, 18446744073709551615
  %add13.i.1732 = add nuw nsw i128 %conv12.i.1731, 18446673704965373952
  %207 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.1733 = add i128 %207, 18446744073709551615
  %208 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.1735 = add i128 %208, 1298074214633706907132628377272319
  %shr22.i.1736 = lshr i128 %add8.i.1730, 64
  %conv23.i.1737 = trunc i128 %shr22.i.1736 to i64
  %conv26.i.1738 = and i128 %add8.i.1730, 18446744073709551615
  %sub.i.1739 = sub nsw i128 %conv26.i.1738, %shr22.i.1736
  %shl.i.1740 = shl nuw nsw i128 %shr22.i.1736, 32
  %add32.i.1741 = add nsw i128 %sub.i.1739, %shl.i.1740
  %shr34.i.1742 = lshr i128 %add32.i.1741, 64
  %conv35.i.1743 = trunc i128 %shr34.i.1742 to i64
  %add36.i.1744 = add i64 %conv35.i.1743, %conv23.i.1737
  %conv39.i.1745 = and i128 %add32.i.1741, 18446744073709551615
  %sub43.i.1746 = sub nsw i128 %conv39.i.1745, %shr34.i.1742
  %shl45.i.1747 = shl nuw nsw i128 %shr34.i.1742, 32
  %add47.i.1748 = add nsw i128 %sub43.i.1746, %shl45.i.1747
  %conv48.i.1749 = zext i64 %add36.i.1744 to i128
  %add50.i.1750 = add i128 %add16.i.1733, %conv48.i.1749
  %shl52.i.1751 = shl nuw nsw i128 %conv48.i.1749, 32
  %sub54.i.1752 = sub i128 %add19.i.1735, %shl52.i.1751
  %shr56.i.1753 = lshr i128 %add47.i.1748, 64
  %conv57.i.1754 = trunc i128 %shr56.i.1753 to i64
  %sub58.i.1755 = sub i64 0, %conv57.i.1754
  %conv60.i.1756 = trunc i128 %add47.i.1748 to i64
  %and.i.1757 = and i64 %conv60.i.1756, 9223372036854775807
  %neg.i.1758 = sub nsw i64 9223372032559808512, %and.i.1757
  %sub62177.i.1759 = and i64 %neg.i.1758, %conv60.i.1756
  %and66.i.1760 = ashr i64 %sub62177.i.1759, 63
  %or.i.1761 = or i64 %and66.i.1760, %sub58.i.1755
  %conv68.i.1762 = zext i64 %or.i.1761 to i128
  %sub70.i.1763 = sub i128 %add50.i.1750, %conv68.i.1762
  %and71.i.1764 = and i64 %or.i.1761, 4294967295
  %conv72.i.1765 = zext i64 %and71.i.1764 to i128
  %sub74.i.1766 = sub i128 %sub54.i.1752, %conv72.i.1765
  %and75.i.1767 = and i64 %or.i.1761, -4294967295
  %conv76.i.1768 = zext i64 %and75.i.1767 to i128
  %sub78.i.1769 = sub nsw i128 %add47.i.1748, %conv76.i.1768
  %shr80.i.1770 = lshr i128 %sub70.i.1763, 64
  %add84.i.1771 = add i128 %sub74.i.1766, %shr80.i.1770
  %conv86.i.1772 = trunc i128 %sub70.i.1763 to i64
  %shr90.i.1773 = lshr i128 %add84.i.1771, 64
  %add94.i.1774 = add nuw nsw i128 %add13.i.1732, %shr90.i.1773
  %conv96.i.1775 = trunc i128 %add84.i.1771 to i64
  %shr100.i.1776 = lshr i128 %add94.i.1774, 64
  %add104.i.1777 = add nsw i128 %sub78.i.1769, %shr100.i.1776
  %conv106.i.1778 = trunc i128 %add94.i.1774 to i64
  store i64 %conv86.i.1772, i64* %arraydecay360, align 8, !tbaa !6
  %arrayidx114.i.1779 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 1
  store i64 %conv96.i.1775, i64* %arrayidx114.i.1779, align 8, !tbaa !6
  %arrayidx117.i.1780 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 2
  store i64 %conv106.i.1778, i64* %arrayidx117.i.1780, align 8, !tbaa !6
  %conv119.i.1781 = trunc i128 %add104.i.1777 to i64
  %arrayidx120.i.1782 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 3
  store i64 %conv119.i.1781, i64* %arrayidx120.i.1782, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %arraydecay402 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 0
  %arraydecay408 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 0
  %arraydecay414 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %209 = load i64, i64* %arraydecay348, align 8, !tbaa !6
  %conv.i.i.1081 = zext i64 %209 to i128
  store i128 %conv.i.i.1081, i128* %arraydecay.i, align 16, !tbaa !2
  %210 = load i64, i64* %arrayidx114.i.1665, align 8, !tbaa !6
  %conv3.i.i.1083 = zext i64 %210 to i128
  store i128 %conv3.i.i.1083, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %211 = load i64, i64* %arrayidx117.i.1666, align 8, !tbaa !6
  %conv6.i.i.1086 = zext i64 %211 to i128
  store i128 %conv6.i.i.1086, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %212 = load i64, i64* %arrayidx120.i.1668, align 8, !tbaa !6
  %conv9.i.i.1089 = zext i64 %212 to i128
  store i128 %conv9.i.i.1089, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %conv.i.12.i.1092 = and i128 %sub70.i.1706, 18446744073709551615
  store i128 %conv.i.12.i.1092, i128* %arraydecay1.i, align 16, !tbaa !2
  %conv3.i.14.i.1094 = and i128 %add84.i.1714, 18446744073709551615
  store i128 %conv3.i.14.i.1094, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %conv6.i.17.i.1097 = and i128 %add94.i.1717, 18446744073709551615
  store i128 %conv6.i.17.i.1097, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %conv9.i.20.i.1100 = and i128 %add104.i.1720, 18446744073709551615
  store i128 %conv9.i.20.i.1100, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %conv.i.22.i.1103 = and i128 %sub70.i.1763, 18446744073709551615
  store i128 %conv.i.22.i.1103, i128* %arraydecay2.i, align 16, !tbaa !2
  %conv3.i.24.i.1105 = and i128 %add84.i.1771, 18446744073709551615
  store i128 %conv3.i.24.i.1105, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %conv6.i.27.i.1108 = and i128 %add94.i.1774, 18446744073709551615
  store i128 %conv6.i.27.i.1108, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %conv9.i.30.i.1111 = and i128 %add104.i.1777, 18446744073709551615
  store i128 %conv9.i.30.i.1111, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i, i32 0, i64* %arraydecay276, i64* %arraydecay282, i64* %arraydecay288) #1
  %213 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.1442 = add i128 %213, 18446744069414584320
  %214 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.1444 = lshr i128 %214, 64
  %add8.i.1445 = add i128 %add.i.1442, %shr.i.1444
  %conv12.i.1446 = and i128 %214, 18446744073709551615
  %add13.i.1447 = add nuw nsw i128 %conv12.i.1446, 18446673704965373952
  %215 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.1448 = add i128 %215, 18446744073709551615
  %216 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.1450 = add i128 %216, 1298074214633706907132628377272319
  %shr22.i.1451 = lshr i128 %add8.i.1445, 64
  %conv23.i.1452 = trunc i128 %shr22.i.1451 to i64
  %conv26.i.1453 = and i128 %add8.i.1445, 18446744073709551615
  %sub.i.1454 = sub nsw i128 %conv26.i.1453, %shr22.i.1451
  %shl.i.1455 = shl nuw nsw i128 %shr22.i.1451, 32
  %add32.i.1456 = add nsw i128 %sub.i.1454, %shl.i.1455
  %shr34.i.1457 = lshr i128 %add32.i.1456, 64
  %conv35.i.1458 = trunc i128 %shr34.i.1457 to i64
  %add36.i.1459 = add i64 %conv35.i.1458, %conv23.i.1452
  %conv39.i.1460 = and i128 %add32.i.1456, 18446744073709551615
  %sub43.i.1461 = sub nsw i128 %conv39.i.1460, %shr34.i.1457
  %shl45.i.1462 = shl nuw nsw i128 %shr34.i.1457, 32
  %add47.i.1463 = add nsw i128 %sub43.i.1461, %shl45.i.1462
  %conv48.i.1464 = zext i64 %add36.i.1459 to i128
  %add50.i.1465 = add i128 %add16.i.1448, %conv48.i.1464
  %shl52.i.1466 = shl nuw nsw i128 %conv48.i.1464, 32
  %sub54.i.1467 = sub i128 %add19.i.1450, %shl52.i.1466
  %shr56.i.1468 = lshr i128 %add47.i.1463, 64
  %conv57.i.1469 = trunc i128 %shr56.i.1468 to i64
  %sub58.i.1470 = sub i64 0, %conv57.i.1469
  %conv60.i.1471 = trunc i128 %add47.i.1463 to i64
  %and.i.1472 = and i64 %conv60.i.1471, 9223372036854775807
  %neg.i.1473 = sub nsw i64 9223372032559808512, %and.i.1472
  %sub62177.i.1474 = and i64 %neg.i.1473, %conv60.i.1471
  %and66.i.1475 = ashr i64 %sub62177.i.1474, 63
  %or.i.1476 = or i64 %and66.i.1475, %sub58.i.1470
  %conv68.i.1477 = zext i64 %or.i.1476 to i128
  %sub70.i.1478 = sub i128 %add50.i.1465, %conv68.i.1477
  %and71.i.1479 = and i64 %or.i.1476, 4294967295
  %conv72.i.1480 = zext i64 %and71.i.1479 to i128
  %sub74.i.1481 = sub i128 %sub54.i.1467, %conv72.i.1480
  %and75.i.1482 = and i64 %or.i.1476, -4294967295
  %conv76.i.1483 = zext i64 %and75.i.1482 to i128
  %sub78.i.1484 = sub nsw i128 %add47.i.1463, %conv76.i.1483
  %shr80.i.1485 = lshr i128 %sub70.i.1478, 64
  %add84.i.1486 = add i128 %sub74.i.1481, %shr80.i.1485
  %conv86.i.1487 = trunc i128 %sub70.i.1478 to i64
  %shr90.i.1488 = lshr i128 %add84.i.1486, 64
  %add94.i.1489 = add nuw nsw i128 %add13.i.1447, %shr90.i.1488
  %conv96.i.1490 = trunc i128 %add84.i.1486 to i64
  %shr100.i.1491 = lshr i128 %add94.i.1489, 64
  %add104.i.1492 = add nsw i128 %sub78.i.1484, %shr100.i.1491
  %conv106.i.1493 = trunc i128 %add94.i.1489 to i64
  store i64 %conv86.i.1487, i64* %arraydecay402, align 8, !tbaa !6
  %arrayidx114.i.1494 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 1
  store i64 %conv96.i.1490, i64* %arrayidx114.i.1494, align 8, !tbaa !6
  %arrayidx117.i.1495 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 2
  store i64 %conv106.i.1493, i64* %arrayidx117.i.1495, align 8, !tbaa !6
  %conv119.i.1496 = trunc i128 %add104.i.1492 to i64
  %arrayidx120.i.1497 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 3
  store i64 %conv119.i.1496, i64* %arrayidx120.i.1497, align 8, !tbaa !6
  %217 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.1499 = add i128 %217, 18446744069414584320
  %218 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.1501 = lshr i128 %218, 64
  %add8.i.1502 = add i128 %add.i.1499, %shr.i.1501
  %conv12.i.1503 = and i128 %218, 18446744073709551615
  %add13.i.1504 = add nuw nsw i128 %conv12.i.1503, 18446673704965373952
  %219 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.1505 = add i128 %219, 18446744073709551615
  %220 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.1507 = add i128 %220, 1298074214633706907132628377272319
  %shr22.i.1508 = lshr i128 %add8.i.1502, 64
  %conv23.i.1509 = trunc i128 %shr22.i.1508 to i64
  %conv26.i.1510 = and i128 %add8.i.1502, 18446744073709551615
  %sub.i.1511 = sub nsw i128 %conv26.i.1510, %shr22.i.1508
  %shl.i.1512 = shl nuw nsw i128 %shr22.i.1508, 32
  %add32.i.1513 = add nsw i128 %sub.i.1511, %shl.i.1512
  %shr34.i.1514 = lshr i128 %add32.i.1513, 64
  %conv35.i.1515 = trunc i128 %shr34.i.1514 to i64
  %add36.i.1516 = add i64 %conv35.i.1515, %conv23.i.1509
  %conv39.i.1517 = and i128 %add32.i.1513, 18446744073709551615
  %sub43.i.1518 = sub nsw i128 %conv39.i.1517, %shr34.i.1514
  %shl45.i.1519 = shl nuw nsw i128 %shr34.i.1514, 32
  %add47.i.1520 = add nsw i128 %sub43.i.1518, %shl45.i.1519
  %conv48.i.1521 = zext i64 %add36.i.1516 to i128
  %add50.i.1522 = add i128 %add16.i.1505, %conv48.i.1521
  %shl52.i.1523 = shl nuw nsw i128 %conv48.i.1521, 32
  %sub54.i.1524 = sub i128 %add19.i.1507, %shl52.i.1523
  %shr56.i.1525 = lshr i128 %add47.i.1520, 64
  %conv57.i.1526 = trunc i128 %shr56.i.1525 to i64
  %sub58.i.1527 = sub i64 0, %conv57.i.1526
  %conv60.i.1528 = trunc i128 %add47.i.1520 to i64
  %and.i.1529 = and i64 %conv60.i.1528, 9223372036854775807
  %neg.i.1530 = sub nsw i64 9223372032559808512, %and.i.1529
  %sub62177.i.1531 = and i64 %neg.i.1530, %conv60.i.1528
  %and66.i.1532 = ashr i64 %sub62177.i.1531, 63
  %or.i.1533 = or i64 %and66.i.1532, %sub58.i.1527
  %conv68.i.1534 = zext i64 %or.i.1533 to i128
  %sub70.i.1535 = sub i128 %add50.i.1522, %conv68.i.1534
  %and71.i.1536 = and i64 %or.i.1533, 4294967295
  %conv72.i.1537 = zext i64 %and71.i.1536 to i128
  %sub74.i.1538 = sub i128 %sub54.i.1524, %conv72.i.1537
  %and75.i.1539 = and i64 %or.i.1533, -4294967295
  %conv76.i.1540 = zext i64 %and75.i.1539 to i128
  %sub78.i.1541 = sub nsw i128 %add47.i.1520, %conv76.i.1540
  %shr80.i.1542 = lshr i128 %sub70.i.1535, 64
  %add84.i.1543 = add i128 %sub74.i.1538, %shr80.i.1542
  %conv86.i.1544 = trunc i128 %sub70.i.1535 to i64
  %shr90.i.1545 = lshr i128 %add84.i.1543, 64
  %add94.i.1546 = add nuw nsw i128 %add13.i.1504, %shr90.i.1545
  %conv96.i.1547 = trunc i128 %add84.i.1543 to i64
  %shr100.i.1548 = lshr i128 %add94.i.1546, 64
  %add104.i.1549 = add nsw i128 %sub78.i.1541, %shr100.i.1548
  %conv106.i.1550 = trunc i128 %add94.i.1546 to i64
  store i64 %conv86.i.1544, i64* %arraydecay408, align 8, !tbaa !6
  %arrayidx114.i.1551 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 1
  store i64 %conv96.i.1547, i64* %arrayidx114.i.1551, align 8, !tbaa !6
  %arrayidx117.i.1552 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 2
  store i64 %conv106.i.1550, i64* %arrayidx117.i.1552, align 8, !tbaa !6
  %conv119.i.1553 = trunc i128 %add104.i.1549 to i64
  %arrayidx120.i.1554 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 3
  store i64 %conv119.i.1553, i64* %arrayidx120.i.1554, align 8, !tbaa !6
  %221 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.1556 = add i128 %221, 18446744069414584320
  %222 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.1558 = lshr i128 %222, 64
  %add8.i.1559 = add i128 %add.i.1556, %shr.i.1558
  %conv12.i.1560 = and i128 %222, 18446744073709551615
  %add13.i.1561 = add nuw nsw i128 %conv12.i.1560, 18446673704965373952
  %223 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.1562 = add i128 %223, 18446744073709551615
  %224 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.1564 = add i128 %224, 1298074214633706907132628377272319
  %shr22.i.1565 = lshr i128 %add8.i.1559, 64
  %conv23.i.1566 = trunc i128 %shr22.i.1565 to i64
  %conv26.i.1567 = and i128 %add8.i.1559, 18446744073709551615
  %sub.i.1568 = sub nsw i128 %conv26.i.1567, %shr22.i.1565
  %shl.i.1569 = shl nuw nsw i128 %shr22.i.1565, 32
  %add32.i.1570 = add nsw i128 %sub.i.1568, %shl.i.1569
  %shr34.i.1571 = lshr i128 %add32.i.1570, 64
  %conv35.i.1572 = trunc i128 %shr34.i.1571 to i64
  %add36.i.1573 = add i64 %conv35.i.1572, %conv23.i.1566
  %conv39.i.1574 = and i128 %add32.i.1570, 18446744073709551615
  %sub43.i.1575 = sub nsw i128 %conv39.i.1574, %shr34.i.1571
  %shl45.i.1576 = shl nuw nsw i128 %shr34.i.1571, 32
  %add47.i.1577 = add nsw i128 %sub43.i.1575, %shl45.i.1576
  %conv48.i.1578 = zext i64 %add36.i.1573 to i128
  %add50.i.1579 = add i128 %add16.i.1562, %conv48.i.1578
  %shl52.i.1580 = shl nuw nsw i128 %conv48.i.1578, 32
  %sub54.i.1581 = sub i128 %add19.i.1564, %shl52.i.1580
  %shr56.i.1582 = lshr i128 %add47.i.1577, 64
  %conv57.i.1583 = trunc i128 %shr56.i.1582 to i64
  %sub58.i.1584 = sub i64 0, %conv57.i.1583
  %conv60.i.1585 = trunc i128 %add47.i.1577 to i64
  %and.i.1586 = and i64 %conv60.i.1585, 9223372036854775807
  %neg.i.1587 = sub nsw i64 9223372032559808512, %and.i.1586
  %sub62177.i.1588 = and i64 %neg.i.1587, %conv60.i.1585
  %and66.i.1589 = ashr i64 %sub62177.i.1588, 63
  %or.i.1590 = or i64 %and66.i.1589, %sub58.i.1584
  %conv68.i.1591 = zext i64 %or.i.1590 to i128
  %sub70.i.1592 = sub i128 %add50.i.1579, %conv68.i.1591
  %and71.i.1593 = and i64 %or.i.1590, 4294967295
  %conv72.i.1594 = zext i64 %and71.i.1593 to i128
  %sub74.i.1595 = sub i128 %sub54.i.1581, %conv72.i.1594
  %and75.i.1596 = and i64 %or.i.1590, -4294967295
  %conv76.i.1597 = zext i64 %and75.i.1596 to i128
  %sub78.i.1598 = sub nsw i128 %add47.i.1577, %conv76.i.1597
  %shr80.i.1599 = lshr i128 %sub70.i.1592, 64
  %add84.i.1600 = add i128 %sub74.i.1595, %shr80.i.1599
  %conv86.i.1601 = trunc i128 %sub70.i.1592 to i64
  %shr90.i.1602 = lshr i128 %add84.i.1600, 64
  %add94.i.1603 = add nuw nsw i128 %add13.i.1561, %shr90.i.1602
  %conv96.i.1604 = trunc i128 %add84.i.1600 to i64
  %shr100.i.1605 = lshr i128 %add94.i.1603, 64
  %add104.i.1606 = add nsw i128 %sub78.i.1598, %shr100.i.1605
  %conv106.i.1607 = trunc i128 %add94.i.1603 to i64
  store i64 %conv86.i.1601, i64* %arraydecay414, align 8, !tbaa !6
  %arrayidx114.i.1608 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 1
  store i64 %conv96.i.1604, i64* %arrayidx114.i.1608, align 8, !tbaa !6
  %arrayidx117.i.1609 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 2
  store i64 %conv106.i.1607, i64* %arrayidx117.i.1609, align 8, !tbaa !6
  %conv119.i.1610 = trunc i128 %add104.i.1606 to i64
  %arrayidx120.i.1611 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 3
  store i64 %conv119.i.1610, i64* %arrayidx120.i.1611, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %arraydecay509 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 1, i64 0, i64 0
  %arraydecay515 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 1, i64 1, i64 0
  %arraydecay521 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 1, i64 2, i64 0
  br label %for.body.453

for.body.453:                                     ; preds = %for.body.453, %for.body.230
  %indvars.iv = phi i64 [ 1, %for.body.230 ], [ %indvars.iv.next, %for.body.453 ]
  %225 = shl nsw i64 %indvars.iv, 1
  %226 = or i64 %225, 1
  %arraydecay461 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 0
  %arraydecay470 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 0
  %arraydecay479 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 0
  %arraydecay487 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 0
  %arraydecay495 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 0
  %arraydecay503 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 0
  call void @llvm.lifetime.start(i64 64, i8* %38) #1
  call void @llvm.lifetime.start(i64 64, i8* %39) #1
  call void @llvm.lifetime.start(i64 64, i8* %40) #1
  call void @llvm.lifetime.start(i64 64, i8* %41) #1
  call void @llvm.lifetime.start(i64 64, i8* %42) #1
  call void @llvm.lifetime.start(i64 64, i8* %43) #1
  %227 = load i64, i64* %arraydecay487, align 8, !tbaa !6
  %conv.i.i.1117 = zext i64 %227 to i128
  store i128 %conv.i.i.1117, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.1118 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 1
  %228 = load i64, i64* %arrayidx2.i.i.1118, align 8, !tbaa !6
  %conv3.i.i.1119 = zext i64 %228 to i128
  store i128 %conv3.i.i.1119, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.1121 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 2
  %229 = load i64, i64* %arrayidx5.i.i.1121, align 8, !tbaa !6
  %conv6.i.i.1122 = zext i64 %229 to i128
  store i128 %conv6.i.i.1122, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.1124 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 3
  %230 = load i64, i64* %arrayidx8.i.i.1124, align 8, !tbaa !6
  %conv9.i.i.1125 = zext i64 %230 to i128
  store i128 %conv9.i.i.1125, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %231 = load i64, i64* %arraydecay495, align 8, !tbaa !6
  %conv.i.12.i.1128 = zext i64 %231 to i128
  store i128 %conv.i.12.i.1128, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.1129 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 1
  %232 = load i64, i64* %arrayidx2.i.13.i.1129, align 8, !tbaa !6
  %conv3.i.14.i.1130 = zext i64 %232 to i128
  store i128 %conv3.i.14.i.1130, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.1132 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 2
  %233 = load i64, i64* %arrayidx5.i.16.i.1132, align 8, !tbaa !6
  %conv6.i.17.i.1133 = zext i64 %233 to i128
  store i128 %conv6.i.17.i.1133, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.1135 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 3
  %234 = load i64, i64* %arrayidx8.i.19.i.1135, align 8, !tbaa !6
  %conv9.i.20.i.1136 = zext i64 %234 to i128
  store i128 %conv9.i.20.i.1136, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %235 = load i64, i64* %arraydecay503, align 8, !tbaa !6
  %conv.i.22.i.1139 = zext i64 %235 to i128
  store i128 %conv.i.22.i.1139, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.1140 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 1
  %236 = load i64, i64* %arrayidx2.i.23.i.1140, align 8, !tbaa !6
  %conv3.i.24.i.1141 = zext i64 %236 to i128
  store i128 %conv3.i.24.i.1141, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.1143 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 2
  %237 = load i64, i64* %arrayidx5.i.26.i.1143, align 8, !tbaa !6
  %conv6.i.27.i.1144 = zext i64 %237 to i128
  store i128 %conv6.i.27.i.1144, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1146 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 3
  %238 = load i64, i64* %arrayidx8.i.29.i.1146, align 8, !tbaa !6
  %conv9.i.30.i.1147 = zext i64 %238 to i128
  store i128 %conv9.i.30.i.1147, i128* %arrayidx10.i.31.i, align 16, !tbaa !2
  call fastcc void @point_add(i128* %arraydecay3.i, i128* %arraydecay4.i, i128* %arraydecay5.i, i128* %arraydecay.i, i128* %arraydecay1.i, i128* %arraydecay2.i, i32 0, i64* %arraydecay509, i64* %arraydecay515, i64* %arraydecay521) #1
  %239 = load i128, i128* %arrayidx.i.2638, align 16, !tbaa !2
  %add.i.1271 = add i128 %239, 18446744069414584320
  %240 = load i128, i128* %arrayidx6.i.2640, align 16, !tbaa !2
  %shr.i.1273 = lshr i128 %240, 64
  %add8.i.1274 = add i128 %add.i.1271, %shr.i.1273
  %conv12.i.1275 = and i128 %240, 18446744073709551615
  %add13.i.1276 = add nuw nsw i128 %conv12.i.1275, 18446673704965373952
  %241 = load i128, i128* %arraydecay3.i, align 16, !tbaa !2
  %add16.i.1277 = add i128 %241, 18446744073709551615
  %242 = load i128, i128* %arrayidx18.i.2646, align 16, !tbaa !2
  %add19.i.1279 = add i128 %242, 1298074214633706907132628377272319
  %shr22.i.1280 = lshr i128 %add8.i.1274, 64
  %conv23.i.1281 = trunc i128 %shr22.i.1280 to i64
  %conv26.i.1282 = and i128 %add8.i.1274, 18446744073709551615
  %sub.i.1283 = sub nsw i128 %conv26.i.1282, %shr22.i.1280
  %shl.i.1284 = shl nuw nsw i128 %shr22.i.1280, 32
  %add32.i.1285 = add nsw i128 %sub.i.1283, %shl.i.1284
  %shr34.i.1286 = lshr i128 %add32.i.1285, 64
  %conv35.i.1287 = trunc i128 %shr34.i.1286 to i64
  %add36.i.1288 = add i64 %conv35.i.1287, %conv23.i.1281
  %conv39.i.1289 = and i128 %add32.i.1285, 18446744073709551615
  %sub43.i.1290 = sub nsw i128 %conv39.i.1289, %shr34.i.1286
  %shl45.i.1291 = shl nuw nsw i128 %shr34.i.1286, 32
  %add47.i.1292 = add nsw i128 %sub43.i.1290, %shl45.i.1291
  %conv48.i.1293 = zext i64 %add36.i.1288 to i128
  %add50.i.1294 = add i128 %add16.i.1277, %conv48.i.1293
  %shl52.i.1295 = shl nuw nsw i128 %conv48.i.1293, 32
  %sub54.i.1296 = sub i128 %add19.i.1279, %shl52.i.1295
  %shr56.i.1297 = lshr i128 %add47.i.1292, 64
  %conv57.i.1298 = trunc i128 %shr56.i.1297 to i64
  %sub58.i.1299 = sub i64 0, %conv57.i.1298
  %conv60.i.1300 = trunc i128 %add47.i.1292 to i64
  %and.i.1301 = and i64 %conv60.i.1300, 9223372036854775807
  %neg.i.1302 = sub nsw i64 9223372032559808512, %and.i.1301
  %sub62177.i.1303 = and i64 %neg.i.1302, %conv60.i.1300
  %and66.i.1304 = ashr i64 %sub62177.i.1303, 63
  %or.i.1305 = or i64 %and66.i.1304, %sub58.i.1299
  %conv68.i.1306 = zext i64 %or.i.1305 to i128
  %sub70.i.1307 = sub i128 %add50.i.1294, %conv68.i.1306
  %and71.i.1308 = and i64 %or.i.1305, 4294967295
  %conv72.i.1309 = zext i64 %and71.i.1308 to i128
  %sub74.i.1310 = sub i128 %sub54.i.1296, %conv72.i.1309
  %and75.i.1311 = and i64 %or.i.1305, -4294967295
  %conv76.i.1312 = zext i64 %and75.i.1311 to i128
  %sub78.i.1313 = sub nsw i128 %add47.i.1292, %conv76.i.1312
  %shr80.i.1314 = lshr i128 %sub70.i.1307, 64
  %add84.i.1315 = add i128 %sub74.i.1310, %shr80.i.1314
  %conv86.i.1316 = trunc i128 %sub70.i.1307 to i64
  %shr90.i.1317 = lshr i128 %add84.i.1315, 64
  %add94.i.1318 = add nuw nsw i128 %add13.i.1276, %shr90.i.1317
  %conv96.i.1319 = trunc i128 %add84.i.1315 to i64
  %shr100.i.1320 = lshr i128 %add94.i.1318, 64
  %add104.i.1321 = add nsw i128 %sub78.i.1313, %shr100.i.1320
  %conv106.i.1322 = trunc i128 %add94.i.1318 to i64
  store i64 %conv86.i.1316, i64* %arraydecay461, align 8, !tbaa !6
  %arrayidx114.i.1323 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 1
  store i64 %conv96.i.1319, i64* %arrayidx114.i.1323, align 8, !tbaa !6
  %arrayidx117.i.1324 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 2
  store i64 %conv106.i.1322, i64* %arrayidx117.i.1324, align 8, !tbaa !6
  %conv119.i.1325 = trunc i128 %add104.i.1321 to i64
  %arrayidx120.i.1326 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 3
  store i64 %conv119.i.1325, i64* %arrayidx120.i.1326, align 8, !tbaa !6
  %243 = load i128, i128* %arrayidx.i.1213, align 16, !tbaa !2
  %add.i.1328 = add i128 %243, 18446744069414584320
  %244 = load i128, i128* %arrayidx6.i.1215, align 16, !tbaa !2
  %shr.i.1330 = lshr i128 %244, 64
  %add8.i.1331 = add i128 %add.i.1328, %shr.i.1330
  %conv12.i.1332 = and i128 %244, 18446744073709551615
  %add13.i.1333 = add nuw nsw i128 %conv12.i.1332, 18446673704965373952
  %245 = load i128, i128* %arraydecay4.i, align 16, !tbaa !2
  %add16.i.1334 = add i128 %245, 18446744073709551615
  %246 = load i128, i128* %arrayidx18.i.1221, align 16, !tbaa !2
  %add19.i.1336 = add i128 %246, 1298074214633706907132628377272319
  %shr22.i.1337 = lshr i128 %add8.i.1331, 64
  %conv23.i.1338 = trunc i128 %shr22.i.1337 to i64
  %conv26.i.1339 = and i128 %add8.i.1331, 18446744073709551615
  %sub.i.1340 = sub nsw i128 %conv26.i.1339, %shr22.i.1337
  %shl.i.1341 = shl nuw nsw i128 %shr22.i.1337, 32
  %add32.i.1342 = add nsw i128 %sub.i.1340, %shl.i.1341
  %shr34.i.1343 = lshr i128 %add32.i.1342, 64
  %conv35.i.1344 = trunc i128 %shr34.i.1343 to i64
  %add36.i.1345 = add i64 %conv35.i.1344, %conv23.i.1338
  %conv39.i.1346 = and i128 %add32.i.1342, 18446744073709551615
  %sub43.i.1347 = sub nsw i128 %conv39.i.1346, %shr34.i.1343
  %shl45.i.1348 = shl nuw nsw i128 %shr34.i.1343, 32
  %add47.i.1349 = add nsw i128 %sub43.i.1347, %shl45.i.1348
  %conv48.i.1350 = zext i64 %add36.i.1345 to i128
  %add50.i.1351 = add i128 %add16.i.1334, %conv48.i.1350
  %shl52.i.1352 = shl nuw nsw i128 %conv48.i.1350, 32
  %sub54.i.1353 = sub i128 %add19.i.1336, %shl52.i.1352
  %shr56.i.1354 = lshr i128 %add47.i.1349, 64
  %conv57.i.1355 = trunc i128 %shr56.i.1354 to i64
  %sub58.i.1356 = sub i64 0, %conv57.i.1355
  %conv60.i.1357 = trunc i128 %add47.i.1349 to i64
  %and.i.1358 = and i64 %conv60.i.1357, 9223372036854775807
  %neg.i.1359 = sub nsw i64 9223372032559808512, %and.i.1358
  %sub62177.i.1360 = and i64 %neg.i.1359, %conv60.i.1357
  %and66.i.1361 = ashr i64 %sub62177.i.1360, 63
  %or.i.1362 = or i64 %and66.i.1361, %sub58.i.1356
  %conv68.i.1363 = zext i64 %or.i.1362 to i128
  %sub70.i.1364 = sub i128 %add50.i.1351, %conv68.i.1363
  %and71.i.1365 = and i64 %or.i.1362, 4294967295
  %conv72.i.1366 = zext i64 %and71.i.1365 to i128
  %sub74.i.1367 = sub i128 %sub54.i.1353, %conv72.i.1366
  %and75.i.1368 = and i64 %or.i.1362, -4294967295
  %conv76.i.1369 = zext i64 %and75.i.1368 to i128
  %sub78.i.1370 = sub nsw i128 %add47.i.1349, %conv76.i.1369
  %shr80.i.1371 = lshr i128 %sub70.i.1364, 64
  %add84.i.1372 = add i128 %sub74.i.1367, %shr80.i.1371
  %conv86.i.1373 = trunc i128 %sub70.i.1364 to i64
  %shr90.i.1374 = lshr i128 %add84.i.1372, 64
  %add94.i.1375 = add nuw nsw i128 %add13.i.1333, %shr90.i.1374
  %conv96.i.1376 = trunc i128 %add84.i.1372 to i64
  %shr100.i.1377 = lshr i128 %add94.i.1375, 64
  %add104.i.1378 = add nsw i128 %sub78.i.1370, %shr100.i.1377
  %conv106.i.1379 = trunc i128 %add94.i.1375 to i64
  store i64 %conv86.i.1373, i64* %arraydecay470, align 8, !tbaa !6
  %arrayidx114.i.1380 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 1
  store i64 %conv96.i.1376, i64* %arrayidx114.i.1380, align 8, !tbaa !6
  %arrayidx117.i.1381 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 2
  store i64 %conv106.i.1379, i64* %arrayidx117.i.1381, align 8, !tbaa !6
  %conv119.i.1382 = trunc i128 %add104.i.1378 to i64
  %arrayidx120.i.1383 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 3
  store i64 %conv119.i.1382, i64* %arrayidx120.i.1383, align 8, !tbaa !6
  %247 = load i128, i128* %arrayidx.i.1156, align 16, !tbaa !2
  %add.i.1385 = add i128 %247, 18446744069414584320
  %248 = load i128, i128* %arrayidx6.i.1158, align 16, !tbaa !2
  %shr.i.1387 = lshr i128 %248, 64
  %add8.i.1388 = add i128 %add.i.1385, %shr.i.1387
  %conv12.i.1389 = and i128 %248, 18446744073709551615
  %add13.i.1390 = add nuw nsw i128 %conv12.i.1389, 18446673704965373952
  %249 = load i128, i128* %arraydecay5.i, align 16, !tbaa !2
  %add16.i.1391 = add i128 %249, 18446744073709551615
  %250 = load i128, i128* %arrayidx18.i.1164, align 16, !tbaa !2
  %add19.i.1393 = add i128 %250, 1298074214633706907132628377272319
  %shr22.i.1394 = lshr i128 %add8.i.1388, 64
  %conv23.i.1395 = trunc i128 %shr22.i.1394 to i64
  %conv26.i.1396 = and i128 %add8.i.1388, 18446744073709551615
  %sub.i.1397 = sub nsw i128 %conv26.i.1396, %shr22.i.1394
  %shl.i.1398 = shl nuw nsw i128 %shr22.i.1394, 32
  %add32.i.1399 = add nsw i128 %sub.i.1397, %shl.i.1398
  %shr34.i.1400 = lshr i128 %add32.i.1399, 64
  %conv35.i.1401 = trunc i128 %shr34.i.1400 to i64
  %add36.i.1402 = add i64 %conv35.i.1401, %conv23.i.1395
  %conv39.i.1403 = and i128 %add32.i.1399, 18446744073709551615
  %sub43.i.1404 = sub nsw i128 %conv39.i.1403, %shr34.i.1400
  %shl45.i.1405 = shl nuw nsw i128 %shr34.i.1400, 32
  %add47.i.1406 = add nsw i128 %sub43.i.1404, %shl45.i.1405
  %conv48.i.1407 = zext i64 %add36.i.1402 to i128
  %add50.i.1408 = add i128 %add16.i.1391, %conv48.i.1407
  %shl52.i.1409 = shl nuw nsw i128 %conv48.i.1407, 32
  %sub54.i.1410 = sub i128 %add19.i.1393, %shl52.i.1409
  %shr56.i.1411 = lshr i128 %add47.i.1406, 64
  %conv57.i.1412 = trunc i128 %shr56.i.1411 to i64
  %sub58.i.1413 = sub i64 0, %conv57.i.1412
  %conv60.i.1414 = trunc i128 %add47.i.1406 to i64
  %and.i.1415 = and i64 %conv60.i.1414, 9223372036854775807
  %neg.i.1416 = sub nsw i64 9223372032559808512, %and.i.1415
  %sub62177.i.1417 = and i64 %neg.i.1416, %conv60.i.1414
  %and66.i.1418 = ashr i64 %sub62177.i.1417, 63
  %or.i.1419 = or i64 %and66.i.1418, %sub58.i.1413
  %conv68.i.1420 = zext i64 %or.i.1419 to i128
  %sub70.i.1421 = sub i128 %add50.i.1408, %conv68.i.1420
  %and71.i.1422 = and i64 %or.i.1419, 4294967295
  %conv72.i.1423 = zext i64 %and71.i.1422 to i128
  %sub74.i.1424 = sub i128 %sub54.i.1410, %conv72.i.1423
  %and75.i.1425 = and i64 %or.i.1419, -4294967295
  %conv76.i.1426 = zext i64 %and75.i.1425 to i128
  %sub78.i.1427 = sub nsw i128 %add47.i.1406, %conv76.i.1426
  %shr80.i.1428 = lshr i128 %sub70.i.1421, 64
  %add84.i.1429 = add i128 %sub74.i.1424, %shr80.i.1428
  %conv86.i.1430 = trunc i128 %sub70.i.1421 to i64
  %shr90.i.1431 = lshr i128 %add84.i.1429, 64
  %add94.i.1432 = add nuw nsw i128 %add13.i.1390, %shr90.i.1431
  %conv96.i.1433 = trunc i128 %add84.i.1429 to i64
  %shr100.i.1434 = lshr i128 %add94.i.1432, 64
  %add104.i.1435 = add nsw i128 %sub78.i.1427, %shr100.i.1434
  %conv106.i.1436 = trunc i128 %add94.i.1432 to i64
  store i64 %conv86.i.1430, i64* %arraydecay479, align 8, !tbaa !6
  %arrayidx114.i.1437 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 1
  store i64 %conv96.i.1433, i64* %arrayidx114.i.1437, align 8, !tbaa !6
  %arrayidx117.i.1438 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 2
  store i64 %conv106.i.1436, i64* %arrayidx117.i.1438, align 8, !tbaa !6
  %conv119.i.1439 = trunc i128 %add104.i.1435 to i64
  %arrayidx120.i.1440 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 3
  store i64 %conv119.i.1439, i64* %arrayidx120.i.1440, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 64, i8* %43) #1
  call void @llvm.lifetime.end(i64 64, i8* %42) #1
  call void @llvm.lifetime.end(i64 64, i8* %41) #1
  call void @llvm.lifetime.end(i64 64, i8* %40) #1
  call void @llvm.lifetime.end(i64 64, i8* %39) #1
  call void @llvm.lifetime.end(i64 64, i8* %38) #1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %for.inc.525, label %for.body.453

for.inc.525:                                      ; preds = %for.body.453
  %indvars.iv.next2709 = add nuw nsw i64 %indvars.iv2708, 1
  %exitcond2710 = icmp eq i64 %indvars.iv.next2709, 2
  br i1 %exitcond2710, label %for.end.527, label %for.body.230

for.end.527:                                      ; preds = %for.inc.525
  call void @ec_GFp_nistp_points_make_affine_internal(i64 31, i8* %arrayidx46, i64 32, i8* %0, void (i8*)* bitcast (void (i64*)* @smallfelem_one to void (i8*)*), i32 (i8*)* nonnull @smallfelem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_square_contract to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @smallfelem_mul_contract to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_inv_contract to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @smallfelem_assign to void (i8*, i8*)*)) #1
  br label %done

done:                                             ; preds = %for.end.527, %if.then.29
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  store i32 2, i32* %pre_comp_type, align 4, !tbaa !27
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %251 = bitcast %union.anon* %pre_comp to i8**
  store i8* %call.i, i8** %251, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %nistp256_pre_comp_new.exit, %nistp256_pre_comp_new.exit.thread, %lor.lhs.false.38, %lor.lhs.false, %if.end.30, %if.end.16, %if.end.12, %if.end.8, %if.end.3, %done
  %ret.0 = phi i32 [ 0, %if.end.3 ], [ 0, %if.end.8 ], [ 0, %if.end.12 ], [ 0, %nistp256_pre_comp_new.exit ], [ 1, %done ], [ 0, %lor.lhs.false.38 ], [ 0, %lor.lhs.false ], [ 0, %if.end.30 ], [ 0, %if.end.16 ], [ 0, %nistp256_pre_comp_new.exit.thread ]
  %pre.0 = phi %struct.nistp256_pre_comp_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ null, %nistp256_pre_comp_new.exit ], [ null, %done ], [ %5, %lor.lhs.false.38 ], [ %5, %lor.lhs.false ], [ %5, %if.end.30 ], [ null, %if.end.16 ], [ null, %nistp256_pre_comp_new.exit.thread ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ %call13, %nistp256_pre_comp_new.exit ], [ %call13, %done ], [ %call13, %lor.lhs.false.38 ], [ %call13, %lor.lhs.false ], [ %call13, %if.end.30 ], [ %call13, %if.end.16 ], [ %call13, %nistp256_pre_comp_new.exit.thread ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx.addr.0) #1
  call void @EC_POINT_free(%struct.ec_point_st* %generator.0) #1
  call void @BN_CTX_free(%struct.bignum_ctx* %new_ctx.0) #1
  %cmp.i.1152 = icmp eq %struct.nistp256_pre_comp_st* %pre.0, null
  br i1 %cmp.i.1152, label %cleanup, label %if.end.i.1154

if.end.i.1154:                                    ; preds = %err
  %references.i.1153 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %pre.0, i64 0, i32 1
  %252 = atomicrmw sub i32* %references.i.1153, i32 1 release
  %cmp.i.i = icmp eq i32 %252, 1
  br i1 %cmp.i.i, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %if.end.i.1154
  fence acquire
  br label %if.end.3.i

CRYPTO_DOWN_REF.exit.i:                           ; preds = %if.end.i.1154
  %cmp1.i = icmp sgt i32 %252, 1
  br i1 %cmp1.i, label %cleanup, label %if.end.3.i

if.end.3.i:                                       ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %lock.i.1155 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %pre.0, i64 0, i32 2
  %253 = load i8*, i8** %lock.i.1155, align 8, !tbaa !26
  call void @CRYPTO_THREAD_lock_free(i8* %253) #1
  %254 = bitcast %struct.nistp256_pre_comp_st* %pre.0 to i8*
  call void @CRYPTO_free(i8* %254, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1882) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i, %CRYPTO_DOWN_REF.exit.i, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ %ret.0, %CRYPTO_DOWN_REF.exit.i ], [ %ret.0, %if.end.3.i ]
  call void @llvm.lifetime.end(i64 64, i8* %3) #1
  call void @llvm.lifetime.end(i64 64, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i32 @ec_GFp_nistp256_have_precompute_mult(%struct.ec_group_st* nocapture readonly %group) #4 {
entry:
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %0 = load i32, i32* %pre_comp_type, align 4, !tbaa !27
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %nistp256 = bitcast %union.anon* %pre_comp to %struct.nistp256_pre_comp_st**
  %1 = load %struct.nistp256_pre_comp_st*, %struct.nistp256_pre_comp_st** %nistp256, align 8, !tbaa !18
  %cmp1 = icmp ne %struct.nistp256_pre_comp_st* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @ec_GFp_nist_field_mul(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_nist_field_sqr(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i64 @ec_key_simple_priv2oct(%struct.ec_key_st*, i8*, i64) #3

declare i32 @ec_key_simple_oct2priv(%struct.ec_key_st*, i8*, i64) #3

declare i32 @ec_key_simple_generate_key(%struct.ec_key_st*) #3

declare i32 @ec_key_simple_check_key(%struct.ec_key_st*) #3

declare i32 @ec_key_simple_generate_public_key(%struct.ec_key_st*) #3

declare i32 @ecdh_simple_compute_key(i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*) #3

; Function Attrs: nounwind uwtable
define %struct.nistp256_pre_comp_st* @EC_nistp256_pre_comp_dup(%struct.nistp256_pre_comp_st* %p) #0 {
entry:
  %cmp = icmp eq %struct.nistp256_pre_comp_st* %p, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %references = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %p, i64 0, i32 1
  %0 = atomicrmw add i32* %references, i32 1 monotonic
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.nistp256_pre_comp_st* %p
}

; Function Attrs: nounwind uwtable
define void @EC_nistp256_pre_comp_free(%struct.nistp256_pre_comp_st* %pre) #0 {
entry:
  %cmp = icmp eq %struct.nistp256_pre_comp_st* %pre, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %pre, i64 0, i32 1
  %0 = atomicrmw sub i32* %references, i32 1 release
  %cmp.i = icmp eq i32 %0, 1
  br i1 %cmp.i, label %CRYPTO_DOWN_REF.exit.thread, label %CRYPTO_DOWN_REF.exit

CRYPTO_DOWN_REF.exit.thread:                      ; preds = %if.end
  fence acquire
  br label %if.end.3

CRYPTO_DOWN_REF.exit:                             ; preds = %if.end
  %cmp1 = icmp sgt i32 %0, 1
  br i1 %cmp1, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %CRYPTO_DOWN_REF.exit.thread, %CRYPTO_DOWN_REF.exit
  %lock = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %pre, i64 0, i32 2
  %1 = load i8*, i8** %lock, align 8, !tbaa !26
  tail call void @CRYPTO_THREAD_lock_free(i8* %1) #1
  %2 = bitcast %struct.nistp256_pre_comp_st* %pre to i8*
  tail call void @CRYPTO_free(i8* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1882) #1
  br label %cleanup

cleanup:                                          ; preds = %CRYPTO_DOWN_REF.exit, %entry, %if.end.3
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8*) #3

declare void @CRYPTO_free(i8*, i8*, i32) #3

declare i32 @ec_GFp_simple_group_init(%struct.ec_group_st*) #3

declare %struct.bignum_ctx* @BN_CTX_new() #3

declare void @BN_CTX_start(%struct.bignum_ctx*) #3

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx*) #3

declare %struct.bignum_st* @BN_bin2bn(i8*, i32, %struct.bignum_st*) #3

declare i32 @BN_cmp(%struct.bignum_st*, %struct.bignum_st*) #3

declare void @ERR_put_error(i32, i32, i32, i8*, i32) #3

declare i32 @BN_nist_mod_256(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_group_set_curve(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare void @BN_CTX_end(%struct.bignum_ctx*) #3

declare void @BN_CTX_free(%struct.bignum_ctx*) #3

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @BN_to_felem(i128* nocapture %out, %struct.bignum_st* %bn) #0 {
entry:
  %b_in = alloca [32 x i8], align 16
  %b_out = alloca [32 x i8], align 16
  %0 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %1) #1
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 32, i32 16, i1 false)
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* %bn) #1
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp ugt i32 %div, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 168) #1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_is_negative(%struct.bignum_st* %bn) #1
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 172) #1
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @BN_bn2bin(%struct.bignum_st* %bn, i8* %0) #1
  %cmp.9.i = icmp eq i32 %call5, 0
  br i1 %cmp.9.i, label %flip_endian.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.4
  %sub.i = add i32 %call5, -1
  %xtraiter = and i32 %call5, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.i.split, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol.preheader, %for.body.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ 0, %for.body.i.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.i.prol ], [ %xtraiter, %for.body.i.prol.preheader ]
  %2 = trunc i64 %indvars.iv.i.prol to i32
  %sub1.i.prol = sub i32 %sub.i, %2
  %idxprom.i.prol = zext i32 %sub1.i.prol to i64
  %arrayidx.i.prol = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 %idxprom.i.prol
  %3 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !17
  %arrayidx3.i.prol = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 %indvars.iv.i.prol
  store i8 %3, i8* %arrayidx3.i.prol, align 1, !tbaa !17
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.i.split.loopexit, label %for.body.i.prol, !llvm.loop !28

for.body.lr.ph.i.split.loopexit:                  ; preds = %for.body.i.prol
  %indvars.iv.next.i.prol.lcssa = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  br label %for.body.lr.ph.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i.split.loopexit, %for.body.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol.lcssa, %for.body.lr.ph.i.split.loopexit ]
  %4 = icmp ult i32 %sub.i, 3
  br i1 %4, label %flip_endian.exit.loopexit, label %for.body.lr.ph.i.split.split

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.split.split ], [ %indvars.iv.next.i.3, %for.body.i ]
  %5 = trunc i64 %indvars.iv.i to i32
  %sub1.i = sub i32 %sub.i, %5
  %idxprom.i = zext i32 %sub1.i to i64
  %arrayidx.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 %idxprom.i
  %6 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %arrayidx3.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 %indvars.iv.i
  store i8 %6, i8* %arrayidx3.i, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %7 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %7
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 %idxprom.i.1
  %8 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !17
  %arrayidx3.i.1 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i
  store i8 %8, i8* %arrayidx3.i.1, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %9 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %9
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 %idxprom.i.2
  %10 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !17
  %arrayidx3.i.2 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.1
  store i8 %10, i8* %arrayidx3.i.2, align 1, !tbaa !17
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %11 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %11
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in, i64 0, i64 %idxprom.i.3
  %12 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !17
  %arrayidx3.i.3 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.2
  store i8 %12, i8* %arrayidx3.i.3, align 1, !tbaa !17
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %call5
  br i1 %exitcond.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  %.phi.trans.insert = bitcast [32 x i8]* %b_out to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 16, !tbaa !6
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 8
  %.phi.trans.insert15 = bitcast i8* %arrayidx2.i.phi.trans.insert to i64*
  %.pre16 = load i64, i64* %.phi.trans.insert15, align 8, !tbaa !6
  %arrayidx5.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 16
  %.phi.trans.insert17 = bitcast i8* %arrayidx5.i.phi.trans.insert to i64*
  %.pre18 = load i64, i64* %.phi.trans.insert17, align 16, !tbaa !6
  %arrayidx8.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 24
  %.phi.trans.insert19 = bitcast i8* %arrayidx8.i.phi.trans.insert to i64*
  %.pre20 = load i64, i64* %.phi.trans.insert19, align 8, !tbaa !6
  %phitmp = zext i64 %.pre to i128
  %phitmp31 = zext i64 %.pre16 to i128
  %phitmp32 = zext i64 %.pre18 to i128
  %phitmp33 = zext i64 %.pre20 to i128
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %if.end.4, %flip_endian.exit.loopexit
  %13 = phi i128 [ %phitmp33, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %14 = phi i128 [ %phitmp32, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %15 = phi i128 [ %phitmp31, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %16 = phi i128 [ %phitmp, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  store i128 %16, i128* %out, align 16, !tbaa !2
  %arrayidx4.i = getelementptr inbounds i128, i128* %out, i64 1
  store i128 %15, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx7.i = getelementptr inbounds i128, i128* %out, i64 2
  store i128 %14, i128* %arrayidx7.i, align 16, !tbaa !2
  %arrayidx10.i = getelementptr inbounds i128, i128* %out, i64 3
  store i128 %13, i128* %arrayidx10.i, align 16, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %flip_endian.exit, %if.then.3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.3 ], [ 1, %flip_endian.exit ]
  call void @llvm.lifetime.end(i64 32, i8* %1) #1
  call void @llvm.lifetime.end(i64 32, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @felem_inv(i128* nocapture %out, i128* nocapture readonly %in) #0 {
entry:
  %ftmp = alloca [4 x i128], align 16
  %ftmp2 = alloca [4 x i128], align 16
  %e2 = alloca [4 x i128], align 16
  %e4 = alloca [4 x i128], align 16
  %e8 = alloca [4 x i128], align 16
  %e16 = alloca [4 x i128], align 16
  %e32 = alloca [4 x i128], align 16
  %e64 = alloca [4 x i128], align 16
  %tmp = alloca [8 x i128], align 16
  %0 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x i128]* %e2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [4 x i128]* %e4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast [4 x i128]* %e8 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast [4 x i128]* %e16 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #1
  %6 = bitcast [4 x i128]* %e32 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #1
  %7 = bitcast [4 x i128]* %e64 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #1
  %8 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %8) #1
  %arraydecay = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  %arrayidx.i.i = getelementptr inbounds i128, i128* %in, i64 3
  %9 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.i = add i128 %9, 18446744069414584320
  %arrayidx6.i.i = getelementptr inbounds i128, i128* %in, i64 2
  %10 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.i = lshr i128 %10, 64
  %add8.i.i = add i128 %add.i.i, %shr.i.i
  %conv12.i.i = and i128 %10, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %11 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.i = add i128 %11, 18446744073709551615
  %arrayidx18.i.i = getelementptr inbounds i128, i128* %in, i64 1
  %12 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.i = add i128 %12, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i, %shl.i.i
  %shr34.i.i = lshr i128 %add32.i.i, 64
  %conv35.i.i = trunc i128 %shr34.i.i to i64
  %add36.i.i = add i64 %conv35.i.i, %conv23.i.i
  %conv39.i.i = and i128 %add32.i.i, 18446744073709551615
  %sub43.i.i = sub nsw i128 %conv39.i.i, %shr34.i.i
  %shl45.i.i = shl nuw nsw i128 %shr34.i.i, 32
  %add47.i.i = add nsw i128 %sub43.i.i, %shl45.i.i
  %conv48.i.i = zext i64 %add36.i.i to i128
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %shl52.i.i = shl nuw nsw i128 %conv48.i.i, 32
  %sub54.i.i = sub i128 %add19.i.i, %shl52.i.i
  %shr56.i.i = lshr i128 %add47.i.i, 64
  %conv57.i.i = trunc i128 %shr56.i.i to i64
  %sub58.i.i = sub i64 0, %conv57.i.i
  %conv60.i.i = trunc i128 %add47.i.i to i64
  %and.i.i = and i64 %conv60.i.i, 9223372036854775807
  %neg.i.i = sub nsw i64 9223372032559808512, %and.i.i
  %sub62177.i.i = and i64 %neg.i.i, %conv60.i.i
  %and66.i.i = ashr i64 %sub62177.i.i, 63
  %or.i.i = or i64 %and66.i.i, %sub58.i.i
  %conv68.i.i = zext i64 %or.i.i to i128
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %sub74.i.i = sub i128 %sub54.i.i, %conv72.i.i
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %add84.i.i = add i128 %sub74.i.i, %shr80.i.i
  %shr90.i.i = lshr i128 %add84.i.i, 64
  %add94.i.i = add nuw nsw i128 %add13.i.i, %shr90.i.i
  %shr100.i.i = lshr i128 %add94.i.i, 64
  %add104.i.i = add nsw i128 %sub78.i.i, %shr100.i.i
  %conv.i = and i128 %sub70.i.i, 18446744073709551615
  %mul.i = mul nuw i128 %conv.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  store i128 %conv5.i, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx8.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %conv12.i = and i128 %add84.i.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  store i128 %add21.i, i128* %arrayidx8.i, align 16, !tbaa !2
  %arrayidx23.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %conv27.i = and i128 %add94.i.i, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %arrayidx38.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %conv42.i = and i128 %add104.i.i, 18446744073709551615
  %mul43.i = mul nuw i128 %conv42.i, %conv.i
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %arrayidx51.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i, %conv12.i
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i
  store i128 %add78.i, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  store i128 %add81.i, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %arrayidx96.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %mul101.i = mul nuw i128 %conv42.i, %conv27.i
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %arrayidx111.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv27.i, %conv27.i
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  store i128 %add125.i, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  store i128 %add128.i, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i = mul nuw i128 %conv42.i, %conv42.i
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  store i128 %add139.i, i128* %arrayidx111.i, align 16, !tbaa !2
  %arrayidx141.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  store i128 %shr135.i, i128* %arrayidx141.i, align 16, !tbaa !2
  %arraydecay2 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %add.i.205 = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i.207 = or i128 %add21.i, 1267650600228229401496703205376
  %arrayidx4.i.208 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  %add6.i.210 = add nuw nsw i128 %add78.i, 1267650600228229401427983728656
  %arrayidx7.i.211 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  %add9.i.213 = add nuw nsw i128 %add81.i, 1267650600228229401427983728656
  %arrayidx10.i.214 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  %shl.i.i.217 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.218 = add nuw nsw i128 %shl.i.i.217, %add125.i
  %add3.i.i.219 = add nuw nsw i128 %add.i.i.218, %add.i.205
  %sub.i.i.220 = sub nsw i128 %add9.i.213, %add.i.i.218
  %sub7.i.i.222 = sub nsw i128 %add128.i, %shr135.i
  %add9.i.i.223 = add nsw i128 %sub7.i.i.222, %add3.i.207
  %sub11.i.i.224 = sub nsw i128 %add6.i.210, %sub7.i.i.222
  %shl13.i.i.225 = shl nuw nsw i128 %add125.i, 32
  %sub15.i.i.226 = sub nsw i128 %add9.i.i.223, %shl13.i.i.225
  %add19.i.i.228 = add i128 %shl13.i.i.225, %sub.i.i.220
  %sub23.i.i.230 = sub nsw i128 %sub11.i.i.224, %shl.i.i.217
  %sub26.i.i.232 = sub i128 %add3.i.i.219, %add139.i
  %shl28.i.i.233 = shl nuw nsw i128 %add139.i, 32
  %sub30.i.i.234 = sub i128 %sub26.i.i.232, %shl28.i.i.233
  %shl32.i.i.235 = shl nuw nsw i128 %add139.i, 33
  %add34.i.i.236 = add i128 %shl32.i.i.235, %sub15.i.i.226
  store i128 %add34.i.i.236, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.237 = shl nuw nsw i128 %add139.i, 1
  %add37.i.i.238 = add i128 %mul.i.i.237, %sub23.i.i.230
  %sub41.i.i.240 = sub i128 %add19.i.i.228, %shl28.i.i.233
  %sub44.i.i.241 = sub i128 %sub30.i.i.234, %shr135.i
  %shl46.i.i.242 = shl nuw nsw i128 %shr135.i, 32
  %sub48.i.i.243 = sub i128 %sub44.i.i.241, %shl46.i.i.242
  store i128 %sub48.i.i.243, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.244 = shl nuw nsw i128 %shr135.i, 33
  %add52.i.i.245 = add i128 %shl50.i.i.244, %add37.i.i.238
  store i128 %add52.i.i.245, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.246 = mul nuw nsw i128 %shr135.i, 3
  %add56.i.i.247 = add i128 %mul54.i.i.246, %sub41.i.i.240
  store i128 %add56.i.i.247, i128* %arrayidx10.i.214, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %in, i128* %arraydecay2)
  %13 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.291 = add i128 %13, 1267650600228229401427983728624
  %14 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.293 = add i128 %14, 1267650600228229401496703205376
  %15 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.296 = add i128 %15, 1267650600228229401427983728656
  %16 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.299 = add i128 %16, 1267650600228229401427983728656
  %17 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %18 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.303 = shl i128 %18, 32
  %add.i.i.304 = add i128 %shl.i.i.303, %17
  %add3.i.i.305 = add i128 %add.i.i.304, %add.i.291
  %sub.i.i.306 = sub i128 %add9.i.299, %add.i.i.304
  %19 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.308 = sub i128 %18, %19
  %add9.i.i.309 = add i128 %sub7.i.i.308, %add3.i.293
  %sub11.i.i.310 = sub i128 %add6.i.296, %sub7.i.i.308
  %shl13.i.i.311 = shl i128 %17, 32
  %sub15.i.i.312 = sub i128 %add9.i.i.309, %shl13.i.i.311
  %add19.i.i.314 = add i128 %shl13.i.i.311, %sub.i.i.306
  %sub23.i.i.316 = sub i128 %sub11.i.i.310, %shl.i.i.303
  %20 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.318 = sub i128 %add3.i.i.305, %20
  %shl28.i.i.319 = shl i128 %20, 32
  %sub30.i.i.320 = sub i128 %sub26.i.i.318, %shl28.i.i.319
  %shl32.i.i.321 = shl i128 %20, 33
  %add34.i.i.322 = add i128 %shl32.i.i.321, %sub15.i.i.312
  store i128 %add34.i.i.322, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.323 = shl i128 %20, 1
  %add37.i.i.324 = add i128 %mul.i.i.323, %sub23.i.i.316
  %sub41.i.i.326 = sub i128 %add19.i.i.314, %shl28.i.i.319
  %sub44.i.i.327 = sub i128 %sub30.i.i.320, %19
  %shl46.i.i.328 = shl i128 %19, 32
  %sub48.i.i.329 = sub i128 %sub44.i.i.327, %shl46.i.i.328
  store i128 %sub48.i.i.329, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.330 = shl i128 %19, 33
  %add52.i.i.331 = add i128 %shl50.i.i.330, %add37.i.i.324
  store i128 %add52.i.i.331, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.332 = mul i128 %19, 3
  %add56.i.i.333 = add i128 %mul54.i.i.332, %sub41.i.i.326
  store i128 %add56.i.i.333, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %arraydecay8 = getelementptr inbounds [4 x i128], [4 x i128]* %e2, i64 0, i64 0
  store i128 %sub48.i.i.329, i128* %arraydecay8, align 16, !tbaa !2
  %arrayidx3.i = getelementptr inbounds [4 x i128], [4 x i128]* %e2, i64 0, i64 1
  store i128 %add34.i.i.322, i128* %arrayidx3.i, align 16, !tbaa !2
  %arrayidx5.i.707 = getelementptr inbounds [4 x i128], [4 x i128]* %e2, i64 0, i64 2
  store i128 %add52.i.i.331, i128* %arrayidx5.i.707, align 16, !tbaa !2
  %arrayidx7.i.708 = getelementptr inbounds [4 x i128], [4 x i128]* %e2, i64 0, i64 3
  store i128 %add56.i.i.333, i128* %arrayidx7.i.708, align 16, !tbaa !2
  %add.i.i.1083 = add i128 %add56.i.i.333, 18446744069414584320
  %shr.i.i.1085 = lshr i128 %add52.i.i.331, 64
  %add8.i.i.1086 = add i128 %add.i.i.1083, %shr.i.i.1085
  %conv12.i.i.1087 = and i128 %add52.i.i.331, 18446744073709551615
  %add13.i.i.1088 = add nuw nsw i128 %conv12.i.i.1087, 18446673704965373952
  %add16.i.i.1089 = add i128 %sub48.i.i.329, 18446744073709551615
  %add19.i.i.1091 = add i128 %add34.i.i.322, 1298074214633706907132628377272319
  %shr22.i.i.1092 = lshr i128 %add8.i.i.1086, 64
  %conv23.i.i.1093 = trunc i128 %shr22.i.i.1092 to i64
  %conv26.i.i.1094 = and i128 %add8.i.i.1086, 18446744073709551615
  %sub.i.i.1095 = sub nsw i128 %conv26.i.i.1094, %shr22.i.i.1092
  %shl.i.i.1096 = shl nuw nsw i128 %shr22.i.i.1092, 32
  %add32.i.i.1097 = add nsw i128 %sub.i.i.1095, %shl.i.i.1096
  %shr34.i.i.1098 = lshr i128 %add32.i.i.1097, 64
  %conv35.i.i.1099 = trunc i128 %shr34.i.i.1098 to i64
  %add36.i.i.1100 = add i64 %conv35.i.i.1099, %conv23.i.i.1093
  %conv39.i.i.1101 = and i128 %add32.i.i.1097, 18446744073709551615
  %sub43.i.i.1102 = sub nsw i128 %conv39.i.i.1101, %shr34.i.i.1098
  %shl45.i.i.1103 = shl nuw nsw i128 %shr34.i.i.1098, 32
  %add47.i.i.1104 = add nsw i128 %sub43.i.i.1102, %shl45.i.i.1103
  %conv48.i.i.1105 = zext i64 %add36.i.i.1100 to i128
  %add50.i.i.1106 = add i128 %add16.i.i.1089, %conv48.i.i.1105
  %shl52.i.i.1107 = shl nuw nsw i128 %conv48.i.i.1105, 32
  %sub54.i.i.1108 = sub i128 %add19.i.i.1091, %shl52.i.i.1107
  %shr56.i.i.1109 = lshr i128 %add47.i.i.1104, 64
  %conv57.i.i.1110 = trunc i128 %shr56.i.i.1109 to i64
  %sub58.i.i.1111 = sub i64 0, %conv57.i.i.1110
  %conv60.i.i.1112 = trunc i128 %add47.i.i.1104 to i64
  %and.i.i.1113 = and i64 %conv60.i.i.1112, 9223372036854775807
  %neg.i.i.1114 = sub nsw i64 9223372032559808512, %and.i.i.1113
  %sub62177.i.i.1115 = and i64 %neg.i.i.1114, %conv60.i.i.1112
  %and66.i.i.1116 = ashr i64 %sub62177.i.i.1115, 63
  %or.i.i.1117 = or i64 %and66.i.i.1116, %sub58.i.i.1111
  %conv68.i.i.1118 = zext i64 %or.i.i.1117 to i128
  %sub70.i.i.1119 = sub i128 %add50.i.i.1106, %conv68.i.i.1118
  %and71.i.i.1120 = and i64 %or.i.i.1117, 4294967295
  %conv72.i.i.1121 = zext i64 %and71.i.i.1120 to i128
  %sub74.i.i.1122 = sub i128 %sub54.i.i.1108, %conv72.i.i.1121
  %and75.i.i.1123 = and i64 %or.i.i.1117, -4294967295
  %conv76.i.i.1124 = zext i64 %and75.i.i.1123 to i128
  %sub78.i.i.1125 = sub nsw i128 %add47.i.i.1104, %conv76.i.i.1124
  %shr80.i.i.1126 = lshr i128 %sub70.i.i.1119, 64
  %add84.i.i.1127 = add i128 %sub74.i.i.1122, %shr80.i.i.1126
  %shr90.i.i.1129 = lshr i128 %add84.i.i.1127, 64
  %add94.i.i.1130 = add nuw nsw i128 %add13.i.i.1088, %shr90.i.i.1129
  %shr100.i.i.1132 = lshr i128 %add94.i.i.1130, 64
  %add104.i.i.1133 = add nsw i128 %sub78.i.i.1125, %shr100.i.i.1132
  %conv.i.1139 = and i128 %sub70.i.i.1119, 18446744073709551615
  %mul.i.1140 = mul nuw i128 %conv.i.1139, %conv.i.1139
  %shr.i.1141 = lshr i128 %mul.i.1140, 64
  %conv5.i.1142 = and i128 %mul.i.1140, 18446744073709551615
  store i128 %conv5.i.1142, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.1145 = and i128 %add84.i.i.1127, 18446744073709551615
  %mul13.i.1146 = mul nuw i128 %conv12.i.1145, %conv.i.1139
  %shr15.i.1147 = lshr i128 %mul13.i.1146, 64
  %conv17.i.1148 = shl i128 %mul13.i.1146, 1
  %factor.i.1149 = and i128 %conv17.i.1148, 36893488147419103230
  %add21.i.1150 = add nuw nsw i128 %factor.i.1149, %shr.i.1141
  store i128 %add21.i.1150, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.1153 = and i128 %add94.i.i.1130, 18446744073709551615
  %mul28.i.1154 = mul nuw i128 %conv27.i.1153, %conv.i.1139
  %shr30.i.1155 = lshr i128 %mul28.i.1154, 64
  %conv32.i.1156 = and i128 %mul28.i.1154, 18446744073709551615
  %add34.i.1157 = add nuw nsw i128 %conv32.i.1156, %shr15.i.1147
  %mul36.i.1158 = shl nuw nsw i128 %add34.i.1157, 1
  %conv42.i.1161 = and i128 %add104.i.i.1133, 18446744073709551615
  %mul43.i.1162 = mul nuw i128 %conv42.i.1161, %conv.i.1139
  %shr45.i.1163 = lshr i128 %mul43.i.1162, 64
  %conv47.i.1164 = and i128 %mul43.i.1162, 18446744073709551615
  %mul56.i.1167 = mul nuw i128 %conv27.i.1153, %conv12.i.1145
  %shr58.i.1168 = lshr i128 %mul56.i.1167, 64
  %conv60.i.1169 = and i128 %mul56.i.1167, 18446744073709551615
  %add49.i.1165 = add nuw nsw i128 %conv60.i.1169, %shr30.i.1155
  %add62.i.1170 = add nuw nsw i128 %add49.i.1165, %conv47.i.1164
  %mul64.i.1171 = shl nuw nsw i128 %add62.i.1170, 1
  %add67.i.1172 = add nuw nsw i128 %shr45.i.1163, %shr58.i.1168
  %mul72.i.1173 = mul nuw i128 %conv12.i.1145, %conv12.i.1145
  %shr74.i.1174 = lshr i128 %mul72.i.1173, 64
  %conv76.i.1175 = and i128 %mul72.i.1173, 18446744073709551615
  %add78.i.1176 = add nuw nsw i128 %mul36.i.1158, %conv76.i.1175
  store i128 %add78.i.1176, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.1177 = add nuw nsw i128 %mul64.i.1171, %shr74.i.1174
  store i128 %add81.i.1177, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.1178 = mul nuw i128 %conv42.i.1161, %conv12.i.1145
  %shr88.i.1179 = lshr i128 %mul86.i.1178, 64
  %conv90.i.1180 = and i128 %mul86.i.1178, 18446744073709551615
  %add92.i.1181 = add nuw nsw i128 %add67.i.1172, %conv90.i.1180
  %mul94.i.1182 = shl nuw nsw i128 %add92.i.1181, 1
  %mul101.i.1184 = mul nuw i128 %conv42.i.1161, %conv27.i.1153
  %shr103.i.1185 = lshr i128 %mul101.i.1184, 64
  %conv105.i.1186 = and i128 %mul101.i.1184, 18446744073709551615
  %add107.i.1187 = add nuw nsw i128 %conv105.i.1186, %shr88.i.1179
  %mul109.i.1188 = shl nuw nsw i128 %add107.i.1187, 1
  %add114.i.1190 = shl nuw nsw i128 %shr103.i.1185, 1
  %mul119.i.1191 = mul nuw i128 %conv27.i.1153, %conv27.i.1153
  %shr121.i.1192 = lshr i128 %mul119.i.1191, 64
  %conv123.i.1193 = and i128 %mul119.i.1191, 18446744073709551615
  %add125.i.1194 = add nuw nsw i128 %mul94.i.1182, %conv123.i.1193
  store i128 %add125.i.1194, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.1195 = add nuw nsw i128 %mul109.i.1188, %shr121.i.1192
  store i128 %add128.i.1195, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.1196 = mul nuw i128 %conv42.i.1161, %conv42.i.1161
  %shr135.i.1197 = lshr i128 %mul133.i.1196, 64
  %conv137.i.1198 = and i128 %mul133.i.1196, 18446744073709551615
  %add139.i.1199 = add nuw nsw i128 %add114.i.1190, %conv137.i.1198
  store i128 %add139.i.1199, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1197, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.1408 = add nuw nsw i128 %conv5.i.1142, 1267650600228229401427983728624
  %add3.i.1410 = or i128 %add21.i.1150, 1267650600228229401496703205376
  %add6.i.1413 = add nuw nsw i128 %add78.i.1176, 1267650600228229401427983728656
  %add9.i.1416 = add nuw nsw i128 %add81.i.1177, 1267650600228229401427983728656
  %shl.i.i.1420 = shl nuw nsw i128 %add128.i.1195, 32
  %add.i.i.1421 = add nuw nsw i128 %shl.i.i.1420, %add125.i.1194
  %add3.i.i.1422 = add nuw nsw i128 %add.i.i.1421, %add.i.1408
  %sub.i.i.1423 = sub nsw i128 %add9.i.1416, %add.i.i.1421
  %sub7.i.i.1425 = sub nsw i128 %add128.i.1195, %shr135.i.1197
  %add9.i.i.1426 = add nsw i128 %sub7.i.i.1425, %add3.i.1410
  %sub11.i.i.1427 = sub nsw i128 %add6.i.1413, %sub7.i.i.1425
  %shl13.i.i.1428 = shl nuw nsw i128 %add125.i.1194, 32
  %sub15.i.i.1429 = sub nsw i128 %add9.i.i.1426, %shl13.i.i.1428
  %add19.i.i.1431 = add i128 %shl13.i.i.1428, %sub.i.i.1423
  %sub23.i.i.1433 = sub nsw i128 %sub11.i.i.1427, %shl.i.i.1420
  %sub26.i.i.1435 = sub i128 %add3.i.i.1422, %add139.i.1199
  %shl28.i.i.1436 = shl nuw nsw i128 %add139.i.1199, 32
  %sub30.i.i.1437 = sub i128 %sub26.i.i.1435, %shl28.i.i.1436
  %shl32.i.i.1438 = shl nuw nsw i128 %add139.i.1199, 33
  %add34.i.i.1439 = add i128 %shl32.i.i.1438, %sub15.i.i.1429
  store i128 %add34.i.i.1439, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.1440 = shl nuw nsw i128 %add139.i.1199, 1
  %add37.i.i.1441 = add i128 %mul.i.i.1440, %sub23.i.i.1433
  %sub41.i.i.1443 = sub i128 %add19.i.i.1431, %shl28.i.i.1436
  %sub44.i.i.1444 = sub i128 %sub30.i.i.1437, %shr135.i.1197
  %shl46.i.i.1445 = shl nuw nsw i128 %shr135.i.1197, 32
  %sub48.i.i.1446 = sub i128 %sub44.i.i.1444, %shl46.i.i.1445
  store i128 %sub48.i.i.1446, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.1447 = shl nuw nsw i128 %shr135.i.1197, 33
  %add52.i.i.1448 = add i128 %shl50.i.i.1447, %add37.i.i.1441
  store i128 %add52.i.i.1448, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.1449 = mul nuw nsw i128 %shr135.i.1197, 3
  %add56.i.i.1450 = add i128 %mul54.i.i.1449, %sub41.i.i.1443
  store i128 %add56.i.i.1450, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %add.i.i.1661 = add i128 %add56.i.i.1450, 18446744069414584320
  %shr.i.i.1663 = lshr i128 %add52.i.i.1448, 64
  %add8.i.i.1664 = add i128 %add.i.i.1661, %shr.i.i.1663
  %conv12.i.i.1665 = and i128 %add52.i.i.1448, 18446744073709551615
  %add13.i.i.1666 = add nuw nsw i128 %conv12.i.i.1665, 18446673704965373952
  %add16.i.i.1667 = add i128 %sub48.i.i.1446, 18446744073709551615
  %add19.i.i.1669 = add i128 %add34.i.i.1439, 1298074214633706907132628377272319
  %shr22.i.i.1670 = lshr i128 %add8.i.i.1664, 64
  %conv23.i.i.1671 = trunc i128 %shr22.i.i.1670 to i64
  %conv26.i.i.1672 = and i128 %add8.i.i.1664, 18446744073709551615
  %sub.i.i.1673 = sub nsw i128 %conv26.i.i.1672, %shr22.i.i.1670
  %shl.i.i.1674 = shl nuw nsw i128 %shr22.i.i.1670, 32
  %add32.i.i.1675 = add nsw i128 %sub.i.i.1673, %shl.i.i.1674
  %shr34.i.i.1676 = lshr i128 %add32.i.i.1675, 64
  %conv35.i.i.1677 = trunc i128 %shr34.i.i.1676 to i64
  %add36.i.i.1678 = add i64 %conv35.i.i.1677, %conv23.i.i.1671
  %conv39.i.i.1679 = and i128 %add32.i.i.1675, 18446744073709551615
  %sub43.i.i.1680 = sub nsw i128 %conv39.i.i.1679, %shr34.i.i.1676
  %shl45.i.i.1681 = shl nuw nsw i128 %shr34.i.i.1676, 32
  %add47.i.i.1682 = add nsw i128 %sub43.i.i.1680, %shl45.i.i.1681
  %conv48.i.i.1683 = zext i64 %add36.i.i.1678 to i128
  %add50.i.i.1684 = add i128 %add16.i.i.1667, %conv48.i.i.1683
  %shl52.i.i.1685 = shl nuw nsw i128 %conv48.i.i.1683, 32
  %sub54.i.i.1686 = sub i128 %add19.i.i.1669, %shl52.i.i.1685
  %shr56.i.i.1687 = lshr i128 %add47.i.i.1682, 64
  %conv57.i.i.1688 = trunc i128 %shr56.i.i.1687 to i64
  %sub58.i.i.1689 = sub i64 0, %conv57.i.i.1688
  %conv60.i.i.1690 = trunc i128 %add47.i.i.1682 to i64
  %and.i.i.1691 = and i64 %conv60.i.i.1690, 9223372036854775807
  %neg.i.i.1692 = sub nsw i64 9223372032559808512, %and.i.i.1691
  %sub62177.i.i.1693 = and i64 %neg.i.i.1692, %conv60.i.i.1690
  %and66.i.i.1694 = ashr i64 %sub62177.i.i.1693, 63
  %or.i.i.1695 = or i64 %and66.i.i.1694, %sub58.i.i.1689
  %conv68.i.i.1696 = zext i64 %or.i.i.1695 to i128
  %sub70.i.i.1697 = sub i128 %add50.i.i.1684, %conv68.i.i.1696
  %and71.i.i.1698 = and i64 %or.i.i.1695, 4294967295
  %conv72.i.i.1699 = zext i64 %and71.i.i.1698 to i128
  %sub74.i.i.1700 = sub i128 %sub54.i.i.1686, %conv72.i.i.1699
  %and75.i.i.1701 = and i64 %or.i.i.1695, -4294967295
  %conv76.i.i.1702 = zext i64 %and75.i.i.1701 to i128
  %sub78.i.i.1703 = sub nsw i128 %add47.i.i.1682, %conv76.i.i.1702
  %shr80.i.i.1704 = lshr i128 %sub70.i.i.1697, 64
  %add84.i.i.1705 = add i128 %sub74.i.i.1700, %shr80.i.i.1704
  %shr90.i.i.1707 = lshr i128 %add84.i.i.1705, 64
  %add94.i.i.1708 = add nuw nsw i128 %add13.i.i.1666, %shr90.i.i.1707
  %shr100.i.i.1710 = lshr i128 %add94.i.i.1708, 64
  %add104.i.i.1711 = add nsw i128 %sub78.i.i.1703, %shr100.i.i.1710
  %conv.i.1717 = and i128 %sub70.i.i.1697, 18446744073709551615
  %mul.i.1718 = mul nuw i128 %conv.i.1717, %conv.i.1717
  %shr.i.1719 = lshr i128 %mul.i.1718, 64
  %conv5.i.1720 = and i128 %mul.i.1718, 18446744073709551615
  store i128 %conv5.i.1720, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.1723 = and i128 %add84.i.i.1705, 18446744073709551615
  %mul13.i.1724 = mul nuw i128 %conv12.i.1723, %conv.i.1717
  %shr15.i.1725 = lshr i128 %mul13.i.1724, 64
  %conv17.i.1726 = shl i128 %mul13.i.1724, 1
  %factor.i.1727 = and i128 %conv17.i.1726, 36893488147419103230
  %add21.i.1728 = add nuw nsw i128 %factor.i.1727, %shr.i.1719
  store i128 %add21.i.1728, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.1731 = and i128 %add94.i.i.1708, 18446744073709551615
  %mul28.i.1732 = mul nuw i128 %conv27.i.1731, %conv.i.1717
  %shr30.i.1733 = lshr i128 %mul28.i.1732, 64
  %conv32.i.1734 = and i128 %mul28.i.1732, 18446744073709551615
  %add34.i.1735 = add nuw nsw i128 %conv32.i.1734, %shr15.i.1725
  %mul36.i.1736 = shl nuw nsw i128 %add34.i.1735, 1
  %conv42.i.1739 = and i128 %add104.i.i.1711, 18446744073709551615
  %mul43.i.1740 = mul nuw i128 %conv42.i.1739, %conv.i.1717
  %shr45.i.1741 = lshr i128 %mul43.i.1740, 64
  %conv47.i.1742 = and i128 %mul43.i.1740, 18446744073709551615
  %mul56.i.1745 = mul nuw i128 %conv27.i.1731, %conv12.i.1723
  %shr58.i.1746 = lshr i128 %mul56.i.1745, 64
  %conv60.i.1747 = and i128 %mul56.i.1745, 18446744073709551615
  %add49.i.1743 = add nuw nsw i128 %conv60.i.1747, %shr30.i.1733
  %add62.i.1748 = add nuw nsw i128 %add49.i.1743, %conv47.i.1742
  %mul64.i.1749 = shl nuw nsw i128 %add62.i.1748, 1
  %add67.i.1750 = add nuw nsw i128 %shr45.i.1741, %shr58.i.1746
  %mul72.i.1751 = mul nuw i128 %conv12.i.1723, %conv12.i.1723
  %shr74.i.1752 = lshr i128 %mul72.i.1751, 64
  %conv76.i.1753 = and i128 %mul72.i.1751, 18446744073709551615
  %add78.i.1754 = add nuw nsw i128 %mul36.i.1736, %conv76.i.1753
  store i128 %add78.i.1754, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.1755 = add nuw nsw i128 %mul64.i.1749, %shr74.i.1752
  store i128 %add81.i.1755, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.1756 = mul nuw i128 %conv42.i.1739, %conv12.i.1723
  %shr88.i.1757 = lshr i128 %mul86.i.1756, 64
  %conv90.i.1758 = and i128 %mul86.i.1756, 18446744073709551615
  %add92.i.1759 = add nuw nsw i128 %add67.i.1750, %conv90.i.1758
  %mul94.i.1760 = shl nuw nsw i128 %add92.i.1759, 1
  %mul101.i.1762 = mul nuw i128 %conv42.i.1739, %conv27.i.1731
  %shr103.i.1763 = lshr i128 %mul101.i.1762, 64
  %conv105.i.1764 = and i128 %mul101.i.1762, 18446744073709551615
  %add107.i.1765 = add nuw nsw i128 %conv105.i.1764, %shr88.i.1757
  %mul109.i.1766 = shl nuw nsw i128 %add107.i.1765, 1
  %add114.i.1768 = shl nuw nsw i128 %shr103.i.1763, 1
  %mul119.i.1769 = mul nuw i128 %conv27.i.1731, %conv27.i.1731
  %shr121.i.1770 = lshr i128 %mul119.i.1769, 64
  %conv123.i.1771 = and i128 %mul119.i.1769, 18446744073709551615
  %add125.i.1772 = add nuw nsw i128 %mul94.i.1760, %conv123.i.1771
  store i128 %add125.i.1772, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.1773 = add nuw nsw i128 %mul109.i.1766, %shr121.i.1770
  store i128 %add128.i.1773, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.1774 = mul nuw i128 %conv42.i.1739, %conv42.i.1739
  %shr135.i.1775 = lshr i128 %mul133.i.1774, 64
  %conv137.i.1776 = and i128 %mul133.i.1774, 18446744073709551615
  %add139.i.1777 = add nuw nsw i128 %add114.i.1768, %conv137.i.1776
  store i128 %add139.i.1777, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1775, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.1986 = add nuw nsw i128 %conv5.i.1720, 1267650600228229401427983728624
  %add3.i.1988 = or i128 %add21.i.1728, 1267650600228229401496703205376
  %add6.i.1991 = add nuw nsw i128 %add78.i.1754, 1267650600228229401427983728656
  %add9.i.1994 = add nuw nsw i128 %add81.i.1755, 1267650600228229401427983728656
  %shl.i.i.1998 = shl nuw nsw i128 %add128.i.1773, 32
  %add.i.i.1999 = add nuw nsw i128 %shl.i.i.1998, %add125.i.1772
  %add3.i.i.2000 = add nuw nsw i128 %add.i.i.1999, %add.i.1986
  %sub.i.i.2001 = sub nsw i128 %add9.i.1994, %add.i.i.1999
  %sub7.i.i.2003 = sub nsw i128 %add128.i.1773, %shr135.i.1775
  %add9.i.i.2004 = add nsw i128 %sub7.i.i.2003, %add3.i.1988
  %sub11.i.i.2005 = sub nsw i128 %add6.i.1991, %sub7.i.i.2003
  %shl13.i.i.2006 = shl nuw nsw i128 %add125.i.1772, 32
  %sub15.i.i.2007 = sub nsw i128 %add9.i.i.2004, %shl13.i.i.2006
  %add19.i.i.2009 = add i128 %shl13.i.i.2006, %sub.i.i.2001
  %sub23.i.i.2011 = sub nsw i128 %sub11.i.i.2005, %shl.i.i.1998
  %sub26.i.i.2013 = sub i128 %add3.i.i.2000, %add139.i.1777
  %shl28.i.i.2014 = shl nuw nsw i128 %add139.i.1777, 32
  %sub30.i.i.2015 = sub i128 %sub26.i.i.2013, %shl28.i.i.2014
  %shl32.i.i.2016 = shl nuw nsw i128 %add139.i.1777, 33
  %add34.i.i.2017 = add i128 %shl32.i.i.2016, %sub15.i.i.2007
  store i128 %add34.i.i.2017, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.2018 = shl nuw nsw i128 %add139.i.1777, 1
  %add37.i.i.2019 = add i128 %mul.i.i.2018, %sub23.i.i.2011
  %sub41.i.i.2021 = sub i128 %add19.i.i.2009, %shl28.i.i.2014
  %sub44.i.i.2022 = sub i128 %sub30.i.i.2015, %shr135.i.1775
  %shl46.i.i.2023 = shl nuw nsw i128 %shr135.i.1775, 32
  %sub48.i.i.2024 = sub i128 %sub44.i.i.2022, %shl46.i.i.2023
  store i128 %sub48.i.i.2024, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2025 = shl nuw nsw i128 %shr135.i.1775, 33
  %add52.i.i.2026 = add i128 %shl50.i.i.2025, %add37.i.i.2019
  store i128 %add52.i.i.2026, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.2027 = mul nuw nsw i128 %shr135.i.1775, 3
  %add56.i.i.2028 = add i128 %mul54.i.i.2027, %sub41.i.i.2021
  store i128 %add56.i.i.2028, i128* %arrayidx10.i.214, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay2, i128* %arraydecay8)
  %21 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2236 = add i128 %21, 1267650600228229401427983728624
  %22 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.2238 = add i128 %22, 1267650600228229401496703205376
  %23 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.2241 = add i128 %23, 1267650600228229401427983728656
  %24 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.2244 = add i128 %24, 1267650600228229401427983728656
  %25 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %26 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.2248 = shl i128 %26, 32
  %add.i.i.2249 = add i128 %shl.i.i.2248, %25
  %add3.i.i.2250 = add i128 %add.i.i.2249, %add.i.2236
  %sub.i.i.2251 = sub i128 %add9.i.2244, %add.i.i.2249
  %27 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.2253 = sub i128 %26, %27
  %add9.i.i.2254 = add i128 %sub7.i.i.2253, %add3.i.2238
  %sub11.i.i.2255 = sub i128 %add6.i.2241, %sub7.i.i.2253
  %shl13.i.i.2256 = shl i128 %25, 32
  %sub15.i.i.2257 = sub i128 %add9.i.i.2254, %shl13.i.i.2256
  %add19.i.i.2259 = add i128 %shl13.i.i.2256, %sub.i.i.2251
  %sub23.i.i.2261 = sub i128 %sub11.i.i.2255, %shl.i.i.2248
  %28 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.2263 = sub i128 %add3.i.i.2250, %28
  %shl28.i.i.2264 = shl i128 %28, 32
  %sub30.i.i.2265 = sub i128 %sub26.i.i.2263, %shl28.i.i.2264
  %shl32.i.i.2266 = shl i128 %28, 33
  %add34.i.i.2267 = add i128 %shl32.i.i.2266, %sub15.i.i.2257
  store i128 %add34.i.i.2267, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.2268 = shl i128 %28, 1
  %add37.i.i.2269 = add i128 %mul.i.i.2268, %sub23.i.i.2261
  %sub41.i.i.2271 = sub i128 %add19.i.i.2259, %shl28.i.i.2264
  %sub44.i.i.2272 = sub i128 %sub30.i.i.2265, %27
  %shl46.i.i.2273 = shl i128 %27, 32
  %sub48.i.i.2274 = sub i128 %sub44.i.i.2272, %shl46.i.i.2273
  store i128 %sub48.i.i.2274, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2275 = shl i128 %27, 33
  %add52.i.i.2276 = add i128 %shl50.i.i.2275, %add37.i.i.2269
  store i128 %add52.i.i.2276, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.2277 = mul i128 %27, 3
  %add56.i.i.2278 = add i128 %mul54.i.i.2277, %sub41.i.i.2271
  store i128 %add56.i.i.2278, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %arraydecay23 = getelementptr inbounds [4 x i128], [4 x i128]* %e4, i64 0, i64 0
  store i128 %sub48.i.i.2274, i128* %arraydecay23, align 16, !tbaa !2
  %arrayidx3.i.2499 = getelementptr inbounds [4 x i128], [4 x i128]* %e4, i64 0, i64 1
  store i128 %add34.i.i.2267, i128* %arrayidx3.i.2499, align 16, !tbaa !2
  %arrayidx5.i.2501 = getelementptr inbounds [4 x i128], [4 x i128]* %e4, i64 0, i64 2
  store i128 %add52.i.i.2276, i128* %arrayidx5.i.2501, align 16, !tbaa !2
  %arrayidx7.i.2503 = getelementptr inbounds [4 x i128], [4 x i128]* %e4, i64 0, i64 3
  store i128 %add56.i.i.2278, i128* %arrayidx7.i.2503, align 16, !tbaa !2
  %add.i.i.2720 = add i128 %add56.i.i.2278, 18446744069414584320
  %shr.i.i.2722 = lshr i128 %add52.i.i.2276, 64
  %add8.i.i.2723 = add i128 %add.i.i.2720, %shr.i.i.2722
  %conv12.i.i.2724 = and i128 %add52.i.i.2276, 18446744073709551615
  %add13.i.i.2725 = add nuw nsw i128 %conv12.i.i.2724, 18446673704965373952
  %add16.i.i.2726 = add i128 %sub48.i.i.2274, 18446744073709551615
  %add19.i.i.2728 = add i128 %add34.i.i.2267, 1298074214633706907132628377272319
  %shr22.i.i.2729 = lshr i128 %add8.i.i.2723, 64
  %conv23.i.i.2730 = trunc i128 %shr22.i.i.2729 to i64
  %conv26.i.i.2731 = and i128 %add8.i.i.2723, 18446744073709551615
  %sub.i.i.2732 = sub nsw i128 %conv26.i.i.2731, %shr22.i.i.2729
  %shl.i.i.2733 = shl nuw nsw i128 %shr22.i.i.2729, 32
  %add32.i.i.2734 = add nsw i128 %sub.i.i.2732, %shl.i.i.2733
  %shr34.i.i.2735 = lshr i128 %add32.i.i.2734, 64
  %conv35.i.i.2736 = trunc i128 %shr34.i.i.2735 to i64
  %add36.i.i.2737 = add i64 %conv35.i.i.2736, %conv23.i.i.2730
  %conv39.i.i.2738 = and i128 %add32.i.i.2734, 18446744073709551615
  %sub43.i.i.2739 = sub nsw i128 %conv39.i.i.2738, %shr34.i.i.2735
  %shl45.i.i.2740 = shl nuw nsw i128 %shr34.i.i.2735, 32
  %add47.i.i.2741 = add nsw i128 %sub43.i.i.2739, %shl45.i.i.2740
  %conv48.i.i.2742 = zext i64 %add36.i.i.2737 to i128
  %add50.i.i.2743 = add i128 %add16.i.i.2726, %conv48.i.i.2742
  %shl52.i.i.2744 = shl nuw nsw i128 %conv48.i.i.2742, 32
  %sub54.i.i.2745 = sub i128 %add19.i.i.2728, %shl52.i.i.2744
  %shr56.i.i.2746 = lshr i128 %add47.i.i.2741, 64
  %conv57.i.i.2747 = trunc i128 %shr56.i.i.2746 to i64
  %sub58.i.i.2748 = sub i64 0, %conv57.i.i.2747
  %conv60.i.i.2749 = trunc i128 %add47.i.i.2741 to i64
  %and.i.i.2750 = and i64 %conv60.i.i.2749, 9223372036854775807
  %neg.i.i.2751 = sub nsw i64 9223372032559808512, %and.i.i.2750
  %sub62177.i.i.2752 = and i64 %neg.i.i.2751, %conv60.i.i.2749
  %and66.i.i.2753 = ashr i64 %sub62177.i.i.2752, 63
  %or.i.i.2754 = or i64 %and66.i.i.2753, %sub58.i.i.2748
  %conv68.i.i.2755 = zext i64 %or.i.i.2754 to i128
  %sub70.i.i.2756 = sub i128 %add50.i.i.2743, %conv68.i.i.2755
  %and71.i.i.2757 = and i64 %or.i.i.2754, 4294967295
  %conv72.i.i.2758 = zext i64 %and71.i.i.2757 to i128
  %sub74.i.i.2759 = sub i128 %sub54.i.i.2745, %conv72.i.i.2758
  %and75.i.i.2760 = and i64 %or.i.i.2754, -4294967295
  %conv76.i.i.2761 = zext i64 %and75.i.i.2760 to i128
  %sub78.i.i.2762 = sub nsw i128 %add47.i.i.2741, %conv76.i.i.2761
  %shr80.i.i.2763 = lshr i128 %sub70.i.i.2756, 64
  %add84.i.i.2764 = add i128 %sub74.i.i.2759, %shr80.i.i.2763
  %shr90.i.i.2766 = lshr i128 %add84.i.i.2764, 64
  %add94.i.i.2767 = add nuw nsw i128 %add13.i.i.2725, %shr90.i.i.2766
  %shr100.i.i.2769 = lshr i128 %add94.i.i.2767, 64
  %add104.i.i.2770 = add nsw i128 %sub78.i.i.2762, %shr100.i.i.2769
  %conv.i.2776 = and i128 %sub70.i.i.2756, 18446744073709551615
  %mul.i.2777 = mul nuw i128 %conv.i.2776, %conv.i.2776
  %shr.i.2778 = lshr i128 %mul.i.2777, 64
  %conv5.i.2779 = and i128 %mul.i.2777, 18446744073709551615
  store i128 %conv5.i.2779, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.2782 = and i128 %add84.i.i.2764, 18446744073709551615
  %mul13.i.2783 = mul nuw i128 %conv12.i.2782, %conv.i.2776
  %shr15.i.2784 = lshr i128 %mul13.i.2783, 64
  %conv17.i.2785 = shl i128 %mul13.i.2783, 1
  %factor.i.2786 = and i128 %conv17.i.2785, 36893488147419103230
  %add21.i.2787 = add nuw nsw i128 %factor.i.2786, %shr.i.2778
  store i128 %add21.i.2787, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.2790 = and i128 %add94.i.i.2767, 18446744073709551615
  %mul28.i.2791 = mul nuw i128 %conv27.i.2790, %conv.i.2776
  %shr30.i.2792 = lshr i128 %mul28.i.2791, 64
  %conv32.i.2793 = and i128 %mul28.i.2791, 18446744073709551615
  %add34.i.2794 = add nuw nsw i128 %conv32.i.2793, %shr15.i.2784
  %mul36.i.2795 = shl nuw nsw i128 %add34.i.2794, 1
  %conv42.i.2798 = and i128 %add104.i.i.2770, 18446744073709551615
  %mul43.i.2799 = mul nuw i128 %conv42.i.2798, %conv.i.2776
  %shr45.i.2800 = lshr i128 %mul43.i.2799, 64
  %conv47.i.2801 = and i128 %mul43.i.2799, 18446744073709551615
  %mul56.i.2804 = mul nuw i128 %conv27.i.2790, %conv12.i.2782
  %shr58.i.2805 = lshr i128 %mul56.i.2804, 64
  %conv60.i.2806 = and i128 %mul56.i.2804, 18446744073709551615
  %add49.i.2802 = add nuw nsw i128 %conv60.i.2806, %shr30.i.2792
  %add62.i.2807 = add nuw nsw i128 %add49.i.2802, %conv47.i.2801
  %mul64.i.2808 = shl nuw nsw i128 %add62.i.2807, 1
  %add67.i.2809 = add nuw nsw i128 %shr45.i.2800, %shr58.i.2805
  %mul72.i.2810 = mul nuw i128 %conv12.i.2782, %conv12.i.2782
  %shr74.i.2811 = lshr i128 %mul72.i.2810, 64
  %conv76.i.2812 = and i128 %mul72.i.2810, 18446744073709551615
  %add78.i.2813 = add nuw nsw i128 %mul36.i.2795, %conv76.i.2812
  store i128 %add78.i.2813, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.2814 = add nuw nsw i128 %mul64.i.2808, %shr74.i.2811
  store i128 %add81.i.2814, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.2815 = mul nuw i128 %conv42.i.2798, %conv12.i.2782
  %shr88.i.2816 = lshr i128 %mul86.i.2815, 64
  %conv90.i.2817 = and i128 %mul86.i.2815, 18446744073709551615
  %add92.i.2818 = add nuw nsw i128 %add67.i.2809, %conv90.i.2817
  %mul94.i.2819 = shl nuw nsw i128 %add92.i.2818, 1
  %mul101.i.2821 = mul nuw i128 %conv42.i.2798, %conv27.i.2790
  %shr103.i.2822 = lshr i128 %mul101.i.2821, 64
  %conv105.i.2823 = and i128 %mul101.i.2821, 18446744073709551615
  %add107.i.2824 = add nuw nsw i128 %conv105.i.2823, %shr88.i.2816
  %mul109.i.2825 = shl nuw nsw i128 %add107.i.2824, 1
  %add114.i.2827 = shl nuw nsw i128 %shr103.i.2822, 1
  %mul119.i.2828 = mul nuw i128 %conv27.i.2790, %conv27.i.2790
  %shr121.i.2829 = lshr i128 %mul119.i.2828, 64
  %conv123.i.2830 = and i128 %mul119.i.2828, 18446744073709551615
  %add125.i.2831 = add nuw nsw i128 %mul94.i.2819, %conv123.i.2830
  store i128 %add125.i.2831, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.2832 = add nuw nsw i128 %mul109.i.2825, %shr121.i.2829
  store i128 %add128.i.2832, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.2833 = mul nuw i128 %conv42.i.2798, %conv42.i.2798
  %shr135.i.2834 = lshr i128 %mul133.i.2833, 64
  %conv137.i.2835 = and i128 %mul133.i.2833, 18446744073709551615
  %add139.i.2836 = add nuw nsw i128 %add114.i.2827, %conv137.i.2835
  store i128 %add139.i.2836, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.2834, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.3051 = add nuw nsw i128 %conv5.i.2779, 1267650600228229401427983728624
  %add3.i.3053 = or i128 %add21.i.2787, 1267650600228229401496703205376
  %add6.i.3056 = add nuw nsw i128 %add78.i.2813, 1267650600228229401427983728656
  %add9.i.3059 = add nuw nsw i128 %add81.i.2814, 1267650600228229401427983728656
  %shl.i.i.3063 = shl nuw nsw i128 %add128.i.2832, 32
  %add.i.i.3064 = add nuw nsw i128 %shl.i.i.3063, %add125.i.2831
  %add3.i.i.3065 = add nuw nsw i128 %add.i.i.3064, %add.i.3051
  %sub.i.i.3066 = sub nsw i128 %add9.i.3059, %add.i.i.3064
  %sub7.i.i.3068 = sub nsw i128 %add128.i.2832, %shr135.i.2834
  %add9.i.i.3069 = add nsw i128 %sub7.i.i.3068, %add3.i.3053
  %sub11.i.i.3070 = sub nsw i128 %add6.i.3056, %sub7.i.i.3068
  %shl13.i.i.3071 = shl nuw nsw i128 %add125.i.2831, 32
  %sub15.i.i.3072 = sub nsw i128 %add9.i.i.3069, %shl13.i.i.3071
  %add19.i.i.3074 = add i128 %shl13.i.i.3071, %sub.i.i.3066
  %sub23.i.i.3076 = sub nsw i128 %sub11.i.i.3070, %shl.i.i.3063
  %sub26.i.i.3078 = sub i128 %add3.i.i.3065, %add139.i.2836
  %shl28.i.i.3079 = shl nuw nsw i128 %add139.i.2836, 32
  %sub30.i.i.3080 = sub i128 %sub26.i.i.3078, %shl28.i.i.3079
  %shl32.i.i.3081 = shl nuw nsw i128 %add139.i.2836, 33
  %add34.i.i.3082 = add i128 %shl32.i.i.3081, %sub15.i.i.3072
  store i128 %add34.i.i.3082, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.3083 = shl nuw nsw i128 %add139.i.2836, 1
  %add37.i.i.3084 = add i128 %mul.i.i.3083, %sub23.i.i.3076
  %sub41.i.i.3086 = sub i128 %add19.i.i.3074, %shl28.i.i.3079
  %sub44.i.i.3087 = sub i128 %sub30.i.i.3080, %shr135.i.2834
  %shl46.i.i.3088 = shl nuw nsw i128 %shr135.i.2834, 32
  %sub48.i.i.3089 = sub i128 %sub44.i.i.3087, %shl46.i.i.3088
  store i128 %sub48.i.i.3089, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3090 = shl nuw nsw i128 %shr135.i.2834, 33
  %add52.i.i.3091 = add i128 %shl50.i.i.3090, %add37.i.i.3084
  store i128 %add52.i.i.3091, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.3092 = mul nuw nsw i128 %shr135.i.2834, 3
  %add56.i.i.3093 = add i128 %mul54.i.i.3092, %sub41.i.i.3086
  store i128 %add56.i.i.3093, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %add.i.i.3468 = add i128 %add56.i.i.3093, 18446744069414584320
  %shr.i.i.3470 = lshr i128 %add52.i.i.3091, 64
  %add8.i.i.3471 = add i128 %add.i.i.3468, %shr.i.i.3470
  %conv12.i.i.3472 = and i128 %add52.i.i.3091, 18446744073709551615
  %add13.i.i.3473 = add nuw nsw i128 %conv12.i.i.3472, 18446673704965373952
  %add16.i.i.3474 = add i128 %sub48.i.i.3089, 18446744073709551615
  %add19.i.i.3476 = add i128 %add34.i.i.3082, 1298074214633706907132628377272319
  %shr22.i.i.3477 = lshr i128 %add8.i.i.3471, 64
  %conv23.i.i.3478 = trunc i128 %shr22.i.i.3477 to i64
  %conv26.i.i.3479 = and i128 %add8.i.i.3471, 18446744073709551615
  %sub.i.i.3480 = sub nsw i128 %conv26.i.i.3479, %shr22.i.i.3477
  %shl.i.i.3481 = shl nuw nsw i128 %shr22.i.i.3477, 32
  %add32.i.i.3482 = add nsw i128 %sub.i.i.3480, %shl.i.i.3481
  %shr34.i.i.3483 = lshr i128 %add32.i.i.3482, 64
  %conv35.i.i.3484 = trunc i128 %shr34.i.i.3483 to i64
  %add36.i.i.3485 = add i64 %conv35.i.i.3484, %conv23.i.i.3478
  %conv39.i.i.3486 = and i128 %add32.i.i.3482, 18446744073709551615
  %sub43.i.i.3487 = sub nsw i128 %conv39.i.i.3486, %shr34.i.i.3483
  %shl45.i.i.3488 = shl nuw nsw i128 %shr34.i.i.3483, 32
  %add47.i.i.3489 = add nsw i128 %sub43.i.i.3487, %shl45.i.i.3488
  %conv48.i.i.3490 = zext i64 %add36.i.i.3485 to i128
  %add50.i.i.3491 = add i128 %add16.i.i.3474, %conv48.i.i.3490
  %shl52.i.i.3492 = shl nuw nsw i128 %conv48.i.i.3490, 32
  %sub54.i.i.3493 = sub i128 %add19.i.i.3476, %shl52.i.i.3492
  %shr56.i.i.3494 = lshr i128 %add47.i.i.3489, 64
  %conv57.i.i.3495 = trunc i128 %shr56.i.i.3494 to i64
  %sub58.i.i.3496 = sub i64 0, %conv57.i.i.3495
  %conv60.i.i.3497 = trunc i128 %add47.i.i.3489 to i64
  %and.i.i.3498 = and i64 %conv60.i.i.3497, 9223372036854775807
  %neg.i.i.3499 = sub nsw i64 9223372032559808512, %and.i.i.3498
  %sub62177.i.i.3500 = and i64 %neg.i.i.3499, %conv60.i.i.3497
  %and66.i.i.3501 = ashr i64 %sub62177.i.i.3500, 63
  %or.i.i.3502 = or i64 %and66.i.i.3501, %sub58.i.i.3496
  %conv68.i.i.3503 = zext i64 %or.i.i.3502 to i128
  %sub70.i.i.3504 = sub i128 %add50.i.i.3491, %conv68.i.i.3503
  %and71.i.i.3505 = and i64 %or.i.i.3502, 4294967295
  %conv72.i.i.3506 = zext i64 %and71.i.i.3505 to i128
  %sub74.i.i.3507 = sub i128 %sub54.i.i.3493, %conv72.i.i.3506
  %and75.i.i.3508 = and i64 %or.i.i.3502, -4294967295
  %conv76.i.i.3509 = zext i64 %and75.i.i.3508 to i128
  %sub78.i.i.3510 = sub nsw i128 %add47.i.i.3489, %conv76.i.i.3509
  %shr80.i.i.3511 = lshr i128 %sub70.i.i.3504, 64
  %add84.i.i.3512 = add i128 %sub74.i.i.3507, %shr80.i.i.3511
  %shr90.i.i.3514 = lshr i128 %add84.i.i.3512, 64
  %add94.i.i.3515 = add nuw nsw i128 %add13.i.i.3473, %shr90.i.i.3514
  %shr100.i.i.3517 = lshr i128 %add94.i.i.3515, 64
  %add104.i.i.3518 = add nsw i128 %sub78.i.i.3510, %shr100.i.i.3517
  %conv.i.3524 = and i128 %sub70.i.i.3504, 18446744073709551615
  %mul.i.3525 = mul nuw i128 %conv.i.3524, %conv.i.3524
  %shr.i.3526 = lshr i128 %mul.i.3525, 64
  %conv5.i.3527 = and i128 %mul.i.3525, 18446744073709551615
  store i128 %conv5.i.3527, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3530 = and i128 %add84.i.i.3512, 18446744073709551615
  %mul13.i.3531 = mul nuw i128 %conv12.i.3530, %conv.i.3524
  %shr15.i.3532 = lshr i128 %mul13.i.3531, 64
  %conv17.i.3533 = shl i128 %mul13.i.3531, 1
  %factor.i.3534 = and i128 %conv17.i.3533, 36893488147419103230
  %add21.i.3535 = add nuw nsw i128 %factor.i.3534, %shr.i.3526
  store i128 %add21.i.3535, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.3538 = and i128 %add94.i.i.3515, 18446744073709551615
  %mul28.i.3539 = mul nuw i128 %conv27.i.3538, %conv.i.3524
  %shr30.i.3540 = lshr i128 %mul28.i.3539, 64
  %conv32.i.3541 = and i128 %mul28.i.3539, 18446744073709551615
  %add34.i.3542 = add nuw nsw i128 %conv32.i.3541, %shr15.i.3532
  %mul36.i.3543 = shl nuw nsw i128 %add34.i.3542, 1
  %conv42.i.3546 = and i128 %add104.i.i.3518, 18446744073709551615
  %mul43.i.3547 = mul nuw i128 %conv42.i.3546, %conv.i.3524
  %shr45.i.3548 = lshr i128 %mul43.i.3547, 64
  %conv47.i.3549 = and i128 %mul43.i.3547, 18446744073709551615
  %mul56.i.3552 = mul nuw i128 %conv27.i.3538, %conv12.i.3530
  %shr58.i.3553 = lshr i128 %mul56.i.3552, 64
  %conv60.i.3554 = and i128 %mul56.i.3552, 18446744073709551615
  %add49.i.3550 = add nuw nsw i128 %conv60.i.3554, %shr30.i.3540
  %add62.i.3555 = add nuw nsw i128 %add49.i.3550, %conv47.i.3549
  %mul64.i.3556 = shl nuw nsw i128 %add62.i.3555, 1
  %add67.i.3557 = add nuw nsw i128 %shr45.i.3548, %shr58.i.3553
  %mul72.i.3558 = mul nuw i128 %conv12.i.3530, %conv12.i.3530
  %shr74.i.3559 = lshr i128 %mul72.i.3558, 64
  %conv76.i.3560 = and i128 %mul72.i.3558, 18446744073709551615
  %add78.i.3561 = add nuw nsw i128 %mul36.i.3543, %conv76.i.3560
  store i128 %add78.i.3561, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.3562 = add nuw nsw i128 %mul64.i.3556, %shr74.i.3559
  store i128 %add81.i.3562, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.3563 = mul nuw i128 %conv42.i.3546, %conv12.i.3530
  %shr88.i.3564 = lshr i128 %mul86.i.3563, 64
  %conv90.i.3565 = and i128 %mul86.i.3563, 18446744073709551615
  %add92.i.3566 = add nuw nsw i128 %add67.i.3557, %conv90.i.3565
  %mul94.i.3567 = shl nuw nsw i128 %add92.i.3566, 1
  %mul101.i.3569 = mul nuw i128 %conv42.i.3546, %conv27.i.3538
  %shr103.i.3570 = lshr i128 %mul101.i.3569, 64
  %conv105.i.3571 = and i128 %mul101.i.3569, 18446744073709551615
  %add107.i.3572 = add nuw nsw i128 %conv105.i.3571, %shr88.i.3564
  %mul109.i.3573 = shl nuw nsw i128 %add107.i.3572, 1
  %add114.i.3575 = shl nuw nsw i128 %shr103.i.3570, 1
  %mul119.i.3576 = mul nuw i128 %conv27.i.3538, %conv27.i.3538
  %shr121.i.3577 = lshr i128 %mul119.i.3576, 64
  %conv123.i.3578 = and i128 %mul119.i.3576, 18446744073709551615
  %add125.i.3579 = add nuw nsw i128 %mul94.i.3567, %conv123.i.3578
  store i128 %add125.i.3579, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.3580 = add nuw nsw i128 %mul109.i.3573, %shr121.i.3577
  store i128 %add128.i.3580, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.3581 = mul nuw i128 %conv42.i.3546, %conv42.i.3546
  %shr135.i.3582 = lshr i128 %mul133.i.3581, 64
  %conv137.i.3583 = and i128 %mul133.i.3581, 18446744073709551615
  %add139.i.3584 = add nuw nsw i128 %add114.i.3575, %conv137.i.3583
  store i128 %add139.i.3584, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.3582, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.3422 = add nuw nsw i128 %conv5.i.3527, 1267650600228229401427983728624
  %add3.i.3424 = or i128 %add21.i.3535, 1267650600228229401496703205376
  %add6.i.3427 = add nuw nsw i128 %add78.i.3561, 1267650600228229401427983728656
  %add9.i.3430 = add nuw nsw i128 %add81.i.3562, 1267650600228229401427983728656
  %shl.i.i.3434 = shl nuw nsw i128 %add128.i.3580, 32
  %add.i.i.3435 = add nuw nsw i128 %shl.i.i.3434, %add125.i.3579
  %add3.i.i.3436 = add nuw nsw i128 %add.i.i.3435, %add.i.3422
  %sub.i.i.3437 = sub nsw i128 %add9.i.3430, %add.i.i.3435
  %sub7.i.i.3439 = sub nsw i128 %add128.i.3580, %shr135.i.3582
  %add9.i.i.3440 = add nsw i128 %sub7.i.i.3439, %add3.i.3424
  %sub11.i.i.3441 = sub nsw i128 %add6.i.3427, %sub7.i.i.3439
  %shl13.i.i.3442 = shl nuw nsw i128 %add125.i.3579, 32
  %sub15.i.i.3443 = sub nsw i128 %add9.i.i.3440, %shl13.i.i.3442
  %add19.i.i.3445 = add i128 %shl13.i.i.3442, %sub.i.i.3437
  %sub23.i.i.3447 = sub nsw i128 %sub11.i.i.3441, %shl.i.i.3434
  %sub26.i.i.3449 = sub i128 %add3.i.i.3436, %add139.i.3584
  %shl28.i.i.3450 = shl nuw nsw i128 %add139.i.3584, 32
  %sub30.i.i.3451 = sub i128 %sub26.i.i.3449, %shl28.i.i.3450
  %shl32.i.i.3452 = shl nuw nsw i128 %add139.i.3584, 33
  %add34.i.i.3453 = add i128 %shl32.i.i.3452, %sub15.i.i.3443
  store i128 %add34.i.i.3453, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.3454 = shl nuw nsw i128 %add139.i.3584, 1
  %add37.i.i.3455 = add i128 %mul.i.i.3454, %sub23.i.i.3447
  %sub41.i.i.3457 = sub i128 %add19.i.i.3445, %shl28.i.i.3450
  %sub44.i.i.3458 = sub i128 %sub30.i.i.3451, %shr135.i.3582
  %shl46.i.i.3459 = shl nuw nsw i128 %shr135.i.3582, 32
  %sub48.i.i.3460 = sub i128 %sub44.i.i.3458, %shl46.i.i.3459
  store i128 %sub48.i.i.3460, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3461 = shl nuw nsw i128 %shr135.i.3582, 33
  %add52.i.i.3462 = add i128 %shl50.i.i.3461, %add37.i.i.3455
  store i128 %add52.i.i.3462, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.3463 = mul nuw nsw i128 %shr135.i.3582, 3
  %add56.i.i.3464 = add i128 %mul54.i.i.3463, %sub41.i.i.3457
  store i128 %add56.i.i.3464, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %add.i.i.3304 = add i128 %add56.i.i.3464, 18446744069414584320
  %shr.i.i.3306 = lshr i128 %add52.i.i.3462, 64
  %add8.i.i.3307 = add i128 %add.i.i.3304, %shr.i.i.3306
  %conv12.i.i.3308 = and i128 %add52.i.i.3462, 18446744073709551615
  %add13.i.i.3309 = add nuw nsw i128 %conv12.i.i.3308, 18446673704965373952
  %add16.i.i.3310 = add i128 %sub48.i.i.3460, 18446744073709551615
  %add19.i.i.3312 = add i128 %add34.i.i.3453, 1298074214633706907132628377272319
  %shr22.i.i.3313 = lshr i128 %add8.i.i.3307, 64
  %conv23.i.i.3314 = trunc i128 %shr22.i.i.3313 to i64
  %conv26.i.i.3315 = and i128 %add8.i.i.3307, 18446744073709551615
  %sub.i.i.3316 = sub nsw i128 %conv26.i.i.3315, %shr22.i.i.3313
  %shl.i.i.3317 = shl nuw nsw i128 %shr22.i.i.3313, 32
  %add32.i.i.3318 = add nsw i128 %sub.i.i.3316, %shl.i.i.3317
  %shr34.i.i.3319 = lshr i128 %add32.i.i.3318, 64
  %conv35.i.i.3320 = trunc i128 %shr34.i.i.3319 to i64
  %add36.i.i.3321 = add i64 %conv35.i.i.3320, %conv23.i.i.3314
  %conv39.i.i.3322 = and i128 %add32.i.i.3318, 18446744073709551615
  %sub43.i.i.3323 = sub nsw i128 %conv39.i.i.3322, %shr34.i.i.3319
  %shl45.i.i.3324 = shl nuw nsw i128 %shr34.i.i.3319, 32
  %add47.i.i.3325 = add nsw i128 %sub43.i.i.3323, %shl45.i.i.3324
  %conv48.i.i.3326 = zext i64 %add36.i.i.3321 to i128
  %add50.i.i.3327 = add i128 %add16.i.i.3310, %conv48.i.i.3326
  %shl52.i.i.3328 = shl nuw nsw i128 %conv48.i.i.3326, 32
  %sub54.i.i.3329 = sub i128 %add19.i.i.3312, %shl52.i.i.3328
  %shr56.i.i.3330 = lshr i128 %add47.i.i.3325, 64
  %conv57.i.i.3331 = trunc i128 %shr56.i.i.3330 to i64
  %sub58.i.i.3332 = sub i64 0, %conv57.i.i.3331
  %conv60.i.i.3333 = trunc i128 %add47.i.i.3325 to i64
  %and.i.i.3334 = and i64 %conv60.i.i.3333, 9223372036854775807
  %neg.i.i.3335 = sub nsw i64 9223372032559808512, %and.i.i.3334
  %sub62177.i.i.3336 = and i64 %neg.i.i.3335, %conv60.i.i.3333
  %and66.i.i.3337 = ashr i64 %sub62177.i.i.3336, 63
  %or.i.i.3338 = or i64 %and66.i.i.3337, %sub58.i.i.3332
  %conv68.i.i.3339 = zext i64 %or.i.i.3338 to i128
  %sub70.i.i.3340 = sub i128 %add50.i.i.3327, %conv68.i.i.3339
  %and71.i.i.3341 = and i64 %or.i.i.3338, 4294967295
  %conv72.i.i.3342 = zext i64 %and71.i.i.3341 to i128
  %sub74.i.i.3343 = sub i128 %sub54.i.i.3329, %conv72.i.i.3342
  %and75.i.i.3344 = and i64 %or.i.i.3338, -4294967295
  %conv76.i.i.3345 = zext i64 %and75.i.i.3344 to i128
  %sub78.i.i.3346 = sub nsw i128 %add47.i.i.3325, %conv76.i.i.3345
  %shr80.i.i.3347 = lshr i128 %sub70.i.i.3340, 64
  %add84.i.i.3348 = add i128 %sub74.i.i.3343, %shr80.i.i.3347
  %shr90.i.i.3350 = lshr i128 %add84.i.i.3348, 64
  %add94.i.i.3351 = add nuw nsw i128 %add13.i.i.3309, %shr90.i.i.3350
  %shr100.i.i.3353 = lshr i128 %add94.i.i.3351, 64
  %add104.i.i.3354 = add nsw i128 %sub78.i.i.3346, %shr100.i.i.3353
  %conv.i.3360 = and i128 %sub70.i.i.3340, 18446744073709551615
  %mul.i.3361 = mul nuw i128 %conv.i.3360, %conv.i.3360
  %shr.i.3362 = lshr i128 %mul.i.3361, 64
  %conv5.i.3363 = and i128 %mul.i.3361, 18446744073709551615
  store i128 %conv5.i.3363, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3366 = and i128 %add84.i.i.3348, 18446744073709551615
  %mul13.i.3367 = mul nuw i128 %conv12.i.3366, %conv.i.3360
  %shr15.i.3368 = lshr i128 %mul13.i.3367, 64
  %conv17.i.3369 = shl i128 %mul13.i.3367, 1
  %factor.i.3370 = and i128 %conv17.i.3369, 36893488147419103230
  %add21.i.3371 = add nuw nsw i128 %factor.i.3370, %shr.i.3362
  store i128 %add21.i.3371, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.3374 = and i128 %add94.i.i.3351, 18446744073709551615
  %mul28.i.3375 = mul nuw i128 %conv27.i.3374, %conv.i.3360
  %shr30.i.3376 = lshr i128 %mul28.i.3375, 64
  %conv32.i.3377 = and i128 %mul28.i.3375, 18446744073709551615
  %add34.i.3378 = add nuw nsw i128 %conv32.i.3377, %shr15.i.3368
  %mul36.i.3379 = shl nuw nsw i128 %add34.i.3378, 1
  %conv42.i.3382 = and i128 %add104.i.i.3354, 18446744073709551615
  %mul43.i.3383 = mul nuw i128 %conv42.i.3382, %conv.i.3360
  %shr45.i.3384 = lshr i128 %mul43.i.3383, 64
  %conv47.i.3385 = and i128 %mul43.i.3383, 18446744073709551615
  %mul56.i.3388 = mul nuw i128 %conv27.i.3374, %conv12.i.3366
  %shr58.i.3389 = lshr i128 %mul56.i.3388, 64
  %conv60.i.3390 = and i128 %mul56.i.3388, 18446744073709551615
  %add49.i.3386 = add nuw nsw i128 %conv60.i.3390, %shr30.i.3376
  %add62.i.3391 = add nuw nsw i128 %add49.i.3386, %conv47.i.3385
  %mul64.i.3392 = shl nuw nsw i128 %add62.i.3391, 1
  %add67.i.3393 = add nuw nsw i128 %shr45.i.3384, %shr58.i.3389
  %mul72.i.3394 = mul nuw i128 %conv12.i.3366, %conv12.i.3366
  %shr74.i.3395 = lshr i128 %mul72.i.3394, 64
  %conv76.i.3396 = and i128 %mul72.i.3394, 18446744073709551615
  %add78.i.3397 = add nuw nsw i128 %mul36.i.3379, %conv76.i.3396
  store i128 %add78.i.3397, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.3398 = add nuw nsw i128 %mul64.i.3392, %shr74.i.3395
  store i128 %add81.i.3398, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.3399 = mul nuw i128 %conv42.i.3382, %conv12.i.3366
  %shr88.i.3400 = lshr i128 %mul86.i.3399, 64
  %conv90.i.3401 = and i128 %mul86.i.3399, 18446744073709551615
  %add92.i.3402 = add nuw nsw i128 %add67.i.3393, %conv90.i.3401
  %mul94.i.3403 = shl nuw nsw i128 %add92.i.3402, 1
  %mul101.i.3405 = mul nuw i128 %conv42.i.3382, %conv27.i.3374
  %shr103.i.3406 = lshr i128 %mul101.i.3405, 64
  %conv105.i.3407 = and i128 %mul101.i.3405, 18446744073709551615
  %add107.i.3408 = add nuw nsw i128 %conv105.i.3407, %shr88.i.3400
  %mul109.i.3409 = shl nuw nsw i128 %add107.i.3408, 1
  %add114.i.3411 = shl nuw nsw i128 %shr103.i.3406, 1
  %mul119.i.3412 = mul nuw i128 %conv27.i.3374, %conv27.i.3374
  %shr121.i.3413 = lshr i128 %mul119.i.3412, 64
  %conv123.i.3414 = and i128 %mul119.i.3412, 18446744073709551615
  %add125.i.3415 = add nuw nsw i128 %mul94.i.3403, %conv123.i.3414
  store i128 %add125.i.3415, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.3416 = add nuw nsw i128 %mul109.i.3409, %shr121.i.3413
  store i128 %add128.i.3416, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.3417 = mul nuw i128 %conv42.i.3382, %conv42.i.3382
  %shr135.i.3418 = lshr i128 %mul133.i.3417, 64
  %conv137.i.3419 = and i128 %mul133.i.3417, 18446744073709551615
  %add139.i.3420 = add nuw nsw i128 %add114.i.3411, %conv137.i.3419
  store i128 %add139.i.3420, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.3418, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.3258 = add nuw nsw i128 %conv5.i.3363, 1267650600228229401427983728624
  %add3.i.3260 = or i128 %add21.i.3371, 1267650600228229401496703205376
  %add6.i.3263 = add nuw nsw i128 %add78.i.3397, 1267650600228229401427983728656
  %add9.i.3266 = add nuw nsw i128 %add81.i.3398, 1267650600228229401427983728656
  %shl.i.i.3270 = shl nuw nsw i128 %add128.i.3416, 32
  %add.i.i.3271 = add nuw nsw i128 %shl.i.i.3270, %add125.i.3415
  %add3.i.i.3272 = add nuw nsw i128 %add.i.i.3271, %add.i.3258
  %sub.i.i.3273 = sub nsw i128 %add9.i.3266, %add.i.i.3271
  %sub7.i.i.3275 = sub nsw i128 %add128.i.3416, %shr135.i.3418
  %add9.i.i.3276 = add nsw i128 %sub7.i.i.3275, %add3.i.3260
  %sub11.i.i.3277 = sub nsw i128 %add6.i.3263, %sub7.i.i.3275
  %shl13.i.i.3278 = shl nuw nsw i128 %add125.i.3415, 32
  %sub15.i.i.3279 = sub nsw i128 %add9.i.i.3276, %shl13.i.i.3278
  %add19.i.i.3281 = add i128 %shl13.i.i.3278, %sub.i.i.3273
  %sub23.i.i.3283 = sub nsw i128 %sub11.i.i.3277, %shl.i.i.3270
  %sub26.i.i.3285 = sub i128 %add3.i.i.3272, %add139.i.3420
  %shl28.i.i.3286 = shl nuw nsw i128 %add139.i.3420, 32
  %sub30.i.i.3287 = sub i128 %sub26.i.i.3285, %shl28.i.i.3286
  %shl32.i.i.3288 = shl nuw nsw i128 %add139.i.3420, 33
  %add34.i.i.3289 = add i128 %shl32.i.i.3288, %sub15.i.i.3279
  store i128 %add34.i.i.3289, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.3290 = shl nuw nsw i128 %add139.i.3420, 1
  %add37.i.i.3291 = add i128 %mul.i.i.3290, %sub23.i.i.3283
  %sub41.i.i.3293 = sub i128 %add19.i.i.3281, %shl28.i.i.3286
  %sub44.i.i.3294 = sub i128 %sub30.i.i.3287, %shr135.i.3418
  %shl46.i.i.3295 = shl nuw nsw i128 %shr135.i.3418, 32
  %sub48.i.i.3296 = sub i128 %sub44.i.i.3294, %shl46.i.i.3295
  store i128 %sub48.i.i.3296, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3297 = shl nuw nsw i128 %shr135.i.3418, 33
  %add52.i.i.3298 = add i128 %shl50.i.i.3297, %add37.i.i.3291
  store i128 %add52.i.i.3298, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.3299 = mul nuw nsw i128 %shr135.i.3418, 3
  %add56.i.i.3300 = add i128 %mul54.i.i.3299, %sub41.i.i.3293
  store i128 %add56.i.i.3300, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %add.i.i.3140 = add i128 %add56.i.i.3300, 18446744069414584320
  %shr.i.i.3142 = lshr i128 %add52.i.i.3298, 64
  %add8.i.i.3143 = add i128 %add.i.i.3140, %shr.i.i.3142
  %conv12.i.i.3144 = and i128 %add52.i.i.3298, 18446744073709551615
  %add13.i.i.3145 = add nuw nsw i128 %conv12.i.i.3144, 18446673704965373952
  %add16.i.i.3146 = add i128 %sub48.i.i.3296, 18446744073709551615
  %add19.i.i.3148 = add i128 %add34.i.i.3289, 1298074214633706907132628377272319
  %shr22.i.i.3149 = lshr i128 %add8.i.i.3143, 64
  %conv23.i.i.3150 = trunc i128 %shr22.i.i.3149 to i64
  %conv26.i.i.3151 = and i128 %add8.i.i.3143, 18446744073709551615
  %sub.i.i.3152 = sub nsw i128 %conv26.i.i.3151, %shr22.i.i.3149
  %shl.i.i.3153 = shl nuw nsw i128 %shr22.i.i.3149, 32
  %add32.i.i.3154 = add nsw i128 %sub.i.i.3152, %shl.i.i.3153
  %shr34.i.i.3155 = lshr i128 %add32.i.i.3154, 64
  %conv35.i.i.3156 = trunc i128 %shr34.i.i.3155 to i64
  %add36.i.i.3157 = add i64 %conv35.i.i.3156, %conv23.i.i.3150
  %conv39.i.i.3158 = and i128 %add32.i.i.3154, 18446744073709551615
  %sub43.i.i.3159 = sub nsw i128 %conv39.i.i.3158, %shr34.i.i.3155
  %shl45.i.i.3160 = shl nuw nsw i128 %shr34.i.i.3155, 32
  %add47.i.i.3161 = add nsw i128 %sub43.i.i.3159, %shl45.i.i.3160
  %conv48.i.i.3162 = zext i64 %add36.i.i.3157 to i128
  %add50.i.i.3163 = add i128 %add16.i.i.3146, %conv48.i.i.3162
  %shl52.i.i.3164 = shl nuw nsw i128 %conv48.i.i.3162, 32
  %sub54.i.i.3165 = sub i128 %add19.i.i.3148, %shl52.i.i.3164
  %shr56.i.i.3166 = lshr i128 %add47.i.i.3161, 64
  %conv57.i.i.3167 = trunc i128 %shr56.i.i.3166 to i64
  %sub58.i.i.3168 = sub i64 0, %conv57.i.i.3167
  %conv60.i.i.3169 = trunc i128 %add47.i.i.3161 to i64
  %and.i.i.3170 = and i64 %conv60.i.i.3169, 9223372036854775807
  %neg.i.i.3171 = sub nsw i64 9223372032559808512, %and.i.i.3170
  %sub62177.i.i.3172 = and i64 %neg.i.i.3171, %conv60.i.i.3169
  %and66.i.i.3173 = ashr i64 %sub62177.i.i.3172, 63
  %or.i.i.3174 = or i64 %and66.i.i.3173, %sub58.i.i.3168
  %conv68.i.i.3175 = zext i64 %or.i.i.3174 to i128
  %sub70.i.i.3176 = sub i128 %add50.i.i.3163, %conv68.i.i.3175
  %and71.i.i.3177 = and i64 %or.i.i.3174, 4294967295
  %conv72.i.i.3178 = zext i64 %and71.i.i.3177 to i128
  %sub74.i.i.3179 = sub i128 %sub54.i.i.3165, %conv72.i.i.3178
  %and75.i.i.3180 = and i64 %or.i.i.3174, -4294967295
  %conv76.i.i.3181 = zext i64 %and75.i.i.3180 to i128
  %sub78.i.i.3182 = sub nsw i128 %add47.i.i.3161, %conv76.i.i.3181
  %shr80.i.i.3183 = lshr i128 %sub70.i.i.3176, 64
  %add84.i.i.3184 = add i128 %sub74.i.i.3179, %shr80.i.i.3183
  %shr90.i.i.3186 = lshr i128 %add84.i.i.3184, 64
  %add94.i.i.3187 = add nuw nsw i128 %add13.i.i.3145, %shr90.i.i.3186
  %shr100.i.i.3189 = lshr i128 %add94.i.i.3187, 64
  %add104.i.i.3190 = add nsw i128 %sub78.i.i.3182, %shr100.i.i.3189
  %conv.i.3196 = and i128 %sub70.i.i.3176, 18446744073709551615
  %mul.i.3197 = mul nuw i128 %conv.i.3196, %conv.i.3196
  %shr.i.3198 = lshr i128 %mul.i.3197, 64
  %conv5.i.3199 = and i128 %mul.i.3197, 18446744073709551615
  store i128 %conv5.i.3199, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3202 = and i128 %add84.i.i.3184, 18446744073709551615
  %mul13.i.3203 = mul nuw i128 %conv12.i.3202, %conv.i.3196
  %shr15.i.3204 = lshr i128 %mul13.i.3203, 64
  %conv17.i.3205 = shl i128 %mul13.i.3203, 1
  %factor.i.3206 = and i128 %conv17.i.3205, 36893488147419103230
  %add21.i.3207 = add nuw nsw i128 %factor.i.3206, %shr.i.3198
  store i128 %add21.i.3207, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.3210 = and i128 %add94.i.i.3187, 18446744073709551615
  %mul28.i.3211 = mul nuw i128 %conv27.i.3210, %conv.i.3196
  %shr30.i.3212 = lshr i128 %mul28.i.3211, 64
  %conv32.i.3213 = and i128 %mul28.i.3211, 18446744073709551615
  %add34.i.3214 = add nuw nsw i128 %conv32.i.3213, %shr15.i.3204
  %mul36.i.3215 = shl nuw nsw i128 %add34.i.3214, 1
  %conv42.i.3218 = and i128 %add104.i.i.3190, 18446744073709551615
  %mul43.i.3219 = mul nuw i128 %conv42.i.3218, %conv.i.3196
  %shr45.i.3220 = lshr i128 %mul43.i.3219, 64
  %conv47.i.3221 = and i128 %mul43.i.3219, 18446744073709551615
  %mul56.i.3224 = mul nuw i128 %conv27.i.3210, %conv12.i.3202
  %shr58.i.3225 = lshr i128 %mul56.i.3224, 64
  %conv60.i.3226 = and i128 %mul56.i.3224, 18446744073709551615
  %add49.i.3222 = add nuw nsw i128 %conv60.i.3226, %shr30.i.3212
  %add62.i.3227 = add nuw nsw i128 %add49.i.3222, %conv47.i.3221
  %mul64.i.3228 = shl nuw nsw i128 %add62.i.3227, 1
  %add67.i.3229 = add nuw nsw i128 %shr45.i.3220, %shr58.i.3225
  %mul72.i.3230 = mul nuw i128 %conv12.i.3202, %conv12.i.3202
  %shr74.i.3231 = lshr i128 %mul72.i.3230, 64
  %conv76.i.3232 = and i128 %mul72.i.3230, 18446744073709551615
  %add78.i.3233 = add nuw nsw i128 %mul36.i.3215, %conv76.i.3232
  store i128 %add78.i.3233, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.3234 = add nuw nsw i128 %mul64.i.3228, %shr74.i.3231
  store i128 %add81.i.3234, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.3235 = mul nuw i128 %conv42.i.3218, %conv12.i.3202
  %shr88.i.3236 = lshr i128 %mul86.i.3235, 64
  %conv90.i.3237 = and i128 %mul86.i.3235, 18446744073709551615
  %add92.i.3238 = add nuw nsw i128 %add67.i.3229, %conv90.i.3237
  %mul94.i.3239 = shl nuw nsw i128 %add92.i.3238, 1
  %mul101.i.3241 = mul nuw i128 %conv42.i.3218, %conv27.i.3210
  %shr103.i.3242 = lshr i128 %mul101.i.3241, 64
  %conv105.i.3243 = and i128 %mul101.i.3241, 18446744073709551615
  %add107.i.3244 = add nuw nsw i128 %conv105.i.3243, %shr88.i.3236
  %mul109.i.3245 = shl nuw nsw i128 %add107.i.3244, 1
  %add114.i.3247 = shl nuw nsw i128 %shr103.i.3242, 1
  %mul119.i.3248 = mul nuw i128 %conv27.i.3210, %conv27.i.3210
  %shr121.i.3249 = lshr i128 %mul119.i.3248, 64
  %conv123.i.3250 = and i128 %mul119.i.3248, 18446744073709551615
  %add125.i.3251 = add nuw nsw i128 %mul94.i.3239, %conv123.i.3250
  store i128 %add125.i.3251, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.3252 = add nuw nsw i128 %mul109.i.3245, %shr121.i.3249
  store i128 %add128.i.3252, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.3253 = mul nuw i128 %conv42.i.3218, %conv42.i.3218
  %shr135.i.3254 = lshr i128 %mul133.i.3253, 64
  %conv137.i.3255 = and i128 %mul133.i.3253, 18446744073709551615
  %add139.i.3256 = add nuw nsw i128 %add114.i.3247, %conv137.i.3255
  store i128 %add139.i.3256, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.3254, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.3094 = add nuw nsw i128 %conv5.i.3199, 1267650600228229401427983728624
  %add3.i.3096 = or i128 %add21.i.3207, 1267650600228229401496703205376
  %add6.i.3099 = add nuw nsw i128 %add78.i.3233, 1267650600228229401427983728656
  %add9.i.3102 = add nuw nsw i128 %add81.i.3234, 1267650600228229401427983728656
  %shl.i.i.3106 = shl nuw nsw i128 %add128.i.3252, 32
  %add.i.i.3107 = add nuw nsw i128 %shl.i.i.3106, %add125.i.3251
  %add3.i.i.3108 = add nuw nsw i128 %add.i.i.3107, %add.i.3094
  %sub.i.i.3109 = sub nsw i128 %add9.i.3102, %add.i.i.3107
  %sub7.i.i.3111 = sub nsw i128 %add128.i.3252, %shr135.i.3254
  %add9.i.i.3112 = add nsw i128 %sub7.i.i.3111, %add3.i.3096
  %sub11.i.i.3113 = sub nsw i128 %add6.i.3099, %sub7.i.i.3111
  %shl13.i.i.3114 = shl nuw nsw i128 %add125.i.3251, 32
  %sub15.i.i.3115 = sub nsw i128 %add9.i.i.3112, %shl13.i.i.3114
  %add19.i.i.3117 = add i128 %shl13.i.i.3114, %sub.i.i.3109
  %sub23.i.i.3119 = sub nsw i128 %sub11.i.i.3113, %shl.i.i.3106
  %sub26.i.i.3121 = sub i128 %add3.i.i.3108, %add139.i.3256
  %shl28.i.i.3122 = shl nuw nsw i128 %add139.i.3256, 32
  %sub30.i.i.3123 = sub i128 %sub26.i.i.3121, %shl28.i.i.3122
  %shl32.i.i.3124 = shl nuw nsw i128 %add139.i.3256, 33
  %add34.i.i.3125 = add i128 %shl32.i.i.3124, %sub15.i.i.3115
  store i128 %add34.i.i.3125, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.3126 = shl nuw nsw i128 %add139.i.3256, 1
  %add37.i.i.3127 = add i128 %mul.i.i.3126, %sub23.i.i.3119
  %sub41.i.i.3129 = sub i128 %add19.i.i.3117, %shl28.i.i.3122
  %sub44.i.i.3130 = sub i128 %sub30.i.i.3123, %shr135.i.3254
  %shl46.i.i.3131 = shl nuw nsw i128 %shr135.i.3254, 32
  %sub48.i.i.3132 = sub i128 %sub44.i.i.3130, %shl46.i.i.3131
  store i128 %sub48.i.i.3132, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3133 = shl nuw nsw i128 %shr135.i.3254, 33
  %add52.i.i.3134 = add i128 %shl50.i.i.3133, %add37.i.i.3127
  store i128 %add52.i.i.3134, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.3135 = mul nuw nsw i128 %shr135.i.3254, 3
  %add56.i.i.3136 = add i128 %mul54.i.i.3135, %sub41.i.i.3129
  store i128 %add56.i.i.3136, i128* %arrayidx10.i.214, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay2, i128* %arraydecay23)
  %29 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3008 = add i128 %29, 1267650600228229401427983728624
  %30 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.3010 = add i128 %30, 1267650600228229401496703205376
  %31 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.3013 = add i128 %31, 1267650600228229401427983728656
  %32 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.3016 = add i128 %32, 1267650600228229401427983728656
  %33 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %34 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.3020 = shl i128 %34, 32
  %add.i.i.3021 = add i128 %shl.i.i.3020, %33
  %add3.i.i.3022 = add i128 %add.i.i.3021, %add.i.3008
  %sub.i.i.3023 = sub i128 %add9.i.3016, %add.i.i.3021
  %35 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.3025 = sub i128 %34, %35
  %add9.i.i.3026 = add i128 %sub7.i.i.3025, %add3.i.3010
  %sub11.i.i.3027 = sub i128 %add6.i.3013, %sub7.i.i.3025
  %shl13.i.i.3028 = shl i128 %33, 32
  %sub15.i.i.3029 = sub i128 %add9.i.i.3026, %shl13.i.i.3028
  %add19.i.i.3031 = add i128 %shl13.i.i.3028, %sub.i.i.3023
  %sub23.i.i.3033 = sub i128 %sub11.i.i.3027, %shl.i.i.3020
  %36 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.3035 = sub i128 %add3.i.i.3022, %36
  %shl28.i.i.3036 = shl i128 %36, 32
  %sub30.i.i.3037 = sub i128 %sub26.i.i.3035, %shl28.i.i.3036
  %shl32.i.i.3038 = shl i128 %36, 33
  %add34.i.i.3039 = add i128 %shl32.i.i.3038, %sub15.i.i.3029
  store i128 %add34.i.i.3039, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.3040 = shl i128 %36, 1
  %add37.i.i.3041 = add i128 %mul.i.i.3040, %sub23.i.i.3033
  %sub41.i.i.3043 = sub i128 %add19.i.i.3031, %shl28.i.i.3036
  %sub44.i.i.3044 = sub i128 %sub30.i.i.3037, %35
  %shl46.i.i.3045 = shl i128 %35, 32
  %sub48.i.i.3046 = sub i128 %sub44.i.i.3044, %shl46.i.i.3045
  store i128 %sub48.i.i.3046, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3047 = shl i128 %35, 33
  %add52.i.i.3048 = add i128 %shl50.i.i.3047, %add37.i.i.3041
  store i128 %add52.i.i.3048, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.3049 = mul i128 %35, 3
  %add56.i.i.3050 = add i128 %mul54.i.i.3049, %sub41.i.i.3043
  store i128 %add56.i.i.3050, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %arraydecay46 = getelementptr inbounds [4 x i128], [4 x i128]* %e8, i64 0, i64 0
  store i128 %sub48.i.i.3046, i128* %arraydecay46, align 16, !tbaa !2
  %arrayidx3.i.3003 = getelementptr inbounds [4 x i128], [4 x i128]* %e8, i64 0, i64 1
  store i128 %add34.i.i.3039, i128* %arrayidx3.i.3003, align 16, !tbaa !2
  %arrayidx5.i.3005 = getelementptr inbounds [4 x i128], [4 x i128]* %e8, i64 0, i64 2
  store i128 %add52.i.i.3048, i128* %arrayidx5.i.3005, align 16, !tbaa !2
  %arrayidx7.i.3007 = getelementptr inbounds [4 x i128], [4 x i128]* %e8, i64 0, i64 3
  store i128 %add56.i.i.3050, i128* %arrayidx7.i.3007, align 16, !tbaa !2
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %37 = phi i128 [ %add34.i.i.3039, %entry ], [ %add34.i.i.2869, %for.body ]
  %38 = phi i128 [ %sub48.i.i.3046, %entry ], [ %sub48.i.i.2876, %for.body ]
  %39 = phi i128 [ %add52.i.i.3048, %entry ], [ %add52.i.i.2878, %for.body ]
  %40 = phi i128 [ %add56.i.i.3050, %entry ], [ %add56.i.i.2880, %for.body ]
  %i.03846 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %add.i.i.2884 = add i128 %40, 18446744069414584320
  %shr.i.i.2886 = lshr i128 %39, 64
  %add8.i.i.2887 = add i128 %add.i.i.2884, %shr.i.i.2886
  %conv12.i.i.2888 = and i128 %39, 18446744073709551615
  %add13.i.i.2889 = add nuw nsw i128 %conv12.i.i.2888, 18446673704965373952
  %add16.i.i.2890 = add i128 %38, 18446744073709551615
  %add19.i.i.2892 = add i128 %37, 1298074214633706907132628377272319
  %shr22.i.i.2893 = lshr i128 %add8.i.i.2887, 64
  %conv23.i.i.2894 = trunc i128 %shr22.i.i.2893 to i64
  %conv26.i.i.2895 = and i128 %add8.i.i.2887, 18446744073709551615
  %sub.i.i.2896 = sub nsw i128 %conv26.i.i.2895, %shr22.i.i.2893
  %shl.i.i.2897 = shl nuw nsw i128 %shr22.i.i.2893, 32
  %add32.i.i.2898 = add nsw i128 %sub.i.i.2896, %shl.i.i.2897
  %shr34.i.i.2899 = lshr i128 %add32.i.i.2898, 64
  %conv35.i.i.2900 = trunc i128 %shr34.i.i.2899 to i64
  %add36.i.i.2901 = add i64 %conv35.i.i.2900, %conv23.i.i.2894
  %conv39.i.i.2902 = and i128 %add32.i.i.2898, 18446744073709551615
  %sub43.i.i.2903 = sub nsw i128 %conv39.i.i.2902, %shr34.i.i.2899
  %shl45.i.i.2904 = shl nuw nsw i128 %shr34.i.i.2899, 32
  %add47.i.i.2905 = add nsw i128 %sub43.i.i.2903, %shl45.i.i.2904
  %conv48.i.i.2906 = zext i64 %add36.i.i.2901 to i128
  %add50.i.i.2907 = add i128 %add16.i.i.2890, %conv48.i.i.2906
  %shl52.i.i.2908 = shl nuw nsw i128 %conv48.i.i.2906, 32
  %sub54.i.i.2909 = sub i128 %add19.i.i.2892, %shl52.i.i.2908
  %shr56.i.i.2910 = lshr i128 %add47.i.i.2905, 64
  %conv57.i.i.2911 = trunc i128 %shr56.i.i.2910 to i64
  %sub58.i.i.2912 = sub i64 0, %conv57.i.i.2911
  %conv60.i.i.2913 = trunc i128 %add47.i.i.2905 to i64
  %and.i.i.2914 = and i64 %conv60.i.i.2913, 9223372036854775807
  %neg.i.i.2915 = sub nsw i64 9223372032559808512, %and.i.i.2914
  %sub62177.i.i.2916 = and i64 %neg.i.i.2915, %conv60.i.i.2913
  %and66.i.i.2917 = ashr i64 %sub62177.i.i.2916, 63
  %or.i.i.2918 = or i64 %and66.i.i.2917, %sub58.i.i.2912
  %conv68.i.i.2919 = zext i64 %or.i.i.2918 to i128
  %sub70.i.i.2920 = sub i128 %add50.i.i.2907, %conv68.i.i.2919
  %and71.i.i.2921 = and i64 %or.i.i.2918, 4294967295
  %conv72.i.i.2922 = zext i64 %and71.i.i.2921 to i128
  %sub74.i.i.2923 = sub i128 %sub54.i.i.2909, %conv72.i.i.2922
  %and75.i.i.2924 = and i64 %or.i.i.2918, -4294967295
  %conv76.i.i.2925 = zext i64 %and75.i.i.2924 to i128
  %sub78.i.i.2926 = sub nsw i128 %add47.i.i.2905, %conv76.i.i.2925
  %shr80.i.i.2927 = lshr i128 %sub70.i.i.2920, 64
  %add84.i.i.2928 = add i128 %sub74.i.i.2923, %shr80.i.i.2927
  %shr90.i.i.2930 = lshr i128 %add84.i.i.2928, 64
  %add94.i.i.2931 = add nuw nsw i128 %add13.i.i.2889, %shr90.i.i.2930
  %shr100.i.i.2933 = lshr i128 %add94.i.i.2931, 64
  %add104.i.i.2934 = add nsw i128 %sub78.i.i.2926, %shr100.i.i.2933
  %conv.i.2940 = and i128 %sub70.i.i.2920, 18446744073709551615
  %mul.i.2941 = mul nuw i128 %conv.i.2940, %conv.i.2940
  %shr.i.2942 = lshr i128 %mul.i.2941, 64
  %conv5.i.2943 = and i128 %mul.i.2941, 18446744073709551615
  %conv12.i.2946 = and i128 %add84.i.i.2928, 18446744073709551615
  %mul13.i.2947 = mul nuw i128 %conv12.i.2946, %conv.i.2940
  %shr15.i.2948 = lshr i128 %mul13.i.2947, 64
  %conv17.i.2949 = shl i128 %mul13.i.2947, 1
  %factor.i.2950 = and i128 %conv17.i.2949, 36893488147419103230
  %add21.i.2951 = add nuw nsw i128 %factor.i.2950, %shr.i.2942
  %conv27.i.2954 = and i128 %add94.i.i.2931, 18446744073709551615
  %mul28.i.2955 = mul nuw i128 %conv27.i.2954, %conv.i.2940
  %shr30.i.2956 = lshr i128 %mul28.i.2955, 64
  %conv32.i.2957 = and i128 %mul28.i.2955, 18446744073709551615
  %add34.i.2958 = add nuw nsw i128 %conv32.i.2957, %shr15.i.2948
  %mul36.i.2959 = shl nuw nsw i128 %add34.i.2958, 1
  %conv42.i.2962 = and i128 %add104.i.i.2934, 18446744073709551615
  %mul43.i.2963 = mul nuw i128 %conv42.i.2962, %conv.i.2940
  %shr45.i.2964 = lshr i128 %mul43.i.2963, 64
  %conv47.i.2965 = and i128 %mul43.i.2963, 18446744073709551615
  %mul56.i.2968 = mul nuw i128 %conv27.i.2954, %conv12.i.2946
  %shr58.i.2969 = lshr i128 %mul56.i.2968, 64
  %conv60.i.2970 = and i128 %mul56.i.2968, 18446744073709551615
  %add49.i.2966 = add nuw nsw i128 %conv60.i.2970, %shr30.i.2956
  %add62.i.2971 = add nuw nsw i128 %add49.i.2966, %conv47.i.2965
  %mul64.i.2972 = shl nuw nsw i128 %add62.i.2971, 1
  %add67.i.2973 = add nuw nsw i128 %shr45.i.2964, %shr58.i.2969
  %mul72.i.2974 = mul nuw i128 %conv12.i.2946, %conv12.i.2946
  %shr74.i.2975 = lshr i128 %mul72.i.2974, 64
  %conv76.i.2976 = and i128 %mul72.i.2974, 18446744073709551615
  %add78.i.2977 = add nuw nsw i128 %mul36.i.2959, %conv76.i.2976
  %add81.i.2978 = add nuw nsw i128 %mul64.i.2972, %shr74.i.2975
  %mul86.i.2979 = mul nuw i128 %conv42.i.2962, %conv12.i.2946
  %shr88.i.2980 = lshr i128 %mul86.i.2979, 64
  %conv90.i.2981 = and i128 %mul86.i.2979, 18446744073709551615
  %add92.i.2982 = add nuw nsw i128 %add67.i.2973, %conv90.i.2981
  %mul94.i.2983 = shl nuw nsw i128 %add92.i.2982, 1
  %mul101.i.2985 = mul nuw i128 %conv42.i.2962, %conv27.i.2954
  %shr103.i.2986 = lshr i128 %mul101.i.2985, 64
  %conv105.i.2987 = and i128 %mul101.i.2985, 18446744073709551615
  %add107.i.2988 = add nuw nsw i128 %conv105.i.2987, %shr88.i.2980
  %mul109.i.2989 = shl nuw nsw i128 %add107.i.2988, 1
  %add114.i.2991 = shl nuw nsw i128 %shr103.i.2986, 1
  %mul119.i.2992 = mul nuw i128 %conv27.i.2954, %conv27.i.2954
  %shr121.i.2993 = lshr i128 %mul119.i.2992, 64
  %conv123.i.2994 = and i128 %mul119.i.2992, 18446744073709551615
  %add125.i.2995 = add nuw nsw i128 %mul94.i.2983, %conv123.i.2994
  %add128.i.2996 = add nuw nsw i128 %mul109.i.2989, %shr121.i.2993
  %mul133.i.2997 = mul nuw i128 %conv42.i.2962, %conv42.i.2962
  %shr135.i.2998 = lshr i128 %mul133.i.2997, 64
  %conv137.i.2999 = and i128 %mul133.i.2997, 18446744073709551615
  %add139.i.3000 = add nuw nsw i128 %add114.i.2991, %conv137.i.2999
  %add.i.2838 = add nuw nsw i128 %conv5.i.2943, 1267650600228229401427983728624
  %add3.i.2840 = or i128 %add21.i.2951, 1267650600228229401496703205376
  %add6.i.2843 = add nuw nsw i128 %add78.i.2977, 1267650600228229401427983728656
  %add9.i.2846 = add nuw nsw i128 %add81.i.2978, 1267650600228229401427983728656
  %shl.i.i.2850 = shl nuw nsw i128 %add128.i.2996, 32
  %add.i.i.2851 = add nuw nsw i128 %shl.i.i.2850, %add125.i.2995
  %add3.i.i.2852 = add nuw nsw i128 %add.i.i.2851, %add.i.2838
  %sub.i.i.2853 = sub nsw i128 %add9.i.2846, %add.i.i.2851
  %sub7.i.i.2855 = sub nsw i128 %add128.i.2996, %shr135.i.2998
  %add9.i.i.2856 = add nsw i128 %sub7.i.i.2855, %add3.i.2840
  %sub11.i.i.2857 = sub nsw i128 %add6.i.2843, %sub7.i.i.2855
  %shl13.i.i.2858 = shl nuw nsw i128 %add125.i.2995, 32
  %sub15.i.i.2859 = sub nsw i128 %add9.i.i.2856, %shl13.i.i.2858
  %add19.i.i.2861 = add i128 %shl13.i.i.2858, %sub.i.i.2853
  %sub23.i.i.2863 = sub nsw i128 %sub11.i.i.2857, %shl.i.i.2850
  %sub26.i.i.2865 = sub i128 %add3.i.i.2852, %add139.i.3000
  %shl28.i.i.2866 = shl nuw nsw i128 %add139.i.3000, 32
  %sub30.i.i.2867 = sub i128 %sub26.i.i.2865, %shl28.i.i.2866
  %shl32.i.i.2868 = shl nuw nsw i128 %add139.i.3000, 33
  %add34.i.i.2869 = add i128 %shl32.i.i.2868, %sub15.i.i.2859
  %mul.i.i.2870 = shl nuw nsw i128 %add139.i.3000, 1
  %add37.i.i.2871 = add i128 %mul.i.i.2870, %sub23.i.i.2863
  %sub41.i.i.2873 = sub i128 %add19.i.i.2861, %shl28.i.i.2866
  %sub44.i.i.2874 = sub i128 %sub30.i.i.2867, %shr135.i.2998
  %shl46.i.i.2875 = shl nuw nsw i128 %shr135.i.2998, 32
  %sub48.i.i.2876 = sub i128 %sub44.i.i.2874, %shl46.i.i.2875
  %shl50.i.i.2877 = shl nuw nsw i128 %shr135.i.2998, 33
  %add52.i.i.2878 = add i128 %shl50.i.i.2877, %add37.i.i.2871
  %mul54.i.i.2879 = mul nuw nsw i128 %shr135.i.2998, 3
  %add56.i.i.2880 = add i128 %mul54.i.i.2879, %sub41.i.i.2873
  %inc = add nuw nsw i32 %i.03846, 1
  %exitcond3856 = icmp eq i32 %inc, 8
  br i1 %exitcond3856, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add56.i.i.2880.lcssa = phi i128 [ %add56.i.i.2880, %for.body ]
  %add52.i.i.2878.lcssa = phi i128 [ %add52.i.i.2878, %for.body ]
  %sub48.i.i.2876.lcssa = phi i128 [ %sub48.i.i.2876, %for.body ]
  %add34.i.i.2869.lcssa = phi i128 [ %add34.i.i.2869, %for.body ]
  %add139.i.3000.lcssa = phi i128 [ %add139.i.3000, %for.body ]
  %shr135.i.2998.lcssa = phi i128 [ %shr135.i.2998, %for.body ]
  %add128.i.2996.lcssa = phi i128 [ %add128.i.2996, %for.body ]
  %add125.i.2995.lcssa = phi i128 [ %add125.i.2995, %for.body ]
  %add81.i.2978.lcssa = phi i128 [ %add81.i.2978, %for.body ]
  %add78.i.2977.lcssa = phi i128 [ %add78.i.2977, %for.body ]
  %add21.i.2951.lcssa = phi i128 [ %add21.i.2951, %for.body ]
  %conv5.i.2943.lcssa = phi i128 [ %conv5.i.2943, %for.body ]
  store i128 %add56.i.i.2880.lcssa, i128* %arrayidx10.i.214, align 16, !tbaa !2
  store i128 %add52.i.i.2878.lcssa, i128* %arrayidx7.i.211, align 16, !tbaa !2
  store i128 %sub48.i.i.2876.lcssa, i128* %arraydecay2, align 16, !tbaa !2
  store i128 %add34.i.i.2869.lcssa, i128* %arrayidx4.i.208, align 16, !tbaa !2
  store i128 %conv5.i.2943.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.2951.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.2977.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.2978.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.2995.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.2996.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.3000.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.2998.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay2, i128* %arraydecay46)
  %41 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2674 = add i128 %41, 1267650600228229401427983728624
  %42 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.2676 = add i128 %42, 1267650600228229401496703205376
  %43 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.2679 = add i128 %43, 1267650600228229401427983728656
  %44 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.2682 = add i128 %44, 1267650600228229401427983728656
  %45 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %46 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.2686 = shl i128 %46, 32
  %add.i.i.2687 = add i128 %shl.i.i.2686, %45
  %add3.i.i.2688 = add i128 %add.i.i.2687, %add.i.2674
  %sub.i.i.2689 = sub i128 %add9.i.2682, %add.i.i.2687
  %47 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.2691 = sub i128 %46, %47
  %add9.i.i.2692 = add i128 %sub7.i.i.2691, %add3.i.2676
  %sub11.i.i.2693 = sub i128 %add6.i.2679, %sub7.i.i.2691
  %shl13.i.i.2694 = shl i128 %45, 32
  %sub15.i.i.2695 = sub i128 %add9.i.i.2692, %shl13.i.i.2694
  %add19.i.i.2697 = add i128 %shl13.i.i.2694, %sub.i.i.2689
  %sub23.i.i.2699 = sub i128 %sub11.i.i.2693, %shl.i.i.2686
  %48 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.2701 = sub i128 %add3.i.i.2688, %48
  %shl28.i.i.2702 = shl i128 %48, 32
  %sub30.i.i.2703 = sub i128 %sub26.i.i.2701, %shl28.i.i.2702
  %shl32.i.i.2704 = shl i128 %48, 33
  %add34.i.i.2705 = add i128 %shl32.i.i.2704, %sub15.i.i.2695
  store i128 %add34.i.i.2705, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.2706 = shl i128 %48, 1
  %add37.i.i.2707 = add i128 %mul.i.i.2706, %sub23.i.i.2699
  %sub41.i.i.2709 = sub i128 %add19.i.i.2697, %shl28.i.i.2702
  %sub44.i.i.2710 = sub i128 %sub30.i.i.2703, %47
  %shl46.i.i.2711 = shl i128 %47, 32
  %sub48.i.i.2712 = sub i128 %sub44.i.i.2710, %shl46.i.i.2711
  store i128 %sub48.i.i.2712, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2713 = shl i128 %47, 33
  %add52.i.i.2714 = add i128 %shl50.i.i.2713, %add37.i.i.2707
  store i128 %add52.i.i.2714, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.2715 = mul i128 %47, 3
  %add56.i.i.2716 = add i128 %mul54.i.i.2715, %sub41.i.i.2709
  store i128 %add56.i.i.2716, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %arraydecay57 = getelementptr inbounds [4 x i128], [4 x i128]* %e16, i64 0, i64 0
  store i128 %sub48.i.i.2712, i128* %arraydecay57, align 16, !tbaa !2
  %arrayidx3.i.2669 = getelementptr inbounds [4 x i128], [4 x i128]* %e16, i64 0, i64 1
  store i128 %add34.i.i.2705, i128* %arrayidx3.i.2669, align 16, !tbaa !2
  %arrayidx5.i.2671 = getelementptr inbounds [4 x i128], [4 x i128]* %e16, i64 0, i64 2
  store i128 %add52.i.i.2714, i128* %arrayidx5.i.2671, align 16, !tbaa !2
  %arrayidx7.i.2673 = getelementptr inbounds [4 x i128], [4 x i128]* %e16, i64 0, i64 3
  store i128 %add56.i.i.2716, i128* %arrayidx7.i.2673, align 16, !tbaa !2
  br label %for.body.61

for.body.61:                                      ; preds = %for.body.61, %for.end
  %49 = phi i128 [ %add34.i.i.2705, %for.end ], [ %add34.i.i.2535, %for.body.61 ]
  %50 = phi i128 [ %sub48.i.i.2712, %for.end ], [ %sub48.i.i.2542, %for.body.61 ]
  %51 = phi i128 [ %add52.i.i.2714, %for.end ], [ %add52.i.i.2544, %for.body.61 ]
  %52 = phi i128 [ %add56.i.i.2716, %for.end ], [ %add56.i.i.2546, %for.body.61 ]
  %i.13841 = phi i32 [ 0, %for.end ], [ %inc67, %for.body.61 ]
  %add.i.i.2550 = add i128 %52, 18446744069414584320
  %shr.i.i.2552 = lshr i128 %51, 64
  %add8.i.i.2553 = add i128 %add.i.i.2550, %shr.i.i.2552
  %conv12.i.i.2554 = and i128 %51, 18446744073709551615
  %add13.i.i.2555 = add nuw nsw i128 %conv12.i.i.2554, 18446673704965373952
  %add16.i.i.2556 = add i128 %50, 18446744073709551615
  %add19.i.i.2558 = add i128 %49, 1298074214633706907132628377272319
  %shr22.i.i.2559 = lshr i128 %add8.i.i.2553, 64
  %conv23.i.i.2560 = trunc i128 %shr22.i.i.2559 to i64
  %conv26.i.i.2561 = and i128 %add8.i.i.2553, 18446744073709551615
  %sub.i.i.2562 = sub nsw i128 %conv26.i.i.2561, %shr22.i.i.2559
  %shl.i.i.2563 = shl nuw nsw i128 %shr22.i.i.2559, 32
  %add32.i.i.2564 = add nsw i128 %sub.i.i.2562, %shl.i.i.2563
  %shr34.i.i.2565 = lshr i128 %add32.i.i.2564, 64
  %conv35.i.i.2566 = trunc i128 %shr34.i.i.2565 to i64
  %add36.i.i.2567 = add i64 %conv35.i.i.2566, %conv23.i.i.2560
  %conv39.i.i.2568 = and i128 %add32.i.i.2564, 18446744073709551615
  %sub43.i.i.2569 = sub nsw i128 %conv39.i.i.2568, %shr34.i.i.2565
  %shl45.i.i.2570 = shl nuw nsw i128 %shr34.i.i.2565, 32
  %add47.i.i.2571 = add nsw i128 %sub43.i.i.2569, %shl45.i.i.2570
  %conv48.i.i.2572 = zext i64 %add36.i.i.2567 to i128
  %add50.i.i.2573 = add i128 %add16.i.i.2556, %conv48.i.i.2572
  %shl52.i.i.2574 = shl nuw nsw i128 %conv48.i.i.2572, 32
  %sub54.i.i.2575 = sub i128 %add19.i.i.2558, %shl52.i.i.2574
  %shr56.i.i.2576 = lshr i128 %add47.i.i.2571, 64
  %conv57.i.i.2577 = trunc i128 %shr56.i.i.2576 to i64
  %sub58.i.i.2578 = sub i64 0, %conv57.i.i.2577
  %conv60.i.i.2579 = trunc i128 %add47.i.i.2571 to i64
  %and.i.i.2580 = and i64 %conv60.i.i.2579, 9223372036854775807
  %neg.i.i.2581 = sub nsw i64 9223372032559808512, %and.i.i.2580
  %sub62177.i.i.2582 = and i64 %neg.i.i.2581, %conv60.i.i.2579
  %and66.i.i.2583 = ashr i64 %sub62177.i.i.2582, 63
  %or.i.i.2584 = or i64 %and66.i.i.2583, %sub58.i.i.2578
  %conv68.i.i.2585 = zext i64 %or.i.i.2584 to i128
  %sub70.i.i.2586 = sub i128 %add50.i.i.2573, %conv68.i.i.2585
  %and71.i.i.2587 = and i64 %or.i.i.2584, 4294967295
  %conv72.i.i.2588 = zext i64 %and71.i.i.2587 to i128
  %sub74.i.i.2589 = sub i128 %sub54.i.i.2575, %conv72.i.i.2588
  %and75.i.i.2590 = and i64 %or.i.i.2584, -4294967295
  %conv76.i.i.2591 = zext i64 %and75.i.i.2590 to i128
  %sub78.i.i.2592 = sub nsw i128 %add47.i.i.2571, %conv76.i.i.2591
  %shr80.i.i.2593 = lshr i128 %sub70.i.i.2586, 64
  %add84.i.i.2594 = add i128 %sub74.i.i.2589, %shr80.i.i.2593
  %shr90.i.i.2596 = lshr i128 %add84.i.i.2594, 64
  %add94.i.i.2597 = add nuw nsw i128 %add13.i.i.2555, %shr90.i.i.2596
  %shr100.i.i.2599 = lshr i128 %add94.i.i.2597, 64
  %add104.i.i.2600 = add nsw i128 %sub78.i.i.2592, %shr100.i.i.2599
  %conv.i.2606 = and i128 %sub70.i.i.2586, 18446744073709551615
  %mul.i.2607 = mul nuw i128 %conv.i.2606, %conv.i.2606
  %shr.i.2608 = lshr i128 %mul.i.2607, 64
  %conv5.i.2609 = and i128 %mul.i.2607, 18446744073709551615
  %conv12.i.2612 = and i128 %add84.i.i.2594, 18446744073709551615
  %mul13.i.2613 = mul nuw i128 %conv12.i.2612, %conv.i.2606
  %shr15.i.2614 = lshr i128 %mul13.i.2613, 64
  %conv17.i.2615 = shl i128 %mul13.i.2613, 1
  %factor.i.2616 = and i128 %conv17.i.2615, 36893488147419103230
  %add21.i.2617 = add nuw nsw i128 %factor.i.2616, %shr.i.2608
  %conv27.i.2620 = and i128 %add94.i.i.2597, 18446744073709551615
  %mul28.i.2621 = mul nuw i128 %conv27.i.2620, %conv.i.2606
  %shr30.i.2622 = lshr i128 %mul28.i.2621, 64
  %conv32.i.2623 = and i128 %mul28.i.2621, 18446744073709551615
  %add34.i.2624 = add nuw nsw i128 %conv32.i.2623, %shr15.i.2614
  %mul36.i.2625 = shl nuw nsw i128 %add34.i.2624, 1
  %conv42.i.2628 = and i128 %add104.i.i.2600, 18446744073709551615
  %mul43.i.2629 = mul nuw i128 %conv42.i.2628, %conv.i.2606
  %shr45.i.2630 = lshr i128 %mul43.i.2629, 64
  %conv47.i.2631 = and i128 %mul43.i.2629, 18446744073709551615
  %mul56.i.2634 = mul nuw i128 %conv27.i.2620, %conv12.i.2612
  %shr58.i.2635 = lshr i128 %mul56.i.2634, 64
  %conv60.i.2636 = and i128 %mul56.i.2634, 18446744073709551615
  %add49.i.2632 = add nuw nsw i128 %conv60.i.2636, %shr30.i.2622
  %add62.i.2637 = add nuw nsw i128 %add49.i.2632, %conv47.i.2631
  %mul64.i.2638 = shl nuw nsw i128 %add62.i.2637, 1
  %add67.i.2639 = add nuw nsw i128 %shr45.i.2630, %shr58.i.2635
  %mul72.i.2640 = mul nuw i128 %conv12.i.2612, %conv12.i.2612
  %shr74.i.2641 = lshr i128 %mul72.i.2640, 64
  %conv76.i.2642 = and i128 %mul72.i.2640, 18446744073709551615
  %add78.i.2643 = add nuw nsw i128 %mul36.i.2625, %conv76.i.2642
  %add81.i.2644 = add nuw nsw i128 %mul64.i.2638, %shr74.i.2641
  %mul86.i.2645 = mul nuw i128 %conv42.i.2628, %conv12.i.2612
  %shr88.i.2646 = lshr i128 %mul86.i.2645, 64
  %conv90.i.2647 = and i128 %mul86.i.2645, 18446744073709551615
  %add92.i.2648 = add nuw nsw i128 %add67.i.2639, %conv90.i.2647
  %mul94.i.2649 = shl nuw nsw i128 %add92.i.2648, 1
  %mul101.i.2651 = mul nuw i128 %conv42.i.2628, %conv27.i.2620
  %shr103.i.2652 = lshr i128 %mul101.i.2651, 64
  %conv105.i.2653 = and i128 %mul101.i.2651, 18446744073709551615
  %add107.i.2654 = add nuw nsw i128 %conv105.i.2653, %shr88.i.2646
  %mul109.i.2655 = shl nuw nsw i128 %add107.i.2654, 1
  %add114.i.2657 = shl nuw nsw i128 %shr103.i.2652, 1
  %mul119.i.2658 = mul nuw i128 %conv27.i.2620, %conv27.i.2620
  %shr121.i.2659 = lshr i128 %mul119.i.2658, 64
  %conv123.i.2660 = and i128 %mul119.i.2658, 18446744073709551615
  %add125.i.2661 = add nuw nsw i128 %mul94.i.2649, %conv123.i.2660
  %add128.i.2662 = add nuw nsw i128 %mul109.i.2655, %shr121.i.2659
  %mul133.i.2663 = mul nuw i128 %conv42.i.2628, %conv42.i.2628
  %shr135.i.2664 = lshr i128 %mul133.i.2663, 64
  %conv137.i.2665 = and i128 %mul133.i.2663, 18446744073709551615
  %add139.i.2666 = add nuw nsw i128 %add114.i.2657, %conv137.i.2665
  %add.i.2504 = add nuw nsw i128 %conv5.i.2609, 1267650600228229401427983728624
  %add3.i.2506 = or i128 %add21.i.2617, 1267650600228229401496703205376
  %add6.i.2509 = add nuw nsw i128 %add78.i.2643, 1267650600228229401427983728656
  %add9.i.2512 = add nuw nsw i128 %add81.i.2644, 1267650600228229401427983728656
  %shl.i.i.2516 = shl nuw nsw i128 %add128.i.2662, 32
  %add.i.i.2517 = add nuw nsw i128 %shl.i.i.2516, %add125.i.2661
  %add3.i.i.2518 = add nuw nsw i128 %add.i.i.2517, %add.i.2504
  %sub.i.i.2519 = sub nsw i128 %add9.i.2512, %add.i.i.2517
  %sub7.i.i.2521 = sub nsw i128 %add128.i.2662, %shr135.i.2664
  %add9.i.i.2522 = add nsw i128 %sub7.i.i.2521, %add3.i.2506
  %sub11.i.i.2523 = sub nsw i128 %add6.i.2509, %sub7.i.i.2521
  %shl13.i.i.2524 = shl nuw nsw i128 %add125.i.2661, 32
  %sub15.i.i.2525 = sub nsw i128 %add9.i.i.2522, %shl13.i.i.2524
  %add19.i.i.2527 = add i128 %shl13.i.i.2524, %sub.i.i.2519
  %sub23.i.i.2529 = sub nsw i128 %sub11.i.i.2523, %shl.i.i.2516
  %sub26.i.i.2531 = sub i128 %add3.i.i.2518, %add139.i.2666
  %shl28.i.i.2532 = shl nuw nsw i128 %add139.i.2666, 32
  %sub30.i.i.2533 = sub i128 %sub26.i.i.2531, %shl28.i.i.2532
  %shl32.i.i.2534 = shl nuw nsw i128 %add139.i.2666, 33
  %add34.i.i.2535 = add i128 %shl32.i.i.2534, %sub15.i.i.2525
  %mul.i.i.2536 = shl nuw nsw i128 %add139.i.2666, 1
  %add37.i.i.2537 = add i128 %mul.i.i.2536, %sub23.i.i.2529
  %sub41.i.i.2539 = sub i128 %add19.i.i.2527, %shl28.i.i.2532
  %sub44.i.i.2540 = sub i128 %sub30.i.i.2533, %shr135.i.2664
  %shl46.i.i.2541 = shl nuw nsw i128 %shr135.i.2664, 32
  %sub48.i.i.2542 = sub i128 %sub44.i.i.2540, %shl46.i.i.2541
  %shl50.i.i.2543 = shl nuw nsw i128 %shr135.i.2664, 33
  %add52.i.i.2544 = add i128 %shl50.i.i.2543, %add37.i.i.2537
  %mul54.i.i.2545 = mul nuw nsw i128 %shr135.i.2664, 3
  %add56.i.i.2546 = add i128 %mul54.i.i.2545, %sub41.i.i.2539
  %inc67 = add nuw nsw i32 %i.13841, 1
  %exitcond3855 = icmp eq i32 %inc67, 16
  br i1 %exitcond3855, label %for.end.68, label %for.body.61

for.end.68:                                       ; preds = %for.body.61
  %add56.i.i.2546.lcssa = phi i128 [ %add56.i.i.2546, %for.body.61 ]
  %add52.i.i.2544.lcssa = phi i128 [ %add52.i.i.2544, %for.body.61 ]
  %sub48.i.i.2542.lcssa = phi i128 [ %sub48.i.i.2542, %for.body.61 ]
  %add34.i.i.2535.lcssa = phi i128 [ %add34.i.i.2535, %for.body.61 ]
  %add139.i.2666.lcssa = phi i128 [ %add139.i.2666, %for.body.61 ]
  %shr135.i.2664.lcssa = phi i128 [ %shr135.i.2664, %for.body.61 ]
  %add128.i.2662.lcssa = phi i128 [ %add128.i.2662, %for.body.61 ]
  %add125.i.2661.lcssa = phi i128 [ %add125.i.2661, %for.body.61 ]
  %add81.i.2644.lcssa = phi i128 [ %add81.i.2644, %for.body.61 ]
  %add78.i.2643.lcssa = phi i128 [ %add78.i.2643, %for.body.61 ]
  %add21.i.2617.lcssa = phi i128 [ %add21.i.2617, %for.body.61 ]
  %conv5.i.2609.lcssa = phi i128 [ %conv5.i.2609, %for.body.61 ]
  store i128 %add56.i.i.2546.lcssa, i128* %arrayidx10.i.214, align 16, !tbaa !2
  store i128 %add52.i.i.2544.lcssa, i128* %arrayidx7.i.211, align 16, !tbaa !2
  store i128 %sub48.i.i.2542.lcssa, i128* %arraydecay2, align 16, !tbaa !2
  store i128 %add34.i.i.2535.lcssa, i128* %arrayidx4.i.208, align 16, !tbaa !2
  store i128 %conv5.i.2609.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.2617.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.2643.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.2644.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.2661.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.2662.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.2666.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.2664.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay2, i128* %arraydecay57)
  %53 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2455 = add i128 %53, 1267650600228229401427983728624
  %54 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.2457 = add i128 %54, 1267650600228229401496703205376
  %55 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.2460 = add i128 %55, 1267650600228229401427983728656
  %56 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.2463 = add i128 %56, 1267650600228229401427983728656
  %57 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %58 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.2467 = shl i128 %58, 32
  %add.i.i.2468 = add i128 %shl.i.i.2467, %57
  %add3.i.i.2469 = add i128 %add.i.i.2468, %add.i.2455
  %sub.i.i.2470 = sub i128 %add9.i.2463, %add.i.i.2468
  %59 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.2472 = sub i128 %58, %59
  %add9.i.i.2473 = add i128 %sub7.i.i.2472, %add3.i.2457
  %sub11.i.i.2474 = sub i128 %add6.i.2460, %sub7.i.i.2472
  %shl13.i.i.2475 = shl i128 %57, 32
  %sub15.i.i.2476 = sub i128 %add9.i.i.2473, %shl13.i.i.2475
  %add19.i.i.2478 = add i128 %shl13.i.i.2475, %sub.i.i.2470
  %sub23.i.i.2480 = sub i128 %sub11.i.i.2474, %shl.i.i.2467
  %60 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.2482 = sub i128 %add3.i.i.2469, %60
  %shl28.i.i.2483 = shl i128 %60, 32
  %sub30.i.i.2484 = sub i128 %sub26.i.i.2482, %shl28.i.i.2483
  %shl32.i.i.2485 = shl i128 %60, 33
  %add34.i.i.2486 = add i128 %shl32.i.i.2485, %sub15.i.i.2476
  store i128 %add34.i.i.2486, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.2487 = shl i128 %60, 1
  %add37.i.i.2488 = add i128 %mul.i.i.2487, %sub23.i.i.2480
  %sub41.i.i.2490 = sub i128 %add19.i.i.2478, %shl28.i.i.2483
  %sub44.i.i.2491 = sub i128 %sub30.i.i.2484, %59
  %shl46.i.i.2492 = shl i128 %59, 32
  %sub48.i.i.2493 = sub i128 %sub44.i.i.2491, %shl46.i.i.2492
  store i128 %sub48.i.i.2493, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2494 = shl i128 %59, 33
  %add52.i.i.2495 = add i128 %shl50.i.i.2494, %add37.i.i.2488
  store i128 %add52.i.i.2495, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.2496 = mul i128 %59, 3
  %add56.i.i.2497 = add i128 %mul54.i.i.2496, %sub41.i.i.2490
  store i128 %add56.i.i.2497, i128* %arrayidx10.i.214, align 16, !tbaa !2
  %arraydecay74 = getelementptr inbounds [4 x i128], [4 x i128]* %e32, i64 0, i64 0
  store i128 %sub48.i.i.2493, i128* %arraydecay74, align 16, !tbaa !2
  %arrayidx3.i.2450 = getelementptr inbounds [4 x i128], [4 x i128]* %e32, i64 0, i64 1
  store i128 %add34.i.i.2486, i128* %arrayidx3.i.2450, align 16, !tbaa !2
  %arrayidx5.i.2452 = getelementptr inbounds [4 x i128], [4 x i128]* %e32, i64 0, i64 2
  store i128 %add52.i.i.2495, i128* %arrayidx5.i.2452, align 16, !tbaa !2
  %arrayidx7.i.2454 = getelementptr inbounds [4 x i128], [4 x i128]* %e32, i64 0, i64 3
  store i128 %add56.i.i.2497, i128* %arrayidx7.i.2454, align 16, !tbaa !2
  br label %for.body.78

for.body.78:                                      ; preds = %for.body.78, %for.end.68
  %61 = phi i128 [ %add34.i.i.2486, %for.end.68 ], [ %add34.i.i.2316, %for.body.78 ]
  %62 = phi i128 [ %sub48.i.i.2493, %for.end.68 ], [ %sub48.i.i.2323, %for.body.78 ]
  %63 = phi i128 [ %add52.i.i.2495, %for.end.68 ], [ %add52.i.i.2325, %for.body.78 ]
  %64 = phi i128 [ %add56.i.i.2497, %for.end.68 ], [ %add56.i.i.2327, %for.body.78 ]
  %i.23836 = phi i32 [ 0, %for.end.68 ], [ %inc84, %for.body.78 ]
  %add.i.i.2331 = add i128 %64, 18446744069414584320
  %shr.i.i.2333 = lshr i128 %63, 64
  %add8.i.i.2334 = add i128 %add.i.i.2331, %shr.i.i.2333
  %conv12.i.i.2335 = and i128 %63, 18446744073709551615
  %add13.i.i.2336 = add nuw nsw i128 %conv12.i.i.2335, 18446673704965373952
  %add16.i.i.2337 = add i128 %62, 18446744073709551615
  %add19.i.i.2339 = add i128 %61, 1298074214633706907132628377272319
  %shr22.i.i.2340 = lshr i128 %add8.i.i.2334, 64
  %conv23.i.i.2341 = trunc i128 %shr22.i.i.2340 to i64
  %conv26.i.i.2342 = and i128 %add8.i.i.2334, 18446744073709551615
  %sub.i.i.2343 = sub nsw i128 %conv26.i.i.2342, %shr22.i.i.2340
  %shl.i.i.2344 = shl nuw nsw i128 %shr22.i.i.2340, 32
  %add32.i.i.2345 = add nsw i128 %sub.i.i.2343, %shl.i.i.2344
  %shr34.i.i.2346 = lshr i128 %add32.i.i.2345, 64
  %conv35.i.i.2347 = trunc i128 %shr34.i.i.2346 to i64
  %add36.i.i.2348 = add i64 %conv35.i.i.2347, %conv23.i.i.2341
  %conv39.i.i.2349 = and i128 %add32.i.i.2345, 18446744073709551615
  %sub43.i.i.2350 = sub nsw i128 %conv39.i.i.2349, %shr34.i.i.2346
  %shl45.i.i.2351 = shl nuw nsw i128 %shr34.i.i.2346, 32
  %add47.i.i.2352 = add nsw i128 %sub43.i.i.2350, %shl45.i.i.2351
  %conv48.i.i.2353 = zext i64 %add36.i.i.2348 to i128
  %add50.i.i.2354 = add i128 %add16.i.i.2337, %conv48.i.i.2353
  %shl52.i.i.2355 = shl nuw nsw i128 %conv48.i.i.2353, 32
  %sub54.i.i.2356 = sub i128 %add19.i.i.2339, %shl52.i.i.2355
  %shr56.i.i.2357 = lshr i128 %add47.i.i.2352, 64
  %conv57.i.i.2358 = trunc i128 %shr56.i.i.2357 to i64
  %sub58.i.i.2359 = sub i64 0, %conv57.i.i.2358
  %conv60.i.i.2360 = trunc i128 %add47.i.i.2352 to i64
  %and.i.i.2361 = and i64 %conv60.i.i.2360, 9223372036854775807
  %neg.i.i.2362 = sub nsw i64 9223372032559808512, %and.i.i.2361
  %sub62177.i.i.2363 = and i64 %neg.i.i.2362, %conv60.i.i.2360
  %and66.i.i.2364 = ashr i64 %sub62177.i.i.2363, 63
  %or.i.i.2365 = or i64 %and66.i.i.2364, %sub58.i.i.2359
  %conv68.i.i.2366 = zext i64 %or.i.i.2365 to i128
  %sub70.i.i.2367 = sub i128 %add50.i.i.2354, %conv68.i.i.2366
  %and71.i.i.2368 = and i64 %or.i.i.2365, 4294967295
  %conv72.i.i.2369 = zext i64 %and71.i.i.2368 to i128
  %sub74.i.i.2370 = sub i128 %sub54.i.i.2356, %conv72.i.i.2369
  %and75.i.i.2371 = and i64 %or.i.i.2365, -4294967295
  %conv76.i.i.2372 = zext i64 %and75.i.i.2371 to i128
  %sub78.i.i.2373 = sub nsw i128 %add47.i.i.2352, %conv76.i.i.2372
  %shr80.i.i.2374 = lshr i128 %sub70.i.i.2367, 64
  %add84.i.i.2375 = add i128 %sub74.i.i.2370, %shr80.i.i.2374
  %shr90.i.i.2377 = lshr i128 %add84.i.i.2375, 64
  %add94.i.i.2378 = add nuw nsw i128 %add13.i.i.2336, %shr90.i.i.2377
  %shr100.i.i.2380 = lshr i128 %add94.i.i.2378, 64
  %add104.i.i.2381 = add nsw i128 %sub78.i.i.2373, %shr100.i.i.2380
  %conv.i.2387 = and i128 %sub70.i.i.2367, 18446744073709551615
  %mul.i.2388 = mul nuw i128 %conv.i.2387, %conv.i.2387
  %shr.i.2389 = lshr i128 %mul.i.2388, 64
  %conv5.i.2390 = and i128 %mul.i.2388, 18446744073709551615
  %conv12.i.2393 = and i128 %add84.i.i.2375, 18446744073709551615
  %mul13.i.2394 = mul nuw i128 %conv12.i.2393, %conv.i.2387
  %shr15.i.2395 = lshr i128 %mul13.i.2394, 64
  %conv17.i.2396 = shl i128 %mul13.i.2394, 1
  %factor.i.2397 = and i128 %conv17.i.2396, 36893488147419103230
  %add21.i.2398 = add nuw nsw i128 %factor.i.2397, %shr.i.2389
  %conv27.i.2401 = and i128 %add94.i.i.2378, 18446744073709551615
  %mul28.i.2402 = mul nuw i128 %conv27.i.2401, %conv.i.2387
  %shr30.i.2403 = lshr i128 %mul28.i.2402, 64
  %conv32.i.2404 = and i128 %mul28.i.2402, 18446744073709551615
  %add34.i.2405 = add nuw nsw i128 %conv32.i.2404, %shr15.i.2395
  %mul36.i.2406 = shl nuw nsw i128 %add34.i.2405, 1
  %conv42.i.2409 = and i128 %add104.i.i.2381, 18446744073709551615
  %mul43.i.2410 = mul nuw i128 %conv42.i.2409, %conv.i.2387
  %shr45.i.2411 = lshr i128 %mul43.i.2410, 64
  %conv47.i.2412 = and i128 %mul43.i.2410, 18446744073709551615
  %mul56.i.2415 = mul nuw i128 %conv27.i.2401, %conv12.i.2393
  %shr58.i.2416 = lshr i128 %mul56.i.2415, 64
  %conv60.i.2417 = and i128 %mul56.i.2415, 18446744073709551615
  %add49.i.2413 = add nuw nsw i128 %conv60.i.2417, %shr30.i.2403
  %add62.i.2418 = add nuw nsw i128 %add49.i.2413, %conv47.i.2412
  %mul64.i.2419 = shl nuw nsw i128 %add62.i.2418, 1
  %add67.i.2420 = add nuw nsw i128 %shr45.i.2411, %shr58.i.2416
  %mul72.i.2421 = mul nuw i128 %conv12.i.2393, %conv12.i.2393
  %shr74.i.2422 = lshr i128 %mul72.i.2421, 64
  %conv76.i.2423 = and i128 %mul72.i.2421, 18446744073709551615
  %add78.i.2424 = add nuw nsw i128 %mul36.i.2406, %conv76.i.2423
  %add81.i.2425 = add nuw nsw i128 %mul64.i.2419, %shr74.i.2422
  %mul86.i.2426 = mul nuw i128 %conv42.i.2409, %conv12.i.2393
  %shr88.i.2427 = lshr i128 %mul86.i.2426, 64
  %conv90.i.2428 = and i128 %mul86.i.2426, 18446744073709551615
  %add92.i.2429 = add nuw nsw i128 %add67.i.2420, %conv90.i.2428
  %mul94.i.2430 = shl nuw nsw i128 %add92.i.2429, 1
  %mul101.i.2432 = mul nuw i128 %conv42.i.2409, %conv27.i.2401
  %shr103.i.2433 = lshr i128 %mul101.i.2432, 64
  %conv105.i.2434 = and i128 %mul101.i.2432, 18446744073709551615
  %add107.i.2435 = add nuw nsw i128 %conv105.i.2434, %shr88.i.2427
  %mul109.i.2436 = shl nuw nsw i128 %add107.i.2435, 1
  %add114.i.2438 = shl nuw nsw i128 %shr103.i.2433, 1
  %mul119.i.2439 = mul nuw i128 %conv27.i.2401, %conv27.i.2401
  %shr121.i.2440 = lshr i128 %mul119.i.2439, 64
  %conv123.i.2441 = and i128 %mul119.i.2439, 18446744073709551615
  %add125.i.2442 = add nuw nsw i128 %mul94.i.2430, %conv123.i.2441
  %add128.i.2443 = add nuw nsw i128 %mul109.i.2436, %shr121.i.2440
  %mul133.i.2444 = mul nuw i128 %conv42.i.2409, %conv42.i.2409
  %shr135.i.2445 = lshr i128 %mul133.i.2444, 64
  %conv137.i.2446 = and i128 %mul133.i.2444, 18446744073709551615
  %add139.i.2447 = add nuw nsw i128 %add114.i.2438, %conv137.i.2446
  %add.i.2285 = add nuw nsw i128 %conv5.i.2390, 1267650600228229401427983728624
  %add3.i.2287 = or i128 %add21.i.2398, 1267650600228229401496703205376
  %add6.i.2290 = add nuw nsw i128 %add78.i.2424, 1267650600228229401427983728656
  %add9.i.2293 = add nuw nsw i128 %add81.i.2425, 1267650600228229401427983728656
  %shl.i.i.2297 = shl nuw nsw i128 %add128.i.2443, 32
  %add.i.i.2298 = add nuw nsw i128 %shl.i.i.2297, %add125.i.2442
  %add3.i.i.2299 = add nuw nsw i128 %add.i.i.2298, %add.i.2285
  %sub.i.i.2300 = sub nsw i128 %add9.i.2293, %add.i.i.2298
  %sub7.i.i.2302 = sub nsw i128 %add128.i.2443, %shr135.i.2445
  %add9.i.i.2303 = add nsw i128 %sub7.i.i.2302, %add3.i.2287
  %sub11.i.i.2304 = sub nsw i128 %add6.i.2290, %sub7.i.i.2302
  %shl13.i.i.2305 = shl nuw nsw i128 %add125.i.2442, 32
  %sub15.i.i.2306 = sub nsw i128 %add9.i.i.2303, %shl13.i.i.2305
  %add19.i.i.2308 = add i128 %shl13.i.i.2305, %sub.i.i.2300
  %sub23.i.i.2310 = sub nsw i128 %sub11.i.i.2304, %shl.i.i.2297
  %sub26.i.i.2312 = sub i128 %add3.i.i.2299, %add139.i.2447
  %shl28.i.i.2313 = shl nuw nsw i128 %add139.i.2447, 32
  %sub30.i.i.2314 = sub i128 %sub26.i.i.2312, %shl28.i.i.2313
  %shl32.i.i.2315 = shl nuw nsw i128 %add139.i.2447, 33
  %add34.i.i.2316 = add i128 %shl32.i.i.2315, %sub15.i.i.2306
  %mul.i.i.2317 = shl nuw nsw i128 %add139.i.2447, 1
  %add37.i.i.2318 = add i128 %mul.i.i.2317, %sub23.i.i.2310
  %sub41.i.i.2320 = sub i128 %add19.i.i.2308, %shl28.i.i.2313
  %sub44.i.i.2321 = sub i128 %sub30.i.i.2314, %shr135.i.2445
  %shl46.i.i.2322 = shl nuw nsw i128 %shr135.i.2445, 32
  %sub48.i.i.2323 = sub i128 %sub44.i.i.2321, %shl46.i.i.2322
  %shl50.i.i.2324 = shl nuw nsw i128 %shr135.i.2445, 33
  %add52.i.i.2325 = add i128 %shl50.i.i.2324, %add37.i.i.2318
  %mul54.i.i.2326 = mul nuw nsw i128 %shr135.i.2445, 3
  %add56.i.i.2327 = add i128 %mul54.i.i.2326, %sub41.i.i.2320
  %inc84 = add nuw nsw i32 %i.23836, 1
  %exitcond3854 = icmp eq i32 %inc84, 32
  br i1 %exitcond3854, label %for.end.85, label %for.body.78

for.end.85:                                       ; preds = %for.body.78
  %add56.i.i.2327.lcssa = phi i128 [ %add56.i.i.2327, %for.body.78 ]
  %add52.i.i.2325.lcssa = phi i128 [ %add52.i.i.2325, %for.body.78 ]
  %sub48.i.i.2323.lcssa = phi i128 [ %sub48.i.i.2323, %for.body.78 ]
  %add34.i.i.2316.lcssa = phi i128 [ %add34.i.i.2316, %for.body.78 ]
  %add139.i.2447.lcssa = phi i128 [ %add139.i.2447, %for.body.78 ]
  %shr135.i.2445.lcssa = phi i128 [ %shr135.i.2445, %for.body.78 ]
  %add128.i.2443.lcssa = phi i128 [ %add128.i.2443, %for.body.78 ]
  %add125.i.2442.lcssa = phi i128 [ %add125.i.2442, %for.body.78 ]
  %add81.i.2425.lcssa = phi i128 [ %add81.i.2425, %for.body.78 ]
  %add78.i.2424.lcssa = phi i128 [ %add78.i.2424, %for.body.78 ]
  %add21.i.2398.lcssa = phi i128 [ %add21.i.2398, %for.body.78 ]
  %conv5.i.2390.lcssa = phi i128 [ %conv5.i.2390, %for.body.78 ]
  store i128 %add56.i.i.2327.lcssa, i128* %arrayidx10.i.214, align 16, !tbaa !2
  store i128 %add52.i.i.2325.lcssa, i128* %arrayidx7.i.211, align 16, !tbaa !2
  store i128 %sub48.i.i.2323.lcssa, i128* %arraydecay2, align 16, !tbaa !2
  store i128 %add34.i.i.2316.lcssa, i128* %arrayidx4.i.208, align 16, !tbaa !2
  store i128 %conv5.i.2390.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.2398.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.2424.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.2425.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.2442.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.2443.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.2447.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.2445.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  %arraydecay86 = getelementptr inbounds [4 x i128], [4 x i128]* %e64, i64 0, i64 0
  store i128 %sub48.i.i.2323.lcssa, i128* %arraydecay86, align 16, !tbaa !2
  %arrayidx3.i.2280 = getelementptr inbounds [4 x i128], [4 x i128]* %e64, i64 0, i64 1
  store i128 %add34.i.i.2316.lcssa, i128* %arrayidx3.i.2280, align 16, !tbaa !2
  %arrayidx5.i.2282 = getelementptr inbounds [4 x i128], [4 x i128]* %e64, i64 0, i64 2
  store i128 %add52.i.i.2325.lcssa, i128* %arrayidx5.i.2282, align 16, !tbaa !2
  %arrayidx7.i.2284 = getelementptr inbounds [4 x i128], [4 x i128]* %e64, i64 0, i64 3
  store i128 %add56.i.i.2327.lcssa, i128* %arrayidx7.i.2284, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay2, i128* %in)
  %65 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2193 = add i128 %65, 1267650600228229401427983728624
  %66 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.2195 = add i128 %66, 1267650600228229401496703205376
  %67 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.2198 = add i128 %67, 1267650600228229401427983728656
  %68 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.2201 = add i128 %68, 1267650600228229401427983728656
  %69 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %70 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.2205 = shl i128 %70, 32
  %add.i.i.2206 = add i128 %shl.i.i.2205, %69
  %add3.i.i.2207 = add i128 %add.i.i.2206, %add.i.2193
  %sub.i.i.2208 = sub i128 %add9.i.2201, %add.i.i.2206
  %71 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.2210 = sub i128 %70, %71
  %add9.i.i.2211 = add i128 %sub7.i.i.2210, %add3.i.2195
  %sub11.i.i.2212 = sub i128 %add6.i.2198, %sub7.i.i.2210
  %shl13.i.i.2213 = shl i128 %69, 32
  %sub15.i.i.2214 = sub i128 %add9.i.i.2211, %shl13.i.i.2213
  %add19.i.i.2216 = add i128 %shl13.i.i.2213, %sub.i.i.2208
  %sub23.i.i.2218 = sub i128 %sub11.i.i.2212, %shl.i.i.2205
  %72 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.2220 = sub i128 %add3.i.i.2207, %72
  %shl28.i.i.2221 = shl i128 %72, 32
  %sub30.i.i.2222 = sub i128 %sub26.i.i.2220, %shl28.i.i.2221
  %shl32.i.i.2223 = shl i128 %72, 33
  %add34.i.i.2224 = add i128 %shl32.i.i.2223, %sub15.i.i.2214
  store i128 %add34.i.i.2224, i128* %arrayidx4.i.208, align 16, !tbaa !2
  %mul.i.i.2225 = shl i128 %72, 1
  %add37.i.i.2226 = add i128 %mul.i.i.2225, %sub23.i.i.2218
  %sub41.i.i.2228 = sub i128 %add19.i.i.2216, %shl28.i.i.2221
  %sub44.i.i.2229 = sub i128 %sub30.i.i.2222, %71
  %shl46.i.i.2230 = shl i128 %71, 32
  %sub48.i.i.2231 = sub i128 %sub44.i.i.2229, %shl46.i.i.2230
  store i128 %sub48.i.i.2231, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2232 = shl i128 %71, 33
  %add52.i.i.2233 = add i128 %shl50.i.i.2232, %add37.i.i.2226
  store i128 %add52.i.i.2233, i128* %arrayidx7.i.211, align 16, !tbaa !2
  %mul54.i.i.2234 = mul i128 %71, 3
  %add56.i.i.2235 = add i128 %mul54.i.i.2234, %sub41.i.i.2228
  store i128 %add56.i.i.2235, i128* %arrayidx10.i.214, align 16, !tbaa !2
  br label %for.body.94

for.body.94:                                      ; preds = %for.body.94, %for.end.85
  %73 = phi i128 [ %add34.i.i.2224, %for.end.85 ], [ %add34.i.i.2060, %for.body.94 ]
  %74 = phi i128 [ %sub48.i.i.2231, %for.end.85 ], [ %sub48.i.i.2067, %for.body.94 ]
  %75 = phi i128 [ %add52.i.i.2233, %for.end.85 ], [ %add52.i.i.2069, %for.body.94 ]
  %76 = phi i128 [ %add56.i.i.2235, %for.end.85 ], [ %add56.i.i.2071, %for.body.94 ]
  %i.33835 = phi i32 [ 0, %for.end.85 ], [ %inc100, %for.body.94 ]
  %add.i.i.2075 = add i128 %76, 18446744069414584320
  %shr.i.i.2077 = lshr i128 %75, 64
  %add8.i.i.2078 = add i128 %add.i.i.2075, %shr.i.i.2077
  %conv12.i.i.2079 = and i128 %75, 18446744073709551615
  %add13.i.i.2080 = add nuw nsw i128 %conv12.i.i.2079, 18446673704965373952
  %add16.i.i.2081 = add i128 %74, 18446744073709551615
  %add19.i.i.2083 = add i128 %73, 1298074214633706907132628377272319
  %shr22.i.i.2084 = lshr i128 %add8.i.i.2078, 64
  %conv23.i.i.2085 = trunc i128 %shr22.i.i.2084 to i64
  %conv26.i.i.2086 = and i128 %add8.i.i.2078, 18446744073709551615
  %sub.i.i.2087 = sub nsw i128 %conv26.i.i.2086, %shr22.i.i.2084
  %shl.i.i.2088 = shl nuw nsw i128 %shr22.i.i.2084, 32
  %add32.i.i.2089 = add nsw i128 %sub.i.i.2087, %shl.i.i.2088
  %shr34.i.i.2090 = lshr i128 %add32.i.i.2089, 64
  %conv35.i.i.2091 = trunc i128 %shr34.i.i.2090 to i64
  %add36.i.i.2092 = add i64 %conv35.i.i.2091, %conv23.i.i.2085
  %conv39.i.i.2093 = and i128 %add32.i.i.2089, 18446744073709551615
  %sub43.i.i.2094 = sub nsw i128 %conv39.i.i.2093, %shr34.i.i.2090
  %shl45.i.i.2095 = shl nuw nsw i128 %shr34.i.i.2090, 32
  %add47.i.i.2096 = add nsw i128 %sub43.i.i.2094, %shl45.i.i.2095
  %conv48.i.i.2097 = zext i64 %add36.i.i.2092 to i128
  %add50.i.i.2098 = add i128 %add16.i.i.2081, %conv48.i.i.2097
  %shl52.i.i.2099 = shl nuw nsw i128 %conv48.i.i.2097, 32
  %sub54.i.i.2100 = sub i128 %add19.i.i.2083, %shl52.i.i.2099
  %shr56.i.i.2101 = lshr i128 %add47.i.i.2096, 64
  %conv57.i.i.2102 = trunc i128 %shr56.i.i.2101 to i64
  %sub58.i.i.2103 = sub i64 0, %conv57.i.i.2102
  %conv60.i.i.2104 = trunc i128 %add47.i.i.2096 to i64
  %and.i.i.2105 = and i64 %conv60.i.i.2104, 9223372036854775807
  %neg.i.i.2106 = sub nsw i64 9223372032559808512, %and.i.i.2105
  %sub62177.i.i.2107 = and i64 %neg.i.i.2106, %conv60.i.i.2104
  %and66.i.i.2108 = ashr i64 %sub62177.i.i.2107, 63
  %or.i.i.2109 = or i64 %and66.i.i.2108, %sub58.i.i.2103
  %conv68.i.i.2110 = zext i64 %or.i.i.2109 to i128
  %sub70.i.i.2111 = sub i128 %add50.i.i.2098, %conv68.i.i.2110
  %and71.i.i.2112 = and i64 %or.i.i.2109, 4294967295
  %conv72.i.i.2113 = zext i64 %and71.i.i.2112 to i128
  %sub74.i.i.2114 = sub i128 %sub54.i.i.2100, %conv72.i.i.2113
  %and75.i.i.2115 = and i64 %or.i.i.2109, -4294967295
  %conv76.i.i.2116 = zext i64 %and75.i.i.2115 to i128
  %sub78.i.i.2117 = sub nsw i128 %add47.i.i.2096, %conv76.i.i.2116
  %shr80.i.i.2118 = lshr i128 %sub70.i.i.2111, 64
  %add84.i.i.2119 = add i128 %sub74.i.i.2114, %shr80.i.i.2118
  %shr90.i.i.2121 = lshr i128 %add84.i.i.2119, 64
  %add94.i.i.2122 = add nuw nsw i128 %add13.i.i.2080, %shr90.i.i.2121
  %shr100.i.i.2124 = lshr i128 %add94.i.i.2122, 64
  %add104.i.i.2125 = add nsw i128 %sub78.i.i.2117, %shr100.i.i.2124
  %conv.i.2131 = and i128 %sub70.i.i.2111, 18446744073709551615
  %mul.i.2132 = mul nuw i128 %conv.i.2131, %conv.i.2131
  %shr.i.2133 = lshr i128 %mul.i.2132, 64
  %conv5.i.2134 = and i128 %mul.i.2132, 18446744073709551615
  %conv12.i.2137 = and i128 %add84.i.i.2119, 18446744073709551615
  %mul13.i.2138 = mul nuw i128 %conv12.i.2137, %conv.i.2131
  %shr15.i.2139 = lshr i128 %mul13.i.2138, 64
  %conv17.i.2140 = shl i128 %mul13.i.2138, 1
  %factor.i.2141 = and i128 %conv17.i.2140, 36893488147419103230
  %add21.i.2142 = add nuw nsw i128 %factor.i.2141, %shr.i.2133
  %conv27.i.2145 = and i128 %add94.i.i.2122, 18446744073709551615
  %mul28.i.2146 = mul nuw i128 %conv27.i.2145, %conv.i.2131
  %shr30.i.2147 = lshr i128 %mul28.i.2146, 64
  %conv32.i.2148 = and i128 %mul28.i.2146, 18446744073709551615
  %add34.i.2149 = add nuw nsw i128 %conv32.i.2148, %shr15.i.2139
  %mul36.i.2150 = shl nuw nsw i128 %add34.i.2149, 1
  %conv42.i.2153 = and i128 %add104.i.i.2125, 18446744073709551615
  %mul43.i.2154 = mul nuw i128 %conv42.i.2153, %conv.i.2131
  %shr45.i.2155 = lshr i128 %mul43.i.2154, 64
  %conv47.i.2156 = and i128 %mul43.i.2154, 18446744073709551615
  %mul56.i.2159 = mul nuw i128 %conv27.i.2145, %conv12.i.2137
  %shr58.i.2160 = lshr i128 %mul56.i.2159, 64
  %conv60.i.2161 = and i128 %mul56.i.2159, 18446744073709551615
  %add49.i.2157 = add nuw nsw i128 %conv60.i.2161, %shr30.i.2147
  %add62.i.2162 = add nuw nsw i128 %add49.i.2157, %conv47.i.2156
  %mul64.i.2163 = shl nuw nsw i128 %add62.i.2162, 1
  %add67.i.2164 = add nuw nsw i128 %shr45.i.2155, %shr58.i.2160
  %mul72.i.2165 = mul nuw i128 %conv12.i.2137, %conv12.i.2137
  %shr74.i.2166 = lshr i128 %mul72.i.2165, 64
  %conv76.i.2167 = and i128 %mul72.i.2165, 18446744073709551615
  %add78.i.2168 = add nuw nsw i128 %mul36.i.2150, %conv76.i.2167
  %add81.i.2169 = add nuw nsw i128 %mul64.i.2163, %shr74.i.2166
  %mul86.i.2170 = mul nuw i128 %conv42.i.2153, %conv12.i.2137
  %shr88.i.2171 = lshr i128 %mul86.i.2170, 64
  %conv90.i.2172 = and i128 %mul86.i.2170, 18446744073709551615
  %add92.i.2173 = add nuw nsw i128 %add67.i.2164, %conv90.i.2172
  %mul94.i.2174 = shl nuw nsw i128 %add92.i.2173, 1
  %mul101.i.2176 = mul nuw i128 %conv42.i.2153, %conv27.i.2145
  %shr103.i.2177 = lshr i128 %mul101.i.2176, 64
  %conv105.i.2178 = and i128 %mul101.i.2176, 18446744073709551615
  %add107.i.2179 = add nuw nsw i128 %conv105.i.2178, %shr88.i.2171
  %mul109.i.2180 = shl nuw nsw i128 %add107.i.2179, 1
  %add114.i.2182 = shl nuw nsw i128 %shr103.i.2177, 1
  %mul119.i.2183 = mul nuw i128 %conv27.i.2145, %conv27.i.2145
  %shr121.i.2184 = lshr i128 %mul119.i.2183, 64
  %conv123.i.2185 = and i128 %mul119.i.2183, 18446744073709551615
  %add125.i.2186 = add nuw nsw i128 %mul94.i.2174, %conv123.i.2185
  %add128.i.2187 = add nuw nsw i128 %mul109.i.2180, %shr121.i.2184
  %mul133.i.2188 = mul nuw i128 %conv42.i.2153, %conv42.i.2153
  %shr135.i.2189 = lshr i128 %mul133.i.2188, 64
  %conv137.i.2190 = and i128 %mul133.i.2188, 18446744073709551615
  %add139.i.2191 = add nuw nsw i128 %add114.i.2182, %conv137.i.2190
  %add.i.2029 = add nuw nsw i128 %conv5.i.2134, 1267650600228229401427983728624
  %add3.i.2031 = or i128 %add21.i.2142, 1267650600228229401496703205376
  %add6.i.2034 = add nuw nsw i128 %add78.i.2168, 1267650600228229401427983728656
  %add9.i.2037 = add nuw nsw i128 %add81.i.2169, 1267650600228229401427983728656
  %shl.i.i.2041 = shl nuw nsw i128 %add128.i.2187, 32
  %add.i.i.2042 = add nuw nsw i128 %shl.i.i.2041, %add125.i.2186
  %add3.i.i.2043 = add nuw nsw i128 %add.i.i.2042, %add.i.2029
  %sub.i.i.2044 = sub nsw i128 %add9.i.2037, %add.i.i.2042
  %sub7.i.i.2046 = sub nsw i128 %add128.i.2187, %shr135.i.2189
  %add9.i.i.2047 = add nsw i128 %sub7.i.i.2046, %add3.i.2031
  %sub11.i.i.2048 = sub nsw i128 %add6.i.2034, %sub7.i.i.2046
  %shl13.i.i.2049 = shl nuw nsw i128 %add125.i.2186, 32
  %sub15.i.i.2050 = sub nsw i128 %add9.i.i.2047, %shl13.i.i.2049
  %add19.i.i.2052 = add i128 %shl13.i.i.2049, %sub.i.i.2044
  %sub23.i.i.2054 = sub nsw i128 %sub11.i.i.2048, %shl.i.i.2041
  %sub26.i.i.2056 = sub i128 %add3.i.i.2043, %add139.i.2191
  %shl28.i.i.2057 = shl nuw nsw i128 %add139.i.2191, 32
  %sub30.i.i.2058 = sub i128 %sub26.i.i.2056, %shl28.i.i.2057
  %shl32.i.i.2059 = shl nuw nsw i128 %add139.i.2191, 33
  %add34.i.i.2060 = add i128 %shl32.i.i.2059, %sub15.i.i.2050
  %mul.i.i.2061 = shl nuw nsw i128 %add139.i.2191, 1
  %add37.i.i.2062 = add i128 %mul.i.i.2061, %sub23.i.i.2054
  %sub41.i.i.2064 = sub i128 %add19.i.i.2052, %shl28.i.i.2057
  %sub44.i.i.2065 = sub i128 %sub30.i.i.2058, %shr135.i.2189
  %shl46.i.i.2066 = shl nuw nsw i128 %shr135.i.2189, 32
  %sub48.i.i.2067 = sub i128 %sub44.i.i.2065, %shl46.i.i.2066
  %shl50.i.i.2068 = shl nuw nsw i128 %shr135.i.2189, 33
  %add52.i.i.2069 = add i128 %shl50.i.i.2068, %add37.i.i.2062
  %mul54.i.i.2070 = mul nuw nsw i128 %shr135.i.2189, 3
  %add56.i.i.2071 = add i128 %mul54.i.i.2070, %sub41.i.i.2064
  %inc100 = add nuw nsw i32 %i.33835, 1
  %exitcond3853 = icmp eq i32 %inc100, 192
  br i1 %exitcond3853, label %for.end.101, label %for.body.94

for.end.101:                                      ; preds = %for.body.94
  %add56.i.i.2071.lcssa = phi i128 [ %add56.i.i.2071, %for.body.94 ]
  %add52.i.i.2069.lcssa = phi i128 [ %add52.i.i.2069, %for.body.94 ]
  %sub48.i.i.2067.lcssa = phi i128 [ %sub48.i.i.2067, %for.body.94 ]
  %add34.i.i.2060.lcssa = phi i128 [ %add34.i.i.2060, %for.body.94 ]
  %add139.i.2191.lcssa = phi i128 [ %add139.i.2191, %for.body.94 ]
  %shr135.i.2189.lcssa = phi i128 [ %shr135.i.2189, %for.body.94 ]
  %add128.i.2187.lcssa = phi i128 [ %add128.i.2187, %for.body.94 ]
  %add125.i.2186.lcssa = phi i128 [ %add125.i.2186, %for.body.94 ]
  %add81.i.2169.lcssa = phi i128 [ %add81.i.2169, %for.body.94 ]
  %add78.i.2168.lcssa = phi i128 [ %add78.i.2168, %for.body.94 ]
  %add21.i.2142.lcssa = phi i128 [ %add21.i.2142, %for.body.94 ]
  %conv5.i.2134.lcssa = phi i128 [ %conv5.i.2134, %for.body.94 ]
  store i128 %add56.i.i.2071.lcssa, i128* %arrayidx10.i.214, align 16, !tbaa !2
  store i128 %add52.i.i.2069.lcssa, i128* %arrayidx7.i.211, align 16, !tbaa !2
  store i128 %sub48.i.i.2067.lcssa, i128* %arraydecay2, align 16, !tbaa !2
  store i128 %add34.i.i.2060.lcssa, i128* %arrayidx4.i.208, align 16, !tbaa !2
  store i128 %conv5.i.2134.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.2142.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.2168.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.2169.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.2186.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.2187.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.2191.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.2189.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay86, i128* %arraydecay74)
  %arraydecay105 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 0
  %77 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1943 = add i128 %77, 1267650600228229401427983728624
  %78 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.1945 = add i128 %78, 1267650600228229401496703205376
  %arrayidx4.i.1946 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 1
  %79 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.1948 = add i128 %79, 1267650600228229401427983728656
  %arrayidx7.i.1949 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 2
  %80 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.1951 = add i128 %80, 1267650600228229401427983728656
  %arrayidx10.i.1952 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 3
  %81 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %82 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.1955 = shl i128 %82, 32
  %add.i.i.1956 = add i128 %shl.i.i.1955, %81
  %add3.i.i.1957 = add i128 %add.i.i.1956, %add.i.1943
  %sub.i.i.1958 = sub i128 %add9.i.1951, %add.i.i.1956
  %83 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.1960 = sub i128 %82, %83
  %add9.i.i.1961 = add i128 %sub7.i.i.1960, %add3.i.1945
  %sub11.i.i.1962 = sub i128 %add6.i.1948, %sub7.i.i.1960
  %shl13.i.i.1963 = shl i128 %81, 32
  %sub15.i.i.1964 = sub i128 %add9.i.i.1961, %shl13.i.i.1963
  %add19.i.i.1966 = add i128 %shl13.i.i.1963, %sub.i.i.1958
  %sub23.i.i.1968 = sub i128 %sub11.i.i.1962, %shl.i.i.1955
  %84 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.1970 = sub i128 %add3.i.i.1957, %84
  %shl28.i.i.1971 = shl i128 %84, 32
  %sub30.i.i.1972 = sub i128 %sub26.i.i.1970, %shl28.i.i.1971
  %shl32.i.i.1973 = shl i128 %84, 33
  %add34.i.i.1974 = add i128 %shl32.i.i.1973, %sub15.i.i.1964
  store i128 %add34.i.i.1974, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.1975 = shl i128 %84, 1
  %add37.i.i.1976 = add i128 %mul.i.i.1975, %sub23.i.i.1968
  %sub41.i.i.1978 = sub i128 %add19.i.i.1966, %shl28.i.i.1971
  %sub44.i.i.1979 = sub i128 %sub30.i.i.1972, %83
  %shl46.i.i.1980 = shl i128 %83, 32
  %sub48.i.i.1981 = sub i128 %sub44.i.i.1979, %shl46.i.i.1980
  store i128 %sub48.i.i.1981, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1982 = shl i128 %83, 33
  %add52.i.i.1983 = add i128 %shl50.i.i.1982, %add37.i.i.1976
  store i128 %add52.i.i.1983, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.1984 = mul i128 %83, 3
  %add56.i.i.1985 = add i128 %mul54.i.i.1984, %sub41.i.i.1978
  store i128 %add56.i.i.1985, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  br label %for.body.109

for.body.109:                                     ; preds = %for.body.109, %for.end.101
  %85 = phi i128 [ %add34.i.i.1974, %for.end.101 ], [ %add34.i.i.1810, %for.body.109 ]
  %86 = phi i128 [ %sub48.i.i.1981, %for.end.101 ], [ %sub48.i.i.1817, %for.body.109 ]
  %87 = phi i128 [ %add52.i.i.1983, %for.end.101 ], [ %add52.i.i.1819, %for.body.109 ]
  %88 = phi i128 [ %add56.i.i.1985, %for.end.101 ], [ %add56.i.i.1821, %for.body.109 ]
  %i.43830 = phi i32 [ 0, %for.end.101 ], [ %inc115, %for.body.109 ]
  %add.i.i.1825 = add i128 %88, 18446744069414584320
  %shr.i.i.1827 = lshr i128 %87, 64
  %add8.i.i.1828 = add i128 %add.i.i.1825, %shr.i.i.1827
  %conv12.i.i.1829 = and i128 %87, 18446744073709551615
  %add13.i.i.1830 = add nuw nsw i128 %conv12.i.i.1829, 18446673704965373952
  %add16.i.i.1831 = add i128 %86, 18446744073709551615
  %add19.i.i.1833 = add i128 %85, 1298074214633706907132628377272319
  %shr22.i.i.1834 = lshr i128 %add8.i.i.1828, 64
  %conv23.i.i.1835 = trunc i128 %shr22.i.i.1834 to i64
  %conv26.i.i.1836 = and i128 %add8.i.i.1828, 18446744073709551615
  %sub.i.i.1837 = sub nsw i128 %conv26.i.i.1836, %shr22.i.i.1834
  %shl.i.i.1838 = shl nuw nsw i128 %shr22.i.i.1834, 32
  %add32.i.i.1839 = add nsw i128 %sub.i.i.1837, %shl.i.i.1838
  %shr34.i.i.1840 = lshr i128 %add32.i.i.1839, 64
  %conv35.i.i.1841 = trunc i128 %shr34.i.i.1840 to i64
  %add36.i.i.1842 = add i64 %conv35.i.i.1841, %conv23.i.i.1835
  %conv39.i.i.1843 = and i128 %add32.i.i.1839, 18446744073709551615
  %sub43.i.i.1844 = sub nsw i128 %conv39.i.i.1843, %shr34.i.i.1840
  %shl45.i.i.1845 = shl nuw nsw i128 %shr34.i.i.1840, 32
  %add47.i.i.1846 = add nsw i128 %sub43.i.i.1844, %shl45.i.i.1845
  %conv48.i.i.1847 = zext i64 %add36.i.i.1842 to i128
  %add50.i.i.1848 = add i128 %add16.i.i.1831, %conv48.i.i.1847
  %shl52.i.i.1849 = shl nuw nsw i128 %conv48.i.i.1847, 32
  %sub54.i.i.1850 = sub i128 %add19.i.i.1833, %shl52.i.i.1849
  %shr56.i.i.1851 = lshr i128 %add47.i.i.1846, 64
  %conv57.i.i.1852 = trunc i128 %shr56.i.i.1851 to i64
  %sub58.i.i.1853 = sub i64 0, %conv57.i.i.1852
  %conv60.i.i.1854 = trunc i128 %add47.i.i.1846 to i64
  %and.i.i.1855 = and i64 %conv60.i.i.1854, 9223372036854775807
  %neg.i.i.1856 = sub nsw i64 9223372032559808512, %and.i.i.1855
  %sub62177.i.i.1857 = and i64 %neg.i.i.1856, %conv60.i.i.1854
  %and66.i.i.1858 = ashr i64 %sub62177.i.i.1857, 63
  %or.i.i.1859 = or i64 %and66.i.i.1858, %sub58.i.i.1853
  %conv68.i.i.1860 = zext i64 %or.i.i.1859 to i128
  %sub70.i.i.1861 = sub i128 %add50.i.i.1848, %conv68.i.i.1860
  %and71.i.i.1862 = and i64 %or.i.i.1859, 4294967295
  %conv72.i.i.1863 = zext i64 %and71.i.i.1862 to i128
  %sub74.i.i.1864 = sub i128 %sub54.i.i.1850, %conv72.i.i.1863
  %and75.i.i.1865 = and i64 %or.i.i.1859, -4294967295
  %conv76.i.i.1866 = zext i64 %and75.i.i.1865 to i128
  %sub78.i.i.1867 = sub nsw i128 %add47.i.i.1846, %conv76.i.i.1866
  %shr80.i.i.1868 = lshr i128 %sub70.i.i.1861, 64
  %add84.i.i.1869 = add i128 %sub74.i.i.1864, %shr80.i.i.1868
  %shr90.i.i.1871 = lshr i128 %add84.i.i.1869, 64
  %add94.i.i.1872 = add nuw nsw i128 %add13.i.i.1830, %shr90.i.i.1871
  %shr100.i.i.1874 = lshr i128 %add94.i.i.1872, 64
  %add104.i.i.1875 = add nsw i128 %sub78.i.i.1867, %shr100.i.i.1874
  %conv.i.1881 = and i128 %sub70.i.i.1861, 18446744073709551615
  %mul.i.1882 = mul nuw i128 %conv.i.1881, %conv.i.1881
  %shr.i.1883 = lshr i128 %mul.i.1882, 64
  %conv5.i.1884 = and i128 %mul.i.1882, 18446744073709551615
  %conv12.i.1887 = and i128 %add84.i.i.1869, 18446744073709551615
  %mul13.i.1888 = mul nuw i128 %conv12.i.1887, %conv.i.1881
  %shr15.i.1889 = lshr i128 %mul13.i.1888, 64
  %conv17.i.1890 = shl i128 %mul13.i.1888, 1
  %factor.i.1891 = and i128 %conv17.i.1890, 36893488147419103230
  %add21.i.1892 = add nuw nsw i128 %factor.i.1891, %shr.i.1883
  %conv27.i.1895 = and i128 %add94.i.i.1872, 18446744073709551615
  %mul28.i.1896 = mul nuw i128 %conv27.i.1895, %conv.i.1881
  %shr30.i.1897 = lshr i128 %mul28.i.1896, 64
  %conv32.i.1898 = and i128 %mul28.i.1896, 18446744073709551615
  %add34.i.1899 = add nuw nsw i128 %conv32.i.1898, %shr15.i.1889
  %mul36.i.1900 = shl nuw nsw i128 %add34.i.1899, 1
  %conv42.i.1903 = and i128 %add104.i.i.1875, 18446744073709551615
  %mul43.i.1904 = mul nuw i128 %conv42.i.1903, %conv.i.1881
  %shr45.i.1905 = lshr i128 %mul43.i.1904, 64
  %conv47.i.1906 = and i128 %mul43.i.1904, 18446744073709551615
  %mul56.i.1909 = mul nuw i128 %conv27.i.1895, %conv12.i.1887
  %shr58.i.1910 = lshr i128 %mul56.i.1909, 64
  %conv60.i.1911 = and i128 %mul56.i.1909, 18446744073709551615
  %add49.i.1907 = add nuw nsw i128 %conv60.i.1911, %shr30.i.1897
  %add62.i.1912 = add nuw nsw i128 %add49.i.1907, %conv47.i.1906
  %mul64.i.1913 = shl nuw nsw i128 %add62.i.1912, 1
  %add67.i.1914 = add nuw nsw i128 %shr45.i.1905, %shr58.i.1910
  %mul72.i.1915 = mul nuw i128 %conv12.i.1887, %conv12.i.1887
  %shr74.i.1916 = lshr i128 %mul72.i.1915, 64
  %conv76.i.1917 = and i128 %mul72.i.1915, 18446744073709551615
  %add78.i.1918 = add nuw nsw i128 %mul36.i.1900, %conv76.i.1917
  %add81.i.1919 = add nuw nsw i128 %mul64.i.1913, %shr74.i.1916
  %mul86.i.1920 = mul nuw i128 %conv42.i.1903, %conv12.i.1887
  %shr88.i.1921 = lshr i128 %mul86.i.1920, 64
  %conv90.i.1922 = and i128 %mul86.i.1920, 18446744073709551615
  %add92.i.1923 = add nuw nsw i128 %add67.i.1914, %conv90.i.1922
  %mul94.i.1924 = shl nuw nsw i128 %add92.i.1923, 1
  %mul101.i.1926 = mul nuw i128 %conv42.i.1903, %conv27.i.1895
  %shr103.i.1927 = lshr i128 %mul101.i.1926, 64
  %conv105.i.1928 = and i128 %mul101.i.1926, 18446744073709551615
  %add107.i.1929 = add nuw nsw i128 %conv105.i.1928, %shr88.i.1921
  %mul109.i.1930 = shl nuw nsw i128 %add107.i.1929, 1
  %add114.i.1932 = shl nuw nsw i128 %shr103.i.1927, 1
  %mul119.i.1933 = mul nuw i128 %conv27.i.1895, %conv27.i.1895
  %shr121.i.1934 = lshr i128 %mul119.i.1933, 64
  %conv123.i.1935 = and i128 %mul119.i.1933, 18446744073709551615
  %add125.i.1936 = add nuw nsw i128 %mul94.i.1924, %conv123.i.1935
  %add128.i.1937 = add nuw nsw i128 %mul109.i.1930, %shr121.i.1934
  %mul133.i.1938 = mul nuw i128 %conv42.i.1903, %conv42.i.1903
  %shr135.i.1939 = lshr i128 %mul133.i.1938, 64
  %conv137.i.1940 = and i128 %mul133.i.1938, 18446744073709551615
  %add139.i.1941 = add nuw nsw i128 %add114.i.1932, %conv137.i.1940
  %add.i.1779 = add nuw nsw i128 %conv5.i.1884, 1267650600228229401427983728624
  %add3.i.1781 = or i128 %add21.i.1892, 1267650600228229401496703205376
  %add6.i.1784 = add nuw nsw i128 %add78.i.1918, 1267650600228229401427983728656
  %add9.i.1787 = add nuw nsw i128 %add81.i.1919, 1267650600228229401427983728656
  %shl.i.i.1791 = shl nuw nsw i128 %add128.i.1937, 32
  %add.i.i.1792 = add nuw nsw i128 %shl.i.i.1791, %add125.i.1936
  %add3.i.i.1793 = add nuw nsw i128 %add.i.i.1792, %add.i.1779
  %sub.i.i.1794 = sub nsw i128 %add9.i.1787, %add.i.i.1792
  %sub7.i.i.1796 = sub nsw i128 %add128.i.1937, %shr135.i.1939
  %add9.i.i.1797 = add nsw i128 %sub7.i.i.1796, %add3.i.1781
  %sub11.i.i.1798 = sub nsw i128 %add6.i.1784, %sub7.i.i.1796
  %shl13.i.i.1799 = shl nuw nsw i128 %add125.i.1936, 32
  %sub15.i.i.1800 = sub nsw i128 %add9.i.i.1797, %shl13.i.i.1799
  %add19.i.i.1802 = add i128 %shl13.i.i.1799, %sub.i.i.1794
  %sub23.i.i.1804 = sub nsw i128 %sub11.i.i.1798, %shl.i.i.1791
  %sub26.i.i.1806 = sub i128 %add3.i.i.1793, %add139.i.1941
  %shl28.i.i.1807 = shl nuw nsw i128 %add139.i.1941, 32
  %sub30.i.i.1808 = sub i128 %sub26.i.i.1806, %shl28.i.i.1807
  %shl32.i.i.1809 = shl nuw nsw i128 %add139.i.1941, 33
  %add34.i.i.1810 = add i128 %shl32.i.i.1809, %sub15.i.i.1800
  %mul.i.i.1811 = shl nuw nsw i128 %add139.i.1941, 1
  %add37.i.i.1812 = add i128 %mul.i.i.1811, %sub23.i.i.1804
  %sub41.i.i.1814 = sub i128 %add19.i.i.1802, %shl28.i.i.1807
  %sub44.i.i.1815 = sub i128 %sub30.i.i.1808, %shr135.i.1939
  %shl46.i.i.1816 = shl nuw nsw i128 %shr135.i.1939, 32
  %sub48.i.i.1817 = sub i128 %sub44.i.i.1815, %shl46.i.i.1816
  %shl50.i.i.1818 = shl nuw nsw i128 %shr135.i.1939, 33
  %add52.i.i.1819 = add i128 %shl50.i.i.1818, %add37.i.i.1812
  %mul54.i.i.1820 = mul nuw nsw i128 %shr135.i.1939, 3
  %add56.i.i.1821 = add i128 %mul54.i.i.1820, %sub41.i.i.1814
  %inc115 = add nuw nsw i32 %i.43830, 1
  %exitcond3852 = icmp eq i32 %inc115, 16
  br i1 %exitcond3852, label %for.end.116, label %for.body.109

for.end.116:                                      ; preds = %for.body.109
  %add56.i.i.1821.lcssa = phi i128 [ %add56.i.i.1821, %for.body.109 ]
  %add52.i.i.1819.lcssa = phi i128 [ %add52.i.i.1819, %for.body.109 ]
  %sub48.i.i.1817.lcssa = phi i128 [ %sub48.i.i.1817, %for.body.109 ]
  %add34.i.i.1810.lcssa = phi i128 [ %add34.i.i.1810, %for.body.109 ]
  %add139.i.1941.lcssa = phi i128 [ %add139.i.1941, %for.body.109 ]
  %shr135.i.1939.lcssa = phi i128 [ %shr135.i.1939, %for.body.109 ]
  %add128.i.1937.lcssa = phi i128 [ %add128.i.1937, %for.body.109 ]
  %add125.i.1936.lcssa = phi i128 [ %add125.i.1936, %for.body.109 ]
  %add81.i.1919.lcssa = phi i128 [ %add81.i.1919, %for.body.109 ]
  %add78.i.1918.lcssa = phi i128 [ %add78.i.1918, %for.body.109 ]
  %add21.i.1892.lcssa = phi i128 [ %add21.i.1892, %for.body.109 ]
  %conv5.i.1884.lcssa = phi i128 [ %conv5.i.1884, %for.body.109 ]
  store i128 %add56.i.i.1821.lcssa, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  store i128 %add52.i.i.1819.lcssa, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  store i128 %sub48.i.i.1817.lcssa, i128* %arraydecay105, align 16, !tbaa !2
  store i128 %add34.i.i.1810.lcssa, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  store i128 %conv5.i.1884.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.1892.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.1918.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.1919.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.1936.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.1937.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.1941.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1939.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %arraydecay57)
  %89 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1615 = add i128 %89, 1267650600228229401427983728624
  %90 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.1617 = add i128 %90, 1267650600228229401496703205376
  %91 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.1620 = add i128 %91, 1267650600228229401427983728656
  %92 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.1623 = add i128 %92, 1267650600228229401427983728656
  %93 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %94 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.1627 = shl i128 %94, 32
  %add.i.i.1628 = add i128 %shl.i.i.1627, %93
  %add3.i.i.1629 = add i128 %add.i.i.1628, %add.i.1615
  %sub.i.i.1630 = sub i128 %add9.i.1623, %add.i.i.1628
  %95 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.1632 = sub i128 %94, %95
  %add9.i.i.1633 = add i128 %sub7.i.i.1632, %add3.i.1617
  %sub11.i.i.1634 = sub i128 %add6.i.1620, %sub7.i.i.1632
  %shl13.i.i.1635 = shl i128 %93, 32
  %sub15.i.i.1636 = sub i128 %add9.i.i.1633, %shl13.i.i.1635
  %add19.i.i.1638 = add i128 %shl13.i.i.1635, %sub.i.i.1630
  %sub23.i.i.1640 = sub i128 %sub11.i.i.1634, %shl.i.i.1627
  %96 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.1642 = sub i128 %add3.i.i.1629, %96
  %shl28.i.i.1643 = shl i128 %96, 32
  %sub30.i.i.1644 = sub i128 %sub26.i.i.1642, %shl28.i.i.1643
  %shl32.i.i.1645 = shl i128 %96, 33
  %add34.i.i.1646 = add i128 %shl32.i.i.1645, %sub15.i.i.1636
  store i128 %add34.i.i.1646, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.1647 = shl i128 %96, 1
  %add37.i.i.1648 = add i128 %mul.i.i.1647, %sub23.i.i.1640
  %sub41.i.i.1650 = sub i128 %add19.i.i.1638, %shl28.i.i.1643
  %sub44.i.i.1651 = sub i128 %sub30.i.i.1644, %95
  %shl46.i.i.1652 = shl i128 %95, 32
  %sub48.i.i.1653 = sub i128 %sub44.i.i.1651, %shl46.i.i.1652
  store i128 %sub48.i.i.1653, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1654 = shl i128 %95, 33
  %add52.i.i.1655 = add i128 %shl50.i.i.1654, %add37.i.i.1648
  store i128 %add52.i.i.1655, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.1656 = mul i128 %95, 3
  %add56.i.i.1657 = add i128 %mul54.i.i.1656, %sub41.i.i.1650
  store i128 %add56.i.i.1657, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  br label %for.body.124

for.body.124:                                     ; preds = %for.body.124, %for.end.116
  %97 = phi i128 [ %add34.i.i.1646, %for.end.116 ], [ %add34.i.i.1482, %for.body.124 ]
  %98 = phi i128 [ %sub48.i.i.1653, %for.end.116 ], [ %sub48.i.i.1489, %for.body.124 ]
  %99 = phi i128 [ %add52.i.i.1655, %for.end.116 ], [ %add52.i.i.1491, %for.body.124 ]
  %100 = phi i128 [ %add56.i.i.1657, %for.end.116 ], [ %add56.i.i.1493, %for.body.124 ]
  %i.53825 = phi i32 [ 0, %for.end.116 ], [ %inc130, %for.body.124 ]
  %add.i.i.1497 = add i128 %100, 18446744069414584320
  %shr.i.i.1499 = lshr i128 %99, 64
  %add8.i.i.1500 = add i128 %add.i.i.1497, %shr.i.i.1499
  %conv12.i.i.1501 = and i128 %99, 18446744073709551615
  %add13.i.i.1502 = add nuw nsw i128 %conv12.i.i.1501, 18446673704965373952
  %add16.i.i.1503 = add i128 %98, 18446744073709551615
  %add19.i.i.1505 = add i128 %97, 1298074214633706907132628377272319
  %shr22.i.i.1506 = lshr i128 %add8.i.i.1500, 64
  %conv23.i.i.1507 = trunc i128 %shr22.i.i.1506 to i64
  %conv26.i.i.1508 = and i128 %add8.i.i.1500, 18446744073709551615
  %sub.i.i.1509 = sub nsw i128 %conv26.i.i.1508, %shr22.i.i.1506
  %shl.i.i.1510 = shl nuw nsw i128 %shr22.i.i.1506, 32
  %add32.i.i.1511 = add nsw i128 %sub.i.i.1509, %shl.i.i.1510
  %shr34.i.i.1512 = lshr i128 %add32.i.i.1511, 64
  %conv35.i.i.1513 = trunc i128 %shr34.i.i.1512 to i64
  %add36.i.i.1514 = add i64 %conv35.i.i.1513, %conv23.i.i.1507
  %conv39.i.i.1515 = and i128 %add32.i.i.1511, 18446744073709551615
  %sub43.i.i.1516 = sub nsw i128 %conv39.i.i.1515, %shr34.i.i.1512
  %shl45.i.i.1517 = shl nuw nsw i128 %shr34.i.i.1512, 32
  %add47.i.i.1518 = add nsw i128 %sub43.i.i.1516, %shl45.i.i.1517
  %conv48.i.i.1519 = zext i64 %add36.i.i.1514 to i128
  %add50.i.i.1520 = add i128 %add16.i.i.1503, %conv48.i.i.1519
  %shl52.i.i.1521 = shl nuw nsw i128 %conv48.i.i.1519, 32
  %sub54.i.i.1522 = sub i128 %add19.i.i.1505, %shl52.i.i.1521
  %shr56.i.i.1523 = lshr i128 %add47.i.i.1518, 64
  %conv57.i.i.1524 = trunc i128 %shr56.i.i.1523 to i64
  %sub58.i.i.1525 = sub i64 0, %conv57.i.i.1524
  %conv60.i.i.1526 = trunc i128 %add47.i.i.1518 to i64
  %and.i.i.1527 = and i64 %conv60.i.i.1526, 9223372036854775807
  %neg.i.i.1528 = sub nsw i64 9223372032559808512, %and.i.i.1527
  %sub62177.i.i.1529 = and i64 %neg.i.i.1528, %conv60.i.i.1526
  %and66.i.i.1530 = ashr i64 %sub62177.i.i.1529, 63
  %or.i.i.1531 = or i64 %and66.i.i.1530, %sub58.i.i.1525
  %conv68.i.i.1532 = zext i64 %or.i.i.1531 to i128
  %sub70.i.i.1533 = sub i128 %add50.i.i.1520, %conv68.i.i.1532
  %and71.i.i.1534 = and i64 %or.i.i.1531, 4294967295
  %conv72.i.i.1535 = zext i64 %and71.i.i.1534 to i128
  %sub74.i.i.1536 = sub i128 %sub54.i.i.1522, %conv72.i.i.1535
  %and75.i.i.1537 = and i64 %or.i.i.1531, -4294967295
  %conv76.i.i.1538 = zext i64 %and75.i.i.1537 to i128
  %sub78.i.i.1539 = sub nsw i128 %add47.i.i.1518, %conv76.i.i.1538
  %shr80.i.i.1540 = lshr i128 %sub70.i.i.1533, 64
  %add84.i.i.1541 = add i128 %sub74.i.i.1536, %shr80.i.i.1540
  %shr90.i.i.1543 = lshr i128 %add84.i.i.1541, 64
  %add94.i.i.1544 = add nuw nsw i128 %add13.i.i.1502, %shr90.i.i.1543
  %shr100.i.i.1546 = lshr i128 %add94.i.i.1544, 64
  %add104.i.i.1547 = add nsw i128 %sub78.i.i.1539, %shr100.i.i.1546
  %conv.i.1553 = and i128 %sub70.i.i.1533, 18446744073709551615
  %mul.i.1554 = mul nuw i128 %conv.i.1553, %conv.i.1553
  %shr.i.1555 = lshr i128 %mul.i.1554, 64
  %conv5.i.1556 = and i128 %mul.i.1554, 18446744073709551615
  %conv12.i.1559 = and i128 %add84.i.i.1541, 18446744073709551615
  %mul13.i.1560 = mul nuw i128 %conv12.i.1559, %conv.i.1553
  %shr15.i.1561 = lshr i128 %mul13.i.1560, 64
  %conv17.i.1562 = shl i128 %mul13.i.1560, 1
  %factor.i.1563 = and i128 %conv17.i.1562, 36893488147419103230
  %add21.i.1564 = add nuw nsw i128 %factor.i.1563, %shr.i.1555
  %conv27.i.1567 = and i128 %add94.i.i.1544, 18446744073709551615
  %mul28.i.1568 = mul nuw i128 %conv27.i.1567, %conv.i.1553
  %shr30.i.1569 = lshr i128 %mul28.i.1568, 64
  %conv32.i.1570 = and i128 %mul28.i.1568, 18446744073709551615
  %add34.i.1571 = add nuw nsw i128 %conv32.i.1570, %shr15.i.1561
  %mul36.i.1572 = shl nuw nsw i128 %add34.i.1571, 1
  %conv42.i.1575 = and i128 %add104.i.i.1547, 18446744073709551615
  %mul43.i.1576 = mul nuw i128 %conv42.i.1575, %conv.i.1553
  %shr45.i.1577 = lshr i128 %mul43.i.1576, 64
  %conv47.i.1578 = and i128 %mul43.i.1576, 18446744073709551615
  %mul56.i.1581 = mul nuw i128 %conv27.i.1567, %conv12.i.1559
  %shr58.i.1582 = lshr i128 %mul56.i.1581, 64
  %conv60.i.1583 = and i128 %mul56.i.1581, 18446744073709551615
  %add49.i.1579 = add nuw nsw i128 %conv60.i.1583, %shr30.i.1569
  %add62.i.1584 = add nuw nsw i128 %add49.i.1579, %conv47.i.1578
  %mul64.i.1585 = shl nuw nsw i128 %add62.i.1584, 1
  %add67.i.1586 = add nuw nsw i128 %shr45.i.1577, %shr58.i.1582
  %mul72.i.1587 = mul nuw i128 %conv12.i.1559, %conv12.i.1559
  %shr74.i.1588 = lshr i128 %mul72.i.1587, 64
  %conv76.i.1589 = and i128 %mul72.i.1587, 18446744073709551615
  %add78.i.1590 = add nuw nsw i128 %mul36.i.1572, %conv76.i.1589
  %add81.i.1591 = add nuw nsw i128 %mul64.i.1585, %shr74.i.1588
  %mul86.i.1592 = mul nuw i128 %conv42.i.1575, %conv12.i.1559
  %shr88.i.1593 = lshr i128 %mul86.i.1592, 64
  %conv90.i.1594 = and i128 %mul86.i.1592, 18446744073709551615
  %add92.i.1595 = add nuw nsw i128 %add67.i.1586, %conv90.i.1594
  %mul94.i.1596 = shl nuw nsw i128 %add92.i.1595, 1
  %mul101.i.1598 = mul nuw i128 %conv42.i.1575, %conv27.i.1567
  %shr103.i.1599 = lshr i128 %mul101.i.1598, 64
  %conv105.i.1600 = and i128 %mul101.i.1598, 18446744073709551615
  %add107.i.1601 = add nuw nsw i128 %conv105.i.1600, %shr88.i.1593
  %mul109.i.1602 = shl nuw nsw i128 %add107.i.1601, 1
  %add114.i.1604 = shl nuw nsw i128 %shr103.i.1599, 1
  %mul119.i.1605 = mul nuw i128 %conv27.i.1567, %conv27.i.1567
  %shr121.i.1606 = lshr i128 %mul119.i.1605, 64
  %conv123.i.1607 = and i128 %mul119.i.1605, 18446744073709551615
  %add125.i.1608 = add nuw nsw i128 %mul94.i.1596, %conv123.i.1607
  %add128.i.1609 = add nuw nsw i128 %mul109.i.1602, %shr121.i.1606
  %mul133.i.1610 = mul nuw i128 %conv42.i.1575, %conv42.i.1575
  %shr135.i.1611 = lshr i128 %mul133.i.1610, 64
  %conv137.i.1612 = and i128 %mul133.i.1610, 18446744073709551615
  %add139.i.1613 = add nuw nsw i128 %add114.i.1604, %conv137.i.1612
  %add.i.1451 = add nuw nsw i128 %conv5.i.1556, 1267650600228229401427983728624
  %add3.i.1453 = or i128 %add21.i.1564, 1267650600228229401496703205376
  %add6.i.1456 = add nuw nsw i128 %add78.i.1590, 1267650600228229401427983728656
  %add9.i.1459 = add nuw nsw i128 %add81.i.1591, 1267650600228229401427983728656
  %shl.i.i.1463 = shl nuw nsw i128 %add128.i.1609, 32
  %add.i.i.1464 = add nuw nsw i128 %shl.i.i.1463, %add125.i.1608
  %add3.i.i.1465 = add nuw nsw i128 %add.i.i.1464, %add.i.1451
  %sub.i.i.1466 = sub nsw i128 %add9.i.1459, %add.i.i.1464
  %sub7.i.i.1468 = sub nsw i128 %add128.i.1609, %shr135.i.1611
  %add9.i.i.1469 = add nsw i128 %sub7.i.i.1468, %add3.i.1453
  %sub11.i.i.1470 = sub nsw i128 %add6.i.1456, %sub7.i.i.1468
  %shl13.i.i.1471 = shl nuw nsw i128 %add125.i.1608, 32
  %sub15.i.i.1472 = sub nsw i128 %add9.i.i.1469, %shl13.i.i.1471
  %add19.i.i.1474 = add i128 %shl13.i.i.1471, %sub.i.i.1466
  %sub23.i.i.1476 = sub nsw i128 %sub11.i.i.1470, %shl.i.i.1463
  %sub26.i.i.1478 = sub i128 %add3.i.i.1465, %add139.i.1613
  %shl28.i.i.1479 = shl nuw nsw i128 %add139.i.1613, 32
  %sub30.i.i.1480 = sub i128 %sub26.i.i.1478, %shl28.i.i.1479
  %shl32.i.i.1481 = shl nuw nsw i128 %add139.i.1613, 33
  %add34.i.i.1482 = add i128 %shl32.i.i.1481, %sub15.i.i.1472
  %mul.i.i.1483 = shl nuw nsw i128 %add139.i.1613, 1
  %add37.i.i.1484 = add i128 %mul.i.i.1483, %sub23.i.i.1476
  %sub41.i.i.1486 = sub i128 %add19.i.i.1474, %shl28.i.i.1479
  %sub44.i.i.1487 = sub i128 %sub30.i.i.1480, %shr135.i.1611
  %shl46.i.i.1488 = shl nuw nsw i128 %shr135.i.1611, 32
  %sub48.i.i.1489 = sub i128 %sub44.i.i.1487, %shl46.i.i.1488
  %shl50.i.i.1490 = shl nuw nsw i128 %shr135.i.1611, 33
  %add52.i.i.1491 = add i128 %shl50.i.i.1490, %add37.i.i.1484
  %mul54.i.i.1492 = mul nuw nsw i128 %shr135.i.1611, 3
  %add56.i.i.1493 = add i128 %mul54.i.i.1492, %sub41.i.i.1486
  %inc130 = add nuw nsw i32 %i.53825, 1
  %exitcond3851 = icmp eq i32 %inc130, 8
  br i1 %exitcond3851, label %for.end.131, label %for.body.124

for.end.131:                                      ; preds = %for.body.124
  %add56.i.i.1493.lcssa = phi i128 [ %add56.i.i.1493, %for.body.124 ]
  %add52.i.i.1491.lcssa = phi i128 [ %add52.i.i.1491, %for.body.124 ]
  %sub48.i.i.1489.lcssa = phi i128 [ %sub48.i.i.1489, %for.body.124 ]
  %add34.i.i.1482.lcssa = phi i128 [ %add34.i.i.1482, %for.body.124 ]
  %add139.i.1613.lcssa = phi i128 [ %add139.i.1613, %for.body.124 ]
  %shr135.i.1611.lcssa = phi i128 [ %shr135.i.1611, %for.body.124 ]
  %add128.i.1609.lcssa = phi i128 [ %add128.i.1609, %for.body.124 ]
  %add125.i.1608.lcssa = phi i128 [ %add125.i.1608, %for.body.124 ]
  %add81.i.1591.lcssa = phi i128 [ %add81.i.1591, %for.body.124 ]
  %add78.i.1590.lcssa = phi i128 [ %add78.i.1590, %for.body.124 ]
  %add21.i.1564.lcssa = phi i128 [ %add21.i.1564, %for.body.124 ]
  %conv5.i.1556.lcssa = phi i128 [ %conv5.i.1556, %for.body.124 ]
  store i128 %add56.i.i.1493.lcssa, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  store i128 %add52.i.i.1491.lcssa, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  store i128 %sub48.i.i.1489.lcssa, i128* %arraydecay105, align 16, !tbaa !2
  store i128 %add34.i.i.1482.lcssa, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  store i128 %conv5.i.1556.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.1564.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.1590.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.1591.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.1608.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.1609.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.1613.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1611.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %arraydecay46)
  %101 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1365 = add i128 %101, 1267650600228229401427983728624
  %102 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.1367 = add i128 %102, 1267650600228229401496703205376
  %103 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.1370 = add i128 %103, 1267650600228229401427983728656
  %104 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.1373 = add i128 %104, 1267650600228229401427983728656
  %105 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %106 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.1377 = shl i128 %106, 32
  %add.i.i.1378 = add i128 %shl.i.i.1377, %105
  %add3.i.i.1379 = add i128 %add.i.i.1378, %add.i.1365
  %sub.i.i.1380 = sub i128 %add9.i.1373, %add.i.i.1378
  %107 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.1382 = sub i128 %106, %107
  %add9.i.i.1383 = add i128 %sub7.i.i.1382, %add3.i.1367
  %sub11.i.i.1384 = sub i128 %add6.i.1370, %sub7.i.i.1382
  %shl13.i.i.1385 = shl i128 %105, 32
  %sub15.i.i.1386 = sub i128 %add9.i.i.1383, %shl13.i.i.1385
  %add19.i.i.1388 = add i128 %shl13.i.i.1385, %sub.i.i.1380
  %sub23.i.i.1390 = sub i128 %sub11.i.i.1384, %shl.i.i.1377
  %108 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.1392 = sub i128 %add3.i.i.1379, %108
  %shl28.i.i.1393 = shl i128 %108, 32
  %sub30.i.i.1394 = sub i128 %sub26.i.i.1392, %shl28.i.i.1393
  %shl32.i.i.1395 = shl i128 %108, 33
  %add34.i.i.1396 = add i128 %shl32.i.i.1395, %sub15.i.i.1386
  store i128 %add34.i.i.1396, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.1397 = shl i128 %108, 1
  %add37.i.i.1398 = add i128 %mul.i.i.1397, %sub23.i.i.1390
  %sub41.i.i.1400 = sub i128 %add19.i.i.1388, %shl28.i.i.1393
  %sub44.i.i.1401 = sub i128 %sub30.i.i.1394, %107
  %shl46.i.i.1402 = shl i128 %107, 32
  %sub48.i.i.1403 = sub i128 %sub44.i.i.1401, %shl46.i.i.1402
  store i128 %sub48.i.i.1403, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1404 = shl i128 %107, 33
  %add52.i.i.1405 = add i128 %shl50.i.i.1404, %add37.i.i.1398
  store i128 %add52.i.i.1405, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.1406 = mul i128 %107, 3
  %add56.i.i.1407 = add i128 %mul54.i.i.1406, %sub41.i.i.1400
  store i128 %add56.i.i.1407, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  br label %for.body.139

for.body.139:                                     ; preds = %for.body.139, %for.end.131
  %109 = phi i128 [ %add34.i.i.1396, %for.end.131 ], [ %add34.i.i.1232, %for.body.139 ]
  %110 = phi i128 [ %sub48.i.i.1403, %for.end.131 ], [ %sub48.i.i.1239, %for.body.139 ]
  %111 = phi i128 [ %add52.i.i.1405, %for.end.131 ], [ %add52.i.i.1241, %for.body.139 ]
  %112 = phi i128 [ %add56.i.i.1407, %for.end.131 ], [ %add56.i.i.1243, %for.body.139 ]
  %i.63824 = phi i32 [ 0, %for.end.131 ], [ %inc145, %for.body.139 ]
  %add.i.i.1247 = add i128 %112, 18446744069414584320
  %shr.i.i.1249 = lshr i128 %111, 64
  %add8.i.i.1250 = add i128 %add.i.i.1247, %shr.i.i.1249
  %conv12.i.i.1251 = and i128 %111, 18446744073709551615
  %add13.i.i.1252 = add nuw nsw i128 %conv12.i.i.1251, 18446673704965373952
  %add16.i.i.1253 = add i128 %110, 18446744073709551615
  %add19.i.i.1255 = add i128 %109, 1298074214633706907132628377272319
  %shr22.i.i.1256 = lshr i128 %add8.i.i.1250, 64
  %conv23.i.i.1257 = trunc i128 %shr22.i.i.1256 to i64
  %conv26.i.i.1258 = and i128 %add8.i.i.1250, 18446744073709551615
  %sub.i.i.1259 = sub nsw i128 %conv26.i.i.1258, %shr22.i.i.1256
  %shl.i.i.1260 = shl nuw nsw i128 %shr22.i.i.1256, 32
  %add32.i.i.1261 = add nsw i128 %sub.i.i.1259, %shl.i.i.1260
  %shr34.i.i.1262 = lshr i128 %add32.i.i.1261, 64
  %conv35.i.i.1263 = trunc i128 %shr34.i.i.1262 to i64
  %add36.i.i.1264 = add i64 %conv35.i.i.1263, %conv23.i.i.1257
  %conv39.i.i.1265 = and i128 %add32.i.i.1261, 18446744073709551615
  %sub43.i.i.1266 = sub nsw i128 %conv39.i.i.1265, %shr34.i.i.1262
  %shl45.i.i.1267 = shl nuw nsw i128 %shr34.i.i.1262, 32
  %add47.i.i.1268 = add nsw i128 %sub43.i.i.1266, %shl45.i.i.1267
  %conv48.i.i.1269 = zext i64 %add36.i.i.1264 to i128
  %add50.i.i.1270 = add i128 %add16.i.i.1253, %conv48.i.i.1269
  %shl52.i.i.1271 = shl nuw nsw i128 %conv48.i.i.1269, 32
  %sub54.i.i.1272 = sub i128 %add19.i.i.1255, %shl52.i.i.1271
  %shr56.i.i.1273 = lshr i128 %add47.i.i.1268, 64
  %conv57.i.i.1274 = trunc i128 %shr56.i.i.1273 to i64
  %sub58.i.i.1275 = sub i64 0, %conv57.i.i.1274
  %conv60.i.i.1276 = trunc i128 %add47.i.i.1268 to i64
  %and.i.i.1277 = and i64 %conv60.i.i.1276, 9223372036854775807
  %neg.i.i.1278 = sub nsw i64 9223372032559808512, %and.i.i.1277
  %sub62177.i.i.1279 = and i64 %neg.i.i.1278, %conv60.i.i.1276
  %and66.i.i.1280 = ashr i64 %sub62177.i.i.1279, 63
  %or.i.i.1281 = or i64 %and66.i.i.1280, %sub58.i.i.1275
  %conv68.i.i.1282 = zext i64 %or.i.i.1281 to i128
  %sub70.i.i.1283 = sub i128 %add50.i.i.1270, %conv68.i.i.1282
  %and71.i.i.1284 = and i64 %or.i.i.1281, 4294967295
  %conv72.i.i.1285 = zext i64 %and71.i.i.1284 to i128
  %sub74.i.i.1286 = sub i128 %sub54.i.i.1272, %conv72.i.i.1285
  %and75.i.i.1287 = and i64 %or.i.i.1281, -4294967295
  %conv76.i.i.1288 = zext i64 %and75.i.i.1287 to i128
  %sub78.i.i.1289 = sub nsw i128 %add47.i.i.1268, %conv76.i.i.1288
  %shr80.i.i.1290 = lshr i128 %sub70.i.i.1283, 64
  %add84.i.i.1291 = add i128 %sub74.i.i.1286, %shr80.i.i.1290
  %shr90.i.i.1293 = lshr i128 %add84.i.i.1291, 64
  %add94.i.i.1294 = add nuw nsw i128 %add13.i.i.1252, %shr90.i.i.1293
  %shr100.i.i.1296 = lshr i128 %add94.i.i.1294, 64
  %add104.i.i.1297 = add nsw i128 %sub78.i.i.1289, %shr100.i.i.1296
  %conv.i.1303 = and i128 %sub70.i.i.1283, 18446744073709551615
  %mul.i.1304 = mul nuw i128 %conv.i.1303, %conv.i.1303
  %shr.i.1305 = lshr i128 %mul.i.1304, 64
  %conv5.i.1306 = and i128 %mul.i.1304, 18446744073709551615
  %conv12.i.1309 = and i128 %add84.i.i.1291, 18446744073709551615
  %mul13.i.1310 = mul nuw i128 %conv12.i.1309, %conv.i.1303
  %shr15.i.1311 = lshr i128 %mul13.i.1310, 64
  %conv17.i.1312 = shl i128 %mul13.i.1310, 1
  %factor.i.1313 = and i128 %conv17.i.1312, 36893488147419103230
  %add21.i.1314 = add nuw nsw i128 %factor.i.1313, %shr.i.1305
  %conv27.i.1317 = and i128 %add94.i.i.1294, 18446744073709551615
  %mul28.i.1318 = mul nuw i128 %conv27.i.1317, %conv.i.1303
  %shr30.i.1319 = lshr i128 %mul28.i.1318, 64
  %conv32.i.1320 = and i128 %mul28.i.1318, 18446744073709551615
  %add34.i.1321 = add nuw nsw i128 %conv32.i.1320, %shr15.i.1311
  %mul36.i.1322 = shl nuw nsw i128 %add34.i.1321, 1
  %conv42.i.1325 = and i128 %add104.i.i.1297, 18446744073709551615
  %mul43.i.1326 = mul nuw i128 %conv42.i.1325, %conv.i.1303
  %shr45.i.1327 = lshr i128 %mul43.i.1326, 64
  %conv47.i.1328 = and i128 %mul43.i.1326, 18446744073709551615
  %mul56.i.1331 = mul nuw i128 %conv27.i.1317, %conv12.i.1309
  %shr58.i.1332 = lshr i128 %mul56.i.1331, 64
  %conv60.i.1333 = and i128 %mul56.i.1331, 18446744073709551615
  %add49.i.1329 = add nuw nsw i128 %conv60.i.1333, %shr30.i.1319
  %add62.i.1334 = add nuw nsw i128 %add49.i.1329, %conv47.i.1328
  %mul64.i.1335 = shl nuw nsw i128 %add62.i.1334, 1
  %add67.i.1336 = add nuw nsw i128 %shr45.i.1327, %shr58.i.1332
  %mul72.i.1337 = mul nuw i128 %conv12.i.1309, %conv12.i.1309
  %shr74.i.1338 = lshr i128 %mul72.i.1337, 64
  %conv76.i.1339 = and i128 %mul72.i.1337, 18446744073709551615
  %add78.i.1340 = add nuw nsw i128 %mul36.i.1322, %conv76.i.1339
  %add81.i.1341 = add nuw nsw i128 %mul64.i.1335, %shr74.i.1338
  %mul86.i.1342 = mul nuw i128 %conv42.i.1325, %conv12.i.1309
  %shr88.i.1343 = lshr i128 %mul86.i.1342, 64
  %conv90.i.1344 = and i128 %mul86.i.1342, 18446744073709551615
  %add92.i.1345 = add nuw nsw i128 %add67.i.1336, %conv90.i.1344
  %mul94.i.1346 = shl nuw nsw i128 %add92.i.1345, 1
  %mul101.i.1348 = mul nuw i128 %conv42.i.1325, %conv27.i.1317
  %shr103.i.1349 = lshr i128 %mul101.i.1348, 64
  %conv105.i.1350 = and i128 %mul101.i.1348, 18446744073709551615
  %add107.i.1351 = add nuw nsw i128 %conv105.i.1350, %shr88.i.1343
  %mul109.i.1352 = shl nuw nsw i128 %add107.i.1351, 1
  %add114.i.1354 = shl nuw nsw i128 %shr103.i.1349, 1
  %mul119.i.1355 = mul nuw i128 %conv27.i.1317, %conv27.i.1317
  %shr121.i.1356 = lshr i128 %mul119.i.1355, 64
  %conv123.i.1357 = and i128 %mul119.i.1355, 18446744073709551615
  %add125.i.1358 = add nuw nsw i128 %mul94.i.1346, %conv123.i.1357
  %add128.i.1359 = add nuw nsw i128 %mul109.i.1352, %shr121.i.1356
  %mul133.i.1360 = mul nuw i128 %conv42.i.1325, %conv42.i.1325
  %shr135.i.1361 = lshr i128 %mul133.i.1360, 64
  %conv137.i.1362 = and i128 %mul133.i.1360, 18446744073709551615
  %add139.i.1363 = add nuw nsw i128 %add114.i.1354, %conv137.i.1362
  %add.i.1201 = add nuw nsw i128 %conv5.i.1306, 1267650600228229401427983728624
  %add3.i.1203 = or i128 %add21.i.1314, 1267650600228229401496703205376
  %add6.i.1206 = add nuw nsw i128 %add78.i.1340, 1267650600228229401427983728656
  %add9.i.1209 = add nuw nsw i128 %add81.i.1341, 1267650600228229401427983728656
  %shl.i.i.1213 = shl nuw nsw i128 %add128.i.1359, 32
  %add.i.i.1214 = add nuw nsw i128 %shl.i.i.1213, %add125.i.1358
  %add3.i.i.1215 = add nuw nsw i128 %add.i.i.1214, %add.i.1201
  %sub.i.i.1216 = sub nsw i128 %add9.i.1209, %add.i.i.1214
  %sub7.i.i.1218 = sub nsw i128 %add128.i.1359, %shr135.i.1361
  %add9.i.i.1219 = add nsw i128 %sub7.i.i.1218, %add3.i.1203
  %sub11.i.i.1220 = sub nsw i128 %add6.i.1206, %sub7.i.i.1218
  %shl13.i.i.1221 = shl nuw nsw i128 %add125.i.1358, 32
  %sub15.i.i.1222 = sub nsw i128 %add9.i.i.1219, %shl13.i.i.1221
  %add19.i.i.1224 = add i128 %shl13.i.i.1221, %sub.i.i.1216
  %sub23.i.i.1226 = sub nsw i128 %sub11.i.i.1220, %shl.i.i.1213
  %sub26.i.i.1228 = sub i128 %add3.i.i.1215, %add139.i.1363
  %shl28.i.i.1229 = shl nuw nsw i128 %add139.i.1363, 32
  %sub30.i.i.1230 = sub i128 %sub26.i.i.1228, %shl28.i.i.1229
  %shl32.i.i.1231 = shl nuw nsw i128 %add139.i.1363, 33
  %add34.i.i.1232 = add i128 %shl32.i.i.1231, %sub15.i.i.1222
  %mul.i.i.1233 = shl nuw nsw i128 %add139.i.1363, 1
  %add37.i.i.1234 = add i128 %mul.i.i.1233, %sub23.i.i.1226
  %sub41.i.i.1236 = sub i128 %add19.i.i.1224, %shl28.i.i.1229
  %sub44.i.i.1237 = sub i128 %sub30.i.i.1230, %shr135.i.1361
  %shl46.i.i.1238 = shl nuw nsw i128 %shr135.i.1361, 32
  %sub48.i.i.1239 = sub i128 %sub44.i.i.1237, %shl46.i.i.1238
  %shl50.i.i.1240 = shl nuw nsw i128 %shr135.i.1361, 33
  %add52.i.i.1241 = add i128 %shl50.i.i.1240, %add37.i.i.1234
  %mul54.i.i.1242 = mul nuw nsw i128 %shr135.i.1361, 3
  %add56.i.i.1243 = add i128 %mul54.i.i.1242, %sub41.i.i.1236
  %inc145 = add nuw nsw i32 %i.63824, 1
  %exitcond = icmp eq i32 %inc145, 4
  br i1 %exitcond, label %for.end.146, label %for.body.139

for.end.146:                                      ; preds = %for.body.139
  %add56.i.i.1243.lcssa = phi i128 [ %add56.i.i.1243, %for.body.139 ]
  %add52.i.i.1241.lcssa = phi i128 [ %add52.i.i.1241, %for.body.139 ]
  %sub48.i.i.1239.lcssa = phi i128 [ %sub48.i.i.1239, %for.body.139 ]
  %add34.i.i.1232.lcssa = phi i128 [ %add34.i.i.1232, %for.body.139 ]
  %add139.i.1363.lcssa = phi i128 [ %add139.i.1363, %for.body.139 ]
  %shr135.i.1361.lcssa = phi i128 [ %shr135.i.1361, %for.body.139 ]
  %add128.i.1359.lcssa = phi i128 [ %add128.i.1359, %for.body.139 ]
  %add125.i.1358.lcssa = phi i128 [ %add125.i.1358, %for.body.139 ]
  %add81.i.1341.lcssa = phi i128 [ %add81.i.1341, %for.body.139 ]
  %add78.i.1340.lcssa = phi i128 [ %add78.i.1340, %for.body.139 ]
  %add21.i.1314.lcssa = phi i128 [ %add21.i.1314, %for.body.139 ]
  %conv5.i.1306.lcssa = phi i128 [ %conv5.i.1306, %for.body.139 ]
  store i128 %add56.i.i.1243.lcssa, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  store i128 %add52.i.i.1241.lcssa, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  store i128 %sub48.i.i.1239.lcssa, i128* %arraydecay105, align 16, !tbaa !2
  store i128 %add34.i.i.1232.lcssa, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  store i128 %conv5.i.1306.lcssa, i128* %arraydecay, align 16, !tbaa !2
  store i128 %add21.i.1314.lcssa, i128* %arrayidx8.i, align 16, !tbaa !2
  store i128 %add78.i.1340.lcssa, i128* %arrayidx23.i, align 16, !tbaa !2
  store i128 %add81.i.1341.lcssa, i128* %arrayidx38.i, align 16, !tbaa !2
  store i128 %add125.i.1358.lcssa, i128* %arrayidx51.i, align 16, !tbaa !2
  store i128 %add128.i.1359.lcssa, i128* %arrayidx96.i, align 16, !tbaa !2
  store i128 %add139.i.1363.lcssa, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1361.lcssa, i128* %arrayidx141.i, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %arraydecay23)
  %113 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1037 = add i128 %113, 1267650600228229401427983728624
  %114 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.1039 = add i128 %114, 1267650600228229401496703205376
  %115 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.1042 = add i128 %115, 1267650600228229401427983728656
  %116 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.1045 = add i128 %116, 1267650600228229401427983728656
  %117 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %118 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.1049 = shl i128 %118, 32
  %add.i.i.1050 = add i128 %shl.i.i.1049, %117
  %add3.i.i.1051 = add i128 %add.i.i.1050, %add.i.1037
  %sub.i.i.1052 = sub i128 %add9.i.1045, %add.i.i.1050
  %119 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.1054 = sub i128 %118, %119
  %add9.i.i.1055 = add i128 %sub7.i.i.1054, %add3.i.1039
  %sub11.i.i.1056 = sub i128 %add6.i.1042, %sub7.i.i.1054
  %shl13.i.i.1057 = shl i128 %117, 32
  %sub15.i.i.1058 = sub i128 %add9.i.i.1055, %shl13.i.i.1057
  %add19.i.i.1060 = add i128 %shl13.i.i.1057, %sub.i.i.1052
  %sub23.i.i.1062 = sub i128 %sub11.i.i.1056, %shl.i.i.1049
  %120 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.1064 = sub i128 %add3.i.i.1051, %120
  %shl28.i.i.1065 = shl i128 %120, 32
  %sub30.i.i.1066 = sub i128 %sub26.i.i.1064, %shl28.i.i.1065
  %shl32.i.i.1067 = shl i128 %120, 33
  %add34.i.i.1068 = add i128 %shl32.i.i.1067, %sub15.i.i.1058
  store i128 %add34.i.i.1068, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.1069 = shl i128 %120, 1
  %add37.i.i.1070 = add i128 %mul.i.i.1069, %sub23.i.i.1062
  %sub41.i.i.1072 = sub i128 %add19.i.i.1060, %shl28.i.i.1065
  %sub44.i.i.1073 = sub i128 %sub30.i.i.1066, %119
  %shl46.i.i.1074 = shl i128 %119, 32
  %sub48.i.i.1075 = sub i128 %sub44.i.i.1073, %shl46.i.i.1074
  store i128 %sub48.i.i.1075, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1076 = shl i128 %119, 33
  %add52.i.i.1077 = add i128 %shl50.i.i.1076, %add37.i.i.1070
  store i128 %add52.i.i.1077, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.1078 = mul i128 %119, 3
  %add56.i.i.1079 = add i128 %mul54.i.i.1078, %sub41.i.i.1072
  store i128 %add56.i.i.1079, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  %add.i.i.919 = add i128 %add56.i.i.1079, 18446744069414584320
  %shr.i.i.921 = lshr i128 %add52.i.i.1077, 64
  %add8.i.i.922 = add i128 %add.i.i.919, %shr.i.i.921
  %conv12.i.i.923 = and i128 %add52.i.i.1077, 18446744073709551615
  %add13.i.i.924 = add nuw nsw i128 %conv12.i.i.923, 18446673704965373952
  %add16.i.i.925 = add i128 %sub48.i.i.1075, 18446744073709551615
  %add19.i.i.927 = add i128 %add34.i.i.1068, 1298074214633706907132628377272319
  %shr22.i.i.928 = lshr i128 %add8.i.i.922, 64
  %conv23.i.i.929 = trunc i128 %shr22.i.i.928 to i64
  %conv26.i.i.930 = and i128 %add8.i.i.922, 18446744073709551615
  %sub.i.i.931 = sub nsw i128 %conv26.i.i.930, %shr22.i.i.928
  %shl.i.i.932 = shl nuw nsw i128 %shr22.i.i.928, 32
  %add32.i.i.933 = add nsw i128 %sub.i.i.931, %shl.i.i.932
  %shr34.i.i.934 = lshr i128 %add32.i.i.933, 64
  %conv35.i.i.935 = trunc i128 %shr34.i.i.934 to i64
  %add36.i.i.936 = add i64 %conv35.i.i.935, %conv23.i.i.929
  %conv39.i.i.937 = and i128 %add32.i.i.933, 18446744073709551615
  %sub43.i.i.938 = sub nsw i128 %conv39.i.i.937, %shr34.i.i.934
  %shl45.i.i.939 = shl nuw nsw i128 %shr34.i.i.934, 32
  %add47.i.i.940 = add nsw i128 %sub43.i.i.938, %shl45.i.i.939
  %conv48.i.i.941 = zext i64 %add36.i.i.936 to i128
  %add50.i.i.942 = add i128 %add16.i.i.925, %conv48.i.i.941
  %shl52.i.i.943 = shl nuw nsw i128 %conv48.i.i.941, 32
  %sub54.i.i.944 = sub i128 %add19.i.i.927, %shl52.i.i.943
  %shr56.i.i.945 = lshr i128 %add47.i.i.940, 64
  %conv57.i.i.946 = trunc i128 %shr56.i.i.945 to i64
  %sub58.i.i.947 = sub i64 0, %conv57.i.i.946
  %conv60.i.i.948 = trunc i128 %add47.i.i.940 to i64
  %and.i.i.949 = and i64 %conv60.i.i.948, 9223372036854775807
  %neg.i.i.950 = sub nsw i64 9223372032559808512, %and.i.i.949
  %sub62177.i.i.951 = and i64 %neg.i.i.950, %conv60.i.i.948
  %and66.i.i.952 = ashr i64 %sub62177.i.i.951, 63
  %or.i.i.953 = or i64 %and66.i.i.952, %sub58.i.i.947
  %conv68.i.i.954 = zext i64 %or.i.i.953 to i128
  %sub70.i.i.955 = sub i128 %add50.i.i.942, %conv68.i.i.954
  %and71.i.i.956 = and i64 %or.i.i.953, 4294967295
  %conv72.i.i.957 = zext i64 %and71.i.i.956 to i128
  %sub74.i.i.958 = sub i128 %sub54.i.i.944, %conv72.i.i.957
  %and75.i.i.959 = and i64 %or.i.i.953, -4294967295
  %conv76.i.i.960 = zext i64 %and75.i.i.959 to i128
  %sub78.i.i.961 = sub nsw i128 %add47.i.i.940, %conv76.i.i.960
  %shr80.i.i.962 = lshr i128 %sub70.i.i.955, 64
  %add84.i.i.963 = add i128 %sub74.i.i.958, %shr80.i.i.962
  %shr90.i.i.965 = lshr i128 %add84.i.i.963, 64
  %add94.i.i.966 = add nuw nsw i128 %add13.i.i.924, %shr90.i.i.965
  %shr100.i.i.968 = lshr i128 %add94.i.i.966, 64
  %add104.i.i.969 = add nsw i128 %sub78.i.i.961, %shr100.i.i.968
  %conv.i.975 = and i128 %sub70.i.i.955, 18446744073709551615
  %mul.i.976 = mul nuw i128 %conv.i.975, %conv.i.975
  %shr.i.977 = lshr i128 %mul.i.976, 64
  %conv5.i.978 = and i128 %mul.i.976, 18446744073709551615
  store i128 %conv5.i.978, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.981 = and i128 %add84.i.i.963, 18446744073709551615
  %mul13.i.982 = mul nuw i128 %conv12.i.981, %conv.i.975
  %shr15.i.983 = lshr i128 %mul13.i.982, 64
  %conv17.i.984 = shl i128 %mul13.i.982, 1
  %factor.i.985 = and i128 %conv17.i.984, 36893488147419103230
  %add21.i.986 = add nuw nsw i128 %factor.i.985, %shr.i.977
  store i128 %add21.i.986, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.989 = and i128 %add94.i.i.966, 18446744073709551615
  %mul28.i.990 = mul nuw i128 %conv27.i.989, %conv.i.975
  %shr30.i.991 = lshr i128 %mul28.i.990, 64
  %conv32.i.992 = and i128 %mul28.i.990, 18446744073709551615
  %add34.i.993 = add nuw nsw i128 %conv32.i.992, %shr15.i.983
  %mul36.i.994 = shl nuw nsw i128 %add34.i.993, 1
  %conv42.i.997 = and i128 %add104.i.i.969, 18446744073709551615
  %mul43.i.998 = mul nuw i128 %conv42.i.997, %conv.i.975
  %shr45.i.999 = lshr i128 %mul43.i.998, 64
  %conv47.i.1000 = and i128 %mul43.i.998, 18446744073709551615
  %mul56.i.1003 = mul nuw i128 %conv27.i.989, %conv12.i.981
  %shr58.i.1004 = lshr i128 %mul56.i.1003, 64
  %conv60.i.1005 = and i128 %mul56.i.1003, 18446744073709551615
  %add49.i.1001 = add nuw nsw i128 %conv60.i.1005, %shr30.i.991
  %add62.i.1006 = add nuw nsw i128 %add49.i.1001, %conv47.i.1000
  %mul64.i.1007 = shl nuw nsw i128 %add62.i.1006, 1
  %add67.i.1008 = add nuw nsw i128 %shr45.i.999, %shr58.i.1004
  %mul72.i.1009 = mul nuw i128 %conv12.i.981, %conv12.i.981
  %shr74.i.1010 = lshr i128 %mul72.i.1009, 64
  %conv76.i.1011 = and i128 %mul72.i.1009, 18446744073709551615
  %add78.i.1012 = add nuw nsw i128 %mul36.i.994, %conv76.i.1011
  store i128 %add78.i.1012, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.1013 = add nuw nsw i128 %mul64.i.1007, %shr74.i.1010
  store i128 %add81.i.1013, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.1014 = mul nuw i128 %conv42.i.997, %conv12.i.981
  %shr88.i.1015 = lshr i128 %mul86.i.1014, 64
  %conv90.i.1016 = and i128 %mul86.i.1014, 18446744073709551615
  %add92.i.1017 = add nuw nsw i128 %add67.i.1008, %conv90.i.1016
  %mul94.i.1018 = shl nuw nsw i128 %add92.i.1017, 1
  %mul101.i.1020 = mul nuw i128 %conv42.i.997, %conv27.i.989
  %shr103.i.1021 = lshr i128 %mul101.i.1020, 64
  %conv105.i.1022 = and i128 %mul101.i.1020, 18446744073709551615
  %add107.i.1023 = add nuw nsw i128 %conv105.i.1022, %shr88.i.1015
  %mul109.i.1024 = shl nuw nsw i128 %add107.i.1023, 1
  %add114.i.1026 = shl nuw nsw i128 %shr103.i.1021, 1
  %mul119.i.1027 = mul nuw i128 %conv27.i.989, %conv27.i.989
  %shr121.i.1028 = lshr i128 %mul119.i.1027, 64
  %conv123.i.1029 = and i128 %mul119.i.1027, 18446744073709551615
  %add125.i.1030 = add nuw nsw i128 %mul94.i.1018, %conv123.i.1029
  store i128 %add125.i.1030, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.1031 = add nuw nsw i128 %mul109.i.1024, %shr121.i.1028
  store i128 %add128.i.1031, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.1032 = mul nuw i128 %conv42.i.997, %conv42.i.997
  %shr135.i.1033 = lshr i128 %mul133.i.1032, 64
  %conv137.i.1034 = and i128 %mul133.i.1032, 18446744073709551615
  %add139.i.1035 = add nuw nsw i128 %add114.i.1026, %conv137.i.1034
  store i128 %add139.i.1035, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.1033, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.873 = add nuw nsw i128 %conv5.i.978, 1267650600228229401427983728624
  %add3.i.875 = or i128 %add21.i.986, 1267650600228229401496703205376
  %add6.i.878 = add nuw nsw i128 %add78.i.1012, 1267650600228229401427983728656
  %add9.i.881 = add nuw nsw i128 %add81.i.1013, 1267650600228229401427983728656
  %shl.i.i.885 = shl nuw nsw i128 %add128.i.1031, 32
  %add.i.i.886 = add nuw nsw i128 %shl.i.i.885, %add125.i.1030
  %add3.i.i.887 = add nuw nsw i128 %add.i.i.886, %add.i.873
  %sub.i.i.888 = sub nsw i128 %add9.i.881, %add.i.i.886
  %sub7.i.i.890 = sub nsw i128 %add128.i.1031, %shr135.i.1033
  %add9.i.i.891 = add nsw i128 %sub7.i.i.890, %add3.i.875
  %sub11.i.i.892 = sub nsw i128 %add6.i.878, %sub7.i.i.890
  %shl13.i.i.893 = shl nuw nsw i128 %add125.i.1030, 32
  %sub15.i.i.894 = sub nsw i128 %add9.i.i.891, %shl13.i.i.893
  %add19.i.i.896 = add i128 %shl13.i.i.893, %sub.i.i.888
  %sub23.i.i.898 = sub nsw i128 %sub11.i.i.892, %shl.i.i.885
  %sub26.i.i.900 = sub i128 %add3.i.i.887, %add139.i.1035
  %shl28.i.i.901 = shl nuw nsw i128 %add139.i.1035, 32
  %sub30.i.i.902 = sub i128 %sub26.i.i.900, %shl28.i.i.901
  %shl32.i.i.903 = shl nuw nsw i128 %add139.i.1035, 33
  %add34.i.i.904 = add i128 %shl32.i.i.903, %sub15.i.i.894
  store i128 %add34.i.i.904, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.905 = shl nuw nsw i128 %add139.i.1035, 1
  %add37.i.i.906 = add i128 %mul.i.i.905, %sub23.i.i.898
  %sub41.i.i.908 = sub i128 %add19.i.i.896, %shl28.i.i.901
  %sub44.i.i.909 = sub i128 %sub30.i.i.902, %shr135.i.1033
  %shl46.i.i.910 = shl nuw nsw i128 %shr135.i.1033, 32
  %sub48.i.i.911 = sub i128 %sub44.i.i.909, %shl46.i.i.910
  store i128 %sub48.i.i.911, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.912 = shl nuw nsw i128 %shr135.i.1033, 33
  %add52.i.i.913 = add i128 %shl50.i.i.912, %add37.i.i.906
  store i128 %add52.i.i.913, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.914 = mul nuw nsw i128 %shr135.i.1033, 3
  %add56.i.i.915 = add i128 %mul54.i.i.914, %sub41.i.i.908
  store i128 %add56.i.i.915, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  %add.i.i.755 = add i128 %add56.i.i.915, 18446744069414584320
  %shr.i.i.757 = lshr i128 %add52.i.i.913, 64
  %add8.i.i.758 = add i128 %add.i.i.755, %shr.i.i.757
  %conv12.i.i.759 = and i128 %add52.i.i.913, 18446744073709551615
  %add13.i.i.760 = add nuw nsw i128 %conv12.i.i.759, 18446673704965373952
  %add16.i.i.761 = add i128 %sub48.i.i.911, 18446744073709551615
  %add19.i.i.763 = add i128 %add34.i.i.904, 1298074214633706907132628377272319
  %shr22.i.i.764 = lshr i128 %add8.i.i.758, 64
  %conv23.i.i.765 = trunc i128 %shr22.i.i.764 to i64
  %conv26.i.i.766 = and i128 %add8.i.i.758, 18446744073709551615
  %sub.i.i.767 = sub nsw i128 %conv26.i.i.766, %shr22.i.i.764
  %shl.i.i.768 = shl nuw nsw i128 %shr22.i.i.764, 32
  %add32.i.i.769 = add nsw i128 %sub.i.i.767, %shl.i.i.768
  %shr34.i.i.770 = lshr i128 %add32.i.i.769, 64
  %conv35.i.i.771 = trunc i128 %shr34.i.i.770 to i64
  %add36.i.i.772 = add i64 %conv35.i.i.771, %conv23.i.i.765
  %conv39.i.i.773 = and i128 %add32.i.i.769, 18446744073709551615
  %sub43.i.i.774 = sub nsw i128 %conv39.i.i.773, %shr34.i.i.770
  %shl45.i.i.775 = shl nuw nsw i128 %shr34.i.i.770, 32
  %add47.i.i.776 = add nsw i128 %sub43.i.i.774, %shl45.i.i.775
  %conv48.i.i.777 = zext i64 %add36.i.i.772 to i128
  %add50.i.i.778 = add i128 %add16.i.i.761, %conv48.i.i.777
  %shl52.i.i.779 = shl nuw nsw i128 %conv48.i.i.777, 32
  %sub54.i.i.780 = sub i128 %add19.i.i.763, %shl52.i.i.779
  %shr56.i.i.781 = lshr i128 %add47.i.i.776, 64
  %conv57.i.i.782 = trunc i128 %shr56.i.i.781 to i64
  %sub58.i.i.783 = sub i64 0, %conv57.i.i.782
  %conv60.i.i.784 = trunc i128 %add47.i.i.776 to i64
  %and.i.i.785 = and i64 %conv60.i.i.784, 9223372036854775807
  %neg.i.i.786 = sub nsw i64 9223372032559808512, %and.i.i.785
  %sub62177.i.i.787 = and i64 %neg.i.i.786, %conv60.i.i.784
  %and66.i.i.788 = ashr i64 %sub62177.i.i.787, 63
  %or.i.i.789 = or i64 %and66.i.i.788, %sub58.i.i.783
  %conv68.i.i.790 = zext i64 %or.i.i.789 to i128
  %sub70.i.i.791 = sub i128 %add50.i.i.778, %conv68.i.i.790
  %and71.i.i.792 = and i64 %or.i.i.789, 4294967295
  %conv72.i.i.793 = zext i64 %and71.i.i.792 to i128
  %sub74.i.i.794 = sub i128 %sub54.i.i.780, %conv72.i.i.793
  %and75.i.i.795 = and i64 %or.i.i.789, -4294967295
  %conv76.i.i.796 = zext i64 %and75.i.i.795 to i128
  %sub78.i.i.797 = sub nsw i128 %add47.i.i.776, %conv76.i.i.796
  %shr80.i.i.798 = lshr i128 %sub70.i.i.791, 64
  %add84.i.i.799 = add i128 %sub74.i.i.794, %shr80.i.i.798
  %shr90.i.i.801 = lshr i128 %add84.i.i.799, 64
  %add94.i.i.802 = add nuw nsw i128 %add13.i.i.760, %shr90.i.i.801
  %shr100.i.i.804 = lshr i128 %add94.i.i.802, 64
  %add104.i.i.805 = add nsw i128 %sub78.i.i.797, %shr100.i.i.804
  %conv.i.811 = and i128 %sub70.i.i.791, 18446744073709551615
  %mul.i.812 = mul nuw i128 %conv.i.811, %conv.i.811
  %shr.i.813 = lshr i128 %mul.i.812, 64
  %conv5.i.814 = and i128 %mul.i.812, 18446744073709551615
  store i128 %conv5.i.814, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.817 = and i128 %add84.i.i.799, 18446744073709551615
  %mul13.i.818 = mul nuw i128 %conv12.i.817, %conv.i.811
  %shr15.i.819 = lshr i128 %mul13.i.818, 64
  %conv17.i.820 = shl i128 %mul13.i.818, 1
  %factor.i.821 = and i128 %conv17.i.820, 36893488147419103230
  %add21.i.822 = add nuw nsw i128 %factor.i.821, %shr.i.813
  store i128 %add21.i.822, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.825 = and i128 %add94.i.i.802, 18446744073709551615
  %mul28.i.826 = mul nuw i128 %conv27.i.825, %conv.i.811
  %shr30.i.827 = lshr i128 %mul28.i.826, 64
  %conv32.i.828 = and i128 %mul28.i.826, 18446744073709551615
  %add34.i.829 = add nuw nsw i128 %conv32.i.828, %shr15.i.819
  %mul36.i.830 = shl nuw nsw i128 %add34.i.829, 1
  %conv42.i.833 = and i128 %add104.i.i.805, 18446744073709551615
  %mul43.i.834 = mul nuw i128 %conv42.i.833, %conv.i.811
  %shr45.i.835 = lshr i128 %mul43.i.834, 64
  %conv47.i.836 = and i128 %mul43.i.834, 18446744073709551615
  %mul56.i.839 = mul nuw i128 %conv27.i.825, %conv12.i.817
  %shr58.i.840 = lshr i128 %mul56.i.839, 64
  %conv60.i.841 = and i128 %mul56.i.839, 18446744073709551615
  %add49.i.837 = add nuw nsw i128 %conv60.i.841, %shr30.i.827
  %add62.i.842 = add nuw nsw i128 %add49.i.837, %conv47.i.836
  %mul64.i.843 = shl nuw nsw i128 %add62.i.842, 1
  %add67.i.844 = add nuw nsw i128 %shr45.i.835, %shr58.i.840
  %mul72.i.845 = mul nuw i128 %conv12.i.817, %conv12.i.817
  %shr74.i.846 = lshr i128 %mul72.i.845, 64
  %conv76.i.847 = and i128 %mul72.i.845, 18446744073709551615
  %add78.i.848 = add nuw nsw i128 %mul36.i.830, %conv76.i.847
  store i128 %add78.i.848, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.849 = add nuw nsw i128 %mul64.i.843, %shr74.i.846
  store i128 %add81.i.849, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.850 = mul nuw i128 %conv42.i.833, %conv12.i.817
  %shr88.i.851 = lshr i128 %mul86.i.850, 64
  %conv90.i.852 = and i128 %mul86.i.850, 18446744073709551615
  %add92.i.853 = add nuw nsw i128 %add67.i.844, %conv90.i.852
  %mul94.i.854 = shl nuw nsw i128 %add92.i.853, 1
  %mul101.i.856 = mul nuw i128 %conv42.i.833, %conv27.i.825
  %shr103.i.857 = lshr i128 %mul101.i.856, 64
  %conv105.i.858 = and i128 %mul101.i.856, 18446744073709551615
  %add107.i.859 = add nuw nsw i128 %conv105.i.858, %shr88.i.851
  %mul109.i.860 = shl nuw nsw i128 %add107.i.859, 1
  %add114.i.862 = shl nuw nsw i128 %shr103.i.857, 1
  %mul119.i.863 = mul nuw i128 %conv27.i.825, %conv27.i.825
  %shr121.i.864 = lshr i128 %mul119.i.863, 64
  %conv123.i.865 = and i128 %mul119.i.863, 18446744073709551615
  %add125.i.866 = add nuw nsw i128 %mul94.i.854, %conv123.i.865
  store i128 %add125.i.866, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.867 = add nuw nsw i128 %mul109.i.860, %shr121.i.864
  store i128 %add128.i.867, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.868 = mul nuw i128 %conv42.i.833, %conv42.i.833
  %shr135.i.869 = lshr i128 %mul133.i.868, 64
  %conv137.i.870 = and i128 %mul133.i.868, 18446744073709551615
  %add139.i.871 = add nuw nsw i128 %add114.i.862, %conv137.i.870
  store i128 %add139.i.871, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.869, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.709 = add nuw nsw i128 %conv5.i.814, 1267650600228229401427983728624
  %add3.i.711 = or i128 %add21.i.822, 1267650600228229401496703205376
  %add6.i.714 = add nuw nsw i128 %add78.i.848, 1267650600228229401427983728656
  %add9.i.717 = add nuw nsw i128 %add81.i.849, 1267650600228229401427983728656
  %shl.i.i.721 = shl nuw nsw i128 %add128.i.867, 32
  %add.i.i.722 = add nuw nsw i128 %shl.i.i.721, %add125.i.866
  %add3.i.i.723 = add nuw nsw i128 %add.i.i.722, %add.i.709
  %sub.i.i.724 = sub nsw i128 %add9.i.717, %add.i.i.722
  %sub7.i.i.726 = sub nsw i128 %add128.i.867, %shr135.i.869
  %add9.i.i.727 = add nsw i128 %sub7.i.i.726, %add3.i.711
  %sub11.i.i.728 = sub nsw i128 %add6.i.714, %sub7.i.i.726
  %shl13.i.i.729 = shl nuw nsw i128 %add125.i.866, 32
  %sub15.i.i.730 = sub nsw i128 %add9.i.i.727, %shl13.i.i.729
  %add19.i.i.732 = add i128 %shl13.i.i.729, %sub.i.i.724
  %sub23.i.i.734 = sub nsw i128 %sub11.i.i.728, %shl.i.i.721
  %sub26.i.i.736 = sub i128 %add3.i.i.723, %add139.i.871
  %shl28.i.i.737 = shl nuw nsw i128 %add139.i.871, 32
  %sub30.i.i.738 = sub i128 %sub26.i.i.736, %shl28.i.i.737
  %shl32.i.i.739 = shl nuw nsw i128 %add139.i.871, 33
  %add34.i.i.740 = add i128 %shl32.i.i.739, %sub15.i.i.730
  store i128 %add34.i.i.740, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.741 = shl nuw nsw i128 %add139.i.871, 1
  %add37.i.i.742 = add i128 %mul.i.i.741, %sub23.i.i.734
  %sub41.i.i.744 = sub i128 %add19.i.i.732, %shl28.i.i.737
  %sub44.i.i.745 = sub i128 %sub30.i.i.738, %shr135.i.869
  %shl46.i.i.746 = shl nuw nsw i128 %shr135.i.869, 32
  %sub48.i.i.747 = sub i128 %sub44.i.i.745, %shl46.i.i.746
  store i128 %sub48.i.i.747, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.748 = shl nuw nsw i128 %shr135.i.869, 33
  %add52.i.i.749 = add i128 %shl50.i.i.748, %add37.i.i.742
  store i128 %add52.i.i.749, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.750 = mul nuw nsw i128 %shr135.i.869, 3
  %add56.i.i.751 = add i128 %mul54.i.i.750, %sub41.i.i.744
  store i128 %add56.i.i.751, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %arraydecay8)
  %121 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.662 = add i128 %121, 1267650600228229401427983728624
  %122 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.664 = add i128 %122, 1267650600228229401496703205376
  %123 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.667 = add i128 %123, 1267650600228229401427983728656
  %124 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.670 = add i128 %124, 1267650600228229401427983728656
  %125 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %126 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.674 = shl i128 %126, 32
  %add.i.i.675 = add i128 %shl.i.i.674, %125
  %add3.i.i.676 = add i128 %add.i.i.675, %add.i.662
  %sub.i.i.677 = sub i128 %add9.i.670, %add.i.i.675
  %127 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.679 = sub i128 %126, %127
  %add9.i.i.680 = add i128 %sub7.i.i.679, %add3.i.664
  %sub11.i.i.681 = sub i128 %add6.i.667, %sub7.i.i.679
  %shl13.i.i.682 = shl i128 %125, 32
  %sub15.i.i.683 = sub i128 %add9.i.i.680, %shl13.i.i.682
  %add19.i.i.685 = add i128 %shl13.i.i.682, %sub.i.i.677
  %sub23.i.i.687 = sub i128 %sub11.i.i.681, %shl.i.i.674
  %128 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.689 = sub i128 %add3.i.i.676, %128
  %shl28.i.i.690 = shl i128 %128, 32
  %sub30.i.i.691 = sub i128 %sub26.i.i.689, %shl28.i.i.690
  %shl32.i.i.692 = shl i128 %128, 33
  %add34.i.i.693 = add i128 %shl32.i.i.692, %sub15.i.i.683
  store i128 %add34.i.i.693, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.694 = shl i128 %128, 1
  %add37.i.i.695 = add i128 %mul.i.i.694, %sub23.i.i.687
  %sub41.i.i.697 = sub i128 %add19.i.i.685, %shl28.i.i.690
  %sub44.i.i.698 = sub i128 %sub30.i.i.691, %127
  %shl46.i.i.699 = shl i128 %127, 32
  %sub48.i.i.700 = sub i128 %sub44.i.i.698, %shl46.i.i.699
  store i128 %sub48.i.i.700, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.701 = shl i128 %127, 33
  %add52.i.i.702 = add i128 %shl50.i.i.701, %add37.i.i.695
  store i128 %add52.i.i.702, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.703 = mul i128 %127, 3
  %add56.i.i.704 = add i128 %mul54.i.i.703, %sub41.i.i.697
  store i128 %add56.i.i.704, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  %add.i.i.544 = add i128 %add56.i.i.704, 18446744069414584320
  %shr.i.i.546 = lshr i128 %add52.i.i.702, 64
  %add8.i.i.547 = add i128 %add.i.i.544, %shr.i.i.546
  %conv12.i.i.548 = and i128 %add52.i.i.702, 18446744073709551615
  %add13.i.i.549 = add nuw nsw i128 %conv12.i.i.548, 18446673704965373952
  %add16.i.i.550 = add i128 %sub48.i.i.700, 18446744073709551615
  %add19.i.i.552 = add i128 %add34.i.i.693, 1298074214633706907132628377272319
  %shr22.i.i.553 = lshr i128 %add8.i.i.547, 64
  %conv23.i.i.554 = trunc i128 %shr22.i.i.553 to i64
  %conv26.i.i.555 = and i128 %add8.i.i.547, 18446744073709551615
  %sub.i.i.556 = sub nsw i128 %conv26.i.i.555, %shr22.i.i.553
  %shl.i.i.557 = shl nuw nsw i128 %shr22.i.i.553, 32
  %add32.i.i.558 = add nsw i128 %sub.i.i.556, %shl.i.i.557
  %shr34.i.i.559 = lshr i128 %add32.i.i.558, 64
  %conv35.i.i.560 = trunc i128 %shr34.i.i.559 to i64
  %add36.i.i.561 = add i64 %conv35.i.i.560, %conv23.i.i.554
  %conv39.i.i.562 = and i128 %add32.i.i.558, 18446744073709551615
  %sub43.i.i.563 = sub nsw i128 %conv39.i.i.562, %shr34.i.i.559
  %shl45.i.i.564 = shl nuw nsw i128 %shr34.i.i.559, 32
  %add47.i.i.565 = add nsw i128 %sub43.i.i.563, %shl45.i.i.564
  %conv48.i.i.566 = zext i64 %add36.i.i.561 to i128
  %add50.i.i.567 = add i128 %add16.i.i.550, %conv48.i.i.566
  %shl52.i.i.568 = shl nuw nsw i128 %conv48.i.i.566, 32
  %sub54.i.i.569 = sub i128 %add19.i.i.552, %shl52.i.i.568
  %shr56.i.i.570 = lshr i128 %add47.i.i.565, 64
  %conv57.i.i.571 = trunc i128 %shr56.i.i.570 to i64
  %sub58.i.i.572 = sub i64 0, %conv57.i.i.571
  %conv60.i.i.573 = trunc i128 %add47.i.i.565 to i64
  %and.i.i.574 = and i64 %conv60.i.i.573, 9223372036854775807
  %neg.i.i.575 = sub nsw i64 9223372032559808512, %and.i.i.574
  %sub62177.i.i.576 = and i64 %neg.i.i.575, %conv60.i.i.573
  %and66.i.i.577 = ashr i64 %sub62177.i.i.576, 63
  %or.i.i.578 = or i64 %and66.i.i.577, %sub58.i.i.572
  %conv68.i.i.579 = zext i64 %or.i.i.578 to i128
  %sub70.i.i.580 = sub i128 %add50.i.i.567, %conv68.i.i.579
  %and71.i.i.581 = and i64 %or.i.i.578, 4294967295
  %conv72.i.i.582 = zext i64 %and71.i.i.581 to i128
  %sub74.i.i.583 = sub i128 %sub54.i.i.569, %conv72.i.i.582
  %and75.i.i.584 = and i64 %or.i.i.578, -4294967295
  %conv76.i.i.585 = zext i64 %and75.i.i.584 to i128
  %sub78.i.i.586 = sub nsw i128 %add47.i.i.565, %conv76.i.i.585
  %shr80.i.i.587 = lshr i128 %sub70.i.i.580, 64
  %add84.i.i.588 = add i128 %sub74.i.i.583, %shr80.i.i.587
  %shr90.i.i.590 = lshr i128 %add84.i.i.588, 64
  %add94.i.i.591 = add nuw nsw i128 %add13.i.i.549, %shr90.i.i.590
  %shr100.i.i.593 = lshr i128 %add94.i.i.591, 64
  %add104.i.i.594 = add nsw i128 %sub78.i.i.586, %shr100.i.i.593
  %conv.i.600 = and i128 %sub70.i.i.580, 18446744073709551615
  %mul.i.601 = mul nuw i128 %conv.i.600, %conv.i.600
  %shr.i.602 = lshr i128 %mul.i.601, 64
  %conv5.i.603 = and i128 %mul.i.601, 18446744073709551615
  store i128 %conv5.i.603, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.606 = and i128 %add84.i.i.588, 18446744073709551615
  %mul13.i.607 = mul nuw i128 %conv12.i.606, %conv.i.600
  %shr15.i.608 = lshr i128 %mul13.i.607, 64
  %conv17.i.609 = shl i128 %mul13.i.607, 1
  %factor.i.610 = and i128 %conv17.i.609, 36893488147419103230
  %add21.i.611 = add nuw nsw i128 %factor.i.610, %shr.i.602
  store i128 %add21.i.611, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.614 = and i128 %add94.i.i.591, 18446744073709551615
  %mul28.i.615 = mul nuw i128 %conv27.i.614, %conv.i.600
  %shr30.i.616 = lshr i128 %mul28.i.615, 64
  %conv32.i.617 = and i128 %mul28.i.615, 18446744073709551615
  %add34.i.618 = add nuw nsw i128 %conv32.i.617, %shr15.i.608
  %mul36.i.619 = shl nuw nsw i128 %add34.i.618, 1
  %conv42.i.622 = and i128 %add104.i.i.594, 18446744073709551615
  %mul43.i.623 = mul nuw i128 %conv42.i.622, %conv.i.600
  %shr45.i.624 = lshr i128 %mul43.i.623, 64
  %conv47.i.625 = and i128 %mul43.i.623, 18446744073709551615
  %mul56.i.628 = mul nuw i128 %conv27.i.614, %conv12.i.606
  %shr58.i.629 = lshr i128 %mul56.i.628, 64
  %conv60.i.630 = and i128 %mul56.i.628, 18446744073709551615
  %add49.i.626 = add nuw nsw i128 %conv60.i.630, %shr30.i.616
  %add62.i.631 = add nuw nsw i128 %add49.i.626, %conv47.i.625
  %mul64.i.632 = shl nuw nsw i128 %add62.i.631, 1
  %add67.i.633 = add nuw nsw i128 %shr45.i.624, %shr58.i.629
  %mul72.i.634 = mul nuw i128 %conv12.i.606, %conv12.i.606
  %shr74.i.635 = lshr i128 %mul72.i.634, 64
  %conv76.i.636 = and i128 %mul72.i.634, 18446744073709551615
  %add78.i.637 = add nuw nsw i128 %mul36.i.619, %conv76.i.636
  store i128 %add78.i.637, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.638 = add nuw nsw i128 %mul64.i.632, %shr74.i.635
  store i128 %add81.i.638, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.639 = mul nuw i128 %conv42.i.622, %conv12.i.606
  %shr88.i.640 = lshr i128 %mul86.i.639, 64
  %conv90.i.641 = and i128 %mul86.i.639, 18446744073709551615
  %add92.i.642 = add nuw nsw i128 %add67.i.633, %conv90.i.641
  %mul94.i.643 = shl nuw nsw i128 %add92.i.642, 1
  %mul101.i.645 = mul nuw i128 %conv42.i.622, %conv27.i.614
  %shr103.i.646 = lshr i128 %mul101.i.645, 64
  %conv105.i.647 = and i128 %mul101.i.645, 18446744073709551615
  %add107.i.648 = add nuw nsw i128 %conv105.i.647, %shr88.i.640
  %mul109.i.649 = shl nuw nsw i128 %add107.i.648, 1
  %add114.i.651 = shl nuw nsw i128 %shr103.i.646, 1
  %mul119.i.652 = mul nuw i128 %conv27.i.614, %conv27.i.614
  %shr121.i.653 = lshr i128 %mul119.i.652, 64
  %conv123.i.654 = and i128 %mul119.i.652, 18446744073709551615
  %add125.i.655 = add nuw nsw i128 %mul94.i.643, %conv123.i.654
  store i128 %add125.i.655, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.656 = add nuw nsw i128 %mul109.i.649, %shr121.i.653
  store i128 %add128.i.656, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.657 = mul nuw i128 %conv42.i.622, %conv42.i.622
  %shr135.i.658 = lshr i128 %mul133.i.657, 64
  %conv137.i.659 = and i128 %mul133.i.657, 18446744073709551615
  %add139.i.660 = add nuw nsw i128 %add114.i.651, %conv137.i.659
  store i128 %add139.i.660, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.658, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.498 = add nuw nsw i128 %conv5.i.603, 1267650600228229401427983728624
  %add3.i.500 = or i128 %add21.i.611, 1267650600228229401496703205376
  %add6.i.503 = add nuw nsw i128 %add78.i.637, 1267650600228229401427983728656
  %add9.i.506 = add nuw nsw i128 %add81.i.638, 1267650600228229401427983728656
  %shl.i.i.510 = shl nuw nsw i128 %add128.i.656, 32
  %add.i.i.511 = add nuw nsw i128 %shl.i.i.510, %add125.i.655
  %add3.i.i.512 = add nuw nsw i128 %add.i.i.511, %add.i.498
  %sub.i.i.513 = sub nsw i128 %add9.i.506, %add.i.i.511
  %sub7.i.i.515 = sub nsw i128 %add128.i.656, %shr135.i.658
  %add9.i.i.516 = add nsw i128 %sub7.i.i.515, %add3.i.500
  %sub11.i.i.517 = sub nsw i128 %add6.i.503, %sub7.i.i.515
  %shl13.i.i.518 = shl nuw nsw i128 %add125.i.655, 32
  %sub15.i.i.519 = sub nsw i128 %add9.i.i.516, %shl13.i.i.518
  %add19.i.i.521 = add i128 %shl13.i.i.518, %sub.i.i.513
  %sub23.i.i.523 = sub nsw i128 %sub11.i.i.517, %shl.i.i.510
  %sub26.i.i.525 = sub i128 %add3.i.i.512, %add139.i.660
  %shl28.i.i.526 = shl nuw nsw i128 %add139.i.660, 32
  %sub30.i.i.527 = sub i128 %sub26.i.i.525, %shl28.i.i.526
  %shl32.i.i.528 = shl nuw nsw i128 %add139.i.660, 33
  %add34.i.i.529 = add i128 %shl32.i.i.528, %sub15.i.i.519
  store i128 %add34.i.i.529, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.530 = shl nuw nsw i128 %add139.i.660, 1
  %add37.i.i.531 = add i128 %mul.i.i.530, %sub23.i.i.523
  %sub41.i.i.533 = sub i128 %add19.i.i.521, %shl28.i.i.526
  %sub44.i.i.534 = sub i128 %sub30.i.i.527, %shr135.i.658
  %shl46.i.i.535 = shl nuw nsw i128 %shr135.i.658, 32
  %sub48.i.i.536 = sub i128 %sub44.i.i.534, %shl46.i.i.535
  store i128 %sub48.i.i.536, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.537 = shl nuw nsw i128 %shr135.i.658, 33
  %add52.i.i.538 = add i128 %shl50.i.i.537, %add37.i.i.531
  store i128 %add52.i.i.538, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.539 = mul nuw nsw i128 %shr135.i.658, 3
  %add56.i.i.540 = add i128 %mul54.i.i.539, %sub41.i.i.533
  store i128 %add56.i.i.540, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  %add.i.i.380 = add i128 %add56.i.i.540, 18446744069414584320
  %shr.i.i.382 = lshr i128 %add52.i.i.538, 64
  %add8.i.i.383 = add i128 %add.i.i.380, %shr.i.i.382
  %conv12.i.i.384 = and i128 %add52.i.i.538, 18446744073709551615
  %add13.i.i.385 = add nuw nsw i128 %conv12.i.i.384, 18446673704965373952
  %add16.i.i.386 = add i128 %sub48.i.i.536, 18446744073709551615
  %add19.i.i.388 = add i128 %add34.i.i.529, 1298074214633706907132628377272319
  %shr22.i.i.389 = lshr i128 %add8.i.i.383, 64
  %conv23.i.i.390 = trunc i128 %shr22.i.i.389 to i64
  %conv26.i.i.391 = and i128 %add8.i.i.383, 18446744073709551615
  %sub.i.i.392 = sub nsw i128 %conv26.i.i.391, %shr22.i.i.389
  %shl.i.i.393 = shl nuw nsw i128 %shr22.i.i.389, 32
  %add32.i.i.394 = add nsw i128 %sub.i.i.392, %shl.i.i.393
  %shr34.i.i.395 = lshr i128 %add32.i.i.394, 64
  %conv35.i.i.396 = trunc i128 %shr34.i.i.395 to i64
  %add36.i.i.397 = add i64 %conv35.i.i.396, %conv23.i.i.390
  %conv39.i.i.398 = and i128 %add32.i.i.394, 18446744073709551615
  %sub43.i.i.399 = sub nsw i128 %conv39.i.i.398, %shr34.i.i.395
  %shl45.i.i.400 = shl nuw nsw i128 %shr34.i.i.395, 32
  %add47.i.i.401 = add nsw i128 %sub43.i.i.399, %shl45.i.i.400
  %conv48.i.i.402 = zext i64 %add36.i.i.397 to i128
  %add50.i.i.403 = add i128 %add16.i.i.386, %conv48.i.i.402
  %shl52.i.i.404 = shl nuw nsw i128 %conv48.i.i.402, 32
  %sub54.i.i.405 = sub i128 %add19.i.i.388, %shl52.i.i.404
  %shr56.i.i.406 = lshr i128 %add47.i.i.401, 64
  %conv57.i.i.407 = trunc i128 %shr56.i.i.406 to i64
  %sub58.i.i.408 = sub i64 0, %conv57.i.i.407
  %conv60.i.i.409 = trunc i128 %add47.i.i.401 to i64
  %and.i.i.410 = and i64 %conv60.i.i.409, 9223372036854775807
  %neg.i.i.411 = sub nsw i64 9223372032559808512, %and.i.i.410
  %sub62177.i.i.412 = and i64 %neg.i.i.411, %conv60.i.i.409
  %and66.i.i.413 = ashr i64 %sub62177.i.i.412, 63
  %or.i.i.414 = or i64 %and66.i.i.413, %sub58.i.i.408
  %conv68.i.i.415 = zext i64 %or.i.i.414 to i128
  %sub70.i.i.416 = sub i128 %add50.i.i.403, %conv68.i.i.415
  %and71.i.i.417 = and i64 %or.i.i.414, 4294967295
  %conv72.i.i.418 = zext i64 %and71.i.i.417 to i128
  %sub74.i.i.419 = sub i128 %sub54.i.i.405, %conv72.i.i.418
  %and75.i.i.420 = and i64 %or.i.i.414, -4294967295
  %conv76.i.i.421 = zext i64 %and75.i.i.420 to i128
  %sub78.i.i.422 = sub nsw i128 %add47.i.i.401, %conv76.i.i.421
  %shr80.i.i.423 = lshr i128 %sub70.i.i.416, 64
  %add84.i.i.424 = add i128 %sub74.i.i.419, %shr80.i.i.423
  %shr90.i.i.426 = lshr i128 %add84.i.i.424, 64
  %add94.i.i.427 = add nuw nsw i128 %add13.i.i.385, %shr90.i.i.426
  %shr100.i.i.429 = lshr i128 %add94.i.i.427, 64
  %add104.i.i.430 = add nsw i128 %sub78.i.i.422, %shr100.i.i.429
  %conv.i.436 = and i128 %sub70.i.i.416, 18446744073709551615
  %mul.i.437 = mul nuw i128 %conv.i.436, %conv.i.436
  %shr.i.438 = lshr i128 %mul.i.437, 64
  %conv5.i.439 = and i128 %mul.i.437, 18446744073709551615
  store i128 %conv5.i.439, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.442 = and i128 %add84.i.i.424, 18446744073709551615
  %mul13.i.443 = mul nuw i128 %conv12.i.442, %conv.i.436
  %shr15.i.444 = lshr i128 %mul13.i.443, 64
  %conv17.i.445 = shl i128 %mul13.i.443, 1
  %factor.i.446 = and i128 %conv17.i.445, 36893488147419103230
  %add21.i.447 = add nuw nsw i128 %factor.i.446, %shr.i.438
  store i128 %add21.i.447, i128* %arrayidx8.i, align 16, !tbaa !2
  %conv27.i.450 = and i128 %add94.i.i.427, 18446744073709551615
  %mul28.i.451 = mul nuw i128 %conv27.i.450, %conv.i.436
  %shr30.i.452 = lshr i128 %mul28.i.451, 64
  %conv32.i.453 = and i128 %mul28.i.451, 18446744073709551615
  %add34.i.454 = add nuw nsw i128 %conv32.i.453, %shr15.i.444
  %mul36.i.455 = shl nuw nsw i128 %add34.i.454, 1
  %conv42.i.458 = and i128 %add104.i.i.430, 18446744073709551615
  %mul43.i.459 = mul nuw i128 %conv42.i.458, %conv.i.436
  %shr45.i.460 = lshr i128 %mul43.i.459, 64
  %conv47.i.461 = and i128 %mul43.i.459, 18446744073709551615
  %mul56.i.464 = mul nuw i128 %conv27.i.450, %conv12.i.442
  %shr58.i.465 = lshr i128 %mul56.i.464, 64
  %conv60.i.466 = and i128 %mul56.i.464, 18446744073709551615
  %add49.i.462 = add nuw nsw i128 %conv60.i.466, %shr30.i.452
  %add62.i.467 = add nuw nsw i128 %add49.i.462, %conv47.i.461
  %mul64.i.468 = shl nuw nsw i128 %add62.i.467, 1
  %add67.i.469 = add nuw nsw i128 %shr45.i.460, %shr58.i.465
  %mul72.i.470 = mul nuw i128 %conv12.i.442, %conv12.i.442
  %shr74.i.471 = lshr i128 %mul72.i.470, 64
  %conv76.i.472 = and i128 %mul72.i.470, 18446744073709551615
  %add78.i.473 = add nuw nsw i128 %mul36.i.455, %conv76.i.472
  store i128 %add78.i.473, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i.474 = add nuw nsw i128 %mul64.i.468, %shr74.i.471
  store i128 %add81.i.474, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i.475 = mul nuw i128 %conv42.i.458, %conv12.i.442
  %shr88.i.476 = lshr i128 %mul86.i.475, 64
  %conv90.i.477 = and i128 %mul86.i.475, 18446744073709551615
  %add92.i.478 = add nuw nsw i128 %add67.i.469, %conv90.i.477
  %mul94.i.479 = shl nuw nsw i128 %add92.i.478, 1
  %mul101.i.481 = mul nuw i128 %conv42.i.458, %conv27.i.450
  %shr103.i.482 = lshr i128 %mul101.i.481, 64
  %conv105.i.483 = and i128 %mul101.i.481, 18446744073709551615
  %add107.i.484 = add nuw nsw i128 %conv105.i.483, %shr88.i.476
  %mul109.i.485 = shl nuw nsw i128 %add107.i.484, 1
  %add114.i.487 = shl nuw nsw i128 %shr103.i.482, 1
  %mul119.i.488 = mul nuw i128 %conv27.i.450, %conv27.i.450
  %shr121.i.489 = lshr i128 %mul119.i.488, 64
  %conv123.i.490 = and i128 %mul119.i.488, 18446744073709551615
  %add125.i.491 = add nuw nsw i128 %mul94.i.479, %conv123.i.490
  store i128 %add125.i.491, i128* %arrayidx51.i, align 16, !tbaa !2
  %add128.i.492 = add nuw nsw i128 %mul109.i.485, %shr121.i.489
  store i128 %add128.i.492, i128* %arrayidx96.i, align 16, !tbaa !2
  %mul133.i.493 = mul nuw i128 %conv42.i.458, %conv42.i.458
  %shr135.i.494 = lshr i128 %mul133.i.493, 64
  %conv137.i.495 = and i128 %mul133.i.493, 18446744073709551615
  %add139.i.496 = add nuw nsw i128 %add114.i.487, %conv137.i.495
  store i128 %add139.i.496, i128* %arrayidx111.i, align 16, !tbaa !2
  store i128 %shr135.i.494, i128* %arrayidx141.i, align 16, !tbaa !2
  %add.i.334 = add nuw nsw i128 %conv5.i.439, 1267650600228229401427983728624
  %add3.i.336 = or i128 %add21.i.447, 1267650600228229401496703205376
  %add6.i.339 = add nuw nsw i128 %add78.i.473, 1267650600228229401427983728656
  %add9.i.342 = add nuw nsw i128 %add81.i.474, 1267650600228229401427983728656
  %shl.i.i.346 = shl nuw nsw i128 %add128.i.492, 32
  %add.i.i.347 = add nuw nsw i128 %shl.i.i.346, %add125.i.491
  %add3.i.i.348 = add nuw nsw i128 %add.i.i.347, %add.i.334
  %sub.i.i.349 = sub nsw i128 %add9.i.342, %add.i.i.347
  %sub7.i.i.351 = sub nsw i128 %add128.i.492, %shr135.i.494
  %add9.i.i.352 = add nsw i128 %sub7.i.i.351, %add3.i.336
  %sub11.i.i.353 = sub nsw i128 %add6.i.339, %sub7.i.i.351
  %shl13.i.i.354 = shl nuw nsw i128 %add125.i.491, 32
  %sub15.i.i.355 = sub nsw i128 %add9.i.i.352, %shl13.i.i.354
  %add19.i.i.357 = add i128 %shl13.i.i.354, %sub.i.i.349
  %sub23.i.i.359 = sub nsw i128 %sub11.i.i.353, %shl.i.i.346
  %sub26.i.i.361 = sub i128 %add3.i.i.348, %add139.i.496
  %shl28.i.i.362 = shl nuw nsw i128 %add139.i.496, 32
  %sub30.i.i.363 = sub i128 %sub26.i.i.361, %shl28.i.i.362
  %shl32.i.i.364 = shl nuw nsw i128 %add139.i.496, 33
  %add34.i.i.365 = add i128 %shl32.i.i.364, %sub15.i.i.355
  store i128 %add34.i.i.365, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.366 = shl nuw nsw i128 %add139.i.496, 1
  %add37.i.i.367 = add i128 %mul.i.i.366, %sub23.i.i.359
  %sub41.i.i.369 = sub i128 %add19.i.i.357, %shl28.i.i.362
  %sub44.i.i.370 = sub i128 %sub30.i.i.363, %shr135.i.494
  %shl46.i.i.371 = shl nuw nsw i128 %shr135.i.494, 32
  %sub48.i.i.372 = sub i128 %sub44.i.i.370, %shl46.i.i.371
  store i128 %sub48.i.i.372, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.373 = shl nuw nsw i128 %shr135.i.494, 33
  %add52.i.i.374 = add i128 %shl50.i.i.373, %add37.i.i.367
  store i128 %add52.i.i.374, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.375 = mul nuw nsw i128 %shr135.i.494, 3
  %add56.i.i.376 = add i128 %mul54.i.i.375, %sub41.i.i.369
  store i128 %add56.i.i.376, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %in)
  %129 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.248 = add i128 %129, 1267650600228229401427983728624
  %130 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i.250 = add i128 %130, 1267650600228229401496703205376
  %131 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i.253 = add i128 %131, 1267650600228229401427983728656
  %132 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i.256 = add i128 %132, 1267650600228229401427983728656
  %133 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %134 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.260 = shl i128 %134, 32
  %add.i.i.261 = add i128 %shl.i.i.260, %133
  %add3.i.i.262 = add i128 %add.i.i.261, %add.i.248
  %sub.i.i.263 = sub i128 %add9.i.256, %add.i.i.261
  %135 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i.265 = sub i128 %134, %135
  %add9.i.i.266 = add i128 %sub7.i.i.265, %add3.i.250
  %sub11.i.i.267 = sub i128 %add6.i.253, %sub7.i.i.265
  %shl13.i.i.268 = shl i128 %133, 32
  %sub15.i.i.269 = sub i128 %add9.i.i.266, %shl13.i.i.268
  %add19.i.i.271 = add i128 %shl13.i.i.268, %sub.i.i.263
  %sub23.i.i.273 = sub i128 %sub11.i.i.267, %shl.i.i.260
  %136 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i.275 = sub i128 %add3.i.i.262, %136
  %shl28.i.i.276 = shl i128 %136, 32
  %sub30.i.i.277 = sub i128 %sub26.i.i.275, %shl28.i.i.276
  %shl32.i.i.278 = shl i128 %136, 33
  %add34.i.i.279 = add i128 %shl32.i.i.278, %sub15.i.i.269
  store i128 %add34.i.i.279, i128* %arrayidx4.i.1946, align 16, !tbaa !2
  %mul.i.i.280 = shl i128 %136, 1
  %add37.i.i.281 = add i128 %mul.i.i.280, %sub23.i.i.273
  %sub41.i.i.283 = sub i128 %add19.i.i.271, %shl28.i.i.276
  %sub44.i.i.284 = sub i128 %sub30.i.i.277, %135
  %shl46.i.i.285 = shl i128 %135, 32
  %sub48.i.i.286 = sub i128 %sub44.i.i.284, %shl46.i.i.285
  store i128 %sub48.i.i.286, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.287 = shl i128 %135, 33
  %add52.i.i.288 = add i128 %shl50.i.i.287, %add37.i.i.281
  store i128 %add52.i.i.288, i128* %arrayidx7.i.1949, align 16, !tbaa !2
  %mul54.i.i.289 = mul i128 %135, 3
  %add56.i.i.290 = add i128 %mul54.i.i.289, %sub41.i.i.283
  store i128 %add56.i.i.290, i128* %arrayidx10.i.1952, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay, i128* %arraydecay105, i128* %arraydecay2)
  %137 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i = add i128 %137, 1267650600228229401427983728624
  %138 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add3.i = add i128 %138, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds i128, i128* %out, i64 1
  %139 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %add6.i = add i128 %139, 1267650600228229401427983728656
  %arrayidx7.i = getelementptr inbounds i128, i128* %out, i64 2
  %140 = load i128, i128* %arrayidx38.i, align 16, !tbaa !2
  %add9.i = add i128 %140, 1267650600228229401427983728656
  %arrayidx10.i = getelementptr inbounds i128, i128* %out, i64 3
  %141 = load i128, i128* %arrayidx51.i, align 16, !tbaa !2
  %142 = load i128, i128* %arrayidx96.i, align 16, !tbaa !2
  %shl.i.i.200 = shl i128 %142, 32
  %add.i.i.201 = add i128 %shl.i.i.200, %141
  %add3.i.i = add i128 %add.i.i.201, %add.i
  %sub.i.i.202 = sub i128 %add9.i, %add.i.i.201
  %143 = load i128, i128* %arrayidx141.i, align 16, !tbaa !2
  %sub7.i.i = sub i128 %142, %143
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %141, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i.204 = add i128 %shl13.i.i, %sub.i.i.202
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i.200
  %144 = load i128, i128* %arrayidx111.i, align 16, !tbaa !2
  %sub26.i.i = sub i128 %add3.i.i, %144
  %shl28.i.i = shl i128 %144, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl i128 %144, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl i128 %144, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i.204, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %143
  %shl46.i.i = shl i128 %143, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %out, align 16, !tbaa !2
  %shl50.i.i = shl i128 %143, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul i128 %143, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @llvm.lifetime.end(i64 128, i8* %8) #1
  call void @llvm.lifetime.end(i64 64, i8* %7) #1
  call void @llvm.lifetime.end(i64 64, i8* %6) #1
  call void @llvm.lifetime.end(i64 64, i8* %5) #1
  call void @llvm.lifetime.end(i64 64, i8* %4) #1
  call void @llvm.lifetime.end(i64 64, i8* %3) #1
  call void @llvm.lifetime.end(i64 64, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @felem_contract(i64* nocapture %out, i128* nocapture readonly %in) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i128, i128* %in, i64 3
  %0 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %0, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %in, i64 2
  %1 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %1, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %1, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %2 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i = add i128 %2, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %in, i64 1
  %3 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %3, 1298074214633706907132628377272319
  %shr22.i = lshr i128 %add8.i, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i, 18446744073709551615
  %sub.i = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %add50.i = add i128 %add16.i, %conv48.i
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %sub54.i = sub i128 %add19.i, %shl52.i
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %conv86.i = trunc i128 %sub70.i to i64
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %conv96.i = trunc i128 %add84.i to i64
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv106.i = trunc i128 %add94.i to i64
  %arrayidx114.i = getelementptr inbounds i64, i64* %out, i64 1
  %arrayidx117.i = getelementptr inbounds i64, i64* %out, i64 2
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6
  %conv3 = and i128 %add104.i, 18446744073709551615
  %sub = sub nsw i128 18446744069414584321, %conv3
  %shr = lshr i128 %sub, 64
  %conv4 = trunc i128 %shr to i64
  %xor = xor i64 %conv119.i, -4294967295
  %dec9 = add i64 %xor, -1
  %shl = shl i64 %dec9, 32
  %and10 = and i64 %shl, %dec9
  %shl11 = shl i64 %and10, 16
  %and12 = and i64 %shl11, %and10
  %shl13 = shl i64 %and12, 8
  %and14 = and i64 %shl13, %and12
  %shl15 = shl i64 %and14, 4
  %and16 = and i64 %shl15, %and14
  %shl17 = shl i64 %and16, 2
  %and18 = and i64 %shl17, %and16
  %shl19 = shl i64 %and18, 1
  %and20 = and i64 %shl19, %and18
  %sub22 = ashr i64 %and20, 63
  %conv3.1 = and i128 %add94.i, 18446744073709551615
  %sub.1 = sub nsw i128 0, %conv3.1
  %shr.1 = lshr i128 %sub.1, 64
  %conv4.1 = trunc i128 %shr.1 to i64
  %and.1 = and i64 %conv4.1, %sub22
  %or.1 = or i64 %and.1, %conv4
  %dec9.1 = add i64 %conv106.i, -1
  %shl.1 = shl i64 %dec9.1, 32
  %and10.1 = and i64 %shl.1, %dec9.1
  %shl11.1 = shl i64 %and10.1, 16
  %and12.1 = and i64 %shl11.1, %and10.1
  %shl13.1 = shl i64 %and12.1, 8
  %and14.1 = and i64 %shl13.1, %and12.1
  %shl15.1 = shl i64 %and14.1, 4
  %and16.1 = and i64 %shl15.1, %and14.1
  %shl17.1 = shl i64 %and16.1, 2
  %and18.1 = and i64 %shl17.1, %and16.1
  %shl19.1 = shl i64 %and18.1, 1
  %and20.1 = and i64 %shl19.1, %and18.1
  %sub22.1 = ashr i64 %and20.1, 63
  %and23.1 = and i64 %sub22.1, %sub22
  %conv3.2 = and i128 %add84.i, 18446744073709551615
  %sub.2 = sub nsw i128 4294967295, %conv3.2
  %shr.2 = lshr i128 %sub.2, 64
  %conv4.2 = trunc i128 %shr.2 to i64
  %and.2 = and i64 %conv4.2, %and23.1
  %xor.2 = xor i64 %conv96.i, 4294967295
  %dec9.2 = add i64 %xor.2, -1
  %shl.2 = shl i64 %dec9.2, 32
  %and10.2 = and i64 %shl.2, %dec9.2
  %shl11.2 = shl i64 %and10.2, 16
  %and12.2 = and i64 %shl11.2, %and10.2
  %shl13.2 = shl i64 %and12.2, 8
  %and14.2 = and i64 %shl13.2, %and12.2
  %shl15.2 = shl i64 %and14.2, 4
  %and16.2 = and i64 %shl15.2, %and14.2
  %shl17.2 = shl i64 %and16.2, 2
  %and18.2 = and i64 %shl17.2, %and16.2
  %shl19.2 = shl i64 %and18.2, 1
  %and20.2 = and i64 %shl19.2, %and18.2
  %sub22.2 = ashr i64 %and20.2, 63
  %and23.2 = and i64 %sub22.2, %and23.1
  %conv3.3 = and i128 %sub70.i, 18446744073709551615
  %or.3 = or i64 %and.2, %or.1
  %dec9.3 = sub i64 -2, %conv86.i
  %shl.3 = shl i64 %dec9.3, 32
  %and10.3 = and i64 %shl.3, %dec9.3
  %shl11.3 = shl i64 %and10.3, 16
  %and12.3 = and i64 %shl11.3, %and10.3
  %shl13.3 = shl i64 %and12.3, 8
  %and14.3 = and i64 %shl13.3, %and12.3
  %shl15.3 = shl i64 %and14.3, 4
  %and16.3 = and i64 %shl15.3, %and14.3
  %shl17.3 = shl i64 %and16.3, 2
  %and18.3 = and i64 %shl17.3, %and16.3
  %shl19.3 = shl i64 %and18.3, 1
  %and20.3 = and i64 %shl19.3, %and18.3
  %sub22.3 = ashr i64 %and20.3, 63
  %and23.3 = and i64 %sub22.3, %and23.2
  %or25 = or i64 %and23.3, %or.3
  %conv1.i.141 = zext i64 %or25 to i128
  %sub.i.142 = sub nsw i128 %conv3.3, %conv1.i.141
  %shr.i.143 = lshr i128 %sub.i.142, 64
  %conv3.i.146 = trunc i128 %sub.i.142 to i64
  store i64 %conv3.i.146, i64* %out, align 8, !tbaa !6
  %conv1.i.134 = and i128 %shr.i.143, 1
  %sub.i.135 = sub nsw i128 %conv3.2, %conv1.i.134
  %shr.i.136 = lshr i128 %sub.i.135, 64
  %conv1.i.127 = and i128 %shr.i.136, 1
  %sub.i.128 = sub nsw i128 %conv3.1, %conv1.i.127
  %shr.i.129 = lshr i128 %sub.i.128, 64
  %4 = load i64, i64* %arrayidx120.i, align 8, !tbaa !6
  %conv.i.119 = zext i64 %4 to i128
  %conv1.i.120 = and i128 %shr.i.129, 1
  %sub.i.121 = sub nsw i128 %conv.i.119, %conv1.i.120
  %and32 = and i64 %or25, 4294967295
  %fold = sub i128 %add84.i, %conv1.i.134
  %conv.i.112 = and i128 %fold, 18446744073709551615
  %conv1.i.113 = zext i64 %and32 to i128
  %sub.i.114 = sub nsw i128 %conv.i.112, %conv1.i.113
  %shr.i.115 = lshr i128 %sub.i.114, 64
  %conv3.i.118 = trunc i128 %sub.i.114 to i64
  store i64 %conv3.i.118, i64* %arrayidx114.i, align 8, !tbaa !6
  %fold156 = sub nsw i128 %add94.i, %conv1.i.127
  %conv.i.105 = and i128 %fold156, 18446744073709551615
  %conv1.i.106 = and i128 %shr.i.115, 1
  %sub.i.107 = sub nsw i128 %conv.i.105, %conv1.i.106
  %shr.i.108 = lshr i128 %sub.i.107, 64
  %conv3.i.111 = trunc i128 %sub.i.107 to i64
  store i64 %conv3.i.111, i64* %arrayidx117.i, align 8, !tbaa !6
  %conv1.i.99 = and i128 %shr.i.108, 1
  %and39 = and i64 %or25, -4294967295
  %conv1.i = zext i64 %and39 to i128
  %sub.i.100 = sub nsw i128 %sub.i.121, %conv1.i
  %sub.i.84 = sub nsw i128 %sub.i.100, %conv1.i.99
  %conv3.i = trunc i128 %sub.i.84 to i64
  store i64 %conv3.i, i64* %arrayidx120.i, align 8, !tbaa !6
  ret void
}

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st*) #3

declare i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @EC_POINT_cmp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i8* @CRYPTO_malloc(i64, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st*) #3

declare i32 @BN_num_bits(%struct.bignum_st*) #3

declare i32 @BN_is_negative(%struct.bignum_st*) #3

declare i32 @BN_nnmod(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @BN_bn2bin(%struct.bignum_st*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @batch_mul(i128* nocapture %x_out, i128* nocapture %y_out, i128* nocapture %z_out, [32 x i8]* nocapture readonly %scalars, i32 %num_points, i8* readonly %g_scalar, i32 %mixed, [17 x [3 x [4 x i64]]]* nocapture readonly %pre_comp, [16 x [3 x [4 x i64]]]* nocapture readonly %g_pre_comp) #0 {
entry:
  %nq = alloca [3 x [4 x i128]], align 16
  %ftmp = alloca [4 x i128], align 16
  %tmp = alloca [3 x [4 x i64]], align 16
  %sign = alloca i8, align 1
  %digit = alloca i8, align 1
  %cmp = icmp ne i8* %g_scalar, null
  %0 = bitcast [3 x [4 x i128]]* %nq to i8*
  call void @llvm.lifetime.start(i64 192, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [3 x [4 x i64]]* %tmp to i8*
  call void @llvm.lifetime.start(i64 96, i8* %2) #1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %sign) #1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %digit) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 192, i32 16, i1 false)
  %tobool = icmp ne i32 %num_points, 0
  %cond = select i1 %tobool, i32 255, i32 31
  %arraydecay39 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp, i64 1, i64 0
  %arraydecay40 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 0
  %arraydecay62 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 0, i64 0
  %arraydecay64 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 0, i64 0
  %arrayidx2.i.450 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 0, i64 1
  %arrayidx4.i.452 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 0, i64 1
  %arrayidx5.i.453 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 0, i64 2
  %arrayidx7.i.455 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 0, i64 2
  %arrayidx8.i.456 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 0, i64 3
  %arrayidx10.i.458 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 0, i64 3
  %arraydecay66 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 1, i64 0
  %arraydecay68 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 1, i64 0
  %arrayidx2.i.460 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 1, i64 1
  %arrayidx4.i.462 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 1, i64 1
  %arrayidx5.i.463 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 1, i64 2
  %arrayidx7.i.465 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 1, i64 2
  %arrayidx8.i.466 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 1, i64 3
  %arrayidx10.i.468 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 1, i64 3
  %arraydecay70 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 2, i64 0
  %arraydecay72 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 2, i64 0
  %arrayidx2.i.514 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 2, i64 1
  %arrayidx4.i.516 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 2, i64 1
  %arrayidx5.i.517 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 2, i64 2
  %arrayidx7.i.519 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 2, i64 2
  %arrayidx8.i.520 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %tmp, i64 0, i64 2, i64 3
  %arrayidx10.i.522 = getelementptr inbounds [3 x [4 x i128]], [3 x [4 x i128]]* %nq, i64 0, i64 2, i64 3
  %arraydecay95 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp, i64 0, i64 0
  %arraydecay179 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %arrayidx5.i.369 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  %arrayidx9.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  %arrayidx13.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc.225
  %i.0537 = phi i32 [ %cond, %entry ], [ %dec, %for.inc.225 ]
  %skip.0536 = phi i32 [ 1, %entry ], [ %skip.5, %for.inc.225 ]
  %tobool6 = icmp ne i32 %skip.0536, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @point_double(i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp18 = icmp slt i32 %i.0537, 32
  %or.cond = and i1 %cmp, %cmp18
  br i1 %or.cond, label %if.then.20, label %if.end.115

if.then.20:                                       ; preds = %if.end
  %add = add nsw i32 %i.0537, 224
  %3 = icmp ugt i32 %add, 255
  br i1 %3, label %get_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.20
  %shr.i = ashr i32 %add, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i
  %4 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %add, 7
  %shr2.i = lshr i32 %conv.i, %and.i
  %conv4.i = and i32 %shr2.i, 1
  br label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.20, %if.end.i
  %retval.0.i = phi i32 [ %conv4.i, %if.end.i ], [ 0, %if.then.20 ]
  %shl = shl nuw nsw i32 %retval.0.i, 3
  %add23 = add nsw i32 %i.0537, 160
  %5 = icmp ugt i32 %add23, 255
  br i1 %5, label %get_bit.exit352, label %if.end.i.350

if.end.i.350:                                     ; preds = %get_bit.exit
  %shr.i.342 = ashr i32 %add23, 3
  %idxprom.i.343 = sext i32 %shr.i.342 to i64
  %arrayidx.i.344 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.343
  %6 = load i8, i8* %arrayidx.i.344, align 1, !tbaa !17
  %conv.i.345 = zext i8 %6 to i32
  %and.i.346 = and i32 %add23, 7
  %shr2.i.347 = lshr i32 %conv.i.345, %and.i.346
  %conv4.i.349 = and i32 %shr2.i.347, 1
  br label %get_bit.exit352

get_bit.exit352:                                  ; preds = %get_bit.exit, %if.end.i.350
  %retval.0.i.351 = phi i32 [ %conv4.i.349, %if.end.i.350 ], [ 0, %get_bit.exit ]
  %shl26 = shl nuw nsw i32 %retval.0.i.351, 2
  %or300 = or i32 %shl26, %shl
  %add28 = add nsw i32 %i.0537, 96
  %7 = icmp ugt i32 %add28, 255
  br i1 %7, label %get_bit.exit363, label %if.end.i.361

if.end.i.361:                                     ; preds = %get_bit.exit352
  %shr.i.353 = ashr i32 %add28, 3
  %idxprom.i.354 = sext i32 %shr.i.353 to i64
  %arrayidx.i.355 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.354
  %8 = load i8, i8* %arrayidx.i.355, align 1, !tbaa !17
  %conv.i.356 = zext i8 %8 to i32
  %and.i.357 = and i32 %add28, 7
  %shr2.i.358 = lshr i32 %conv.i.356, %and.i.357
  %conv4.i.360 = and i32 %shr2.i.358, 1
  br label %get_bit.exit363

get_bit.exit363:                                  ; preds = %get_bit.exit352, %if.end.i.361
  %retval.0.i.362 = phi i32 [ %conv4.i.360, %if.end.i.361 ], [ 0, %get_bit.exit352 ]
  %shl31 = shl nuw nsw i32 %retval.0.i.362, 1
  %or33301 = or i32 %or300, %shl31
  %or33.526 = zext i32 %or33301 to i64
  %add34 = add nsw i32 %i.0537, 32
  %9 = icmp ugt i32 %add34, 255
  br i1 %9, label %get_bit.exit382, label %if.end.i.380

if.end.i.380:                                     ; preds = %get_bit.exit363
  %shr.i.372 = ashr i32 %add34, 3
  %idxprom.i.373 = sext i32 %shr.i.372 to i64
  %arrayidx.i.374 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.373
  %10 = load i8, i8* %arrayidx.i.374, align 1, !tbaa !17
  %conv.i.375 = zext i8 %10 to i32
  %and.i.376 = and i32 %add34, 7
  %shr2.i.377 = lshr i32 %conv.i.375, %and.i.376
  %shr2.tr.i.378 = zext i32 %shr2.i.377 to i64
  %conv4.i.379 = and i64 %shr2.tr.i.378, 1
  br label %get_bit.exit382

get_bit.exit382:                                  ; preds = %get_bit.exit363, %if.end.i.380
  %retval.0.i.381 = phi i64 [ %conv4.i.379, %if.end.i.380 ], [ 0, %get_bit.exit363 ]
  %or37 = or i64 %retval.0.i.381, %or33.526
  call fastcc void @select_point(i64 %or37, i32 16, [3 x [4 x i64]]* %arraydecay39, [4 x i64]* %arraydecay40)
  br i1 %tobool6, label %if.else, label %if.then.42

if.then.42:                                       ; preds = %get_bit.exit382
  call fastcc void @point_add(i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i32 1, i64* %arraydecay64, i64* %arraydecay68, i64* %arraydecay72)
  br label %if.end.73

if.else:                                          ; preds = %get_bit.exit382
  %11 = load i64, i64* %arraydecay64, align 16, !tbaa !6
  %conv.i.449 = zext i64 %11 to i128
  store i128 %conv.i.449, i128* %arraydecay62, align 16, !tbaa !2
  %12 = load i64, i64* %arrayidx2.i.450, align 8, !tbaa !6
  %conv3.i.451 = zext i64 %12 to i128
  store i128 %conv3.i.451, i128* %arrayidx4.i.452, align 16, !tbaa !2
  %13 = load i64, i64* %arrayidx5.i.453, align 16, !tbaa !6
  %conv6.i.454 = zext i64 %13 to i128
  store i128 %conv6.i.454, i128* %arrayidx7.i.455, align 16, !tbaa !2
  %14 = load i64, i64* %arrayidx8.i.456, align 8, !tbaa !6
  %conv9.i.457 = zext i64 %14 to i128
  store i128 %conv9.i.457, i128* %arrayidx10.i.458, align 16, !tbaa !2
  %15 = load i64, i64* %arraydecay68, align 16, !tbaa !6
  %conv.i.459 = zext i64 %15 to i128
  store i128 %conv.i.459, i128* %arraydecay66, align 16, !tbaa !2
  %16 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !6
  %conv3.i.461 = zext i64 %16 to i128
  store i128 %conv3.i.461, i128* %arrayidx4.i.462, align 16, !tbaa !2
  %17 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !6
  %conv6.i.464 = zext i64 %17 to i128
  store i128 %conv6.i.464, i128* %arrayidx7.i.465, align 16, !tbaa !2
  %18 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !6
  %conv9.i.467 = zext i64 %18 to i128
  store i128 %conv9.i.467, i128* %arrayidx10.i.468, align 16, !tbaa !2
  %19 = load i64, i64* %arraydecay72, align 16, !tbaa !6
  %conv.i.513 = zext i64 %19 to i128
  store i128 %conv.i.513, i128* %arraydecay70, align 16, !tbaa !2
  %20 = load i64, i64* %arrayidx2.i.514, align 8, !tbaa !6
  %conv3.i.515 = zext i64 %20 to i128
  store i128 %conv3.i.515, i128* %arrayidx4.i.516, align 16, !tbaa !2
  %21 = load i64, i64* %arrayidx5.i.517, align 16, !tbaa !6
  %conv6.i.518 = zext i64 %21 to i128
  store i128 %conv6.i.518, i128* %arrayidx7.i.519, align 16, !tbaa !2
  %22 = load i64, i64* %arrayidx8.i.520, align 8, !tbaa !6
  %conv9.i.521 = zext i64 %22 to i128
  store i128 %conv9.i.521, i128* %arrayidx10.i.522, align 16, !tbaa !2
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.42
  %add74 = add nsw i32 %i.0537, 192
  %23 = icmp ugt i32 %add74, 255
  br i1 %23, label %get_bit.exit512, label %if.end.i.510

if.end.i.510:                                     ; preds = %if.end.73
  %shr.i.502 = ashr i32 %add74, 3
  %idxprom.i.503 = sext i32 %shr.i.502 to i64
  %arrayidx.i.504 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.503
  %24 = load i8, i8* %arrayidx.i.504, align 1, !tbaa !17
  %conv.i.505 = zext i8 %24 to i32
  %and.i.506 = and i32 %add74, 7
  %shr2.i.507 = lshr i32 %conv.i.505, %and.i.506
  %conv4.i.509 = and i32 %shr2.i.507, 1
  br label %get_bit.exit512

get_bit.exit512:                                  ; preds = %if.end.73, %if.end.i.510
  %retval.0.i.511 = phi i32 [ %conv4.i.509, %if.end.i.510 ], [ 0, %if.end.73 ]
  %shl77 = shl nuw nsw i32 %retval.0.i.511, 3
  %add79 = add nsw i32 %i.0537, 128
  %25 = icmp ugt i32 %add79, 255
  br i1 %25, label %get_bit.exit501, label %if.end.i.499

if.end.i.499:                                     ; preds = %get_bit.exit512
  %shr.i.491 = ashr i32 %add79, 3
  %idxprom.i.492 = sext i32 %shr.i.491 to i64
  %arrayidx.i.493 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.492
  %26 = load i8, i8* %arrayidx.i.493, align 1, !tbaa !17
  %conv.i.494 = zext i8 %26 to i32
  %and.i.495 = and i32 %add79, 7
  %shr2.i.496 = lshr i32 %conv.i.494, %and.i.495
  %conv4.i.498 = and i32 %shr2.i.496, 1
  br label %get_bit.exit501

get_bit.exit501:                                  ; preds = %get_bit.exit512, %if.end.i.499
  %retval.0.i.500 = phi i32 [ %conv4.i.498, %if.end.i.499 ], [ 0, %get_bit.exit512 ]
  %shl82 = shl nuw nsw i32 %retval.0.i.500, 2
  %or84302 = or i32 %shl82, %shl77
  %add85 = add nsw i32 %i.0537, 64
  %27 = icmp ugt i32 %add85, 255
  br i1 %27, label %get_bit.exit490, label %if.end.i.488

if.end.i.488:                                     ; preds = %get_bit.exit501
  %shr.i.480 = ashr i32 %add85, 3
  %idxprom.i.481 = sext i32 %shr.i.480 to i64
  %arrayidx.i.482 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.481
  %28 = load i8, i8* %arrayidx.i.482, align 1, !tbaa !17
  %conv.i.483 = zext i8 %28 to i32
  %and.i.484 = and i32 %add85, 7
  %shr2.i.485 = lshr i32 %conv.i.483, %and.i.484
  %conv4.i.487 = and i32 %shr2.i.485, 1
  br label %get_bit.exit490

get_bit.exit490:                                  ; preds = %get_bit.exit501, %if.end.i.488
  %retval.0.i.489 = phi i32 [ %conv4.i.487, %if.end.i.488 ], [ 0, %get_bit.exit501 ]
  %shl88 = shl nuw nsw i32 %retval.0.i.489, 1
  %or90303 = or i32 %or84302, %shl88
  %or90.531 = zext i32 %or90303 to i64
  %29 = icmp ugt i32 %i.0537, 255
  br i1 %29, label %get_bit.exit479, label %if.end.i.477

if.end.i.477:                                     ; preds = %get_bit.exit490
  %shr.i.469 = ashr i32 %i.0537, 3
  %idxprom.i.470 = sext i32 %shr.i.469 to i64
  %arrayidx.i.471 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.470
  %30 = load i8, i8* %arrayidx.i.471, align 1, !tbaa !17
  %conv.i.472 = zext i8 %30 to i32
  %and.i.473 = and i32 %i.0537, 7
  %shr2.i.474 = lshr i32 %conv.i.472, %and.i.473
  %shr2.tr.i.475 = zext i32 %shr2.i.474 to i64
  %conv4.i.476 = and i64 %shr2.tr.i.475, 1
  br label %get_bit.exit479

get_bit.exit479:                                  ; preds = %get_bit.exit490, %if.end.i.477
  %retval.0.i.478 = phi i64 [ %conv4.i.476, %if.end.i.477 ], [ 0, %get_bit.exit490 ]
  %or93 = or i64 %retval.0.i.478, %or90.531
  call fastcc void @select_point(i64 %or93, i32 16, [3 x [4 x i64]]* %arraydecay95, [4 x i64]* %arraydecay40)
  call fastcc void @point_add(i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i32 1, i64* %arraydecay64, i64* %arraydecay68, i64* %arraydecay72)
  br label %if.end.115

if.end.115:                                       ; preds = %get_bit.exit479, %if.end
  %skip.2 = phi i32 [ 0, %get_bit.exit479 ], [ %skip.0536, %if.end ]
  %rem = srem i32 %i.0537, 5
  %cmp118 = icmp eq i32 %rem, 0
  %or.cond304 = and i1 %tobool, %cmp118
  br i1 %or.cond304, label %for.body.124.lr.ph, label %for.inc.225

for.body.124.lr.ph:                               ; preds = %if.end.115
  %add127 = add nsw i32 %i.0537, 4
  %31 = icmp ugt i32 %add127, 255
  %add135 = add nsw i32 %i.0537, 3
  %32 = icmp ugt i32 %add135, 255
  %add144 = add nsw i32 %i.0537, 2
  %33 = icmp ugt i32 %add144, 255
  %add153 = add nsw i32 %i.0537, 1
  %34 = icmp ugt i32 %add153, 255
  %35 = icmp ugt i32 %i.0537, 255
  %sub = add nsw i32 %i.0537, -1
  %36 = icmp ugt i32 %sub, 255
  %shr.i.383 = ashr i32 %sub, 3
  %idxprom.i.384 = sext i32 %shr.i.383 to i64
  %and.i.387 = and i32 %sub, 7
  %shr.i.394 = ashr i32 %i.0537, 3
  %idxprom.i.395 = sext i32 %shr.i.394 to i64
  %and.i.398 = and i32 %i.0537, 7
  %shr.i.405 = ashr i32 %add153, 3
  %idxprom.i.406 = sext i32 %shr.i.405 to i64
  %and.i.409 = and i32 %add153, 7
  %shr.i.416 = ashr i32 %add144, 3
  %idxprom.i.417 = sext i32 %shr.i.416 to i64
  %and.i.420 = and i32 %add144, 7
  %shr.i.427 = ashr i32 %add135, 3
  %idxprom.i.428 = sext i32 %shr.i.427 to i64
  %and.i.431 = and i32 %add135, 7
  %shr.i.438 = ashr i32 %add127, 3
  %idxprom.i.439 = sext i32 %shr.i.438 to i64
  %and.i.442 = and i32 %add127, 7
  br label %for.body.124

for.body.124:                                     ; preds = %for.inc, %for.body.124.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.124.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %skip.3535 = phi i32 [ %skip.2, %for.body.124.lr.ph ], [ 0, %for.inc ]
  br i1 %31, label %get_bit.exit448, label %if.end.i.446

if.end.i.446:                                     ; preds = %for.body.124
  %arrayidx.i.440 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.439
  %37 = load i8, i8* %arrayidx.i.440, align 1, !tbaa !17
  %conv.i.441 = zext i8 %37 to i32
  %shr2.i.443 = lshr i32 %conv.i.441, %and.i.442
  %shr2.tr.i.444 = trunc i32 %shr2.i.443 to i8
  %conv4.i.445 = and i8 %shr2.tr.i.444, 1
  br label %get_bit.exit448

get_bit.exit448:                                  ; preds = %for.body.124, %if.end.i.446
  %retval.0.i.447 = phi i8 [ %conv4.i.445, %if.end.i.446 ], [ 0, %for.body.124 ]
  %shl130 = shl nuw nsw i8 %retval.0.i.447, 5
  br i1 %32, label %get_bit.exit437, label %if.end.i.435

if.end.i.435:                                     ; preds = %get_bit.exit448
  %arrayidx.i.429 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.428
  %38 = load i8, i8* %arrayidx.i.429, align 1, !tbaa !17
  %conv.i.430 = zext i8 %38 to i32
  %shr2.i.432 = lshr i32 %conv.i.430, %and.i.431
  %shr2.tr.i.433 = trunc i32 %shr2.i.432 to i8
  %conv4.i.434 = and i8 %shr2.tr.i.433, 1
  br label %get_bit.exit437

get_bit.exit437:                                  ; preds = %get_bit.exit448, %if.end.i.435
  %retval.0.i.436 = phi i8 [ %conv4.i.434, %if.end.i.435 ], [ 0, %get_bit.exit448 ]
  %shl138 = shl nuw nsw i8 %retval.0.i.436, 4
  %or140294 = or i8 %shl138, %shl130
  br i1 %33, label %get_bit.exit426, label %if.end.i.424

if.end.i.424:                                     ; preds = %get_bit.exit437
  %arrayidx.i.418 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.417
  %39 = load i8, i8* %arrayidx.i.418, align 1, !tbaa !17
  %conv.i.419 = zext i8 %39 to i32
  %shr2.i.421 = lshr i32 %conv.i.419, %and.i.420
  %shr2.tr.i.422 = trunc i32 %shr2.i.421 to i8
  %conv4.i.423 = and i8 %shr2.tr.i.422, 1
  br label %get_bit.exit426

get_bit.exit426:                                  ; preds = %get_bit.exit437, %if.end.i.424
  %retval.0.i.425 = phi i8 [ %conv4.i.423, %if.end.i.424 ], [ 0, %get_bit.exit437 ]
  %shl147 = shl nuw nsw i8 %retval.0.i.425, 3
  %or149295 = or i8 %or140294, %shl147
  br i1 %34, label %get_bit.exit415, label %if.end.i.413

if.end.i.413:                                     ; preds = %get_bit.exit426
  %arrayidx.i.407 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.406
  %40 = load i8, i8* %arrayidx.i.407, align 1, !tbaa !17
  %conv.i.408 = zext i8 %40 to i32
  %shr2.i.410 = lshr i32 %conv.i.408, %and.i.409
  %shr2.tr.i.411 = trunc i32 %shr2.i.410 to i8
  %conv4.i.412 = and i8 %shr2.tr.i.411, 1
  br label %get_bit.exit415

get_bit.exit415:                                  ; preds = %get_bit.exit426, %if.end.i.413
  %retval.0.i.414 = phi i8 [ %conv4.i.412, %if.end.i.413 ], [ 0, %get_bit.exit426 ]
  %shl156 = shl nuw nsw i8 %retval.0.i.414, 2
  %or158296 = or i8 %or149295, %shl156
  br i1 %35, label %get_bit.exit404, label %if.end.i.402

if.end.i.402:                                     ; preds = %get_bit.exit415
  %arrayidx.i.396 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.395
  %41 = load i8, i8* %arrayidx.i.396, align 1, !tbaa !17
  %conv.i.397 = zext i8 %41 to i32
  %shr2.i.399 = lshr i32 %conv.i.397, %and.i.398
  %shr2.tr.i.400 = trunc i32 %shr2.i.399 to i8
  %conv4.i.401 = and i8 %shr2.tr.i.400, 1
  br label %get_bit.exit404

get_bit.exit404:                                  ; preds = %get_bit.exit415, %if.end.i.402
  %retval.0.i.403 = phi i8 [ %conv4.i.401, %if.end.i.402 ], [ 0, %get_bit.exit415 ]
  %shl164 = shl nuw nsw i8 %retval.0.i.403, 1
  %or166297 = or i8 %or158296, %shl164
  br i1 %36, label %get_bit.exit393, label %if.end.i.391

if.end.i.391:                                     ; preds = %get_bit.exit404
  %arrayidx.i.385 = getelementptr inbounds [32 x i8], [32 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.384
  %42 = load i8, i8* %arrayidx.i.385, align 1, !tbaa !17
  %conv.i.386 = zext i8 %42 to i32
  %shr2.i.388 = lshr i32 %conv.i.386, %and.i.387
  %shr2.tr.i.389 = trunc i32 %shr2.i.388 to i8
  %conv4.i.390 = and i8 %shr2.tr.i.389, 1
  br label %get_bit.exit393

get_bit.exit393:                                  ; preds = %get_bit.exit404, %if.end.i.391
  %retval.0.i.392 = phi i8 [ %conv4.i.390, %if.end.i.391 ], [ 0, %get_bit.exit404 ]
  %or172 = or i8 %or166297, %retval.0.i.392
  call void @ec_GFp_nistp_recode_scalar_bits(i8* nonnull %sign, i8* nonnull %digit, i8 zeroext %or172) #1
  %43 = load i8, i8* %digit, align 1, !tbaa !17
  %conv174 = zext i8 %43 to i64
  %arraydecay177 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %pre_comp, i64 %indvars.iv, i64 0
  call fastcc void @select_point(i64 %conv174, i32 17, [3 x [4 x i64]]* %arraydecay177, [4 x i64]* %arraydecay40)
  %44 = load i64, i64* %arraydecay68, align 16, !tbaa !6
  %conv.i.366 = zext i64 %44 to i128
  %sub.i = sub nsw i128 40564819207303340845695479315968, %conv.i.366
  %45 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !6
  %conv3.i.368 = zext i64 %45 to i128
  %sub4.i = sub nsw i128 40564819207303340847894502572032, %conv3.i.368
  %46 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !6
  %conv7.i = zext i64 %46 to i128
  %sub8.i = sub nsw i128 40564819207303340845695479316992, %conv7.i
  %47 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !6
  %conv11.i = zext i64 %47 to i128
  %sub12.i = sub nsw i128 40564819207303340845695479316992, %conv11.i
  %48 = load i8, i8* %sign, align 1, !tbaa !17
  %conv185 = zext i8 %48 to i128
  %sub186 = add nuw nsw i128 %conv185, 18446744073709551615
  %coerce.sroa.0.0.extract.trunc = trunc i128 %sub186 to i64
  %neg.i = sub nsw i128 0, %conv185
  %and.i.364 = and i64 %coerce.sroa.0.0.extract.trunc, %44
  %conv3.i.365 = zext i64 %and.i.364 to i128
  %and6.i = and i128 %sub.i, %neg.i
  %or.i = or i128 %conv3.i.365, %and6.i
  store i128 %or.i, i128* %arraydecay179, align 16, !tbaa !2
  %and.1.i = and i64 %45, %coerce.sroa.0.0.extract.trunc
  %conv3.1.i = zext i64 %and.1.i to i128
  %and6.1.i = and i128 %sub4.i, %neg.i
  %or.1.i = or i128 %conv3.1.i, %and6.1.i
  store i128 %or.1.i, i128* %arrayidx5.i.369, align 16, !tbaa !2
  %and.2.i = and i64 %46, %coerce.sroa.0.0.extract.trunc
  %conv3.2.i = zext i64 %and.2.i to i128
  %and6.2.i = and i128 %sub8.i, %neg.i
  %or.2.i = or i128 %conv3.2.i, %and6.2.i
  store i128 %or.2.i, i128* %arrayidx9.i, align 16, !tbaa !2
  %and.3.i = and i64 %47, %coerce.sroa.0.0.extract.trunc
  %conv3.3.i = zext i64 %and.3.i to i128
  %and6.3.i = and i128 %sub12.i, %neg.i
  %or.3.i = or i128 %conv3.3.i, %and6.3.i
  store i128 %or.3.i, i128* %arrayidx13.i, align 16, !tbaa !2
  call fastcc void @felem_contract(i64* %arraydecay68, i128* %arraydecay179)
  %tobool190 = icmp eq i32 %skip.3535, 0
  br i1 %tobool190, label %if.then.191, label %if.else.210

if.then.191:                                      ; preds = %get_bit.exit393
  call fastcc void @point_add(i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i128* %arraydecay62, i128* %arraydecay66, i128* %arraydecay70, i32 %mixed, i64* %arraydecay64, i64* %arraydecay68, i64* %arraydecay72)
  br label %for.inc

if.else.210:                                      ; preds = %get_bit.exit393
  %49 = load i64, i64* %arraydecay64, align 16, !tbaa !6
  %conv.i.332 = zext i64 %49 to i128
  store i128 %conv.i.332, i128* %arraydecay62, align 16, !tbaa !2
  %50 = load i64, i64* %arrayidx2.i.450, align 8, !tbaa !6
  %conv3.i.334 = zext i64 %50 to i128
  store i128 %conv3.i.334, i128* %arrayidx4.i.452, align 16, !tbaa !2
  %51 = load i64, i64* %arrayidx5.i.453, align 16, !tbaa !6
  %conv6.i.337 = zext i64 %51 to i128
  store i128 %conv6.i.337, i128* %arrayidx7.i.455, align 16, !tbaa !2
  %52 = load i64, i64* %arrayidx8.i.456, align 8, !tbaa !6
  %conv9.i.340 = zext i64 %52 to i128
  store i128 %conv9.i.340, i128* %arrayidx10.i.458, align 16, !tbaa !2
  %53 = load i64, i64* %arraydecay68, align 16, !tbaa !6
  %conv.i.322 = zext i64 %53 to i128
  store i128 %conv.i.322, i128* %arraydecay66, align 16, !tbaa !2
  %54 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !6
  %conv3.i.324 = zext i64 %54 to i128
  store i128 %conv3.i.324, i128* %arrayidx4.i.462, align 16, !tbaa !2
  %55 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !6
  %conv6.i.327 = zext i64 %55 to i128
  store i128 %conv6.i.327, i128* %arrayidx7.i.465, align 16, !tbaa !2
  %56 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !6
  %conv9.i.330 = zext i64 %56 to i128
  store i128 %conv9.i.330, i128* %arrayidx10.i.468, align 16, !tbaa !2
  %57 = load i64, i64* %arraydecay72, align 16, !tbaa !6
  %conv.i.317 = zext i64 %57 to i128
  store i128 %conv.i.317, i128* %arraydecay70, align 16, !tbaa !2
  %58 = load i64, i64* %arrayidx2.i.514, align 8, !tbaa !6
  %conv3.i = zext i64 %58 to i128
  store i128 %conv3.i, i128* %arrayidx4.i.516, align 16, !tbaa !2
  %59 = load i64, i64* %arrayidx5.i.517, align 16, !tbaa !6
  %conv6.i = zext i64 %59 to i128
  store i128 %conv6.i, i128* %arrayidx7.i.519, align 16, !tbaa !2
  %60 = load i64, i64* %arrayidx8.i.520, align 8, !tbaa !6
  %conv9.i = zext i64 %60 to i128
  store i128 %conv9.i, i128* %arrayidx10.i.522, align 16, !tbaa !2
  br label %for.inc

for.inc:                                          ; preds = %if.then.191, %if.else.210
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_points
  br i1 %exitcond, label %for.inc.225.loopexit, label %for.body.124

for.inc.225.loopexit:                             ; preds = %for.inc
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.inc.225.loopexit, %if.end.115
  %skip.5 = phi i32 [ %skip.2, %if.end.115 ], [ 0, %for.inc.225.loopexit ]
  %dec = add nsw i32 %i.0537, -1
  %cmp4 = icmp sgt i32 %i.0537, 0
  br i1 %cmp4, label %for.body, label %for.end.226

for.end.226:                                      ; preds = %for.inc.225
  %61 = load i128, i128* %arraydecay62, align 16, !tbaa !2
  store i128 %61, i128* %x_out, align 16, !tbaa !2
  %62 = load i128, i128* %arrayidx4.i.452, align 16, !tbaa !2
  %arrayidx3.i.312 = getelementptr inbounds i128, i128* %x_out, i64 1
  store i128 %62, i128* %arrayidx3.i.312, align 16, !tbaa !2
  %63 = load i128, i128* %arrayidx7.i.455, align 16, !tbaa !2
  %arrayidx5.i.314 = getelementptr inbounds i128, i128* %x_out, i64 2
  store i128 %63, i128* %arrayidx5.i.314, align 16, !tbaa !2
  %64 = load i128, i128* %arrayidx10.i.458, align 16, !tbaa !2
  %arrayidx7.i.316 = getelementptr inbounds i128, i128* %x_out, i64 3
  store i128 %64, i128* %arrayidx7.i.316, align 16, !tbaa !2
  %65 = load i128, i128* %arraydecay66, align 16, !tbaa !2
  store i128 %65, i128* %y_out, align 16, !tbaa !2
  %66 = load i128, i128* %arrayidx4.i.462, align 16, !tbaa !2
  %arrayidx3.i.306 = getelementptr inbounds i128, i128* %y_out, i64 1
  store i128 %66, i128* %arrayidx3.i.306, align 16, !tbaa !2
  %67 = load i128, i128* %arrayidx7.i.465, align 16, !tbaa !2
  %arrayidx5.i.308 = getelementptr inbounds i128, i128* %y_out, i64 2
  store i128 %67, i128* %arrayidx5.i.308, align 16, !tbaa !2
  %68 = load i128, i128* %arrayidx10.i.468, align 16, !tbaa !2
  %arrayidx7.i.310 = getelementptr inbounds i128, i128* %y_out, i64 3
  store i128 %68, i128* %arrayidx7.i.310, align 16, !tbaa !2
  %69 = load i128, i128* %arraydecay70, align 16, !tbaa !2
  store i128 %69, i128* %z_out, align 16, !tbaa !2
  %70 = load i128, i128* %arrayidx4.i.516, align 16, !tbaa !2
  %arrayidx3.i = getelementptr inbounds i128, i128* %z_out, i64 1
  store i128 %70, i128* %arrayidx3.i, align 16, !tbaa !2
  %71 = load i128, i128* %arrayidx7.i.519, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds i128, i128* %z_out, i64 2
  store i128 %71, i128* %arrayidx5.i, align 16, !tbaa !2
  %72 = load i128, i128* %arrayidx10.i.522, align 16, !tbaa !2
  %arrayidx7.i = getelementptr inbounds i128, i128* %z_out, i64 3
  store i128 %72, i128* %arrayidx7.i, align 16, !tbaa !2
  call void @llvm.lifetime.end(i64 1, i8* nonnull %digit) #1
  call void @llvm.lifetime.end(i64 1, i8* nonnull %sign) #1
  call void @llvm.lifetime.end(i64 96, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 192, i8* %0) #1
  ret void
}

declare void @EC_POINT_free(%struct.ec_point_st*) #3

declare void @EC_pre_comp_free(%struct.ec_group_st*) #3

declare i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @point_add(i128* nocapture %x3, i128* nocapture %y3, i128* nocapture %z3, i128* nocapture readonly %x1, i128* nocapture readonly %y1, i128* nocapture readonly %z1, i32 %mixed, i64* nocapture readonly %x2, i64* nocapture readonly %y2, i64* nocapture readonly %z2) #0 {
entry:
  %ftmp = alloca [4 x i128], align 16
  %ftmp2 = alloca [4 x i128], align 16
  %ftmp3 = alloca [4 x i128], align 16
  %ftmp4 = alloca [4 x i128], align 16
  %ftmp6 = alloca [4 x i128], align 16
  %tmp = alloca [8 x i128], align 16
  %tmp2 = alloca [8 x i128], align 16
  %0 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x i128]* %ftmp3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %3 = bitcast [4 x i128]* %ftmp4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #1
  %4 = bitcast [4 x i128]* %ftmp6 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #1
  %5 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #1
  %6 = bitcast [8 x i128]* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* %6) #1
  %arrayidx.i = getelementptr inbounds i128, i128* %z1, i64 3
  %7 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %7, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %z1, i64 2
  %8 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %8, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %8, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %9 = load i128, i128* %z1, align 16, !tbaa !2
  %add16.i = add i128 %9, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %z1, i64 1
  %10 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %10, 1298074214633706907132628377272319
  %shr22.i = lshr i128 %add8.i, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i, 18446744073709551615
  %sub.i = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %add50.i = add i128 %add16.i, %conv48.i
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %sub54.i = sub i128 %add19.i, %shl52.i
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %conv86.i = trunc i128 %sub70.i to i64
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %conv96.i = trunc i128 %add84.i to i64
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %shr100.i, %sub78.i
  %conv106.i = trunc i128 %add94.i to i64
  %conv119.i = trunc i128 %add104.i to i64
  %or.i.3452776 = or i128 %add84.i, %sub70.i
  %or3.i2777 = or i128 %or.i.3452776, %add94.i
  %or5.i2778 = or i128 %or3.i2777, %add104.i
  %or5.i = trunc i128 %or5.i2778 to i64
  %dec.i = add i64 %or5.i, -1
  %shl.i.348 = shl i64 %dec.i, 32
  %and.i.349 = and i64 %shl.i.348, %dec.i
  %shl6.i = shl i64 %and.i.349, 16
  %and7.i = and i64 %shl6.i, %and.i.349
  %shl8.i = shl i64 %and7.i, 8
  %and9.i = and i64 %shl8.i, %and7.i
  %shl10.i = shl i64 %and9.i, 4
  %and11.i = and i64 %shl10.i, %and9.i
  %shl12.i = shl i64 %and11.i, 2
  %and13.i = and i64 %shl12.i, %and11.i
  %shl14.i = shl i64 %and13.i, 1
  %and15.i = and i64 %shl14.i, %and13.i
  %xor.i.350 = xor i64 %conv86.i, -1
  %xor18.i = xor i64 %conv96.i, 4294967295
  %or19.i = or i64 %xor18.i, %xor.i.350
  %or22.i = or i64 %or19.i, %conv106.i
  %xor24.i = xor i64 %conv119.i, -4294967295
  %or25.i = or i64 %or22.i, %xor24.i
  %dec26.i = add i64 %or25.i, -1
  %shl27.i = shl i64 %dec26.i, 32
  %and28.i = and i64 %shl27.i, %dec26.i
  %shl29.i = shl i64 %and28.i, 16
  %and30.i = and i64 %shl29.i, %and28.i
  %shl31.i = shl i64 %and30.i, 8
  %and32.i = and i64 %shl31.i, %and30.i
  %shl33.i = shl i64 %and32.i, 4
  %and34.i = and i64 %shl33.i, %and32.i
  %shl35.i = shl i64 %and34.i, 2
  %and36.i = and i64 %shl35.i, %and34.i
  %shl37.i = shl i64 %and36.i, 1
  %and38.i = and i64 %shl37.i, %and36.i
  %sub86.i = or i64 %and38.i, %and15.i
  %or41.i = ashr i64 %sub86.i, 63
  %coerce.sroa.2.0.insert.ext = zext i64 %or41.i to i128
  %coerce.sroa.2.0.insert.shift = shl nuw i128 %coerce.sroa.2.0.insert.ext, 64
  %coerce.sroa.0.0.insert.insert = or i128 %coerce.sroa.2.0.insert.shift, %coerce.sroa.2.0.insert.ext
  %11 = load i64, i64* %z2, align 8, !tbaa !6
  %arrayidx1.i.511 = getelementptr inbounds i64, i64* %z2, i64 1
  %12 = load i64, i64* %arrayidx1.i.511, align 8, !tbaa !6
  %or.i.512 = or i64 %12, %11
  %arrayidx2.i.513 = getelementptr inbounds i64, i64* %z2, i64 2
  %13 = load i64, i64* %arrayidx2.i.513, align 8, !tbaa !6
  %or3.i.514 = or i64 %or.i.512, %13
  %arrayidx4.i.515 = getelementptr inbounds i64, i64* %z2, i64 3
  %14 = load i64, i64* %arrayidx4.i.515, align 8, !tbaa !6
  %or5.i.516 = or i64 %or3.i.514, %14
  %dec.i.517 = add i64 %or5.i.516, -1
  %shl.i.518 = shl i64 %dec.i.517, 32
  %and.i.519 = and i64 %shl.i.518, %dec.i.517
  %shl6.i.520 = shl i64 %and.i.519, 16
  %and7.i.521 = and i64 %shl6.i.520, %and.i.519
  %shl8.i.522 = shl i64 %and7.i.521, 8
  %and9.i.523 = and i64 %shl8.i.522, %and7.i.521
  %shl10.i.524 = shl i64 %and9.i.523, 4
  %and11.i.525 = and i64 %shl10.i.524, %and9.i.523
  %shl12.i.526 = shl i64 %and11.i.525, 2
  %and13.i.527 = and i64 %shl12.i.526, %and11.i.525
  %shl14.i.528 = shl i64 %and13.i.527, 1
  %and15.i.529 = and i64 %shl14.i.528, %and13.i.527
  %xor.i.530 = xor i64 %11, -1
  %xor18.i.531 = xor i64 %12, 4294967295
  %or19.i.532 = or i64 %xor18.i.531, %xor.i.530
  %or22.i.533 = or i64 %or19.i.532, %13
  %xor24.i.534 = xor i64 %14, -4294967295
  %or25.i.535 = or i64 %or22.i.533, %xor24.i.534
  %dec26.i.536 = add i64 %or25.i.535, -1
  %shl27.i.537 = shl i64 %dec26.i.536, 32
  %and28.i.538 = and i64 %shl27.i.537, %dec26.i.536
  %shl29.i.539 = shl i64 %and28.i.538, 16
  %and30.i.540 = and i64 %shl29.i.539, %and28.i.538
  %shl31.i.541 = shl i64 %and30.i.540, 8
  %and32.i.542 = and i64 %shl31.i.541, %and30.i.540
  %shl33.i.543 = shl i64 %and32.i.542, 4
  %and34.i.544 = and i64 %shl33.i.543, %and32.i.542
  %shl35.i.545 = shl i64 %and34.i.544, 2
  %and36.i.546 = and i64 %shl35.i.545, %and34.i.544
  %shl37.i.547 = shl i64 %and36.i.546, 1
  %and38.i.548 = and i64 %shl37.i.547, %and36.i.546
  %sub86.i.549 = or i64 %and38.i.548, %and15.i.529
  %or41.i.550 = ashr i64 %sub86.i.549, 63
  %coerce14.sroa.2.0.insert.ext = zext i64 %or41.i.550 to i128
  %coerce14.sroa.2.0.insert.shift = shl nuw i128 %coerce14.sroa.2.0.insert.ext, 64
  %coerce14.sroa.0.0.insert.insert = or i128 %coerce14.sroa.2.0.insert.shift, %coerce14.sroa.2.0.insert.ext
  %arraydecay15 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  %conv.i.596 = and i128 %sub70.i, 18446744073709551615
  %mul.i.597 = mul nuw i128 %conv.i.596, %conv.i.596
  %shr.i.598 = lshr i128 %mul.i.597, 64
  %conv5.i.599 = and i128 %mul.i.597, 18446744073709551615
  store i128 %conv5.i.599, i128* %arraydecay15, align 16, !tbaa !2
  %arrayidx8.i.600 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %conv12.i.602 = and i128 %add84.i, 18446744073709551615
  %mul13.i.603 = mul nuw i128 %conv12.i.602, %conv.i.596
  %shr15.i.604 = lshr i128 %mul13.i.603, 64
  %conv17.i.605 = shl i128 %mul13.i.603, 1
  %factor.i.606 = and i128 %conv17.i.605, 36893488147419103230
  %add21.i.607 = add nuw nsw i128 %factor.i.606, %shr.i.598
  store i128 %add21.i.607, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %arrayidx23.i.608 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %conv27.i.610 = and i128 %add94.i, 18446744073709551615
  %mul28.i.611 = mul nuw i128 %conv27.i.610, %conv.i.596
  %shr30.i.612 = lshr i128 %mul28.i.611, 64
  %conv32.i.613 = and i128 %mul28.i.611, 18446744073709551615
  %add34.i.614 = add nuw nsw i128 %conv32.i.613, %shr15.i.604
  %mul36.i.615 = shl nuw nsw i128 %add34.i.614, 1
  %arrayidx38.i.616 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %conv42.i.618 = and i128 %add104.i, 18446744073709551615
  %mul43.i.619 = mul nuw i128 %conv42.i.618, %conv.i.596
  %shr45.i.620 = lshr i128 %mul43.i.619, 64
  %conv47.i.621 = and i128 %mul43.i.619, 18446744073709551615
  %arrayidx51.i.623 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %mul56.i.624 = mul nuw i128 %conv27.i.610, %conv12.i.602
  %shr58.i.625 = lshr i128 %mul56.i.624, 64
  %conv60.i.626 = and i128 %mul56.i.624, 18446744073709551615
  %add49.i.622 = add nuw nsw i128 %conv60.i.626, %shr30.i.612
  %add62.i.627 = add nuw nsw i128 %add49.i.622, %conv47.i.621
  %mul64.i.628 = shl nuw nsw i128 %add62.i.627, 1
  %add67.i.629 = add nuw nsw i128 %shr45.i.620, %shr58.i.625
  %mul72.i.630 = mul nuw i128 %conv12.i.602, %conv12.i.602
  %shr74.i.631 = lshr i128 %mul72.i.630, 64
  %conv76.i.632 = and i128 %mul72.i.630, 18446744073709551615
  %add78.i.633 = add nuw nsw i128 %mul36.i.615, %conv76.i.632
  store i128 %add78.i.633, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add81.i.634 = add nuw nsw i128 %mul64.i.628, %shr74.i.631
  store i128 %add81.i.634, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul86.i.635 = mul nuw i128 %conv42.i.618, %conv12.i.602
  %shr88.i.636 = lshr i128 %mul86.i.635, 64
  %conv90.i.637 = and i128 %mul86.i.635, 18446744073709551615
  %add92.i.638 = add nuw nsw i128 %add67.i.629, %conv90.i.637
  %mul94.i.639 = shl nuw nsw i128 %add92.i.638, 1
  %arrayidx96.i.640 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %mul101.i.641 = mul nuw i128 %conv42.i.618, %conv27.i.610
  %shr103.i.642 = lshr i128 %mul101.i.641, 64
  %conv105.i.643 = and i128 %mul101.i.641, 18446744073709551615
  %add107.i.644 = add nuw nsw i128 %conv105.i.643, %shr88.i.636
  %mul109.i.645 = shl nuw nsw i128 %add107.i.644, 1
  %arrayidx111.i.646 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %add114.i.647 = shl nuw nsw i128 %shr103.i.642, 1
  %mul119.i.648 = mul nuw i128 %conv27.i.610, %conv27.i.610
  %shr121.i.649 = lshr i128 %mul119.i.648, 64
  %conv123.i.650 = and i128 %mul119.i.648, 18446744073709551615
  %add125.i.651 = add nuw nsw i128 %mul94.i.639, %conv123.i.650
  store i128 %add125.i.651, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add128.i.652 = add nuw nsw i128 %mul109.i.645, %shr121.i.649
  store i128 %add128.i.652, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %mul133.i.653 = mul nuw i128 %conv42.i.618, %conv42.i.618
  %shr135.i.654 = lshr i128 %mul133.i.653, 64
  %conv137.i.655 = and i128 %mul133.i.653, 18446744073709551615
  %add139.i.656 = add nuw nsw i128 %add114.i.647, %conv137.i.655
  store i128 %add139.i.656, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %arrayidx141.i.657 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  store i128 %shr135.i.654, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %arraydecay17 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %add.i.834 = add nuw nsw i128 %conv5.i.599, 1267650600228229401427983728624
  %add3.i.836 = or i128 %add21.i.607, 1267650600228229401496703205376
  %arrayidx4.i.837 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  %add6.i.839 = add nuw nsw i128 %add78.i.633, 1267650600228229401427983728656
  %arrayidx7.i.840 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  %add9.i.842 = add nuw nsw i128 %add81.i.634, 1267650600228229401427983728656
  %arrayidx10.i.843 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  %shl.i.i.846 = shl nuw nsw i128 %add128.i.652, 32
  %add.i.i.847 = add nuw nsw i128 %shl.i.i.846, %add125.i.651
  %add3.i.i.848 = add nuw nsw i128 %add.i.i.847, %add.i.834
  %sub.i.i.849 = sub nsw i128 %add9.i.842, %add.i.i.847
  %sub7.i.i.851 = sub nsw i128 %add128.i.652, %shr135.i.654
  %add9.i.i.852 = add nsw i128 %sub7.i.i.851, %add3.i.836
  %sub11.i.i.853 = sub nsw i128 %add6.i.839, %sub7.i.i.851
  %shl13.i.i.854 = shl nuw nsw i128 %add125.i.651, 32
  %sub15.i.i.855 = sub nsw i128 %add9.i.i.852, %shl13.i.i.854
  %add19.i.i.857 = add i128 %shl13.i.i.854, %sub.i.i.849
  %sub23.i.i.859 = sub nsw i128 %sub11.i.i.853, %shl.i.i.846
  %sub26.i.i.861 = sub i128 %add3.i.i.848, %add139.i.656
  %shl28.i.i.862 = shl nuw nsw i128 %add139.i.656, 32
  %sub30.i.i.863 = sub i128 %sub26.i.i.861, %shl28.i.i.862
  %shl32.i.i.864 = shl nuw nsw i128 %add139.i.656, 33
  %add34.i.i.865 = add i128 %shl32.i.i.864, %sub15.i.i.855
  store i128 %add34.i.i.865, i128* %arrayidx4.i.837, align 16, !tbaa !2
  %mul.i.i.866 = shl nuw nsw i128 %add139.i.656, 1
  %add37.i.i.867 = add i128 %mul.i.i.866, %sub23.i.i.859
  %sub41.i.i.869 = sub i128 %add19.i.i.857, %shl28.i.i.862
  %sub44.i.i.870 = sub i128 %sub30.i.i.863, %shr135.i.654
  %shl46.i.i.871 = shl nuw nsw i128 %shr135.i.654, 32
  %sub48.i.i.872 = sub i128 %sub44.i.i.870, %shl46.i.i.871
  store i128 %sub48.i.i.872, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.873 = shl nuw nsw i128 %shr135.i.654, 33
  %add52.i.i.874 = add i128 %shl50.i.i.873, %add37.i.i.867
  store i128 %add52.i.i.874, i128* %arrayidx7.i.840, align 16, !tbaa !2
  %mul54.i.i.875 = mul nuw nsw i128 %shr135.i.654, 3
  %add56.i.i.876 = add i128 %mul54.i.i.875, %sub41.i.i.869
  store i128 %add56.i.i.876, i128* %arrayidx10.i.843, align 16, !tbaa !2
  %add.i.1841 = add i128 %add56.i.i.876, 18446744069414584320
  %shr.i.1843 = lshr i128 %add52.i.i.874, 64
  %add8.i.1844 = add i128 %add.i.1841, %shr.i.1843
  %conv12.i.1845 = and i128 %add52.i.i.874, 18446744073709551615
  %add13.i.1846 = add nuw nsw i128 %conv12.i.1845, 18446673704965373952
  %add16.i.1847 = add i128 %sub48.i.i.872, 18446744073709551615
  %add19.i.1849 = add i128 %add34.i.i.865, 1298074214633706907132628377272319
  %shr22.i.1850 = lshr i128 %add8.i.1844, 64
  %conv23.i.1851 = trunc i128 %shr22.i.1850 to i64
  %conv26.i.1852 = and i128 %add8.i.1844, 18446744073709551615
  %sub.i.1853 = sub nsw i128 %conv26.i.1852, %shr22.i.1850
  %shl.i.1854 = shl nuw nsw i128 %shr22.i.1850, 32
  %add32.i.1855 = add nsw i128 %sub.i.1853, %shl.i.1854
  %shr34.i.1856 = lshr i128 %add32.i.1855, 64
  %conv35.i.1857 = trunc i128 %shr34.i.1856 to i64
  %add36.i.1858 = add i64 %conv35.i.1857, %conv23.i.1851
  %conv39.i.1859 = and i128 %add32.i.1855, 18446744073709551615
  %sub43.i.1860 = sub nsw i128 %conv39.i.1859, %shr34.i.1856
  %shl45.i.1861 = shl nuw nsw i128 %shr34.i.1856, 32
  %add47.i.1862 = add nsw i128 %sub43.i.1860, %shl45.i.1861
  %conv48.i.1863 = zext i64 %add36.i.1858 to i128
  %add50.i.1864 = add i128 %add16.i.1847, %conv48.i.1863
  %shl52.i.1865 = shl nuw nsw i128 %conv48.i.1863, 32
  %sub54.i.1866 = sub i128 %add19.i.1849, %shl52.i.1865
  %shr56.i.1867 = lshr i128 %add47.i.1862, 64
  %conv57.i.1868 = trunc i128 %shr56.i.1867 to i64
  %sub58.i.1869 = sub i64 0, %conv57.i.1868
  %conv60.i.1870 = trunc i128 %add47.i.1862 to i64
  %and.i.1871 = and i64 %conv60.i.1870, 9223372036854775807
  %neg.i.1872 = sub nsw i64 9223372032559808512, %and.i.1871
  %sub62177.i.1873 = and i64 %neg.i.1872, %conv60.i.1870
  %and66.i.1874 = ashr i64 %sub62177.i.1873, 63
  %or.i.1875 = or i64 %and66.i.1874, %sub58.i.1869
  %conv68.i.1876 = zext i64 %or.i.1875 to i128
  %sub70.i.1877 = sub i128 %add50.i.1864, %conv68.i.1876
  %and71.i.1878 = and i64 %or.i.1875, 4294967295
  %conv72.i.1879 = zext i64 %and71.i.1878 to i128
  %sub74.i.1880 = sub i128 %sub54.i.1866, %conv72.i.1879
  %and75.i.1881 = and i64 %or.i.1875, -4294967295
  %conv76.i.1882 = zext i64 %and75.i.1881 to i128
  %sub78.i.1883 = sub nsw i128 %add47.i.1862, %conv76.i.1882
  %shr80.i.1884 = lshr i128 %sub70.i.1877, 64
  %add84.i.1885 = add i128 %sub74.i.1880, %shr80.i.1884
  %shr90.i.1887 = lshr i128 %add84.i.1885, 64
  %add94.i.1888 = add nuw nsw i128 %add13.i.1846, %shr90.i.1887
  %shr100.i.1890 = lshr i128 %add94.i.1888, 64
  %add104.i.1891 = add nsw i128 %sub78.i.1883, %shr100.i.1890
  %tobool = icmp eq i32 %mixed, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load i64, i64* %z2, align 8, !tbaa !6
  %conv.i.2530 = zext i64 %15 to i128
  %mul.i.2531 = mul nuw i128 %conv.i.2530, %conv.i.2530
  %shr.i.2532 = lshr i128 %mul.i.2531, 64
  %conv5.i.2533 = and i128 %mul.i.2531, 18446744073709551615
  store i128 %conv5.i.2533, i128* %arraydecay15, align 16, !tbaa !2
  %16 = load i64, i64* %arrayidx1.i.511, align 8, !tbaa !6
  %conv12.i.2536 = zext i64 %16 to i128
  %mul13.i.2537 = mul nuw i128 %conv12.i.2536, %conv.i.2530
  %shr15.i.2538 = lshr i128 %mul13.i.2537, 64
  %conv17.i.2539 = shl i128 %mul13.i.2537, 1
  %factor.i.2540 = and i128 %conv17.i.2539, 36893488147419103230
  %add21.i.2541 = add nuw nsw i128 %factor.i.2540, %shr.i.2532
  store i128 %add21.i.2541, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %17 = load i64, i64* %arrayidx2.i.513, align 8, !tbaa !6
  %conv27.i.2544 = zext i64 %17 to i128
  %mul28.i.2545 = mul nuw i128 %conv27.i.2544, %conv.i.2530
  %shr30.i.2546 = lshr i128 %mul28.i.2545, 64
  %conv32.i.2547 = and i128 %mul28.i.2545, 18446744073709551615
  %add34.i.2548 = add nuw nsw i128 %conv32.i.2547, %shr15.i.2538
  %mul36.i.2549 = shl nuw nsw i128 %add34.i.2548, 1
  %18 = load i64, i64* %arrayidx4.i.515, align 8, !tbaa !6
  %conv42.i.2552 = zext i64 %18 to i128
  %mul43.i.2553 = mul nuw i128 %conv42.i.2552, %conv.i.2530
  %shr45.i.2554 = lshr i128 %mul43.i.2553, 64
  %conv47.i.2555 = and i128 %mul43.i.2553, 18446744073709551615
  %mul56.i.2558 = mul nuw i128 %conv27.i.2544, %conv12.i.2536
  %shr58.i.2559 = lshr i128 %mul56.i.2558, 64
  %conv60.i.2560 = and i128 %mul56.i.2558, 18446744073709551615
  %add49.i.2556 = add nuw nsw i128 %conv60.i.2560, %shr30.i.2546
  %add62.i.2561 = add nuw nsw i128 %add49.i.2556, %conv47.i.2555
  %mul64.i.2562 = shl nuw nsw i128 %add62.i.2561, 1
  %add67.i.2563 = add nuw nsw i128 %shr45.i.2554, %shr58.i.2559
  %mul72.i.2564 = mul nuw i128 %conv12.i.2536, %conv12.i.2536
  %shr74.i.2565 = lshr i128 %mul72.i.2564, 64
  %conv76.i.2566 = and i128 %mul72.i.2564, 18446744073709551615
  %add78.i.2567 = add nuw nsw i128 %mul36.i.2549, %conv76.i.2566
  store i128 %add78.i.2567, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add81.i.2568 = add nuw nsw i128 %mul64.i.2562, %shr74.i.2565
  store i128 %add81.i.2568, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul86.i.2569 = mul nuw i128 %conv42.i.2552, %conv12.i.2536
  %shr88.i.2570 = lshr i128 %mul86.i.2569, 64
  %conv90.i.2571 = and i128 %mul86.i.2569, 18446744073709551615
  %add92.i.2572 = add nuw nsw i128 %add67.i.2563, %conv90.i.2571
  %mul94.i.2573 = shl nuw nsw i128 %add92.i.2572, 1
  %mul101.i.2575 = mul nuw i128 %conv42.i.2552, %conv27.i.2544
  %shr103.i.2576 = lshr i128 %mul101.i.2575, 64
  %conv105.i.2577 = and i128 %mul101.i.2575, 18446744073709551615
  %add107.i.2578 = add nuw nsw i128 %conv105.i.2577, %shr88.i.2570
  %mul109.i.2579 = shl nuw nsw i128 %add107.i.2578, 1
  %add114.i.2581 = shl nuw nsw i128 %shr103.i.2576, 1
  %mul119.i.2582 = mul nuw i128 %conv27.i.2544, %conv27.i.2544
  %shr121.i.2583 = lshr i128 %mul119.i.2582, 64
  %conv123.i.2584 = and i128 %mul119.i.2582, 18446744073709551615
  %add125.i.2585 = add nuw nsw i128 %mul94.i.2573, %conv123.i.2584
  store i128 %add125.i.2585, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add128.i.2586 = add nuw nsw i128 %mul109.i.2579, %shr121.i.2583
  store i128 %add128.i.2586, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %mul133.i.2587 = mul nuw i128 %conv42.i.2552, %conv42.i.2552
  %shr135.i.2588 = lshr i128 %mul133.i.2587, 64
  %conv137.i.2589 = and i128 %mul133.i.2587, 18446744073709551615
  %add139.i.2590 = add nuw nsw i128 %add114.i.2581, %conv137.i.2589
  store i128 %add139.i.2590, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr135.i.2588, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %arraydecay22 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 0
  %add.i.2487 = add nuw nsw i128 %conv5.i.2533, 1267650600228229401427983728624
  %add3.i.2489 = or i128 %add21.i.2541, 1267650600228229401496703205376
  %arrayidx4.i.2490 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 1
  %add6.i.2492 = add nuw nsw i128 %add78.i.2567, 1267650600228229401427983728656
  %arrayidx7.i.2493 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 2
  %add9.i.2495 = add nuw nsw i128 %add81.i.2568, 1267650600228229401427983728656
  %arrayidx10.i.2496 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 3
  %shl.i.i.2499 = shl nuw nsw i128 %add128.i.2586, 32
  %add.i.i.2500 = add nuw nsw i128 %shl.i.i.2499, %add125.i.2585
  %add3.i.i.2501 = add nuw nsw i128 %add.i.i.2500, %add.i.2487
  %sub.i.i.2502 = sub nsw i128 %add9.i.2495, %add.i.i.2500
  %sub7.i.i.2504 = sub nsw i128 %add128.i.2586, %shr135.i.2588
  %add9.i.i.2505 = add nsw i128 %sub7.i.i.2504, %add3.i.2489
  %sub11.i.i.2506 = sub nsw i128 %add6.i.2492, %sub7.i.i.2504
  %shl13.i.i.2507 = shl nuw nsw i128 %add125.i.2585, 32
  %sub15.i.i.2508 = sub nsw i128 %add9.i.i.2505, %shl13.i.i.2507
  %add19.i.i.2510 = add i128 %shl13.i.i.2507, %sub.i.i.2502
  %sub23.i.i.2512 = sub nsw i128 %sub11.i.i.2506, %shl.i.i.2499
  %sub26.i.i.2514 = sub i128 %add3.i.i.2501, %add139.i.2590
  %shl28.i.i.2515 = shl nuw nsw i128 %add139.i.2590, 32
  %sub30.i.i.2516 = sub i128 %sub26.i.i.2514, %shl28.i.i.2515
  %shl32.i.i.2517 = shl nuw nsw i128 %add139.i.2590, 33
  %add34.i.i.2518 = add i128 %shl32.i.i.2517, %sub15.i.i.2508
  store i128 %add34.i.i.2518, i128* %arrayidx4.i.2490, align 16, !tbaa !2
  %mul.i.i.2519 = shl nuw nsw i128 %add139.i.2590, 1
  %add37.i.i.2520 = add i128 %mul.i.i.2519, %sub23.i.i.2512
  %sub41.i.i.2522 = sub i128 %add19.i.i.2510, %shl28.i.i.2515
  %sub44.i.i.2523 = sub i128 %sub30.i.i.2516, %shr135.i.2588
  %shl46.i.i.2524 = shl nuw nsw i128 %shr135.i.2588, 32
  %sub48.i.i.2525 = sub i128 %sub44.i.i.2523, %shl46.i.i.2524
  store i128 %sub48.i.i.2525, i128* %arraydecay22, align 16, !tbaa !2
  %shl50.i.i.2526 = shl nuw nsw i128 %shr135.i.2588, 33
  %add52.i.i.2527 = add i128 %shl50.i.i.2526, %add37.i.i.2520
  store i128 %add52.i.i.2527, i128* %arrayidx7.i.2493, align 16, !tbaa !2
  %mul54.i.i.2528 = mul nuw nsw i128 %shr135.i.2588, 3
  %add56.i.i.2529 = add i128 %mul54.i.i.2528, %sub41.i.i.2522
  store i128 %add56.i.i.2529, i128* %arrayidx10.i.2496, align 16, !tbaa !2
  %add.i.2431 = add i128 %add56.i.i.2529, 18446744069414584320
  %shr.i.2433 = lshr i128 %add52.i.i.2527, 64
  %add8.i.2434 = add i128 %add.i.2431, %shr.i.2433
  %conv12.i.2435 = and i128 %add52.i.i.2527, 18446744073709551615
  %add13.i.2436 = add nuw nsw i128 %conv12.i.2435, 18446673704965373952
  %add16.i.2437 = add i128 %sub48.i.i.2525, 18446744073709551615
  %add19.i.2439 = add i128 %add34.i.i.2518, 1298074214633706907132628377272319
  %shr22.i.2440 = lshr i128 %add8.i.2434, 64
  %conv23.i.2441 = trunc i128 %shr22.i.2440 to i64
  %conv26.i.2442 = and i128 %add8.i.2434, 18446744073709551615
  %sub.i.2443 = sub nsw i128 %conv26.i.2442, %shr22.i.2440
  %shl.i.2444 = shl nuw nsw i128 %shr22.i.2440, 32
  %add32.i.2445 = add nsw i128 %sub.i.2443, %shl.i.2444
  %shr34.i.2446 = lshr i128 %add32.i.2445, 64
  %conv35.i.2447 = trunc i128 %shr34.i.2446 to i64
  %add36.i.2448 = add i64 %conv35.i.2447, %conv23.i.2441
  %conv39.i.2449 = and i128 %add32.i.2445, 18446744073709551615
  %sub43.i.2450 = sub nsw i128 %conv39.i.2449, %shr34.i.2446
  %shl45.i.2451 = shl nuw nsw i128 %shr34.i.2446, 32
  %add47.i.2452 = add nsw i128 %sub43.i.2450, %shl45.i.2451
  %conv48.i.2453 = zext i64 %add36.i.2448 to i128
  %add50.i.2454 = add i128 %add16.i.2437, %conv48.i.2453
  %shl52.i.2455 = shl nuw nsw i128 %conv48.i.2453, 32
  %sub54.i.2456 = sub i128 %add19.i.2439, %shl52.i.2455
  %shr56.i.2457 = lshr i128 %add47.i.2452, 64
  %conv57.i.2458 = trunc i128 %shr56.i.2457 to i64
  %sub58.i.2459 = sub i64 0, %conv57.i.2458
  %conv60.i.2460 = trunc i128 %add47.i.2452 to i64
  %and.i.2461 = and i64 %conv60.i.2460, 9223372036854775807
  %neg.i.2462 = sub nsw i64 9223372032559808512, %and.i.2461
  %sub62177.i.2463 = and i64 %neg.i.2462, %conv60.i.2460
  %and66.i.2464 = ashr i64 %sub62177.i.2463, 63
  %or.i.2465 = or i64 %and66.i.2464, %sub58.i.2459
  %conv68.i.2466 = zext i64 %or.i.2465 to i128
  %sub70.i.2467 = sub i128 %add50.i.2454, %conv68.i.2466
  %and71.i.2468 = and i64 %or.i.2465, 4294967295
  %conv72.i.2469 = zext i64 %and71.i.2468 to i128
  %sub74.i.2470 = sub i128 %sub54.i.2456, %conv72.i.2469
  %and75.i.2471 = and i64 %or.i.2465, -4294967295
  %conv76.i.2472 = zext i64 %and75.i.2471 to i128
  %sub78.i.2473 = sub nsw i128 %add47.i.2452, %conv76.i.2472
  %shr80.i.2474 = lshr i128 %sub70.i.2467, 64
  %add84.i.2475 = add i128 %sub74.i.2470, %shr80.i.2474
  %shr90.i.2477 = lshr i128 %add84.i.2475, 64
  %add94.i.2478 = add nuw nsw i128 %add13.i.2436, %shr90.i.2477
  %shr100.i.2480 = lshr i128 %add94.i.2478, 64
  %add104.i.2481 = add nsw i128 %sub78.i.2473, %shr100.i.2480
  %arrayidx.i.2373 = getelementptr inbounds i128, i128* %x1, i64 3
  %19 = load i128, i128* %arrayidx.i.2373, align 16, !tbaa !2
  %add.i.2374 = add i128 %19, 18446744069414584320
  %arrayidx6.i.2375 = getelementptr inbounds i128, i128* %x1, i64 2
  %20 = load i128, i128* %arrayidx6.i.2375, align 16, !tbaa !2
  %shr.i.2376 = lshr i128 %20, 64
  %add8.i.2377 = add i128 %add.i.2374, %shr.i.2376
  %conv12.i.2378 = and i128 %20, 18446744073709551615
  %add13.i.2379 = add nuw nsw i128 %conv12.i.2378, 18446673704965373952
  %21 = load i128, i128* %x1, align 16, !tbaa !2
  %add16.i.2380 = add i128 %21, 18446744073709551615
  %arrayidx18.i.2381 = getelementptr inbounds i128, i128* %x1, i64 1
  %22 = load i128, i128* %arrayidx18.i.2381, align 16, !tbaa !2
  %add19.i.2382 = add i128 %22, 1298074214633706907132628377272319
  %shr22.i.2383 = lshr i128 %add8.i.2377, 64
  %conv23.i.2384 = trunc i128 %shr22.i.2383 to i64
  %conv26.i.2385 = and i128 %add8.i.2377, 18446744073709551615
  %sub.i.2386 = sub nsw i128 %conv26.i.2385, %shr22.i.2383
  %shl.i.2387 = shl nuw nsw i128 %shr22.i.2383, 32
  %add32.i.2388 = add nsw i128 %sub.i.2386, %shl.i.2387
  %shr34.i.2389 = lshr i128 %add32.i.2388, 64
  %conv35.i.2390 = trunc i128 %shr34.i.2389 to i64
  %add36.i.2391 = add i64 %conv35.i.2390, %conv23.i.2384
  %conv39.i.2392 = and i128 %add32.i.2388, 18446744073709551615
  %sub43.i.2393 = sub nsw i128 %conv39.i.2392, %shr34.i.2389
  %shl45.i.2394 = shl nuw nsw i128 %shr34.i.2389, 32
  %add47.i.2395 = add nsw i128 %sub43.i.2393, %shl45.i.2394
  %conv48.i.2396 = zext i64 %add36.i.2391 to i128
  %add50.i.2397 = add i128 %add16.i.2380, %conv48.i.2396
  %shl52.i.2398 = shl nuw nsw i128 %conv48.i.2396, 32
  %sub54.i.2399 = sub i128 %add19.i.2382, %shl52.i.2398
  %shr56.i.2400 = lshr i128 %add47.i.2395, 64
  %conv57.i.2401 = trunc i128 %shr56.i.2400 to i64
  %sub58.i.2402 = sub i64 0, %conv57.i.2401
  %conv60.i.2403 = trunc i128 %add47.i.2395 to i64
  %and.i.2404 = and i64 %conv60.i.2403, 9223372036854775807
  %neg.i.2405 = sub nsw i64 9223372032559808512, %and.i.2404
  %sub62177.i.2406 = and i64 %neg.i.2405, %conv60.i.2403
  %and66.i.2407 = ashr i64 %sub62177.i.2406, 63
  %or.i.2408 = or i64 %and66.i.2407, %sub58.i.2402
  %conv68.i.2409 = zext i64 %or.i.2408 to i128
  %sub70.i.2410 = sub i128 %add50.i.2397, %conv68.i.2409
  %and71.i.2411 = and i64 %or.i.2408, 4294967295
  %conv72.i.2412 = zext i64 %and71.i.2411 to i128
  %sub74.i.2413 = sub i128 %sub54.i.2399, %conv72.i.2412
  %and75.i.2414 = and i64 %or.i.2408, -4294967295
  %conv76.i.2415 = zext i64 %and75.i.2414 to i128
  %sub78.i.2416 = sub nsw i128 %add47.i.2395, %conv76.i.2415
  %shr80.i.2417 = lshr i128 %sub70.i.2410, 64
  %add84.i.2418 = add i128 %sub74.i.2413, %shr80.i.2417
  %shr90.i.2420 = lshr i128 %add84.i.2418, 64
  %add94.i.2421 = add nuw nsw i128 %add13.i.2379, %shr90.i.2420
  %shr100.i.2423 = lshr i128 %add94.i.2421, 64
  %add104.i.2424 = add nsw i128 %sub78.i.2416, %shr100.i.2423
  %conv.i.2280 = and i128 %sub70.i.2410, 18446744073709551615
  %conv2.i.2281 = and i128 %sub70.i.2467, 18446744073709551615
  %mul.i.2282 = mul nuw i128 %conv.i.2280, %conv2.i.2281
  %shr.i.2283 = lshr i128 %mul.i.2282, 64
  %conv5.i.2284 = and i128 %mul.i.2282, 18446744073709551615
  store i128 %conv5.i.2284, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.2287 = and i128 %add84.i.2475, 18446744073709551615
  %mul13.i.2288 = mul nuw i128 %conv12.i.2287, %conv.i.2280
  %shr15.i.2289 = lshr i128 %mul13.i.2288, 64
  %conv17.i.2290 = and i128 %mul13.i.2288, 18446744073709551615
  %add.i.2291 = add nuw nsw i128 %conv17.i.2290, %shr.i.2283
  %conv22.i.2294 = and i128 %add84.i.2418, 18446744073709551615
  %mul25.i.2295 = mul nuw i128 %conv22.i.2294, %conv2.i.2281
  %shr27.i.2296 = lshr i128 %mul25.i.2295, 64
  %conv29.i.2297 = and i128 %mul25.i.2295, 18446744073709551615
  %add31.i.2298 = add nuw nsw i128 %add.i.2291, %conv29.i.2297
  store i128 %add31.i.2298, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %add34.i.2299 = add nuw nsw i128 %shr27.i.2296, %shr15.i.2289
  %conv38.i.2301 = and i128 %add94.i.2478, 18446744073709551615
  %mul39.i.2302 = mul nuw i128 %conv38.i.2301, %conv.i.2280
  %shr41.i.2303 = lshr i128 %mul39.i.2302, 64
  %conv43.i.2304 = and i128 %mul39.i.2302, 18446744073709551615
  %add45.i.2305 = add nuw nsw i128 %add34.i.2299, %conv43.i.2304
  %mul52.i.2307 = mul nuw i128 %conv22.i.2294, %conv12.i.2287
  %shr54.i.2308 = lshr i128 %mul52.i.2307, 64
  %conv56.i.2309 = and i128 %mul52.i.2307, 18446744073709551615
  %add58.i.2310 = add nuw nsw i128 %add45.i.2305, %conv56.i.2309
  %add61.i.2311 = add nuw nsw i128 %shr54.i.2308, %shr41.i.2303
  %conv63.i.2313 = and i128 %add94.i.2421, 18446744073709551615
  %mul66.i.2314 = mul nuw i128 %conv63.i.2313, %conv2.i.2281
  %shr68.i.2315 = lshr i128 %mul66.i.2314, 64
  %conv70.i.2316 = and i128 %mul66.i.2314, 18446744073709551615
  %add72.i.2317 = add nuw nsw i128 %add58.i.2310, %conv70.i.2316
  store i128 %add72.i.2317, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %conv79.i.2320 = and i128 %add104.i.2481, 18446744073709551615
  %mul80.i.2321 = mul nuw i128 %conv79.i.2320, %conv.i.2280
  %shr82.i.2322 = lshr i128 %mul80.i.2321, 64
  %conv84.i.2323 = and i128 %mul80.i.2321, 18446744073709551615
  %mul93.i.2326 = mul nuw i128 %conv38.i.2301, %conv22.i.2294
  %shr95.i.2327 = lshr i128 %mul93.i.2326, 64
  %conv97.i.2328 = and i128 %mul93.i.2326, 18446744073709551615
  %add102.i.2330 = add nuw nsw i128 %shr82.i.2322, %shr95.i.2327
  %mul107.i.2331 = mul nuw i128 %conv63.i.2313, %conv12.i.2287
  %shr109.i.2332 = lshr i128 %mul107.i.2331, 64
  %conv111.i.2333 = and i128 %mul107.i.2331, 18446744073709551615
  %add116.i.2335 = add nuw nsw i128 %add102.i.2330, %shr109.i.2332
  %conv118.i.2337 = and i128 %add104.i.2424, 18446744073709551615
  %mul121.i.2338 = mul nuw i128 %conv118.i.2337, %conv2.i.2281
  %shr123.i.2339 = lshr i128 %mul121.i.2338, 64
  %conv125.i.2340 = and i128 %mul121.i.2338, 18446744073709551615
  %add75.i.2318 = add nuw nsw i128 %add61.i.2311, %conv97.i.2328
  %add86.i.2324 = add nuw nsw i128 %add75.i.2318, %shr68.i.2315
  %add99.i.2329 = add nuw nsw i128 %add86.i.2324, %conv84.i.2323
  %add113.i.2334 = add nuw nsw i128 %add99.i.2329, %conv111.i.2333
  %add127.i.2341 = add nuw nsw i128 %add113.i.2334, %conv125.i.2340
  store i128 %add127.i.2341, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i.2343 = mul nuw i128 %conv79.i.2320, %conv22.i.2294
  %shr137.i.2344 = lshr i128 %mul135.i.2343, 64
  %conv139.i.2345 = and i128 %mul135.i.2343, 18446744073709551615
  %mul148.i.2348 = mul nuw i128 %conv63.i.2313, %conv38.i.2301
  %shr150.i.2349 = lshr i128 %mul148.i.2348, 64
  %conv152.i.2350 = and i128 %mul148.i.2348, 18446744073709551615
  %add157.i.2352 = add nuw nsw i128 %shr150.i.2349, %shr137.i.2344
  %mul162.i.2353 = mul nuw i128 %conv118.i.2337, %conv12.i.2287
  %shr164.i.2354 = lshr i128 %mul162.i.2353, 64
  %conv166.i.2355 = and i128 %mul162.i.2353, 18446744073709551615
  %add130.i.2342 = add nuw nsw i128 %add116.i.2335, %conv139.i.2345
  %add141.i.2346 = add nuw nsw i128 %add130.i.2342, %conv152.i.2350
  %add154.i.2351 = add nuw nsw i128 %add141.i.2346, %shr123.i.2339
  %add168.i.2356 = add nuw nsw i128 %add154.i.2351, %conv166.i.2355
  store i128 %add168.i.2356, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i.2358 = mul nuw i128 %conv79.i.2320, %conv63.i.2313
  %shr178.i.2359 = lshr i128 %mul176.i.2358, 64
  %conv180.i.2360 = and i128 %mul176.i.2358, 18446744073709551615
  %mul189.i.2363 = mul nuw i128 %conv118.i.2337, %conv38.i.2301
  %shr191.i.2364 = lshr i128 %mul189.i.2363, 64
  %conv193.i.2365 = and i128 %mul189.i.2363, 18446744073709551615
  %add171.i.2357 = add nuw nsw i128 %add157.i.2352, %conv180.i.2360
  %add182.i.2361 = add nuw nsw i128 %add171.i.2357, %shr164.i.2354
  %add195.i.2366 = add nuw nsw i128 %add182.i.2361, %conv193.i.2365
  store i128 %add195.i.2366, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i.2367 = add nuw nsw i128 %shr191.i.2364, %shr178.i.2359
  %mul203.i.2368 = mul nuw i128 %conv118.i.2337, %conv79.i.2320
  %shr205.i.2369 = lshr i128 %mul203.i.2368, 64
  %conv207.i.2370 = and i128 %mul203.i.2368, 18446744073709551615
  %add209.i.2371 = add nuw nsw i128 %add198.i.2367, %conv207.i.2370
  store i128 %add209.i.2371, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i.2369, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %arraydecay30 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 0
  %add.i.2237 = add nuw nsw i128 %conv5.i.2284, 1267650600228229401427983728624
  %add3.i.2239 = or i128 %add31.i.2298, 1267650600228229401496703205376
  %arrayidx4.i.2240 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 1
  %add6.i.2242 = add nuw nsw i128 %add72.i.2317, 1267650600228229401427983728656
  %arrayidx7.i.2243 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 2
  %add9.i.2245 = add i128 %add127.i.2341, 1267650600228229401427983728656
  %arrayidx10.i.2246 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 3
  %shl.i.i.2249 = shl nuw nsw i128 %add195.i.2366, 32
  %add.i.i.2250 = add i128 %shl.i.i.2249, %add168.i.2356
  %add3.i.i.2251 = add i128 %add.i.i.2250, %add.i.2237
  %sub.i.i.2252 = sub i128 %add9.i.2245, %add.i.i.2250
  %sub7.i.i.2254 = sub nsw i128 %add195.i.2366, %shr205.i.2369
  %add9.i.i.2255 = add nsw i128 %sub7.i.i.2254, %add3.i.2239
  %sub11.i.i.2256 = sub nsw i128 %add6.i.2242, %sub7.i.i.2254
  %shl13.i.i.2257 = shl i128 %add168.i.2356, 32
  %sub15.i.i.2258 = sub i128 %add9.i.i.2255, %shl13.i.i.2257
  %add19.i.i.2260 = add i128 %shl13.i.i.2257, %sub.i.i.2252
  %sub23.i.i.2262 = sub i128 %sub11.i.i.2256, %shl.i.i.2249
  %sub26.i.i.2264 = sub i128 %add3.i.i.2251, %add209.i.2371
  %shl28.i.i.2265 = shl nuw nsw i128 %add209.i.2371, 32
  %sub30.i.i.2266 = sub i128 %sub26.i.i.2264, %shl28.i.i.2265
  %shl32.i.i.2267 = shl nuw nsw i128 %add209.i.2371, 33
  %add34.i.i.2268 = add i128 %shl32.i.i.2267, %sub15.i.i.2258
  store i128 %add34.i.i.2268, i128* %arrayidx4.i.2240, align 16, !tbaa !2
  %mul.i.i.2269 = shl nuw nsw i128 %add209.i.2371, 1
  %add37.i.i.2270 = add i128 %mul.i.i.2269, %sub23.i.i.2262
  %sub41.i.i.2272 = sub i128 %add19.i.i.2260, %shl28.i.i.2265
  %sub44.i.i.2273 = sub i128 %sub30.i.i.2266, %shr205.i.2369
  %shl46.i.i.2274 = shl nuw nsw i128 %shr205.i.2369, 32
  %sub48.i.i.2275 = sub i128 %sub44.i.i.2273, %shl46.i.i.2274
  store i128 %sub48.i.i.2275, i128* %arraydecay30, align 16, !tbaa !2
  %shl50.i.i.2276 = shl nuw nsw i128 %shr205.i.2369, 33
  %add52.i.i.2277 = add i128 %shl50.i.i.2276, %add37.i.i.2270
  store i128 %add52.i.i.2277, i128* %arrayidx7.i.2243, align 16, !tbaa !2
  %mul54.i.i.2278 = mul nuw nsw i128 %shr205.i.2369, 3
  %add56.i.i.2279 = add i128 %mul54.i.i.2278, %sub41.i.i.2272
  store i128 %add56.i.i.2279, i128* %arrayidx10.i.2246, align 16, !tbaa !2
  %23 = load i128, i128* %z1, align 16, !tbaa !2
  %24 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %25 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %26 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %27 = load i64, i64* %z2, align 8, !tbaa !6
  %conv.i.2220 = zext i64 %27 to i128
  %28 = load i64, i64* %arrayidx1.i.511, align 8, !tbaa !6
  %conv3.i.2223 = zext i64 %28 to i128
  %29 = load i64, i64* %arrayidx2.i.513, align 8, !tbaa !6
  %conv7.i = zext i64 %29 to i128
  %add9.i.2227 = add i128 %conv7.i, %25
  %30 = load i64, i64* %arrayidx4.i.515, align 8, !tbaa !6
  %conv11.i = zext i64 %30 to i128
  %shr.i.i.2104 = lshr i128 %add9.i.2227, 64
  %add13.i.2230 = add i128 %26, 18446744069414584320
  %add.i.i.2102 = add i128 %add13.i.2230, %conv11.i
  %add8.i.i.2105 = add i128 %add.i.i.2102, %shr.i.i.2104
  %conv12.i.i.2106 = and i128 %add9.i.2227, 18446744073709551615
  %add13.i.i.2107 = add nuw nsw i128 %conv12.i.i.2106, 18446673704965373952
  %shr22.i.i.2111 = lshr i128 %add8.i.i.2105, 64
  %conv23.i.i.2112 = trunc i128 %shr22.i.i.2111 to i64
  %conv26.i.i.2113 = and i128 %add8.i.i.2105, 18446744073709551615
  %sub.i.i.2114 = sub nsw i128 %conv26.i.i.2113, %shr22.i.i.2111
  %shl.i.i.2115 = shl nuw nsw i128 %shr22.i.i.2111, 32
  %add32.i.i.2116 = add nsw i128 %sub.i.i.2114, %shl.i.i.2115
  %shr34.i.i.2117 = lshr i128 %add32.i.i.2116, 64
  %conv35.i.i.2118 = trunc i128 %shr34.i.i.2117 to i64
  %add36.i.i.2119 = add i64 %conv35.i.i.2118, %conv23.i.i.2112
  %conv39.i.i.2120 = and i128 %add32.i.i.2116, 18446744073709551615
  %sub43.i.i.2121 = sub nsw i128 %conv39.i.i.2120, %shr34.i.i.2117
  %shl45.i.i.2122 = shl nuw nsw i128 %shr34.i.i.2117, 32
  %add47.i.i.2123 = add nsw i128 %sub43.i.i.2121, %shl45.i.i.2122
  %conv48.i.i.2124 = zext i64 %add36.i.i.2119 to i128
  %shl52.i.i.2126 = shl nuw nsw i128 %conv48.i.i.2124, 32
  %shr56.i.i.2128 = lshr i128 %add47.i.i.2123, 64
  %conv57.i.i.2129 = trunc i128 %shr56.i.i.2128 to i64
  %sub58.i.i.2130 = sub i64 0, %conv57.i.i.2129
  %conv60.i.i.2131 = trunc i128 %add47.i.i.2123 to i64
  %and.i.i.2132 = and i64 %conv60.i.i.2131, 9223372036854775807
  %neg.i.i.2133 = sub nsw i64 9223372032559808512, %and.i.i.2132
  %sub62177.i.i.2134 = and i64 %neg.i.i.2133, %conv60.i.i.2131
  %and66.i.i.2135 = ashr i64 %sub62177.i.i.2134, 63
  %or.i.i.2136 = or i64 %and66.i.i.2135, %sub58.i.i.2130
  %conv68.i.i.2137 = zext i64 %or.i.i.2136 to i128
  %add.i.2221 = add i128 %23, 18446744073709551615
  %add16.i.i.2108 = add i128 %add.i.2221, %conv.i.2220
  %add50.i.i.2125 = add i128 %add16.i.i.2108, %conv48.i.i.2124
  %sub70.i.i.2138 = sub i128 %add50.i.i.2125, %conv68.i.i.2137
  %and71.i.i.2139 = and i64 %or.i.i.2136, 4294967295
  %conv72.i.i.2140 = zext i64 %and71.i.i.2139 to i128
  %and75.i.i.2142 = and i64 %or.i.i.2136, -4294967295
  %conv76.i.i.2143 = zext i64 %and75.i.i.2142 to i128
  %sub78.i.i.2144 = sub nsw i128 %add47.i.i.2123, %conv76.i.i.2143
  %shr80.i.i.2145 = lshr i128 %sub70.i.i.2138, 64
  %add5.i = add i128 %24, 1298074214633706907132628377272319
  %add19.i.i.2110 = add i128 %add5.i, %conv3.i.2223
  %sub54.i.i.2127 = sub i128 %add19.i.i.2110, %shl52.i.i.2126
  %sub74.i.i.2141 = sub i128 %sub54.i.i.2127, %conv72.i.i.2140
  %add84.i.i.2146 = add i128 %sub74.i.i.2141, %shr80.i.i.2145
  %shr90.i.i.2148 = lshr i128 %add84.i.i.2146, 64
  %add94.i.i.2149 = add nuw nsw i128 %add13.i.i.2107, %shr90.i.i.2148
  %shr100.i.i.2151 = lshr i128 %add94.i.i.2149, 64
  %add104.i.i.2152 = add nsw i128 %sub78.i.i.2144, %shr100.i.i.2151
  %conv.i.2158 = and i128 %sub70.i.i.2138, 18446744073709551615
  %mul.i.2159 = mul nuw i128 %conv.i.2158, %conv.i.2158
  %shr.i.2160 = lshr i128 %mul.i.2159, 64
  %conv5.i.2161 = and i128 %mul.i.2159, 18446744073709551615
  store i128 %conv5.i.2161, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.2164 = and i128 %add84.i.i.2146, 18446744073709551615
  %mul13.i.2165 = mul nuw i128 %conv12.i.2164, %conv.i.2158
  %shr15.i.2166 = lshr i128 %mul13.i.2165, 64
  %conv17.i.2167 = shl i128 %mul13.i.2165, 1
  %factor.i.2168 = and i128 %conv17.i.2167, 36893488147419103230
  %add21.i.2169 = add nuw nsw i128 %factor.i.2168, %shr.i.2160
  store i128 %add21.i.2169, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv27.i.2172 = and i128 %add94.i.i.2149, 18446744073709551615
  %mul28.i.2173 = mul nuw i128 %conv27.i.2172, %conv.i.2158
  %shr30.i.2174 = lshr i128 %mul28.i.2173, 64
  %conv32.i.2175 = and i128 %mul28.i.2173, 18446744073709551615
  %add34.i.2176 = add nuw nsw i128 %conv32.i.2175, %shr15.i.2166
  %mul36.i.2177 = shl nuw nsw i128 %add34.i.2176, 1
  %conv42.i.2180 = and i128 %add104.i.i.2152, 18446744073709551615
  %mul43.i.2181 = mul nuw i128 %conv42.i.2180, %conv.i.2158
  %shr45.i.2182 = lshr i128 %mul43.i.2181, 64
  %conv47.i.2183 = and i128 %mul43.i.2181, 18446744073709551615
  %mul56.i.2186 = mul nuw i128 %conv27.i.2172, %conv12.i.2164
  %shr58.i.2187 = lshr i128 %mul56.i.2186, 64
  %conv60.i.2188 = and i128 %mul56.i.2186, 18446744073709551615
  %add49.i.2184 = add nuw nsw i128 %conv60.i.2188, %shr30.i.2174
  %add62.i.2189 = add nuw nsw i128 %add49.i.2184, %conv47.i.2183
  %mul64.i.2190 = shl nuw nsw i128 %add62.i.2189, 1
  %add67.i.2191 = add nuw nsw i128 %shr45.i.2182, %shr58.i.2187
  %mul72.i.2192 = mul nuw i128 %conv12.i.2164, %conv12.i.2164
  %shr74.i.2193 = lshr i128 %mul72.i.2192, 64
  %conv76.i.2194 = and i128 %mul72.i.2192, 18446744073709551615
  %add78.i.2195 = add nuw nsw i128 %mul36.i.2177, %conv76.i.2194
  store i128 %add78.i.2195, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add81.i.2196 = add nuw nsw i128 %mul64.i.2190, %shr74.i.2193
  store i128 %add81.i.2196, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul86.i.2197 = mul nuw i128 %conv42.i.2180, %conv12.i.2164
  %shr88.i.2198 = lshr i128 %mul86.i.2197, 64
  %conv90.i.2199 = and i128 %mul86.i.2197, 18446744073709551615
  %add92.i.2200 = add nuw nsw i128 %add67.i.2191, %conv90.i.2199
  %mul94.i.2201 = shl nuw nsw i128 %add92.i.2200, 1
  %mul101.i.2203 = mul nuw i128 %conv42.i.2180, %conv27.i.2172
  %shr103.i.2204 = lshr i128 %mul101.i.2203, 64
  %conv105.i.2205 = and i128 %mul101.i.2203, 18446744073709551615
  %add107.i.2206 = add nuw nsw i128 %conv105.i.2205, %shr88.i.2198
  %mul109.i.2207 = shl nuw nsw i128 %add107.i.2206, 1
  %add114.i.2209 = shl nuw nsw i128 %shr103.i.2204, 1
  %mul119.i.2210 = mul nuw i128 %conv27.i.2172, %conv27.i.2172
  %shr121.i.2211 = lshr i128 %mul119.i.2210, 64
  %conv123.i.2212 = and i128 %mul119.i.2210, 18446744073709551615
  %add125.i.2213 = add nuw nsw i128 %mul94.i.2201, %conv123.i.2212
  store i128 %add125.i.2213, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add128.i.2214 = add nuw nsw i128 %mul109.i.2207, %shr121.i.2211
  store i128 %add128.i.2214, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %mul133.i.2215 = mul nuw i128 %conv42.i.2180, %conv42.i.2180
  %shr135.i.2216 = lshr i128 %mul133.i.2215, 64
  %conv137.i.2217 = and i128 %mul133.i.2215, 18446744073709551615
  %add139.i.2218 = add nuw nsw i128 %add114.i.2209, %conv137.i.2217
  store i128 %add139.i.2218, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr135.i.2216, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %shl.i.i.2069 = shl nuw nsw i128 %add128.i.2214, 32
  %add.i.i.2070 = add nuw nsw i128 %shl.i.i.2069, %add125.i.2213
  %sub7.i.i.2074 = sub nsw i128 %add128.i.2214, %shr135.i.2216
  %shl13.i.i.2077 = shl nuw nsw i128 %add125.i.2213, 32
  %shl28.i.i.2085 = shl nuw nsw i128 %add139.i.2218, 32
  %shl32.i.i.2087 = shl nuw nsw i128 %add139.i.2218, 33
  %mul.i.i.2089 = shl nuw nsw i128 %add139.i.2218, 1
  %shl46.i.i.2094 = shl nuw nsw i128 %shr135.i.2216, 32
  %shl50.i.i.2096 = shl nuw nsw i128 %shr135.i.2216, 33
  %mul54.i.i.2098 = mul nuw nsw i128 %shr135.i.2216, 3
  %31 = load i128, i128* %arraydecay17, align 16, !tbaa !2
  %32 = load i128, i128* %arraydecay22, align 16, !tbaa !2
  %add.i.2047 = add i128 %32, %31
  store i128 %add.i.2047, i128* %arraydecay22, align 16, !tbaa !2
  %33 = load i128, i128* %arrayidx4.i.837, align 16, !tbaa !2
  %34 = load i128, i128* %arrayidx4.i.2490, align 16, !tbaa !2
  %add4.i.2050 = add i128 %34, %33
  store i128 %add4.i.2050, i128* %arrayidx4.i.2490, align 16, !tbaa !2
  %35 = load i128, i128* %arrayidx7.i.840, align 16, !tbaa !2
  %36 = load i128, i128* %arrayidx7.i.2493, align 16, !tbaa !2
  %add7.i.2053 = add i128 %36, %35
  store i128 %add7.i.2053, i128* %arrayidx7.i.2493, align 16, !tbaa !2
  %37 = load i128, i128* %arrayidx10.i.843, align 16, !tbaa !2
  %38 = load i128, i128* %arrayidx10.i.2496, align 16, !tbaa !2
  %add10.i.2056 = add i128 %38, %37
  store i128 %add10.i.2056, i128* %arrayidx10.i.2496, align 16, !tbaa !2
  %add3.i.i.2071 = add nuw nsw i128 %conv5.i.2161, 41832469807531570247123463044592
  %sub26.i.i.2084 = sub nsw i128 %add3.i.i.2071, %add139.i.2218
  %sub30.i.i.2086 = add nuw nsw i128 %sub26.i.i.2084, %add.i.i.2070
  %sub44.i.i.2093 = sub i128 %sub30.i.i.2086, %shl28.i.i.2085
  %sub48.i.i.2095 = sub i128 %sub44.i.i.2093, %add.i.2047
  %add.i.2033 = sub i128 %sub48.i.i.2095, %shr135.i.2216
  %sub.i.2040 = sub i128 %add.i.2033, %shl46.i.i.2094
  %add9.i.i.2075 = or i128 %add21.i.2169, 41832469807531570249391205777408
  %sub15.i.i.2078 = sub nsw i128 %add9.i.i.2075, %shl13.i.i.2077
  %add34.i.i.2088 = add i128 %sub15.i.i.2078, %shl32.i.i.2087
  %add2.i.2035 = sub i128 %add34.i.i.2088, %add4.i.2050
  %sub11.i.2042 = add i128 %add2.i.2035, %sub7.i.i.2074
  %sub11.i.i.2076 = add nuw nsw i128 %add78.i.2195, 41832469807531570247123463045648
  %sub23.i.i.2082 = sub nsw i128 %sub11.i.i.2076, %shl.i.i.2069
  %add37.i.i.2090 = add nuw nsw i128 %sub23.i.i.2082, %mul.i.i.2089
  %add52.i.i.2097 = sub i128 %add37.i.i.2090, %add7.i.2053
  %add4.i.2037 = sub i128 %add52.i.i.2097, %sub7.i.i.2074
  %sub14.i.2044 = add i128 %add4.i.2037, %shl50.i.i.2096
  %sub.i.i.2072 = add nuw nsw i128 %add81.i.2196, 41832469807531570247123463045648
  %add19.i.i.2080 = add nuw nsw i128 %sub.i.i.2072, %shl13.i.i.2077
  %sub41.i.i.2092 = sub i128 %add19.i.i.2080, %add.i.i.2070
  %add56.i.i.2099 = sub i128 %sub41.i.i.2092, %shl28.i.i.2085
  %add6.i.2039 = sub i128 %add56.i.i.2099, %add10.i.2056
  %sub17.i.2046 = add i128 %add6.i.2039, %mul54.i.i.2098
  %39 = load i64, i64* %z2, align 8, !tbaa !6
  %conv2.i.1941 = zext i64 %39 to i128
  %mul.i.1942 = mul nuw i128 %conv2.i.1941, %conv2.i.2281
  %shr.i.1943 = lshr i128 %mul.i.1942, 64
  %conv5.i.1944 = and i128 %mul.i.1942, 18446744073709551615
  store i128 %conv5.i.1944, i128* %arraydecay15, align 16, !tbaa !2
  %40 = load i64, i64* %arrayidx1.i.511, align 8, !tbaa !6
  %conv12.i.1947 = zext i64 %40 to i128
  %mul13.i.1948 = mul nuw i128 %conv12.i.1947, %conv2.i.2281
  %shr15.i.1949 = lshr i128 %mul13.i.1948, 64
  %conv17.i.1950 = and i128 %mul13.i.1948, 18446744073709551615
  %mul25.i.1955 = mul nuw i128 %conv2.i.1941, %conv12.i.2287
  %shr27.i.1956 = lshr i128 %mul25.i.1955, 64
  %conv29.i.1957 = and i128 %mul25.i.1955, 18446744073709551615
  %add.i.1951 = add nuw nsw i128 %conv29.i.1957, %shr.i.1943
  %add31.i.1958 = add nuw nsw i128 %add.i.1951, %conv17.i.1950
  store i128 %add31.i.1958, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %41 = load i64, i64* %arrayidx2.i.513, align 8, !tbaa !6
  %conv38.i.1961 = zext i64 %41 to i128
  %mul39.i.1962 = mul nuw i128 %conv38.i.1961, %conv2.i.2281
  %shr41.i.1963 = lshr i128 %mul39.i.1962, 64
  %conv43.i.1964 = and i128 %mul39.i.1962, 18446744073709551615
  %mul52.i.1967 = mul nuw i128 %conv12.i.1947, %conv12.i.2287
  %shr54.i.1968 = lshr i128 %mul52.i.1967, 64
  %conv56.i.1969 = and i128 %mul52.i.1967, 18446744073709551615
  %mul66.i.1974 = mul nuw i128 %conv2.i.1941, %conv38.i.2301
  %shr68.i.1975 = lshr i128 %mul66.i.1974, 64
  %conv70.i.1976 = and i128 %mul66.i.1974, 18446744073709551615
  %add34.i.1959 = add nuw nsw i128 %conv70.i.1976, %shr27.i.1956
  %add45.i.1965 = add nuw nsw i128 %add34.i.1959, %shr15.i.1949
  %add58.i.1970 = add nuw nsw i128 %add45.i.1965, %conv56.i.1969
  %add72.i.1977 = add nuw nsw i128 %add58.i.1970, %conv43.i.1964
  store i128 %add72.i.1977, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %42 = load i64, i64* %arrayidx4.i.515, align 8, !tbaa !6
  %conv79.i.1980 = zext i64 %42 to i128
  %mul80.i.1981 = mul nuw i128 %conv79.i.1980, %conv2.i.2281
  %shr82.i.1982 = lshr i128 %mul80.i.1981, 64
  %conv84.i.1983 = and i128 %mul80.i.1981, 18446744073709551615
  %mul93.i.1986 = mul nuw i128 %conv38.i.1961, %conv12.i.2287
  %shr95.i.1987 = lshr i128 %mul93.i.1986, 64
  %conv97.i.1988 = and i128 %mul93.i.1986, 18446744073709551615
  %mul107.i.1991 = mul nuw i128 %conv12.i.1947, %conv38.i.2301
  %shr109.i.1992 = lshr i128 %mul107.i.1991, 64
  %conv111.i.1993 = and i128 %mul107.i.1991, 18446744073709551615
  %mul121.i.1998 = mul nuw i128 %conv2.i.1941, %conv79.i.2320
  %shr123.i.1999 = lshr i128 %mul121.i.1998, 64
  %conv125.i.2000 = and i128 %mul121.i.1998, 18446744073709551615
  %add61.i.1971 = add nuw nsw i128 %conv125.i.2000, %shr68.i.1975
  %add75.i.1978 = add nuw nsw i128 %add61.i.1971, %shr54.i.1968
  %add86.i.1984 = add nuw nsw i128 %add75.i.1978, %conv111.i.1993
  %add99.i.1989 = add nuw nsw i128 %add86.i.1984, %shr41.i.1963
  %add113.i.1994 = add nuw nsw i128 %add99.i.1989, %conv97.i.1988
  %add127.i.2001 = add nuw nsw i128 %add113.i.1994, %conv84.i.1983
  store i128 %add127.i.2001, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i.2003 = mul nuw i128 %conv79.i.1980, %conv12.i.2287
  %shr137.i.2004 = lshr i128 %mul135.i.2003, 64
  %conv139.i.2005 = and i128 %mul135.i.2003, 18446744073709551615
  %mul148.i.2008 = mul nuw i128 %conv38.i.1961, %conv38.i.2301
  %shr150.i.2009 = lshr i128 %mul148.i.2008, 64
  %conv152.i.2010 = and i128 %mul148.i.2008, 18446744073709551615
  %mul162.i.2013 = mul nuw i128 %conv12.i.1947, %conv79.i.2320
  %shr164.i.2014 = lshr i128 %mul162.i.2013, 64
  %conv166.i.2015 = and i128 %mul162.i.2013, 18446744073709551615
  %add102.i.1990 = add nuw nsw i128 %shr109.i.1992, %shr123.i.1999
  %add116.i.1995 = add nuw nsw i128 %add102.i.1990, %conv166.i.2015
  %add130.i.2002 = add nuw nsw i128 %add116.i.1995, %shr95.i.1987
  %add141.i.2006 = add nuw nsw i128 %add130.i.2002, %conv152.i.2010
  %add154.i.2011 = add nuw nsw i128 %add141.i.2006, %shr82.i.1982
  %add168.i.2016 = add nuw nsw i128 %add154.i.2011, %conv139.i.2005
  store i128 %add168.i.2016, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i.2018 = mul nuw i128 %conv79.i.1980, %conv38.i.2301
  %shr178.i.2019 = lshr i128 %mul176.i.2018, 64
  %conv180.i.2020 = and i128 %mul176.i.2018, 18446744073709551615
  %mul189.i.2023 = mul nuw i128 %conv38.i.1961, %conv79.i.2320
  %shr191.i.2024 = lshr i128 %mul189.i.2023, 64
  %conv193.i.2025 = and i128 %mul189.i.2023, 18446744073709551615
  %add157.i.2012 = add nuw nsw i128 %shr150.i.2009, %shr164.i.2014
  %add171.i.2017 = add nuw nsw i128 %add157.i.2012, %conv193.i.2025
  %add182.i.2021 = add nuw nsw i128 %add171.i.2017, %shr137.i.2004
  %add195.i.2026 = add nuw nsw i128 %add182.i.2021, %conv180.i.2020
  store i128 %add195.i.2026, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i.2027 = add nuw nsw i128 %shr178.i.2019, %shr191.i.2024
  %mul203.i.2028 = mul nuw i128 %conv79.i.1980, %conv79.i.2320
  %shr205.i.2029 = lshr i128 %mul203.i.2028, 64
  %conv207.i.2030 = and i128 %mul203.i.2028, 18446744073709551615
  %add209.i.2031 = add nuw nsw i128 %add198.i.2027, %conv207.i.2030
  store i128 %add209.i.2031, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i.2029, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %add.i.1897 = add nuw nsw i128 %conv5.i.1944, 1267650600228229401427983728624
  %add3.i.1899 = or i128 %add31.i.1958, 1267650600228229401496703205376
  %add6.i.1902 = add nuw nsw i128 %add72.i.1977, 1267650600228229401427983728656
  %add9.i.1905 = add i128 %add127.i.2001, 1267650600228229401427983728656
  %shl.i.i.1909 = shl nuw nsw i128 %add195.i.2026, 32
  %add.i.i.1910 = add i128 %shl.i.i.1909, %add168.i.2016
  %add3.i.i.1911 = add i128 %add.i.i.1910, %add.i.1897
  %sub.i.i.1912 = sub i128 %add9.i.1905, %add.i.i.1910
  %sub7.i.i.1914 = sub nsw i128 %add195.i.2026, %shr205.i.2029
  %add9.i.i.1915 = add nsw i128 %sub7.i.i.1914, %add3.i.1899
  %sub11.i.i.1916 = sub nsw i128 %add6.i.1902, %sub7.i.i.1914
  %shl13.i.i.1917 = shl i128 %add168.i.2016, 32
  %sub15.i.i.1918 = sub i128 %add9.i.i.1915, %shl13.i.i.1917
  %add19.i.i.1920 = add i128 %shl13.i.i.1917, %sub.i.i.1912
  %sub23.i.i.1922 = sub i128 %sub11.i.i.1916, %shl.i.i.1909
  %sub26.i.i.1924 = sub i128 %add3.i.i.1911, %add209.i.2031
  %shl28.i.i.1925 = shl nuw nsw i128 %add209.i.2031, 32
  %sub30.i.i.1926 = sub i128 %sub26.i.i.1924, %shl28.i.i.1925
  %shl32.i.i.1927 = shl nuw nsw i128 %add209.i.2031, 33
  %add34.i.i.1928 = add i128 %shl32.i.i.1927, %sub15.i.i.1918
  store i128 %add34.i.i.1928, i128* %arrayidx4.i.2490, align 16, !tbaa !2
  %mul.i.i.1929 = shl nuw nsw i128 %add209.i.2031, 1
  %add37.i.i.1930 = add i128 %mul.i.i.1929, %sub23.i.i.1922
  %sub41.i.i.1932 = sub i128 %add19.i.i.1920, %shl28.i.i.1925
  %sub44.i.i.1933 = sub i128 %sub30.i.i.1926, %shr205.i.2029
  %shl46.i.i.1934 = shl nuw nsw i128 %shr205.i.2029, 32
  %sub48.i.i.1935 = sub i128 %sub44.i.i.1933, %shl46.i.i.1934
  store i128 %sub48.i.i.1935, i128* %arraydecay22, align 16, !tbaa !2
  %shl50.i.i.1936 = shl nuw nsw i128 %shr205.i.2029, 33
  %add52.i.i.1937 = add i128 %shl50.i.i.1936, %add37.i.i.1930
  store i128 %add52.i.i.1937, i128* %arrayidx7.i.2493, align 16, !tbaa !2
  %mul54.i.i.1938 = mul nuw nsw i128 %shr205.i.2029, 3
  %add56.i.i.1939 = add i128 %mul54.i.i.1938, %sub41.i.i.1932
  store i128 %add56.i.i.1939, i128* %arrayidx10.i.2496, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay15, i128* %y1, i128* %arraydecay22)
  %arraydecay48 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 0
  %43 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.1797 = add i128 %43, 1267650600228229401427983728624
  %44 = load i128, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %add3.i.1799 = add i128 %44, 1267650600228229401496703205376
  %arrayidx4.i.1800 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 1
  %45 = load i128, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add6.i.1802 = add i128 %45, 1267650600228229401427983728656
  %arrayidx7.i.1803 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 2
  %46 = load i128, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %add9.i.1805 = add i128 %46, 1267650600228229401427983728656
  %arrayidx10.i.1806 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 3
  %47 = load i128, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %48 = load i128, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %shl.i.i.1809 = shl i128 %48, 32
  %add.i.i.1810 = add i128 %shl.i.i.1809, %47
  %add3.i.i.1811 = add i128 %add.i.i.1810, %add.i.1797
  %sub.i.i.1812 = sub i128 %add9.i.1805, %add.i.i.1810
  %49 = load i128, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %sub7.i.i.1814 = sub i128 %48, %49
  %add9.i.i.1815 = add i128 %sub7.i.i.1814, %add3.i.1799
  %sub11.i.i.1816 = sub i128 %add6.i.1802, %sub7.i.i.1814
  %shl13.i.i.1817 = shl i128 %47, 32
  %sub15.i.i.1818 = sub i128 %add9.i.i.1815, %shl13.i.i.1817
  %add19.i.i.1820 = add i128 %shl13.i.i.1817, %sub.i.i.1812
  %sub23.i.i.1822 = sub i128 %sub11.i.i.1816, %shl.i.i.1809
  %50 = load i128, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %sub26.i.i.1824 = sub i128 %add3.i.i.1811, %50
  %shl28.i.i.1825 = shl i128 %50, 32
  %sub30.i.i.1826 = sub i128 %sub26.i.i.1824, %shl28.i.i.1825
  %shl32.i.i.1827 = shl i128 %50, 33
  %add34.i.i.1828 = add i128 %shl32.i.i.1827, %sub15.i.i.1818
  store i128 %add34.i.i.1828, i128* %arrayidx4.i.1800, align 16, !tbaa !2
  %mul.i.i.1829 = shl i128 %50, 1
  %add37.i.i.1830 = add i128 %mul.i.i.1829, %sub23.i.i.1822
  %sub41.i.i.1832 = sub i128 %add19.i.i.1820, %shl28.i.i.1825
  %sub44.i.i.1833 = sub i128 %sub30.i.i.1826, %49
  %shl46.i.i.1834 = shl i128 %49, 32
  %sub48.i.i.1835 = sub i128 %sub44.i.i.1833, %shl46.i.i.1834
  store i128 %sub48.i.i.1835, i128* %arraydecay48, align 16, !tbaa !2
  %shl50.i.i.1836 = shl i128 %49, 33
  %add52.i.i.1837 = add i128 %shl50.i.i.1836, %add37.i.i.1830
  store i128 %add52.i.i.1837, i128* %arrayidx7.i.1803, align 16, !tbaa !2
  %mul54.i.i.1838 = mul i128 %49, 3
  %add56.i.i.1839 = add i128 %mul54.i.i.1838, %sub41.i.i.1832
  store i128 %add56.i.i.1839, i128* %arrayidx10.i.1806, align 16, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay50 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 0
  %51 = load i128, i128* %x1, align 16, !tbaa !2
  store i128 %51, i128* %arraydecay50, align 16, !tbaa !2
  %arrayidx2.i.1791 = getelementptr inbounds i128, i128* %x1, i64 1
  %52 = load i128, i128* %arrayidx2.i.1791, align 16, !tbaa !2
  %arrayidx3.i.1792 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 1
  store i128 %52, i128* %arrayidx3.i.1792, align 16, !tbaa !2
  %arrayidx4.i.1793 = getelementptr inbounds i128, i128* %x1, i64 2
  %53 = load i128, i128* %arrayidx4.i.1793, align 16, !tbaa !2
  %arrayidx5.i.1794 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 2
  store i128 %53, i128* %arrayidx5.i.1794, align 16, !tbaa !2
  %arrayidx6.i.1795 = getelementptr inbounds i128, i128* %x1, i64 3
  %54 = load i128, i128* %arrayidx6.i.1795, align 16, !tbaa !2
  %arrayidx7.i.1796 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp3, i64 0, i64 3
  store i128 %54, i128* %arrayidx7.i.1796, align 16, !tbaa !2
  %55 = load i128, i128* %z1, align 16, !tbaa !2
  %56 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %57 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %58 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %mul.i.1778 = shl i128 %55, 1
  %mul3.i.1780 = shl i128 %56, 1
  %mul6.i.1782 = shl i128 %57, 1
  %mul9.i.1784 = shl i128 %58, 1
  %arraydecay53 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 0
  %59 = load i128, i128* %y1, align 16, !tbaa !2
  store i128 %59, i128* %arraydecay53, align 16, !tbaa !2
  %arrayidx2.i.1772 = getelementptr inbounds i128, i128* %y1, i64 1
  %60 = load i128, i128* %arrayidx2.i.1772, align 16, !tbaa !2
  %arrayidx3.i.1773 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 1
  store i128 %60, i128* %arrayidx3.i.1773, align 16, !tbaa !2
  %arrayidx4.i.1774 = getelementptr inbounds i128, i128* %y1, i64 2
  %61 = load i128, i128* %arrayidx4.i.1774, align 16, !tbaa !2
  %arrayidx5.i.1775 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 2
  store i128 %61, i128* %arrayidx5.i.1775, align 16, !tbaa !2
  %arrayidx6.i.1776 = getelementptr inbounds i128, i128* %y1, i64 3
  %62 = load i128, i128* %arrayidx6.i.1776, align 16, !tbaa !2
  %arrayidx7.i.1777 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp6, i64 0, i64 3
  store i128 %62, i128* %arrayidx7.i.1777, align 16, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx15.i.995.pre-phi = phi i128* [ %arrayidx7.i.1777, %if.else ], [ %arrayidx10.i.1806, %if.then ]
  %arrayidx12.i.993.pre-phi = phi i128* [ %arrayidx5.i.1775, %if.else ], [ %arrayidx7.i.1803, %if.then ]
  %arrayidx9.i.991.pre-phi = phi i128* [ %arrayidx3.i.1773, %if.else ], [ %arrayidx4.i.1800, %if.then ]
  %arraydecay80.pre-phi = phi i128* [ %arraydecay53, %if.else ], [ %arraydecay48, %if.then ]
  %arrayidx15.i.1634.pre-phi = phi i128* [ %arrayidx7.i.1796, %if.else ], [ %arrayidx10.i.2246, %if.then ]
  %arrayidx12.i.1632.pre-phi = phi i128* [ %arrayidx5.i.1794, %if.else ], [ %arrayidx7.i.2243, %if.then ]
  %arrayidx9.i.1630.pre-phi = phi i128* [ %arrayidx3.i.1792, %if.else ], [ %arrayidx4.i.2240, %if.then ]
  %arraydecay59.pre-phi = phi i128* [ %arraydecay50, %if.else ], [ %arraydecay30, %if.then ]
  %sub17.i.20462775 = phi i128 [ %mul9.i.1784, %if.else ], [ %sub17.i.2046, %if.then ]
  %add4.i.20372774 = phi i128 [ %mul6.i.1782, %if.else ], [ %sub14.i.2044, %if.then ]
  %add2.i.20352773 = phi i128 [ %mul3.i.1780, %if.else ], [ %sub11.i.2042, %if.then ]
  %ftmp5.sroa.0.0.2772 = phi i128 [ %mul.i.1778, %if.else ], [ %sub.i.2040, %if.then ]
  %63 = load i64, i64* %x2, align 8, !tbaa !6
  %conv.i.1679 = zext i64 %63 to i128
  %conv2.i.1680 = and i128 %sub70.i.1877, 18446744073709551615
  %mul.i.1681 = mul nuw i128 %conv.i.1679, %conv2.i.1680
  %shr.i.1682 = lshr i128 %mul.i.1681, 64
  %conv5.i.1683 = and i128 %mul.i.1681, 18446744073709551615
  store i128 %conv5.i.1683, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.1686 = and i128 %add84.i.1885, 18446744073709551615
  %mul13.i.1687 = mul nuw i128 %conv.i.1679, %conv12.i.1686
  %shr15.i.1688 = lshr i128 %mul13.i.1687, 64
  %conv17.i.1689 = and i128 %mul13.i.1687, 18446744073709551615
  %add.i.1690 = add nuw nsw i128 %conv17.i.1689, %shr.i.1682
  %arrayidx21.i.1692 = getelementptr inbounds i64, i64* %x2, i64 1
  %64 = load i64, i64* %arrayidx21.i.1692, align 8, !tbaa !6
  %conv22.i.1693 = zext i64 %64 to i128
  %mul25.i.1694 = mul nuw i128 %conv22.i.1693, %conv2.i.1680
  %shr27.i.1695 = lshr i128 %mul25.i.1694, 64
  %conv29.i.1696 = and i128 %mul25.i.1694, 18446744073709551615
  %add31.i.1697 = add nuw nsw i128 %add.i.1690, %conv29.i.1696
  store i128 %add31.i.1697, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv38.i.1700 = and i128 %add94.i.1888, 18446744073709551615
  %mul39.i.1701 = mul nuw i128 %conv.i.1679, %conv38.i.1700
  %shr41.i.1702 = lshr i128 %mul39.i.1701, 64
  %conv43.i.1703 = and i128 %mul39.i.1701, 18446744073709551615
  %mul52.i.1706 = mul nuw i128 %conv22.i.1693, %conv12.i.1686
  %shr54.i.1707 = lshr i128 %mul52.i.1706, 64
  %conv56.i.1708 = and i128 %mul52.i.1706, 18446744073709551615
  %arrayidx62.i.1711 = getelementptr inbounds i64, i64* %x2, i64 2
  %65 = load i64, i64* %arrayidx62.i.1711, align 8, !tbaa !6
  %conv63.i.1712 = zext i64 %65 to i128
  %mul66.i.1713 = mul nuw i128 %conv63.i.1712, %conv2.i.1680
  %shr68.i.1714 = lshr i128 %mul66.i.1713, 64
  %conv70.i.1715 = and i128 %mul66.i.1713, 18446744073709551615
  %add34.i.1698 = add nuw nsw i128 %conv43.i.1703, %shr15.i.1688
  %add45.i.1704 = add nuw nsw i128 %add34.i.1698, %shr27.i.1695
  %add58.i.1709 = add nuw nsw i128 %add45.i.1704, %conv56.i.1708
  %add72.i.1716 = add nuw nsw i128 %add58.i.1709, %conv70.i.1715
  store i128 %add72.i.1716, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %conv79.i.1719 = and i128 %add104.i.1891, 18446744073709551615
  %mul80.i.1720 = mul nuw i128 %conv.i.1679, %conv79.i.1719
  %shr82.i.1721 = lshr i128 %mul80.i.1720, 64
  %conv84.i.1722 = and i128 %mul80.i.1720, 18446744073709551615
  %mul93.i.1725 = mul nuw i128 %conv22.i.1693, %conv38.i.1700
  %shr95.i.1726 = lshr i128 %mul93.i.1725, 64
  %conv97.i.1727 = and i128 %mul93.i.1725, 18446744073709551615
  %add102.i.1729 = add nuw nsw i128 %shr95.i.1726, %shr82.i.1721
  %mul107.i.1730 = mul nuw i128 %conv63.i.1712, %conv12.i.1686
  %shr109.i.1731 = lshr i128 %mul107.i.1730, 64
  %conv111.i.1732 = and i128 %mul107.i.1730, 18446744073709551615
  %arrayidx117.i.1735 = getelementptr inbounds i64, i64* %x2, i64 3
  %66 = load i64, i64* %arrayidx117.i.1735, align 8, !tbaa !6
  %conv118.i.1736 = zext i64 %66 to i128
  %mul121.i.1737 = mul nuw i128 %conv118.i.1736, %conv2.i.1680
  %shr123.i.1738 = lshr i128 %mul121.i.1737, 64
  %conv125.i.1739 = and i128 %mul121.i.1737, 18446744073709551615
  %add61.i.1710 = add nuw nsw i128 %conv84.i.1722, %shr41.i.1702
  %add75.i.1717 = add nuw nsw i128 %add61.i.1710, %shr54.i.1707
  %add86.i.1723 = add nuw nsw i128 %add75.i.1717, %conv97.i.1727
  %add99.i.1728 = add nuw nsw i128 %add86.i.1723, %shr68.i.1714
  %add113.i.1733 = add nuw nsw i128 %add99.i.1728, %conv111.i.1732
  %add127.i.1740 = add nuw nsw i128 %add113.i.1733, %conv125.i.1739
  store i128 %add127.i.1740, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i.1742 = mul nuw i128 %conv22.i.1693, %conv79.i.1719
  %shr137.i.1743 = lshr i128 %mul135.i.1742, 64
  %conv139.i.1744 = and i128 %mul135.i.1742, 18446744073709551615
  %mul148.i.1747 = mul nuw i128 %conv63.i.1712, %conv38.i.1700
  %shr150.i.1748 = lshr i128 %mul148.i.1747, 64
  %conv152.i.1749 = and i128 %mul148.i.1747, 18446744073709551615
  %add157.i.1751 = add nuw nsw i128 %shr150.i.1748, %shr137.i.1743
  %mul162.i.1752 = mul nuw i128 %conv118.i.1736, %conv12.i.1686
  %shr164.i.1753 = lshr i128 %mul162.i.1752, 64
  %conv166.i.1754 = and i128 %mul162.i.1752, 18446744073709551615
  %add116.i.1734 = add nuw nsw i128 %add102.i.1729, %conv139.i.1744
  %add130.i.1741 = add nuw nsw i128 %add116.i.1734, %shr109.i.1731
  %add141.i.1745 = add nuw nsw i128 %add130.i.1741, %conv152.i.1749
  %add154.i.1750 = add nuw nsw i128 %add141.i.1745, %shr123.i.1738
  %add168.i.1755 = add nuw nsw i128 %add154.i.1750, %conv166.i.1754
  store i128 %add168.i.1755, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i.1757 = mul nuw i128 %conv63.i.1712, %conv79.i.1719
  %shr178.i.1758 = lshr i128 %mul176.i.1757, 64
  %conv180.i.1759 = and i128 %mul176.i.1757, 18446744073709551615
  %mul189.i.1762 = mul nuw i128 %conv118.i.1736, %conv38.i.1700
  %shr191.i.1763 = lshr i128 %mul189.i.1762, 64
  %conv193.i.1764 = and i128 %mul189.i.1762, 18446744073709551615
  %add171.i.1756 = add nuw nsw i128 %add157.i.1751, %conv180.i.1759
  %add182.i.1760 = add nuw nsw i128 %add171.i.1756, %shr164.i.1753
  %add195.i.1765 = add nuw nsw i128 %add182.i.1760, %conv193.i.1764
  store i128 %add195.i.1765, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i.1766 = add nuw nsw i128 %shr191.i.1763, %shr178.i.1758
  %mul203.i.1767 = mul nuw i128 %conv118.i.1736, %conv79.i.1719
  %shr205.i.1768 = lshr i128 %mul203.i.1767, 64
  %conv207.i.1769 = and i128 %mul203.i.1767, 18446744073709551615
  %add209.i.1770 = add nuw nsw i128 %add198.i.1766, %conv207.i.1769
  store i128 %add209.i.1770, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i.1768, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %arraydecay56 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp4, i64 0, i64 0
  %add.i.1636 = add nuw nsw i128 %conv5.i.1683, 1267650600228229401427983728624
  %add3.i.1638 = or i128 %add31.i.1697, 1267650600228229401496703205376
  %arrayidx4.i.1639 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp4, i64 0, i64 1
  %add6.i.1641 = add nuw nsw i128 %add72.i.1716, 1267650600228229401427983728656
  %arrayidx7.i.1642 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp4, i64 0, i64 2
  %add9.i.1644 = add i128 %add127.i.1740, 1267650600228229401427983728656
  %arrayidx10.i.1645 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp4, i64 0, i64 3
  %shl.i.i.1648 = shl nuw nsw i128 %add195.i.1765, 32
  %add.i.i.1649 = add i128 %shl.i.i.1648, %add168.i.1755
  %add3.i.i.1650 = add i128 %add.i.i.1649, %add.i.1636
  %sub.i.i.1651 = sub i128 %add9.i.1644, %add.i.i.1649
  %sub7.i.i.1653 = sub nsw i128 %add195.i.1765, %shr205.i.1768
  %add9.i.i.1654 = add nsw i128 %sub7.i.i.1653, %add3.i.1638
  %sub11.i.i.1655 = sub nsw i128 %add6.i.1641, %sub7.i.i.1653
  %shl13.i.i.1656 = shl i128 %add168.i.1755, 32
  %sub15.i.i.1657 = sub i128 %add9.i.i.1654, %shl13.i.i.1656
  %add19.i.i.1659 = add i128 %shl13.i.i.1656, %sub.i.i.1651
  %sub23.i.i.1661 = sub i128 %sub11.i.i.1655, %shl.i.i.1648
  %sub26.i.i.1663 = sub i128 %add3.i.i.1650, %add209.i.1770
  %shl28.i.i.1664 = shl nuw nsw i128 %add209.i.1770, 32
  %sub30.i.i.1665 = sub i128 %sub26.i.i.1663, %shl28.i.i.1664
  %shl32.i.i.1666 = shl nuw nsw i128 %add209.i.1770, 33
  %add34.i.i.1667 = add i128 %shl32.i.i.1666, %sub15.i.i.1657
  %mul.i.i.1668 = shl nuw nsw i128 %add209.i.1770, 1
  %add37.i.i.1669 = add i128 %mul.i.i.1668, %sub23.i.i.1661
  %sub41.i.i.1671 = sub i128 %add19.i.i.1659, %shl28.i.i.1664
  %sub44.i.i.1672 = sub i128 %sub30.i.i.1665, %shr205.i.1768
  %shl46.i.i.1673 = shl nuw nsw i128 %shr205.i.1768, 32
  %sub48.i.i.1674 = sub i128 %sub44.i.i.1672, %shl46.i.i.1673
  %shl50.i.i.1675 = shl nuw nsw i128 %shr205.i.1768, 33
  %add52.i.i.1676 = add i128 %shl50.i.i.1675, %add37.i.i.1669
  %mul54.i.i.1677 = mul nuw nsw i128 %shr205.i.1768, 3
  %add56.i.i.1678 = add i128 %mul54.i.i.1677, %sub41.i.i.1671
  %add.i.1622 = add i128 %sub48.i.i.1674, 162259276829213363382781917263872
  %add2.i.1624 = add i128 %add34.i.i.1667, 162259276829213363391578010288128
  %add4.i.1626 = add i128 %add52.i.i.1676, 162259276829213363382781917267968
  %add6.i.1628 = add i128 %add56.i.i.1678, 162259276829213363382781917267968
  %67 = load i128, i128* %arraydecay59.pre-phi, align 16, !tbaa !2
  %sub.i.1629 = sub i128 %add.i.1622, %67
  store i128 %sub.i.1629, i128* %arraydecay56, align 16, !tbaa !2
  %68 = load i128, i128* %arrayidx9.i.1630.pre-phi, align 16, !tbaa !2
  %sub11.i.1631 = sub i128 %add2.i.1624, %68
  store i128 %sub11.i.1631, i128* %arrayidx4.i.1639, align 16, !tbaa !2
  %69 = load i128, i128* %arrayidx12.i.1632.pre-phi, align 16, !tbaa !2
  %sub14.i.1633 = sub i128 %add4.i.1626, %69
  store i128 %sub14.i.1633, i128* %arrayidx7.i.1642, align 16, !tbaa !2
  %70 = load i128, i128* %arrayidx15.i.1634.pre-phi, align 16, !tbaa !2
  %sub17.i.1635 = sub i128 %add6.i.1628, %70
  store i128 %sub17.i.1635, i128* %arrayidx10.i.1645, align 16, !tbaa !2
  %add.i.1566 = add i128 %sub17.i.1635, 18446744069414584320
  %shr.i.1568 = lshr i128 %sub14.i.1633, 64
  %add8.i.1569 = add i128 %add.i.1566, %shr.i.1568
  %conv12.i.1570 = and i128 %sub14.i.1633, 18446744073709551615
  %add13.i.1571 = add nuw nsw i128 %conv12.i.1570, 18446673704965373952
  %add16.i.1572 = add i128 %sub.i.1629, 18446744073709551615
  %add19.i.1574 = add i128 %sub11.i.1631, 1298074214633706907132628377272319
  %shr22.i.1575 = lshr i128 %add8.i.1569, 64
  %conv23.i.1576 = trunc i128 %shr22.i.1575 to i64
  %conv26.i.1577 = and i128 %add8.i.1569, 18446744073709551615
  %sub.i.1578 = sub nsw i128 %conv26.i.1577, %shr22.i.1575
  %shl.i.1579 = shl nuw nsw i128 %shr22.i.1575, 32
  %add32.i.1580 = add nsw i128 %sub.i.1578, %shl.i.1579
  %shr34.i.1581 = lshr i128 %add32.i.1580, 64
  %conv35.i.1582 = trunc i128 %shr34.i.1581 to i64
  %add36.i.1583 = add i64 %conv35.i.1582, %conv23.i.1576
  %conv39.i.1584 = and i128 %add32.i.1580, 18446744073709551615
  %sub43.i.1585 = sub nsw i128 %conv39.i.1584, %shr34.i.1581
  %shl45.i.1586 = shl nuw nsw i128 %shr34.i.1581, 32
  %add47.i.1587 = add nsw i128 %sub43.i.1585, %shl45.i.1586
  %conv48.i.1588 = zext i64 %add36.i.1583 to i128
  %add50.i.1589 = add i128 %add16.i.1572, %conv48.i.1588
  %shl52.i.1590 = shl nuw nsw i128 %conv48.i.1588, 32
  %sub54.i.1591 = sub i128 %add19.i.1574, %shl52.i.1590
  %shr56.i.1592 = lshr i128 %add47.i.1587, 64
  %conv57.i.1593 = trunc i128 %shr56.i.1592 to i64
  %sub58.i.1594 = sub i64 0, %conv57.i.1593
  %conv60.i.1595 = trunc i128 %add47.i.1587 to i64
  %and.i.1596 = and i64 %conv60.i.1595, 9223372036854775807
  %neg.i.1597 = sub nsw i64 9223372032559808512, %and.i.1596
  %sub62177.i.1598 = and i64 %neg.i.1597, %conv60.i.1595
  %and66.i.1599 = ashr i64 %sub62177.i.1598, 63
  %or.i.1600 = or i64 %and66.i.1599, %sub58.i.1594
  %conv68.i.1601 = zext i64 %or.i.1600 to i128
  %sub70.i.1602 = sub i128 %add50.i.1589, %conv68.i.1601
  %and71.i.1603 = and i64 %or.i.1600, 4294967295
  %conv72.i.1604 = zext i64 %and71.i.1603 to i128
  %sub74.i.1605 = sub i128 %sub54.i.1591, %conv72.i.1604
  %and75.i.1606 = and i64 %or.i.1600, -4294967295
  %conv76.i.1607 = zext i64 %and75.i.1606 to i128
  %sub78.i.1608 = sub nsw i128 %add47.i.1587, %conv76.i.1607
  %shr80.i.1609 = lshr i128 %sub70.i.1602, 64
  %add84.i.1610 = add i128 %sub74.i.1605, %shr80.i.1609
  %conv86.i.1611 = trunc i128 %sub70.i.1602 to i64
  %shr90.i.1612 = lshr i128 %add84.i.1610, 64
  %add94.i.1613 = add nuw nsw i128 %add13.i.1571, %shr90.i.1612
  %conv96.i.1614 = trunc i128 %add84.i.1610 to i64
  %shr100.i.1615 = lshr i128 %add94.i.1613, 64
  %add104.i.1616 = add nsw i128 %shr100.i.1615, %sub78.i.1608
  %conv106.i.1617 = trunc i128 %add94.i.1613 to i64
  %conv119.i.1620 = trunc i128 %add104.i.1616 to i64
  %or.i.15242779 = or i128 %add84.i.1610, %sub70.i.1602
  %or3.i.15262780 = or i128 %or.i.15242779, %add94.i.1613
  %or5.i.15282781 = or i128 %or3.i.15262780, %add104.i.1616
  %or5.i.1528 = trunc i128 %or5.i.15282781 to i64
  %dec.i.1529 = add i64 %or5.i.1528, -1
  %shl.i.1530 = shl i64 %dec.i.1529, 32
  %and.i.1531 = and i64 %shl.i.1530, %dec.i.1529
  %shl6.i.1532 = shl i64 %and.i.1531, 16
  %and7.i.1533 = and i64 %shl6.i.1532, %and.i.1531
  %shl8.i.1534 = shl i64 %and7.i.1533, 8
  %and9.i.1535 = and i64 %shl8.i.1534, %and7.i.1533
  %shl10.i.1536 = shl i64 %and9.i.1535, 4
  %and11.i.1537 = and i64 %shl10.i.1536, %and9.i.1535
  %shl12.i.1538 = shl i64 %and11.i.1537, 2
  %and13.i.1539 = and i64 %shl12.i.1538, %and11.i.1537
  %shl14.i.1540 = shl i64 %and13.i.1539, 1
  %and15.i.1541 = and i64 %shl14.i.1540, %and13.i.1539
  %xor.i.1542 = xor i64 %conv86.i.1611, -1
  %xor18.i.1543 = xor i64 %conv96.i.1614, 4294967295
  %or19.i.1544 = or i64 %xor18.i.1543, %xor.i.1542
  %or22.i.1545 = or i64 %or19.i.1544, %conv106.i.1617
  %xor24.i.1546 = xor i64 %conv119.i.1620, -4294967295
  %or25.i.1547 = or i64 %or22.i.1545, %xor24.i.1546
  %dec26.i.1548 = add i64 %or25.i.1547, -1
  %shl27.i.1549 = shl i64 %dec26.i.1548, 32
  %and28.i.1550 = and i64 %shl27.i.1549, %dec26.i.1548
  %shl29.i.1551 = shl i64 %and28.i.1550, 16
  %and30.i.1552 = and i64 %shl29.i.1551, %and28.i.1550
  %shl31.i.1553 = shl i64 %and30.i.1552, 8
  %and32.i.1554 = and i64 %shl31.i.1553, %and30.i.1552
  %shl33.i.1555 = shl i64 %and32.i.1554, 4
  %and34.i.1556 = and i64 %shl33.i.1555, %and32.i.1554
  %shl35.i.1557 = shl i64 %and34.i.1556, 2
  %and36.i.1558 = and i64 %shl35.i.1557, %and34.i.1556
  %shl37.i.1559 = shl i64 %and36.i.1558, 1
  %and38.i.1560 = and i64 %shl37.i.1559, %and36.i.1558
  %sub86.i.1561 = or i64 %and38.i.1560, %and15.i.1541
  %or41.i.1562 = ashr i64 %sub86.i.1561, 63
  %coerce64.sroa.2.0.insert.ext = zext i64 %or41.i.1562 to i128
  %coerce64.sroa.2.0.insert.shift = shl nuw i128 %coerce64.sroa.2.0.insert.ext, 64
  %coerce64.sroa.0.0.insert.insert = or i128 %coerce64.sroa.2.0.insert.shift, %coerce64.sroa.2.0.insert.ext
  %add.i.i.1374 = add i128 %sub17.i.20462775, 18446744069414584320
  %shr.i.i.1376 = lshr i128 %add4.i.20372774, 64
  %add8.i.i.1377 = add i128 %add.i.i.1374, %shr.i.i.1376
  %conv12.i.i.1378 = and i128 %add4.i.20372774, 18446744073709551615
  %add13.i.i.1379 = add nuw nsw i128 %conv12.i.i.1378, 18446673704965373952
  %add16.i.i.1380 = add i128 %ftmp5.sroa.0.0.2772, 18446744073709551615
  %add19.i.i.1382 = add i128 %add2.i.20352773, 1298074214633706907132628377272319
  %shr22.i.i.1383 = lshr i128 %add8.i.i.1377, 64
  %conv23.i.i.1384 = trunc i128 %shr22.i.i.1383 to i64
  %conv26.i.i.1385 = and i128 %add8.i.i.1377, 18446744073709551615
  %sub.i.i.1386 = sub nsw i128 %conv26.i.i.1385, %shr22.i.i.1383
  %shl.i.i.1387 = shl nuw nsw i128 %shr22.i.i.1383, 32
  %add32.i.i.1388 = add nsw i128 %sub.i.i.1386, %shl.i.i.1387
  %shr34.i.i.1389 = lshr i128 %add32.i.i.1388, 64
  %conv35.i.i.1390 = trunc i128 %shr34.i.i.1389 to i64
  %add36.i.i.1391 = add i64 %conv35.i.i.1390, %conv23.i.i.1384
  %conv39.i.i.1392 = and i128 %add32.i.i.1388, 18446744073709551615
  %sub43.i.i.1393 = sub nsw i128 %conv39.i.i.1392, %shr34.i.i.1389
  %shl45.i.i.1394 = shl nuw nsw i128 %shr34.i.i.1389, 32
  %add47.i.i.1395 = add nsw i128 %sub43.i.i.1393, %shl45.i.i.1394
  %conv48.i.i.1396 = zext i64 %add36.i.i.1391 to i128
  %add50.i.i.1397 = add i128 %add16.i.i.1380, %conv48.i.i.1396
  %shl52.i.i.1398 = shl nuw nsw i128 %conv48.i.i.1396, 32
  %sub54.i.i.1399 = sub i128 %add19.i.i.1382, %shl52.i.i.1398
  %shr56.i.i.1400 = lshr i128 %add47.i.i.1395, 64
  %conv57.i.i.1401 = trunc i128 %shr56.i.i.1400 to i64
  %sub58.i.i.1402 = sub i64 0, %conv57.i.i.1401
  %conv60.i.i.1403 = trunc i128 %add47.i.i.1395 to i64
  %and.i.i.1404 = and i64 %conv60.i.i.1403, 9223372036854775807
  %neg.i.i.1405 = sub nsw i64 9223372032559808512, %and.i.i.1404
  %sub62177.i.i.1406 = and i64 %neg.i.i.1405, %conv60.i.i.1403
  %and66.i.i.1407 = ashr i64 %sub62177.i.i.1406, 63
  %or.i.i.1408 = or i64 %and66.i.i.1407, %sub58.i.i.1402
  %conv68.i.i.1409 = zext i64 %or.i.i.1408 to i128
  %sub70.i.i.1410 = sub i128 %add50.i.i.1397, %conv68.i.i.1409
  %and71.i.i.1411 = and i64 %or.i.i.1408, 4294967295
  %conv72.i.i.1412 = zext i64 %and71.i.i.1411 to i128
  %sub74.i.i.1413 = sub i128 %sub54.i.i.1399, %conv72.i.i.1412
  %and75.i.i.1414 = and i64 %or.i.i.1408, -4294967295
  %conv76.i.i.1415 = zext i64 %and75.i.i.1414 to i128
  %sub78.i.i.1416 = sub nsw i128 %add47.i.i.1395, %conv76.i.i.1415
  %shr80.i.i.1417 = lshr i128 %sub70.i.i.1410, 64
  %add84.i.i.1418 = add i128 %sub74.i.i.1413, %shr80.i.i.1417
  %shr90.i.i.1420 = lshr i128 %add84.i.i.1418, 64
  %add94.i.i.1421 = add nuw nsw i128 %add13.i.i.1379, %shr90.i.i.1420
  %shr100.i.i.1423 = lshr i128 %add94.i.i.1421, 64
  %add104.i.i.1424 = add nsw i128 %sub78.i.i.1416, %shr100.i.i.1423
  %conv.i.1430 = and i128 %sub70.i.1602, 18446744073709551615
  %conv2.i.1431 = and i128 %sub70.i.i.1410, 18446744073709551615
  %mul.i.1432 = mul nuw i128 %conv.i.1430, %conv2.i.1431
  %conv12.i.1437 = and i128 %add84.i.i.1418, 18446744073709551615
  %mul13.i.1438 = mul nuw i128 %conv.i.1430, %conv12.i.1437
  %conv22.i.1444 = and i128 %add84.i.1610, 18446744073709551615
  %mul25.i.1445 = mul nuw i128 %conv22.i.1444, %conv2.i.1431
  %conv38.i.1451 = and i128 %add94.i.i.1421, 18446744073709551615
  %mul39.i.1452 = mul nuw i128 %conv.i.1430, %conv38.i.1451
  %mul52.i.1457 = mul nuw i128 %conv22.i.1444, %conv12.i.1437
  %conv63.i.1463 = and i128 %add94.i.1613, 18446744073709551615
  %mul66.i.1464 = mul nuw i128 %conv63.i.1463, %conv2.i.1431
  %conv79.i.1470 = and i128 %add104.i.i.1424, 18446744073709551615
  %mul80.i.1471 = mul nuw i128 %conv.i.1430, %conv79.i.1470
  %shr82.i.1472 = lshr i128 %mul80.i.1471, 64
  %mul93.i.1476 = mul nuw i128 %conv22.i.1444, %conv38.i.1451
  %shr95.i.1477 = lshr i128 %mul93.i.1476, 64
  %add102.i.1480 = add nuw nsw i128 %shr95.i.1477, %shr82.i.1472
  %mul107.i.1481 = mul nuw i128 %conv63.i.1463, %conv12.i.1437
  %shr109.i.1482 = lshr i128 %mul107.i.1481, 64
  %conv118.i.1487 = and i128 %add104.i.1616, 18446744073709551615
  %mul121.i.1488 = mul nuw i128 %conv118.i.1487, %conv2.i.1431
  %shr123.i.1489 = lshr i128 %mul121.i.1488, 64
  %mul135.i.1493 = mul nuw i128 %conv22.i.1444, %conv79.i.1470
  %shr137.i.1494 = lshr i128 %mul135.i.1493, 64
  %conv139.i.1495 = and i128 %mul135.i.1493, 18446744073709551615
  %mul148.i.1498 = mul nuw i128 %conv63.i.1463, %conv38.i.1451
  %shr150.i.1499 = lshr i128 %mul148.i.1498, 64
  %conv152.i.1500 = and i128 %mul148.i.1498, 18446744073709551615
  %add157.i.1502 = add nuw nsw i128 %shr150.i.1499, %shr137.i.1494
  %mul162.i.1503 = mul nuw i128 %conv118.i.1487, %conv12.i.1437
  %shr164.i.1504 = lshr i128 %mul162.i.1503, 64
  %conv166.i.1505 = and i128 %mul162.i.1503, 18446744073709551615
  %add116.i.1485 = add nuw nsw i128 %add102.i.1480, %conv139.i.1495
  %add130.i.1492 = add nuw nsw i128 %add116.i.1485, %shr109.i.1482
  %add141.i.1496 = add nuw nsw i128 %add130.i.1492, %conv152.i.1500
  %add154.i.1501 = add nuw nsw i128 %add141.i.1496, %shr123.i.1489
  %add168.i.1506 = add nuw nsw i128 %add154.i.1501, %conv166.i.1505
  %mul176.i.1508 = mul nuw i128 %conv63.i.1463, %conv79.i.1470
  %shr178.i.1509 = lshr i128 %mul176.i.1508, 64
  %conv180.i.1510 = and i128 %mul176.i.1508, 18446744073709551615
  %mul189.i.1513 = mul nuw i128 %conv118.i.1487, %conv38.i.1451
  %shr191.i.1514 = lshr i128 %mul189.i.1513, 64
  %conv193.i.1515 = and i128 %mul189.i.1513, 18446744073709551615
  %add171.i.1507 = add nuw nsw i128 %add157.i.1502, %conv180.i.1510
  %add182.i.1511 = add nuw nsw i128 %add171.i.1507, %shr164.i.1504
  %add195.i.1516 = add nuw nsw i128 %add182.i.1511, %conv193.i.1515
  %add198.i.1517 = add nuw nsw i128 %shr191.i.1514, %shr178.i.1509
  %mul203.i.1518 = mul nuw i128 %conv118.i.1487, %conv79.i.1470
  %shr205.i.1519 = lshr i128 %mul203.i.1518, 64
  %conv207.i.1520 = and i128 %mul203.i.1518, 18446744073709551615
  %add209.i.1521 = add nuw nsw i128 %add198.i.1517, %conv207.i.1520
  %shl.i.i.1340 = shl nuw nsw i128 %add195.i.1516, 32
  %add.i.i.1341 = add i128 %shl.i.i.1340, %add168.i.1506
  %sub7.i.i.1345 = sub nsw i128 %add195.i.1516, %shr205.i.1519
  %shl13.i.i.1348 = shl i128 %add168.i.1506, 32
  %shl28.i.i.1356 = shl nuw nsw i128 %add209.i.1521, 32
  %mul.i.1237 = mul nuw i128 %conv2.i.1680, %conv.i.596
  %shr.i.1238 = lshr i128 %mul.i.1237, 64
  %conv5.i.1239 = and i128 %mul.i.1237, 18446744073709551615
  store i128 %conv5.i.1239, i128* %arraydecay15, align 16, !tbaa !2
  %mul13.i.1243 = mul nuw i128 %conv2.i.1680, %conv12.i.602
  %shr15.i.1244 = lshr i128 %mul13.i.1243, 64
  %conv17.i.1245 = and i128 %mul13.i.1243, 18446744073709551615
  %add.i.1246 = add nuw nsw i128 %conv17.i.1245, %shr.i.1238
  %mul25.i.1250 = mul nuw i128 %conv12.i.1686, %conv.i.596
  %shr27.i.1251 = lshr i128 %mul25.i.1250, 64
  %conv29.i.1252 = and i128 %mul25.i.1250, 18446744073709551615
  %add31.i.1253 = add nuw nsw i128 %add.i.1246, %conv29.i.1252
  store i128 %add31.i.1253, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %mul39.i.1257 = mul nuw i128 %conv2.i.1680, %conv27.i.610
  %shr41.i.1258 = lshr i128 %mul39.i.1257, 64
  %conv43.i.1259 = and i128 %mul39.i.1257, 18446744073709551615
  %mul52.i.1262 = mul nuw i128 %conv12.i.1686, %conv12.i.602
  %shr54.i.1263 = lshr i128 %mul52.i.1262, 64
  %conv56.i.1264 = and i128 %mul52.i.1262, 18446744073709551615
  %mul66.i.1269 = mul nuw i128 %conv38.i.1700, %conv.i.596
  %shr68.i.1270 = lshr i128 %mul66.i.1269, 64
  %conv70.i.1271 = and i128 %mul66.i.1269, 18446744073709551615
  %add34.i.1254 = add nuw nsw i128 %conv43.i.1259, %shr15.i.1244
  %add45.i.1260 = add nuw nsw i128 %add34.i.1254, %shr27.i.1251
  %add58.i.1265 = add nuw nsw i128 %add45.i.1260, %conv56.i.1264
  %add72.i.1272 = add nuw nsw i128 %add58.i.1265, %conv70.i.1271
  store i128 %add72.i.1272, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %mul80.i.1276 = mul nuw i128 %conv2.i.1680, %conv42.i.618
  %shr82.i.1277 = lshr i128 %mul80.i.1276, 64
  %conv84.i.1278 = and i128 %mul80.i.1276, 18446744073709551615
  %mul93.i.1281 = mul nuw i128 %conv12.i.1686, %conv27.i.610
  %shr95.i.1282 = lshr i128 %mul93.i.1281, 64
  %conv97.i.1283 = and i128 %mul93.i.1281, 18446744073709551615
  %add102.i.1285 = add nuw nsw i128 %shr95.i.1282, %shr82.i.1277
  %mul107.i.1286 = mul nuw i128 %conv38.i.1700, %conv12.i.602
  %shr109.i.1287 = lshr i128 %mul107.i.1286, 64
  %conv111.i.1288 = and i128 %mul107.i.1286, 18446744073709551615
  %mul121.i.1293 = mul nuw i128 %conv79.i.1719, %conv.i.596
  %shr123.i.1294 = lshr i128 %mul121.i.1293, 64
  %conv125.i.1295 = and i128 %mul121.i.1293, 18446744073709551615
  %add61.i.1266 = add nuw nsw i128 %conv84.i.1278, %shr41.i.1258
  %add75.i.1273 = add nuw nsw i128 %add61.i.1266, %shr54.i.1263
  %add86.i.1279 = add nuw nsw i128 %add75.i.1273, %conv97.i.1283
  %add99.i.1284 = add nuw nsw i128 %add86.i.1279, %shr68.i.1270
  %add113.i.1289 = add nuw nsw i128 %add99.i.1284, %conv111.i.1288
  %add127.i.1296 = add nuw nsw i128 %add113.i.1289, %conv125.i.1295
  store i128 %add127.i.1296, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i.1298 = mul nuw i128 %conv12.i.1686, %conv42.i.618
  %shr137.i.1299 = lshr i128 %mul135.i.1298, 64
  %conv139.i.1300 = and i128 %mul135.i.1298, 18446744073709551615
  %mul148.i.1303 = mul nuw i128 %conv38.i.1700, %conv27.i.610
  %shr150.i.1304 = lshr i128 %mul148.i.1303, 64
  %conv152.i.1305 = and i128 %mul148.i.1303, 18446744073709551615
  %add157.i.1307 = add nuw nsw i128 %shr150.i.1304, %shr137.i.1299
  %mul162.i.1308 = mul nuw i128 %conv79.i.1719, %conv12.i.602
  %shr164.i.1309 = lshr i128 %mul162.i.1308, 64
  %conv166.i.1310 = and i128 %mul162.i.1308, 18446744073709551615
  %add116.i.1290 = add nuw nsw i128 %add102.i.1285, %conv139.i.1300
  %add130.i.1297 = add nuw nsw i128 %add116.i.1290, %shr109.i.1287
  %add141.i.1301 = add nuw nsw i128 %add130.i.1297, %conv152.i.1305
  %add154.i.1306 = add nuw nsw i128 %add141.i.1301, %shr123.i.1294
  %add168.i.1311 = add nuw nsw i128 %add154.i.1306, %conv166.i.1310
  store i128 %add168.i.1311, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i.1313 = mul nuw i128 %conv38.i.1700, %conv42.i.618
  %shr178.i.1314 = lshr i128 %mul176.i.1313, 64
  %conv180.i.1315 = and i128 %mul176.i.1313, 18446744073709551615
  %mul189.i.1318 = mul nuw i128 %conv79.i.1719, %conv27.i.610
  %shr191.i.1319 = lshr i128 %mul189.i.1318, 64
  %conv193.i.1320 = and i128 %mul189.i.1318, 18446744073709551615
  %add171.i.1312 = add nuw nsw i128 %add157.i.1307, %conv180.i.1315
  %add182.i.1316 = add nuw nsw i128 %add171.i.1312, %shr164.i.1309
  %add195.i.1321 = add nuw nsw i128 %add182.i.1316, %conv193.i.1320
  store i128 %add195.i.1321, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i.1322 = add nuw nsw i128 %shr191.i.1319, %shr178.i.1314
  %mul203.i.1323 = mul nuw i128 %conv79.i.1719, %conv42.i.618
  %shr205.i.1324 = lshr i128 %mul203.i.1323, 64
  %conv207.i.1325 = and i128 %mul203.i.1323, 18446744073709551615
  %add209.i.1326 = add nuw nsw i128 %add198.i.1322, %conv207.i.1325
  store i128 %add209.i.1326, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i.1324, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %add.i.1192 = add nuw nsw i128 %conv5.i.1239, 1267650600228229401427983728624
  %add3.i.1194 = or i128 %add31.i.1253, 1267650600228229401496703205376
  %add6.i.1197 = add nuw nsw i128 %add72.i.1272, 1267650600228229401427983728656
  %add9.i.1200 = add i128 %add127.i.1296, 1267650600228229401427983728656
  %shl.i.i.1204 = shl nuw nsw i128 %add195.i.1321, 32
  %add.i.i.1205 = add i128 %shl.i.i.1204, %add168.i.1311
  %add3.i.i.1206 = add i128 %add.i.i.1205, %add.i.1192
  %sub.i.i.1207 = sub i128 %add9.i.1200, %add.i.i.1205
  %sub7.i.i.1209 = sub nsw i128 %add195.i.1321, %shr205.i.1324
  %add9.i.i.1210 = add nsw i128 %sub7.i.i.1209, %add3.i.1194
  %sub11.i.i.1211 = sub nsw i128 %add6.i.1197, %sub7.i.i.1209
  %shl13.i.i.1212 = shl i128 %add168.i.1311, 32
  %sub15.i.i.1213 = sub i128 %add9.i.i.1210, %shl13.i.i.1212
  %add19.i.i.1215 = add i128 %shl13.i.i.1212, %sub.i.i.1207
  %sub23.i.i.1217 = sub i128 %sub11.i.i.1211, %shl.i.i.1204
  %sub26.i.i.1219 = sub i128 %add3.i.i.1206, %add209.i.1326
  %shl28.i.i.1220 = shl nuw nsw i128 %add209.i.1326, 32
  %sub30.i.i.1221 = sub i128 %sub26.i.i.1219, %shl28.i.i.1220
  %shl32.i.i.1222 = shl nuw nsw i128 %add209.i.1326, 33
  %add34.i.i.1223 = add i128 %shl32.i.i.1222, %sub15.i.i.1213
  store i128 %add34.i.i.1223, i128* %arrayidx4.i.837, align 16, !tbaa !2
  %mul.i.i.1224 = shl nuw nsw i128 %add209.i.1326, 1
  %add37.i.i.1225 = add i128 %mul.i.i.1224, %sub23.i.i.1217
  %sub41.i.i.1227 = sub i128 %add19.i.i.1215, %shl28.i.i.1220
  %sub44.i.i.1228 = sub i128 %sub30.i.i.1221, %shr205.i.1324
  %shl46.i.i.1229 = shl nuw nsw i128 %shr205.i.1324, 32
  %sub48.i.i.1230 = sub i128 %sub44.i.i.1228, %shl46.i.i.1229
  store i128 %sub48.i.i.1230, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.1231 = shl nuw nsw i128 %shr205.i.1324, 33
  %add52.i.i.1232 = add i128 %shl50.i.i.1231, %add37.i.i.1225
  store i128 %add52.i.i.1232, i128* %arrayidx7.i.840, align 16, !tbaa !2
  %mul54.i.i.1233 = mul nuw nsw i128 %shr205.i.1324, 3
  %add56.i.i.1234 = add i128 %mul54.i.i.1233, %sub41.i.i.1227
  store i128 %add56.i.i.1234, i128* %arrayidx10.i.843, align 16, !tbaa !2
  %add.i.i.1043 = add i128 %add56.i.i.1234, 18446744069414584320
  %shr.i.i.1045 = lshr i128 %add52.i.i.1232, 64
  %add8.i.i.1046 = add i128 %add.i.i.1043, %shr.i.i.1045
  %conv12.i.i.1047 = and i128 %add52.i.i.1232, 18446744073709551615
  %add13.i.i.1048 = add nuw nsw i128 %conv12.i.i.1047, 18446673704965373952
  %add16.i.i.1049 = add i128 %sub48.i.i.1230, 18446744073709551615
  %add19.i.i.1051 = add i128 %add34.i.i.1223, 1298074214633706907132628377272319
  %shr22.i.i.1052 = lshr i128 %add8.i.i.1046, 64
  %conv23.i.i.1053 = trunc i128 %shr22.i.i.1052 to i64
  %conv26.i.i.1054 = and i128 %add8.i.i.1046, 18446744073709551615
  %sub.i.i.1055 = sub nsw i128 %conv26.i.i.1054, %shr22.i.i.1052
  %shl.i.i.1056 = shl nuw nsw i128 %shr22.i.i.1052, 32
  %add32.i.i.1057 = add nsw i128 %sub.i.i.1055, %shl.i.i.1056
  %shr34.i.i.1058 = lshr i128 %add32.i.i.1057, 64
  %conv35.i.i.1059 = trunc i128 %shr34.i.i.1058 to i64
  %add36.i.i.1060 = add i64 %conv35.i.i.1059, %conv23.i.i.1053
  %conv39.i.i.1061 = and i128 %add32.i.i.1057, 18446744073709551615
  %sub43.i.i.1062 = sub nsw i128 %conv39.i.i.1061, %shr34.i.i.1058
  %shl45.i.i.1063 = shl nuw nsw i128 %shr34.i.i.1058, 32
  %add47.i.i.1064 = add nsw i128 %sub43.i.i.1062, %shl45.i.i.1063
  %conv48.i.i.1065 = zext i64 %add36.i.i.1060 to i128
  %add50.i.i.1066 = add i128 %add16.i.i.1049, %conv48.i.i.1065
  %shl52.i.i.1067 = shl nuw nsw i128 %conv48.i.i.1065, 32
  %sub54.i.i.1068 = sub i128 %add19.i.i.1051, %shl52.i.i.1067
  %shr56.i.i.1069 = lshr i128 %add47.i.i.1064, 64
  %conv57.i.i.1070 = trunc i128 %shr56.i.i.1069 to i64
  %sub58.i.i.1071 = sub i64 0, %conv57.i.i.1070
  %conv60.i.i.1072 = trunc i128 %add47.i.i.1064 to i64
  %and.i.i.1073 = and i64 %conv60.i.i.1072, 9223372036854775807
  %neg.i.i.1074 = sub nsw i64 9223372032559808512, %and.i.i.1073
  %sub62177.i.i.1075 = and i64 %neg.i.i.1074, %conv60.i.i.1072
  %and66.i.i.1076 = ashr i64 %sub62177.i.i.1075, 63
  %or.i.i.1077 = or i64 %and66.i.i.1076, %sub58.i.i.1071
  %conv68.i.i.1078 = zext i64 %or.i.i.1077 to i128
  %sub70.i.i.1079 = sub i128 %add50.i.i.1066, %conv68.i.i.1078
  %and71.i.i.1080 = and i64 %or.i.i.1077, 4294967295
  %conv72.i.i.1081 = zext i64 %and71.i.i.1080 to i128
  %sub74.i.i.1082 = sub i128 %sub54.i.i.1068, %conv72.i.i.1081
  %and75.i.i.1083 = and i64 %or.i.i.1077, -4294967295
  %conv76.i.i.1084 = zext i64 %and75.i.i.1083 to i128
  %sub78.i.i.1085 = sub nsw i128 %add47.i.i.1064, %conv76.i.i.1084
  %shr80.i.i.1086 = lshr i128 %sub70.i.i.1079, 64
  %add84.i.i.1087 = add i128 %sub74.i.i.1082, %shr80.i.i.1086
  %shr90.i.i.1089 = lshr i128 %add84.i.i.1087, 64
  %add94.i.i.1090 = add nuw nsw i128 %add13.i.i.1048, %shr90.i.i.1089
  %shr100.i.i.1092 = lshr i128 %add94.i.i.1090, 64
  %add104.i.i.1093 = add nsw i128 %sub78.i.i.1085, %shr100.i.i.1092
  %71 = load i64, i64* %y2, align 8, !tbaa !6
  %conv.i.1099 = zext i64 %71 to i128
  %conv2.i.1100 = and i128 %sub70.i.i.1079, 18446744073709551615
  %mul.i.1101 = mul nuw i128 %conv2.i.1100, %conv.i.1099
  %shr.i.1102 = lshr i128 %mul.i.1101, 64
  %conv5.i.1103 = and i128 %mul.i.1101, 18446744073709551615
  store i128 %conv5.i.1103, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.1106 = and i128 %add84.i.i.1087, 18446744073709551615
  %mul13.i.1107 = mul nuw i128 %conv12.i.1106, %conv.i.1099
  %shr15.i.1108 = lshr i128 %mul13.i.1107, 64
  %conv17.i.1109 = and i128 %mul13.i.1107, 18446744073709551615
  %arrayidx21.i.1112 = getelementptr inbounds i64, i64* %y2, i64 1
  %72 = load i64, i64* %arrayidx21.i.1112, align 8, !tbaa !6
  %conv22.i.1113 = zext i64 %72 to i128
  %mul25.i.1114 = mul nuw i128 %conv2.i.1100, %conv22.i.1113
  %shr27.i.1115 = lshr i128 %mul25.i.1114, 64
  %conv29.i.1116 = and i128 %mul25.i.1114, 18446744073709551615
  %add.i.1110 = add nuw nsw i128 %conv29.i.1116, %shr.i.1102
  %add31.i.1117 = add nuw nsw i128 %add.i.1110, %conv17.i.1109
  store i128 %add31.i.1117, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv38.i.1120 = and i128 %add94.i.i.1090, 18446744073709551615
  %mul39.i.1121 = mul nuw i128 %conv38.i.1120, %conv.i.1099
  %shr41.i.1122 = lshr i128 %mul39.i.1121, 64
  %conv43.i.1123 = and i128 %mul39.i.1121, 18446744073709551615
  %mul52.i.1126 = mul nuw i128 %conv12.i.1106, %conv22.i.1113
  %shr54.i.1127 = lshr i128 %mul52.i.1126, 64
  %conv56.i.1128 = and i128 %mul52.i.1126, 18446744073709551615
  %arrayidx62.i.1131 = getelementptr inbounds i64, i64* %y2, i64 2
  %73 = load i64, i64* %arrayidx62.i.1131, align 8, !tbaa !6
  %conv63.i.1132 = zext i64 %73 to i128
  %mul66.i.1133 = mul nuw i128 %conv2.i.1100, %conv63.i.1132
  %shr68.i.1134 = lshr i128 %mul66.i.1133, 64
  %conv70.i.1135 = and i128 %mul66.i.1133, 18446744073709551615
  %add34.i.1118 = add nuw nsw i128 %conv70.i.1135, %shr27.i.1115
  %add45.i.1124 = add nuw nsw i128 %add34.i.1118, %shr15.i.1108
  %add58.i.1129 = add nuw nsw i128 %add45.i.1124, %conv56.i.1128
  %add72.i.1136 = add nuw nsw i128 %add58.i.1129, %conv43.i.1123
  store i128 %add72.i.1136, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %conv79.i.1139 = and i128 %add104.i.i.1093, 18446744073709551615
  %mul80.i.1140 = mul nuw i128 %conv79.i.1139, %conv.i.1099
  %shr82.i.1141 = lshr i128 %mul80.i.1140, 64
  %conv84.i.1142 = and i128 %mul80.i.1140, 18446744073709551615
  %mul93.i.1145 = mul nuw i128 %conv38.i.1120, %conv22.i.1113
  %shr95.i.1146 = lshr i128 %mul93.i.1145, 64
  %conv97.i.1147 = and i128 %mul93.i.1145, 18446744073709551615
  %mul107.i.1150 = mul nuw i128 %conv12.i.1106, %conv63.i.1132
  %shr109.i.1151 = lshr i128 %mul107.i.1150, 64
  %conv111.i.1152 = and i128 %mul107.i.1150, 18446744073709551615
  %arrayidx117.i.1155 = getelementptr inbounds i64, i64* %y2, i64 3
  %74 = load i64, i64* %arrayidx117.i.1155, align 8, !tbaa !6
  %conv118.i.1156 = zext i64 %74 to i128
  %mul121.i.1157 = mul nuw i128 %conv2.i.1100, %conv118.i.1156
  %shr123.i.1158 = lshr i128 %mul121.i.1157, 64
  %conv125.i.1159 = and i128 %mul121.i.1157, 18446744073709551615
  %add61.i.1130 = add nuw nsw i128 %conv125.i.1159, %shr68.i.1134
  %add75.i.1137 = add nuw nsw i128 %add61.i.1130, %shr54.i.1127
  %add86.i.1143 = add nuw nsw i128 %add75.i.1137, %conv111.i.1152
  %add99.i.1148 = add nuw nsw i128 %add86.i.1143, %shr41.i.1122
  %add113.i.1153 = add nuw nsw i128 %add99.i.1148, %conv97.i.1147
  %add127.i.1160 = add nuw nsw i128 %add113.i.1153, %conv84.i.1142
  store i128 %add127.i.1160, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i.1162 = mul nuw i128 %conv79.i.1139, %conv22.i.1113
  %shr137.i.1163 = lshr i128 %mul135.i.1162, 64
  %conv139.i.1164 = and i128 %mul135.i.1162, 18446744073709551615
  %mul148.i.1167 = mul nuw i128 %conv38.i.1120, %conv63.i.1132
  %shr150.i.1168 = lshr i128 %mul148.i.1167, 64
  %conv152.i.1169 = and i128 %mul148.i.1167, 18446744073709551615
  %mul162.i.1172 = mul nuw i128 %conv12.i.1106, %conv118.i.1156
  %shr164.i.1173 = lshr i128 %mul162.i.1172, 64
  %conv166.i.1174 = and i128 %mul162.i.1172, 18446744073709551615
  %add102.i.1149 = add nuw nsw i128 %shr109.i.1151, %shr123.i.1158
  %add116.i.1154 = add nuw nsw i128 %add102.i.1149, %conv166.i.1174
  %add130.i.1161 = add nuw nsw i128 %add116.i.1154, %shr95.i.1146
  %add141.i.1165 = add nuw nsw i128 %add130.i.1161, %conv152.i.1169
  %add154.i.1170 = add nuw nsw i128 %add141.i.1165, %shr82.i.1141
  %add168.i.1175 = add nuw nsw i128 %add154.i.1170, %conv139.i.1164
  store i128 %add168.i.1175, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i.1177 = mul nuw i128 %conv79.i.1139, %conv63.i.1132
  %shr178.i.1178 = lshr i128 %mul176.i.1177, 64
  %conv180.i.1179 = and i128 %mul176.i.1177, 18446744073709551615
  %mul189.i.1182 = mul nuw i128 %conv38.i.1120, %conv118.i.1156
  %shr191.i.1183 = lshr i128 %mul189.i.1182, 64
  %conv193.i.1184 = and i128 %mul189.i.1182, 18446744073709551615
  %add157.i.1171 = add nuw nsw i128 %shr150.i.1168, %shr164.i.1173
  %add171.i.1176 = add nuw nsw i128 %add157.i.1171, %conv193.i.1184
  %add182.i.1180 = add nuw nsw i128 %add171.i.1176, %shr137.i.1163
  %add195.i.1185 = add nuw nsw i128 %add182.i.1180, %conv180.i.1179
  store i128 %add195.i.1185, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i.1186 = add nuw nsw i128 %shr178.i.1178, %shr191.i.1183
  %mul203.i.1187 = mul nuw i128 %conv79.i.1139, %conv118.i.1156
  %shr205.i.1188 = lshr i128 %mul203.i.1187, 64
  %conv207.i.1189 = and i128 %mul203.i.1187, 18446744073709551615
  %add209.i.1190 = add nuw nsw i128 %add198.i.1186, %conv207.i.1189
  store i128 %add209.i.1190, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i.1188, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %shl.i.i.1009 = shl nuw nsw i128 %add195.i.1185, 32
  %add.i.i.1010 = add i128 %shl.i.i.1009, %add168.i.1175
  %sub7.i.i.1014 = sub nsw i128 %add195.i.1185, %shr205.i.1188
  %shl13.i.i.1017 = shl i128 %add168.i.1175, 32
  %shl28.i.i.1025 = shl nuw nsw i128 %add209.i.1190, 32
  %shl32.i.i.1027 = shl nuw nsw i128 %add209.i.1190, 33
  %mul.i.i.1029 = shl nuw nsw i128 %add209.i.1190, 1
  %shl46.i.i.1034 = shl nuw nsw i128 %shr205.i.1188, 32
  %shl50.i.i.1036 = shl nuw nsw i128 %shr205.i.1188, 33
  %mul54.i.i.1038 = mul nuw nsw i128 %shr205.i.1188, 3
  %75 = load i128, i128* %arraydecay80.pre-phi, align 16, !tbaa !2
  %add3.i.i.1011 = add nuw nsw i128 %conv5.i.1103, 163526927429441592784209900992496
  %sub26.i.i.1024 = sub nsw i128 %add3.i.i.1011, %add209.i.1190
  %sub30.i.i.1026 = add i128 %sub26.i.i.1024, %add.i.i.1010
  %sub44.i.i.1033 = sub i128 %sub30.i.i.1026, %shl28.i.i.1025
  %sub48.i.i.1035 = sub i128 %sub44.i.i.1033, %75
  %add.i.983 = sub i128 %sub48.i.i.1035, %shr205.i.1188
  %sub.i.990 = sub i128 %add.i.983, %shl46.i.i.1034
  %76 = load i128, i128* %arrayidx9.i.991.pre-phi, align 16, !tbaa !2
  %add9.i.i.1015 = or i128 %add31.i.1117, 163526927429441592793074713493504
  %sub15.i.i.1018 = sub i128 %add9.i.i.1015, %shl13.i.i.1017
  %add34.i.i.1028 = add i128 %sub15.i.i.1018, %shl32.i.i.1027
  %add2.i.985 = sub i128 %add34.i.i.1028, %76
  %sub11.i.992 = add i128 %add2.i.985, %sub7.i.i.1014
  %77 = load i128, i128* %arrayidx12.i.993.pre-phi, align 16, !tbaa !2
  %sub11.i.i.1016 = add nuw nsw i128 %add72.i.1136, 163526927429441592784209900996624
  %sub23.i.i.1022 = sub nsw i128 %sub11.i.i.1016, %shl.i.i.1009
  %add37.i.i.1030 = add i128 %sub23.i.i.1022, %mul.i.i.1029
  %add52.i.i.1037 = sub i128 %add37.i.i.1030, %77
  %add4.i.987 = sub i128 %add52.i.i.1037, %sub7.i.i.1014
  %sub14.i.994 = add i128 %add4.i.987, %shl50.i.i.1036
  %78 = load i128, i128* %arrayidx15.i.995.pre-phi, align 16, !tbaa !2
  %sub.i.i.1012 = add i128 %add127.i.1160, 163526927429441592784209900996624
  %add19.i.i.1020 = add i128 %sub.i.i.1012, %shl13.i.i.1017
  %sub41.i.i.1032 = sub i128 %add19.i.i.1020, %add.i.i.1010
  %add56.i.i.1039 = sub i128 %sub41.i.i.1032, %shl28.i.i.1025
  %add6.i.989 = sub i128 %add56.i.i.1039, %78
  %sub17.i.996 = add i128 %add6.i.989, %mul54.i.i.1038
  %mul.i.976 = shl i128 %sub.i.990, 1
  %mul3.i.978 = shl i128 %sub11.i.992, 1
  %mul6.i.980 = shl i128 %sub14.i.994, 1
  %mul9.i.982 = shl i128 %sub17.i.996, 1
  %add.i.920 = add i128 %mul9.i.982, 18446744069414584320
  %79 = lshr i128 %sub14.i.994, 63
  %shr.i.922 = and i128 %79, 18446744073709551615
  %add8.i.923 = add i128 %shr.i.922, %add.i.920
  %conv12.i.924 = and i128 %mul6.i.980, 18446744073709551614
  %add13.i.925 = add nuw nsw i128 %conv12.i.924, 18446673704965373952
  %add16.i.926 = add i128 %mul.i.976, 18446744073709551615
  %add19.i.928 = add i128 %mul3.i.978, 1298074214633706907132628377272319
  %shr22.i.929 = lshr i128 %add8.i.923, 64
  %conv23.i.930 = trunc i128 %shr22.i.929 to i64
  %fold = add i128 %79, %add.i.920
  %conv26.i.931 = and i128 %fold, 18446744073709551615
  %sub.i.932 = sub nsw i128 %conv26.i.931, %shr22.i.929
  %shl.i.933 = shl nuw nsw i128 %shr22.i.929, 32
  %add32.i.934 = add nsw i128 %sub.i.932, %shl.i.933
  %shr34.i.935 = lshr i128 %add32.i.934, 64
  %conv35.i.936 = trunc i128 %shr34.i.935 to i64
  %add36.i.937 = add i64 %conv35.i.936, %conv23.i.930
  %conv39.i.938 = and i128 %add32.i.934, 18446744073709551615
  %sub43.i.939 = sub nsw i128 %conv39.i.938, %shr34.i.935
  %shl45.i.940 = shl nuw nsw i128 %shr34.i.935, 32
  %add47.i.941 = add nsw i128 %sub43.i.939, %shl45.i.940
  %conv48.i.942 = zext i64 %add36.i.937 to i128
  %add50.i.943 = add i128 %add16.i.926, %conv48.i.942
  %shl52.i.944 = shl nuw nsw i128 %conv48.i.942, 32
  %sub54.i.945 = sub i128 %add19.i.928, %shl52.i.944
  %shr56.i.946 = lshr i128 %add47.i.941, 64
  %conv57.i.947 = trunc i128 %shr56.i.946 to i64
  %sub58.i.948 = sub i64 0, %conv57.i.947
  %conv60.i.949 = trunc i128 %add47.i.941 to i64
  %and.i.950 = and i64 %conv60.i.949, 9223372036854775807
  %neg.i.951 = sub nsw i64 9223372032559808512, %and.i.950
  %sub62177.i.952 = and i64 %neg.i.951, %conv60.i.949
  %and66.i.953 = ashr i64 %sub62177.i.952, 63
  %or.i.954 = or i64 %and66.i.953, %sub58.i.948
  %conv68.i.955 = zext i64 %or.i.954 to i128
  %sub70.i.956 = sub i128 %add50.i.943, %conv68.i.955
  %and71.i.957 = and i64 %or.i.954, 4294967295
  %conv72.i.958 = zext i64 %and71.i.957 to i128
  %sub74.i.959 = sub i128 %sub54.i.945, %conv72.i.958
  %and75.i.960 = and i64 %or.i.954, -4294967295
  %conv76.i.961 = zext i64 %and75.i.960 to i128
  %sub78.i.962 = sub nsw i128 %add47.i.941, %conv76.i.961
  %shr80.i.963 = lshr i128 %sub70.i.956, 64
  %add84.i.964 = add i128 %sub74.i.959, %shr80.i.963
  %conv86.i.965 = trunc i128 %sub70.i.956 to i64
  %shr90.i.966 = lshr i128 %add84.i.964, 64
  %add94.i.967 = add nuw nsw i128 %add13.i.925, %shr90.i.966
  %conv96.i.968 = trunc i128 %add84.i.964 to i64
  %shr100.i.969 = lshr i128 %add94.i.967, 64
  %add104.i.970 = add nsw i128 %shr100.i.969, %sub78.i.962
  %conv106.i.971 = trunc i128 %add94.i.967 to i64
  %conv119.i.974 = trunc i128 %add104.i.970 to i64
  %or.i.8782782 = or i128 %add84.i.964, %sub70.i.956
  %or3.i.8802783 = or i128 %or.i.8782782, %add94.i.967
  %or5.i.8822784 = or i128 %or3.i.8802783, %add104.i.970
  %or5.i.882 = trunc i128 %or5.i.8822784 to i64
  %dec.i.883 = add i64 %or5.i.882, -1
  %shl.i.884 = shl i64 %dec.i.883, 32
  %and.i.885 = and i64 %shl.i.884, %dec.i.883
  %shl6.i.886 = shl i64 %and.i.885, 16
  %and7.i.887 = and i64 %shl6.i.886, %and.i.885
  %shl8.i.888 = shl i64 %and7.i.887, 8
  %and9.i.889 = and i64 %shl8.i.888, %and7.i.887
  %shl10.i.890 = shl i64 %and9.i.889, 4
  %and11.i.891 = and i64 %shl10.i.890, %and9.i.889
  %shl12.i.892 = shl i64 %and11.i.891, 2
  %and13.i.893 = and i64 %shl12.i.892, %and11.i.891
  %shl14.i.894 = shl i64 %and13.i.893, 1
  %and15.i.895 = and i64 %shl14.i.894, %and13.i.893
  %xor.i.896 = xor i64 %conv86.i.965, -1
  %xor18.i.897 = xor i64 %conv96.i.968, 4294967295
  %or19.i.898 = or i64 %xor18.i.897, %xor.i.896
  %or22.i.899 = or i64 %or19.i.898, %conv106.i.971
  %xor24.i.900 = xor i64 %conv119.i.974, -4294967295
  %or25.i.901 = or i64 %or22.i.899, %xor24.i.900
  %dec26.i.902 = add i64 %or25.i.901, -1
  %shl27.i.903 = shl i64 %dec26.i.902, 32
  %and28.i.904 = and i64 %shl27.i.903, %dec26.i.902
  %shl29.i.905 = shl i64 %and28.i.904, 16
  %and30.i.906 = and i64 %shl29.i.905, %and28.i.904
  %shl31.i.907 = shl i64 %and30.i.906, 8
  %and32.i.908 = and i64 %shl31.i.907, %and30.i.906
  %shl33.i.909 = shl i64 %and32.i.908, 4
  %and34.i.910 = and i64 %shl33.i.909, %and32.i.908
  %shl35.i.911 = shl i64 %and34.i.910, 2
  %and36.i.912 = and i64 %shl35.i.911, %and34.i.910
  %shl37.i.913 = shl i64 %and36.i.912, 1
  %and38.i.914 = and i64 %shl37.i.913, %and36.i.912
  %sub86.i.915 = or i64 %and38.i.914, %and15.i.895
  %or41.i.916 = ashr i64 %sub86.i.915, 63
  %coerce86.sroa.2.0.insert.ext = zext i64 %or41.i.916 to i128
  %coerce86.sroa.2.0.insert.shift = shl nuw i128 %coerce86.sroa.2.0.insert.ext, 64
  %coerce86.sroa.0.0.insert.insert = or i128 %coerce86.sroa.2.0.insert.shift, %coerce86.sroa.2.0.insert.ext
  %notlhs = icmp eq i128 %coerce64.sroa.0.0.insert.insert, 0
  %notrhs = icmp eq i128 %coerce86.sroa.0.0.insert.insert, 0
  %or.cond.not = or i1 %notlhs, %notrhs
  %80 = or i128 %coerce.sroa.0.0.insert.insert, %coerce14.sroa.0.0.insert.insert
  %81 = icmp ne i128 %80, 0
  %82 = or i1 %81, %or.cond.not
  br i1 %82, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end
  tail call fastcc void @point_double(i128* %x3, i128* %y3, i128* %z3, i128* %x1, i128* %y1, i128* %z1)
  br label %cleanup

if.end.94:                                        ; preds = %if.end
  %conv84.i.1473 = and i128 %mul80.i.1471, 18446744073709551615
  %shr41.i.1453 = lshr i128 %mul39.i.1452, 64
  %add61.i.1461 = add nuw nsw i128 %conv84.i.1473, %shr41.i.1453
  %shr54.i.1458 = lshr i128 %mul52.i.1457, 64
  %add75.i.1468 = add nuw nsw i128 %add61.i.1461, %shr54.i.1458
  %conv97.i.1478 = and i128 %mul93.i.1476, 18446744073709551615
  %add86.i.1474 = add nuw nsw i128 %add75.i.1468, %conv97.i.1478
  %shr68.i.1465 = lshr i128 %mul66.i.1464, 64
  %add99.i.1479 = add nuw nsw i128 %add86.i.1474, %shr68.i.1465
  %conv111.i.1483 = and i128 %mul107.i.1481, 18446744073709551615
  %add113.i.1484 = add nuw nsw i128 %add99.i.1479, %conv111.i.1483
  %conv125.i.1490 = and i128 %mul121.i.1488, 18446744073709551615
  %add127.i.1491 = add nuw nsw i128 %add113.i.1484, %conv125.i.1490
  %conv43.i.1454 = and i128 %mul39.i.1452, 18446744073709551615
  %shr15.i.1439 = lshr i128 %mul13.i.1438, 64
  %add34.i.1449 = add nuw nsw i128 %conv43.i.1454, %shr15.i.1439
  %shr27.i.1446 = lshr i128 %mul25.i.1445, 64
  %add45.i.1455 = add nuw nsw i128 %add34.i.1449, %shr27.i.1446
  %conv56.i.1459 = and i128 %mul52.i.1457, 18446744073709551615
  %add58.i.1460 = add nuw nsw i128 %add45.i.1455, %conv56.i.1459
  %conv70.i.1466 = and i128 %mul66.i.1464, 18446744073709551615
  %add72.i.1467 = add nuw nsw i128 %add58.i.1460, %conv70.i.1466
  %conv17.i.1440 = and i128 %mul13.i.1438, 18446744073709551615
  %shr.i.1433 = lshr i128 %mul.i.1432, 64
  %add.i.1441 = add nuw nsw i128 %conv17.i.1440, %shr.i.1433
  %conv29.i.1447 = and i128 %mul25.i.1445, 18446744073709551615
  %add31.i.1448 = add nuw nsw i128 %add.i.1441, %conv29.i.1447
  %conv5.i.1434 = and i128 %mul.i.1432, 18446744073709551615
  %mul54.i.i.1369 = mul nuw nsw i128 %shr205.i.1519, 3
  %add9.i.1336 = add i128 %add127.i.1491, 1267650600228229401427983728656
  %sub.i.i.1343 = add i128 %add9.i.1336, %shl13.i.i.1348
  %add19.i.i.1351 = sub i128 %sub.i.i.1343, %add.i.i.1341
  %sub41.i.i.1363 = sub i128 %add19.i.i.1351, %shl28.i.i.1356
  %add56.i.i.1370 = add i128 %sub41.i.i.1363, %mul54.i.i.1369
  %shl50.i.i.1367 = shl nuw nsw i128 %shr205.i.1519, 33
  %mul.i.i.1360 = shl nuw nsw i128 %add209.i.1521, 1
  %add6.i.1333 = add nuw nsw i128 %add72.i.1467, 1267650600228229401427983728656
  %sub11.i.i.1347 = sub nsw i128 %add6.i.1333, %shl.i.i.1340
  %sub23.i.i.1353 = add i128 %sub11.i.i.1347, %mul.i.i.1360
  %add37.i.i.1361 = sub i128 %sub23.i.i.1353, %sub7.i.i.1345
  %add52.i.i.1368 = add i128 %add37.i.i.1361, %shl50.i.i.1367
  %add.i.1328 = add nuw nsw i128 %conv5.i.1434, 1267650600228229401427983728624
  %shl46.i.i.1365 = shl nuw nsw i128 %shr205.i.1519, 32
  %add3.i.i.1342 = sub nsw i128 %add.i.1328, %add209.i.1521
  %sub26.i.i.1355 = add i128 %add3.i.i.1342, %add.i.i.1341
  %sub30.i.i.1357 = sub i128 %sub26.i.i.1355, %shl28.i.i.1356
  %sub44.i.i.1364 = sub i128 %sub30.i.i.1357, %shr205.i.1519
  %sub48.i.i.1366 = sub i128 %sub44.i.i.1364, %shl46.i.i.1365
  %shl32.i.i.1358 = shl nuw nsw i128 %add209.i.1521, 33
  %add3.i.1330 = or i128 %add31.i.1448, 1267650600228229401496703205376
  %add9.i.i.1346 = sub i128 %add3.i.1330, %shl13.i.i.1348
  %sub15.i.i.1349 = add i128 %add9.i.i.1346, %shl32.i.i.1358
  %add34.i.i.1359 = add i128 %sub15.i.i.1349, %sub7.i.i.1345
  %83 = load i128, i128* %arraydecay56, align 16, !tbaa !2
  %84 = load i128, i128* %arrayidx4.i.1639, align 16, !tbaa !2
  %85 = load i128, i128* %arrayidx7.i.1642, align 16, !tbaa !2
  %86 = load i128, i128* %arrayidx10.i.1645, align 16, !tbaa !2
  %mul.i.821 = shl i128 %83, 1
  store i128 %mul.i.821, i128* %arraydecay17, align 16, !tbaa !2
  %mul3.i.823 = shl i128 %84, 1
  store i128 %mul3.i.823, i128* %arrayidx4.i.837, align 16, !tbaa !2
  %mul6.i.825 = shl i128 %85, 1
  store i128 %mul6.i.825, i128* %arrayidx7.i.840, align 16, !tbaa !2
  %mul9.i.827 = shl i128 %86, 1
  store i128 %mul9.i.827, i128* %arrayidx10.i.843, align 16, !tbaa !2
  %add.i.i.703 = add i128 %mul9.i.827, 18446744069414584320
  %87 = lshr i128 %85, 63
  %shr.i.i.705 = and i128 %87, 18446744073709551615
  %add8.i.i.706 = add i128 %add.i.i.703, %shr.i.i.705
  %conv12.i.i.707 = and i128 %mul6.i.825, 18446744073709551614
  %add13.i.i.708 = add nuw nsw i128 %conv12.i.i.707, 18446673704965373952
  %add16.i.i.709 = add i128 %mul.i.821, 18446744073709551615
  %add19.i.i.711 = add i128 %mul3.i.823, 1298074214633706907132628377272319
  %shr22.i.i.712 = lshr i128 %add8.i.i.706, 64
  %conv23.i.i.713 = trunc i128 %shr22.i.i.712 to i64
  %fold2785 = add i128 %add.i.i.703, %87
  %conv26.i.i.714 = and i128 %fold2785, 18446744073709551615
  %sub.i.i.715 = sub nsw i128 %conv26.i.i.714, %shr22.i.i.712
  %shl.i.i.716 = shl nuw nsw i128 %shr22.i.i.712, 32
  %add32.i.i.717 = add nsw i128 %sub.i.i.715, %shl.i.i.716
  %shr34.i.i.718 = lshr i128 %add32.i.i.717, 64
  %conv35.i.i.719 = trunc i128 %shr34.i.i.718 to i64
  %add36.i.i.720 = add i64 %conv35.i.i.719, %conv23.i.i.713
  %conv39.i.i.721 = and i128 %add32.i.i.717, 18446744073709551615
  %sub43.i.i.722 = sub nsw i128 %conv39.i.i.721, %shr34.i.i.718
  %shl45.i.i.723 = shl nuw nsw i128 %shr34.i.i.718, 32
  %add47.i.i.724 = add nsw i128 %sub43.i.i.722, %shl45.i.i.723
  %conv48.i.i.725 = zext i64 %add36.i.i.720 to i128
  %add50.i.i.726 = add i128 %add16.i.i.709, %conv48.i.i.725
  %shl52.i.i.727 = shl nuw nsw i128 %conv48.i.i.725, 32
  %sub54.i.i.728 = sub i128 %add19.i.i.711, %shl52.i.i.727
  %shr56.i.i.729 = lshr i128 %add47.i.i.724, 64
  %conv57.i.i.730 = trunc i128 %shr56.i.i.729 to i64
  %sub58.i.i.731 = sub i64 0, %conv57.i.i.730
  %conv60.i.i.732 = trunc i128 %add47.i.i.724 to i64
  %and.i.i.733 = and i64 %conv60.i.i.732, 9223372036854775807
  %neg.i.i.734 = sub nsw i64 9223372032559808512, %and.i.i.733
  %sub62177.i.i.735 = and i64 %neg.i.i.734, %conv60.i.i.732
  %and66.i.i.736 = ashr i64 %sub62177.i.i.735, 63
  %or.i.i.737 = or i64 %and66.i.i.736, %sub58.i.i.731
  %conv68.i.i.738 = zext i64 %or.i.i.737 to i128
  %sub70.i.i.739 = sub i128 %add50.i.i.726, %conv68.i.i.738
  %and71.i.i.740 = and i64 %or.i.i.737, 4294967295
  %conv72.i.i.741 = zext i64 %and71.i.i.740 to i128
  %sub74.i.i.742 = sub i128 %sub54.i.i.728, %conv72.i.i.741
  %and75.i.i.743 = and i64 %or.i.i.737, -4294967295
  %conv76.i.i.744 = zext i64 %and75.i.i.743 to i128
  %sub78.i.i.745 = sub nsw i128 %add47.i.i.724, %conv76.i.i.744
  %shr80.i.i.746 = lshr i128 %sub70.i.i.739, 64
  %add84.i.i.747 = add i128 %sub74.i.i.742, %shr80.i.i.746
  %shr90.i.i.749 = lshr i128 %add84.i.i.747, 64
  %add94.i.i.750 = add nuw nsw i128 %add13.i.i.708, %shr90.i.i.749
  %shr100.i.i.752 = lshr i128 %add94.i.i.750, 64
  %add104.i.i.753 = add nsw i128 %sub78.i.i.745, %shr100.i.i.752
  %conv.i.759 = and i128 %sub70.i.i.739, 18446744073709551615
  %mul.i.760 = mul nuw i128 %conv.i.759, %conv.i.759
  %shr.i.761 = lshr i128 %mul.i.760, 64
  %conv5.i.762 = and i128 %mul.i.760, 18446744073709551615
  store i128 %conv5.i.762, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.765 = and i128 %add84.i.i.747, 18446744073709551615
  %mul13.i.766 = mul nuw i128 %conv12.i.765, %conv.i.759
  %shr15.i.767 = lshr i128 %mul13.i.766, 64
  %conv17.i.768 = shl i128 %mul13.i.766, 1
  %factor.i.769 = and i128 %conv17.i.768, 36893488147419103230
  %add21.i.770 = add nuw nsw i128 %factor.i.769, %shr.i.761
  store i128 %add21.i.770, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv27.i.773 = and i128 %add94.i.i.750, 18446744073709551615
  %mul28.i.774 = mul nuw i128 %conv27.i.773, %conv.i.759
  %shr30.i.775 = lshr i128 %mul28.i.774, 64
  %conv32.i.776 = and i128 %mul28.i.774, 18446744073709551615
  %add34.i.777 = add nuw nsw i128 %conv32.i.776, %shr15.i.767
  %mul36.i.778 = shl nuw nsw i128 %add34.i.777, 1
  %conv42.i.781 = and i128 %add104.i.i.753, 18446744073709551615
  %mul43.i.782 = mul nuw i128 %conv42.i.781, %conv.i.759
  %shr45.i.783 = lshr i128 %mul43.i.782, 64
  %conv47.i.784 = and i128 %mul43.i.782, 18446744073709551615
  %mul56.i.787 = mul nuw i128 %conv27.i.773, %conv12.i.765
  %shr58.i.788 = lshr i128 %mul56.i.787, 64
  %conv60.i.789 = and i128 %mul56.i.787, 18446744073709551615
  %add49.i.785 = add nuw nsw i128 %conv60.i.789, %shr30.i.775
  %add62.i.790 = add nuw nsw i128 %add49.i.785, %conv47.i.784
  %mul64.i.791 = shl nuw nsw i128 %add62.i.790, 1
  %add67.i.792 = add nuw nsw i128 %shr45.i.783, %shr58.i.788
  %mul72.i.793 = mul nuw i128 %conv12.i.765, %conv12.i.765
  %shr74.i.794 = lshr i128 %mul72.i.793, 64
  %conv76.i.795 = and i128 %mul72.i.793, 18446744073709551615
  %add78.i.796 = add nuw nsw i128 %mul36.i.778, %conv76.i.795
  store i128 %add78.i.796, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add81.i.797 = add nuw nsw i128 %mul64.i.791, %shr74.i.794
  store i128 %add81.i.797, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul86.i.798 = mul nuw i128 %conv42.i.781, %conv12.i.765
  %shr88.i.799 = lshr i128 %mul86.i.798, 64
  %conv90.i.800 = and i128 %mul86.i.798, 18446744073709551615
  %add92.i.801 = add nuw nsw i128 %add67.i.792, %conv90.i.800
  %mul94.i.802 = shl nuw nsw i128 %add92.i.801, 1
  %mul101.i.804 = mul nuw i128 %conv42.i.781, %conv27.i.773
  %shr103.i.805 = lshr i128 %mul101.i.804, 64
  %conv105.i.806 = and i128 %mul101.i.804, 18446744073709551615
  %add107.i.807 = add nuw nsw i128 %conv105.i.806, %shr88.i.799
  %mul109.i.808 = shl nuw nsw i128 %add107.i.807, 1
  %add114.i.810 = shl nuw nsw i128 %shr103.i.805, 1
  %mul119.i.811 = mul nuw i128 %conv27.i.773, %conv27.i.773
  %shr121.i.812 = lshr i128 %mul119.i.811, 64
  %conv123.i.813 = and i128 %mul119.i.811, 18446744073709551615
  %add125.i.814 = add nuw nsw i128 %mul94.i.802, %conv123.i.813
  store i128 %add125.i.814, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add128.i.815 = add nuw nsw i128 %mul109.i.808, %shr121.i.812
  store i128 %add128.i.815, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %mul133.i.816 = mul nuw i128 %conv42.i.781, %conv42.i.781
  %shr135.i.817 = lshr i128 %mul133.i.816, 64
  %conv137.i.818 = and i128 %mul133.i.816, 18446744073709551615
  %add139.i.819 = add nuw nsw i128 %add114.i.810, %conv137.i.818
  store i128 %add139.i.819, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr135.i.817, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %add.i.658 = add nuw nsw i128 %conv5.i.762, 1267650600228229401427983728624
  %add3.i.660 = or i128 %add21.i.770, 1267650600228229401496703205376
  %add6.i.663 = add nuw nsw i128 %add78.i.796, 1267650600228229401427983728656
  %add9.i.666 = add nuw nsw i128 %add81.i.797, 1267650600228229401427983728656
  %shl.i.i.670 = shl nuw nsw i128 %add128.i.815, 32
  %add.i.i.671 = add nuw nsw i128 %shl.i.i.670, %add125.i.814
  %add3.i.i.672 = add nuw nsw i128 %add.i.i.671, %add.i.658
  %sub.i.i.673 = sub nsw i128 %add9.i.666, %add.i.i.671
  %sub7.i.i.675 = sub nsw i128 %add128.i.815, %shr135.i.817
  %add9.i.i.676 = add nsw i128 %sub7.i.i.675, %add3.i.660
  %sub11.i.i.677 = sub nsw i128 %add6.i.663, %sub7.i.i.675
  %shl13.i.i.678 = shl nuw nsw i128 %add125.i.814, 32
  %sub15.i.i.679 = sub nsw i128 %add9.i.i.676, %shl13.i.i.678
  %add19.i.i.681 = add i128 %shl13.i.i.678, %sub.i.i.673
  %sub23.i.i.683 = sub nsw i128 %sub11.i.i.677, %shl.i.i.670
  %sub26.i.i.685 = sub i128 %add3.i.i.672, %add139.i.819
  %shl28.i.i.686 = shl nuw nsw i128 %add139.i.819, 32
  %sub30.i.i.687 = sub i128 %sub26.i.i.685, %shl28.i.i.686
  %shl32.i.i.688 = shl nuw nsw i128 %add139.i.819, 33
  %add34.i.i.689 = add i128 %shl32.i.i.688, %sub15.i.i.679
  store i128 %add34.i.i.689, i128* %arrayidx4.i.837, align 16, !tbaa !2
  %mul.i.i.690 = shl nuw nsw i128 %add139.i.819, 1
  %add37.i.i.691 = add i128 %mul.i.i.690, %sub23.i.i.683
  %sub41.i.i.693 = sub i128 %add19.i.i.681, %shl28.i.i.686
  %sub44.i.i.694 = sub i128 %sub30.i.i.687, %shr135.i.817
  %shl46.i.i.695 = shl nuw nsw i128 %shr135.i.817, 32
  %sub48.i.i.696 = sub i128 %sub44.i.i.694, %shl46.i.i.695
  store i128 %sub48.i.i.696, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.697 = shl nuw nsw i128 %shr135.i.817, 33
  %add52.i.i.698 = add i128 %shl50.i.i.697, %add37.i.i.691
  store i128 %add52.i.i.698, i128* %arrayidx7.i.840, align 16, !tbaa !2
  %mul54.i.i.699 = mul nuw nsw i128 %shr135.i.817, 3
  %add56.i.i.700 = add i128 %mul54.i.i.699, %sub41.i.i.693
  store i128 %add56.i.i.700, i128* %arrayidx10.i.843, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay15, i128* %arraydecay56, i128* %arraydecay17)
  %arraydecay105 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 0
  %88 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.553 = add i128 %88, 1267650600228229401427983728624
  %89 = load i128, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %add3.i.555 = add i128 %89, 1267650600228229401496703205376
  %arrayidx4.i.556 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 1
  %90 = load i128, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add6.i.558 = add i128 %90, 1267650600228229401427983728656
  %arrayidx7.i.559 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 2
  %91 = load i128, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %add9.i.561 = add i128 %91, 1267650600228229401427983728656
  %arrayidx10.i.562 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 3
  %92 = load i128, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %93 = load i128, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %shl.i.i.565 = shl i128 %93, 32
  %add.i.i.566 = add i128 %shl.i.i.565, %92
  %add3.i.i.567 = add i128 %add.i.i.566, %add.i.553
  %sub.i.i.568 = sub i128 %add9.i.561, %add.i.i.566
  %94 = load i128, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %sub7.i.i.570 = sub i128 %93, %94
  %add9.i.i.571 = add i128 %sub7.i.i.570, %add3.i.555
  %sub11.i.i.572 = sub i128 %add6.i.558, %sub7.i.i.570
  %shl13.i.i.573 = shl i128 %92, 32
  %sub15.i.i.574 = sub i128 %add9.i.i.571, %shl13.i.i.573
  %add19.i.i.576 = add i128 %shl13.i.i.573, %sub.i.i.568
  %sub23.i.i.578 = sub i128 %sub11.i.i.572, %shl.i.i.565
  %95 = load i128, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %sub26.i.i.580 = sub i128 %add3.i.i.567, %95
  %shl28.i.i.581 = shl i128 %95, 32
  %sub30.i.i.582 = sub i128 %sub26.i.i.580, %shl28.i.i.581
  %shl32.i.i.583 = shl i128 %95, 33
  %add34.i.i.584 = add i128 %shl32.i.i.583, %sub15.i.i.574
  store i128 %add34.i.i.584, i128* %arrayidx4.i.556, align 16, !tbaa !2
  %mul.i.i.585 = shl i128 %95, 1
  %add37.i.i.586 = add i128 %mul.i.i.585, %sub23.i.i.578
  %sub41.i.i.588 = sub i128 %add19.i.i.576, %shl28.i.i.581
  %sub44.i.i.589 = sub i128 %sub30.i.i.582, %94
  %shl46.i.i.590 = shl i128 %94, 32
  %sub48.i.i.591 = sub i128 %sub44.i.i.589, %shl46.i.i.590
  store i128 %sub48.i.i.591, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.592 = shl i128 %94, 33
  %add52.i.i.593 = add i128 %shl50.i.i.592, %add37.i.i.586
  store i128 %add52.i.i.593, i128* %arrayidx7.i.559, align 16, !tbaa !2
  %mul54.i.i.594 = mul i128 %94, 3
  %add56.i.i.595 = add i128 %mul54.i.i.594, %sub41.i.i.588
  store i128 %add56.i.i.595, i128* %arrayidx10.i.562, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay15, i128* %arraydecay59.pre-phi, i128* %arraydecay17)
  %96 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.468 = add i128 %96, 1267650600228229401427983728624
  %97 = load i128, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %add3.i.470 = add i128 %97, 1267650600228229401496703205376
  %98 = load i128, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add6.i.473 = add i128 %98, 1267650600228229401427983728656
  %99 = load i128, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %add9.i.476 = add i128 %99, 1267650600228229401427983728656
  %100 = load i128, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %101 = load i128, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %shl.i.i.480 = shl i128 %101, 32
  %add.i.i.481 = add i128 %shl.i.i.480, %100
  %add3.i.i.482 = add i128 %add.i.i.481, %add.i.468
  %sub.i.i.483 = sub i128 %add9.i.476, %add.i.i.481
  %102 = load i128, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %sub7.i.i.485 = sub i128 %101, %102
  %add9.i.i.486 = add i128 %sub7.i.i.485, %add3.i.470
  %sub11.i.i.487 = sub i128 %add6.i.473, %sub7.i.i.485
  %shl13.i.i.488 = shl i128 %100, 32
  %sub15.i.i.489 = sub i128 %add9.i.i.486, %shl13.i.i.488
  %add19.i.i.491 = add i128 %shl13.i.i.488, %sub.i.i.483
  %sub23.i.i.493 = sub i128 %sub11.i.i.487, %shl.i.i.480
  %103 = load i128, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %sub26.i.i.495 = sub i128 %add3.i.i.482, %103
  %shl28.i.i.496 = shl i128 %103, 32
  %sub30.i.i.497 = sub i128 %sub26.i.i.495, %shl28.i.i.496
  %shl32.i.i.498 = shl i128 %103, 33
  %add34.i.i.499 = add i128 %shl32.i.i.498, %sub15.i.i.489
  %mul.i.i.500 = shl i128 %103, 1
  %add37.i.i.501 = add i128 %mul.i.i.500, %sub23.i.i.493
  %sub41.i.i.503 = sub i128 %add19.i.i.491, %shl28.i.i.496
  %sub44.i.i.504 = sub i128 %sub30.i.i.497, %102
  %shl46.i.i.505 = shl i128 %102, 32
  %sub48.i.i.506 = sub i128 %sub44.i.i.504, %shl46.i.i.505
  %shl50.i.i.507 = shl i128 %102, 33
  %add52.i.i.508 = add i128 %shl50.i.i.507, %add37.i.i.501
  %mul54.i.i.509 = mul i128 %102, 3
  %add56.i.i.510 = add i128 %mul54.i.i.509, %sub41.i.i.503
  %conv.i.453 = and i128 %sub70.i.956, 18446744073709551615
  %mul.i.454 = mul nuw i128 %conv.i.453, %conv.i.453
  %shr.i.455 = lshr i128 %mul.i.454, 64
  %conv5.i.456 = and i128 %mul.i.454, 18446744073709551615
  store i128 %conv5.i.456, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.459 = and i128 %add84.i.964, 18446744073709551615
  %mul13.i.460 = mul nuw i128 %conv12.i.459, %conv.i.453
  %shr15.i.461 = lshr i128 %mul13.i.460, 64
  %conv17.i.462 = shl i128 %mul13.i.460, 1
  %factor.i = and i128 %conv17.i.462, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i.455
  store i128 %add21.i, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv27.i = and i128 %add94.i.967, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i.453
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i.465 = add nuw nsw i128 %conv32.i, %shr15.i.461
  %mul36.i = shl nuw nsw i128 %add34.i.465, 1
  %conv42.i = and i128 %add104.i.970, 18446744073709551615
  %mul43.i = mul nuw i128 %conv42.i, %conv.i.453
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i.459
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i.466 = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i.466, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i.459, %conv12.i.459
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i.467 = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i.467
  store i128 %add78.i, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  store i128 %add81.i, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i.459
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %mul101.i = mul nuw i128 %conv42.i, %conv27.i
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv27.i, %conv27.i
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  store i128 %add125.i, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  store i128 %add128.i, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %mul133.i = mul nuw i128 %conv42.i, %conv42.i
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  store i128 %add139.i, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr135.i, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %shl.i.i.422 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.423 = add nuw nsw i128 %shl.i.i.422, %add125.i
  %sub7.i.i.427 = sub nsw i128 %add128.i, %shr135.i
  %shl13.i.i.430 = shl nuw nsw i128 %add125.i, 32
  %shl28.i.i.438 = shl nuw nsw i128 %add139.i, 32
  %shl32.i.i.440 = shl nuw nsw i128 %add139.i, 33
  %mul.i.i.442 = shl nuw nsw i128 %add139.i, 1
  %shl46.i.i.447 = shl nuw nsw i128 %shr135.i, 32
  %shl50.i.i.449 = shl nuw nsw i128 %shr135.i, 33
  %mul54.i.i.451 = mul nuw nsw i128 %shr135.i, 3
  %mul.i.397 = shl i128 %sub48.i.i.506, 1
  %mul3.i.399 = shl i128 %add34.i.i.499, 1
  %mul6.i.401 = shl i128 %add52.i.i.508, 1
  %mul9.i.403 = shl i128 %add56.i.i.510, 1
  %104 = load i128, i128* %arraydecay105, align 16, !tbaa !2
  %add.i.388 = add i128 %mul.i.397, %104
  store i128 %add.i.388, i128* %arraydecay56, align 16, !tbaa !2
  %105 = load i128, i128* %arrayidx4.i.556, align 16, !tbaa !2
  %add4.i.391 = add i128 %mul3.i.399, %105
  store i128 %add4.i.391, i128* %arrayidx4.i.1639, align 16, !tbaa !2
  %106 = load i128, i128* %arrayidx7.i.559, align 16, !tbaa !2
  %add7.i = add i128 %mul6.i.401, %106
  store i128 %add7.i, i128* %arrayidx7.i.1642, align 16, !tbaa !2
  %107 = load i128, i128* %arrayidx10.i.562, align 16, !tbaa !2
  %add10.i.396 = add i128 %mul9.i.403, %107
  store i128 %add10.i.396, i128* %arrayidx10.i.1645, align 16, !tbaa !2
  %add3.i.i.424 = sub nsw i128 41832469807531570247123463044592, %shr135.i
  %sub26.i.i.437 = sub nsw i128 %add3.i.i.424, %shl46.i.i.447
  %sub30.i.i.439 = add nuw nsw i128 %sub26.i.i.437, %conv5.i.456
  %sub44.i.i.446 = sub nsw i128 %sub30.i.i.439, %add139.i
  %sub48.i.i.448 = add nuw nsw i128 %sub44.i.i.446, %add.i.i.423
  %add.i.374 = sub i128 %sub48.i.i.448, %shl28.i.i.438
  %sub.i.381 = sub i128 %add.i.374, %add.i.388
  %add9.i.i.428 = or i128 %add21.i, 41832469807531570249391205777408
  %sub15.i.i.431 = sub nsw i128 %add9.i.i.428, %shl13.i.i.430
  %add34.i.i.441 = add i128 %sub15.i.i.431, %sub7.i.i.427
  %add2.i.376 = add i128 %add34.i.i.441, %shl32.i.i.440
  %sub11.i.383 = sub i128 %add2.i.376, %add4.i.391
  %sub11.i.i.429 = add nuw nsw i128 %shl50.i.i.449, 41832469807531570247123463045648
  %sub23.i.i.435 = add nuw nsw i128 %sub11.i.i.429, %add78.i
  %add37.i.i.443 = sub nsw i128 %sub23.i.i.435, %sub7.i.i.427
  %add52.i.i.450 = sub nsw i128 %add37.i.i.443, %shl.i.i.422
  %add4.i.378 = add i128 %add52.i.i.450, %mul.i.i.442
  %sub14.i.385 = sub i128 %add4.i.378, %add7.i
  %sub.i.i.425 = add nuw nsw i128 %mul54.i.i.451, 41832469807531570247123463045648
  %add19.i.i.433 = add nuw nsw i128 %sub.i.i.425, %add81.i
  %sub41.i.i.445 = add nuw nsw i128 %add19.i.i.433, %shl13.i.i.430
  %add56.i.i.452 = sub i128 %sub41.i.i.445, %add.i.i.423
  %add6.i.380 = sub i128 %add56.i.i.452, %shl28.i.i.438
  %sub17.i.387 = sub i128 %add6.i.380, %add10.i.396
  %add.i.365 = add i128 %sub48.i.i.506, 162259276829213363382781917263872
  %add2.i.367 = add i128 %add34.i.i.499, 162259276829213363391578010288128
  %add4.i.369 = add i128 %add52.i.i.508, 162259276829213363382781917267968
  %add6.i.371 = add i128 %add56.i.i.510, 162259276829213363382781917267968
  %sub.i.372 = sub i128 %add.i.365, %sub.i.381
  store i128 %sub.i.372, i128* %arraydecay59.pre-phi, align 16, !tbaa !2
  %sub11.i = sub i128 %add2.i.367, %sub11.i.383
  store i128 %sub11.i, i128* %arrayidx9.i.1630.pre-phi, align 16, !tbaa !2
  %sub14.i = sub i128 %add4.i.369, %sub14.i.385
  store i128 %sub14.i, i128* %arrayidx12.i.1632.pre-phi, align 16, !tbaa !2
  %sub17.i = sub i128 %add6.i.371, %sub17.i.387
  store i128 %sub17.i, i128* %arrayidx15.i.1634.pre-phi, align 16, !tbaa !2
  %add.i.i.352 = add i128 %sub17.i, 18446744069414584320
  %shr.i.i = lshr i128 %sub14.i, 64
  %add8.i.i = add i128 %add.i.i.352, %shr.i.i
  %conv12.i.i = and i128 %sub14.i, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %add16.i.i = add i128 %sub.i.372, 18446744073709551615
  %add19.i.i.354 = add i128 %sub11.i, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i.355 = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i.356 = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i.355, %shl.i.i.356
  %shr34.i.i = lshr i128 %add32.i.i, 64
  %conv35.i.i = trunc i128 %shr34.i.i to i64
  %add36.i.i = add i64 %conv35.i.i, %conv23.i.i
  %conv39.i.i = and i128 %add32.i.i, 18446744073709551615
  %sub43.i.i = sub nsw i128 %conv39.i.i, %shr34.i.i
  %shl45.i.i = shl nuw nsw i128 %shr34.i.i, 32
  %add47.i.i = add nsw i128 %sub43.i.i, %shl45.i.i
  %conv48.i.i = zext i64 %add36.i.i to i128
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %shl52.i.i = shl nuw nsw i128 %conv48.i.i, 32
  %sub54.i.i = sub i128 %add19.i.i.354, %shl52.i.i
  %shr56.i.i = lshr i128 %add47.i.i, 64
  %conv57.i.i = trunc i128 %shr56.i.i to i64
  %sub58.i.i = sub i64 0, %conv57.i.i
  %conv60.i.i = trunc i128 %add47.i.i to i64
  %and.i.i = and i64 %conv60.i.i, 9223372036854775807
  %neg.i.i = sub nsw i64 9223372032559808512, %and.i.i
  %sub62177.i.i = and i64 %neg.i.i, %conv60.i.i
  %and66.i.i = ashr i64 %sub62177.i.i, 63
  %or.i.i = or i64 %and66.i.i, %sub58.i.i
  %conv68.i.i = zext i64 %or.i.i to i128
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %sub74.i.i = sub i128 %sub54.i.i, %conv72.i.i
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %add84.i.i = add i128 %sub74.i.i, %shr80.i.i
  %shr90.i.i = lshr i128 %add84.i.i, 64
  %add94.i.i = add nuw nsw i128 %add13.i.i, %shr90.i.i
  %shr100.i.i = lshr i128 %add94.i.i, 64
  %add104.i.i = add nsw i128 %sub78.i.i, %shr100.i.i
  %conv2.i = and i128 %sub70.i.i, 18446744073709551615
  %mul.i.357 = mul nuw i128 %conv2.i, %conv.i.453
  %shr.i.358 = lshr i128 %mul.i.357, 64
  %conv5.i = and i128 %mul.i.357, 18446744073709551615
  store i128 %conv5.i, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.361 = and i128 %add84.i.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i.361, %conv.i.453
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = and i128 %mul13.i, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv12.i.459
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.362 = add nuw nsw i128 %conv29.i, %shr.i.358
  %add31.i = add nuw nsw i128 %add.i.362, %conv17.i
  store i128 %add31.i, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %conv38.i = and i128 %add94.i.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i.453
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.361, %conv12.i.459
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv2.i, %conv27.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i, %shr15.i
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  store i128 %add72.i, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %conv79.i = and i128 %add104.i.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i.453
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv12.i.459
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.361, %conv27.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv2.i, %conv42.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %conv125.i, %shr68.i
  %add75.i = add nuw nsw i128 %add61.i, %shr54.i
  %add86.i = add nuw nsw i128 %add75.i, %conv111.i
  %add99.i = add nuw nsw i128 %add86.i, %shr41.i
  %add113.i = add nuw nsw i128 %add99.i, %conv97.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  store i128 %add127.i, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %mul135.i = mul nuw i128 %conv79.i, %conv12.i.459
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv27.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv12.i.361, %conv42.i
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr123.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  store i128 %add168.i, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %mul176.i = mul nuw i128 %conv79.i, %conv27.i
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv42.i
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr164.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  store i128 %add195.i, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv42.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  store i128 %add209.i, i128* %arrayidx111.i.646, align 16, !tbaa !2
  store i128 %shr205.i, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %arraydecay128 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 0
  call void @felem_mul(i128* %arraydecay128, i128* %arraydecay80.pre-phi, i128* %arraydecay105)
  %108 = load i128, i128* %arraydecay128, align 16, !tbaa !2
  %mul.i = shl i128 %108, 1
  store i128 %mul.i, i128* %arraydecay128, align 16, !tbaa !2
  %arrayidx2.i.338 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 1
  %109 = load i128, i128* %arrayidx2.i.338, align 16, !tbaa !2
  %mul3.i = shl i128 %109, 1
  store i128 %mul3.i, i128* %arrayidx2.i.338, align 16, !tbaa !2
  %arrayidx5.i.339 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 2
  %110 = load i128, i128* %arrayidx5.i.339, align 16, !tbaa !2
  %mul6.i = shl i128 %110, 1
  store i128 %mul6.i, i128* %arrayidx5.i.339, align 16, !tbaa !2
  %arrayidx8.i.340 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 3
  %111 = load i128, i128* %arrayidx8.i.340, align 16, !tbaa !2
  %mul9.i = shl i128 %111, 1
  store i128 %mul9.i, i128* %arrayidx8.i.340, align 16, !tbaa !2
  %arrayidx11.i.341 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 4
  %112 = load i128, i128* %arrayidx11.i.341, align 16, !tbaa !2
  %mul12.i = shl i128 %112, 1
  store i128 %mul12.i, i128* %arrayidx11.i.341, align 16, !tbaa !2
  %arrayidx14.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 5
  %113 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %mul15.i = shl i128 %113, 1
  store i128 %mul15.i, i128* %arrayidx14.i, align 16, !tbaa !2
  %arrayidx17.i.342 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 6
  %114 = load i128, i128* %arrayidx17.i.342, align 16, !tbaa !2
  %mul18.i = shl i128 %114, 1
  store i128 %mul18.i, i128* %arrayidx17.i.342, align 16, !tbaa !2
  %arrayidx20.i.343 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp2, i64 0, i64 7
  %115 = load i128, i128* %arrayidx20.i.343, align 16, !tbaa !2
  %mul21.i = shl i128 %115, 1
  store i128 %mul21.i, i128* %arrayidx20.i.343, align 16, !tbaa !2
  %116 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.331 = add i128 %116, 1180591620717411303232
  %117 = load i128, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %add2.i = add i128 %117, 1180591621816922931200
  %118 = load i128, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %add4.i = add i128 %118, 1180591620717411303424
  %119 = load i128, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %add6.i.334 = add i128 %119, 1180591619343021768768
  %120 = load i128, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %add8.i.336 = add i128 %120, 1180591620717411303360
  %121 = load i128, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %add10.i = add i128 %121, 1180591620717411303360
  %122 = load i128, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %add12.i = add i128 %122, 1180591620717411303360
  %123 = load i128, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %add14.i = add i128 %123, 1180591620717411303360
  %sub.i.337 = sub i128 %add.i.331, %mul.i
  store i128 %sub.i.337, i128* %arraydecay15, align 16, !tbaa !2
  %sub19.i = sub i128 %add2.i, %mul3.i
  store i128 %sub19.i, i128* %arrayidx8.i.600, align 16, !tbaa !2
  %sub22.i = sub i128 %add4.i, %mul6.i
  store i128 %sub22.i, i128* %arrayidx23.i.608, align 16, !tbaa !2
  %sub25.i = sub i128 %add6.i.334, %mul9.i
  store i128 %sub25.i, i128* %arrayidx38.i.616, align 16, !tbaa !2
  %sub28.i = sub i128 %add8.i.336, %mul12.i
  store i128 %sub28.i, i128* %arrayidx51.i.623, align 16, !tbaa !2
  %sub31.i = sub i128 %add10.i, %mul15.i
  store i128 %sub31.i, i128* %arrayidx96.i.640, align 16, !tbaa !2
  %sub34.i = sub i128 %add12.i, %mul18.i
  store i128 %sub34.i, i128* %arrayidx111.i.646, align 16, !tbaa !2
  %sub37.i = sub i128 %add14.i, %mul21.i
  store i128 %sub37.i, i128* %arrayidx141.i.657, align 16, !tbaa !2
  %add.i.326 = add i128 %sub.i.337, 40564819207303340845695479315968
  %add3.i = add i128 %sub19.i, 40564819207303340847894502572032
  %shl.i.i = shl i128 %sub31.i, 32
  %add.i.i = add i128 %shl.i.i, %sub28.i
  %sub7.i.i = sub i128 %sub31.i, %sub37.i
  %shl13.i.i = shl i128 %sub28.i, 32
  %shl28.i.i = shl i128 %sub34.i, 32
  %shl32.i.i = shl i128 %sub34.i, 33
  %add9.i.i = sub i128 %add3.i, %shl13.i.i
  %sub15.i.i = add i128 %add9.i.i, %sub7.i.i
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  %mul.i.i = shl i128 %sub34.i, 1
  %shl46.i.i = shl i128 %sub37.i, 32
  %add3.i.i = sub i128 %add.i.326, %sub37.i
  %sub26.i.i = sub i128 %add3.i.i, %shl46.i.i
  %sub30.i.i = sub i128 %sub26.i.i, %sub34.i
  %sub44.i.i = add i128 %sub30.i.i, %add.i.i
  %sub48.i.i = sub i128 %sub44.i.i, %shl28.i.i
  %shl50.i.i = shl i128 %sub37.i, 33
  %add6.i = add i128 %shl50.i.i, 40564819207303340845695479316992
  %sub11.i.i = add i128 %add6.i, %sub22.i
  %sub23.i.i = sub i128 %sub11.i.i, %sub7.i.i
  %add37.i.i = sub i128 %sub23.i.i, %shl.i.i
  %add52.i.i = add i128 %add37.i.i, %mul.i.i
  %mul54.i.i = mul i128 %sub37.i, 3
  %add9.i = add i128 %mul54.i.i, 40564819207303340845695479316992
  %sub.i.i = add i128 %add9.i, %sub25.i
  %add19.i.i = add i128 %sub.i.i, %shl13.i.i
  %sub41.i.i = sub i128 %add19.i.i, %add.i.i
  %add56.i.i = sub i128 %sub41.i.i, %shl28.i.i
  %neg.i.303 = xor i128 %coerce.sroa.0.0.insert.insert, -1
  %124 = load i64, i64* %x2, align 8, !tbaa !6
  %and.i.304 = and i64 %124, %or41.i
  %conv3.i.305 = zext i64 %and.i.304 to i128
  %and6.i.306 = and i128 %sub.i.381, %neg.i.303
  %or.i.307 = or i128 %conv3.i.305, %and6.i.306
  %125 = load i64, i64* %arrayidx21.i.1692, align 8, !tbaa !6
  %and.1.i.309 = and i64 %125, %or41.i
  %conv3.1.i.310 = zext i64 %and.1.i.309 to i128
  %and6.1.i.312 = and i128 %sub11.i.383, %neg.i.303
  %or.1.i.313 = or i128 %conv3.1.i.310, %and6.1.i.312
  %126 = load i64, i64* %arrayidx62.i.1711, align 8, !tbaa !6
  %and.2.i.315 = and i64 %126, %or41.i
  %conv3.2.i.316 = zext i64 %and.2.i.315 to i128
  %and6.2.i.318 = and i128 %sub14.i.385, %neg.i.303
  %or.2.i.319 = or i128 %conv3.2.i.316, %and6.2.i.318
  %127 = load i64, i64* %arrayidx117.i.1735, align 8, !tbaa !6
  %and.3.i.321 = and i64 %127, %or41.i
  %conv3.3.i.322 = zext i64 %and.3.i.321 to i128
  %and6.3.i.324 = and i128 %sub17.i.387, %neg.i.303
  %or.3.i.325 = or i128 %conv3.3.i.322, %and6.3.i.324
  %128 = load i128, i128* %x1, align 16, !tbaa !2
  %xor.i.281 = xor i128 %128, %or.i.307
  %and.i.282 = and i128 %xor.i.281, %coerce14.sroa.0.0.insert.insert
  %xor6.i.283 = xor i128 %and.i.282, %or.i.307
  %arrayidx.1.i.284 = getelementptr inbounds i128, i128* %x1, i64 1
  %129 = load i128, i128* %arrayidx.1.i.284, align 16, !tbaa !2
  %xor.1.i.286 = xor i128 %129, %or.1.i.313
  %and.1.i.287 = and i128 %xor.1.i.286, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.288 = xor i128 %and.1.i.287, %or.1.i.313
  %arrayidx.2.i.289 = getelementptr inbounds i128, i128* %x1, i64 2
  %130 = load i128, i128* %arrayidx.2.i.289, align 16, !tbaa !2
  %xor.2.i.291 = xor i128 %130, %or.2.i.319
  %and.2.i.292 = and i128 %xor.2.i.291, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.293 = xor i128 %and.2.i.292, %or.2.i.319
  %arrayidx.3.i.294 = getelementptr inbounds i128, i128* %x1, i64 3
  %131 = load i128, i128* %arrayidx.3.i.294, align 16, !tbaa !2
  %xor.3.i.296 = xor i128 %131, %or.3.i.325
  %and.3.i.297 = and i128 %xor.3.i.296, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.298 = xor i128 %and.3.i.297, %or.3.i.325
  %132 = load i64, i64* %y2, align 8, !tbaa !6
  %and.i.255 = and i64 %132, %or41.i
  %conv3.i.256 = zext i64 %and.i.255 to i128
  %and6.i.257 = and i128 %sub48.i.i, %neg.i.303
  %or.i.258 = or i128 %conv3.i.256, %and6.i.257
  %133 = load i64, i64* %arrayidx21.i.1112, align 8, !tbaa !6
  %and.1.i.260 = and i64 %133, %or41.i
  %conv3.1.i.261 = zext i64 %and.1.i.260 to i128
  %and6.1.i.263 = and i128 %add34.i.i, %neg.i.303
  %or.1.i.264 = or i128 %conv3.1.i.261, %and6.1.i.263
  %134 = load i64, i64* %arrayidx62.i.1131, align 8, !tbaa !6
  %and.2.i.266 = and i64 %134, %or41.i
  %conv3.2.i.267 = zext i64 %and.2.i.266 to i128
  %and6.2.i.269 = and i128 %add52.i.i, %neg.i.303
  %or.2.i.270 = or i128 %conv3.2.i.267, %and6.2.i.269
  %135 = load i64, i64* %arrayidx117.i.1155, align 8, !tbaa !6
  %and.3.i.272 = and i64 %135, %or41.i
  %conv3.3.i.273 = zext i64 %and.3.i.272 to i128
  %and6.3.i.275 = and i128 %add56.i.i, %neg.i.303
  %or.3.i.276 = or i128 %conv3.3.i.273, %and6.3.i.275
  %136 = load i128, i128* %y1, align 16, !tbaa !2
  %xor.i.232 = xor i128 %136, %or.i.258
  %and.i.233 = and i128 %xor.i.232, %coerce14.sroa.0.0.insert.insert
  %xor6.i.234 = xor i128 %and.i.233, %or.i.258
  %arrayidx.1.i.235 = getelementptr inbounds i128, i128* %y1, i64 1
  %137 = load i128, i128* %arrayidx.1.i.235, align 16, !tbaa !2
  %xor.1.i.237 = xor i128 %137, %or.1.i.264
  %and.1.i.238 = and i128 %xor.1.i.237, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.239 = xor i128 %and.1.i.238, %or.1.i.264
  %arrayidx.2.i.240 = getelementptr inbounds i128, i128* %y1, i64 2
  %138 = load i128, i128* %arrayidx.2.i.240, align 16, !tbaa !2
  %xor.2.i.242 = xor i128 %138, %or.2.i.270
  %and.2.i.243 = and i128 %xor.2.i.242, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.244 = xor i128 %and.2.i.243, %or.2.i.270
  %arrayidx.3.i.245 = getelementptr inbounds i128, i128* %y1, i64 3
  %139 = load i128, i128* %arrayidx.3.i.245, align 16, !tbaa !2
  %xor.3.i.247 = xor i128 %139, %or.3.i.276
  %and.3.i.248 = and i128 %xor.3.i.247, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.249 = xor i128 %and.3.i.248, %or.3.i.276
  %140 = load i64, i64* %z2, align 8, !tbaa !6
  %and.i.220 = and i64 %140, %or41.i
  %conv3.i = zext i64 %and.i.220 to i128
  %and6.i = and i128 %sub48.i.i.1366, %neg.i.303
  %or.i.221 = or i128 %conv3.i, %and6.i
  %141 = load i64, i64* %arrayidx1.i.511, align 8, !tbaa !6
  %and.1.i.223 = and i64 %141, %or41.i
  %conv3.1.i = zext i64 %and.1.i.223 to i128
  %and6.1.i = and i128 %add34.i.i.1359, %neg.i.303
  %or.1.i = or i128 %conv3.1.i, %and6.1.i
  %142 = load i64, i64* %arrayidx2.i.513, align 8, !tbaa !6
  %and.2.i.225 = and i64 %142, %or41.i
  %conv3.2.i = zext i64 %and.2.i.225 to i128
  %and6.2.i = and i128 %add52.i.i.1368, %neg.i.303
  %or.2.i = or i128 %conv3.2.i, %and6.2.i
  %143 = load i64, i64* %arrayidx4.i.515, align 8, !tbaa !6
  %and.3.i.227 = and i64 %143, %or41.i
  %conv3.3.i = zext i64 %and.3.i.227 to i128
  %and6.3.i = and i128 %add56.i.i.1370, %neg.i.303
  %or.3.i = or i128 %conv3.3.i, %and6.3.i
  %144 = load i128, i128* %z1, align 16, !tbaa !2
  %xor.i = xor i128 %144, %or.i.221
  %and.i.214 = and i128 %xor.i, %coerce14.sroa.0.0.insert.insert
  %xor6.i = xor i128 %and.i.214, %or.i.221
  %145 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %xor.1.i = xor i128 %145, %or.1.i
  %and.1.i = and i128 %xor.1.i, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i = xor i128 %and.1.i, %or.1.i
  %146 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %xor.2.i = xor i128 %146, %or.2.i
  %and.2.i = and i128 %xor.2.i, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i = xor i128 %and.2.i, %or.2.i
  %147 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %xor.3.i = xor i128 %147, %or.3.i
  %and.3.i = and i128 %xor.3.i, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i = xor i128 %and.3.i, %or.3.i
  store i128 %xor6.i.283, i128* %x3, align 16, !tbaa !2
  %arrayidx3.i.209 = getelementptr inbounds i128, i128* %x3, i64 1
  store i128 %xor6.1.i.288, i128* %arrayidx3.i.209, align 16, !tbaa !2
  %arrayidx5.i.211 = getelementptr inbounds i128, i128* %x3, i64 2
  store i128 %xor6.2.i.293, i128* %arrayidx5.i.211, align 16, !tbaa !2
  %arrayidx7.i.213 = getelementptr inbounds i128, i128* %x3, i64 3
  store i128 %xor6.3.i.298, i128* %arrayidx7.i.213, align 16, !tbaa !2
  store i128 %xor6.i.234, i128* %y3, align 16, !tbaa !2
  %arrayidx3.i.203 = getelementptr inbounds i128, i128* %y3, i64 1
  store i128 %xor6.1.i.239, i128* %arrayidx3.i.203, align 16, !tbaa !2
  %arrayidx5.i.205 = getelementptr inbounds i128, i128* %y3, i64 2
  store i128 %xor6.2.i.244, i128* %arrayidx5.i.205, align 16, !tbaa !2
  %arrayidx7.i.207 = getelementptr inbounds i128, i128* %y3, i64 3
  store i128 %xor6.3.i.249, i128* %arrayidx7.i.207, align 16, !tbaa !2
  store i128 %xor6.i, i128* %z3, align 16, !tbaa !2
  %arrayidx3.i = getelementptr inbounds i128, i128* %z3, i64 1
  store i128 %xor6.1.i, i128* %arrayidx3.i, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds i128, i128* %z3, i64 2
  store i128 %xor6.2.i, i128* %arrayidx5.i, align 16, !tbaa !2
  %arrayidx7.i = getelementptr inbounds i128, i128* %z3, i64 3
  store i128 %xor6.3.i, i128* %arrayidx7.i, align 16, !tbaa !2
  br label %cleanup

cleanup:                                          ; preds = %if.end.94, %if.then.93
  call void @llvm.lifetime.end(i64 128, i8* %6) #1
  call void @llvm.lifetime.end(i64 128, i8* %5) #1
  call void @llvm.lifetime.end(i64 64, i8* %4) #1
  call void @llvm.lifetime.end(i64 64, i8* %3) #1
  call void @llvm.lifetime.end(i64 64, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_double(i128* nocapture %x_out, i128* nocapture %y_out, i128* nocapture %z_out, i128* nocapture readonly %x_in, i128* nocapture readonly %y_in, i128* nocapture readonly %z_in) #0 {
entry:
  %tmp = alloca [8 x i128], align 16
  %ftmp = alloca [4 x i128], align 16
  %ftmp2 = alloca [4 x i128], align 16
  %0 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [4 x i128]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #1
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %3 = load i128, i128* %x_in, align 16, !tbaa !2
  store i128 %3, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i128, i128* %x_in, i64 1
  %4 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %arrayidx3.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  store i128 %4, i128* %arrayidx3.i, align 16, !tbaa !2
  %arrayidx4.i = getelementptr inbounds i128, i128* %x_in, i64 2
  %5 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  store i128 %5, i128* %arrayidx5.i, align 16, !tbaa !2
  %arrayidx6.i = getelementptr inbounds i128, i128* %x_in, i64 3
  %6 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  store i128 %6, i128* %arrayidx7.i, align 16, !tbaa !2
  %arraydecay11 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 0
  store i128 %3, i128* %arraydecay11, align 16, !tbaa !2
  %arrayidx3.i.511 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 1
  store i128 %4, i128* %arrayidx3.i.511, align 16, !tbaa !2
  %arrayidx5.i.513 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 2
  store i128 %5, i128* %arrayidx5.i.513, align 16, !tbaa !2
  %arrayidx7.i.515 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 3
  store i128 %6, i128* %arrayidx7.i.515, align 16, !tbaa !2
  %arraydecay12 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  %arrayidx.i.i.1006 = getelementptr inbounds i128, i128* %z_in, i64 3
  %7 = load i128, i128* %arrayidx.i.i.1006, align 16, !tbaa !2
  %add.i.i.1007 = add i128 %7, 18446744069414584320
  %arrayidx6.i.i.1008 = getelementptr inbounds i128, i128* %z_in, i64 2
  %8 = load i128, i128* %arrayidx6.i.i.1008, align 16, !tbaa !2
  %shr.i.i.1009 = lshr i128 %8, 64
  %add8.i.i.1010 = add i128 %add.i.i.1007, %shr.i.i.1009
  %conv12.i.i.1011 = and i128 %8, 18446744073709551615
  %add13.i.i.1012 = add nuw nsw i128 %conv12.i.i.1011, 18446673704965373952
  %9 = load i128, i128* %z_in, align 16, !tbaa !2
  %add16.i.i.1013 = add i128 %9, 18446744073709551615
  %arrayidx18.i.i.1014 = getelementptr inbounds i128, i128* %z_in, i64 1
  %10 = load i128, i128* %arrayidx18.i.i.1014, align 16, !tbaa !2
  %add19.i.i.1015 = add i128 %10, 1298074214633706907132628377272319
  %shr22.i.i.1016 = lshr i128 %add8.i.i.1010, 64
  %conv23.i.i.1017 = trunc i128 %shr22.i.i.1016 to i64
  %conv26.i.i.1018 = and i128 %add8.i.i.1010, 18446744073709551615
  %sub.i.i.1019 = sub nsw i128 %conv26.i.i.1018, %shr22.i.i.1016
  %shl.i.i.1020 = shl nuw nsw i128 %shr22.i.i.1016, 32
  %add32.i.i.1021 = add nsw i128 %sub.i.i.1019, %shl.i.i.1020
  %shr34.i.i.1022 = lshr i128 %add32.i.i.1021, 64
  %conv35.i.i.1023 = trunc i128 %shr34.i.i.1022 to i64
  %add36.i.i.1024 = add i64 %conv35.i.i.1023, %conv23.i.i.1017
  %conv39.i.i.1025 = and i128 %add32.i.i.1021, 18446744073709551615
  %sub43.i.i.1026 = sub nsw i128 %conv39.i.i.1025, %shr34.i.i.1022
  %shl45.i.i.1027 = shl nuw nsw i128 %shr34.i.i.1022, 32
  %add47.i.i.1028 = add nsw i128 %sub43.i.i.1026, %shl45.i.i.1027
  %conv48.i.i.1029 = zext i64 %add36.i.i.1024 to i128
  %add50.i.i.1030 = add i128 %add16.i.i.1013, %conv48.i.i.1029
  %shl52.i.i.1031 = shl nuw nsw i128 %conv48.i.i.1029, 32
  %sub54.i.i.1032 = sub i128 %add19.i.i.1015, %shl52.i.i.1031
  %shr56.i.i.1033 = lshr i128 %add47.i.i.1028, 64
  %conv57.i.i.1034 = trunc i128 %shr56.i.i.1033 to i64
  %sub58.i.i.1035 = sub i64 0, %conv57.i.i.1034
  %conv60.i.i.1036 = trunc i128 %add47.i.i.1028 to i64
  %and.i.i.1037 = and i64 %conv60.i.i.1036, 9223372036854775807
  %neg.i.i.1038 = sub nsw i64 9223372032559808512, %and.i.i.1037
  %sub62177.i.i.1039 = and i64 %neg.i.i.1038, %conv60.i.i.1036
  %and66.i.i.1040 = ashr i64 %sub62177.i.i.1039, 63
  %or.i.i.1041 = or i64 %and66.i.i.1040, %sub58.i.i.1035
  %conv68.i.i.1042 = zext i64 %or.i.i.1041 to i128
  %sub70.i.i.1043 = sub i128 %add50.i.i.1030, %conv68.i.i.1042
  %and71.i.i.1044 = and i64 %or.i.i.1041, 4294967295
  %conv72.i.i.1045 = zext i64 %and71.i.i.1044 to i128
  %sub74.i.i.1046 = sub i128 %sub54.i.i.1032, %conv72.i.i.1045
  %and75.i.i.1047 = and i64 %or.i.i.1041, -4294967295
  %conv76.i.i.1048 = zext i64 %and75.i.i.1047 to i128
  %sub78.i.i.1049 = sub nsw i128 %add47.i.i.1028, %conv76.i.i.1048
  %shr80.i.i.1050 = lshr i128 %sub70.i.i.1043, 64
  %add84.i.i.1051 = add i128 %sub74.i.i.1046, %shr80.i.i.1050
  %shr90.i.i.1053 = lshr i128 %add84.i.i.1051, 64
  %add94.i.i.1054 = add nuw nsw i128 %add13.i.i.1012, %shr90.i.i.1053
  %shr100.i.i.1056 = lshr i128 %add94.i.i.1054, 64
  %add104.i.i.1057 = add nsw i128 %sub78.i.i.1049, %shr100.i.i.1056
  %conv.i.1063 = and i128 %sub70.i.i.1043, 18446744073709551615
  %mul.i.1064 = mul nuw i128 %conv.i.1063, %conv.i.1063
  %shr.i.1065 = lshr i128 %mul.i.1064, 64
  %conv5.i.1066 = and i128 %mul.i.1064, 18446744073709551615
  store i128 %conv5.i.1066, i128* %arraydecay12, align 16, !tbaa !2
  %arrayidx8.i.1067 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %conv12.i.1069 = and i128 %add84.i.i.1051, 18446744073709551615
  %mul13.i.1070 = mul nuw i128 %conv12.i.1069, %conv.i.1063
  %shr15.i.1071 = lshr i128 %mul13.i.1070, 64
  %conv17.i.1072 = shl i128 %mul13.i.1070, 1
  %factor.i.1073 = and i128 %conv17.i.1072, 36893488147419103230
  %add21.i.1074 = add nuw nsw i128 %factor.i.1073, %shr.i.1065
  store i128 %add21.i.1074, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %arrayidx23.i.1075 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %conv27.i.1077 = and i128 %add94.i.i.1054, 18446744073709551615
  %mul28.i.1078 = mul nuw i128 %conv27.i.1077, %conv.i.1063
  %shr30.i.1079 = lshr i128 %mul28.i.1078, 64
  %conv32.i.1080 = and i128 %mul28.i.1078, 18446744073709551615
  %add34.i.1081 = add nuw nsw i128 %conv32.i.1080, %shr15.i.1071
  %mul36.i.1082 = shl nuw nsw i128 %add34.i.1081, 1
  %arrayidx38.i.1083 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %conv42.i.1085 = and i128 %add104.i.i.1057, 18446744073709551615
  %mul43.i.1086 = mul nuw i128 %conv42.i.1085, %conv.i.1063
  %shr45.i.1087 = lshr i128 %mul43.i.1086, 64
  %conv47.i.1088 = and i128 %mul43.i.1086, 18446744073709551615
  %arrayidx51.i.1090 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %mul56.i.1091 = mul nuw i128 %conv27.i.1077, %conv12.i.1069
  %shr58.i.1092 = lshr i128 %mul56.i.1091, 64
  %conv60.i.1093 = and i128 %mul56.i.1091, 18446744073709551615
  %add49.i.1089 = add nuw nsw i128 %conv60.i.1093, %shr30.i.1079
  %add62.i.1094 = add nuw nsw i128 %add49.i.1089, %conv47.i.1088
  %mul64.i.1095 = shl nuw nsw i128 %add62.i.1094, 1
  %add67.i.1096 = add nuw nsw i128 %shr45.i.1087, %shr58.i.1092
  %mul72.i.1097 = mul nuw i128 %conv12.i.1069, %conv12.i.1069
  %shr74.i.1098 = lshr i128 %mul72.i.1097, 64
  %conv76.i.1099 = and i128 %mul72.i.1097, 18446744073709551615
  %add78.i.1100 = add nuw nsw i128 %mul36.i.1082, %conv76.i.1099
  store i128 %add78.i.1100, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add81.i.1101 = add nuw nsw i128 %mul64.i.1095, %shr74.i.1098
  store i128 %add81.i.1101, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul86.i.1102 = mul nuw i128 %conv42.i.1085, %conv12.i.1069
  %shr88.i.1103 = lshr i128 %mul86.i.1102, 64
  %conv90.i.1104 = and i128 %mul86.i.1102, 18446744073709551615
  %add92.i.1105 = add nuw nsw i128 %add67.i.1096, %conv90.i.1104
  %mul94.i.1106 = shl nuw nsw i128 %add92.i.1105, 1
  %arrayidx96.i.1107 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %mul101.i.1108 = mul nuw i128 %conv42.i.1085, %conv27.i.1077
  %shr103.i.1109 = lshr i128 %mul101.i.1108, 64
  %conv105.i.1110 = and i128 %mul101.i.1108, 18446744073709551615
  %add107.i.1111 = add nuw nsw i128 %conv105.i.1110, %shr88.i.1103
  %mul109.i.1112 = shl nuw nsw i128 %add107.i.1111, 1
  %arrayidx111.i.1113 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %add114.i.1114 = shl nuw nsw i128 %shr103.i.1109, 1
  %mul119.i.1115 = mul nuw i128 %conv27.i.1077, %conv27.i.1077
  %shr121.i.1116 = lshr i128 %mul119.i.1115, 64
  %conv123.i.1117 = and i128 %mul119.i.1115, 18446744073709551615
  %add125.i.1118 = add nuw nsw i128 %mul94.i.1106, %conv123.i.1117
  store i128 %add125.i.1118, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %add128.i.1119 = add nuw nsw i128 %mul109.i.1112, %shr121.i.1116
  store i128 %add128.i.1119, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %mul133.i.1120 = mul nuw i128 %conv42.i.1085, %conv42.i.1085
  %shr135.i.1121 = lshr i128 %mul133.i.1120, 64
  %conv137.i.1122 = and i128 %mul133.i.1120, 18446744073709551615
  %add139.i.1123 = add nuw nsw i128 %add114.i.1114, %conv137.i.1122
  store i128 %add139.i.1123, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  %arrayidx141.i.1124 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  store i128 %shr135.i.1121, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %add.i.962 = add nuw nsw i128 %conv5.i.1066, 1267650600228229401427983728624
  %add3.i.964 = or i128 %add21.i.1074, 1267650600228229401496703205376
  %add6.i.967 = add nuw nsw i128 %add78.i.1100, 1267650600228229401427983728656
  %add9.i.970 = add nuw nsw i128 %add81.i.1101, 1267650600228229401427983728656
  %shl.i.i.974 = shl nuw nsw i128 %add128.i.1119, 32
  %add.i.i.975 = add nuw nsw i128 %shl.i.i.974, %add125.i.1118
  %sub7.i.i.979 = sub nsw i128 %add128.i.1119, %shr135.i.1121
  %shl13.i.i.982 = shl nuw nsw i128 %add125.i.1118, 32
  %shl28.i.i.990 = shl nuw nsw i128 %add139.i.1123, 32
  %shl32.i.i.992 = shl nuw nsw i128 %add139.i.1123, 33
  %add9.i.i.980 = sub nsw i128 %add3.i.964, %shl13.i.i.982
  %sub15.i.i.983 = add i128 %add9.i.i.980, %shl32.i.i.992
  %add34.i.i.993 = add i128 %sub15.i.i.983, %sub7.i.i.979
  %mul.i.i.994 = shl nuw nsw i128 %add139.i.1123, 1
  %shl46.i.i.999 = shl nuw nsw i128 %shr135.i.1121, 32
  %add3.i.i.976 = sub nsw i128 %add.i.962, %add139.i.1123
  %sub26.i.i.989 = add nsw i128 %add3.i.i.976, %add.i.i.975
  %sub30.i.i.991 = sub i128 %sub26.i.i.989, %shl28.i.i.990
  %sub44.i.i.998 = sub i128 %sub30.i.i.991, %shr135.i.1121
  %sub48.i.i.1000 = sub i128 %sub44.i.i.998, %shl46.i.i.999
  %shl50.i.i.1001 = shl nuw nsw i128 %shr135.i.1121, 33
  %sub11.i.i.981 = sub nsw i128 %add6.i.967, %shl.i.i.974
  %sub23.i.i.987 = add nsw i128 %sub11.i.i.981, %mul.i.i.994
  %add37.i.i.995 = sub i128 %sub23.i.i.987, %sub7.i.i.979
  %add52.i.i.1002 = add i128 %add37.i.i.995, %shl50.i.i.1001
  %mul54.i.i.1003 = mul nuw nsw i128 %shr135.i.1121, 3
  %sub.i.i.977 = add nuw nsw i128 %add9.i.970, %shl13.i.i.982
  %add19.i.i.985 = sub i128 %sub.i.i.977, %add.i.i.975
  %sub41.i.i.997 = sub i128 %add19.i.i.985, %shl28.i.i.990
  %add56.i.i.1004 = add i128 %sub41.i.i.997, %mul54.i.i.1003
  %arrayidx.i.i.843 = getelementptr inbounds i128, i128* %y_in, i64 3
  %11 = load i128, i128* %arrayidx.i.i.843, align 16, !tbaa !2
  %add.i.i.844 = add i128 %11, 18446744069414584320
  %arrayidx6.i.i.845 = getelementptr inbounds i128, i128* %y_in, i64 2
  %12 = load i128, i128* %arrayidx6.i.i.845, align 16, !tbaa !2
  %shr.i.i.846 = lshr i128 %12, 64
  %add8.i.i.847 = add i128 %add.i.i.844, %shr.i.i.846
  %conv12.i.i.848 = and i128 %12, 18446744073709551615
  %add13.i.i.849 = add nuw nsw i128 %conv12.i.i.848, 18446673704965373952
  %13 = load i128, i128* %y_in, align 16, !tbaa !2
  %add16.i.i.850 = add i128 %13, 18446744073709551615
  %arrayidx18.i.i.851 = getelementptr inbounds i128, i128* %y_in, i64 1
  %14 = load i128, i128* %arrayidx18.i.i.851, align 16, !tbaa !2
  %add19.i.i.852 = add i128 %14, 1298074214633706907132628377272319
  %shr22.i.i.853 = lshr i128 %add8.i.i.847, 64
  %conv23.i.i.854 = trunc i128 %shr22.i.i.853 to i64
  %conv26.i.i.855 = and i128 %add8.i.i.847, 18446744073709551615
  %sub.i.i.856 = sub nsw i128 %conv26.i.i.855, %shr22.i.i.853
  %shl.i.i.857 = shl nuw nsw i128 %shr22.i.i.853, 32
  %add32.i.i.858 = add nsw i128 %sub.i.i.856, %shl.i.i.857
  %shr34.i.i.859 = lshr i128 %add32.i.i.858, 64
  %conv35.i.i.860 = trunc i128 %shr34.i.i.859 to i64
  %add36.i.i.861 = add i64 %conv35.i.i.860, %conv23.i.i.854
  %conv39.i.i.862 = and i128 %add32.i.i.858, 18446744073709551615
  %sub43.i.i.863 = sub nsw i128 %conv39.i.i.862, %shr34.i.i.859
  %shl45.i.i.864 = shl nuw nsw i128 %shr34.i.i.859, 32
  %add47.i.i.865 = add nsw i128 %sub43.i.i.863, %shl45.i.i.864
  %conv48.i.i.866 = zext i64 %add36.i.i.861 to i128
  %add50.i.i.867 = add i128 %add16.i.i.850, %conv48.i.i.866
  %shl52.i.i.868 = shl nuw nsw i128 %conv48.i.i.866, 32
  %sub54.i.i.869 = sub i128 %add19.i.i.852, %shl52.i.i.868
  %shr56.i.i.870 = lshr i128 %add47.i.i.865, 64
  %conv57.i.i.871 = trunc i128 %shr56.i.i.870 to i64
  %sub58.i.i.872 = sub i64 0, %conv57.i.i.871
  %conv60.i.i.873 = trunc i128 %add47.i.i.865 to i64
  %and.i.i.874 = and i64 %conv60.i.i.873, 9223372036854775807
  %neg.i.i.875 = sub nsw i64 9223372032559808512, %and.i.i.874
  %sub62177.i.i.876 = and i64 %neg.i.i.875, %conv60.i.i.873
  %and66.i.i.877 = ashr i64 %sub62177.i.i.876, 63
  %or.i.i.878 = or i64 %and66.i.i.877, %sub58.i.i.872
  %conv68.i.i.879 = zext i64 %or.i.i.878 to i128
  %sub70.i.i.880 = sub i128 %add50.i.i.867, %conv68.i.i.879
  %and71.i.i.881 = and i64 %or.i.i.878, 4294967295
  %conv72.i.i.882 = zext i64 %and71.i.i.881 to i128
  %sub74.i.i.883 = sub i128 %sub54.i.i.869, %conv72.i.i.882
  %and75.i.i.884 = and i64 %or.i.i.878, -4294967295
  %conv76.i.i.885 = zext i64 %and75.i.i.884 to i128
  %sub78.i.i.886 = sub nsw i128 %add47.i.i.865, %conv76.i.i.885
  %shr80.i.i.887 = lshr i128 %sub70.i.i.880, 64
  %add84.i.i.888 = add i128 %sub74.i.i.883, %shr80.i.i.887
  %shr90.i.i.890 = lshr i128 %add84.i.i.888, 64
  %add94.i.i.891 = add nuw nsw i128 %add13.i.i.849, %shr90.i.i.890
  %shr100.i.i.893 = lshr i128 %add94.i.i.891, 64
  %add104.i.i.894 = add nsw i128 %sub78.i.i.886, %shr100.i.i.893
  %conv.i.900 = and i128 %sub70.i.i.880, 18446744073709551615
  %mul.i.901 = mul nuw i128 %conv.i.900, %conv.i.900
  %shr.i.902 = lshr i128 %mul.i.901, 64
  %conv5.i.903 = and i128 %mul.i.901, 18446744073709551615
  store i128 %conv5.i.903, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.906 = and i128 %add84.i.i.888, 18446744073709551615
  %mul13.i.907 = mul nuw i128 %conv12.i.906, %conv.i.900
  %shr15.i.908 = lshr i128 %mul13.i.907, 64
  %conv17.i.909 = shl i128 %mul13.i.907, 1
  %factor.i.910 = and i128 %conv17.i.909, 36893488147419103230
  %add21.i.911 = add nuw nsw i128 %factor.i.910, %shr.i.902
  store i128 %add21.i.911, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %conv27.i.914 = and i128 %add94.i.i.891, 18446744073709551615
  %mul28.i.915 = mul nuw i128 %conv27.i.914, %conv.i.900
  %shr30.i.916 = lshr i128 %mul28.i.915, 64
  %conv32.i.917 = and i128 %mul28.i.915, 18446744073709551615
  %add34.i.918 = add nuw nsw i128 %conv32.i.917, %shr15.i.908
  %mul36.i.919 = shl nuw nsw i128 %add34.i.918, 1
  %conv42.i.922 = and i128 %add104.i.i.894, 18446744073709551615
  %mul43.i.923 = mul nuw i128 %conv42.i.922, %conv.i.900
  %shr45.i.924 = lshr i128 %mul43.i.923, 64
  %conv47.i.925 = and i128 %mul43.i.923, 18446744073709551615
  %mul56.i.928 = mul nuw i128 %conv27.i.914, %conv12.i.906
  %shr58.i.929 = lshr i128 %mul56.i.928, 64
  %conv60.i.930 = and i128 %mul56.i.928, 18446744073709551615
  %add49.i.926 = add nuw nsw i128 %conv60.i.930, %shr30.i.916
  %add62.i.931 = add nuw nsw i128 %add49.i.926, %conv47.i.925
  %mul64.i.932 = shl nuw nsw i128 %add62.i.931, 1
  %add67.i.933 = add nuw nsw i128 %shr45.i.924, %shr58.i.929
  %mul72.i.934 = mul nuw i128 %conv12.i.906, %conv12.i.906
  %shr74.i.935 = lshr i128 %mul72.i.934, 64
  %conv76.i.936 = and i128 %mul72.i.934, 18446744073709551615
  %add78.i.937 = add nuw nsw i128 %mul36.i.919, %conv76.i.936
  store i128 %add78.i.937, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add81.i.938 = add nuw nsw i128 %mul64.i.932, %shr74.i.935
  store i128 %add81.i.938, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul86.i.939 = mul nuw i128 %conv42.i.922, %conv12.i.906
  %shr88.i.940 = lshr i128 %mul86.i.939, 64
  %conv90.i.941 = and i128 %mul86.i.939, 18446744073709551615
  %add92.i.942 = add nuw nsw i128 %add67.i.933, %conv90.i.941
  %mul94.i.943 = shl nuw nsw i128 %add92.i.942, 1
  %mul101.i.945 = mul nuw i128 %conv42.i.922, %conv27.i.914
  %shr103.i.946 = lshr i128 %mul101.i.945, 64
  %conv105.i.947 = and i128 %mul101.i.945, 18446744073709551615
  %add107.i.948 = add nuw nsw i128 %conv105.i.947, %shr88.i.940
  %mul109.i.949 = shl nuw nsw i128 %add107.i.948, 1
  %add114.i.951 = shl nuw nsw i128 %shr103.i.946, 1
  %mul119.i.952 = mul nuw i128 %conv27.i.914, %conv27.i.914
  %shr121.i.953 = lshr i128 %mul119.i.952, 64
  %conv123.i.954 = and i128 %mul119.i.952, 18446744073709551615
  %add125.i.955 = add nuw nsw i128 %mul94.i.943, %conv123.i.954
  store i128 %add125.i.955, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %add128.i.956 = add nuw nsw i128 %mul109.i.949, %shr121.i.953
  store i128 %add128.i.956, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %mul133.i.957 = mul nuw i128 %conv42.i.922, %conv42.i.922
  %shr135.i.958 = lshr i128 %mul133.i.957, 64
  %conv137.i.959 = and i128 %mul133.i.957, 18446744073709551615
  %add139.i.960 = add nuw nsw i128 %add114.i.951, %conv137.i.959
  store i128 %add139.i.960, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  store i128 %shr135.i.958, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %add.i.799 = add nuw nsw i128 %conv5.i.903, 1267650600228229401427983728624
  %add3.i.801 = or i128 %add21.i.911, 1267650600228229401496703205376
  %add6.i.804 = add nuw nsw i128 %add78.i.937, 1267650600228229401427983728656
  %add9.i.807 = add nuw nsw i128 %add81.i.938, 1267650600228229401427983728656
  %shl.i.i.811 = shl nuw nsw i128 %add128.i.956, 32
  %add.i.i.812 = add nuw nsw i128 %shl.i.i.811, %add125.i.955
  %sub7.i.i.816 = sub nsw i128 %add128.i.956, %shr135.i.958
  %shl13.i.i.819 = shl nuw nsw i128 %add125.i.955, 32
  %shl28.i.i.827 = shl nuw nsw i128 %add139.i.960, 32
  %shl32.i.i.829 = shl nuw nsw i128 %add139.i.960, 33
  %add9.i.i.817 = sub nsw i128 %add3.i.801, %shl13.i.i.819
  %sub15.i.i.820 = add i128 %add9.i.i.817, %shl32.i.i.829
  %add34.i.i.830 = add i128 %sub15.i.i.820, %sub7.i.i.816
  %mul.i.i.831 = shl nuw nsw i128 %add139.i.960, 1
  %shl46.i.i.836 = shl nuw nsw i128 %shr135.i.958, 32
  %add3.i.i.813 = sub nsw i128 %add.i.799, %add139.i.960
  %sub26.i.i.826 = add nsw i128 %add3.i.i.813, %add.i.i.812
  %sub30.i.i.828 = sub i128 %sub26.i.i.826, %shl28.i.i.827
  %sub44.i.i.835 = sub i128 %sub30.i.i.828, %shr135.i.958
  %sub48.i.i.837 = sub i128 %sub44.i.i.835, %shl46.i.i.836
  %shl50.i.i.838 = shl nuw nsw i128 %shr135.i.958, 33
  %sub11.i.i.818 = sub nsw i128 %add6.i.804, %shl.i.i.811
  %sub23.i.i.824 = add nsw i128 %sub11.i.i.818, %mul.i.i.831
  %add37.i.i.832 = sub i128 %sub23.i.i.824, %sub7.i.i.816
  %add52.i.i.839 = add i128 %add37.i.i.832, %shl50.i.i.838
  %mul54.i.i.840 = mul nuw nsw i128 %shr135.i.958, 3
  %sub.i.i.814 = add nuw nsw i128 %add9.i.807, %shl13.i.i.819
  %add19.i.i.822 = sub i128 %sub.i.i.814, %add.i.i.812
  %sub41.i.i.834 = sub i128 %add19.i.i.822, %shl28.i.i.827
  %add56.i.i.841 = add i128 %sub41.i.i.834, %mul54.i.i.840
  %add.i.743 = add i128 %add56.i.i.841, 18446744069414584320
  %shr.i.745 = lshr i128 %add52.i.i.839, 64
  %add8.i.746 = add i128 %add.i.743, %shr.i.745
  %conv12.i.747 = and i128 %add52.i.i.839, 18446744073709551615
  %add13.i.748 = add nuw nsw i128 %conv12.i.747, 18446673704965373952
  %add16.i.749 = add i128 %sub48.i.i.837, 18446744073709551615
  %add19.i.751 = add i128 %add34.i.i.830, 1298074214633706907132628377272319
  %shr22.i.752 = lshr i128 %add8.i.746, 64
  %conv23.i.753 = trunc i128 %shr22.i.752 to i64
  %conv26.i.754 = and i128 %add8.i.746, 18446744073709551615
  %sub.i.755 = sub nsw i128 %conv26.i.754, %shr22.i.752
  %shl.i.756 = shl nuw nsw i128 %shr22.i.752, 32
  %add32.i.757 = add nsw i128 %sub.i.755, %shl.i.756
  %shr34.i.758 = lshr i128 %add32.i.757, 64
  %conv35.i.759 = trunc i128 %shr34.i.758 to i64
  %add36.i.760 = add i64 %conv35.i.759, %conv23.i.753
  %conv39.i.761 = and i128 %add32.i.757, 18446744073709551615
  %sub43.i.762 = sub nsw i128 %conv39.i.761, %shr34.i.758
  %shl45.i.763 = shl nuw nsw i128 %shr34.i.758, 32
  %add47.i.764 = add nsw i128 %sub43.i.762, %shl45.i.763
  %conv48.i.765 = zext i64 %add36.i.760 to i128
  %add50.i.766 = add i128 %add16.i.749, %conv48.i.765
  %shl52.i.767 = shl nuw nsw i128 %conv48.i.765, 32
  %sub54.i.768 = sub i128 %add19.i.751, %shl52.i.767
  %shr56.i.769 = lshr i128 %add47.i.764, 64
  %conv57.i.770 = trunc i128 %shr56.i.769 to i64
  %sub58.i.771 = sub i64 0, %conv57.i.770
  %conv60.i.772 = trunc i128 %add47.i.764 to i64
  %and.i.773 = and i64 %conv60.i.772, 9223372036854775807
  %neg.i.774 = sub nsw i64 9223372032559808512, %and.i.773
  %sub62177.i.775 = and i64 %neg.i.774, %conv60.i.772
  %and66.i.776 = ashr i64 %sub62177.i.775, 63
  %or.i.777 = or i64 %and66.i.776, %sub58.i.771
  %conv68.i.778 = zext i64 %or.i.777 to i128
  %sub70.i.779 = sub i128 %add50.i.766, %conv68.i.778
  %and71.i.780 = and i64 %or.i.777, 4294967295
  %conv72.i.781 = zext i64 %and71.i.780 to i128
  %sub74.i.782 = sub i128 %sub54.i.768, %conv72.i.781
  %and75.i.783 = and i64 %or.i.777, -4294967295
  %conv76.i.784 = zext i64 %and75.i.783 to i128
  %sub78.i.785 = sub nsw i128 %add47.i.764, %conv76.i.784
  %shr80.i.786 = lshr i128 %sub70.i.779, 64
  %add84.i.787 = add i128 %sub74.i.782, %shr80.i.786
  %shr90.i.789 = lshr i128 %add84.i.787, 64
  %add94.i.790 = add nuw nsw i128 %add13.i.748, %shr90.i.789
  %shr100.i.792 = lshr i128 %add94.i.790, 64
  %add104.i.793 = add nsw i128 %sub78.i.785, %shr100.i.792
  %15 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %add.i.i.593 = add i128 %15, 18446744069414584320
  %16 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %shr.i.i.595 = lshr i128 %16, 64
  %add8.i.i.596 = add i128 %add.i.i.593, %shr.i.i.595
  %conv12.i.i.597 = and i128 %16, 18446744073709551615
  %add13.i.i.598 = add nuw nsw i128 %conv12.i.i.597, 18446673704965373952
  %17 = load i128, i128* %x_in, align 16, !tbaa !2
  %add16.i.i.599 = add i128 %17, 18446744073709551615
  %18 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add19.i.i.601 = add i128 %18, 1298074214633706907132628377272319
  %shr22.i.i.602 = lshr i128 %add8.i.i.596, 64
  %conv23.i.i.603 = trunc i128 %shr22.i.i.602 to i64
  %conv26.i.i.604 = and i128 %add8.i.i.596, 18446744073709551615
  %sub.i.i.605 = sub nsw i128 %conv26.i.i.604, %shr22.i.i.602
  %shl.i.i.606 = shl nuw nsw i128 %shr22.i.i.602, 32
  %add32.i.i.607 = add nsw i128 %sub.i.i.605, %shl.i.i.606
  %shr34.i.i.608 = lshr i128 %add32.i.i.607, 64
  %conv35.i.i.609 = trunc i128 %shr34.i.i.608 to i64
  %add36.i.i.610 = add i64 %conv35.i.i.609, %conv23.i.i.603
  %conv39.i.i.611 = and i128 %add32.i.i.607, 18446744073709551615
  %sub43.i.i.612 = sub nsw i128 %conv39.i.i.611, %shr34.i.i.608
  %shl45.i.i.613 = shl nuw nsw i128 %shr34.i.i.608, 32
  %add47.i.i.614 = add nsw i128 %sub43.i.i.612, %shl45.i.i.613
  %conv48.i.i.615 = zext i64 %add36.i.i.610 to i128
  %add50.i.i.616 = add i128 %add16.i.i.599, %conv48.i.i.615
  %shl52.i.i.617 = shl nuw nsw i128 %conv48.i.i.615, 32
  %sub54.i.i.618 = sub i128 %add19.i.i.601, %shl52.i.i.617
  %shr56.i.i.619 = lshr i128 %add47.i.i.614, 64
  %conv57.i.i.620 = trunc i128 %shr56.i.i.619 to i64
  %sub58.i.i.621 = sub i64 0, %conv57.i.i.620
  %conv60.i.i.622 = trunc i128 %add47.i.i.614 to i64
  %and.i.i.623 = and i64 %conv60.i.i.622, 9223372036854775807
  %neg.i.i.624 = sub nsw i64 9223372032559808512, %and.i.i.623
  %sub62177.i.i.625 = and i64 %neg.i.i.624, %conv60.i.i.622
  %and66.i.i.626 = ashr i64 %sub62177.i.i.625, 63
  %or.i.i.627 = or i64 %and66.i.i.626, %sub58.i.i.621
  %conv68.i.i.628 = zext i64 %or.i.i.627 to i128
  %sub70.i.i.629 = sub i128 %add50.i.i.616, %conv68.i.i.628
  %and71.i.i.630 = and i64 %or.i.i.627, 4294967295
  %conv72.i.i.631 = zext i64 %and71.i.i.630 to i128
  %sub74.i.i.632 = sub i128 %sub54.i.i.618, %conv72.i.i.631
  %and75.i.i.633 = and i64 %or.i.i.627, -4294967295
  %conv76.i.i.634 = zext i64 %and75.i.i.633 to i128
  %sub78.i.i.635 = sub nsw i128 %add47.i.i.614, %conv76.i.i.634
  %shr80.i.i.636 = lshr i128 %sub70.i.i.629, 64
  %add84.i.i.637 = add i128 %sub74.i.i.632, %shr80.i.i.636
  %shr90.i.i.639 = lshr i128 %add84.i.i.637, 64
  %add94.i.i.640 = add nuw nsw i128 %add13.i.i.598, %shr90.i.i.639
  %shr100.i.i.642 = lshr i128 %add94.i.i.640, 64
  %add104.i.i.643 = add nsw i128 %sub78.i.i.635, %shr100.i.i.642
  %conv.i.649 = and i128 %sub70.i.779, 18446744073709551615
  %conv2.i.650 = and i128 %sub70.i.i.629, 18446744073709551615
  %mul.i.651 = mul nuw i128 %conv.i.649, %conv2.i.650
  %shr.i.652 = lshr i128 %mul.i.651, 64
  %conv5.i.653 = and i128 %mul.i.651, 18446744073709551615
  store i128 %conv5.i.653, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.656 = and i128 %add84.i.i.637, 18446744073709551615
  %mul13.i.657 = mul nuw i128 %conv.i.649, %conv12.i.656
  %shr15.i.658 = lshr i128 %mul13.i.657, 64
  %conv17.i.659 = and i128 %mul13.i.657, 18446744073709551615
  %add.i.660 = add nuw nsw i128 %conv17.i.659, %shr.i.652
  %conv22.i.663 = and i128 %add84.i.787, 18446744073709551615
  %mul25.i.664 = mul nuw i128 %conv22.i.663, %conv2.i.650
  %shr27.i.665 = lshr i128 %mul25.i.664, 64
  %conv29.i.666 = and i128 %mul25.i.664, 18446744073709551615
  %add31.i.667 = add nuw nsw i128 %add.i.660, %conv29.i.666
  store i128 %add31.i.667, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %conv38.i.670 = and i128 %add94.i.i.640, 18446744073709551615
  %mul39.i.671 = mul nuw i128 %conv.i.649, %conv38.i.670
  %shr41.i.672 = lshr i128 %mul39.i.671, 64
  %conv43.i.673 = and i128 %mul39.i.671, 18446744073709551615
  %mul52.i.676 = mul nuw i128 %conv22.i.663, %conv12.i.656
  %shr54.i.677 = lshr i128 %mul52.i.676, 64
  %conv56.i.678 = and i128 %mul52.i.676, 18446744073709551615
  %conv63.i.682 = and i128 %add94.i.790, 18446744073709551615
  %mul66.i.683 = mul nuw i128 %conv63.i.682, %conv2.i.650
  %shr68.i.684 = lshr i128 %mul66.i.683, 64
  %conv70.i.685 = and i128 %mul66.i.683, 18446744073709551615
  %add34.i.668 = add nuw nsw i128 %conv43.i.673, %shr15.i.658
  %add45.i.674 = add nuw nsw i128 %add34.i.668, %shr27.i.665
  %add58.i.679 = add nuw nsw i128 %add45.i.674, %conv56.i.678
  %add72.i.686 = add nuw nsw i128 %add58.i.679, %conv70.i.685
  store i128 %add72.i.686, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %conv79.i.689 = and i128 %add104.i.i.643, 18446744073709551615
  %mul80.i.690 = mul nuw i128 %conv.i.649, %conv79.i.689
  %shr82.i.691 = lshr i128 %mul80.i.690, 64
  %conv84.i.692 = and i128 %mul80.i.690, 18446744073709551615
  %mul93.i.695 = mul nuw i128 %conv22.i.663, %conv38.i.670
  %shr95.i.696 = lshr i128 %mul93.i.695, 64
  %conv97.i.697 = and i128 %mul93.i.695, 18446744073709551615
  %add102.i.699 = add nuw nsw i128 %shr95.i.696, %shr82.i.691
  %mul107.i.700 = mul nuw i128 %conv63.i.682, %conv12.i.656
  %shr109.i.701 = lshr i128 %mul107.i.700, 64
  %conv111.i.702 = and i128 %mul107.i.700, 18446744073709551615
  %conv118.i.706 = and i128 %add104.i.793, 18446744073709551615
  %mul121.i.707 = mul nuw i128 %conv118.i.706, %conv2.i.650
  %shr123.i.708 = lshr i128 %mul121.i.707, 64
  %conv125.i.709 = and i128 %mul121.i.707, 18446744073709551615
  %add61.i.680 = add nuw nsw i128 %conv84.i.692, %shr41.i.672
  %add75.i.687 = add nuw nsw i128 %add61.i.680, %shr54.i.677
  %add86.i.693 = add nuw nsw i128 %add75.i.687, %conv97.i.697
  %add99.i.698 = add nuw nsw i128 %add86.i.693, %shr68.i.684
  %add113.i.703 = add nuw nsw i128 %add99.i.698, %conv111.i.702
  %add127.i.710 = add nuw nsw i128 %add113.i.703, %conv125.i.709
  store i128 %add127.i.710, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul135.i.712 = mul nuw i128 %conv22.i.663, %conv79.i.689
  %shr137.i.713 = lshr i128 %mul135.i.712, 64
  %conv139.i.714 = and i128 %mul135.i.712, 18446744073709551615
  %mul148.i.717 = mul nuw i128 %conv63.i.682, %conv38.i.670
  %shr150.i.718 = lshr i128 %mul148.i.717, 64
  %conv152.i.719 = and i128 %mul148.i.717, 18446744073709551615
  %add157.i.721 = add nuw nsw i128 %shr150.i.718, %shr137.i.713
  %mul162.i.722 = mul nuw i128 %conv118.i.706, %conv12.i.656
  %shr164.i.723 = lshr i128 %mul162.i.722, 64
  %conv166.i.724 = and i128 %mul162.i.722, 18446744073709551615
  %add116.i.704 = add nuw nsw i128 %add102.i.699, %conv139.i.714
  %add130.i.711 = add nuw nsw i128 %add116.i.704, %shr109.i.701
  %add141.i.715 = add nuw nsw i128 %add130.i.711, %conv152.i.719
  %add154.i.720 = add nuw nsw i128 %add141.i.715, %shr123.i.708
  %add168.i.725 = add nuw nsw i128 %add154.i.720, %conv166.i.724
  store i128 %add168.i.725, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %mul176.i.727 = mul nuw i128 %conv63.i.682, %conv79.i.689
  %shr178.i.728 = lshr i128 %mul176.i.727, 64
  %conv180.i.729 = and i128 %mul176.i.727, 18446744073709551615
  %mul189.i.732 = mul nuw i128 %conv118.i.706, %conv38.i.670
  %shr191.i.733 = lshr i128 %mul189.i.732, 64
  %conv193.i.734 = and i128 %mul189.i.732, 18446744073709551615
  %add171.i.726 = add nuw nsw i128 %add157.i.721, %conv180.i.729
  %add182.i.730 = add nuw nsw i128 %add171.i.726, %shr164.i.723
  %add195.i.735 = add nuw nsw i128 %add182.i.730, %conv193.i.734
  store i128 %add195.i.735, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %add198.i.736 = add nuw nsw i128 %shr191.i.733, %shr178.i.728
  %mul203.i.737 = mul nuw i128 %conv118.i.706, %conv79.i.689
  %shr205.i.738 = lshr i128 %mul203.i.737, 64
  %conv207.i.739 = and i128 %mul203.i.737, 18446744073709551615
  %add209.i.740 = add nuw nsw i128 %add198.i.736, %conv207.i.739
  store i128 %add209.i.740, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  store i128 %shr205.i.738, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %add.i.547 = add nuw nsw i128 %conv5.i.653, 1267650600228229401427983728624
  %add3.i.549 = or i128 %add31.i.667, 1267650600228229401496703205376
  %add6.i.552 = add nuw nsw i128 %add72.i.686, 1267650600228229401427983728656
  %add9.i.555 = add i128 %add127.i.710, 1267650600228229401427983728656
  %shl.i.i.559 = shl nuw nsw i128 %add195.i.735, 32
  %add.i.i.560 = add i128 %shl.i.i.559, %add168.i.725
  %sub7.i.i.564 = sub nsw i128 %add195.i.735, %shr205.i.738
  %shl13.i.i.567 = shl i128 %add168.i.725, 32
  %shl28.i.i.575 = shl nuw nsw i128 %add209.i.740, 32
  %shl32.i.i.577 = shl nuw nsw i128 %add209.i.740, 33
  %add9.i.i.565 = sub i128 %add3.i.549, %shl13.i.i.567
  %sub15.i.i.568 = add i128 %add9.i.i.565, %shl32.i.i.577
  %add34.i.i.578 = add i128 %sub15.i.i.568, %sub7.i.i.564
  %mul.i.i.579 = shl nuw nsw i128 %add209.i.740, 1
  %shl46.i.i.584 = shl nuw nsw i128 %shr205.i.738, 32
  %add3.i.i.561 = sub nsw i128 %add.i.547, %add209.i.740
  %sub26.i.i.574 = add i128 %add3.i.i.561, %add.i.i.560
  %sub30.i.i.576 = sub i128 %sub26.i.i.574, %shl28.i.i.575
  %sub44.i.i.583 = sub i128 %sub30.i.i.576, %shr205.i.738
  %sub48.i.i.585 = sub i128 %sub44.i.i.583, %shl46.i.i.584
  %shl50.i.i.586 = shl nuw nsw i128 %shr205.i.738, 33
  %sub11.i.i.566 = sub nsw i128 %add6.i.552, %shl.i.i.559
  %sub23.i.i.572 = add i128 %sub11.i.i.566, %mul.i.i.579
  %add37.i.i.580 = sub i128 %sub23.i.i.572, %sub7.i.i.564
  %add52.i.i.587 = add i128 %add37.i.i.580, %shl50.i.i.586
  %mul54.i.i.588 = mul nuw nsw i128 %shr205.i.738, 3
  %sub.i.i.562 = add i128 %add9.i.555, %shl13.i.i.567
  %add19.i.i.570 = sub i128 %sub.i.i.562, %add.i.i.560
  %sub41.i.i.582 = sub i128 %add19.i.i.570, %shl28.i.i.575
  %add56.i.i.589 = add i128 %sub41.i.i.582, %mul54.i.i.588
  %19 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.533 = add i128 %19, 40564819207303340845695479315968
  %20 = load i128, i128* %arrayidx3.i, align 16, !tbaa !2
  %add2.i.535 = add i128 %20, 40564819207303340847894502572032
  %21 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add4.i.537 = add i128 %21, 40564819207303340845695479316992
  %22 = load i128, i128* %arrayidx7.i, align 16, !tbaa !2
  %add6.i.539 = add i128 %22, 40564819207303340845695479316992
  %sub.i.540 = sub i128 %add.i.533, %sub48.i.i.1000
  store i128 %sub.i.540, i128* %arraydecay, align 16, !tbaa !2
  %sub11.i.542 = sub i128 %add2.i.535, %add34.i.i.993
  store i128 %sub11.i.542, i128* %arrayidx3.i, align 16, !tbaa !2
  %sub14.i.544 = sub i128 %add4.i.537, %add52.i.i.1002
  store i128 %sub14.i.544, i128* %arrayidx5.i, align 16, !tbaa !2
  %sub17.i.546 = sub i128 %add6.i.539, %add56.i.i.1004
  store i128 %sub17.i.546, i128* %arrayidx7.i, align 16, !tbaa !2
  %23 = load i128, i128* %arraydecay11, align 16, !tbaa !2
  %add.i.523 = add i128 %23, %sub48.i.i.1000
  %24 = load i128, i128* %arrayidx3.i.511, align 16, !tbaa !2
  %add4.i.526 = add i128 %24, %add34.i.i.993
  %25 = load i128, i128* %arrayidx5.i.513, align 16, !tbaa !2
  %add7.i.529 = add i128 %25, %add52.i.i.1002
  %26 = load i128, i128* %arrayidx7.i.515, align 16, !tbaa !2
  %add10.i.532 = add i128 %26, %add56.i.i.1004
  %mul.i.516 = mul i128 %add.i.523, 3
  store i128 %mul.i.516, i128* %arraydecay11, align 16, !tbaa !2
  %mul3.i.518 = mul i128 %add4.i.526, 3
  store i128 %mul3.i.518, i128* %arrayidx3.i.511, align 16, !tbaa !2
  %mul6.i.520 = mul i128 %add7.i.529, 3
  store i128 %mul6.i.520, i128* %arrayidx5.i.513, align 16, !tbaa !2
  %mul9.i.522 = mul i128 %add10.i.532, 3
  store i128 %mul9.i.522, i128* %arrayidx7.i.515, align 16, !tbaa !2
  call void @felem_mul(i128* %arraydecay12, i128* %arraydecay, i128* %arraydecay11)
  %27 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %28 = load i128, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %29 = load i128, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add6.i.472 = add i128 %29, 1267650600228229401427983728656
  %30 = load i128, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %31 = load i128, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %32 = load i128, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %shl.i.i.479 = shl i128 %32, 32
  %add.i.i.480 = add i128 %shl.i.i.479, %31
  %33 = load i128, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %sub7.i.i.484 = sub i128 %32, %33
  %shl13.i.i.487 = shl i128 %31, 32
  %34 = load i128, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  %shl28.i.i.495 = shl i128 %34, 32
  %shl32.i.i.497 = shl i128 %34, 33
  %mul.i.i.499 = shl i128 %34, 1
  %shl46.i.i.504 = shl i128 %33, 32
  %shl50.i.i.506 = shl i128 %33, 33
  %sub11.i.i.486 = sub i128 %add6.i.472, %shl.i.i.479
  %sub23.i.i.492 = sub i128 %sub11.i.i.486, %sub7.i.i.484
  %add37.i.i.500 = add i128 %sub23.i.i.492, %shl50.i.i.506
  %add52.i.i.507 = add i128 %add37.i.i.500, %mul.i.i.499
  %mul54.i.i.508 = mul i128 %33, 3
  %shr.i.460 = lshr i128 %add52.i.i.507, 64
  %sub.i.i.482 = add i128 %30, 1267650600246676145497398312976
  %add19.i.i.490 = add i128 %sub.i.i.482, %shl13.i.i.487
  %sub41.i.i.502 = sub i128 %add19.i.i.490, %add.i.i.480
  %add56.i.i.509 = add i128 %sub41.i.i.502, %mul54.i.i.508
  %add.i.458 = sub i128 %add56.i.i.509, %shl28.i.i.495
  %add8.i.461 = add i128 %add.i.458, %shr.i.460
  %conv12.i.462 = and i128 %add52.i.i.507, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i.462, 18446673704965373952
  %shr22.i = lshr i128 %add8.i.461, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i.461, 18446744073709551615
  %sub.i.463 = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i.463, %shl.i
  %shr34.i = lshr i128 %add32.i, 64
  %conv35.i = trunc i128 %shr34.i to i64
  %add36.i = add i64 %conv35.i, %conv23.i
  %conv39.i = and i128 %add32.i, 18446744073709551615
  %sub43.i = sub nsw i128 %conv39.i, %shr34.i
  %shl45.i = shl nuw nsw i128 %shr34.i, 32
  %add47.i = add nsw i128 %sub43.i, %shl45.i
  %conv48.i = zext i64 %add36.i to i128
  %shl52.i = shl nuw nsw i128 %conv48.i, 32
  %shr56.i = lshr i128 %add47.i, 64
  %conv57.i = trunc i128 %shr56.i to i64
  %sub58.i = sub i64 0, %conv57.i
  %conv60.i.464 = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i.464, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i.464
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %add3.i.i.481 = add i128 %27, 1267650600246676145501693280239
  %sub26.i.i.494 = sub i128 %add3.i.i.481, %33
  %sub30.i.i.496 = add i128 %sub26.i.i.494, %add.i.i.480
  %sub44.i.i.503 = sub i128 %sub30.i.i.496, %34
  %sub48.i.i.505 = sub i128 %sub44.i.i.503, %shl46.i.i.504
  %add16.i = sub i128 %sub48.i.i.505, %shl28.i.i.495
  %add50.i = add i128 %add16.i, %conv48.i
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i.465 = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i.465
  %shr80.i = lshr i128 %sub70.i, 64
  %add9.i.i.485 = add i128 %28, 1299341865233935136534125080477695
  %sub15.i.i.488 = sub i128 %add9.i.i.485, %shl13.i.i.487
  %add34.i.i.498 = add i128 %sub15.i.i.488, %sub7.i.i.484
  %add19.i = add i128 %add34.i.i.498, %shl32.i.i.497
  %sub54.i = sub i128 %add19.i, %shl52.i
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %add84.i = add i128 %sub74.i, %shr80.i
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i.396 = and i128 %sub70.i, 18446744073709551615
  %mul.i.397 = mul nuw i128 %conv.i.396, %conv.i.396
  %shr.i.398 = lshr i128 %mul.i.397, 64
  %conv5.i.399 = and i128 %mul.i.397, 18446744073709551615
  store i128 %conv5.i.399, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.402 = and i128 %add84.i, 18446744073709551615
  %mul13.i.403 = mul nuw i128 %conv12.i.402, %conv.i.396
  %shr15.i.404 = lshr i128 %mul13.i.403, 64
  %conv17.i.405 = shl i128 %mul13.i.403, 1
  %factor.i.406 = and i128 %conv17.i.405, 36893488147419103230
  %add21.i.407 = add nuw nsw i128 %factor.i.406, %shr.i.398
  store i128 %add21.i.407, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %conv27.i.410 = and i128 %add94.i, 18446744073709551615
  %mul28.i.411 = mul nuw i128 %conv27.i.410, %conv.i.396
  %shr30.i.412 = lshr i128 %mul28.i.411, 64
  %conv32.i.413 = and i128 %mul28.i.411, 18446744073709551615
  %add34.i.414 = add nuw nsw i128 %conv32.i.413, %shr15.i.404
  %mul36.i.415 = shl nuw nsw i128 %add34.i.414, 1
  %conv42.i.418 = and i128 %add104.i, 18446744073709551615
  %mul43.i.419 = mul nuw i128 %conv42.i.418, %conv.i.396
  %shr45.i.420 = lshr i128 %mul43.i.419, 64
  %conv47.i.421 = and i128 %mul43.i.419, 18446744073709551615
  %mul56.i.424 = mul nuw i128 %conv27.i.410, %conv12.i.402
  %shr58.i.425 = lshr i128 %mul56.i.424, 64
  %conv60.i.426 = and i128 %mul56.i.424, 18446744073709551615
  %add49.i.422 = add nuw nsw i128 %conv60.i.426, %shr30.i.412
  %add62.i.427 = add nuw nsw i128 %add49.i.422, %conv47.i.421
  %mul64.i.428 = shl nuw nsw i128 %add62.i.427, 1
  %add67.i.429 = add nuw nsw i128 %shr45.i.420, %shr58.i.425
  %mul72.i.430 = mul nuw i128 %conv12.i.402, %conv12.i.402
  %shr74.i.431 = lshr i128 %mul72.i.430, 64
  %conv76.i.432 = and i128 %mul72.i.430, 18446744073709551615
  %add78.i.433 = add nuw nsw i128 %mul36.i.415, %conv76.i.432
  store i128 %add78.i.433, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add81.i.434 = add nuw nsw i128 %mul64.i.428, %shr74.i.431
  store i128 %add81.i.434, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul86.i.435 = mul nuw i128 %conv42.i.418, %conv12.i.402
  %shr88.i.436 = lshr i128 %mul86.i.435, 64
  %conv90.i.437 = and i128 %mul86.i.435, 18446744073709551615
  %add92.i.438 = add nuw nsw i128 %add67.i.429, %conv90.i.437
  %mul94.i.439 = shl nuw nsw i128 %add92.i.438, 1
  %mul101.i.441 = mul nuw i128 %conv42.i.418, %conv27.i.410
  %shr103.i.442 = lshr i128 %mul101.i.441, 64
  %conv105.i.443 = and i128 %mul101.i.441, 18446744073709551615
  %add107.i.444 = add nuw nsw i128 %conv105.i.443, %shr88.i.436
  %mul109.i.445 = shl nuw nsw i128 %add107.i.444, 1
  %add114.i.447 = shl nuw nsw i128 %shr103.i.442, 1
  %mul119.i.448 = mul nuw i128 %conv27.i.410, %conv27.i.410
  %shr121.i.449 = lshr i128 %mul119.i.448, 64
  %conv123.i.450 = and i128 %mul119.i.448, 18446744073709551615
  %add125.i.451 = add nuw nsw i128 %mul94.i.439, %conv123.i.450
  store i128 %add125.i.451, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %add128.i.452 = add nuw nsw i128 %mul109.i.445, %shr121.i.449
  store i128 %add128.i.452, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %mul133.i.453 = mul nuw i128 %conv42.i.418, %conv42.i.418
  %shr135.i.454 = lshr i128 %mul133.i.453, 64
  %conv137.i.455 = and i128 %mul133.i.453, 18446744073709551615
  %add139.i.456 = add nuw nsw i128 %add114.i.447, %conv137.i.455
  store i128 %add139.i.456, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  store i128 %shr135.i.454, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %add.i.353 = add nuw nsw i128 %conv5.i.399, 1267650600228229401427983728624
  %add3.i.355 = or i128 %add21.i.407, 1267650600228229401496703205376
  %arrayidx4.i.356 = getelementptr inbounds i128, i128* %x_out, i64 1
  %add6.i.358 = add nuw nsw i128 %add78.i.433, 1267650600228229401427983728656
  %arrayidx7.i.359 = getelementptr inbounds i128, i128* %x_out, i64 2
  %add9.i.361 = add nuw nsw i128 %add81.i.434, 1267650600228229401427983728656
  %arrayidx10.i.362 = getelementptr inbounds i128, i128* %x_out, i64 3
  %shl.i.i.365 = shl nuw nsw i128 %add128.i.452, 32
  %add.i.i.366 = add nuw nsw i128 %shl.i.i.365, %add125.i.451
  %add3.i.i.367 = add nuw nsw i128 %add.i.i.366, %add.i.353
  %sub.i.i.368 = sub nsw i128 %add9.i.361, %add.i.i.366
  %sub7.i.i.370 = sub nsw i128 %add128.i.452, %shr135.i.454
  %add9.i.i.371 = add nsw i128 %sub7.i.i.370, %add3.i.355
  %sub11.i.i.372 = sub nsw i128 %add6.i.358, %sub7.i.i.370
  %shl13.i.i.373 = shl nuw nsw i128 %add125.i.451, 32
  %sub15.i.i.374 = sub nsw i128 %add9.i.i.371, %shl13.i.i.373
  %add19.i.i.376 = add i128 %shl13.i.i.373, %sub.i.i.368
  %sub23.i.i.378 = sub nsw i128 %sub11.i.i.372, %shl.i.i.365
  %sub26.i.i.380 = sub i128 %add3.i.i.367, %add139.i.456
  %shl28.i.i.381 = shl nuw nsw i128 %add139.i.456, 32
  %sub30.i.i.382 = sub i128 %sub26.i.i.380, %shl28.i.i.381
  %shl32.i.i.383 = shl nuw nsw i128 %add139.i.456, 33
  %add34.i.i.384 = add i128 %shl32.i.i.383, %sub15.i.i.374
  %mul.i.i.385 = shl nuw nsw i128 %add139.i.456, 1
  %add37.i.i.386 = add i128 %mul.i.i.385, %sub23.i.i.378
  %sub41.i.i.388 = sub i128 %add19.i.i.376, %shl28.i.i.381
  %sub44.i.i.389 = sub i128 %sub30.i.i.382, %shr135.i.454
  %shl46.i.i.390 = shl nuw nsw i128 %shr135.i.454, 32
  %sub48.i.i.391 = sub i128 %sub44.i.i.389, %shl46.i.i.390
  %shl50.i.i.392 = shl nuw nsw i128 %shr135.i.454, 33
  %add52.i.i.393 = add i128 %shl50.i.i.392, %add37.i.i.386
  %mul54.i.i.394 = mul nuw nsw i128 %shr135.i.454, 3
  %add56.i.i.395 = add i128 %mul54.i.i.394, %sub41.i.i.388
  %mul.i.340 = shl i128 %sub48.i.i.585, 3
  %mul3.i.342 = shl i128 %add34.i.i.578, 3
  %mul6.i.344 = shl i128 %add52.i.i.587, 3
  %mul9.i.346 = shl i128 %add56.i.i.589, 3
  %add.i.326 = add i128 %sub48.i.i.391, 40564819207303340845695479315968
  %add2.i.328 = add i128 %add34.i.i.384, 40564819207303340847894502572032
  %add4.i.330 = add i128 %add52.i.i.393, 40564819207303340845695479316992
  %add6.i.332 = add i128 %add56.i.i.395, 40564819207303340845695479316992
  %sub.i.333 = sub i128 %add.i.326, %mul.i.340
  store i128 %sub.i.333, i128* %x_out, align 16, !tbaa !2
  %sub11.i.335 = sub i128 %add2.i.328, %mul3.i.342
  store i128 %sub11.i.335, i128* %arrayidx4.i.356, align 16, !tbaa !2
  %sub14.i.337 = sub i128 %add4.i.330, %mul6.i.344
  store i128 %sub14.i.337, i128* %arrayidx7.i.359, align 16, !tbaa !2
  %sub17.i.339 = sub i128 %add6.i.332, %mul9.i.346
  store i128 %sub17.i.339, i128* %arrayidx10.i.362, align 16, !tbaa !2
  %35 = load i128, i128* %y_in, align 16, !tbaa !2
  %36 = load i128, i128* %arrayidx18.i.i.851, align 16, !tbaa !2
  %37 = load i128, i128* %arrayidx6.i.i.845, align 16, !tbaa !2
  %38 = load i128, i128* %arrayidx.i.i.843, align 16, !tbaa !2
  %39 = load i128, i128* %z_in, align 16, !tbaa !2
  %add.i.301 = add i128 %35, %39
  store i128 %add.i.301, i128* %arraydecay, align 16, !tbaa !2
  %40 = load i128, i128* %arrayidx18.i.i.1014, align 16, !tbaa !2
  %add4.i.304 = add i128 %36, %40
  store i128 %add4.i.304, i128* %arrayidx3.i, align 16, !tbaa !2
  %41 = load i128, i128* %arrayidx6.i.i.1008, align 16, !tbaa !2
  %add7.i = add i128 %37, %41
  store i128 %add7.i, i128* %arrayidx5.i, align 16, !tbaa !2
  %42 = load i128, i128* %arrayidx.i.i.1006, align 16, !tbaa !2
  %add10.i.309 = add i128 %38, %42
  store i128 %add10.i.309, i128* %arrayidx7.i, align 16, !tbaa !2
  %shr.i.i.185 = lshr i128 %add7.i, 64
  %add.i.i.183 = add nuw nsw i128 %shr.i.i.185, 18446744069414584320
  %add8.i.i.186 = add i128 %add.i.i.183, %add10.i.309
  %conv12.i.i.187 = and i128 %add7.i, 18446744073709551615
  %add13.i.i.188 = add nuw nsw i128 %conv12.i.i.187, 18446673704965373952
  %add16.i.i.189 = add i128 %add.i.301, 18446744073709551615
  %add19.i.i.191 = add i128 %add4.i.304, 1298074214633706907132628377272319
  %shr22.i.i.192 = lshr i128 %add8.i.i.186, 64
  %conv23.i.i.193 = trunc i128 %shr22.i.i.192 to i64
  %conv26.i.i.194 = and i128 %add8.i.i.186, 18446744073709551615
  %sub.i.i.195 = sub nsw i128 %conv26.i.i.194, %shr22.i.i.192
  %shl.i.i.196 = shl nuw nsw i128 %shr22.i.i.192, 32
  %add32.i.i.197 = add nsw i128 %sub.i.i.195, %shl.i.i.196
  %shr34.i.i.198 = lshr i128 %add32.i.i.197, 64
  %conv35.i.i.199 = trunc i128 %shr34.i.i.198 to i64
  %add36.i.i.200 = add i64 %conv35.i.i.199, %conv23.i.i.193
  %conv39.i.i.201 = and i128 %add32.i.i.197, 18446744073709551615
  %sub43.i.i.202 = sub nsw i128 %conv39.i.i.201, %shr34.i.i.198
  %shl45.i.i.203 = shl nuw nsw i128 %shr34.i.i.198, 32
  %add47.i.i.204 = add nsw i128 %sub43.i.i.202, %shl45.i.i.203
  %conv48.i.i.205 = zext i64 %add36.i.i.200 to i128
  %add50.i.i.206 = add i128 %add16.i.i.189, %conv48.i.i.205
  %shl52.i.i.207 = shl nuw nsw i128 %conv48.i.i.205, 32
  %sub54.i.i.208 = sub i128 %add19.i.i.191, %shl52.i.i.207
  %shr56.i.i.209 = lshr i128 %add47.i.i.204, 64
  %conv57.i.i.210 = trunc i128 %shr56.i.i.209 to i64
  %sub58.i.i.211 = sub i64 0, %conv57.i.i.210
  %conv60.i.i.212 = trunc i128 %add47.i.i.204 to i64
  %and.i.i.213 = and i64 %conv60.i.i.212, 9223372036854775807
  %neg.i.i.214 = sub nsw i64 9223372032559808512, %and.i.i.213
  %sub62177.i.i.215 = and i64 %neg.i.i.214, %conv60.i.i.212
  %and66.i.i.216 = ashr i64 %sub62177.i.i.215, 63
  %or.i.i.217 = or i64 %and66.i.i.216, %sub58.i.i.211
  %conv68.i.i.218 = zext i64 %or.i.i.217 to i128
  %sub70.i.i.219 = sub i128 %add50.i.i.206, %conv68.i.i.218
  %and71.i.i.220 = and i64 %or.i.i.217, 4294967295
  %conv72.i.i.221 = zext i64 %and71.i.i.220 to i128
  %sub74.i.i.222 = sub i128 %sub54.i.i.208, %conv72.i.i.221
  %and75.i.i.223 = and i64 %or.i.i.217, -4294967295
  %conv76.i.i.224 = zext i64 %and75.i.i.223 to i128
  %sub78.i.i.225 = sub nsw i128 %add47.i.i.204, %conv76.i.i.224
  %shr80.i.i.226 = lshr i128 %sub70.i.i.219, 64
  %add84.i.i.227 = add i128 %sub74.i.i.222, %shr80.i.i.226
  %shr90.i.i.229 = lshr i128 %add84.i.i.227, 64
  %add94.i.i.230 = add nuw nsw i128 %add13.i.i.188, %shr90.i.i.229
  %shr100.i.i.232 = lshr i128 %add94.i.i.230, 64
  %add104.i.i.233 = add nsw i128 %sub78.i.i.225, %shr100.i.i.232
  %conv.i.239 = and i128 %sub70.i.i.219, 18446744073709551615
  %mul.i.240 = mul nuw i128 %conv.i.239, %conv.i.239
  %shr.i.241 = lshr i128 %mul.i.240, 64
  %conv5.i.242 = and i128 %mul.i.240, 18446744073709551615
  store i128 %conv5.i.242, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.245 = and i128 %add84.i.i.227, 18446744073709551615
  %mul13.i.246 = mul nuw i128 %conv12.i.245, %conv.i.239
  %shr15.i.247 = lshr i128 %mul13.i.246, 64
  %conv17.i.248 = shl i128 %mul13.i.246, 1
  %factor.i.249 = and i128 %conv17.i.248, 36893488147419103230
  %add21.i.250 = add nuw nsw i128 %factor.i.249, %shr.i.241
  store i128 %add21.i.250, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %conv27.i.253 = and i128 %add94.i.i.230, 18446744073709551615
  %mul28.i.254 = mul nuw i128 %conv27.i.253, %conv.i.239
  %shr30.i.255 = lshr i128 %mul28.i.254, 64
  %conv32.i.256 = and i128 %mul28.i.254, 18446744073709551615
  %add34.i.257 = add nuw nsw i128 %conv32.i.256, %shr15.i.247
  %mul36.i.258 = shl nuw nsw i128 %add34.i.257, 1
  %conv42.i.261 = and i128 %add104.i.i.233, 18446744073709551615
  %mul43.i.262 = mul nuw i128 %conv42.i.261, %conv.i.239
  %shr45.i.263 = lshr i128 %mul43.i.262, 64
  %conv47.i.264 = and i128 %mul43.i.262, 18446744073709551615
  %mul56.i.267 = mul nuw i128 %conv27.i.253, %conv12.i.245
  %shr58.i.268 = lshr i128 %mul56.i.267, 64
  %conv60.i.269 = and i128 %mul56.i.267, 18446744073709551615
  %add49.i.265 = add nuw nsw i128 %conv60.i.269, %shr30.i.255
  %add62.i.270 = add nuw nsw i128 %add49.i.265, %conv47.i.264
  %mul64.i.271 = shl nuw nsw i128 %add62.i.270, 1
  %add67.i.272 = add nuw nsw i128 %shr45.i.263, %shr58.i.268
  %mul72.i.273 = mul nuw i128 %conv12.i.245, %conv12.i.245
  %shr74.i.274 = lshr i128 %mul72.i.273, 64
  %conv76.i.275 = and i128 %mul72.i.273, 18446744073709551615
  %add78.i.276 = add nuw nsw i128 %mul36.i.258, %conv76.i.275
  store i128 %add78.i.276, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add81.i.277 = add nuw nsw i128 %mul64.i.271, %shr74.i.274
  store i128 %add81.i.277, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul86.i.278 = mul nuw i128 %conv42.i.261, %conv12.i.245
  %shr88.i.279 = lshr i128 %mul86.i.278, 64
  %conv90.i.280 = and i128 %mul86.i.278, 18446744073709551615
  %add92.i.281 = add nuw nsw i128 %add67.i.272, %conv90.i.280
  %mul94.i.282 = shl nuw nsw i128 %add92.i.281, 1
  %mul101.i.284 = mul nuw i128 %conv42.i.261, %conv27.i.253
  %shr103.i.285 = lshr i128 %mul101.i.284, 64
  %conv105.i.286 = and i128 %mul101.i.284, 18446744073709551615
  %add107.i.287 = add nuw nsw i128 %conv105.i.286, %shr88.i.279
  %mul109.i.288 = shl nuw nsw i128 %add107.i.287, 1
  %add114.i.290 = shl nuw nsw i128 %shr103.i.285, 1
  %mul119.i.291 = mul nuw i128 %conv27.i.253, %conv27.i.253
  %shr121.i.292 = lshr i128 %mul119.i.291, 64
  %conv123.i.293 = and i128 %mul119.i.291, 18446744073709551615
  %add125.i.294 = add nuw nsw i128 %mul94.i.282, %conv123.i.293
  store i128 %add125.i.294, i128* %arrayidx51.i.1090, align 16, !tbaa !2
  %add128.i.295 = add nuw nsw i128 %mul109.i.288, %shr121.i.292
  store i128 %add128.i.295, i128* %arrayidx96.i.1107, align 16, !tbaa !2
  %mul133.i.296 = mul nuw i128 %conv42.i.261, %conv42.i.261
  %shr135.i.297 = lshr i128 %mul133.i.296, 64
  %conv137.i.298 = and i128 %mul133.i.296, 18446744073709551615
  %add139.i.299 = add nuw nsw i128 %add114.i.290, %conv137.i.298
  store i128 %add139.i.299, i128* %arrayidx111.i.1113, align 16, !tbaa !2
  store i128 %shr135.i.297, i128* %arrayidx141.i.1124, align 16, !tbaa !2
  %add.i.138 = add nuw nsw i128 %conv5.i.242, 1267650600228229401427983728624
  %add3.i.140 = or i128 %add21.i.250, 1267650600228229401496703205376
  %arrayidx4.i.141 = getelementptr inbounds i128, i128* %z_out, i64 1
  %add6.i.143 = add nuw nsw i128 %add78.i.276, 1267650600228229401427983728656
  %arrayidx7.i.144 = getelementptr inbounds i128, i128* %z_out, i64 2
  %add9.i.146 = add nuw nsw i128 %add81.i.277, 1267650600228229401427983728656
  %arrayidx10.i.147 = getelementptr inbounds i128, i128* %z_out, i64 3
  %shl.i.i.150 = shl nuw nsw i128 %add128.i.295, 32
  %add.i.i.151 = add nuw nsw i128 %shl.i.i.150, %add125.i.294
  %add3.i.i.152 = add nuw nsw i128 %add.i.i.151, %add.i.138
  %sub.i.i.153 = sub nsw i128 %add9.i.146, %add.i.i.151
  %sub7.i.i.155 = sub nsw i128 %add128.i.295, %shr135.i.297
  %add9.i.i.156 = add nsw i128 %sub7.i.i.155, %add3.i.140
  %sub11.i.i.157 = sub nsw i128 %add6.i.143, %sub7.i.i.155
  %shl13.i.i.158 = shl nuw nsw i128 %add125.i.294, 32
  %sub15.i.i.159 = sub nsw i128 %add9.i.i.156, %shl13.i.i.158
  %add19.i.i.161 = add i128 %shl13.i.i.158, %sub.i.i.153
  %sub23.i.i.163 = sub nsw i128 %sub11.i.i.157, %shl.i.i.150
  %sub26.i.i.165 = sub i128 %add3.i.i.152, %add139.i.299
  %shl28.i.i.166 = shl nuw nsw i128 %add139.i.299, 32
  %sub30.i.i.167 = sub i128 %sub26.i.i.165, %shl28.i.i.166
  %shl32.i.i.168 = shl nuw nsw i128 %add139.i.299, 33
  %add34.i.i.169 = add i128 %shl32.i.i.168, %sub15.i.i.159
  %mul.i.i.170 = shl nuw nsw i128 %add139.i.299, 1
  %add37.i.i.171 = add i128 %mul.i.i.170, %sub23.i.i.163
  %sub41.i.i.173 = sub i128 %add19.i.i.161, %shl28.i.i.166
  %sub44.i.i.174 = sub i128 %sub30.i.i.167, %shr135.i.297
  %shl46.i.i.175 = shl nuw nsw i128 %shr135.i.297, 32
  %sub48.i.i.176 = sub i128 %sub44.i.i.174, %shl46.i.i.175
  %shl50.i.i.177 = shl nuw nsw i128 %shr135.i.297, 33
  %add52.i.i.178 = add i128 %shl50.i.i.177, %add37.i.i.171
  %mul54.i.i.179 = mul nuw nsw i128 %shr135.i.297, 3
  %add56.i.i.180 = add i128 %mul54.i.i.179, %sub41.i.i.173
  %add.i.124 = add i128 %sub48.i.i.176, 40564819207303340845695479315968
  %add2.i.126 = add i128 %add34.i.i.169, 40564819207303340847894502572032
  %add4.i.128 = add i128 %add52.i.i.178, 40564819207303340845695479316992
  %add6.i.130 = add i128 %add56.i.i.180, 40564819207303340845695479316992
  %sum = add i128 %sub48.i.i.837, %sub48.i.i.1000
  %sub.i.131 = sub i128 %add.i.124, %sum
  store i128 %sub.i.131, i128* %z_out, align 16, !tbaa !2
  %sum1264 = add i128 %add34.i.i.830, %add34.i.i.993
  %sub11.i.133 = sub i128 %add2.i.126, %sum1264
  store i128 %sub11.i.133, i128* %arrayidx4.i.141, align 16, !tbaa !2
  %sum1265 = add i128 %add52.i.i.839, %add52.i.i.1002
  %sub14.i.135 = sub i128 %add4.i.128, %sum1265
  store i128 %sub14.i.135, i128* %arrayidx7.i.144, align 16, !tbaa !2
  %sum1266 = add i128 %add56.i.i.841, %add56.i.i.1004
  %sub17.i.137 = sub i128 %add6.i.130, %sum1266
  store i128 %sub17.i.137, i128* %arrayidx10.i.147, align 16, !tbaa !2
  %mul.i.117 = shl i128 %sub48.i.i.585, 2
  %mul3.i.119 = shl i128 %add34.i.i.578, 2
  %mul6.i.121 = shl i128 %add52.i.i.587, 2
  %mul9.i.123 = shl i128 %add56.i.i.589, 2
  %add4.i.112 = add i128 %mul6.i.121, 162259276829213363382781917267968
  %43 = load i128, i128* %x_out, align 16, !tbaa !2
  %44 = load i128, i128* %arrayidx4.i.356, align 16, !tbaa !2
  %45 = load i128, i128* %arrayidx7.i.359, align 16, !tbaa !2
  %sub14.i = sub i128 %add4.i.112, %45
  %46 = load i128, i128* %arrayidx10.i.362, align 16, !tbaa !2
  %shr.i.i = lshr i128 %sub14.i, 64
  %sub17.i = add i128 %mul9.i.123, 162259276829231810126851331852288
  %add.i.i.90 = sub i128 %sub17.i, %46
  %add8.i.i = add i128 %add.i.i.90, %shr.i.i
  %conv12.i.i = and i128 %sub14.i, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i.93 = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i.94 = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i.93, %shl.i.i.94
  %shr34.i.i = lshr i128 %add32.i.i, 64
  %conv35.i.i = trunc i128 %shr34.i.i to i64
  %add36.i.i = add i64 %conv35.i.i, %conv23.i.i
  %conv39.i.i = and i128 %add32.i.i, 18446744073709551615
  %sub43.i.i = sub nsw i128 %conv39.i.i, %shr34.i.i
  %shl45.i.i = shl nuw nsw i128 %shr34.i.i, 32
  %add47.i.i = add nsw i128 %sub43.i.i, %shl45.i.i
  %conv48.i.i = zext i64 %add36.i.i to i128
  %shl52.i.i = shl nuw nsw i128 %conv48.i.i, 32
  %shr56.i.i = lshr i128 %add47.i.i, 64
  %conv57.i.i = trunc i128 %shr56.i.i to i64
  %sub58.i.i = sub i64 0, %conv57.i.i
  %conv60.i.i = trunc i128 %add47.i.i to i64
  %and.i.i = and i64 %conv60.i.i, 9223372036854775807
  %neg.i.i = sub nsw i64 9223372032559808512, %and.i.i
  %sub62177.i.i = and i64 %neg.i.i, %conv60.i.i
  %and66.i.i = ashr i64 %sub62177.i.i, 63
  %or.i.i = or i64 %and66.i.i, %sub58.i.i
  %conv68.i.i = zext i64 %or.i.i to i128
  %sub.i.115 = add i128 %mul.i.117, 162259276829231810126855626815487
  %add16.i.i = sub i128 %sub.i.115, %43
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %sub11.i = add i128 %mul3.i.119, 1460333491462920270524206387560447
  %add19.i.i.92 = sub i128 %sub11.i, %44
  %sub54.i.i = sub i128 %add19.i.i.92, %shl52.i.i
  %sub74.i.i = sub i128 %sub54.i.i, %conv72.i.i
  %add84.i.i = add i128 %sub74.i.i, %shr80.i.i
  %shr90.i.i = lshr i128 %add84.i.i, 64
  %add94.i.i = add nuw nsw i128 %add13.i.i, %shr90.i.i
  %shr100.i.i = lshr i128 %add94.i.i, 64
  %add104.i.i = add nsw i128 %sub78.i.i, %shr100.i.i
  %conv2.i = and i128 %sub70.i.i, 18446744073709551615
  %mul.i.96 = mul nuw i128 %conv2.i, %conv.i.396
  %shr.i.97 = lshr i128 %mul.i.96, 64
  %conv5.i.98 = and i128 %mul.i.96, 18446744073709551615
  store i128 %conv5.i.98, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.101 = and i128 %add84.i.i, 18446744073709551615
  %mul13.i.102 = mul nuw i128 %conv12.i.101, %conv.i.396
  %shr15.i.103 = lshr i128 %mul13.i.102, 64
  %conv17.i.104 = and i128 %mul13.i.102, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv12.i.402
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.105 = add nuw nsw i128 %conv29.i, %shr.i.97
  %add31.i = add nuw nsw i128 %add.i.105, %conv17.i.104
  store i128 %add31.i, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %conv38.i = and i128 %add94.i.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i.396
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.101, %conv12.i.402
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv2.i, %conv27.i.410
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i.107 = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i.107, %shr15.i.103
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  store i128 %add72.i, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %conv79.i = and i128 %add104.i.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i.396
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv12.i.402
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.101, %conv27.i.410
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv2.i, %conv42.i.418
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %conv125.i, %shr68.i
  %add75.i = add nuw nsw i128 %add61.i, %shr54.i
  %add86.i = add nuw nsw i128 %add75.i, %conv111.i
  %add99.i = add nuw nsw i128 %add86.i, %shr41.i
  %add113.i = add nuw nsw i128 %add99.i, %conv97.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  store i128 %add127.i, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %mul135.i = mul nuw i128 %conv79.i, %conv12.i.402
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv27.i.410
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv12.i.101, %conv42.i.418
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr123.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  %mul176.i = mul nuw i128 %conv79.i, %conv27.i.410
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv42.i.418
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr164.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv42.i.418
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %mul.i.84 = mul nuw i128 %conv.i.649, %conv.i.649
  %shr.i = lshr i128 %mul.i.84, 64
  %mul13.i = mul nuw i128 %conv22.i.663, %conv.i.649
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %mul28.i = mul nuw i128 %conv63.i.682, %conv.i.649
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %mul43.i = mul nuw i128 %conv118.i.706, %conv.i.649
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv63.i.682, %conv22.i.663
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv22.i.663, %conv22.i.663
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  %mul86.i = mul nuw i128 %conv118.i.706, %conv22.i.663
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %mul101.i = mul nuw i128 %conv118.i.706, %conv63.i.682
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv63.i.682, %conv63.i.682
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  %mul133.i = mul nuw i128 %conv118.i.706, %conv118.i.706
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  %conv5.i = shl i128 %mul.i.84, 3
  %mul.i = and i128 %conv5.i, 147573952589676412920
  %mul3.i = shl nuw nsw i128 %add21.i, 3
  %mul6.i = shl nuw nsw i128 %add78.i, 3
  %mul9.i = shl nuw nsw i128 %add81.i, 3
  %mul12.i = shl nuw nsw i128 %add125.i, 3
  %mul15.i = shl nuw nsw i128 %add128.i, 3
  %mul18.i = shl nuw nsw i128 %add139.i, 3
  %mul21.i = shl nuw nsw i128 %shr135.i, 3
  %47 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add.i.73 = add i128 %47, 1180591620717411303232
  %48 = load i128, i128* %arrayidx8.i.1067, align 16, !tbaa !2
  %add2.i = add i128 %48, 1180591621816922931200
  %49 = load i128, i128* %arrayidx23.i.1075, align 16, !tbaa !2
  %add4.i = add i128 %49, 1180591620717411303424
  %50 = load i128, i128* %arrayidx38.i.1083, align 16, !tbaa !2
  %add6.i.76 = add i128 %50, 1180591619343021768768
  %add8.i = add i128 %add168.i, 1180591620717411303360
  %add10.i = add nuw nsw i128 %add195.i, 1180591620717411303360
  %add12.i = add nuw nsw i128 %add209.i, 1180591620717411303360
  %add14.i = add nuw nsw i128 %shr205.i, 1180591620717411303360
  %sub.i = sub i128 %add.i.73, %mul.i
  %sub19.i = sub i128 %add2.i, %mul3.i
  %sub22.i = sub i128 %add4.i, %mul6.i
  %sub25.i = sub i128 %add6.i.76, %mul9.i
  %sub28.i = sub i128 %add8.i, %mul12.i
  %sub31.i = sub nsw i128 %add10.i, %mul15.i
  %sub34.i = sub nsw i128 %add12.i, %mul18.i
  %sub37.i = sub nsw i128 %add14.i, %mul21.i
  %add.i = add i128 %sub.i, 40564819207303340845695479315968
  %add3.i = add i128 %sub19.i, 40564819207303340847894502572032
  %arrayidx4.i.70 = getelementptr inbounds i128, i128* %y_out, i64 1
  %add6.i = add i128 %sub22.i, 40564819207303340845695479316992
  %arrayidx7.i.72 = getelementptr inbounds i128, i128* %y_out, i64 2
  %add9.i = add i128 %sub25.i, 40564819207303340845695479316992
  %arrayidx10.i = getelementptr inbounds i128, i128* %y_out, i64 3
  %shl.i.i = shl i128 %sub31.i, 32
  %add.i.i = add i128 %shl.i.i, %sub28.i
  %add3.i.i = add i128 %add.i.i, %add.i
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %sub7.i.i = sub i128 %sub31.i, %sub37.i
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %sub28.i, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %shl13.i.i, %sub.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %sub26.i.i = sub i128 %add3.i.i, %sub34.i
  %shl28.i.i = shl nsw i128 %sub34.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nsw i128 %sub34.i, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i.70, align 16, !tbaa !2
  %mul.i.i = shl nsw i128 %sub34.i, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %sub37.i
  %shl46.i.i = shl nsw i128 %sub37.i, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %y_out, align 16, !tbaa !2
  %shl50.i.i = shl nsw i128 %sub37.i, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i.72, align 16, !tbaa !2
  %mul54.i.i = mul nsw i128 %sub37.i, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @llvm.lifetime.end(i64 64, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
}

declare void @ec_GFp_nistp_points_make_affine_internal(i64, i8*, i64, i8*, void (i8*)*, i32 (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @smallfelem_one(i64* nocapture %out) #0 {
entry:
  store i64 1, i64* %out, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1
  %0 = bitcast i64* %arrayidx1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @smallfelem_is_zero_int(i8* nocapture readonly %small) #4 {
entry:
  %0 = bitcast i8* %small to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !6
  %arrayidx1.i = getelementptr inbounds i8, i8* %small, i64 8
  %2 = bitcast i8* %arrayidx1.i to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !6
  %or.i = or i64 %3, %1
  %arrayidx2.i = getelementptr inbounds i8, i8* %small, i64 16
  %4 = bitcast i8* %arrayidx2.i to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !6
  %or3.i = or i64 %or.i, %5
  %arrayidx4.i = getelementptr inbounds i8, i8* %small, i64 24
  %6 = bitcast i8* %arrayidx4.i to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !6
  %or5.i = or i64 %or3.i, %7
  %dec.i = add i64 %or5.i, -1
  %shl.i = shl i64 %dec.i, 32
  %and.i = and i64 %shl.i, %dec.i
  %shl6.i = shl i64 %and.i, 16
  %and7.i = and i64 %shl6.i, %and.i
  %shl8.i = shl i64 %and7.i, 8
  %and9.i = and i64 %shl8.i, %and7.i
  %shl10.i = shl i64 %and9.i, 4
  %and11.i = and i64 %shl10.i, %and9.i
  %shl12.i = shl i64 %and11.i, 2
  %and13.i = and i64 %shl12.i, %and11.i
  %shl14.i = shl i64 %and13.i, 1
  %and15.i = and i64 %shl14.i, %and13.i
  %xor.i = xor i64 %1, -1
  %xor18.i = xor i64 %3, 4294967295
  %or19.i = or i64 %xor18.i, %xor.i
  %or22.i = or i64 %or19.i, %5
  %xor24.i = xor i64 %7, -4294967295
  %or25.i = or i64 %or22.i, %xor24.i
  %dec26.i = add i64 %or25.i, -1
  %shl27.i = shl i64 %dec26.i, 32
  %and28.i = and i64 %shl27.i, %dec26.i
  %shl29.i = shl i64 %and28.i, 16
  %and30.i = and i64 %shl29.i, %and28.i
  %shl31.i = shl i64 %and30.i, 8
  %and32.i = and i64 %shl31.i, %and30.i
  %shl33.i = shl i64 %and32.i, 4
  %and34.i = and i64 %shl33.i, %and32.i
  %shl35.i = shl i64 %and34.i, 2
  %and36.i = and i64 %shl35.i, %and34.i
  %shl37.i = shl i64 %and36.i, 1
  %and38.i = and i64 %shl37.i, %and36.i
  %sub86.i = or i64 %and38.i, %and15.i
  %or41.i.1 = lshr i64 %sub86.i, 63
  %coerce.sroa.0.0.insert.ext.tr = trunc i64 %or41.i.1 to i32
  ret i32 %coerce.sroa.0.0.insert.ext.tr
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_assign(i64* nocapture %out, i64* nocapture readonly %in) #0 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !6
  store i64 %0, i64* %out, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !6
  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %1, i64* %arrayidx3, align 8, !tbaa !6
  %arrayidx4 = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !6
  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %2, i64* %arrayidx5, align 8, !tbaa !6
  %arrayidx6 = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !6
  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %3, i64* %arrayidx7, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_square_contract(i64* nocapture %out, i64* nocapture readonly %in) #0 {
entry:
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = load i64, i64* %in, align 8, !tbaa !6
  %conv.i = zext i64 %1 to i128
  %mul.i = mul nuw i128 %conv.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  %arrayidx11.i = getelementptr inbounds i64, i64* %in, i64 1
  %2 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %conv12.i = zext i64 %2 to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %arrayidx26.i = getelementptr inbounds i64, i64* %in, i64 2
  %3 = load i64, i64* %arrayidx26.i, align 8, !tbaa !6
  %conv27.i = zext i64 %3 to i128
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %arrayidx41.i = getelementptr inbounds i64, i64* %in, i64 3
  %4 = load i64, i64* %arrayidx41.i, align 8, !tbaa !6
  %conv42.i = zext i64 %4 to i128
  %mul43.i = mul nuw i128 %conv42.i, %conv.i
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i, %conv12.i
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %mul101.i = mul nuw i128 %conv42.i, %conv27.i
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv27.i, %conv27.i
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  %mul133.i = mul nuw i128 %conv42.i, %conv42.i
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  %arraydecay1 = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 0
  %add.i = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i = or i128 %add21.i, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 1
  %add78.i = add nuw nsw i128 %conv76.i, 1267650600228229401427983728656
  %add6.i = add nuw nsw i128 %add78.i, %mul36.i
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 2
  %add81.i = add nuw nsw i128 %shr74.i, 1267650600228229401427983728656
  %add9.i = add nuw nsw i128 %add81.i, %mul64.i
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 3
  %shl.i.i = shl nuw nsw i128 %add128.i, 32
  %add.i.i = add nuw nsw i128 %shl.i.i, %add125.i
  %add3.i.i = add nuw nsw i128 %add.i.i, %add.i
  %sub.i.i = sub nsw i128 %add9.i, %add.i.i
  %sub7.i.i = sub nsw i128 %add128.i, %shr135.i
  %add9.i.i = add nsw i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub nsw i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl nuw nsw i128 %add125.i, 32
  %sub15.i.i = sub nsw i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %sub.i.i, %shl13.i.i
  %sub23.i.i = sub nsw i128 %sub11.i.i, %shl.i.i
  %sub26.i.i = sub i128 %add3.i.i, %add139.i
  %shl28.i.i = shl nuw nsw i128 %add139.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nuw nsw i128 %add139.i, 33
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl nuw nsw i128 %add139.i, 1
  %add37.i.i = add i128 %sub23.i.i, %mul.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %5 = mul nsw i128 %shr135.i, -4294967297
  %sub48.i.i = add i128 %5, %sub30.i.i
  store i128 %sub48.i.i, i128* %arraydecay1, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %shr135.i, 33
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %shr135.i, 3
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call fastcc void @felem_contract(i64* %out, i128* %arraydecay1)
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_mul_contract(i64* nocapture %out, i64* nocapture readonly %in1, i64* nocapture readonly %in2) #0 {
entry:
  %longtmp = alloca [8 x i128], align 16
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [8 x i128]* %longtmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %arraydecay = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 0
  call fastcc void @smallfelem_mul(i128* %arraydecay, i64* %in1, i64* %in2)
  %arraydecay1 = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 0
  %2 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i = add i128 %2, 1267650600228229401427983728624
  %arrayidx2.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 1
  %3 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i = add i128 %3, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 2
  %4 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i = add i128 %4, 1267650600228229401427983728656
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 2
  %arrayidx8.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 3
  %5 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i = add i128 %5, 1267650600228229401427983728656
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 3
  %arrayidx.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 4
  %6 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %arrayidx1.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 5
  %7 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i = shl i128 %7, 32
  %add.i.i = add i128 %shl.i.i, %6
  %add3.i.i = add i128 %add.i.i, %add.i
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %arrayidx6.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 7
  %8 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i = sub i128 %7, %8
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %6, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %shl13.i.i, %sub.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %arrayidx24.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %longtmp, i64 0, i64 6
  %9 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i = sub i128 %add3.i.i, %9
  %shl28.i.i = shl i128 %9, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl i128 %9, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl i128 %9, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %8
  %shl46.i.i = shl i128 %8, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %arraydecay1, align 16, !tbaa !2
  %shl50.i.i = shl i128 %8, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul i128 %8, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call fastcc void @felem_contract(i64* %out, i128* %arraydecay1)
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_inv_contract(i64* nocapture %out, i64* nocapture readonly %in) #0 {
entry:
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 0
  %1 = load i64, i64* %in, align 8, !tbaa !6
  %conv.i = zext i64 %1 to i128
  store i128 %conv.i, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1
  %2 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %conv3.i = zext i64 %2 to i128
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 1
  store i128 %conv3.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds i64, i64* %in, i64 2
  %3 = load i64, i64* %arrayidx5.i, align 8, !tbaa !6
  %conv6.i = zext i64 %3 to i128
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 2
  store i128 %conv6.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 3
  %4 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %conv9.i = zext i64 %4 to i128
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 3
  store i128 %conv9.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call fastcc void @felem_inv(i128* %arraydecay, i128* %arraydecay)
  call fastcc void @felem_contract(i64* %out, i128* %arraydecay)
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @select_point(i64 %idx, i32 %size, [3 x [4 x i64]]* nocapture readonly %pre_comp, [4 x i64]* nocapture %out) #0 {
entry:
  %0 = bitcast [4 x i64]* %out to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 96, i32 8, i1 false)
  %cmp.43 = icmp eq i32 %size, 0
  br i1 %cmp.43, label %for.end.21, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %arrayidx17 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 0
  %arrayidx17.1 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 1
  %arrayidx17.2 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 2
  %arrayidx17.3 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 3
  %arrayidx17.4 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 4
  %arrayidx17.5 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 5
  %arrayidx17.6 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 6
  %arrayidx17.7 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 7
  %arrayidx17.8 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 8
  %arrayidx17.9 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 9
  %arrayidx17.10 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 10
  %arrayidx17.11 = getelementptr inbounds [4 x i64], [4 x i64]* %out, i64 0, i64 11
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %1 = phi i64 [ %or18.11, %for.body ], [ 0, %for.body.preheader ]
  %2 = phi i64 [ %or18.10, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %or18.9, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %or18.8, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %or18.7, %for.body ], [ 0, %for.body.preheader ]
  %6 = phi i64 [ %or18.6, %for.body ], [ 0, %for.body.preheader ]
  %7 = phi i64 [ %or18.5, %for.body ], [ 0, %for.body.preheader ]
  %8 = phi i64 [ %or18.4, %for.body ], [ 0, %for.body.preheader ]
  %9 = phi i64 [ %or18.3, %for.body ], [ 0, %for.body.preheader ]
  %10 = phi i64 [ %or18.2, %for.body ], [ 0, %for.body.preheader ]
  %11 = phi i64 [ %or18.1, %for.body ], [ 0, %for.body.preheader ]
  %12 = phi i64 [ %or18, %for.body ], [ 0, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  %xor = xor i64 %indvars.iv, %idx
  %shr = lshr i64 %xor, 4
  %or = or i64 %shr, %xor
  %shr5 = lshr i64 %or, 2
  %or6 = or i64 %shr5, %or
  %shr7 = lshr i64 %or6, 1
  %or8 = or i64 %shr7, %or6
  %and = and i64 %or8, 1
  %dec = add nsw i64 %and, -1
  %arrayidx14 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 0
  %13 = load i64, i64* %arrayidx14, align 8, !tbaa !6
  %and15 = and i64 %13, %dec
  %or18 = or i64 %12, %and15
  store i64 %or18, i64* %arrayidx17, align 8, !tbaa !6
  %arrayidx14.1 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 1
  %14 = load i64, i64* %arrayidx14.1, align 8, !tbaa !6
  %and15.1 = and i64 %14, %dec
  %or18.1 = or i64 %11, %and15.1
  store i64 %or18.1, i64* %arrayidx17.1, align 8, !tbaa !6
  %arrayidx14.2 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 2
  %15 = load i64, i64* %arrayidx14.2, align 8, !tbaa !6
  %and15.2 = and i64 %15, %dec
  %or18.2 = or i64 %10, %and15.2
  store i64 %or18.2, i64* %arrayidx17.2, align 8, !tbaa !6
  %arrayidx14.3 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 3
  %16 = load i64, i64* %arrayidx14.3, align 8, !tbaa !6
  %and15.3 = and i64 %16, %dec
  %or18.3 = or i64 %9, %and15.3
  store i64 %or18.3, i64* %arrayidx17.3, align 8, !tbaa !6
  %arrayidx14.4 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 4
  %17 = load i64, i64* %arrayidx14.4, align 8, !tbaa !6
  %and15.4 = and i64 %17, %dec
  %or18.4 = or i64 %8, %and15.4
  store i64 %or18.4, i64* %arrayidx17.4, align 8, !tbaa !6
  %arrayidx14.5 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 5
  %18 = load i64, i64* %arrayidx14.5, align 8, !tbaa !6
  %and15.5 = and i64 %18, %dec
  %or18.5 = or i64 %7, %and15.5
  store i64 %or18.5, i64* %arrayidx17.5, align 8, !tbaa !6
  %arrayidx14.6 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 6
  %19 = load i64, i64* %arrayidx14.6, align 8, !tbaa !6
  %and15.6 = and i64 %19, %dec
  %or18.6 = or i64 %6, %and15.6
  store i64 %or18.6, i64* %arrayidx17.6, align 8, !tbaa !6
  %arrayidx14.7 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 7
  %20 = load i64, i64* %arrayidx14.7, align 8, !tbaa !6
  %and15.7 = and i64 %20, %dec
  %or18.7 = or i64 %5, %and15.7
  store i64 %or18.7, i64* %arrayidx17.7, align 8, !tbaa !6
  %arrayidx14.8 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 8
  %21 = load i64, i64* %arrayidx14.8, align 8, !tbaa !6
  %and15.8 = and i64 %21, %dec
  %or18.8 = or i64 %4, %and15.8
  store i64 %or18.8, i64* %arrayidx17.8, align 8, !tbaa !6
  %arrayidx14.9 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 9
  %22 = load i64, i64* %arrayidx14.9, align 8, !tbaa !6
  %and15.9 = and i64 %22, %dec
  %or18.9 = or i64 %3, %and15.9
  store i64 %or18.9, i64* %arrayidx17.9, align 8, !tbaa !6
  %arrayidx14.10 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 10
  %23 = load i64, i64* %arrayidx14.10, align 8, !tbaa !6
  %and15.10 = and i64 %23, %dec
  %or18.10 = or i64 %2, %and15.10
  store i64 %or18.10, i64* %arrayidx17.10, align 8, !tbaa !6
  %arrayidx14.11 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 11
  %24 = load i64, i64* %arrayidx14.11, align 8, !tbaa !6
  %and15.11 = and i64 %24, %dec
  %or18.11 = or i64 %1, %and15.11
  store i64 %or18.11, i64* %arrayidx17.11, align 8, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end.21.loopexit, label %for.body

for.end.21.loopexit:                              ; preds = %for.body
  br label %for.end.21

for.end.21:                                       ; preds = %for.end.21.loopexit, %entry
  ret void
}

declare void @ec_GFp_nistp_recode_scalar_bits(i8*, i8*, i8 zeroext) #3

declare i8* @CRYPTO_zalloc(i64, i8*, i32) #3

declare i8* @CRYPTO_THREAD_lock_new() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"__int128", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !4, i64 0}
!8 = !{!9, !11, i64 112}
!9 = !{!"ec_group_st", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32, !11, i64 36, !4, i64 40, !10, i64 48, !7, i64 56, !10, i64 64, !4, i64 72, !10, i64 96, !10, i64 104, !11, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !4, i64 152, !4, i64 160}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!9, !10, i64 136}
!13 = !{!14, !10, i64 16}
!14 = !{!"ec_point_st", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40}
!15 = !{!14, !10, i64 24}
!16 = !{!14, !10, i64 32}
!17 = !{!4, !4, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!9, !10, i64 8}
!20 = !{!9, !10, i64 16}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = !{!25, !11, i64 3072}
!25 = !{!"nistp256_pre_comp_st", !4, i64 0, !11, i64 3072, !10, i64 3080}
!26 = !{!25, !10, i64 3080}
!27 = !{!9, !4, i64 152}
!28 = distinct !{!28, !22}
