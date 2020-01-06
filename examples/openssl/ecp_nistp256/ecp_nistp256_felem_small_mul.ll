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
define void @felem_small_mul(i128* nocapture %out, i64* nocapture readonly %small1, i128* nocapture readonly %in2) #0 {
entry:
  %small2 = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %small2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #1
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 0
  %arrayidx.i = getelementptr inbounds i128, i128* %in2, i64 3
  %1 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %1, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %in2, i64 2
  %2 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %2, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %2, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %3 = load i128, i128* %in2, align 16, !tbaa !2
  %add16.i = add i128 %3, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %in2, i64 1
  %4 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %4, 1298074214633706907132628377272319
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
  %arrayidx114.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 1
  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !6
  %arrayidx117.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 2
  store i64 %conv106.i, i64* %arrayidx117.i, align 16, !tbaa !6
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds [4 x i64], [4 x i64]* %small2, i64 0, i64 3
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !6
  call fastcc void @smallfelem_mul(i128* %out, i64* %small1, i64* %arraydecay)
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
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* %group, %struct.ec_point_st* %point) #1
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 232, i32 106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1946) #1
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 0
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %6 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call1 = call fastcc i32 @BN_to_felem(i128* %arraydecay, %struct.bignum_st* %6)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call4 = call fastcc i32 @BN_to_felem(i128* %arraydecay3, %struct.bignum_st* %7)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %cleanup, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call8 = call fastcc i32 @BN_to_felem(i128* %arraydecay7, %struct.bignum_st* %8)
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %cleanup, label %if.end.11

if.end.11:                                        ; preds = %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 0
  call fastcc void @felem_inv(i128* %arraydecay12, i128* %arraydecay7)
  %arrayidx.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 3
  %9 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.i = add i128 %9, 18446744069414584320
  %arrayidx6.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 2
  %10 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.i = lshr i128 %10, 64
  %add8.i.i = add i128 %add.i.i, %shr.i.i
  %conv12.i.i = and i128 %10, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %11 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add16.i.i = add i128 %11, 18446744073709551615
  %arrayidx18.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 1
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
  %conv12.i = and i128 %add84.i.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %conv27.i = and i128 %add94.i.i, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %conv42.i = and i128 %add104.i.i, 18446744073709551615
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
  %add.i = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i = or i128 %add21.i, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 1
  %add78.i = add nuw nsw i128 %conv76.i, 1267650600228229401427983728656
  %add6.i = add nuw nsw i128 %add78.i, %mul36.i
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 2
  %add81.i = add nuw nsw i128 %shr74.i, 1267650600228229401427983728656
  %add9.i = add nuw nsw i128 %add81.i, %mul64.i
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
  %add19.i.i.71 = add i128 %sub.i.i.69, %shl13.i.i
  %sub23.i.i = sub nsw i128 %sub11.i.i, %shl.i.i.67
  %sub26.i.i = sub i128 %add3.i.i, %add139.i
  %shl28.i.i = shl nuw nsw i128 %add139.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nuw nsw i128 %add139.i, 33
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl nuw nsw i128 %add139.i, 1
  %add37.i.i = add i128 %sub23.i.i, %mul.i.i
  %sub41.i.i = sub i128 %add19.i.i.71, %shl28.i.i
  %13 = mul nsw i128 %shr135.i, -4294967297
  %sub48.i.i = add i128 %13, %sub30.i.i
  store i128 %sub48.i.i, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %shr135.i, 33
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %shr135.i, 3
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  %arrayidx.i.i.73 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 3
  %14 = load i128, i128* %arrayidx.i.i.73, align 16, !tbaa !2
  %add.i.i.74 = add i128 %14, 18446744069414584320
  %arrayidx6.i.i.75 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 2
  %15 = load i128, i128* %arrayidx6.i.i.75, align 16, !tbaa !2
  %shr.i.i.76 = lshr i128 %15, 64
  %add8.i.i.77 = add i128 %add.i.i.74, %shr.i.i.76
  %conv12.i.i.78 = and i128 %15, 18446744073709551615
  %add13.i.i.79 = add nuw nsw i128 %conv12.i.i.78, 18446673704965373952
  %16 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add16.i.i.80 = add i128 %16, 18446744073709551615
  %arrayidx18.i.i.81 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 1
  %17 = load i128, i128* %arrayidx18.i.i.81, align 16, !tbaa !2
  %add19.i.i.82 = add i128 %17, 1298074214633706907132628377272319
  %shr22.i.i.83 = lshr i128 %add8.i.i.77, 64
  %conv23.i.i.84 = trunc i128 %shr22.i.i.83 to i64
  %conv26.i.i.85 = and i128 %add8.i.i.77, 18446744073709551615
  %sub.i.i.86 = sub nsw i128 %conv26.i.i.85, %shr22.i.i.83
  %shl.i.i.87 = shl nuw nsw i128 %shr22.i.i.83, 32
  %add32.i.i.88 = add nsw i128 %sub.i.i.86, %shl.i.i.87
  %shr34.i.i.89 = lshr i128 %add32.i.i.88, 64
  %conv35.i.i.90 = trunc i128 %shr34.i.i.89 to i64
  %add36.i.i.91 = add i64 %conv35.i.i.90, %conv23.i.i.84
  %conv39.i.i.92 = and i128 %add32.i.i.88, 18446744073709551615
  %sub43.i.i.93 = sub nsw i128 %conv39.i.i.92, %shr34.i.i.89
  %shl45.i.i.94 = shl nuw nsw i128 %shr34.i.i.89, 32
  %add47.i.i.95 = add nsw i128 %sub43.i.i.93, %shl45.i.i.94
  %conv48.i.i.96 = zext i64 %add36.i.i.91 to i128
  %add50.i.i.97 = add i128 %add16.i.i.80, %conv48.i.i.96
  %shl52.i.i.98 = shl nuw nsw i128 %conv48.i.i.96, 32
  %sub54.i.i.99 = sub i128 %add19.i.i.82, %shl52.i.i.98
  %shr56.i.i.100 = lshr i128 %add47.i.i.95, 64
  %conv57.i.i.101 = trunc i128 %shr56.i.i.100 to i64
  %sub58.i.i.102 = sub i64 0, %conv57.i.i.101
  %conv60.i.i.103 = trunc i128 %add47.i.i.95 to i64
  %and.i.i.104 = and i64 %conv60.i.i.103, 9223372036854775807
  %neg.i.i.105 = sub nsw i64 9223372032559808512, %and.i.i.104
  %sub62177.i.i.106 = and i64 %neg.i.i.105, %conv60.i.i.103
  %and66.i.i.107 = ashr i64 %sub62177.i.i.106, 63
  %or.i.i.108 = or i64 %and66.i.i.107, %sub58.i.i.102
  %conv68.i.i.109 = zext i64 %or.i.i.108 to i128
  %sub70.i.i.110 = sub i128 %add50.i.i.97, %conv68.i.i.109
  %and71.i.i.111 = and i64 %or.i.i.108, 4294967295
  %conv72.i.i.112 = zext i64 %and71.i.i.111 to i128
  %sub74.i.i.113 = sub i128 %sub54.i.i.99, %conv72.i.i.112
  %and75.i.i.114 = and i64 %or.i.i.108, -4294967295
  %conv76.i.i.115 = zext i64 %and75.i.i.114 to i128
  %sub78.i.i.116 = sub nsw i128 %add47.i.i.95, %conv76.i.i.115
  %shr80.i.i.117 = lshr i128 %sub70.i.i.110, 64
  %add84.i.i.118 = add i128 %sub74.i.i.113, %shr80.i.i.117
  %shr90.i.i.120 = lshr i128 %add84.i.i.118, 64
  %add94.i.i.121 = add nuw nsw i128 %add13.i.i.79, %shr90.i.i.120
  %shr100.i.i.123 = lshr i128 %add94.i.i.121, 64
  %add104.i.i.124 = add nsw i128 %sub78.i.i.116, %shr100.i.i.123
  %shr.i.131 = lshr i128 %add52.i.i, 64
  %add.i.130 = add nuw nsw i128 %shr.i.131, 18446744069414584320
  %add8.i = add i128 %add.i.130, %add56.i.i
  %conv12.i.132 = and i128 %add52.i.i, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i.132, 18446673704965373952
  %add16.i = add i128 %sub48.i.i, 18446744073709551615
  %add19.i = add i128 %add34.i.i, 1298074214633706907132628377272319
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
  %conv60.i.133 = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i.133, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i.133
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i.134 = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i.134
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i.135 = and i128 %sub70.i.i.110, 18446744073709551615
  %conv2.i = and i128 %sub70.i, 18446744073709551615
  %mul.i.136 = mul nuw i128 %conv2.i, %conv.i.135
  %shr.i.137 = lshr i128 %mul.i.136, 64
  %conv5.i.138 = and i128 %mul.i.136, 18446744073709551615
  %conv12.i.141 = and i128 %add84.i, 18446744073709551615
  %mul13.i.142 = mul nuw i128 %conv12.i.141, %conv.i.135
  %shr15.i.143 = lshr i128 %mul13.i.142, 64
  %conv17.i.144 = and i128 %mul13.i.142, 18446744073709551615
  %conv22.i = and i128 %add84.i.i.118, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv22.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.145 = add nuw nsw i128 %conv29.i, %shr.i.137
  %add31.i = add nuw nsw i128 %add.i.145, %conv17.i.144
  %conv38.i = and i128 %add94.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i.135
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.141, %conv22.i
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %conv63.i = and i128 %add94.i.i.121, 18446744073709551615
  %mul66.i = mul nuw i128 %conv2.i, %conv63.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %conv79.i = and i128 %add104.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i.135
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv22.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.141, %conv63.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %conv118.i = and i128 %add104.i.i.124, 18446744073709551615
  %mul121.i = mul nuw i128 %conv2.i, %conv118.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %mul135.i = mul nuw i128 %conv79.i, %conv22.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv63.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv12.i.141, %conv118.i
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr123.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  %mul176.i = mul nuw i128 %conv79.i, %conv63.i
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv118.i
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr164.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv118.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %add.i.671 = add nuw nsw i128 %conv5.i.138, 1267650600228229401427983728624
  %add3.i.673 = or i128 %add31.i, 1267650600228229401496703205376
  %add34.i.146 = add nuw nsw i128 %shr27.i, 1267650600228229401427983728656
  %add45.i = add nuw nsw i128 %add34.i.146, %conv70.i
  %add58.i = add nuw nsw i128 %add45.i, %shr15.i.143
  %add72.i = add nuw nsw i128 %add58.i, %conv56.i
  %add6.i.676 = add nuw nsw i128 %add72.i, %conv43.i
  %add61.i = add nuw nsw i128 %shr68.i, 1267650600228229401427983728656
  %add75.i = add nuw nsw i128 %add61.i, %conv125.i
  %add86.i = add nuw nsw i128 %add75.i, %shr54.i
  %add99.i = add nuw nsw i128 %add86.i, %conv111.i
  %add113.i = add nuw nsw i128 %add99.i, %shr41.i
  %add127.i = add nuw nsw i128 %add113.i, %conv97.i
  %add9.i.679 = add i128 %add127.i, %conv84.i
  %shl.i.i.683 = shl nuw nsw i128 %add195.i, 32
  %add.i.i.684 = add i128 %add168.i, %shl.i.i.683
  %add3.i.i.685 = add i128 %add.i.i.684, %add.i.671
  %sub.i.i.686 = sub i128 %add9.i.679, %add.i.i.684
  %sub7.i.i.688 = sub nsw i128 %add195.i, %shr205.i
  %add9.i.i.689 = add nsw i128 %sub7.i.i.688, %add3.i.673
  %sub11.i.i.690 = sub nsw i128 %add6.i.676, %sub7.i.i.688
  %shl13.i.i.691 = shl i128 %add168.i, 32
  %sub15.i.i.692 = sub i128 %add9.i.i.689, %shl13.i.i.691
  %add19.i.i.694 = add i128 %sub.i.i.686, %shl13.i.i.691
  %sub23.i.i.696 = sub i128 %sub11.i.i.690, %shl.i.i.683
  %sub26.i.i.698 = sub i128 %add3.i.i.685, %add209.i
  %shl28.i.i.699 = shl nuw nsw i128 %add209.i, 32
  %sub30.i.i.700 = sub i128 %sub26.i.i.698, %shl28.i.i.699
  %shl32.i.i.701 = shl nuw nsw i128 %add209.i, 33
  %add34.i.i.702 = add i128 %sub15.i.i.692, %shl32.i.i.701
  store i128 %add34.i.i.702, i128* %arrayidx18.i.i.81, align 16, !tbaa !2
  %mul.i.i.703 = shl nuw nsw i128 %add209.i, 1
  %add37.i.i.704 = add i128 %sub23.i.i.696, %mul.i.i.703
  %sub41.i.i.706 = sub i128 %add19.i.i.694, %shl28.i.i.699
  %18 = mul nsw i128 %shr205.i, -4294967297
  %sub48.i.i.709 = add i128 %18, %sub30.i.i.700
  store i128 %sub48.i.i.709, i128* %arraydecay, align 16, !tbaa !2
  %shl50.i.i.710 = shl nuw nsw i128 %shr205.i, 33
  %add52.i.i.711 = add i128 %add37.i.i.704, %shl50.i.i.710
  store i128 %add52.i.i.711, i128* %arrayidx6.i.i.75, align 16, !tbaa !2
  %mul54.i.i.712 = mul nuw nsw i128 %shr205.i, 3
  %add56.i.i.713 = add i128 %sub41.i.i.706, %mul54.i.i.712
  store i128 %add56.i.i.713, i128* %arrayidx.i.i.73, align 16, !tbaa !2
  %arraydecay23 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay23, i128* %arraydecay)
  %cmp = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.end.11
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %19) #1
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %20) #1
  %21 = bitcast [4 x i64]* %x_out to <2 x i64>*
  %22 = load <2 x i64>, <2 x i64>* %21, align 16, !tbaa !6
  %23 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %22, <2 x i64>* %23, align 16, !tbaa !6
  %arrayidx4.i.i.658 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  %arrayidx5.i.i.659 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %24 = bitcast i64* %arrayidx4.i.i.658 to <2 x i64>*
  %25 = load <2 x i64>, <2 x i64>* %24, align 16, !tbaa !6
  %26 = bitcast i8* %arrayidx5.i.i.659 to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %26, align 16, !tbaa !6
  br label %vector.body

vector.body:                                      ; preds = %if.then.25
  %27 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %28 = bitcast i8* %27 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %28, align 16, !tbaa !17
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %29 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %29, align 16, !tbaa !17
  %30 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %30, align 16, !tbaa !17
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %32 = bitcast i8* %31 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %32, align 16, !tbaa !17
  %call.i.669 = call %struct.bignum_st* @BN_bin2bn(i8* %20, i32 32, %struct.bignum_st* %x) #1
  call void @llvm.lifetime.end(i64 32, i8* %20) #1
  call void @llvm.lifetime.end(i64 32, i8* %19) #1
  %tobool28 = icmp eq %struct.bignum_st* %call.i.669, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %vector.body
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1961) #1
  br label %cleanup

if.end.31:                                        ; preds = %vector.body, %if.end.11
  %33 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %add.i.i.447 = add i128 %33, 18446744069414584320
  %34 = load i128, i128* %arrayidx7.i, align 16, !tbaa !2
  %shr.i.i.449 = lshr i128 %34, 64
  %add8.i.i.450 = add i128 %add.i.i.447, %shr.i.i.449
  %conv12.i.i.451 = and i128 %34, 18446744073709551615
  %add13.i.i.452 = add nuw nsw i128 %conv12.i.i.451, 18446673704965373952
  %35 = load i128, i128* %arraydecay7, align 16, !tbaa !2
  %add16.i.i.453 = add i128 %35, 18446744073709551615
  %36 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %add19.i.i.455 = add i128 %36, 1298074214633706907132628377272319
  %shr22.i.i.456 = lshr i128 %add8.i.i.450, 64
  %conv23.i.i.457 = trunc i128 %shr22.i.i.456 to i64
  %conv26.i.i.458 = and i128 %add8.i.i.450, 18446744073709551615
  %sub.i.i.459 = sub nsw i128 %conv26.i.i.458, %shr22.i.i.456
  %shl.i.i.460 = shl nuw nsw i128 %shr22.i.i.456, 32
  %add32.i.i.461 = add nsw i128 %sub.i.i.459, %shl.i.i.460
  %shr34.i.i.462 = lshr i128 %add32.i.i.461, 64
  %conv35.i.i.463 = trunc i128 %shr34.i.i.462 to i64
  %add36.i.i.464 = add i64 %conv35.i.i.463, %conv23.i.i.457
  %conv39.i.i.465 = and i128 %add32.i.i.461, 18446744073709551615
  %sub43.i.i.466 = sub nsw i128 %conv39.i.i.465, %shr34.i.i.462
  %shl45.i.i.467 = shl nuw nsw i128 %shr34.i.i.462, 32
  %add47.i.i.468 = add nsw i128 %sub43.i.i.466, %shl45.i.i.467
  %conv48.i.i.469 = zext i64 %add36.i.i.464 to i128
  %add50.i.i.470 = add i128 %add16.i.i.453, %conv48.i.i.469
  %shl52.i.i.471 = shl nuw nsw i128 %conv48.i.i.469, 32
  %sub54.i.i.472 = sub i128 %add19.i.i.455, %shl52.i.i.471
  %shr56.i.i.473 = lshr i128 %add47.i.i.468, 64
  %conv57.i.i.474 = trunc i128 %shr56.i.i.473 to i64
  %sub58.i.i.475 = sub i64 0, %conv57.i.i.474
  %conv60.i.i.476 = trunc i128 %add47.i.i.468 to i64
  %and.i.i.477 = and i64 %conv60.i.i.476, 9223372036854775807
  %neg.i.i.478 = sub nsw i64 9223372032559808512, %and.i.i.477
  %sub62177.i.i.479 = and i64 %neg.i.i.478, %conv60.i.i.476
  %and66.i.i.480 = ashr i64 %sub62177.i.i.479, 63
  %or.i.i.481 = or i64 %and66.i.i.480, %sub58.i.i.475
  %conv68.i.i.482 = zext i64 %or.i.i.481 to i128
  %sub70.i.i.483 = sub i128 %add50.i.i.470, %conv68.i.i.482
  %and71.i.i.484 = and i64 %or.i.i.481, 4294967295
  %conv72.i.i.485 = zext i64 %and71.i.i.484 to i128
  %sub74.i.i.486 = sub i128 %sub54.i.i.472, %conv72.i.i.485
  %and75.i.i.487 = and i64 %or.i.i.481, -4294967295
  %conv76.i.i.488 = zext i64 %and75.i.i.487 to i128
  %sub78.i.i.489 = sub nsw i128 %add47.i.i.468, %conv76.i.i.488
  %shr80.i.i.490 = lshr i128 %sub70.i.i.483, 64
  %add84.i.i.491 = add i128 %sub74.i.i.486, %shr80.i.i.490
  %shr90.i.i.493 = lshr i128 %add84.i.i.491, 64
  %add94.i.i.494 = add nuw nsw i128 %add13.i.i.452, %shr90.i.i.493
  %shr100.i.i.496 = lshr i128 %add94.i.i.494, 64
  %add104.i.i.497 = add nsw i128 %sub78.i.i.489, %shr100.i.i.496
  %37 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.505 = add i128 %37, 18446744069414584320
  %38 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.507 = lshr i128 %38, 64
  %add8.i.508 = add i128 %add.i.505, %shr.i.507
  %conv12.i.509 = and i128 %38, 18446744073709551615
  %add13.i.510 = add nuw nsw i128 %conv12.i.509, 18446673704965373952
  %39 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add16.i.511 = add i128 %39, 18446744073709551615
  %40 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.513 = add i128 %40, 1298074214633706907132628377272319
  %shr22.i.514 = lshr i128 %add8.i.508, 64
  %conv23.i.515 = trunc i128 %shr22.i.514 to i64
  %conv26.i.516 = and i128 %add8.i.508, 18446744073709551615
  %sub.i.517 = sub nsw i128 %conv26.i.516, %shr22.i.514
  %shl.i.518 = shl nuw nsw i128 %shr22.i.514, 32
  %add32.i.519 = add nsw i128 %sub.i.517, %shl.i.518
  %shr34.i.520 = lshr i128 %add32.i.519, 64
  %conv35.i.521 = trunc i128 %shr34.i.520 to i64
  %add36.i.522 = add i64 %conv35.i.521, %conv23.i.515
  %conv39.i.523 = and i128 %add32.i.519, 18446744073709551615
  %sub43.i.524 = sub nsw i128 %conv39.i.523, %shr34.i.520
  %shl45.i.525 = shl nuw nsw i128 %shr34.i.520, 32
  %add47.i.526 = add nsw i128 %sub43.i.524, %shl45.i.525
  %conv48.i.527 = zext i64 %add36.i.522 to i128
  %add50.i.528 = add i128 %add16.i.511, %conv48.i.527
  %shl52.i.529 = shl nuw nsw i128 %conv48.i.527, 32
  %sub54.i.530 = sub i128 %add19.i.513, %shl52.i.529
  %shr56.i.531 = lshr i128 %add47.i.526, 64
  %conv57.i.532 = trunc i128 %shr56.i.531 to i64
  %sub58.i.533 = sub i64 0, %conv57.i.532
  %conv60.i.534 = trunc i128 %add47.i.526 to i64
  %and.i.535 = and i64 %conv60.i.534, 9223372036854775807
  %neg.i.536 = sub nsw i64 9223372032559808512, %and.i.535
  %sub62177.i.537 = and i64 %neg.i.536, %conv60.i.534
  %and66.i.538 = ashr i64 %sub62177.i.537, 63
  %or.i.539 = or i64 %and66.i.538, %sub58.i.533
  %conv68.i.540 = zext i64 %or.i.539 to i128
  %sub70.i.541 = sub i128 %add50.i.528, %conv68.i.540
  %and71.i.542 = and i64 %or.i.539, 4294967295
  %conv72.i.543 = zext i64 %and71.i.542 to i128
  %sub74.i.544 = sub i128 %sub54.i.530, %conv72.i.543
  %and75.i.545 = and i64 %or.i.539, -4294967295
  %conv76.i.546 = zext i64 %and75.i.545 to i128
  %sub78.i.547 = sub nsw i128 %add47.i.526, %conv76.i.546
  %shr80.i.548 = lshr i128 %sub70.i.541, 64
  %add84.i.549 = add i128 %sub74.i.544, %shr80.i.548
  %shr90.i.551 = lshr i128 %add84.i.549, 64
  %add94.i.552 = add nuw nsw i128 %add13.i.510, %shr90.i.551
  %shr100.i.554 = lshr i128 %add94.i.552, 64
  %add104.i.555 = add nsw i128 %sub78.i.547, %shr100.i.554
  %conv.i.561 = and i128 %sub70.i.i.483, 18446744073709551615
  %conv2.i.562 = and i128 %sub70.i.541, 18446744073709551615
  %mul.i.563 = mul nuw i128 %conv2.i.562, %conv.i.561
  %shr.i.564 = lshr i128 %mul.i.563, 64
  %conv5.i.565 = and i128 %mul.i.563, 18446744073709551615
  %conv12.i.568 = and i128 %add84.i.549, 18446744073709551615
  %mul13.i.569 = mul nuw i128 %conv12.i.568, %conv.i.561
  %shr15.i.570 = lshr i128 %mul13.i.569, 64
  %conv17.i.571 = and i128 %mul13.i.569, 18446744073709551615
  %conv22.i.575 = and i128 %add84.i.i.491, 18446744073709551615
  %mul25.i.576 = mul nuw i128 %conv2.i.562, %conv22.i.575
  %shr27.i.577 = lshr i128 %mul25.i.576, 64
  %conv29.i.578 = and i128 %mul25.i.576, 18446744073709551615
  %add.i.572 = add nuw nsw i128 %conv29.i.578, %shr.i.564
  %add31.i.579 = add nuw nsw i128 %add.i.572, %conv17.i.571
  %conv38.i.582 = and i128 %add94.i.552, 18446744073709551615
  %mul39.i.583 = mul nuw i128 %conv38.i.582, %conv.i.561
  %shr41.i.584 = lshr i128 %mul39.i.583, 64
  %conv43.i.585 = and i128 %mul39.i.583, 18446744073709551615
  %mul52.i.588 = mul nuw i128 %conv12.i.568, %conv22.i.575
  %shr54.i.589 = lshr i128 %mul52.i.588, 64
  %conv56.i.590 = and i128 %mul52.i.588, 18446744073709551615
  %conv63.i.594 = and i128 %add94.i.i.494, 18446744073709551615
  %mul66.i.595 = mul nuw i128 %conv2.i.562, %conv63.i.594
  %shr68.i.596 = lshr i128 %mul66.i.595, 64
  %conv70.i.597 = and i128 %mul66.i.595, 18446744073709551615
  %conv79.i.601 = and i128 %add104.i.555, 18446744073709551615
  %mul80.i.602 = mul nuw i128 %conv79.i.601, %conv.i.561
  %shr82.i.603 = lshr i128 %mul80.i.602, 64
  %conv84.i.604 = and i128 %mul80.i.602, 18446744073709551615
  %mul93.i.607 = mul nuw i128 %conv38.i.582, %conv22.i.575
  %shr95.i.608 = lshr i128 %mul93.i.607, 64
  %conv97.i.609 = and i128 %mul93.i.607, 18446744073709551615
  %mul107.i.612 = mul nuw i128 %conv12.i.568, %conv63.i.594
  %shr109.i.613 = lshr i128 %mul107.i.612, 64
  %conv111.i.614 = and i128 %mul107.i.612, 18446744073709551615
  %conv118.i.618 = and i128 %add104.i.i.497, 18446744073709551615
  %mul121.i.619 = mul nuw i128 %conv118.i.618, %conv2.i.562
  %shr123.i.620 = lshr i128 %mul121.i.619, 64
  %conv125.i.621 = and i128 %mul121.i.619, 18446744073709551615
  %mul135.i.624 = mul nuw i128 %conv79.i.601, %conv22.i.575
  %shr137.i.625 = lshr i128 %mul135.i.624, 64
  %conv139.i.626 = and i128 %mul135.i.624, 18446744073709551615
  %mul148.i.629 = mul nuw i128 %conv38.i.582, %conv63.i.594
  %shr150.i.630 = lshr i128 %mul148.i.629, 64
  %conv152.i.631 = and i128 %mul148.i.629, 18446744073709551615
  %mul162.i.634 = mul nuw i128 %conv12.i.568, %conv118.i.618
  %shr164.i.635 = lshr i128 %mul162.i.634, 64
  %conv166.i.636 = and i128 %mul162.i.634, 18446744073709551615
  %add102.i.611 = add nuw nsw i128 %shr123.i.620, %shr109.i.613
  %add116.i.616 = add nuw nsw i128 %add102.i.611, %conv166.i.636
  %add130.i.623 = add nuw nsw i128 %add116.i.616, %shr95.i.608
  %add141.i.627 = add nuw nsw i128 %add130.i.623, %conv152.i.631
  %add154.i.632 = add nuw nsw i128 %add141.i.627, %shr82.i.603
  %add168.i.637 = add nuw nsw i128 %add154.i.632, %conv139.i.626
  %mul176.i.639 = mul nuw i128 %conv79.i.601, %conv63.i.594
  %shr178.i.640 = lshr i128 %mul176.i.639, 64
  %conv180.i.641 = and i128 %mul176.i.639, 18446744073709551615
  %mul189.i.644 = mul nuw i128 %conv38.i.582, %conv118.i.618
  %shr191.i.645 = lshr i128 %mul189.i.644, 64
  %conv193.i.646 = and i128 %mul189.i.644, 18446744073709551615
  %add157.i.633 = add nuw nsw i128 %shr150.i.630, %shr164.i.635
  %add171.i.638 = add nuw nsw i128 %add157.i.633, %conv193.i.646
  %add182.i.642 = add nuw nsw i128 %add171.i.638, %shr137.i.625
  %add195.i.647 = add nuw nsw i128 %add182.i.642, %conv180.i.641
  %add198.i.648 = add nuw nsw i128 %shr178.i.640, %shr191.i.645
  %mul203.i.649 = mul nuw i128 %conv79.i.601, %conv118.i.618
  %shr205.i.650 = lshr i128 %mul203.i.649, 64
  %conv207.i.651 = and i128 %mul203.i.649, 18446744073709551615
  %add209.i.652 = add nuw nsw i128 %add198.i.648, %conv207.i.651
  %add.i.401 = add nuw nsw i128 %conv5.i.565, 1267650600228229401427983728624
  %add3.i.403 = or i128 %add31.i.579, 1267650600228229401496703205376
  %add34.i.580 = add nuw nsw i128 %shr27.i.577, 1267650600228229401427983728656
  %add45.i.586 = add nuw nsw i128 %add34.i.580, %conv70.i.597
  %add58.i.591 = add nuw nsw i128 %add45.i.586, %shr15.i.570
  %add72.i.598 = add nuw nsw i128 %add58.i.591, %conv56.i.590
  %add6.i.406 = add nuw nsw i128 %add72.i.598, %conv43.i.585
  %add61.i.592 = add nuw nsw i128 %shr68.i.596, 1267650600228229401427983728656
  %add75.i.599 = add nuw nsw i128 %add61.i.592, %shr54.i.589
  %add86.i.605 = add nuw nsw i128 %add75.i.599, %conv111.i.614
  %add99.i.610 = add nuw nsw i128 %add86.i.605, %conv125.i.621
  %add113.i.615 = add nuw nsw i128 %add99.i.610, %shr41.i.584
  %add127.i.622 = add nuw nsw i128 %add113.i.615, %conv97.i.609
  %add9.i.409 = add i128 %add127.i.622, %conv84.i.604
  %shl.i.i.413 = shl nuw nsw i128 %add195.i.647, 32
  %add.i.i.414 = add i128 %add168.i.637, %shl.i.i.413
  %add3.i.i.415 = add i128 %add.i.i.414, %add.i.401
  %sub.i.i.416 = sub i128 %add9.i.409, %add.i.i.414
  %sub7.i.i.418 = sub nsw i128 %add195.i.647, %shr205.i.650
  %add9.i.i.419 = add nsw i128 %sub7.i.i.418, %add3.i.403
  %sub11.i.i.420 = sub nsw i128 %add6.i.406, %sub7.i.i.418
  %shl13.i.i.421 = shl i128 %add168.i.637, 32
  %sub15.i.i.422 = sub i128 %add9.i.i.419, %shl13.i.i.421
  %add19.i.i.424 = add i128 %sub.i.i.416, %shl13.i.i.421
  %sub23.i.i.426 = sub i128 %sub11.i.i.420, %shl.i.i.413
  %sub26.i.i.428 = sub i128 %add3.i.i.415, %add209.i.652
  %shl28.i.i.429 = shl nuw nsw i128 %add209.i.652, 32
  %sub30.i.i.430 = sub i128 %sub26.i.i.428, %shl28.i.i.429
  %shl32.i.i.431 = shl nuw nsw i128 %add209.i.652, 33
  %add34.i.i.432 = add i128 %sub15.i.i.422, %shl32.i.i.431
  store i128 %add34.i.i.432, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.433 = shl nuw nsw i128 %add209.i.652, 1
  %add37.i.i.434 = add i128 %sub23.i.i.426, %mul.i.i.433
  %sub41.i.i.436 = sub i128 %add19.i.i.424, %shl28.i.i.429
  %41 = mul nsw i128 %shr205.i.650, -4294967297
  %sub48.i.i.439 = add i128 %41, %sub30.i.i.430
  store i128 %sub48.i.i.439, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i.440 = shl nuw nsw i128 %shr205.i.650, 33
  %add52.i.i.441 = add i128 %add37.i.i.434, %shl50.i.i.440
  store i128 %add52.i.i.441, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.442 = mul nuw nsw i128 %shr205.i.650, 3
  %add56.i.i.443 = add i128 %sub41.i.i.436, %mul54.i.i.442
  store i128 %add56.i.i.443, i128* %arrayidx10.i, align 16, !tbaa !2
  %arrayidx.i.i.193 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 3
  %42 = load i128, i128* %arrayidx.i.i.193, align 16, !tbaa !2
  %add.i.i.194 = add i128 %42, 18446744069414584320
  %arrayidx6.i.i.195 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 2
  %43 = load i128, i128* %arrayidx6.i.i.195, align 16, !tbaa !2
  %shr.i.i.196 = lshr i128 %43, 64
  %add8.i.i.197 = add i128 %add.i.i.194, %shr.i.i.196
  %conv12.i.i.198 = and i128 %43, 18446744073709551615
  %add13.i.i.199 = add nuw nsw i128 %conv12.i.i.198, 18446673704965373952
  %44 = load i128, i128* %arraydecay3, align 16, !tbaa !2
  %add16.i.i.200 = add i128 %44, 18446744073709551615
  %arrayidx18.i.i.201 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 1
  %45 = load i128, i128* %arrayidx18.i.i.201, align 16, !tbaa !2
  %add19.i.i.202 = add i128 %45, 1298074214633706907132628377272319
  %shr22.i.i.203 = lshr i128 %add8.i.i.197, 64
  %conv23.i.i.204 = trunc i128 %shr22.i.i.203 to i64
  %conv26.i.i.205 = and i128 %add8.i.i.197, 18446744073709551615
  %sub.i.i.206 = sub nsw i128 %conv26.i.i.205, %shr22.i.i.203
  %shl.i.i.207 = shl nuw nsw i128 %shr22.i.i.203, 32
  %add32.i.i.208 = add nsw i128 %sub.i.i.206, %shl.i.i.207
  %shr34.i.i.209 = lshr i128 %add32.i.i.208, 64
  %conv35.i.i.210 = trunc i128 %shr34.i.i.209 to i64
  %add36.i.i.211 = add i64 %conv35.i.i.210, %conv23.i.i.204
  %conv39.i.i.212 = and i128 %add32.i.i.208, 18446744073709551615
  %sub43.i.i.213 = sub nsw i128 %conv39.i.i.212, %shr34.i.i.209
  %shl45.i.i.214 = shl nuw nsw i128 %shr34.i.i.209, 32
  %add47.i.i.215 = add nsw i128 %sub43.i.i.213, %shl45.i.i.214
  %conv48.i.i.216 = zext i64 %add36.i.i.211 to i128
  %add50.i.i.217 = add i128 %add16.i.i.200, %conv48.i.i.216
  %shl52.i.i.218 = shl nuw nsw i128 %conv48.i.i.216, 32
  %sub54.i.i.219 = sub i128 %add19.i.i.202, %shl52.i.i.218
  %shr56.i.i.220 = lshr i128 %add47.i.i.215, 64
  %conv57.i.i.221 = trunc i128 %shr56.i.i.220 to i64
  %sub58.i.i.222 = sub i64 0, %conv57.i.i.221
  %conv60.i.i.223 = trunc i128 %add47.i.i.215 to i64
  %and.i.i.224 = and i64 %conv60.i.i.223, 9223372036854775807
  %neg.i.i.225 = sub nsw i64 9223372032559808512, %and.i.i.224
  %sub62177.i.i.226 = and i64 %neg.i.i.225, %conv60.i.i.223
  %and66.i.i.227 = ashr i64 %sub62177.i.i.226, 63
  %or.i.i.228 = or i64 %and66.i.i.227, %sub58.i.i.222
  %conv68.i.i.229 = zext i64 %or.i.i.228 to i128
  %sub70.i.i.230 = sub i128 %add50.i.i.217, %conv68.i.i.229
  %and71.i.i.231 = and i64 %or.i.i.228, 4294967295
  %conv72.i.i.232 = zext i64 %and71.i.i.231 to i128
  %sub74.i.i.233 = sub i128 %sub54.i.i.219, %conv72.i.i.232
  %and75.i.i.234 = and i64 %or.i.i.228, -4294967295
  %conv76.i.i.235 = zext i64 %and75.i.i.234 to i128
  %sub78.i.i.236 = sub nsw i128 %add47.i.i.215, %conv76.i.i.235
  %shr80.i.i.237 = lshr i128 %sub70.i.i.230, 64
  %add84.i.i.238 = add i128 %sub74.i.i.233, %shr80.i.i.237
  %shr90.i.i.240 = lshr i128 %add84.i.i.238, 64
  %add94.i.i.241 = add nuw nsw i128 %add13.i.i.199, %shr90.i.i.240
  %shr100.i.i.243 = lshr i128 %add94.i.i.241, 64
  %add104.i.i.244 = add nsw i128 %sub78.i.i.236, %shr100.i.i.243
  %shr.i.254 = lshr i128 %add52.i.i.441, 64
  %add.i.252 = add nuw nsw i128 %shr.i.254, 18446744069414584320
  %add8.i.255 = add i128 %add.i.252, %add56.i.i.443
  %conv12.i.256 = and i128 %add52.i.i.441, 18446744073709551615
  %add13.i.257 = add nuw nsw i128 %conv12.i.256, 18446673704965373952
  %add16.i.258 = add i128 %sub48.i.i.439, 18446744073709551615
  %add19.i.260 = add i128 %add34.i.i.432, 1298074214633706907132628377272319
  %shr22.i.261 = lshr i128 %add8.i.255, 64
  %conv23.i.262 = trunc i128 %shr22.i.261 to i64
  %conv26.i.263 = and i128 %add8.i.255, 18446744073709551615
  %sub.i.264 = sub nsw i128 %conv26.i.263, %shr22.i.261
  %shl.i.265 = shl nuw nsw i128 %shr22.i.261, 32
  %add32.i.266 = add nsw i128 %sub.i.264, %shl.i.265
  %shr34.i.267 = lshr i128 %add32.i.266, 64
  %conv35.i.268 = trunc i128 %shr34.i.267 to i64
  %add36.i.269 = add i64 %conv35.i.268, %conv23.i.262
  %conv39.i.270 = and i128 %add32.i.266, 18446744073709551615
  %sub43.i.271 = sub nsw i128 %conv39.i.270, %shr34.i.267
  %shl45.i.272 = shl nuw nsw i128 %shr34.i.267, 32
  %add47.i.273 = add nsw i128 %sub43.i.271, %shl45.i.272
  %conv48.i.274 = zext i64 %add36.i.269 to i128
  %add50.i.275 = add i128 %add16.i.258, %conv48.i.274
  %shl52.i.276 = shl nuw nsw i128 %conv48.i.274, 32
  %sub54.i.277 = sub i128 %add19.i.260, %shl52.i.276
  %shr56.i.278 = lshr i128 %add47.i.273, 64
  %conv57.i.279 = trunc i128 %shr56.i.278 to i64
  %sub58.i.280 = sub i64 0, %conv57.i.279
  %conv60.i.281 = trunc i128 %add47.i.273 to i64
  %and.i.282 = and i64 %conv60.i.281, 9223372036854775807
  %neg.i.283 = sub nsw i64 9223372032559808512, %and.i.282
  %sub62177.i.284 = and i64 %neg.i.283, %conv60.i.281
  %and66.i.285 = ashr i64 %sub62177.i.284, 63
  %or.i.286 = or i64 %and66.i.285, %sub58.i.280
  %conv68.i.287 = zext i64 %or.i.286 to i128
  %sub70.i.288 = sub i128 %add50.i.275, %conv68.i.287
  %and71.i.289 = and i64 %or.i.286, 4294967295
  %conv72.i.290 = zext i64 %and71.i.289 to i128
  %sub74.i.291 = sub i128 %sub54.i.277, %conv72.i.290
  %and75.i.292 = and i64 %or.i.286, -4294967295
  %conv76.i.293 = zext i64 %and75.i.292 to i128
  %sub78.i.294 = sub nsw i128 %add47.i.273, %conv76.i.293
  %shr80.i.295 = lshr i128 %sub70.i.288, 64
  %add84.i.296 = add i128 %sub74.i.291, %shr80.i.295
  %shr90.i.298 = lshr i128 %add84.i.296, 64
  %add94.i.299 = add nuw nsw i128 %add13.i.257, %shr90.i.298
  %shr100.i.301 = lshr i128 %add94.i.299, 64
  %add104.i.302 = add nsw i128 %sub78.i.294, %shr100.i.301
  %conv.i.308 = and i128 %sub70.i.i.230, 18446744073709551615
  %conv2.i.309 = and i128 %sub70.i.288, 18446744073709551615
  %mul.i.310 = mul nuw i128 %conv2.i.309, %conv.i.308
  %shr.i.311 = lshr i128 %mul.i.310, 64
  %conv5.i.312 = and i128 %mul.i.310, 18446744073709551615
  %conv12.i.315 = and i128 %add84.i.296, 18446744073709551615
  %mul13.i.316 = mul nuw i128 %conv12.i.315, %conv.i.308
  %shr15.i.317 = lshr i128 %mul13.i.316, 64
  %conv17.i.318 = and i128 %mul13.i.316, 18446744073709551615
  %conv22.i.322 = and i128 %add84.i.i.238, 18446744073709551615
  %mul25.i.323 = mul nuw i128 %conv2.i.309, %conv22.i.322
  %shr27.i.324 = lshr i128 %mul25.i.323, 64
  %conv29.i.325 = and i128 %mul25.i.323, 18446744073709551615
  %add.i.319 = add nuw nsw i128 %conv29.i.325, %shr.i.311
  %add31.i.326 = add nuw nsw i128 %add.i.319, %conv17.i.318
  %conv38.i.329 = and i128 %add94.i.299, 18446744073709551615
  %mul39.i.330 = mul nuw i128 %conv38.i.329, %conv.i.308
  %shr41.i.331 = lshr i128 %mul39.i.330, 64
  %conv43.i.332 = and i128 %mul39.i.330, 18446744073709551615
  %mul52.i.335 = mul nuw i128 %conv12.i.315, %conv22.i.322
  %shr54.i.336 = lshr i128 %mul52.i.335, 64
  %conv56.i.337 = and i128 %mul52.i.335, 18446744073709551615
  %conv63.i.341 = and i128 %add94.i.i.241, 18446744073709551615
  %mul66.i.342 = mul nuw i128 %conv2.i.309, %conv63.i.341
  %shr68.i.343 = lshr i128 %mul66.i.342, 64
  %conv70.i.344 = and i128 %mul66.i.342, 18446744073709551615
  %conv79.i.348 = and i128 %add104.i.302, 18446744073709551615
  %mul80.i.349 = mul nuw i128 %conv79.i.348, %conv.i.308
  %shr82.i.350 = lshr i128 %mul80.i.349, 64
  %conv84.i.351 = and i128 %mul80.i.349, 18446744073709551615
  %mul93.i.354 = mul nuw i128 %conv38.i.329, %conv22.i.322
  %shr95.i.355 = lshr i128 %mul93.i.354, 64
  %conv97.i.356 = and i128 %mul93.i.354, 18446744073709551615
  %mul107.i.359 = mul nuw i128 %conv12.i.315, %conv63.i.341
  %shr109.i.360 = lshr i128 %mul107.i.359, 64
  %conv111.i.361 = and i128 %mul107.i.359, 18446744073709551615
  %conv118.i.365 = and i128 %add104.i.i.244, 18446744073709551615
  %mul121.i.366 = mul nuw i128 %conv2.i.309, %conv118.i.365
  %shr123.i.367 = lshr i128 %mul121.i.366, 64
  %conv125.i.368 = and i128 %mul121.i.366, 18446744073709551615
  %mul135.i.371 = mul nuw i128 %conv79.i.348, %conv22.i.322
  %shr137.i.372 = lshr i128 %mul135.i.371, 64
  %conv139.i.373 = and i128 %mul135.i.371, 18446744073709551615
  %mul148.i.376 = mul nuw i128 %conv38.i.329, %conv63.i.341
  %shr150.i.377 = lshr i128 %mul148.i.376, 64
  %conv152.i.378 = and i128 %mul148.i.376, 18446744073709551615
  %mul162.i.381 = mul nuw i128 %conv12.i.315, %conv118.i.365
  %shr164.i.382 = lshr i128 %mul162.i.381, 64
  %conv166.i.383 = and i128 %mul162.i.381, 18446744073709551615
  %add102.i.358 = add nuw nsw i128 %shr109.i.360, %shr123.i.367
  %add116.i.363 = add nuw nsw i128 %add102.i.358, %conv166.i.383
  %add130.i.370 = add nuw nsw i128 %add116.i.363, %shr95.i.355
  %add141.i.374 = add nuw nsw i128 %add130.i.370, %conv152.i.378
  %add154.i.379 = add nuw nsw i128 %add141.i.374, %shr82.i.350
  %add168.i.384 = add nuw nsw i128 %add154.i.379, %conv139.i.373
  %mul176.i.386 = mul nuw i128 %conv79.i.348, %conv63.i.341
  %shr178.i.387 = lshr i128 %mul176.i.386, 64
  %conv180.i.388 = and i128 %mul176.i.386, 18446744073709551615
  %mul189.i.391 = mul nuw i128 %conv38.i.329, %conv118.i.365
  %shr191.i.392 = lshr i128 %mul189.i.391, 64
  %conv193.i.393 = and i128 %mul189.i.391, 18446744073709551615
  %add157.i.380 = add nuw nsw i128 %shr150.i.377, %shr164.i.382
  %add171.i.385 = add nuw nsw i128 %add157.i.380, %conv193.i.393
  %add182.i.389 = add nuw nsw i128 %add171.i.385, %shr137.i.372
  %add195.i.394 = add nuw nsw i128 %add182.i.389, %conv180.i.388
  %add198.i.395 = add nuw nsw i128 %shr178.i.387, %shr191.i.392
  %mul203.i.396 = mul nuw i128 %conv79.i.348, %conv118.i.365
  %shr205.i.397 = lshr i128 %mul203.i.396, 64
  %conv207.i.398 = and i128 %mul203.i.396, 18446744073709551615
  %add209.i.399 = add nuw nsw i128 %add198.i.395, %conv207.i.398
  %add.i.148 = add nuw nsw i128 %conv5.i.312, 1267650600228229401427983728624
  %add3.i.150 = or i128 %add31.i.326, 1267650600228229401496703205376
  %add34.i.327 = add nuw nsw i128 %shr27.i.324, 1267650600228229401427983728656
  %add45.i.333 = add nuw nsw i128 %add34.i.327, %conv70.i.344
  %add58.i.338 = add nuw nsw i128 %add45.i.333, %shr15.i.317
  %add72.i.345 = add nuw nsw i128 %add58.i.338, %conv56.i.337
  %add6.i.153 = add nuw nsw i128 %add72.i.345, %conv43.i.332
  %add61.i.339 = add nuw nsw i128 %shr68.i.343, 1267650600228229401427983728656
  %add75.i.346 = add nuw nsw i128 %add61.i.339, %conv125.i.368
  %add86.i.352 = add nuw nsw i128 %add75.i.346, %shr54.i.336
  %add99.i.357 = add nuw nsw i128 %add86.i.352, %conv111.i.361
  %add113.i.362 = add nuw nsw i128 %add99.i.357, %shr41.i.331
  %add127.i.369 = add nuw nsw i128 %add113.i.362, %conv97.i.356
  %add9.i.156 = add i128 %add127.i.369, %conv84.i.351
  %shl.i.i.160 = shl nuw nsw i128 %add195.i.394, 32
  %add.i.i.161 = add i128 %add168.i.384, %shl.i.i.160
  %add3.i.i.162 = add i128 %add.i.i.161, %add.i.148
  %sub.i.i.163 = sub i128 %add9.i.156, %add.i.i.161
  %sub7.i.i.165 = sub nsw i128 %add195.i.394, %shr205.i.397
  %add9.i.i.166 = add nsw i128 %sub7.i.i.165, %add3.i.150
  %sub11.i.i.167 = sub nsw i128 %add6.i.153, %sub7.i.i.165
  %shl13.i.i.168 = shl i128 %add168.i.384, 32
  %sub15.i.i.169 = sub i128 %add9.i.i.166, %shl13.i.i.168
  %add19.i.i.171 = add i128 %sub.i.i.163, %shl13.i.i.168
  %sub23.i.i.173 = sub i128 %sub11.i.i.167, %shl.i.i.160
  %sub26.i.i.175 = sub i128 %add3.i.i.162, %add209.i.399
  %shl28.i.i.176 = shl nuw nsw i128 %add209.i.399, 32
  %sub30.i.i.177 = sub i128 %sub26.i.i.175, %shl28.i.i.176
  %shl32.i.i.178 = shl nuw nsw i128 %add209.i.399, 33
  %add34.i.i.179 = add i128 %sub15.i.i.169, %shl32.i.i.178
  store i128 %add34.i.i.179, i128* %arrayidx18.i.i.201, align 16, !tbaa !2
  %mul.i.i.180 = shl nuw nsw i128 %add209.i.399, 1
  %add37.i.i.181 = add i128 %sub23.i.i.173, %mul.i.i.180
  %sub41.i.i.183 = sub i128 %add19.i.i.171, %shl28.i.i.176
  %46 = mul nsw i128 %shr205.i.397, -4294967297
  %sub48.i.i.186 = add i128 %46, %sub30.i.i.177
  store i128 %sub48.i.i.186, i128* %arraydecay3, align 16, !tbaa !2
  %shl50.i.i.187 = shl nuw nsw i128 %shr205.i.397, 33
  %add52.i.i.188 = add i128 %add37.i.i.181, %shl50.i.i.187
  store i128 %add52.i.i.188, i128* %arrayidx6.i.i.195, align 16, !tbaa !2
  %mul54.i.i.189 = mul nuw nsw i128 %shr205.i.397, 3
  %add56.i.i.190 = add i128 %sub41.i.i.183, %mul54.i.i.189
  store i128 %add56.i.i.190, i128* %arrayidx.i.i.193, align 16, !tbaa !2
  %arraydecay42 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay42, i128* %arraydecay3)
  %cmp44 = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp44, label %cleanup, label %if.then.45

if.then.45:                                       ; preds = %if.end.31
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %47) #1
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %48) #1
  %49 = bitcast [4 x i64]* %y_out to <2 x i64>*
  %50 = load <2 x i64>, <2 x i64>* %49, align 16, !tbaa !6
  %51 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %50, <2 x i64>* %51, align 16, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  %arrayidx5.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %52 = bitcast i64* %arrayidx4.i.i to <2 x i64>*
  %53 = load <2 x i64>, <2 x i64>* %52, align 16, !tbaa !6
  %54 = bitcast i8* %arrayidx5.i.i to <2 x i64>*
  store <2 x i64> %53, <2 x i64>* %54, align 16, !tbaa !6
  br label %vector.body863

vector.body863:                                   ; preds = %if.then.45
  %55 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %56 = bitcast i8* %55 to <16 x i8>*
  %wide.load878 = load <16 x i8>, <16 x i8>* %56, align 16, !tbaa !17
  %reverse879 = shufflevector <16 x i8> %wide.load878, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %57 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse879, <16 x i8>* %57, align 16, !tbaa !17
  %58 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load878.1 = load <16 x i8>, <16 x i8>* %58, align 16, !tbaa !17
  %reverse879.1 = shufflevector <16 x i8> %wide.load878.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %60 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> %reverse879.1, <16 x i8>* %60, align 16, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %48, i32 32, %struct.bignum_st* %y) #1
  call void @llvm.lifetime.end(i64 32, i8* %48) #1
  call void @llvm.lifetime.end(i64 32, i8* %47) #1
  %tobool48 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool48, label %if.then.49, label %cleanup

if.then.49:                                       ; preds = %vector.body863
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1973) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %vector.body863, %if.end, %lor.lhs.false, %lor.lhs.false.6, %if.then.49, %if.then.29, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.49 ], [ 0, %if.then.29 ], [ 0, %lor.lhs.false.6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %vector.body863 ], [ 1, %if.end.31 ]
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
  %arrayidx.i.i = getelementptr inbounds i128, i128* %in, i64 3
  %0 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.i = add i128 %0, 18446744069414584320
  %arrayidx6.i.i = getelementptr inbounds i128, i128* %in, i64 2
  %1 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.i = lshr i128 %1, 64
  %add8.i.i = add i128 %add.i.i, %shr.i.i
  %conv12.i.i = and i128 %1, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %2 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.i = add i128 %2, 18446744073709551615
  %arrayidx18.i.i = getelementptr inbounds i128, i128* %in, i64 1
  %3 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.i = add i128 %3, 1298074214633706907132628377272319
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
  %conv12.i = and i128 %add84.i.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %conv27.i = and i128 %add94.i.i, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %conv42.i = and i128 %add104.i.i, 18446744073709551615
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
  %add3.i.6142 = or i128 %add21.i, 1267650600228229401496703205376
  %shl.i.i.6152 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.6153 = add nuw nsw i128 %shl.i.i.6152, %add125.i
  %sub7.i.i.6157 = sub nsw i128 %add128.i, %shr135.i
  %shl13.i.i.6160 = shl nuw nsw i128 %add125.i, 32
  %shl28.i.i.6168 = shl nuw nsw i128 %add139.i, 32
  %shl32.i.i.6170 = shl nuw nsw i128 %add139.i, 33
  %shl46.i.i.6177 = shl nuw nsw i128 %shr135.i, 32
  %shl50.i.i.6179 = shl nuw nsw i128 %shr135.i, 33
  %tmp = add nuw nsw i128 %add34.i, %add139.i
  %tmp7527 = shl nuw nsw i128 %tmp, 1
  %add6.i.6145 = add nuw nsw i128 %conv76.i, 1267650600228229401427983728656
  %sub11.i.i.6159 = add nuw nsw i128 %add6.i.6145, %shl50.i.i.6179
  %sub23.i.i.6165 = sub nsw i128 %sub11.i.i.6159, %sub7.i.i.6157
  %add37.i.i.6173 = sub nsw i128 %sub23.i.i.6165, %shl.i.i.6152
  %add52.i.i.6180 = add i128 %add37.i.i.6173, %tmp7527
  %mul54.i.i.6181 = mul nuw nsw i128 %shr135.i, 3
  %shr.i.5993 = lshr i128 %add52.i.i.6180, 64
  %add9.i.6148 = add nuw nsw i128 %shr74.i, 1267650600246676145497398312976
  %sub.i.i.6155 = add nuw nsw i128 %add9.i.6148, %mul54.i.i.6181
  %add19.i.i.6163 = add nuw nsw i128 %sub.i.i.6155, %mul64.i
  %sub41.i.i.6175 = sub nsw i128 %add19.i.i.6163, %shl28.i.i.6168
  %add56.i.i.6182 = sub nsw i128 %sub41.i.i.6175, %add.i.i.6153
  %add.i.5991 = add i128 %add56.i.i.6182, %shl13.i.i.6160
  %add8.i.5994 = add i128 %add.i.5991, %shr.i.5993
  %conv12.i.5995 = and i128 %add52.i.i.6180, 18446744073709551615
  %add13.i.5996 = add nuw nsw i128 %conv12.i.5995, 18446673704965373952
  %shr22.i.6000 = lshr i128 %add8.i.5994, 64
  %conv23.i.6001 = trunc i128 %shr22.i.6000 to i64
  %conv26.i.6002 = and i128 %add8.i.5994, 18446744073709551615
  %sub.i.6003 = sub nsw i128 %conv26.i.6002, %shr22.i.6000
  %shl.i.6004 = shl nuw nsw i128 %shr22.i.6000, 32
  %add32.i.6005 = add nsw i128 %sub.i.6003, %shl.i.6004
  %shr34.i.6006 = lshr i128 %add32.i.6005, 64
  %conv35.i.6007 = trunc i128 %shr34.i.6006 to i64
  %add36.i.6008 = add i64 %conv35.i.6007, %conv23.i.6001
  %conv39.i.6009 = and i128 %add32.i.6005, 18446744073709551615
  %sub43.i.6010 = sub nsw i128 %conv39.i.6009, %shr34.i.6006
  %shl45.i.6011 = shl nuw nsw i128 %shr34.i.6006, 32
  %add47.i.6012 = add nsw i128 %sub43.i.6010, %shl45.i.6011
  %conv48.i.6013 = zext i64 %add36.i.6008 to i128
  %shl52.i.6015 = shl nuw nsw i128 %conv48.i.6013, 32
  %shr56.i.6017 = lshr i128 %add47.i.6012, 64
  %conv57.i.6018 = trunc i128 %shr56.i.6017 to i64
  %sub58.i.6019 = sub i64 0, %conv57.i.6018
  %conv60.i.6020 = trunc i128 %add47.i.6012 to i64
  %and.i.6021 = and i64 %conv60.i.6020, 9223372036854775807
  %neg.i.6022 = sub nsw i64 9223372032559808512, %and.i.6021
  %sub62177.i.6023 = and i64 %neg.i.6022, %conv60.i.6020
  %and66.i.6024 = ashr i64 %sub62177.i.6023, 63
  %or.i.6025 = or i64 %and66.i.6024, %sub58.i.6019
  %conv68.i.6026 = zext i64 %or.i.6025 to i128
  %add3.i.i.6154 = add nuw nsw i128 %conv5.i, 1267650600246676145501693280239
  %sub26.i.i.6167 = sub nsw i128 %add3.i.i.6154, %shr135.i
  %sub30.i.i.6169 = sub nsw i128 %sub26.i.i.6167, %shl46.i.i.6177
  %sub44.i.i.6176 = sub nsw i128 %sub30.i.i.6169, %add139.i
  %sub48.i.i.6178 = sub nsw i128 %sub44.i.i.6176, %shl28.i.i.6168
  %add16.i.5997 = add nsw i128 %sub48.i.i.6178, %add.i.i.6153
  %add50.i.6014 = add i128 %add16.i.5997, %conv48.i.6013
  %sub70.i.6027 = sub i128 %add50.i.6014, %conv68.i.6026
  %and71.i.6028 = and i64 %or.i.6025, 4294967295
  %conv72.i.6029 = zext i64 %and71.i.6028 to i128
  %and75.i.6031 = and i64 %or.i.6025, -4294967295
  %conv76.i.6032 = zext i64 %and75.i.6031 to i128
  %sub78.i.6033 = sub nsw i128 %add47.i.6012, %conv76.i.6032
  %shr80.i.6034 = lshr i128 %sub70.i.6027, 64
  %add9.i.i.6158 = add nuw nsw i128 %add3.i.6142, 1298074214633706907132628377272319
  %sub15.i.i.6161 = add nuw nsw i128 %add9.i.i.6158, %shl32.i.i.6170
  %add34.i.i.6171 = add nsw i128 %sub15.i.i.6161, %sub7.i.i.6157
  %add19.i.5999 = sub nsw i128 %add34.i.i.6171, %shl13.i.i.6160
  %sub54.i.6016 = sub i128 %add19.i.5999, %shl52.i.6015
  %sub74.i.6030 = sub i128 %sub54.i.6016, %conv72.i.6029
  %add84.i.6035 = add i128 %sub74.i.6030, %shr80.i.6034
  %shr90.i.6037 = lshr i128 %add84.i.6035, 64
  %add94.i.6038 = add nuw nsw i128 %add13.i.5996, %shr90.i.6037
  %shr100.i.6040 = lshr i128 %add94.i.6038, 64
  %add104.i.6041 = add nsw i128 %sub78.i.6033, %shr100.i.6040
  %conv2.i.6048 = and i128 %sub70.i.6027, 18446744073709551615
  %mul.i.6049 = mul nuw i128 %conv2.i.6048, %conv.i
  %shr.i.6050 = lshr i128 %mul.i.6049, 64
  %conv5.i.6051 = and i128 %mul.i.6049, 18446744073709551615
  %conv12.i.6054 = and i128 %add84.i.6035, 18446744073709551615
  %mul13.i.6055 = mul nuw i128 %conv12.i.6054, %conv.i
  %shr15.i.6056 = lshr i128 %mul13.i.6055, 64
  %conv17.i.6057 = and i128 %mul13.i.6055, 18446744073709551615
  %mul25.i.6062 = mul nuw i128 %conv2.i.6048, %conv12.i
  %shr27.i.6063 = lshr i128 %mul25.i.6062, 64
  %conv29.i.6064 = and i128 %mul25.i.6062, 18446744073709551615
  %add.i.6058 = add nuw nsw i128 %conv29.i.6064, %shr.i.6050
  %add31.i.6065 = add nuw nsw i128 %add.i.6058, %conv17.i.6057
  %conv38.i.6068 = and i128 %add94.i.6038, 18446744073709551615
  %mul39.i.6069 = mul nuw i128 %conv38.i.6068, %conv.i
  %shr41.i.6070 = lshr i128 %mul39.i.6069, 64
  %conv43.i.6071 = and i128 %mul39.i.6069, 18446744073709551615
  %mul52.i.6074 = mul nuw i128 %conv12.i.6054, %conv12.i
  %shr54.i.6075 = lshr i128 %mul52.i.6074, 64
  %conv56.i.6076 = and i128 %mul52.i.6074, 18446744073709551615
  %mul66.i.6081 = mul nuw i128 %conv2.i.6048, %conv27.i
  %shr68.i.6082 = lshr i128 %mul66.i.6081, 64
  %conv70.i.6083 = and i128 %mul66.i.6081, 18446744073709551615
  %conv79.i.6087 = and i128 %add104.i.6041, 18446744073709551615
  %mul80.i.6088 = mul nuw i128 %conv79.i.6087, %conv.i
  %shr82.i.6089 = lshr i128 %mul80.i.6088, 64
  %conv84.i.6090 = and i128 %mul80.i.6088, 18446744073709551615
  %mul93.i.6093 = mul nuw i128 %conv38.i.6068, %conv12.i
  %shr95.i.6094 = lshr i128 %mul93.i.6093, 64
  %conv97.i.6095 = and i128 %mul93.i.6093, 18446744073709551615
  %mul107.i.6098 = mul nuw i128 %conv12.i.6054, %conv27.i
  %shr109.i.6099 = lshr i128 %mul107.i.6098, 64
  %conv111.i.6100 = and i128 %mul107.i.6098, 18446744073709551615
  %mul121.i.6105 = mul nuw i128 %conv2.i.6048, %conv42.i
  %shr123.i.6106 = lshr i128 %mul121.i.6105, 64
  %conv125.i.6107 = and i128 %mul121.i.6105, 18446744073709551615
  %mul135.i.6110 = mul nuw i128 %conv79.i.6087, %conv12.i
  %shr137.i.6111 = lshr i128 %mul135.i.6110, 64
  %conv139.i.6112 = and i128 %mul135.i.6110, 18446744073709551615
  %mul148.i.6115 = mul nuw i128 %conv38.i.6068, %conv27.i
  %shr150.i.6116 = lshr i128 %mul148.i.6115, 64
  %conv152.i.6117 = and i128 %mul148.i.6115, 18446744073709551615
  %mul162.i.6120 = mul nuw i128 %conv12.i.6054, %conv42.i
  %shr164.i.6121 = lshr i128 %mul162.i.6120, 64
  %conv166.i.6122 = and i128 %mul162.i.6120, 18446744073709551615
  %add102.i.6097 = add nuw nsw i128 %shr109.i.6099, %shr123.i.6106
  %add116.i.6102 = add nuw nsw i128 %add102.i.6097, %conv166.i.6122
  %add130.i.6109 = add nuw nsw i128 %add116.i.6102, %shr95.i.6094
  %add141.i.6113 = add nuw nsw i128 %add130.i.6109, %conv152.i.6117
  %add154.i.6118 = add nuw nsw i128 %add141.i.6113, %shr82.i.6089
  %add168.i.6123 = add nuw nsw i128 %add154.i.6118, %conv139.i.6112
  %mul176.i.6125 = mul nuw i128 %conv79.i.6087, %conv27.i
  %shr178.i.6126 = lshr i128 %mul176.i.6125, 64
  %conv180.i.6127 = and i128 %mul176.i.6125, 18446744073709551615
  %mul189.i.6130 = mul nuw i128 %conv38.i.6068, %conv42.i
  %shr191.i.6131 = lshr i128 %mul189.i.6130, 64
  %conv193.i.6132 = and i128 %mul189.i.6130, 18446744073709551615
  %add157.i.6119 = add nuw nsw i128 %shr150.i.6116, %shr164.i.6121
  %add171.i.6124 = add nuw nsw i128 %add157.i.6119, %conv193.i.6132
  %add182.i.6128 = add nuw nsw i128 %add171.i.6124, %shr137.i.6111
  %add195.i.6133 = add nuw nsw i128 %add182.i.6128, %conv180.i.6127
  %add198.i.6134 = add nuw nsw i128 %shr178.i.6126, %shr191.i.6131
  %mul203.i.6135 = mul nuw i128 %conv79.i.6087, %conv42.i
  %shr205.i.6136 = lshr i128 %mul203.i.6135, 64
  %conv207.i.6137 = and i128 %mul203.i.6135, 18446744073709551615
  %add209.i.6138 = add nuw nsw i128 %add198.i.6134, %conv207.i.6137
  %add3.i.5889 = or i128 %add31.i.6065, 1267650600228229401496703205376
  %shl.i.i.5899 = shl nuw nsw i128 %add195.i.6133, 32
  %add.i.i.5900 = add i128 %add168.i.6123, %shl.i.i.5899
  %sub7.i.i.5904 = sub nsw i128 %add195.i.6133, %shr205.i.6136
  %shl13.i.i.5907 = shl i128 %add168.i.6123, 32
  %shl28.i.i.5915 = shl nuw nsw i128 %add209.i.6138, 32
  %shl32.i.i.5917 = shl nuw nsw i128 %add209.i.6138, 33
  %mul.i.i.5919 = shl nuw nsw i128 %add209.i.6138, 1
  %shl46.i.i.5924 = shl nuw nsw i128 %shr205.i.6136, 32
  %shl50.i.i.5926 = shl nuw nsw i128 %shr205.i.6136, 33
  %add34.i.6066 = add nuw nsw i128 %shr27.i.6063, 1267650600228229401427983728656
  %add45.i.6072 = add nuw nsw i128 %add34.i.6066, %conv70.i.6083
  %add58.i.6077 = add nuw nsw i128 %add45.i.6072, %shr15.i.6056
  %add72.i.6084 = add nuw nsw i128 %add58.i.6077, %conv56.i.6076
  %add6.i.5892 = add nuw nsw i128 %add72.i.6084, %conv43.i.6071
  %sub11.i.i.5906 = add nuw nsw i128 %add6.i.5892, %shl50.i.i.5926
  %sub23.i.i.5912 = add i128 %sub11.i.i.5906, %mul.i.i.5919
  %add37.i.i.5920 = sub i128 %sub23.i.i.5912, %sub7.i.i.5904
  %add52.i.i.5927 = sub i128 %add37.i.i.5920, %shl.i.i.5899
  %mul54.i.i.5928 = mul nuw nsw i128 %shr205.i.6136, 3
  %shr.i.i.5765 = lshr i128 %add52.i.i.5927, 64
  %add75.i.6085 = add nuw nsw i128 %shr68.i.6082, 1267650600246676145497398312976
  %add86.i.6091 = add nuw nsw i128 %add75.i.6085, %conv125.i.6107
  %add99.i.6096 = add nuw nsw i128 %add86.i.6091, %shr54.i.6075
  %add113.i.6101 = add nuw nsw i128 %add99.i.6096, %conv111.i.6100
  %add127.i.6108 = add nuw nsw i128 %add113.i.6101, %shr41.i.6070
  %add9.i.5895 = add nuw nsw i128 %add127.i.6108, %conv97.i.6095
  %sub.i.i.5902 = add i128 %add9.i.5895, %conv84.i.6090
  %add19.i.i.5910 = add i128 %sub.i.i.5902, %mul54.i.i.5928
  %sub41.i.i.5922 = sub i128 %add19.i.i.5910, %shl28.i.i.5915
  %add56.i.i.5929 = sub i128 %sub41.i.i.5922, %add.i.i.5900
  %add.i.i.5763 = add i128 %add56.i.i.5929, %shl13.i.i.5907
  %add8.i.i.5766 = add i128 %add.i.i.5763, %shr.i.i.5765
  %conv12.i.i.5767 = and i128 %add52.i.i.5927, 18446744073709551615
  %add13.i.i.5768 = add nuw nsw i128 %conv12.i.i.5767, 18446673704965373952
  %shr22.i.i.5772 = lshr i128 %add8.i.i.5766, 64
  %conv23.i.i.5773 = trunc i128 %shr22.i.i.5772 to i64
  %conv26.i.i.5774 = and i128 %add8.i.i.5766, 18446744073709551615
  %sub.i.i.5775 = sub nsw i128 %conv26.i.i.5774, %shr22.i.i.5772
  %shl.i.i.5776 = shl nuw nsw i128 %shr22.i.i.5772, 32
  %add32.i.i.5777 = add nsw i128 %sub.i.i.5775, %shl.i.i.5776
  %shr34.i.i.5778 = lshr i128 %add32.i.i.5777, 64
  %conv35.i.i.5779 = trunc i128 %shr34.i.i.5778 to i64
  %add36.i.i.5780 = add i64 %conv35.i.i.5779, %conv23.i.i.5773
  %conv39.i.i.5781 = and i128 %add32.i.i.5777, 18446744073709551615
  %sub43.i.i.5782 = sub nsw i128 %conv39.i.i.5781, %shr34.i.i.5778
  %shl45.i.i.5783 = shl nuw nsw i128 %shr34.i.i.5778, 32
  %add47.i.i.5784 = add nsw i128 %sub43.i.i.5782, %shl45.i.i.5783
  %conv48.i.i.5785 = zext i64 %add36.i.i.5780 to i128
  %shl52.i.i.5787 = shl nuw nsw i128 %conv48.i.i.5785, 32
  %shr56.i.i.5789 = lshr i128 %add47.i.i.5784, 64
  %conv57.i.i.5790 = trunc i128 %shr56.i.i.5789 to i64
  %sub58.i.i.5791 = sub i64 0, %conv57.i.i.5790
  %conv60.i.i.5792 = trunc i128 %add47.i.i.5784 to i64
  %and.i.i.5793 = and i64 %conv60.i.i.5792, 9223372036854775807
  %neg.i.i.5794 = sub nsw i64 9223372032559808512, %and.i.i.5793
  %sub62177.i.i.5795 = and i64 %neg.i.i.5794, %conv60.i.i.5792
  %and66.i.i.5796 = ashr i64 %sub62177.i.i.5795, 63
  %or.i.i.5797 = or i64 %and66.i.i.5796, %sub58.i.i.5791
  %conv68.i.i.5798 = zext i64 %or.i.i.5797 to i128
  %add3.i.i.5901 = add nuw nsw i128 %conv5.i.6051, 1267650600246676145501693280239
  %sub26.i.i.5914 = sub nsw i128 %add3.i.i.5901, %shr205.i.6136
  %sub30.i.i.5916 = sub nsw i128 %sub26.i.i.5914, %shl46.i.i.5924
  %sub44.i.i.5923 = sub nsw i128 %sub30.i.i.5916, %add209.i.6138
  %sub48.i.i.5925 = sub nsw i128 %sub44.i.i.5923, %shl28.i.i.5915
  %add16.i.i.5769 = add i128 %sub48.i.i.5925, %add.i.i.5900
  %add50.i.i.5786 = add i128 %add16.i.i.5769, %conv48.i.i.5785
  %sub70.i.i.5799 = sub i128 %add50.i.i.5786, %conv68.i.i.5798
  %and71.i.i.5800 = and i64 %or.i.i.5797, 4294967295
  %conv72.i.i.5801 = zext i64 %and71.i.i.5800 to i128
  %and75.i.i.5803 = and i64 %or.i.i.5797, -4294967295
  %conv76.i.i.5804 = zext i64 %and75.i.i.5803 to i128
  %sub78.i.i.5805 = sub nsw i128 %add47.i.i.5784, %conv76.i.i.5804
  %shr80.i.i.5806 = lshr i128 %sub70.i.i.5799, 64
  %add9.i.i.5905 = add nuw nsw i128 %add3.i.5889, 1298074214633706907132628377272319
  %sub15.i.i.5908 = add nuw nsw i128 %add9.i.i.5905, %shl32.i.i.5917
  %add34.i.i.5918 = add nsw i128 %sub15.i.i.5908, %sub7.i.i.5904
  %add19.i.i.5771 = sub i128 %add34.i.i.5918, %shl13.i.i.5907
  %sub54.i.i.5788 = sub i128 %add19.i.i.5771, %shl52.i.i.5787
  %sub74.i.i.5802 = sub i128 %sub54.i.i.5788, %conv72.i.i.5801
  %add84.i.i.5807 = add i128 %sub74.i.i.5802, %shr80.i.i.5806
  %shr90.i.i.5809 = lshr i128 %add84.i.i.5807, 64
  %add94.i.i.5810 = add nuw nsw i128 %add13.i.i.5768, %shr90.i.i.5809
  %shr100.i.i.5812 = lshr i128 %add94.i.i.5810, 64
  %add104.i.i.5813 = add nsw i128 %sub78.i.i.5805, %shr100.i.i.5812
  %conv.i.5819 = and i128 %sub70.i.i.5799, 18446744073709551615
  %mul.i.5820 = mul nuw i128 %conv.i.5819, %conv.i.5819
  %shr.i.5821 = lshr i128 %mul.i.5820, 64
  %conv5.i.5822 = and i128 %mul.i.5820, 18446744073709551615
  %conv12.i.5825 = and i128 %add84.i.i.5807, 18446744073709551615
  %mul13.i.5826 = mul nuw i128 %conv12.i.5825, %conv.i.5819
  %shr15.i.5827 = lshr i128 %mul13.i.5826, 64
  %conv17.i.5828 = shl i128 %mul13.i.5826, 1
  %factor.i.5829 = and i128 %conv17.i.5828, 36893488147419103230
  %add21.i.5830 = add nuw nsw i128 %factor.i.5829, %shr.i.5821
  %conv27.i.5833 = and i128 %add94.i.i.5810, 18446744073709551615
  %mul28.i.5834 = mul nuw i128 %conv27.i.5833, %conv.i.5819
  %shr30.i.5835 = lshr i128 %mul28.i.5834, 64
  %conv32.i.5836 = and i128 %mul28.i.5834, 18446744073709551615
  %add34.i.5837 = add nuw nsw i128 %conv32.i.5836, %shr15.i.5827
  %conv42.i.5841 = and i128 %add104.i.i.5813, 18446744073709551615
  %mul43.i.5842 = mul nuw i128 %conv42.i.5841, %conv.i.5819
  %shr45.i.5843 = lshr i128 %mul43.i.5842, 64
  %conv47.i.5844 = and i128 %mul43.i.5842, 18446744073709551615
  %mul56.i.5847 = mul nuw i128 %conv27.i.5833, %conv12.i.5825
  %shr58.i.5848 = lshr i128 %mul56.i.5847, 64
  %conv60.i.5849 = and i128 %mul56.i.5847, 18446744073709551615
  %add49.i.5845 = add nuw nsw i128 %conv60.i.5849, %shr30.i.5835
  %add62.i.5850 = add nuw nsw i128 %add49.i.5845, %conv47.i.5844
  %mul64.i.5851 = shl nuw nsw i128 %add62.i.5850, 1
  %add67.i.5852 = add nuw nsw i128 %shr45.i.5843, %shr58.i.5848
  %mul72.i.5853 = mul nuw i128 %conv12.i.5825, %conv12.i.5825
  %shr74.i.5854 = lshr i128 %mul72.i.5853, 64
  %conv76.i.5855 = and i128 %mul72.i.5853, 18446744073709551615
  %mul86.i.5858 = mul nuw i128 %conv42.i.5841, %conv12.i.5825
  %shr88.i.5859 = lshr i128 %mul86.i.5858, 64
  %conv90.i.5860 = and i128 %mul86.i.5858, 18446744073709551615
  %add92.i.5861 = add nuw nsw i128 %add67.i.5852, %conv90.i.5860
  %mul94.i.5862 = shl nuw nsw i128 %add92.i.5861, 1
  %mul101.i.5864 = mul nuw i128 %conv42.i.5841, %conv27.i.5833
  %shr103.i.5865 = lshr i128 %mul101.i.5864, 64
  %conv105.i.5866 = and i128 %mul101.i.5864, 18446744073709551615
  %add107.i.5867 = add nuw nsw i128 %conv105.i.5866, %shr88.i.5859
  %mul109.i.5868 = shl nuw nsw i128 %add107.i.5867, 1
  %add114.i.5870 = shl nuw nsw i128 %shr103.i.5865, 1
  %mul119.i.5871 = mul nuw i128 %conv27.i.5833, %conv27.i.5833
  %shr121.i.5872 = lshr i128 %mul119.i.5871, 64
  %conv123.i.5873 = and i128 %mul119.i.5871, 18446744073709551615
  %add125.i.5874 = add nuw nsw i128 %mul94.i.5862, %conv123.i.5873
  %add128.i.5875 = add nuw nsw i128 %mul109.i.5868, %shr121.i.5872
  %mul133.i.5876 = mul nuw i128 %conv42.i.5841, %conv42.i.5841
  %shr135.i.5877 = lshr i128 %mul133.i.5876, 64
  %conv137.i.5878 = and i128 %mul133.i.5876, 18446744073709551615
  %add139.i.5879 = add nuw nsw i128 %add114.i.5870, %conv137.i.5878
  %add3.i.5719 = or i128 %add21.i.5830, 1267650600228229401496703205376
  %shl.i.i.5729 = shl nuw nsw i128 %add128.i.5875, 32
  %add.i.i.5730 = add nuw nsw i128 %shl.i.i.5729, %add125.i.5874
  %sub7.i.i.5734 = sub nsw i128 %add128.i.5875, %shr135.i.5877
  %shl13.i.i.5737 = shl nuw nsw i128 %add125.i.5874, 32
  %shl28.i.i.5745 = shl nuw nsw i128 %add139.i.5879, 32
  %shl32.i.i.5747 = shl nuw nsw i128 %add139.i.5879, 33
  %shl46.i.i.5754 = shl nuw nsw i128 %shr135.i.5877, 32
  %shl50.i.i.5756 = shl nuw nsw i128 %shr135.i.5877, 33
  %tmp7528 = add nuw nsw i128 %add34.i.5837, %add139.i.5879
  %tmp7529 = shl nuw nsw i128 %tmp7528, 1
  %add6.i.5722 = add nuw nsw i128 %conv76.i.5855, 1267650600228229401427983728656
  %sub11.i.i.5736 = add nuw nsw i128 %add6.i.5722, %shl50.i.i.5756
  %sub23.i.i.5742 = sub nsw i128 %sub11.i.i.5736, %sub7.i.i.5734
  %add37.i.i.5750 = sub nsw i128 %sub23.i.i.5742, %shl.i.i.5729
  %add52.i.i.5757 = add i128 %add37.i.i.5750, %tmp7529
  %mul54.i.i.5758 = mul nuw nsw i128 %shr135.i.5877, 3
  %shr.i.i.5601 = lshr i128 %add52.i.i.5757, 64
  %add9.i.5725 = add nuw nsw i128 %shr74.i.5854, 1267650600246676145497398312976
  %sub.i.i.5732 = add nuw nsw i128 %add9.i.5725, %mul54.i.i.5758
  %add19.i.i.5740 = add nuw nsw i128 %sub.i.i.5732, %mul64.i.5851
  %sub41.i.i.5752 = sub nsw i128 %add19.i.i.5740, %shl28.i.i.5745
  %add56.i.i.5759 = sub nsw i128 %sub41.i.i.5752, %add.i.i.5730
  %add.i.i.5599 = add i128 %add56.i.i.5759, %shl13.i.i.5737
  %add8.i.i.5602 = add i128 %add.i.i.5599, %shr.i.i.5601
  %conv12.i.i.5603 = and i128 %add52.i.i.5757, 18446744073709551615
  %add13.i.i.5604 = add nuw nsw i128 %conv12.i.i.5603, 18446673704965373952
  %shr22.i.i.5608 = lshr i128 %add8.i.i.5602, 64
  %conv23.i.i.5609 = trunc i128 %shr22.i.i.5608 to i64
  %conv26.i.i.5610 = and i128 %add8.i.i.5602, 18446744073709551615
  %sub.i.i.5611 = sub nsw i128 %conv26.i.i.5610, %shr22.i.i.5608
  %shl.i.i.5612 = shl nuw nsw i128 %shr22.i.i.5608, 32
  %add32.i.i.5613 = add nsw i128 %sub.i.i.5611, %shl.i.i.5612
  %shr34.i.i.5614 = lshr i128 %add32.i.i.5613, 64
  %conv35.i.i.5615 = trunc i128 %shr34.i.i.5614 to i64
  %add36.i.i.5616 = add i64 %conv35.i.i.5615, %conv23.i.i.5609
  %conv39.i.i.5617 = and i128 %add32.i.i.5613, 18446744073709551615
  %sub43.i.i.5618 = sub nsw i128 %conv39.i.i.5617, %shr34.i.i.5614
  %shl45.i.i.5619 = shl nuw nsw i128 %shr34.i.i.5614, 32
  %add47.i.i.5620 = add nsw i128 %sub43.i.i.5618, %shl45.i.i.5619
  %conv48.i.i.5621 = zext i64 %add36.i.i.5616 to i128
  %shl52.i.i.5623 = shl nuw nsw i128 %conv48.i.i.5621, 32
  %shr56.i.i.5625 = lshr i128 %add47.i.i.5620, 64
  %conv57.i.i.5626 = trunc i128 %shr56.i.i.5625 to i64
  %sub58.i.i.5627 = sub i64 0, %conv57.i.i.5626
  %conv60.i.i.5628 = trunc i128 %add47.i.i.5620 to i64
  %and.i.i.5629 = and i64 %conv60.i.i.5628, 9223372036854775807
  %neg.i.i.5630 = sub nsw i64 9223372032559808512, %and.i.i.5629
  %sub62177.i.i.5631 = and i64 %neg.i.i.5630, %conv60.i.i.5628
  %and66.i.i.5632 = ashr i64 %sub62177.i.i.5631, 63
  %or.i.i.5633 = or i64 %and66.i.i.5632, %sub58.i.i.5627
  %conv68.i.i.5634 = zext i64 %or.i.i.5633 to i128
  %add3.i.i.5731 = add nuw nsw i128 %conv5.i.5822, 1267650600246676145501693280239
  %sub26.i.i.5744 = sub nsw i128 %add3.i.i.5731, %shr135.i.5877
  %sub30.i.i.5746 = sub nsw i128 %sub26.i.i.5744, %shl46.i.i.5754
  %sub44.i.i.5753 = sub nsw i128 %sub30.i.i.5746, %add139.i.5879
  %sub48.i.i.5755 = sub nsw i128 %sub44.i.i.5753, %shl28.i.i.5745
  %add16.i.i.5605 = add nsw i128 %sub48.i.i.5755, %add.i.i.5730
  %add50.i.i.5622 = add i128 %add16.i.i.5605, %conv48.i.i.5621
  %sub70.i.i.5635 = sub i128 %add50.i.i.5622, %conv68.i.i.5634
  %and71.i.i.5636 = and i64 %or.i.i.5633, 4294967295
  %conv72.i.i.5637 = zext i64 %and71.i.i.5636 to i128
  %and75.i.i.5639 = and i64 %or.i.i.5633, -4294967295
  %conv76.i.i.5640 = zext i64 %and75.i.i.5639 to i128
  %sub78.i.i.5641 = sub nsw i128 %add47.i.i.5620, %conv76.i.i.5640
  %shr80.i.i.5642 = lshr i128 %sub70.i.i.5635, 64
  %add9.i.i.5735 = add nuw nsw i128 %add3.i.5719, 1298074214633706907132628377272319
  %sub15.i.i.5738 = add nuw nsw i128 %add9.i.i.5735, %shl32.i.i.5747
  %add34.i.i.5748 = add nsw i128 %sub15.i.i.5738, %sub7.i.i.5734
  %add19.i.i.5607 = sub nsw i128 %add34.i.i.5748, %shl13.i.i.5737
  %sub54.i.i.5624 = sub i128 %add19.i.i.5607, %shl52.i.i.5623
  %sub74.i.i.5638 = sub i128 %sub54.i.i.5624, %conv72.i.i.5637
  %add84.i.i.5643 = add i128 %sub74.i.i.5638, %shr80.i.i.5642
  %shr90.i.i.5645 = lshr i128 %add84.i.i.5643, 64
  %add94.i.i.5646 = add nuw nsw i128 %add13.i.i.5604, %shr90.i.i.5645
  %shr100.i.i.5648 = lshr i128 %add94.i.i.5646, 64
  %add104.i.i.5649 = add nsw i128 %sub78.i.i.5641, %shr100.i.i.5648
  %conv.i.5655 = and i128 %sub70.i.i.5635, 18446744073709551615
  %mul.i.5656 = mul nuw i128 %conv.i.5655, %conv.i.5655
  %shr.i.5657 = lshr i128 %mul.i.5656, 64
  %conv5.i.5658 = and i128 %mul.i.5656, 18446744073709551615
  %conv12.i.5661 = and i128 %add84.i.i.5643, 18446744073709551615
  %mul13.i.5662 = mul nuw i128 %conv12.i.5661, %conv.i.5655
  %shr15.i.5663 = lshr i128 %mul13.i.5662, 64
  %conv17.i.5664 = shl i128 %mul13.i.5662, 1
  %factor.i.5665 = and i128 %conv17.i.5664, 36893488147419103230
  %add21.i.5666 = add nuw nsw i128 %factor.i.5665, %shr.i.5657
  %conv27.i.5669 = and i128 %add94.i.i.5646, 18446744073709551615
  %mul28.i.5670 = mul nuw i128 %conv27.i.5669, %conv.i.5655
  %shr30.i.5671 = lshr i128 %mul28.i.5670, 64
  %conv32.i.5672 = and i128 %mul28.i.5670, 18446744073709551615
  %add34.i.5673 = add nuw nsw i128 %conv32.i.5672, %shr15.i.5663
  %conv42.i.5677 = and i128 %add104.i.i.5649, 18446744073709551615
  %mul43.i.5678 = mul nuw i128 %conv42.i.5677, %conv.i.5655
  %shr45.i.5679 = lshr i128 %mul43.i.5678, 64
  %conv47.i.5680 = and i128 %mul43.i.5678, 18446744073709551615
  %mul56.i.5683 = mul nuw i128 %conv27.i.5669, %conv12.i.5661
  %shr58.i.5684 = lshr i128 %mul56.i.5683, 64
  %conv60.i.5685 = and i128 %mul56.i.5683, 18446744073709551615
  %add49.i.5681 = add nuw nsw i128 %conv60.i.5685, %shr30.i.5671
  %add62.i.5686 = add nuw nsw i128 %add49.i.5681, %conv47.i.5680
  %mul64.i.5687 = shl nuw nsw i128 %add62.i.5686, 1
  %add67.i.5688 = add nuw nsw i128 %shr45.i.5679, %shr58.i.5684
  %mul72.i.5689 = mul nuw i128 %conv12.i.5661, %conv12.i.5661
  %shr74.i.5690 = lshr i128 %mul72.i.5689, 64
  %conv76.i.5691 = and i128 %mul72.i.5689, 18446744073709551615
  %mul86.i.5694 = mul nuw i128 %conv42.i.5677, %conv12.i.5661
  %shr88.i.5695 = lshr i128 %mul86.i.5694, 64
  %conv90.i.5696 = and i128 %mul86.i.5694, 18446744073709551615
  %add92.i.5697 = add nuw nsw i128 %add67.i.5688, %conv90.i.5696
  %mul94.i.5698 = shl nuw nsw i128 %add92.i.5697, 1
  %mul101.i.5700 = mul nuw i128 %conv42.i.5677, %conv27.i.5669
  %shr103.i.5701 = lshr i128 %mul101.i.5700, 64
  %conv105.i.5702 = and i128 %mul101.i.5700, 18446744073709551615
  %add107.i.5703 = add nuw nsw i128 %conv105.i.5702, %shr88.i.5695
  %mul109.i.5704 = shl nuw nsw i128 %add107.i.5703, 1
  %add114.i.5706 = shl nuw nsw i128 %shr103.i.5701, 1
  %mul119.i.5707 = mul nuw i128 %conv27.i.5669, %conv27.i.5669
  %shr121.i.5708 = lshr i128 %mul119.i.5707, 64
  %conv123.i.5709 = and i128 %mul119.i.5707, 18446744073709551615
  %add125.i.5710 = add nuw nsw i128 %mul94.i.5698, %conv123.i.5709
  %add128.i.5711 = add nuw nsw i128 %mul109.i.5704, %shr121.i.5708
  %mul133.i.5712 = mul nuw i128 %conv42.i.5677, %conv42.i.5677
  %shr135.i.5713 = lshr i128 %mul133.i.5712, 64
  %conv137.i.5714 = and i128 %mul133.i.5712, 18446744073709551615
  %add139.i.5715 = add nuw nsw i128 %add114.i.5706, %conv137.i.5714
  %add3.i.5555 = or i128 %add21.i.5666, 1267650600228229401496703205376
  %shl.i.i.5565 = shl nuw nsw i128 %add128.i.5711, 32
  %add.i.i.5566 = add nuw nsw i128 %shl.i.i.5565, %add125.i.5710
  %sub7.i.i.5570 = sub nsw i128 %add128.i.5711, %shr135.i.5713
  %shl13.i.i.5573 = shl nuw nsw i128 %add125.i.5710, 32
  %shl28.i.i.5581 = shl nuw nsw i128 %add139.i.5715, 32
  %shl32.i.i.5583 = shl nuw nsw i128 %add139.i.5715, 33
  %shl46.i.i.5590 = shl nuw nsw i128 %shr135.i.5713, 32
  %shl50.i.i.5592 = shl nuw nsw i128 %shr135.i.5713, 33
  %tmp7530 = add nuw nsw i128 %add34.i.5673, %add139.i.5715
  %tmp7531 = shl nuw nsw i128 %tmp7530, 1
  %add6.i.5558 = add nuw nsw i128 %conv76.i.5691, 1267650600228229401427983728656
  %sub11.i.i.5572 = add nuw nsw i128 %add6.i.5558, %shl50.i.i.5592
  %sub23.i.i.5578 = sub nsw i128 %sub11.i.i.5572, %sub7.i.i.5570
  %add37.i.i.5586 = sub nsw i128 %sub23.i.i.5578, %shl.i.i.5565
  %add52.i.i.5593 = add i128 %add37.i.i.5586, %tmp7531
  %mul54.i.i.5594 = mul nuw nsw i128 %shr135.i.5713, 3
  %shr.i.i.5348 = lshr i128 %add52.i.i.5593, 64
  %add9.i.5561 = add nuw nsw i128 %shr74.i.5690, 1267650600246676145497398312976
  %sub.i.i.5568 = add nuw nsw i128 %add9.i.5561, %mul54.i.i.5594
  %add19.i.i.5576 = add nuw nsw i128 %sub.i.i.5568, %mul64.i.5687
  %sub41.i.i.5588 = sub nsw i128 %add19.i.i.5576, %shl28.i.i.5581
  %add56.i.i.5595 = sub nsw i128 %sub41.i.i.5588, %add.i.i.5566
  %add.i.i.5346 = add i128 %add56.i.i.5595, %shl13.i.i.5573
  %add8.i.i.5349 = add i128 %add.i.i.5346, %shr.i.i.5348
  %conv12.i.i.5350 = and i128 %add52.i.i.5593, 18446744073709551615
  %add13.i.i.5351 = add nuw nsw i128 %conv12.i.i.5350, 18446673704965373952
  %shr22.i.i.5355 = lshr i128 %add8.i.i.5349, 64
  %conv23.i.i.5356 = trunc i128 %shr22.i.i.5355 to i64
  %conv26.i.i.5357 = and i128 %add8.i.i.5349, 18446744073709551615
  %sub.i.i.5358 = sub nsw i128 %conv26.i.i.5357, %shr22.i.i.5355
  %shl.i.i.5359 = shl nuw nsw i128 %shr22.i.i.5355, 32
  %add32.i.i.5360 = add nsw i128 %sub.i.i.5358, %shl.i.i.5359
  %shr34.i.i.5361 = lshr i128 %add32.i.i.5360, 64
  %conv35.i.i.5362 = trunc i128 %shr34.i.i.5361 to i64
  %add36.i.i.5363 = add i64 %conv35.i.i.5362, %conv23.i.i.5356
  %conv39.i.i.5364 = and i128 %add32.i.i.5360, 18446744073709551615
  %sub43.i.i.5365 = sub nsw i128 %conv39.i.i.5364, %shr34.i.i.5361
  %shl45.i.i.5366 = shl nuw nsw i128 %shr34.i.i.5361, 32
  %add47.i.i.5367 = add nsw i128 %sub43.i.i.5365, %shl45.i.i.5366
  %conv48.i.i.5368 = zext i64 %add36.i.i.5363 to i128
  %shl52.i.i.5370 = shl nuw nsw i128 %conv48.i.i.5368, 32
  %shr56.i.i.5372 = lshr i128 %add47.i.i.5367, 64
  %conv57.i.i.5373 = trunc i128 %shr56.i.i.5372 to i64
  %sub58.i.i.5374 = sub i64 0, %conv57.i.i.5373
  %conv60.i.i.5375 = trunc i128 %add47.i.i.5367 to i64
  %and.i.i.5376 = and i64 %conv60.i.i.5375, 9223372036854775807
  %neg.i.i.5377 = sub nsw i64 9223372032559808512, %and.i.i.5376
  %sub62177.i.i.5378 = and i64 %neg.i.i.5377, %conv60.i.i.5375
  %and66.i.i.5379 = ashr i64 %sub62177.i.i.5378, 63
  %or.i.i.5380 = or i64 %and66.i.i.5379, %sub58.i.i.5374
  %conv68.i.i.5381 = zext i64 %or.i.i.5380 to i128
  %add3.i.i.5567 = add nuw nsw i128 %conv5.i.5658, 1267650600246676145501693280239
  %sub26.i.i.5580 = sub nsw i128 %add3.i.i.5567, %shr135.i.5713
  %sub30.i.i.5582 = sub nsw i128 %sub26.i.i.5580, %shl46.i.i.5590
  %sub44.i.i.5589 = sub nsw i128 %sub30.i.i.5582, %add139.i.5715
  %sub48.i.i.5591 = sub nsw i128 %sub44.i.i.5589, %shl28.i.i.5581
  %add16.i.i.5352 = add nsw i128 %sub48.i.i.5591, %add.i.i.5566
  %add50.i.i.5369 = add i128 %add16.i.i.5352, %conv48.i.i.5368
  %sub70.i.i.5382 = sub i128 %add50.i.i.5369, %conv68.i.i.5381
  %and71.i.i.5383 = and i64 %or.i.i.5380, 4294967295
  %conv72.i.i.5384 = zext i64 %and71.i.i.5383 to i128
  %and75.i.i.5386 = and i64 %or.i.i.5380, -4294967295
  %conv76.i.i.5387 = zext i64 %and75.i.i.5386 to i128
  %sub78.i.i.5388 = sub nsw i128 %add47.i.i.5367, %conv76.i.i.5387
  %shr80.i.i.5389 = lshr i128 %sub70.i.i.5382, 64
  %add9.i.i.5571 = add nuw nsw i128 %add3.i.5555, 1298074214633706907132628377272319
  %sub15.i.i.5574 = add nuw nsw i128 %add9.i.i.5571, %shl32.i.i.5583
  %add34.i.i.5584 = add nsw i128 %sub15.i.i.5574, %sub7.i.i.5570
  %add19.i.i.5354 = sub nsw i128 %add34.i.i.5584, %shl13.i.i.5573
  %sub54.i.i.5371 = sub i128 %add19.i.i.5354, %shl52.i.i.5370
  %sub74.i.i.5385 = sub i128 %sub54.i.i.5371, %conv72.i.i.5384
  %add84.i.i.5390 = add i128 %sub74.i.i.5385, %shr80.i.i.5389
  %shr90.i.i.5392 = lshr i128 %add84.i.i.5390, 64
  %add94.i.i.5393 = add nuw nsw i128 %add13.i.i.5351, %shr90.i.i.5392
  %shr100.i.i.5395 = lshr i128 %add94.i.i.5393, 64
  %add104.i.i.5396 = add nsw i128 %sub78.i.i.5388, %shr100.i.i.5395
  %conv.i.5460 = and i128 %sub70.i.i.5382, 18446744073709551615
  %mul.i.5462 = mul nuw i128 %conv.i.5460, %conv.i.5819
  %shr.i.5463 = lshr i128 %mul.i.5462, 64
  %conv5.i.5464 = and i128 %mul.i.5462, 18446744073709551615
  %mul13.i.5468 = mul nuw i128 %conv.i.5460, %conv12.i.5825
  %shr15.i.5469 = lshr i128 %mul13.i.5468, 64
  %conv17.i.5470 = and i128 %mul13.i.5468, 18446744073709551615
  %add.i.5471 = add nuw nsw i128 %conv17.i.5470, %shr.i.5463
  %conv22.i.5474 = and i128 %add84.i.i.5390, 18446744073709551615
  %mul25.i.5475 = mul nuw i128 %conv22.i.5474, %conv.i.5819
  %shr27.i.5476 = lshr i128 %mul25.i.5475, 64
  %conv29.i.5477 = and i128 %mul25.i.5475, 18446744073709551615
  %add31.i.5478 = add nuw nsw i128 %add.i.5471, %conv29.i.5477
  %mul39.i.5482 = mul nuw i128 %conv.i.5460, %conv27.i.5833
  %shr41.i.5483 = lshr i128 %mul39.i.5482, 64
  %conv43.i.5484 = and i128 %mul39.i.5482, 18446744073709551615
  %mul52.i.5487 = mul nuw i128 %conv22.i.5474, %conv12.i.5825
  %shr54.i.5488 = lshr i128 %mul52.i.5487, 64
  %conv56.i.5489 = and i128 %mul52.i.5487, 18446744073709551615
  %conv63.i.5493 = and i128 %add94.i.i.5393, 18446744073709551615
  %mul66.i.5494 = mul nuw i128 %conv63.i.5493, %conv.i.5819
  %shr68.i.5495 = lshr i128 %mul66.i.5494, 64
  %conv70.i.5496 = and i128 %mul66.i.5494, 18446744073709551615
  %mul80.i.5501 = mul nuw i128 %conv.i.5460, %conv42.i.5841
  %shr82.i.5502 = lshr i128 %mul80.i.5501, 64
  %conv84.i.5503 = and i128 %mul80.i.5501, 18446744073709551615
  %mul93.i.5506 = mul nuw i128 %conv22.i.5474, %conv27.i.5833
  %shr95.i.5507 = lshr i128 %mul93.i.5506, 64
  %conv97.i.5508 = and i128 %mul93.i.5506, 18446744073709551615
  %add102.i.5510 = add nuw nsw i128 %shr95.i.5507, %shr82.i.5502
  %mul107.i.5511 = mul nuw i128 %conv63.i.5493, %conv12.i.5825
  %shr109.i.5512 = lshr i128 %mul107.i.5511, 64
  %conv111.i.5513 = and i128 %mul107.i.5511, 18446744073709551615
  %conv118.i.5517 = and i128 %add104.i.i.5396, 18446744073709551615
  %mul121.i.5518 = mul nuw i128 %conv118.i.5517, %conv.i.5819
  %shr123.i.5519 = lshr i128 %mul121.i.5518, 64
  %conv125.i.5520 = and i128 %mul121.i.5518, 18446744073709551615
  %mul135.i.5523 = mul nuw i128 %conv22.i.5474, %conv42.i.5841
  %shr137.i.5524 = lshr i128 %mul135.i.5523, 64
  %conv139.i.5525 = and i128 %mul135.i.5523, 18446744073709551615
  %mul148.i.5528 = mul nuw i128 %conv63.i.5493, %conv27.i.5833
  %shr150.i.5529 = lshr i128 %mul148.i.5528, 64
  %conv152.i.5530 = and i128 %mul148.i.5528, 18446744073709551615
  %add157.i.5532 = add nuw nsw i128 %shr150.i.5529, %shr137.i.5524
  %mul162.i.5533 = mul nuw i128 %conv118.i.5517, %conv12.i.5825
  %shr164.i.5534 = lshr i128 %mul162.i.5533, 64
  %conv166.i.5535 = and i128 %mul162.i.5533, 18446744073709551615
  %add116.i.5515 = add nuw nsw i128 %add102.i.5510, %conv139.i.5525
  %add130.i.5522 = add nuw nsw i128 %add116.i.5515, %shr109.i.5512
  %add141.i.5526 = add nuw nsw i128 %add130.i.5522, %conv152.i.5530
  %add154.i.5531 = add nuw nsw i128 %add141.i.5526, %shr123.i.5519
  %add168.i.5536 = add nuw nsw i128 %add154.i.5531, %conv166.i.5535
  %mul176.i.5538 = mul nuw i128 %conv63.i.5493, %conv42.i.5841
  %shr178.i.5539 = lshr i128 %mul176.i.5538, 64
  %conv180.i.5540 = and i128 %mul176.i.5538, 18446744073709551615
  %mul189.i.5543 = mul nuw i128 %conv118.i.5517, %conv27.i.5833
  %shr191.i.5544 = lshr i128 %mul189.i.5543, 64
  %conv193.i.5545 = and i128 %mul189.i.5543, 18446744073709551615
  %add171.i.5537 = add nuw nsw i128 %add157.i.5532, %conv180.i.5540
  %add182.i.5541 = add nuw nsw i128 %add171.i.5537, %shr164.i.5534
  %add195.i.5546 = add nuw nsw i128 %add182.i.5541, %conv193.i.5545
  %add198.i.5547 = add nuw nsw i128 %shr191.i.5544, %shr178.i.5539
  %mul203.i.5548 = mul nuw i128 %conv118.i.5517, %conv42.i.5841
  %shr205.i.5549 = lshr i128 %mul203.i.5548, 64
  %conv207.i.5550 = and i128 %mul203.i.5548, 18446744073709551615
  %add209.i.5551 = add nuw nsw i128 %add198.i.5547, %conv207.i.5550
  %add3.i.5302 = or i128 %add31.i.5478, 1267650600228229401496703205376
  %shl.i.i.5312 = shl nuw nsw i128 %add195.i.5546, 32
  %add.i.i.5313 = add i128 %shl.i.i.5312, %add168.i.5536
  %sub7.i.i.5317 = sub nsw i128 %add195.i.5546, %shr205.i.5549
  %shl13.i.i.5320 = shl i128 %add168.i.5536, 32
  %shl28.i.i.5328 = shl nuw nsw i128 %add209.i.5551, 32
  %shl32.i.i.5330 = shl nuw nsw i128 %add209.i.5551, 33
  %mul.i.i.5332 = shl nuw nsw i128 %add209.i.5551, 1
  %shl46.i.i.5337 = shl nuw nsw i128 %shr205.i.5549, 32
  %shl50.i.i.5339 = shl nuw nsw i128 %shr205.i.5549, 33
  %add34.i.5479 = add nuw nsw i128 %shr15.i.5469, 1267650600228229401427983728656
  %add45.i.5485 = add nuw nsw i128 %add34.i.5479, %conv43.i.5484
  %add58.i.5490 = add nuw nsw i128 %add45.i.5485, %shr27.i.5476
  %add72.i.5497 = add nuw nsw i128 %add58.i.5490, %conv56.i.5489
  %add6.i.5305 = add nuw nsw i128 %add72.i.5497, %conv70.i.5496
  %sub11.i.i.5319 = add nuw nsw i128 %add6.i.5305, %shl50.i.i.5339
  %sub23.i.i.5325 = add i128 %sub11.i.i.5319, %mul.i.i.5332
  %add37.i.i.5333 = sub i128 %sub23.i.i.5325, %sub7.i.i.5317
  %add52.i.i.5340 = sub i128 %add37.i.i.5333, %shl.i.i.5312
  %mul54.i.i.5341 = mul nuw nsw i128 %shr205.i.5549, 3
  %shr.i.i.5178 = lshr i128 %add52.i.i.5340, 64
  %add75.i.5498 = add nuw nsw i128 %shr41.i.5483, 1267650600246676145497398312976
  %add86.i.5504 = add nuw nsw i128 %add75.i.5498, %conv84.i.5503
  %add99.i.5509 = add nuw nsw i128 %add86.i.5504, %shr54.i.5488
  %add113.i.5514 = add nuw nsw i128 %add99.i.5509, %conv97.i.5508
  %add127.i.5521 = add nuw nsw i128 %add113.i.5514, %shr68.i.5495
  %add9.i.5308 = add nuw nsw i128 %add127.i.5521, %conv111.i.5513
  %sub.i.i.5315 = add i128 %add9.i.5308, %conv125.i.5520
  %add19.i.i.5323 = add i128 %sub.i.i.5315, %mul54.i.i.5341
  %sub41.i.i.5335 = sub i128 %add19.i.i.5323, %shl28.i.i.5328
  %add56.i.i.5342 = sub i128 %sub41.i.i.5335, %add.i.i.5313
  %add.i.i.5176 = add i128 %add56.i.i.5342, %shl13.i.i.5320
  %add8.i.i.5179 = add i128 %add.i.i.5176, %shr.i.i.5178
  %conv12.i.i.5180 = and i128 %add52.i.i.5340, 18446744073709551615
  %add13.i.i.5181 = add nuw nsw i128 %conv12.i.i.5180, 18446673704965373952
  %shr22.i.i.5185 = lshr i128 %add8.i.i.5179, 64
  %conv23.i.i.5186 = trunc i128 %shr22.i.i.5185 to i64
  %conv26.i.i.5187 = and i128 %add8.i.i.5179, 18446744073709551615
  %sub.i.i.5188 = sub nsw i128 %conv26.i.i.5187, %shr22.i.i.5185
  %shl.i.i.5189 = shl nuw nsw i128 %shr22.i.i.5185, 32
  %add32.i.i.5190 = add nsw i128 %sub.i.i.5188, %shl.i.i.5189
  %shr34.i.i.5191 = lshr i128 %add32.i.i.5190, 64
  %conv35.i.i.5192 = trunc i128 %shr34.i.i.5191 to i64
  %add36.i.i.5193 = add i64 %conv35.i.i.5192, %conv23.i.i.5186
  %conv39.i.i.5194 = and i128 %add32.i.i.5190, 18446744073709551615
  %sub43.i.i.5195 = sub nsw i128 %conv39.i.i.5194, %shr34.i.i.5191
  %shl45.i.i.5196 = shl nuw nsw i128 %shr34.i.i.5191, 32
  %add47.i.i.5197 = add nsw i128 %sub43.i.i.5195, %shl45.i.i.5196
  %conv48.i.i.5198 = zext i64 %add36.i.i.5193 to i128
  %shl52.i.i.5200 = shl nuw nsw i128 %conv48.i.i.5198, 32
  %shr56.i.i.5202 = lshr i128 %add47.i.i.5197, 64
  %conv57.i.i.5203 = trunc i128 %shr56.i.i.5202 to i64
  %sub58.i.i.5204 = sub i64 0, %conv57.i.i.5203
  %conv60.i.i.5205 = trunc i128 %add47.i.i.5197 to i64
  %and.i.i.5206 = and i64 %conv60.i.i.5205, 9223372036854775807
  %neg.i.i.5207 = sub nsw i64 9223372032559808512, %and.i.i.5206
  %sub62177.i.i.5208 = and i64 %neg.i.i.5207, %conv60.i.i.5205
  %and66.i.i.5209 = ashr i64 %sub62177.i.i.5208, 63
  %or.i.i.5210 = or i64 %and66.i.i.5209, %sub58.i.i.5204
  %conv68.i.i.5211 = zext i64 %or.i.i.5210 to i128
  %add3.i.i.5314 = add nuw nsw i128 %conv5.i.5464, 1267650600246676145501693280239
  %sub26.i.i.5327 = sub nsw i128 %add3.i.i.5314, %shr205.i.5549
  %sub30.i.i.5329 = sub nsw i128 %sub26.i.i.5327, %shl46.i.i.5337
  %sub44.i.i.5336 = sub nsw i128 %sub30.i.i.5329, %add209.i.5551
  %sub48.i.i.5338 = sub nsw i128 %sub44.i.i.5336, %shl28.i.i.5328
  %add16.i.i.5182 = add i128 %sub48.i.i.5338, %add.i.i.5313
  %add50.i.i.5199 = add i128 %add16.i.i.5182, %conv48.i.i.5198
  %sub70.i.i.5212 = sub i128 %add50.i.i.5199, %conv68.i.i.5211
  %and71.i.i.5213 = and i64 %or.i.i.5210, 4294967295
  %conv72.i.i.5214 = zext i64 %and71.i.i.5213 to i128
  %and75.i.i.5216 = and i64 %or.i.i.5210, -4294967295
  %conv76.i.i.5217 = zext i64 %and75.i.i.5216 to i128
  %sub78.i.i.5218 = sub nsw i128 %add47.i.i.5197, %conv76.i.i.5217
  %shr80.i.i.5219 = lshr i128 %sub70.i.i.5212, 64
  %add9.i.i.5318 = add nuw nsw i128 %add3.i.5302, 1298074214633706907132628377272319
  %sub15.i.i.5321 = add nuw nsw i128 %add9.i.i.5318, %shl32.i.i.5330
  %add34.i.i.5331 = add nsw i128 %sub15.i.i.5321, %sub7.i.i.5317
  %add19.i.i.5184 = sub i128 %add34.i.i.5331, %shl13.i.i.5320
  %sub54.i.i.5201 = sub i128 %add19.i.i.5184, %shl52.i.i.5200
  %sub74.i.i.5215 = sub i128 %sub54.i.i.5201, %conv72.i.i.5214
  %add84.i.i.5220 = add i128 %sub74.i.i.5215, %shr80.i.i.5219
  %shr90.i.i.5222 = lshr i128 %add84.i.i.5220, 64
  %add94.i.i.5223 = add nuw nsw i128 %add13.i.i.5181, %shr90.i.i.5222
  %shr100.i.i.5225 = lshr i128 %add94.i.i.5223, 64
  %add104.i.i.5226 = add nsw i128 %sub78.i.i.5218, %shr100.i.i.5225
  %conv.i.5232 = and i128 %sub70.i.i.5212, 18446744073709551615
  %mul.i.5233 = mul nuw i128 %conv.i.5232, %conv.i.5232
  %shr.i.5234 = lshr i128 %mul.i.5233, 64
  %conv5.i.5235 = and i128 %mul.i.5233, 18446744073709551615
  %conv12.i.5238 = and i128 %add84.i.i.5220, 18446744073709551615
  %mul13.i.5239 = mul nuw i128 %conv12.i.5238, %conv.i.5232
  %shr15.i.5240 = lshr i128 %mul13.i.5239, 64
  %conv17.i.5241 = shl i128 %mul13.i.5239, 1
  %factor.i.5242 = and i128 %conv17.i.5241, 36893488147419103230
  %add21.i.5243 = add nuw nsw i128 %factor.i.5242, %shr.i.5234
  %conv27.i.5246 = and i128 %add94.i.i.5223, 18446744073709551615
  %mul28.i.5247 = mul nuw i128 %conv27.i.5246, %conv.i.5232
  %shr30.i.5248 = lshr i128 %mul28.i.5247, 64
  %conv32.i.5249 = and i128 %mul28.i.5247, 18446744073709551615
  %add34.i.5250 = add nuw nsw i128 %conv32.i.5249, %shr15.i.5240
  %conv42.i.5254 = and i128 %add104.i.i.5226, 18446744073709551615
  %mul43.i.5255 = mul nuw i128 %conv42.i.5254, %conv.i.5232
  %shr45.i.5256 = lshr i128 %mul43.i.5255, 64
  %conv47.i.5257 = and i128 %mul43.i.5255, 18446744073709551615
  %mul56.i.5260 = mul nuw i128 %conv27.i.5246, %conv12.i.5238
  %shr58.i.5261 = lshr i128 %mul56.i.5260, 64
  %conv60.i.5262 = and i128 %mul56.i.5260, 18446744073709551615
  %add49.i.5258 = add nuw nsw i128 %conv60.i.5262, %shr30.i.5248
  %add62.i.5263 = add nuw nsw i128 %add49.i.5258, %conv47.i.5257
  %mul64.i.5264 = shl nuw nsw i128 %add62.i.5263, 1
  %add67.i.5265 = add nuw nsw i128 %shr45.i.5256, %shr58.i.5261
  %mul72.i.5266 = mul nuw i128 %conv12.i.5238, %conv12.i.5238
  %shr74.i.5267 = lshr i128 %mul72.i.5266, 64
  %conv76.i.5268 = and i128 %mul72.i.5266, 18446744073709551615
  %mul86.i.5271 = mul nuw i128 %conv42.i.5254, %conv12.i.5238
  %shr88.i.5272 = lshr i128 %mul86.i.5271, 64
  %conv90.i.5273 = and i128 %mul86.i.5271, 18446744073709551615
  %add92.i.5274 = add nuw nsw i128 %add67.i.5265, %conv90.i.5273
  %mul94.i.5275 = shl nuw nsw i128 %add92.i.5274, 1
  %mul101.i.5277 = mul nuw i128 %conv42.i.5254, %conv27.i.5246
  %shr103.i.5278 = lshr i128 %mul101.i.5277, 64
  %conv105.i.5279 = and i128 %mul101.i.5277, 18446744073709551615
  %add107.i.5280 = add nuw nsw i128 %conv105.i.5279, %shr88.i.5272
  %mul109.i.5281 = shl nuw nsw i128 %add107.i.5280, 1
  %add114.i.5283 = shl nuw nsw i128 %shr103.i.5278, 1
  %mul119.i.5284 = mul nuw i128 %conv27.i.5246, %conv27.i.5246
  %shr121.i.5285 = lshr i128 %mul119.i.5284, 64
  %conv123.i.5286 = and i128 %mul119.i.5284, 18446744073709551615
  %add125.i.5287 = add nuw nsw i128 %mul94.i.5275, %conv123.i.5286
  %add128.i.5288 = add nuw nsw i128 %mul109.i.5281, %shr121.i.5285
  %mul133.i.5289 = mul nuw i128 %conv42.i.5254, %conv42.i.5254
  %shr135.i.5290 = lshr i128 %mul133.i.5289, 64
  %conv137.i.5291 = and i128 %mul133.i.5289, 18446744073709551615
  %add139.i.5292 = add nuw nsw i128 %add114.i.5283, %conv137.i.5291
  %add3.i.5132 = or i128 %add21.i.5243, 1267650600228229401496703205376
  %shl.i.i.5142 = shl nuw nsw i128 %add128.i.5288, 32
  %add.i.i.5143 = add nuw nsw i128 %shl.i.i.5142, %add125.i.5287
  %sub7.i.i.5147 = sub nsw i128 %add128.i.5288, %shr135.i.5290
  %shl13.i.i.5150 = shl nuw nsw i128 %add125.i.5287, 32
  %shl28.i.i.5158 = shl nuw nsw i128 %add139.i.5292, 32
  %shl32.i.i.5160 = shl nuw nsw i128 %add139.i.5292, 33
  %shl46.i.i.5167 = shl nuw nsw i128 %shr135.i.5290, 32
  %shl50.i.i.5169 = shl nuw nsw i128 %shr135.i.5290, 33
  %tmp7532 = add nuw nsw i128 %add34.i.5250, %add139.i.5292
  %tmp7533 = shl nuw nsw i128 %tmp7532, 1
  %add6.i.5135 = add nuw nsw i128 %conv76.i.5268, 1267650600228229401427983728656
  %sub11.i.i.5149 = add nuw nsw i128 %add6.i.5135, %shl50.i.i.5169
  %sub23.i.i.5155 = sub nsw i128 %sub11.i.i.5149, %sub7.i.i.5147
  %add37.i.i.5163 = sub nsw i128 %sub23.i.i.5155, %shl.i.i.5142
  %add52.i.i.5170 = add i128 %add37.i.i.5163, %tmp7533
  %mul54.i.i.5171 = mul nuw nsw i128 %shr135.i.5290, 3
  %shr.i.i.5014 = lshr i128 %add52.i.i.5170, 64
  %add9.i.5138 = add nuw nsw i128 %shr74.i.5267, 1267650600246676145497398312976
  %sub.i.i.5145 = add nuw nsw i128 %add9.i.5138, %mul54.i.i.5171
  %add19.i.i.5153 = add nuw nsw i128 %sub.i.i.5145, %mul64.i.5264
  %sub41.i.i.5165 = sub nsw i128 %add19.i.i.5153, %shl28.i.i.5158
  %add56.i.i.5172 = sub nsw i128 %sub41.i.i.5165, %add.i.i.5143
  %add.i.i.5012 = add i128 %add56.i.i.5172, %shl13.i.i.5150
  %add8.i.i.5015 = add i128 %add.i.i.5012, %shr.i.i.5014
  %conv12.i.i.5016 = and i128 %add52.i.i.5170, 18446744073709551615
  %add13.i.i.5017 = add nuw nsw i128 %conv12.i.i.5016, 18446673704965373952
  %shr22.i.i.5021 = lshr i128 %add8.i.i.5015, 64
  %conv23.i.i.5022 = trunc i128 %shr22.i.i.5021 to i64
  %conv26.i.i.5023 = and i128 %add8.i.i.5015, 18446744073709551615
  %sub.i.i.5024 = sub nsw i128 %conv26.i.i.5023, %shr22.i.i.5021
  %shl.i.i.5025 = shl nuw nsw i128 %shr22.i.i.5021, 32
  %add32.i.i.5026 = add nsw i128 %sub.i.i.5024, %shl.i.i.5025
  %shr34.i.i.5027 = lshr i128 %add32.i.i.5026, 64
  %conv35.i.i.5028 = trunc i128 %shr34.i.i.5027 to i64
  %add36.i.i.5029 = add i64 %conv35.i.i.5028, %conv23.i.i.5022
  %conv39.i.i.5030 = and i128 %add32.i.i.5026, 18446744073709551615
  %sub43.i.i.5031 = sub nsw i128 %conv39.i.i.5030, %shr34.i.i.5027
  %shl45.i.i.5032 = shl nuw nsw i128 %shr34.i.i.5027, 32
  %add47.i.i.5033 = add nsw i128 %sub43.i.i.5031, %shl45.i.i.5032
  %conv48.i.i.5034 = zext i64 %add36.i.i.5029 to i128
  %shl52.i.i.5036 = shl nuw nsw i128 %conv48.i.i.5034, 32
  %shr56.i.i.5038 = lshr i128 %add47.i.i.5033, 64
  %conv57.i.i.5039 = trunc i128 %shr56.i.i.5038 to i64
  %sub58.i.i.5040 = sub i64 0, %conv57.i.i.5039
  %conv60.i.i.5041 = trunc i128 %add47.i.i.5033 to i64
  %and.i.i.5042 = and i64 %conv60.i.i.5041, 9223372036854775807
  %neg.i.i.5043 = sub nsw i64 9223372032559808512, %and.i.i.5042
  %sub62177.i.i.5044 = and i64 %neg.i.i.5043, %conv60.i.i.5041
  %and66.i.i.5045 = ashr i64 %sub62177.i.i.5044, 63
  %or.i.i.5046 = or i64 %and66.i.i.5045, %sub58.i.i.5040
  %conv68.i.i.5047 = zext i64 %or.i.i.5046 to i128
  %add3.i.i.5144 = add nuw nsw i128 %conv5.i.5235, 1267650600246676145501693280239
  %sub26.i.i.5157 = sub nsw i128 %add3.i.i.5144, %shr135.i.5290
  %sub30.i.i.5159 = sub nsw i128 %sub26.i.i.5157, %shl46.i.i.5167
  %sub44.i.i.5166 = sub nsw i128 %sub30.i.i.5159, %add139.i.5292
  %sub48.i.i.5168 = sub nsw i128 %sub44.i.i.5166, %shl28.i.i.5158
  %add16.i.i.5018 = add nsw i128 %sub48.i.i.5168, %add.i.i.5143
  %add50.i.i.5035 = add i128 %add16.i.i.5018, %conv48.i.i.5034
  %sub70.i.i.5048 = sub i128 %add50.i.i.5035, %conv68.i.i.5047
  %and71.i.i.5049 = and i64 %or.i.i.5046, 4294967295
  %conv72.i.i.5050 = zext i64 %and71.i.i.5049 to i128
  %and75.i.i.5052 = and i64 %or.i.i.5046, -4294967295
  %conv76.i.i.5053 = zext i64 %and75.i.i.5052 to i128
  %sub78.i.i.5054 = sub nsw i128 %add47.i.i.5033, %conv76.i.i.5053
  %shr80.i.i.5055 = lshr i128 %sub70.i.i.5048, 64
  %add9.i.i.5148 = add nuw nsw i128 %add3.i.5132, 1298074214633706907132628377272319
  %sub15.i.i.5151 = add nuw nsw i128 %add9.i.i.5148, %shl32.i.i.5160
  %add34.i.i.5161 = add nsw i128 %sub15.i.i.5151, %sub7.i.i.5147
  %add19.i.i.5020 = sub nsw i128 %add34.i.i.5161, %shl13.i.i.5150
  %sub54.i.i.5037 = sub i128 %add19.i.i.5020, %shl52.i.i.5036
  %sub74.i.i.5051 = sub i128 %sub54.i.i.5037, %conv72.i.i.5050
  %add84.i.i.5056 = add i128 %sub74.i.i.5051, %shr80.i.i.5055
  %shr90.i.i.5058 = lshr i128 %add84.i.i.5056, 64
  %add94.i.i.5059 = add nuw nsw i128 %add13.i.i.5017, %shr90.i.i.5058
  %shr100.i.i.5061 = lshr i128 %add94.i.i.5059, 64
  %add104.i.i.5062 = add nsw i128 %sub78.i.i.5054, %shr100.i.i.5061
  %conv.i.5068 = and i128 %sub70.i.i.5048, 18446744073709551615
  %mul.i.5069 = mul nuw i128 %conv.i.5068, %conv.i.5068
  %shr.i.5070 = lshr i128 %mul.i.5069, 64
  %conv5.i.5071 = and i128 %mul.i.5069, 18446744073709551615
  %conv12.i.5074 = and i128 %add84.i.i.5056, 18446744073709551615
  %mul13.i.5075 = mul nuw i128 %conv12.i.5074, %conv.i.5068
  %shr15.i.5076 = lshr i128 %mul13.i.5075, 64
  %conv17.i.5077 = shl i128 %mul13.i.5075, 1
  %factor.i.5078 = and i128 %conv17.i.5077, 36893488147419103230
  %add21.i.5079 = add nuw nsw i128 %factor.i.5078, %shr.i.5070
  %conv27.i.5082 = and i128 %add94.i.i.5059, 18446744073709551615
  %mul28.i.5083 = mul nuw i128 %conv27.i.5082, %conv.i.5068
  %shr30.i.5084 = lshr i128 %mul28.i.5083, 64
  %conv32.i.5085 = and i128 %mul28.i.5083, 18446744073709551615
  %add34.i.5086 = add nuw nsw i128 %conv32.i.5085, %shr15.i.5076
  %conv42.i.5090 = and i128 %add104.i.i.5062, 18446744073709551615
  %mul43.i.5091 = mul nuw i128 %conv42.i.5090, %conv.i.5068
  %shr45.i.5092 = lshr i128 %mul43.i.5091, 64
  %conv47.i.5093 = and i128 %mul43.i.5091, 18446744073709551615
  %mul56.i.5096 = mul nuw i128 %conv27.i.5082, %conv12.i.5074
  %shr58.i.5097 = lshr i128 %mul56.i.5096, 64
  %conv60.i.5098 = and i128 %mul56.i.5096, 18446744073709551615
  %add49.i.5094 = add nuw nsw i128 %conv60.i.5098, %shr30.i.5084
  %add62.i.5099 = add nuw nsw i128 %add49.i.5094, %conv47.i.5093
  %mul64.i.5100 = shl nuw nsw i128 %add62.i.5099, 1
  %add67.i.5101 = add nuw nsw i128 %shr45.i.5092, %shr58.i.5097
  %mul72.i.5102 = mul nuw i128 %conv12.i.5074, %conv12.i.5074
  %shr74.i.5103 = lshr i128 %mul72.i.5102, 64
  %conv76.i.5104 = and i128 %mul72.i.5102, 18446744073709551615
  %mul86.i.5107 = mul nuw i128 %conv42.i.5090, %conv12.i.5074
  %shr88.i.5108 = lshr i128 %mul86.i.5107, 64
  %conv90.i.5109 = and i128 %mul86.i.5107, 18446744073709551615
  %add92.i.5110 = add nuw nsw i128 %add67.i.5101, %conv90.i.5109
  %mul94.i.5111 = shl nuw nsw i128 %add92.i.5110, 1
  %mul101.i.5113 = mul nuw i128 %conv42.i.5090, %conv27.i.5082
  %shr103.i.5114 = lshr i128 %mul101.i.5113, 64
  %conv105.i.5115 = and i128 %mul101.i.5113, 18446744073709551615
  %add107.i.5116 = add nuw nsw i128 %conv105.i.5115, %shr88.i.5108
  %mul109.i.5117 = shl nuw nsw i128 %add107.i.5116, 1
  %add114.i.5119 = shl nuw nsw i128 %shr103.i.5114, 1
  %mul119.i.5120 = mul nuw i128 %conv27.i.5082, %conv27.i.5082
  %shr121.i.5121 = lshr i128 %mul119.i.5120, 64
  %conv123.i.5122 = and i128 %mul119.i.5120, 18446744073709551615
  %add125.i.5123 = add nuw nsw i128 %mul94.i.5111, %conv123.i.5122
  %add128.i.5124 = add nuw nsw i128 %mul109.i.5117, %shr121.i.5121
  %mul133.i.5125 = mul nuw i128 %conv42.i.5090, %conv42.i.5090
  %shr135.i.5126 = lshr i128 %mul133.i.5125, 64
  %conv137.i.5127 = and i128 %mul133.i.5125, 18446744073709551615
  %add139.i.5128 = add nuw nsw i128 %add114.i.5119, %conv137.i.5127
  %add3.i.4968 = or i128 %add21.i.5079, 1267650600228229401496703205376
  %shl.i.i.4978 = shl nuw nsw i128 %add128.i.5124, 32
  %add.i.i.4979 = add nuw nsw i128 %shl.i.i.4978, %add125.i.5123
  %sub7.i.i.4983 = sub nsw i128 %add128.i.5124, %shr135.i.5126
  %shl13.i.i.4986 = shl nuw nsw i128 %add125.i.5123, 32
  %shl28.i.i.4994 = shl nuw nsw i128 %add139.i.5128, 32
  %shl32.i.i.4996 = shl nuw nsw i128 %add139.i.5128, 33
  %shl46.i.i.5003 = shl nuw nsw i128 %shr135.i.5126, 32
  %shl50.i.i.5005 = shl nuw nsw i128 %shr135.i.5126, 33
  %tmp7534 = add nuw nsw i128 %add34.i.5086, %add139.i.5128
  %tmp7535 = shl nuw nsw i128 %tmp7534, 1
  %add6.i.4971 = add nuw nsw i128 %conv76.i.5104, 1267650600228229401427983728656
  %sub11.i.i.4985 = add nuw nsw i128 %add6.i.4971, %shl50.i.i.5005
  %sub23.i.i.4991 = sub nsw i128 %sub11.i.i.4985, %sub7.i.i.4983
  %add37.i.i.4999 = sub nsw i128 %sub23.i.i.4991, %shl.i.i.4978
  %add52.i.i.5006 = add i128 %add37.i.i.4999, %tmp7535
  %mul54.i.i.5007 = mul nuw nsw i128 %shr135.i.5126, 3
  %shr.i.i.4850 = lshr i128 %add52.i.i.5006, 64
  %add9.i.4974 = add nuw nsw i128 %shr74.i.5103, 1267650600246676145497398312976
  %sub.i.i.4981 = add nuw nsw i128 %add9.i.4974, %mul54.i.i.5007
  %add19.i.i.4989 = add nuw nsw i128 %sub.i.i.4981, %mul64.i.5100
  %sub41.i.i.5001 = sub nsw i128 %add19.i.i.4989, %shl28.i.i.4994
  %add56.i.i.5008 = sub nsw i128 %sub41.i.i.5001, %add.i.i.4979
  %add.i.i.4848 = add i128 %add56.i.i.5008, %shl13.i.i.4986
  %add8.i.i.4851 = add i128 %add.i.i.4848, %shr.i.i.4850
  %conv12.i.i.4852 = and i128 %add52.i.i.5006, 18446744073709551615
  %add13.i.i.4853 = add nuw nsw i128 %conv12.i.i.4852, 18446673704965373952
  %shr22.i.i.4857 = lshr i128 %add8.i.i.4851, 64
  %conv23.i.i.4858 = trunc i128 %shr22.i.i.4857 to i64
  %conv26.i.i.4859 = and i128 %add8.i.i.4851, 18446744073709551615
  %sub.i.i.4860 = sub nsw i128 %conv26.i.i.4859, %shr22.i.i.4857
  %shl.i.i.4861 = shl nuw nsw i128 %shr22.i.i.4857, 32
  %add32.i.i.4862 = add nsw i128 %sub.i.i.4860, %shl.i.i.4861
  %shr34.i.i.4863 = lshr i128 %add32.i.i.4862, 64
  %conv35.i.i.4864 = trunc i128 %shr34.i.i.4863 to i64
  %add36.i.i.4865 = add i64 %conv35.i.i.4864, %conv23.i.i.4858
  %conv39.i.i.4866 = and i128 %add32.i.i.4862, 18446744073709551615
  %sub43.i.i.4867 = sub nsw i128 %conv39.i.i.4866, %shr34.i.i.4863
  %shl45.i.i.4868 = shl nuw nsw i128 %shr34.i.i.4863, 32
  %add47.i.i.4869 = add nsw i128 %sub43.i.i.4867, %shl45.i.i.4868
  %conv48.i.i.4870 = zext i64 %add36.i.i.4865 to i128
  %shl52.i.i.4872 = shl nuw nsw i128 %conv48.i.i.4870, 32
  %shr56.i.i.4874 = lshr i128 %add47.i.i.4869, 64
  %conv57.i.i.4875 = trunc i128 %shr56.i.i.4874 to i64
  %sub58.i.i.4876 = sub i64 0, %conv57.i.i.4875
  %conv60.i.i.4877 = trunc i128 %add47.i.i.4869 to i64
  %and.i.i.4878 = and i64 %conv60.i.i.4877, 9223372036854775807
  %neg.i.i.4879 = sub nsw i64 9223372032559808512, %and.i.i.4878
  %sub62177.i.i.4880 = and i64 %neg.i.i.4879, %conv60.i.i.4877
  %and66.i.i.4881 = ashr i64 %sub62177.i.i.4880, 63
  %or.i.i.4882 = or i64 %and66.i.i.4881, %sub58.i.i.4876
  %conv68.i.i.4883 = zext i64 %or.i.i.4882 to i128
  %add3.i.i.4980 = add nuw nsw i128 %conv5.i.5071, 1267650600246676145501693280239
  %sub26.i.i.4993 = sub nsw i128 %add3.i.i.4980, %shr135.i.5126
  %sub30.i.i.4995 = sub nsw i128 %sub26.i.i.4993, %shl46.i.i.5003
  %sub44.i.i.5002 = sub nsw i128 %sub30.i.i.4995, %add139.i.5128
  %sub48.i.i.5004 = sub nsw i128 %sub44.i.i.5002, %shl28.i.i.4994
  %add16.i.i.4854 = add nsw i128 %sub48.i.i.5004, %add.i.i.4979
  %add50.i.i.4871 = add i128 %add16.i.i.4854, %conv48.i.i.4870
  %sub70.i.i.4884 = sub i128 %add50.i.i.4871, %conv68.i.i.4883
  %and71.i.i.4885 = and i64 %or.i.i.4882, 4294967295
  %conv72.i.i.4886 = zext i64 %and71.i.i.4885 to i128
  %and75.i.i.4888 = and i64 %or.i.i.4882, -4294967295
  %conv76.i.i.4889 = zext i64 %and75.i.i.4888 to i128
  %sub78.i.i.4890 = sub nsw i128 %add47.i.i.4869, %conv76.i.i.4889
  %shr80.i.i.4891 = lshr i128 %sub70.i.i.4884, 64
  %add9.i.i.4984 = add nuw nsw i128 %add3.i.4968, 1298074214633706907132628377272319
  %sub15.i.i.4987 = add nuw nsw i128 %add9.i.i.4984, %shl32.i.i.4996
  %add34.i.i.4997 = add nsw i128 %sub15.i.i.4987, %sub7.i.i.4983
  %add19.i.i.4856 = sub nsw i128 %add34.i.i.4997, %shl13.i.i.4986
  %sub54.i.i.4873 = sub i128 %add19.i.i.4856, %shl52.i.i.4872
  %sub74.i.i.4887 = sub i128 %sub54.i.i.4873, %conv72.i.i.4886
  %add84.i.i.4892 = add i128 %sub74.i.i.4887, %shr80.i.i.4891
  %shr90.i.i.4894 = lshr i128 %add84.i.i.4892, 64
  %add94.i.i.4895 = add nuw nsw i128 %add13.i.i.4853, %shr90.i.i.4894
  %shr100.i.i.4897 = lshr i128 %add94.i.i.4895, 64
  %add104.i.i.4898 = add nsw i128 %sub78.i.i.4890, %shr100.i.i.4897
  %conv.i.4904 = and i128 %sub70.i.i.4884, 18446744073709551615
  %mul.i.4905 = mul nuw i128 %conv.i.4904, %conv.i.4904
  %shr.i.4906 = lshr i128 %mul.i.4905, 64
  %conv5.i.4907 = and i128 %mul.i.4905, 18446744073709551615
  %conv12.i.4910 = and i128 %add84.i.i.4892, 18446744073709551615
  %mul13.i.4911 = mul nuw i128 %conv12.i.4910, %conv.i.4904
  %shr15.i.4912 = lshr i128 %mul13.i.4911, 64
  %conv17.i.4913 = shl i128 %mul13.i.4911, 1
  %factor.i.4914 = and i128 %conv17.i.4913, 36893488147419103230
  %add21.i.4915 = add nuw nsw i128 %factor.i.4914, %shr.i.4906
  %conv27.i.4918 = and i128 %add94.i.i.4895, 18446744073709551615
  %mul28.i.4919 = mul nuw i128 %conv27.i.4918, %conv.i.4904
  %shr30.i.4920 = lshr i128 %mul28.i.4919, 64
  %conv32.i.4921 = and i128 %mul28.i.4919, 18446744073709551615
  %add34.i.4922 = add nuw nsw i128 %conv32.i.4921, %shr15.i.4912
  %conv42.i.4926 = and i128 %add104.i.i.4898, 18446744073709551615
  %mul43.i.4927 = mul nuw i128 %conv42.i.4926, %conv.i.4904
  %shr45.i.4928 = lshr i128 %mul43.i.4927, 64
  %conv47.i.4929 = and i128 %mul43.i.4927, 18446744073709551615
  %mul56.i.4932 = mul nuw i128 %conv27.i.4918, %conv12.i.4910
  %shr58.i.4933 = lshr i128 %mul56.i.4932, 64
  %conv60.i.4934 = and i128 %mul56.i.4932, 18446744073709551615
  %add49.i.4930 = add nuw nsw i128 %conv60.i.4934, %shr30.i.4920
  %add62.i.4935 = add nuw nsw i128 %add49.i.4930, %conv47.i.4929
  %mul64.i.4936 = shl nuw nsw i128 %add62.i.4935, 1
  %add67.i.4937 = add nuw nsw i128 %shr45.i.4928, %shr58.i.4933
  %mul72.i.4938 = mul nuw i128 %conv12.i.4910, %conv12.i.4910
  %shr74.i.4939 = lshr i128 %mul72.i.4938, 64
  %conv76.i.4940 = and i128 %mul72.i.4938, 18446744073709551615
  %mul86.i.4943 = mul nuw i128 %conv42.i.4926, %conv12.i.4910
  %shr88.i.4944 = lshr i128 %mul86.i.4943, 64
  %conv90.i.4945 = and i128 %mul86.i.4943, 18446744073709551615
  %add92.i.4946 = add nuw nsw i128 %add67.i.4937, %conv90.i.4945
  %mul94.i.4947 = shl nuw nsw i128 %add92.i.4946, 1
  %mul101.i.4949 = mul nuw i128 %conv42.i.4926, %conv27.i.4918
  %shr103.i.4950 = lshr i128 %mul101.i.4949, 64
  %conv105.i.4951 = and i128 %mul101.i.4949, 18446744073709551615
  %add107.i.4952 = add nuw nsw i128 %conv105.i.4951, %shr88.i.4944
  %mul109.i.4953 = shl nuw nsw i128 %add107.i.4952, 1
  %add114.i.4955 = shl nuw nsw i128 %shr103.i.4950, 1
  %mul119.i.4956 = mul nuw i128 %conv27.i.4918, %conv27.i.4918
  %shr121.i.4957 = lshr i128 %mul119.i.4956, 64
  %conv123.i.4958 = and i128 %mul119.i.4956, 18446744073709551615
  %add125.i.4959 = add nuw nsw i128 %mul94.i.4947, %conv123.i.4958
  %add128.i.4960 = add nuw nsw i128 %mul109.i.4953, %shr121.i.4957
  %mul133.i.4961 = mul nuw i128 %conv42.i.4926, %conv42.i.4926
  %shr135.i.4962 = lshr i128 %mul133.i.4961, 64
  %conv137.i.4963 = and i128 %mul133.i.4961, 18446744073709551615
  %add139.i.4964 = add nuw nsw i128 %add114.i.4955, %conv137.i.4963
  %add3.i.4804 = or i128 %add21.i.4915, 1267650600228229401496703205376
  %shl.i.i.4814 = shl nuw nsw i128 %add128.i.4960, 32
  %add.i.i.4815 = add nuw nsw i128 %shl.i.i.4814, %add125.i.4959
  %sub7.i.i.4819 = sub nsw i128 %add128.i.4960, %shr135.i.4962
  %shl13.i.i.4822 = shl nuw nsw i128 %add125.i.4959, 32
  %shl28.i.i.4830 = shl nuw nsw i128 %add139.i.4964, 32
  %shl32.i.i.4832 = shl nuw nsw i128 %add139.i.4964, 33
  %shl46.i.i.4839 = shl nuw nsw i128 %shr135.i.4962, 32
  %shl50.i.i.4841 = shl nuw nsw i128 %shr135.i.4962, 33
  %tmp7536 = add nuw nsw i128 %add34.i.4922, %add139.i.4964
  %tmp7537 = shl nuw nsw i128 %tmp7536, 1
  %add6.i.4807 = add nuw nsw i128 %conv76.i.4940, 1267650600228229401427983728656
  %sub11.i.i.4821 = add nuw nsw i128 %add6.i.4807, %shl50.i.i.4841
  %sub23.i.i.4827 = sub nsw i128 %sub11.i.i.4821, %sub7.i.i.4819
  %add37.i.i.4835 = sub nsw i128 %sub23.i.i.4827, %shl.i.i.4814
  %add52.i.i.4842 = add i128 %add37.i.i.4835, %tmp7537
  %mul54.i.i.4843 = mul nuw nsw i128 %shr135.i.4962, 3
  %shr.i.i.4686 = lshr i128 %add52.i.i.4842, 64
  %add9.i.4810 = add nuw nsw i128 %shr74.i.4939, 1267650600246676145497398312976
  %sub.i.i.4817 = add nuw nsw i128 %add9.i.4810, %mul54.i.i.4843
  %add19.i.i.4825 = add nuw nsw i128 %sub.i.i.4817, %mul64.i.4936
  %sub41.i.i.4837 = sub nsw i128 %add19.i.i.4825, %shl28.i.i.4830
  %add56.i.i.4844 = sub nsw i128 %sub41.i.i.4837, %add.i.i.4815
  %add.i.i.4684 = add i128 %add56.i.i.4844, %shl13.i.i.4822
  %add8.i.i.4687 = add i128 %add.i.i.4684, %shr.i.i.4686
  %conv12.i.i.4688 = and i128 %add52.i.i.4842, 18446744073709551615
  %add13.i.i.4689 = add nuw nsw i128 %conv12.i.i.4688, 18446673704965373952
  %shr22.i.i.4693 = lshr i128 %add8.i.i.4687, 64
  %conv23.i.i.4694 = trunc i128 %shr22.i.i.4693 to i64
  %conv26.i.i.4695 = and i128 %add8.i.i.4687, 18446744073709551615
  %sub.i.i.4696 = sub nsw i128 %conv26.i.i.4695, %shr22.i.i.4693
  %shl.i.i.4697 = shl nuw nsw i128 %shr22.i.i.4693, 32
  %add32.i.i.4698 = add nsw i128 %sub.i.i.4696, %shl.i.i.4697
  %shr34.i.i.4699 = lshr i128 %add32.i.i.4698, 64
  %conv35.i.i.4700 = trunc i128 %shr34.i.i.4699 to i64
  %add36.i.i.4701 = add i64 %conv35.i.i.4700, %conv23.i.i.4694
  %conv39.i.i.4702 = and i128 %add32.i.i.4698, 18446744073709551615
  %sub43.i.i.4703 = sub nsw i128 %conv39.i.i.4702, %shr34.i.i.4699
  %shl45.i.i.4704 = shl nuw nsw i128 %shr34.i.i.4699, 32
  %add47.i.i.4705 = add nsw i128 %sub43.i.i.4703, %shl45.i.i.4704
  %conv48.i.i.4706 = zext i64 %add36.i.i.4701 to i128
  %shl52.i.i.4708 = shl nuw nsw i128 %conv48.i.i.4706, 32
  %shr56.i.i.4710 = lshr i128 %add47.i.i.4705, 64
  %conv57.i.i.4711 = trunc i128 %shr56.i.i.4710 to i64
  %sub58.i.i.4712 = sub i64 0, %conv57.i.i.4711
  %conv60.i.i.4713 = trunc i128 %add47.i.i.4705 to i64
  %and.i.i.4714 = and i64 %conv60.i.i.4713, 9223372036854775807
  %neg.i.i.4715 = sub nsw i64 9223372032559808512, %and.i.i.4714
  %sub62177.i.i.4716 = and i64 %neg.i.i.4715, %conv60.i.i.4713
  %and66.i.i.4717 = ashr i64 %sub62177.i.i.4716, 63
  %or.i.i.4718 = or i64 %and66.i.i.4717, %sub58.i.i.4712
  %conv68.i.i.4719 = zext i64 %or.i.i.4718 to i128
  %add3.i.i.4816 = add nuw nsw i128 %conv5.i.4907, 1267650600246676145501693280239
  %sub26.i.i.4829 = sub nsw i128 %add3.i.i.4816, %shr135.i.4962
  %sub30.i.i.4831 = sub nsw i128 %sub26.i.i.4829, %shl46.i.i.4839
  %sub44.i.i.4838 = sub nsw i128 %sub30.i.i.4831, %add139.i.4964
  %sub48.i.i.4840 = sub nsw i128 %sub44.i.i.4838, %shl28.i.i.4830
  %add16.i.i.4690 = add nsw i128 %sub48.i.i.4840, %add.i.i.4815
  %add50.i.i.4707 = add i128 %add16.i.i.4690, %conv48.i.i.4706
  %sub70.i.i.4720 = sub i128 %add50.i.i.4707, %conv68.i.i.4719
  %and71.i.i.4721 = and i64 %or.i.i.4718, 4294967295
  %conv72.i.i.4722 = zext i64 %and71.i.i.4721 to i128
  %and75.i.i.4724 = and i64 %or.i.i.4718, -4294967295
  %conv76.i.i.4725 = zext i64 %and75.i.i.4724 to i128
  %sub78.i.i.4726 = sub nsw i128 %add47.i.i.4705, %conv76.i.i.4725
  %shr80.i.i.4727 = lshr i128 %sub70.i.i.4720, 64
  %add9.i.i.4820 = add nuw nsw i128 %add3.i.4804, 1298074214633706907132628377272319
  %sub15.i.i.4823 = add nuw nsw i128 %add9.i.i.4820, %shl32.i.i.4832
  %add34.i.i.4833 = add nsw i128 %sub15.i.i.4823, %sub7.i.i.4819
  %add19.i.i.4692 = sub nsw i128 %add34.i.i.4833, %shl13.i.i.4822
  %sub54.i.i.4709 = sub i128 %add19.i.i.4692, %shl52.i.i.4708
  %sub74.i.i.4723 = sub i128 %sub54.i.i.4709, %conv72.i.i.4722
  %add84.i.i.4728 = add i128 %sub74.i.i.4723, %shr80.i.i.4727
  %shr90.i.i.4730 = lshr i128 %add84.i.i.4728, 64
  %add94.i.i.4731 = add nuw nsw i128 %add13.i.i.4689, %shr90.i.i.4730
  %shr100.i.i.4733 = lshr i128 %add94.i.i.4731, 64
  %add104.i.i.4734 = add nsw i128 %sub78.i.i.4726, %shr100.i.i.4733
  %conv.i.4740 = and i128 %sub70.i.i.4720, 18446744073709551615
  %mul.i.4741 = mul nuw i128 %conv.i.4740, %conv.i.4740
  %shr.i.4742 = lshr i128 %mul.i.4741, 64
  %conv5.i.4743 = and i128 %mul.i.4741, 18446744073709551615
  %conv12.i.4746 = and i128 %add84.i.i.4728, 18446744073709551615
  %mul13.i.4747 = mul nuw i128 %conv12.i.4746, %conv.i.4740
  %shr15.i.4748 = lshr i128 %mul13.i.4747, 64
  %conv17.i.4749 = shl i128 %mul13.i.4747, 1
  %factor.i.4750 = and i128 %conv17.i.4749, 36893488147419103230
  %add21.i.4751 = add nuw nsw i128 %factor.i.4750, %shr.i.4742
  %conv27.i.4754 = and i128 %add94.i.i.4731, 18446744073709551615
  %mul28.i.4755 = mul nuw i128 %conv27.i.4754, %conv.i.4740
  %shr30.i.4756 = lshr i128 %mul28.i.4755, 64
  %conv32.i.4757 = and i128 %mul28.i.4755, 18446744073709551615
  %add34.i.4758 = add nuw nsw i128 %conv32.i.4757, %shr15.i.4748
  %conv42.i.4762 = and i128 %add104.i.i.4734, 18446744073709551615
  %mul43.i.4763 = mul nuw i128 %conv42.i.4762, %conv.i.4740
  %shr45.i.4764 = lshr i128 %mul43.i.4763, 64
  %conv47.i.4765 = and i128 %mul43.i.4763, 18446744073709551615
  %mul56.i.4768 = mul nuw i128 %conv27.i.4754, %conv12.i.4746
  %shr58.i.4769 = lshr i128 %mul56.i.4768, 64
  %conv60.i.4770 = and i128 %mul56.i.4768, 18446744073709551615
  %add49.i.4766 = add nuw nsw i128 %conv60.i.4770, %shr30.i.4756
  %add62.i.4771 = add nuw nsw i128 %add49.i.4766, %conv47.i.4765
  %mul64.i.4772 = shl nuw nsw i128 %add62.i.4771, 1
  %add67.i.4773 = add nuw nsw i128 %shr45.i.4764, %shr58.i.4769
  %mul72.i.4774 = mul nuw i128 %conv12.i.4746, %conv12.i.4746
  %shr74.i.4775 = lshr i128 %mul72.i.4774, 64
  %conv76.i.4776 = and i128 %mul72.i.4774, 18446744073709551615
  %mul86.i.4779 = mul nuw i128 %conv42.i.4762, %conv12.i.4746
  %shr88.i.4780 = lshr i128 %mul86.i.4779, 64
  %conv90.i.4781 = and i128 %mul86.i.4779, 18446744073709551615
  %add92.i.4782 = add nuw nsw i128 %add67.i.4773, %conv90.i.4781
  %mul94.i.4783 = shl nuw nsw i128 %add92.i.4782, 1
  %mul101.i.4785 = mul nuw i128 %conv42.i.4762, %conv27.i.4754
  %shr103.i.4786 = lshr i128 %mul101.i.4785, 64
  %conv105.i.4787 = and i128 %mul101.i.4785, 18446744073709551615
  %add107.i.4788 = add nuw nsw i128 %conv105.i.4787, %shr88.i.4780
  %mul109.i.4789 = shl nuw nsw i128 %add107.i.4788, 1
  %add114.i.4791 = shl nuw nsw i128 %shr103.i.4786, 1
  %mul119.i.4792 = mul nuw i128 %conv27.i.4754, %conv27.i.4754
  %shr121.i.4793 = lshr i128 %mul119.i.4792, 64
  %conv123.i.4794 = and i128 %mul119.i.4792, 18446744073709551615
  %add125.i.4795 = add nuw nsw i128 %mul94.i.4783, %conv123.i.4794
  %add128.i.4796 = add nuw nsw i128 %mul109.i.4789, %shr121.i.4793
  %mul133.i.4797 = mul nuw i128 %conv42.i.4762, %conv42.i.4762
  %shr135.i.4798 = lshr i128 %mul133.i.4797, 64
  %conv137.i.4799 = and i128 %mul133.i.4797, 18446744073709551615
  %add139.i.4800 = add nuw nsw i128 %add114.i.4791, %conv137.i.4799
  %add3.i.4640 = or i128 %add21.i.4751, 1267650600228229401496703205376
  %shl.i.i.4650 = shl nuw nsw i128 %add128.i.4796, 32
  %add.i.i.4651 = add nuw nsw i128 %shl.i.i.4650, %add125.i.4795
  %sub7.i.i.4655 = sub nsw i128 %add128.i.4796, %shr135.i.4798
  %shl13.i.i.4658 = shl nuw nsw i128 %add125.i.4795, 32
  %shl28.i.i.4666 = shl nuw nsw i128 %add139.i.4800, 32
  %shl32.i.i.4668 = shl nuw nsw i128 %add139.i.4800, 33
  %shl46.i.i.4675 = shl nuw nsw i128 %shr135.i.4798, 32
  %shl50.i.i.4677 = shl nuw nsw i128 %shr135.i.4798, 33
  %tmp7538 = add nuw nsw i128 %add34.i.4758, %add139.i.4800
  %tmp7539 = shl nuw nsw i128 %tmp7538, 1
  %add6.i.4643 = add nuw nsw i128 %conv76.i.4776, 1267650600228229401427983728656
  %sub11.i.i.4657 = add nuw nsw i128 %add6.i.4643, %shl50.i.i.4677
  %sub23.i.i.4663 = sub nsw i128 %sub11.i.i.4657, %sub7.i.i.4655
  %add37.i.i.4671 = sub nsw i128 %sub23.i.i.4663, %shl.i.i.4650
  %add52.i.i.4678 = add i128 %add37.i.i.4671, %tmp7539
  %mul54.i.i.4679 = mul nuw nsw i128 %shr135.i.4798, 3
  %shr.i.i.4433 = lshr i128 %add52.i.i.4678, 64
  %add9.i.4646 = add nuw nsw i128 %shr74.i.4775, 1267650600246676145497398312976
  %sub.i.i.4653 = add nuw nsw i128 %add9.i.4646, %mul54.i.i.4679
  %add19.i.i.4661 = add nuw nsw i128 %sub.i.i.4653, %mul64.i.4772
  %sub41.i.i.4673 = sub nsw i128 %add19.i.i.4661, %shl28.i.i.4666
  %add56.i.i.4680 = sub nsw i128 %sub41.i.i.4673, %add.i.i.4651
  %add.i.i.4431 = add i128 %add56.i.i.4680, %shl13.i.i.4658
  %add8.i.i.4434 = add i128 %add.i.i.4431, %shr.i.i.4433
  %conv12.i.i.4435 = and i128 %add52.i.i.4678, 18446744073709551615
  %add13.i.i.4436 = add nuw nsw i128 %conv12.i.i.4435, 18446673704965373952
  %shr22.i.i.4440 = lshr i128 %add8.i.i.4434, 64
  %conv23.i.i.4441 = trunc i128 %shr22.i.i.4440 to i64
  %conv26.i.i.4442 = and i128 %add8.i.i.4434, 18446744073709551615
  %sub.i.i.4443 = sub nsw i128 %conv26.i.i.4442, %shr22.i.i.4440
  %shl.i.i.4444 = shl nuw nsw i128 %shr22.i.i.4440, 32
  %add32.i.i.4445 = add nsw i128 %sub.i.i.4443, %shl.i.i.4444
  %shr34.i.i.4446 = lshr i128 %add32.i.i.4445, 64
  %conv35.i.i.4447 = trunc i128 %shr34.i.i.4446 to i64
  %add36.i.i.4448 = add i64 %conv35.i.i.4447, %conv23.i.i.4441
  %conv39.i.i.4449 = and i128 %add32.i.i.4445, 18446744073709551615
  %sub43.i.i.4450 = sub nsw i128 %conv39.i.i.4449, %shr34.i.i.4446
  %shl45.i.i.4451 = shl nuw nsw i128 %shr34.i.i.4446, 32
  %add47.i.i.4452 = add nsw i128 %sub43.i.i.4450, %shl45.i.i.4451
  %conv48.i.i.4453 = zext i64 %add36.i.i.4448 to i128
  %shl52.i.i.4455 = shl nuw nsw i128 %conv48.i.i.4453, 32
  %shr56.i.i.4457 = lshr i128 %add47.i.i.4452, 64
  %conv57.i.i.4458 = trunc i128 %shr56.i.i.4457 to i64
  %sub58.i.i.4459 = sub i64 0, %conv57.i.i.4458
  %conv60.i.i.4460 = trunc i128 %add47.i.i.4452 to i64
  %and.i.i.4461 = and i64 %conv60.i.i.4460, 9223372036854775807
  %neg.i.i.4462 = sub nsw i64 9223372032559808512, %and.i.i.4461
  %sub62177.i.i.4463 = and i64 %neg.i.i.4462, %conv60.i.i.4460
  %and66.i.i.4464 = ashr i64 %sub62177.i.i.4463, 63
  %or.i.i.4465 = or i64 %and66.i.i.4464, %sub58.i.i.4459
  %conv68.i.i.4466 = zext i64 %or.i.i.4465 to i128
  %add3.i.i.4652 = add nuw nsw i128 %conv5.i.4743, 1267650600246676145501693280239
  %sub26.i.i.4665 = sub nsw i128 %add3.i.i.4652, %shr135.i.4798
  %sub30.i.i.4667 = sub nsw i128 %sub26.i.i.4665, %shl46.i.i.4675
  %sub44.i.i.4674 = sub nsw i128 %sub30.i.i.4667, %add139.i.4800
  %sub48.i.i.4676 = sub nsw i128 %sub44.i.i.4674, %shl28.i.i.4666
  %add16.i.i.4437 = add nsw i128 %sub48.i.i.4676, %add.i.i.4651
  %add50.i.i.4454 = add i128 %add16.i.i.4437, %conv48.i.i.4453
  %sub70.i.i.4467 = sub i128 %add50.i.i.4454, %conv68.i.i.4466
  %and71.i.i.4468 = and i64 %or.i.i.4465, 4294967295
  %conv72.i.i.4469 = zext i64 %and71.i.i.4468 to i128
  %and75.i.i.4471 = and i64 %or.i.i.4465, -4294967295
  %conv76.i.i.4472 = zext i64 %and75.i.i.4471 to i128
  %sub78.i.i.4473 = sub nsw i128 %add47.i.i.4452, %conv76.i.i.4472
  %shr80.i.i.4474 = lshr i128 %sub70.i.i.4467, 64
  %add9.i.i.4656 = add nuw nsw i128 %add3.i.4640, 1298074214633706907132628377272319
  %sub15.i.i.4659 = add nuw nsw i128 %add9.i.i.4656, %shl32.i.i.4668
  %add34.i.i.4669 = add nsw i128 %sub15.i.i.4659, %sub7.i.i.4655
  %add19.i.i.4439 = sub nsw i128 %add34.i.i.4669, %shl13.i.i.4658
  %sub54.i.i.4456 = sub i128 %add19.i.i.4439, %shl52.i.i.4455
  %sub74.i.i.4470 = sub i128 %sub54.i.i.4456, %conv72.i.i.4469
  %add84.i.i.4475 = add i128 %sub74.i.i.4470, %shr80.i.i.4474
  %shr90.i.i.4477 = lshr i128 %add84.i.i.4475, 64
  %add94.i.i.4478 = add nuw nsw i128 %add13.i.i.4436, %shr90.i.i.4477
  %shr100.i.i.4480 = lshr i128 %add94.i.i.4478, 64
  %add104.i.i.4481 = add nsw i128 %sub78.i.i.4473, %shr100.i.i.4480
  %conv.i.4545 = and i128 %sub70.i.i.4467, 18446744073709551615
  %mul.i.4547 = mul nuw i128 %conv.i.4545, %conv.i.5232
  %shr.i.4548 = lshr i128 %mul.i.4547, 64
  %conv5.i.4549 = and i128 %mul.i.4547, 18446744073709551615
  %mul13.i.4553 = mul nuw i128 %conv.i.4545, %conv12.i.5238
  %shr15.i.4554 = lshr i128 %mul13.i.4553, 64
  %conv17.i.4555 = and i128 %mul13.i.4553, 18446744073709551615
  %add.i.4556 = add nuw nsw i128 %conv17.i.4555, %shr.i.4548
  %conv22.i.4559 = and i128 %add84.i.i.4475, 18446744073709551615
  %mul25.i.4560 = mul nuw i128 %conv22.i.4559, %conv.i.5232
  %shr27.i.4561 = lshr i128 %mul25.i.4560, 64
  %conv29.i.4562 = and i128 %mul25.i.4560, 18446744073709551615
  %add31.i.4563 = add nuw nsw i128 %add.i.4556, %conv29.i.4562
  %mul39.i.4567 = mul nuw i128 %conv.i.4545, %conv27.i.5246
  %shr41.i.4568 = lshr i128 %mul39.i.4567, 64
  %conv43.i.4569 = and i128 %mul39.i.4567, 18446744073709551615
  %mul52.i.4572 = mul nuw i128 %conv22.i.4559, %conv12.i.5238
  %shr54.i.4573 = lshr i128 %mul52.i.4572, 64
  %conv56.i.4574 = and i128 %mul52.i.4572, 18446744073709551615
  %conv63.i.4578 = and i128 %add94.i.i.4478, 18446744073709551615
  %mul66.i.4579 = mul nuw i128 %conv63.i.4578, %conv.i.5232
  %shr68.i.4580 = lshr i128 %mul66.i.4579, 64
  %conv70.i.4581 = and i128 %mul66.i.4579, 18446744073709551615
  %mul80.i.4586 = mul nuw i128 %conv.i.4545, %conv42.i.5254
  %shr82.i.4587 = lshr i128 %mul80.i.4586, 64
  %conv84.i.4588 = and i128 %mul80.i.4586, 18446744073709551615
  %mul93.i.4591 = mul nuw i128 %conv22.i.4559, %conv27.i.5246
  %shr95.i.4592 = lshr i128 %mul93.i.4591, 64
  %conv97.i.4593 = and i128 %mul93.i.4591, 18446744073709551615
  %add102.i.4595 = add nuw nsw i128 %shr95.i.4592, %shr82.i.4587
  %mul107.i.4596 = mul nuw i128 %conv63.i.4578, %conv12.i.5238
  %shr109.i.4597 = lshr i128 %mul107.i.4596, 64
  %conv111.i.4598 = and i128 %mul107.i.4596, 18446744073709551615
  %conv118.i.4602 = and i128 %add104.i.i.4481, 18446744073709551615
  %mul121.i.4603 = mul nuw i128 %conv118.i.4602, %conv.i.5232
  %shr123.i.4604 = lshr i128 %mul121.i.4603, 64
  %conv125.i.4605 = and i128 %mul121.i.4603, 18446744073709551615
  %mul135.i.4608 = mul nuw i128 %conv22.i.4559, %conv42.i.5254
  %shr137.i.4609 = lshr i128 %mul135.i.4608, 64
  %conv139.i.4610 = and i128 %mul135.i.4608, 18446744073709551615
  %mul148.i.4613 = mul nuw i128 %conv63.i.4578, %conv27.i.5246
  %shr150.i.4614 = lshr i128 %mul148.i.4613, 64
  %conv152.i.4615 = and i128 %mul148.i.4613, 18446744073709551615
  %add157.i.4617 = add nuw nsw i128 %shr150.i.4614, %shr137.i.4609
  %mul162.i.4618 = mul nuw i128 %conv118.i.4602, %conv12.i.5238
  %shr164.i.4619 = lshr i128 %mul162.i.4618, 64
  %conv166.i.4620 = and i128 %mul162.i.4618, 18446744073709551615
  %add116.i.4600 = add nuw nsw i128 %add102.i.4595, %conv139.i.4610
  %add130.i.4607 = add nuw nsw i128 %add116.i.4600, %shr109.i.4597
  %add141.i.4611 = add nuw nsw i128 %add130.i.4607, %conv152.i.4615
  %add154.i.4616 = add nuw nsw i128 %add141.i.4611, %shr123.i.4604
  %add168.i.4621 = add nuw nsw i128 %add154.i.4616, %conv166.i.4620
  %mul176.i.4623 = mul nuw i128 %conv63.i.4578, %conv42.i.5254
  %shr178.i.4624 = lshr i128 %mul176.i.4623, 64
  %conv180.i.4625 = and i128 %mul176.i.4623, 18446744073709551615
  %mul189.i.4628 = mul nuw i128 %conv118.i.4602, %conv27.i.5246
  %shr191.i.4629 = lshr i128 %mul189.i.4628, 64
  %conv193.i.4630 = and i128 %mul189.i.4628, 18446744073709551615
  %add171.i.4622 = add nuw nsw i128 %add157.i.4617, %conv180.i.4625
  %add182.i.4626 = add nuw nsw i128 %add171.i.4622, %shr164.i.4619
  %add195.i.4631 = add nuw nsw i128 %add182.i.4626, %conv193.i.4630
  %add198.i.4632 = add nuw nsw i128 %shr191.i.4629, %shr178.i.4624
  %mul203.i.4633 = mul nuw i128 %conv118.i.4602, %conv42.i.5254
  %shr205.i.4634 = lshr i128 %mul203.i.4633, 64
  %conv207.i.4635 = and i128 %mul203.i.4633, 18446744073709551615
  %add209.i.4636 = add nuw nsw i128 %add198.i.4632, %conv207.i.4635
  %add.i.4385 = add nuw nsw i128 %conv5.i.4549, 1267650600228229401427983728624
  %add3.i.4387 = or i128 %add31.i.4563, 1267650600228229401496703205376
  %shl.i.i.4397 = shl nuw nsw i128 %add195.i.4631, 32
  %add.i.i.4398 = add i128 %shl.i.i.4397, %add168.i.4621
  %sub7.i.i.4402 = sub nsw i128 %add195.i.4631, %shr205.i.4634
  %shl13.i.i.4405 = shl i128 %add168.i.4621, 32
  %shl28.i.i.4413 = shl nuw nsw i128 %add209.i.4636, 32
  %shl32.i.i.4415 = shl nuw nsw i128 %add209.i.4636, 33
  %add9.i.i.4403 = add nuw nsw i128 %shl32.i.i.4415, %add3.i.4387
  %sub15.i.i.4406 = add nsw i128 %add9.i.i.4403, %sub7.i.i.4402
  %add34.i.i.4416 = sub i128 %sub15.i.i.4406, %shl13.i.i.4405
  %mul.i.i.4417 = shl nuw nsw i128 %add209.i.4636, 1
  %shl46.i.i.4422 = shl nuw nsw i128 %shr205.i.4634, 32
  %add3.i.i.4399 = sub nsw i128 %add.i.4385, %shr205.i.4634
  %sub26.i.i.4412 = sub nsw i128 %add3.i.i.4399, %shl46.i.i.4422
  %sub30.i.i.4414 = sub nsw i128 %sub26.i.i.4412, %add209.i.4636
  %sub44.i.i.4421 = sub nsw i128 %sub30.i.i.4414, %shl28.i.i.4413
  %sub48.i.i.4423 = add i128 %sub44.i.i.4421, %add.i.i.4398
  %shl50.i.i.4424 = shl nuw nsw i128 %shr205.i.4634, 33
  %add34.i.4564 = add nuw nsw i128 %shr15.i.4554, 1267650600228229401427983728656
  %add45.i.4570 = add nuw nsw i128 %add34.i.4564, %conv43.i.4569
  %add58.i.4575 = add nuw nsw i128 %add45.i.4570, %shr27.i.4561
  %add72.i.4582 = add nuw nsw i128 %add58.i.4575, %conv56.i.4574
  %add6.i.4390 = add nuw nsw i128 %add72.i.4582, %conv70.i.4581
  %sub11.i.i.4404 = add nuw nsw i128 %add6.i.4390, %shl50.i.i.4424
  %sub23.i.i.4410 = add i128 %sub11.i.i.4404, %mul.i.i.4417
  %add37.i.i.4418 = sub i128 %sub23.i.i.4410, %sub7.i.i.4402
  %add52.i.i.4425 = sub i128 %add37.i.i.4418, %shl.i.i.4397
  %mul54.i.i.4426 = mul nuw nsw i128 %shr205.i.4634, 3
  %add61.i.4576 = add nuw nsw i128 %shr41.i.4568, 1267650600228229401427983728656
  %add75.i.4583 = add nuw nsw i128 %add61.i.4576, %conv84.i.4588
  %add86.i.4589 = add nuw nsw i128 %add75.i.4583, %shr54.i.4573
  %add99.i.4594 = add nuw nsw i128 %add86.i.4589, %conv97.i.4593
  %add113.i.4599 = add nuw nsw i128 %add99.i.4594, %shr68.i.4580
  %add127.i.4606 = add nuw nsw i128 %add113.i.4599, %conv111.i.4598
  %add9.i.4393 = add i128 %add127.i.4606, %conv125.i.4605
  %sub.i.i.4400 = add i128 %add9.i.4393, %mul54.i.i.4426
  %add19.i.i.4408 = sub i128 %sub.i.i.4400, %shl28.i.i.4413
  %sub41.i.i.4420 = sub i128 %add19.i.i.4408, %add.i.i.4398
  %add56.i.i.4427 = add i128 %sub41.i.i.4420, %shl13.i.i.4405
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %sub.i.i.51457525 = phi i128 [ %add56.i.i.4427, %entry ], [ %add56.i.i.4257, %for.body ]
  %add52.i.i.34097522 = phi i128 [ %add52.i.i.4425, %entry ], [ %add52.i.i.4255, %for.body ]
  %sub15.i.i.42367515 = phi i128 [ %add34.i.i.4416, %entry ], [ %add34.i.i.4246, %for.body ]
  %sub26.i.i.49937514 = phi i128 [ %sub48.i.i.4423, %entry ], [ %sub48.i.i.4253, %for.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %add.i.i.4261 = add i128 %sub.i.i.51457525, 18446744069414584320
  %shr.i.i.4263 = lshr i128 %add52.i.i.34097522, 64
  %add8.i.i.4264 = add i128 %add.i.i.4261, %shr.i.i.4263
  %conv12.i.i.4265 = and i128 %add52.i.i.34097522, 18446744073709551615
  %add13.i.i.4266 = add nuw nsw i128 %conv12.i.i.4265, 18446673704965373952
  %add16.i.i.4267 = add i128 %sub26.i.i.49937514, 18446744073709551615
  %add19.i.i.4269 = add i128 %sub15.i.i.42367515, 1298074214633706907132628377272319
  %shr22.i.i.4270 = lshr i128 %add8.i.i.4264, 64
  %conv23.i.i.4271 = trunc i128 %shr22.i.i.4270 to i64
  %conv26.i.i.4272 = and i128 %add8.i.i.4264, 18446744073709551615
  %sub.i.i.4273 = sub nsw i128 %conv26.i.i.4272, %shr22.i.i.4270
  %shl.i.i.4274 = shl nuw nsw i128 %shr22.i.i.4270, 32
  %add32.i.i.4275 = add nsw i128 %sub.i.i.4273, %shl.i.i.4274
  %shr34.i.i.4276 = lshr i128 %add32.i.i.4275, 64
  %conv35.i.i.4277 = trunc i128 %shr34.i.i.4276 to i64
  %add36.i.i.4278 = add i64 %conv35.i.i.4277, %conv23.i.i.4271
  %conv39.i.i.4279 = and i128 %add32.i.i.4275, 18446744073709551615
  %sub43.i.i.4280 = sub nsw i128 %conv39.i.i.4279, %shr34.i.i.4276
  %shl45.i.i.4281 = shl nuw nsw i128 %shr34.i.i.4276, 32
  %add47.i.i.4282 = add nsw i128 %sub43.i.i.4280, %shl45.i.i.4281
  %conv48.i.i.4283 = zext i64 %add36.i.i.4278 to i128
  %add50.i.i.4284 = add i128 %add16.i.i.4267, %conv48.i.i.4283
  %shl52.i.i.4285 = shl nuw nsw i128 %conv48.i.i.4283, 32
  %sub54.i.i.4286 = sub i128 %add19.i.i.4269, %shl52.i.i.4285
  %shr56.i.i.4287 = lshr i128 %add47.i.i.4282, 64
  %conv57.i.i.4288 = trunc i128 %shr56.i.i.4287 to i64
  %sub58.i.i.4289 = sub i64 0, %conv57.i.i.4288
  %conv60.i.i.4290 = trunc i128 %add47.i.i.4282 to i64
  %and.i.i.4291 = and i64 %conv60.i.i.4290, 9223372036854775807
  %neg.i.i.4292 = sub nsw i64 9223372032559808512, %and.i.i.4291
  %sub62177.i.i.4293 = and i64 %neg.i.i.4292, %conv60.i.i.4290
  %and66.i.i.4294 = ashr i64 %sub62177.i.i.4293, 63
  %or.i.i.4295 = or i64 %and66.i.i.4294, %sub58.i.i.4289
  %conv68.i.i.4296 = zext i64 %or.i.i.4295 to i128
  %sub70.i.i.4297 = sub i128 %add50.i.i.4284, %conv68.i.i.4296
  %and71.i.i.4298 = and i64 %or.i.i.4295, 4294967295
  %conv72.i.i.4299 = zext i64 %and71.i.i.4298 to i128
  %sub74.i.i.4300 = sub i128 %sub54.i.i.4286, %conv72.i.i.4299
  %and75.i.i.4301 = and i64 %or.i.i.4295, -4294967295
  %conv76.i.i.4302 = zext i64 %and75.i.i.4301 to i128
  %sub78.i.i.4303 = sub nsw i128 %add47.i.i.4282, %conv76.i.i.4302
  %shr80.i.i.4304 = lshr i128 %sub70.i.i.4297, 64
  %add84.i.i.4305 = add i128 %sub74.i.i.4300, %shr80.i.i.4304
  %shr90.i.i.4307 = lshr i128 %add84.i.i.4305, 64
  %add94.i.i.4308 = add nuw nsw i128 %add13.i.i.4266, %shr90.i.i.4307
  %shr100.i.i.4310 = lshr i128 %add94.i.i.4308, 64
  %add104.i.i.4311 = add nsw i128 %shr100.i.i.4310, %sub78.i.i.4303
  %exitcond7572 = icmp eq i32 %i.0, 8
  br i1 %exitcond7572, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %conv.i.4317 = and i128 %sub70.i.i.4297, 18446744073709551615
  %mul.i.4318 = mul nuw i128 %conv.i.4317, %conv.i.4317
  %shr.i.4319 = lshr i128 %mul.i.4318, 64
  %conv5.i.4320 = and i128 %mul.i.4318, 18446744073709551615
  %conv12.i.4323 = and i128 %add84.i.i.4305, 18446744073709551615
  %mul13.i.4324 = mul nuw i128 %conv12.i.4323, %conv.i.4317
  %shr15.i.4325 = lshr i128 %mul13.i.4324, 64
  %conv17.i.4326 = shl i128 %mul13.i.4324, 1
  %factor.i.4327 = and i128 %conv17.i.4326, 36893488147419103230
  %add21.i.4328 = add nuw nsw i128 %factor.i.4327, %shr.i.4319
  %conv27.i.4331 = and i128 %add94.i.i.4308, 18446744073709551615
  %mul28.i.4332 = mul nuw i128 %conv27.i.4331, %conv.i.4317
  %shr30.i.4333 = lshr i128 %mul28.i.4332, 64
  %conv32.i.4334 = and i128 %mul28.i.4332, 18446744073709551615
  %add34.i.4335 = add nuw nsw i128 %conv32.i.4334, %shr15.i.4325
  %conv42.i.4339 = and i128 %add104.i.i.4311, 18446744073709551615
  %mul43.i.4340 = mul nuw i128 %conv42.i.4339, %conv.i.4317
  %shr45.i.4341 = lshr i128 %mul43.i.4340, 64
  %conv47.i.4342 = and i128 %mul43.i.4340, 18446744073709551615
  %mul56.i.4345 = mul nuw i128 %conv27.i.4331, %conv12.i.4323
  %shr58.i.4346 = lshr i128 %mul56.i.4345, 64
  %conv60.i.4347 = and i128 %mul56.i.4345, 18446744073709551615
  %add49.i.4343 = add nuw nsw i128 %conv60.i.4347, %shr30.i.4333
  %add62.i.4348 = add nuw nsw i128 %add49.i.4343, %conv47.i.4342
  %mul64.i.4349 = shl nuw nsw i128 %add62.i.4348, 1
  %add67.i.4350 = add nuw nsw i128 %shr45.i.4341, %shr58.i.4346
  %mul72.i.4351 = mul nuw i128 %conv12.i.4323, %conv12.i.4323
  %shr74.i.4352 = lshr i128 %mul72.i.4351, 64
  %conv76.i.4353 = and i128 %mul72.i.4351, 18446744073709551615
  %mul86.i.4356 = mul nuw i128 %conv42.i.4339, %conv12.i.4323
  %shr88.i.4357 = lshr i128 %mul86.i.4356, 64
  %conv90.i.4358 = and i128 %mul86.i.4356, 18446744073709551615
  %add92.i.4359 = add nuw nsw i128 %add67.i.4350, %conv90.i.4358
  %mul94.i.4360 = shl nuw nsw i128 %add92.i.4359, 1
  %mul101.i.4362 = mul nuw i128 %conv42.i.4339, %conv27.i.4331
  %shr103.i.4363 = lshr i128 %mul101.i.4362, 64
  %conv105.i.4364 = and i128 %mul101.i.4362, 18446744073709551615
  %add107.i.4365 = add nuw nsw i128 %conv105.i.4364, %shr88.i.4357
  %mul109.i.4366 = shl nuw nsw i128 %add107.i.4365, 1
  %add114.i.4368 = shl nuw nsw i128 %shr103.i.4363, 1
  %mul119.i.4369 = mul nuw i128 %conv27.i.4331, %conv27.i.4331
  %shr121.i.4370 = lshr i128 %mul119.i.4369, 64
  %conv123.i.4371 = and i128 %mul119.i.4369, 18446744073709551615
  %add125.i.4372 = add nuw nsw i128 %mul94.i.4360, %conv123.i.4371
  %add128.i.4373 = add nuw nsw i128 %mul109.i.4366, %shr121.i.4370
  %mul133.i.4374 = mul nuw i128 %conv42.i.4339, %conv42.i.4339
  %shr135.i.4375 = lshr i128 %mul133.i.4374, 64
  %conv137.i.4376 = and i128 %mul133.i.4374, 18446744073709551615
  %add139.i.4377 = add nuw nsw i128 %add114.i.4368, %conv137.i.4376
  %add.i.4215 = add nuw nsw i128 %conv5.i.4320, 1267650600228229401427983728624
  %add3.i.4217 = or i128 %add21.i.4328, 1267650600228229401496703205376
  %shl.i.i.4227 = shl nuw nsw i128 %add128.i.4373, 32
  %add.i.i.4228 = add nuw nsw i128 %shl.i.i.4227, %add125.i.4372
  %sub7.i.i.4232 = sub nsw i128 %add128.i.4373, %shr135.i.4375
  %shl13.i.i.4235 = shl nuw nsw i128 %add125.i.4372, 32
  %shl28.i.i.4243 = shl nuw nsw i128 %add139.i.4377, 32
  %shl32.i.i.4245 = shl nuw nsw i128 %add139.i.4377, 33
  %add9.i.i.4233 = add nuw nsw i128 %shl32.i.i.4245, %add3.i.4217
  %sub15.i.i.4236 = add nsw i128 %add9.i.i.4233, %sub7.i.i.4232
  %add34.i.i.4246 = sub nsw i128 %sub15.i.i.4236, %shl13.i.i.4235
  %shl46.i.i.4252 = shl nuw nsw i128 %shr135.i.4375, 32
  %add3.i.i.4229 = sub nsw i128 %add.i.4215, %shr135.i.4375
  %sub26.i.i.4242 = sub nsw i128 %add3.i.i.4229, %shl46.i.i.4252
  %sub30.i.i.4244 = sub nsw i128 %sub26.i.i.4242, %add139.i.4377
  %sub44.i.i.4251 = sub nsw i128 %sub30.i.i.4244, %shl28.i.i.4243
  %sub48.i.i.4253 = add nsw i128 %sub44.i.i.4251, %add.i.i.4228
  %shl50.i.i.4254 = shl nuw nsw i128 %shr135.i.4375, 33
  %tmp7540 = add nuw nsw i128 %add34.i.4335, %add139.i.4377
  %tmp7541 = shl nuw nsw i128 %tmp7540, 1
  %add6.i.4220 = add nuw nsw i128 %conv76.i.4353, 1267650600228229401427983728656
  %sub11.i.i.4234 = add nuw nsw i128 %add6.i.4220, %shl50.i.i.4254
  %sub23.i.i.4240 = sub nsw i128 %sub11.i.i.4234, %sub7.i.i.4232
  %add37.i.i.4248 = sub nsw i128 %sub23.i.i.4240, %shl.i.i.4227
  %add52.i.i.4255 = add i128 %add37.i.i.4248, %tmp7541
  %mul54.i.i.4256 = mul nuw nsw i128 %shr135.i.4375, 3
  %add81.i.4355 = add nuw nsw i128 %shr74.i.4352, 1267650600228229401427983728656
  %add9.i.4223 = add nuw nsw i128 %add81.i.4355, %mul54.i.i.4256
  %sub.i.i.4230 = add nuw nsw i128 %add9.i.4223, %mul64.i.4349
  %add19.i.i.4238 = sub nsw i128 %sub.i.i.4230, %shl28.i.i.4243
  %sub41.i.i.4250 = sub nsw i128 %add19.i.i.4238, %add.i.i.4228
  %add56.i.i.4257 = add i128 %sub41.i.i.4250, %shl13.i.i.4235
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %add104.i.i.4311.lcssa = phi i128 [ %add104.i.i.4311, %for.cond ]
  %add94.i.i.4308.lcssa = phi i128 [ %add94.i.i.4308, %for.cond ]
  %add84.i.i.4305.lcssa = phi i128 [ %add84.i.i.4305, %for.cond ]
  %sub70.i.i.4297.lcssa = phi i128 [ %sub70.i.i.4297, %for.cond ]
  %add.i.4066 = add i128 %add56.i.i.4427, 18446744069414584320
  %shr.i.4068 = lshr i128 %add52.i.i.4425, 64
  %add8.i.4069 = add i128 %add.i.4066, %shr.i.4068
  %conv12.i.4070 = and i128 %add52.i.i.4425, 18446744073709551615
  %add13.i.4071 = add nuw nsw i128 %conv12.i.4070, 18446673704965373952
  %add16.i.4072 = add i128 %sub48.i.i.4423, 18446744073709551615
  %add19.i.4074 = add i128 %add34.i.i.4416, 1298074214633706907132628377272319
  %shr22.i.4075 = lshr i128 %add8.i.4069, 64
  %conv23.i.4076 = trunc i128 %shr22.i.4075 to i64
  %conv26.i.4077 = and i128 %add8.i.4069, 18446744073709551615
  %sub.i.4078 = sub nsw i128 %conv26.i.4077, %shr22.i.4075
  %shl.i.4079 = shl nuw nsw i128 %shr22.i.4075, 32
  %add32.i.4080 = add nsw i128 %sub.i.4078, %shl.i.4079
  %shr34.i.4081 = lshr i128 %add32.i.4080, 64
  %conv35.i.4082 = trunc i128 %shr34.i.4081 to i64
  %add36.i.4083 = add i64 %conv35.i.4082, %conv23.i.4076
  %conv39.i.4084 = and i128 %add32.i.4080, 18446744073709551615
  %sub43.i.4085 = sub nsw i128 %conv39.i.4084, %shr34.i.4081
  %shl45.i.4086 = shl nuw nsw i128 %shr34.i.4081, 32
  %add47.i.4087 = add nsw i128 %sub43.i.4085, %shl45.i.4086
  %conv48.i.4088 = zext i64 %add36.i.4083 to i128
  %add50.i.4089 = add i128 %add16.i.4072, %conv48.i.4088
  %shl52.i.4090 = shl nuw nsw i128 %conv48.i.4088, 32
  %sub54.i.4091 = sub i128 %add19.i.4074, %shl52.i.4090
  %shr56.i.4092 = lshr i128 %add47.i.4087, 64
  %conv57.i.4093 = trunc i128 %shr56.i.4092 to i64
  %sub58.i.4094 = sub i64 0, %conv57.i.4093
  %conv60.i.4095 = trunc i128 %add47.i.4087 to i64
  %and.i.4096 = and i64 %conv60.i.4095, 9223372036854775807
  %neg.i.4097 = sub nsw i64 9223372032559808512, %and.i.4096
  %sub62177.i.4098 = and i64 %neg.i.4097, %conv60.i.4095
  %and66.i.4099 = ashr i64 %sub62177.i.4098, 63
  %or.i.4100 = or i64 %and66.i.4099, %sub58.i.4094
  %conv68.i.4101 = zext i64 %or.i.4100 to i128
  %sub70.i.4102 = sub i128 %add50.i.4089, %conv68.i.4101
  %and71.i.4103 = and i64 %or.i.4100, 4294967295
  %conv72.i.4104 = zext i64 %and71.i.4103 to i128
  %sub74.i.4105 = sub i128 %sub54.i.4091, %conv72.i.4104
  %and75.i.4106 = and i64 %or.i.4100, -4294967295
  %conv76.i.4107 = zext i64 %and75.i.4106 to i128
  %sub78.i.4108 = sub nsw i128 %add47.i.4087, %conv76.i.4107
  %shr80.i.4109 = lshr i128 %sub70.i.4102, 64
  %add84.i.4110 = add i128 %sub74.i.4105, %shr80.i.4109
  %shr90.i.4112 = lshr i128 %add84.i.4110, 64
  %add94.i.4113 = add nuw nsw i128 %add13.i.4071, %shr90.i.4112
  %shr100.i.4115 = lshr i128 %add94.i.4113, 64
  %add104.i.4116 = add nsw i128 %sub78.i.4108, %shr100.i.4115
  %conv.i.4122 = and i128 %sub70.i.i.4297.lcssa, 18446744073709551615
  %conv2.i.4123 = and i128 %sub70.i.4102, 18446744073709551615
  %mul.i.4124 = mul nuw i128 %conv.i.4122, %conv2.i.4123
  %shr.i.4125 = lshr i128 %mul.i.4124, 64
  %conv5.i.4126 = and i128 %mul.i.4124, 18446744073709551615
  %conv12.i.4129 = and i128 %add84.i.4110, 18446744073709551615
  %mul13.i.4130 = mul nuw i128 %conv.i.4122, %conv12.i.4129
  %shr15.i.4131 = lshr i128 %mul13.i.4130, 64
  %conv17.i.4132 = and i128 %mul13.i.4130, 18446744073709551615
  %add.i.4133 = add nuw nsw i128 %conv17.i.4132, %shr.i.4125
  %conv22.i.4136 = and i128 %add84.i.i.4305.lcssa, 18446744073709551615
  %mul25.i.4137 = mul nuw i128 %conv22.i.4136, %conv2.i.4123
  %shr27.i.4138 = lshr i128 %mul25.i.4137, 64
  %conv29.i.4139 = and i128 %mul25.i.4137, 18446744073709551615
  %add31.i.4140 = add nuw nsw i128 %add.i.4133, %conv29.i.4139
  %conv38.i.4143 = and i128 %add94.i.4113, 18446744073709551615
  %mul39.i.4144 = mul nuw i128 %conv.i.4122, %conv38.i.4143
  %shr41.i.4145 = lshr i128 %mul39.i.4144, 64
  %conv43.i.4146 = and i128 %mul39.i.4144, 18446744073709551615
  %mul52.i.4149 = mul nuw i128 %conv22.i.4136, %conv12.i.4129
  %shr54.i.4150 = lshr i128 %mul52.i.4149, 64
  %conv56.i.4151 = and i128 %mul52.i.4149, 18446744073709551615
  %conv63.i.4155 = and i128 %add94.i.i.4308.lcssa, 18446744073709551615
  %mul66.i.4156 = mul nuw i128 %conv63.i.4155, %conv2.i.4123
  %shr68.i.4157 = lshr i128 %mul66.i.4156, 64
  %conv70.i.4158 = and i128 %mul66.i.4156, 18446744073709551615
  %conv79.i.4162 = and i128 %add104.i.4116, 18446744073709551615
  %mul80.i.4163 = mul nuw i128 %conv.i.4122, %conv79.i.4162
  %shr82.i.4164 = lshr i128 %mul80.i.4163, 64
  %conv84.i.4165 = and i128 %mul80.i.4163, 18446744073709551615
  %mul93.i.4168 = mul nuw i128 %conv22.i.4136, %conv38.i.4143
  %shr95.i.4169 = lshr i128 %mul93.i.4168, 64
  %conv97.i.4170 = and i128 %mul93.i.4168, 18446744073709551615
  %add102.i.4172 = add nuw nsw i128 %shr95.i.4169, %shr82.i.4164
  %mul107.i.4173 = mul nuw i128 %conv63.i.4155, %conv12.i.4129
  %shr109.i.4174 = lshr i128 %mul107.i.4173, 64
  %conv111.i.4175 = and i128 %mul107.i.4173, 18446744073709551615
  %conv118.i.4179 = and i128 %add104.i.i.4311.lcssa, 18446744073709551615
  %mul121.i.4180 = mul nuw i128 %conv118.i.4179, %conv2.i.4123
  %shr123.i.4181 = lshr i128 %mul121.i.4180, 64
  %conv125.i.4182 = and i128 %mul121.i.4180, 18446744073709551615
  %mul135.i.4185 = mul nuw i128 %conv22.i.4136, %conv79.i.4162
  %shr137.i.4186 = lshr i128 %mul135.i.4185, 64
  %conv139.i.4187 = and i128 %mul135.i.4185, 18446744073709551615
  %mul148.i.4190 = mul nuw i128 %conv63.i.4155, %conv38.i.4143
  %shr150.i.4191 = lshr i128 %mul148.i.4190, 64
  %conv152.i.4192 = and i128 %mul148.i.4190, 18446744073709551615
  %add157.i.4194 = add nuw nsw i128 %shr150.i.4191, %shr137.i.4186
  %mul162.i.4195 = mul nuw i128 %conv118.i.4179, %conv12.i.4129
  %shr164.i.4196 = lshr i128 %mul162.i.4195, 64
  %conv166.i.4197 = and i128 %mul162.i.4195, 18446744073709551615
  %add116.i.4177 = add nuw nsw i128 %add102.i.4172, %conv139.i.4187
  %add130.i.4184 = add nuw nsw i128 %add116.i.4177, %shr109.i.4174
  %add141.i.4188 = add nuw nsw i128 %add130.i.4184, %conv152.i.4192
  %add154.i.4193 = add nuw nsw i128 %add141.i.4188, %shr123.i.4181
  %add168.i.4198 = add nuw nsw i128 %add154.i.4193, %conv166.i.4197
  %mul176.i.4200 = mul nuw i128 %conv63.i.4155, %conv79.i.4162
  %shr178.i.4201 = lshr i128 %mul176.i.4200, 64
  %conv180.i.4202 = and i128 %mul176.i.4200, 18446744073709551615
  %mul189.i.4205 = mul nuw i128 %conv118.i.4179, %conv38.i.4143
  %shr191.i.4206 = lshr i128 %mul189.i.4205, 64
  %conv193.i.4207 = and i128 %mul189.i.4205, 18446744073709551615
  %add171.i.4199 = add nuw nsw i128 %add157.i.4194, %conv180.i.4202
  %add182.i.4203 = add nuw nsw i128 %add171.i.4199, %shr164.i.4196
  %add195.i.4208 = add nuw nsw i128 %add182.i.4203, %conv193.i.4207
  %add198.i.4209 = add nuw nsw i128 %shr191.i.4206, %shr178.i.4201
  %mul203.i.4210 = mul nuw i128 %conv118.i.4179, %conv79.i.4162
  %shr205.i.4211 = lshr i128 %mul203.i.4210, 64
  %conv207.i.4212 = and i128 %mul203.i.4210, 18446744073709551615
  %add209.i.4213 = add nuw nsw i128 %add198.i.4209, %conv207.i.4212
  %add.i.3962 = add nuw nsw i128 %conv5.i.4126, 1267650600228229401427983728624
  %add3.i.3964 = or i128 %add31.i.4140, 1267650600228229401496703205376
  %shl.i.i.3974 = shl nuw nsw i128 %add195.i.4208, 32
  %add.i.i.3975 = add i128 %shl.i.i.3974, %add168.i.4198
  %sub7.i.i.3979 = sub nsw i128 %add195.i.4208, %shr205.i.4211
  %shl13.i.i.3982 = shl i128 %add168.i.4198, 32
  %shl28.i.i.3990 = shl nuw nsw i128 %add209.i.4213, 32
  %shl32.i.i.3992 = shl nuw nsw i128 %add209.i.4213, 33
  %add9.i.i.3980 = add nuw nsw i128 %shl32.i.i.3992, %add3.i.3964
  %sub15.i.i.3983 = add nsw i128 %add9.i.i.3980, %sub7.i.i.3979
  %add34.i.i.3993 = sub i128 %sub15.i.i.3983, %shl13.i.i.3982
  %mul.i.i.3994 = shl nuw nsw i128 %add209.i.4213, 1
  %shl46.i.i.3999 = shl nuw nsw i128 %shr205.i.4211, 32
  %add3.i.i.3976 = sub nsw i128 %add.i.3962, %shr205.i.4211
  %sub26.i.i.3989 = sub nsw i128 %add3.i.i.3976, %shl46.i.i.3999
  %sub30.i.i.3991 = sub nsw i128 %sub26.i.i.3989, %add209.i.4213
  %sub44.i.i.3998 = sub nsw i128 %sub30.i.i.3991, %shl28.i.i.3990
  %sub48.i.i.4000 = add i128 %sub44.i.i.3998, %add.i.i.3975
  %shl50.i.i.4001 = shl nuw nsw i128 %shr205.i.4211, 33
  %add34.i.4141 = add nuw nsw i128 %shr15.i.4131, 1267650600228229401427983728656
  %add45.i.4147 = add nuw nsw i128 %add34.i.4141, %conv43.i.4146
  %add58.i.4152 = add nuw nsw i128 %add45.i.4147, %shr27.i.4138
  %add72.i.4159 = add nuw nsw i128 %add58.i.4152, %conv56.i.4151
  %add6.i.3967 = add nuw nsw i128 %add72.i.4159, %conv70.i.4158
  %sub11.i.i.3981 = add nuw nsw i128 %add6.i.3967, %shl50.i.i.4001
  %sub23.i.i.3987 = add i128 %sub11.i.i.3981, %mul.i.i.3994
  %add37.i.i.3995 = sub i128 %sub23.i.i.3987, %sub7.i.i.3979
  %add52.i.i.4002 = sub i128 %add37.i.i.3995, %shl.i.i.3974
  %mul54.i.i.4003 = mul nuw nsw i128 %shr205.i.4211, 3
  %add61.i.4153 = add nuw nsw i128 %shr41.i.4145, 1267650600228229401427983728656
  %add75.i.4160 = add nuw nsw i128 %add61.i.4153, %conv84.i.4165
  %add86.i.4166 = add nuw nsw i128 %add75.i.4160, %shr54.i.4150
  %add99.i.4171 = add nuw nsw i128 %add86.i.4166, %conv97.i.4170
  %add113.i.4176 = add nuw nsw i128 %add99.i.4171, %shr68.i.4157
  %add127.i.4183 = add nuw nsw i128 %add113.i.4176, %conv111.i.4175
  %add9.i.3970 = add i128 %add127.i.4183, %conv125.i.4182
  %sub.i.i.3977 = add i128 %add9.i.3970, %mul54.i.i.4003
  %add19.i.i.3985 = sub i128 %sub.i.i.3977, %shl28.i.i.3990
  %sub41.i.i.3997 = sub i128 %add19.i.i.3985, %add.i.i.3975
  %add56.i.i.4004 = add i128 %sub41.i.i.3997, %shl13.i.i.3982
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.body.61, %for.end
  %sub.i.i.51457524 = phi i128 [ %add56.i.i.4004, %for.end ], [ %add56.i.i.3834, %for.body.61 ]
  %add52.i.i.34097520 = phi i128 [ %add52.i.i.4002, %for.end ], [ %add52.i.i.3832, %for.body.61 ]
  %sub15.i.i.42367516 = phi i128 [ %add34.i.i.3993, %for.end ], [ %add34.i.i.3823, %for.body.61 ]
  %sub26.i.i.49937513 = phi i128 [ %sub48.i.i.4000, %for.end ], [ %sub48.i.i.3830, %for.body.61 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc67, %for.body.61 ]
  %add.i.i.3838 = add i128 %sub.i.i.51457524, 18446744069414584320
  %shr.i.i.3840 = lshr i128 %add52.i.i.34097520, 64
  %add8.i.i.3841 = add i128 %add.i.i.3838, %shr.i.i.3840
  %conv12.i.i.3842 = and i128 %add52.i.i.34097520, 18446744073709551615
  %add13.i.i.3843 = add nuw nsw i128 %conv12.i.i.3842, 18446673704965373952
  %add16.i.i.3844 = add i128 %sub26.i.i.49937513, 18446744073709551615
  %add19.i.i.3846 = add i128 %sub15.i.i.42367516, 1298074214633706907132628377272319
  %shr22.i.i.3847 = lshr i128 %add8.i.i.3841, 64
  %conv23.i.i.3848 = trunc i128 %shr22.i.i.3847 to i64
  %conv26.i.i.3849 = and i128 %add8.i.i.3841, 18446744073709551615
  %sub.i.i.3850 = sub nsw i128 %conv26.i.i.3849, %shr22.i.i.3847
  %shl.i.i.3851 = shl nuw nsw i128 %shr22.i.i.3847, 32
  %add32.i.i.3852 = add nsw i128 %sub.i.i.3850, %shl.i.i.3851
  %shr34.i.i.3853 = lshr i128 %add32.i.i.3852, 64
  %conv35.i.i.3854 = trunc i128 %shr34.i.i.3853 to i64
  %add36.i.i.3855 = add i64 %conv35.i.i.3854, %conv23.i.i.3848
  %conv39.i.i.3856 = and i128 %add32.i.i.3852, 18446744073709551615
  %sub43.i.i.3857 = sub nsw i128 %conv39.i.i.3856, %shr34.i.i.3853
  %shl45.i.i.3858 = shl nuw nsw i128 %shr34.i.i.3853, 32
  %add47.i.i.3859 = add nsw i128 %sub43.i.i.3857, %shl45.i.i.3858
  %conv48.i.i.3860 = zext i64 %add36.i.i.3855 to i128
  %add50.i.i.3861 = add i128 %add16.i.i.3844, %conv48.i.i.3860
  %shl52.i.i.3862 = shl nuw nsw i128 %conv48.i.i.3860, 32
  %sub54.i.i.3863 = sub i128 %add19.i.i.3846, %shl52.i.i.3862
  %shr56.i.i.3864 = lshr i128 %add47.i.i.3859, 64
  %conv57.i.i.3865 = trunc i128 %shr56.i.i.3864 to i64
  %sub58.i.i.3866 = sub i64 0, %conv57.i.i.3865
  %conv60.i.i.3867 = trunc i128 %add47.i.i.3859 to i64
  %and.i.i.3868 = and i64 %conv60.i.i.3867, 9223372036854775807
  %neg.i.i.3869 = sub nsw i64 9223372032559808512, %and.i.i.3868
  %sub62177.i.i.3870 = and i64 %neg.i.i.3869, %conv60.i.i.3867
  %and66.i.i.3871 = ashr i64 %sub62177.i.i.3870, 63
  %or.i.i.3872 = or i64 %and66.i.i.3871, %sub58.i.i.3866
  %conv68.i.i.3873 = zext i64 %or.i.i.3872 to i128
  %sub70.i.i.3874 = sub i128 %add50.i.i.3861, %conv68.i.i.3873
  %and71.i.i.3875 = and i64 %or.i.i.3872, 4294967295
  %conv72.i.i.3876 = zext i64 %and71.i.i.3875 to i128
  %sub74.i.i.3877 = sub i128 %sub54.i.i.3863, %conv72.i.i.3876
  %and75.i.i.3878 = and i64 %or.i.i.3872, -4294967295
  %conv76.i.i.3879 = zext i64 %and75.i.i.3878 to i128
  %sub78.i.i.3880 = sub nsw i128 %add47.i.i.3859, %conv76.i.i.3879
  %shr80.i.i.3881 = lshr i128 %sub70.i.i.3874, 64
  %add84.i.i.3882 = add i128 %sub74.i.i.3877, %shr80.i.i.3881
  %shr90.i.i.3884 = lshr i128 %add84.i.i.3882, 64
  %add94.i.i.3885 = add nuw nsw i128 %add13.i.i.3843, %shr90.i.i.3884
  %shr100.i.i.3887 = lshr i128 %add94.i.i.3885, 64
  %add104.i.i.3888 = add nsw i128 %shr100.i.i.3887, %sub78.i.i.3880
  %exitcond7571 = icmp eq i32 %i.1, 16
  br i1 %exitcond7571, label %for.end.68, label %for.body.61

for.body.61:                                      ; preds = %for.cond.59
  %conv.i.3894 = and i128 %sub70.i.i.3874, 18446744073709551615
  %mul.i.3895 = mul nuw i128 %conv.i.3894, %conv.i.3894
  %shr.i.3896 = lshr i128 %mul.i.3895, 64
  %conv5.i.3897 = and i128 %mul.i.3895, 18446744073709551615
  %conv12.i.3900 = and i128 %add84.i.i.3882, 18446744073709551615
  %mul13.i.3901 = mul nuw i128 %conv12.i.3900, %conv.i.3894
  %shr15.i.3902 = lshr i128 %mul13.i.3901, 64
  %conv17.i.3903 = shl i128 %mul13.i.3901, 1
  %factor.i.3904 = and i128 %conv17.i.3903, 36893488147419103230
  %add21.i.3905 = add nuw nsw i128 %factor.i.3904, %shr.i.3896
  %conv27.i.3908 = and i128 %add94.i.i.3885, 18446744073709551615
  %mul28.i.3909 = mul nuw i128 %conv27.i.3908, %conv.i.3894
  %shr30.i.3910 = lshr i128 %mul28.i.3909, 64
  %conv32.i.3911 = and i128 %mul28.i.3909, 18446744073709551615
  %add34.i.3912 = add nuw nsw i128 %conv32.i.3911, %shr15.i.3902
  %conv42.i.3916 = and i128 %add104.i.i.3888, 18446744073709551615
  %mul43.i.3917 = mul nuw i128 %conv42.i.3916, %conv.i.3894
  %shr45.i.3918 = lshr i128 %mul43.i.3917, 64
  %conv47.i.3919 = and i128 %mul43.i.3917, 18446744073709551615
  %mul56.i.3922 = mul nuw i128 %conv27.i.3908, %conv12.i.3900
  %shr58.i.3923 = lshr i128 %mul56.i.3922, 64
  %conv60.i.3924 = and i128 %mul56.i.3922, 18446744073709551615
  %add49.i.3920 = add nuw nsw i128 %conv60.i.3924, %shr30.i.3910
  %add62.i.3925 = add nuw nsw i128 %add49.i.3920, %conv47.i.3919
  %mul64.i.3926 = shl nuw nsw i128 %add62.i.3925, 1
  %add67.i.3927 = add nuw nsw i128 %shr45.i.3918, %shr58.i.3923
  %mul72.i.3928 = mul nuw i128 %conv12.i.3900, %conv12.i.3900
  %shr74.i.3929 = lshr i128 %mul72.i.3928, 64
  %conv76.i.3930 = and i128 %mul72.i.3928, 18446744073709551615
  %mul86.i.3933 = mul nuw i128 %conv42.i.3916, %conv12.i.3900
  %shr88.i.3934 = lshr i128 %mul86.i.3933, 64
  %conv90.i.3935 = and i128 %mul86.i.3933, 18446744073709551615
  %add92.i.3936 = add nuw nsw i128 %add67.i.3927, %conv90.i.3935
  %mul94.i.3937 = shl nuw nsw i128 %add92.i.3936, 1
  %mul101.i.3939 = mul nuw i128 %conv42.i.3916, %conv27.i.3908
  %shr103.i.3940 = lshr i128 %mul101.i.3939, 64
  %conv105.i.3941 = and i128 %mul101.i.3939, 18446744073709551615
  %add107.i.3942 = add nuw nsw i128 %conv105.i.3941, %shr88.i.3934
  %mul109.i.3943 = shl nuw nsw i128 %add107.i.3942, 1
  %add114.i.3945 = shl nuw nsw i128 %shr103.i.3940, 1
  %mul119.i.3946 = mul nuw i128 %conv27.i.3908, %conv27.i.3908
  %shr121.i.3947 = lshr i128 %mul119.i.3946, 64
  %conv123.i.3948 = and i128 %mul119.i.3946, 18446744073709551615
  %add125.i.3949 = add nuw nsw i128 %mul94.i.3937, %conv123.i.3948
  %add128.i.3950 = add nuw nsw i128 %mul109.i.3943, %shr121.i.3947
  %mul133.i.3951 = mul nuw i128 %conv42.i.3916, %conv42.i.3916
  %shr135.i.3952 = lshr i128 %mul133.i.3951, 64
  %conv137.i.3953 = and i128 %mul133.i.3951, 18446744073709551615
  %add139.i.3954 = add nuw nsw i128 %add114.i.3945, %conv137.i.3953
  %add.i.3792 = add nuw nsw i128 %conv5.i.3897, 1267650600228229401427983728624
  %add3.i.3794 = or i128 %add21.i.3905, 1267650600228229401496703205376
  %shl.i.i.3804 = shl nuw nsw i128 %add128.i.3950, 32
  %add.i.i.3805 = add nuw nsw i128 %shl.i.i.3804, %add125.i.3949
  %sub7.i.i.3809 = sub nsw i128 %add128.i.3950, %shr135.i.3952
  %shl13.i.i.3812 = shl nuw nsw i128 %add125.i.3949, 32
  %shl28.i.i.3820 = shl nuw nsw i128 %add139.i.3954, 32
  %shl32.i.i.3822 = shl nuw nsw i128 %add139.i.3954, 33
  %add9.i.i.3810 = add nuw nsw i128 %shl32.i.i.3822, %add3.i.3794
  %sub15.i.i.3813 = add nsw i128 %add9.i.i.3810, %sub7.i.i.3809
  %add34.i.i.3823 = sub nsw i128 %sub15.i.i.3813, %shl13.i.i.3812
  %shl46.i.i.3829 = shl nuw nsw i128 %shr135.i.3952, 32
  %add3.i.i.3806 = sub nsw i128 %add.i.3792, %shr135.i.3952
  %sub26.i.i.3819 = sub nsw i128 %add3.i.i.3806, %shl46.i.i.3829
  %sub30.i.i.3821 = sub nsw i128 %sub26.i.i.3819, %add139.i.3954
  %sub44.i.i.3828 = sub nsw i128 %sub30.i.i.3821, %shl28.i.i.3820
  %sub48.i.i.3830 = add nsw i128 %sub44.i.i.3828, %add.i.i.3805
  %shl50.i.i.3831 = shl nuw nsw i128 %shr135.i.3952, 33
  %tmp7542 = add nuw nsw i128 %add34.i.3912, %add139.i.3954
  %tmp7543 = shl nuw nsw i128 %tmp7542, 1
  %add6.i.3797 = add nuw nsw i128 %conv76.i.3930, 1267650600228229401427983728656
  %sub11.i.i.3811 = add nuw nsw i128 %add6.i.3797, %shl50.i.i.3831
  %sub23.i.i.3817 = sub nsw i128 %sub11.i.i.3811, %sub7.i.i.3809
  %add37.i.i.3825 = sub nsw i128 %sub23.i.i.3817, %shl.i.i.3804
  %add52.i.i.3832 = add i128 %add37.i.i.3825, %tmp7543
  %mul54.i.i.3833 = mul nuw nsw i128 %shr135.i.3952, 3
  %add81.i.3932 = add nuw nsw i128 %shr74.i.3929, 1267650600228229401427983728656
  %add9.i.3800 = add nuw nsw i128 %add81.i.3932, %mul54.i.i.3833
  %sub.i.i.3807 = add nuw nsw i128 %add9.i.3800, %mul64.i.3926
  %add19.i.i.3815 = sub nsw i128 %sub.i.i.3807, %shl28.i.i.3820
  %sub41.i.i.3827 = sub nsw i128 %add19.i.i.3815, %add.i.i.3805
  %add56.i.i.3834 = add i128 %sub41.i.i.3827, %shl13.i.i.3812
  %inc67 = add nuw nsw i32 %i.1, 1
  br label %for.cond.59

for.end.68:                                       ; preds = %for.cond.59
  %add104.i.i.3888.lcssa = phi i128 [ %add104.i.i.3888, %for.cond.59 ]
  %add94.i.i.3885.lcssa = phi i128 [ %add94.i.i.3885, %for.cond.59 ]
  %add84.i.i.3882.lcssa = phi i128 [ %add84.i.i.3882, %for.cond.59 ]
  %sub70.i.i.3874.lcssa = phi i128 [ %sub70.i.i.3874, %for.cond.59 ]
  %add.i.3643 = add i128 %add56.i.i.4004, 18446744069414584320
  %shr.i.3645 = lshr i128 %add52.i.i.4002, 64
  %add8.i.3646 = add i128 %add.i.3643, %shr.i.3645
  %conv12.i.3647 = and i128 %add52.i.i.4002, 18446744073709551615
  %add13.i.3648 = add nuw nsw i128 %conv12.i.3647, 18446673704965373952
  %add16.i.3649 = add i128 %sub48.i.i.4000, 18446744073709551615
  %add19.i.3651 = add i128 %add34.i.i.3993, 1298074214633706907132628377272319
  %shr22.i.3652 = lshr i128 %add8.i.3646, 64
  %conv23.i.3653 = trunc i128 %shr22.i.3652 to i64
  %conv26.i.3654 = and i128 %add8.i.3646, 18446744073709551615
  %sub.i.3655 = sub nsw i128 %conv26.i.3654, %shr22.i.3652
  %shl.i.3656 = shl nuw nsw i128 %shr22.i.3652, 32
  %add32.i.3657 = add nsw i128 %sub.i.3655, %shl.i.3656
  %shr34.i.3658 = lshr i128 %add32.i.3657, 64
  %conv35.i.3659 = trunc i128 %shr34.i.3658 to i64
  %add36.i.3660 = add i64 %conv35.i.3659, %conv23.i.3653
  %conv39.i.3661 = and i128 %add32.i.3657, 18446744073709551615
  %sub43.i.3662 = sub nsw i128 %conv39.i.3661, %shr34.i.3658
  %shl45.i.3663 = shl nuw nsw i128 %shr34.i.3658, 32
  %add47.i.3664 = add nsw i128 %sub43.i.3662, %shl45.i.3663
  %conv48.i.3665 = zext i64 %add36.i.3660 to i128
  %add50.i.3666 = add i128 %add16.i.3649, %conv48.i.3665
  %shl52.i.3667 = shl nuw nsw i128 %conv48.i.3665, 32
  %sub54.i.3668 = sub i128 %add19.i.3651, %shl52.i.3667
  %shr56.i.3669 = lshr i128 %add47.i.3664, 64
  %conv57.i.3670 = trunc i128 %shr56.i.3669 to i64
  %sub58.i.3671 = sub i64 0, %conv57.i.3670
  %conv60.i.3672 = trunc i128 %add47.i.3664 to i64
  %and.i.3673 = and i64 %conv60.i.3672, 9223372036854775807
  %neg.i.3674 = sub nsw i64 9223372032559808512, %and.i.3673
  %sub62177.i.3675 = and i64 %neg.i.3674, %conv60.i.3672
  %and66.i.3676 = ashr i64 %sub62177.i.3675, 63
  %or.i.3677 = or i64 %and66.i.3676, %sub58.i.3671
  %conv68.i.3678 = zext i64 %or.i.3677 to i128
  %sub70.i.3679 = sub i128 %add50.i.3666, %conv68.i.3678
  %and71.i.3680 = and i64 %or.i.3677, 4294967295
  %conv72.i.3681 = zext i64 %and71.i.3680 to i128
  %sub74.i.3682 = sub i128 %sub54.i.3668, %conv72.i.3681
  %and75.i.3683 = and i64 %or.i.3677, -4294967295
  %conv76.i.3684 = zext i64 %and75.i.3683 to i128
  %sub78.i.3685 = sub nsw i128 %add47.i.3664, %conv76.i.3684
  %shr80.i.3686 = lshr i128 %sub70.i.3679, 64
  %add84.i.3687 = add i128 %sub74.i.3682, %shr80.i.3686
  %shr90.i.3689 = lshr i128 %add84.i.3687, 64
  %add94.i.3690 = add nuw nsw i128 %add13.i.3648, %shr90.i.3689
  %shr100.i.3692 = lshr i128 %add94.i.3690, 64
  %add104.i.3693 = add nsw i128 %sub78.i.3685, %shr100.i.3692
  %conv.i.3699 = and i128 %sub70.i.i.3874.lcssa, 18446744073709551615
  %conv2.i.3700 = and i128 %sub70.i.3679, 18446744073709551615
  %mul.i.3701 = mul nuw i128 %conv.i.3699, %conv2.i.3700
  %shr.i.3702 = lshr i128 %mul.i.3701, 64
  %conv5.i.3703 = and i128 %mul.i.3701, 18446744073709551615
  %conv12.i.3706 = and i128 %add84.i.3687, 18446744073709551615
  %mul13.i.3707 = mul nuw i128 %conv.i.3699, %conv12.i.3706
  %shr15.i.3708 = lshr i128 %mul13.i.3707, 64
  %conv17.i.3709 = and i128 %mul13.i.3707, 18446744073709551615
  %add.i.3710 = add nuw nsw i128 %conv17.i.3709, %shr.i.3702
  %conv22.i.3713 = and i128 %add84.i.i.3882.lcssa, 18446744073709551615
  %mul25.i.3714 = mul nuw i128 %conv22.i.3713, %conv2.i.3700
  %shr27.i.3715 = lshr i128 %mul25.i.3714, 64
  %conv29.i.3716 = and i128 %mul25.i.3714, 18446744073709551615
  %add31.i.3717 = add nuw nsw i128 %add.i.3710, %conv29.i.3716
  %conv38.i.3720 = and i128 %add94.i.3690, 18446744073709551615
  %mul39.i.3721 = mul nuw i128 %conv.i.3699, %conv38.i.3720
  %shr41.i.3722 = lshr i128 %mul39.i.3721, 64
  %conv43.i.3723 = and i128 %mul39.i.3721, 18446744073709551615
  %mul52.i.3726 = mul nuw i128 %conv22.i.3713, %conv12.i.3706
  %shr54.i.3727 = lshr i128 %mul52.i.3726, 64
  %conv56.i.3728 = and i128 %mul52.i.3726, 18446744073709551615
  %conv63.i.3732 = and i128 %add94.i.i.3885.lcssa, 18446744073709551615
  %mul66.i.3733 = mul nuw i128 %conv63.i.3732, %conv2.i.3700
  %shr68.i.3734 = lshr i128 %mul66.i.3733, 64
  %conv70.i.3735 = and i128 %mul66.i.3733, 18446744073709551615
  %conv79.i.3739 = and i128 %add104.i.3693, 18446744073709551615
  %mul80.i.3740 = mul nuw i128 %conv.i.3699, %conv79.i.3739
  %shr82.i.3741 = lshr i128 %mul80.i.3740, 64
  %conv84.i.3742 = and i128 %mul80.i.3740, 18446744073709551615
  %mul93.i.3745 = mul nuw i128 %conv22.i.3713, %conv38.i.3720
  %shr95.i.3746 = lshr i128 %mul93.i.3745, 64
  %conv97.i.3747 = and i128 %mul93.i.3745, 18446744073709551615
  %add102.i.3749 = add nuw nsw i128 %shr95.i.3746, %shr82.i.3741
  %mul107.i.3750 = mul nuw i128 %conv63.i.3732, %conv12.i.3706
  %shr109.i.3751 = lshr i128 %mul107.i.3750, 64
  %conv111.i.3752 = and i128 %mul107.i.3750, 18446744073709551615
  %conv118.i.3756 = and i128 %add104.i.i.3888.lcssa, 18446744073709551615
  %mul121.i.3757 = mul nuw i128 %conv118.i.3756, %conv2.i.3700
  %shr123.i.3758 = lshr i128 %mul121.i.3757, 64
  %conv125.i.3759 = and i128 %mul121.i.3757, 18446744073709551615
  %mul135.i.3762 = mul nuw i128 %conv22.i.3713, %conv79.i.3739
  %shr137.i.3763 = lshr i128 %mul135.i.3762, 64
  %conv139.i.3764 = and i128 %mul135.i.3762, 18446744073709551615
  %mul148.i.3767 = mul nuw i128 %conv63.i.3732, %conv38.i.3720
  %shr150.i.3768 = lshr i128 %mul148.i.3767, 64
  %conv152.i.3769 = and i128 %mul148.i.3767, 18446744073709551615
  %add157.i.3771 = add nuw nsw i128 %shr150.i.3768, %shr137.i.3763
  %mul162.i.3772 = mul nuw i128 %conv118.i.3756, %conv12.i.3706
  %shr164.i.3773 = lshr i128 %mul162.i.3772, 64
  %conv166.i.3774 = and i128 %mul162.i.3772, 18446744073709551615
  %add116.i.3754 = add nuw nsw i128 %add102.i.3749, %conv139.i.3764
  %add130.i.3761 = add nuw nsw i128 %add116.i.3754, %shr109.i.3751
  %add141.i.3765 = add nuw nsw i128 %add130.i.3761, %conv152.i.3769
  %add154.i.3770 = add nuw nsw i128 %add141.i.3765, %shr123.i.3758
  %add168.i.3775 = add nuw nsw i128 %add154.i.3770, %conv166.i.3774
  %mul176.i.3777 = mul nuw i128 %conv63.i.3732, %conv79.i.3739
  %shr178.i.3778 = lshr i128 %mul176.i.3777, 64
  %conv180.i.3779 = and i128 %mul176.i.3777, 18446744073709551615
  %mul189.i.3782 = mul nuw i128 %conv118.i.3756, %conv38.i.3720
  %shr191.i.3783 = lshr i128 %mul189.i.3782, 64
  %conv193.i.3784 = and i128 %mul189.i.3782, 18446744073709551615
  %add171.i.3776 = add nuw nsw i128 %add157.i.3771, %conv180.i.3779
  %add182.i.3780 = add nuw nsw i128 %add171.i.3776, %shr164.i.3773
  %add195.i.3785 = add nuw nsw i128 %add182.i.3780, %conv193.i.3784
  %add198.i.3786 = add nuw nsw i128 %shr191.i.3783, %shr178.i.3778
  %mul203.i.3787 = mul nuw i128 %conv118.i.3756, %conv79.i.3739
  %shr205.i.3788 = lshr i128 %mul203.i.3787, 64
  %conv207.i.3789 = and i128 %mul203.i.3787, 18446744073709551615
  %add209.i.3790 = add nuw nsw i128 %add198.i.3786, %conv207.i.3789
  %add.i.3539 = add nuw nsw i128 %conv5.i.3703, 1267650600228229401427983728624
  %add3.i.3541 = or i128 %add31.i.3717, 1267650600228229401496703205376
  %shl.i.i.3551 = shl nuw nsw i128 %add195.i.3785, 32
  %add.i.i.3552 = add i128 %shl.i.i.3551, %add168.i.3775
  %sub7.i.i.3556 = sub nsw i128 %add195.i.3785, %shr205.i.3788
  %shl13.i.i.3559 = shl i128 %add168.i.3775, 32
  %shl28.i.i.3567 = shl nuw nsw i128 %add209.i.3790, 32
  %shl32.i.i.3569 = shl nuw nsw i128 %add209.i.3790, 33
  %add9.i.i.3557 = add nuw nsw i128 %shl32.i.i.3569, %add3.i.3541
  %sub15.i.i.3560 = add nsw i128 %add9.i.i.3557, %sub7.i.i.3556
  %add34.i.i.3570 = sub i128 %sub15.i.i.3560, %shl13.i.i.3559
  %mul.i.i.3571 = shl nuw nsw i128 %add209.i.3790, 1
  %shl46.i.i.3576 = shl nuw nsw i128 %shr205.i.3788, 32
  %add3.i.i.3553 = sub nsw i128 %add.i.3539, %shr205.i.3788
  %sub26.i.i.3566 = sub nsw i128 %add3.i.i.3553, %shl46.i.i.3576
  %sub30.i.i.3568 = sub nsw i128 %sub26.i.i.3566, %add209.i.3790
  %sub44.i.i.3575 = sub nsw i128 %sub30.i.i.3568, %shl28.i.i.3567
  %sub48.i.i.3577 = add i128 %sub44.i.i.3575, %add.i.i.3552
  %shl50.i.i.3578 = shl nuw nsw i128 %shr205.i.3788, 33
  %add34.i.3718 = add nuw nsw i128 %shr15.i.3708, 1267650600228229401427983728656
  %add45.i.3724 = add nuw nsw i128 %add34.i.3718, %conv43.i.3723
  %add58.i.3729 = add nuw nsw i128 %add45.i.3724, %shr27.i.3715
  %add72.i.3736 = add nuw nsw i128 %add58.i.3729, %conv56.i.3728
  %add6.i.3544 = add nuw nsw i128 %add72.i.3736, %conv70.i.3735
  %sub11.i.i.3558 = add nuw nsw i128 %add6.i.3544, %shl50.i.i.3578
  %sub23.i.i.3564 = add i128 %sub11.i.i.3558, %mul.i.i.3571
  %add37.i.i.3572 = sub i128 %sub23.i.i.3564, %sub7.i.i.3556
  %add52.i.i.3579 = sub i128 %add37.i.i.3572, %shl.i.i.3551
  %mul54.i.i.3580 = mul nuw nsw i128 %shr205.i.3788, 3
  %add61.i.3730 = add nuw nsw i128 %shr41.i.3722, 1267650600228229401427983728656
  %add75.i.3737 = add nuw nsw i128 %add61.i.3730, %conv84.i.3742
  %add86.i.3743 = add nuw nsw i128 %add75.i.3737, %shr54.i.3727
  %add99.i.3748 = add nuw nsw i128 %add86.i.3743, %conv97.i.3747
  %add113.i.3753 = add nuw nsw i128 %add99.i.3748, %shr68.i.3734
  %add127.i.3760 = add nuw nsw i128 %add113.i.3753, %conv111.i.3752
  %add9.i.3547 = add i128 %add127.i.3760, %conv125.i.3759
  %sub.i.i.3554 = add i128 %add9.i.3547, %mul54.i.i.3580
  %add19.i.i.3562 = sub i128 %sub.i.i.3554, %shl28.i.i.3567
  %sub41.i.i.3574 = sub i128 %add19.i.i.3562, %add.i.i.3552
  %add56.i.i.3581 = add i128 %sub41.i.i.3574, %shl13.i.i.3559
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.body.78, %for.end.68
  %sub.i.i.51457523 = phi i128 [ %add56.i.i.3581, %for.end.68 ], [ %add56.i.i.3411, %for.body.78 ]
  %add52.i.i.34097519 = phi i128 [ %add52.i.i.3579, %for.end.68 ], [ %add52.i.i.3409, %for.body.78 ]
  %sub15.i.i.42367518 = phi i128 [ %add34.i.i.3570, %for.end.68 ], [ %add34.i.i.3400, %for.body.78 ]
  %sub26.i.i.49937511 = phi i128 [ %sub48.i.i.3577, %for.end.68 ], [ %sub48.i.i.3407, %for.body.78 ]
  %i.2 = phi i32 [ 0, %for.end.68 ], [ %inc84, %for.body.78 ]
  %add.i.i.3415 = add i128 %sub.i.i.51457523, 18446744069414584320
  %shr.i.i.3417 = lshr i128 %add52.i.i.34097519, 64
  %add8.i.i.3418 = add i128 %add.i.i.3415, %shr.i.i.3417
  %conv12.i.i.3419 = and i128 %add52.i.i.34097519, 18446744073709551615
  %add13.i.i.3420 = add nuw nsw i128 %conv12.i.i.3419, 18446673704965373952
  %add16.i.i.3421 = add i128 %sub26.i.i.49937511, 18446744073709551615
  %add19.i.i.3423 = add i128 %sub15.i.i.42367518, 1298074214633706907132628377272319
  %shr22.i.i.3424 = lshr i128 %add8.i.i.3418, 64
  %conv23.i.i.3425 = trunc i128 %shr22.i.i.3424 to i64
  %conv26.i.i.3426 = and i128 %add8.i.i.3418, 18446744073709551615
  %sub.i.i.3427 = sub nsw i128 %conv26.i.i.3426, %shr22.i.i.3424
  %shl.i.i.3428 = shl nuw nsw i128 %shr22.i.i.3424, 32
  %add32.i.i.3429 = add nsw i128 %sub.i.i.3427, %shl.i.i.3428
  %shr34.i.i.3430 = lshr i128 %add32.i.i.3429, 64
  %conv35.i.i.3431 = trunc i128 %shr34.i.i.3430 to i64
  %add36.i.i.3432 = add i64 %conv35.i.i.3431, %conv23.i.i.3425
  %conv39.i.i.3433 = and i128 %add32.i.i.3429, 18446744073709551615
  %sub43.i.i.3434 = sub nsw i128 %conv39.i.i.3433, %shr34.i.i.3430
  %shl45.i.i.3435 = shl nuw nsw i128 %shr34.i.i.3430, 32
  %add47.i.i.3436 = add nsw i128 %sub43.i.i.3434, %shl45.i.i.3435
  %conv48.i.i.3437 = zext i64 %add36.i.i.3432 to i128
  %add50.i.i.3438 = add i128 %add16.i.i.3421, %conv48.i.i.3437
  %shl52.i.i.3439 = shl nuw nsw i128 %conv48.i.i.3437, 32
  %sub54.i.i.3440 = sub i128 %add19.i.i.3423, %shl52.i.i.3439
  %shr56.i.i.3441 = lshr i128 %add47.i.i.3436, 64
  %conv57.i.i.3442 = trunc i128 %shr56.i.i.3441 to i64
  %sub58.i.i.3443 = sub i64 0, %conv57.i.i.3442
  %conv60.i.i.3444 = trunc i128 %add47.i.i.3436 to i64
  %and.i.i.3445 = and i64 %conv60.i.i.3444, 9223372036854775807
  %neg.i.i.3446 = sub nsw i64 9223372032559808512, %and.i.i.3445
  %sub62177.i.i.3447 = and i64 %neg.i.i.3446, %conv60.i.i.3444
  %and66.i.i.3448 = ashr i64 %sub62177.i.i.3447, 63
  %or.i.i.3449 = or i64 %and66.i.i.3448, %sub58.i.i.3443
  %conv68.i.i.3450 = zext i64 %or.i.i.3449 to i128
  %sub70.i.i.3451 = sub i128 %add50.i.i.3438, %conv68.i.i.3450
  %and71.i.i.3452 = and i64 %or.i.i.3449, 4294967295
  %conv72.i.i.3453 = zext i64 %and71.i.i.3452 to i128
  %sub74.i.i.3454 = sub i128 %sub54.i.i.3440, %conv72.i.i.3453
  %and75.i.i.3455 = and i64 %or.i.i.3449, -4294967295
  %conv76.i.i.3456 = zext i64 %and75.i.i.3455 to i128
  %sub78.i.i.3457 = sub nsw i128 %add47.i.i.3436, %conv76.i.i.3456
  %shr80.i.i.3458 = lshr i128 %sub70.i.i.3451, 64
  %add84.i.i.3459 = add i128 %sub74.i.i.3454, %shr80.i.i.3458
  %shr90.i.i.3461 = lshr i128 %add84.i.i.3459, 64
  %add94.i.i.3462 = add nuw nsw i128 %add13.i.i.3420, %shr90.i.i.3461
  %shr100.i.i.3464 = lshr i128 %add94.i.i.3462, 64
  %add104.i.i.3465 = add nsw i128 %shr100.i.i.3464, %sub78.i.i.3457
  %exitcond7570 = icmp eq i32 %i.2, 32
  br i1 %exitcond7570, label %for.end.85, label %for.body.78

for.body.78:                                      ; preds = %for.cond.76
  %conv.i.3471 = and i128 %sub70.i.i.3451, 18446744073709551615
  %mul.i.3472 = mul nuw i128 %conv.i.3471, %conv.i.3471
  %shr.i.3473 = lshr i128 %mul.i.3472, 64
  %conv5.i.3474 = and i128 %mul.i.3472, 18446744073709551615
  %conv12.i.3477 = and i128 %add84.i.i.3459, 18446744073709551615
  %mul13.i.3478 = mul nuw i128 %conv12.i.3477, %conv.i.3471
  %shr15.i.3479 = lshr i128 %mul13.i.3478, 64
  %conv17.i.3480 = shl i128 %mul13.i.3478, 1
  %factor.i.3481 = and i128 %conv17.i.3480, 36893488147419103230
  %add21.i.3482 = add nuw nsw i128 %factor.i.3481, %shr.i.3473
  %conv27.i.3485 = and i128 %add94.i.i.3462, 18446744073709551615
  %mul28.i.3486 = mul nuw i128 %conv27.i.3485, %conv.i.3471
  %shr30.i.3487 = lshr i128 %mul28.i.3486, 64
  %conv32.i.3488 = and i128 %mul28.i.3486, 18446744073709551615
  %add34.i.3489 = add nuw nsw i128 %conv32.i.3488, %shr15.i.3479
  %conv42.i.3493 = and i128 %add104.i.i.3465, 18446744073709551615
  %mul43.i.3494 = mul nuw i128 %conv42.i.3493, %conv.i.3471
  %shr45.i.3495 = lshr i128 %mul43.i.3494, 64
  %conv47.i.3496 = and i128 %mul43.i.3494, 18446744073709551615
  %mul56.i.3499 = mul nuw i128 %conv27.i.3485, %conv12.i.3477
  %shr58.i.3500 = lshr i128 %mul56.i.3499, 64
  %conv60.i.3501 = and i128 %mul56.i.3499, 18446744073709551615
  %add49.i.3497 = add nuw nsw i128 %conv60.i.3501, %shr30.i.3487
  %add62.i.3502 = add nuw nsw i128 %add49.i.3497, %conv47.i.3496
  %mul64.i.3503 = shl nuw nsw i128 %add62.i.3502, 1
  %add67.i.3504 = add nuw nsw i128 %shr45.i.3495, %shr58.i.3500
  %mul72.i.3505 = mul nuw i128 %conv12.i.3477, %conv12.i.3477
  %shr74.i.3506 = lshr i128 %mul72.i.3505, 64
  %conv76.i.3507 = and i128 %mul72.i.3505, 18446744073709551615
  %mul86.i.3510 = mul nuw i128 %conv42.i.3493, %conv12.i.3477
  %shr88.i.3511 = lshr i128 %mul86.i.3510, 64
  %conv90.i.3512 = and i128 %mul86.i.3510, 18446744073709551615
  %add92.i.3513 = add nuw nsw i128 %add67.i.3504, %conv90.i.3512
  %mul94.i.3514 = shl nuw nsw i128 %add92.i.3513, 1
  %mul101.i.3516 = mul nuw i128 %conv42.i.3493, %conv27.i.3485
  %shr103.i.3517 = lshr i128 %mul101.i.3516, 64
  %conv105.i.3518 = and i128 %mul101.i.3516, 18446744073709551615
  %add107.i.3519 = add nuw nsw i128 %conv105.i.3518, %shr88.i.3511
  %mul109.i.3520 = shl nuw nsw i128 %add107.i.3519, 1
  %add114.i.3522 = shl nuw nsw i128 %shr103.i.3517, 1
  %mul119.i.3523 = mul nuw i128 %conv27.i.3485, %conv27.i.3485
  %shr121.i.3524 = lshr i128 %mul119.i.3523, 64
  %conv123.i.3525 = and i128 %mul119.i.3523, 18446744073709551615
  %add125.i.3526 = add nuw nsw i128 %mul94.i.3514, %conv123.i.3525
  %add128.i.3527 = add nuw nsw i128 %mul109.i.3520, %shr121.i.3524
  %mul133.i.3528 = mul nuw i128 %conv42.i.3493, %conv42.i.3493
  %shr135.i.3529 = lshr i128 %mul133.i.3528, 64
  %conv137.i.3530 = and i128 %mul133.i.3528, 18446744073709551615
  %add139.i.3531 = add nuw nsw i128 %add114.i.3522, %conv137.i.3530
  %add.i.3369 = add nuw nsw i128 %conv5.i.3474, 1267650600228229401427983728624
  %add3.i.3371 = or i128 %add21.i.3482, 1267650600228229401496703205376
  %shl.i.i.3381 = shl nuw nsw i128 %add128.i.3527, 32
  %add.i.i.3382 = add nuw nsw i128 %shl.i.i.3381, %add125.i.3526
  %sub7.i.i.3386 = sub nsw i128 %add128.i.3527, %shr135.i.3529
  %shl13.i.i.3389 = shl nuw nsw i128 %add125.i.3526, 32
  %shl28.i.i.3397 = shl nuw nsw i128 %add139.i.3531, 32
  %shl32.i.i.3399 = shl nuw nsw i128 %add139.i.3531, 33
  %add9.i.i.3387 = add nuw nsw i128 %shl32.i.i.3399, %add3.i.3371
  %sub15.i.i.3390 = add nsw i128 %add9.i.i.3387, %sub7.i.i.3386
  %add34.i.i.3400 = sub nsw i128 %sub15.i.i.3390, %shl13.i.i.3389
  %shl46.i.i.3406 = shl nuw nsw i128 %shr135.i.3529, 32
  %add3.i.i.3383 = sub nsw i128 %add.i.3369, %shr135.i.3529
  %sub26.i.i.3396 = sub nsw i128 %add3.i.i.3383, %shl46.i.i.3406
  %sub30.i.i.3398 = sub nsw i128 %sub26.i.i.3396, %add139.i.3531
  %sub44.i.i.3405 = sub nsw i128 %sub30.i.i.3398, %shl28.i.i.3397
  %sub48.i.i.3407 = add nsw i128 %sub44.i.i.3405, %add.i.i.3382
  %shl50.i.i.3408 = shl nuw nsw i128 %shr135.i.3529, 33
  %tmp7544 = add nuw nsw i128 %add34.i.3489, %add139.i.3531
  %tmp7545 = shl nuw nsw i128 %tmp7544, 1
  %add6.i.3374 = add nuw nsw i128 %conv76.i.3507, 1267650600228229401427983728656
  %sub11.i.i.3388 = add nuw nsw i128 %add6.i.3374, %shl50.i.i.3408
  %sub23.i.i.3394 = sub nsw i128 %sub11.i.i.3388, %sub7.i.i.3386
  %add37.i.i.3402 = sub nsw i128 %sub23.i.i.3394, %shl.i.i.3381
  %add52.i.i.3409 = add i128 %add37.i.i.3402, %tmp7545
  %mul54.i.i.3410 = mul nuw nsw i128 %shr135.i.3529, 3
  %add81.i.3509 = add nuw nsw i128 %shr74.i.3506, 1267650600228229401427983728656
  %add9.i.3377 = add nuw nsw i128 %add81.i.3509, %mul54.i.i.3410
  %sub.i.i.3384 = add nuw nsw i128 %add9.i.3377, %mul64.i.3503
  %add19.i.i.3392 = sub nsw i128 %sub.i.i.3384, %shl28.i.i.3397
  %sub41.i.i.3404 = sub nsw i128 %add19.i.i.3392, %add.i.i.3382
  %add56.i.i.3411 = add i128 %sub41.i.i.3404, %shl13.i.i.3389
  %inc84 = add nuw nsw i32 %i.2, 1
  br label %for.cond.76

for.end.85:                                       ; preds = %for.cond.76
  %add104.i.i.3465.lcssa = phi i128 [ %add104.i.i.3465, %for.cond.76 ]
  %add94.i.i.3462.lcssa = phi i128 [ %add94.i.i.3462, %for.cond.76 ]
  %add84.i.i.3459.lcssa = phi i128 [ %add84.i.i.3459, %for.cond.76 ]
  %sub70.i.i.3451.lcssa = phi i128 [ %sub70.i.i.3451, %for.cond.76 ]
  %4 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.3215 = add i128 %4, 18446744069414584320
  %5 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.3217 = lshr i128 %5, 64
  %add8.i.3218 = add i128 %add.i.3215, %shr.i.3217
  %conv12.i.3219 = and i128 %5, 18446744073709551615
  %add13.i.3220 = add nuw nsw i128 %conv12.i.3219, 18446673704965373952
  %6 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.3221 = add i128 %6, 18446744073709551615
  %7 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.3223 = add i128 %7, 1298074214633706907132628377272319
  %shr22.i.3224 = lshr i128 %add8.i.3218, 64
  %conv23.i.3225 = trunc i128 %shr22.i.3224 to i64
  %conv26.i.3226 = and i128 %add8.i.3218, 18446744073709551615
  %sub.i.3227 = sub nsw i128 %conv26.i.3226, %shr22.i.3224
  %shl.i.3228 = shl nuw nsw i128 %shr22.i.3224, 32
  %add32.i.3229 = add nsw i128 %sub.i.3227, %shl.i.3228
  %shr34.i.3230 = lshr i128 %add32.i.3229, 64
  %conv35.i.3231 = trunc i128 %shr34.i.3230 to i64
  %add36.i.3232 = add i64 %conv35.i.3231, %conv23.i.3225
  %conv39.i.3233 = and i128 %add32.i.3229, 18446744073709551615
  %sub43.i.3234 = sub nsw i128 %conv39.i.3233, %shr34.i.3230
  %shl45.i.3235 = shl nuw nsw i128 %shr34.i.3230, 32
  %add47.i.3236 = add nsw i128 %sub43.i.3234, %shl45.i.3235
  %conv48.i.3237 = zext i64 %add36.i.3232 to i128
  %add50.i.3238 = add i128 %add16.i.3221, %conv48.i.3237
  %shl52.i.3239 = shl nuw nsw i128 %conv48.i.3237, 32
  %sub54.i.3240 = sub i128 %add19.i.3223, %shl52.i.3239
  %shr56.i.3241 = lshr i128 %add47.i.3236, 64
  %conv57.i.3242 = trunc i128 %shr56.i.3241 to i64
  %sub58.i.3243 = sub i64 0, %conv57.i.3242
  %conv60.i.3244 = trunc i128 %add47.i.3236 to i64
  %and.i.3245 = and i64 %conv60.i.3244, 9223372036854775807
  %neg.i.3246 = sub nsw i64 9223372032559808512, %and.i.3245
  %sub62177.i.3247 = and i64 %neg.i.3246, %conv60.i.3244
  %and66.i.3248 = ashr i64 %sub62177.i.3247, 63
  %or.i.3249 = or i64 %and66.i.3248, %sub58.i.3243
  %conv68.i.3250 = zext i64 %or.i.3249 to i128
  %sub70.i.3251 = sub i128 %add50.i.3238, %conv68.i.3250
  %and71.i.3252 = and i64 %or.i.3249, 4294967295
  %conv72.i.3253 = zext i64 %and71.i.3252 to i128
  %sub74.i.3254 = sub i128 %sub54.i.3240, %conv72.i.3253
  %and75.i.3255 = and i64 %or.i.3249, -4294967295
  %conv76.i.3256 = zext i64 %and75.i.3255 to i128
  %sub78.i.3257 = sub nsw i128 %add47.i.3236, %conv76.i.3256
  %shr80.i.3258 = lshr i128 %sub70.i.3251, 64
  %add84.i.3259 = add i128 %sub74.i.3254, %shr80.i.3258
  %shr90.i.3261 = lshr i128 %add84.i.3259, 64
  %add94.i.3262 = add nuw nsw i128 %add13.i.3220, %shr90.i.3261
  %shr100.i.3264 = lshr i128 %add94.i.3262, 64
  %add104.i.3265 = add nsw i128 %sub78.i.3257, %shr100.i.3264
  %conv.i.3271 = and i128 %sub70.i.i.3451.lcssa, 18446744073709551615
  %conv2.i.3272 = and i128 %sub70.i.3251, 18446744073709551615
  %mul.i.3273 = mul nuw i128 %conv2.i.3272, %conv.i.3271
  %shr.i.3274 = lshr i128 %mul.i.3273, 64
  %conv5.i.3275 = and i128 %mul.i.3273, 18446744073709551615
  %conv12.i.3278 = and i128 %add84.i.3259, 18446744073709551615
  %mul13.i.3279 = mul nuw i128 %conv12.i.3278, %conv.i.3271
  %shr15.i.3280 = lshr i128 %mul13.i.3279, 64
  %conv17.i.3281 = and i128 %mul13.i.3279, 18446744073709551615
  %conv22.i.3285 = and i128 %add84.i.i.3459.lcssa, 18446744073709551615
  %mul25.i.3286 = mul nuw i128 %conv2.i.3272, %conv22.i.3285
  %shr27.i.3287 = lshr i128 %mul25.i.3286, 64
  %conv29.i.3288 = and i128 %mul25.i.3286, 18446744073709551615
  %add.i.3282 = add nuw nsw i128 %conv29.i.3288, %shr.i.3274
  %add31.i.3289 = add nuw nsw i128 %add.i.3282, %conv17.i.3281
  %conv38.i.3292 = and i128 %add94.i.3262, 18446744073709551615
  %mul39.i.3293 = mul nuw i128 %conv38.i.3292, %conv.i.3271
  %shr41.i.3294 = lshr i128 %mul39.i.3293, 64
  %conv43.i.3295 = and i128 %mul39.i.3293, 18446744073709551615
  %mul52.i.3298 = mul nuw i128 %conv12.i.3278, %conv22.i.3285
  %shr54.i.3299 = lshr i128 %mul52.i.3298, 64
  %conv56.i.3300 = and i128 %mul52.i.3298, 18446744073709551615
  %conv63.i.3304 = and i128 %add94.i.i.3462.lcssa, 18446744073709551615
  %mul66.i.3305 = mul nuw i128 %conv2.i.3272, %conv63.i.3304
  %shr68.i.3306 = lshr i128 %mul66.i.3305, 64
  %conv70.i.3307 = and i128 %mul66.i.3305, 18446744073709551615
  %conv79.i.3311 = and i128 %add104.i.3265, 18446744073709551615
  %mul80.i.3312 = mul nuw i128 %conv79.i.3311, %conv.i.3271
  %shr82.i.3313 = lshr i128 %mul80.i.3312, 64
  %conv84.i.3314 = and i128 %mul80.i.3312, 18446744073709551615
  %mul93.i.3317 = mul nuw i128 %conv38.i.3292, %conv22.i.3285
  %shr95.i.3318 = lshr i128 %mul93.i.3317, 64
  %conv97.i.3319 = and i128 %mul93.i.3317, 18446744073709551615
  %mul107.i.3322 = mul nuw i128 %conv12.i.3278, %conv63.i.3304
  %shr109.i.3323 = lshr i128 %mul107.i.3322, 64
  %conv111.i.3324 = and i128 %mul107.i.3322, 18446744073709551615
  %conv118.i.3328 = and i128 %add104.i.i.3465.lcssa, 18446744073709551615
  %mul121.i.3329 = mul nuw i128 %conv2.i.3272, %conv118.i.3328
  %shr123.i.3330 = lshr i128 %mul121.i.3329, 64
  %conv125.i.3331 = and i128 %mul121.i.3329, 18446744073709551615
  %mul135.i.3334 = mul nuw i128 %conv79.i.3311, %conv22.i.3285
  %shr137.i.3335 = lshr i128 %mul135.i.3334, 64
  %conv139.i.3336 = and i128 %mul135.i.3334, 18446744073709551615
  %mul148.i.3339 = mul nuw i128 %conv38.i.3292, %conv63.i.3304
  %shr150.i.3340 = lshr i128 %mul148.i.3339, 64
  %conv152.i.3341 = and i128 %mul148.i.3339, 18446744073709551615
  %mul162.i.3344 = mul nuw i128 %conv12.i.3278, %conv118.i.3328
  %shr164.i.3345 = lshr i128 %mul162.i.3344, 64
  %conv166.i.3346 = and i128 %mul162.i.3344, 18446744073709551615
  %add102.i.3321 = add nuw nsw i128 %shr109.i.3323, %shr123.i.3330
  %add116.i.3326 = add nuw nsw i128 %add102.i.3321, %conv166.i.3346
  %add130.i.3333 = add nuw nsw i128 %add116.i.3326, %shr95.i.3318
  %add141.i.3337 = add nuw nsw i128 %add130.i.3333, %conv152.i.3341
  %add154.i.3342 = add nuw nsw i128 %add141.i.3337, %shr82.i.3313
  %add168.i.3347 = add nuw nsw i128 %add154.i.3342, %conv139.i.3336
  %mul176.i.3349 = mul nuw i128 %conv79.i.3311, %conv63.i.3304
  %shr178.i.3350 = lshr i128 %mul176.i.3349, 64
  %conv180.i.3351 = and i128 %mul176.i.3349, 18446744073709551615
  %mul189.i.3354 = mul nuw i128 %conv38.i.3292, %conv118.i.3328
  %shr191.i.3355 = lshr i128 %mul189.i.3354, 64
  %conv193.i.3356 = and i128 %mul189.i.3354, 18446744073709551615
  %add157.i.3343 = add nuw nsw i128 %shr150.i.3340, %shr164.i.3345
  %add171.i.3348 = add nuw nsw i128 %add157.i.3343, %conv193.i.3356
  %add182.i.3352 = add nuw nsw i128 %add171.i.3348, %shr137.i.3335
  %add195.i.3357 = add nuw nsw i128 %add182.i.3352, %conv180.i.3351
  %add198.i.3358 = add nuw nsw i128 %shr178.i.3350, %shr191.i.3355
  %mul203.i.3359 = mul nuw i128 %conv79.i.3311, %conv118.i.3328
  %shr205.i.3360 = lshr i128 %mul203.i.3359, 64
  %conv207.i.3361 = and i128 %mul203.i.3359, 18446744073709551615
  %add209.i.3362 = add nuw nsw i128 %add198.i.3358, %conv207.i.3361
  %add.i.3111 = add nuw nsw i128 %conv5.i.3275, 1267650600228229401427983728624
  %add3.i.3113 = or i128 %add31.i.3289, 1267650600228229401496703205376
  %shl.i.i.3123 = shl nuw nsw i128 %add195.i.3357, 32
  %add.i.i.3124 = add i128 %add168.i.3347, %shl.i.i.3123
  %sub7.i.i.3128 = sub nsw i128 %add195.i.3357, %shr205.i.3360
  %shl13.i.i.3131 = shl i128 %add168.i.3347, 32
  %shl28.i.i.3139 = shl nuw nsw i128 %add209.i.3362, 32
  %shl32.i.i.3141 = shl nuw nsw i128 %add209.i.3362, 33
  %add9.i.i.3129 = add nuw nsw i128 %shl32.i.i.3141, %add3.i.3113
  %sub15.i.i.3132 = add nsw i128 %add9.i.i.3129, %sub7.i.i.3128
  %add34.i.i.3142 = sub i128 %sub15.i.i.3132, %shl13.i.i.3131
  %mul.i.i.3143 = shl nuw nsw i128 %add209.i.3362, 1
  %shl46.i.i.3148 = shl nuw nsw i128 %shr205.i.3360, 32
  %add3.i.i.3125 = sub nsw i128 %add.i.3111, %shr205.i.3360
  %sub26.i.i.3138 = sub nsw i128 %add3.i.i.3125, %shl46.i.i.3148
  %sub30.i.i.3140 = sub nsw i128 %sub26.i.i.3138, %add209.i.3362
  %sub44.i.i.3147 = sub nsw i128 %sub30.i.i.3140, %shl28.i.i.3139
  %sub48.i.i.3149 = add i128 %sub44.i.i.3147, %add.i.i.3124
  %shl50.i.i.3150 = shl nuw nsw i128 %shr205.i.3360, 33
  %add34.i.3290 = add nuw nsw i128 %shr27.i.3287, 1267650600228229401427983728656
  %add45.i.3296 = add nuw nsw i128 %add34.i.3290, %conv70.i.3307
  %add58.i.3301 = add nuw nsw i128 %add45.i.3296, %shr15.i.3280
  %add72.i.3308 = add nuw nsw i128 %add58.i.3301, %conv56.i.3300
  %add6.i.3116 = add nuw nsw i128 %add72.i.3308, %conv43.i.3295
  %sub11.i.i.3130 = add nuw nsw i128 %add6.i.3116, %shl50.i.i.3150
  %sub23.i.i.3136 = add i128 %sub11.i.i.3130, %mul.i.i.3143
  %add37.i.i.3144 = sub i128 %sub23.i.i.3136, %sub7.i.i.3128
  %add52.i.i.3151 = sub i128 %add37.i.i.3144, %shl.i.i.3123
  %mul54.i.i.3152 = mul nuw nsw i128 %shr205.i.3360, 3
  %add61.i.3302 = add nuw nsw i128 %shr68.i.3306, 1267650600228229401427983728656
  %add75.i.3309 = add nuw nsw i128 %add61.i.3302, %conv125.i.3331
  %add86.i.3315 = add nuw nsw i128 %add75.i.3309, %shr54.i.3299
  %add99.i.3320 = add nuw nsw i128 %add86.i.3315, %conv111.i.3324
  %add113.i.3325 = add nuw nsw i128 %add99.i.3320, %shr41.i.3294
  %add127.i.3332 = add nuw nsw i128 %add113.i.3325, %conv97.i.3319
  %add9.i.3119 = add i128 %add127.i.3332, %conv84.i.3314
  %sub.i.i.3126 = add i128 %add9.i.3119, %mul54.i.i.3152
  %add19.i.i.3134 = sub i128 %sub.i.i.3126, %shl28.i.i.3139
  %sub41.i.i.3146 = sub i128 %add19.i.i.3134, %add.i.i.3124
  %add56.i.i.3153 = add i128 %sub41.i.i.3146, %shl13.i.i.3131
  br label %for.body.94

for.body.94:                                      ; preds = %for.body.94, %for.end.85
  %i.37566 = phi i32 [ 0, %for.end.85 ], [ %inc100, %for.body.94 ]
  %sub26.i.i.499375127565 = phi i128 [ %sub48.i.i.3149, %for.end.85 ], [ %sub48.i.i.2985, %for.body.94 ]
  %sub15.i.i.423675177564 = phi i128 [ %add34.i.i.3142, %for.end.85 ], [ %add34.i.i.2978, %for.body.94 ]
  %add52.i.i.340975217563 = phi i128 [ %add52.i.i.3151, %for.end.85 ], [ %add52.i.i.2987, %for.body.94 ]
  %sub.i.i.514575267562 = phi i128 [ %add56.i.i.3153, %for.end.85 ], [ %add56.i.i.2989, %for.body.94 ]
  %add.i.i.2993 = add i128 %sub.i.i.514575267562, 18446744069414584320
  %shr.i.i.2995 = lshr i128 %add52.i.i.340975217563, 64
  %add8.i.i.2996 = add i128 %add.i.i.2993, %shr.i.i.2995
  %conv12.i.i.2997 = and i128 %add52.i.i.340975217563, 18446744073709551615
  %add13.i.i.2998 = add nuw nsw i128 %conv12.i.i.2997, 18446673704965373952
  %add16.i.i.2999 = add i128 %sub26.i.i.499375127565, 18446744073709551615
  %add19.i.i.3001 = add i128 %sub15.i.i.423675177564, 1298074214633706907132628377272319
  %shr22.i.i.3002 = lshr i128 %add8.i.i.2996, 64
  %conv23.i.i.3003 = trunc i128 %shr22.i.i.3002 to i64
  %conv26.i.i.3004 = and i128 %add8.i.i.2996, 18446744073709551615
  %sub.i.i.3005 = sub nsw i128 %conv26.i.i.3004, %shr22.i.i.3002
  %shl.i.i.3006 = shl nuw nsw i128 %shr22.i.i.3002, 32
  %add32.i.i.3007 = add nsw i128 %sub.i.i.3005, %shl.i.i.3006
  %shr34.i.i.3008 = lshr i128 %add32.i.i.3007, 64
  %conv35.i.i.3009 = trunc i128 %shr34.i.i.3008 to i64
  %add36.i.i.3010 = add i64 %conv35.i.i.3009, %conv23.i.i.3003
  %conv39.i.i.3011 = and i128 %add32.i.i.3007, 18446744073709551615
  %sub43.i.i.3012 = sub nsw i128 %conv39.i.i.3011, %shr34.i.i.3008
  %shl45.i.i.3013 = shl nuw nsw i128 %shr34.i.i.3008, 32
  %add47.i.i.3014 = add nsw i128 %sub43.i.i.3012, %shl45.i.i.3013
  %conv48.i.i.3015 = zext i64 %add36.i.i.3010 to i128
  %add50.i.i.3016 = add i128 %add16.i.i.2999, %conv48.i.i.3015
  %shl52.i.i.3017 = shl nuw nsw i128 %conv48.i.i.3015, 32
  %sub54.i.i.3018 = sub i128 %add19.i.i.3001, %shl52.i.i.3017
  %shr56.i.i.3019 = lshr i128 %add47.i.i.3014, 64
  %conv57.i.i.3020 = trunc i128 %shr56.i.i.3019 to i64
  %sub58.i.i.3021 = sub i64 0, %conv57.i.i.3020
  %conv60.i.i.3022 = trunc i128 %add47.i.i.3014 to i64
  %and.i.i.3023 = and i64 %conv60.i.i.3022, 9223372036854775807
  %neg.i.i.3024 = sub nsw i64 9223372032559808512, %and.i.i.3023
  %sub62177.i.i.3025 = and i64 %neg.i.i.3024, %conv60.i.i.3022
  %and66.i.i.3026 = ashr i64 %sub62177.i.i.3025, 63
  %or.i.i.3027 = or i64 %and66.i.i.3026, %sub58.i.i.3021
  %conv68.i.i.3028 = zext i64 %or.i.i.3027 to i128
  %sub70.i.i.3029 = sub i128 %add50.i.i.3016, %conv68.i.i.3028
  %and71.i.i.3030 = and i64 %or.i.i.3027, 4294967295
  %conv72.i.i.3031 = zext i64 %and71.i.i.3030 to i128
  %sub74.i.i.3032 = sub i128 %sub54.i.i.3018, %conv72.i.i.3031
  %and75.i.i.3033 = and i64 %or.i.i.3027, -4294967295
  %conv76.i.i.3034 = zext i64 %and75.i.i.3033 to i128
  %sub78.i.i.3035 = sub nsw i128 %add47.i.i.3014, %conv76.i.i.3034
  %shr80.i.i.3036 = lshr i128 %sub70.i.i.3029, 64
  %add84.i.i.3037 = add i128 %sub74.i.i.3032, %shr80.i.i.3036
  %shr90.i.i.3039 = lshr i128 %add84.i.i.3037, 64
  %add94.i.i.3040 = add nuw nsw i128 %add13.i.i.2998, %shr90.i.i.3039
  %shr100.i.i.3042 = lshr i128 %add94.i.i.3040, 64
  %add104.i.i.3043 = add nsw i128 %sub78.i.i.3035, %shr100.i.i.3042
  %conv.i.3049 = and i128 %sub70.i.i.3029, 18446744073709551615
  %mul.i.3050 = mul nuw i128 %conv.i.3049, %conv.i.3049
  %shr.i.3051 = lshr i128 %mul.i.3050, 64
  %conv5.i.3052 = and i128 %mul.i.3050, 18446744073709551615
  %conv12.i.3055 = and i128 %add84.i.i.3037, 18446744073709551615
  %mul13.i.3056 = mul nuw i128 %conv12.i.3055, %conv.i.3049
  %shr15.i.3057 = lshr i128 %mul13.i.3056, 64
  %conv17.i.3058 = shl i128 %mul13.i.3056, 1
  %factor.i.3059 = and i128 %conv17.i.3058, 36893488147419103230
  %add21.i.3060 = add nuw nsw i128 %factor.i.3059, %shr.i.3051
  %conv27.i.3063 = and i128 %add94.i.i.3040, 18446744073709551615
  %mul28.i.3064 = mul nuw i128 %conv27.i.3063, %conv.i.3049
  %shr30.i.3065 = lshr i128 %mul28.i.3064, 64
  %conv32.i.3066 = and i128 %mul28.i.3064, 18446744073709551615
  %add34.i.3067 = add nuw nsw i128 %conv32.i.3066, %shr15.i.3057
  %conv42.i.3071 = and i128 %add104.i.i.3043, 18446744073709551615
  %mul43.i.3072 = mul nuw i128 %conv42.i.3071, %conv.i.3049
  %shr45.i.3073 = lshr i128 %mul43.i.3072, 64
  %conv47.i.3074 = and i128 %mul43.i.3072, 18446744073709551615
  %mul56.i.3077 = mul nuw i128 %conv27.i.3063, %conv12.i.3055
  %shr58.i.3078 = lshr i128 %mul56.i.3077, 64
  %conv60.i.3079 = and i128 %mul56.i.3077, 18446744073709551615
  %add49.i.3075 = add nuw nsw i128 %conv60.i.3079, %shr30.i.3065
  %add62.i.3080 = add nuw nsw i128 %add49.i.3075, %conv47.i.3074
  %mul64.i.3081 = shl nuw nsw i128 %add62.i.3080, 1
  %add67.i.3082 = add nuw nsw i128 %shr45.i.3073, %shr58.i.3078
  %mul72.i.3083 = mul nuw i128 %conv12.i.3055, %conv12.i.3055
  %shr74.i.3084 = lshr i128 %mul72.i.3083, 64
  %conv76.i.3085 = and i128 %mul72.i.3083, 18446744073709551615
  %mul86.i.3088 = mul nuw i128 %conv42.i.3071, %conv12.i.3055
  %shr88.i.3089 = lshr i128 %mul86.i.3088, 64
  %conv90.i.3090 = and i128 %mul86.i.3088, 18446744073709551615
  %add92.i.3091 = add nuw nsw i128 %add67.i.3082, %conv90.i.3090
  %mul94.i.3092 = shl nuw nsw i128 %add92.i.3091, 1
  %mul101.i.3094 = mul nuw i128 %conv42.i.3071, %conv27.i.3063
  %shr103.i.3095 = lshr i128 %mul101.i.3094, 64
  %conv105.i.3096 = and i128 %mul101.i.3094, 18446744073709551615
  %add107.i.3097 = add nuw nsw i128 %conv105.i.3096, %shr88.i.3089
  %mul109.i.3098 = shl nuw nsw i128 %add107.i.3097, 1
  %add114.i.3100 = shl nuw nsw i128 %shr103.i.3095, 1
  %mul119.i.3101 = mul nuw i128 %conv27.i.3063, %conv27.i.3063
  %shr121.i.3102 = lshr i128 %mul119.i.3101, 64
  %conv123.i.3103 = and i128 %mul119.i.3101, 18446744073709551615
  %add125.i.3104 = add nuw nsw i128 %mul94.i.3092, %conv123.i.3103
  %add128.i.3105 = add nuw nsw i128 %mul109.i.3098, %shr121.i.3102
  %mul133.i.3106 = mul nuw i128 %conv42.i.3071, %conv42.i.3071
  %shr135.i.3107 = lshr i128 %mul133.i.3106, 64
  %conv137.i.3108 = and i128 %mul133.i.3106, 18446744073709551615
  %add139.i.3109 = add nuw nsw i128 %add114.i.3100, %conv137.i.3108
  %add.i.2947 = add nuw nsw i128 %conv5.i.3052, 1267650600228229401427983728624
  %add3.i.2949 = or i128 %add21.i.3060, 1267650600228229401496703205376
  %shl.i.i.2959 = shl nuw nsw i128 %add128.i.3105, 32
  %add.i.i.2960 = add nuw nsw i128 %shl.i.i.2959, %add125.i.3104
  %sub7.i.i.2964 = sub nsw i128 %add128.i.3105, %shr135.i.3107
  %shl13.i.i.2967 = shl nuw nsw i128 %add125.i.3104, 32
  %shl28.i.i.2975 = shl nuw nsw i128 %add139.i.3109, 32
  %shl32.i.i.2977 = shl nuw nsw i128 %add139.i.3109, 33
  %add9.i.i.2965 = add nuw nsw i128 %shl32.i.i.2977, %add3.i.2949
  %sub15.i.i.2968 = add nsw i128 %add9.i.i.2965, %sub7.i.i.2964
  %add34.i.i.2978 = sub nsw i128 %sub15.i.i.2968, %shl13.i.i.2967
  %shl46.i.i.2984 = shl nuw nsw i128 %shr135.i.3107, 32
  %add3.i.i.2961 = sub nsw i128 %add.i.2947, %shr135.i.3107
  %sub26.i.i.2974 = sub nsw i128 %add3.i.i.2961, %shl46.i.i.2984
  %sub30.i.i.2976 = sub nsw i128 %sub26.i.i.2974, %add139.i.3109
  %sub44.i.i.2983 = sub nsw i128 %sub30.i.i.2976, %shl28.i.i.2975
  %sub48.i.i.2985 = add nsw i128 %sub44.i.i.2983, %add.i.i.2960
  %shl50.i.i.2986 = shl nuw nsw i128 %shr135.i.3107, 33
  %tmp7546 = add nuw nsw i128 %add34.i.3067, %add139.i.3109
  %tmp7547 = shl nuw nsw i128 %tmp7546, 1
  %add6.i.2952 = add nuw nsw i128 %conv76.i.3085, 1267650600228229401427983728656
  %sub11.i.i.2966 = add nuw nsw i128 %add6.i.2952, %shl50.i.i.2986
  %sub23.i.i.2972 = sub nsw i128 %sub11.i.i.2966, %sub7.i.i.2964
  %add37.i.i.2980 = sub nsw i128 %sub23.i.i.2972, %shl.i.i.2959
  %add52.i.i.2987 = add i128 %add37.i.i.2980, %tmp7547
  %mul54.i.i.2988 = mul nuw nsw i128 %shr135.i.3107, 3
  %add81.i.3087 = add nuw nsw i128 %shr74.i.3084, 1267650600228229401427983728656
  %add9.i.2955 = add nuw nsw i128 %add81.i.3087, %mul54.i.i.2988
  %sub.i.i.2962 = add nuw nsw i128 %add9.i.2955, %mul64.i.3081
  %add19.i.i.2970 = sub nsw i128 %sub.i.i.2962, %shl28.i.i.2975
  %sub41.i.i.2982 = sub nsw i128 %add19.i.i.2970, %add.i.i.2960
  %add56.i.i.2989 = add i128 %sub41.i.i.2982, %shl13.i.i.2967
  %inc100 = add nuw nsw i32 %i.37566, 1
  %exitcond7569 = icmp eq i32 %inc100, 192
  br i1 %exitcond7569, label %for.end.101, label %for.body.94

for.end.101:                                      ; preds = %for.body.94
  %add56.i.i.2989.lcssa = phi i128 [ %add56.i.i.2989, %for.body.94 ]
  %add52.i.i.2987.lcssa = phi i128 [ %add52.i.i.2987, %for.body.94 ]
  %sub48.i.i.2985.lcssa = phi i128 [ %sub48.i.i.2985, %for.body.94 ]
  %add34.i.i.2978.lcssa = phi i128 [ %add34.i.i.2978, %for.body.94 ]
  %add.i.2798 = add i128 %add56.i.i.3581, 18446744069414584320
  %shr.i.2800 = lshr i128 %add52.i.i.3579, 64
  %add8.i.2801 = add i128 %add.i.2798, %shr.i.2800
  %conv12.i.2802 = and i128 %add52.i.i.3579, 18446744073709551615
  %add13.i.2803 = add nuw nsw i128 %conv12.i.2802, 18446673704965373952
  %add16.i.2804 = add i128 %sub48.i.i.3577, 18446744073709551615
  %add19.i.2806 = add i128 %add34.i.i.3570, 1298074214633706907132628377272319
  %shr22.i.2807 = lshr i128 %add8.i.2801, 64
  %conv23.i.2808 = trunc i128 %shr22.i.2807 to i64
  %conv26.i.2809 = and i128 %add8.i.2801, 18446744073709551615
  %sub.i.2810 = sub nsw i128 %conv26.i.2809, %shr22.i.2807
  %shl.i.2811 = shl nuw nsw i128 %shr22.i.2807, 32
  %add32.i.2812 = add nsw i128 %sub.i.2810, %shl.i.2811
  %shr34.i.2813 = lshr i128 %add32.i.2812, 64
  %conv35.i.2814 = trunc i128 %shr34.i.2813 to i64
  %add36.i.2815 = add i64 %conv35.i.2814, %conv23.i.2808
  %conv39.i.2816 = and i128 %add32.i.2812, 18446744073709551615
  %sub43.i.2817 = sub nsw i128 %conv39.i.2816, %shr34.i.2813
  %shl45.i.2818 = shl nuw nsw i128 %shr34.i.2813, 32
  %add47.i.2819 = add nsw i128 %sub43.i.2817, %shl45.i.2818
  %conv48.i.2820 = zext i64 %add36.i.2815 to i128
  %add50.i.2821 = add i128 %add16.i.2804, %conv48.i.2820
  %shl52.i.2822 = shl nuw nsw i128 %conv48.i.2820, 32
  %sub54.i.2823 = sub i128 %add19.i.2806, %shl52.i.2822
  %shr56.i.2824 = lshr i128 %add47.i.2819, 64
  %conv57.i.2825 = trunc i128 %shr56.i.2824 to i64
  %sub58.i.2826 = sub i64 0, %conv57.i.2825
  %conv60.i.2827 = trunc i128 %add47.i.2819 to i64
  %and.i.2828 = and i64 %conv60.i.2827, 9223372036854775807
  %neg.i.2829 = sub nsw i64 9223372032559808512, %and.i.2828
  %sub62177.i.2830 = and i64 %neg.i.2829, %conv60.i.2827
  %and66.i.2831 = ashr i64 %sub62177.i.2830, 63
  %or.i.2832 = or i64 %and66.i.2831, %sub58.i.2826
  %conv68.i.2833 = zext i64 %or.i.2832 to i128
  %sub70.i.2834 = sub i128 %add50.i.2821, %conv68.i.2833
  %and71.i.2835 = and i64 %or.i.2832, 4294967295
  %conv72.i.2836 = zext i64 %and71.i.2835 to i128
  %sub74.i.2837 = sub i128 %sub54.i.2823, %conv72.i.2836
  %and75.i.2838 = and i64 %or.i.2832, -4294967295
  %conv76.i.2839 = zext i64 %and75.i.2838 to i128
  %sub78.i.2840 = sub nsw i128 %add47.i.2819, %conv76.i.2839
  %shr80.i.2841 = lshr i128 %sub70.i.2834, 64
  %add84.i.2842 = add i128 %sub74.i.2837, %shr80.i.2841
  %shr90.i.2844 = lshr i128 %add84.i.2842, 64
  %add94.i.2845 = add nuw nsw i128 %add13.i.2803, %shr90.i.2844
  %shr100.i.2847 = lshr i128 %add94.i.2845, 64
  %add104.i.2848 = add nsw i128 %sub78.i.2840, %shr100.i.2847
  %conv2.i.2855 = and i128 %sub70.i.2834, 18446744073709551615
  %mul.i.2856 = mul nuw i128 %conv.i.3271, %conv2.i.2855
  %shr.i.2857 = lshr i128 %mul.i.2856, 64
  %conv5.i.2858 = and i128 %mul.i.2856, 18446744073709551615
  %conv12.i.2861 = and i128 %add84.i.2842, 18446744073709551615
  %mul13.i.2862 = mul nuw i128 %conv.i.3271, %conv12.i.2861
  %shr15.i.2863 = lshr i128 %mul13.i.2862, 64
  %conv17.i.2864 = and i128 %mul13.i.2862, 18446744073709551615
  %add.i.2865 = add nuw nsw i128 %conv17.i.2864, %shr.i.2857
  %mul25.i.2869 = mul nuw i128 %conv22.i.3285, %conv2.i.2855
  %shr27.i.2870 = lshr i128 %mul25.i.2869, 64
  %conv29.i.2871 = and i128 %mul25.i.2869, 18446744073709551615
  %add31.i.2872 = add nuw nsw i128 %add.i.2865, %conv29.i.2871
  %conv38.i.2875 = and i128 %add94.i.2845, 18446744073709551615
  %mul39.i.2876 = mul nuw i128 %conv.i.3271, %conv38.i.2875
  %shr41.i.2877 = lshr i128 %mul39.i.2876, 64
  %conv43.i.2878 = and i128 %mul39.i.2876, 18446744073709551615
  %mul52.i.2881 = mul nuw i128 %conv22.i.3285, %conv12.i.2861
  %shr54.i.2882 = lshr i128 %mul52.i.2881, 64
  %conv56.i.2883 = and i128 %mul52.i.2881, 18446744073709551615
  %mul66.i.2888 = mul nuw i128 %conv63.i.3304, %conv2.i.2855
  %shr68.i.2889 = lshr i128 %mul66.i.2888, 64
  %conv70.i.2890 = and i128 %mul66.i.2888, 18446744073709551615
  %conv79.i.2894 = and i128 %add104.i.2848, 18446744073709551615
  %mul80.i.2895 = mul nuw i128 %conv.i.3271, %conv79.i.2894
  %shr82.i.2896 = lshr i128 %mul80.i.2895, 64
  %conv84.i.2897 = and i128 %mul80.i.2895, 18446744073709551615
  %mul93.i.2900 = mul nuw i128 %conv22.i.3285, %conv38.i.2875
  %shr95.i.2901 = lshr i128 %mul93.i.2900, 64
  %conv97.i.2902 = and i128 %mul93.i.2900, 18446744073709551615
  %add102.i.2904 = add nuw nsw i128 %shr95.i.2901, %shr82.i.2896
  %mul107.i.2905 = mul nuw i128 %conv63.i.3304, %conv12.i.2861
  %shr109.i.2906 = lshr i128 %mul107.i.2905, 64
  %conv111.i.2907 = and i128 %mul107.i.2905, 18446744073709551615
  %mul121.i.2912 = mul nuw i128 %conv118.i.3328, %conv2.i.2855
  %shr123.i.2913 = lshr i128 %mul121.i.2912, 64
  %conv125.i.2914 = and i128 %mul121.i.2912, 18446744073709551615
  %mul135.i.2917 = mul nuw i128 %conv22.i.3285, %conv79.i.2894
  %shr137.i.2918 = lshr i128 %mul135.i.2917, 64
  %conv139.i.2919 = and i128 %mul135.i.2917, 18446744073709551615
  %mul148.i.2922 = mul nuw i128 %conv63.i.3304, %conv38.i.2875
  %shr150.i.2923 = lshr i128 %mul148.i.2922, 64
  %conv152.i.2924 = and i128 %mul148.i.2922, 18446744073709551615
  %add157.i.2926 = add nuw nsw i128 %shr150.i.2923, %shr137.i.2918
  %mul162.i.2927 = mul nuw i128 %conv118.i.3328, %conv12.i.2861
  %shr164.i.2928 = lshr i128 %mul162.i.2927, 64
  %conv166.i.2929 = and i128 %mul162.i.2927, 18446744073709551615
  %add116.i.2909 = add nuw nsw i128 %add102.i.2904, %conv139.i.2919
  %add130.i.2916 = add nuw nsw i128 %add116.i.2909, %shr109.i.2906
  %add141.i.2920 = add nuw nsw i128 %add130.i.2916, %conv152.i.2924
  %add154.i.2925 = add nuw nsw i128 %add141.i.2920, %shr123.i.2913
  %add168.i.2930 = add nuw nsw i128 %add154.i.2925, %conv166.i.2929
  %mul176.i.2932 = mul nuw i128 %conv63.i.3304, %conv79.i.2894
  %shr178.i.2933 = lshr i128 %mul176.i.2932, 64
  %conv180.i.2934 = and i128 %mul176.i.2932, 18446744073709551615
  %mul189.i.2937 = mul nuw i128 %conv118.i.3328, %conv38.i.2875
  %shr191.i.2938 = lshr i128 %mul189.i.2937, 64
  %conv193.i.2939 = and i128 %mul189.i.2937, 18446744073709551615
  %add171.i.2931 = add nuw nsw i128 %add157.i.2926, %conv180.i.2934
  %add182.i.2935 = add nuw nsw i128 %add171.i.2931, %shr164.i.2928
  %add195.i.2940 = add nuw nsw i128 %add182.i.2935, %conv193.i.2939
  %add198.i.2941 = add nuw nsw i128 %shr191.i.2938, %shr178.i.2933
  %mul203.i.2942 = mul nuw i128 %conv118.i.3328, %conv79.i.2894
  %shr205.i.2943 = lshr i128 %mul203.i.2942, 64
  %conv207.i.2944 = and i128 %mul203.i.2942, 18446744073709551615
  %add209.i.2945 = add nuw nsw i128 %add198.i.2941, %conv207.i.2944
  %add.i.2694 = add nuw nsw i128 %conv5.i.2858, 1267650600228229401427983728624
  %add3.i.2696 = or i128 %add31.i.2872, 1267650600228229401496703205376
  %shl.i.i.2706 = shl nuw nsw i128 %add195.i.2940, 32
  %add.i.i.2707 = add i128 %shl.i.i.2706, %add168.i.2930
  %sub7.i.i.2711 = sub nsw i128 %add195.i.2940, %shr205.i.2943
  %shl13.i.i.2714 = shl i128 %add168.i.2930, 32
  %shl28.i.i.2722 = shl nuw nsw i128 %add209.i.2945, 32
  %shl32.i.i.2724 = shl nuw nsw i128 %add209.i.2945, 33
  %add9.i.i.2712 = add nuw nsw i128 %shl32.i.i.2724, %add3.i.2696
  %sub15.i.i.2715 = add nsw i128 %add9.i.i.2712, %sub7.i.i.2711
  %add34.i.i.2725 = sub i128 %sub15.i.i.2715, %shl13.i.i.2714
  %mul.i.i.2726 = shl nuw nsw i128 %add209.i.2945, 1
  %shl46.i.i.2731 = shl nuw nsw i128 %shr205.i.2943, 32
  %add3.i.i.2708 = sub nsw i128 %add.i.2694, %shr205.i.2943
  %sub26.i.i.2721 = sub nsw i128 %add3.i.i.2708, %shl46.i.i.2731
  %sub30.i.i.2723 = sub nsw i128 %sub26.i.i.2721, %add209.i.2945
  %sub44.i.i.2730 = sub nsw i128 %sub30.i.i.2723, %shl28.i.i.2722
  %sub48.i.i.2732 = add i128 %sub44.i.i.2730, %add.i.i.2707
  %shl50.i.i.2733 = shl nuw nsw i128 %shr205.i.2943, 33
  %add34.i.2873 = add nuw nsw i128 %shr15.i.2863, 1267650600228229401427983728656
  %add45.i.2879 = add nuw nsw i128 %add34.i.2873, %conv43.i.2878
  %add58.i.2884 = add nuw nsw i128 %add45.i.2879, %shr27.i.2870
  %add72.i.2891 = add nuw nsw i128 %add58.i.2884, %conv56.i.2883
  %add6.i.2699 = add nuw nsw i128 %add72.i.2891, %conv70.i.2890
  %sub11.i.i.2713 = add nuw nsw i128 %add6.i.2699, %shl50.i.i.2733
  %sub23.i.i.2719 = add i128 %sub11.i.i.2713, %mul.i.i.2726
  %add37.i.i.2727 = sub i128 %sub23.i.i.2719, %sub7.i.i.2711
  %add52.i.i.2734 = sub i128 %add37.i.i.2727, %shl.i.i.2706
  %mul54.i.i.2735 = mul nuw nsw i128 %shr205.i.2943, 3
  %add61.i.2885 = add nuw nsw i128 %shr41.i.2877, 1267650600228229401427983728656
  %add75.i.2892 = add nuw nsw i128 %add61.i.2885, %conv84.i.2897
  %add86.i.2898 = add nuw nsw i128 %add75.i.2892, %shr54.i.2882
  %add99.i.2903 = add nuw nsw i128 %add86.i.2898, %conv97.i.2902
  %add113.i.2908 = add nuw nsw i128 %add99.i.2903, %shr68.i.2889
  %add127.i.2915 = add nuw nsw i128 %add113.i.2908, %conv111.i.2907
  %add9.i.2702 = add i128 %add127.i.2915, %conv125.i.2914
  %sub.i.i.2709 = add i128 %add9.i.2702, %mul54.i.i.2735
  %add19.i.i.2717 = sub i128 %sub.i.i.2709, %shl28.i.i.2722
  %sub41.i.i.2729 = sub i128 %add19.i.i.2717, %add.i.i.2707
  %add56.i.i.2736 = add i128 %sub41.i.i.2729, %shl13.i.i.2714
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.body.109, %for.end.101
  %sub.i.i.21287510 = phi i128 [ %add56.i.i.2736, %for.end.101 ], [ %add56.i.i.2572, %for.body.109 ]
  %add6.i.14487506 = phi i128 [ %add52.i.i.2734, %for.end.101 ], [ %add52.i.i.2570, %for.body.109 ]
  %add34.i.i.27257504 = phi i128 [ %add34.i.i.2725, %for.end.101 ], [ %add34.i.i.2561, %for.body.109 ]
  %add.i.18607501 = phi i128 [ %sub48.i.i.2732, %for.end.101 ], [ %sub48.i.i.2568, %for.body.109 ]
  %i.4 = phi i32 [ 0, %for.end.101 ], [ %inc115, %for.body.109 ]
  %add.i.i.2576 = add i128 %sub.i.i.21287510, 18446744069414584320
  %shr.i.i.2578 = lshr i128 %add6.i.14487506, 64
  %add8.i.i.2579 = add i128 %add.i.i.2576, %shr.i.i.2578
  %conv12.i.i.2580 = and i128 %add6.i.14487506, 18446744073709551615
  %add13.i.i.2581 = add nuw nsw i128 %conv12.i.i.2580, 18446673704965373952
  %add16.i.i.2582 = add i128 %add.i.18607501, 18446744073709551615
  %add19.i.i.2584 = add i128 %add34.i.i.27257504, 1298074214633706907132628377272319
  %shr22.i.i.2585 = lshr i128 %add8.i.i.2579, 64
  %conv23.i.i.2586 = trunc i128 %shr22.i.i.2585 to i64
  %conv26.i.i.2587 = and i128 %add8.i.i.2579, 18446744073709551615
  %sub.i.i.2588 = sub nsw i128 %conv26.i.i.2587, %shr22.i.i.2585
  %shl.i.i.2589 = shl nuw nsw i128 %shr22.i.i.2585, 32
  %add32.i.i.2590 = add nsw i128 %sub.i.i.2588, %shl.i.i.2589
  %shr34.i.i.2591 = lshr i128 %add32.i.i.2590, 64
  %conv35.i.i.2592 = trunc i128 %shr34.i.i.2591 to i64
  %add36.i.i.2593 = add i64 %conv35.i.i.2592, %conv23.i.i.2586
  %conv39.i.i.2594 = and i128 %add32.i.i.2590, 18446744073709551615
  %sub43.i.i.2595 = sub nsw i128 %conv39.i.i.2594, %shr34.i.i.2591
  %shl45.i.i.2596 = shl nuw nsw i128 %shr34.i.i.2591, 32
  %add47.i.i.2597 = add nsw i128 %sub43.i.i.2595, %shl45.i.i.2596
  %conv48.i.i.2598 = zext i64 %add36.i.i.2593 to i128
  %add50.i.i.2599 = add i128 %add16.i.i.2582, %conv48.i.i.2598
  %shl52.i.i.2600 = shl nuw nsw i128 %conv48.i.i.2598, 32
  %sub54.i.i.2601 = sub i128 %add19.i.i.2584, %shl52.i.i.2600
  %shr56.i.i.2602 = lshr i128 %add47.i.i.2597, 64
  %conv57.i.i.2603 = trunc i128 %shr56.i.i.2602 to i64
  %sub58.i.i.2604 = sub i64 0, %conv57.i.i.2603
  %conv60.i.i.2605 = trunc i128 %add47.i.i.2597 to i64
  %and.i.i.2606 = and i64 %conv60.i.i.2605, 9223372036854775807
  %neg.i.i.2607 = sub nsw i64 9223372032559808512, %and.i.i.2606
  %sub62177.i.i.2608 = and i64 %neg.i.i.2607, %conv60.i.i.2605
  %and66.i.i.2609 = ashr i64 %sub62177.i.i.2608, 63
  %or.i.i.2610 = or i64 %and66.i.i.2609, %sub58.i.i.2604
  %conv68.i.i.2611 = zext i64 %or.i.i.2610 to i128
  %sub70.i.i.2612 = sub i128 %add50.i.i.2599, %conv68.i.i.2611
  %and71.i.i.2613 = and i64 %or.i.i.2610, 4294967295
  %conv72.i.i.2614 = zext i64 %and71.i.i.2613 to i128
  %sub74.i.i.2615 = sub i128 %sub54.i.i.2601, %conv72.i.i.2614
  %and75.i.i.2616 = and i64 %or.i.i.2610, -4294967295
  %conv76.i.i.2617 = zext i64 %and75.i.i.2616 to i128
  %sub78.i.i.2618 = sub nsw i128 %add47.i.i.2597, %conv76.i.i.2617
  %shr80.i.i.2619 = lshr i128 %sub70.i.i.2612, 64
  %add84.i.i.2620 = add i128 %sub74.i.i.2615, %shr80.i.i.2619
  %shr90.i.i.2622 = lshr i128 %add84.i.i.2620, 64
  %add94.i.i.2623 = add nuw nsw i128 %add13.i.i.2581, %shr90.i.i.2622
  %shr100.i.i.2625 = lshr i128 %add94.i.i.2623, 64
  %add104.i.i.2626 = add nsw i128 %shr100.i.i.2625, %sub78.i.i.2618
  %conv.i.2632 = and i128 %sub70.i.i.2612, 18446744073709551615
  %exitcond7568 = icmp eq i32 %i.4, 16
  br i1 %exitcond7568, label %for.end.116, label %for.body.109

for.body.109:                                     ; preds = %for.cond.107
  %mul.i.2633 = mul nuw i128 %conv.i.2632, %conv.i.2632
  %shr.i.2634 = lshr i128 %mul.i.2633, 64
  %conv5.i.2635 = and i128 %mul.i.2633, 18446744073709551615
  %conv12.i.2638 = and i128 %add84.i.i.2620, 18446744073709551615
  %mul13.i.2639 = mul nuw i128 %conv12.i.2638, %conv.i.2632
  %shr15.i.2640 = lshr i128 %mul13.i.2639, 64
  %conv17.i.2641 = shl i128 %mul13.i.2639, 1
  %factor.i.2642 = and i128 %conv17.i.2641, 36893488147419103230
  %add21.i.2643 = add nuw nsw i128 %factor.i.2642, %shr.i.2634
  %conv27.i.2646 = and i128 %add94.i.i.2623, 18446744073709551615
  %mul28.i.2647 = mul nuw i128 %conv27.i.2646, %conv.i.2632
  %shr30.i.2648 = lshr i128 %mul28.i.2647, 64
  %conv32.i.2649 = and i128 %mul28.i.2647, 18446744073709551615
  %add34.i.2650 = add nuw nsw i128 %conv32.i.2649, %shr15.i.2640
  %conv42.i.2654 = and i128 %add104.i.i.2626, 18446744073709551615
  %mul43.i.2655 = mul nuw i128 %conv42.i.2654, %conv.i.2632
  %shr45.i.2656 = lshr i128 %mul43.i.2655, 64
  %conv47.i.2657 = and i128 %mul43.i.2655, 18446744073709551615
  %mul56.i.2660 = mul nuw i128 %conv27.i.2646, %conv12.i.2638
  %shr58.i.2661 = lshr i128 %mul56.i.2660, 64
  %conv60.i.2662 = and i128 %mul56.i.2660, 18446744073709551615
  %add49.i.2658 = add nuw nsw i128 %conv60.i.2662, %shr30.i.2648
  %add62.i.2663 = add nuw nsw i128 %add49.i.2658, %conv47.i.2657
  %mul64.i.2664 = shl nuw nsw i128 %add62.i.2663, 1
  %add67.i.2665 = add nuw nsw i128 %shr45.i.2656, %shr58.i.2661
  %mul72.i.2666 = mul nuw i128 %conv12.i.2638, %conv12.i.2638
  %shr74.i.2667 = lshr i128 %mul72.i.2666, 64
  %conv76.i.2668 = and i128 %mul72.i.2666, 18446744073709551615
  %mul86.i.2671 = mul nuw i128 %conv42.i.2654, %conv12.i.2638
  %shr88.i.2672 = lshr i128 %mul86.i.2671, 64
  %conv90.i.2673 = and i128 %mul86.i.2671, 18446744073709551615
  %add92.i.2674 = add nuw nsw i128 %add67.i.2665, %conv90.i.2673
  %mul94.i.2675 = shl nuw nsw i128 %add92.i.2674, 1
  %mul101.i.2677 = mul nuw i128 %conv42.i.2654, %conv27.i.2646
  %shr103.i.2678 = lshr i128 %mul101.i.2677, 64
  %conv105.i.2679 = and i128 %mul101.i.2677, 18446744073709551615
  %add107.i.2680 = add nuw nsw i128 %conv105.i.2679, %shr88.i.2672
  %mul109.i.2681 = shl nuw nsw i128 %add107.i.2680, 1
  %add114.i.2683 = shl nuw nsw i128 %shr103.i.2678, 1
  %mul119.i.2684 = mul nuw i128 %conv27.i.2646, %conv27.i.2646
  %shr121.i.2685 = lshr i128 %mul119.i.2684, 64
  %conv123.i.2686 = and i128 %mul119.i.2684, 18446744073709551615
  %add125.i.2687 = add nuw nsw i128 %mul94.i.2675, %conv123.i.2686
  %add128.i.2688 = add nuw nsw i128 %mul109.i.2681, %shr121.i.2685
  %mul133.i.2689 = mul nuw i128 %conv42.i.2654, %conv42.i.2654
  %shr135.i.2690 = lshr i128 %mul133.i.2689, 64
  %conv137.i.2691 = and i128 %mul133.i.2689, 18446744073709551615
  %add139.i.2692 = add nuw nsw i128 %add114.i.2683, %conv137.i.2691
  %add.i.2530 = add nuw nsw i128 %conv5.i.2635, 1267650600228229401427983728624
  %add3.i.2532 = or i128 %add21.i.2643, 1267650600228229401496703205376
  %shl.i.i.2542 = shl nuw nsw i128 %add128.i.2688, 32
  %add.i.i.2543 = add nuw nsw i128 %shl.i.i.2542, %add125.i.2687
  %sub7.i.i.2547 = sub nsw i128 %add128.i.2688, %shr135.i.2690
  %shl13.i.i.2550 = shl nuw nsw i128 %add125.i.2687, 32
  %shl28.i.i.2558 = shl nuw nsw i128 %add139.i.2692, 32
  %shl32.i.i.2560 = shl nuw nsw i128 %add139.i.2692, 33
  %add9.i.i.2548 = add nuw nsw i128 %shl32.i.i.2560, %add3.i.2532
  %sub15.i.i.2551 = add nsw i128 %add9.i.i.2548, %sub7.i.i.2547
  %add34.i.i.2561 = sub nsw i128 %sub15.i.i.2551, %shl13.i.i.2550
  %shl46.i.i.2567 = shl nuw nsw i128 %shr135.i.2690, 32
  %add3.i.i.2544 = sub nsw i128 %add.i.2530, %shr135.i.2690
  %sub26.i.i.2557 = sub nsw i128 %add3.i.i.2544, %shl46.i.i.2567
  %sub30.i.i.2559 = sub nsw i128 %sub26.i.i.2557, %add139.i.2692
  %sub44.i.i.2566 = sub nsw i128 %sub30.i.i.2559, %shl28.i.i.2558
  %sub48.i.i.2568 = add nsw i128 %sub44.i.i.2566, %add.i.i.2543
  %shl50.i.i.2569 = shl nuw nsw i128 %shr135.i.2690, 33
  %tmp7548 = add nuw nsw i128 %add34.i.2650, %add139.i.2692
  %tmp7549 = shl nuw nsw i128 %tmp7548, 1
  %add6.i.2535 = add nuw nsw i128 %conv76.i.2668, 1267650600228229401427983728656
  %sub11.i.i.2549 = add nuw nsw i128 %add6.i.2535, %shl50.i.i.2569
  %sub23.i.i.2555 = sub nsw i128 %sub11.i.i.2549, %sub7.i.i.2547
  %add37.i.i.2563 = sub nsw i128 %sub23.i.i.2555, %shl.i.i.2542
  %add52.i.i.2570 = add i128 %add37.i.i.2563, %tmp7549
  %mul54.i.i.2571 = mul nuw nsw i128 %shr135.i.2690, 3
  %add81.i.2670 = add nuw nsw i128 %shr74.i.2667, 1267650600228229401427983728656
  %add9.i.2538 = add nuw nsw i128 %add81.i.2670, %mul54.i.i.2571
  %sub.i.i.2545 = add nuw nsw i128 %add9.i.2538, %mul64.i.2664
  %add19.i.i.2553 = sub nsw i128 %sub.i.i.2545, %shl28.i.i.2558
  %sub41.i.i.2565 = sub nsw i128 %add19.i.i.2553, %add.i.i.2543
  %add56.i.i.2572 = add i128 %sub41.i.i.2565, %shl13.i.i.2550
  %inc115 = add nuw nsw i32 %i.4, 1
  br label %for.cond.107

for.end.116:                                      ; preds = %for.cond.107
  %conv.i.2632.lcssa = phi i128 [ %conv.i.2632, %for.cond.107 ]
  %add104.i.i.2626.lcssa = phi i128 [ %add104.i.i.2626, %for.cond.107 ]
  %add94.i.i.2623.lcssa = phi i128 [ %add94.i.i.2623, %for.cond.107 ]
  %add84.i.i.2620.lcssa = phi i128 [ %add84.i.i.2620, %for.cond.107 ]
  %mul.i.2439 = mul nuw i128 %conv.i.2632.lcssa, %conv2.i.3700
  %shr.i.2440 = lshr i128 %mul.i.2439, 64
  %conv5.i.2441 = and i128 %mul.i.2439, 18446744073709551615
  %mul13.i.2445 = mul nuw i128 %conv.i.2632.lcssa, %conv12.i.3706
  %shr15.i.2446 = lshr i128 %mul13.i.2445, 64
  %conv17.i.2447 = and i128 %mul13.i.2445, 18446744073709551615
  %add.i.2448 = add nuw nsw i128 %conv17.i.2447, %shr.i.2440
  %conv22.i.2451 = and i128 %add84.i.i.2620.lcssa, 18446744073709551615
  %mul25.i.2452 = mul nuw i128 %conv22.i.2451, %conv2.i.3700
  %shr27.i.2453 = lshr i128 %mul25.i.2452, 64
  %conv29.i.2454 = and i128 %mul25.i.2452, 18446744073709551615
  %add31.i.2455 = add nuw nsw i128 %add.i.2448, %conv29.i.2454
  %mul39.i.2459 = mul nuw i128 %conv.i.2632.lcssa, %conv38.i.3720
  %shr41.i.2460 = lshr i128 %mul39.i.2459, 64
  %conv43.i.2461 = and i128 %mul39.i.2459, 18446744073709551615
  %mul52.i.2464 = mul nuw i128 %conv22.i.2451, %conv12.i.3706
  %shr54.i.2465 = lshr i128 %mul52.i.2464, 64
  %conv56.i.2466 = and i128 %mul52.i.2464, 18446744073709551615
  %conv63.i.2470 = and i128 %add94.i.i.2623.lcssa, 18446744073709551615
  %mul66.i.2471 = mul nuw i128 %conv63.i.2470, %conv2.i.3700
  %shr68.i.2472 = lshr i128 %mul66.i.2471, 64
  %conv70.i.2473 = and i128 %mul66.i.2471, 18446744073709551615
  %mul80.i.2478 = mul nuw i128 %conv.i.2632.lcssa, %conv79.i.3739
  %shr82.i.2479 = lshr i128 %mul80.i.2478, 64
  %conv84.i.2480 = and i128 %mul80.i.2478, 18446744073709551615
  %mul93.i.2483 = mul nuw i128 %conv22.i.2451, %conv38.i.3720
  %shr95.i.2484 = lshr i128 %mul93.i.2483, 64
  %conv97.i.2485 = and i128 %mul93.i.2483, 18446744073709551615
  %add102.i.2487 = add nuw nsw i128 %shr95.i.2484, %shr82.i.2479
  %mul107.i.2488 = mul nuw i128 %conv63.i.2470, %conv12.i.3706
  %shr109.i.2489 = lshr i128 %mul107.i.2488, 64
  %conv111.i.2490 = and i128 %mul107.i.2488, 18446744073709551615
  %conv118.i.2494 = and i128 %add104.i.i.2626.lcssa, 18446744073709551615
  %mul121.i.2495 = mul nuw i128 %conv118.i.2494, %conv2.i.3700
  %shr123.i.2496 = lshr i128 %mul121.i.2495, 64
  %conv125.i.2497 = and i128 %mul121.i.2495, 18446744073709551615
  %mul135.i.2500 = mul nuw i128 %conv22.i.2451, %conv79.i.3739
  %shr137.i.2501 = lshr i128 %mul135.i.2500, 64
  %conv139.i.2502 = and i128 %mul135.i.2500, 18446744073709551615
  %mul148.i.2505 = mul nuw i128 %conv63.i.2470, %conv38.i.3720
  %shr150.i.2506 = lshr i128 %mul148.i.2505, 64
  %conv152.i.2507 = and i128 %mul148.i.2505, 18446744073709551615
  %add157.i.2509 = add nuw nsw i128 %shr150.i.2506, %shr137.i.2501
  %mul162.i.2510 = mul nuw i128 %conv118.i.2494, %conv12.i.3706
  %shr164.i.2511 = lshr i128 %mul162.i.2510, 64
  %conv166.i.2512 = and i128 %mul162.i.2510, 18446744073709551615
  %add116.i.2492 = add nuw nsw i128 %add102.i.2487, %conv139.i.2502
  %add130.i.2499 = add nuw nsw i128 %add116.i.2492, %shr109.i.2489
  %add141.i.2503 = add nuw nsw i128 %add130.i.2499, %conv152.i.2507
  %add154.i.2508 = add nuw nsw i128 %add141.i.2503, %shr123.i.2496
  %add168.i.2513 = add nuw nsw i128 %add154.i.2508, %conv166.i.2512
  %mul176.i.2515 = mul nuw i128 %conv63.i.2470, %conv79.i.3739
  %shr178.i.2516 = lshr i128 %mul176.i.2515, 64
  %conv180.i.2517 = and i128 %mul176.i.2515, 18446744073709551615
  %mul189.i.2520 = mul nuw i128 %conv118.i.2494, %conv38.i.3720
  %shr191.i.2521 = lshr i128 %mul189.i.2520, 64
  %conv193.i.2522 = and i128 %mul189.i.2520, 18446744073709551615
  %add171.i.2514 = add nuw nsw i128 %add157.i.2509, %conv180.i.2517
  %add182.i.2518 = add nuw nsw i128 %add171.i.2514, %shr164.i.2511
  %add195.i.2523 = add nuw nsw i128 %add182.i.2518, %conv193.i.2522
  %add198.i.2524 = add nuw nsw i128 %shr191.i.2521, %shr178.i.2516
  %mul203.i.2525 = mul nuw i128 %conv118.i.2494, %conv79.i.3739
  %shr205.i.2526 = lshr i128 %mul203.i.2525, 64
  %conv207.i.2527 = and i128 %mul203.i.2525, 18446744073709551615
  %add209.i.2528 = add nuw nsw i128 %add198.i.2524, %conv207.i.2527
  %add.i.2277 = add nuw nsw i128 %conv5.i.2441, 1267650600228229401427983728624
  %add3.i.2279 = or i128 %add31.i.2455, 1267650600228229401496703205376
  %shl.i.i.2289 = shl nuw nsw i128 %add195.i.2523, 32
  %add.i.i.2290 = add i128 %shl.i.i.2289, %add168.i.2513
  %sub7.i.i.2294 = sub nsw i128 %add195.i.2523, %shr205.i.2526
  %shl13.i.i.2297 = shl i128 %add168.i.2513, 32
  %shl28.i.i.2305 = shl nuw nsw i128 %add209.i.2528, 32
  %shl32.i.i.2307 = shl nuw nsw i128 %add209.i.2528, 33
  %add9.i.i.2295 = add nuw nsw i128 %shl32.i.i.2307, %add3.i.2279
  %sub15.i.i.2298 = add nsw i128 %add9.i.i.2295, %sub7.i.i.2294
  %add34.i.i.2308 = sub i128 %sub15.i.i.2298, %shl13.i.i.2297
  %mul.i.i.2309 = shl nuw nsw i128 %add209.i.2528, 1
  %shl46.i.i.2314 = shl nuw nsw i128 %shr205.i.2526, 32
  %add3.i.i.2291 = sub nsw i128 %add.i.2277, %shr205.i.2526
  %sub26.i.i.2304 = sub nsw i128 %add3.i.i.2291, %shl46.i.i.2314
  %sub30.i.i.2306 = sub nsw i128 %sub26.i.i.2304, %add209.i.2528
  %sub44.i.i.2313 = sub nsw i128 %sub30.i.i.2306, %shl28.i.i.2305
  %sub48.i.i.2315 = add i128 %sub44.i.i.2313, %add.i.i.2290
  %shl50.i.i.2316 = shl nuw nsw i128 %shr205.i.2526, 33
  %add34.i.2456 = add nuw nsw i128 %shr15.i.2446, 1267650600228229401427983728656
  %add45.i.2462 = add nuw nsw i128 %add34.i.2456, %conv43.i.2461
  %add58.i.2467 = add nuw nsw i128 %add45.i.2462, %shr27.i.2453
  %add72.i.2474 = add nuw nsw i128 %add58.i.2467, %conv56.i.2466
  %add6.i.2282 = add nuw nsw i128 %add72.i.2474, %conv70.i.2473
  %sub11.i.i.2296 = add nuw nsw i128 %add6.i.2282, %shl50.i.i.2316
  %sub23.i.i.2302 = add i128 %sub11.i.i.2296, %mul.i.i.2309
  %add37.i.i.2310 = sub i128 %sub23.i.i.2302, %sub7.i.i.2294
  %add52.i.i.2317 = sub i128 %add37.i.i.2310, %shl.i.i.2289
  %mul54.i.i.2318 = mul nuw nsw i128 %shr205.i.2526, 3
  %add61.i.2468 = add nuw nsw i128 %shr41.i.2460, 1267650600228229401427983728656
  %add75.i.2475 = add nuw nsw i128 %add61.i.2468, %conv84.i.2480
  %add86.i.2481 = add nuw nsw i128 %add75.i.2475, %shr54.i.2465
  %add99.i.2486 = add nuw nsw i128 %add86.i.2481, %conv97.i.2485
  %add113.i.2491 = add nuw nsw i128 %add99.i.2486, %shr68.i.2472
  %add127.i.2498 = add nuw nsw i128 %add113.i.2491, %conv111.i.2490
  %add9.i.2285 = add i128 %add127.i.2498, %conv125.i.2497
  %sub.i.i.2292 = add i128 %add9.i.2285, %mul54.i.i.2318
  %add19.i.i.2300 = sub i128 %sub.i.i.2292, %shl28.i.i.2305
  %sub41.i.i.2312 = sub i128 %add19.i.i.2300, %add.i.i.2290
  %add56.i.i.2319 = add i128 %sub41.i.i.2312, %shl13.i.i.2297
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.body.124, %for.end.116
  %sub.i.i.21287508 = phi i128 [ %add56.i.i.2319, %for.end.116 ], [ %add56.i.i.2155, %for.body.124 ]
  %add6.i.14487507 = phi i128 [ %add52.i.i.2317, %for.end.116 ], [ %add52.i.i.2153, %for.body.124 ]
  %add34.i.i.27257502 = phi i128 [ %add34.i.i.2308, %for.end.116 ], [ %add34.i.i.2144, %for.body.124 ]
  %add.i.18607499 = phi i128 [ %sub48.i.i.2315, %for.end.116 ], [ %sub48.i.i.2151, %for.body.124 ]
  %i.5 = phi i32 [ 0, %for.end.116 ], [ %inc130, %for.body.124 ]
  %add.i.i.2159 = add i128 %sub.i.i.21287508, 18446744069414584320
  %shr.i.i.2161 = lshr i128 %add6.i.14487507, 64
  %add8.i.i.2162 = add i128 %add.i.i.2159, %shr.i.i.2161
  %conv12.i.i.2163 = and i128 %add6.i.14487507, 18446744073709551615
  %add13.i.i.2164 = add nuw nsw i128 %conv12.i.i.2163, 18446673704965373952
  %add16.i.i.2165 = add i128 %add.i.18607499, 18446744073709551615
  %add19.i.i.2167 = add i128 %add34.i.i.27257502, 1298074214633706907132628377272319
  %shr22.i.i.2168 = lshr i128 %add8.i.i.2162, 64
  %conv23.i.i.2169 = trunc i128 %shr22.i.i.2168 to i64
  %conv26.i.i.2170 = and i128 %add8.i.i.2162, 18446744073709551615
  %sub.i.i.2171 = sub nsw i128 %conv26.i.i.2170, %shr22.i.i.2168
  %shl.i.i.2172 = shl nuw nsw i128 %shr22.i.i.2168, 32
  %add32.i.i.2173 = add nsw i128 %sub.i.i.2171, %shl.i.i.2172
  %shr34.i.i.2174 = lshr i128 %add32.i.i.2173, 64
  %conv35.i.i.2175 = trunc i128 %shr34.i.i.2174 to i64
  %add36.i.i.2176 = add i64 %conv35.i.i.2175, %conv23.i.i.2169
  %conv39.i.i.2177 = and i128 %add32.i.i.2173, 18446744073709551615
  %sub43.i.i.2178 = sub nsw i128 %conv39.i.i.2177, %shr34.i.i.2174
  %shl45.i.i.2179 = shl nuw nsw i128 %shr34.i.i.2174, 32
  %add47.i.i.2180 = add nsw i128 %sub43.i.i.2178, %shl45.i.i.2179
  %conv48.i.i.2181 = zext i64 %add36.i.i.2176 to i128
  %add50.i.i.2182 = add i128 %add16.i.i.2165, %conv48.i.i.2181
  %shl52.i.i.2183 = shl nuw nsw i128 %conv48.i.i.2181, 32
  %sub54.i.i.2184 = sub i128 %add19.i.i.2167, %shl52.i.i.2183
  %shr56.i.i.2185 = lshr i128 %add47.i.i.2180, 64
  %conv57.i.i.2186 = trunc i128 %shr56.i.i.2185 to i64
  %sub58.i.i.2187 = sub i64 0, %conv57.i.i.2186
  %conv60.i.i.2188 = trunc i128 %add47.i.i.2180 to i64
  %and.i.i.2189 = and i64 %conv60.i.i.2188, 9223372036854775807
  %neg.i.i.2190 = sub nsw i64 9223372032559808512, %and.i.i.2189
  %sub62177.i.i.2191 = and i64 %neg.i.i.2190, %conv60.i.i.2188
  %and66.i.i.2192 = ashr i64 %sub62177.i.i.2191, 63
  %or.i.i.2193 = or i64 %and66.i.i.2192, %sub58.i.i.2187
  %conv68.i.i.2194 = zext i64 %or.i.i.2193 to i128
  %sub70.i.i.2195 = sub i128 %add50.i.i.2182, %conv68.i.i.2194
  %and71.i.i.2196 = and i64 %or.i.i.2193, 4294967295
  %conv72.i.i.2197 = zext i64 %and71.i.i.2196 to i128
  %sub74.i.i.2198 = sub i128 %sub54.i.i.2184, %conv72.i.i.2197
  %and75.i.i.2199 = and i64 %or.i.i.2193, -4294967295
  %conv76.i.i.2200 = zext i64 %and75.i.i.2199 to i128
  %sub78.i.i.2201 = sub nsw i128 %add47.i.i.2180, %conv76.i.i.2200
  %shr80.i.i.2202 = lshr i128 %sub70.i.i.2195, 64
  %add84.i.i.2203 = add i128 %sub74.i.i.2198, %shr80.i.i.2202
  %shr90.i.i.2205 = lshr i128 %add84.i.i.2203, 64
  %add94.i.i.2206 = add nuw nsw i128 %add13.i.i.2164, %shr90.i.i.2205
  %shr100.i.i.2208 = lshr i128 %add94.i.i.2206, 64
  %add104.i.i.2209 = add nsw i128 %shr100.i.i.2208, %sub78.i.i.2201
  %conv.i.2215 = and i128 %sub70.i.i.2195, 18446744073709551615
  %exitcond7567 = icmp eq i32 %i.5, 8
  br i1 %exitcond7567, label %for.end.131, label %for.body.124

for.body.124:                                     ; preds = %for.cond.122
  %mul.i.2216 = mul nuw i128 %conv.i.2215, %conv.i.2215
  %shr.i.2217 = lshr i128 %mul.i.2216, 64
  %conv5.i.2218 = and i128 %mul.i.2216, 18446744073709551615
  %conv12.i.2221 = and i128 %add84.i.i.2203, 18446744073709551615
  %mul13.i.2222 = mul nuw i128 %conv12.i.2221, %conv.i.2215
  %shr15.i.2223 = lshr i128 %mul13.i.2222, 64
  %conv17.i.2224 = shl i128 %mul13.i.2222, 1
  %factor.i.2225 = and i128 %conv17.i.2224, 36893488147419103230
  %add21.i.2226 = add nuw nsw i128 %factor.i.2225, %shr.i.2217
  %conv27.i.2229 = and i128 %add94.i.i.2206, 18446744073709551615
  %mul28.i.2230 = mul nuw i128 %conv27.i.2229, %conv.i.2215
  %shr30.i.2231 = lshr i128 %mul28.i.2230, 64
  %conv32.i.2232 = and i128 %mul28.i.2230, 18446744073709551615
  %add34.i.2233 = add nuw nsw i128 %conv32.i.2232, %shr15.i.2223
  %conv42.i.2237 = and i128 %add104.i.i.2209, 18446744073709551615
  %mul43.i.2238 = mul nuw i128 %conv42.i.2237, %conv.i.2215
  %shr45.i.2239 = lshr i128 %mul43.i.2238, 64
  %conv47.i.2240 = and i128 %mul43.i.2238, 18446744073709551615
  %mul56.i.2243 = mul nuw i128 %conv27.i.2229, %conv12.i.2221
  %shr58.i.2244 = lshr i128 %mul56.i.2243, 64
  %conv60.i.2245 = and i128 %mul56.i.2243, 18446744073709551615
  %add49.i.2241 = add nuw nsw i128 %conv60.i.2245, %shr30.i.2231
  %add62.i.2246 = add nuw nsw i128 %add49.i.2241, %conv47.i.2240
  %mul64.i.2247 = shl nuw nsw i128 %add62.i.2246, 1
  %add67.i.2248 = add nuw nsw i128 %shr45.i.2239, %shr58.i.2244
  %mul72.i.2249 = mul nuw i128 %conv12.i.2221, %conv12.i.2221
  %shr74.i.2250 = lshr i128 %mul72.i.2249, 64
  %conv76.i.2251 = and i128 %mul72.i.2249, 18446744073709551615
  %mul86.i.2254 = mul nuw i128 %conv42.i.2237, %conv12.i.2221
  %shr88.i.2255 = lshr i128 %mul86.i.2254, 64
  %conv90.i.2256 = and i128 %mul86.i.2254, 18446744073709551615
  %add92.i.2257 = add nuw nsw i128 %add67.i.2248, %conv90.i.2256
  %mul94.i.2258 = shl nuw nsw i128 %add92.i.2257, 1
  %mul101.i.2260 = mul nuw i128 %conv42.i.2237, %conv27.i.2229
  %shr103.i.2261 = lshr i128 %mul101.i.2260, 64
  %conv105.i.2262 = and i128 %mul101.i.2260, 18446744073709551615
  %add107.i.2263 = add nuw nsw i128 %conv105.i.2262, %shr88.i.2255
  %mul109.i.2264 = shl nuw nsw i128 %add107.i.2263, 1
  %add114.i.2266 = shl nuw nsw i128 %shr103.i.2261, 1
  %mul119.i.2267 = mul nuw i128 %conv27.i.2229, %conv27.i.2229
  %shr121.i.2268 = lshr i128 %mul119.i.2267, 64
  %conv123.i.2269 = and i128 %mul119.i.2267, 18446744073709551615
  %add125.i.2270 = add nuw nsw i128 %mul94.i.2258, %conv123.i.2269
  %add128.i.2271 = add nuw nsw i128 %mul109.i.2264, %shr121.i.2268
  %mul133.i.2272 = mul nuw i128 %conv42.i.2237, %conv42.i.2237
  %shr135.i.2273 = lshr i128 %mul133.i.2272, 64
  %conv137.i.2274 = and i128 %mul133.i.2272, 18446744073709551615
  %add139.i.2275 = add nuw nsw i128 %add114.i.2266, %conv137.i.2274
  %add.i.2113 = add nuw nsw i128 %conv5.i.2218, 1267650600228229401427983728624
  %add3.i.2115 = or i128 %add21.i.2226, 1267650600228229401496703205376
  %shl.i.i.2125 = shl nuw nsw i128 %add128.i.2271, 32
  %add.i.i.2126 = add nuw nsw i128 %shl.i.i.2125, %add125.i.2270
  %sub7.i.i.2130 = sub nsw i128 %add128.i.2271, %shr135.i.2273
  %shl13.i.i.2133 = shl nuw nsw i128 %add125.i.2270, 32
  %shl28.i.i.2141 = shl nuw nsw i128 %add139.i.2275, 32
  %shl32.i.i.2143 = shl nuw nsw i128 %add139.i.2275, 33
  %add9.i.i.2131 = add nuw nsw i128 %shl32.i.i.2143, %add3.i.2115
  %sub15.i.i.2134 = add nsw i128 %add9.i.i.2131, %sub7.i.i.2130
  %add34.i.i.2144 = sub nsw i128 %sub15.i.i.2134, %shl13.i.i.2133
  %shl46.i.i.2150 = shl nuw nsw i128 %shr135.i.2273, 32
  %add3.i.i.2127 = sub nsw i128 %add.i.2113, %shr135.i.2273
  %sub26.i.i.2140 = sub nsw i128 %add3.i.i.2127, %shl46.i.i.2150
  %sub30.i.i.2142 = sub nsw i128 %sub26.i.i.2140, %add139.i.2275
  %sub44.i.i.2149 = sub nsw i128 %sub30.i.i.2142, %shl28.i.i.2141
  %sub48.i.i.2151 = add nsw i128 %sub44.i.i.2149, %add.i.i.2126
  %shl50.i.i.2152 = shl nuw nsw i128 %shr135.i.2273, 33
  %tmp7550 = add nuw nsw i128 %add34.i.2233, %add139.i.2275
  %tmp7551 = shl nuw nsw i128 %tmp7550, 1
  %add6.i.2118 = add nuw nsw i128 %conv76.i.2251, 1267650600228229401427983728656
  %sub11.i.i.2132 = add nuw nsw i128 %add6.i.2118, %shl50.i.i.2152
  %sub23.i.i.2138 = sub nsw i128 %sub11.i.i.2132, %sub7.i.i.2130
  %add37.i.i.2146 = sub nsw i128 %sub23.i.i.2138, %shl.i.i.2125
  %add52.i.i.2153 = add i128 %add37.i.i.2146, %tmp7551
  %mul54.i.i.2154 = mul nuw nsw i128 %shr135.i.2273, 3
  %add81.i.2253 = add nuw nsw i128 %shr74.i.2250, 1267650600228229401427983728656
  %add9.i.2121 = add nuw nsw i128 %add81.i.2253, %mul54.i.i.2154
  %sub.i.i.2128 = add nuw nsw i128 %add9.i.2121, %mul64.i.2247
  %add19.i.i.2136 = sub nsw i128 %sub.i.i.2128, %shl28.i.i.2141
  %sub41.i.i.2148 = sub nsw i128 %add19.i.i.2136, %add.i.i.2126
  %add56.i.i.2155 = add i128 %sub41.i.i.2148, %shl13.i.i.2133
  %inc130 = add nuw nsw i32 %i.5, 1
  br label %for.cond.122

for.end.131:                                      ; preds = %for.cond.122
  %conv.i.2215.lcssa = phi i128 [ %conv.i.2215, %for.cond.122 ]
  %add104.i.i.2209.lcssa = phi i128 [ %add104.i.i.2209, %for.cond.122 ]
  %add94.i.i.2206.lcssa = phi i128 [ %add94.i.i.2206, %for.cond.122 ]
  %add84.i.i.2203.lcssa = phi i128 [ %add84.i.i.2203, %for.cond.122 ]
  %mul.i.2022 = mul nuw i128 %conv.i.2215.lcssa, %conv2.i.4123
  %shr.i.2023 = lshr i128 %mul.i.2022, 64
  %conv5.i.2024 = and i128 %mul.i.2022, 18446744073709551615
  %mul13.i.2028 = mul nuw i128 %conv.i.2215.lcssa, %conv12.i.4129
  %shr15.i.2029 = lshr i128 %mul13.i.2028, 64
  %conv17.i.2030 = and i128 %mul13.i.2028, 18446744073709551615
  %add.i.2031 = add nuw nsw i128 %conv17.i.2030, %shr.i.2023
  %conv22.i.2034 = and i128 %add84.i.i.2203.lcssa, 18446744073709551615
  %mul25.i.2035 = mul nuw i128 %conv22.i.2034, %conv2.i.4123
  %shr27.i.2036 = lshr i128 %mul25.i.2035, 64
  %conv29.i.2037 = and i128 %mul25.i.2035, 18446744073709551615
  %add31.i.2038 = add nuw nsw i128 %add.i.2031, %conv29.i.2037
  %mul39.i.2042 = mul nuw i128 %conv.i.2215.lcssa, %conv38.i.4143
  %shr41.i.2043 = lshr i128 %mul39.i.2042, 64
  %conv43.i.2044 = and i128 %mul39.i.2042, 18446744073709551615
  %mul52.i.2047 = mul nuw i128 %conv22.i.2034, %conv12.i.4129
  %shr54.i.2048 = lshr i128 %mul52.i.2047, 64
  %conv56.i.2049 = and i128 %mul52.i.2047, 18446744073709551615
  %conv63.i.2053 = and i128 %add94.i.i.2206.lcssa, 18446744073709551615
  %mul66.i.2054 = mul nuw i128 %conv63.i.2053, %conv2.i.4123
  %shr68.i.2055 = lshr i128 %mul66.i.2054, 64
  %conv70.i.2056 = and i128 %mul66.i.2054, 18446744073709551615
  %mul80.i.2061 = mul nuw i128 %conv.i.2215.lcssa, %conv79.i.4162
  %shr82.i.2062 = lshr i128 %mul80.i.2061, 64
  %conv84.i.2063 = and i128 %mul80.i.2061, 18446744073709551615
  %mul93.i.2066 = mul nuw i128 %conv22.i.2034, %conv38.i.4143
  %shr95.i.2067 = lshr i128 %mul93.i.2066, 64
  %conv97.i.2068 = and i128 %mul93.i.2066, 18446744073709551615
  %add102.i.2070 = add nuw nsw i128 %shr95.i.2067, %shr82.i.2062
  %mul107.i.2071 = mul nuw i128 %conv63.i.2053, %conv12.i.4129
  %shr109.i.2072 = lshr i128 %mul107.i.2071, 64
  %conv111.i.2073 = and i128 %mul107.i.2071, 18446744073709551615
  %conv118.i.2077 = and i128 %add104.i.i.2209.lcssa, 18446744073709551615
  %mul121.i.2078 = mul nuw i128 %conv118.i.2077, %conv2.i.4123
  %shr123.i.2079 = lshr i128 %mul121.i.2078, 64
  %conv125.i.2080 = and i128 %mul121.i.2078, 18446744073709551615
  %mul135.i.2083 = mul nuw i128 %conv22.i.2034, %conv79.i.4162
  %shr137.i.2084 = lshr i128 %mul135.i.2083, 64
  %conv139.i.2085 = and i128 %mul135.i.2083, 18446744073709551615
  %mul148.i.2088 = mul nuw i128 %conv63.i.2053, %conv38.i.4143
  %shr150.i.2089 = lshr i128 %mul148.i.2088, 64
  %conv152.i.2090 = and i128 %mul148.i.2088, 18446744073709551615
  %add157.i.2092 = add nuw nsw i128 %shr150.i.2089, %shr137.i.2084
  %mul162.i.2093 = mul nuw i128 %conv118.i.2077, %conv12.i.4129
  %shr164.i.2094 = lshr i128 %mul162.i.2093, 64
  %conv166.i.2095 = and i128 %mul162.i.2093, 18446744073709551615
  %add116.i.2075 = add nuw nsw i128 %add102.i.2070, %conv139.i.2085
  %add130.i.2082 = add nuw nsw i128 %add116.i.2075, %shr109.i.2072
  %add141.i.2086 = add nuw nsw i128 %add130.i.2082, %conv152.i.2090
  %add154.i.2091 = add nuw nsw i128 %add141.i.2086, %shr123.i.2079
  %add168.i.2096 = add nuw nsw i128 %add154.i.2091, %conv166.i.2095
  %mul176.i.2098 = mul nuw i128 %conv63.i.2053, %conv79.i.4162
  %shr178.i.2099 = lshr i128 %mul176.i.2098, 64
  %conv180.i.2100 = and i128 %mul176.i.2098, 18446744073709551615
  %mul189.i.2103 = mul nuw i128 %conv118.i.2077, %conv38.i.4143
  %shr191.i.2104 = lshr i128 %mul189.i.2103, 64
  %conv193.i.2105 = and i128 %mul189.i.2103, 18446744073709551615
  %add171.i.2097 = add nuw nsw i128 %add157.i.2092, %conv180.i.2100
  %add182.i.2101 = add nuw nsw i128 %add171.i.2097, %shr164.i.2094
  %add195.i.2106 = add nuw nsw i128 %add182.i.2101, %conv193.i.2105
  %add198.i.2107 = add nuw nsw i128 %shr191.i.2104, %shr178.i.2099
  %mul203.i.2108 = mul nuw i128 %conv118.i.2077, %conv79.i.4162
  %shr205.i.2109 = lshr i128 %mul203.i.2108, 64
  %conv207.i.2110 = and i128 %mul203.i.2108, 18446744073709551615
  %add209.i.2111 = add nuw nsw i128 %add198.i.2107, %conv207.i.2110
  %add.i.1860 = add nuw nsw i128 %conv5.i.2024, 1267650600228229401427983728624
  %add3.i.1862 = or i128 %add31.i.2038, 1267650600228229401496703205376
  %shl.i.i.1872 = shl nuw nsw i128 %add195.i.2106, 32
  %add.i.i.1873 = add i128 %shl.i.i.1872, %add168.i.2096
  %sub7.i.i.1877 = sub nsw i128 %add195.i.2106, %shr205.i.2109
  %shl13.i.i.1880 = shl i128 %add168.i.2096, 32
  %shl28.i.i.1888 = shl nuw nsw i128 %add209.i.2111, 32
  %shl32.i.i.1890 = shl nuw nsw i128 %add209.i.2111, 33
  %add9.i.i.1878 = add nuw nsw i128 %shl32.i.i.1890, %add3.i.1862
  %sub15.i.i.1881 = add nsw i128 %add9.i.i.1878, %sub7.i.i.1877
  %add34.i.i.1891 = sub i128 %sub15.i.i.1881, %shl13.i.i.1880
  %mul.i.i.1892 = shl nuw nsw i128 %add209.i.2111, 1
  %shl46.i.i.1897 = shl nuw nsw i128 %shr205.i.2109, 32
  %add3.i.i.1874 = sub nsw i128 %add.i.1860, %shr205.i.2109
  %sub26.i.i.1887 = sub nsw i128 %add3.i.i.1874, %shl46.i.i.1897
  %sub30.i.i.1889 = sub nsw i128 %sub26.i.i.1887, %add209.i.2111
  %sub44.i.i.1896 = sub nsw i128 %sub30.i.i.1889, %shl28.i.i.1888
  %sub48.i.i.1898 = add i128 %sub44.i.i.1896, %add.i.i.1873
  %shl50.i.i.1899 = shl nuw nsw i128 %shr205.i.2109, 33
  %add34.i.2039 = add nuw nsw i128 %shr15.i.2029, 1267650600228229401427983728656
  %add45.i.2045 = add nuw nsw i128 %add34.i.2039, %conv43.i.2044
  %add58.i.2050 = add nuw nsw i128 %add45.i.2045, %shr27.i.2036
  %add72.i.2057 = add nuw nsw i128 %add58.i.2050, %conv56.i.2049
  %add6.i.1865 = add nuw nsw i128 %add72.i.2057, %conv70.i.2056
  %sub11.i.i.1879 = add nuw nsw i128 %add6.i.1865, %shl50.i.i.1899
  %sub23.i.i.1885 = add i128 %sub11.i.i.1879, %mul.i.i.1892
  %add37.i.i.1893 = sub i128 %sub23.i.i.1885, %sub7.i.i.1877
  %add52.i.i.1900 = sub i128 %add37.i.i.1893, %shl.i.i.1872
  %mul54.i.i.1901 = mul nuw nsw i128 %shr205.i.2109, 3
  %add61.i.2051 = add nuw nsw i128 %shr41.i.2043, 1267650600228229401427983728656
  %add75.i.2058 = add nuw nsw i128 %add61.i.2051, %conv84.i.2063
  %add86.i.2064 = add nuw nsw i128 %add75.i.2058, %shr54.i.2048
  %add99.i.2069 = add nuw nsw i128 %add86.i.2064, %conv97.i.2068
  %add113.i.2074 = add nuw nsw i128 %add99.i.2069, %shr68.i.2055
  %add127.i.2081 = add nuw nsw i128 %add113.i.2074, %conv111.i.2073
  %add9.i.1868 = add i128 %add127.i.2081, %conv125.i.2080
  %sub.i.i.1875 = add i128 %add9.i.1868, %mul54.i.i.1901
  %add19.i.i.1883 = sub i128 %sub.i.i.1875, %shl28.i.i.1888
  %sub41.i.i.1895 = sub i128 %add19.i.i.1883, %add.i.i.1873
  %add56.i.i.1902 = add i128 %sub41.i.i.1895, %shl13.i.i.1880
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.body.139, %for.end.131
  %sub.i.i.21287509 = phi i128 [ %add56.i.i.1902, %for.end.131 ], [ %add56.i.i.1738, %for.body.139 ]
  %add6.i.14487505 = phi i128 [ %add52.i.i.1900, %for.end.131 ], [ %add52.i.i.1736, %for.body.139 ]
  %add34.i.i.27257503 = phi i128 [ %add34.i.i.1891, %for.end.131 ], [ %add34.i.i.1727, %for.body.139 ]
  %add.i.18607500 = phi i128 [ %sub48.i.i.1898, %for.end.131 ], [ %sub48.i.i.1734, %for.body.139 ]
  %i.6 = phi i32 [ 0, %for.end.131 ], [ %inc145, %for.body.139 ]
  %add.i.i.1742 = add i128 %sub.i.i.21287509, 18446744069414584320
  %shr.i.i.1744 = lshr i128 %add6.i.14487505, 64
  %add8.i.i.1745 = add i128 %add.i.i.1742, %shr.i.i.1744
  %conv12.i.i.1746 = and i128 %add6.i.14487505, 18446744073709551615
  %add13.i.i.1747 = add nuw nsw i128 %conv12.i.i.1746, 18446673704965373952
  %add16.i.i.1748 = add i128 %add.i.18607500, 18446744073709551615
  %add19.i.i.1750 = add i128 %add34.i.i.27257503, 1298074214633706907132628377272319
  %shr22.i.i.1751 = lshr i128 %add8.i.i.1745, 64
  %conv23.i.i.1752 = trunc i128 %shr22.i.i.1751 to i64
  %conv26.i.i.1753 = and i128 %add8.i.i.1745, 18446744073709551615
  %sub.i.i.1754 = sub nsw i128 %conv26.i.i.1753, %shr22.i.i.1751
  %shl.i.i.1755 = shl nuw nsw i128 %shr22.i.i.1751, 32
  %add32.i.i.1756 = add nsw i128 %sub.i.i.1754, %shl.i.i.1755
  %shr34.i.i.1757 = lshr i128 %add32.i.i.1756, 64
  %conv35.i.i.1758 = trunc i128 %shr34.i.i.1757 to i64
  %add36.i.i.1759 = add i64 %conv35.i.i.1758, %conv23.i.i.1752
  %conv39.i.i.1760 = and i128 %add32.i.i.1756, 18446744073709551615
  %sub43.i.i.1761 = sub nsw i128 %conv39.i.i.1760, %shr34.i.i.1757
  %shl45.i.i.1762 = shl nuw nsw i128 %shr34.i.i.1757, 32
  %add47.i.i.1763 = add nsw i128 %sub43.i.i.1761, %shl45.i.i.1762
  %conv48.i.i.1764 = zext i64 %add36.i.i.1759 to i128
  %add50.i.i.1765 = add i128 %add16.i.i.1748, %conv48.i.i.1764
  %shl52.i.i.1766 = shl nuw nsw i128 %conv48.i.i.1764, 32
  %sub54.i.i.1767 = sub i128 %add19.i.i.1750, %shl52.i.i.1766
  %shr56.i.i.1768 = lshr i128 %add47.i.i.1763, 64
  %conv57.i.i.1769 = trunc i128 %shr56.i.i.1768 to i64
  %sub58.i.i.1770 = sub i64 0, %conv57.i.i.1769
  %conv60.i.i.1771 = trunc i128 %add47.i.i.1763 to i64
  %and.i.i.1772 = and i64 %conv60.i.i.1771, 9223372036854775807
  %neg.i.i.1773 = sub nsw i64 9223372032559808512, %and.i.i.1772
  %sub62177.i.i.1774 = and i64 %neg.i.i.1773, %conv60.i.i.1771
  %and66.i.i.1775 = ashr i64 %sub62177.i.i.1774, 63
  %or.i.i.1776 = or i64 %and66.i.i.1775, %sub58.i.i.1770
  %conv68.i.i.1777 = zext i64 %or.i.i.1776 to i128
  %sub70.i.i.1778 = sub i128 %add50.i.i.1765, %conv68.i.i.1777
  %and71.i.i.1779 = and i64 %or.i.i.1776, 4294967295
  %conv72.i.i.1780 = zext i64 %and71.i.i.1779 to i128
  %sub74.i.i.1781 = sub i128 %sub54.i.i.1767, %conv72.i.i.1780
  %and75.i.i.1782 = and i64 %or.i.i.1776, -4294967295
  %conv76.i.i.1783 = zext i64 %and75.i.i.1782 to i128
  %sub78.i.i.1784 = sub nsw i128 %add47.i.i.1763, %conv76.i.i.1783
  %shr80.i.i.1785 = lshr i128 %sub70.i.i.1778, 64
  %add84.i.i.1786 = add i128 %sub74.i.i.1781, %shr80.i.i.1785
  %shr90.i.i.1788 = lshr i128 %add84.i.i.1786, 64
  %add94.i.i.1789 = add nuw nsw i128 %add13.i.i.1747, %shr90.i.i.1788
  %shr100.i.i.1791 = lshr i128 %add94.i.i.1789, 64
  %add104.i.i.1792 = add nsw i128 %shr100.i.i.1791, %sub78.i.i.1784
  %conv.i.1798 = and i128 %sub70.i.i.1778, 18446744073709551615
  %exitcond = icmp eq i32 %i.6, 4
  br i1 %exitcond, label %for.end.146, label %for.body.139

for.body.139:                                     ; preds = %for.cond.137
  %mul.i.1799 = mul nuw i128 %conv.i.1798, %conv.i.1798
  %shr.i.1800 = lshr i128 %mul.i.1799, 64
  %conv5.i.1801 = and i128 %mul.i.1799, 18446744073709551615
  %conv12.i.1804 = and i128 %add84.i.i.1786, 18446744073709551615
  %mul13.i.1805 = mul nuw i128 %conv12.i.1804, %conv.i.1798
  %shr15.i.1806 = lshr i128 %mul13.i.1805, 64
  %conv17.i.1807 = shl i128 %mul13.i.1805, 1
  %factor.i.1808 = and i128 %conv17.i.1807, 36893488147419103230
  %add21.i.1809 = add nuw nsw i128 %factor.i.1808, %shr.i.1800
  %conv27.i.1812 = and i128 %add94.i.i.1789, 18446744073709551615
  %mul28.i.1813 = mul nuw i128 %conv27.i.1812, %conv.i.1798
  %shr30.i.1814 = lshr i128 %mul28.i.1813, 64
  %conv32.i.1815 = and i128 %mul28.i.1813, 18446744073709551615
  %add34.i.1816 = add nuw nsw i128 %conv32.i.1815, %shr15.i.1806
  %conv42.i.1820 = and i128 %add104.i.i.1792, 18446744073709551615
  %mul43.i.1821 = mul nuw i128 %conv42.i.1820, %conv.i.1798
  %shr45.i.1822 = lshr i128 %mul43.i.1821, 64
  %conv47.i.1823 = and i128 %mul43.i.1821, 18446744073709551615
  %mul56.i.1826 = mul nuw i128 %conv27.i.1812, %conv12.i.1804
  %shr58.i.1827 = lshr i128 %mul56.i.1826, 64
  %conv60.i.1828 = and i128 %mul56.i.1826, 18446744073709551615
  %add49.i.1824 = add nuw nsw i128 %conv60.i.1828, %shr30.i.1814
  %add62.i.1829 = add nuw nsw i128 %add49.i.1824, %conv47.i.1823
  %mul64.i.1830 = shl nuw nsw i128 %add62.i.1829, 1
  %add67.i.1831 = add nuw nsw i128 %shr45.i.1822, %shr58.i.1827
  %mul72.i.1832 = mul nuw i128 %conv12.i.1804, %conv12.i.1804
  %shr74.i.1833 = lshr i128 %mul72.i.1832, 64
  %conv76.i.1834 = and i128 %mul72.i.1832, 18446744073709551615
  %mul86.i.1837 = mul nuw i128 %conv42.i.1820, %conv12.i.1804
  %shr88.i.1838 = lshr i128 %mul86.i.1837, 64
  %conv90.i.1839 = and i128 %mul86.i.1837, 18446744073709551615
  %add92.i.1840 = add nuw nsw i128 %add67.i.1831, %conv90.i.1839
  %mul94.i.1841 = shl nuw nsw i128 %add92.i.1840, 1
  %mul101.i.1843 = mul nuw i128 %conv42.i.1820, %conv27.i.1812
  %shr103.i.1844 = lshr i128 %mul101.i.1843, 64
  %conv105.i.1845 = and i128 %mul101.i.1843, 18446744073709551615
  %add107.i.1846 = add nuw nsw i128 %conv105.i.1845, %shr88.i.1838
  %mul109.i.1847 = shl nuw nsw i128 %add107.i.1846, 1
  %add114.i.1849 = shl nuw nsw i128 %shr103.i.1844, 1
  %mul119.i.1850 = mul nuw i128 %conv27.i.1812, %conv27.i.1812
  %shr121.i.1851 = lshr i128 %mul119.i.1850, 64
  %conv123.i.1852 = and i128 %mul119.i.1850, 18446744073709551615
  %add125.i.1853 = add nuw nsw i128 %mul94.i.1841, %conv123.i.1852
  %add128.i.1854 = add nuw nsw i128 %mul109.i.1847, %shr121.i.1851
  %mul133.i.1855 = mul nuw i128 %conv42.i.1820, %conv42.i.1820
  %shr135.i.1856 = lshr i128 %mul133.i.1855, 64
  %conv137.i.1857 = and i128 %mul133.i.1855, 18446744073709551615
  %add139.i.1858 = add nuw nsw i128 %add114.i.1849, %conv137.i.1857
  %add.i.1696 = add nuw nsw i128 %conv5.i.1801, 1267650600228229401427983728624
  %add3.i.1698 = or i128 %add21.i.1809, 1267650600228229401496703205376
  %shl.i.i.1708 = shl nuw nsw i128 %add128.i.1854, 32
  %add.i.i.1709 = add nuw nsw i128 %shl.i.i.1708, %add125.i.1853
  %sub7.i.i.1713 = sub nsw i128 %add128.i.1854, %shr135.i.1856
  %shl13.i.i.1716 = shl nuw nsw i128 %add125.i.1853, 32
  %shl28.i.i.1724 = shl nuw nsw i128 %add139.i.1858, 32
  %shl32.i.i.1726 = shl nuw nsw i128 %add139.i.1858, 33
  %add9.i.i.1714 = add nuw nsw i128 %shl32.i.i.1726, %add3.i.1698
  %sub15.i.i.1717 = add nsw i128 %add9.i.i.1714, %sub7.i.i.1713
  %add34.i.i.1727 = sub nsw i128 %sub15.i.i.1717, %shl13.i.i.1716
  %shl46.i.i.1733 = shl nuw nsw i128 %shr135.i.1856, 32
  %add3.i.i.1710 = sub nsw i128 %add.i.1696, %shr135.i.1856
  %sub26.i.i.1723 = sub nsw i128 %add3.i.i.1710, %shl46.i.i.1733
  %sub30.i.i.1725 = sub nsw i128 %sub26.i.i.1723, %add139.i.1858
  %sub44.i.i.1732 = sub nsw i128 %sub30.i.i.1725, %shl28.i.i.1724
  %sub48.i.i.1734 = add nsw i128 %sub44.i.i.1732, %add.i.i.1709
  %shl50.i.i.1735 = shl nuw nsw i128 %shr135.i.1856, 33
  %tmp7552 = add nuw nsw i128 %add34.i.1816, %add139.i.1858
  %tmp7553 = shl nuw nsw i128 %tmp7552, 1
  %add6.i.1701 = add nuw nsw i128 %conv76.i.1834, 1267650600228229401427983728656
  %sub11.i.i.1715 = add nuw nsw i128 %add6.i.1701, %shl50.i.i.1735
  %sub23.i.i.1721 = sub nsw i128 %sub11.i.i.1715, %sub7.i.i.1713
  %add37.i.i.1729 = sub nsw i128 %sub23.i.i.1721, %shl.i.i.1708
  %add52.i.i.1736 = add i128 %add37.i.i.1729, %tmp7553
  %mul54.i.i.1737 = mul nuw nsw i128 %shr135.i.1856, 3
  %add81.i.1836 = add nuw nsw i128 %shr74.i.1833, 1267650600228229401427983728656
  %add9.i.1704 = add nuw nsw i128 %add81.i.1836, %mul54.i.i.1737
  %sub.i.i.1711 = add nuw nsw i128 %add9.i.1704, %mul64.i.1830
  %add19.i.i.1719 = sub nsw i128 %sub.i.i.1711, %shl28.i.i.1724
  %sub41.i.i.1731 = sub nsw i128 %add19.i.i.1719, %add.i.i.1709
  %add56.i.i.1738 = add i128 %sub41.i.i.1731, %shl13.i.i.1716
  %inc145 = add nuw nsw i32 %i.6, 1
  br label %for.cond.137

for.end.146:                                      ; preds = %for.cond.137
  %conv.i.1798.lcssa = phi i128 [ %conv.i.1798, %for.cond.137 ]
  %add104.i.i.1792.lcssa = phi i128 [ %add104.i.i.1792, %for.cond.137 ]
  %add94.i.i.1789.lcssa = phi i128 [ %add94.i.i.1789, %for.cond.137 ]
  %add84.i.i.1786.lcssa = phi i128 [ %add84.i.i.1786, %for.cond.137 ]
  %mul.i.1605 = mul nuw i128 %conv.i.1798.lcssa, %conv.i.5232
  %shr.i.1606 = lshr i128 %mul.i.1605, 64
  %conv5.i.1607 = and i128 %mul.i.1605, 18446744073709551615
  %mul13.i.1611 = mul nuw i128 %conv.i.1798.lcssa, %conv12.i.5238
  %shr15.i.1612 = lshr i128 %mul13.i.1611, 64
  %conv17.i.1613 = and i128 %mul13.i.1611, 18446744073709551615
  %add.i.1614 = add nuw nsw i128 %conv17.i.1613, %shr.i.1606
  %conv22.i.1617 = and i128 %add84.i.i.1786.lcssa, 18446744073709551615
  %mul25.i.1618 = mul nuw i128 %conv22.i.1617, %conv.i.5232
  %shr27.i.1619 = lshr i128 %mul25.i.1618, 64
  %conv29.i.1620 = and i128 %mul25.i.1618, 18446744073709551615
  %add31.i.1621 = add nuw nsw i128 %add.i.1614, %conv29.i.1620
  %mul39.i.1625 = mul nuw i128 %conv.i.1798.lcssa, %conv27.i.5246
  %shr41.i.1626 = lshr i128 %mul39.i.1625, 64
  %conv43.i.1627 = and i128 %mul39.i.1625, 18446744073709551615
  %mul52.i.1630 = mul nuw i128 %conv22.i.1617, %conv12.i.5238
  %shr54.i.1631 = lshr i128 %mul52.i.1630, 64
  %conv56.i.1632 = and i128 %mul52.i.1630, 18446744073709551615
  %conv63.i.1636 = and i128 %add94.i.i.1789.lcssa, 18446744073709551615
  %mul66.i.1637 = mul nuw i128 %conv63.i.1636, %conv.i.5232
  %shr68.i.1638 = lshr i128 %mul66.i.1637, 64
  %conv70.i.1639 = and i128 %mul66.i.1637, 18446744073709551615
  %mul80.i.1644 = mul nuw i128 %conv.i.1798.lcssa, %conv42.i.5254
  %shr82.i.1645 = lshr i128 %mul80.i.1644, 64
  %conv84.i.1646 = and i128 %mul80.i.1644, 18446744073709551615
  %mul93.i.1649 = mul nuw i128 %conv22.i.1617, %conv27.i.5246
  %shr95.i.1650 = lshr i128 %mul93.i.1649, 64
  %conv97.i.1651 = and i128 %mul93.i.1649, 18446744073709551615
  %add102.i.1653 = add nuw nsw i128 %shr95.i.1650, %shr82.i.1645
  %mul107.i.1654 = mul nuw i128 %conv63.i.1636, %conv12.i.5238
  %shr109.i.1655 = lshr i128 %mul107.i.1654, 64
  %conv111.i.1656 = and i128 %mul107.i.1654, 18446744073709551615
  %conv118.i.1660 = and i128 %add104.i.i.1792.lcssa, 18446744073709551615
  %mul121.i.1661 = mul nuw i128 %conv118.i.1660, %conv.i.5232
  %shr123.i.1662 = lshr i128 %mul121.i.1661, 64
  %conv125.i.1663 = and i128 %mul121.i.1661, 18446744073709551615
  %mul135.i.1666 = mul nuw i128 %conv22.i.1617, %conv42.i.5254
  %shr137.i.1667 = lshr i128 %mul135.i.1666, 64
  %conv139.i.1668 = and i128 %mul135.i.1666, 18446744073709551615
  %mul148.i.1671 = mul nuw i128 %conv63.i.1636, %conv27.i.5246
  %shr150.i.1672 = lshr i128 %mul148.i.1671, 64
  %conv152.i.1673 = and i128 %mul148.i.1671, 18446744073709551615
  %add157.i.1675 = add nuw nsw i128 %shr150.i.1672, %shr137.i.1667
  %mul162.i.1676 = mul nuw i128 %conv118.i.1660, %conv12.i.5238
  %shr164.i.1677 = lshr i128 %mul162.i.1676, 64
  %conv166.i.1678 = and i128 %mul162.i.1676, 18446744073709551615
  %add116.i.1658 = add nuw nsw i128 %add102.i.1653, %conv139.i.1668
  %add130.i.1665 = add nuw nsw i128 %add116.i.1658, %shr109.i.1655
  %add141.i.1669 = add nuw nsw i128 %add130.i.1665, %conv152.i.1673
  %add154.i.1674 = add nuw nsw i128 %add141.i.1669, %shr123.i.1662
  %add168.i.1679 = add nuw nsw i128 %add154.i.1674, %conv166.i.1678
  %mul176.i.1681 = mul nuw i128 %conv63.i.1636, %conv42.i.5254
  %shr178.i.1682 = lshr i128 %mul176.i.1681, 64
  %conv180.i.1683 = and i128 %mul176.i.1681, 18446744073709551615
  %mul189.i.1686 = mul nuw i128 %conv118.i.1660, %conv27.i.5246
  %shr191.i.1687 = lshr i128 %mul189.i.1686, 64
  %conv193.i.1688 = and i128 %mul189.i.1686, 18446744073709551615
  %add171.i.1680 = add nuw nsw i128 %add157.i.1675, %conv180.i.1683
  %add182.i.1684 = add nuw nsw i128 %add171.i.1680, %shr164.i.1677
  %add195.i.1689 = add nuw nsw i128 %add182.i.1684, %conv193.i.1688
  %add198.i.1690 = add nuw nsw i128 %shr191.i.1687, %shr178.i.1682
  %mul203.i.1691 = mul nuw i128 %conv118.i.1660, %conv42.i.5254
  %shr205.i.1692 = lshr i128 %mul203.i.1691, 64
  %conv207.i.1693 = and i128 %mul203.i.1691, 18446744073709551615
  %add209.i.1694 = add nuw nsw i128 %add198.i.1690, %conv207.i.1693
  %add3.i.1445 = or i128 %add31.i.1621, 1267650600228229401496703205376
  %shl.i.i.1455 = shl nuw nsw i128 %add195.i.1689, 32
  %add.i.i.1456 = add i128 %shl.i.i.1455, %add168.i.1679
  %sub7.i.i.1460 = sub nsw i128 %add195.i.1689, %shr205.i.1692
  %shl13.i.i.1463 = shl i128 %add168.i.1679, 32
  %shl28.i.i.1471 = shl nuw nsw i128 %add209.i.1694, 32
  %shl32.i.i.1473 = shl nuw nsw i128 %add209.i.1694, 33
  %mul.i.i.1475 = shl nuw nsw i128 %add209.i.1694, 1
  %shl46.i.i.1480 = shl nuw nsw i128 %shr205.i.1692, 32
  %shl50.i.i.1482 = shl nuw nsw i128 %shr205.i.1692, 33
  %add34.i.1622 = add nuw nsw i128 %shr15.i.1612, 1267650600228229401427983728656
  %add45.i.1628 = add nuw nsw i128 %add34.i.1622, %conv43.i.1627
  %add58.i.1633 = add nuw nsw i128 %add45.i.1628, %shr27.i.1619
  %add72.i.1640 = add nuw nsw i128 %add58.i.1633, %conv56.i.1632
  %add6.i.1448 = add nuw nsw i128 %add72.i.1640, %conv70.i.1639
  %sub11.i.i.1462 = add nuw nsw i128 %add6.i.1448, %shl50.i.i.1482
  %sub23.i.i.1468 = add i128 %sub11.i.i.1462, %mul.i.i.1475
  %add37.i.i.1476 = sub i128 %sub23.i.i.1468, %sub7.i.i.1460
  %add52.i.i.1483 = sub i128 %add37.i.i.1476, %shl.i.i.1455
  %mul54.i.i.1484 = mul nuw nsw i128 %shr205.i.1692, 3
  %shr.i.i.1327 = lshr i128 %add52.i.i.1483, 64
  %add75.i.1641 = add nuw nsw i128 %shr41.i.1626, 1267650600246676145497398312976
  %add86.i.1647 = add nuw nsw i128 %add75.i.1641, %conv84.i.1646
  %add99.i.1652 = add nuw nsw i128 %add86.i.1647, %shr54.i.1631
  %add113.i.1657 = add nuw nsw i128 %add99.i.1652, %conv97.i.1651
  %add127.i.1664 = add nuw nsw i128 %add113.i.1657, %shr68.i.1638
  %add9.i.1451 = add nuw nsw i128 %add127.i.1664, %conv111.i.1656
  %sub.i.i.1458 = add i128 %add9.i.1451, %conv125.i.1663
  %add19.i.i.1466 = add i128 %sub.i.i.1458, %mul54.i.i.1484
  %sub41.i.i.1478 = sub i128 %add19.i.i.1466, %shl28.i.i.1471
  %add56.i.i.1485 = sub i128 %sub41.i.i.1478, %add.i.i.1456
  %add.i.i.1325 = add i128 %add56.i.i.1485, %shl13.i.i.1463
  %add8.i.i.1328 = add i128 %add.i.i.1325, %shr.i.i.1327
  %conv12.i.i.1329 = and i128 %add52.i.i.1483, 18446744073709551615
  %add13.i.i.1330 = add nuw nsw i128 %conv12.i.i.1329, 18446673704965373952
  %shr22.i.i.1334 = lshr i128 %add8.i.i.1328, 64
  %conv23.i.i.1335 = trunc i128 %shr22.i.i.1334 to i64
  %conv26.i.i.1336 = and i128 %add8.i.i.1328, 18446744073709551615
  %sub.i.i.1337 = sub nsw i128 %conv26.i.i.1336, %shr22.i.i.1334
  %shl.i.i.1338 = shl nuw nsw i128 %shr22.i.i.1334, 32
  %add32.i.i.1339 = add nsw i128 %sub.i.i.1337, %shl.i.i.1338
  %shr34.i.i.1340 = lshr i128 %add32.i.i.1339, 64
  %conv35.i.i.1341 = trunc i128 %shr34.i.i.1340 to i64
  %add36.i.i.1342 = add i64 %conv35.i.i.1341, %conv23.i.i.1335
  %conv39.i.i.1343 = and i128 %add32.i.i.1339, 18446744073709551615
  %sub43.i.i.1344 = sub nsw i128 %conv39.i.i.1343, %shr34.i.i.1340
  %shl45.i.i.1345 = shl nuw nsw i128 %shr34.i.i.1340, 32
  %add47.i.i.1346 = add nsw i128 %sub43.i.i.1344, %shl45.i.i.1345
  %conv48.i.i.1347 = zext i64 %add36.i.i.1342 to i128
  %shl52.i.i.1349 = shl nuw nsw i128 %conv48.i.i.1347, 32
  %shr56.i.i.1351 = lshr i128 %add47.i.i.1346, 64
  %conv57.i.i.1352 = trunc i128 %shr56.i.i.1351 to i64
  %sub58.i.i.1353 = sub i64 0, %conv57.i.i.1352
  %conv60.i.i.1354 = trunc i128 %add47.i.i.1346 to i64
  %and.i.i.1355 = and i64 %conv60.i.i.1354, 9223372036854775807
  %neg.i.i.1356 = sub nsw i64 9223372032559808512, %and.i.i.1355
  %sub62177.i.i.1357 = and i64 %neg.i.i.1356, %conv60.i.i.1354
  %and66.i.i.1358 = ashr i64 %sub62177.i.i.1357, 63
  %or.i.i.1359 = or i64 %and66.i.i.1358, %sub58.i.i.1353
  %conv68.i.i.1360 = zext i64 %or.i.i.1359 to i128
  %add3.i.i.1457 = add nuw nsw i128 %conv5.i.1607, 1267650600246676145501693280239
  %sub26.i.i.1470 = sub nsw i128 %add3.i.i.1457, %shr205.i.1692
  %sub30.i.i.1472 = sub nsw i128 %sub26.i.i.1470, %shl46.i.i.1480
  %sub44.i.i.1479 = sub nsw i128 %sub30.i.i.1472, %add209.i.1694
  %sub48.i.i.1481 = sub nsw i128 %sub44.i.i.1479, %shl28.i.i.1471
  %add16.i.i.1331 = add i128 %sub48.i.i.1481, %add.i.i.1456
  %add50.i.i.1348 = add i128 %add16.i.i.1331, %conv48.i.i.1347
  %sub70.i.i.1361 = sub i128 %add50.i.i.1348, %conv68.i.i.1360
  %and71.i.i.1362 = and i64 %or.i.i.1359, 4294967295
  %conv72.i.i.1363 = zext i64 %and71.i.i.1362 to i128
  %and75.i.i.1365 = and i64 %or.i.i.1359, -4294967295
  %conv76.i.i.1366 = zext i64 %and75.i.i.1365 to i128
  %sub78.i.i.1367 = sub nsw i128 %add47.i.i.1346, %conv76.i.i.1366
  %shr80.i.i.1368 = lshr i128 %sub70.i.i.1361, 64
  %add9.i.i.1461 = add nuw nsw i128 %add3.i.1445, 1298074214633706907132628377272319
  %sub15.i.i.1464 = add nuw nsw i128 %add9.i.i.1461, %shl32.i.i.1473
  %add34.i.i.1474 = add nsw i128 %sub15.i.i.1464, %sub7.i.i.1460
  %add19.i.i.1333 = sub i128 %add34.i.i.1474, %shl13.i.i.1463
  %sub54.i.i.1350 = sub i128 %add19.i.i.1333, %shl52.i.i.1349
  %sub74.i.i.1364 = sub i128 %sub54.i.i.1350, %conv72.i.i.1363
  %add84.i.i.1369 = add i128 %sub74.i.i.1364, %shr80.i.i.1368
  %shr90.i.i.1371 = lshr i128 %add84.i.i.1369, 64
  %add94.i.i.1372 = add nuw nsw i128 %add13.i.i.1330, %shr90.i.i.1371
  %shr100.i.i.1374 = lshr i128 %add94.i.i.1372, 64
  %add104.i.i.1375 = add nsw i128 %sub78.i.i.1367, %shr100.i.i.1374
  %conv.i.1381 = and i128 %sub70.i.i.1361, 18446744073709551615
  %mul.i.1382 = mul nuw i128 %conv.i.1381, %conv.i.1381
  %shr.i.1383 = lshr i128 %mul.i.1382, 64
  %conv5.i.1384 = and i128 %mul.i.1382, 18446744073709551615
  %conv12.i.1387 = and i128 %add84.i.i.1369, 18446744073709551615
  %mul13.i.1388 = mul nuw i128 %conv12.i.1387, %conv.i.1381
  %shr15.i.1389 = lshr i128 %mul13.i.1388, 64
  %conv17.i.1390 = shl i128 %mul13.i.1388, 1
  %factor.i.1391 = and i128 %conv17.i.1390, 36893488147419103230
  %add21.i.1392 = add nuw nsw i128 %factor.i.1391, %shr.i.1383
  %conv27.i.1395 = and i128 %add94.i.i.1372, 18446744073709551615
  %mul28.i.1396 = mul nuw i128 %conv27.i.1395, %conv.i.1381
  %shr30.i.1397 = lshr i128 %mul28.i.1396, 64
  %conv32.i.1398 = and i128 %mul28.i.1396, 18446744073709551615
  %add34.i.1399 = add nuw nsw i128 %conv32.i.1398, %shr15.i.1389
  %conv42.i.1403 = and i128 %add104.i.i.1375, 18446744073709551615
  %mul43.i.1404 = mul nuw i128 %conv42.i.1403, %conv.i.1381
  %shr45.i.1405 = lshr i128 %mul43.i.1404, 64
  %conv47.i.1406 = and i128 %mul43.i.1404, 18446744073709551615
  %mul56.i.1409 = mul nuw i128 %conv27.i.1395, %conv12.i.1387
  %shr58.i.1410 = lshr i128 %mul56.i.1409, 64
  %conv60.i.1411 = and i128 %mul56.i.1409, 18446744073709551615
  %add49.i.1407 = add nuw nsw i128 %conv60.i.1411, %shr30.i.1397
  %add62.i.1412 = add nuw nsw i128 %add49.i.1407, %conv47.i.1406
  %mul64.i.1413 = shl nuw nsw i128 %add62.i.1412, 1
  %add67.i.1414 = add nuw nsw i128 %shr45.i.1405, %shr58.i.1410
  %mul72.i.1415 = mul nuw i128 %conv12.i.1387, %conv12.i.1387
  %shr74.i.1416 = lshr i128 %mul72.i.1415, 64
  %conv76.i.1417 = and i128 %mul72.i.1415, 18446744073709551615
  %mul86.i.1420 = mul nuw i128 %conv42.i.1403, %conv12.i.1387
  %shr88.i.1421 = lshr i128 %mul86.i.1420, 64
  %conv90.i.1422 = and i128 %mul86.i.1420, 18446744073709551615
  %add92.i.1423 = add nuw nsw i128 %add67.i.1414, %conv90.i.1422
  %mul94.i.1424 = shl nuw nsw i128 %add92.i.1423, 1
  %mul101.i.1426 = mul nuw i128 %conv42.i.1403, %conv27.i.1395
  %shr103.i.1427 = lshr i128 %mul101.i.1426, 64
  %conv105.i.1428 = and i128 %mul101.i.1426, 18446744073709551615
  %add107.i.1429 = add nuw nsw i128 %conv105.i.1428, %shr88.i.1421
  %mul109.i.1430 = shl nuw nsw i128 %add107.i.1429, 1
  %add114.i.1432 = shl nuw nsw i128 %shr103.i.1427, 1
  %mul119.i.1433 = mul nuw i128 %conv27.i.1395, %conv27.i.1395
  %shr121.i.1434 = lshr i128 %mul119.i.1433, 64
  %conv123.i.1435 = and i128 %mul119.i.1433, 18446744073709551615
  %add125.i.1436 = add nuw nsw i128 %mul94.i.1424, %conv123.i.1435
  %add128.i.1437 = add nuw nsw i128 %mul109.i.1430, %shr121.i.1434
  %mul133.i.1438 = mul nuw i128 %conv42.i.1403, %conv42.i.1403
  %shr135.i.1439 = lshr i128 %mul133.i.1438, 64
  %conv137.i.1440 = and i128 %mul133.i.1438, 18446744073709551615
  %add139.i.1441 = add nuw nsw i128 %add114.i.1432, %conv137.i.1440
  %add3.i.1281 = or i128 %add21.i.1392, 1267650600228229401496703205376
  %shl.i.i.1291 = shl nuw nsw i128 %add128.i.1437, 32
  %add.i.i.1292 = add nuw nsw i128 %shl.i.i.1291, %add125.i.1436
  %sub7.i.i.1296 = sub nsw i128 %add128.i.1437, %shr135.i.1439
  %shl13.i.i.1299 = shl nuw nsw i128 %add125.i.1436, 32
  %shl28.i.i.1307 = shl nuw nsw i128 %add139.i.1441, 32
  %shl32.i.i.1309 = shl nuw nsw i128 %add139.i.1441, 33
  %shl46.i.i.1316 = shl nuw nsw i128 %shr135.i.1439, 32
  %shl50.i.i.1318 = shl nuw nsw i128 %shr135.i.1439, 33
  %tmp7554 = add nuw nsw i128 %add34.i.1399, %add139.i.1441
  %tmp7555 = shl nuw nsw i128 %tmp7554, 1
  %add6.i.1284 = add nuw nsw i128 %conv76.i.1417, 1267650600228229401427983728656
  %sub11.i.i.1298 = add nuw nsw i128 %add6.i.1284, %shl50.i.i.1318
  %sub23.i.i.1304 = sub nsw i128 %sub11.i.i.1298, %sub7.i.i.1296
  %add37.i.i.1312 = sub nsw i128 %sub23.i.i.1304, %shl.i.i.1291
  %add52.i.i.1319 = add i128 %add37.i.i.1312, %tmp7555
  %mul54.i.i.1320 = mul nuw nsw i128 %shr135.i.1439, 3
  %shr.i.i.1163 = lshr i128 %add52.i.i.1319, 64
  %add9.i.1287 = add nuw nsw i128 %shr74.i.1416, 1267650600246676145497398312976
  %sub.i.i.1294 = add nuw nsw i128 %add9.i.1287, %mul54.i.i.1320
  %add19.i.i.1302 = add nuw nsw i128 %sub.i.i.1294, %mul64.i.1413
  %sub41.i.i.1314 = sub nsw i128 %add19.i.i.1302, %shl28.i.i.1307
  %add56.i.i.1321 = sub nsw i128 %sub41.i.i.1314, %add.i.i.1292
  %add.i.i.1161 = add i128 %add56.i.i.1321, %shl13.i.i.1299
  %add8.i.i.1164 = add i128 %add.i.i.1161, %shr.i.i.1163
  %conv12.i.i.1165 = and i128 %add52.i.i.1319, 18446744073709551615
  %add13.i.i.1166 = add nuw nsw i128 %conv12.i.i.1165, 18446673704965373952
  %shr22.i.i.1170 = lshr i128 %add8.i.i.1164, 64
  %conv23.i.i.1171 = trunc i128 %shr22.i.i.1170 to i64
  %conv26.i.i.1172 = and i128 %add8.i.i.1164, 18446744073709551615
  %sub.i.i.1173 = sub nsw i128 %conv26.i.i.1172, %shr22.i.i.1170
  %shl.i.i.1174 = shl nuw nsw i128 %shr22.i.i.1170, 32
  %add32.i.i.1175 = add nsw i128 %sub.i.i.1173, %shl.i.i.1174
  %shr34.i.i.1176 = lshr i128 %add32.i.i.1175, 64
  %conv35.i.i.1177 = trunc i128 %shr34.i.i.1176 to i64
  %add36.i.i.1178 = add i64 %conv35.i.i.1177, %conv23.i.i.1171
  %conv39.i.i.1179 = and i128 %add32.i.i.1175, 18446744073709551615
  %sub43.i.i.1180 = sub nsw i128 %conv39.i.i.1179, %shr34.i.i.1176
  %shl45.i.i.1181 = shl nuw nsw i128 %shr34.i.i.1176, 32
  %add47.i.i.1182 = add nsw i128 %sub43.i.i.1180, %shl45.i.i.1181
  %conv48.i.i.1183 = zext i64 %add36.i.i.1178 to i128
  %shl52.i.i.1185 = shl nuw nsw i128 %conv48.i.i.1183, 32
  %shr56.i.i.1187 = lshr i128 %add47.i.i.1182, 64
  %conv57.i.i.1188 = trunc i128 %shr56.i.i.1187 to i64
  %sub58.i.i.1189 = sub i64 0, %conv57.i.i.1188
  %conv60.i.i.1190 = trunc i128 %add47.i.i.1182 to i64
  %and.i.i.1191 = and i64 %conv60.i.i.1190, 9223372036854775807
  %neg.i.i.1192 = sub nsw i64 9223372032559808512, %and.i.i.1191
  %sub62177.i.i.1193 = and i64 %neg.i.i.1192, %conv60.i.i.1190
  %and66.i.i.1194 = ashr i64 %sub62177.i.i.1193, 63
  %or.i.i.1195 = or i64 %and66.i.i.1194, %sub58.i.i.1189
  %conv68.i.i.1196 = zext i64 %or.i.i.1195 to i128
  %add3.i.i.1293 = add nuw nsw i128 %conv5.i.1384, 1267650600246676145501693280239
  %sub26.i.i.1306 = sub nsw i128 %add3.i.i.1293, %shr135.i.1439
  %sub30.i.i.1308 = sub nsw i128 %sub26.i.i.1306, %shl46.i.i.1316
  %sub44.i.i.1315 = sub nsw i128 %sub30.i.i.1308, %add139.i.1441
  %sub48.i.i.1317 = sub nsw i128 %sub44.i.i.1315, %shl28.i.i.1307
  %add16.i.i.1167 = add nsw i128 %sub48.i.i.1317, %add.i.i.1292
  %add50.i.i.1184 = add i128 %add16.i.i.1167, %conv48.i.i.1183
  %sub70.i.i.1197 = sub i128 %add50.i.i.1184, %conv68.i.i.1196
  %and71.i.i.1198 = and i64 %or.i.i.1195, 4294967295
  %conv72.i.i.1199 = zext i64 %and71.i.i.1198 to i128
  %and75.i.i.1201 = and i64 %or.i.i.1195, -4294967295
  %conv76.i.i.1202 = zext i64 %and75.i.i.1201 to i128
  %sub78.i.i.1203 = sub nsw i128 %add47.i.i.1182, %conv76.i.i.1202
  %shr80.i.i.1204 = lshr i128 %sub70.i.i.1197, 64
  %add9.i.i.1297 = add nuw nsw i128 %add3.i.1281, 1298074214633706907132628377272319
  %sub15.i.i.1300 = add nuw nsw i128 %add9.i.i.1297, %shl32.i.i.1309
  %add34.i.i.1310 = add nsw i128 %sub15.i.i.1300, %sub7.i.i.1296
  %add19.i.i.1169 = sub nsw i128 %add34.i.i.1310, %shl13.i.i.1299
  %sub54.i.i.1186 = sub i128 %add19.i.i.1169, %shl52.i.i.1185
  %sub74.i.i.1200 = sub i128 %sub54.i.i.1186, %conv72.i.i.1199
  %add84.i.i.1205 = add i128 %sub74.i.i.1200, %shr80.i.i.1204
  %shr90.i.i.1207 = lshr i128 %add84.i.i.1205, 64
  %add94.i.i.1208 = add nuw nsw i128 %add13.i.i.1166, %shr90.i.i.1207
  %shr100.i.i.1210 = lshr i128 %add94.i.i.1208, 64
  %add104.i.i.1211 = add nsw i128 %sub78.i.i.1203, %shr100.i.i.1210
  %conv.i.1217 = and i128 %sub70.i.i.1197, 18446744073709551615
  %mul.i.1218 = mul nuw i128 %conv.i.1217, %conv.i.1217
  %shr.i.1219 = lshr i128 %mul.i.1218, 64
  %conv5.i.1220 = and i128 %mul.i.1218, 18446744073709551615
  %conv12.i.1223 = and i128 %add84.i.i.1205, 18446744073709551615
  %mul13.i.1224 = mul nuw i128 %conv12.i.1223, %conv.i.1217
  %shr15.i.1225 = lshr i128 %mul13.i.1224, 64
  %conv17.i.1226 = shl i128 %mul13.i.1224, 1
  %factor.i.1227 = and i128 %conv17.i.1226, 36893488147419103230
  %add21.i.1228 = add nuw nsw i128 %factor.i.1227, %shr.i.1219
  %conv27.i.1231 = and i128 %add94.i.i.1208, 18446744073709551615
  %mul28.i.1232 = mul nuw i128 %conv27.i.1231, %conv.i.1217
  %shr30.i.1233 = lshr i128 %mul28.i.1232, 64
  %conv32.i.1234 = and i128 %mul28.i.1232, 18446744073709551615
  %add34.i.1235 = add nuw nsw i128 %conv32.i.1234, %shr15.i.1225
  %conv42.i.1239 = and i128 %add104.i.i.1211, 18446744073709551615
  %mul43.i.1240 = mul nuw i128 %conv42.i.1239, %conv.i.1217
  %shr45.i.1241 = lshr i128 %mul43.i.1240, 64
  %conv47.i.1242 = and i128 %mul43.i.1240, 18446744073709551615
  %mul56.i.1245 = mul nuw i128 %conv27.i.1231, %conv12.i.1223
  %shr58.i.1246 = lshr i128 %mul56.i.1245, 64
  %conv60.i.1247 = and i128 %mul56.i.1245, 18446744073709551615
  %add49.i.1243 = add nuw nsw i128 %conv60.i.1247, %shr30.i.1233
  %add62.i.1248 = add nuw nsw i128 %add49.i.1243, %conv47.i.1242
  %mul64.i.1249 = shl nuw nsw i128 %add62.i.1248, 1
  %add67.i.1250 = add nuw nsw i128 %shr45.i.1241, %shr58.i.1246
  %mul72.i.1251 = mul nuw i128 %conv12.i.1223, %conv12.i.1223
  %shr74.i.1252 = lshr i128 %mul72.i.1251, 64
  %conv76.i.1253 = and i128 %mul72.i.1251, 18446744073709551615
  %mul86.i.1256 = mul nuw i128 %conv42.i.1239, %conv12.i.1223
  %shr88.i.1257 = lshr i128 %mul86.i.1256, 64
  %conv90.i.1258 = and i128 %mul86.i.1256, 18446744073709551615
  %add92.i.1259 = add nuw nsw i128 %add67.i.1250, %conv90.i.1258
  %mul94.i.1260 = shl nuw nsw i128 %add92.i.1259, 1
  %mul101.i.1262 = mul nuw i128 %conv42.i.1239, %conv27.i.1231
  %shr103.i.1263 = lshr i128 %mul101.i.1262, 64
  %conv105.i.1264 = and i128 %mul101.i.1262, 18446744073709551615
  %add107.i.1265 = add nuw nsw i128 %conv105.i.1264, %shr88.i.1257
  %mul109.i.1266 = shl nuw nsw i128 %add107.i.1265, 1
  %add114.i.1268 = shl nuw nsw i128 %shr103.i.1263, 1
  %mul119.i.1269 = mul nuw i128 %conv27.i.1231, %conv27.i.1231
  %shr121.i.1270 = lshr i128 %mul119.i.1269, 64
  %conv123.i.1271 = and i128 %mul119.i.1269, 18446744073709551615
  %add125.i.1272 = add nuw nsw i128 %mul94.i.1260, %conv123.i.1271
  %add128.i.1273 = add nuw nsw i128 %mul109.i.1266, %shr121.i.1270
  %mul133.i.1274 = mul nuw i128 %conv42.i.1239, %conv42.i.1239
  %shr135.i.1275 = lshr i128 %mul133.i.1274, 64
  %conv137.i.1276 = and i128 %mul133.i.1274, 18446744073709551615
  %add139.i.1277 = add nuw nsw i128 %add114.i.1268, %conv137.i.1276
  %add3.i.1117 = or i128 %add21.i.1228, 1267650600228229401496703205376
  %shl.i.i.1127 = shl nuw nsw i128 %add128.i.1273, 32
  %add.i.i.1128 = add nuw nsw i128 %shl.i.i.1127, %add125.i.1272
  %sub7.i.i.1132 = sub nsw i128 %add128.i.1273, %shr135.i.1275
  %shl13.i.i.1135 = shl nuw nsw i128 %add125.i.1272, 32
  %shl28.i.i.1143 = shl nuw nsw i128 %add139.i.1277, 32
  %shl32.i.i.1145 = shl nuw nsw i128 %add139.i.1277, 33
  %shl46.i.i.1152 = shl nuw nsw i128 %shr135.i.1275, 32
  %shl50.i.i.1154 = shl nuw nsw i128 %shr135.i.1275, 33
  %tmp7556 = add nuw nsw i128 %add34.i.1235, %add139.i.1277
  %tmp7557 = shl nuw nsw i128 %tmp7556, 1
  %add6.i.1120 = add nuw nsw i128 %conv76.i.1253, 1267650600228229401427983728656
  %sub11.i.i.1134 = add nuw nsw i128 %add6.i.1120, %shl50.i.i.1154
  %sub23.i.i.1140 = sub nsw i128 %sub11.i.i.1134, %sub7.i.i.1132
  %add37.i.i.1148 = sub nsw i128 %sub23.i.i.1140, %shl.i.i.1127
  %add52.i.i.1155 = add i128 %add37.i.i.1148, %tmp7557
  %mul54.i.i.1156 = mul nuw nsw i128 %shr135.i.1275, 3
  %shr.i.i.910 = lshr i128 %add52.i.i.1155, 64
  %add9.i.1123 = add nuw nsw i128 %shr74.i.1252, 1267650600246676145497398312976
  %sub.i.i.1130 = add nuw nsw i128 %add9.i.1123, %mul54.i.i.1156
  %add19.i.i.1138 = add nuw nsw i128 %sub.i.i.1130, %mul64.i.1249
  %sub41.i.i.1150 = sub nsw i128 %add19.i.i.1138, %shl28.i.i.1143
  %add56.i.i.1157 = sub nsw i128 %sub41.i.i.1150, %add.i.i.1128
  %add.i.i.908 = add i128 %add56.i.i.1157, %shl13.i.i.1135
  %add8.i.i.911 = add i128 %add.i.i.908, %shr.i.i.910
  %conv12.i.i.912 = and i128 %add52.i.i.1155, 18446744073709551615
  %add13.i.i.913 = add nuw nsw i128 %conv12.i.i.912, 18446673704965373952
  %shr22.i.i.917 = lshr i128 %add8.i.i.911, 64
  %conv23.i.i.918 = trunc i128 %shr22.i.i.917 to i64
  %conv26.i.i.919 = and i128 %add8.i.i.911, 18446744073709551615
  %sub.i.i.920 = sub nsw i128 %conv26.i.i.919, %shr22.i.i.917
  %shl.i.i.921 = shl nuw nsw i128 %shr22.i.i.917, 32
  %add32.i.i.922 = add nsw i128 %sub.i.i.920, %shl.i.i.921
  %shr34.i.i.923 = lshr i128 %add32.i.i.922, 64
  %conv35.i.i.924 = trunc i128 %shr34.i.i.923 to i64
  %add36.i.i.925 = add i64 %conv35.i.i.924, %conv23.i.i.918
  %conv39.i.i.926 = and i128 %add32.i.i.922, 18446744073709551615
  %sub43.i.i.927 = sub nsw i128 %conv39.i.i.926, %shr34.i.i.923
  %shl45.i.i.928 = shl nuw nsw i128 %shr34.i.i.923, 32
  %add47.i.i.929 = add nsw i128 %sub43.i.i.927, %shl45.i.i.928
  %conv48.i.i.930 = zext i64 %add36.i.i.925 to i128
  %shl52.i.i.932 = shl nuw nsw i128 %conv48.i.i.930, 32
  %shr56.i.i.934 = lshr i128 %add47.i.i.929, 64
  %conv57.i.i.935 = trunc i128 %shr56.i.i.934 to i64
  %sub58.i.i.936 = sub i64 0, %conv57.i.i.935
  %conv60.i.i.937 = trunc i128 %add47.i.i.929 to i64
  %and.i.i.938 = and i64 %conv60.i.i.937, 9223372036854775807
  %neg.i.i.939 = sub nsw i64 9223372032559808512, %and.i.i.938
  %sub62177.i.i.940 = and i64 %neg.i.i.939, %conv60.i.i.937
  %and66.i.i.941 = ashr i64 %sub62177.i.i.940, 63
  %or.i.i.942 = or i64 %and66.i.i.941, %sub58.i.i.936
  %conv68.i.i.943 = zext i64 %or.i.i.942 to i128
  %add3.i.i.1129 = add nuw nsw i128 %conv5.i.1220, 1267650600246676145501693280239
  %sub26.i.i.1142 = sub nsw i128 %add3.i.i.1129, %shr135.i.1275
  %sub30.i.i.1144 = sub nsw i128 %sub26.i.i.1142, %shl46.i.i.1152
  %sub44.i.i.1151 = sub nsw i128 %sub30.i.i.1144, %add139.i.1277
  %sub48.i.i.1153 = sub nsw i128 %sub44.i.i.1151, %shl28.i.i.1143
  %add16.i.i.914 = add nsw i128 %sub48.i.i.1153, %add.i.i.1128
  %add50.i.i.931 = add i128 %add16.i.i.914, %conv48.i.i.930
  %sub70.i.i.944 = sub i128 %add50.i.i.931, %conv68.i.i.943
  %and71.i.i.945 = and i64 %or.i.i.942, 4294967295
  %conv72.i.i.946 = zext i64 %and71.i.i.945 to i128
  %and75.i.i.948 = and i64 %or.i.i.942, -4294967295
  %conv76.i.i.949 = zext i64 %and75.i.i.948 to i128
  %sub78.i.i.950 = sub nsw i128 %add47.i.i.929, %conv76.i.i.949
  %shr80.i.i.951 = lshr i128 %sub70.i.i.944, 64
  %add9.i.i.1133 = add nuw nsw i128 %add3.i.1117, 1298074214633706907132628377272319
  %sub15.i.i.1136 = add nuw nsw i128 %add9.i.i.1133, %shl32.i.i.1145
  %add34.i.i.1146 = add nsw i128 %sub15.i.i.1136, %sub7.i.i.1132
  %add19.i.i.916 = sub nsw i128 %add34.i.i.1146, %shl13.i.i.1135
  %sub54.i.i.933 = sub i128 %add19.i.i.916, %shl52.i.i.932
  %sub74.i.i.947 = sub i128 %sub54.i.i.933, %conv72.i.i.946
  %add84.i.i.952 = add i128 %sub74.i.i.947, %shr80.i.i.951
  %shr90.i.i.954 = lshr i128 %add84.i.i.952, 64
  %add94.i.i.955 = add nuw nsw i128 %add13.i.i.913, %shr90.i.i.954
  %shr100.i.i.957 = lshr i128 %add94.i.i.955, 64
  %add104.i.i.958 = add nsw i128 %sub78.i.i.950, %shr100.i.i.957
  %conv.i.1022 = and i128 %sub70.i.i.944, 18446744073709551615
  %mul.i.1024 = mul nuw i128 %conv.i.1022, %conv.i.5819
  %shr.i.1025 = lshr i128 %mul.i.1024, 64
  %conv5.i.1026 = and i128 %mul.i.1024, 18446744073709551615
  %mul13.i.1030 = mul nuw i128 %conv.i.1022, %conv12.i.5825
  %shr15.i.1031 = lshr i128 %mul13.i.1030, 64
  %conv17.i.1032 = and i128 %mul13.i.1030, 18446744073709551615
  %add.i.1033 = add nuw nsw i128 %conv17.i.1032, %shr.i.1025
  %conv22.i.1036 = and i128 %add84.i.i.952, 18446744073709551615
  %mul25.i.1037 = mul nuw i128 %conv22.i.1036, %conv.i.5819
  %shr27.i.1038 = lshr i128 %mul25.i.1037, 64
  %conv29.i.1039 = and i128 %mul25.i.1037, 18446744073709551615
  %add31.i.1040 = add nuw nsw i128 %add.i.1033, %conv29.i.1039
  %mul39.i.1044 = mul nuw i128 %conv.i.1022, %conv27.i.5833
  %shr41.i.1045 = lshr i128 %mul39.i.1044, 64
  %conv43.i.1046 = and i128 %mul39.i.1044, 18446744073709551615
  %mul52.i.1049 = mul nuw i128 %conv22.i.1036, %conv12.i.5825
  %shr54.i.1050 = lshr i128 %mul52.i.1049, 64
  %conv56.i.1051 = and i128 %mul52.i.1049, 18446744073709551615
  %conv63.i.1055 = and i128 %add94.i.i.955, 18446744073709551615
  %mul66.i.1056 = mul nuw i128 %conv63.i.1055, %conv.i.5819
  %shr68.i.1057 = lshr i128 %mul66.i.1056, 64
  %conv70.i.1058 = and i128 %mul66.i.1056, 18446744073709551615
  %mul80.i.1063 = mul nuw i128 %conv.i.1022, %conv42.i.5841
  %shr82.i.1064 = lshr i128 %mul80.i.1063, 64
  %conv84.i.1065 = and i128 %mul80.i.1063, 18446744073709551615
  %mul93.i.1068 = mul nuw i128 %conv22.i.1036, %conv27.i.5833
  %shr95.i.1069 = lshr i128 %mul93.i.1068, 64
  %conv97.i.1070 = and i128 %mul93.i.1068, 18446744073709551615
  %add102.i.1072 = add nuw nsw i128 %shr95.i.1069, %shr82.i.1064
  %mul107.i.1073 = mul nuw i128 %conv63.i.1055, %conv12.i.5825
  %shr109.i.1074 = lshr i128 %mul107.i.1073, 64
  %conv111.i.1075 = and i128 %mul107.i.1073, 18446744073709551615
  %conv118.i.1079 = and i128 %add104.i.i.958, 18446744073709551615
  %mul121.i.1080 = mul nuw i128 %conv118.i.1079, %conv.i.5819
  %shr123.i.1081 = lshr i128 %mul121.i.1080, 64
  %conv125.i.1082 = and i128 %mul121.i.1080, 18446744073709551615
  %mul135.i.1085 = mul nuw i128 %conv22.i.1036, %conv42.i.5841
  %shr137.i.1086 = lshr i128 %mul135.i.1085, 64
  %conv139.i.1087 = and i128 %mul135.i.1085, 18446744073709551615
  %mul148.i.1090 = mul nuw i128 %conv63.i.1055, %conv27.i.5833
  %shr150.i.1091 = lshr i128 %mul148.i.1090, 64
  %conv152.i.1092 = and i128 %mul148.i.1090, 18446744073709551615
  %add157.i.1094 = add nuw nsw i128 %shr150.i.1091, %shr137.i.1086
  %mul162.i.1095 = mul nuw i128 %conv118.i.1079, %conv12.i.5825
  %shr164.i.1096 = lshr i128 %mul162.i.1095, 64
  %conv166.i.1097 = and i128 %mul162.i.1095, 18446744073709551615
  %add116.i.1077 = add nuw nsw i128 %add102.i.1072, %conv139.i.1087
  %add130.i.1084 = add nuw nsw i128 %add116.i.1077, %shr109.i.1074
  %add141.i.1088 = add nuw nsw i128 %add130.i.1084, %conv152.i.1092
  %add154.i.1093 = add nuw nsw i128 %add141.i.1088, %shr123.i.1081
  %add168.i.1098 = add nuw nsw i128 %add154.i.1093, %conv166.i.1097
  %mul176.i.1100 = mul nuw i128 %conv63.i.1055, %conv42.i.5841
  %shr178.i.1101 = lshr i128 %mul176.i.1100, 64
  %conv180.i.1102 = and i128 %mul176.i.1100, 18446744073709551615
  %mul189.i.1105 = mul nuw i128 %conv118.i.1079, %conv27.i.5833
  %shr191.i.1106 = lshr i128 %mul189.i.1105, 64
  %conv193.i.1107 = and i128 %mul189.i.1105, 18446744073709551615
  %add171.i.1099 = add nuw nsw i128 %add157.i.1094, %conv180.i.1102
  %add182.i.1103 = add nuw nsw i128 %add171.i.1099, %shr164.i.1096
  %add195.i.1108 = add nuw nsw i128 %add182.i.1103, %conv193.i.1107
  %add198.i.1109 = add nuw nsw i128 %shr191.i.1106, %shr178.i.1101
  %mul203.i.1110 = mul nuw i128 %conv118.i.1079, %conv42.i.5841
  %shr205.i.1111 = lshr i128 %mul203.i.1110, 64
  %conv207.i.1112 = and i128 %mul203.i.1110, 18446744073709551615
  %add209.i.1113 = add nuw nsw i128 %add198.i.1109, %conv207.i.1112
  %add3.i.864 = or i128 %add31.i.1040, 1267650600228229401496703205376
  %shl.i.i.874 = shl nuw nsw i128 %add195.i.1108, 32
  %add.i.i.875 = add i128 %shl.i.i.874, %add168.i.1098
  %sub7.i.i.879 = sub nsw i128 %add195.i.1108, %shr205.i.1111
  %shl13.i.i.882 = shl i128 %add168.i.1098, 32
  %shl28.i.i.890 = shl nuw nsw i128 %add209.i.1113, 32
  %shl32.i.i.892 = shl nuw nsw i128 %add209.i.1113, 33
  %mul.i.i.894 = shl nuw nsw i128 %add209.i.1113, 1
  %shl46.i.i.899 = shl nuw nsw i128 %shr205.i.1111, 32
  %shl50.i.i.901 = shl nuw nsw i128 %shr205.i.1111, 33
  %add34.i.1041 = add nuw nsw i128 %shr15.i.1031, 1267650600228229401427983728656
  %add45.i.1047 = add nuw nsw i128 %add34.i.1041, %conv43.i.1046
  %add58.i.1052 = add nuw nsw i128 %add45.i.1047, %shr27.i.1038
  %add72.i.1059 = add nuw nsw i128 %add58.i.1052, %conv56.i.1051
  %add6.i.867 = add nuw nsw i128 %add72.i.1059, %conv70.i.1058
  %sub11.i.i.881 = add nuw nsw i128 %add6.i.867, %shl50.i.i.901
  %sub23.i.i.887 = add i128 %sub11.i.i.881, %mul.i.i.894
  %add37.i.i.895 = sub i128 %sub23.i.i.887, %sub7.i.i.879
  %add52.i.i.902 = sub i128 %add37.i.i.895, %shl.i.i.874
  %mul54.i.i.903 = mul nuw nsw i128 %shr205.i.1111, 3
  %shr.i.i.746 = lshr i128 %add52.i.i.902, 64
  %add75.i.1060 = add nuw nsw i128 %shr41.i.1045, 1267650600246676145497398312976
  %add86.i.1066 = add nuw nsw i128 %add75.i.1060, %conv84.i.1065
  %add99.i.1071 = add nuw nsw i128 %add86.i.1066, %shr54.i.1050
  %add113.i.1076 = add nuw nsw i128 %add99.i.1071, %conv97.i.1070
  %add127.i.1083 = add nuw nsw i128 %add113.i.1076, %shr68.i.1057
  %add9.i.870 = add nuw nsw i128 %add127.i.1083, %conv111.i.1075
  %sub.i.i.877 = add i128 %add9.i.870, %conv125.i.1082
  %add19.i.i.885 = add i128 %sub.i.i.877, %mul54.i.i.903
  %sub41.i.i.897 = sub i128 %add19.i.i.885, %shl28.i.i.890
  %add56.i.i.904 = sub i128 %sub41.i.i.897, %add.i.i.875
  %add.i.i.744 = add i128 %add56.i.i.904, %shl13.i.i.882
  %add8.i.i.747 = add i128 %add.i.i.744, %shr.i.i.746
  %conv12.i.i.748 = and i128 %add52.i.i.902, 18446744073709551615
  %add13.i.i.749 = add nuw nsw i128 %conv12.i.i.748, 18446673704965373952
  %shr22.i.i.753 = lshr i128 %add8.i.i.747, 64
  %conv23.i.i.754 = trunc i128 %shr22.i.i.753 to i64
  %conv26.i.i.755 = and i128 %add8.i.i.747, 18446744073709551615
  %sub.i.i.756 = sub nsw i128 %conv26.i.i.755, %shr22.i.i.753
  %shl.i.i.757 = shl nuw nsw i128 %shr22.i.i.753, 32
  %add32.i.i.758 = add nsw i128 %sub.i.i.756, %shl.i.i.757
  %shr34.i.i.759 = lshr i128 %add32.i.i.758, 64
  %conv35.i.i.760 = trunc i128 %shr34.i.i.759 to i64
  %add36.i.i.761 = add i64 %conv35.i.i.760, %conv23.i.i.754
  %conv39.i.i.762 = and i128 %add32.i.i.758, 18446744073709551615
  %sub43.i.i.763 = sub nsw i128 %conv39.i.i.762, %shr34.i.i.759
  %shl45.i.i.764 = shl nuw nsw i128 %shr34.i.i.759, 32
  %add47.i.i.765 = add nsw i128 %sub43.i.i.763, %shl45.i.i.764
  %conv48.i.i.766 = zext i64 %add36.i.i.761 to i128
  %shl52.i.i.768 = shl nuw nsw i128 %conv48.i.i.766, 32
  %shr56.i.i.770 = lshr i128 %add47.i.i.765, 64
  %conv57.i.i.771 = trunc i128 %shr56.i.i.770 to i64
  %sub58.i.i.772 = sub i64 0, %conv57.i.i.771
  %conv60.i.i.773 = trunc i128 %add47.i.i.765 to i64
  %and.i.i.774 = and i64 %conv60.i.i.773, 9223372036854775807
  %neg.i.i.775 = sub nsw i64 9223372032559808512, %and.i.i.774
  %sub62177.i.i.776 = and i64 %neg.i.i.775, %conv60.i.i.773
  %and66.i.i.777 = ashr i64 %sub62177.i.i.776, 63
  %or.i.i.778 = or i64 %and66.i.i.777, %sub58.i.i.772
  %conv68.i.i.779 = zext i64 %or.i.i.778 to i128
  %add3.i.i.876 = add nuw nsw i128 %conv5.i.1026, 1267650600246676145501693280239
  %sub26.i.i.889 = sub nsw i128 %add3.i.i.876, %shr205.i.1111
  %sub30.i.i.891 = sub nsw i128 %sub26.i.i.889, %shl46.i.i.899
  %sub44.i.i.898 = sub nsw i128 %sub30.i.i.891, %add209.i.1113
  %sub48.i.i.900 = sub nsw i128 %sub44.i.i.898, %shl28.i.i.890
  %add16.i.i.750 = add i128 %sub48.i.i.900, %add.i.i.875
  %add50.i.i.767 = add i128 %add16.i.i.750, %conv48.i.i.766
  %sub70.i.i.780 = sub i128 %add50.i.i.767, %conv68.i.i.779
  %and71.i.i.781 = and i64 %or.i.i.778, 4294967295
  %conv72.i.i.782 = zext i64 %and71.i.i.781 to i128
  %and75.i.i.784 = and i64 %or.i.i.778, -4294967295
  %conv76.i.i.785 = zext i64 %and75.i.i.784 to i128
  %sub78.i.i.786 = sub nsw i128 %add47.i.i.765, %conv76.i.i.785
  %shr80.i.i.787 = lshr i128 %sub70.i.i.780, 64
  %add9.i.i.880 = add nuw nsw i128 %add3.i.864, 1298074214633706907132628377272319
  %sub15.i.i.883 = add nuw nsw i128 %add9.i.i.880, %shl32.i.i.892
  %add34.i.i.893 = add nsw i128 %sub15.i.i.883, %sub7.i.i.879
  %add19.i.i.752 = sub i128 %add34.i.i.893, %shl13.i.i.882
  %sub54.i.i.769 = sub i128 %add19.i.i.752, %shl52.i.i.768
  %sub74.i.i.783 = sub i128 %sub54.i.i.769, %conv72.i.i.782
  %add84.i.i.788 = add i128 %sub74.i.i.783, %shr80.i.i.787
  %shr90.i.i.790 = lshr i128 %add84.i.i.788, 64
  %add94.i.i.791 = add nuw nsw i128 %add13.i.i.749, %shr90.i.i.790
  %shr100.i.i.793 = lshr i128 %add94.i.i.791, 64
  %add104.i.i.794 = add nsw i128 %sub78.i.i.786, %shr100.i.i.793
  %conv.i.800 = and i128 %sub70.i.i.780, 18446744073709551615
  %mul.i.801 = mul nuw i128 %conv.i.800, %conv.i.800
  %shr.i.802 = lshr i128 %mul.i.801, 64
  %conv5.i.803 = and i128 %mul.i.801, 18446744073709551615
  %conv12.i.806 = and i128 %add84.i.i.788, 18446744073709551615
  %mul13.i.807 = mul nuw i128 %conv12.i.806, %conv.i.800
  %shr15.i.808 = lshr i128 %mul13.i.807, 64
  %conv17.i.809 = shl i128 %mul13.i.807, 1
  %factor.i.810 = and i128 %conv17.i.809, 36893488147419103230
  %add21.i.811 = add nuw nsw i128 %factor.i.810, %shr.i.802
  %conv27.i.814 = and i128 %add94.i.i.791, 18446744073709551615
  %mul28.i.815 = mul nuw i128 %conv27.i.814, %conv.i.800
  %shr30.i.816 = lshr i128 %mul28.i.815, 64
  %conv32.i.817 = and i128 %mul28.i.815, 18446744073709551615
  %add34.i.818 = add nuw nsw i128 %conv32.i.817, %shr15.i.808
  %conv42.i.822 = and i128 %add104.i.i.794, 18446744073709551615
  %mul43.i.823 = mul nuw i128 %conv42.i.822, %conv.i.800
  %shr45.i.824 = lshr i128 %mul43.i.823, 64
  %conv47.i.825 = and i128 %mul43.i.823, 18446744073709551615
  %mul56.i.828 = mul nuw i128 %conv27.i.814, %conv12.i.806
  %shr58.i.829 = lshr i128 %mul56.i.828, 64
  %conv60.i.830 = and i128 %mul56.i.828, 18446744073709551615
  %add49.i.826 = add nuw nsw i128 %conv60.i.830, %shr30.i.816
  %add62.i.831 = add nuw nsw i128 %add49.i.826, %conv47.i.825
  %mul64.i.832 = shl nuw nsw i128 %add62.i.831, 1
  %add67.i.833 = add nuw nsw i128 %shr45.i.824, %shr58.i.829
  %mul72.i.834 = mul nuw i128 %conv12.i.806, %conv12.i.806
  %shr74.i.835 = lshr i128 %mul72.i.834, 64
  %conv76.i.836 = and i128 %mul72.i.834, 18446744073709551615
  %mul86.i.839 = mul nuw i128 %conv42.i.822, %conv12.i.806
  %shr88.i.840 = lshr i128 %mul86.i.839, 64
  %conv90.i.841 = and i128 %mul86.i.839, 18446744073709551615
  %add92.i.842 = add nuw nsw i128 %add67.i.833, %conv90.i.841
  %mul94.i.843 = shl nuw nsw i128 %add92.i.842, 1
  %mul101.i.845 = mul nuw i128 %conv42.i.822, %conv27.i.814
  %shr103.i.846 = lshr i128 %mul101.i.845, 64
  %conv105.i.847 = and i128 %mul101.i.845, 18446744073709551615
  %add107.i.848 = add nuw nsw i128 %conv105.i.847, %shr88.i.840
  %mul109.i.849 = shl nuw nsw i128 %add107.i.848, 1
  %add114.i.851 = shl nuw nsw i128 %shr103.i.846, 1
  %mul119.i.852 = mul nuw i128 %conv27.i.814, %conv27.i.814
  %shr121.i.853 = lshr i128 %mul119.i.852, 64
  %conv123.i.854 = and i128 %mul119.i.852, 18446744073709551615
  %add125.i.855 = add nuw nsw i128 %mul94.i.843, %conv123.i.854
  %add128.i.856 = add nuw nsw i128 %mul109.i.849, %shr121.i.853
  %mul133.i.857 = mul nuw i128 %conv42.i.822, %conv42.i.822
  %shr135.i.858 = lshr i128 %mul133.i.857, 64
  %conv137.i.859 = and i128 %mul133.i.857, 18446744073709551615
  %add139.i.860 = add nuw nsw i128 %add114.i.851, %conv137.i.859
  %add3.i.700 = or i128 %add21.i.811, 1267650600228229401496703205376
  %shl.i.i.710 = shl nuw nsw i128 %add128.i.856, 32
  %add.i.i.711 = add nuw nsw i128 %shl.i.i.710, %add125.i.855
  %sub7.i.i.715 = sub nsw i128 %add128.i.856, %shr135.i.858
  %shl13.i.i.718 = shl nuw nsw i128 %add125.i.855, 32
  %shl28.i.i.726 = shl nuw nsw i128 %add139.i.860, 32
  %shl32.i.i.728 = shl nuw nsw i128 %add139.i.860, 33
  %shl46.i.i.735 = shl nuw nsw i128 %shr135.i.858, 32
  %shl50.i.i.737 = shl nuw nsw i128 %shr135.i.858, 33
  %tmp7558 = add nuw nsw i128 %add34.i.818, %add139.i.860
  %tmp7559 = shl nuw nsw i128 %tmp7558, 1
  %add6.i.703 = add nuw nsw i128 %conv76.i.836, 1267650600228229401427983728656
  %sub11.i.i.717 = add nuw nsw i128 %add6.i.703, %shl50.i.i.737
  %sub23.i.i.723 = sub nsw i128 %sub11.i.i.717, %sub7.i.i.715
  %add37.i.i.731 = sub nsw i128 %sub23.i.i.723, %shl.i.i.710
  %add52.i.i.738 = add i128 %add37.i.i.731, %tmp7559
  %mul54.i.i.739 = mul nuw nsw i128 %shr135.i.858, 3
  %shr.i.i.582 = lshr i128 %add52.i.i.738, 64
  %add9.i.706 = add nuw nsw i128 %shr74.i.835, 1267650600246676145497398312976
  %sub.i.i.713 = add nuw nsw i128 %add9.i.706, %mul54.i.i.739
  %add19.i.i.721 = add nuw nsw i128 %sub.i.i.713, %mul64.i.832
  %sub41.i.i.733 = sub nsw i128 %add19.i.i.721, %shl28.i.i.726
  %add56.i.i.740 = sub nsw i128 %sub41.i.i.733, %add.i.i.711
  %add.i.i.580 = add i128 %add56.i.i.740, %shl13.i.i.718
  %add8.i.i.583 = add i128 %add.i.i.580, %shr.i.i.582
  %conv12.i.i.584 = and i128 %add52.i.i.738, 18446744073709551615
  %add13.i.i.585 = add nuw nsw i128 %conv12.i.i.584, 18446673704965373952
  %shr22.i.i.589 = lshr i128 %add8.i.i.583, 64
  %conv23.i.i.590 = trunc i128 %shr22.i.i.589 to i64
  %conv26.i.i.591 = and i128 %add8.i.i.583, 18446744073709551615
  %sub.i.i.592 = sub nsw i128 %conv26.i.i.591, %shr22.i.i.589
  %shl.i.i.593 = shl nuw nsw i128 %shr22.i.i.589, 32
  %add32.i.i.594 = add nsw i128 %sub.i.i.592, %shl.i.i.593
  %shr34.i.i.595 = lshr i128 %add32.i.i.594, 64
  %conv35.i.i.596 = trunc i128 %shr34.i.i.595 to i64
  %add36.i.i.597 = add i64 %conv35.i.i.596, %conv23.i.i.590
  %conv39.i.i.598 = and i128 %add32.i.i.594, 18446744073709551615
  %sub43.i.i.599 = sub nsw i128 %conv39.i.i.598, %shr34.i.i.595
  %shl45.i.i.600 = shl nuw nsw i128 %shr34.i.i.595, 32
  %add47.i.i.601 = add nsw i128 %sub43.i.i.599, %shl45.i.i.600
  %conv48.i.i.602 = zext i64 %add36.i.i.597 to i128
  %shl52.i.i.604 = shl nuw nsw i128 %conv48.i.i.602, 32
  %shr56.i.i.606 = lshr i128 %add47.i.i.601, 64
  %conv57.i.i.607 = trunc i128 %shr56.i.i.606 to i64
  %sub58.i.i.608 = sub i64 0, %conv57.i.i.607
  %conv60.i.i.609 = trunc i128 %add47.i.i.601 to i64
  %and.i.i.610 = and i64 %conv60.i.i.609, 9223372036854775807
  %neg.i.i.611 = sub nsw i64 9223372032559808512, %and.i.i.610
  %sub62177.i.i.612 = and i64 %neg.i.i.611, %conv60.i.i.609
  %and66.i.i.613 = ashr i64 %sub62177.i.i.612, 63
  %or.i.i.614 = or i64 %and66.i.i.613, %sub58.i.i.608
  %conv68.i.i.615 = zext i64 %or.i.i.614 to i128
  %add3.i.i.712 = add nuw nsw i128 %conv5.i.803, 1267650600246676145501693280239
  %sub26.i.i.725 = sub nsw i128 %add3.i.i.712, %shr135.i.858
  %sub30.i.i.727 = sub nsw i128 %sub26.i.i.725, %shl46.i.i.735
  %sub44.i.i.734 = sub nsw i128 %sub30.i.i.727, %add139.i.860
  %sub48.i.i.736 = sub nsw i128 %sub44.i.i.734, %shl28.i.i.726
  %add16.i.i.586 = add nsw i128 %sub48.i.i.736, %add.i.i.711
  %add50.i.i.603 = add i128 %add16.i.i.586, %conv48.i.i.602
  %sub70.i.i.616 = sub i128 %add50.i.i.603, %conv68.i.i.615
  %and71.i.i.617 = and i64 %or.i.i.614, 4294967295
  %conv72.i.i.618 = zext i64 %and71.i.i.617 to i128
  %and75.i.i.620 = and i64 %or.i.i.614, -4294967295
  %conv76.i.i.621 = zext i64 %and75.i.i.620 to i128
  %sub78.i.i.622 = sub nsw i128 %add47.i.i.601, %conv76.i.i.621
  %shr80.i.i.623 = lshr i128 %sub70.i.i.616, 64
  %add9.i.i.716 = add nuw nsw i128 %add3.i.700, 1298074214633706907132628377272319
  %sub15.i.i.719 = add nuw nsw i128 %add9.i.i.716, %shl32.i.i.728
  %add34.i.i.729 = add nsw i128 %sub15.i.i.719, %sub7.i.i.715
  %add19.i.i.588 = sub nsw i128 %add34.i.i.729, %shl13.i.i.718
  %sub54.i.i.605 = sub i128 %add19.i.i.588, %shl52.i.i.604
  %sub74.i.i.619 = sub i128 %sub54.i.i.605, %conv72.i.i.618
  %add84.i.i.624 = add i128 %sub74.i.i.619, %shr80.i.i.623
  %shr90.i.i.626 = lshr i128 %add84.i.i.624, 64
  %add94.i.i.627 = add nuw nsw i128 %add13.i.i.585, %shr90.i.i.626
  %shr100.i.i.629 = lshr i128 %add94.i.i.627, 64
  %add104.i.i.630 = add nsw i128 %sub78.i.i.622, %shr100.i.i.629
  %conv.i.636 = and i128 %sub70.i.i.616, 18446744073709551615
  %mul.i.637 = mul nuw i128 %conv.i.636, %conv.i.636
  %shr.i.638 = lshr i128 %mul.i.637, 64
  %conv5.i.639 = and i128 %mul.i.637, 18446744073709551615
  %conv12.i.642 = and i128 %add84.i.i.624, 18446744073709551615
  %mul13.i.643 = mul nuw i128 %conv12.i.642, %conv.i.636
  %shr15.i.644 = lshr i128 %mul13.i.643, 64
  %conv17.i.645 = shl i128 %mul13.i.643, 1
  %factor.i.646 = and i128 %conv17.i.645, 36893488147419103230
  %add21.i.647 = add nuw nsw i128 %factor.i.646, %shr.i.638
  %conv27.i.650 = and i128 %add94.i.i.627, 18446744073709551615
  %mul28.i.651 = mul nuw i128 %conv27.i.650, %conv.i.636
  %shr30.i.652 = lshr i128 %mul28.i.651, 64
  %conv32.i.653 = and i128 %mul28.i.651, 18446744073709551615
  %add34.i.654 = add nuw nsw i128 %conv32.i.653, %shr15.i.644
  %conv42.i.658 = and i128 %add104.i.i.630, 18446744073709551615
  %mul43.i.659 = mul nuw i128 %conv42.i.658, %conv.i.636
  %shr45.i.660 = lshr i128 %mul43.i.659, 64
  %conv47.i.661 = and i128 %mul43.i.659, 18446744073709551615
  %mul56.i.664 = mul nuw i128 %conv27.i.650, %conv12.i.642
  %shr58.i.665 = lshr i128 %mul56.i.664, 64
  %conv60.i.666 = and i128 %mul56.i.664, 18446744073709551615
  %add49.i.662 = add nuw nsw i128 %conv60.i.666, %shr30.i.652
  %add62.i.667 = add nuw nsw i128 %add49.i.662, %conv47.i.661
  %mul64.i.668 = shl nuw nsw i128 %add62.i.667, 1
  %add67.i.669 = add nuw nsw i128 %shr45.i.660, %shr58.i.665
  %mul72.i.670 = mul nuw i128 %conv12.i.642, %conv12.i.642
  %shr74.i.671 = lshr i128 %mul72.i.670, 64
  %conv76.i.672 = and i128 %mul72.i.670, 18446744073709551615
  %mul86.i.675 = mul nuw i128 %conv42.i.658, %conv12.i.642
  %shr88.i.676 = lshr i128 %mul86.i.675, 64
  %conv90.i.677 = and i128 %mul86.i.675, 18446744073709551615
  %add92.i.678 = add nuw nsw i128 %add67.i.669, %conv90.i.677
  %mul94.i.679 = shl nuw nsw i128 %add92.i.678, 1
  %mul101.i.681 = mul nuw i128 %conv42.i.658, %conv27.i.650
  %shr103.i.682 = lshr i128 %mul101.i.681, 64
  %conv105.i.683 = and i128 %mul101.i.681, 18446744073709551615
  %add107.i.684 = add nuw nsw i128 %conv105.i.683, %shr88.i.676
  %mul109.i.685 = shl nuw nsw i128 %add107.i.684, 1
  %add114.i.687 = shl nuw nsw i128 %shr103.i.682, 1
  %mul119.i.688 = mul nuw i128 %conv27.i.650, %conv27.i.650
  %shr121.i.689 = lshr i128 %mul119.i.688, 64
  %conv123.i.690 = and i128 %mul119.i.688, 18446744073709551615
  %add125.i.691 = add nuw nsw i128 %mul94.i.679, %conv123.i.690
  %add128.i.692 = add nuw nsw i128 %mul109.i.685, %shr121.i.689
  %mul133.i.693 = mul nuw i128 %conv42.i.658, %conv42.i.658
  %shr135.i.694 = lshr i128 %mul133.i.693, 64
  %conv137.i.695 = and i128 %mul133.i.693, 18446744073709551615
  %add139.i.696 = add nuw nsw i128 %add114.i.687, %conv137.i.695
  %add3.i.536 = or i128 %add21.i.647, 1267650600228229401496703205376
  %shl.i.i.546 = shl nuw nsw i128 %add128.i.692, 32
  %add.i.i.547 = add nuw nsw i128 %shl.i.i.546, %add125.i.691
  %sub7.i.i.551 = sub nsw i128 %add128.i.692, %shr135.i.694
  %shl13.i.i.554 = shl nuw nsw i128 %add125.i.691, 32
  %shl28.i.i.562 = shl nuw nsw i128 %add139.i.696, 32
  %shl32.i.i.564 = shl nuw nsw i128 %add139.i.696, 33
  %shl46.i.i.571 = shl nuw nsw i128 %shr135.i.694, 32
  %shl50.i.i.573 = shl nuw nsw i128 %shr135.i.694, 33
  %tmp7560 = add nuw nsw i128 %add34.i.654, %add139.i.696
  %tmp7561 = shl nuw nsw i128 %tmp7560, 1
  %add6.i.539 = add nuw nsw i128 %conv76.i.672, 1267650600228229401427983728656
  %sub11.i.i.553 = add nuw nsw i128 %add6.i.539, %shl50.i.i.573
  %sub23.i.i.559 = sub nsw i128 %sub11.i.i.553, %sub7.i.i.551
  %add37.i.i.567 = sub nsw i128 %sub23.i.i.559, %shl.i.i.546
  %add52.i.i.574 = add i128 %add37.i.i.567, %tmp7561
  %mul54.i.i.575 = mul nuw nsw i128 %shr135.i.694, 3
  %shr.i.i.329 = lshr i128 %add52.i.i.574, 64
  %add9.i.542 = add nuw nsw i128 %shr74.i.671, 1267650600246676145497398312976
  %sub.i.i.549 = add nuw nsw i128 %add9.i.542, %mul54.i.i.575
  %add19.i.i.557 = add nuw nsw i128 %sub.i.i.549, %mul64.i.668
  %sub41.i.i.569 = sub nsw i128 %add19.i.i.557, %shl28.i.i.562
  %add56.i.i.576 = sub nsw i128 %sub41.i.i.569, %add.i.i.547
  %add.i.i.327 = add i128 %add56.i.i.576, %shl13.i.i.554
  %add8.i.i.330 = add i128 %add.i.i.327, %shr.i.i.329
  %conv12.i.i.331 = and i128 %add52.i.i.574, 18446744073709551615
  %add13.i.i.332 = add nuw nsw i128 %conv12.i.i.331, 18446673704965373952
  %shr22.i.i.336 = lshr i128 %add8.i.i.330, 64
  %conv23.i.i.337 = trunc i128 %shr22.i.i.336 to i64
  %conv26.i.i.338 = and i128 %add8.i.i.330, 18446744073709551615
  %sub.i.i.339 = sub nsw i128 %conv26.i.i.338, %shr22.i.i.336
  %shl.i.i.340 = shl nuw nsw i128 %shr22.i.i.336, 32
  %add32.i.i.341 = add nsw i128 %sub.i.i.339, %shl.i.i.340
  %shr34.i.i.342 = lshr i128 %add32.i.i.341, 64
  %conv35.i.i.343 = trunc i128 %shr34.i.i.342 to i64
  %add36.i.i.344 = add i64 %conv35.i.i.343, %conv23.i.i.337
  %conv39.i.i.345 = and i128 %add32.i.i.341, 18446744073709551615
  %sub43.i.i.346 = sub nsw i128 %conv39.i.i.345, %shr34.i.i.342
  %shl45.i.i.347 = shl nuw nsw i128 %shr34.i.i.342, 32
  %add47.i.i.348 = add nsw i128 %sub43.i.i.346, %shl45.i.i.347
  %conv48.i.i.349 = zext i64 %add36.i.i.344 to i128
  %shl52.i.i.351 = shl nuw nsw i128 %conv48.i.i.349, 32
  %shr56.i.i.353 = lshr i128 %add47.i.i.348, 64
  %conv57.i.i.354 = trunc i128 %shr56.i.i.353 to i64
  %sub58.i.i.355 = sub i64 0, %conv57.i.i.354
  %conv60.i.i.356 = trunc i128 %add47.i.i.348 to i64
  %and.i.i.357 = and i64 %conv60.i.i.356, 9223372036854775807
  %neg.i.i.358 = sub nsw i64 9223372032559808512, %and.i.i.357
  %sub62177.i.i.359 = and i64 %neg.i.i.358, %conv60.i.i.356
  %and66.i.i.360 = ashr i64 %sub62177.i.i.359, 63
  %or.i.i.361 = or i64 %and66.i.i.360, %sub58.i.i.355
  %conv68.i.i.362 = zext i64 %or.i.i.361 to i128
  %add3.i.i.548 = add nuw nsw i128 %conv5.i.639, 1267650600246676145501693280239
  %sub26.i.i.561 = sub nsw i128 %add3.i.i.548, %shr135.i.694
  %sub30.i.i.563 = sub nsw i128 %sub26.i.i.561, %shl46.i.i.571
  %sub44.i.i.570 = sub nsw i128 %sub30.i.i.563, %add139.i.696
  %sub48.i.i.572 = sub nsw i128 %sub44.i.i.570, %shl28.i.i.562
  %add16.i.i.333 = add nsw i128 %sub48.i.i.572, %add.i.i.547
  %add50.i.i.350 = add i128 %add16.i.i.333, %conv48.i.i.349
  %sub70.i.i.363 = sub i128 %add50.i.i.350, %conv68.i.i.362
  %and71.i.i.364 = and i64 %or.i.i.361, 4294967295
  %conv72.i.i.365 = zext i64 %and71.i.i.364 to i128
  %and75.i.i.367 = and i64 %or.i.i.361, -4294967295
  %conv76.i.i.368 = zext i64 %and75.i.i.367 to i128
  %sub78.i.i.369 = sub nsw i128 %add47.i.i.348, %conv76.i.i.368
  %shr80.i.i.370 = lshr i128 %sub70.i.i.363, 64
  %add9.i.i.552 = add nuw nsw i128 %add3.i.536, 1298074214633706907132628377272319
  %sub15.i.i.555 = add nuw nsw i128 %add9.i.i.552, %shl32.i.i.564
  %add34.i.i.565 = add nsw i128 %sub15.i.i.555, %sub7.i.i.551
  %add19.i.i.335 = sub nsw i128 %add34.i.i.565, %shl13.i.i.554
  %sub54.i.i.352 = sub i128 %add19.i.i.335, %shl52.i.i.351
  %sub74.i.i.366 = sub i128 %sub54.i.i.352, %conv72.i.i.365
  %add84.i.i.371 = add i128 %sub74.i.i.366, %shr80.i.i.370
  %shr90.i.i.373 = lshr i128 %add84.i.i.371, 64
  %add94.i.i.374 = add nuw nsw i128 %add13.i.i.332, %shr90.i.i.373
  %shr100.i.i.376 = lshr i128 %add94.i.i.374, 64
  %add104.i.i.377 = add nsw i128 %sub78.i.i.369, %shr100.i.i.376
  %8 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %add.i.385 = add i128 %8, 18446744069414584320
  %9 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %shr.i.387 = lshr i128 %9, 64
  %add8.i.388 = add i128 %add.i.385, %shr.i.387
  %conv12.i.389 = and i128 %9, 18446744073709551615
  %add13.i.390 = add nuw nsw i128 %conv12.i.389, 18446673704965373952
  %10 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.391 = add i128 %10, 18446744073709551615
  %11 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.393 = add i128 %11, 1298074214633706907132628377272319
  %shr22.i.394 = lshr i128 %add8.i.388, 64
  %conv23.i.395 = trunc i128 %shr22.i.394 to i64
  %conv26.i.396 = and i128 %add8.i.388, 18446744073709551615
  %sub.i.397 = sub nsw i128 %conv26.i.396, %shr22.i.394
  %shl.i.398 = shl nuw nsw i128 %shr22.i.394, 32
  %add32.i.399 = add nsw i128 %sub.i.397, %shl.i.398
  %shr34.i.400 = lshr i128 %add32.i.399, 64
  %conv35.i.401 = trunc i128 %shr34.i.400 to i64
  %add36.i.402 = add i64 %conv35.i.401, %conv23.i.395
  %conv39.i.403 = and i128 %add32.i.399, 18446744073709551615
  %sub43.i.404 = sub nsw i128 %conv39.i.403, %shr34.i.400
  %shl45.i.405 = shl nuw nsw i128 %shr34.i.400, 32
  %add47.i.406 = add nsw i128 %sub43.i.404, %shl45.i.405
  %conv48.i.407 = zext i64 %add36.i.402 to i128
  %add50.i.408 = add i128 %add16.i.391, %conv48.i.407
  %shl52.i.409 = shl nuw nsw i128 %conv48.i.407, 32
  %sub54.i.410 = sub i128 %add19.i.393, %shl52.i.409
  %shr56.i.411 = lshr i128 %add47.i.406, 64
  %conv57.i.412 = trunc i128 %shr56.i.411 to i64
  %sub58.i.413 = sub i64 0, %conv57.i.412
  %conv60.i.414 = trunc i128 %add47.i.406 to i64
  %and.i.415 = and i64 %conv60.i.414, 9223372036854775807
  %neg.i.416 = sub nsw i64 9223372032559808512, %and.i.415
  %sub62177.i.417 = and i64 %neg.i.416, %conv60.i.414
  %and66.i.418 = ashr i64 %sub62177.i.417, 63
  %or.i.419 = or i64 %and66.i.418, %sub58.i.413
  %conv68.i.420 = zext i64 %or.i.419 to i128
  %sub70.i.421 = sub i128 %add50.i.408, %conv68.i.420
  %and71.i.422 = and i64 %or.i.419, 4294967295
  %conv72.i.423 = zext i64 %and71.i.422 to i128
  %sub74.i.424 = sub i128 %sub54.i.410, %conv72.i.423
  %and75.i.425 = and i64 %or.i.419, -4294967295
  %conv76.i.426 = zext i64 %and75.i.425 to i128
  %sub78.i.427 = sub nsw i128 %add47.i.406, %conv76.i.426
  %shr80.i.428 = lshr i128 %sub70.i.421, 64
  %add84.i.429 = add i128 %sub74.i.424, %shr80.i.428
  %shr90.i.431 = lshr i128 %add84.i.429, 64
  %add94.i.432 = add nuw nsw i128 %add13.i.390, %shr90.i.431
  %shr100.i.434 = lshr i128 %add94.i.432, 64
  %add104.i.435 = add nsw i128 %sub78.i.427, %shr100.i.434
  %conv.i.441 = and i128 %sub70.i.i.363, 18446744073709551615
  %conv2.i.442 = and i128 %sub70.i.421, 18446744073709551615
  %mul.i.443 = mul nuw i128 %conv2.i.442, %conv.i.441
  %shr.i.444 = lshr i128 %mul.i.443, 64
  %conv5.i.445 = and i128 %mul.i.443, 18446744073709551615
  %conv12.i.448 = and i128 %add84.i.429, 18446744073709551615
  %mul13.i.449 = mul nuw i128 %conv12.i.448, %conv.i.441
  %shr15.i.450 = lshr i128 %mul13.i.449, 64
  %conv17.i.451 = and i128 %mul13.i.449, 18446744073709551615
  %conv22.i.455 = and i128 %add84.i.i.371, 18446744073709551615
  %mul25.i.456 = mul nuw i128 %conv2.i.442, %conv22.i.455
  %shr27.i.457 = lshr i128 %mul25.i.456, 64
  %conv29.i.458 = and i128 %mul25.i.456, 18446744073709551615
  %add.i.452 = add nuw nsw i128 %conv29.i.458, %shr.i.444
  %add31.i.459 = add nuw nsw i128 %add.i.452, %conv17.i.451
  %conv38.i.462 = and i128 %add94.i.432, 18446744073709551615
  %mul39.i.463 = mul nuw i128 %conv38.i.462, %conv.i.441
  %shr41.i.464 = lshr i128 %mul39.i.463, 64
  %conv43.i.465 = and i128 %mul39.i.463, 18446744073709551615
  %mul52.i.468 = mul nuw i128 %conv12.i.448, %conv22.i.455
  %shr54.i.469 = lshr i128 %mul52.i.468, 64
  %conv56.i.470 = and i128 %mul52.i.468, 18446744073709551615
  %conv63.i.474 = and i128 %add94.i.i.374, 18446744073709551615
  %mul66.i.475 = mul nuw i128 %conv2.i.442, %conv63.i.474
  %shr68.i.476 = lshr i128 %mul66.i.475, 64
  %conv70.i.477 = and i128 %mul66.i.475, 18446744073709551615
  %conv79.i.481 = and i128 %add104.i.435, 18446744073709551615
  %mul80.i.482 = mul nuw i128 %conv79.i.481, %conv.i.441
  %shr82.i.483 = lshr i128 %mul80.i.482, 64
  %conv84.i.484 = and i128 %mul80.i.482, 18446744073709551615
  %mul93.i.487 = mul nuw i128 %conv38.i.462, %conv22.i.455
  %shr95.i.488 = lshr i128 %mul93.i.487, 64
  %conv97.i.489 = and i128 %mul93.i.487, 18446744073709551615
  %mul107.i.492 = mul nuw i128 %conv12.i.448, %conv63.i.474
  %shr109.i.493 = lshr i128 %mul107.i.492, 64
  %conv111.i.494 = and i128 %mul107.i.492, 18446744073709551615
  %conv118.i.498 = and i128 %add104.i.i.377, 18446744073709551615
  %mul121.i.499 = mul nuw i128 %conv2.i.442, %conv118.i.498
  %shr123.i.500 = lshr i128 %mul121.i.499, 64
  %conv125.i.501 = and i128 %mul121.i.499, 18446744073709551615
  %mul135.i.504 = mul nuw i128 %conv79.i.481, %conv22.i.455
  %shr137.i.505 = lshr i128 %mul135.i.504, 64
  %conv139.i.506 = and i128 %mul135.i.504, 18446744073709551615
  %mul148.i.509 = mul nuw i128 %conv38.i.462, %conv63.i.474
  %shr150.i.510 = lshr i128 %mul148.i.509, 64
  %conv152.i.511 = and i128 %mul148.i.509, 18446744073709551615
  %mul162.i.514 = mul nuw i128 %conv12.i.448, %conv118.i.498
  %shr164.i.515 = lshr i128 %mul162.i.514, 64
  %conv166.i.516 = and i128 %mul162.i.514, 18446744073709551615
  %add102.i.491 = add nuw nsw i128 %shr109.i.493, %shr123.i.500
  %add116.i.496 = add nuw nsw i128 %add102.i.491, %conv166.i.516
  %add130.i.503 = add nuw nsw i128 %add116.i.496, %shr95.i.488
  %add141.i.507 = add nuw nsw i128 %add130.i.503, %conv152.i.511
  %add154.i.512 = add nuw nsw i128 %add141.i.507, %shr82.i.483
  %add168.i.517 = add nuw nsw i128 %add154.i.512, %conv139.i.506
  %mul176.i.519 = mul nuw i128 %conv79.i.481, %conv63.i.474
  %shr178.i.520 = lshr i128 %mul176.i.519, 64
  %conv180.i.521 = and i128 %mul176.i.519, 18446744073709551615
  %mul189.i.524 = mul nuw i128 %conv38.i.462, %conv118.i.498
  %shr191.i.525 = lshr i128 %mul189.i.524, 64
  %conv193.i.526 = and i128 %mul189.i.524, 18446744073709551615
  %add157.i.513 = add nuw nsw i128 %shr150.i.510, %shr164.i.515
  %add171.i.518 = add nuw nsw i128 %add157.i.513, %conv193.i.526
  %add182.i.522 = add nuw nsw i128 %add171.i.518, %shr137.i.505
  %add195.i.527 = add nuw nsw i128 %add182.i.522, %conv180.i.521
  %add198.i.528 = add nuw nsw i128 %shr178.i.520, %shr191.i.525
  %mul203.i.529 = mul nuw i128 %conv79.i.481, %conv118.i.498
  %shr205.i.530 = lshr i128 %mul203.i.529, 64
  %conv207.i.531 = and i128 %mul203.i.529, 18446744073709551615
  %add209.i.532 = add nuw nsw i128 %add198.i.528, %conv207.i.531
  %add3.i.283 = or i128 %add31.i.459, 1267650600228229401496703205376
  %shl.i.i.293 = shl nuw nsw i128 %add195.i.527, 32
  %add.i.i.294 = add i128 %add168.i.517, %shl.i.i.293
  %sub7.i.i.298 = sub nsw i128 %add195.i.527, %shr205.i.530
  %shl13.i.i.301 = shl i128 %add168.i.517, 32
  %shl28.i.i.309 = shl nuw nsw i128 %add209.i.532, 32
  %shl32.i.i.311 = shl nuw nsw i128 %add209.i.532, 33
  %mul.i.i.313 = shl nuw nsw i128 %add209.i.532, 1
  %shl46.i.i.318 = shl nuw nsw i128 %shr205.i.530, 32
  %shl50.i.i.320 = shl nuw nsw i128 %shr205.i.530, 33
  %add34.i.460 = add nuw nsw i128 %shr27.i.457, 1267650600228229401427983728656
  %add45.i.466 = add nuw nsw i128 %add34.i.460, %conv70.i.477
  %add58.i.471 = add nuw nsw i128 %add45.i.466, %shr15.i.450
  %add72.i.478 = add nuw nsw i128 %add58.i.471, %conv56.i.470
  %add6.i.286 = add nuw nsw i128 %add72.i.478, %conv43.i.465
  %sub11.i.i.300 = add nuw nsw i128 %add6.i.286, %shl50.i.i.320
  %sub23.i.i.306 = add i128 %sub11.i.i.300, %mul.i.i.313
  %add37.i.i.314 = sub i128 %sub23.i.i.306, %sub7.i.i.298
  %add52.i.i.321 = sub i128 %add37.i.i.314, %shl.i.i.293
  %mul54.i.i.322 = mul nuw nsw i128 %shr205.i.530, 3
  %shr.i.i.209 = lshr i128 %add52.i.i.321, 64
  %add75.i.479 = add nuw nsw i128 %shr68.i.476, 1267650600246676145497398312976
  %add86.i.485 = add nuw nsw i128 %add75.i.479, %conv125.i.501
  %add99.i.490 = add nuw nsw i128 %add86.i.485, %shr54.i.469
  %add113.i.495 = add nuw nsw i128 %add99.i.490, %conv111.i.494
  %add127.i.502 = add nuw nsw i128 %add113.i.495, %shr41.i.464
  %add9.i.289 = add nuw nsw i128 %add127.i.502, %conv97.i.489
  %sub.i.i.296 = add i128 %add9.i.289, %conv84.i.484
  %add19.i.i.304 = add i128 %sub.i.i.296, %mul54.i.i.322
  %sub41.i.i.316 = sub i128 %add19.i.i.304, %shl28.i.i.309
  %add56.i.i.323 = sub i128 %sub41.i.i.316, %add.i.i.294
  %add.i.i.207 = add i128 %add56.i.i.323, %shl13.i.i.301
  %add8.i.i.210 = add i128 %add.i.i.207, %shr.i.i.209
  %conv12.i.i.211 = and i128 %add52.i.i.321, 18446744073709551615
  %add13.i.i.212 = add nuw nsw i128 %conv12.i.i.211, 18446673704965373952
  %shr22.i.i.216 = lshr i128 %add8.i.i.210, 64
  %conv23.i.i.217 = trunc i128 %shr22.i.i.216 to i64
  %conv26.i.i.218 = and i128 %add8.i.i.210, 18446744073709551615
  %sub.i.i.219 = sub nsw i128 %conv26.i.i.218, %shr22.i.i.216
  %shl.i.i.220 = shl nuw nsw i128 %shr22.i.i.216, 32
  %add32.i.i.221 = add nsw i128 %sub.i.i.219, %shl.i.i.220
  %shr34.i.i.222 = lshr i128 %add32.i.i.221, 64
  %conv35.i.i.223 = trunc i128 %shr34.i.i.222 to i64
  %add36.i.i.224 = add i64 %conv35.i.i.223, %conv23.i.i.217
  %conv39.i.i.225 = and i128 %add32.i.i.221, 18446744073709551615
  %sub43.i.i.226 = sub nsw i128 %conv39.i.i.225, %shr34.i.i.222
  %shl45.i.i.227 = shl nuw nsw i128 %shr34.i.i.222, 32
  %add47.i.i.228 = add nsw i128 %sub43.i.i.226, %shl45.i.i.227
  %conv48.i.i.229 = zext i64 %add36.i.i.224 to i128
  %shl52.i.i.231 = shl nuw nsw i128 %conv48.i.i.229, 32
  %shr56.i.i.233 = lshr i128 %add47.i.i.228, 64
  %conv57.i.i.234 = trunc i128 %shr56.i.i.233 to i64
  %sub58.i.i.235 = sub i64 0, %conv57.i.i.234
  %conv60.i.i.236 = trunc i128 %add47.i.i.228 to i64
  %and.i.i.237 = and i64 %conv60.i.i.236, 9223372036854775807
  %neg.i.i.238 = sub nsw i64 9223372032559808512, %and.i.i.237
  %sub62177.i.i.239 = and i64 %neg.i.i.238, %conv60.i.i.236
  %and66.i.i.240 = ashr i64 %sub62177.i.i.239, 63
  %or.i.i.241 = or i64 %and66.i.i.240, %sub58.i.i.235
  %conv68.i.i.242 = zext i64 %or.i.i.241 to i128
  %add3.i.i.295 = add nuw nsw i128 %conv5.i.445, 1267650600246676145501693280239
  %sub26.i.i.308 = sub nsw i128 %add3.i.i.295, %shr205.i.530
  %sub30.i.i.310 = sub nsw i128 %sub26.i.i.308, %shl46.i.i.318
  %sub44.i.i.317 = sub nsw i128 %sub30.i.i.310, %add209.i.532
  %sub48.i.i.319 = sub nsw i128 %sub44.i.i.317, %shl28.i.i.309
  %add16.i.i.213 = add i128 %sub48.i.i.319, %add.i.i.294
  %add50.i.i.230 = add i128 %add16.i.i.213, %conv48.i.i.229
  %sub70.i.i.243 = sub i128 %add50.i.i.230, %conv68.i.i.242
  %and71.i.i.244 = and i64 %or.i.i.241, 4294967295
  %conv72.i.i.245 = zext i64 %and71.i.i.244 to i128
  %and75.i.i.247 = and i64 %or.i.i.241, -4294967295
  %conv76.i.i.248 = zext i64 %and75.i.i.247 to i128
  %sub78.i.i.249 = sub nsw i128 %add47.i.i.228, %conv76.i.i.248
  %shr80.i.i.250 = lshr i128 %sub70.i.i.243, 64
  %add9.i.i.299 = add nuw nsw i128 %add3.i.283, 1298074214633706907132628377272319
  %sub15.i.i.302 = add nuw nsw i128 %add9.i.i.299, %shl32.i.i.311
  %add34.i.i.312 = add nsw i128 %sub15.i.i.302, %sub7.i.i.298
  %add19.i.i.215 = sub i128 %add34.i.i.312, %shl13.i.i.301
  %sub54.i.i.232 = sub i128 %add19.i.i.215, %shl52.i.i.231
  %sub74.i.i.246 = sub i128 %sub54.i.i.232, %conv72.i.i.245
  %add84.i.i.251 = add i128 %sub74.i.i.246, %shr80.i.i.250
  %shr90.i.i.253 = lshr i128 %add84.i.i.251, 64
  %add94.i.i.254 = add nuw nsw i128 %add13.i.i.212, %shr90.i.i.253
  %shr100.i.i.256 = lshr i128 %add94.i.i.254, 64
  %add104.i.i.257 = add nsw i128 %sub78.i.i.249, %shr100.i.i.256
  %add.i.263 = add i128 %add56.i.i.2989.lcssa, 18446744069414584320
  %shr.i.264 = lshr i128 %add52.i.i.2987.lcssa, 64
  %add8.i = add i128 %add.i.263, %shr.i.264
  %conv12.i.265 = and i128 %add52.i.i.2987.lcssa, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i.265, 18446673704965373952
  %add16.i = add i128 %sub48.i.i.2985.lcssa, 18446744073709551615
  %add19.i = add i128 %add34.i.i.2978.lcssa, 1298074214633706907132628377272319
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
  %conv60.i.266 = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i.266, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i.266
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i.267 = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i.267
  %shr80.i = lshr i128 %sub70.i, 64
  %add84.i = add i128 %sub74.i, %shr80.i
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i.268 = and i128 %sub70.i.i.243, 18446744073709551615
  %conv2.i = and i128 %sub70.i, 18446744073709551615
  %mul.i.269 = mul nuw i128 %conv.i.268, %conv2.i
  %shr.i.270 = lshr i128 %mul.i.269, 64
  %conv5.i.271 = and i128 %mul.i.269, 18446744073709551615
  %conv12.i.274 = and i128 %add84.i, 18446744073709551615
  %mul13.i.275 = mul nuw i128 %conv.i.268, %conv12.i.274
  %shr15.i.276 = lshr i128 %mul13.i.275, 64
  %conv17.i.277 = and i128 %mul13.i.275, 18446744073709551615
  %add.i.278 = add nuw nsw i128 %conv17.i.277, %shr.i.270
  %conv22.i = and i128 %add84.i.i.251, 18446744073709551615
  %mul25.i = mul nuw i128 %conv22.i, %conv2.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add31.i = add nuw nsw i128 %add.i.278, %conv29.i
  %conv38.i = and i128 %add94.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv.i.268, %conv38.i
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv22.i, %conv12.i.274
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %conv63.i = and i128 %add94.i.i.254, 18446744073709551615
  %mul66.i = mul nuw i128 %conv63.i, %conv2.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %conv79.i = and i128 %add104.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv.i.268, %conv79.i
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv22.i, %conv38.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr95.i, %shr82.i
  %mul107.i = mul nuw i128 %conv63.i, %conv12.i.274
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %conv118.i = and i128 %add104.i.i.257, 18446744073709551615
  %mul121.i = mul nuw i128 %conv118.i, %conv2.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %mul135.i = mul nuw i128 %conv22.i, %conv79.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv63.i, %conv38.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr137.i
  %mul162.i = mul nuw i128 %conv118.i, %conv12.i.274
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add116.i = add nuw nsw i128 %add102.i, %conv139.i
  %add130.i = add nuw nsw i128 %add116.i, %shr109.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr123.i
  %add168.i = add nuw nsw i128 %add154.i, %conv166.i
  %mul176.i = mul nuw i128 %conv63.i, %conv79.i
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv118.i, %conv38.i
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add171.i = add nuw nsw i128 %add157.i, %conv180.i
  %add182.i = add nuw nsw i128 %add171.i, %shr164.i
  %add195.i = add nuw nsw i128 %add182.i, %conv193.i
  %add198.i = add nuw nsw i128 %shr191.i, %shr178.i
  %mul203.i = mul nuw i128 %conv118.i, %conv79.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %add.i = add nuw nsw i128 %conv5.i.271, 1267650600228229401427983728624
  %add3.i = or i128 %add31.i, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds i128, i128* %out, i64 1
  %add34.i.279 = add nuw nsw i128 %shr15.i.276, 1267650600228229401427983728656
  %add45.i = add nuw nsw i128 %add34.i.279, %conv43.i
  %add58.i = add nuw nsw i128 %add45.i, %shr27.i
  %add72.i = add nuw nsw i128 %add58.i, %conv56.i
  %add6.i = add nuw nsw i128 %add72.i, %conv70.i
  %arrayidx7.i = getelementptr inbounds i128, i128* %out, i64 2
  %add61.i = add nuw nsw i128 %shr41.i, 1267650600228229401427983728656
  %add75.i = add nuw nsw i128 %add61.i, %conv84.i
  %add86.i = add nuw nsw i128 %add75.i, %shr54.i
  %add99.i = add nuw nsw i128 %add86.i, %conv97.i
  %add113.i = add nuw nsw i128 %add99.i, %shr68.i
  %add127.i = add nuw nsw i128 %add113.i, %conv111.i
  %add9.i = add i128 %add127.i, %conv125.i
  %arrayidx10.i = getelementptr inbounds i128, i128* %out, i64 3
  %shl.i.i.200 = shl nuw nsw i128 %add195.i, 32
  %add.i.i.201 = add i128 %shl.i.i.200, %add168.i
  %add3.i.i = add i128 %add.i.i.201, %add.i
  %sub.i.i.202 = sub i128 %add9.i, %add.i.i.201
  %sub7.i.i = sub nsw i128 %add195.i, %shr205.i
  %add9.i.i = add nsw i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub nsw i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %add168.i, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i.204 = add i128 %sub.i.i.202, %shl13.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i.200
  %sub26.i.i = sub i128 %add3.i.i, %add209.i
  %shl28.i.i = shl nuw nsw i128 %add209.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nuw nsw i128 %add209.i, 33
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl nuw nsw i128 %add209.i, 1
  %add37.i.i = add i128 %sub23.i.i, %mul.i.i
  %sub41.i.i = sub i128 %add19.i.i.204, %shl28.i.i
  %12 = mul nsw i128 %shr205.i, -4294967297
  %sub48.i.i = add i128 %12, %sub30.i.i
  store i128 %sub48.i.i, i128* %out, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %shr205.i, 33
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %shr205.i, 3
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
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
  %arrayidx.i = getelementptr inbounds i128, i128* %z1, i64 3
  %0 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %0, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %z1, i64 2
  %1 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %1, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %1, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %2 = load i128, i128* %z1, align 16, !tbaa !2
  %add16.i = add i128 %2, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %z1, i64 1
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
  %add104.i = add nsw i128 %shr100.i, %sub78.i
  %conv106.i = trunc i128 %add94.i to i64
  %conv119.i = trunc i128 %add104.i to i64
  %or.i.13554144 = or i128 %add84.i, %sub70.i
  %or3.i4145 = or i128 %or.i.13554144, %add94.i
  %or5.i4146 = or i128 %or3.i4145, %add104.i
  %or5.i = trunc i128 %or5.i4146 to i64
  %dec.i = add i64 %or5.i, -1
  %shl.i.1358 = shl i64 %dec.i, 32
  %and.i.1359 = and i64 %shl.i.1358, %dec.i
  %shl6.i = shl i64 %and.i.1359, 16
  %and7.i = and i64 %shl6.i, %and.i.1359
  %shl8.i = shl i64 %and7.i, 8
  %and9.i = and i64 %shl8.i, %and7.i
  %shl10.i = shl i64 %and9.i, 4
  %and11.i = and i64 %shl10.i, %and9.i
  %shl12.i = shl i64 %and11.i, 2
  %and13.i = and i64 %shl12.i, %and11.i
  %shl14.i = shl i64 %and13.i, 1
  %and15.i = and i64 %shl14.i, %and13.i
  %xor.i.1360 = xor i64 %conv86.i, -1
  %xor18.i = xor i64 %conv96.i, 4294967295
  %or19.i = or i64 %xor18.i, %xor.i.1360
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
  %4 = load i64, i64* %z2, align 8, !tbaa !6
  %arrayidx1.i.3392 = getelementptr inbounds i64, i64* %z2, i64 1
  %5 = load i64, i64* %arrayidx1.i.3392, align 8, !tbaa !6
  %or.i.3393 = or i64 %5, %4
  %arrayidx2.i.3394 = getelementptr inbounds i64, i64* %z2, i64 2
  %6 = load i64, i64* %arrayidx2.i.3394, align 8, !tbaa !6
  %or3.i.3395 = or i64 %or.i.3393, %6
  %arrayidx4.i.3396 = getelementptr inbounds i64, i64* %z2, i64 3
  %7 = load i64, i64* %arrayidx4.i.3396, align 8, !tbaa !6
  %or5.i.3397 = or i64 %or3.i.3395, %7
  %dec.i.3398 = add i64 %or5.i.3397, -1
  %shl.i.3399 = shl i64 %dec.i.3398, 32
  %and.i.3400 = and i64 %shl.i.3399, %dec.i.3398
  %shl6.i.3401 = shl i64 %and.i.3400, 16
  %and7.i.3402 = and i64 %shl6.i.3401, %and.i.3400
  %shl8.i.3403 = shl i64 %and7.i.3402, 8
  %and9.i.3404 = and i64 %shl8.i.3403, %and7.i.3402
  %shl10.i.3405 = shl i64 %and9.i.3404, 4
  %and11.i.3406 = and i64 %shl10.i.3405, %and9.i.3404
  %shl12.i.3407 = shl i64 %and11.i.3406, 2
  %and13.i.3408 = and i64 %shl12.i.3407, %and11.i.3406
  %shl14.i.3409 = shl i64 %and13.i.3408, 1
  %and15.i.3410 = and i64 %shl14.i.3409, %and13.i.3408
  %xor.i.3411 = xor i64 %4, -1
  %xor18.i.3412 = xor i64 %5, 4294967295
  %or19.i.3413 = or i64 %xor18.i.3412, %xor.i.3411
  %or22.i.3414 = or i64 %or19.i.3413, %6
  %xor24.i.3415 = xor i64 %7, -4294967295
  %or25.i.3416 = or i64 %or22.i.3414, %xor24.i.3415
  %dec26.i.3417 = add i64 %or25.i.3416, -1
  %shl27.i.3418 = shl i64 %dec26.i.3417, 32
  %and28.i.3419 = and i64 %shl27.i.3418, %dec26.i.3417
  %shl29.i.3420 = shl i64 %and28.i.3419, 16
  %and30.i.3421 = and i64 %shl29.i.3420, %and28.i.3419
  %shl31.i.3422 = shl i64 %and30.i.3421, 8
  %and32.i.3423 = and i64 %shl31.i.3422, %and30.i.3421
  %shl33.i.3424 = shl i64 %and32.i.3423, 4
  %and34.i.3425 = and i64 %shl33.i.3424, %and32.i.3423
  %shl35.i.3426 = shl i64 %and34.i.3425, 2
  %and36.i.3427 = and i64 %shl35.i.3426, %and34.i.3425
  %shl37.i.3428 = shl i64 %and36.i.3427, 1
  %and38.i.3429 = and i64 %shl37.i.3428, %and36.i.3427
  %sub86.i.3430 = or i64 %and38.i.3429, %and15.i.3410
  %or41.i.3431 = ashr i64 %sub86.i.3430, 63
  %coerce14.sroa.2.0.insert.ext = zext i64 %or41.i.3431 to i128
  %coerce14.sroa.2.0.insert.shift = shl nuw i128 %coerce14.sroa.2.0.insert.ext, 64
  %coerce14.sroa.0.0.insert.insert = or i128 %coerce14.sroa.2.0.insert.shift, %coerce14.sroa.2.0.insert.ext
  %conv.i.3330 = and i128 %sub70.i, 18446744073709551615
  %mul.i.3331 = mul nuw i128 %conv.i.3330, %conv.i.3330
  %shr.i.3332 = lshr i128 %mul.i.3331, 64
  %conv5.i.3333 = and i128 %mul.i.3331, 18446744073709551615
  %conv12.i.3336 = and i128 %add84.i, 18446744073709551615
  %mul13.i.3337 = mul nuw i128 %conv12.i.3336, %conv.i.3330
  %shr15.i.3338 = lshr i128 %mul13.i.3337, 64
  %conv17.i.3339 = shl i128 %mul13.i.3337, 1
  %factor.i.3340 = and i128 %conv17.i.3339, 36893488147419103230
  %add21.i.3341 = add nuw nsw i128 %factor.i.3340, %shr.i.3332
  %conv27.i.3344 = and i128 %add94.i, 18446744073709551615
  %mul28.i.3345 = mul nuw i128 %conv27.i.3344, %conv.i.3330
  %shr30.i.3346 = lshr i128 %mul28.i.3345, 64
  %conv32.i.3347 = and i128 %mul28.i.3345, 18446744073709551615
  %add34.i.3348 = add nuw nsw i128 %conv32.i.3347, %shr15.i.3338
  %conv42.i.3352 = and i128 %add104.i, 18446744073709551615
  %mul43.i.3353 = mul nuw i128 %conv42.i.3352, %conv.i.3330
  %shr45.i.3354 = lshr i128 %mul43.i.3353, 64
  %conv47.i.3355 = and i128 %mul43.i.3353, 18446744073709551615
  %mul56.i.3358 = mul nuw i128 %conv27.i.3344, %conv12.i.3336
  %shr58.i.3359 = lshr i128 %mul56.i.3358, 64
  %conv60.i.3360 = and i128 %mul56.i.3358, 18446744073709551615
  %add49.i.3356 = add nuw nsw i128 %conv60.i.3360, %shr30.i.3346
  %add62.i.3361 = add nuw nsw i128 %add49.i.3356, %conv47.i.3355
  %mul64.i.3362 = shl nuw nsw i128 %add62.i.3361, 1
  %add67.i.3363 = add nuw nsw i128 %shr45.i.3354, %shr58.i.3359
  %mul72.i.3364 = mul nuw i128 %conv12.i.3336, %conv12.i.3336
  %shr74.i.3365 = lshr i128 %mul72.i.3364, 64
  %conv76.i.3366 = and i128 %mul72.i.3364, 18446744073709551615
  %mul86.i.3369 = mul nuw i128 %conv42.i.3352, %conv12.i.3336
  %shr88.i.3370 = lshr i128 %mul86.i.3369, 64
  %conv90.i.3371 = and i128 %mul86.i.3369, 18446744073709551615
  %add92.i.3372 = add nuw nsw i128 %add67.i.3363, %conv90.i.3371
  %mul94.i.3373 = shl nuw nsw i128 %add92.i.3372, 1
  %mul101.i.3375 = mul nuw i128 %conv42.i.3352, %conv27.i.3344
  %shr103.i.3376 = lshr i128 %mul101.i.3375, 64
  %conv105.i.3377 = and i128 %mul101.i.3375, 18446744073709551615
  %add107.i.3378 = add nuw nsw i128 %conv105.i.3377, %shr88.i.3370
  %mul109.i.3379 = shl nuw nsw i128 %add107.i.3378, 1
  %add114.i.3381 = shl nuw nsw i128 %shr103.i.3376, 1
  %mul119.i.3382 = mul nuw i128 %conv27.i.3344, %conv27.i.3344
  %shr121.i.3383 = lshr i128 %mul119.i.3382, 64
  %conv123.i.3384 = and i128 %mul119.i.3382, 18446744073709551615
  %add125.i.3385 = add nuw nsw i128 %mul94.i.3373, %conv123.i.3384
  %add128.i.3386 = add nuw nsw i128 %mul109.i.3379, %shr121.i.3383
  %mul133.i.3387 = mul nuw i128 %conv42.i.3352, %conv42.i.3352
  %shr135.i.3388 = lshr i128 %mul133.i.3387, 64
  %conv137.i.3389 = and i128 %mul133.i.3387, 18446744073709551615
  %add139.i.3390 = add nuw nsw i128 %add114.i.3381, %conv137.i.3389
  %add.i.3287 = add nuw nsw i128 %conv5.i.3333, 1267650600228229401427983728624
  %add3.i.3289 = or i128 %add21.i.3341, 1267650600228229401496703205376
  %shl.i.i.3299 = shl nuw nsw i128 %add128.i.3386, 32
  %add.i.i.3300 = add nuw nsw i128 %shl.i.i.3299, %add125.i.3385
  %sub7.i.i.3304 = sub nsw i128 %add128.i.3386, %shr135.i.3388
  %shl13.i.i.3307 = shl nuw nsw i128 %add125.i.3385, 32
  %shl28.i.i.3315 = shl nuw nsw i128 %add139.i.3390, 32
  %shl32.i.i.3317 = shl nuw nsw i128 %add139.i.3390, 33
  %add9.i.i.3305 = add nuw nsw i128 %shl32.i.i.3317, %add3.i.3289
  %sub15.i.i.3308 = add nsw i128 %add9.i.i.3305, %sub7.i.i.3304
  %add34.i.i.3318 = sub nsw i128 %sub15.i.i.3308, %shl13.i.i.3307
  %shl46.i.i.3324 = shl nuw nsw i128 %shr135.i.3388, 32
  %add3.i.i.3301 = sub nsw i128 %add.i.3287, %shr135.i.3388
  %sub26.i.i.3314 = sub nsw i128 %add3.i.i.3301, %shl46.i.i.3324
  %sub30.i.i.3316 = sub nsw i128 %sub26.i.i.3314, %add139.i.3390
  %sub44.i.i.3323 = sub nsw i128 %sub30.i.i.3316, %shl28.i.i.3315
  %sub48.i.i.3325 = add nsw i128 %sub44.i.i.3323, %add.i.i.3300
  %shl50.i.i.3326 = shl nuw nsw i128 %shr135.i.3388, 33
  %tmp = add nuw nsw i128 %add34.i.3348, %add139.i.3390
  %tmp4154 = shl nuw nsw i128 %tmp, 1
  %add6.i.3292 = add nuw nsw i128 %conv76.i.3366, 1267650600228229401427983728656
  %sub11.i.i.3306 = add nuw nsw i128 %add6.i.3292, %shl50.i.i.3326
  %sub23.i.i.3312 = sub nsw i128 %sub11.i.i.3306, %sub7.i.i.3304
  %add37.i.i.3320 = sub nsw i128 %sub23.i.i.3312, %shl.i.i.3299
  %add52.i.i.3327 = add i128 %add37.i.i.3320, %tmp4154
  %mul54.i.i.3328 = mul nuw nsw i128 %shr135.i.3388, 3
  %add81.i.3368 = add nuw nsw i128 %shr74.i.3365, 1267650600228229401427983728656
  %add9.i.3295 = add nuw nsw i128 %add81.i.3368, %mul54.i.i.3328
  %sub.i.i.3302 = add nuw nsw i128 %add9.i.3295, %mul64.i.3362
  %add19.i.i.3310 = sub nsw i128 %sub.i.i.3302, %shl28.i.i.3315
  %sub41.i.i.3322 = sub nsw i128 %add19.i.i.3310, %add.i.i.3300
  %add56.i.i.3329 = add i128 %sub41.i.i.3322, %shl13.i.i.3307
  %add.i.3231 = add i128 %add56.i.i.3329, 18446744069414584320
  %shr.i.3233 = lshr i128 %add52.i.i.3327, 64
  %add8.i.3234 = add i128 %add.i.3231, %shr.i.3233
  %conv12.i.3235 = and i128 %add52.i.i.3327, 18446744073709551615
  %add13.i.3236 = add nuw nsw i128 %conv12.i.3235, 18446673704965373952
  %add16.i.3237 = add i128 %sub48.i.i.3325, 18446744073709551615
  %add19.i.3239 = add i128 %add34.i.i.3318, 1298074214633706907132628377272319
  %shr22.i.3240 = lshr i128 %add8.i.3234, 64
  %conv23.i.3241 = trunc i128 %shr22.i.3240 to i64
  %conv26.i.3242 = and i128 %add8.i.3234, 18446744073709551615
  %sub.i.3243 = sub nsw i128 %conv26.i.3242, %shr22.i.3240
  %shl.i.3244 = shl nuw nsw i128 %shr22.i.3240, 32
  %add32.i.3245 = add nsw i128 %sub.i.3243, %shl.i.3244
  %shr34.i.3246 = lshr i128 %add32.i.3245, 64
  %conv35.i.3247 = trunc i128 %shr34.i.3246 to i64
  %add36.i.3248 = add i64 %conv35.i.3247, %conv23.i.3241
  %conv39.i.3249 = and i128 %add32.i.3245, 18446744073709551615
  %sub43.i.3250 = sub nsw i128 %conv39.i.3249, %shr34.i.3246
  %shl45.i.3251 = shl nuw nsw i128 %shr34.i.3246, 32
  %add47.i.3252 = add nsw i128 %sub43.i.3250, %shl45.i.3251
  %conv48.i.3253 = zext i64 %add36.i.3248 to i128
  %add50.i.3254 = add i128 %add16.i.3237, %conv48.i.3253
  %shl52.i.3255 = shl nuw nsw i128 %conv48.i.3253, 32
  %sub54.i.3256 = sub i128 %add19.i.3239, %shl52.i.3255
  %shr56.i.3257 = lshr i128 %add47.i.3252, 64
  %conv57.i.3258 = trunc i128 %shr56.i.3257 to i64
  %sub58.i.3259 = sub i64 0, %conv57.i.3258
  %conv60.i.3260 = trunc i128 %add47.i.3252 to i64
  %and.i.3261 = and i64 %conv60.i.3260, 9223372036854775807
  %neg.i.3262 = sub nsw i64 9223372032559808512, %and.i.3261
  %sub62177.i.3263 = and i64 %neg.i.3262, %conv60.i.3260
  %and66.i.3264 = ashr i64 %sub62177.i.3263, 63
  %or.i.3265 = or i64 %and66.i.3264, %sub58.i.3259
  %conv68.i.3266 = zext i64 %or.i.3265 to i128
  %sub70.i.3267 = sub i128 %add50.i.3254, %conv68.i.3266
  %and71.i.3268 = and i64 %or.i.3265, 4294967295
  %conv72.i.3269 = zext i64 %and71.i.3268 to i128
  %sub74.i.3270 = sub i128 %sub54.i.3256, %conv72.i.3269
  %and75.i.3271 = and i64 %or.i.3265, -4294967295
  %conv76.i.3272 = zext i64 %and75.i.3271 to i128
  %sub78.i.3273 = sub nsw i128 %add47.i.3252, %conv76.i.3272
  %shr80.i.3274 = lshr i128 %sub70.i.3267, 64
  %add84.i.3275 = add i128 %sub74.i.3270, %shr80.i.3274
  %shr90.i.3277 = lshr i128 %add84.i.3275, 64
  %add94.i.3278 = add nuw nsw i128 %add13.i.3236, %shr90.i.3277
  %shr100.i.3280 = lshr i128 %add94.i.3278, 64
  %add104.i.3281 = add nsw i128 %sub78.i.3273, %shr100.i.3280
  %tobool = icmp eq i32 %mixed, 0
  %8 = getelementptr inbounds i128, i128* %x1, i64 3
  %9 = load i128, i128* %8, align 16
  %10 = getelementptr inbounds i128, i128* %x1, i64 2
  %11 = load i128, i128* %10, align 16
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv.i.3168 = zext i64 %4 to i128
  %mul.i.3169 = mul nuw i128 %conv.i.3168, %conv.i.3168
  %shr.i.3170 = lshr i128 %mul.i.3169, 64
  %conv5.i.3171 = and i128 %mul.i.3169, 18446744073709551615
  %conv12.i.3174 = zext i64 %5 to i128
  %mul13.i.3175 = mul nuw i128 %conv12.i.3174, %conv.i.3168
  %shr15.i.3176 = lshr i128 %mul13.i.3175, 64
  %conv17.i.3177 = shl i128 %mul13.i.3175, 1
  %factor.i.3178 = and i128 %conv17.i.3177, 36893488147419103230
  %add21.i.3179 = add nuw nsw i128 %factor.i.3178, %shr.i.3170
  %conv27.i.3182 = zext i64 %6 to i128
  %mul28.i.3183 = mul nuw i128 %conv27.i.3182, %conv.i.3168
  %shr30.i.3184 = lshr i128 %mul28.i.3183, 64
  %conv32.i.3185 = and i128 %mul28.i.3183, 18446744073709551615
  %add34.i.3186 = add nuw nsw i128 %conv32.i.3185, %shr15.i.3176
  %conv42.i.3190 = zext i64 %7 to i128
  %mul43.i.3191 = mul nuw i128 %conv42.i.3190, %conv.i.3168
  %shr45.i.3192 = lshr i128 %mul43.i.3191, 64
  %conv47.i.3193 = and i128 %mul43.i.3191, 18446744073709551615
  %mul56.i.3196 = mul nuw i128 %conv27.i.3182, %conv12.i.3174
  %shr58.i.3197 = lshr i128 %mul56.i.3196, 64
  %conv60.i.3198 = and i128 %mul56.i.3196, 18446744073709551615
  %add49.i.3194 = add nuw nsw i128 %conv60.i.3198, %shr30.i.3184
  %add62.i.3199 = add nuw nsw i128 %add49.i.3194, %conv47.i.3193
  %mul64.i.3200 = shl nuw nsw i128 %add62.i.3199, 1
  %add67.i.3201 = add nuw nsw i128 %shr45.i.3192, %shr58.i.3197
  %mul72.i.3202 = mul nuw i128 %conv12.i.3174, %conv12.i.3174
  %shr74.i.3203 = lshr i128 %mul72.i.3202, 64
  %conv76.i.3204 = and i128 %mul72.i.3202, 18446744073709551615
  %mul86.i.3207 = mul nuw i128 %conv42.i.3190, %conv12.i.3174
  %shr88.i.3208 = lshr i128 %mul86.i.3207, 64
  %conv90.i.3209 = and i128 %mul86.i.3207, 18446744073709551615
  %add92.i.3210 = add nuw nsw i128 %add67.i.3201, %conv90.i.3209
  %mul94.i.3211 = shl nuw nsw i128 %add92.i.3210, 1
  %mul101.i.3213 = mul nuw i128 %conv42.i.3190, %conv27.i.3182
  %shr103.i.3214 = lshr i128 %mul101.i.3213, 64
  %conv105.i.3215 = and i128 %mul101.i.3213, 18446744073709551615
  %add107.i.3216 = add nuw nsw i128 %conv105.i.3215, %shr88.i.3208
  %mul109.i.3217 = shl nuw nsw i128 %add107.i.3216, 1
  %add114.i.3219 = shl nuw nsw i128 %shr103.i.3214, 1
  %mul119.i.3220 = mul nuw i128 %conv27.i.3182, %conv27.i.3182
  %shr121.i.3221 = lshr i128 %mul119.i.3220, 64
  %conv123.i.3222 = and i128 %mul119.i.3220, 18446744073709551615
  %add125.i.3223 = add nuw nsw i128 %mul94.i.3211, %conv123.i.3222
  %add128.i.3224 = add nuw nsw i128 %mul109.i.3217, %shr121.i.3221
  %mul133.i.3225 = mul nuw i128 %conv42.i.3190, %conv42.i.3190
  %shr135.i.3226 = lshr i128 %mul133.i.3225, 64
  %conv137.i.3227 = and i128 %mul133.i.3225, 18446744073709551615
  %add139.i.3228 = add nuw nsw i128 %add114.i.3219, %conv137.i.3227
  %add.i.3125 = add nuw nsw i128 %conv5.i.3171, 1267650600228229401427983728624
  %add3.i.3127 = or i128 %add21.i.3179, 1267650600228229401496703205376
  %shl.i.i.3137 = shl nuw nsw i128 %add128.i.3224, 32
  %add.i.i.3138 = add nuw nsw i128 %shl.i.i.3137, %add125.i.3223
  %sub7.i.i.3142 = sub nsw i128 %add128.i.3224, %shr135.i.3226
  %shl13.i.i.3145 = shl nuw nsw i128 %add125.i.3223, 32
  %shl28.i.i.3153 = shl nuw nsw i128 %add139.i.3228, 32
  %shl32.i.i.3155 = shl nuw nsw i128 %add139.i.3228, 33
  %add9.i.i.3143 = add nuw nsw i128 %shl32.i.i.3155, %add3.i.3127
  %sub15.i.i.3146 = add nsw i128 %add9.i.i.3143, %sub7.i.i.3142
  %add34.i.i.3156 = sub nsw i128 %sub15.i.i.3146, %shl13.i.i.3145
  %shl46.i.i.3162 = shl nuw nsw i128 %shr135.i.3226, 32
  %add3.i.i.3139 = sub nsw i128 %add.i.3125, %shr135.i.3226
  %sub26.i.i.3152 = sub nsw i128 %add3.i.i.3139, %shl46.i.i.3162
  %sub30.i.i.3154 = sub nsw i128 %sub26.i.i.3152, %add139.i.3228
  %sub44.i.i.3161 = sub nsw i128 %sub30.i.i.3154, %shl28.i.i.3153
  %sub48.i.i.3163 = add nsw i128 %sub44.i.i.3161, %add.i.i.3138
  %shl50.i.i.3164 = shl nuw nsw i128 %shr135.i.3226, 33
  %tmp4155 = add nuw nsw i128 %add34.i.3186, %add139.i.3228
  %tmp4156 = shl nuw nsw i128 %tmp4155, 1
  %add6.i.3130 = add nuw nsw i128 %conv76.i.3204, 1267650600228229401427983728656
  %sub11.i.i.3144 = add nuw nsw i128 %add6.i.3130, %shl50.i.i.3164
  %sub23.i.i.3150 = sub nsw i128 %sub11.i.i.3144, %sub7.i.i.3142
  %add37.i.i.3158 = sub nsw i128 %sub23.i.i.3150, %shl.i.i.3137
  %add52.i.i.3165 = add i128 %add37.i.i.3158, %tmp4156
  %mul54.i.i.3166 = mul nuw nsw i128 %shr135.i.3226, 3
  %add81.i.3206 = add nuw nsw i128 %shr74.i.3203, 1267650600228229401427983728656
  %add9.i.3133 = add nuw nsw i128 %add81.i.3206, %mul54.i.i.3166
  %sub.i.i.3140 = add nuw nsw i128 %add9.i.3133, %mul64.i.3200
  %add19.i.i.3148 = sub nsw i128 %sub.i.i.3140, %shl28.i.i.3153
  %sub41.i.i.3160 = sub nsw i128 %add19.i.i.3148, %add.i.i.3138
  %add56.i.i.3167 = add i128 %sub41.i.i.3160, %shl13.i.i.3145
  %add.i.3069 = add i128 %add56.i.i.3167, 18446744069414584320
  %shr.i.3071 = lshr i128 %add52.i.i.3165, 64
  %add8.i.3072 = add i128 %add.i.3069, %shr.i.3071
  %conv12.i.3073 = and i128 %add52.i.i.3165, 18446744073709551615
  %add13.i.3074 = add nuw nsw i128 %conv12.i.3073, 18446673704965373952
  %add16.i.3075 = add i128 %sub48.i.i.3163, 18446744073709551615
  %add19.i.3077 = add i128 %add34.i.i.3156, 1298074214633706907132628377272319
  %shr22.i.3078 = lshr i128 %add8.i.3072, 64
  %conv23.i.3079 = trunc i128 %shr22.i.3078 to i64
  %conv26.i.3080 = and i128 %add8.i.3072, 18446744073709551615
  %sub.i.3081 = sub nsw i128 %conv26.i.3080, %shr22.i.3078
  %shl.i.3082 = shl nuw nsw i128 %shr22.i.3078, 32
  %add32.i.3083 = add nsw i128 %sub.i.3081, %shl.i.3082
  %shr34.i.3084 = lshr i128 %add32.i.3083, 64
  %conv35.i.3085 = trunc i128 %shr34.i.3084 to i64
  %add36.i.3086 = add i64 %conv35.i.3085, %conv23.i.3079
  %conv39.i.3087 = and i128 %add32.i.3083, 18446744073709551615
  %sub43.i.3088 = sub nsw i128 %conv39.i.3087, %shr34.i.3084
  %shl45.i.3089 = shl nuw nsw i128 %shr34.i.3084, 32
  %add47.i.3090 = add nsw i128 %sub43.i.3088, %shl45.i.3089
  %conv48.i.3091 = zext i64 %add36.i.3086 to i128
  %add50.i.3092 = add i128 %add16.i.3075, %conv48.i.3091
  %shl52.i.3093 = shl nuw nsw i128 %conv48.i.3091, 32
  %sub54.i.3094 = sub i128 %add19.i.3077, %shl52.i.3093
  %shr56.i.3095 = lshr i128 %add47.i.3090, 64
  %conv57.i.3096 = trunc i128 %shr56.i.3095 to i64
  %sub58.i.3097 = sub i64 0, %conv57.i.3096
  %conv60.i.3098 = trunc i128 %add47.i.3090 to i64
  %and.i.3099 = and i64 %conv60.i.3098, 9223372036854775807
  %neg.i.3100 = sub nsw i64 9223372032559808512, %and.i.3099
  %sub62177.i.3101 = and i64 %neg.i.3100, %conv60.i.3098
  %and66.i.3102 = ashr i64 %sub62177.i.3101, 63
  %or.i.3103 = or i64 %and66.i.3102, %sub58.i.3097
  %conv68.i.3104 = zext i64 %or.i.3103 to i128
  %sub70.i.3105 = sub i128 %add50.i.3092, %conv68.i.3104
  %and71.i.3106 = and i64 %or.i.3103, 4294967295
  %conv72.i.3107 = zext i64 %and71.i.3106 to i128
  %sub74.i.3108 = sub i128 %sub54.i.3094, %conv72.i.3107
  %and75.i.3109 = and i64 %or.i.3103, -4294967295
  %conv76.i.3110 = zext i64 %and75.i.3109 to i128
  %sub78.i.3111 = sub nsw i128 %add47.i.3090, %conv76.i.3110
  %shr80.i.3112 = lshr i128 %sub70.i.3105, 64
  %add84.i.3113 = add i128 %sub74.i.3108, %shr80.i.3112
  %shr90.i.3115 = lshr i128 %add84.i.3113, 64
  %add94.i.3116 = add nuw nsw i128 %add13.i.3074, %shr90.i.3115
  %shr100.i.3118 = lshr i128 %add94.i.3116, 64
  %add104.i.3119 = add nsw i128 %sub78.i.3111, %shr100.i.3118
  %add.i.3012 = add i128 %9, 18446744069414584320
  %shr.i.3014 = lshr i128 %11, 64
  %add8.i.3015 = add i128 %add.i.3012, %shr.i.3014
  %conv12.i.3016 = and i128 %11, 18446744073709551615
  %add13.i.3017 = add nuw nsw i128 %conv12.i.3016, 18446673704965373952
  %12 = load i128, i128* %x1, align 16, !tbaa !2
  %add16.i.3018 = add i128 %12, 18446744073709551615
  %arrayidx18.i.3019 = getelementptr inbounds i128, i128* %x1, i64 1
  %13 = load i128, i128* %arrayidx18.i.3019, align 16, !tbaa !2
  %add19.i.3020 = add i128 %13, 1298074214633706907132628377272319
  %shr22.i.3021 = lshr i128 %add8.i.3015, 64
  %conv23.i.3022 = trunc i128 %shr22.i.3021 to i64
  %conv26.i.3023 = and i128 %add8.i.3015, 18446744073709551615
  %sub.i.3024 = sub nsw i128 %conv26.i.3023, %shr22.i.3021
  %shl.i.3025 = shl nuw nsw i128 %shr22.i.3021, 32
  %add32.i.3026 = add nsw i128 %sub.i.3024, %shl.i.3025
  %shr34.i.3027 = lshr i128 %add32.i.3026, 64
  %conv35.i.3028 = trunc i128 %shr34.i.3027 to i64
  %add36.i.3029 = add i64 %conv35.i.3028, %conv23.i.3022
  %conv39.i.3030 = and i128 %add32.i.3026, 18446744073709551615
  %sub43.i.3031 = sub nsw i128 %conv39.i.3030, %shr34.i.3027
  %shl45.i.3032 = shl nuw nsw i128 %shr34.i.3027, 32
  %add47.i.3033 = add nsw i128 %sub43.i.3031, %shl45.i.3032
  %conv48.i.3034 = zext i64 %add36.i.3029 to i128
  %add50.i.3035 = add i128 %add16.i.3018, %conv48.i.3034
  %shl52.i.3036 = shl nuw nsw i128 %conv48.i.3034, 32
  %sub54.i.3037 = sub i128 %add19.i.3020, %shl52.i.3036
  %shr56.i.3038 = lshr i128 %add47.i.3033, 64
  %conv57.i.3039 = trunc i128 %shr56.i.3038 to i64
  %sub58.i.3040 = sub i64 0, %conv57.i.3039
  %conv60.i.3041 = trunc i128 %add47.i.3033 to i64
  %and.i.3042 = and i64 %conv60.i.3041, 9223372036854775807
  %neg.i.3043 = sub nsw i64 9223372032559808512, %and.i.3042
  %sub62177.i.3044 = and i64 %neg.i.3043, %conv60.i.3041
  %and66.i.3045 = ashr i64 %sub62177.i.3044, 63
  %or.i.3046 = or i64 %and66.i.3045, %sub58.i.3040
  %conv68.i.3047 = zext i64 %or.i.3046 to i128
  %sub70.i.3048 = sub i128 %add50.i.3035, %conv68.i.3047
  %and71.i.3049 = and i64 %or.i.3046, 4294967295
  %conv72.i.3050 = zext i64 %and71.i.3049 to i128
  %sub74.i.3051 = sub i128 %sub54.i.3037, %conv72.i.3050
  %and75.i.3052 = and i64 %or.i.3046, -4294967295
  %conv76.i.3053 = zext i64 %and75.i.3052 to i128
  %sub78.i.3054 = sub nsw i128 %add47.i.3033, %conv76.i.3053
  %shr80.i.3055 = lshr i128 %sub70.i.3048, 64
  %add84.i.3056 = add i128 %sub74.i.3051, %shr80.i.3055
  %shr90.i.3058 = lshr i128 %add84.i.3056, 64
  %add94.i.3059 = add nuw nsw i128 %add13.i.3017, %shr90.i.3058
  %shr100.i.3061 = lshr i128 %add94.i.3059, 64
  %add104.i.3062 = add nsw i128 %sub78.i.3054, %shr100.i.3061
  %conv.i.2918 = and i128 %sub70.i.3048, 18446744073709551615
  %conv2.i.2919 = and i128 %sub70.i.3105, 18446744073709551615
  %mul.i.2920 = mul nuw i128 %conv.i.2918, %conv2.i.2919
  %shr.i.2921 = lshr i128 %mul.i.2920, 64
  %conv5.i.2922 = and i128 %mul.i.2920, 18446744073709551615
  %conv12.i.2925 = and i128 %add84.i.3113, 18446744073709551615
  %mul13.i.2926 = mul nuw i128 %conv.i.2918, %conv12.i.2925
  %shr15.i.2927 = lshr i128 %mul13.i.2926, 64
  %conv17.i.2928 = and i128 %mul13.i.2926, 18446744073709551615
  %add.i.2929 = add nuw nsw i128 %conv17.i.2928, %shr.i.2921
  %conv22.i.2932 = and i128 %add84.i.3056, 18446744073709551615
  %mul25.i.2933 = mul nuw i128 %conv22.i.2932, %conv2.i.2919
  %shr27.i.2934 = lshr i128 %mul25.i.2933, 64
  %conv29.i.2935 = and i128 %mul25.i.2933, 18446744073709551615
  %add31.i.2936 = add nuw nsw i128 %add.i.2929, %conv29.i.2935
  %conv38.i.2939 = and i128 %add94.i.3116, 18446744073709551615
  %mul39.i.2940 = mul nuw i128 %conv.i.2918, %conv38.i.2939
  %shr41.i.2941 = lshr i128 %mul39.i.2940, 64
  %conv43.i.2942 = and i128 %mul39.i.2940, 18446744073709551615
  %mul52.i.2945 = mul nuw i128 %conv22.i.2932, %conv12.i.2925
  %shr54.i.2946 = lshr i128 %mul52.i.2945, 64
  %conv56.i.2947 = and i128 %mul52.i.2945, 18446744073709551615
  %conv63.i.2951 = and i128 %add94.i.3059, 18446744073709551615
  %mul66.i.2952 = mul nuw i128 %conv63.i.2951, %conv2.i.2919
  %shr68.i.2953 = lshr i128 %mul66.i.2952, 64
  %conv70.i.2954 = and i128 %mul66.i.2952, 18446744073709551615
  %conv79.i.2958 = and i128 %add104.i.3119, 18446744073709551615
  %mul80.i.2959 = mul nuw i128 %conv.i.2918, %conv79.i.2958
  %shr82.i.2960 = lshr i128 %mul80.i.2959, 64
  %conv84.i.2961 = and i128 %mul80.i.2959, 18446744073709551615
  %mul93.i.2964 = mul nuw i128 %conv22.i.2932, %conv38.i.2939
  %shr95.i.2965 = lshr i128 %mul93.i.2964, 64
  %conv97.i.2966 = and i128 %mul93.i.2964, 18446744073709551615
  %add102.i.2968 = add nuw nsw i128 %shr95.i.2965, %shr82.i.2960
  %mul107.i.2969 = mul nuw i128 %conv63.i.2951, %conv12.i.2925
  %shr109.i.2970 = lshr i128 %mul107.i.2969, 64
  %conv111.i.2971 = and i128 %mul107.i.2969, 18446744073709551615
  %conv118.i.2975 = and i128 %add104.i.3062, 18446744073709551615
  %mul121.i.2976 = mul nuw i128 %conv118.i.2975, %conv2.i.2919
  %shr123.i.2977 = lshr i128 %mul121.i.2976, 64
  %conv125.i.2978 = and i128 %mul121.i.2976, 18446744073709551615
  %mul135.i.2981 = mul nuw i128 %conv22.i.2932, %conv79.i.2958
  %shr137.i.2982 = lshr i128 %mul135.i.2981, 64
  %conv139.i.2983 = and i128 %mul135.i.2981, 18446744073709551615
  %mul148.i.2986 = mul nuw i128 %conv63.i.2951, %conv38.i.2939
  %shr150.i.2987 = lshr i128 %mul148.i.2986, 64
  %conv152.i.2988 = and i128 %mul148.i.2986, 18446744073709551615
  %add157.i.2990 = add nuw nsw i128 %shr150.i.2987, %shr137.i.2982
  %mul162.i.2991 = mul nuw i128 %conv118.i.2975, %conv12.i.2925
  %shr164.i.2992 = lshr i128 %mul162.i.2991, 64
  %conv166.i.2993 = and i128 %mul162.i.2991, 18446744073709551615
  %add116.i.2973 = add nuw nsw i128 %add102.i.2968, %conv139.i.2983
  %add130.i.2980 = add nuw nsw i128 %add116.i.2973, %shr109.i.2970
  %add141.i.2984 = add nuw nsw i128 %add130.i.2980, %conv152.i.2988
  %add154.i.2989 = add nuw nsw i128 %add141.i.2984, %shr123.i.2977
  %add168.i.2994 = add nuw nsw i128 %add154.i.2989, %conv166.i.2993
  %mul176.i.2996 = mul nuw i128 %conv63.i.2951, %conv79.i.2958
  %shr178.i.2997 = lshr i128 %mul176.i.2996, 64
  %conv180.i.2998 = and i128 %mul176.i.2996, 18446744073709551615
  %mul189.i.3001 = mul nuw i128 %conv118.i.2975, %conv38.i.2939
  %shr191.i.3002 = lshr i128 %mul189.i.3001, 64
  %conv193.i.3003 = and i128 %mul189.i.3001, 18446744073709551615
  %add171.i.2995 = add nuw nsw i128 %add157.i.2990, %conv180.i.2998
  %add182.i.2999 = add nuw nsw i128 %add171.i.2995, %shr164.i.2992
  %add195.i.3004 = add nuw nsw i128 %add182.i.2999, %conv193.i.3003
  %add198.i.3005 = add nuw nsw i128 %shr191.i.3002, %shr178.i.2997
  %mul203.i.3006 = mul nuw i128 %conv118.i.2975, %conv79.i.2958
  %shr205.i.3007 = lshr i128 %mul203.i.3006, 64
  %conv207.i.3008 = and i128 %mul203.i.3006, 18446744073709551615
  %add209.i.3009 = add nuw nsw i128 %add198.i.3005, %conv207.i.3008
  %add.i.2875 = add nuw nsw i128 %conv5.i.2922, 1267650600228229401427983728624
  %add3.i.2877 = or i128 %add31.i.2936, 1267650600228229401496703205376
  %shl.i.i.2887 = shl nuw nsw i128 %add195.i.3004, 32
  %add.i.i.2888 = add i128 %shl.i.i.2887, %add168.i.2994
  %sub7.i.i.2892 = sub nsw i128 %add195.i.3004, %shr205.i.3007
  %shl13.i.i.2895 = shl i128 %add168.i.2994, 32
  %shl28.i.i.2903 = shl nuw nsw i128 %add209.i.3009, 32
  %shl32.i.i.2905 = shl nuw nsw i128 %add209.i.3009, 33
  %add9.i.i.2893 = add nuw nsw i128 %shl32.i.i.2905, %add3.i.2877
  %sub15.i.i.2896 = add nsw i128 %add9.i.i.2893, %sub7.i.i.2892
  %add34.i.i.2906 = sub i128 %sub15.i.i.2896, %shl13.i.i.2895
  %mul.i.i.2907 = shl nuw nsw i128 %add209.i.3009, 1
  %shl46.i.i.2912 = shl nuw nsw i128 %shr205.i.3007, 32
  %add3.i.i.2889 = sub nsw i128 %add.i.2875, %shr205.i.3007
  %sub26.i.i.2902 = sub nsw i128 %add3.i.i.2889, %shl46.i.i.2912
  %sub30.i.i.2904 = sub nsw i128 %sub26.i.i.2902, %add209.i.3009
  %sub44.i.i.2911 = sub nsw i128 %sub30.i.i.2904, %shl28.i.i.2903
  %sub48.i.i.2913 = add i128 %sub44.i.i.2911, %add.i.i.2888
  %shl50.i.i.2914 = shl nuw nsw i128 %shr205.i.3007, 33
  %add34.i.2937 = add nuw nsw i128 %shr15.i.2927, 1267650600228229401427983728656
  %add45.i.2943 = add nuw nsw i128 %add34.i.2937, %conv43.i.2942
  %add58.i.2948 = add nuw nsw i128 %add45.i.2943, %shr27.i.2934
  %add72.i.2955 = add nuw nsw i128 %add58.i.2948, %conv56.i.2947
  %add6.i.2880 = add nuw nsw i128 %add72.i.2955, %conv70.i.2954
  %sub11.i.i.2894 = add nuw nsw i128 %add6.i.2880, %shl50.i.i.2914
  %sub23.i.i.2900 = add i128 %sub11.i.i.2894, %mul.i.i.2907
  %add37.i.i.2908 = sub i128 %sub23.i.i.2900, %sub7.i.i.2892
  %add52.i.i.2915 = sub i128 %add37.i.i.2908, %shl.i.i.2887
  %mul54.i.i.2916 = mul nuw nsw i128 %shr205.i.3007, 3
  %add61.i.2949 = add nuw nsw i128 %shr41.i.2941, 1267650600228229401427983728656
  %add75.i.2956 = add nuw nsw i128 %add61.i.2949, %conv84.i.2961
  %add86.i.2962 = add nuw nsw i128 %add75.i.2956, %shr54.i.2946
  %add99.i.2967 = add nuw nsw i128 %add86.i.2962, %conv97.i.2966
  %add113.i.2972 = add nuw nsw i128 %add99.i.2967, %shr68.i.2953
  %add127.i.2979 = add nuw nsw i128 %add113.i.2972, %conv111.i.2971
  %add9.i.2883 = add i128 %add127.i.2979, %conv125.i.2978
  %sub.i.i.2890 = add i128 %add9.i.2883, %mul54.i.i.2916
  %add19.i.i.2898 = sub i128 %sub.i.i.2890, %shl28.i.i.2903
  %sub41.i.i.2910 = sub i128 %add19.i.i.2898, %add.i.i.2888
  %add56.i.i.2917 = add i128 %sub41.i.i.2910, %shl13.i.i.2895
  %add9.i.2865 = add i128 %conv27.i.3182, %1
  %shr.i.i.2742 = lshr i128 %add9.i.2865, 64
  %add.i.i.2740 = add i128 %add.i, %conv42.i.3190
  %add8.i.i.2743 = add i128 %add.i.i.2740, %shr.i.i.2742
  %conv12.i.i.2744 = and i128 %add9.i.2865, 18446744073709551615
  %add13.i.i.2745 = add nuw nsw i128 %conv12.i.i.2744, 18446673704965373952
  %shr22.i.i.2749 = lshr i128 %add8.i.i.2743, 64
  %conv23.i.i.2750 = trunc i128 %shr22.i.i.2749 to i64
  %conv26.i.i.2751 = and i128 %add8.i.i.2743, 18446744073709551615
  %sub.i.i.2752 = sub nsw i128 %conv26.i.i.2751, %shr22.i.i.2749
  %shl.i.i.2753 = shl nuw nsw i128 %shr22.i.i.2749, 32
  %add32.i.i.2754 = add nsw i128 %sub.i.i.2752, %shl.i.i.2753
  %shr34.i.i.2755 = lshr i128 %add32.i.i.2754, 64
  %conv35.i.i.2756 = trunc i128 %shr34.i.i.2755 to i64
  %add36.i.i.2757 = add i64 %conv35.i.i.2756, %conv23.i.i.2750
  %conv39.i.i.2758 = and i128 %add32.i.i.2754, 18446744073709551615
  %sub43.i.i.2759 = sub nsw i128 %conv39.i.i.2758, %shr34.i.i.2755
  %shl45.i.i.2760 = shl nuw nsw i128 %shr34.i.i.2755, 32
  %add47.i.i.2761 = add nsw i128 %sub43.i.i.2759, %shl45.i.i.2760
  %conv48.i.i.2762 = zext i64 %add36.i.i.2757 to i128
  %shl52.i.i.2764 = shl nuw nsw i128 %conv48.i.i.2762, 32
  %shr56.i.i.2766 = lshr i128 %add47.i.i.2761, 64
  %conv57.i.i.2767 = trunc i128 %shr56.i.i.2766 to i64
  %sub58.i.i.2768 = sub i64 0, %conv57.i.i.2767
  %conv60.i.i.2769 = trunc i128 %add47.i.i.2761 to i64
  %and.i.i.2770 = and i64 %conv60.i.i.2769, 9223372036854775807
  %neg.i.i.2771 = sub nsw i64 9223372032559808512, %and.i.i.2770
  %sub62177.i.i.2772 = and i64 %neg.i.i.2771, %conv60.i.i.2769
  %and66.i.i.2773 = ashr i64 %sub62177.i.i.2772, 63
  %or.i.i.2774 = or i64 %and66.i.i.2773, %sub58.i.i.2768
  %conv68.i.i.2775 = zext i64 %or.i.i.2774 to i128
  %add16.i.i.2746 = add i128 %add16.i, %conv.i.3168
  %add50.i.i.2763 = add i128 %add16.i.i.2746, %conv48.i.i.2762
  %sub70.i.i.2776 = sub i128 %add50.i.i.2763, %conv68.i.i.2775
  %and71.i.i.2777 = and i64 %or.i.i.2774, 4294967295
  %conv72.i.i.2778 = zext i64 %and71.i.i.2777 to i128
  %and75.i.i.2780 = and i64 %or.i.i.2774, -4294967295
  %conv76.i.i.2781 = zext i64 %and75.i.i.2780 to i128
  %sub78.i.i.2782 = sub nsw i128 %add47.i.i.2761, %conv76.i.i.2781
  %shr80.i.i.2783 = lshr i128 %sub70.i.i.2776, 64
  %add19.i.i.2748 = add i128 %add19.i, %conv12.i.3174
  %sub54.i.i.2765 = sub i128 %add19.i.i.2748, %shl52.i.i.2764
  %sub74.i.i.2779 = sub i128 %sub54.i.i.2765, %conv72.i.i.2778
  %add84.i.i.2784 = add i128 %sub74.i.i.2779, %shr80.i.i.2783
  %shr90.i.i.2786 = lshr i128 %add84.i.i.2784, 64
  %add94.i.i.2787 = add nuw nsw i128 %add13.i.i.2745, %shr90.i.i.2786
  %shr100.i.i.2789 = lshr i128 %add94.i.i.2787, 64
  %add104.i.i.2790 = add nsw i128 %sub78.i.i.2782, %shr100.i.i.2789
  %conv.i.2796 = and i128 %sub70.i.i.2776, 18446744073709551615
  %mul.i.2797 = mul nuw i128 %conv.i.2796, %conv.i.2796
  %shr.i.2798 = lshr i128 %mul.i.2797, 64
  %conv5.i.2799 = and i128 %mul.i.2797, 18446744073709551615
  %conv12.i.2802 = and i128 %add84.i.i.2784, 18446744073709551615
  %mul13.i.2803 = mul nuw i128 %conv12.i.2802, %conv.i.2796
  %shr15.i.2804 = lshr i128 %mul13.i.2803, 64
  %conv17.i.2805 = shl i128 %mul13.i.2803, 1
  %factor.i.2806 = and i128 %conv17.i.2805, 36893488147419103230
  %add21.i.2807 = add nuw nsw i128 %factor.i.2806, %shr.i.2798
  %conv27.i.2810 = and i128 %add94.i.i.2787, 18446744073709551615
  %mul28.i.2811 = mul nuw i128 %conv27.i.2810, %conv.i.2796
  %shr30.i.2812 = lshr i128 %mul28.i.2811, 64
  %conv32.i.2813 = and i128 %mul28.i.2811, 18446744073709551615
  %add34.i.2814 = add nuw nsw i128 %conv32.i.2813, %shr15.i.2804
  %conv42.i.2818 = and i128 %add104.i.i.2790, 18446744073709551615
  %mul43.i.2819 = mul nuw i128 %conv42.i.2818, %conv.i.2796
  %shr45.i.2820 = lshr i128 %mul43.i.2819, 64
  %conv47.i.2821 = and i128 %mul43.i.2819, 18446744073709551615
  %mul56.i.2824 = mul nuw i128 %conv27.i.2810, %conv12.i.2802
  %shr58.i.2825 = lshr i128 %mul56.i.2824, 64
  %conv60.i.2826 = and i128 %mul56.i.2824, 18446744073709551615
  %add49.i.2822 = add nuw nsw i128 %conv60.i.2826, %shr30.i.2812
  %add62.i.2827 = add nuw nsw i128 %add49.i.2822, %conv47.i.2821
  %mul64.i.2828 = shl nuw nsw i128 %add62.i.2827, 1
  %add67.i.2829 = add nuw nsw i128 %shr45.i.2820, %shr58.i.2825
  %mul72.i.2830 = mul nuw i128 %conv12.i.2802, %conv12.i.2802
  %shr74.i.2831 = lshr i128 %mul72.i.2830, 64
  %conv76.i.2832 = and i128 %mul72.i.2830, 18446744073709551615
  %mul86.i.2835 = mul nuw i128 %conv42.i.2818, %conv12.i.2802
  %shr88.i.2836 = lshr i128 %mul86.i.2835, 64
  %conv90.i.2837 = and i128 %mul86.i.2835, 18446744073709551615
  %add92.i.2838 = add nuw nsw i128 %add67.i.2829, %conv90.i.2837
  %mul94.i.2839 = shl nuw nsw i128 %add92.i.2838, 1
  %mul101.i.2841 = mul nuw i128 %conv42.i.2818, %conv27.i.2810
  %shr103.i.2842 = lshr i128 %mul101.i.2841, 64
  %conv105.i.2843 = and i128 %mul101.i.2841, 18446744073709551615
  %add107.i.2844 = add nuw nsw i128 %conv105.i.2843, %shr88.i.2836
  %mul109.i.2845 = shl nuw nsw i128 %add107.i.2844, 1
  %add114.i.2847 = shl nuw nsw i128 %shr103.i.2842, 1
  %mul119.i.2848 = mul nuw i128 %conv27.i.2810, %conv27.i.2810
  %shr121.i.2849 = lshr i128 %mul119.i.2848, 64
  %conv123.i.2850 = and i128 %mul119.i.2848, 18446744073709551615
  %add125.i.2851 = add nuw nsw i128 %mul94.i.2839, %conv123.i.2850
  %add128.i.2852 = add nuw nsw i128 %mul109.i.2845, %shr121.i.2849
  %mul133.i.2853 = mul nuw i128 %conv42.i.2818, %conv42.i.2818
  %shr135.i.2854 = lshr i128 %mul133.i.2853, 64
  %conv137.i.2855 = and i128 %mul133.i.2853, 18446744073709551615
  %add139.i.2856 = add nuw nsw i128 %add114.i.2847, %conv137.i.2855
  %add3.i.2697 = or i128 %add21.i.2807, 1267650600228229401496703205376
  %shl.i.i.2707 = shl nuw nsw i128 %add128.i.2852, 32
  %add.i.i.2708 = add nuw nsw i128 %shl.i.i.2707, %add125.i.2851
  %sub7.i.i.2712 = sub nsw i128 %add128.i.2852, %shr135.i.2854
  %shl13.i.i.2715 = shl nuw nsw i128 %add125.i.2851, 32
  %shl28.i.i.2723 = shl nuw nsw i128 %add139.i.2856, 32
  %shl32.i.i.2725 = shl nuw nsw i128 %add139.i.2856, 33
  %shl46.i.i.2732 = shl nuw nsw i128 %shr135.i.2854, 32
  %shl50.i.i.2734 = shl nuw nsw i128 %shr135.i.2854, 33
  %mul54.i.i.2736 = mul nuw nsw i128 %shr135.i.2854, 3
  %add.i.2695 = sub i128 41832469807531570247123463044592, %sub48.i.i.3163
  %add3.i.i.2709 = add i128 %add.i.2695, %conv5.i.2799
  %sub26.i.i.2722 = sub i128 %add3.i.i.2709, %sub48.i.i.3325
  %sub30.i.i.2724 = sub i128 %sub26.i.i.2722, %shr135.i.2854
  %sub44.i.i.2731 = sub i128 %sub30.i.i.2724, %shl46.i.i.2732
  %sub48.i.i.2733 = sub i128 %sub44.i.i.2731, %add139.i.2856
  %add.i.2671 = sub i128 %sub48.i.i.2733, %shl28.i.i.2723
  %sub.i.2678 = add i128 %add.i.2671, %add.i.i.2708
  %add4.i.2688.neg = sub i128 40564819207303340847894502572032, %add34.i.i.3156
  %add9.i.i.2713 = add i128 %add4.i.2688.neg, %add3.i.2697
  %sub15.i.i.2716 = sub i128 %add9.i.i.2713, %add34.i.i.3318
  %add34.i.i.2726 = add i128 %sub15.i.i.2716, %shl32.i.i.2725
  %add2.i.2673 = add i128 %add34.i.i.2726, %sub7.i.i.2712
  %sub11.i.2680 = sub i128 %add2.i.2673, %shl13.i.i.2715
  %tmp4157 = add nuw nsw i128 %add34.i.2814, %add139.i.2856
  %tmp4158 = shl nuw nsw i128 %tmp4157, 1
  %add6.i.2700 = sub i128 41832469807531570247123463045648, %add52.i.i.3165
  %sub11.i.i.2714 = add i128 %add6.i.2700, %conv76.i.2832
  %sub23.i.i.2720 = sub i128 %sub11.i.i.2714, %add52.i.i.3327
  %add37.i.i.2728 = add i128 %sub23.i.i.2720, %shl50.i.i.2734
  %add52.i.i.2735 = sub i128 %add37.i.i.2728, %sub7.i.i.2712
  %add4.i.2675 = sub i128 %add52.i.i.2735, %shl.i.i.2707
  %sub14.i.2682 = add i128 %add4.i.2675, %tmp4158
  %add81.i.2834 = sub i128 41832469807531570247123463045648, %add56.i.i.3167
  %add9.i.2703 = add i128 %add81.i.2834, %shr74.i.2831
  %sub.i.i.2710 = add i128 %add9.i.2703, %mul54.i.i.2736
  %add19.i.i.2718 = sub i128 %sub.i.i.2710, %add56.i.i.3329
  %sub41.i.i.2730 = add i128 %add19.i.i.2718, %mul64.i.2828
  %add56.i.i.2737 = sub i128 %sub41.i.i.2730, %shl28.i.i.2723
  %add6.i.2677 = sub i128 %add56.i.i.2737, %add.i.i.2708
  %sub17.i.2684 = add i128 %add6.i.2677, %shl13.i.i.2715
  %mul.i.2580 = mul nuw i128 %conv2.i.2919, %conv.i.3168
  %shr.i.2581 = lshr i128 %mul.i.2580, 64
  %conv5.i.2582 = and i128 %mul.i.2580, 18446744073709551615
  %mul13.i.2586 = mul nuw i128 %conv2.i.2919, %conv12.i.3174
  %shr15.i.2587 = lshr i128 %mul13.i.2586, 64
  %conv17.i.2588 = and i128 %mul13.i.2586, 18446744073709551615
  %add.i.2589 = add nuw nsw i128 %conv17.i.2588, %shr.i.2581
  %mul25.i.2593 = mul nuw i128 %conv12.i.2925, %conv.i.3168
  %shr27.i.2594 = lshr i128 %mul25.i.2593, 64
  %conv29.i.2595 = and i128 %mul25.i.2593, 18446744073709551615
  %add31.i.2596 = add nuw nsw i128 %add.i.2589, %conv29.i.2595
  %mul39.i.2600 = mul nuw i128 %conv2.i.2919, %conv27.i.3182
  %shr41.i.2601 = lshr i128 %mul39.i.2600, 64
  %conv43.i.2602 = and i128 %mul39.i.2600, 18446744073709551615
  %mul52.i.2605 = mul nuw i128 %conv12.i.2925, %conv12.i.3174
  %shr54.i.2606 = lshr i128 %mul52.i.2605, 64
  %conv56.i.2607 = and i128 %mul52.i.2605, 18446744073709551615
  %mul66.i.2612 = mul nuw i128 %conv38.i.2939, %conv.i.3168
  %shr68.i.2613 = lshr i128 %mul66.i.2612, 64
  %conv70.i.2614 = and i128 %mul66.i.2612, 18446744073709551615
  %mul80.i.2619 = mul nuw i128 %conv2.i.2919, %conv42.i.3190
  %shr82.i.2620 = lshr i128 %mul80.i.2619, 64
  %conv84.i.2621 = and i128 %mul80.i.2619, 18446744073709551615
  %mul93.i.2624 = mul nuw i128 %conv12.i.2925, %conv27.i.3182
  %shr95.i.2625 = lshr i128 %mul93.i.2624, 64
  %conv97.i.2626 = and i128 %mul93.i.2624, 18446744073709551615
  %add102.i.2628 = add nuw nsw i128 %shr95.i.2625, %shr82.i.2620
  %mul107.i.2629 = mul nuw i128 %conv38.i.2939, %conv12.i.3174
  %shr109.i.2630 = lshr i128 %mul107.i.2629, 64
  %conv111.i.2631 = and i128 %mul107.i.2629, 18446744073709551615
  %mul121.i.2636 = mul nuw i128 %conv79.i.2958, %conv.i.3168
  %shr123.i.2637 = lshr i128 %mul121.i.2636, 64
  %conv125.i.2638 = and i128 %mul121.i.2636, 18446744073709551615
  %mul135.i.2641 = mul nuw i128 %conv12.i.2925, %conv42.i.3190
  %shr137.i.2642 = lshr i128 %mul135.i.2641, 64
  %conv139.i.2643 = and i128 %mul135.i.2641, 18446744073709551615
  %mul148.i.2646 = mul nuw i128 %conv38.i.2939, %conv27.i.3182
  %shr150.i.2647 = lshr i128 %mul148.i.2646, 64
  %conv152.i.2648 = and i128 %mul148.i.2646, 18446744073709551615
  %add157.i.2650 = add nuw nsw i128 %shr150.i.2647, %shr137.i.2642
  %mul162.i.2651 = mul nuw i128 %conv79.i.2958, %conv12.i.3174
  %shr164.i.2652 = lshr i128 %mul162.i.2651, 64
  %conv166.i.2653 = and i128 %mul162.i.2651, 18446744073709551615
  %add116.i.2633 = add nuw nsw i128 %add102.i.2628, %conv139.i.2643
  %add130.i.2640 = add nuw nsw i128 %add116.i.2633, %shr109.i.2630
  %add141.i.2644 = add nuw nsw i128 %add130.i.2640, %conv152.i.2648
  %add154.i.2649 = add nuw nsw i128 %add141.i.2644, %shr123.i.2637
  %add168.i.2654 = add nuw nsw i128 %add154.i.2649, %conv166.i.2653
  %mul176.i.2656 = mul nuw i128 %conv38.i.2939, %conv42.i.3190
  %shr178.i.2657 = lshr i128 %mul176.i.2656, 64
  %conv180.i.2658 = and i128 %mul176.i.2656, 18446744073709551615
  %mul189.i.2661 = mul nuw i128 %conv79.i.2958, %conv27.i.3182
  %shr191.i.2662 = lshr i128 %mul189.i.2661, 64
  %conv193.i.2663 = and i128 %mul189.i.2661, 18446744073709551615
  %add171.i.2655 = add nuw nsw i128 %add157.i.2650, %conv180.i.2658
  %add182.i.2659 = add nuw nsw i128 %add171.i.2655, %shr164.i.2652
  %add195.i.2664 = add nuw nsw i128 %add182.i.2659, %conv193.i.2663
  %add198.i.2665 = add nuw nsw i128 %shr191.i.2662, %shr178.i.2657
  %mul203.i.2666 = mul nuw i128 %conv79.i.2958, %conv42.i.3190
  %shr205.i.2667 = lshr i128 %mul203.i.2666, 64
  %conv207.i.2668 = and i128 %mul203.i.2666, 18446744073709551615
  %add209.i.2669 = add nuw nsw i128 %add198.i.2665, %conv207.i.2668
  %add3.i.2537 = or i128 %add31.i.2596, 1267650600228229401496703205376
  %shl.i.i.2547 = shl nuw nsw i128 %add195.i.2664, 32
  %add.i.i.2548 = add i128 %shl.i.i.2547, %add168.i.2654
  %sub7.i.i.2552 = sub nsw i128 %add195.i.2664, %shr205.i.2667
  %shl13.i.i.2555 = shl i128 %add168.i.2654, 32
  %shl28.i.i.2563 = shl nuw nsw i128 %add209.i.2669, 32
  %shl32.i.i.2565 = shl nuw nsw i128 %add209.i.2669, 33
  %mul.i.i.2567 = shl nuw nsw i128 %add209.i.2669, 1
  %shl46.i.i.2572 = shl nuw nsw i128 %shr205.i.2667, 32
  %shl50.i.i.2574 = shl nuw nsw i128 %shr205.i.2667, 33
  %add34.i.2597 = add nuw nsw i128 %shr15.i.2587, 1267650600228229401427983728656
  %add45.i.2603 = add nuw nsw i128 %add34.i.2597, %conv43.i.2602
  %add58.i.2608 = add nuw nsw i128 %add45.i.2603, %shr27.i.2594
  %add72.i.2615 = add nuw nsw i128 %add58.i.2608, %conv56.i.2607
  %add6.i.2540 = add nuw nsw i128 %add72.i.2615, %conv70.i.2614
  %sub11.i.i.2554 = add nuw nsw i128 %add6.i.2540, %shl50.i.i.2574
  %sub23.i.i.2560 = add i128 %sub11.i.i.2554, %mul.i.i.2567
  %add37.i.i.2568 = sub i128 %sub23.i.i.2560, %sub7.i.i.2552
  %add52.i.i.2575 = sub i128 %add37.i.i.2568, %shl.i.i.2547
  %mul54.i.i.2576 = mul nuw nsw i128 %shr205.i.2667, 3
  %arrayidx.i.i.2327 = getelementptr inbounds i128, i128* %y1, i64 3
  %14 = load i128, i128* %arrayidx.i.i.2327, align 16, !tbaa !2
  %add.i.i.2328 = add i128 %14, 18446744069414584320
  %arrayidx6.i.i.2329 = getelementptr inbounds i128, i128* %y1, i64 2
  %15 = load i128, i128* %arrayidx6.i.i.2329, align 16, !tbaa !2
  %shr.i.i.2330 = lshr i128 %15, 64
  %add8.i.i.2331 = add i128 %add.i.i.2328, %shr.i.i.2330
  %conv12.i.i.2332 = and i128 %15, 18446744073709551615
  %add13.i.i.2333 = add nuw nsw i128 %conv12.i.i.2332, 18446673704965373952
  %16 = load i128, i128* %y1, align 16, !tbaa !2
  %add16.i.i.2334 = add i128 %16, 18446744073709551615
  %arrayidx18.i.i.2335 = getelementptr inbounds i128, i128* %y1, i64 1
  %17 = load i128, i128* %arrayidx18.i.i.2335, align 16, !tbaa !2
  %add19.i.i.2336 = add i128 %17, 1298074214633706907132628377272319
  %shr22.i.i.2337 = lshr i128 %add8.i.i.2331, 64
  %conv23.i.i.2338 = trunc i128 %shr22.i.i.2337 to i64
  %conv26.i.i.2339 = and i128 %add8.i.i.2331, 18446744073709551615
  %sub.i.i.2340 = sub nsw i128 %conv26.i.i.2339, %shr22.i.i.2337
  %shl.i.i.2341 = shl nuw nsw i128 %shr22.i.i.2337, 32
  %add32.i.i.2342 = add nsw i128 %sub.i.i.2340, %shl.i.i.2341
  %shr34.i.i.2343 = lshr i128 %add32.i.i.2342, 64
  %conv35.i.i.2344 = trunc i128 %shr34.i.i.2343 to i64
  %add36.i.i.2345 = add i64 %conv35.i.i.2344, %conv23.i.i.2338
  %conv39.i.i.2346 = and i128 %add32.i.i.2342, 18446744073709551615
  %sub43.i.i.2347 = sub nsw i128 %conv39.i.i.2346, %shr34.i.i.2343
  %shl45.i.i.2348 = shl nuw nsw i128 %shr34.i.i.2343, 32
  %add47.i.i.2349 = add nsw i128 %sub43.i.i.2347, %shl45.i.i.2348
  %conv48.i.i.2350 = zext i64 %add36.i.i.2345 to i128
  %add50.i.i.2351 = add i128 %add16.i.i.2334, %conv48.i.i.2350
  %shl52.i.i.2352 = shl nuw nsw i128 %conv48.i.i.2350, 32
  %sub54.i.i.2353 = sub i128 %add19.i.i.2336, %shl52.i.i.2352
  %shr56.i.i.2354 = lshr i128 %add47.i.i.2349, 64
  %conv57.i.i.2355 = trunc i128 %shr56.i.i.2354 to i64
  %sub58.i.i.2356 = sub i64 0, %conv57.i.i.2355
  %conv60.i.i.2357 = trunc i128 %add47.i.i.2349 to i64
  %and.i.i.2358 = and i64 %conv60.i.i.2357, 9223372036854775807
  %neg.i.i.2359 = sub nsw i64 9223372032559808512, %and.i.i.2358
  %sub62177.i.i.2360 = and i64 %neg.i.i.2359, %conv60.i.i.2357
  %and66.i.i.2361 = ashr i64 %sub62177.i.i.2360, 63
  %or.i.i.2362 = or i64 %and66.i.i.2361, %sub58.i.i.2356
  %conv68.i.i.2363 = zext i64 %or.i.i.2362 to i128
  %sub70.i.i.2364 = sub i128 %add50.i.i.2351, %conv68.i.i.2363
  %and71.i.i.2365 = and i64 %or.i.i.2362, 4294967295
  %conv72.i.i.2366 = zext i64 %and71.i.i.2365 to i128
  %sub74.i.i.2367 = sub i128 %sub54.i.i.2353, %conv72.i.i.2366
  %and75.i.i.2368 = and i64 %or.i.i.2362, -4294967295
  %conv76.i.i.2369 = zext i64 %and75.i.i.2368 to i128
  %sub78.i.i.2370 = sub nsw i128 %add47.i.i.2349, %conv76.i.i.2369
  %shr80.i.i.2371 = lshr i128 %sub70.i.i.2364, 64
  %add84.i.i.2372 = add i128 %sub74.i.i.2367, %shr80.i.i.2371
  %shr90.i.i.2374 = lshr i128 %add84.i.i.2372, 64
  %add94.i.i.2375 = add nuw nsw i128 %add13.i.i.2333, %shr90.i.i.2374
  %shr100.i.i.2377 = lshr i128 %add94.i.i.2375, 64
  %add104.i.i.2378 = add nsw i128 %sub78.i.i.2370, %shr100.i.i.2377
  %shr.i.2388 = lshr i128 %add52.i.i.2575, 64
  %add75.i.2616 = add nuw nsw i128 %shr41.i.2601, 1267650600246676145497398312976
  %add86.i.2622 = add nuw nsw i128 %add75.i.2616, %conv84.i.2621
  %add99.i.2627 = add nuw nsw i128 %add86.i.2622, %shr54.i.2606
  %add113.i.2632 = add nuw nsw i128 %add99.i.2627, %conv97.i.2626
  %add127.i.2639 = add nuw nsw i128 %add113.i.2632, %shr68.i.2613
  %add9.i.2543 = add nuw nsw i128 %add127.i.2639, %conv111.i.2631
  %sub.i.i.2550 = add i128 %add9.i.2543, %conv125.i.2638
  %add19.i.i.2558 = add i128 %sub.i.i.2550, %mul54.i.i.2576
  %sub41.i.i.2570 = sub i128 %add19.i.i.2558, %shl28.i.i.2563
  %add56.i.i.2577 = sub i128 %sub41.i.i.2570, %add.i.i.2548
  %add.i.2386 = add i128 %add56.i.i.2577, %shl13.i.i.2555
  %add8.i.2389 = add i128 %add.i.2386, %shr.i.2388
  %conv12.i.2390 = and i128 %add52.i.i.2575, 18446744073709551615
  %add13.i.2391 = add nuw nsw i128 %conv12.i.2390, 18446673704965373952
  %shr22.i.2395 = lshr i128 %add8.i.2389, 64
  %conv23.i.2396 = trunc i128 %shr22.i.2395 to i64
  %conv26.i.2397 = and i128 %add8.i.2389, 18446744073709551615
  %sub.i.2398 = sub nsw i128 %conv26.i.2397, %shr22.i.2395
  %shl.i.2399 = shl nuw nsw i128 %shr22.i.2395, 32
  %add32.i.2400 = add nsw i128 %sub.i.2398, %shl.i.2399
  %shr34.i.2401 = lshr i128 %add32.i.2400, 64
  %conv35.i.2402 = trunc i128 %shr34.i.2401 to i64
  %add36.i.2403 = add i64 %conv35.i.2402, %conv23.i.2396
  %conv39.i.2404 = and i128 %add32.i.2400, 18446744073709551615
  %sub43.i.2405 = sub nsw i128 %conv39.i.2404, %shr34.i.2401
  %shl45.i.2406 = shl nuw nsw i128 %shr34.i.2401, 32
  %add47.i.2407 = add nsw i128 %sub43.i.2405, %shl45.i.2406
  %conv48.i.2408 = zext i64 %add36.i.2403 to i128
  %shl52.i.2410 = shl nuw nsw i128 %conv48.i.2408, 32
  %shr56.i.2412 = lshr i128 %add47.i.2407, 64
  %conv57.i.2413 = trunc i128 %shr56.i.2412 to i64
  %sub58.i.2414 = sub i64 0, %conv57.i.2413
  %conv60.i.2415 = trunc i128 %add47.i.2407 to i64
  %and.i.2416 = and i64 %conv60.i.2415, 9223372036854775807
  %neg.i.2417 = sub nsw i64 9223372032559808512, %and.i.2416
  %sub62177.i.2418 = and i64 %neg.i.2417, %conv60.i.2415
  %and66.i.2419 = ashr i64 %sub62177.i.2418, 63
  %or.i.2420 = or i64 %and66.i.2419, %sub58.i.2414
  %conv68.i.2421 = zext i64 %or.i.2420 to i128
  %add3.i.i.2549 = add nuw nsw i128 %conv5.i.2582, 1267650600246676145501693280239
  %sub26.i.i.2562 = sub nsw i128 %add3.i.i.2549, %shr205.i.2667
  %sub30.i.i.2564 = sub nsw i128 %sub26.i.i.2562, %shl46.i.i.2572
  %sub44.i.i.2571 = sub nsw i128 %sub30.i.i.2564, %add209.i.2669
  %sub48.i.i.2573 = sub nsw i128 %sub44.i.i.2571, %shl28.i.i.2563
  %add16.i.2392 = add i128 %sub48.i.i.2573, %add.i.i.2548
  %add50.i.2409 = add i128 %add16.i.2392, %conv48.i.2408
  %sub70.i.2422 = sub i128 %add50.i.2409, %conv68.i.2421
  %and71.i.2423 = and i64 %or.i.2420, 4294967295
  %conv72.i.2424 = zext i64 %and71.i.2423 to i128
  %and75.i.2426 = and i64 %or.i.2420, -4294967295
  %conv76.i.2427 = zext i64 %and75.i.2426 to i128
  %sub78.i.2428 = sub nsw i128 %add47.i.2407, %conv76.i.2427
  %shr80.i.2429 = lshr i128 %sub70.i.2422, 64
  %add9.i.i.2553 = add nuw nsw i128 %add3.i.2537, 1298074214633706907132628377272319
  %sub15.i.i.2556 = add nuw nsw i128 %add9.i.i.2553, %shl32.i.i.2565
  %add34.i.i.2566 = add nsw i128 %sub15.i.i.2556, %sub7.i.i.2552
  %add19.i.2394 = sub i128 %add34.i.i.2566, %shl13.i.i.2555
  %sub54.i.2411 = sub i128 %add19.i.2394, %shl52.i.2410
  %sub74.i.2425 = sub i128 %sub54.i.2411, %conv72.i.2424
  %add84.i.2430 = add i128 %sub74.i.2425, %shr80.i.2429
  %shr90.i.2432 = lshr i128 %add84.i.2430, 64
  %add94.i.2433 = add nuw nsw i128 %add13.i.2391, %shr90.i.2432
  %shr100.i.2435 = lshr i128 %add94.i.2433, 64
  %add104.i.2436 = add nsw i128 %sub78.i.2428, %shr100.i.2435
  %conv.i.2442 = and i128 %sub70.i.i.2364, 18446744073709551615
  %conv2.i.2443 = and i128 %sub70.i.2422, 18446744073709551615
  %mul.i.2444 = mul nuw i128 %conv.i.2442, %conv2.i.2443
  %shr.i.2445 = lshr i128 %mul.i.2444, 64
  %conv5.i.2446 = and i128 %mul.i.2444, 18446744073709551615
  %conv12.i.2449 = and i128 %add84.i.2430, 18446744073709551615
  %mul13.i.2450 = mul nuw i128 %conv.i.2442, %conv12.i.2449
  %shr15.i.2451 = lshr i128 %mul13.i.2450, 64
  %conv17.i.2452 = and i128 %mul13.i.2450, 18446744073709551615
  %add.i.2453 = add nuw nsw i128 %conv17.i.2452, %shr.i.2445
  %conv22.i.2456 = and i128 %add84.i.i.2372, 18446744073709551615
  %mul25.i.2457 = mul nuw i128 %conv22.i.2456, %conv2.i.2443
  %shr27.i.2458 = lshr i128 %mul25.i.2457, 64
  %conv29.i.2459 = and i128 %mul25.i.2457, 18446744073709551615
  %add31.i.2460 = add nuw nsw i128 %add.i.2453, %conv29.i.2459
  %conv38.i.2463 = and i128 %add94.i.2433, 18446744073709551615
  %mul39.i.2464 = mul nuw i128 %conv.i.2442, %conv38.i.2463
  %shr41.i.2465 = lshr i128 %mul39.i.2464, 64
  %conv43.i.2466 = and i128 %mul39.i.2464, 18446744073709551615
  %mul52.i.2469 = mul nuw i128 %conv22.i.2456, %conv12.i.2449
  %shr54.i.2470 = lshr i128 %mul52.i.2469, 64
  %conv56.i.2471 = and i128 %mul52.i.2469, 18446744073709551615
  %conv63.i.2475 = and i128 %add94.i.i.2375, 18446744073709551615
  %mul66.i.2476 = mul nuw i128 %conv63.i.2475, %conv2.i.2443
  %shr68.i.2477 = lshr i128 %mul66.i.2476, 64
  %conv70.i.2478 = and i128 %mul66.i.2476, 18446744073709551615
  %conv79.i.2482 = and i128 %add104.i.2436, 18446744073709551615
  %mul80.i.2483 = mul nuw i128 %conv.i.2442, %conv79.i.2482
  %shr82.i.2484 = lshr i128 %mul80.i.2483, 64
  %conv84.i.2485 = and i128 %mul80.i.2483, 18446744073709551615
  %mul93.i.2488 = mul nuw i128 %conv22.i.2456, %conv38.i.2463
  %shr95.i.2489 = lshr i128 %mul93.i.2488, 64
  %conv97.i.2490 = and i128 %mul93.i.2488, 18446744073709551615
  %add102.i.2492 = add nuw nsw i128 %shr95.i.2489, %shr82.i.2484
  %mul107.i.2493 = mul nuw i128 %conv63.i.2475, %conv12.i.2449
  %shr109.i.2494 = lshr i128 %mul107.i.2493, 64
  %conv111.i.2495 = and i128 %mul107.i.2493, 18446744073709551615
  %conv118.i.2499 = and i128 %add104.i.i.2378, 18446744073709551615
  %mul121.i.2500 = mul nuw i128 %conv118.i.2499, %conv2.i.2443
  %shr123.i.2501 = lshr i128 %mul121.i.2500, 64
  %conv125.i.2502 = and i128 %mul121.i.2500, 18446744073709551615
  %mul135.i.2505 = mul nuw i128 %conv22.i.2456, %conv79.i.2482
  %shr137.i.2506 = lshr i128 %mul135.i.2505, 64
  %conv139.i.2507 = and i128 %mul135.i.2505, 18446744073709551615
  %mul148.i.2510 = mul nuw i128 %conv63.i.2475, %conv38.i.2463
  %shr150.i.2511 = lshr i128 %mul148.i.2510, 64
  %conv152.i.2512 = and i128 %mul148.i.2510, 18446744073709551615
  %add157.i.2514 = add nuw nsw i128 %shr150.i.2511, %shr137.i.2506
  %mul162.i.2515 = mul nuw i128 %conv118.i.2499, %conv12.i.2449
  %shr164.i.2516 = lshr i128 %mul162.i.2515, 64
  %conv166.i.2517 = and i128 %mul162.i.2515, 18446744073709551615
  %add116.i.2497 = add nuw nsw i128 %add102.i.2492, %conv139.i.2507
  %add130.i.2504 = add nuw nsw i128 %add116.i.2497, %shr109.i.2494
  %add141.i.2508 = add nuw nsw i128 %add130.i.2504, %conv152.i.2512
  %add154.i.2513 = add nuw nsw i128 %add141.i.2508, %shr123.i.2501
  %add168.i.2518 = add nuw nsw i128 %add154.i.2513, %conv166.i.2517
  %mul176.i.2520 = mul nuw i128 %conv63.i.2475, %conv79.i.2482
  %shr178.i.2521 = lshr i128 %mul176.i.2520, 64
  %conv180.i.2522 = and i128 %mul176.i.2520, 18446744073709551615
  %mul189.i.2525 = mul nuw i128 %conv118.i.2499, %conv38.i.2463
  %shr191.i.2526 = lshr i128 %mul189.i.2525, 64
  %conv193.i.2527 = and i128 %mul189.i.2525, 18446744073709551615
  %add171.i.2519 = add nuw nsw i128 %add157.i.2514, %conv180.i.2522
  %add182.i.2523 = add nuw nsw i128 %add171.i.2519, %shr164.i.2516
  %add195.i.2528 = add nuw nsw i128 %add182.i.2523, %conv193.i.2527
  %add198.i.2529 = add nuw nsw i128 %shr191.i.2526, %shr178.i.2521
  %mul203.i.2530 = mul nuw i128 %conv118.i.2499, %conv79.i.2482
  %shr205.i.2531 = lshr i128 %mul203.i.2530, 64
  %conv207.i.2532 = and i128 %mul203.i.2530, 18446744073709551615
  %add209.i.2533 = add nuw nsw i128 %add198.i.2529, %conv207.i.2532
  %add.i.2281 = add nuw nsw i128 %conv5.i.2446, 1267650600228229401427983728624
  %add3.i.2283 = or i128 %add31.i.2460, 1267650600228229401496703205376
  %shl.i.i.2293 = shl nuw nsw i128 %add195.i.2528, 32
  %add.i.i.2294 = add i128 %shl.i.i.2293, %add168.i.2518
  %sub7.i.i.2298 = sub nsw i128 %add195.i.2528, %shr205.i.2531
  %shl13.i.i.2301 = shl i128 %add168.i.2518, 32
  %shl28.i.i.2309 = shl nuw nsw i128 %add209.i.2533, 32
  %shl32.i.i.2311 = shl nuw nsw i128 %add209.i.2533, 33
  %add9.i.i.2299 = add nuw nsw i128 %shl32.i.i.2311, %add3.i.2283
  %sub15.i.i.2302 = add nsw i128 %add9.i.i.2299, %sub7.i.i.2298
  %add34.i.i.2312 = sub i128 %sub15.i.i.2302, %shl13.i.i.2301
  %mul.i.i.2313 = shl nuw nsw i128 %add209.i.2533, 1
  %shl46.i.i.2318 = shl nuw nsw i128 %shr205.i.2531, 32
  %add3.i.i.2295 = sub nsw i128 %add.i.2281, %shr205.i.2531
  %sub26.i.i.2308 = sub nsw i128 %add3.i.i.2295, %shl46.i.i.2318
  %sub30.i.i.2310 = sub nsw i128 %sub26.i.i.2308, %add209.i.2533
  %sub44.i.i.2317 = sub nsw i128 %sub30.i.i.2310, %shl28.i.i.2309
  %sub48.i.i.2319 = add i128 %sub44.i.i.2317, %add.i.i.2294
  %shl50.i.i.2320 = shl nuw nsw i128 %shr205.i.2531, 33
  %add34.i.2461 = add nuw nsw i128 %shr15.i.2451, 1267650600228229401427983728656
  %add45.i.2467 = add nuw nsw i128 %add34.i.2461, %conv43.i.2466
  %add58.i.2472 = add nuw nsw i128 %add45.i.2467, %shr27.i.2458
  %add72.i.2479 = add nuw nsw i128 %add58.i.2472, %conv56.i.2471
  %add6.i.2286 = add nuw nsw i128 %add72.i.2479, %conv70.i.2478
  %sub11.i.i.2300 = add nuw nsw i128 %add6.i.2286, %shl50.i.i.2320
  %sub23.i.i.2306 = add i128 %sub11.i.i.2300, %mul.i.i.2313
  %add37.i.i.2314 = sub i128 %sub23.i.i.2306, %sub7.i.i.2298
  %add52.i.i.2321 = sub i128 %add37.i.i.2314, %shl.i.i.2293
  %mul54.i.i.2322 = mul nuw nsw i128 %shr205.i.2531, 3
  %add61.i.2473 = add nuw nsw i128 %shr41.i.2465, 1267650600228229401427983728656
  %add75.i.2480 = add nuw nsw i128 %add61.i.2473, %conv84.i.2485
  %add86.i.2486 = add nuw nsw i128 %add75.i.2480, %shr54.i.2470
  %add99.i.2491 = add nuw nsw i128 %add86.i.2486, %conv97.i.2490
  %add113.i.2496 = add nuw nsw i128 %add99.i.2491, %shr68.i.2477
  %add127.i.2503 = add nuw nsw i128 %add113.i.2496, %conv111.i.2495
  %add9.i.2289 = add i128 %add127.i.2503, %conv125.i.2502
  %sub.i.i.2296 = add i128 %add9.i.2289, %mul54.i.i.2322
  %add19.i.i.2304 = sub i128 %sub.i.i.2296, %shl28.i.i.2309
  %sub41.i.i.2316 = sub i128 %add19.i.i.2304, %add.i.i.2294
  %add56.i.i.2323 = add i128 %sub41.i.i.2316, %shl13.i.i.2301
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load i128, i128* %x1, align 16, !tbaa !2
  %arrayidx2.i.2275 = getelementptr inbounds i128, i128* %x1, i64 1
  %19 = load i128, i128* %arrayidx2.i.2275, align 16, !tbaa !2
  %mul.i.2262 = shl i128 %2, 1
  %mul3.i.2264 = shl i128 %3, 1
  %mul6.i.2266 = shl i128 %1, 1
  %mul9.i.2268 = shl i128 %0, 1
  %20 = load i128, i128* %y1, align 16, !tbaa !2
  %arrayidx2.i.2256 = getelementptr inbounds i128, i128* %y1, i64 1
  %21 = load i128, i128* %arrayidx2.i.2256, align 16, !tbaa !2
  %arrayidx4.i.2258 = getelementptr inbounds i128, i128* %y1, i64 2
  %22 = load i128, i128* %arrayidx4.i.2258, align 16, !tbaa !2
  %arrayidx6.i.2260 = getelementptr inbounds i128, i128* %y1, i64 3
  %23 = load i128, i128* %arrayidx6.i.2260, align 16, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = phi i128 [ %9, %if.else ], [ %add56.i.i.2917, %if.then ]
  %sub23.i.i.29004143 = phi i128 [ %11, %if.else ], [ %add52.i.i.2915, %if.then ]
  %ftmp3.sroa.16.16.4142 = phi i128 [ %19, %if.else ], [ %add34.i.i.2906, %if.then ]
  %add3.i.i.28894141 = phi i128 [ %18, %if.else ], [ %sub48.i.i.2913, %if.then ]
  %sub17.i.26844140 = phi i128 [ %mul9.i.2268, %if.else ], [ %sub17.i.2684, %if.then ]
  %add4.i.26754139 = phi i128 [ %mul6.i.2266, %if.else ], [ %sub14.i.2682, %if.then ]
  %add2.i.26734138 = phi i128 [ %mul3.i.2264, %if.else ], [ %sub11.i.2680, %if.then ]
  %ftmp5.sroa.0.0.4137 = phi i128 [ %mul.i.2262, %if.else ], [ %sub.i.2678, %if.then ]
  %25 = phi i128 [ %23, %if.else ], [ %add56.i.i.2323, %if.then ]
  %sub23.i.i.23064136 = phi i128 [ %22, %if.else ], [ %add52.i.i.2321, %if.then ]
  %sub15.i.i.23024135 = phi i128 [ %21, %if.else ], [ %add34.i.i.2312, %if.then ]
  %add3.i.i.22954134 = phi i128 [ %20, %if.else ], [ %sub48.i.i.2319, %if.then ]
  %26 = load i64, i64* %x2, align 8, !tbaa !6
  %conv.i.2163 = zext i64 %26 to i128
  %conv2.i.2164 = and i128 %sub70.i.3267, 18446744073709551615
  %mul.i.2165 = mul nuw i128 %conv.i.2163, %conv2.i.2164
  %shr.i.2166 = lshr i128 %mul.i.2165, 64
  %conv5.i.2167 = and i128 %mul.i.2165, 18446744073709551615
  %conv12.i.2170 = and i128 %add84.i.3275, 18446744073709551615
  %mul13.i.2171 = mul nuw i128 %conv.i.2163, %conv12.i.2170
  %shr15.i.2172 = lshr i128 %mul13.i.2171, 64
  %conv17.i.2173 = and i128 %mul13.i.2171, 18446744073709551615
  %add.i.2174 = add nuw nsw i128 %conv17.i.2173, %shr.i.2166
  %arrayidx21.i.2176 = getelementptr inbounds i64, i64* %x2, i64 1
  %27 = load i64, i64* %arrayidx21.i.2176, align 8, !tbaa !6
  %conv22.i.2177 = zext i64 %27 to i128
  %mul25.i.2178 = mul nuw i128 %conv22.i.2177, %conv2.i.2164
  %shr27.i.2179 = lshr i128 %mul25.i.2178, 64
  %conv29.i.2180 = and i128 %mul25.i.2178, 18446744073709551615
  %add31.i.2181 = add nuw nsw i128 %add.i.2174, %conv29.i.2180
  %conv38.i.2184 = and i128 %add94.i.3278, 18446744073709551615
  %mul39.i.2185 = mul nuw i128 %conv.i.2163, %conv38.i.2184
  %shr41.i.2186 = lshr i128 %mul39.i.2185, 64
  %conv43.i.2187 = and i128 %mul39.i.2185, 18446744073709551615
  %mul52.i.2190 = mul nuw i128 %conv22.i.2177, %conv12.i.2170
  %shr54.i.2191 = lshr i128 %mul52.i.2190, 64
  %conv56.i.2192 = and i128 %mul52.i.2190, 18446744073709551615
  %arrayidx62.i.2195 = getelementptr inbounds i64, i64* %x2, i64 2
  %28 = load i64, i64* %arrayidx62.i.2195, align 8, !tbaa !6
  %conv63.i.2196 = zext i64 %28 to i128
  %mul66.i.2197 = mul nuw i128 %conv63.i.2196, %conv2.i.2164
  %shr68.i.2198 = lshr i128 %mul66.i.2197, 64
  %conv70.i.2199 = and i128 %mul66.i.2197, 18446744073709551615
  %conv79.i.2203 = and i128 %add104.i.3281, 18446744073709551615
  %mul80.i.2204 = mul nuw i128 %conv.i.2163, %conv79.i.2203
  %shr82.i.2205 = lshr i128 %mul80.i.2204, 64
  %conv84.i.2206 = and i128 %mul80.i.2204, 18446744073709551615
  %mul93.i.2209 = mul nuw i128 %conv22.i.2177, %conv38.i.2184
  %shr95.i.2210 = lshr i128 %mul93.i.2209, 64
  %conv97.i.2211 = and i128 %mul93.i.2209, 18446744073709551615
  %add102.i.2213 = add nuw nsw i128 %shr95.i.2210, %shr82.i.2205
  %mul107.i.2214 = mul nuw i128 %conv63.i.2196, %conv12.i.2170
  %shr109.i.2215 = lshr i128 %mul107.i.2214, 64
  %conv111.i.2216 = and i128 %mul107.i.2214, 18446744073709551615
  %arrayidx117.i.2219 = getelementptr inbounds i64, i64* %x2, i64 3
  %29 = load i64, i64* %arrayidx117.i.2219, align 8, !tbaa !6
  %conv118.i.2220 = zext i64 %29 to i128
  %mul121.i.2221 = mul nuw i128 %conv118.i.2220, %conv2.i.2164
  %shr123.i.2222 = lshr i128 %mul121.i.2221, 64
  %conv125.i.2223 = and i128 %mul121.i.2221, 18446744073709551615
  %mul135.i.2226 = mul nuw i128 %conv22.i.2177, %conv79.i.2203
  %shr137.i.2227 = lshr i128 %mul135.i.2226, 64
  %conv139.i.2228 = and i128 %mul135.i.2226, 18446744073709551615
  %mul148.i.2231 = mul nuw i128 %conv63.i.2196, %conv38.i.2184
  %shr150.i.2232 = lshr i128 %mul148.i.2231, 64
  %conv152.i.2233 = and i128 %mul148.i.2231, 18446744073709551615
  %add157.i.2235 = add nuw nsw i128 %shr150.i.2232, %shr137.i.2227
  %mul162.i.2236 = mul nuw i128 %conv118.i.2220, %conv12.i.2170
  %shr164.i.2237 = lshr i128 %mul162.i.2236, 64
  %conv166.i.2238 = and i128 %mul162.i.2236, 18446744073709551615
  %add116.i.2218 = add nuw nsw i128 %add102.i.2213, %conv139.i.2228
  %add130.i.2225 = add nuw nsw i128 %add116.i.2218, %shr109.i.2215
  %add141.i.2229 = add nuw nsw i128 %add130.i.2225, %conv152.i.2233
  %add154.i.2234 = add nuw nsw i128 %add141.i.2229, %shr123.i.2222
  %add168.i.2239 = add nuw nsw i128 %add154.i.2234, %conv166.i.2238
  %mul176.i.2241 = mul nuw i128 %conv63.i.2196, %conv79.i.2203
  %shr178.i.2242 = lshr i128 %mul176.i.2241, 64
  %conv180.i.2243 = and i128 %mul176.i.2241, 18446744073709551615
  %mul189.i.2246 = mul nuw i128 %conv118.i.2220, %conv38.i.2184
  %shr191.i.2247 = lshr i128 %mul189.i.2246, 64
  %conv193.i.2248 = and i128 %mul189.i.2246, 18446744073709551615
  %add171.i.2240 = add nuw nsw i128 %add157.i.2235, %conv180.i.2243
  %add182.i.2244 = add nuw nsw i128 %add171.i.2240, %shr164.i.2237
  %add195.i.2249 = add nuw nsw i128 %add182.i.2244, %conv193.i.2248
  %add198.i.2250 = add nuw nsw i128 %shr191.i.2247, %shr178.i.2242
  %mul203.i.2251 = mul nuw i128 %conv118.i.2220, %conv79.i.2203
  %shr205.i.2252 = lshr i128 %mul203.i.2251, 64
  %conv207.i.2253 = and i128 %mul203.i.2251, 18446744073709551615
  %add209.i.2254 = add nuw nsw i128 %add198.i.2250, %conv207.i.2253
  %add3.i.2122 = or i128 %add31.i.2181, 1267650600228229401496703205376
  %shl.i.i.2132 = shl nuw nsw i128 %add195.i.2249, 32
  %add.i.i.2133 = add i128 %shl.i.i.2132, %add168.i.2239
  %sub7.i.i.2137 = sub nsw i128 %add195.i.2249, %shr205.i.2252
  %shl13.i.i.2140 = shl i128 %add168.i.2239, 32
  %shl28.i.i.2148 = shl nuw nsw i128 %add209.i.2254, 32
  %shl32.i.i.2150 = shl nuw nsw i128 %add209.i.2254, 33
  %mul.i.i.2152 = shl nuw nsw i128 %add209.i.2254, 1
  %shl46.i.i.2157 = shl nuw nsw i128 %shr205.i.2252, 32
  %shl50.i.i.2159 = shl nuw nsw i128 %shr205.i.2252, 33
  %mul54.i.i.2161 = mul nuw nsw i128 %shr205.i.2252, 3
  %add3.i.i.2134 = sub i128 163526927429441592784209900992496, %add3.i.i.28894141
  %sub26.i.i.2147 = add i128 %add3.i.i.2134, %conv5.i.2167
  %sub30.i.i.2149 = sub i128 %sub26.i.i.2147, %shr205.i.2252
  %sub44.i.i.2156 = sub i128 %sub30.i.i.2149, %shl46.i.i.2157
  %sub48.i.i.2158 = sub i128 %sub44.i.i.2156, %add209.i.2254
  %add.i.2106 = sub i128 %sub48.i.i.2158, %shl28.i.i.2148
  %sub.i.2113 = add i128 %add.i.2106, %add.i.i.2133
  %add9.i.i.2138 = sub i128 162259276829213363391578010288128, %ftmp3.sroa.16.16.4142
  %sub15.i.i.2141 = add i128 %add9.i.i.2138, %add3.i.2122
  %add34.i.i.2151 = add i128 %sub15.i.i.2141, %shl32.i.i.2150
  %add2.i.2108 = add i128 %add34.i.i.2151, %sub7.i.i.2137
  %sub11.i.2115 = sub i128 %add2.i.2108, %shl13.i.i.2140
  %add45.i.2188 = sub i128 163526927429441592784209900996624, %sub23.i.i.29004143
  %add58.i.2193 = add i128 %add45.i.2188, %shr15.i.2172
  %add72.i.2200 = add i128 %add58.i.2193, %conv43.i.2187
  %add6.i.2125 = add i128 %add72.i.2200, %shr27.i.2179
  %sub11.i.i.2139 = add i128 %add6.i.2125, %conv56.i.2192
  %sub23.i.i.2145 = add i128 %sub11.i.i.2139, %conv70.i.2199
  %add37.i.i.2153 = add i128 %sub23.i.i.2145, %shl50.i.i.2159
  %add52.i.i.2160 = add i128 %add37.i.i.2153, %mul.i.i.2152
  %add4.i.2110 = sub i128 %add52.i.i.2160, %sub7.i.i.2137
  %sub14.i.2117 = sub i128 %add4.i.2110, %shl.i.i.2132
  %add75.i.2201 = sub i128 163526927429441592784209900996624, %24
  %add86.i.2207 = add i128 %add75.i.2201, %shr41.i.2186
  %add99.i.2212 = add i128 %add86.i.2207, %conv84.i.2206
  %add113.i.2217 = add i128 %add99.i.2212, %shr54.i.2191
  %add127.i.2224 = add i128 %add113.i.2217, %conv97.i.2211
  %add9.i.2128 = add i128 %add127.i.2224, %shr68.i.2198
  %sub.i.i.2135 = add i128 %add9.i.2128, %conv111.i.2216
  %add19.i.i.2143 = add i128 %sub.i.i.2135, %conv125.i.2223
  %sub41.i.i.2155 = add i128 %add19.i.i.2143, %mul54.i.i.2161
  %add56.i.i.2162 = sub i128 %sub41.i.i.2155, %shl28.i.i.2148
  %add6.i.2112 = sub i128 %add56.i.i.2162, %add.i.i.2133
  %sub17.i.2119 = add i128 %add6.i.2112, %shl13.i.i.2140
  %add.i.2050 = add i128 %sub17.i.2119, 18446744069414584320
  %shr.i.2052 = lshr i128 %sub14.i.2117, 64
  %add8.i.2053 = add i128 %add.i.2050, %shr.i.2052
  %conv12.i.2054 = and i128 %sub14.i.2117, 18446744073709551615
  %add13.i.2055 = add nuw nsw i128 %conv12.i.2054, 18446673704965373952
  %add16.i.2056 = add i128 %sub.i.2113, 18446744073709551615
  %add19.i.2058 = add i128 %sub11.i.2115, 1298074214633706907132628377272319
  %shr22.i.2059 = lshr i128 %add8.i.2053, 64
  %conv23.i.2060 = trunc i128 %shr22.i.2059 to i64
  %conv26.i.2061 = and i128 %add8.i.2053, 18446744073709551615
  %sub.i.2062 = sub nsw i128 %conv26.i.2061, %shr22.i.2059
  %shl.i.2063 = shl nuw nsw i128 %shr22.i.2059, 32
  %add32.i.2064 = add nsw i128 %sub.i.2062, %shl.i.2063
  %shr34.i.2065 = lshr i128 %add32.i.2064, 64
  %conv35.i.2066 = trunc i128 %shr34.i.2065 to i64
  %add36.i.2067 = add i64 %conv35.i.2066, %conv23.i.2060
  %conv39.i.2068 = and i128 %add32.i.2064, 18446744073709551615
  %sub43.i.2069 = sub nsw i128 %conv39.i.2068, %shr34.i.2065
  %shl45.i.2070 = shl nuw nsw i128 %shr34.i.2065, 32
  %add47.i.2071 = add nsw i128 %sub43.i.2069, %shl45.i.2070
  %conv48.i.2072 = zext i64 %add36.i.2067 to i128
  %add50.i.2073 = add i128 %add16.i.2056, %conv48.i.2072
  %shl52.i.2074 = shl nuw nsw i128 %conv48.i.2072, 32
  %sub54.i.2075 = sub i128 %add19.i.2058, %shl52.i.2074
  %shr56.i.2076 = lshr i128 %add47.i.2071, 64
  %conv57.i.2077 = trunc i128 %shr56.i.2076 to i64
  %sub58.i.2078 = sub i64 0, %conv57.i.2077
  %conv60.i.2079 = trunc i128 %add47.i.2071 to i64
  %and.i.2080 = and i64 %conv60.i.2079, 9223372036854775807
  %neg.i.2081 = sub nsw i64 9223372032559808512, %and.i.2080
  %sub62177.i.2082 = and i64 %neg.i.2081, %conv60.i.2079
  %and66.i.2083 = ashr i64 %sub62177.i.2082, 63
  %or.i.2084 = or i64 %and66.i.2083, %sub58.i.2078
  %conv68.i.2085 = zext i64 %or.i.2084 to i128
  %sub70.i.2086 = sub i128 %add50.i.2073, %conv68.i.2085
  %and71.i.2087 = and i64 %or.i.2084, 4294967295
  %conv72.i.2088 = zext i64 %and71.i.2087 to i128
  %sub74.i.2089 = sub i128 %sub54.i.2075, %conv72.i.2088
  %and75.i.2090 = and i64 %or.i.2084, -4294967295
  %conv76.i.2091 = zext i64 %and75.i.2090 to i128
  %sub78.i.2092 = sub nsw i128 %add47.i.2071, %conv76.i.2091
  %shr80.i.2093 = lshr i128 %sub70.i.2086, 64
  %add84.i.2094 = add i128 %sub74.i.2089, %shr80.i.2093
  %conv86.i.2095 = trunc i128 %sub70.i.2086 to i64
  %shr90.i.2096 = lshr i128 %add84.i.2094, 64
  %add94.i.2097 = add nuw nsw i128 %add13.i.2055, %shr90.i.2096
  %conv96.i.2098 = trunc i128 %add84.i.2094 to i64
  %shr100.i.2099 = lshr i128 %add94.i.2097, 64
  %add104.i.2100 = add nsw i128 %shr100.i.2099, %sub78.i.2092
  %conv106.i.2101 = trunc i128 %add94.i.2097 to i64
  %conv119.i.2104 = trunc i128 %add104.i.2100 to i64
  %or.i.20084147 = or i128 %add84.i.2094, %sub70.i.2086
  %or3.i.20104148 = or i128 %or.i.20084147, %add94.i.2097
  %or5.i.20124149 = or i128 %or3.i.20104148, %add104.i.2100
  %or5.i.2012 = trunc i128 %or5.i.20124149 to i64
  %dec.i.2013 = add i64 %or5.i.2012, -1
  %shl.i.2014 = shl i64 %dec.i.2013, 32
  %and.i.2015 = and i64 %shl.i.2014, %dec.i.2013
  %shl6.i.2016 = shl i64 %and.i.2015, 16
  %and7.i.2017 = and i64 %shl6.i.2016, %and.i.2015
  %shl8.i.2018 = shl i64 %and7.i.2017, 8
  %and9.i.2019 = and i64 %shl8.i.2018, %and7.i.2017
  %shl10.i.2020 = shl i64 %and9.i.2019, 4
  %and11.i.2021 = and i64 %shl10.i.2020, %and9.i.2019
  %shl12.i.2022 = shl i64 %and11.i.2021, 2
  %and13.i.2023 = and i64 %shl12.i.2022, %and11.i.2021
  %shl14.i.2024 = shl i64 %and13.i.2023, 1
  %and15.i.2025 = and i64 %shl14.i.2024, %and13.i.2023
  %xor.i.2026 = xor i64 %conv86.i.2095, -1
  %xor18.i.2027 = xor i64 %conv96.i.2098, 4294967295
  %or19.i.2028 = or i64 %xor18.i.2027, %xor.i.2026
  %or22.i.2029 = or i64 %or19.i.2028, %conv106.i.2101
  %xor24.i.2030 = xor i64 %conv119.i.2104, -4294967295
  %or25.i.2031 = or i64 %or22.i.2029, %xor24.i.2030
  %dec26.i.2032 = add i64 %or25.i.2031, -1
  %shl27.i.2033 = shl i64 %dec26.i.2032, 32
  %and28.i.2034 = and i64 %shl27.i.2033, %dec26.i.2032
  %shl29.i.2035 = shl i64 %and28.i.2034, 16
  %and30.i.2036 = and i64 %shl29.i.2035, %and28.i.2034
  %shl31.i.2037 = shl i64 %and30.i.2036, 8
  %and32.i.2038 = and i64 %shl31.i.2037, %and30.i.2036
  %shl33.i.2039 = shl i64 %and32.i.2038, 4
  %and34.i.2040 = and i64 %shl33.i.2039, %and32.i.2038
  %shl35.i.2041 = shl i64 %and34.i.2040, 2
  %and36.i.2042 = and i64 %shl35.i.2041, %and34.i.2040
  %shl37.i.2043 = shl i64 %and36.i.2042, 1
  %and38.i.2044 = and i64 %shl37.i.2043, %and36.i.2042
  %sub86.i.2045 = or i64 %and38.i.2044, %and15.i.2025
  %or41.i.2046 = ashr i64 %sub86.i.2045, 63
  %coerce64.sroa.2.0.insert.ext = zext i64 %or41.i.2046 to i128
  %coerce64.sroa.2.0.insert.shift = shl nuw i128 %coerce64.sroa.2.0.insert.ext, 64
  %coerce64.sroa.0.0.insert.insert = or i128 %coerce64.sroa.2.0.insert.shift, %coerce64.sroa.2.0.insert.ext
  %add.i.i.1858 = add i128 %sub17.i.26844140, 18446744069414584320
  %shr.i.i.1860 = lshr i128 %add4.i.26754139, 64
  %add8.i.i.1861 = add i128 %add.i.i.1858, %shr.i.i.1860
  %conv12.i.i.1862 = and i128 %add4.i.26754139, 18446744073709551615
  %add13.i.i.1863 = add nuw nsw i128 %conv12.i.i.1862, 18446673704965373952
  %add16.i.i.1864 = add i128 %ftmp5.sroa.0.0.4137, 18446744073709551615
  %add19.i.i.1866 = add i128 %add2.i.26734138, 1298074214633706907132628377272319
  %shr22.i.i.1867 = lshr i128 %add8.i.i.1861, 64
  %conv23.i.i.1868 = trunc i128 %shr22.i.i.1867 to i64
  %conv26.i.i.1869 = and i128 %add8.i.i.1861, 18446744073709551615
  %sub.i.i.1870 = sub nsw i128 %conv26.i.i.1869, %shr22.i.i.1867
  %shl.i.i.1871 = shl nuw nsw i128 %shr22.i.i.1867, 32
  %add32.i.i.1872 = add nsw i128 %sub.i.i.1870, %shl.i.i.1871
  %shr34.i.i.1873 = lshr i128 %add32.i.i.1872, 64
  %conv35.i.i.1874 = trunc i128 %shr34.i.i.1873 to i64
  %add36.i.i.1875 = add i64 %conv35.i.i.1874, %conv23.i.i.1868
  %conv39.i.i.1876 = and i128 %add32.i.i.1872, 18446744073709551615
  %sub43.i.i.1877 = sub nsw i128 %conv39.i.i.1876, %shr34.i.i.1873
  %shl45.i.i.1878 = shl nuw nsw i128 %shr34.i.i.1873, 32
  %add47.i.i.1879 = add nsw i128 %sub43.i.i.1877, %shl45.i.i.1878
  %conv48.i.i.1880 = zext i64 %add36.i.i.1875 to i128
  %add50.i.i.1881 = add i128 %add16.i.i.1864, %conv48.i.i.1880
  %shl52.i.i.1882 = shl nuw nsw i128 %conv48.i.i.1880, 32
  %sub54.i.i.1883 = sub i128 %add19.i.i.1866, %shl52.i.i.1882
  %shr56.i.i.1884 = lshr i128 %add47.i.i.1879, 64
  %conv57.i.i.1885 = trunc i128 %shr56.i.i.1884 to i64
  %sub58.i.i.1886 = sub i64 0, %conv57.i.i.1885
  %conv60.i.i.1887 = trunc i128 %add47.i.i.1879 to i64
  %and.i.i.1888 = and i64 %conv60.i.i.1887, 9223372036854775807
  %neg.i.i.1889 = sub nsw i64 9223372032559808512, %and.i.i.1888
  %sub62177.i.i.1890 = and i64 %neg.i.i.1889, %conv60.i.i.1887
  %and66.i.i.1891 = ashr i64 %sub62177.i.i.1890, 63
  %or.i.i.1892 = or i64 %and66.i.i.1891, %sub58.i.i.1886
  %conv68.i.i.1893 = zext i64 %or.i.i.1892 to i128
  %sub70.i.i.1894 = sub i128 %add50.i.i.1881, %conv68.i.i.1893
  %and71.i.i.1895 = and i64 %or.i.i.1892, 4294967295
  %conv72.i.i.1896 = zext i64 %and71.i.i.1895 to i128
  %sub74.i.i.1897 = sub i128 %sub54.i.i.1883, %conv72.i.i.1896
  %and75.i.i.1898 = and i64 %or.i.i.1892, -4294967295
  %conv76.i.i.1899 = zext i64 %and75.i.i.1898 to i128
  %sub78.i.i.1900 = sub nsw i128 %add47.i.i.1879, %conv76.i.i.1899
  %shr80.i.i.1901 = lshr i128 %sub70.i.i.1894, 64
  %add84.i.i.1902 = add i128 %sub74.i.i.1897, %shr80.i.i.1901
  %shr90.i.i.1904 = lshr i128 %add84.i.i.1902, 64
  %add94.i.i.1905 = add nuw nsw i128 %add13.i.i.1863, %shr90.i.i.1904
  %shr100.i.i.1907 = lshr i128 %add94.i.i.1905, 64
  %add104.i.i.1908 = add nsw i128 %sub78.i.i.1900, %shr100.i.i.1907
  %conv.i.1914 = and i128 %sub70.i.2086, 18446744073709551615
  %conv2.i.1915 = and i128 %sub70.i.i.1894, 18446744073709551615
  %mul.i.1916 = mul nuw i128 %conv.i.1914, %conv2.i.1915
  %conv12.i.1921 = and i128 %add84.i.i.1902, 18446744073709551615
  %mul13.i.1922 = mul nuw i128 %conv.i.1914, %conv12.i.1921
  %conv22.i.1928 = and i128 %add84.i.2094, 18446744073709551615
  %mul25.i.1929 = mul nuw i128 %conv22.i.1928, %conv2.i.1915
  %conv38.i.1935 = and i128 %add94.i.i.1905, 18446744073709551615
  %mul39.i.1936 = mul nuw i128 %conv.i.1914, %conv38.i.1935
  %mul52.i.1941 = mul nuw i128 %conv22.i.1928, %conv12.i.1921
  %conv63.i.1947 = and i128 %add94.i.2097, 18446744073709551615
  %mul66.i.1948 = mul nuw i128 %conv63.i.1947, %conv2.i.1915
  %conv79.i.1954 = and i128 %add104.i.i.1908, 18446744073709551615
  %mul80.i.1955 = mul nuw i128 %conv.i.1914, %conv79.i.1954
  %shr82.i.1956 = lshr i128 %mul80.i.1955, 64
  %mul93.i.1960 = mul nuw i128 %conv22.i.1928, %conv38.i.1935
  %shr95.i.1961 = lshr i128 %mul93.i.1960, 64
  %add102.i.1964 = add nuw nsw i128 %shr95.i.1961, %shr82.i.1956
  %mul107.i.1965 = mul nuw i128 %conv63.i.1947, %conv12.i.1921
  %shr109.i.1966 = lshr i128 %mul107.i.1965, 64
  %conv118.i.1971 = and i128 %add104.i.2100, 18446744073709551615
  %mul121.i.1972 = mul nuw i128 %conv118.i.1971, %conv2.i.1915
  %shr123.i.1973 = lshr i128 %mul121.i.1972, 64
  %mul135.i.1977 = mul nuw i128 %conv22.i.1928, %conv79.i.1954
  %shr137.i.1978 = lshr i128 %mul135.i.1977, 64
  %conv139.i.1979 = and i128 %mul135.i.1977, 18446744073709551615
  %mul148.i.1982 = mul nuw i128 %conv63.i.1947, %conv38.i.1935
  %shr150.i.1983 = lshr i128 %mul148.i.1982, 64
  %conv152.i.1984 = and i128 %mul148.i.1982, 18446744073709551615
  %add157.i.1986 = add nuw nsw i128 %shr150.i.1983, %shr137.i.1978
  %mul162.i.1987 = mul nuw i128 %conv118.i.1971, %conv12.i.1921
  %shr164.i.1988 = lshr i128 %mul162.i.1987, 64
  %conv166.i.1989 = and i128 %mul162.i.1987, 18446744073709551615
  %add116.i.1969 = add nuw nsw i128 %add102.i.1964, %conv139.i.1979
  %add130.i.1976 = add nuw nsw i128 %add116.i.1969, %shr109.i.1966
  %add141.i.1980 = add nuw nsw i128 %add130.i.1976, %conv152.i.1984
  %add154.i.1985 = add nuw nsw i128 %add141.i.1980, %shr123.i.1973
  %add168.i.1990 = add nuw nsw i128 %add154.i.1985, %conv166.i.1989
  %mul176.i.1992 = mul nuw i128 %conv63.i.1947, %conv79.i.1954
  %shr178.i.1993 = lshr i128 %mul176.i.1992, 64
  %conv180.i.1994 = and i128 %mul176.i.1992, 18446744073709551615
  %mul189.i.1997 = mul nuw i128 %conv118.i.1971, %conv38.i.1935
  %shr191.i.1998 = lshr i128 %mul189.i.1997, 64
  %conv193.i.1999 = and i128 %mul189.i.1997, 18446744073709551615
  %add171.i.1991 = add nuw nsw i128 %add157.i.1986, %conv180.i.1994
  %add182.i.1995 = add nuw nsw i128 %add171.i.1991, %shr164.i.1988
  %add195.i.2000 = add nuw nsw i128 %add182.i.1995, %conv193.i.1999
  %add198.i.2001 = add nuw nsw i128 %shr191.i.1998, %shr178.i.1993
  %mul203.i.2002 = mul nuw i128 %conv118.i.1971, %conv79.i.1954
  %shr205.i.2003 = lshr i128 %mul203.i.2002, 64
  %conv207.i.2004 = and i128 %mul203.i.2002, 18446744073709551615
  %add209.i.2005 = add nuw nsw i128 %add198.i.2001, %conv207.i.2004
  %shl.i.i.1824 = shl nuw nsw i128 %add195.i.2000, 32
  %add.i.i.1825 = add i128 %shl.i.i.1824, %add168.i.1990
  %sub7.i.i.1829 = sub nsw i128 %add195.i.2000, %shr205.i.2003
  %shl13.i.i.1832 = shl i128 %add168.i.1990, 32
  %shl28.i.i.1840 = shl nuw nsw i128 %add209.i.2005, 32
  %mul.i.1721 = mul nuw i128 %conv2.i.2164, %conv.i.3330
  %shr.i.1722 = lshr i128 %mul.i.1721, 64
  %conv5.i.1723 = and i128 %mul.i.1721, 18446744073709551615
  %mul13.i.1727 = mul nuw i128 %conv2.i.2164, %conv12.i.3336
  %shr15.i.1728 = lshr i128 %mul13.i.1727, 64
  %conv17.i.1729 = and i128 %mul13.i.1727, 18446744073709551615
  %add.i.1730 = add nuw nsw i128 %conv17.i.1729, %shr.i.1722
  %mul25.i.1734 = mul nuw i128 %conv12.i.2170, %conv.i.3330
  %shr27.i.1735 = lshr i128 %mul25.i.1734, 64
  %conv29.i.1736 = and i128 %mul25.i.1734, 18446744073709551615
  %add31.i.1737 = add nuw nsw i128 %add.i.1730, %conv29.i.1736
  %mul39.i.1741 = mul nuw i128 %conv2.i.2164, %conv27.i.3344
  %shr41.i.1742 = lshr i128 %mul39.i.1741, 64
  %conv43.i.1743 = and i128 %mul39.i.1741, 18446744073709551615
  %mul52.i.1746 = mul nuw i128 %conv12.i.2170, %conv12.i.3336
  %shr54.i.1747 = lshr i128 %mul52.i.1746, 64
  %conv56.i.1748 = and i128 %mul52.i.1746, 18446744073709551615
  %mul66.i.1753 = mul nuw i128 %conv38.i.2184, %conv.i.3330
  %shr68.i.1754 = lshr i128 %mul66.i.1753, 64
  %conv70.i.1755 = and i128 %mul66.i.1753, 18446744073709551615
  %mul80.i.1760 = mul nuw i128 %conv2.i.2164, %conv42.i.3352
  %shr82.i.1761 = lshr i128 %mul80.i.1760, 64
  %conv84.i.1762 = and i128 %mul80.i.1760, 18446744073709551615
  %mul93.i.1765 = mul nuw i128 %conv12.i.2170, %conv27.i.3344
  %shr95.i.1766 = lshr i128 %mul93.i.1765, 64
  %conv97.i.1767 = and i128 %mul93.i.1765, 18446744073709551615
  %add102.i.1769 = add nuw nsw i128 %shr95.i.1766, %shr82.i.1761
  %mul107.i.1770 = mul nuw i128 %conv38.i.2184, %conv12.i.3336
  %shr109.i.1771 = lshr i128 %mul107.i.1770, 64
  %conv111.i.1772 = and i128 %mul107.i.1770, 18446744073709551615
  %mul121.i.1777 = mul nuw i128 %conv79.i.2203, %conv.i.3330
  %shr123.i.1778 = lshr i128 %mul121.i.1777, 64
  %conv125.i.1779 = and i128 %mul121.i.1777, 18446744073709551615
  %mul135.i.1782 = mul nuw i128 %conv12.i.2170, %conv42.i.3352
  %shr137.i.1783 = lshr i128 %mul135.i.1782, 64
  %conv139.i.1784 = and i128 %mul135.i.1782, 18446744073709551615
  %mul148.i.1787 = mul nuw i128 %conv38.i.2184, %conv27.i.3344
  %shr150.i.1788 = lshr i128 %mul148.i.1787, 64
  %conv152.i.1789 = and i128 %mul148.i.1787, 18446744073709551615
  %add157.i.1791 = add nuw nsw i128 %shr150.i.1788, %shr137.i.1783
  %mul162.i.1792 = mul nuw i128 %conv79.i.2203, %conv12.i.3336
  %shr164.i.1793 = lshr i128 %mul162.i.1792, 64
  %conv166.i.1794 = and i128 %mul162.i.1792, 18446744073709551615
  %add116.i.1774 = add nuw nsw i128 %add102.i.1769, %conv139.i.1784
  %add130.i.1781 = add nuw nsw i128 %add116.i.1774, %shr109.i.1771
  %add141.i.1785 = add nuw nsw i128 %add130.i.1781, %conv152.i.1789
  %add154.i.1790 = add nuw nsw i128 %add141.i.1785, %shr123.i.1778
  %add168.i.1795 = add nuw nsw i128 %add154.i.1790, %conv166.i.1794
  %mul176.i.1797 = mul nuw i128 %conv38.i.2184, %conv42.i.3352
  %shr178.i.1798 = lshr i128 %mul176.i.1797, 64
  %conv180.i.1799 = and i128 %mul176.i.1797, 18446744073709551615
  %mul189.i.1802 = mul nuw i128 %conv79.i.2203, %conv27.i.3344
  %shr191.i.1803 = lshr i128 %mul189.i.1802, 64
  %conv193.i.1804 = and i128 %mul189.i.1802, 18446744073709551615
  %add171.i.1796 = add nuw nsw i128 %add157.i.1791, %conv180.i.1799
  %add182.i.1800 = add nuw nsw i128 %add171.i.1796, %shr164.i.1793
  %add195.i.1805 = add nuw nsw i128 %add182.i.1800, %conv193.i.1804
  %add198.i.1806 = add nuw nsw i128 %shr191.i.1803, %shr178.i.1798
  %mul203.i.1807 = mul nuw i128 %conv79.i.2203, %conv42.i.3352
  %shr205.i.1808 = lshr i128 %mul203.i.1807, 64
  %conv207.i.1809 = and i128 %mul203.i.1807, 18446744073709551615
  %add209.i.1810 = add nuw nsw i128 %add198.i.1806, %conv207.i.1809
  %add3.i.1678 = or i128 %add31.i.1737, 1267650600228229401496703205376
  %shl.i.i.1688 = shl nuw nsw i128 %add195.i.1805, 32
  %add.i.i.1689 = add i128 %shl.i.i.1688, %add168.i.1795
  %sub7.i.i.1693 = sub nsw i128 %add195.i.1805, %shr205.i.1808
  %shl13.i.i.1696 = shl i128 %add168.i.1795, 32
  %shl28.i.i.1704 = shl nuw nsw i128 %add209.i.1810, 32
  %shl32.i.i.1706 = shl nuw nsw i128 %add209.i.1810, 33
  %mul.i.i.1708 = shl nuw nsw i128 %add209.i.1810, 1
  %shl46.i.i.1713 = shl nuw nsw i128 %shr205.i.1808, 32
  %shl50.i.i.1715 = shl nuw nsw i128 %shr205.i.1808, 33
  %add34.i.1738 = add nuw nsw i128 %shr15.i.1728, 1267650600228229401427983728656
  %add45.i.1744 = add nuw nsw i128 %add34.i.1738, %conv43.i.1743
  %add58.i.1749 = add nuw nsw i128 %add45.i.1744, %shr27.i.1735
  %add72.i.1756 = add nuw nsw i128 %add58.i.1749, %conv56.i.1748
  %add6.i.1681 = add nuw nsw i128 %add72.i.1756, %conv70.i.1755
  %sub11.i.i.1695 = add nuw nsw i128 %add6.i.1681, %shl50.i.i.1715
  %sub23.i.i.1701 = add i128 %sub11.i.i.1695, %mul.i.i.1708
  %add37.i.i.1709 = sub i128 %sub23.i.i.1701, %sub7.i.i.1693
  %add52.i.i.1716 = sub i128 %add37.i.i.1709, %shl.i.i.1688
  %mul54.i.i.1717 = mul nuw nsw i128 %shr205.i.1808, 3
  %shr.i.i.1529 = lshr i128 %add52.i.i.1716, 64
  %add75.i.1757 = add nuw nsw i128 %shr41.i.1742, 1267650600246676145497398312976
  %add86.i.1763 = add nuw nsw i128 %add75.i.1757, %conv84.i.1762
  %add99.i.1768 = add nuw nsw i128 %add86.i.1763, %shr54.i.1747
  %add113.i.1773 = add nuw nsw i128 %add99.i.1768, %conv97.i.1767
  %add127.i.1780 = add nuw nsw i128 %add113.i.1773, %shr68.i.1754
  %add9.i.1684 = add nuw nsw i128 %add127.i.1780, %conv111.i.1772
  %sub.i.i.1691 = add i128 %add9.i.1684, %conv125.i.1779
  %add19.i.i.1699 = add i128 %sub.i.i.1691, %mul54.i.i.1717
  %sub41.i.i.1711 = sub i128 %add19.i.i.1699, %shl28.i.i.1704
  %add56.i.i.1718 = sub i128 %sub41.i.i.1711, %add.i.i.1689
  %add.i.i.1527 = add i128 %add56.i.i.1718, %shl13.i.i.1696
  %add8.i.i.1530 = add i128 %add.i.i.1527, %shr.i.i.1529
  %conv12.i.i.1531 = and i128 %add52.i.i.1716, 18446744073709551615
  %add13.i.i.1532 = add nuw nsw i128 %conv12.i.i.1531, 18446673704965373952
  %shr22.i.i.1536 = lshr i128 %add8.i.i.1530, 64
  %conv23.i.i.1537 = trunc i128 %shr22.i.i.1536 to i64
  %conv26.i.i.1538 = and i128 %add8.i.i.1530, 18446744073709551615
  %sub.i.i.1539 = sub nsw i128 %conv26.i.i.1538, %shr22.i.i.1536
  %shl.i.i.1540 = shl nuw nsw i128 %shr22.i.i.1536, 32
  %add32.i.i.1541 = add nsw i128 %sub.i.i.1539, %shl.i.i.1540
  %shr34.i.i.1542 = lshr i128 %add32.i.i.1541, 64
  %conv35.i.i.1543 = trunc i128 %shr34.i.i.1542 to i64
  %add36.i.i.1544 = add i64 %conv35.i.i.1543, %conv23.i.i.1537
  %conv39.i.i.1545 = and i128 %add32.i.i.1541, 18446744073709551615
  %sub43.i.i.1546 = sub nsw i128 %conv39.i.i.1545, %shr34.i.i.1542
  %shl45.i.i.1547 = shl nuw nsw i128 %shr34.i.i.1542, 32
  %add47.i.i.1548 = add nsw i128 %sub43.i.i.1546, %shl45.i.i.1547
  %conv48.i.i.1549 = zext i64 %add36.i.i.1544 to i128
  %shl52.i.i.1551 = shl nuw nsw i128 %conv48.i.i.1549, 32
  %shr56.i.i.1553 = lshr i128 %add47.i.i.1548, 64
  %conv57.i.i.1554 = trunc i128 %shr56.i.i.1553 to i64
  %sub58.i.i.1555 = sub i64 0, %conv57.i.i.1554
  %conv60.i.i.1556 = trunc i128 %add47.i.i.1548 to i64
  %and.i.i.1557 = and i64 %conv60.i.i.1556, 9223372036854775807
  %neg.i.i.1558 = sub nsw i64 9223372032559808512, %and.i.i.1557
  %sub62177.i.i.1559 = and i64 %neg.i.i.1558, %conv60.i.i.1556
  %and66.i.i.1560 = ashr i64 %sub62177.i.i.1559, 63
  %or.i.i.1561 = or i64 %and66.i.i.1560, %sub58.i.i.1555
  %conv68.i.i.1562 = zext i64 %or.i.i.1561 to i128
  %add3.i.i.1690 = add nuw nsw i128 %conv5.i.1723, 1267650600246676145501693280239
  %sub26.i.i.1703 = sub nsw i128 %add3.i.i.1690, %shr205.i.1808
  %sub30.i.i.1705 = sub nsw i128 %sub26.i.i.1703, %shl46.i.i.1713
  %sub44.i.i.1712 = sub nsw i128 %sub30.i.i.1705, %add209.i.1810
  %sub48.i.i.1714 = sub nsw i128 %sub44.i.i.1712, %shl28.i.i.1704
  %add16.i.i.1533 = add i128 %sub48.i.i.1714, %add.i.i.1689
  %add50.i.i.1550 = add i128 %add16.i.i.1533, %conv48.i.i.1549
  %sub70.i.i.1563 = sub i128 %add50.i.i.1550, %conv68.i.i.1562
  %and71.i.i.1564 = and i64 %or.i.i.1561, 4294967295
  %conv72.i.i.1565 = zext i64 %and71.i.i.1564 to i128
  %and75.i.i.1567 = and i64 %or.i.i.1561, -4294967295
  %conv76.i.i.1568 = zext i64 %and75.i.i.1567 to i128
  %sub78.i.i.1569 = sub nsw i128 %add47.i.i.1548, %conv76.i.i.1568
  %shr80.i.i.1570 = lshr i128 %sub70.i.i.1563, 64
  %add9.i.i.1694 = add nuw nsw i128 %add3.i.1678, 1298074214633706907132628377272319
  %sub15.i.i.1697 = add nuw nsw i128 %add9.i.i.1694, %shl32.i.i.1706
  %add34.i.i.1707 = add nsw i128 %sub15.i.i.1697, %sub7.i.i.1693
  %add19.i.i.1535 = sub i128 %add34.i.i.1707, %shl13.i.i.1696
  %sub54.i.i.1552 = sub i128 %add19.i.i.1535, %shl52.i.i.1551
  %sub74.i.i.1566 = sub i128 %sub54.i.i.1552, %conv72.i.i.1565
  %add84.i.i.1571 = add i128 %sub74.i.i.1566, %shr80.i.i.1570
  %shr90.i.i.1573 = lshr i128 %add84.i.i.1571, 64
  %add94.i.i.1574 = add nuw nsw i128 %add13.i.i.1532, %shr90.i.i.1573
  %shr100.i.i.1576 = lshr i128 %add94.i.i.1574, 64
  %add104.i.i.1577 = add nsw i128 %sub78.i.i.1569, %shr100.i.i.1576
  %30 = load i64, i64* %y2, align 8, !tbaa !6
  %conv.i.1583 = zext i64 %30 to i128
  %conv2.i.1584 = and i128 %sub70.i.i.1563, 18446744073709551615
  %mul.i.1585 = mul nuw i128 %conv.i.1583, %conv2.i.1584
  %shr.i.1586 = lshr i128 %mul.i.1585, 64
  %conv5.i.1587 = and i128 %mul.i.1585, 18446744073709551615
  %conv12.i.1590 = and i128 %add84.i.i.1571, 18446744073709551615
  %mul13.i.1591 = mul nuw i128 %conv.i.1583, %conv12.i.1590
  %shr15.i.1592 = lshr i128 %mul13.i.1591, 64
  %conv17.i.1593 = and i128 %mul13.i.1591, 18446744073709551615
  %add.i.1594 = add nuw nsw i128 %conv17.i.1593, %shr.i.1586
  %arrayidx21.i.1596 = getelementptr inbounds i64, i64* %y2, i64 1
  %31 = load i64, i64* %arrayidx21.i.1596, align 8, !tbaa !6
  %conv22.i.1597 = zext i64 %31 to i128
  %mul25.i.1598 = mul nuw i128 %conv22.i.1597, %conv2.i.1584
  %shr27.i.1599 = lshr i128 %mul25.i.1598, 64
  %conv29.i.1600 = and i128 %mul25.i.1598, 18446744073709551615
  %add31.i.1601 = add nuw nsw i128 %add.i.1594, %conv29.i.1600
  %conv38.i.1604 = and i128 %add94.i.i.1574, 18446744073709551615
  %mul39.i.1605 = mul nuw i128 %conv.i.1583, %conv38.i.1604
  %shr41.i.1606 = lshr i128 %mul39.i.1605, 64
  %conv43.i.1607 = and i128 %mul39.i.1605, 18446744073709551615
  %mul52.i.1610 = mul nuw i128 %conv22.i.1597, %conv12.i.1590
  %shr54.i.1611 = lshr i128 %mul52.i.1610, 64
  %conv56.i.1612 = and i128 %mul52.i.1610, 18446744073709551615
  %arrayidx62.i.1615 = getelementptr inbounds i64, i64* %y2, i64 2
  %32 = load i64, i64* %arrayidx62.i.1615, align 8, !tbaa !6
  %conv63.i.1616 = zext i64 %32 to i128
  %mul66.i.1617 = mul nuw i128 %conv63.i.1616, %conv2.i.1584
  %shr68.i.1618 = lshr i128 %mul66.i.1617, 64
  %conv70.i.1619 = and i128 %mul66.i.1617, 18446744073709551615
  %conv79.i.1623 = and i128 %add104.i.i.1577, 18446744073709551615
  %mul80.i.1624 = mul nuw i128 %conv.i.1583, %conv79.i.1623
  %shr82.i.1625 = lshr i128 %mul80.i.1624, 64
  %conv84.i.1626 = and i128 %mul80.i.1624, 18446744073709551615
  %mul93.i.1629 = mul nuw i128 %conv22.i.1597, %conv38.i.1604
  %shr95.i.1630 = lshr i128 %mul93.i.1629, 64
  %conv97.i.1631 = and i128 %mul93.i.1629, 18446744073709551615
  %add102.i.1633 = add nuw nsw i128 %shr95.i.1630, %shr82.i.1625
  %mul107.i.1634 = mul nuw i128 %conv63.i.1616, %conv12.i.1590
  %shr109.i.1635 = lshr i128 %mul107.i.1634, 64
  %conv111.i.1636 = and i128 %mul107.i.1634, 18446744073709551615
  %arrayidx117.i.1639 = getelementptr inbounds i64, i64* %y2, i64 3
  %33 = load i64, i64* %arrayidx117.i.1639, align 8, !tbaa !6
  %conv118.i.1640 = zext i64 %33 to i128
  %mul121.i.1641 = mul nuw i128 %conv118.i.1640, %conv2.i.1584
  %shr123.i.1642 = lshr i128 %mul121.i.1641, 64
  %conv125.i.1643 = and i128 %mul121.i.1641, 18446744073709551615
  %mul135.i.1646 = mul nuw i128 %conv22.i.1597, %conv79.i.1623
  %shr137.i.1647 = lshr i128 %mul135.i.1646, 64
  %conv139.i.1648 = and i128 %mul135.i.1646, 18446744073709551615
  %mul148.i.1651 = mul nuw i128 %conv63.i.1616, %conv38.i.1604
  %shr150.i.1652 = lshr i128 %mul148.i.1651, 64
  %conv152.i.1653 = and i128 %mul148.i.1651, 18446744073709551615
  %add157.i.1655 = add nuw nsw i128 %shr150.i.1652, %shr137.i.1647
  %mul162.i.1656 = mul nuw i128 %conv118.i.1640, %conv12.i.1590
  %shr164.i.1657 = lshr i128 %mul162.i.1656, 64
  %conv166.i.1658 = and i128 %mul162.i.1656, 18446744073709551615
  %add116.i.1638 = add nuw nsw i128 %add102.i.1633, %conv139.i.1648
  %add130.i.1645 = add nuw nsw i128 %add116.i.1638, %shr109.i.1635
  %add141.i.1649 = add nuw nsw i128 %add130.i.1645, %conv152.i.1653
  %add154.i.1654 = add nuw nsw i128 %add141.i.1649, %shr123.i.1642
  %add168.i.1659 = add nuw nsw i128 %add154.i.1654, %conv166.i.1658
  %mul176.i.1661 = mul nuw i128 %conv63.i.1616, %conv79.i.1623
  %shr178.i.1662 = lshr i128 %mul176.i.1661, 64
  %conv180.i.1663 = and i128 %mul176.i.1661, 18446744073709551615
  %mul189.i.1666 = mul nuw i128 %conv118.i.1640, %conv38.i.1604
  %shr191.i.1667 = lshr i128 %mul189.i.1666, 64
  %conv193.i.1668 = and i128 %mul189.i.1666, 18446744073709551615
  %add171.i.1660 = add nuw nsw i128 %add157.i.1655, %conv180.i.1663
  %add182.i.1664 = add nuw nsw i128 %add171.i.1660, %shr164.i.1657
  %add195.i.1669 = add nuw nsw i128 %add182.i.1664, %conv193.i.1668
  %add198.i.1670 = add nuw nsw i128 %shr191.i.1667, %shr178.i.1662
  %mul203.i.1671 = mul nuw i128 %conv118.i.1640, %conv79.i.1623
  %shr205.i.1672 = lshr i128 %mul203.i.1671, 64
  %conv207.i.1673 = and i128 %mul203.i.1671, 18446744073709551615
  %add209.i.1674 = add nuw nsw i128 %add198.i.1670, %conv207.i.1673
  %add3.i.1483 = or i128 %add31.i.1601, 1267650600228229401496703205376
  %shl.i.i.1493 = shl nuw nsw i128 %add195.i.1669, 32
  %add.i.i.1494 = add i128 %shl.i.i.1493, %add168.i.1659
  %sub7.i.i.1498 = sub nsw i128 %add195.i.1669, %shr205.i.1672
  %shl13.i.i.1501 = shl i128 %add168.i.1659, 32
  %shl28.i.i.1509 = shl nuw nsw i128 %add209.i.1674, 32
  %shl32.i.i.1511 = shl nuw nsw i128 %add209.i.1674, 33
  %mul.i.i.1513 = shl nuw nsw i128 %add209.i.1674, 1
  %shl46.i.i.1518 = shl nuw nsw i128 %shr205.i.1672, 32
  %shl50.i.i.1520 = shl nuw nsw i128 %shr205.i.1672, 33
  %mul54.i.i.1522 = mul nuw nsw i128 %shr205.i.1672, 3
  %add3.i.i.1495 = sub i128 163526927429441592784209900992496, %add3.i.i.22954134
  %sub26.i.i.1508 = add i128 %add3.i.i.1495, %conv5.i.1587
  %sub30.i.i.1510 = sub i128 %sub26.i.i.1508, %shr205.i.1672
  %sub44.i.i.1517 = sub i128 %sub30.i.i.1510, %shl46.i.i.1518
  %sub48.i.i.1519 = sub i128 %sub44.i.i.1517, %add209.i.1674
  %add.i.1467 = sub i128 %sub48.i.i.1519, %shl28.i.i.1509
  %sub.i.1474 = add i128 %add.i.1467, %add.i.i.1494
  %add9.i.i.1499 = sub i128 162259276829213363391578010288128, %sub15.i.i.23024135
  %sub15.i.i.1502 = add i128 %add9.i.i.1499, %add3.i.1483
  %add34.i.i.1512 = add i128 %sub15.i.i.1502, %shl32.i.i.1511
  %add2.i.1469 = add i128 %add34.i.i.1512, %sub7.i.i.1498
  %sub11.i.1476 = sub i128 %add2.i.1469, %shl13.i.i.1501
  %add45.i.1608 = sub i128 163526927429441592784209900996624, %sub23.i.i.23064136
  %add58.i.1613 = add i128 %add45.i.1608, %shr15.i.1592
  %add72.i.1620 = add i128 %add58.i.1613, %conv43.i.1607
  %add6.i.1486 = add i128 %add72.i.1620, %shr27.i.1599
  %sub11.i.i.1500 = add i128 %add6.i.1486, %conv56.i.1612
  %sub23.i.i.1506 = add i128 %sub11.i.i.1500, %conv70.i.1619
  %add37.i.i.1514 = add i128 %sub23.i.i.1506, %shl50.i.i.1520
  %add52.i.i.1521 = add i128 %add37.i.i.1514, %mul.i.i.1513
  %add4.i.1471 = sub i128 %add52.i.i.1521, %sub7.i.i.1498
  %sub14.i.1478 = sub i128 %add4.i.1471, %shl.i.i.1493
  %add75.i.1621 = sub i128 163526927429441592784209900996624, %25
  %add86.i.1627 = add i128 %add75.i.1621, %shr41.i.1606
  %add99.i.1632 = add i128 %add86.i.1627, %conv84.i.1626
  %add113.i.1637 = add i128 %add99.i.1632, %shr54.i.1611
  %add127.i.1644 = add i128 %add113.i.1637, %conv97.i.1631
  %add9.i.1489 = add i128 %add127.i.1644, %shr68.i.1618
  %sub.i.i.1496 = add i128 %add9.i.1489, %conv111.i.1636
  %add19.i.i.1504 = add i128 %sub.i.i.1496, %conv125.i.1643
  %sub41.i.i.1516 = add i128 %add19.i.i.1504, %mul54.i.i.1522
  %add56.i.i.1523 = sub i128 %sub41.i.i.1516, %shl28.i.i.1509
  %add6.i.1473 = sub i128 %add56.i.i.1523, %add.i.i.1494
  %sub17.i.1480 = add i128 %add6.i.1473, %shl13.i.i.1501
  %mul.i.1460 = shl i128 %sub.i.1474, 1
  %mul3.i.1462 = shl i128 %sub11.i.1476, 1
  %mul6.i.1464 = shl i128 %sub14.i.1478, 1
  %mul9.i.1466 = shl i128 %sub17.i.1480, 1
  %add.i.1404 = add i128 %mul9.i.1466, 18446744069414584320
  %34 = lshr i128 %sub14.i.1478, 63
  %shr.i.1406 = and i128 %34, 18446744073709551615
  %add8.i.1407 = add i128 %add.i.1404, %shr.i.1406
  %conv12.i.1408 = and i128 %mul6.i.1464, 18446744073709551614
  %add13.i.1409 = add nuw nsw i128 %conv12.i.1408, 18446673704965373952
  %add16.i.1410 = add i128 %mul.i.1460, 18446744073709551615
  %add19.i.1412 = add i128 %mul3.i.1462, 1298074214633706907132628377272319
  %shr22.i.1413 = lshr i128 %add8.i.1407, 64
  %conv23.i.1414 = trunc i128 %shr22.i.1413 to i64
  %fold = add i128 %add.i.1404, %34
  %conv26.i.1415 = and i128 %fold, 18446744073709551615
  %sub.i.1416 = sub nsw i128 %conv26.i.1415, %shr22.i.1413
  %shl.i.1417 = shl nuw nsw i128 %shr22.i.1413, 32
  %add32.i.1418 = add nsw i128 %sub.i.1416, %shl.i.1417
  %shr34.i.1419 = lshr i128 %add32.i.1418, 64
  %conv35.i.1420 = trunc i128 %shr34.i.1419 to i64
  %add36.i.1421 = add i64 %conv35.i.1420, %conv23.i.1414
  %conv39.i.1422 = and i128 %add32.i.1418, 18446744073709551615
  %sub43.i.1423 = sub nsw i128 %conv39.i.1422, %shr34.i.1419
  %shl45.i.1424 = shl nuw nsw i128 %shr34.i.1419, 32
  %add47.i.1425 = add nsw i128 %sub43.i.1423, %shl45.i.1424
  %conv48.i.1426 = zext i64 %add36.i.1421 to i128
  %add50.i.1427 = add i128 %add16.i.1410, %conv48.i.1426
  %shl52.i.1428 = shl nuw nsw i128 %conv48.i.1426, 32
  %sub54.i.1429 = sub i128 %add19.i.1412, %shl52.i.1428
  %shr56.i.1430 = lshr i128 %add47.i.1425, 64
  %conv57.i.1431 = trunc i128 %shr56.i.1430 to i64
  %sub58.i.1432 = sub i64 0, %conv57.i.1431
  %conv60.i.1433 = trunc i128 %add47.i.1425 to i64
  %and.i.1434 = and i64 %conv60.i.1433, 9223372036854775807
  %neg.i.1435 = sub nsw i64 9223372032559808512, %and.i.1434
  %sub62177.i.1436 = and i64 %neg.i.1435, %conv60.i.1433
  %and66.i.1437 = ashr i64 %sub62177.i.1436, 63
  %or.i.1438 = or i64 %and66.i.1437, %sub58.i.1432
  %conv68.i.1439 = zext i64 %or.i.1438 to i128
  %sub70.i.1440 = sub i128 %add50.i.1427, %conv68.i.1439
  %and71.i.1441 = and i64 %or.i.1438, 4294967295
  %conv72.i.1442 = zext i64 %and71.i.1441 to i128
  %sub74.i.1443 = sub i128 %sub54.i.1429, %conv72.i.1442
  %and75.i.1444 = and i64 %or.i.1438, -4294967295
  %conv76.i.1445 = zext i64 %and75.i.1444 to i128
  %sub78.i.1446 = sub nsw i128 %add47.i.1425, %conv76.i.1445
  %shr80.i.1447 = lshr i128 %sub70.i.1440, 64
  %add84.i.1448 = add i128 %sub74.i.1443, %shr80.i.1447
  %conv86.i.1449 = trunc i128 %sub70.i.1440 to i64
  %shr90.i.1450 = lshr i128 %add84.i.1448, 64
  %add94.i.1451 = add nuw nsw i128 %add13.i.1409, %shr90.i.1450
  %conv96.i.1452 = trunc i128 %add84.i.1448 to i64
  %shr100.i.1453 = lshr i128 %add94.i.1451, 64
  %add104.i.1454 = add nsw i128 %shr100.i.1453, %sub78.i.1446
  %conv106.i.1455 = trunc i128 %add94.i.1451 to i64
  %conv119.i.1458 = trunc i128 %add104.i.1454 to i64
  %or.i.13624150 = or i128 %add84.i.1448, %sub70.i.1440
  %or3.i.13644151 = or i128 %or.i.13624150, %add94.i.1451
  %or5.i.13664152 = or i128 %or3.i.13644151, %add104.i.1454
  %or5.i.1366 = trunc i128 %or5.i.13664152 to i64
  %dec.i.1367 = add i64 %or5.i.1366, -1
  %shl.i.1368 = shl i64 %dec.i.1367, 32
  %and.i.1369 = and i64 %shl.i.1368, %dec.i.1367
  %shl6.i.1370 = shl i64 %and.i.1369, 16
  %and7.i.1371 = and i64 %shl6.i.1370, %and.i.1369
  %shl8.i.1372 = shl i64 %and7.i.1371, 8
  %and9.i.1373 = and i64 %shl8.i.1372, %and7.i.1371
  %shl10.i.1374 = shl i64 %and9.i.1373, 4
  %and11.i.1375 = and i64 %shl10.i.1374, %and9.i.1373
  %shl12.i.1376 = shl i64 %and11.i.1375, 2
  %and13.i.1377 = and i64 %shl12.i.1376, %and11.i.1375
  %shl14.i.1378 = shl i64 %and13.i.1377, 1
  %and15.i.1379 = and i64 %shl14.i.1378, %and13.i.1377
  %xor.i.1380 = xor i64 %conv86.i.1449, -1
  %xor18.i.1381 = xor i64 %conv96.i.1452, 4294967295
  %or19.i.1382 = or i64 %xor18.i.1381, %xor.i.1380
  %or22.i.1383 = or i64 %or19.i.1382, %conv106.i.1455
  %xor24.i.1384 = xor i64 %conv119.i.1458, -4294967295
  %or25.i.1385 = or i64 %or22.i.1383, %xor24.i.1384
  %dec26.i.1386 = add i64 %or25.i.1385, -1
  %shl27.i.1387 = shl i64 %dec26.i.1386, 32
  %and28.i.1388 = and i64 %shl27.i.1387, %dec26.i.1386
  %shl29.i.1389 = shl i64 %and28.i.1388, 16
  %and30.i.1390 = and i64 %shl29.i.1389, %and28.i.1388
  %shl31.i.1391 = shl i64 %and30.i.1390, 8
  %and32.i.1392 = and i64 %shl31.i.1391, %and30.i.1390
  %shl33.i.1393 = shl i64 %and32.i.1392, 4
  %and34.i.1394 = and i64 %shl33.i.1393, %and32.i.1392
  %shl35.i.1395 = shl i64 %and34.i.1394, 2
  %and36.i.1396 = and i64 %shl35.i.1395, %and34.i.1394
  %shl37.i.1397 = shl i64 %and36.i.1396, 1
  %and38.i.1398 = and i64 %shl37.i.1397, %and36.i.1396
  %sub86.i.1399 = or i64 %and38.i.1398, %and15.i.1379
  %or41.i.1400 = ashr i64 %sub86.i.1399, 63
  %coerce86.sroa.2.0.insert.ext = zext i64 %or41.i.1400 to i128
  %coerce86.sroa.2.0.insert.shift = shl nuw i128 %coerce86.sroa.2.0.insert.ext, 64
  %coerce86.sroa.0.0.insert.insert = or i128 %coerce86.sroa.2.0.insert.shift, %coerce86.sroa.2.0.insert.ext
  %notlhs = icmp eq i128 %coerce64.sroa.0.0.insert.insert, 0
  %notrhs = icmp eq i128 %coerce86.sroa.0.0.insert.insert, 0
  %or.cond.not = or i1 %notlhs, %notrhs
  %35 = or i128 %coerce.sroa.0.0.insert.insert, %coerce14.sroa.0.0.insert.insert
  %36 = icmp ne i128 %35, 0
  %37 = or i1 %36, %or.cond.not
  br i1 %37, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end
  tail call fastcc void @point_double(i128* %x3, i128* %y3, i128* %z3, i128* %x1, i128* %y1, i128* %z1)
  br label %cleanup

if.end.94:                                        ; preds = %if.end
  %mul54.i.i.1853 = mul nuw nsw i128 %shr205.i.2003, 3
  %conv125.i.1974 = and i128 %mul121.i.1972, 18446744073709551615
  %conv111.i.1967 = and i128 %mul107.i.1965, 18446744073709551615
  %conv97.i.1962 = and i128 %mul93.i.1960, 18446744073709551615
  %conv84.i.1957 = and i128 %mul80.i.1955, 18446744073709551615
  %shr68.i.1949 = lshr i128 %mul66.i.1948, 64
  %shr54.i.1942 = lshr i128 %mul52.i.1941, 64
  %shr41.i.1937 = lshr i128 %mul39.i.1936, 64
  %add61.i.1945 = add nuw nsw i128 %shr41.i.1937, 1267650600228229401427983728656
  %add75.i.1952 = add nuw nsw i128 %add61.i.1945, %conv84.i.1957
  %add86.i.1958 = add nuw nsw i128 %add75.i.1952, %shr54.i.1942
  %add99.i.1963 = add nuw nsw i128 %add86.i.1958, %conv97.i.1962
  %add113.i.1968 = add nuw nsw i128 %add99.i.1963, %shr68.i.1949
  %add127.i.1975 = add nuw nsw i128 %add113.i.1968, %conv111.i.1967
  %add9.i.1820 = add i128 %add127.i.1975, %conv125.i.1974
  %sub.i.i.1827 = add i128 %add9.i.1820, %mul54.i.i.1853
  %add19.i.i.1835 = sub i128 %sub.i.i.1827, %shl28.i.i.1840
  %sub41.i.i.1847 = sub i128 %add19.i.i.1835, %add.i.i.1825
  %add56.i.i.1854 = add i128 %sub41.i.i.1847, %shl13.i.i.1832
  %shl50.i.i.1851 = shl nuw nsw i128 %shr205.i.2003, 33
  %mul.i.i.1844 = shl nuw nsw i128 %add209.i.2005, 1
  %conv70.i.1950 = and i128 %mul66.i.1948, 18446744073709551615
  %conv56.i.1943 = and i128 %mul52.i.1941, 18446744073709551615
  %conv43.i.1938 = and i128 %mul39.i.1936, 18446744073709551615
  %shr27.i.1930 = lshr i128 %mul25.i.1929, 64
  %shr15.i.1923 = lshr i128 %mul13.i.1922, 64
  %add34.i.1933 = add nuw nsw i128 %shr15.i.1923, 1267650600228229401427983728656
  %add45.i.1939 = add nuw nsw i128 %add34.i.1933, %conv43.i.1938
  %add58.i.1944 = add nuw nsw i128 %add45.i.1939, %shr27.i.1930
  %add72.i.1951 = add nuw nsw i128 %add58.i.1944, %conv56.i.1943
  %add6.i.1817 = add nuw nsw i128 %add72.i.1951, %conv70.i.1950
  %sub11.i.i.1831 = add nuw nsw i128 %add6.i.1817, %shl50.i.i.1851
  %sub23.i.i.1837 = add i128 %sub11.i.i.1831, %mul.i.i.1844
  %add37.i.i.1845 = sub i128 %sub23.i.i.1837, %sub7.i.i.1829
  %add52.i.i.1852 = sub i128 %add37.i.i.1845, %shl.i.i.1824
  %conv5.i.1918 = and i128 %mul.i.1916, 18446744073709551615
  %add.i.1812 = add nuw nsw i128 %conv5.i.1918, 1267650600228229401427983728624
  %shl46.i.i.1849 = shl nuw nsw i128 %shr205.i.2003, 32
  %add3.i.i.1826 = sub nsw i128 %add.i.1812, %shr205.i.2003
  %sub26.i.i.1839 = sub nsw i128 %add3.i.i.1826, %shl46.i.i.1849
  %sub30.i.i.1841 = sub nsw i128 %sub26.i.i.1839, %add209.i.2005
  %sub44.i.i.1848 = sub nsw i128 %sub30.i.i.1841, %shl28.i.i.1840
  %sub48.i.i.1850 = add i128 %sub44.i.i.1848, %add.i.i.1825
  %shl32.i.i.1842 = shl nuw nsw i128 %add209.i.2005, 33
  %conv29.i.1931 = and i128 %mul25.i.1929, 18446744073709551615
  %conv17.i.1924 = and i128 %mul13.i.1922, 18446744073709551615
  %shr.i.1917 = lshr i128 %mul.i.1916, 64
  %add.i.1925 = add nuw nsw i128 %conv17.i.1924, %shr.i.1917
  %add31.i.1932 = add nuw nsw i128 %add.i.1925, %conv29.i.1931
  %add3.i.1814 = or i128 %add31.i.1932, 1267650600228229401496703205376
  %add9.i.i.1830 = add nuw nsw i128 %shl32.i.i.1842, %add3.i.1814
  %sub15.i.i.1833 = add nsw i128 %add9.i.i.1830, %sub7.i.i.1829
  %add34.i.i.1843 = sub i128 %sub15.i.i.1833, %shl13.i.i.1832
  %mul.i.1341 = shl i128 %sub.i.2113, 1
  %mul3.i.1343 = shl i128 %sub11.i.2115, 1
  %mul6.i.1345 = shl i128 %sub14.i.2117, 1
  %mul9.i.1347 = shl i128 %sub17.i.2119, 1
  %add.i.i.1223 = add i128 %mul9.i.1347, 18446744069414584320
  %38 = lshr i128 %sub14.i.2117, 63
  %shr.i.i.1225 = and i128 %38, 18446744073709551615
  %add8.i.i.1226 = add i128 %add.i.i.1223, %shr.i.i.1225
  %conv12.i.i.1227 = and i128 %mul6.i.1345, 18446744073709551614
  %add13.i.i.1228 = add nuw nsw i128 %conv12.i.i.1227, 18446673704965373952
  %add16.i.i.1229 = add i128 %mul.i.1341, 18446744073709551615
  %add19.i.i.1231 = add i128 %mul3.i.1343, 1298074214633706907132628377272319
  %shr22.i.i.1232 = lshr i128 %add8.i.i.1226, 64
  %conv23.i.i.1233 = trunc i128 %shr22.i.i.1232 to i64
  %fold4153 = add i128 %add.i.i.1223, %38
  %conv26.i.i.1234 = and i128 %fold4153, 18446744073709551615
  %sub.i.i.1235 = sub nsw i128 %conv26.i.i.1234, %shr22.i.i.1232
  %shl.i.i.1236 = shl nuw nsw i128 %shr22.i.i.1232, 32
  %add32.i.i.1237 = add nsw i128 %sub.i.i.1235, %shl.i.i.1236
  %shr34.i.i.1238 = lshr i128 %add32.i.i.1237, 64
  %conv35.i.i.1239 = trunc i128 %shr34.i.i.1238 to i64
  %add36.i.i.1240 = add i64 %conv35.i.i.1239, %conv23.i.i.1233
  %conv39.i.i.1241 = and i128 %add32.i.i.1237, 18446744073709551615
  %sub43.i.i.1242 = sub nsw i128 %conv39.i.i.1241, %shr34.i.i.1238
  %shl45.i.i.1243 = shl nuw nsw i128 %shr34.i.i.1238, 32
  %add47.i.i.1244 = add nsw i128 %sub43.i.i.1242, %shl45.i.i.1243
  %conv48.i.i.1245 = zext i64 %add36.i.i.1240 to i128
  %add50.i.i.1246 = add i128 %add16.i.i.1229, %conv48.i.i.1245
  %shl52.i.i.1247 = shl nuw nsw i128 %conv48.i.i.1245, 32
  %sub54.i.i.1248 = sub i128 %add19.i.i.1231, %shl52.i.i.1247
  %shr56.i.i.1249 = lshr i128 %add47.i.i.1244, 64
  %conv57.i.i.1250 = trunc i128 %shr56.i.i.1249 to i64
  %sub58.i.i.1251 = sub i64 0, %conv57.i.i.1250
  %conv60.i.i.1252 = trunc i128 %add47.i.i.1244 to i64
  %and.i.i.1253 = and i64 %conv60.i.i.1252, 9223372036854775807
  %neg.i.i.1254 = sub nsw i64 9223372032559808512, %and.i.i.1253
  %sub62177.i.i.1255 = and i64 %neg.i.i.1254, %conv60.i.i.1252
  %and66.i.i.1256 = ashr i64 %sub62177.i.i.1255, 63
  %or.i.i.1257 = or i64 %and66.i.i.1256, %sub58.i.i.1251
  %conv68.i.i.1258 = zext i64 %or.i.i.1257 to i128
  %sub70.i.i.1259 = sub i128 %add50.i.i.1246, %conv68.i.i.1258
  %and71.i.i.1260 = and i64 %or.i.i.1257, 4294967295
  %conv72.i.i.1261 = zext i64 %and71.i.i.1260 to i128
  %sub74.i.i.1262 = sub i128 %sub54.i.i.1248, %conv72.i.i.1261
  %and75.i.i.1263 = and i64 %or.i.i.1257, -4294967295
  %conv76.i.i.1264 = zext i64 %and75.i.i.1263 to i128
  %sub78.i.i.1265 = sub nsw i128 %add47.i.i.1244, %conv76.i.i.1264
  %shr80.i.i.1266 = lshr i128 %sub70.i.i.1259, 64
  %add84.i.i.1267 = add i128 %sub74.i.i.1262, %shr80.i.i.1266
  %shr90.i.i.1269 = lshr i128 %add84.i.i.1267, 64
  %add94.i.i.1270 = add nuw nsw i128 %add13.i.i.1228, %shr90.i.i.1269
  %shr100.i.i.1272 = lshr i128 %add94.i.i.1270, 64
  %add104.i.i.1273 = add nsw i128 %sub78.i.i.1265, %shr100.i.i.1272
  %conv.i.1279 = and i128 %sub70.i.i.1259, 18446744073709551615
  %mul.i.1280 = mul nuw i128 %conv.i.1279, %conv.i.1279
  %shr.i.1281 = lshr i128 %mul.i.1280, 64
  %conv5.i.1282 = and i128 %mul.i.1280, 18446744073709551615
  %conv12.i.1285 = and i128 %add84.i.i.1267, 18446744073709551615
  %mul13.i.1286 = mul nuw i128 %conv12.i.1285, %conv.i.1279
  %shr15.i.1287 = lshr i128 %mul13.i.1286, 64
  %conv17.i.1288 = shl i128 %mul13.i.1286, 1
  %factor.i.1289 = and i128 %conv17.i.1288, 36893488147419103230
  %add21.i.1290 = add nuw nsw i128 %factor.i.1289, %shr.i.1281
  %conv27.i.1293 = and i128 %add94.i.i.1270, 18446744073709551615
  %mul28.i.1294 = mul nuw i128 %conv27.i.1293, %conv.i.1279
  %shr30.i.1295 = lshr i128 %mul28.i.1294, 64
  %conv32.i.1296 = and i128 %mul28.i.1294, 18446744073709551615
  %add34.i.1297 = add nuw nsw i128 %conv32.i.1296, %shr15.i.1287
  %conv42.i.1301 = and i128 %add104.i.i.1273, 18446744073709551615
  %mul43.i.1302 = mul nuw i128 %conv42.i.1301, %conv.i.1279
  %shr45.i.1303 = lshr i128 %mul43.i.1302, 64
  %conv47.i.1304 = and i128 %mul43.i.1302, 18446744073709551615
  %mul56.i.1307 = mul nuw i128 %conv27.i.1293, %conv12.i.1285
  %shr58.i.1308 = lshr i128 %mul56.i.1307, 64
  %conv60.i.1309 = and i128 %mul56.i.1307, 18446744073709551615
  %add49.i.1305 = add nuw nsw i128 %conv60.i.1309, %shr30.i.1295
  %add62.i.1310 = add nuw nsw i128 %add49.i.1305, %conv47.i.1304
  %mul64.i.1311 = shl nuw nsw i128 %add62.i.1310, 1
  %add67.i.1312 = add nuw nsw i128 %shr45.i.1303, %shr58.i.1308
  %mul72.i.1313 = mul nuw i128 %conv12.i.1285, %conv12.i.1285
  %shr74.i.1314 = lshr i128 %mul72.i.1313, 64
  %conv76.i.1315 = and i128 %mul72.i.1313, 18446744073709551615
  %mul86.i.1318 = mul nuw i128 %conv42.i.1301, %conv12.i.1285
  %shr88.i.1319 = lshr i128 %mul86.i.1318, 64
  %conv90.i.1320 = and i128 %mul86.i.1318, 18446744073709551615
  %add92.i.1321 = add nuw nsw i128 %add67.i.1312, %conv90.i.1320
  %mul94.i.1322 = shl nuw nsw i128 %add92.i.1321, 1
  %mul101.i.1324 = mul nuw i128 %conv42.i.1301, %conv27.i.1293
  %shr103.i.1325 = lshr i128 %mul101.i.1324, 64
  %conv105.i.1326 = and i128 %mul101.i.1324, 18446744073709551615
  %add107.i.1327 = add nuw nsw i128 %conv105.i.1326, %shr88.i.1319
  %mul109.i.1328 = shl nuw nsw i128 %add107.i.1327, 1
  %add114.i.1330 = shl nuw nsw i128 %shr103.i.1325, 1
  %mul119.i.1331 = mul nuw i128 %conv27.i.1293, %conv27.i.1293
  %shr121.i.1332 = lshr i128 %mul119.i.1331, 64
  %conv123.i.1333 = and i128 %mul119.i.1331, 18446744073709551615
  %add125.i.1334 = add nuw nsw i128 %mul94.i.1322, %conv123.i.1333
  %add128.i.1335 = add nuw nsw i128 %mul109.i.1328, %shr121.i.1332
  %mul133.i.1336 = mul nuw i128 %conv42.i.1301, %conv42.i.1301
  %shr135.i.1337 = lshr i128 %mul133.i.1336, 64
  %conv137.i.1338 = and i128 %mul133.i.1336, 18446744073709551615
  %add139.i.1339 = add nuw nsw i128 %add114.i.1330, %conv137.i.1338
  %add3.i.1180 = or i128 %add21.i.1290, 1267650600228229401496703205376
  %shl.i.i.1190 = shl nuw nsw i128 %add128.i.1335, 32
  %add.i.i.1191 = add nuw nsw i128 %shl.i.i.1190, %add125.i.1334
  %sub7.i.i.1195 = sub nsw i128 %add128.i.1335, %shr135.i.1337
  %shl13.i.i.1198 = shl nuw nsw i128 %add125.i.1334, 32
  %shl28.i.i.1206 = shl nuw nsw i128 %add139.i.1339, 32
  %shl32.i.i.1208 = shl nuw nsw i128 %add139.i.1339, 33
  %shl46.i.i.1215 = shl nuw nsw i128 %shr135.i.1337, 32
  %shl50.i.i.1217 = shl nuw nsw i128 %shr135.i.1337, 33
  %tmp4160 = add nuw nsw i128 %add34.i.1297, %add139.i.1339
  %tmp4161 = shl nuw nsw i128 %tmp4160, 1
  %add6.i.1183 = add nuw nsw i128 %conv76.i.1315, 1267650600228229401427983728656
  %sub11.i.i.1197 = add nuw nsw i128 %add6.i.1183, %shl50.i.i.1217
  %sub23.i.i.1203 = sub nsw i128 %sub11.i.i.1197, %sub7.i.i.1195
  %add37.i.i.1211 = sub nsw i128 %sub23.i.i.1203, %shl.i.i.1190
  %add52.i.i.1218 = add i128 %add37.i.i.1211, %tmp4161
  %mul54.i.i.1219 = mul nuw nsw i128 %shr135.i.1337, 3
  %shr.i.1031 = lshr i128 %add52.i.i.1218, 64
  %add9.i.1186 = add nuw nsw i128 %shr74.i.1314, 1267650600246676145497398312976
  %sub.i.i.1193 = add nuw nsw i128 %add9.i.1186, %mul54.i.i.1219
  %add19.i.i.1201 = add nuw nsw i128 %sub.i.i.1193, %mul64.i.1311
  %sub41.i.i.1213 = sub nsw i128 %add19.i.i.1201, %shl28.i.i.1206
  %add56.i.i.1220 = sub nsw i128 %sub41.i.i.1213, %add.i.i.1191
  %add.i.1029 = add i128 %add56.i.i.1220, %shl13.i.i.1198
  %add8.i.1032 = add i128 %add.i.1029, %shr.i.1031
  %conv12.i.1033 = and i128 %add52.i.i.1218, 18446744073709551615
  %add13.i.1034 = add nuw nsw i128 %conv12.i.1033, 18446673704965373952
  %shr22.i.1038 = lshr i128 %add8.i.1032, 64
  %conv23.i.1039 = trunc i128 %shr22.i.1038 to i64
  %conv26.i.1040 = and i128 %add8.i.1032, 18446744073709551615
  %sub.i.1041 = sub nsw i128 %conv26.i.1040, %shr22.i.1038
  %shl.i.1042 = shl nuw nsw i128 %shr22.i.1038, 32
  %add32.i.1043 = add nsw i128 %sub.i.1041, %shl.i.1042
  %shr34.i.1044 = lshr i128 %add32.i.1043, 64
  %conv35.i.1045 = trunc i128 %shr34.i.1044 to i64
  %add36.i.1046 = add i64 %conv35.i.1045, %conv23.i.1039
  %conv39.i.1047 = and i128 %add32.i.1043, 18446744073709551615
  %sub43.i.1048 = sub nsw i128 %conv39.i.1047, %shr34.i.1044
  %shl45.i.1049 = shl nuw nsw i128 %shr34.i.1044, 32
  %add47.i.1050 = add nsw i128 %sub43.i.1048, %shl45.i.1049
  %conv48.i.1051 = zext i64 %add36.i.1046 to i128
  %shl52.i.1053 = shl nuw nsw i128 %conv48.i.1051, 32
  %shr56.i.1055 = lshr i128 %add47.i.1050, 64
  %conv57.i.1056 = trunc i128 %shr56.i.1055 to i64
  %sub58.i.1057 = sub i64 0, %conv57.i.1056
  %conv60.i.1058 = trunc i128 %add47.i.1050 to i64
  %and.i.1059 = and i64 %conv60.i.1058, 9223372036854775807
  %neg.i.1060 = sub nsw i64 9223372032559808512, %and.i.1059
  %sub62177.i.1061 = and i64 %neg.i.1060, %conv60.i.1058
  %and66.i.1062 = ashr i64 %sub62177.i.1061, 63
  %or.i.1063 = or i64 %and66.i.1062, %sub58.i.1057
  %conv68.i.1064 = zext i64 %or.i.1063 to i128
  %add3.i.i.1192 = add nuw nsw i128 %conv5.i.1282, 1267650600246676145501693280239
  %sub26.i.i.1205 = sub nsw i128 %add3.i.i.1192, %shr135.i.1337
  %sub30.i.i.1207 = sub nsw i128 %sub26.i.i.1205, %shl46.i.i.1215
  %sub44.i.i.1214 = sub nsw i128 %sub30.i.i.1207, %add139.i.1339
  %sub48.i.i.1216 = sub nsw i128 %sub44.i.i.1214, %shl28.i.i.1206
  %add16.i.1035 = add nsw i128 %sub48.i.i.1216, %add.i.i.1191
  %add50.i.1052 = add i128 %add16.i.1035, %conv48.i.1051
  %sub70.i.1065 = sub i128 %add50.i.1052, %conv68.i.1064
  %and71.i.1066 = and i64 %or.i.1063, 4294967295
  %conv72.i.1067 = zext i64 %and71.i.1066 to i128
  %and75.i.1069 = and i64 %or.i.1063, -4294967295
  %conv76.i.1070 = zext i64 %and75.i.1069 to i128
  %sub78.i.1071 = sub nsw i128 %add47.i.1050, %conv76.i.1070
  %shr80.i.1072 = lshr i128 %sub70.i.1065, 64
  %add9.i.i.1196 = add nuw nsw i128 %add3.i.1180, 1298074214633706907132628377272319
  %sub15.i.i.1199 = add nuw nsw i128 %add9.i.i.1196, %shl32.i.i.1208
  %add34.i.i.1209 = add nsw i128 %sub15.i.i.1199, %sub7.i.i.1195
  %add19.i.1037 = sub nsw i128 %add34.i.i.1209, %shl13.i.i.1198
  %sub54.i.1054 = sub i128 %add19.i.1037, %shl52.i.1053
  %sub74.i.1068 = sub i128 %sub54.i.1054, %conv72.i.1067
  %add84.i.1073 = add i128 %sub74.i.1068, %shr80.i.1072
  %shr90.i.1075 = lshr i128 %add84.i.1073, 64
  %add94.i.1076 = add nuw nsw i128 %add13.i.1034, %shr90.i.1075
  %shr100.i.1078 = lshr i128 %add94.i.1076, 64
  %add104.i.1079 = add nsw i128 %sub78.i.1071, %shr100.i.1078
  %conv2.i.1086 = and i128 %sub70.i.1065, 18446744073709551615
  %mul.i.1087 = mul nuw i128 %conv2.i.1086, %conv.i.1914
  %shr.i.1088 = lshr i128 %mul.i.1087, 64
  %conv5.i.1089 = and i128 %mul.i.1087, 18446744073709551615
  %conv12.i.1092 = and i128 %add84.i.1073, 18446744073709551615
  %mul13.i.1093 = mul nuw i128 %conv12.i.1092, %conv.i.1914
  %shr15.i.1094 = lshr i128 %mul13.i.1093, 64
  %conv17.i.1095 = and i128 %mul13.i.1093, 18446744073709551615
  %mul25.i.1100 = mul nuw i128 %conv2.i.1086, %conv22.i.1928
  %shr27.i.1101 = lshr i128 %mul25.i.1100, 64
  %conv29.i.1102 = and i128 %mul25.i.1100, 18446744073709551615
  %add.i.1096 = add nuw nsw i128 %conv29.i.1102, %shr.i.1088
  %add31.i.1103 = add nuw nsw i128 %add.i.1096, %conv17.i.1095
  %conv38.i.1106 = and i128 %add94.i.1076, 18446744073709551615
  %mul39.i.1107 = mul nuw i128 %conv38.i.1106, %conv.i.1914
  %shr41.i.1108 = lshr i128 %mul39.i.1107, 64
  %conv43.i.1109 = and i128 %mul39.i.1107, 18446744073709551615
  %mul52.i.1112 = mul nuw i128 %conv12.i.1092, %conv22.i.1928
  %shr54.i.1113 = lshr i128 %mul52.i.1112, 64
  %conv56.i.1114 = and i128 %mul52.i.1112, 18446744073709551615
  %mul66.i.1119 = mul nuw i128 %conv2.i.1086, %conv63.i.1947
  %shr68.i.1120 = lshr i128 %mul66.i.1119, 64
  %conv70.i.1121 = and i128 %mul66.i.1119, 18446744073709551615
  %conv79.i.1125 = and i128 %add104.i.1079, 18446744073709551615
  %mul80.i.1126 = mul nuw i128 %conv79.i.1125, %conv.i.1914
  %shr82.i.1127 = lshr i128 %mul80.i.1126, 64
  %conv84.i.1128 = and i128 %mul80.i.1126, 18446744073709551615
  %mul93.i.1131 = mul nuw i128 %conv38.i.1106, %conv22.i.1928
  %shr95.i.1132 = lshr i128 %mul93.i.1131, 64
  %conv97.i.1133 = and i128 %mul93.i.1131, 18446744073709551615
  %mul107.i.1136 = mul nuw i128 %conv12.i.1092, %conv63.i.1947
  %shr109.i.1137 = lshr i128 %mul107.i.1136, 64
  %conv111.i.1138 = and i128 %mul107.i.1136, 18446744073709551615
  %mul121.i.1143 = mul nuw i128 %conv2.i.1086, %conv118.i.1971
  %shr123.i.1144 = lshr i128 %mul121.i.1143, 64
  %conv125.i.1145 = and i128 %mul121.i.1143, 18446744073709551615
  %mul135.i.1148 = mul nuw i128 %conv79.i.1125, %conv22.i.1928
  %shr137.i.1149 = lshr i128 %mul135.i.1148, 64
  %conv139.i.1150 = and i128 %mul135.i.1148, 18446744073709551615
  %mul148.i.1153 = mul nuw i128 %conv38.i.1106, %conv63.i.1947
  %shr150.i.1154 = lshr i128 %mul148.i.1153, 64
  %conv152.i.1155 = and i128 %mul148.i.1153, 18446744073709551615
  %mul162.i.1158 = mul nuw i128 %conv12.i.1092, %conv118.i.1971
  %shr164.i.1159 = lshr i128 %mul162.i.1158, 64
  %conv166.i.1160 = and i128 %mul162.i.1158, 18446744073709551615
  %add102.i.1135 = add nuw nsw i128 %shr109.i.1137, %shr123.i.1144
  %add116.i.1140 = add nuw nsw i128 %add102.i.1135, %conv166.i.1160
  %add130.i.1147 = add nuw nsw i128 %add116.i.1140, %shr95.i.1132
  %add141.i.1151 = add nuw nsw i128 %add130.i.1147, %conv152.i.1155
  %add154.i.1156 = add nuw nsw i128 %add141.i.1151, %shr82.i.1127
  %add168.i.1161 = add nuw nsw i128 %add154.i.1156, %conv139.i.1150
  %mul176.i.1163 = mul nuw i128 %conv79.i.1125, %conv63.i.1947
  %shr178.i.1164 = lshr i128 %mul176.i.1163, 64
  %conv180.i.1165 = and i128 %mul176.i.1163, 18446744073709551615
  %mul189.i.1168 = mul nuw i128 %conv38.i.1106, %conv118.i.1971
  %shr191.i.1169 = lshr i128 %mul189.i.1168, 64
  %conv193.i.1170 = and i128 %mul189.i.1168, 18446744073709551615
  %add157.i.1157 = add nuw nsw i128 %shr150.i.1154, %shr164.i.1159
  %add171.i.1162 = add nuw nsw i128 %add157.i.1157, %conv193.i.1170
  %add182.i.1166 = add nuw nsw i128 %add171.i.1162, %shr137.i.1149
  %add195.i.1171 = add nuw nsw i128 %add182.i.1166, %conv180.i.1165
  %add198.i.1172 = add nuw nsw i128 %shr178.i.1164, %shr191.i.1169
  %mul203.i.1173 = mul nuw i128 %conv79.i.1125, %conv118.i.1971
  %shr205.i.1174 = lshr i128 %mul203.i.1173, 64
  %conv207.i.1175 = and i128 %mul203.i.1173, 18446744073709551615
  %add209.i.1176 = add nuw nsw i128 %add198.i.1172, %conv207.i.1175
  %add.i.924 = add nuw nsw i128 %conv5.i.1089, 1267650600228229401427983728624
  %add3.i.926 = or i128 %add31.i.1103, 1267650600228229401496703205376
  %shl.i.i.936 = shl nuw nsw i128 %add195.i.1171, 32
  %add.i.i.937 = add i128 %add168.i.1161, %shl.i.i.936
  %sub7.i.i.941 = sub nsw i128 %add195.i.1171, %shr205.i.1174
  %shl13.i.i.944 = shl i128 %add168.i.1161, 32
  %shl28.i.i.952 = shl nuw nsw i128 %add209.i.1176, 32
  %shl32.i.i.954 = shl nuw nsw i128 %add209.i.1176, 33
  %add9.i.i.942 = add nuw nsw i128 %shl32.i.i.954, %add3.i.926
  %sub15.i.i.945 = add nsw i128 %add9.i.i.942, %sub7.i.i.941
  %add34.i.i.955 = sub i128 %sub15.i.i.945, %shl13.i.i.944
  %mul.i.i.956 = shl nuw nsw i128 %add209.i.1176, 1
  %shl46.i.i.961 = shl nuw nsw i128 %shr205.i.1174, 32
  %add3.i.i.938 = sub nsw i128 %add.i.924, %shr205.i.1174
  %sub26.i.i.951 = sub nsw i128 %add3.i.i.938, %shl46.i.i.961
  %sub30.i.i.953 = sub nsw i128 %sub26.i.i.951, %add209.i.1176
  %sub44.i.i.960 = sub nsw i128 %sub30.i.i.953, %shl28.i.i.952
  %sub48.i.i.962 = add i128 %sub44.i.i.960, %add.i.i.937
  %shl50.i.i.963 = shl nuw nsw i128 %shr205.i.1174, 33
  %add34.i.1104 = add nuw nsw i128 %shr27.i.1101, 1267650600228229401427983728656
  %add45.i.1110 = add nuw nsw i128 %add34.i.1104, %conv70.i.1121
  %add58.i.1115 = add nuw nsw i128 %add45.i.1110, %shr15.i.1094
  %add72.i.1122 = add nuw nsw i128 %add58.i.1115, %conv56.i.1114
  %add6.i.929 = add nuw nsw i128 %add72.i.1122, %conv43.i.1109
  %sub11.i.i.943 = add nuw nsw i128 %add6.i.929, %shl50.i.i.963
  %sub23.i.i.949 = add i128 %sub11.i.i.943, %mul.i.i.956
  %add37.i.i.957 = sub i128 %sub23.i.i.949, %sub7.i.i.941
  %add52.i.i.964 = sub i128 %add37.i.i.957, %shl.i.i.936
  %mul54.i.i.965 = mul nuw nsw i128 %shr205.i.1174, 3
  %add61.i.1116 = add nuw nsw i128 %shr68.i.1120, 1267650600228229401427983728656
  %add75.i.1123 = add nuw nsw i128 %add61.i.1116, %conv125.i.1145
  %add86.i.1129 = add nuw nsw i128 %add75.i.1123, %shr54.i.1113
  %add99.i.1134 = add nuw nsw i128 %add86.i.1129, %conv111.i.1138
  %add113.i.1139 = add nuw nsw i128 %add99.i.1134, %shr41.i.1108
  %add127.i.1146 = add nuw nsw i128 %add113.i.1139, %conv97.i.1133
  %add9.i.932 = add i128 %add127.i.1146, %conv84.i.1128
  %sub.i.i.939 = add i128 %add9.i.932, %mul54.i.i.965
  %add19.i.i.947 = sub i128 %sub.i.i.939, %shl28.i.i.952
  %sub41.i.i.959 = sub i128 %add19.i.i.947, %add.i.i.937
  %add56.i.i.966 = add i128 %sub41.i.i.959, %shl13.i.i.944
  %add.i.i.717 = add i128 %24, 18446744069414584320
  %shr.i.i.719 = lshr i128 %sub23.i.i.29004143, 64
  %add8.i.i.720 = add i128 %add.i.i.717, %shr.i.i.719
  %conv12.i.i.721 = and i128 %sub23.i.i.29004143, 18446744073709551615
  %add13.i.i.722 = add nuw nsw i128 %conv12.i.i.721, 18446673704965373952
  %add16.i.i.723 = add i128 %add3.i.i.28894141, 18446744073709551615
  %add19.i.i.725 = add i128 %ftmp3.sroa.16.16.4142, 1298074214633706907132628377272319
  %shr22.i.i.726 = lshr i128 %add8.i.i.720, 64
  %conv23.i.i.727 = trunc i128 %shr22.i.i.726 to i64
  %conv26.i.i.728 = and i128 %add8.i.i.720, 18446744073709551615
  %sub.i.i.729 = sub nsw i128 %conv26.i.i.728, %shr22.i.i.726
  %shl.i.i.730 = shl nuw nsw i128 %shr22.i.i.726, 32
  %add32.i.i.731 = add nsw i128 %sub.i.i.729, %shl.i.i.730
  %shr34.i.i.732 = lshr i128 %add32.i.i.731, 64
  %conv35.i.i.733 = trunc i128 %shr34.i.i.732 to i64
  %add36.i.i.734 = add i64 %conv35.i.i.733, %conv23.i.i.727
  %conv39.i.i.735 = and i128 %add32.i.i.731, 18446744073709551615
  %sub43.i.i.736 = sub nsw i128 %conv39.i.i.735, %shr34.i.i.732
  %shl45.i.i.737 = shl nuw nsw i128 %shr34.i.i.732, 32
  %add47.i.i.738 = add nsw i128 %sub43.i.i.736, %shl45.i.i.737
  %conv48.i.i.739 = zext i64 %add36.i.i.734 to i128
  %add50.i.i.740 = add i128 %add16.i.i.723, %conv48.i.i.739
  %shl52.i.i.741 = shl nuw nsw i128 %conv48.i.i.739, 32
  %sub54.i.i.742 = sub i128 %add19.i.i.725, %shl52.i.i.741
  %shr56.i.i.743 = lshr i128 %add47.i.i.738, 64
  %conv57.i.i.744 = trunc i128 %shr56.i.i.743 to i64
  %sub58.i.i.745 = sub i64 0, %conv57.i.i.744
  %conv60.i.i.746 = trunc i128 %add47.i.i.738 to i64
  %and.i.i.747 = and i64 %conv60.i.i.746, 9223372036854775807
  %neg.i.i.748 = sub nsw i64 9223372032559808512, %and.i.i.747
  %sub62177.i.i.749 = and i64 %neg.i.i.748, %conv60.i.i.746
  %and66.i.i.750 = ashr i64 %sub62177.i.i.749, 63
  %or.i.i.751 = or i64 %and66.i.i.750, %sub58.i.i.745
  %conv68.i.i.752 = zext i64 %or.i.i.751 to i128
  %sub70.i.i.753 = sub i128 %add50.i.i.740, %conv68.i.i.752
  %and71.i.i.754 = and i64 %or.i.i.751, 4294967295
  %conv72.i.i.755 = zext i64 %and71.i.i.754 to i128
  %sub74.i.i.756 = sub i128 %sub54.i.i.742, %conv72.i.i.755
  %and75.i.i.757 = and i64 %or.i.i.751, -4294967295
  %conv76.i.i.758 = zext i64 %and75.i.i.757 to i128
  %sub78.i.i.759 = sub nsw i128 %add47.i.i.738, %conv76.i.i.758
  %shr80.i.i.760 = lshr i128 %sub70.i.i.753, 64
  %add84.i.i.761 = add i128 %sub74.i.i.756, %shr80.i.i.760
  %shr90.i.i.763 = lshr i128 %add84.i.i.761, 64
  %add94.i.i.764 = add nuw nsw i128 %add13.i.i.722, %shr90.i.i.763
  %shr100.i.i.766 = lshr i128 %add94.i.i.764, 64
  %add104.i.i.767 = add nsw i128 %sub78.i.i.759, %shr100.i.i.766
  %conv.i.831 = and i128 %sub70.i.i.753, 18446744073709551615
  %mul.i.833 = mul nuw i128 %conv2.i.1086, %conv.i.831
  %shr.i.834 = lshr i128 %mul.i.833, 64
  %conv5.i.835 = and i128 %mul.i.833, 18446744073709551615
  %mul13.i.839 = mul nuw i128 %conv12.i.1092, %conv.i.831
  %shr15.i.840 = lshr i128 %mul13.i.839, 64
  %conv17.i.841 = and i128 %mul13.i.839, 18446744073709551615
  %conv22.i.845 = and i128 %add84.i.i.761, 18446744073709551615
  %mul25.i.846 = mul nuw i128 %conv2.i.1086, %conv22.i.845
  %shr27.i.847 = lshr i128 %mul25.i.846, 64
  %conv29.i.848 = and i128 %mul25.i.846, 18446744073709551615
  %add.i.842 = add nuw nsw i128 %conv29.i.848, %shr.i.834
  %add31.i.849 = add nuw nsw i128 %add.i.842, %conv17.i.841
  %mul39.i.853 = mul nuw i128 %conv38.i.1106, %conv.i.831
  %shr41.i.854 = lshr i128 %mul39.i.853, 64
  %conv43.i.855 = and i128 %mul39.i.853, 18446744073709551615
  %mul52.i.858 = mul nuw i128 %conv12.i.1092, %conv22.i.845
  %shr54.i.859 = lshr i128 %mul52.i.858, 64
  %conv56.i.860 = and i128 %mul52.i.858, 18446744073709551615
  %conv63.i.864 = and i128 %add94.i.i.764, 18446744073709551615
  %mul66.i.865 = mul nuw i128 %conv2.i.1086, %conv63.i.864
  %shr68.i.866 = lshr i128 %mul66.i.865, 64
  %conv70.i.867 = and i128 %mul66.i.865, 18446744073709551615
  %mul80.i.872 = mul nuw i128 %conv79.i.1125, %conv.i.831
  %shr82.i.873 = lshr i128 %mul80.i.872, 64
  %conv84.i.874 = and i128 %mul80.i.872, 18446744073709551615
  %mul93.i.877 = mul nuw i128 %conv38.i.1106, %conv22.i.845
  %shr95.i.878 = lshr i128 %mul93.i.877, 64
  %conv97.i.879 = and i128 %mul93.i.877, 18446744073709551615
  %mul107.i.882 = mul nuw i128 %conv12.i.1092, %conv63.i.864
  %shr109.i.883 = lshr i128 %mul107.i.882, 64
  %conv111.i.884 = and i128 %mul107.i.882, 18446744073709551615
  %conv118.i.888 = and i128 %add104.i.i.767, 18446744073709551615
  %mul121.i.889 = mul nuw i128 %conv2.i.1086, %conv118.i.888
  %shr123.i.890 = lshr i128 %mul121.i.889, 64
  %conv125.i.891 = and i128 %mul121.i.889, 18446744073709551615
  %mul135.i.894 = mul nuw i128 %conv79.i.1125, %conv22.i.845
  %shr137.i.895 = lshr i128 %mul135.i.894, 64
  %conv139.i.896 = and i128 %mul135.i.894, 18446744073709551615
  %mul148.i.899 = mul nuw i128 %conv38.i.1106, %conv63.i.864
  %shr150.i.900 = lshr i128 %mul148.i.899, 64
  %conv152.i.901 = and i128 %mul148.i.899, 18446744073709551615
  %mul162.i.904 = mul nuw i128 %conv12.i.1092, %conv118.i.888
  %shr164.i.905 = lshr i128 %mul162.i.904, 64
  %conv166.i.906 = and i128 %mul162.i.904, 18446744073709551615
  %add102.i.881 = add nuw nsw i128 %shr109.i.883, %shr123.i.890
  %add116.i.886 = add nuw nsw i128 %add102.i.881, %conv166.i.906
  %add130.i.893 = add nuw nsw i128 %add116.i.886, %shr95.i.878
  %add141.i.897 = add nuw nsw i128 %add130.i.893, %conv152.i.901
  %add154.i.902 = add nuw nsw i128 %add141.i.897, %shr82.i.873
  %add168.i.907 = add nuw nsw i128 %add154.i.902, %conv139.i.896
  %mul176.i.909 = mul nuw i128 %conv79.i.1125, %conv63.i.864
  %shr178.i.910 = lshr i128 %mul176.i.909, 64
  %conv180.i.911 = and i128 %mul176.i.909, 18446744073709551615
  %mul189.i.914 = mul nuw i128 %conv38.i.1106, %conv118.i.888
  %shr191.i.915 = lshr i128 %mul189.i.914, 64
  %conv193.i.916 = and i128 %mul189.i.914, 18446744073709551615
  %add157.i.903 = add nuw nsw i128 %shr150.i.900, %shr164.i.905
  %add171.i.908 = add nuw nsw i128 %add157.i.903, %conv193.i.916
  %add182.i.912 = add nuw nsw i128 %add171.i.908, %shr137.i.895
  %add195.i.917 = add nuw nsw i128 %add182.i.912, %conv180.i.911
  %add198.i.918 = add nuw nsw i128 %shr178.i.910, %shr191.i.915
  %mul203.i.919 = mul nuw i128 %conv79.i.1125, %conv118.i.888
  %shr205.i.920 = lshr i128 %mul203.i.919, 64
  %conv207.i.921 = and i128 %mul203.i.919, 18446744073709551615
  %add209.i.922 = add nuw nsw i128 %add198.i.918, %conv207.i.921
  %add.i.670 = add nuw nsw i128 %conv5.i.835, 1267650600228229401427983728624
  %add3.i.672 = or i128 %add31.i.849, 1267650600228229401496703205376
  %shl.i.i.682 = shl nuw nsw i128 %add195.i.917, 32
  %add.i.i.683 = add i128 %add168.i.907, %shl.i.i.682
  %sub7.i.i.687 = sub nsw i128 %add195.i.917, %shr205.i.920
  %shl13.i.i.690 = shl i128 %add168.i.907, 32
  %shl28.i.i.698 = shl nuw nsw i128 %add209.i.922, 32
  %shl32.i.i.700 = shl nuw nsw i128 %add209.i.922, 33
  %add9.i.i.688 = add nuw nsw i128 %shl32.i.i.700, %add3.i.672
  %sub15.i.i.691 = add nsw i128 %add9.i.i.688, %sub7.i.i.687
  %add34.i.i.701 = sub i128 %sub15.i.i.691, %shl13.i.i.690
  %mul.i.i.702 = shl nuw nsw i128 %add209.i.922, 1
  %shl46.i.i.707 = shl nuw nsw i128 %shr205.i.920, 32
  %add3.i.i.684 = sub nsw i128 %add.i.670, %shr205.i.920
  %sub26.i.i.697 = sub nsw i128 %add3.i.i.684, %shl46.i.i.707
  %sub30.i.i.699 = sub nsw i128 %sub26.i.i.697, %add209.i.922
  %sub44.i.i.706 = sub nsw i128 %sub30.i.i.699, %shl28.i.i.698
  %sub48.i.i.708 = add i128 %sub44.i.i.706, %add.i.i.683
  %shl50.i.i.709 = shl nuw nsw i128 %shr205.i.920, 33
  %add34.i.850 = add nuw nsw i128 %shr27.i.847, 1267650600228229401427983728656
  %add45.i.856 = add nuw nsw i128 %add34.i.850, %conv70.i.867
  %add58.i.861 = add nuw nsw i128 %add45.i.856, %shr15.i.840
  %add72.i.868 = add nuw nsw i128 %add58.i.861, %conv56.i.860
  %add6.i.675 = add nuw nsw i128 %add72.i.868, %conv43.i.855
  %sub11.i.i.689 = add nuw nsw i128 %add6.i.675, %shl50.i.i.709
  %sub23.i.i.695 = add i128 %sub11.i.i.689, %mul.i.i.702
  %add37.i.i.703 = sub i128 %sub23.i.i.695, %sub7.i.i.687
  %add52.i.i.710 = sub i128 %add37.i.i.703, %shl.i.i.682
  %mul54.i.i.711 = mul nuw nsw i128 %shr205.i.920, 3
  %add61.i.862 = add nuw nsw i128 %shr68.i.866, 1267650600228229401427983728656
  %add75.i.869 = add nuw nsw i128 %add61.i.862, %conv125.i.891
  %add86.i.875 = add nuw nsw i128 %add75.i.869, %shr54.i.859
  %add99.i.880 = add nuw nsw i128 %add86.i.875, %conv111.i.884
  %add113.i.885 = add nuw nsw i128 %add99.i.880, %shr41.i.854
  %add127.i.892 = add nuw nsw i128 %add113.i.885, %conv97.i.879
  %add9.i.678 = add i128 %add127.i.892, %conv84.i.874
  %sub.i.i.685 = add i128 %add9.i.678, %mul54.i.i.711
  %add19.i.i.693 = sub i128 %sub.i.i.685, %shl28.i.i.698
  %sub41.i.i.705 = sub i128 %add19.i.i.693, %add.i.i.683
  %add56.i.i.712 = add i128 %sub41.i.i.705, %shl13.i.i.690
  %conv.i.655 = and i128 %sub70.i.1440, 18446744073709551615
  %mul.i.656 = mul nuw i128 %conv.i.655, %conv.i.655
  %shr.i.657 = lshr i128 %mul.i.656, 64
  %conv5.i.658 = and i128 %mul.i.656, 18446744073709551615
  %conv12.i.661 = and i128 %add84.i.1448, 18446744073709551615
  %mul13.i.662 = mul nuw i128 %conv12.i.661, %conv.i.655
  %shr15.i.663 = lshr i128 %mul13.i.662, 64
  %conv17.i.664 = shl i128 %mul13.i.662, 1
  %factor.i = and i128 %conv17.i.664, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i.657
  %conv27.i = and i128 %add94.i.1451, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i.655
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i.667 = add nuw nsw i128 %conv32.i, %shr15.i.663
  %conv42.i = and i128 %add104.i.1454, 18446744073709551615
  %mul43.i = mul nuw i128 %conv42.i, %conv.i.655
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i.661
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i.668 = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i.668, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i.661, %conv12.i.661
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i.669 = and i128 %mul72.i, 18446744073709551615
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i.661
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
  %shl.i.i.624 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.625 = add nuw nsw i128 %shl.i.i.624, %add125.i
  %sub7.i.i.629 = sub nsw i128 %add128.i, %shr135.i
  %shl13.i.i.632 = shl nuw nsw i128 %add125.i, 32
  %shl28.i.i.640 = shl nuw nsw i128 %add139.i, 32
  %shl32.i.i.642 = shl nuw nsw i128 %add139.i, 33
  %shl46.i.i.649 = shl nuw nsw i128 %shr135.i, 32
  %shl50.i.i.651 = shl nuw nsw i128 %shr135.i, 33
  %mul54.i.i.653 = mul nuw nsw i128 %shr135.i, 3
  %mul3.i.601 = shl i128 %add34.i.i.701, 1
  %mul.i.599.neg = mul i128 %sub48.i.i.708, -2
  %add.i.612 = add nuw nsw i128 %conv5.i.658, 41832469807531570247123463044592
  %add3.i.i.626 = sub nsw i128 %add.i.612, %shr135.i
  %sub26.i.i.639 = sub nsw i128 %add3.i.i.626, %shl46.i.i.649
  %sub30.i.i.641 = sub nsw i128 %sub26.i.i.639, %add139.i
  %sub44.i.i.648 = sub nsw i128 %sub30.i.i.641, %shl28.i.i.640
  %sub48.i.i.650 = add nsw i128 %sub44.i.i.648, %add.i.i.625
  %add.i.576 = sub i128 %sub48.i.i.650, %sub48.i.i.962
  %sub.i.583 = add i128 %add.i.576, %mul.i.599.neg
  %add4.i.593.neg = or i128 %add21.i, 41832469807531570249391205777408
  %add9.i.i.630 = add nuw nsw i128 %add4.i.593.neg, %shl32.i.i.642
  %sub15.i.i.633 = add nsw i128 %add9.i.i.630, %sub7.i.i.629
  %add34.i.i.643 = sub nsw i128 %sub15.i.i.633, %shl13.i.i.632
  %add2.i.578 = sub i128 %add34.i.i.643, %add34.i.i.955
  %sub11.i.585 = sub i128 %add2.i.578, %mul3.i.601
  %mul6.i.603.neg = mul i128 %add52.i.i.710, -2
  %tmp4162 = add nuw nsw i128 %add34.i.667, %add139.i
  %tmp4163 = shl nuw nsw i128 %tmp4162, 1
  %add6.i.617 = add nuw nsw i128 %conv76.i.669, 41832469807531570247123463045648
  %sub11.i.i.631 = add nuw nsw i128 %add6.i.617, %shl50.i.i.651
  %sub23.i.i.637 = sub nsw i128 %sub11.i.i.631, %sub7.i.i.629
  %add37.i.i.645 = sub nsw i128 %sub23.i.i.637, %shl.i.i.624
  %add52.i.i.652 = sub i128 %add37.i.i.645, %add52.i.i.964
  %add4.i.580 = add i128 %add52.i.i.652, %mul6.i.603.neg
  %sub14.i.587 = add i128 %add4.i.580, %tmp4163
  %mul9.i.605.neg = mul i128 %add56.i.i.712, -2
  %add81.i = add nuw nsw i128 %shr74.i, 41832469807531570247123463045648
  %add9.i.620 = add nuw nsw i128 %add81.i, %mul54.i.i.653
  %sub.i.i.627 = add nuw nsw i128 %add9.i.620, %mul64.i
  %add19.i.i.635 = sub nsw i128 %sub.i.i.627, %shl28.i.i.640
  %sub41.i.i.647 = sub nsw i128 %add19.i.i.635, %add.i.i.625
  %add56.i.i.654 = add i128 %sub41.i.i.647, %shl13.i.i.632
  %add6.i.582 = sub i128 %add56.i.i.654, %add56.i.i.966
  %sub17.i.589 = add i128 %add6.i.582, %mul9.i.605.neg
  %add4.i.571 = add i128 %add52.i.i.710, 162259276829213363382781917267968
  %sub14.i = sub i128 %add4.i.571, %sub14.i.587
  %shr.i.i.420 = lshr i128 %sub14.i, 64
  %sub17.i = add i128 %add56.i.i.712, 162259276829231810126851331852288
  %add.i.i.418 = sub i128 %sub17.i, %sub17.i.589
  %add8.i.i.421 = add i128 %add.i.i.418, %shr.i.i.420
  %conv12.i.i.422 = and i128 %sub14.i, 18446744073709551615
  %add13.i.i.423 = add nuw nsw i128 %conv12.i.i.422, 18446673704965373952
  %shr22.i.i.427 = lshr i128 %add8.i.i.421, 64
  %conv23.i.i.428 = trunc i128 %shr22.i.i.427 to i64
  %conv26.i.i.429 = and i128 %add8.i.i.421, 18446744073709551615
  %sub.i.i.430 = sub nsw i128 %conv26.i.i.429, %shr22.i.i.427
  %shl.i.i.431 = shl nuw nsw i128 %shr22.i.i.427, 32
  %add32.i.i.432 = add nsw i128 %sub.i.i.430, %shl.i.i.431
  %shr34.i.i.433 = lshr i128 %add32.i.i.432, 64
  %conv35.i.i.434 = trunc i128 %shr34.i.i.433 to i64
  %add36.i.i.435 = add i64 %conv35.i.i.434, %conv23.i.i.428
  %conv39.i.i.436 = and i128 %add32.i.i.432, 18446744073709551615
  %sub43.i.i.437 = sub nsw i128 %conv39.i.i.436, %shr34.i.i.433
  %shl45.i.i.438 = shl nuw nsw i128 %shr34.i.i.433, 32
  %add47.i.i.439 = add nsw i128 %sub43.i.i.437, %shl45.i.i.438
  %conv48.i.i.440 = zext i64 %add36.i.i.435 to i128
  %shl52.i.i.442 = shl nuw nsw i128 %conv48.i.i.440, 32
  %shr56.i.i.444 = lshr i128 %add47.i.i.439, 64
  %conv57.i.i.445 = trunc i128 %shr56.i.i.444 to i64
  %sub58.i.i.446 = sub i64 0, %conv57.i.i.445
  %conv60.i.i.447 = trunc i128 %add47.i.i.439 to i64
  %and.i.i.448 = and i64 %conv60.i.i.447, 9223372036854775807
  %neg.i.i.449 = sub nsw i64 9223372032559808512, %and.i.i.448
  %sub62177.i.i.450 = and i64 %neg.i.i.449, %conv60.i.i.447
  %and66.i.i.451 = ashr i64 %sub62177.i.i.450, 63
  %or.i.i.452 = or i64 %and66.i.i.451, %sub58.i.i.446
  %conv68.i.i.453 = zext i64 %or.i.i.452 to i128
  %sub.i.574 = add i128 %sub48.i.i.708, 162259276829231810126855626815487
  %add16.i.i.424 = sub i128 %sub.i.574, %sub.i.583
  %add50.i.i.441 = add i128 %add16.i.i.424, %conv48.i.i.440
  %sub70.i.i.454 = sub i128 %add50.i.i.441, %conv68.i.i.453
  %and71.i.i.455 = and i64 %or.i.i.452, 4294967295
  %conv72.i.i.456 = zext i64 %and71.i.i.455 to i128
  %and75.i.i.458 = and i64 %or.i.i.452, -4294967295
  %conv76.i.i.459 = zext i64 %and75.i.i.458 to i128
  %sub78.i.i.460 = sub nsw i128 %add47.i.i.439, %conv76.i.i.459
  %shr80.i.i.461 = lshr i128 %sub70.i.i.454, 64
  %sub11.i = add i128 %add34.i.i.701, 1460333491462920270524206387560447
  %add19.i.i.426 = sub i128 %sub11.i, %sub11.i.585
  %sub54.i.i.443 = sub i128 %add19.i.i.426, %shl52.i.i.442
  %sub74.i.i.457 = sub i128 %sub54.i.i.443, %conv72.i.i.456
  %add84.i.i.462 = add i128 %sub74.i.i.457, %shr80.i.i.461
  %shr90.i.i.464 = lshr i128 %add84.i.i.462, 64
  %add94.i.i.465 = add nuw nsw i128 %add13.i.i.423, %shr90.i.i.464
  %shr100.i.i.467 = lshr i128 %add94.i.i.465, 64
  %add104.i.i.468 = add nsw i128 %sub78.i.i.460, %shr100.i.i.467
  %conv2.i.475 = and i128 %sub70.i.i.454, 18446744073709551615
  %mul.i.476 = mul nuw i128 %conv2.i.475, %conv.i.655
  %shr.i.477 = lshr i128 %mul.i.476, 64
  %conv5.i.478 = and i128 %mul.i.476, 18446744073709551615
  %conv12.i.481 = and i128 %add84.i.i.462, 18446744073709551615
  %mul13.i.482 = mul nuw i128 %conv12.i.481, %conv.i.655
  %shr15.i.483 = lshr i128 %mul13.i.482, 64
  %conv17.i.484 = and i128 %mul13.i.482, 18446744073709551615
  %mul25.i.489 = mul nuw i128 %conv2.i.475, %conv12.i.661
  %shr27.i.490 = lshr i128 %mul25.i.489, 64
  %conv29.i.491 = and i128 %mul25.i.489, 18446744073709551615
  %conv38.i.495 = and i128 %add94.i.i.465, 18446744073709551615
  %mul39.i.496 = mul nuw i128 %conv38.i.495, %conv.i.655
  %shr41.i.497 = lshr i128 %mul39.i.496, 64
  %conv43.i.498 = and i128 %mul39.i.496, 18446744073709551615
  %mul52.i.501 = mul nuw i128 %conv12.i.481, %conv12.i.661
  %shr54.i.502 = lshr i128 %mul52.i.501, 64
  %conv56.i.503 = and i128 %mul52.i.501, 18446744073709551615
  %mul66.i.508 = mul nuw i128 %conv2.i.475, %conv27.i
  %shr68.i.509 = lshr i128 %mul66.i.508, 64
  %conv70.i.510 = and i128 %mul66.i.508, 18446744073709551615
  %add34.i.493 = add nuw nsw i128 %conv70.i.510, %shr27.i.490
  %add45.i.499 = add nuw nsw i128 %add34.i.493, %shr15.i.483
  %add58.i.504 = add nuw nsw i128 %add45.i.499, %conv56.i.503
  %add72.i.511 = add nuw nsw i128 %add58.i.504, %conv43.i.498
  %conv79.i.514 = and i128 %add104.i.i.468, 18446744073709551615
  %mul80.i.515 = mul nuw i128 %conv79.i.514, %conv.i.655
  %shr82.i.516 = lshr i128 %mul80.i.515, 64
  %conv84.i.517 = and i128 %mul80.i.515, 18446744073709551615
  %mul93.i.520 = mul nuw i128 %conv38.i.495, %conv12.i.661
  %shr95.i.521 = lshr i128 %mul93.i.520, 64
  %conv97.i.522 = and i128 %mul93.i.520, 18446744073709551615
  %mul107.i.525 = mul nuw i128 %conv12.i.481, %conv27.i
  %shr109.i.526 = lshr i128 %mul107.i.525, 64
  %conv111.i.527 = and i128 %mul107.i.525, 18446744073709551615
  %mul121.i.532 = mul nuw i128 %conv2.i.475, %conv42.i
  %shr123.i.533 = lshr i128 %mul121.i.532, 64
  %conv125.i.534 = and i128 %mul121.i.532, 18446744073709551615
  %mul135.i.537 = mul nuw i128 %conv79.i.514, %conv12.i.661
  %shr137.i.538 = lshr i128 %mul135.i.537, 64
  %conv139.i.539 = and i128 %mul135.i.537, 18446744073709551615
  %mul148.i.542 = mul nuw i128 %conv38.i.495, %conv27.i
  %shr150.i.543 = lshr i128 %mul148.i.542, 64
  %conv152.i.544 = and i128 %mul148.i.542, 18446744073709551615
  %mul162.i.547 = mul nuw i128 %conv12.i.481, %conv42.i
  %shr164.i.548 = lshr i128 %mul162.i.547, 64
  %conv166.i.549 = and i128 %mul162.i.547, 18446744073709551615
  %mul176.i.552 = mul nuw i128 %conv79.i.514, %conv27.i
  %shr178.i.553 = lshr i128 %mul176.i.552, 64
  %conv180.i.554 = and i128 %mul176.i.552, 18446744073709551615
  %mul189.i.557 = mul nuw i128 %conv38.i.495, %conv42.i
  %shr191.i.558 = lshr i128 %mul189.i.557, 64
  %conv193.i.559 = and i128 %mul189.i.557, 18446744073709551615
  %mul203.i.562 = mul nuw i128 %conv79.i.514, %conv42.i
  %shr205.i.563 = lshr i128 %mul203.i.562, 64
  %conv207.i.564 = and i128 %mul203.i.562, 18446744073709551615
  %add.i.i.345 = add i128 %25, 18446744069414584320
  %shr.i.i = lshr i128 %sub23.i.i.23064136, 64
  %add8.i.i = add i128 %add.i.i.345, %shr.i.i
  %conv12.i.i = and i128 %sub23.i.i.23064136, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %add16.i.i = add i128 %add3.i.i.22954134, 18446744073709551615
  %add19.i.i.347 = add i128 %sub15.i.i.23024135, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i.348 = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i.349 = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i.348, %shl.i.i.349
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
  %sub54.i.i = sub i128 %add19.i.i.347, %shl52.i.i
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
  %shr.i.353 = lshr i128 %add52.i.i.964, 64
  %add.i.351 = add nuw nsw i128 %shr.i.353, 18446744069414584320
  %add8.i.354 = add i128 %add.i.351, %add56.i.i.966
  %conv12.i.355 = and i128 %add52.i.i.964, 18446744073709551615
  %add13.i.356 = add nuw nsw i128 %conv12.i.355, 18446673704965373952
  %add16.i.357 = add i128 %sub48.i.i.962, 18446744073709551615
  %add19.i.359 = add i128 %add34.i.i.955, 1298074214633706907132628377272319
  %shr22.i.360 = lshr i128 %add8.i.354, 64
  %conv23.i.361 = trunc i128 %shr22.i.360 to i64
  %conv26.i.362 = and i128 %add8.i.354, 18446744073709551615
  %sub.i.363 = sub nsw i128 %conv26.i.362, %shr22.i.360
  %shl.i.364 = shl nuw nsw i128 %shr22.i.360, 32
  %add32.i.365 = add nsw i128 %sub.i.363, %shl.i.364
  %shr34.i.366 = lshr i128 %add32.i.365, 64
  %conv35.i.367 = trunc i128 %shr34.i.366 to i64
  %add36.i.368 = add i64 %conv35.i.367, %conv23.i.361
  %conv39.i.369 = and i128 %add32.i.365, 18446744073709551615
  %sub43.i.370 = sub nsw i128 %conv39.i.369, %shr34.i.366
  %shl45.i.371 = shl nuw nsw i128 %shr34.i.366, 32
  %add47.i.372 = add nsw i128 %sub43.i.370, %shl45.i.371
  %conv48.i.373 = zext i64 %add36.i.368 to i128
  %add50.i.374 = add i128 %add16.i.357, %conv48.i.373
  %shl52.i.375 = shl nuw nsw i128 %conv48.i.373, 32
  %sub54.i.376 = sub i128 %add19.i.359, %shl52.i.375
  %shr56.i.377 = lshr i128 %add47.i.372, 64
  %conv57.i.378 = trunc i128 %shr56.i.377 to i64
  %sub58.i.379 = sub i64 0, %conv57.i.378
  %conv60.i.380 = trunc i128 %add47.i.372 to i64
  %and.i.381 = and i64 %conv60.i.380, 9223372036854775807
  %neg.i.382 = sub nsw i64 9223372032559808512, %and.i.381
  %sub62177.i.383 = and i64 %neg.i.382, %conv60.i.380
  %and66.i.384 = ashr i64 %sub62177.i.383, 63
  %or.i.385 = or i64 %and66.i.384, %sub58.i.379
  %conv68.i.386 = zext i64 %or.i.385 to i128
  %sub70.i.387 = sub i128 %add50.i.374, %conv68.i.386
  %and71.i.388 = and i64 %or.i.385, 4294967295
  %conv72.i.389 = zext i64 %and71.i.388 to i128
  %sub74.i.390 = sub i128 %sub54.i.376, %conv72.i.389
  %and75.i.391 = and i64 %or.i.385, -4294967295
  %conv76.i.392 = zext i64 %and75.i.391 to i128
  %sub78.i.393 = sub nsw i128 %add47.i.372, %conv76.i.392
  %shr80.i.394 = lshr i128 %sub70.i.387, 64
  %add84.i.395 = add i128 %sub74.i.390, %shr80.i.394
  %shr90.i.397 = lshr i128 %add84.i.395, 64
  %add94.i.398 = add nuw nsw i128 %add13.i.356, %shr90.i.397
  %shr100.i.400 = lshr i128 %add94.i.398, 64
  %add104.i.401 = add nsw i128 %sub78.i.393, %shr100.i.400
  %conv.i = and i128 %sub70.i.i, 18446744073709551615
  %conv2.i = and i128 %sub70.i.387, 18446744073709551615
  %mul.i.407 = mul nuw i128 %conv2.i, %conv.i
  %shr.i.408 = lshr i128 %mul.i.407, 64
  %conv12.i.411 = and i128 %add84.i.395, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i.411, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = and i128 %mul13.i, 18446744073709551615
  %conv22.i = and i128 %add84.i.i, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv22.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.412 = add nuw nsw i128 %conv29.i, %shr.i.408
  %add31.i = add nuw nsw i128 %add.i.412, %conv17.i
  %conv38.i = and i128 %add94.i.398, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.411, %conv22.i
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %conv63.i = and i128 %add94.i.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv2.i, %conv63.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i, %shr15.i
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  %conv79.i = and i128 %add104.i.401, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv22.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.411, %conv63.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %conv118.i = and i128 %add104.i.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv2.i, %conv118.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %conv125.i, %shr68.i
  %add75.i = add nuw nsw i128 %add61.i, %shr54.i
  %add86.i = add nuw nsw i128 %add75.i, %conv111.i
  %add99.i = add nuw nsw i128 %add86.i, %shr41.i
  %add113.i = add nuw nsw i128 %add99.i, %conv97.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  %mul135.i = mul nuw i128 %conv79.i, %conv22.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv63.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv12.i.411, %conv118.i
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr123.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  %mul176.i = mul nuw i128 %conv79.i, %conv63.i
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv118.i
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr164.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv118.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %conv5.i = shl i128 %mul.i.407, 1
  %mul.i = and i128 %conv5.i, 36893488147419103230
  %mul3.i = shl nuw nsw i128 %add31.i, 1
  %mul6.i = shl nuw nsw i128 %add72.i, 1
  %mul9.i = shl i128 %add127.i, 1
  %mul12.i = shl i128 %add168.i, 1
  %mul15.i = shl nuw nsw i128 %add195.i, 1
  %mul18.i = shl nuw nsw i128 %add209.i, 1
  %mul21.i = shl nuw nsw i128 %shr205.i, 1
  %add4.i = or i128 %add72.i.511, 1180591620717411303424
  %add.i.485 = add nuw nsw i128 %shr.i.477, 1180591621816922931200
  %add31.i.492 = add nuw nsw i128 %add.i.485, %conv29.i.491
  %add2.i = add nuw nsw i128 %add31.i.492, %conv17.i.484
  %sub19.i = sub nsw i128 %add2.i, %mul3.i
  %add102.i.524 = add nuw nsw i128 %shr123.i.533, 1180591620717411303360
  %add116.i.529 = add nuw nsw i128 %add102.i.524, %shr109.i.526
  %add130.i.536 = add nuw nsw i128 %add116.i.529, %conv166.i.549
  %add141.i.540 = add nuw nsw i128 %add130.i.536, %shr95.i.521
  %add154.i.545 = add nuw nsw i128 %add141.i.540, %conv152.i.544
  %add168.i.550 = add nuw nsw i128 %add154.i.545, %shr82.i.516
  %add8.i.336 = add i128 %add168.i.550, %conv139.i.539
  %sub28.i = sub i128 %add8.i.336, %mul12.i
  %add157.i.546 = add nuw nsw i128 %shr164.i.548, 1180591620717411303360
  %add171.i.551 = add nuw nsw i128 %add157.i.546, %shr150.i.543
  %add182.i.555 = add nuw nsw i128 %add171.i.551, %conv193.i.559
  %add195.i.560 = add nuw nsw i128 %add182.i.555, %shr137.i.538
  %add10.i = add nuw nsw i128 %add195.i.560, %conv180.i.554
  %sub31.i = sub nsw i128 %add10.i, %mul15.i
  %add198.i.561 = add nuw nsw i128 %shr191.i.558, 1180591620717411303360
  %add209.i.565 = add nuw nsw i128 %add198.i.561, %shr178.i.553
  %add12.i = add nuw nsw i128 %add209.i.565, %conv207.i.564
  %sub34.i = sub nsw i128 %add12.i, %mul18.i
  %add14.i = sub nsw i128 1180591620717411303360, %mul21.i
  %sub37.i = add nuw nsw i128 %add14.i, %shr205.i.563
  %add3.i = or i128 %sub19.i, 40564819207303340847894502572032
  %shl.i.i = shl i128 %sub31.i, 32
  %add.i.i = add i128 %sub28.i, %shl.i.i
  %sub7.i.i = sub i128 %sub31.i, %sub37.i
  %shl13.i.i = shl i128 %sub28.i, 32
  %shl28.i.i = shl nsw i128 %sub34.i, 32
  %shl32.i.i = shl nsw i128 %sub34.i, 33
  %add9.i.i = add nsw i128 %shl32.i.i, %add3.i
  %sub15.i.i = add i128 %add9.i.i, %sub7.i.i
  %add34.i.i = sub i128 %sub15.i.i, %shl13.i.i
  %mul.i.i = shl nsw i128 %sub34.i, 1
  %shl46.i.i = shl nuw nsw i128 %sub37.i, 32
  %sub.i.337 = sub nsw i128 40564819208483932466412890619200, %mul.i
  %add.i.326 = add nuw nsw i128 %sub.i.337, %conv5.i.478
  %add3.i.i = sub nsw i128 %add.i.326, %sub37.i
  %sub26.i.i = sub nsw i128 %add3.i.i, %shl46.i.i
  %sub30.i.i = sub nsw i128 %sub26.i.i, %sub34.i
  %sub44.i.i = sub i128 %sub30.i.i, %shl28.i.i
  %sub48.i.i = add i128 %sub44.i.i, %add.i.i
  %shl50.i.i = shl nuw nsw i128 %sub37.i, 33
  %sub22.i = sub nsw i128 40564819207303340845695479316992, %mul6.i
  %add6.i = add i128 %sub22.i, %add4.i
  %sub11.i.i = add i128 %add6.i, %shl50.i.i
  %sub23.i.i = add i128 %sub11.i.i, %mul.i.i
  %add37.i.i = sub i128 %sub23.i.i, %sub7.i.i
  %add52.i.i = sub i128 %add37.i.i, %shl.i.i
  %mul54.i.i = mul nuw nsw i128 %sub37.i, 3
  %add75.i.512 = add nuw nsw i128 %shr68.i.509, 40564819208483932465038501085760
  %add86.i.518 = add nuw nsw i128 %add75.i.512, %conv125.i.534
  %add99.i.523 = add nuw nsw i128 %add86.i.518, %shr54.i.502
  %add113.i.528 = add nuw nsw i128 %add99.i.523, %conv111.i.527
  %add127.i.535 = add nuw nsw i128 %add113.i.528, %shr41.i.497
  %add6.i.334 = add nuw nsw i128 %add127.i.535, %conv97.i.522
  %sub25.i = add i128 %add6.i.334, %conv84.i.517
  %add9.i = sub i128 %sub25.i, %mul9.i
  %sub.i.i = add i128 %add9.i, %mul54.i.i
  %add19.i.i = sub i128 %sub.i.i, %shl28.i.i
  %sub41.i.i = sub i128 %add19.i.i, %add.i.i
  %add56.i.i = add i128 %sub41.i.i, %shl13.i.i
  %neg.i.303 = xor i128 %coerce.sroa.0.0.insert.insert, -1
  %and.i.304 = and i64 %26, %or41.i
  %conv3.i.305 = zext i64 %and.i.304 to i128
  %and6.i.306 = and i128 %sub.i.583, %neg.i.303
  %or.i.307 = or i128 %and6.i.306, %conv3.i.305
  %and.1.i.309 = and i64 %27, %or41.i
  %conv3.1.i.310 = zext i64 %and.1.i.309 to i128
  %and6.1.i.312 = and i128 %sub11.i.585, %neg.i.303
  %or.1.i.313 = or i128 %and6.1.i.312, %conv3.1.i.310
  %and.2.i.315 = and i64 %28, %or41.i
  %conv3.2.i.316 = zext i64 %and.2.i.315 to i128
  %and6.2.i.318 = and i128 %sub14.i.587, %neg.i.303
  %or.2.i.319 = or i128 %and6.2.i.318, %conv3.2.i.316
  %and.3.i.321 = and i64 %29, %or41.i
  %conv3.3.i.322 = zext i64 %and.3.i.321 to i128
  %and6.3.i.324 = and i128 %sub17.i.589, %neg.i.303
  %or.3.i.325 = or i128 %and6.3.i.324, %conv3.3.i.322
  %39 = load i128, i128* %x1, align 16, !tbaa !2
  %xor.i.281 = xor i128 %39, %or.i.307
  %and.i.282 = and i128 %xor.i.281, %coerce14.sroa.0.0.insert.insert
  %xor6.i.283 = xor i128 %and.i.282, %or.i.307
  %arrayidx.1.i.284 = getelementptr inbounds i128, i128* %x1, i64 1
  %40 = load i128, i128* %arrayidx.1.i.284, align 16, !tbaa !2
  %xor.1.i.286 = xor i128 %40, %or.1.i.313
  %and.1.i.287 = and i128 %xor.1.i.286, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.288 = xor i128 %and.1.i.287, %or.1.i.313
  %41 = load i128, i128* %10, align 16, !tbaa !2
  %xor.2.i.291 = xor i128 %41, %or.2.i.319
  %and.2.i.292 = and i128 %xor.2.i.291, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.293 = xor i128 %and.2.i.292, %or.2.i.319
  %42 = load i128, i128* %8, align 16, !tbaa !2
  %xor.3.i.296 = xor i128 %42, %or.3.i.325
  %and.3.i.297 = and i128 %xor.3.i.296, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.298 = xor i128 %and.3.i.297, %or.3.i.325
  %and.i.255 = and i64 %30, %or41.i
  %conv3.i.256 = zext i64 %and.i.255 to i128
  %and6.i.257 = and i128 %sub48.i.i, %neg.i.303
  %or.i.258 = or i128 %and6.i.257, %conv3.i.256
  %and.1.i.260 = and i64 %31, %or41.i
  %conv3.1.i.261 = zext i64 %and.1.i.260 to i128
  %and6.1.i.263 = and i128 %add34.i.i, %neg.i.303
  %or.1.i.264 = or i128 %and6.1.i.263, %conv3.1.i.261
  %and.2.i.266 = and i64 %32, %or41.i
  %conv3.2.i.267 = zext i64 %and.2.i.266 to i128
  %and6.2.i.269 = and i128 %add52.i.i, %neg.i.303
  %or.2.i.270 = or i128 %and6.2.i.269, %conv3.2.i.267
  %and.3.i.272 = and i64 %33, %or41.i
  %conv3.3.i.273 = zext i64 %and.3.i.272 to i128
  %and6.3.i.275 = and i128 %add56.i.i, %neg.i.303
  %or.3.i.276 = or i128 %and6.3.i.275, %conv3.3.i.273
  %43 = load i128, i128* %y1, align 16, !tbaa !2
  %xor.i.232 = xor i128 %43, %or.i.258
  %and.i.233 = and i128 %xor.i.232, %coerce14.sroa.0.0.insert.insert
  %xor6.i.234 = xor i128 %and.i.233, %or.i.258
  %arrayidx.1.i.235 = getelementptr inbounds i128, i128* %y1, i64 1
  %44 = load i128, i128* %arrayidx.1.i.235, align 16, !tbaa !2
  %xor.1.i.237 = xor i128 %44, %or.1.i.264
  %and.1.i.238 = and i128 %xor.1.i.237, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.239 = xor i128 %and.1.i.238, %or.1.i.264
  %arrayidx.2.i.240 = getelementptr inbounds i128, i128* %y1, i64 2
  %45 = load i128, i128* %arrayidx.2.i.240, align 16, !tbaa !2
  %xor.2.i.242 = xor i128 %45, %or.2.i.270
  %and.2.i.243 = and i128 %xor.2.i.242, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.244 = xor i128 %and.2.i.243, %or.2.i.270
  %arrayidx.3.i.245 = getelementptr inbounds i128, i128* %y1, i64 3
  %46 = load i128, i128* %arrayidx.3.i.245, align 16, !tbaa !2
  %xor.3.i.247 = xor i128 %46, %or.3.i.276
  %and.3.i.248 = and i128 %xor.3.i.247, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.249 = xor i128 %and.3.i.248, %or.3.i.276
  %47 = load i64, i64* %z2, align 8, !tbaa !6
  %and.i.220 = and i64 %47, %or41.i
  %conv3.i = zext i64 %and.i.220 to i128
  %and6.i = and i128 %sub48.i.i.1850, %neg.i.303
  %or.i.221 = or i128 %conv3.i, %and6.i
  %48 = load i64, i64* %arrayidx1.i.3392, align 8, !tbaa !6
  %and.1.i.223 = and i64 %48, %or41.i
  %conv3.1.i = zext i64 %and.1.i.223 to i128
  %and6.1.i = and i128 %add34.i.i.1843, %neg.i.303
  %or.1.i = or i128 %conv3.1.i, %and6.1.i
  %49 = load i64, i64* %arrayidx2.i.3394, align 8, !tbaa !6
  %and.2.i.225 = and i64 %49, %or41.i
  %conv3.2.i = zext i64 %and.2.i.225 to i128
  %and6.2.i = and i128 %add52.i.i.1852, %neg.i.303
  %or.2.i = or i128 %conv3.2.i, %and6.2.i
  %50 = load i64, i64* %arrayidx4.i.3396, align 8, !tbaa !6
  %and.3.i.227 = and i64 %50, %or41.i
  %conv3.3.i = zext i64 %and.3.i.227 to i128
  %and6.3.i = and i128 %add56.i.i.1854, %neg.i.303
  %or.3.i = or i128 %conv3.3.i, %and6.3.i
  %51 = load i128, i128* %z1, align 16, !tbaa !2
  %xor.i = xor i128 %51, %or.i.221
  %and.i.214 = and i128 %xor.i, %coerce14.sroa.0.0.insert.insert
  %xor6.i = xor i128 %and.i.214, %or.i.221
  %52 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %xor.1.i = xor i128 %52, %or.1.i
  %and.1.i = and i128 %xor.1.i, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i = xor i128 %and.1.i, %or.1.i
  %53 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %xor.2.i = xor i128 %53, %or.2.i
  %and.2.i = and i128 %xor.2.i, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i = xor i128 %and.2.i, %or.2.i
  %54 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %xor.3.i = xor i128 %54, %or.3.i
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
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_double(i128* nocapture %x_out, i128* nocapture %y_out, i128* nocapture %z_out, i128* nocapture readonly %x_in, i128* nocapture readonly %y_in, i128* nocapture readonly %z_in) #0 {
entry:
  %0 = load i128, i128* %x_in, align 16, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i128, i128* %x_in, i64 1
  %1 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %arrayidx4.i = getelementptr inbounds i128, i128* %x_in, i64 2
  %2 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx6.i = getelementptr inbounds i128, i128* %x_in, i64 3
  %3 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %arrayidx.i.i.1209 = getelementptr inbounds i128, i128* %z_in, i64 3
  %4 = load i128, i128* %arrayidx.i.i.1209, align 16, !tbaa !2
  %add.i.i.1210 = add i128 %4, 18446744069414584320
  %arrayidx6.i.i.1211 = getelementptr inbounds i128, i128* %z_in, i64 2
  %5 = load i128, i128* %arrayidx6.i.i.1211, align 16, !tbaa !2
  %shr.i.i.1212 = lshr i128 %5, 64
  %add8.i.i.1213 = add i128 %add.i.i.1210, %shr.i.i.1212
  %conv12.i.i.1214 = and i128 %5, 18446744073709551615
  %add13.i.i.1215 = add nuw nsw i128 %conv12.i.i.1214, 18446673704965373952
  %6 = load i128, i128* %z_in, align 16, !tbaa !2
  %add16.i.i.1216 = add i128 %6, 18446744073709551615
  %arrayidx18.i.i.1217 = getelementptr inbounds i128, i128* %z_in, i64 1
  %7 = load i128, i128* %arrayidx18.i.i.1217, align 16, !tbaa !2
  %add19.i.i.1218 = add i128 %7, 1298074214633706907132628377272319
  %shr22.i.i.1219 = lshr i128 %add8.i.i.1213, 64
  %conv23.i.i.1220 = trunc i128 %shr22.i.i.1219 to i64
  %conv26.i.i.1221 = and i128 %add8.i.i.1213, 18446744073709551615
  %sub.i.i.1222 = sub nsw i128 %conv26.i.i.1221, %shr22.i.i.1219
  %shl.i.i.1223 = shl nuw nsw i128 %shr22.i.i.1219, 32
  %add32.i.i.1224 = add nsw i128 %sub.i.i.1222, %shl.i.i.1223
  %shr34.i.i.1225 = lshr i128 %add32.i.i.1224, 64
  %conv35.i.i.1226 = trunc i128 %shr34.i.i.1225 to i64
  %add36.i.i.1227 = add i64 %conv35.i.i.1226, %conv23.i.i.1220
  %conv39.i.i.1228 = and i128 %add32.i.i.1224, 18446744073709551615
  %sub43.i.i.1229 = sub nsw i128 %conv39.i.i.1228, %shr34.i.i.1225
  %shl45.i.i.1230 = shl nuw nsw i128 %shr34.i.i.1225, 32
  %add47.i.i.1231 = add nsw i128 %sub43.i.i.1229, %shl45.i.i.1230
  %conv48.i.i.1232 = zext i64 %add36.i.i.1227 to i128
  %add50.i.i.1233 = add i128 %add16.i.i.1216, %conv48.i.i.1232
  %shl52.i.i.1234 = shl nuw nsw i128 %conv48.i.i.1232, 32
  %sub54.i.i.1235 = sub i128 %add19.i.i.1218, %shl52.i.i.1234
  %shr56.i.i.1236 = lshr i128 %add47.i.i.1231, 64
  %conv57.i.i.1237 = trunc i128 %shr56.i.i.1236 to i64
  %sub58.i.i.1238 = sub i64 0, %conv57.i.i.1237
  %conv60.i.i.1239 = trunc i128 %add47.i.i.1231 to i64
  %and.i.i.1240 = and i64 %conv60.i.i.1239, 9223372036854775807
  %neg.i.i.1241 = sub nsw i64 9223372032559808512, %and.i.i.1240
  %sub62177.i.i.1242 = and i64 %neg.i.i.1241, %conv60.i.i.1239
  %and66.i.i.1243 = ashr i64 %sub62177.i.i.1242, 63
  %or.i.i.1244 = or i64 %and66.i.i.1243, %sub58.i.i.1238
  %conv68.i.i.1245 = zext i64 %or.i.i.1244 to i128
  %sub70.i.i.1246 = sub i128 %add50.i.i.1233, %conv68.i.i.1245
  %and71.i.i.1247 = and i64 %or.i.i.1244, 4294967295
  %conv72.i.i.1248 = zext i64 %and71.i.i.1247 to i128
  %sub74.i.i.1249 = sub i128 %sub54.i.i.1235, %conv72.i.i.1248
  %and75.i.i.1250 = and i64 %or.i.i.1244, -4294967295
  %conv76.i.i.1251 = zext i64 %and75.i.i.1250 to i128
  %sub78.i.i.1252 = sub nsw i128 %add47.i.i.1231, %conv76.i.i.1251
  %shr80.i.i.1253 = lshr i128 %sub70.i.i.1246, 64
  %add84.i.i.1254 = add i128 %sub74.i.i.1249, %shr80.i.i.1253
  %shr90.i.i.1256 = lshr i128 %add84.i.i.1254, 64
  %add94.i.i.1257 = add nuw nsw i128 %add13.i.i.1215, %shr90.i.i.1256
  %shr100.i.i.1259 = lshr i128 %add94.i.i.1257, 64
  %add104.i.i.1260 = add nsw i128 %sub78.i.i.1252, %shr100.i.i.1259
  %conv.i.1266 = and i128 %sub70.i.i.1246, 18446744073709551615
  %mul.i.1267 = mul nuw i128 %conv.i.1266, %conv.i.1266
  %shr.i.1268 = lshr i128 %mul.i.1267, 64
  %conv5.i.1269 = and i128 %mul.i.1267, 18446744073709551615
  %conv12.i.1272 = and i128 %add84.i.i.1254, 18446744073709551615
  %mul13.i.1273 = mul nuw i128 %conv12.i.1272, %conv.i.1266
  %shr15.i.1274 = lshr i128 %mul13.i.1273, 64
  %conv17.i.1275 = shl i128 %mul13.i.1273, 1
  %factor.i.1276 = and i128 %conv17.i.1275, 36893488147419103230
  %add21.i.1277 = add nuw nsw i128 %factor.i.1276, %shr.i.1268
  %conv27.i.1280 = and i128 %add94.i.i.1257, 18446744073709551615
  %mul28.i.1281 = mul nuw i128 %conv27.i.1280, %conv.i.1266
  %shr30.i.1282 = lshr i128 %mul28.i.1281, 64
  %conv32.i.1283 = and i128 %mul28.i.1281, 18446744073709551615
  %add34.i.1284 = add nuw nsw i128 %conv32.i.1283, %shr15.i.1274
  %conv42.i.1288 = and i128 %add104.i.i.1260, 18446744073709551615
  %mul43.i.1289 = mul nuw i128 %conv42.i.1288, %conv.i.1266
  %shr45.i.1290 = lshr i128 %mul43.i.1289, 64
  %conv47.i.1291 = and i128 %mul43.i.1289, 18446744073709551615
  %mul56.i.1294 = mul nuw i128 %conv27.i.1280, %conv12.i.1272
  %shr58.i.1295 = lshr i128 %mul56.i.1294, 64
  %conv60.i.1296 = and i128 %mul56.i.1294, 18446744073709551615
  %add49.i.1292 = add nuw nsw i128 %conv60.i.1296, %shr30.i.1282
  %add62.i.1297 = add nuw nsw i128 %add49.i.1292, %conv47.i.1291
  %mul64.i.1298 = shl nuw nsw i128 %add62.i.1297, 1
  %add67.i.1299 = add nuw nsw i128 %shr45.i.1290, %shr58.i.1295
  %mul72.i.1300 = mul nuw i128 %conv12.i.1272, %conv12.i.1272
  %shr74.i.1301 = lshr i128 %mul72.i.1300, 64
  %conv76.i.1302 = and i128 %mul72.i.1300, 18446744073709551615
  %mul86.i.1305 = mul nuw i128 %conv42.i.1288, %conv12.i.1272
  %shr88.i.1306 = lshr i128 %mul86.i.1305, 64
  %conv90.i.1307 = and i128 %mul86.i.1305, 18446744073709551615
  %add92.i.1308 = add nuw nsw i128 %add67.i.1299, %conv90.i.1307
  %mul94.i.1309 = shl nuw nsw i128 %add92.i.1308, 1
  %mul101.i.1311 = mul nuw i128 %conv42.i.1288, %conv27.i.1280
  %shr103.i.1312 = lshr i128 %mul101.i.1311, 64
  %conv105.i.1313 = and i128 %mul101.i.1311, 18446744073709551615
  %add107.i.1314 = add nuw nsw i128 %conv105.i.1313, %shr88.i.1306
  %mul109.i.1315 = shl nuw nsw i128 %add107.i.1314, 1
  %add114.i.1317 = shl nuw nsw i128 %shr103.i.1312, 1
  %mul119.i.1318 = mul nuw i128 %conv27.i.1280, %conv27.i.1280
  %shr121.i.1319 = lshr i128 %mul119.i.1318, 64
  %conv123.i.1320 = and i128 %mul119.i.1318, 18446744073709551615
  %add125.i.1321 = add nuw nsw i128 %mul94.i.1309, %conv123.i.1320
  %add128.i.1322 = add nuw nsw i128 %mul109.i.1315, %shr121.i.1319
  %mul133.i.1323 = mul nuw i128 %conv42.i.1288, %conv42.i.1288
  %shr135.i.1324 = lshr i128 %mul133.i.1323, 64
  %conv137.i.1325 = and i128 %mul133.i.1323, 18446744073709551615
  %add139.i.1326 = add nuw nsw i128 %add114.i.1317, %conv137.i.1325
  %add.i.1165 = add nuw nsw i128 %conv5.i.1269, 1267650600228229401427983728624
  %add3.i.1167 = or i128 %add21.i.1277, 1267650600228229401496703205376
  %shl.i.i.1177 = shl nuw nsw i128 %add128.i.1322, 32
  %add.i.i.1178 = add nuw nsw i128 %shl.i.i.1177, %add125.i.1321
  %sub7.i.i.1182 = sub nsw i128 %add128.i.1322, %shr135.i.1324
  %shl13.i.i.1185 = shl nuw nsw i128 %add125.i.1321, 32
  %shl28.i.i.1193 = shl nuw nsw i128 %add139.i.1326, 32
  %shl32.i.i.1195 = shl nuw nsw i128 %add139.i.1326, 33
  %add9.i.i.1183 = add nuw nsw i128 %shl32.i.i.1195, %add3.i.1167
  %sub15.i.i.1186 = add nsw i128 %add9.i.i.1183, %sub7.i.i.1182
  %add34.i.i.1196 = sub nsw i128 %sub15.i.i.1186, %shl13.i.i.1185
  %shl46.i.i.1202 = shl nuw nsw i128 %shr135.i.1324, 32
  %add3.i.i.1179 = sub nsw i128 %add.i.1165, %shr135.i.1324
  %sub26.i.i.1192 = sub nsw i128 %add3.i.i.1179, %shl46.i.i.1202
  %sub30.i.i.1194 = sub nsw i128 %sub26.i.i.1192, %add139.i.1326
  %sub44.i.i.1201 = sub nsw i128 %sub30.i.i.1194, %shl28.i.i.1193
  %sub48.i.i.1203 = add nsw i128 %sub44.i.i.1201, %add.i.i.1178
  %shl50.i.i.1204 = shl nuw nsw i128 %shr135.i.1324, 33
  %tmp = add nuw nsw i128 %add34.i.1284, %add139.i.1326
  %tmp1662 = shl nuw nsw i128 %tmp, 1
  %add6.i.1170 = add nuw nsw i128 %conv76.i.1302, 1267650600228229401427983728656
  %sub11.i.i.1184 = add nuw nsw i128 %add6.i.1170, %shl50.i.i.1204
  %sub23.i.i.1190 = sub nsw i128 %sub11.i.i.1184, %sub7.i.i.1182
  %add37.i.i.1198 = sub nsw i128 %sub23.i.i.1190, %shl.i.i.1177
  %add52.i.i.1205 = add i128 %add37.i.i.1198, %tmp1662
  %mul54.i.i.1206 = mul nuw nsw i128 %shr135.i.1324, 3
  %add81.i.1304 = add nuw nsw i128 %shr74.i.1301, 1267650600228229401427983728656
  %add9.i.1173 = add nuw nsw i128 %add81.i.1304, %mul54.i.i.1206
  %sub.i.i.1180 = add nuw nsw i128 %add9.i.1173, %mul64.i.1298
  %add19.i.i.1188 = sub nsw i128 %sub.i.i.1180, %shl28.i.i.1193
  %sub41.i.i.1200 = sub nsw i128 %add19.i.i.1188, %add.i.i.1178
  %add56.i.i.1207 = add i128 %sub41.i.i.1200, %shl13.i.i.1185
  %arrayidx.i.i.1046 = getelementptr inbounds i128, i128* %y_in, i64 3
  %8 = load i128, i128* %arrayidx.i.i.1046, align 16, !tbaa !2
  %add.i.i.1047 = add i128 %8, 18446744069414584320
  %arrayidx6.i.i.1048 = getelementptr inbounds i128, i128* %y_in, i64 2
  %9 = load i128, i128* %arrayidx6.i.i.1048, align 16, !tbaa !2
  %shr.i.i.1049 = lshr i128 %9, 64
  %add8.i.i.1050 = add i128 %add.i.i.1047, %shr.i.i.1049
  %conv12.i.i.1051 = and i128 %9, 18446744073709551615
  %add13.i.i.1052 = add nuw nsw i128 %conv12.i.i.1051, 18446673704965373952
  %10 = load i128, i128* %y_in, align 16, !tbaa !2
  %add16.i.i.1053 = add i128 %10, 18446744073709551615
  %arrayidx18.i.i.1054 = getelementptr inbounds i128, i128* %y_in, i64 1
  %11 = load i128, i128* %arrayidx18.i.i.1054, align 16, !tbaa !2
  %add19.i.i.1055 = add i128 %11, 1298074214633706907132628377272319
  %shr22.i.i.1056 = lshr i128 %add8.i.i.1050, 64
  %conv23.i.i.1057 = trunc i128 %shr22.i.i.1056 to i64
  %conv26.i.i.1058 = and i128 %add8.i.i.1050, 18446744073709551615
  %sub.i.i.1059 = sub nsw i128 %conv26.i.i.1058, %shr22.i.i.1056
  %shl.i.i.1060 = shl nuw nsw i128 %shr22.i.i.1056, 32
  %add32.i.i.1061 = add nsw i128 %sub.i.i.1059, %shl.i.i.1060
  %shr34.i.i.1062 = lshr i128 %add32.i.i.1061, 64
  %conv35.i.i.1063 = trunc i128 %shr34.i.i.1062 to i64
  %add36.i.i.1064 = add i64 %conv35.i.i.1063, %conv23.i.i.1057
  %conv39.i.i.1065 = and i128 %add32.i.i.1061, 18446744073709551615
  %sub43.i.i.1066 = sub nsw i128 %conv39.i.i.1065, %shr34.i.i.1062
  %shl45.i.i.1067 = shl nuw nsw i128 %shr34.i.i.1062, 32
  %add47.i.i.1068 = add nsw i128 %sub43.i.i.1066, %shl45.i.i.1067
  %conv48.i.i.1069 = zext i64 %add36.i.i.1064 to i128
  %add50.i.i.1070 = add i128 %add16.i.i.1053, %conv48.i.i.1069
  %shl52.i.i.1071 = shl nuw nsw i128 %conv48.i.i.1069, 32
  %sub54.i.i.1072 = sub i128 %add19.i.i.1055, %shl52.i.i.1071
  %shr56.i.i.1073 = lshr i128 %add47.i.i.1068, 64
  %conv57.i.i.1074 = trunc i128 %shr56.i.i.1073 to i64
  %sub58.i.i.1075 = sub i64 0, %conv57.i.i.1074
  %conv60.i.i.1076 = trunc i128 %add47.i.i.1068 to i64
  %and.i.i.1077 = and i64 %conv60.i.i.1076, 9223372036854775807
  %neg.i.i.1078 = sub nsw i64 9223372032559808512, %and.i.i.1077
  %sub62177.i.i.1079 = and i64 %neg.i.i.1078, %conv60.i.i.1076
  %and66.i.i.1080 = ashr i64 %sub62177.i.i.1079, 63
  %or.i.i.1081 = or i64 %and66.i.i.1080, %sub58.i.i.1075
  %conv68.i.i.1082 = zext i64 %or.i.i.1081 to i128
  %sub70.i.i.1083 = sub i128 %add50.i.i.1070, %conv68.i.i.1082
  %and71.i.i.1084 = and i64 %or.i.i.1081, 4294967295
  %conv72.i.i.1085 = zext i64 %and71.i.i.1084 to i128
  %sub74.i.i.1086 = sub i128 %sub54.i.i.1072, %conv72.i.i.1085
  %and75.i.i.1087 = and i64 %or.i.i.1081, -4294967295
  %conv76.i.i.1088 = zext i64 %and75.i.i.1087 to i128
  %sub78.i.i.1089 = sub nsw i128 %add47.i.i.1068, %conv76.i.i.1088
  %shr80.i.i.1090 = lshr i128 %sub70.i.i.1083, 64
  %add84.i.i.1091 = add i128 %sub74.i.i.1086, %shr80.i.i.1090
  %shr90.i.i.1093 = lshr i128 %add84.i.i.1091, 64
  %add94.i.i.1094 = add nuw nsw i128 %add13.i.i.1052, %shr90.i.i.1093
  %shr100.i.i.1096 = lshr i128 %add94.i.i.1094, 64
  %add104.i.i.1097 = add nsw i128 %sub78.i.i.1089, %shr100.i.i.1096
  %conv.i.1103 = and i128 %sub70.i.i.1083, 18446744073709551615
  %mul.i.1104 = mul nuw i128 %conv.i.1103, %conv.i.1103
  %shr.i.1105 = lshr i128 %mul.i.1104, 64
  %conv5.i.1106 = and i128 %mul.i.1104, 18446744073709551615
  %conv12.i.1109 = and i128 %add84.i.i.1091, 18446744073709551615
  %mul13.i.1110 = mul nuw i128 %conv12.i.1109, %conv.i.1103
  %shr15.i.1111 = lshr i128 %mul13.i.1110, 64
  %conv17.i.1112 = shl i128 %mul13.i.1110, 1
  %factor.i.1113 = and i128 %conv17.i.1112, 36893488147419103230
  %add21.i.1114 = add nuw nsw i128 %factor.i.1113, %shr.i.1105
  %conv27.i.1117 = and i128 %add94.i.i.1094, 18446744073709551615
  %mul28.i.1118 = mul nuw i128 %conv27.i.1117, %conv.i.1103
  %shr30.i.1119 = lshr i128 %mul28.i.1118, 64
  %conv32.i.1120 = and i128 %mul28.i.1118, 18446744073709551615
  %add34.i.1121 = add nuw nsw i128 %conv32.i.1120, %shr15.i.1111
  %conv42.i.1125 = and i128 %add104.i.i.1097, 18446744073709551615
  %mul43.i.1126 = mul nuw i128 %conv42.i.1125, %conv.i.1103
  %shr45.i.1127 = lshr i128 %mul43.i.1126, 64
  %conv47.i.1128 = and i128 %mul43.i.1126, 18446744073709551615
  %mul56.i.1131 = mul nuw i128 %conv27.i.1117, %conv12.i.1109
  %shr58.i.1132 = lshr i128 %mul56.i.1131, 64
  %conv60.i.1133 = and i128 %mul56.i.1131, 18446744073709551615
  %add49.i.1129 = add nuw nsw i128 %conv60.i.1133, %shr30.i.1119
  %add62.i.1134 = add nuw nsw i128 %add49.i.1129, %conv47.i.1128
  %mul64.i.1135 = shl nuw nsw i128 %add62.i.1134, 1
  %add67.i.1136 = add nuw nsw i128 %shr45.i.1127, %shr58.i.1132
  %mul72.i.1137 = mul nuw i128 %conv12.i.1109, %conv12.i.1109
  %shr74.i.1138 = lshr i128 %mul72.i.1137, 64
  %conv76.i.1139 = and i128 %mul72.i.1137, 18446744073709551615
  %mul86.i.1142 = mul nuw i128 %conv42.i.1125, %conv12.i.1109
  %shr88.i.1143 = lshr i128 %mul86.i.1142, 64
  %conv90.i.1144 = and i128 %mul86.i.1142, 18446744073709551615
  %add92.i.1145 = add nuw nsw i128 %add67.i.1136, %conv90.i.1144
  %mul94.i.1146 = shl nuw nsw i128 %add92.i.1145, 1
  %mul101.i.1148 = mul nuw i128 %conv42.i.1125, %conv27.i.1117
  %shr103.i.1149 = lshr i128 %mul101.i.1148, 64
  %conv105.i.1150 = and i128 %mul101.i.1148, 18446744073709551615
  %add107.i.1151 = add nuw nsw i128 %conv105.i.1150, %shr88.i.1143
  %mul109.i.1152 = shl nuw nsw i128 %add107.i.1151, 1
  %add114.i.1154 = shl nuw nsw i128 %shr103.i.1149, 1
  %mul119.i.1155 = mul nuw i128 %conv27.i.1117, %conv27.i.1117
  %shr121.i.1156 = lshr i128 %mul119.i.1155, 64
  %conv123.i.1157 = and i128 %mul119.i.1155, 18446744073709551615
  %add125.i.1158 = add nuw nsw i128 %mul94.i.1146, %conv123.i.1157
  %add128.i.1159 = add nuw nsw i128 %mul109.i.1152, %shr121.i.1156
  %mul133.i.1160 = mul nuw i128 %conv42.i.1125, %conv42.i.1125
  %shr135.i.1161 = lshr i128 %mul133.i.1160, 64
  %conv137.i.1162 = and i128 %mul133.i.1160, 18446744073709551615
  %add139.i.1163 = add nuw nsw i128 %add114.i.1154, %conv137.i.1162
  %add.i.1002 = add nuw nsw i128 %conv5.i.1106, 1267650600228229401427983728624
  %add3.i.1004 = or i128 %add21.i.1114, 1267650600228229401496703205376
  %shl.i.i.1014 = shl nuw nsw i128 %add128.i.1159, 32
  %add.i.i.1015 = add nuw nsw i128 %shl.i.i.1014, %add125.i.1158
  %sub7.i.i.1019 = sub nsw i128 %add128.i.1159, %shr135.i.1161
  %shl13.i.i.1022 = shl nuw nsw i128 %add125.i.1158, 32
  %shl28.i.i.1030 = shl nuw nsw i128 %add139.i.1163, 32
  %shl32.i.i.1032 = shl nuw nsw i128 %add139.i.1163, 33
  %add9.i.i.1020 = add nuw nsw i128 %shl32.i.i.1032, %add3.i.1004
  %sub15.i.i.1023 = add nsw i128 %add9.i.i.1020, %sub7.i.i.1019
  %add34.i.i.1033 = sub nsw i128 %sub15.i.i.1023, %shl13.i.i.1022
  %shl46.i.i.1039 = shl nuw nsw i128 %shr135.i.1161, 32
  %add3.i.i.1016 = sub nsw i128 %add.i.1002, %shr135.i.1161
  %sub26.i.i.1029 = sub nsw i128 %add3.i.i.1016, %shl46.i.i.1039
  %sub30.i.i.1031 = sub nsw i128 %sub26.i.i.1029, %add139.i.1163
  %sub44.i.i.1038 = sub nsw i128 %sub30.i.i.1031, %shl28.i.i.1030
  %sub48.i.i.1040 = add nsw i128 %sub44.i.i.1038, %add.i.i.1015
  %shl50.i.i.1041 = shl nuw nsw i128 %shr135.i.1161, 33
  %tmp1663 = add nuw nsw i128 %add34.i.1121, %add139.i.1163
  %tmp1664 = shl nuw nsw i128 %tmp1663, 1
  %add6.i.1007 = add nuw nsw i128 %conv76.i.1139, 1267650600228229401427983728656
  %sub11.i.i.1021 = add nuw nsw i128 %add6.i.1007, %shl50.i.i.1041
  %sub23.i.i.1027 = sub nsw i128 %sub11.i.i.1021, %sub7.i.i.1019
  %add37.i.i.1035 = sub nsw i128 %sub23.i.i.1027, %shl.i.i.1014
  %add52.i.i.1042 = add i128 %add37.i.i.1035, %tmp1664
  %mul54.i.i.1043 = mul nuw nsw i128 %shr135.i.1161, 3
  %add81.i.1141 = add nuw nsw i128 %shr74.i.1138, 1267650600228229401427983728656
  %add9.i.1010 = add nuw nsw i128 %add81.i.1141, %mul54.i.i.1043
  %sub.i.i.1017 = add nuw nsw i128 %add9.i.1010, %mul64.i.1135
  %add19.i.i.1025 = sub nsw i128 %sub.i.i.1017, %shl28.i.i.1030
  %sub41.i.i.1037 = sub nsw i128 %add19.i.i.1025, %add.i.i.1015
  %add56.i.i.1044 = add i128 %sub41.i.i.1037, %shl13.i.i.1022
  %add.i.946 = add i128 %add56.i.i.1044, 18446744069414584320
  %shr.i.948 = lshr i128 %add52.i.i.1042, 64
  %add8.i.949 = add i128 %add.i.946, %shr.i.948
  %conv12.i.950 = and i128 %add52.i.i.1042, 18446744073709551615
  %add13.i.951 = add nuw nsw i128 %conv12.i.950, 18446673704965373952
  %add16.i.952 = add i128 %sub48.i.i.1040, 18446744073709551615
  %add19.i.954 = add i128 %add34.i.i.1033, 1298074214633706907132628377272319
  %shr22.i.955 = lshr i128 %add8.i.949, 64
  %conv23.i.956 = trunc i128 %shr22.i.955 to i64
  %conv26.i.957 = and i128 %add8.i.949, 18446744073709551615
  %sub.i.958 = sub nsw i128 %conv26.i.957, %shr22.i.955
  %shl.i.959 = shl nuw nsw i128 %shr22.i.955, 32
  %add32.i.960 = add nsw i128 %sub.i.958, %shl.i.959
  %shr34.i.961 = lshr i128 %add32.i.960, 64
  %conv35.i.962 = trunc i128 %shr34.i.961 to i64
  %add36.i.963 = add i64 %conv35.i.962, %conv23.i.956
  %conv39.i.964 = and i128 %add32.i.960, 18446744073709551615
  %sub43.i.965 = sub nsw i128 %conv39.i.964, %shr34.i.961
  %shl45.i.966 = shl nuw nsw i128 %shr34.i.961, 32
  %add47.i.967 = add nsw i128 %sub43.i.965, %shl45.i.966
  %conv48.i.968 = zext i64 %add36.i.963 to i128
  %add50.i.969 = add i128 %add16.i.952, %conv48.i.968
  %shl52.i.970 = shl nuw nsw i128 %conv48.i.968, 32
  %sub54.i.971 = sub i128 %add19.i.954, %shl52.i.970
  %shr56.i.972 = lshr i128 %add47.i.967, 64
  %conv57.i.973 = trunc i128 %shr56.i.972 to i64
  %sub58.i.974 = sub i64 0, %conv57.i.973
  %conv60.i.975 = trunc i128 %add47.i.967 to i64
  %and.i.976 = and i64 %conv60.i.975, 9223372036854775807
  %neg.i.977 = sub nsw i64 9223372032559808512, %and.i.976
  %sub62177.i.978 = and i64 %neg.i.977, %conv60.i.975
  %and66.i.979 = ashr i64 %sub62177.i.978, 63
  %or.i.980 = or i64 %and66.i.979, %sub58.i.974
  %conv68.i.981 = zext i64 %or.i.980 to i128
  %sub70.i.982 = sub i128 %add50.i.969, %conv68.i.981
  %and71.i.983 = and i64 %or.i.980, 4294967295
  %conv72.i.984 = zext i64 %and71.i.983 to i128
  %sub74.i.985 = sub i128 %sub54.i.971, %conv72.i.984
  %and75.i.986 = and i64 %or.i.980, -4294967295
  %conv76.i.987 = zext i64 %and75.i.986 to i128
  %sub78.i.988 = sub nsw i128 %add47.i.967, %conv76.i.987
  %shr80.i.989 = lshr i128 %sub70.i.982, 64
  %add84.i.990 = add i128 %sub74.i.985, %shr80.i.989
  %shr90.i.992 = lshr i128 %add84.i.990, 64
  %add94.i.993 = add nuw nsw i128 %add13.i.951, %shr90.i.992
  %shr100.i.995 = lshr i128 %add94.i.993, 64
  %add104.i.996 = add nsw i128 %sub78.i.988, %shr100.i.995
  %add.i.i.796 = add i128 %3, 18446744069414584320
  %shr.i.i.798 = lshr i128 %2, 64
  %add8.i.i.799 = add i128 %add.i.i.796, %shr.i.i.798
  %conv12.i.i.800 = and i128 %2, 18446744073709551615
  %add13.i.i.801 = add nuw nsw i128 %conv12.i.i.800, 18446673704965373952
  %add16.i.i.802 = add i128 %0, 18446744073709551615
  %add19.i.i.804 = add i128 %1, 1298074214633706907132628377272319
  %shr22.i.i.805 = lshr i128 %add8.i.i.799, 64
  %conv23.i.i.806 = trunc i128 %shr22.i.i.805 to i64
  %conv26.i.i.807 = and i128 %add8.i.i.799, 18446744073709551615
  %sub.i.i.808 = sub nsw i128 %conv26.i.i.807, %shr22.i.i.805
  %shl.i.i.809 = shl nuw nsw i128 %shr22.i.i.805, 32
  %add32.i.i.810 = add nsw i128 %sub.i.i.808, %shl.i.i.809
  %shr34.i.i.811 = lshr i128 %add32.i.i.810, 64
  %conv35.i.i.812 = trunc i128 %shr34.i.i.811 to i64
  %add36.i.i.813 = add i64 %conv35.i.i.812, %conv23.i.i.806
  %conv39.i.i.814 = and i128 %add32.i.i.810, 18446744073709551615
  %sub43.i.i.815 = sub nsw i128 %conv39.i.i.814, %shr34.i.i.811
  %shl45.i.i.816 = shl nuw nsw i128 %shr34.i.i.811, 32
  %add47.i.i.817 = add nsw i128 %sub43.i.i.815, %shl45.i.i.816
  %conv48.i.i.818 = zext i64 %add36.i.i.813 to i128
  %add50.i.i.819 = add i128 %add16.i.i.802, %conv48.i.i.818
  %shl52.i.i.820 = shl nuw nsw i128 %conv48.i.i.818, 32
  %sub54.i.i.821 = sub i128 %add19.i.i.804, %shl52.i.i.820
  %shr56.i.i.822 = lshr i128 %add47.i.i.817, 64
  %conv57.i.i.823 = trunc i128 %shr56.i.i.822 to i64
  %sub58.i.i.824 = sub i64 0, %conv57.i.i.823
  %conv60.i.i.825 = trunc i128 %add47.i.i.817 to i64
  %and.i.i.826 = and i64 %conv60.i.i.825, 9223372036854775807
  %neg.i.i.827 = sub nsw i64 9223372032559808512, %and.i.i.826
  %sub62177.i.i.828 = and i64 %neg.i.i.827, %conv60.i.i.825
  %and66.i.i.829 = ashr i64 %sub62177.i.i.828, 63
  %or.i.i.830 = or i64 %and66.i.i.829, %sub58.i.i.824
  %conv68.i.i.831 = zext i64 %or.i.i.830 to i128
  %sub70.i.i.832 = sub i128 %add50.i.i.819, %conv68.i.i.831
  %and71.i.i.833 = and i64 %or.i.i.830, 4294967295
  %conv72.i.i.834 = zext i64 %and71.i.i.833 to i128
  %sub74.i.i.835 = sub i128 %sub54.i.i.821, %conv72.i.i.834
  %and75.i.i.836 = and i64 %or.i.i.830, -4294967295
  %conv76.i.i.837 = zext i64 %and75.i.i.836 to i128
  %sub78.i.i.838 = sub nsw i128 %add47.i.i.817, %conv76.i.i.837
  %shr80.i.i.839 = lshr i128 %sub70.i.i.832, 64
  %add84.i.i.840 = add i128 %sub74.i.i.835, %shr80.i.i.839
  %shr90.i.i.842 = lshr i128 %add84.i.i.840, 64
  %add94.i.i.843 = add nuw nsw i128 %add13.i.i.801, %shr90.i.i.842
  %shr100.i.i.845 = lshr i128 %add94.i.i.843, 64
  %add104.i.i.846 = add nsw i128 %sub78.i.i.838, %shr100.i.i.845
  %conv.i.852 = and i128 %sub70.i.982, 18446744073709551615
  %conv2.i.853 = and i128 %sub70.i.i.832, 18446744073709551615
  %mul.i.854 = mul nuw i128 %conv.i.852, %conv2.i.853
  %shr.i.855 = lshr i128 %mul.i.854, 64
  %conv5.i.856 = and i128 %mul.i.854, 18446744073709551615
  %conv12.i.859 = and i128 %add84.i.i.840, 18446744073709551615
  %mul13.i.860 = mul nuw i128 %conv.i.852, %conv12.i.859
  %shr15.i.861 = lshr i128 %mul13.i.860, 64
  %conv17.i.862 = and i128 %mul13.i.860, 18446744073709551615
  %add.i.863 = add nuw nsw i128 %conv17.i.862, %shr.i.855
  %conv22.i.866 = and i128 %add84.i.990, 18446744073709551615
  %mul25.i.867 = mul nuw i128 %conv22.i.866, %conv2.i.853
  %shr27.i.868 = lshr i128 %mul25.i.867, 64
  %conv29.i.869 = and i128 %mul25.i.867, 18446744073709551615
  %add31.i.870 = add nuw nsw i128 %add.i.863, %conv29.i.869
  %conv38.i.873 = and i128 %add94.i.i.843, 18446744073709551615
  %mul39.i.874 = mul nuw i128 %conv.i.852, %conv38.i.873
  %shr41.i.875 = lshr i128 %mul39.i.874, 64
  %conv43.i.876 = and i128 %mul39.i.874, 18446744073709551615
  %mul52.i.879 = mul nuw i128 %conv22.i.866, %conv12.i.859
  %shr54.i.880 = lshr i128 %mul52.i.879, 64
  %conv56.i.881 = and i128 %mul52.i.879, 18446744073709551615
  %conv63.i.885 = and i128 %add94.i.993, 18446744073709551615
  %mul66.i.886 = mul nuw i128 %conv63.i.885, %conv2.i.853
  %shr68.i.887 = lshr i128 %mul66.i.886, 64
  %conv70.i.888 = and i128 %mul66.i.886, 18446744073709551615
  %conv79.i.892 = and i128 %add104.i.i.846, 18446744073709551615
  %mul80.i.893 = mul nuw i128 %conv.i.852, %conv79.i.892
  %shr82.i.894 = lshr i128 %mul80.i.893, 64
  %conv84.i.895 = and i128 %mul80.i.893, 18446744073709551615
  %mul93.i.898 = mul nuw i128 %conv22.i.866, %conv38.i.873
  %shr95.i.899 = lshr i128 %mul93.i.898, 64
  %conv97.i.900 = and i128 %mul93.i.898, 18446744073709551615
  %add102.i.902 = add nuw nsw i128 %shr95.i.899, %shr82.i.894
  %mul107.i.903 = mul nuw i128 %conv63.i.885, %conv12.i.859
  %shr109.i.904 = lshr i128 %mul107.i.903, 64
  %conv111.i.905 = and i128 %mul107.i.903, 18446744073709551615
  %conv118.i.909 = and i128 %add104.i.996, 18446744073709551615
  %mul121.i.910 = mul nuw i128 %conv118.i.909, %conv2.i.853
  %shr123.i.911 = lshr i128 %mul121.i.910, 64
  %conv125.i.912 = and i128 %mul121.i.910, 18446744073709551615
  %mul135.i.915 = mul nuw i128 %conv22.i.866, %conv79.i.892
  %shr137.i.916 = lshr i128 %mul135.i.915, 64
  %conv139.i.917 = and i128 %mul135.i.915, 18446744073709551615
  %mul148.i.920 = mul nuw i128 %conv63.i.885, %conv38.i.873
  %shr150.i.921 = lshr i128 %mul148.i.920, 64
  %conv152.i.922 = and i128 %mul148.i.920, 18446744073709551615
  %add157.i.924 = add nuw nsw i128 %shr150.i.921, %shr137.i.916
  %mul162.i.925 = mul nuw i128 %conv118.i.909, %conv12.i.859
  %shr164.i.926 = lshr i128 %mul162.i.925, 64
  %conv166.i.927 = and i128 %mul162.i.925, 18446744073709551615
  %add116.i.907 = add nuw nsw i128 %add102.i.902, %conv139.i.917
  %add130.i.914 = add nuw nsw i128 %add116.i.907, %shr109.i.904
  %add141.i.918 = add nuw nsw i128 %add130.i.914, %conv152.i.922
  %add154.i.923 = add nuw nsw i128 %add141.i.918, %shr123.i.911
  %add168.i.928 = add nuw nsw i128 %add154.i.923, %conv166.i.927
  %mul176.i.930 = mul nuw i128 %conv63.i.885, %conv79.i.892
  %shr178.i.931 = lshr i128 %mul176.i.930, 64
  %conv180.i.932 = and i128 %mul176.i.930, 18446744073709551615
  %mul189.i.935 = mul nuw i128 %conv118.i.909, %conv38.i.873
  %shr191.i.936 = lshr i128 %mul189.i.935, 64
  %conv193.i.937 = and i128 %mul189.i.935, 18446744073709551615
  %add171.i.929 = add nuw nsw i128 %add157.i.924, %conv180.i.932
  %add182.i.933 = add nuw nsw i128 %add171.i.929, %shr164.i.926
  %add195.i.938 = add nuw nsw i128 %add182.i.933, %conv193.i.937
  %add198.i.939 = add nuw nsw i128 %shr191.i.936, %shr178.i.931
  %mul203.i.940 = mul nuw i128 %conv118.i.909, %conv79.i.892
  %shr205.i.941 = lshr i128 %mul203.i.940, 64
  %conv207.i.942 = and i128 %mul203.i.940, 18446744073709551615
  %add209.i.943 = add nuw nsw i128 %add198.i.939, %conv207.i.942
  %add.i.750 = add nuw nsw i128 %conv5.i.856, 1267650600228229401427983728624
  %add3.i.752 = or i128 %add31.i.870, 1267650600228229401496703205376
  %shl.i.i.762 = shl nuw nsw i128 %add195.i.938, 32
  %add.i.i.763 = add i128 %shl.i.i.762, %add168.i.928
  %sub7.i.i.767 = sub nsw i128 %add195.i.938, %shr205.i.941
  %shl13.i.i.770 = shl i128 %add168.i.928, 32
  %shl28.i.i.778 = shl nuw nsw i128 %add209.i.943, 32
  %shl32.i.i.780 = shl nuw nsw i128 %add209.i.943, 33
  %add9.i.i.768 = add nuw nsw i128 %shl32.i.i.780, %add3.i.752
  %sub15.i.i.771 = add nsw i128 %add9.i.i.768, %sub7.i.i.767
  %add34.i.i.781 = sub i128 %sub15.i.i.771, %shl13.i.i.770
  %mul.i.i.782 = shl nuw nsw i128 %add209.i.943, 1
  %shl46.i.i.787 = shl nuw nsw i128 %shr205.i.941, 32
  %add3.i.i.764 = sub nsw i128 %add.i.750, %shr205.i.941
  %sub26.i.i.777 = sub nsw i128 %add3.i.i.764, %shl46.i.i.787
  %sub30.i.i.779 = sub nsw i128 %sub26.i.i.777, %add209.i.943
  %sub44.i.i.786 = sub nsw i128 %sub30.i.i.779, %shl28.i.i.778
  %sub48.i.i.788 = add i128 %sub44.i.i.786, %add.i.i.763
  %shl50.i.i.789 = shl nuw nsw i128 %shr205.i.941, 33
  %add34.i.871 = add nuw nsw i128 %shr15.i.861, 1267650600228229401427983728656
  %add45.i.877 = add nuw nsw i128 %add34.i.871, %conv43.i.876
  %add58.i.882 = add nuw nsw i128 %add45.i.877, %shr27.i.868
  %add72.i.889 = add nuw nsw i128 %add58.i.882, %conv56.i.881
  %add6.i.755 = add nuw nsw i128 %add72.i.889, %conv70.i.888
  %sub11.i.i.769 = add nuw nsw i128 %add6.i.755, %shl50.i.i.789
  %sub23.i.i.775 = add i128 %sub11.i.i.769, %mul.i.i.782
  %add37.i.i.783 = sub i128 %sub23.i.i.775, %sub7.i.i.767
  %add52.i.i.790 = sub i128 %add37.i.i.783, %shl.i.i.762
  %mul54.i.i.791 = mul nuw nsw i128 %shr205.i.941, 3
  %add61.i.883 = add nuw nsw i128 %shr41.i.875, 1267650600228229401427983728656
  %add75.i.890 = add nuw nsw i128 %add61.i.883, %conv84.i.895
  %add86.i.896 = add nuw nsw i128 %add75.i.890, %shr54.i.880
  %add99.i.901 = add nuw nsw i128 %add86.i.896, %conv97.i.900
  %add113.i.906 = add nuw nsw i128 %add99.i.901, %shr68.i.887
  %add127.i.913 = add nuw nsw i128 %add113.i.906, %conv111.i.905
  %add9.i.758 = add i128 %add127.i.913, %conv125.i.912
  %sub.i.i.765 = add i128 %add9.i.758, %mul54.i.i.791
  %add19.i.i.773 = sub i128 %sub.i.i.765, %shl28.i.i.778
  %sub41.i.i.785 = sub i128 %add19.i.i.773, %add.i.i.763
  %add56.i.i.792 = add i128 %sub41.i.i.785, %shl13.i.i.770
  %add4.i.740 = add i128 %2, 40564819207303340845695479316992
  %sub14.i.747 = sub i128 %add4.i.740, %add52.i.i.1205
  %add.i.726 = add i128 %sub48.i.i.1203, %0
  %add4.i.729 = add i128 %add34.i.i.1196, %1
  %add7.i.732 = add i128 %add52.i.i.1205, %2
  %add10.i.735 = add i128 %add56.i.i.1207, %3
  %mul.i.719 = mul i128 %add.i.726, 3
  %mul3.i.721 = mul i128 %add4.i.729, 3
  %mul6.i.723 = mul i128 %add7.i.732, 3
  %mul9.i.725 = mul i128 %add10.i.735, 3
  %shr.i.i.515 = lshr i128 %sub14.i.747, 64
  %sub17.i.749 = add i128 %3, 40564819207321787589764893901312
  %add.i.i.513 = sub i128 %sub17.i.749, %add56.i.i.1207
  %add8.i.i.516 = add i128 %add.i.i.513, %shr.i.i.515
  %conv12.i.i.517 = and i128 %sub14.i.747, 18446744073709551615
  %add13.i.i.518 = add nuw nsw i128 %conv12.i.i.517, 18446673704965373952
  %shr22.i.i.522 = lshr i128 %add8.i.i.516, 64
  %conv23.i.i.523 = trunc i128 %shr22.i.i.522 to i64
  %conv26.i.i.524 = and i128 %add8.i.i.516, 18446744073709551615
  %sub.i.i.525 = sub nsw i128 %conv26.i.i.524, %shr22.i.i.522
  %shl.i.i.526 = shl nuw nsw i128 %shr22.i.i.522, 32
  %add32.i.i.527 = add nsw i128 %sub.i.i.525, %shl.i.i.526
  %shr34.i.i.528 = lshr i128 %add32.i.i.527, 64
  %conv35.i.i.529 = trunc i128 %shr34.i.i.528 to i64
  %add36.i.i.530 = add i64 %conv35.i.i.529, %conv23.i.i.523
  %conv39.i.i.531 = and i128 %add32.i.i.527, 18446744073709551615
  %sub43.i.i.532 = sub nsw i128 %conv39.i.i.531, %shr34.i.i.528
  %shl45.i.i.533 = shl nuw nsw i128 %shr34.i.i.528, 32
  %add47.i.i.534 = add nsw i128 %sub43.i.i.532, %shl45.i.i.533
  %conv48.i.i.535 = zext i64 %add36.i.i.530 to i128
  %shl52.i.i.537 = shl nuw nsw i128 %conv48.i.i.535, 32
  %shr56.i.i.539 = lshr i128 %add47.i.i.534, 64
  %conv57.i.i.540 = trunc i128 %shr56.i.i.539 to i64
  %sub58.i.i.541 = sub i64 0, %conv57.i.i.540
  %conv60.i.i.542 = trunc i128 %add47.i.i.534 to i64
  %and.i.i.543 = and i64 %conv60.i.i.542, 9223372036854775807
  %neg.i.i.544 = sub nsw i64 9223372032559808512, %and.i.i.543
  %sub62177.i.i.545 = and i64 %neg.i.i.544, %conv60.i.i.542
  %and66.i.i.546 = ashr i64 %sub62177.i.i.545, 63
  %or.i.i.547 = or i64 %and66.i.i.546, %sub58.i.i.541
  %conv68.i.i.548 = zext i64 %or.i.i.547 to i128
  %sub.i.743 = add i128 %0, 40564819207321787589769188867583
  %add16.i.i.519 = sub i128 %sub.i.743, %sub48.i.i.1203
  %add50.i.i.536 = add i128 %add16.i.i.519, %conv48.i.i.535
  %sub70.i.i.549 = sub i128 %add50.i.i.536, %conv68.i.i.548
  %and71.i.i.550 = and i64 %or.i.i.547, 4294967295
  %conv72.i.i.551 = zext i64 %and71.i.i.550 to i128
  %and75.i.i.553 = and i64 %or.i.i.547, -4294967295
  %conv76.i.i.554 = zext i64 %and75.i.i.553 to i128
  %sub78.i.i.555 = sub nsw i128 %add47.i.i.534, %conv76.i.i.554
  %shr80.i.i.556 = lshr i128 %sub70.i.i.549, 64
  %sub11.i.745 = add i128 %1, 1338639033841010247980522879844351
  %add19.i.i.521 = sub i128 %sub11.i.745, %add34.i.i.1196
  %sub54.i.i.538 = sub i128 %add19.i.i.521, %shl52.i.i.537
  %sub74.i.i.552 = sub i128 %sub54.i.i.538, %conv72.i.i.551
  %add84.i.i.557 = add i128 %sub74.i.i.552, %shr80.i.i.556
  %shr90.i.i.559 = lshr i128 %add84.i.i.557, 64
  %add94.i.i.560 = add nuw nsw i128 %add13.i.i.518, %shr90.i.i.559
  %shr100.i.i.562 = lshr i128 %add94.i.i.560, 64
  %add104.i.i.563 = add nsw i128 %sub78.i.i.555, %shr100.i.i.562
  %add.i.570 = add i128 %mul9.i.725, 18446744069414584320
  %shr.i.572 = lshr i128 %mul6.i.723, 64
  %add8.i.573 = add i128 %add.i.570, %shr.i.572
  %conv12.i.574 = and i128 %mul6.i.723, 18446744073709551615
  %add13.i.575 = add nuw nsw i128 %conv12.i.574, 18446673704965373952
  %add16.i.576 = add i128 %mul.i.719, 18446744073709551615
  %add19.i.578 = add i128 %mul3.i.721, 1298074214633706907132628377272319
  %shr22.i.579 = lshr i128 %add8.i.573, 64
  %conv23.i.580 = trunc i128 %shr22.i.579 to i64
  %conv26.i.581 = and i128 %add8.i.573, 18446744073709551615
  %sub.i.582 = sub nsw i128 %conv26.i.581, %shr22.i.579
  %shl.i.583 = shl nuw nsw i128 %shr22.i.579, 32
  %add32.i.584 = add nsw i128 %sub.i.582, %shl.i.583
  %shr34.i.585 = lshr i128 %add32.i.584, 64
  %conv35.i.586 = trunc i128 %shr34.i.585 to i64
  %add36.i.587 = add i64 %conv35.i.586, %conv23.i.580
  %conv39.i.588 = and i128 %add32.i.584, 18446744073709551615
  %sub43.i.589 = sub nsw i128 %conv39.i.588, %shr34.i.585
  %shl45.i.590 = shl nuw nsw i128 %shr34.i.585, 32
  %add47.i.591 = add nsw i128 %sub43.i.589, %shl45.i.590
  %conv48.i.592 = zext i64 %add36.i.587 to i128
  %add50.i.593 = add i128 %add16.i.576, %conv48.i.592
  %shl52.i.594 = shl nuw nsw i128 %conv48.i.592, 32
  %sub54.i.595 = sub i128 %add19.i.578, %shl52.i.594
  %shr56.i.596 = lshr i128 %add47.i.591, 64
  %conv57.i.597 = trunc i128 %shr56.i.596 to i64
  %sub58.i.598 = sub i64 0, %conv57.i.597
  %conv60.i.599 = trunc i128 %add47.i.591 to i64
  %and.i.600 = and i64 %conv60.i.599, 9223372036854775807
  %neg.i.601 = sub nsw i64 9223372032559808512, %and.i.600
  %sub62177.i.602 = and i64 %neg.i.601, %conv60.i.599
  %and66.i.603 = ashr i64 %sub62177.i.602, 63
  %or.i.604 = or i64 %and66.i.603, %sub58.i.598
  %conv68.i.605 = zext i64 %or.i.604 to i128
  %sub70.i.606 = sub i128 %add50.i.593, %conv68.i.605
  %and71.i.607 = and i64 %or.i.604, 4294967295
  %conv72.i.608 = zext i64 %and71.i.607 to i128
  %sub74.i.609 = sub i128 %sub54.i.595, %conv72.i.608
  %and75.i.610 = and i64 %or.i.604, -4294967295
  %conv76.i.611 = zext i64 %and75.i.610 to i128
  %sub78.i.612 = sub nsw i128 %add47.i.591, %conv76.i.611
  %shr80.i.613 = lshr i128 %sub70.i.606, 64
  %add84.i.614 = add i128 %sub74.i.609, %shr80.i.613
  %shr90.i.616 = lshr i128 %add84.i.614, 64
  %add94.i.617 = add nuw nsw i128 %add13.i.575, %shr90.i.616
  %shr100.i.619 = lshr i128 %add94.i.617, 64
  %add104.i.620 = add nsw i128 %sub78.i.612, %shr100.i.619
  %conv.i.626 = and i128 %sub70.i.i.549, 18446744073709551615
  %conv2.i.627 = and i128 %sub70.i.606, 18446744073709551615
  %mul.i.628 = mul nuw i128 %conv2.i.627, %conv.i.626
  %shr.i.629 = lshr i128 %mul.i.628, 64
  %conv5.i.630 = and i128 %mul.i.628, 18446744073709551615
  %conv12.i.633 = and i128 %add84.i.614, 18446744073709551615
  %mul13.i.634 = mul nuw i128 %conv12.i.633, %conv.i.626
  %shr15.i.635 = lshr i128 %mul13.i.634, 64
  %conv17.i.636 = and i128 %mul13.i.634, 18446744073709551615
  %conv22.i.640 = and i128 %add84.i.i.557, 18446744073709551615
  %mul25.i.641 = mul nuw i128 %conv22.i.640, %conv2.i.627
  %shr27.i.642 = lshr i128 %mul25.i.641, 64
  %conv29.i.643 = and i128 %mul25.i.641, 18446744073709551615
  %add.i.637 = add nuw nsw i128 %conv29.i.643, %shr.i.629
  %add31.i.644 = add nuw nsw i128 %add.i.637, %conv17.i.636
  %conv38.i.647 = and i128 %add94.i.617, 18446744073709551615
  %mul39.i.648 = mul nuw i128 %conv38.i.647, %conv.i.626
  %shr41.i.649 = lshr i128 %mul39.i.648, 64
  %conv43.i.650 = and i128 %mul39.i.648, 18446744073709551615
  %mul52.i.653 = mul nuw i128 %conv12.i.633, %conv22.i.640
  %shr54.i.654 = lshr i128 %mul52.i.653, 64
  %conv56.i.655 = and i128 %mul52.i.653, 18446744073709551615
  %conv63.i.659 = and i128 %add94.i.i.560, 18446744073709551615
  %mul66.i.660 = mul nuw i128 %conv63.i.659, %conv2.i.627
  %shr68.i.661 = lshr i128 %mul66.i.660, 64
  %conv70.i.662 = and i128 %mul66.i.660, 18446744073709551615
  %conv79.i.666 = and i128 %add104.i.620, 18446744073709551615
  %mul80.i.667 = mul nuw i128 %conv79.i.666, %conv.i.626
  %shr82.i.668 = lshr i128 %mul80.i.667, 64
  %conv84.i.669 = and i128 %mul80.i.667, 18446744073709551615
  %mul93.i.672 = mul nuw i128 %conv38.i.647, %conv22.i.640
  %shr95.i.673 = lshr i128 %mul93.i.672, 64
  %conv97.i.674 = and i128 %mul93.i.672, 18446744073709551615
  %mul107.i.677 = mul nuw i128 %conv63.i.659, %conv12.i.633
  %shr109.i.678 = lshr i128 %mul107.i.677, 64
  %conv111.i.679 = and i128 %mul107.i.677, 18446744073709551615
  %conv118.i.683 = and i128 %add104.i.i.563, 18446744073709551615
  %mul121.i.684 = mul nuw i128 %conv118.i.683, %conv2.i.627
  %shr123.i.685 = lshr i128 %mul121.i.684, 64
  %conv125.i.686 = and i128 %mul121.i.684, 18446744073709551615
  %mul135.i.689 = mul nuw i128 %conv79.i.666, %conv22.i.640
  %shr137.i.690 = lshr i128 %mul135.i.689, 64
  %conv139.i.691 = and i128 %mul135.i.689, 18446744073709551615
  %mul148.i.694 = mul nuw i128 %conv38.i.647, %conv63.i.659
  %shr150.i.695 = lshr i128 %mul148.i.694, 64
  %conv152.i.696 = and i128 %mul148.i.694, 18446744073709551615
  %mul162.i.699 = mul nuw i128 %conv118.i.683, %conv12.i.633
  %shr164.i.700 = lshr i128 %mul162.i.699, 64
  %conv166.i.701 = and i128 %mul162.i.699, 18446744073709551615
  %add102.i.676 = add nuw nsw i128 %shr95.i.673, %shr109.i.678
  %add116.i.681 = add nuw nsw i128 %add102.i.676, %conv152.i.696
  %add130.i.688 = add nuw nsw i128 %add116.i.681, %shr123.i.685
  %add141.i.692 = add nuw nsw i128 %add130.i.688, %conv166.i.701
  %add154.i.697 = add nuw nsw i128 %add141.i.692, %shr82.i.668
  %add168.i.702 = add nuw nsw i128 %add154.i.697, %conv139.i.691
  %mul176.i.704 = mul nuw i128 %conv79.i.666, %conv63.i.659
  %shr178.i.705 = lshr i128 %mul176.i.704, 64
  %conv180.i.706 = and i128 %mul176.i.704, 18446744073709551615
  %mul189.i.709 = mul nuw i128 %conv118.i.683, %conv38.i.647
  %shr191.i.710 = lshr i128 %mul189.i.709, 64
  %conv193.i.711 = and i128 %mul189.i.709, 18446744073709551615
  %add157.i.698 = add nuw nsw i128 %shr164.i.700, %shr150.i.695
  %add171.i.703 = add nuw nsw i128 %add157.i.698, %conv193.i.711
  %add182.i.707 = add nuw nsw i128 %add171.i.703, %shr137.i.690
  %add195.i.712 = add nuw nsw i128 %add182.i.707, %conv180.i.706
  %add198.i.713 = add nuw nsw i128 %shr178.i.705, %shr191.i.710
  %mul203.i.714 = mul nuw i128 %conv79.i.666, %conv118.i.683
  %shr205.i.715 = lshr i128 %mul203.i.714, 64
  %conv207.i.716 = and i128 %mul203.i.714, 18446744073709551615
  %add209.i.717 = add nuw nsw i128 %add198.i.713, %conv207.i.716
  %add3.i.469 = or i128 %add31.i.644, 1267650600228229401496703205376
  %shl.i.i.479 = shl nuw nsw i128 %add195.i.712, 32
  %add.i.i.480 = add i128 %add168.i.702, %shl.i.i.479
  %sub7.i.i.484 = sub nsw i128 %add195.i.712, %shr205.i.715
  %shl13.i.i.487 = shl i128 %add168.i.702, 32
  %shl28.i.i.495 = shl nuw nsw i128 %add209.i.717, 32
  %shl32.i.i.497 = shl nuw nsw i128 %add209.i.717, 33
  %mul.i.i.499 = shl nuw nsw i128 %add209.i.717, 1
  %shl46.i.i.504 = shl nuw nsw i128 %shr205.i.715, 32
  %shl50.i.i.506 = shl nuw nsw i128 %shr205.i.715, 33
  %add34.i.645 = add nuw nsw i128 %shr27.i.642, 1267650600228229401427983728656
  %add45.i.651 = add nuw nsw i128 %add34.i.645, %shr15.i.635
  %add58.i.656 = add nuw nsw i128 %add45.i.651, %conv56.i.655
  %add72.i.663 = add nuw nsw i128 %add58.i.656, %conv70.i.662
  %add6.i.472 = add nuw nsw i128 %add72.i.663, %conv43.i.650
  %sub11.i.i.486 = add nuw nsw i128 %add6.i.472, %shl50.i.i.506
  %sub23.i.i.492 = add i128 %sub11.i.i.486, %mul.i.i.499
  %add37.i.i.500 = sub i128 %sub23.i.i.492, %sub7.i.i.484
  %add52.i.i.507 = sub i128 %add37.i.i.500, %shl.i.i.479
  %mul54.i.i.508 = mul nuw nsw i128 %shr205.i.715, 3
  %shr.i.460 = lshr i128 %add52.i.i.507, 64
  %add75.i.664 = add nuw nsw i128 %shr54.i.654, 1267650600246676145497398312976
  %add86.i.670 = add nuw nsw i128 %add75.i.664, %shr68.i.661
  %add99.i.675 = add nuw nsw i128 %add86.i.670, %conv111.i.679
  %add113.i.680 = add nuw nsw i128 %add99.i.675, %shr41.i.649
  %add127.i.687 = add nuw nsw i128 %add113.i.680, %conv97.i.674
  %add9.i.475 = add nuw nsw i128 %add127.i.687, %conv125.i.686
  %sub.i.i.482 = add i128 %add9.i.475, %conv84.i.669
  %add19.i.i.490 = add i128 %sub.i.i.482, %mul54.i.i.508
  %sub41.i.i.502 = sub i128 %add19.i.i.490, %shl28.i.i.495
  %add56.i.i.509 = sub i128 %sub41.i.i.502, %add.i.i.480
  %add.i.458 = add i128 %add56.i.i.509, %shl13.i.i.487
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
  %add3.i.i.481 = add nuw nsw i128 %conv5.i.630, 1267650600246676145501693280239
  %sub26.i.i.494 = sub nsw i128 %add3.i.i.481, %shr205.i.715
  %sub30.i.i.496 = sub nsw i128 %sub26.i.i.494, %shl46.i.i.504
  %sub44.i.i.503 = sub nsw i128 %sub30.i.i.496, %add209.i.717
  %sub48.i.i.505 = sub nsw i128 %sub44.i.i.503, %shl28.i.i.495
  %add16.i = add i128 %sub48.i.i.505, %add.i.i.480
  %add50.i = add i128 %add16.i, %conv48.i
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i.465 = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i.465
  %shr80.i = lshr i128 %sub70.i, 64
  %add9.i.i.485 = add nuw nsw i128 %add3.i.469, 1298074214633706907132628377272319
  %sub15.i.i.488 = add nuw nsw i128 %add9.i.i.485, %shl32.i.i.497
  %add34.i.i.498 = add nsw i128 %sub15.i.i.488, %sub7.i.i.484
  %add19.i = sub i128 %add34.i.i.498, %shl13.i.i.487
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
  %conv12.i.402 = and i128 %add84.i, 18446744073709551615
  %mul13.i.403 = mul nuw i128 %conv12.i.402, %conv.i.396
  %shr15.i.404 = lshr i128 %mul13.i.403, 64
  %conv17.i.405 = shl i128 %mul13.i.403, 1
  %factor.i.406 = and i128 %conv17.i.405, 36893488147419103230
  %add21.i.407 = add nuw nsw i128 %factor.i.406, %shr.i.398
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
  %add128.i.452 = add nuw nsw i128 %mul109.i.445, %shr121.i.449
  %mul133.i.453 = mul nuw i128 %conv42.i.418, %conv42.i.418
  %shr135.i.454 = lshr i128 %mul133.i.453, 64
  %conv137.i.455 = and i128 %mul133.i.453, 18446744073709551615
  %add139.i.456 = add nuw nsw i128 %add114.i.447, %conv137.i.455
  %add.i.353 = add nuw nsw i128 %conv5.i.399, 1267650600228229401427983728624
  %add3.i.355 = or i128 %add21.i.407, 1267650600228229401496703205376
  %arrayidx4.i.356 = getelementptr inbounds i128, i128* %x_out, i64 1
  %add78.i.433 = add nuw nsw i128 %conv76.i.432, 1267650600228229401427983728656
  %add6.i.358 = add nuw nsw i128 %add78.i.433, %mul36.i.415
  %arrayidx7.i.359 = getelementptr inbounds i128, i128* %x_out, i64 2
  %add81.i.434 = add nuw nsw i128 %shr74.i.431, 1267650600228229401427983728656
  %add9.i.361 = add nuw nsw i128 %add81.i.434, %mul64.i.428
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
  %add19.i.i.376 = add i128 %sub.i.i.368, %shl13.i.i.373
  %sub23.i.i.378 = sub nsw i128 %sub11.i.i.372, %shl.i.i.365
  %sub26.i.i.380 = sub i128 %add3.i.i.367, %add139.i.456
  %shl28.i.i.381 = shl nuw nsw i128 %add139.i.456, 32
  %sub30.i.i.382 = sub i128 %sub26.i.i.380, %shl28.i.i.381
  %shl32.i.i.383 = shl nuw nsw i128 %add139.i.456, 33
  %add34.i.i.384 = add i128 %sub15.i.i.374, %shl32.i.i.383
  %mul.i.i.385 = shl nuw nsw i128 %add139.i.456, 1
  %add37.i.i.386 = add i128 %sub23.i.i.378, %mul.i.i.385
  %sub41.i.i.388 = sub i128 %add19.i.i.376, %shl28.i.i.381
  %12 = mul nsw i128 %shr135.i.454, -4294967297
  %sub48.i.i.391 = add i128 %12, %sub30.i.i.382
  %shl50.i.i.392 = shl nuw nsw i128 %shr135.i.454, 33
  %add52.i.i.393 = add i128 %add37.i.i.386, %shl50.i.i.392
  %mul54.i.i.394 = mul nuw nsw i128 %shr135.i.454, 3
  %add56.i.i.395 = add i128 %sub41.i.i.388, %mul54.i.i.394
  %mul.i.340 = shl i128 %sub48.i.i.788, 3
  %mul3.i.342 = shl i128 %add34.i.i.781, 3
  %mul6.i.344 = shl i128 %add52.i.i.790, 3
  %mul9.i.346 = shl i128 %add56.i.i.792, 3
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
  %13 = load i128, i128* %y_in, align 16, !tbaa !2
  %14 = load i128, i128* %arrayidx18.i.i.1054, align 16, !tbaa !2
  %15 = load i128, i128* %arrayidx6.i.i.1048, align 16, !tbaa !2
  %16 = load i128, i128* %arrayidx.i.i.1046, align 16, !tbaa !2
  %17 = load i128, i128* %z_in, align 16, !tbaa !2
  %18 = load i128, i128* %arrayidx18.i.i.1217, align 16, !tbaa !2
  %19 = load i128, i128* %arrayidx6.i.i.1211, align 16, !tbaa !2
  %add7.i = add i128 %19, %15
  %20 = load i128, i128* %arrayidx.i.i.1209, align 16, !tbaa !2
  %shr.i.i.185 = lshr i128 %add7.i, 64
  %add10.i.309 = add i128 %16, 18446744069414584320
  %add.i.i.183 = add i128 %add10.i.309, %20
  %add8.i.i.186 = add i128 %add.i.i.183, %shr.i.i.185
  %conv12.i.i.187 = and i128 %add7.i, 18446744073709551615
  %add13.i.i.188 = add nuw nsw i128 %conv12.i.i.187, 18446673704965373952
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
  %shl52.i.i.207 = shl nuw nsw i128 %conv48.i.i.205, 32
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
  %add.i.301 = add i128 %13, 18446744073709551615
  %add16.i.i.189 = add i128 %add.i.301, %17
  %add50.i.i.206 = add i128 %add16.i.i.189, %conv48.i.i.205
  %sub70.i.i.219 = sub i128 %add50.i.i.206, %conv68.i.i.218
  %and71.i.i.220 = and i64 %or.i.i.217, 4294967295
  %conv72.i.i.221 = zext i64 %and71.i.i.220 to i128
  %and75.i.i.223 = and i64 %or.i.i.217, -4294967295
  %conv76.i.i.224 = zext i64 %and75.i.i.223 to i128
  %sub78.i.i.225 = sub nsw i128 %add47.i.i.204, %conv76.i.i.224
  %shr80.i.i.226 = lshr i128 %sub70.i.i.219, 64
  %add4.i.304 = add i128 %14, 1298074214633706907132628377272319
  %add19.i.i.191 = add i128 %add4.i.304, %18
  %sub54.i.i.208 = sub i128 %add19.i.i.191, %shl52.i.i.207
  %sub74.i.i.222 = sub i128 %sub54.i.i.208, %conv72.i.i.221
  %add84.i.i.227 = add i128 %sub74.i.i.222, %shr80.i.i.226
  %shr90.i.i.229 = lshr i128 %add84.i.i.227, 64
  %add94.i.i.230 = add nuw nsw i128 %add13.i.i.188, %shr90.i.i.229
  %shr100.i.i.232 = lshr i128 %add94.i.i.230, 64
  %add104.i.i.233 = add nsw i128 %sub78.i.i.225, %shr100.i.i.232
  %conv.i.239 = and i128 %sub70.i.i.219, 18446744073709551615
  %mul.i.240 = mul nuw i128 %conv.i.239, %conv.i.239
  %shr.i.241 = lshr i128 %mul.i.240, 64
  %conv5.i.242 = and i128 %mul.i.240, 18446744073709551615
  %conv12.i.245 = and i128 %add84.i.i.227, 18446744073709551615
  %mul13.i.246 = mul nuw i128 %conv12.i.245, %conv.i.239
  %shr15.i.247 = lshr i128 %mul13.i.246, 64
  %conv17.i.248 = shl i128 %mul13.i.246, 1
  %factor.i.249 = and i128 %conv17.i.248, 36893488147419103230
  %add21.i.250 = add nuw nsw i128 %factor.i.249, %shr.i.241
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
  %add128.i.295 = add nuw nsw i128 %mul109.i.288, %shr121.i.292
  %mul133.i.296 = mul nuw i128 %conv42.i.261, %conv42.i.261
  %shr135.i.297 = lshr i128 %mul133.i.296, 64
  %conv137.i.298 = and i128 %mul133.i.296, 18446744073709551615
  %add139.i.299 = add nuw nsw i128 %add114.i.290, %conv137.i.298
  %add.i.138 = add nuw nsw i128 %conv5.i.242, 1267650600228229401427983728624
  %add3.i.140 = or i128 %add21.i.250, 1267650600228229401496703205376
  %arrayidx4.i.141 = getelementptr inbounds i128, i128* %z_out, i64 1
  %add78.i.276 = add nuw nsw i128 %conv76.i.275, 1267650600228229401427983728656
  %add6.i.143 = add nuw nsw i128 %add78.i.276, %mul36.i.258
  %arrayidx7.i.144 = getelementptr inbounds i128, i128* %z_out, i64 2
  %add81.i.277 = add nuw nsw i128 %shr74.i.274, 1267650600228229401427983728656
  %add9.i.146 = add nuw nsw i128 %add81.i.277, %mul64.i.271
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
  %add19.i.i.161 = add i128 %sub.i.i.153, %shl13.i.i.158
  %sub23.i.i.163 = sub nsw i128 %sub11.i.i.157, %shl.i.i.150
  %sub26.i.i.165 = sub i128 %add3.i.i.152, %add139.i.299
  %shl28.i.i.166 = shl nuw nsw i128 %add139.i.299, 32
  %sub30.i.i.167 = sub i128 %sub26.i.i.165, %shl28.i.i.166
  %shl32.i.i.168 = shl nuw nsw i128 %add139.i.299, 33
  %add34.i.i.169 = add i128 %sub15.i.i.159, %shl32.i.i.168
  %mul.i.i.170 = shl nuw nsw i128 %add139.i.299, 1
  %add37.i.i.171 = add i128 %sub23.i.i.163, %mul.i.i.170
  %sub41.i.i.173 = sub i128 %add19.i.i.161, %shl28.i.i.166
  %21 = mul nsw i128 %shr135.i.297, -4294967297
  %sub48.i.i.176 = add i128 %21, %sub30.i.i.167
  %shl50.i.i.177 = shl nuw nsw i128 %shr135.i.297, 33
  %add52.i.i.178 = add i128 %add37.i.i.171, %shl50.i.i.177
  %mul54.i.i.179 = mul nuw nsw i128 %shr135.i.297, 3
  %add56.i.i.180 = add i128 %sub41.i.i.173, %mul54.i.i.179
  %add.i.124 = add i128 %sub48.i.i.176, 40564819207303340845695479315968
  %add2.i.126 = add i128 %add34.i.i.169, 40564819207303340847894502572032
  %add4.i.128 = add i128 %add52.i.i.178, 40564819207303340845695479316992
  %add6.i.130 = add i128 %add56.i.i.180, 40564819207303340845695479316992
  %add.i.316.neg = sub i128 %add.i.124, %sub48.i.i.1203
  %sub.i.131 = sub i128 %add.i.316.neg, %sub48.i.i.1040
  store i128 %sub.i.131, i128* %z_out, align 16, !tbaa !2
  %add4.i.319.neg = sub i128 %add2.i.126, %add34.i.i.1196
  %sub11.i.133 = sub i128 %add4.i.319.neg, %add34.i.i.1033
  store i128 %sub11.i.133, i128* %arrayidx4.i.141, align 16, !tbaa !2
  %add7.i.322.neg = sub i128 %add4.i.128, %add52.i.i.1205
  %sub14.i.135 = sub i128 %add7.i.322.neg, %add52.i.i.1042
  store i128 %sub14.i.135, i128* %arrayidx7.i.144, align 16, !tbaa !2
  %add10.i.325.neg = sub i128 %add6.i.130, %add56.i.i.1207
  %sub17.i.137 = sub i128 %add10.i.325.neg, %add56.i.i.1044
  store i128 %sub17.i.137, i128* %arrayidx10.i.147, align 16, !tbaa !2
  %mul.i.117 = shl i128 %sub48.i.i.788, 2
  %mul3.i.119 = shl i128 %add34.i.i.781, 2
  %mul6.i.121 = shl i128 %add52.i.i.790, 2
  %mul9.i.123 = shl i128 %add56.i.i.792, 2
  %22 = load i128, i128* %x_out, align 16, !tbaa !2
  %23 = load i128, i128* %arrayidx4.i.356, align 16, !tbaa !2
  %24 = load i128, i128* %arrayidx7.i.359, align 16, !tbaa !2
  %add4.i.112 = sub i128 162259276829213363382781917267968, %24
  %sub14.i = add i128 %add4.i.112, %mul6.i.121
  %25 = load i128, i128* %arrayidx10.i.362, align 16, !tbaa !2
  %shr.i.i = lshr i128 %sub14.i, 64
  %sub17.i = sub i128 162259276829231810126851331852288, %25
  %add.i.i.90 = add i128 %sub17.i, %mul9.i.123
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
  %sub.i.115 = sub i128 162259276829231810126855626815487, %22
  %add16.i.i = add i128 %sub.i.115, %mul.i.117
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %sub11.i = sub i128 1460333491462920270524206387560447, %23
  %add19.i.i.92 = add i128 %sub11.i, %mul3.i.119
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
  %conv12.i.101 = and i128 %add84.i.i, 18446744073709551615
  %mul13.i.102 = mul nuw i128 %conv12.i.101, %conv.i.396
  %shr15.i.103 = lshr i128 %mul13.i.102, 64
  %conv17.i.104 = and i128 %mul13.i.102, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv12.i.402
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %conv38.i = and i128 %add94.i.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i.396
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.101, %conv12.i.402
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv27.i.410, %conv2.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i.107 = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i.107, %shr15.i.103
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
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
  %mul121.i = mul nuw i128 %conv42.i.418, %conv2.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %mul135.i = mul nuw i128 %conv79.i, %conv12.i.402
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv27.i.410
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv42.i.418, %conv12.i.101
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %mul176.i = mul nuw i128 %conv79.i, %conv27.i.410
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv42.i.418
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %mul203.i = mul nuw i128 %conv79.i, %conv42.i.418
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %mul.i.84 = mul nuw i128 %conv.i.852, %conv.i.852
  %shr.i = lshr i128 %mul.i.84, 64
  %mul13.i = mul nuw i128 %conv22.i.866, %conv.i.852
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %mul28.i = mul nuw i128 %conv63.i.885, %conv.i.852
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %mul43.i = mul nuw i128 %conv118.i.909, %conv.i.852
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv63.i.885, %conv22.i.866
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv22.i.866, %conv22.i.866
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  %mul86.i = mul nuw i128 %conv118.i.909, %conv22.i.866
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %mul101.i = mul nuw i128 %conv118.i.909, %conv63.i.885
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv63.i.885, %conv63.i.885
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  %mul133.i = mul nuw i128 %conv118.i.909, %conv118.i.909
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
  %add4.i = or i128 %add72.i, 1180591620717411303424
  %add.i.105 = sub nsw i128 1180591621816922931200, %mul3.i
  %add31.i = add nuw nsw i128 %add.i.105, %shr.i.97
  %add2.i = add nuw nsw i128 %add31.i, %conv29.i
  %sub19.i = add nuw nsw i128 %add2.i, %conv17.i.104
  %sub22.i = sub nsw i128 %add4.i, %mul6.i
  %add102.i = sub nsw i128 1180591620717411303360, %mul12.i
  %add116.i = add i128 %add102.i, %shr109.i
  %add130.i = add i128 %add116.i, %shr123.i
  %add141.i = add i128 %add130.i, %conv166.i
  %add154.i = add i128 %add141.i, %shr95.i
  %add168.i = add i128 %add154.i, %conv152.i
  %add8.i = add i128 %add168.i, %shr82.i
  %sub28.i = add i128 %add8.i, %conv139.i
  %add157.i = sub nsw i128 1180591620717411303360, %mul15.i
  %add171.i = add nsw i128 %add157.i, %shr164.i
  %add182.i = add i128 %add171.i, %shr150.i
  %add195.i = add i128 %add182.i, %conv193.i
  %add10.i = add i128 %add195.i, %shr137.i
  %sub31.i = add i128 %add10.i, %conv180.i
  %add198.i = sub nsw i128 1180591620717411303360, %mul18.i
  %add209.i = add nuw nsw i128 %add198.i, %shr191.i
  %add12.i = add nuw nsw i128 %add209.i, %shr178.i
  %sub34.i = add i128 %add12.i, %conv207.i
  %add14.i = sub nsw i128 1180591620717411303360, %mul21.i
  %sub37.i = add nuw nsw i128 %add14.i, %shr205.i
  %sub.i = sub nsw i128 40564819208483932466412890619200, %mul.i
  %add.i = add nuw nsw i128 %sub.i, %conv5.i.98
  %add3.i = or i128 %sub19.i, 40564819207303340847894502572032
  %arrayidx4.i.70 = getelementptr inbounds i128, i128* %y_out, i64 1
  %add6.i = add i128 %sub22.i, 40564819207303340845695479316992
  %arrayidx7.i.72 = getelementptr inbounds i128, i128* %y_out, i64 2
  %add75.i = sub nsw i128 40564819208483932465038501085760, %mul9.i
  %add86.i = add i128 %add75.i, %shr68.i
  %add99.i = add i128 %add86.i, %shr54.i
  %add113.i = add i128 %add99.i, %conv111.i
  %add127.i = add i128 %add113.i, %conv125.i
  %add6.i.76 = add i128 %add127.i, %shr41.i
  %sub25.i = add i128 %add6.i.76, %conv97.i
  %add9.i = add i128 %sub25.i, %conv84.i
  %arrayidx10.i = getelementptr inbounds i128, i128* %y_out, i64 3
  %shl.i.i = shl i128 %sub31.i, 32
  %add.i.i = add i128 %sub28.i, %shl.i.i
  %add3.i.i = add i128 %add.i.i, %add.i
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %sub7.i.i = sub i128 %sub31.i, %sub37.i
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %sub28.i, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %sub.i.i, %shl13.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %sub26.i.i = sub i128 %add3.i.i, %sub34.i
  %shl28.i.i = shl nsw i128 %sub34.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl i128 %sub34.i, 33
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i.70, align 16, !tbaa !2
  %mul.i.i = shl nsw i128 %sub34.i, 1
  %add37.i.i = add i128 %sub23.i.i, %mul.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %26 = mul nsw i128 %sub37.i, -4294967297
  %sub48.i.i = add i128 %26, %sub30.i.i
  store i128 %sub48.i.i, i128* %y_out, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %sub37.i, 33
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i.72, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %sub37.i, 3
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
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
