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
define void @felem_square(i128* nocapture %out, i128* nocapture readonly %in) #0 {
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
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i = and i128 %sub70.i, 18446744073709551615
  %mul.i = mul nuw i128 %conv.i, %conv.i
  %shr.i.2 = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  store i128 %conv5.i, i128* %out, align 16, !tbaa !2
  %arrayidx8.i = getelementptr inbounds i128, i128* %out, i64 1
  %conv12.i.3 = and i128 %add84.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i.3, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i.2
  store i128 %add21.i, i128* %arrayidx8.i, align 16, !tbaa !2
  %arrayidx23.i = getelementptr inbounds i128, i128* %out, i64 2
  %conv27.i = and i128 %add94.i, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %arrayidx38.i = getelementptr inbounds i128, i128* %out, i64 3
  %conv42.i = and i128 %add104.i, 18446744073709551615
  %mul43.i = mul nuw i128 %conv42.i, %conv.i
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %arrayidx51.i = getelementptr inbounds i128, i128* %out, i64 4
  %mul56.i = mul nuw i128 %conv27.i, %conv12.i.3
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i.4 = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i.4, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv12.i.3, %conv12.i.3
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i.5 = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i.5
  store i128 %add78.i, i128* %arrayidx23.i, align 16, !tbaa !2
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  store i128 %add81.i, i128* %arrayidx38.i, align 16, !tbaa !2
  %mul86.i = mul nuw i128 %conv42.i, %conv12.i.3
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %arrayidx96.i = getelementptr inbounds i128, i128* %out, i64 5
  %mul101.i = mul nuw i128 %conv42.i, %conv27.i
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %arrayidx111.i = getelementptr inbounds i128, i128* %out, i64 6
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
  %arrayidx141.i = getelementptr inbounds i128, i128* %out, i64 7
  store i128 %shr135.i, i128* %arrayidx141.i, align 16, !tbaa !2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

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
  store i32 1, i32* %a_is_minus3, align 4, !tbaa !6
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
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_256, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !11
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
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !12
  %call1 = call fastcc i32 @BN_to_felem(i128* %arraydecay, %struct.bignum_st* %7)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !14
  %call4 = call fastcc i32 @BN_to_felem(i128* %arraydecay3, %struct.bignum_st* %8)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %cleanup, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !15
  %call8 = call fastcc i32 @BN_to_felem(i128* %arraydecay7, %struct.bignum_st* %9)
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %cleanup, label %if.end.11

if.end.11:                                        ; preds = %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 0
  call fastcc void @felem_inv(i128* %arraydecay12, i128* %arraydecay7)
  %arraydecay14 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  call void @felem_square(i128* %arraydecay14, i128* %arraydecay12)
  %10 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %add.i = add i128 %10, 1267650600228229401427983728624
  %arrayidx2.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %11 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i = add i128 %11, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %12 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i = add i128 %12, 1267650600228229401427983728656
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 2
  %arrayidx8.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %13 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i = add i128 %13, 1267650600228229401427983728656
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %z1, i64 0, i64 3
  %arrayidx.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %14 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %arrayidx1.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %15 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i = shl i128 %15, 32
  %add.i.i = add i128 %shl.i.i, %14
  %add3.i.i = add i128 %add.i.i, %add.i
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %arrayidx6.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  %16 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i = sub i128 %15, %16
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %14, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %shl13.i.i, %sub.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %arrayidx24.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %17 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i = sub i128 %add3.i.i, %17
  %shl28.i.i = shl i128 %17, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl i128 %17, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl i128 %17, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %16
  %shl46.i.i = shl i128 %16, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i = shl i128 %16, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul i128 %16, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  %arrayidx.i.i.65 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 3
  %18 = load i128, i128* %arrayidx.i.i.65, align 16, !tbaa !2
  %add.i.i.66 = add i128 %18, 18446744069414584320
  %arrayidx6.i.i.67 = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 2
  %19 = load i128, i128* %arrayidx6.i.i.67, align 16, !tbaa !2
  %shr.i.i = lshr i128 %19, 64
  %add8.i.i = add i128 %add.i.i.66, %shr.i.i
  %conv12.i.i = and i128 %19, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %20 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add16.i.i = add i128 %20, 18446744073709551615
  %arrayidx18.i.i = getelementptr inbounds [4 x i128], [4 x i128]* %x_in, i64 0, i64 1
  %21 = load i128, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %add19.i.i.68 = add i128 %21, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i.69 = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i.70 = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i.69, %shl.i.i.70
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
  %sub54.i.i = sub i128 %add19.i.i.68, %shl52.i.i
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
  %add.i.71 = add i128 %add56.i.i, 18446744069414584320
  %shr.i = lshr i128 %add52.i.i, 64
  %add8.i = add i128 %add.i.71, %shr.i
  %conv12.i = and i128 %add52.i.i, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
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
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i = and i128 %sub70.i.i, 18446744073709551615
  %conv2.i = and i128 %sub70.i, 18446744073709551615
  %mul.i = mul nuw i128 %conv2.i, %conv.i
  %shr.i.72 = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  store i128 %conv5.i, i128* %arraydecay14, align 16, !tbaa !2
  %conv12.i.74 = and i128 %add84.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i.74, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = and i128 %mul13.i, 18446744073709551615
  %conv22.i = and i128 %add84.i.i, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv22.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.75 = add nuw nsw i128 %conv29.i, %shr.i.72
  %add31.i = add nuw nsw i128 %add.i.75, %conv17.i
  store i128 %add31.i, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i = and i128 %add94.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.74, %conv22.i
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %conv63.i = and i128 %add94.i.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv63.i, %conv2.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i, %shr15.i
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  store i128 %add72.i, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i = and i128 %add104.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv22.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.74, %conv63.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %conv118.i = and i128 %add104.i.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv118.i, %conv2.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %shr54.i, %shr68.i
  %add75.i = add nuw nsw i128 %add61.i, %conv111.i
  %add86.i = add nuw nsw i128 %add75.i, %conv125.i
  %add99.i = add nuw nsw i128 %add86.i, %shr41.i
  %add113.i = add nuw nsw i128 %add99.i, %conv97.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  store i128 %add127.i, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i = mul nuw i128 %conv79.i, %conv22.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv63.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv118.i, %conv12.i.74
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr123.i, %shr109.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  store i128 %add168.i, i128* %arrayidx.i.i, align 16, !tbaa !2
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
  store i128 %add195.i, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv118.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  store i128 %add209.i, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.77 = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i.79 = or i128 %add31.i, 1267650600228229401496703205376
  %add6.i.82 = add nuw nsw i128 %add72.i, 1267650600228229401427983728656
  %add9.i.85 = add i128 %add127.i, 1267650600228229401427983728656
  %shl.i.i.89 = shl nuw nsw i128 %add195.i, 32
  %add.i.i.90 = add i128 %shl.i.i.89, %add168.i
  %add3.i.i.91 = add i128 %add.i.i.90, %add.i.77
  %sub.i.i.92 = sub i128 %add9.i.85, %add.i.i.90
  %sub7.i.i.94 = sub nsw i128 %add195.i, %shr205.i
  %add9.i.i.95 = add nsw i128 %sub7.i.i.94, %add3.i.79
  %sub11.i.i.96 = sub nsw i128 %add6.i.82, %sub7.i.i.94
  %shl13.i.i.97 = shl i128 %add168.i, 32
  %sub15.i.i.98 = sub i128 %add9.i.i.95, %shl13.i.i.97
  %add19.i.i.100 = add i128 %shl13.i.i.97, %sub.i.i.92
  %sub23.i.i.102 = sub i128 %sub11.i.i.96, %shl.i.i.89
  %sub26.i.i.104 = sub i128 %add3.i.i.91, %add209.i
  %shl28.i.i.105 = shl nuw nsw i128 %add209.i, 32
  %sub30.i.i.106 = sub i128 %sub26.i.i.104, %shl28.i.i.105
  %shl32.i.i.107 = shl nuw nsw i128 %add209.i, 33
  %add34.i.i.108 = add i128 %shl32.i.i.107, %sub15.i.i.98
  store i128 %add34.i.i.108, i128* %arrayidx18.i.i, align 16, !tbaa !2
  %mul.i.i.109 = shl nuw nsw i128 %add209.i, 1
  %add37.i.i.110 = add i128 %mul.i.i.109, %sub23.i.i.102
  %sub41.i.i.112 = sub i128 %add19.i.i.100, %shl28.i.i.105
  %sub44.i.i.113 = sub i128 %sub30.i.i.106, %shr205.i
  %shl46.i.i.114 = shl nuw nsw i128 %shr205.i, 32
  %sub48.i.i.115 = sub i128 %sub44.i.i.113, %shl46.i.i.114
  store i128 %sub48.i.i.115, i128* %arraydecay, align 16, !tbaa !2
  %shl50.i.i.116 = shl nuw nsw i128 %shr205.i, 33
  %add52.i.i.117 = add i128 %shl50.i.i.116, %add37.i.i.110
  store i128 %add52.i.i.117, i128* %arrayidx6.i.i.67, align 16, !tbaa !2
  %mul54.i.i.118 = mul nuw nsw i128 %shr205.i, 3
  %add56.i.i.119 = add i128 %mul54.i.i.118, %sub41.i.i.112
  store i128 %add56.i.i.119, i128* %arrayidx.i.i.65, align 16, !tbaa !2
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
  %25 = load <2 x i64>, <2 x i64>* %24, align 16, !tbaa !16
  %26 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %25, <2 x i64>* %26, align 16, !tbaa !16
  %arrayidx4.i.i.632 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  %arrayidx5.i.i.633 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %27 = bitcast i64* %arrayidx4.i.i.632 to <2 x i64>*
  %28 = load <2 x i64>, <2 x i64>* %27, align 16, !tbaa !16
  %29 = bitcast i8* %arrayidx5.i.i.633 to <2 x i64>*
  store <2 x i64> %28, <2 x i64>* %29, align 16, !tbaa !16
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
  %call.i.643 = call %struct.bignum_st* @BN_bin2bn(i8* %23, i32 32, %struct.bignum_st* %x) #1
  call void @llvm.lifetime.end(i64 32, i8* %23) #1
  call void @llvm.lifetime.end(i64 32, i8* %22) #1
  %tobool28 = icmp eq %struct.bignum_st* %call.i.643, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %vector.body
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1961) #1
  br label %cleanup

if.end.31:                                        ; preds = %vector.body, %if.end.11
  %36 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %add.i.i.421 = add i128 %36, 18446744069414584320
  %37 = load i128, i128* %arrayidx7.i, align 16, !tbaa !2
  %shr.i.i.423 = lshr i128 %37, 64
  %add8.i.i.424 = add i128 %add.i.i.421, %shr.i.i.423
  %conv12.i.i.425 = and i128 %37, 18446744073709551615
  %add13.i.i.426 = add nuw nsw i128 %conv12.i.i.425, 18446673704965373952
  %38 = load i128, i128* %arraydecay7, align 16, !tbaa !2
  %add16.i.i.427 = add i128 %38, 18446744073709551615
  %39 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %add19.i.i.429 = add i128 %39, 1298074214633706907132628377272319
  %shr22.i.i.430 = lshr i128 %add8.i.i.424, 64
  %conv23.i.i.431 = trunc i128 %shr22.i.i.430 to i64
  %conv26.i.i.432 = and i128 %add8.i.i.424, 18446744073709551615
  %sub.i.i.433 = sub nsw i128 %conv26.i.i.432, %shr22.i.i.430
  %shl.i.i.434 = shl nuw nsw i128 %shr22.i.i.430, 32
  %add32.i.i.435 = add nsw i128 %sub.i.i.433, %shl.i.i.434
  %shr34.i.i.436 = lshr i128 %add32.i.i.435, 64
  %conv35.i.i.437 = trunc i128 %shr34.i.i.436 to i64
  %add36.i.i.438 = add i64 %conv35.i.i.437, %conv23.i.i.431
  %conv39.i.i.439 = and i128 %add32.i.i.435, 18446744073709551615
  %sub43.i.i.440 = sub nsw i128 %conv39.i.i.439, %shr34.i.i.436
  %shl45.i.i.441 = shl nuw nsw i128 %shr34.i.i.436, 32
  %add47.i.i.442 = add nsw i128 %sub43.i.i.440, %shl45.i.i.441
  %conv48.i.i.443 = zext i64 %add36.i.i.438 to i128
  %add50.i.i.444 = add i128 %add16.i.i.427, %conv48.i.i.443
  %shl52.i.i.445 = shl nuw nsw i128 %conv48.i.i.443, 32
  %sub54.i.i.446 = sub i128 %add19.i.i.429, %shl52.i.i.445
  %shr56.i.i.447 = lshr i128 %add47.i.i.442, 64
  %conv57.i.i.448 = trunc i128 %shr56.i.i.447 to i64
  %sub58.i.i.449 = sub i64 0, %conv57.i.i.448
  %conv60.i.i.450 = trunc i128 %add47.i.i.442 to i64
  %and.i.i.451 = and i64 %conv60.i.i.450, 9223372036854775807
  %neg.i.i.452 = sub nsw i64 9223372032559808512, %and.i.i.451
  %sub62177.i.i.453 = and i64 %neg.i.i.452, %conv60.i.i.450
  %and66.i.i.454 = ashr i64 %sub62177.i.i.453, 63
  %or.i.i.455 = or i64 %and66.i.i.454, %sub58.i.i.449
  %conv68.i.i.456 = zext i64 %or.i.i.455 to i128
  %sub70.i.i.457 = sub i128 %add50.i.i.444, %conv68.i.i.456
  %and71.i.i.458 = and i64 %or.i.i.455, 4294967295
  %conv72.i.i.459 = zext i64 %and71.i.i.458 to i128
  %sub74.i.i.460 = sub i128 %sub54.i.i.446, %conv72.i.i.459
  %and75.i.i.461 = and i64 %or.i.i.455, -4294967295
  %conv76.i.i.462 = zext i64 %and75.i.i.461 to i128
  %sub78.i.i.463 = sub nsw i128 %add47.i.i.442, %conv76.i.i.462
  %shr80.i.i.464 = lshr i128 %sub70.i.i.457, 64
  %add84.i.i.465 = add i128 %sub74.i.i.460, %shr80.i.i.464
  %shr90.i.i.467 = lshr i128 %add84.i.i.465, 64
  %add94.i.i.468 = add nuw nsw i128 %add13.i.i.426, %shr90.i.i.467
  %shr100.i.i.470 = lshr i128 %add94.i.i.468, 64
  %add104.i.i.471 = add nsw i128 %sub78.i.i.463, %shr100.i.i.470
  %arrayidx.i.478 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 3
  %40 = load i128, i128* %arrayidx.i.478, align 16, !tbaa !2
  %add.i.479 = add i128 %40, 18446744069414584320
  %arrayidx6.i.480 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 2
  %41 = load i128, i128* %arrayidx6.i.480, align 16, !tbaa !2
  %shr.i.481 = lshr i128 %41, 64
  %add8.i.482 = add i128 %add.i.479, %shr.i.481
  %conv12.i.483 = and i128 %41, 18446744073709551615
  %add13.i.484 = add nuw nsw i128 %conv12.i.483, 18446673704965373952
  %42 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add16.i.485 = add i128 %42, 18446744073709551615
  %arrayidx18.i.486 = getelementptr inbounds [4 x i128], [4 x i128]* %z2, i64 0, i64 1
  %43 = load i128, i128* %arrayidx18.i.486, align 16, !tbaa !2
  %add19.i.487 = add i128 %43, 1298074214633706907132628377272319
  %shr22.i.488 = lshr i128 %add8.i.482, 64
  %conv23.i.489 = trunc i128 %shr22.i.488 to i64
  %conv26.i.490 = and i128 %add8.i.482, 18446744073709551615
  %sub.i.491 = sub nsw i128 %conv26.i.490, %shr22.i.488
  %shl.i.492 = shl nuw nsw i128 %shr22.i.488, 32
  %add32.i.493 = add nsw i128 %sub.i.491, %shl.i.492
  %shr34.i.494 = lshr i128 %add32.i.493, 64
  %conv35.i.495 = trunc i128 %shr34.i.494 to i64
  %add36.i.496 = add i64 %conv35.i.495, %conv23.i.489
  %conv39.i.497 = and i128 %add32.i.493, 18446744073709551615
  %sub43.i.498 = sub nsw i128 %conv39.i.497, %shr34.i.494
  %shl45.i.499 = shl nuw nsw i128 %shr34.i.494, 32
  %add47.i.500 = add nsw i128 %sub43.i.498, %shl45.i.499
  %conv48.i.501 = zext i64 %add36.i.496 to i128
  %add50.i.502 = add i128 %add16.i.485, %conv48.i.501
  %shl52.i.503 = shl nuw nsw i128 %conv48.i.501, 32
  %sub54.i.504 = sub i128 %add19.i.487, %shl52.i.503
  %shr56.i.505 = lshr i128 %add47.i.500, 64
  %conv57.i.506 = trunc i128 %shr56.i.505 to i64
  %sub58.i.507 = sub i64 0, %conv57.i.506
  %conv60.i.508 = trunc i128 %add47.i.500 to i64
  %and.i.509 = and i64 %conv60.i.508, 9223372036854775807
  %neg.i.510 = sub nsw i64 9223372032559808512, %and.i.509
  %sub62177.i.511 = and i64 %neg.i.510, %conv60.i.508
  %and66.i.512 = ashr i64 %sub62177.i.511, 63
  %or.i.513 = or i64 %and66.i.512, %sub58.i.507
  %conv68.i.514 = zext i64 %or.i.513 to i128
  %sub70.i.515 = sub i128 %add50.i.502, %conv68.i.514
  %and71.i.516 = and i64 %or.i.513, 4294967295
  %conv72.i.517 = zext i64 %and71.i.516 to i128
  %sub74.i.518 = sub i128 %sub54.i.504, %conv72.i.517
  %and75.i.519 = and i64 %or.i.513, -4294967295
  %conv76.i.520 = zext i64 %and75.i.519 to i128
  %sub78.i.521 = sub nsw i128 %add47.i.500, %conv76.i.520
  %shr80.i.522 = lshr i128 %sub70.i.515, 64
  %add84.i.523 = add i128 %sub74.i.518, %shr80.i.522
  %shr90.i.525 = lshr i128 %add84.i.523, 64
  %add94.i.526 = add nuw nsw i128 %add13.i.484, %shr90.i.525
  %shr100.i.528 = lshr i128 %add94.i.526, 64
  %add104.i.529 = add nsw i128 %sub78.i.521, %shr100.i.528
  %conv.i.535 = and i128 %sub70.i.i.457, 18446744073709551615
  %conv2.i.536 = and i128 %sub70.i.515, 18446744073709551615
  %mul.i.537 = mul nuw i128 %conv2.i.536, %conv.i.535
  %shr.i.538 = lshr i128 %mul.i.537, 64
  %conv5.i.539 = and i128 %mul.i.537, 18446744073709551615
  store i128 %conv5.i.539, i128* %arraydecay14, align 16, !tbaa !2
  %conv12.i.542 = and i128 %add84.i.523, 18446744073709551615
  %mul13.i.543 = mul nuw i128 %conv12.i.542, %conv.i.535
  %shr15.i.544 = lshr i128 %mul13.i.543, 64
  %conv17.i.545 = and i128 %mul13.i.543, 18446744073709551615
  %conv22.i.549 = and i128 %add84.i.i.465, 18446744073709551615
  %mul25.i.550 = mul nuw i128 %conv2.i.536, %conv22.i.549
  %shr27.i.551 = lshr i128 %mul25.i.550, 64
  %conv29.i.552 = and i128 %mul25.i.550, 18446744073709551615
  %add.i.546 = add nuw nsw i128 %conv29.i.552, %shr.i.538
  %add31.i.553 = add nuw nsw i128 %add.i.546, %conv17.i.545
  store i128 %add31.i.553, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.556 = and i128 %add94.i.526, 18446744073709551615
  %mul39.i.557 = mul nuw i128 %conv38.i.556, %conv.i.535
  %shr41.i.558 = lshr i128 %mul39.i.557, 64
  %conv43.i.559 = and i128 %mul39.i.557, 18446744073709551615
  %mul52.i.562 = mul nuw i128 %conv12.i.542, %conv22.i.549
  %shr54.i.563 = lshr i128 %mul52.i.562, 64
  %conv56.i.564 = and i128 %mul52.i.562, 18446744073709551615
  %conv63.i.568 = and i128 %add94.i.i.468, 18446744073709551615
  %mul66.i.569 = mul nuw i128 %conv2.i.536, %conv63.i.568
  %shr68.i.570 = lshr i128 %mul66.i.569, 64
  %conv70.i.571 = and i128 %mul66.i.569, 18446744073709551615
  %add34.i.554 = add nuw nsw i128 %conv70.i.571, %shr27.i.551
  %add45.i.560 = add nuw nsw i128 %add34.i.554, %shr15.i.544
  %add58.i.565 = add nuw nsw i128 %add45.i.560, %conv56.i.564
  %add72.i.572 = add nuw nsw i128 %add58.i.565, %conv43.i.559
  store i128 %add72.i.572, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.575 = and i128 %add104.i.529, 18446744073709551615
  %mul80.i.576 = mul nuw i128 %conv79.i.575, %conv.i.535
  %shr82.i.577 = lshr i128 %mul80.i.576, 64
  %conv84.i.578 = and i128 %mul80.i.576, 18446744073709551615
  %mul93.i.581 = mul nuw i128 %conv38.i.556, %conv22.i.549
  %shr95.i.582 = lshr i128 %mul93.i.581, 64
  %conv97.i.583 = and i128 %mul93.i.581, 18446744073709551615
  %mul107.i.586 = mul nuw i128 %conv12.i.542, %conv63.i.568
  %shr109.i.587 = lshr i128 %mul107.i.586, 64
  %conv111.i.588 = and i128 %mul107.i.586, 18446744073709551615
  %conv118.i.592 = and i128 %add104.i.i.471, 18446744073709551615
  %mul121.i.593 = mul nuw i128 %conv118.i.592, %conv2.i.536
  %shr123.i.594 = lshr i128 %mul121.i.593, 64
  %conv125.i.595 = and i128 %mul121.i.593, 18446744073709551615
  %add61.i.566 = add nuw nsw i128 %shr54.i.563, %shr68.i.570
  %add75.i.573 = add nuw nsw i128 %add61.i.566, %conv111.i.588
  %add86.i.579 = add nuw nsw i128 %add75.i.573, %conv125.i.595
  %add99.i.584 = add nuw nsw i128 %add86.i.579, %shr41.i.558
  %add113.i.589 = add nuw nsw i128 %add99.i.584, %conv97.i.583
  %add127.i.596 = add nuw nsw i128 %add113.i.589, %conv84.i.578
  store i128 %add127.i.596, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.598 = mul nuw i128 %conv79.i.575, %conv22.i.549
  %shr137.i.599 = lshr i128 %mul135.i.598, 64
  %conv139.i.600 = and i128 %mul135.i.598, 18446744073709551615
  %mul148.i.603 = mul nuw i128 %conv38.i.556, %conv63.i.568
  %shr150.i.604 = lshr i128 %mul148.i.603, 64
  %conv152.i.605 = and i128 %mul148.i.603, 18446744073709551615
  %mul162.i.608 = mul nuw i128 %conv12.i.542, %conv118.i.592
  %shr164.i.609 = lshr i128 %mul162.i.608, 64
  %conv166.i.610 = and i128 %mul162.i.608, 18446744073709551615
  %add102.i.585 = add nuw nsw i128 %shr123.i.594, %shr109.i.587
  %add116.i.590 = add nuw nsw i128 %add102.i.585, %conv166.i.610
  %add130.i.597 = add nuw nsw i128 %add116.i.590, %shr95.i.582
  %add141.i.601 = add nuw nsw i128 %add130.i.597, %conv152.i.605
  %add154.i.606 = add nuw nsw i128 %add141.i.601, %shr82.i.577
  %add168.i.611 = add nuw nsw i128 %add154.i.606, %conv139.i.600
  store i128 %add168.i.611, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.613 = mul nuw i128 %conv79.i.575, %conv63.i.568
  %shr178.i.614 = lshr i128 %mul176.i.613, 64
  %conv180.i.615 = and i128 %mul176.i.613, 18446744073709551615
  %mul189.i.618 = mul nuw i128 %conv38.i.556, %conv118.i.592
  %shr191.i.619 = lshr i128 %mul189.i.618, 64
  %conv193.i.620 = and i128 %mul189.i.618, 18446744073709551615
  %add157.i.607 = add nuw nsw i128 %shr150.i.604, %shr164.i.609
  %add171.i.612 = add nuw nsw i128 %add157.i.607, %conv193.i.620
  %add182.i.616 = add nuw nsw i128 %add171.i.612, %shr137.i.599
  %add195.i.621 = add nuw nsw i128 %add182.i.616, %conv180.i.615
  store i128 %add195.i.621, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.622 = add nuw nsw i128 %shr178.i.614, %shr191.i.619
  %mul203.i.623 = mul nuw i128 %conv79.i.575, %conv118.i.592
  %shr205.i.624 = lshr i128 %mul203.i.623, 64
  %conv207.i.625 = and i128 %mul203.i.623, 18446744073709551615
  %add209.i.626 = add nuw nsw i128 %add198.i.622, %conv207.i.625
  store i128 %add209.i.626, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.624, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.374 = add nuw nsw i128 %conv5.i.539, 1267650600228229401427983728624
  %add3.i.376 = or i128 %add31.i.553, 1267650600228229401496703205376
  %add6.i.379 = add nuw nsw i128 %add72.i.572, 1267650600228229401427983728656
  %add9.i.382 = add i128 %add127.i.596, 1267650600228229401427983728656
  %shl.i.i.386 = shl nuw nsw i128 %add195.i.621, 32
  %add.i.i.387 = add i128 %shl.i.i.386, %add168.i.611
  %add3.i.i.388 = add i128 %add.i.i.387, %add.i.374
  %sub.i.i.389 = sub i128 %add9.i.382, %add.i.i.387
  %sub7.i.i.391 = sub nsw i128 %add195.i.621, %shr205.i.624
  %add9.i.i.392 = add nsw i128 %sub7.i.i.391, %add3.i.376
  %sub11.i.i.393 = sub nsw i128 %add6.i.379, %sub7.i.i.391
  %shl13.i.i.394 = shl i128 %add168.i.611, 32
  %sub15.i.i.395 = sub i128 %add9.i.i.392, %shl13.i.i.394
  %add19.i.i.397 = add i128 %shl13.i.i.394, %sub.i.i.389
  %sub23.i.i.399 = sub i128 %sub11.i.i.393, %shl.i.i.386
  %sub26.i.i.401 = sub i128 %add3.i.i.388, %add209.i.626
  %shl28.i.i.402 = shl nuw nsw i128 %add209.i.626, 32
  %sub30.i.i.403 = sub i128 %sub26.i.i.401, %shl28.i.i.402
  %shl32.i.i.404 = shl nuw nsw i128 %add209.i.626, 33
  %add34.i.i.405 = add i128 %shl32.i.i.404, %sub15.i.i.395
  store i128 %add34.i.i.405, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.406 = shl nuw nsw i128 %add209.i.626, 1
  %add37.i.i.407 = add i128 %mul.i.i.406, %sub23.i.i.399
  %sub41.i.i.409 = sub i128 %add19.i.i.397, %shl28.i.i.402
  %sub44.i.i.410 = sub i128 %sub30.i.i.403, %shr205.i.624
  %shl46.i.i.411 = shl nuw nsw i128 %shr205.i.624, 32
  %sub48.i.i.412 = sub i128 %sub44.i.i.410, %shl46.i.i.411
  store i128 %sub48.i.i.412, i128* %arraydecay7, align 16, !tbaa !2
  %shl50.i.i.413 = shl nuw nsw i128 %shr205.i.624, 33
  %add52.i.i.414 = add i128 %shl50.i.i.413, %add37.i.i.407
  store i128 %add52.i.i.414, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.415 = mul nuw nsw i128 %shr205.i.624, 3
  %add56.i.i.416 = add i128 %mul54.i.i.415, %sub41.i.i.409
  store i128 %add56.i.i.416, i128* %arrayidx10.i, align 16, !tbaa !2
  %arrayidx.i.i.166 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 3
  %44 = load i128, i128* %arrayidx.i.i.166, align 16, !tbaa !2
  %add.i.i.167 = add i128 %44, 18446744069414584320
  %arrayidx6.i.i.168 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 2
  %45 = load i128, i128* %arrayidx6.i.i.168, align 16, !tbaa !2
  %shr.i.i.169 = lshr i128 %45, 64
  %add8.i.i.170 = add i128 %add.i.i.167, %shr.i.i.169
  %conv12.i.i.171 = and i128 %45, 18446744073709551615
  %add13.i.i.172 = add nuw nsw i128 %conv12.i.i.171, 18446673704965373952
  %46 = load i128, i128* %arraydecay3, align 16, !tbaa !2
  %add16.i.i.173 = add i128 %46, 18446744073709551615
  %arrayidx18.i.i.174 = getelementptr inbounds [4 x i128], [4 x i128]* %y_in, i64 0, i64 1
  %47 = load i128, i128* %arrayidx18.i.i.174, align 16, !tbaa !2
  %add19.i.i.175 = add i128 %47, 1298074214633706907132628377272319
  %shr22.i.i.176 = lshr i128 %add8.i.i.170, 64
  %conv23.i.i.177 = trunc i128 %shr22.i.i.176 to i64
  %conv26.i.i.178 = and i128 %add8.i.i.170, 18446744073709551615
  %sub.i.i.179 = sub nsw i128 %conv26.i.i.178, %shr22.i.i.176
  %shl.i.i.180 = shl nuw nsw i128 %shr22.i.i.176, 32
  %add32.i.i.181 = add nsw i128 %sub.i.i.179, %shl.i.i.180
  %shr34.i.i.182 = lshr i128 %add32.i.i.181, 64
  %conv35.i.i.183 = trunc i128 %shr34.i.i.182 to i64
  %add36.i.i.184 = add i64 %conv35.i.i.183, %conv23.i.i.177
  %conv39.i.i.185 = and i128 %add32.i.i.181, 18446744073709551615
  %sub43.i.i.186 = sub nsw i128 %conv39.i.i.185, %shr34.i.i.182
  %shl45.i.i.187 = shl nuw nsw i128 %shr34.i.i.182, 32
  %add47.i.i.188 = add nsw i128 %sub43.i.i.186, %shl45.i.i.187
  %conv48.i.i.189 = zext i64 %add36.i.i.184 to i128
  %add50.i.i.190 = add i128 %add16.i.i.173, %conv48.i.i.189
  %shl52.i.i.191 = shl nuw nsw i128 %conv48.i.i.189, 32
  %sub54.i.i.192 = sub i128 %add19.i.i.175, %shl52.i.i.191
  %shr56.i.i.193 = lshr i128 %add47.i.i.188, 64
  %conv57.i.i.194 = trunc i128 %shr56.i.i.193 to i64
  %sub58.i.i.195 = sub i64 0, %conv57.i.i.194
  %conv60.i.i.196 = trunc i128 %add47.i.i.188 to i64
  %and.i.i.197 = and i64 %conv60.i.i.196, 9223372036854775807
  %neg.i.i.198 = sub nsw i64 9223372032559808512, %and.i.i.197
  %sub62177.i.i.199 = and i64 %neg.i.i.198, %conv60.i.i.196
  %and66.i.i.200 = ashr i64 %sub62177.i.i.199, 63
  %or.i.i.201 = or i64 %and66.i.i.200, %sub58.i.i.195
  %conv68.i.i.202 = zext i64 %or.i.i.201 to i128
  %sub70.i.i.203 = sub i128 %add50.i.i.190, %conv68.i.i.202
  %and71.i.i.204 = and i64 %or.i.i.201, 4294967295
  %conv72.i.i.205 = zext i64 %and71.i.i.204 to i128
  %sub74.i.i.206 = sub i128 %sub54.i.i.192, %conv72.i.i.205
  %and75.i.i.207 = and i64 %or.i.i.201, -4294967295
  %conv76.i.i.208 = zext i64 %and75.i.i.207 to i128
  %sub78.i.i.209 = sub nsw i128 %add47.i.i.188, %conv76.i.i.208
  %shr80.i.i.210 = lshr i128 %sub70.i.i.203, 64
  %add84.i.i.211 = add i128 %sub74.i.i.206, %shr80.i.i.210
  %shr90.i.i.213 = lshr i128 %add84.i.i.211, 64
  %add94.i.i.214 = add nuw nsw i128 %add13.i.i.172, %shr90.i.i.213
  %shr100.i.i.216 = lshr i128 %add94.i.i.214, 64
  %add104.i.i.217 = add nsw i128 %sub78.i.i.209, %shr100.i.i.216
  %add.i.225 = add i128 %add56.i.i.416, 18446744069414584320
  %shr.i.227 = lshr i128 %add52.i.i.414, 64
  %add8.i.228 = add i128 %add.i.225, %shr.i.227
  %conv12.i.229 = and i128 %add52.i.i.414, 18446744073709551615
  %add13.i.230 = add nuw nsw i128 %conv12.i.229, 18446673704965373952
  %add16.i.231 = add i128 %sub48.i.i.412, 18446744073709551615
  %add19.i.233 = add i128 %add34.i.i.405, 1298074214633706907132628377272319
  %shr22.i.234 = lshr i128 %add8.i.228, 64
  %conv23.i.235 = trunc i128 %shr22.i.234 to i64
  %conv26.i.236 = and i128 %add8.i.228, 18446744073709551615
  %sub.i.237 = sub nsw i128 %conv26.i.236, %shr22.i.234
  %shl.i.238 = shl nuw nsw i128 %shr22.i.234, 32
  %add32.i.239 = add nsw i128 %sub.i.237, %shl.i.238
  %shr34.i.240 = lshr i128 %add32.i.239, 64
  %conv35.i.241 = trunc i128 %shr34.i.240 to i64
  %add36.i.242 = add i64 %conv35.i.241, %conv23.i.235
  %conv39.i.243 = and i128 %add32.i.239, 18446744073709551615
  %sub43.i.244 = sub nsw i128 %conv39.i.243, %shr34.i.240
  %shl45.i.245 = shl nuw nsw i128 %shr34.i.240, 32
  %add47.i.246 = add nsw i128 %sub43.i.244, %shl45.i.245
  %conv48.i.247 = zext i64 %add36.i.242 to i128
  %add50.i.248 = add i128 %add16.i.231, %conv48.i.247
  %shl52.i.249 = shl nuw nsw i128 %conv48.i.247, 32
  %sub54.i.250 = sub i128 %add19.i.233, %shl52.i.249
  %shr56.i.251 = lshr i128 %add47.i.246, 64
  %conv57.i.252 = trunc i128 %shr56.i.251 to i64
  %sub58.i.253 = sub i64 0, %conv57.i.252
  %conv60.i.254 = trunc i128 %add47.i.246 to i64
  %and.i.255 = and i64 %conv60.i.254, 9223372036854775807
  %neg.i.256 = sub nsw i64 9223372032559808512, %and.i.255
  %sub62177.i.257 = and i64 %neg.i.256, %conv60.i.254
  %and66.i.258 = ashr i64 %sub62177.i.257, 63
  %or.i.259 = or i64 %and66.i.258, %sub58.i.253
  %conv68.i.260 = zext i64 %or.i.259 to i128
  %sub70.i.261 = sub i128 %add50.i.248, %conv68.i.260
  %and71.i.262 = and i64 %or.i.259, 4294967295
  %conv72.i.263 = zext i64 %and71.i.262 to i128
  %sub74.i.264 = sub i128 %sub54.i.250, %conv72.i.263
  %and75.i.265 = and i64 %or.i.259, -4294967295
  %conv76.i.266 = zext i64 %and75.i.265 to i128
  %sub78.i.267 = sub nsw i128 %add47.i.246, %conv76.i.266
  %shr80.i.268 = lshr i128 %sub70.i.261, 64
  %add84.i.269 = add i128 %sub74.i.264, %shr80.i.268
  %shr90.i.271 = lshr i128 %add84.i.269, 64
  %add94.i.272 = add nuw nsw i128 %add13.i.230, %shr90.i.271
  %shr100.i.274 = lshr i128 %add94.i.272, 64
  %add104.i.275 = add nsw i128 %sub78.i.267, %shr100.i.274
  %conv.i.281 = and i128 %sub70.i.i.203, 18446744073709551615
  %conv2.i.282 = and i128 %sub70.i.261, 18446744073709551615
  %mul.i.283 = mul nuw i128 %conv2.i.282, %conv.i.281
  %shr.i.284 = lshr i128 %mul.i.283, 64
  %conv5.i.285 = and i128 %mul.i.283, 18446744073709551615
  store i128 %conv5.i.285, i128* %arraydecay14, align 16, !tbaa !2
  %conv12.i.288 = and i128 %add84.i.269, 18446744073709551615
  %mul13.i.289 = mul nuw i128 %conv12.i.288, %conv.i.281
  %shr15.i.290 = lshr i128 %mul13.i.289, 64
  %conv17.i.291 = and i128 %mul13.i.289, 18446744073709551615
  %conv22.i.295 = and i128 %add84.i.i.211, 18446744073709551615
  %mul25.i.296 = mul nuw i128 %conv2.i.282, %conv22.i.295
  %shr27.i.297 = lshr i128 %mul25.i.296, 64
  %conv29.i.298 = and i128 %mul25.i.296, 18446744073709551615
  %add.i.292 = add nuw nsw i128 %conv29.i.298, %shr.i.284
  %add31.i.299 = add nuw nsw i128 %add.i.292, %conv17.i.291
  store i128 %add31.i.299, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.302 = and i128 %add94.i.272, 18446744073709551615
  %mul39.i.303 = mul nuw i128 %conv38.i.302, %conv.i.281
  %shr41.i.304 = lshr i128 %mul39.i.303, 64
  %conv43.i.305 = and i128 %mul39.i.303, 18446744073709551615
  %mul52.i.308 = mul nuw i128 %conv12.i.288, %conv22.i.295
  %shr54.i.309 = lshr i128 %mul52.i.308, 64
  %conv56.i.310 = and i128 %mul52.i.308, 18446744073709551615
  %conv63.i.314 = and i128 %add94.i.i.214, 18446744073709551615
  %mul66.i.315 = mul nuw i128 %conv63.i.314, %conv2.i.282
  %shr68.i.316 = lshr i128 %mul66.i.315, 64
  %conv70.i.317 = and i128 %mul66.i.315, 18446744073709551615
  %add34.i.300 = add nuw nsw i128 %conv70.i.317, %shr27.i.297
  %add45.i.306 = add nuw nsw i128 %add34.i.300, %shr15.i.290
  %add58.i.311 = add nuw nsw i128 %add45.i.306, %conv56.i.310
  %add72.i.318 = add nuw nsw i128 %add58.i.311, %conv43.i.305
  store i128 %add72.i.318, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.321 = and i128 %add104.i.275, 18446744073709551615
  %mul80.i.322 = mul nuw i128 %conv79.i.321, %conv.i.281
  %shr82.i.323 = lshr i128 %mul80.i.322, 64
  %conv84.i.324 = and i128 %mul80.i.322, 18446744073709551615
  %mul93.i.327 = mul nuw i128 %conv38.i.302, %conv22.i.295
  %shr95.i.328 = lshr i128 %mul93.i.327, 64
  %conv97.i.329 = and i128 %mul93.i.327, 18446744073709551615
  %mul107.i.332 = mul nuw i128 %conv12.i.288, %conv63.i.314
  %shr109.i.333 = lshr i128 %mul107.i.332, 64
  %conv111.i.334 = and i128 %mul107.i.332, 18446744073709551615
  %conv118.i.338 = and i128 %add104.i.i.217, 18446744073709551615
  %mul121.i.339 = mul nuw i128 %conv118.i.338, %conv2.i.282
  %shr123.i.340 = lshr i128 %mul121.i.339, 64
  %conv125.i.341 = and i128 %mul121.i.339, 18446744073709551615
  %add61.i.312 = add nuw nsw i128 %shr54.i.309, %shr68.i.316
  %add75.i.319 = add nuw nsw i128 %add61.i.312, %conv111.i.334
  %add86.i.325 = add nuw nsw i128 %add75.i.319, %conv125.i.341
  %add99.i.330 = add nuw nsw i128 %add86.i.325, %shr41.i.304
  %add113.i.335 = add nuw nsw i128 %add99.i.330, %conv97.i.329
  %add127.i.342 = add nuw nsw i128 %add113.i.335, %conv84.i.324
  store i128 %add127.i.342, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.344 = mul nuw i128 %conv79.i.321, %conv22.i.295
  %shr137.i.345 = lshr i128 %mul135.i.344, 64
  %conv139.i.346 = and i128 %mul135.i.344, 18446744073709551615
  %mul148.i.349 = mul nuw i128 %conv38.i.302, %conv63.i.314
  %shr150.i.350 = lshr i128 %mul148.i.349, 64
  %conv152.i.351 = and i128 %mul148.i.349, 18446744073709551615
  %mul162.i.354 = mul nuw i128 %conv118.i.338, %conv12.i.288
  %shr164.i.355 = lshr i128 %mul162.i.354, 64
  %conv166.i.356 = and i128 %mul162.i.354, 18446744073709551615
  %add102.i.331 = add nuw nsw i128 %shr123.i.340, %shr109.i.333
  %add116.i.336 = add nuw nsw i128 %add102.i.331, %conv166.i.356
  %add130.i.343 = add nuw nsw i128 %add116.i.336, %shr95.i.328
  %add141.i.347 = add nuw nsw i128 %add130.i.343, %conv152.i.351
  %add154.i.352 = add nuw nsw i128 %add141.i.347, %shr82.i.323
  %add168.i.357 = add nuw nsw i128 %add154.i.352, %conv139.i.346
  store i128 %add168.i.357, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.359 = mul nuw i128 %conv79.i.321, %conv63.i.314
  %shr178.i.360 = lshr i128 %mul176.i.359, 64
  %conv180.i.361 = and i128 %mul176.i.359, 18446744073709551615
  %mul189.i.364 = mul nuw i128 %conv38.i.302, %conv118.i.338
  %shr191.i.365 = lshr i128 %mul189.i.364, 64
  %conv193.i.366 = and i128 %mul189.i.364, 18446744073709551615
  %add157.i.353 = add nuw nsw i128 %shr150.i.350, %shr164.i.355
  %add171.i.358 = add nuw nsw i128 %add157.i.353, %conv193.i.366
  %add182.i.362 = add nuw nsw i128 %add171.i.358, %shr137.i.345
  %add195.i.367 = add nuw nsw i128 %add182.i.362, %conv180.i.361
  store i128 %add195.i.367, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.368 = add nuw nsw i128 %shr178.i.360, %shr191.i.365
  %mul203.i.369 = mul nuw i128 %conv79.i.321, %conv118.i.338
  %shr205.i.370 = lshr i128 %mul203.i.369, 64
  %conv207.i.371 = and i128 %mul203.i.369, 18446744073709551615
  %add209.i.372 = add nuw nsw i128 %add198.i.368, %conv207.i.371
  store i128 %add209.i.372, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.370, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.120 = add nuw nsw i128 %conv5.i.285, 1267650600228229401427983728624
  %add3.i.122 = or i128 %add31.i.299, 1267650600228229401496703205376
  %add6.i.125 = add nuw nsw i128 %add72.i.318, 1267650600228229401427983728656
  %add9.i.128 = add i128 %add127.i.342, 1267650600228229401427983728656
  %shl.i.i.132 = shl nuw nsw i128 %add195.i.367, 32
  %add.i.i.133 = add i128 %shl.i.i.132, %add168.i.357
  %add3.i.i.134 = add i128 %add.i.i.133, %add.i.120
  %sub.i.i.135 = sub i128 %add9.i.128, %add.i.i.133
  %sub7.i.i.137 = sub nsw i128 %add195.i.367, %shr205.i.370
  %add9.i.i.138 = add nsw i128 %sub7.i.i.137, %add3.i.122
  %sub11.i.i.139 = sub nsw i128 %add6.i.125, %sub7.i.i.137
  %shl13.i.i.140 = shl i128 %add168.i.357, 32
  %sub15.i.i.141 = sub i128 %add9.i.i.138, %shl13.i.i.140
  %add19.i.i.143 = add i128 %shl13.i.i.140, %sub.i.i.135
  %sub23.i.i.145 = sub i128 %sub11.i.i.139, %shl.i.i.132
  %sub26.i.i.147 = sub i128 %add3.i.i.134, %add209.i.372
  %shl28.i.i.148 = shl nuw nsw i128 %add209.i.372, 32
  %sub30.i.i.149 = sub i128 %sub26.i.i.147, %shl28.i.i.148
  %shl32.i.i.150 = shl nuw nsw i128 %add209.i.372, 33
  %add34.i.i.151 = add i128 %shl32.i.i.150, %sub15.i.i.141
  store i128 %add34.i.i.151, i128* %arrayidx18.i.i.174, align 16, !tbaa !2
  %mul.i.i.152 = shl nuw nsw i128 %add209.i.372, 1
  %add37.i.i.153 = add i128 %mul.i.i.152, %sub23.i.i.145
  %sub41.i.i.155 = sub i128 %add19.i.i.143, %shl28.i.i.148
  %sub44.i.i.156 = sub i128 %sub30.i.i.149, %shr205.i.370
  %shl46.i.i.157 = shl nuw nsw i128 %shr205.i.370, 32
  %sub48.i.i.158 = sub i128 %sub44.i.i.156, %shl46.i.i.157
  store i128 %sub48.i.i.158, i128* %arraydecay3, align 16, !tbaa !2
  %shl50.i.i.159 = shl nuw nsw i128 %shr205.i.370, 33
  %add52.i.i.160 = add i128 %shl50.i.i.159, %add37.i.i.153
  store i128 %add52.i.i.160, i128* %arrayidx6.i.i.168, align 16, !tbaa !2
  %mul54.i.i.161 = mul nuw nsw i128 %shr205.i.370, 3
  %add56.i.i.162 = add i128 %mul54.i.i.161, %sub41.i.i.155
  store i128 %add56.i.i.162, i128* %arrayidx.i.i.166, align 16, !tbaa !2
  %arraydecay42 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  call fastcc void @felem_contract(i64* %arraydecay42, i128* %arraydecay3)
  %cmp44 = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp44, label %cleanup, label %if.then.45

if.then.45:                                       ; preds = %if.end.31
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %48) #1
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 32, i8* %49) #1
  %50 = bitcast [4 x i64]* %y_out to <2 x i64>*
  %51 = load <2 x i64>, <2 x i64>* %50, align 16, !tbaa !16
  %52 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %51, <2 x i64>* %52, align 16, !tbaa !16
  %arrayidx4.i.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  %arrayidx5.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %53 = bitcast i64* %arrayidx4.i.i to <2 x i64>*
  %54 = load <2 x i64>, <2 x i64>* %53, align 16, !tbaa !16
  %55 = bitcast i8* %arrayidx5.i.i to <2 x i64>*
  store <2 x i64> %54, <2 x i64>* %55, align 16, !tbaa !16
  br label %vector.body705

vector.body705:                                   ; preds = %if.then.45
  %56 = getelementptr [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %57 = bitcast i8* %56 to <16 x i8>*
  %wide.load720 = load <16 x i8>, <16 x i8>* %57, align 16, !tbaa !17
  %reverse721 = shufflevector <16 x i8> %wide.load720, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %58 = bitcast [32 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse721, <16 x i8>* %58, align 16, !tbaa !17
  %59 = bitcast [32 x i8]* %b_in.i to <16 x i8>*
  %wide.load720.1 = load <16 x i8>, <16 x i8>* %59, align 16, !tbaa !17
  %reverse721.1 = shufflevector <16 x i8> %wide.load720.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %b_out.i, i64 0, i64 16
  %61 = bitcast i8* %60 to <16 x i8>*
  store <16 x i8> %reverse721.1, <16 x i8>* %61, align 16, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %49, i32 32, %struct.bignum_st* %y) #1
  call void @llvm.lifetime.end(i64 32, i8* %49) #1
  call void @llvm.lifetime.end(i64 32, i8* %48) #1
  %tobool48 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool48, label %if.then.49, label %cleanup

if.then.49:                                       ; preds = %vector.body705
  call void @ERR_put_error(i32 16, i32 232, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1973) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %vector.body705, %if.end, %lor.lhs.false, %lor.lhs.false.6, %if.then.49, %if.then.29, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.49 ], [ 0, %if.then.29 ], [ 0, %lor.lhs.false.6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %vector.body705 ], [ 1, %if.end.31 ]
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
  %11 = load i64, i64* %arraydecay31, align 8, !tbaa !16
  %12 = bitcast [32 x i8]* %b_in.i to i64*
  store i64 %11, i64* %12, align 16, !tbaa !16
  %arrayidx2.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 1
  %13 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !16
  %arrayidx3.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 8
  %14 = bitcast i8* %arrayidx3.i.i to i64*
  store i64 %13, i64* %14, align 8, !tbaa !16
  %arrayidx4.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 2
  %15 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !16
  %arrayidx5.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %16 = bitcast i8* %arrayidx5.i.i to i64*
  store i64 %15, i64* %16, align 16, !tbaa !16
  %arrayidx6.i.i = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 3
  %17 = load i64, i64* %arrayidx6.i.i, align 8, !tbaa !16
  %arrayidx7.i.i = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 24
  %18 = bitcast i8* %arrayidx7.i.i to i64*
  store i64 %17, i64* %18, align 8, !tbaa !16
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
  %25 = load i64, i64* %arraydecay37, align 8, !tbaa !16
  store i64 %25, i64* %12, align 16, !tbaa !16
  %arrayidx2.i.i.473 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 1
  %26 = load i64, i64* %arrayidx2.i.i.473, align 8, !tbaa !16
  store i64 %26, i64* %14, align 8, !tbaa !16
  %arrayidx4.i.i.475 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 2
  %27 = load i64, i64* %arrayidx4.i.i.475, align 8, !tbaa !16
  store i64 %27, i64* %16, align 16, !tbaa !16
  %arrayidx6.i.i.477 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 3
  %28 = load i64, i64* %arrayidx6.i.i.477, align 8, !tbaa !16
  store i64 %28, i64* %18, align 8, !tbaa !16
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
  %35 = load i64, i64* %arraydecay44, align 8, !tbaa !16
  store i64 %35, i64* %12, align 16, !tbaa !16
  %arrayidx2.i.i.490 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 1
  %36 = load i64, i64* %arrayidx2.i.i.490, align 8, !tbaa !16
  store i64 %36, i64* %14, align 8, !tbaa !16
  %arrayidx4.i.i.492 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 2
  %37 = load i64, i64* %arrayidx4.i.i.492, align 8, !tbaa !16
  store i64 %37, i64* %16, align 16, !tbaa !16
  %arrayidx6.i.i.494 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 3
  %38 = load i64, i64* %arrayidx6.i.i.494, align 8, !tbaa !16
  store i64 %38, i64* %18, align 8, !tbaa !16
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
  %70 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !12
  %call124 = call fastcc i32 @BN_to_felem(i128* %arraydecay123, %struct.bignum_st* %70)
  %tobool125 = icmp eq i32 %call124, 0
  br i1 %tobool125, label %err.loopexit, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %flip_endian.exit
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 3
  %71 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !14
  %call128 = call fastcc i32 @BN_to_felem(i128* %arraydecay127, %struct.bignum_st* %71)
  %tobool129 = icmp eq i32 %call128, 0
  br i1 %tobool129, label %err.loopexit, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %lor.lhs.false.126
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 4
  %72 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !15
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
  store i64 %conv86.i, i64* %arraydecay140, align 8, !tbaa !16
  %arrayidx114.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 1
  store i64 %conv96.i, i64* %arrayidx114.i, align 8, !tbaa !16
  %arrayidx117.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 2
  store i64 %conv106.i, i64* %arrayidx117.i, align 8, !tbaa !16
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 0, i64 3
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !16
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
  store i64 %conv86.i.588, i64* %arraydecay146, align 8, !tbaa !16
  %arrayidx114.i.595 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 1
  store i64 %conv96.i.591, i64* %arrayidx114.i.595, align 8, !tbaa !16
  %arrayidx117.i.596 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 2
  store i64 %conv106.i.594, i64* %arrayidx117.i.596, align 8, !tbaa !16
  %conv119.i.597 = trunc i128 %add104.i.593 to i64
  %arrayidx120.i.598 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 1, i64 3
  store i64 %conv119.i.597, i64* %arrayidx120.i.598, align 8, !tbaa !16
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
  store i64 %conv86.i.662, i64* %arraydecay152, align 8, !tbaa !16
  %arrayidx114.i.669 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 1
  store i64 %conv96.i.665, i64* %arrayidx114.i.669, align 8, !tbaa !16
  %arrayidx117.i.670 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 2
  store i64 %conv106.i.668, i64* %arrayidx117.i.670, align 8, !tbaa !16
  %conv119.i.671 = trunc i128 %add104.i.667 to i64
  %arrayidx120.i.672 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 1, i64 2, i64 3
  store i64 %conv119.i.671, i64* %arrayidx120.i.672, align 8, !tbaa !16
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
  %87 = load i64, i64* %arraydecay140, align 8, !tbaa !16
  %conv.i.i = zext i64 %87 to i128
  store i128 %conv.i.i, i128* %arraydecay.i.677, align 16, !tbaa !2
  %88 = load i64, i64* %arrayidx114.i, align 8, !tbaa !16
  %conv3.i.i = zext i64 %88 to i128
  store i128 %conv3.i.i, i128* %arrayidx4.i.i.681, align 16, !tbaa !2
  %89 = load i64, i64* %arrayidx117.i, align 8, !tbaa !16
  %conv6.i.i = zext i64 %89 to i128
  store i128 %conv6.i.i, i128* %arrayidx7.i.i.684, align 16, !tbaa !2
  %90 = load i64, i64* %arrayidx120.i, align 8, !tbaa !16
  %conv9.i.i = zext i64 %90 to i128
  store i128 %conv9.i.i, i128* %arrayidx10.i.i.687, align 16, !tbaa !2
  %91 = load i64, i64* %arraydecay146, align 8, !tbaa !16
  %conv.i.12.i = zext i64 %91 to i128
  store i128 %conv.i.12.i, i128* %arraydecay1.i.688, align 16, !tbaa !2
  %92 = load i64, i64* %arrayidx114.i.595, align 8, !tbaa !16
  %conv3.i.14.i = zext i64 %92 to i128
  store i128 %conv3.i.14.i, i128* %arrayidx4.i.15.i.692, align 16, !tbaa !2
  %93 = load i64, i64* %arrayidx117.i.596, align 8, !tbaa !16
  %conv6.i.17.i = zext i64 %93 to i128
  store i128 %conv6.i.17.i, i128* %arrayidx7.i.18.i.695, align 16, !tbaa !2
  %94 = load i64, i64* %arrayidx120.i.598, align 8, !tbaa !16
  %conv9.i.20.i = zext i64 %94 to i128
  store i128 %conv9.i.20.i, i128* %arrayidx10.i.21.i.698, align 16, !tbaa !2
  %95 = load i64, i64* %arraydecay152, align 8, !tbaa !16
  %conv.i.22.i = zext i64 %95 to i128
  store i128 %conv.i.22.i, i128* %arraydecay2.i.699, align 16, !tbaa !2
  %96 = load i64, i64* %arrayidx114.i.669, align 8, !tbaa !16
  %conv3.i.24.i = zext i64 %96 to i128
  store i128 %conv3.i.24.i, i128* %arrayidx4.i.25.i.703, align 16, !tbaa !2
  %97 = load i64, i64* %arrayidx117.i.670, align 8, !tbaa !16
  %conv6.i.27.i = zext i64 %97 to i128
  store i128 %conv6.i.27.i, i128* %arrayidx7.i.28.i.706, align 16, !tbaa !2
  %98 = load i64, i64* %arrayidx120.i.672, align 8, !tbaa !16
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
  store i64 %conv86.i.943, i64* %arraydecay165, align 8, !tbaa !16
  %arrayidx114.i.950 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 1
  store i64 %conv96.i.946, i64* %arrayidx114.i.950, align 8, !tbaa !16
  %arrayidx117.i.951 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 2
  store i64 %conv106.i.949, i64* %arrayidx117.i.951, align 8, !tbaa !16
  %conv119.i.952 = trunc i128 %add104.i.948 to i64
  %arrayidx120.i.953 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 3
  store i64 %conv119.i.952, i64* %arrayidx120.i.953, align 8, !tbaa !16
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
  store i64 %conv86.i.1000, i64* %arraydecay171, align 8, !tbaa !16
  %arrayidx114.i.1007 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 1
  store i64 %conv96.i.1003, i64* %arrayidx114.i.1007, align 8, !tbaa !16
  %arrayidx117.i.1008 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 2
  store i64 %conv106.i.1006, i64* %arrayidx117.i.1008, align 8, !tbaa !16
  %conv119.i.1009 = trunc i128 %add104.i.1005 to i64
  %arrayidx120.i.1010 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 3
  store i64 %conv119.i.1009, i64* %arrayidx120.i.1010, align 8, !tbaa !16
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
  store i64 %conv86.i.1057, i64* %arraydecay177, align 8, !tbaa !16
  %arrayidx114.i.1064 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 1
  store i64 %conv96.i.1060, i64* %arrayidx114.i.1064, align 8, !tbaa !16
  %arrayidx117.i.1065 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 2
  store i64 %conv106.i.1063, i64* %arrayidx117.i.1065, align 8, !tbaa !16
  %conv119.i.1066 = trunc i128 %add104.i.1062 to i64
  %arrayidx120.i.1067 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 3
  store i64 %conv119.i.1066, i64* %arrayidx120.i.1067, align 8, !tbaa !16
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
  %111 = load i64, i64* %arraydecay237, align 8, !tbaa !16
  %conv.i.i.678 = zext i64 %111 to i128
  store i128 %conv.i.i.678, i128* %arraydecay.i.677, align 16, !tbaa !2
  %arrayidx2.i.i.679 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 1
  %112 = load i64, i64* %arrayidx2.i.i.679, align 8, !tbaa !16
  %conv3.i.i.680 = zext i64 %112 to i128
  store i128 %conv3.i.i.680, i128* %arrayidx4.i.i.681, align 16, !tbaa !2
  %arrayidx5.i.i.682 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 2
  %113 = load i64, i64* %arrayidx5.i.i.682, align 8, !tbaa !16
  %conv6.i.i.683 = zext i64 %113 to i128
  store i128 %conv6.i.i.683, i128* %arrayidx7.i.i.684, align 16, !tbaa !2
  %arrayidx8.i.i.685 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 0, i64 3
  %114 = load i64, i64* %arrayidx8.i.i.685, align 8, !tbaa !16
  %conv9.i.i.686 = zext i64 %114 to i128
  store i128 %conv9.i.i.686, i128* %arrayidx10.i.i.687, align 16, !tbaa !2
  %115 = load i64, i64* %arraydecay244, align 8, !tbaa !16
  %conv.i.12.i.689 = zext i64 %115 to i128
  store i128 %conv.i.12.i.689, i128* %arraydecay1.i.688, align 16, !tbaa !2
  %arrayidx2.i.13.i.690 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 1
  %116 = load i64, i64* %arrayidx2.i.13.i.690, align 8, !tbaa !16
  %conv3.i.14.i.691 = zext i64 %116 to i128
  store i128 %conv3.i.14.i.691, i128* %arrayidx4.i.15.i.692, align 16, !tbaa !2
  %arrayidx5.i.16.i.693 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 2
  %117 = load i64, i64* %arrayidx5.i.16.i.693, align 8, !tbaa !16
  %conv6.i.17.i.694 = zext i64 %117 to i128
  store i128 %conv6.i.17.i.694, i128* %arrayidx7.i.18.i.695, align 16, !tbaa !2
  %arrayidx8.i.19.i.696 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 1, i64 3
  %118 = load i64, i64* %arrayidx8.i.19.i.696, align 8, !tbaa !16
  %conv9.i.20.i.697 = zext i64 %118 to i128
  store i128 %conv9.i.20.i.697, i128* %arrayidx10.i.21.i.698, align 16, !tbaa !2
  %119 = load i64, i64* %arraydecay251, align 8, !tbaa !16
  %conv.i.22.i.700 = zext i64 %119 to i128
  store i128 %conv.i.22.i.700, i128* %arraydecay2.i.699, align 16, !tbaa !2
  %arrayidx2.i.23.i.701 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 1
  %120 = load i64, i64* %arrayidx2.i.23.i.701, align 8, !tbaa !16
  %conv3.i.24.i.702 = zext i64 %120 to i128
  store i128 %conv3.i.24.i.702, i128* %arrayidx4.i.25.i.703, align 16, !tbaa !2
  %arrayidx5.i.26.i.704 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 2
  %121 = load i64, i64* %arrayidx5.i.26.i.704, align 8, !tbaa !16
  %conv6.i.27.i.705 = zext i64 %121 to i128
  store i128 %conv6.i.27.i.705, i128* %arrayidx7.i.28.i.706, align 16, !tbaa !2
  %arrayidx8.i.29.i.707 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %idxprom232, i64 2, i64 3
  %122 = load i64, i64* %arrayidx8.i.29.i.707, align 8, !tbaa !16
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
  store i64 %conv86.i.772, i64* %arraydecay165, align 8, !tbaa !16
  %arrayidx114.i.779 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 1
  store i64 %conv96.i.775, i64* %arrayidx114.i.779, align 8, !tbaa !16
  %arrayidx117.i.780 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 2
  store i64 %conv106.i.778, i64* %arrayidx117.i.780, align 8, !tbaa !16
  %conv119.i.781 = trunc i128 %add104.i.777 to i64
  %arrayidx120.i.782 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 0, i64 3
  store i64 %conv119.i.781, i64* %arrayidx120.i.782, align 8, !tbaa !16
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
  store i64 %conv86.i.829, i64* %arraydecay171, align 8, !tbaa !16
  %arrayidx114.i.836 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 1
  store i64 %conv96.i.832, i64* %arrayidx114.i.836, align 8, !tbaa !16
  %arrayidx117.i.837 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 2
  store i64 %conv106.i.835, i64* %arrayidx117.i.837, align 8, !tbaa !16
  %conv119.i.838 = trunc i128 %add104.i.834 to i64
  %arrayidx120.i.839 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 1, i64 3
  store i64 %conv119.i.838, i64* %arrayidx120.i.839, align 8, !tbaa !16
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
  store i64 %conv86.i.886, i64* %arraydecay177, align 8, !tbaa !16
  %arrayidx114.i.893 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 1
  store i64 %conv96.i.889, i64* %arrayidx114.i.893, align 8, !tbaa !16
  %arrayidx117.i.894 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 2
  store i64 %conv106.i.892, i64* %arrayidx117.i.894, align 8, !tbaa !16
  %conv119.i.895 = trunc i128 %add104.i.891 to i64
  %arrayidx120.i.896 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %48, i64 %conv1072, i64 %indvars.iv, i64 2, i64 3
  store i64 %conv119.i.895, i64* %arrayidx120.i.896, align 8, !tbaa !16
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
  %151 = load <2 x i64>, <2 x i64>* %150, align 16, !tbaa !16
  %152 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %151, <2 x i64>* %152, align 16, !tbaa !16
  %arrayidx4.i.i.603 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 2
  %arrayidx5.i.i.604 = getelementptr inbounds [32 x i8], [32 x i8]* %b_in.i, i64 0, i64 16
  %153 = bitcast i64* %arrayidx4.i.i.603 to <2 x i64>*
  %154 = load <2 x i64>, <2 x i64>* %153, align 16, !tbaa !16
  %155 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %154, <2 x i64>* %155, align 16, !tbaa !16
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
  %163 = load <2 x i64>, <2 x i64>* %162, align 16, !tbaa !16
  %164 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %163, <2 x i64>* %164, align 16, !tbaa !16
  %arrayidx4.i.i.529 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 2
  %165 = bitcast i64* %arrayidx4.i.i.529 to <2 x i64>*
  %166 = load <2 x i64>, <2 x i64>* %165, align 16, !tbaa !16
  %167 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %166, <2 x i64>* %167, align 16, !tbaa !16
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
  %175 = load <2 x i64>, <2 x i64>* %174, align 16, !tbaa !16
  %176 = bitcast [32 x i8]* %b_in.i to <2 x i64>*
  store <2 x i64> %175, <2 x i64>* %176, align 16, !tbaa !16
  %arrayidx4.i.i.510 = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 2
  %177 = bitcast i64* %arrayidx4.i.i.510 to <2 x i64>*
  %178 = load <2 x i64>, <2 x i64>* %177, align 16, !tbaa !16
  %179 = bitcast i8* %arrayidx5.i.i.604 to <2 x i64>*
  store <2 x i64> %178, <2 x i64>* %179, align 16, !tbaa !16
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
  %10 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !12
  %call32 = call fastcc i32 @BN_to_felem(i128* %arraydecay, %struct.bignum_st* %10)
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %arraydecay34 = getelementptr inbounds [4 x i128], [4 x i128]* %y_tmp, i64 0, i64 0
  %11 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %11, i64 0, i32 3
  %12 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !14
  %call36 = call fastcc i32 @BN_to_felem(i128* %arraydecay34, %struct.bignum_st* %12)
  %tobool37 = icmp eq i32 %call36, 0
  br i1 %tobool37, label %err, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %arraydecay39 = getelementptr inbounds [4 x i128], [4 x i128]* %z_tmp, i64 0, i64 0
  %13 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %13, i64 0, i32 4
  %14 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !15
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
  store i64 %conv86.i, i64* %arraydecay48, align 8, !tbaa !16
  %arrayidx114.i = getelementptr inbounds i8, i8* %call.i, i64 104
  %19 = bitcast i8* %arrayidx114.i to i64*
  store i64 %conv96.i, i64* %19, align 8, !tbaa !16
  %arrayidx117.i = getelementptr inbounds i8, i8* %call.i, i64 112
  %20 = bitcast i8* %arrayidx117.i to i64*
  store i64 %conv106.i, i64* %20, align 8, !tbaa !16
  %conv119.i = trunc i128 %add104.i to i64
  %arrayidx120.i = getelementptr inbounds i8, i8* %call.i, i64 120
  %21 = bitcast i8* %arrayidx120.i to i64*
  store i64 %conv119.i, i64* %21, align 8, !tbaa !16
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
  store i64 %conv86.i.778, i64* %22, align 8, !tbaa !16
  %arrayidx114.i.785 = getelementptr inbounds i8, i8* %call.i, i64 136
  %27 = bitcast i8* %arrayidx114.i.785 to i64*
  store i64 %conv96.i.781, i64* %27, align 8, !tbaa !16
  %arrayidx117.i.786 = getelementptr inbounds i8, i8* %call.i, i64 144
  %28 = bitcast i8* %arrayidx117.i.786 to i64*
  store i64 %conv106.i.784, i64* %28, align 8, !tbaa !16
  %conv119.i.787 = trunc i128 %add104.i.783 to i64
  %arrayidx120.i.788 = getelementptr inbounds i8, i8* %call.i, i64 152
  %29 = bitcast i8* %arrayidx120.i.788 to i64*
  store i64 %conv119.i.787, i64* %29, align 8, !tbaa !16
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
  store i64 %conv86.i.835, i64* %30, align 8, !tbaa !16
  %arrayidx114.i.842 = getelementptr inbounds i8, i8* %call.i, i64 168
  %35 = bitcast i8* %arrayidx114.i.842 to i64*
  store i64 %conv96.i.838, i64* %35, align 8, !tbaa !16
  %arrayidx117.i.843 = getelementptr inbounds i8, i8* %call.i, i64 176
  %36 = bitcast i8* %arrayidx117.i.843 to i64*
  store i64 %conv106.i.841, i64* %36, align 8, !tbaa !16
  %conv119.i.844 = trunc i128 %add104.i.840 to i64
  %arrayidx120.i.845 = getelementptr inbounds i8, i8* %call.i, i64 184
  %37 = bitcast i8* %arrayidx120.i.845 to i64*
  store i64 %conv119.i.844, i64* %37, align 8, !tbaa !16
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
  %.pre = load i64, i64* %44, align 8, !tbaa !16
  %arrayidx2.i.13.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 136
  %45 = bitcast i8* %arrayidx2.i.13.i.phi.trans.insert to i64*
  %.pre2713 = load i64, i64* %45, align 8, !tbaa !16
  %arrayidx5.i.16.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 144
  %46 = bitcast i8* %arrayidx5.i.16.i.phi.trans.insert to i64*
  %.pre2714 = load i64, i64* %46, align 8, !tbaa !16
  %arrayidx8.i.19.i.phi.trans.insert = getelementptr inbounds i8, i8* %call.i, i64 152
  %47 = bitcast i8* %arrayidx8.i.19.i.phi.trans.insert to i64*
  %.pre2715 = load i64, i64* %47, align 8, !tbaa !16
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
  %56 = load i64, i64* %arraydecay85, align 8, !tbaa !16
  %conv.i.i = zext i64 %56 to i128
  store i128 %conv.i.i, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 1
  %57 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !16
  %conv3.i.i = zext i64 %57 to i128
  store i128 %conv3.i.i, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 2
  %58 = load i64, i64* %arrayidx5.i.i, align 8, !tbaa !16
  %conv6.i.i = zext i64 %58 to i128
  store i128 %conv6.i.i, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 3
  %59 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !16
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
  store i64 %conv86.i.2684, i64* %arraydecay67, align 8, !tbaa !16
  %arrayidx114.i.2691 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 1
  store i64 %conv96.i.2687, i64* %arrayidx114.i.2691, align 8, !tbaa !16
  %arrayidx117.i.2692 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 2
  store i64 %conv106.i.2690, i64* %arrayidx117.i.2692, align 8, !tbaa !16
  %conv119.i.2693 = trunc i128 %add104.i.2689 to i64
  %arrayidx120.i.2694 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 3
  store i64 %conv119.i.2693, i64* %arrayidx120.i.2694, align 8, !tbaa !16
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
  store i64 %conv86.i.1259, i64* %arraydecay73, align 8, !tbaa !16
  %arrayidx114.i.1266 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 1
  store i64 %conv96.i.1262, i64* %arrayidx114.i.1266, align 8, !tbaa !16
  %arrayidx117.i.1267 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 2
  store i64 %conv106.i.1265, i64* %arrayidx117.i.1267, align 8, !tbaa !16
  %conv119.i.1268 = trunc i128 %add104.i.1264 to i64
  %arrayidx120.i.1269 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 3
  store i64 %conv119.i.1268, i64* %arrayidx120.i.1269, align 8, !tbaa !16
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
  store i64 %conv86.i.1202, i64* %arraydecay79, align 8, !tbaa !16
  %arrayidx114.i.1209 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 1
  store i64 %conv96.i.1205, i64* %arrayidx114.i.1209, align 8, !tbaa !16
  %arrayidx117.i.1210 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 2
  store i64 %conv106.i.1208, i64* %arrayidx117.i.1210, align 8, !tbaa !16
  %conv119.i.1211 = trunc i128 %add104.i.1207 to i64
  %arrayidx120.i.1212 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 3
  store i64 %conv119.i.1211, i64* %arrayidx120.i.1212, align 8, !tbaa !16
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
  %80 = load i64, i64* %arraydecay67, align 8, !tbaa !16
  %conv.i.i.853 = zext i64 %80 to i128
  store i128 %conv.i.i.853, i128* %arraydecay.i, align 16, !tbaa !2
  %81 = load i64, i64* %arrayidx114.i.2691, align 8, !tbaa !16
  %conv3.i.i.855 = zext i64 %81 to i128
  store i128 %conv3.i.i.855, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %82 = load i64, i64* %arrayidx117.i.2692, align 8, !tbaa !16
  %conv6.i.i.858 = zext i64 %82 to i128
  store i128 %conv6.i.i.858, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %83 = load i64, i64* %arrayidx120.i.2694, align 8, !tbaa !16
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
  store i64 %conv86.i.2513, i64* %arraydecay67, align 8, !tbaa !16
  store i64 %conv96.i.2516, i64* %arrayidx114.i.2691, align 8, !tbaa !16
  store i64 %conv106.i.2519, i64* %arrayidx117.i.2692, align 8, !tbaa !16
  %conv119.i.2522 = trunc i128 %add104.i.2518 to i64
  store i64 %conv119.i.2522, i64* %arrayidx120.i.2694, align 8, !tbaa !16
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
  store i64 %conv86.i.2570, i64* %arraydecay73, align 8, !tbaa !16
  store i64 %conv96.i.2573, i64* %arrayidx114.i.1266, align 8, !tbaa !16
  store i64 %conv106.i.2576, i64* %arrayidx117.i.1267, align 8, !tbaa !16
  %conv119.i.2579 = trunc i128 %add104.i.2575 to i64
  store i64 %conv119.i.2579, i64* %arrayidx120.i.1269, align 8, !tbaa !16
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
  store i64 %conv86.i.2627, i64* %arraydecay79, align 8, !tbaa !16
  store i64 %conv96.i.2630, i64* %arrayidx114.i.1209, align 8, !tbaa !16
  store i64 %conv106.i.2633, i64* %arrayidx117.i.1210, align 8, !tbaa !16
  %conv119.i.2636 = trunc i128 %add104.i.2632 to i64
  store i64 %conv119.i.2636, i64* %arrayidx120.i.1212, align 8, !tbaa !16
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
  %96 = load i64, i64* %arraydecay67, align 8, !tbaa !16
  %conv.i.i.895 = zext i64 %96 to i128
  store i128 %conv.i.i.895, i128* %arraydecay.i, align 16, !tbaa !2
  %97 = load i64, i64* %arrayidx114.i.2691, align 8, !tbaa !16
  %conv3.i.i.897 = zext i64 %97 to i128
  store i128 %conv3.i.i.897, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %98 = load i64, i64* %arrayidx117.i.2692, align 8, !tbaa !16
  %conv6.i.i.900 = zext i64 %98 to i128
  store i128 %conv6.i.i.900, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %99 = load i64, i64* %arrayidx120.i.2694, align 8, !tbaa !16
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
  store i64 %conv86.i.2342, i64* %arraydecay145, align 8, !tbaa !16
  %arrayidx114.i.2349 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 1
  store i64 %conv96.i.2345, i64* %arrayidx114.i.2349, align 8, !tbaa !16
  %arrayidx117.i.2350 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 2
  store i64 %conv106.i.2348, i64* %arrayidx117.i.2350, align 8, !tbaa !16
  %conv119.i.2351 = trunc i128 %add104.i.2347 to i64
  %arrayidx120.i.2352 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 0, i64 3
  store i64 %conv119.i.2351, i64* %arrayidx120.i.2352, align 8, !tbaa !16
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
  store i64 %conv86.i.2399, i64* %arraydecay152, align 8, !tbaa !16
  %arrayidx114.i.2406 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 1
  store i64 %conv96.i.2402, i64* %arrayidx114.i.2406, align 8, !tbaa !16
  %arrayidx117.i.2407 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 2
  store i64 %conv106.i.2405, i64* %arrayidx117.i.2407, align 8, !tbaa !16
  %conv119.i.2408 = trunc i128 %add104.i.2404 to i64
  %arrayidx120.i.2409 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 1, i64 3
  store i64 %conv119.i.2408, i64* %arrayidx120.i.2409, align 8, !tbaa !16
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
  store i64 %conv86.i.2456, i64* %arraydecay159, align 8, !tbaa !16
  %arrayidx114.i.2463 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 1
  store i64 %conv96.i.2459, i64* %arrayidx114.i.2463, align 8, !tbaa !16
  %arrayidx117.i.2464 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 2
  store i64 %conv106.i.2462, i64* %arrayidx117.i.2464, align 8, !tbaa !16
  %conv119.i.2465 = trunc i128 %add104.i.2461 to i64
  %arrayidx120.i.2466 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 0, i64 %idxprom140, i64 2, i64 3
  store i64 %conv119.i.2465, i64* %arrayidx120.i.2466, align 8, !tbaa !16
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
  %120 = load i64, i64* %arraydecay145, align 8, !tbaa !16
  %conv.i.i.937 = zext i64 %120 to i128
  store i128 %conv.i.i.937, i128* %arraydecay.i, align 16, !tbaa !2
  %121 = load i64, i64* %arrayidx114.i.2349, align 8, !tbaa !16
  %conv3.i.i.939 = zext i64 %121 to i128
  store i128 %conv3.i.i.939, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %122 = load i64, i64* %arrayidx117.i.2350, align 8, !tbaa !16
  %conv6.i.i.942 = zext i64 %122 to i128
  store i128 %conv6.i.i.942, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %123 = load i64, i64* %arrayidx120.i.2352, align 8, !tbaa !16
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
  store i64 %conv86.i.2171, i64* %arraydecay145, align 8, !tbaa !16
  store i64 %conv96.i.2174, i64* %arrayidx114.i.2349, align 8, !tbaa !16
  store i64 %conv106.i.2177, i64* %arrayidx117.i.2350, align 8, !tbaa !16
  %conv119.i.2180 = trunc i128 %add104.i.2176 to i64
  store i64 %conv119.i.2180, i64* %arrayidx120.i.2352, align 8, !tbaa !16
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
  store i64 %conv86.i.2228, i64* %arraydecay152, align 8, !tbaa !16
  store i64 %conv96.i.2231, i64* %arrayidx114.i.2406, align 8, !tbaa !16
  store i64 %conv106.i.2234, i64* %arrayidx117.i.2407, align 8, !tbaa !16
  %conv119.i.2237 = trunc i128 %add104.i.2233 to i64
  store i64 %conv119.i.2237, i64* %arrayidx120.i.2409, align 8, !tbaa !16
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
  store i64 %conv86.i.2285, i64* %arraydecay159, align 8, !tbaa !16
  store i64 %conv96.i.2288, i64* %arrayidx114.i.2463, align 8, !tbaa !16
  store i64 %conv106.i.2291, i64* %arrayidx117.i.2464, align 8, !tbaa !16
  %conv119.i.2294 = trunc i128 %add104.i.2290 to i64
  store i64 %conv119.i.2294, i64* %arrayidx120.i.2466, align 8, !tbaa !16
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
  %137 = load i64, i64* %arraydecay258, align 8, !tbaa !16
  %conv.i.i.973 = zext i64 %137 to i128
  store i128 %conv.i.i.973, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.974 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 1
  %138 = load i64, i64* %arrayidx2.i.i.974, align 8, !tbaa !16
  %conv3.i.i.975 = zext i64 %138 to i128
  store i128 %conv3.i.i.975, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.977 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 2
  %139 = load i64, i64* %arrayidx5.i.i.977, align 8, !tbaa !16
  %conv6.i.i.978 = zext i64 %139 to i128
  store i128 %conv6.i.i.978, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.980 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 0, i64 3
  %140 = load i64, i64* %arrayidx8.i.i.980, align 8, !tbaa !16
  %conv9.i.i.981 = zext i64 %140 to i128
  store i128 %conv9.i.i.981, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %141 = load i64, i64* %arraydecay264, align 8, !tbaa !16
  %conv.i.12.i.984 = zext i64 %141 to i128
  store i128 %conv.i.12.i.984, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.985 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 1
  %142 = load i64, i64* %arrayidx2.i.13.i.985, align 8, !tbaa !16
  %conv3.i.14.i.986 = zext i64 %142 to i128
  store i128 %conv3.i.14.i.986, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.988 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 2
  %143 = load i64, i64* %arrayidx5.i.16.i.988, align 8, !tbaa !16
  %conv6.i.17.i.989 = zext i64 %143 to i128
  store i128 %conv6.i.17.i.989, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.991 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 1, i64 3
  %144 = load i64, i64* %arrayidx8.i.19.i.991, align 8, !tbaa !16
  %conv9.i.20.i.992 = zext i64 %144 to i128
  store i128 %conv9.i.20.i.992, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %145 = load i64, i64* %arraydecay270, align 8, !tbaa !16
  %conv.i.22.i.995 = zext i64 %145 to i128
  store i128 %conv.i.22.i.995, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.996 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 1
  %146 = load i64, i64* %arrayidx2.i.23.i.996, align 8, !tbaa !16
  %conv3.i.24.i.997 = zext i64 %146 to i128
  store i128 %conv3.i.24.i.997, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.999 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 2
  %147 = load i64, i64* %arrayidx5.i.26.i.999, align 8, !tbaa !16
  %conv6.i.27.i.1000 = zext i64 %147 to i128
  store i128 %conv6.i.27.i.1000, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1002 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 4, i64 2, i64 3
  %148 = load i64, i64* %arrayidx8.i.29.i.1002, align 8, !tbaa !16
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
  store i64 %conv86.i.2000, i64* %arraydecay240, align 8, !tbaa !16
  %arrayidx114.i.2007 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 1
  store i64 %conv96.i.2003, i64* %arrayidx114.i.2007, align 8, !tbaa !16
  %arrayidx117.i.2008 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 2
  store i64 %conv106.i.2006, i64* %arrayidx117.i.2008, align 8, !tbaa !16
  %conv119.i.2009 = trunc i128 %add104.i.2005 to i64
  %arrayidx120.i.2010 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 0, i64 3
  store i64 %conv119.i.2009, i64* %arrayidx120.i.2010, align 8, !tbaa !16
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
  store i64 %conv86.i.2057, i64* %arraydecay246, align 8, !tbaa !16
  %arrayidx114.i.2064 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 1
  store i64 %conv96.i.2060, i64* %arrayidx114.i.2064, align 8, !tbaa !16
  %arrayidx117.i.2065 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 2
  store i64 %conv106.i.2063, i64* %arrayidx117.i.2065, align 8, !tbaa !16
  %conv119.i.2066 = trunc i128 %add104.i.2062 to i64
  %arrayidx120.i.2067 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 1, i64 3
  store i64 %conv119.i.2066, i64* %arrayidx120.i.2067, align 8, !tbaa !16
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
  store i64 %conv86.i.2114, i64* %arraydecay252, align 8, !tbaa !16
  %arrayidx114.i.2121 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 1
  store i64 %conv96.i.2117, i64* %arrayidx114.i.2121, align 8, !tbaa !16
  %arrayidx117.i.2122 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 2
  store i64 %conv106.i.2120, i64* %arrayidx117.i.2122, align 8, !tbaa !16
  %conv119.i.2123 = trunc i128 %add104.i.2119 to i64
  %arrayidx120.i.2124 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 6, i64 2, i64 3
  store i64 %conv119.i.2123, i64* %arrayidx120.i.2124, align 8, !tbaa !16
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
  %161 = load i64, i64* %arraydecay312, align 8, !tbaa !16
  %conv.i.i.1009 = zext i64 %161 to i128
  store i128 %conv.i.i.1009, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.1010 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 1
  %162 = load i64, i64* %arrayidx2.i.i.1010, align 8, !tbaa !16
  %conv3.i.i.1011 = zext i64 %162 to i128
  store i128 %conv3.i.i.1011, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.1013 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 2
  %163 = load i64, i64* %arrayidx5.i.i.1013, align 8, !tbaa !16
  %conv6.i.i.1014 = zext i64 %163 to i128
  store i128 %conv6.i.i.1014, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.1016 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 0, i64 3
  %164 = load i64, i64* %arrayidx8.i.i.1016, align 8, !tbaa !16
  %conv9.i.i.1017 = zext i64 %164 to i128
  store i128 %conv9.i.i.1017, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %165 = load i64, i64* %arraydecay318, align 8, !tbaa !16
  %conv.i.12.i.1020 = zext i64 %165 to i128
  store i128 %conv.i.12.i.1020, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.1021 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 1
  %166 = load i64, i64* %arrayidx2.i.13.i.1021, align 8, !tbaa !16
  %conv3.i.14.i.1022 = zext i64 %166 to i128
  store i128 %conv3.i.14.i.1022, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.1024 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 2
  %167 = load i64, i64* %arrayidx5.i.16.i.1024, align 8, !tbaa !16
  %conv6.i.17.i.1025 = zext i64 %167 to i128
  store i128 %conv6.i.17.i.1025, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.1027 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 1, i64 3
  %168 = load i64, i64* %arrayidx8.i.19.i.1027, align 8, !tbaa !16
  %conv9.i.20.i.1028 = zext i64 %168 to i128
  store i128 %conv9.i.20.i.1028, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %169 = load i64, i64* %arraydecay324, align 8, !tbaa !16
  %conv.i.22.i.1031 = zext i64 %169 to i128
  store i128 %conv.i.22.i.1031, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.1032 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 1
  %170 = load i64, i64* %arrayidx2.i.23.i.1032, align 8, !tbaa !16
  %conv3.i.24.i.1033 = zext i64 %170 to i128
  store i128 %conv3.i.24.i.1033, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.1035 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 2
  %171 = load i64, i64* %arrayidx5.i.26.i.1035, align 8, !tbaa !16
  %conv6.i.27.i.1036 = zext i64 %171 to i128
  store i128 %conv6.i.27.i.1036, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1038 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 8, i64 2, i64 3
  %172 = load i64, i64* %arrayidx8.i.29.i.1038, align 8, !tbaa !16
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
  store i64 %conv86.i.1829, i64* %arraydecay294, align 8, !tbaa !16
  %arrayidx114.i.1836 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 1
  store i64 %conv96.i.1832, i64* %arrayidx114.i.1836, align 8, !tbaa !16
  %arrayidx117.i.1837 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 2
  store i64 %conv106.i.1835, i64* %arrayidx117.i.1837, align 8, !tbaa !16
  %conv119.i.1838 = trunc i128 %add104.i.1834 to i64
  %arrayidx120.i.1839 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 0, i64 3
  store i64 %conv119.i.1838, i64* %arrayidx120.i.1839, align 8, !tbaa !16
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
  store i64 %conv86.i.1886, i64* %arraydecay300, align 8, !tbaa !16
  %arrayidx114.i.1893 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 1
  store i64 %conv96.i.1889, i64* %arrayidx114.i.1893, align 8, !tbaa !16
  %arrayidx117.i.1894 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 2
  store i64 %conv106.i.1892, i64* %arrayidx117.i.1894, align 8, !tbaa !16
  %conv119.i.1895 = trunc i128 %add104.i.1891 to i64
  %arrayidx120.i.1896 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 1, i64 3
  store i64 %conv119.i.1895, i64* %arrayidx120.i.1896, align 8, !tbaa !16
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
  store i64 %conv86.i.1943, i64* %arraydecay306, align 8, !tbaa !16
  %arrayidx114.i.1950 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 1
  store i64 %conv96.i.1946, i64* %arrayidx114.i.1950, align 8, !tbaa !16
  %arrayidx117.i.1951 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 2
  store i64 %conv106.i.1949, i64* %arrayidx117.i.1951, align 8, !tbaa !16
  %conv119.i.1952 = trunc i128 %add104.i.1948 to i64
  %arrayidx120.i.1953 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 10, i64 2, i64 3
  store i64 %conv119.i.1952, i64* %arrayidx120.i.1953, align 8, !tbaa !16
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
  %185 = load i64, i64* %arraydecay312, align 8, !tbaa !16
  %conv.i.i.1045 = zext i64 %185 to i128
  store i128 %conv.i.i.1045, i128* %arraydecay.i, align 16, !tbaa !2
  %186 = load i64, i64* %arrayidx2.i.i.1010, align 8, !tbaa !16
  %conv3.i.i.1047 = zext i64 %186 to i128
  store i128 %conv3.i.i.1047, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %187 = load i64, i64* %arrayidx5.i.i.1013, align 8, !tbaa !16
  %conv6.i.i.1050 = zext i64 %187 to i128
  store i128 %conv6.i.i.1050, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %188 = load i64, i64* %arrayidx8.i.i.1016, align 8, !tbaa !16
  %conv9.i.i.1053 = zext i64 %188 to i128
  store i128 %conv9.i.i.1053, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %189 = load i64, i64* %arraydecay318, align 8, !tbaa !16
  %conv.i.12.i.1056 = zext i64 %189 to i128
  store i128 %conv.i.12.i.1056, i128* %arraydecay1.i, align 16, !tbaa !2
  %190 = load i64, i64* %arrayidx2.i.13.i.1021, align 8, !tbaa !16
  %conv3.i.14.i.1058 = zext i64 %190 to i128
  store i128 %conv3.i.14.i.1058, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %191 = load i64, i64* %arrayidx5.i.16.i.1024, align 8, !tbaa !16
  %conv6.i.17.i.1061 = zext i64 %191 to i128
  store i128 %conv6.i.17.i.1061, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %192 = load i64, i64* %arrayidx8.i.19.i.1027, align 8, !tbaa !16
  %conv9.i.20.i.1064 = zext i64 %192 to i128
  store i128 %conv9.i.20.i.1064, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %193 = load i64, i64* %arraydecay324, align 8, !tbaa !16
  %conv.i.22.i.1067 = zext i64 %193 to i128
  store i128 %conv.i.22.i.1067, i128* %arraydecay2.i, align 16, !tbaa !2
  %194 = load i64, i64* %arrayidx2.i.23.i.1032, align 8, !tbaa !16
  %conv3.i.24.i.1069 = zext i64 %194 to i128
  store i128 %conv3.i.24.i.1069, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %195 = load i64, i64* %arrayidx5.i.26.i.1035, align 8, !tbaa !16
  %conv6.i.27.i.1072 = zext i64 %195 to i128
  store i128 %conv6.i.27.i.1072, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %196 = load i64, i64* %arrayidx8.i.29.i.1038, align 8, !tbaa !16
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
  store i64 %conv86.i.1658, i64* %arraydecay348, align 8, !tbaa !16
  %arrayidx114.i.1665 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 1
  store i64 %conv96.i.1661, i64* %arrayidx114.i.1665, align 8, !tbaa !16
  %arrayidx117.i.1666 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 2
  store i64 %conv106.i.1664, i64* %arrayidx117.i.1666, align 8, !tbaa !16
  %conv119.i.1667 = trunc i128 %add104.i.1663 to i64
  %arrayidx120.i.1668 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 0, i64 3
  store i64 %conv119.i.1667, i64* %arrayidx120.i.1668, align 8, !tbaa !16
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
  store i64 %conv86.i.1715, i64* %arraydecay354, align 8, !tbaa !16
  %arrayidx114.i.1722 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 1
  store i64 %conv96.i.1718, i64* %arrayidx114.i.1722, align 8, !tbaa !16
  %arrayidx117.i.1723 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 2
  store i64 %conv106.i.1721, i64* %arrayidx117.i.1723, align 8, !tbaa !16
  %conv119.i.1724 = trunc i128 %add104.i.1720 to i64
  %arrayidx120.i.1725 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 1, i64 3
  store i64 %conv119.i.1724, i64* %arrayidx120.i.1725, align 8, !tbaa !16
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
  store i64 %conv86.i.1772, i64* %arraydecay360, align 8, !tbaa !16
  %arrayidx114.i.1779 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 1
  store i64 %conv96.i.1775, i64* %arrayidx114.i.1779, align 8, !tbaa !16
  %arrayidx117.i.1780 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 2
  store i64 %conv106.i.1778, i64* %arrayidx117.i.1780, align 8, !tbaa !16
  %conv119.i.1781 = trunc i128 %add104.i.1777 to i64
  %arrayidx120.i.1782 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 12, i64 2, i64 3
  store i64 %conv119.i.1781, i64* %arrayidx120.i.1782, align 8, !tbaa !16
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
  %209 = load i64, i64* %arraydecay348, align 8, !tbaa !16
  %conv.i.i.1081 = zext i64 %209 to i128
  store i128 %conv.i.i.1081, i128* %arraydecay.i, align 16, !tbaa !2
  %210 = load i64, i64* %arrayidx114.i.1665, align 8, !tbaa !16
  %conv3.i.i.1083 = zext i64 %210 to i128
  store i128 %conv3.i.i.1083, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %211 = load i64, i64* %arrayidx117.i.1666, align 8, !tbaa !16
  %conv6.i.i.1086 = zext i64 %211 to i128
  store i128 %conv6.i.i.1086, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %212 = load i64, i64* %arrayidx120.i.1668, align 8, !tbaa !16
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
  store i64 %conv86.i.1487, i64* %arraydecay402, align 8, !tbaa !16
  %arrayidx114.i.1494 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 1
  store i64 %conv96.i.1490, i64* %arrayidx114.i.1494, align 8, !tbaa !16
  %arrayidx117.i.1495 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 2
  store i64 %conv106.i.1493, i64* %arrayidx117.i.1495, align 8, !tbaa !16
  %conv119.i.1496 = trunc i128 %add104.i.1492 to i64
  %arrayidx120.i.1497 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 0, i64 3
  store i64 %conv119.i.1496, i64* %arrayidx120.i.1497, align 8, !tbaa !16
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
  store i64 %conv86.i.1544, i64* %arraydecay408, align 8, !tbaa !16
  %arrayidx114.i.1551 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 1
  store i64 %conv96.i.1547, i64* %arrayidx114.i.1551, align 8, !tbaa !16
  %arrayidx117.i.1552 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 2
  store i64 %conv106.i.1550, i64* %arrayidx117.i.1552, align 8, !tbaa !16
  %conv119.i.1553 = trunc i128 %add104.i.1549 to i64
  %arrayidx120.i.1554 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 1, i64 3
  store i64 %conv119.i.1553, i64* %arrayidx120.i.1554, align 8, !tbaa !16
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
  store i64 %conv86.i.1601, i64* %arraydecay414, align 8, !tbaa !16
  %arrayidx114.i.1608 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 1
  store i64 %conv96.i.1604, i64* %arrayidx114.i.1608, align 8, !tbaa !16
  %arrayidx117.i.1609 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 2
  store i64 %conv106.i.1607, i64* %arrayidx117.i.1609, align 8, !tbaa !16
  %conv119.i.1610 = trunc i128 %add104.i.1606 to i64
  %arrayidx120.i.1611 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 14, i64 2, i64 3
  store i64 %conv119.i.1610, i64* %arrayidx120.i.1611, align 8, !tbaa !16
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
  %227 = load i64, i64* %arraydecay487, align 8, !tbaa !16
  %conv.i.i.1117 = zext i64 %227 to i128
  store i128 %conv.i.i.1117, i128* %arraydecay.i, align 16, !tbaa !2
  %arrayidx2.i.i.1118 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 1
  %228 = load i64, i64* %arrayidx2.i.i.1118, align 8, !tbaa !16
  %conv3.i.i.1119 = zext i64 %228 to i128
  store i128 %conv3.i.i.1119, i128* %arrayidx4.i.i, align 16, !tbaa !2
  %arrayidx5.i.i.1121 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 2
  %229 = load i64, i64* %arrayidx5.i.i.1121, align 8, !tbaa !16
  %conv6.i.i.1122 = zext i64 %229 to i128
  store i128 %conv6.i.i.1122, i128* %arrayidx7.i.i, align 16, !tbaa !2
  %arrayidx8.i.i.1124 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 0, i64 3
  %230 = load i64, i64* %arrayidx8.i.i.1124, align 8, !tbaa !16
  %conv9.i.i.1125 = zext i64 %230 to i128
  store i128 %conv9.i.i.1125, i128* %arrayidx10.i.i, align 16, !tbaa !2
  %231 = load i64, i64* %arraydecay495, align 8, !tbaa !16
  %conv.i.12.i.1128 = zext i64 %231 to i128
  store i128 %conv.i.12.i.1128, i128* %arraydecay1.i, align 16, !tbaa !2
  %arrayidx2.i.13.i.1129 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 1
  %232 = load i64, i64* %arrayidx2.i.13.i.1129, align 8, !tbaa !16
  %conv3.i.14.i.1130 = zext i64 %232 to i128
  store i128 %conv3.i.14.i.1130, i128* %arrayidx4.i.15.i, align 16, !tbaa !2
  %arrayidx5.i.16.i.1132 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 2
  %233 = load i64, i64* %arrayidx5.i.16.i.1132, align 8, !tbaa !16
  %conv6.i.17.i.1133 = zext i64 %233 to i128
  store i128 %conv6.i.17.i.1133, i128* %arrayidx7.i.18.i, align 16, !tbaa !2
  %arrayidx8.i.19.i.1135 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 1, i64 3
  %234 = load i64, i64* %arrayidx8.i.19.i.1135, align 8, !tbaa !16
  %conv9.i.20.i.1136 = zext i64 %234 to i128
  store i128 %conv9.i.20.i.1136, i128* %arrayidx10.i.21.i, align 16, !tbaa !2
  %235 = load i64, i64* %arraydecay503, align 8, !tbaa !16
  %conv.i.22.i.1139 = zext i64 %235 to i128
  store i128 %conv.i.22.i.1139, i128* %arraydecay2.i, align 16, !tbaa !2
  %arrayidx2.i.23.i.1140 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 1
  %236 = load i64, i64* %arrayidx2.i.23.i.1140, align 8, !tbaa !16
  %conv3.i.24.i.1141 = zext i64 %236 to i128
  store i128 %conv3.i.24.i.1141, i128* %arrayidx4.i.25.i, align 16, !tbaa !2
  %arrayidx5.i.26.i.1143 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 2
  %237 = load i64, i64* %arrayidx5.i.26.i.1143, align 8, !tbaa !16
  %conv6.i.27.i.1144 = zext i64 %237 to i128
  store i128 %conv6.i.27.i.1144, i128* %arrayidx7.i.28.i, align 16, !tbaa !2
  %arrayidx8.i.29.i.1146 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %225, i64 2, i64 3
  %238 = load i64, i64* %arrayidx8.i.29.i.1146, align 8, !tbaa !16
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
  store i64 %conv86.i.1316, i64* %arraydecay461, align 8, !tbaa !16
  %arrayidx114.i.1323 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 1
  store i64 %conv96.i.1319, i64* %arrayidx114.i.1323, align 8, !tbaa !16
  %arrayidx117.i.1324 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 2
  store i64 %conv106.i.1322, i64* %arrayidx117.i.1324, align 8, !tbaa !16
  %conv119.i.1325 = trunc i128 %add104.i.1321 to i64
  %arrayidx120.i.1326 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 0, i64 3
  store i64 %conv119.i.1325, i64* %arrayidx120.i.1326, align 8, !tbaa !16
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
  store i64 %conv86.i.1373, i64* %arraydecay470, align 8, !tbaa !16
  %arrayidx114.i.1380 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 1
  store i64 %conv96.i.1376, i64* %arrayidx114.i.1380, align 8, !tbaa !16
  %arrayidx117.i.1381 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 2
  store i64 %conv106.i.1379, i64* %arrayidx117.i.1381, align 8, !tbaa !16
  %conv119.i.1382 = trunc i128 %add104.i.1378 to i64
  %arrayidx120.i.1383 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 1, i64 3
  store i64 %conv119.i.1382, i64* %arrayidx120.i.1383, align 8, !tbaa !16
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
  store i64 %conv86.i.1430, i64* %arraydecay479, align 8, !tbaa !16
  %arrayidx114.i.1437 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 1
  store i64 %conv96.i.1433, i64* %arrayidx114.i.1437, align 8, !tbaa !16
  %arrayidx117.i.1438 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 2
  store i64 %conv106.i.1436, i64* %arrayidx117.i.1438, align 8, !tbaa !16
  %conv119.i.1439 = trunc i128 %add104.i.1435 to i64
  %arrayidx120.i.1440 = getelementptr inbounds %struct.nistp256_pre_comp_st, %struct.nistp256_pre_comp_st* %5, i64 0, i32 0, i64 %indvars.iv2708, i64 %226, i64 2, i64 3
  store i64 %conv119.i.1439, i64* %arrayidx120.i.1440, align 8, !tbaa !16
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
  %.pre = load i64, i64* %.phi.trans.insert, align 16, !tbaa !16
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 8
  %.phi.trans.insert15 = bitcast i8* %arrayidx2.i.phi.trans.insert to i64*
  %.pre16 = load i64, i64* %.phi.trans.insert15, align 8, !tbaa !16
  %arrayidx5.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 16
  %.phi.trans.insert17 = bitcast i8* %arrayidx5.i.phi.trans.insert to i64*
  %.pre18 = load i64, i64* %.phi.trans.insert17, align 16, !tbaa !16
  %arrayidx8.i.phi.trans.insert = getelementptr inbounds [32 x i8], [32 x i8]* %b_out, i64 0, i64 24
  %.phi.trans.insert19 = bitcast i8* %arrayidx8.i.phi.trans.insert to i64*
  %.pre20 = load i64, i64* %.phi.trans.insert19, align 8, !tbaa !16
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
  %tmp = alloca [8 x i128], align 16
  %0 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %arraydecay = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  call void @felem_square(i128* %arraydecay, i128* %in)
  %arraydecay2 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %3 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i = add i128 %3, 1267650600228229401427983728624
  %arrayidx2.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %4 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i = add i128 %4, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %5 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i = add i128 %5, 1267650600228229401427983728656
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  %arrayidx8.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %6 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i = add i128 %6, 1267650600228229401427983728656
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  %arrayidx.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %7 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %arrayidx1.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %8 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i = shl i128 %8, 32
  %add.i.i = add i128 %shl.i.i, %7
  %add3.i.i = add i128 %add.i.i, %add.i
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %arrayidx6.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  %9 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i = sub i128 %8, %9
  %add9.i.i = add i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %7, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %shl13.i.i, %sub.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %arrayidx24.i.i = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %10 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i = sub i128 %add3.i.i, %10
  %shl28.i.i = shl i128 %10, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl i128 %10, 33
  %add34.i.i = add i128 %shl32.i.i, %sub15.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl i128 %10, 1
  %add37.i.i = add i128 %mul.i.i, %sub23.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %9
  %shl46.i.i = shl i128 %9, 32
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  store i128 %sub48.i.i, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i = shl i128 %9, 33
  %add52.i.i = add i128 %shl50.i.i, %add37.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul i128 %9, 3
  %add56.i.i = add i128 %mul54.i.i, %sub41.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  %arrayidx.i.i.553 = getelementptr inbounds i128, i128* %in, i64 3
  %11 = load i128, i128* %arrayidx.i.i.553, align 16, !tbaa !2
  %add.i.i.554 = add i128 %11, 18446744069414584320
  %arrayidx6.i.i.555 = getelementptr inbounds i128, i128* %in, i64 2
  %12 = load i128, i128* %arrayidx6.i.i.555, align 16, !tbaa !2
  %shr.i.i.556 = lshr i128 %12, 64
  %add8.i.i.557 = add i128 %add.i.i.554, %shr.i.i.556
  %conv12.i.i.558 = and i128 %12, 18446744073709551615
  %add13.i.i.559 = add nuw nsw i128 %conv12.i.i.558, 18446673704965373952
  %13 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.i.560 = add i128 %13, 18446744073709551615
  %arrayidx18.i.i.561 = getelementptr inbounds i128, i128* %in, i64 1
  %14 = load i128, i128* %arrayidx18.i.i.561, align 16, !tbaa !2
  %add19.i.i.562 = add i128 %14, 1298074214633706907132628377272319
  %shr22.i.i.563 = lshr i128 %add8.i.i.557, 64
  %conv23.i.i.564 = trunc i128 %shr22.i.i.563 to i64
  %conv26.i.i.565 = and i128 %add8.i.i.557, 18446744073709551615
  %sub.i.i.566 = sub nsw i128 %conv26.i.i.565, %shr22.i.i.563
  %shl.i.i.567 = shl nuw nsw i128 %shr22.i.i.563, 32
  %add32.i.i.568 = add nsw i128 %sub.i.i.566, %shl.i.i.567
  %shr34.i.i.569 = lshr i128 %add32.i.i.568, 64
  %conv35.i.i.570 = trunc i128 %shr34.i.i.569 to i64
  %add36.i.i.571 = add i64 %conv35.i.i.570, %conv23.i.i.564
  %conv39.i.i.572 = and i128 %add32.i.i.568, 18446744073709551615
  %sub43.i.i.573 = sub nsw i128 %conv39.i.i.572, %shr34.i.i.569
  %shl45.i.i.574 = shl nuw nsw i128 %shr34.i.i.569, 32
  %add47.i.i.575 = add nsw i128 %sub43.i.i.573, %shl45.i.i.574
  %conv48.i.i.576 = zext i64 %add36.i.i.571 to i128
  %add50.i.i.577 = add i128 %add16.i.i.560, %conv48.i.i.576
  %shl52.i.i.578 = shl nuw nsw i128 %conv48.i.i.576, 32
  %sub54.i.i.579 = sub i128 %add19.i.i.562, %shl52.i.i.578
  %shr56.i.i.580 = lshr i128 %add47.i.i.575, 64
  %conv57.i.i.581 = trunc i128 %shr56.i.i.580 to i64
  %sub58.i.i.582 = sub i64 0, %conv57.i.i.581
  %conv60.i.i.583 = trunc i128 %add47.i.i.575 to i64
  %and.i.i.584 = and i64 %conv60.i.i.583, 9223372036854775807
  %neg.i.i.585 = sub nsw i64 9223372032559808512, %and.i.i.584
  %sub62177.i.i.586 = and i64 %neg.i.i.585, %conv60.i.i.583
  %and66.i.i.587 = ashr i64 %sub62177.i.i.586, 63
  %or.i.i.588 = or i64 %and66.i.i.587, %sub58.i.i.582
  %conv68.i.i.589 = zext i64 %or.i.i.588 to i128
  %sub70.i.i.590 = sub i128 %add50.i.i.577, %conv68.i.i.589
  %and71.i.i.591 = and i64 %or.i.i.588, 4294967295
  %conv72.i.i.592 = zext i64 %and71.i.i.591 to i128
  %sub74.i.i.593 = sub i128 %sub54.i.i.579, %conv72.i.i.592
  %and75.i.i.594 = and i64 %or.i.i.588, -4294967295
  %conv76.i.i.595 = zext i64 %and75.i.i.594 to i128
  %sub78.i.i.596 = sub nsw i128 %add47.i.i.575, %conv76.i.i.595
  %shr80.i.i.597 = lshr i128 %sub70.i.i.590, 64
  %add84.i.i.598 = add i128 %sub74.i.i.593, %shr80.i.i.597
  %shr90.i.i.600 = lshr i128 %add84.i.i.598, 64
  %add94.i.i.601 = add nuw nsw i128 %add13.i.i.559, %shr90.i.i.600
  %shr100.i.i.603 = lshr i128 %add94.i.i.601, 64
  %add104.i.i.604 = add nsw i128 %sub78.i.i.596, %shr100.i.i.603
  %add.i.612 = add i128 %add56.i.i, 18446744069414584320
  %shr.i.614 = lshr i128 %add52.i.i, 64
  %add8.i.615 = add i128 %add.i.612, %shr.i.614
  %conv12.i.616 = and i128 %add52.i.i, 18446744073709551615
  %add13.i.617 = add nuw nsw i128 %conv12.i.616, 18446673704965373952
  %add16.i.618 = add i128 %sub48.i.i, 18446744073709551615
  %add19.i.620 = add i128 %add34.i.i, 1298074214633706907132628377272319
  %shr22.i.621 = lshr i128 %add8.i.615, 64
  %conv23.i.622 = trunc i128 %shr22.i.621 to i64
  %conv26.i.623 = and i128 %add8.i.615, 18446744073709551615
  %sub.i.624 = sub nsw i128 %conv26.i.623, %shr22.i.621
  %shl.i.625 = shl nuw nsw i128 %shr22.i.621, 32
  %add32.i.626 = add nsw i128 %sub.i.624, %shl.i.625
  %shr34.i.627 = lshr i128 %add32.i.626, 64
  %conv35.i.628 = trunc i128 %shr34.i.627 to i64
  %add36.i.629 = add i64 %conv35.i.628, %conv23.i.622
  %conv39.i.630 = and i128 %add32.i.626, 18446744073709551615
  %sub43.i.631 = sub nsw i128 %conv39.i.630, %shr34.i.627
  %shl45.i.632 = shl nuw nsw i128 %shr34.i.627, 32
  %add47.i.633 = add nsw i128 %sub43.i.631, %shl45.i.632
  %conv48.i.634 = zext i64 %add36.i.629 to i128
  %add50.i.635 = add i128 %add16.i.618, %conv48.i.634
  %shl52.i.636 = shl nuw nsw i128 %conv48.i.634, 32
  %sub54.i.637 = sub i128 %add19.i.620, %shl52.i.636
  %shr56.i.638 = lshr i128 %add47.i.633, 64
  %conv57.i.639 = trunc i128 %shr56.i.638 to i64
  %sub58.i.640 = sub i64 0, %conv57.i.639
  %conv60.i.641 = trunc i128 %add47.i.633 to i64
  %and.i.642 = and i64 %conv60.i.641, 9223372036854775807
  %neg.i.643 = sub nsw i64 9223372032559808512, %and.i.642
  %sub62177.i.644 = and i64 %neg.i.643, %conv60.i.641
  %and66.i.645 = ashr i64 %sub62177.i.644, 63
  %or.i.646 = or i64 %and66.i.645, %sub58.i.640
  %conv68.i.647 = zext i64 %or.i.646 to i128
  %sub70.i.648 = sub i128 %add50.i.635, %conv68.i.647
  %and71.i.649 = and i64 %or.i.646, 4294967295
  %conv72.i.650 = zext i64 %and71.i.649 to i128
  %sub74.i.651 = sub i128 %sub54.i.637, %conv72.i.650
  %and75.i.652 = and i64 %or.i.646, -4294967295
  %conv76.i.653 = zext i64 %and75.i.652 to i128
  %sub78.i.654 = sub nsw i128 %add47.i.633, %conv76.i.653
  %shr80.i.655 = lshr i128 %sub70.i.648, 64
  %add84.i.656 = add i128 %sub74.i.651, %shr80.i.655
  %shr90.i.658 = lshr i128 %add84.i.656, 64
  %add94.i.659 = add nuw nsw i128 %add13.i.617, %shr90.i.658
  %shr100.i.661 = lshr i128 %add94.i.659, 64
  %add104.i.662 = add nsw i128 %sub78.i.654, %shr100.i.661
  %conv.i.668 = and i128 %sub70.i.i.590, 18446744073709551615
  %conv2.i.669 = and i128 %sub70.i.648, 18446744073709551615
  %mul.i.670 = mul nuw i128 %conv2.i.669, %conv.i.668
  %shr.i.671 = lshr i128 %mul.i.670, 64
  %conv5.i.672 = and i128 %mul.i.670, 18446744073709551615
  store i128 %conv5.i.672, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.675 = and i128 %add84.i.656, 18446744073709551615
  %mul13.i.676 = mul nuw i128 %conv12.i.675, %conv.i.668
  %shr15.i.677 = lshr i128 %mul13.i.676, 64
  %conv17.i.678 = and i128 %mul13.i.676, 18446744073709551615
  %conv22.i.682 = and i128 %add84.i.i.598, 18446744073709551615
  %mul25.i.683 = mul nuw i128 %conv2.i.669, %conv22.i.682
  %shr27.i.684 = lshr i128 %mul25.i.683, 64
  %conv29.i.685 = and i128 %mul25.i.683, 18446744073709551615
  %add.i.679 = add nuw nsw i128 %conv29.i.685, %shr.i.671
  %add31.i.686 = add nuw nsw i128 %add.i.679, %conv17.i.678
  store i128 %add31.i.686, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.689 = and i128 %add94.i.659, 18446744073709551615
  %mul39.i.690 = mul nuw i128 %conv38.i.689, %conv.i.668
  %shr41.i.691 = lshr i128 %mul39.i.690, 64
  %conv43.i.692 = and i128 %mul39.i.690, 18446744073709551615
  %mul52.i.695 = mul nuw i128 %conv12.i.675, %conv22.i.682
  %shr54.i.696 = lshr i128 %mul52.i.695, 64
  %conv56.i.697 = and i128 %mul52.i.695, 18446744073709551615
  %conv63.i.701 = and i128 %add94.i.i.601, 18446744073709551615
  %mul66.i.702 = mul nuw i128 %conv63.i.701, %conv2.i.669
  %shr68.i.703 = lshr i128 %mul66.i.702, 64
  %conv70.i.704 = and i128 %mul66.i.702, 18446744073709551615
  %add34.i.687 = add nuw nsw i128 %conv70.i.704, %shr27.i.684
  %add45.i.693 = add nuw nsw i128 %add34.i.687, %shr15.i.677
  %add58.i.698 = add nuw nsw i128 %add45.i.693, %conv56.i.697
  %add72.i.705 = add nuw nsw i128 %add58.i.698, %conv43.i.692
  store i128 %add72.i.705, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.708 = and i128 %add104.i.662, 18446744073709551615
  %mul80.i.709 = mul nuw i128 %conv79.i.708, %conv.i.668
  %shr82.i.710 = lshr i128 %mul80.i.709, 64
  %conv84.i.711 = and i128 %mul80.i.709, 18446744073709551615
  %mul93.i.714 = mul nuw i128 %conv38.i.689, %conv22.i.682
  %shr95.i.715 = lshr i128 %mul93.i.714, 64
  %conv97.i.716 = and i128 %mul93.i.714, 18446744073709551615
  %mul107.i.719 = mul nuw i128 %conv12.i.675, %conv63.i.701
  %shr109.i.720 = lshr i128 %mul107.i.719, 64
  %conv111.i.721 = and i128 %mul107.i.719, 18446744073709551615
  %conv118.i.725 = and i128 %add104.i.i.604, 18446744073709551615
  %mul121.i.726 = mul nuw i128 %conv118.i.725, %conv2.i.669
  %shr123.i.727 = lshr i128 %mul121.i.726, 64
  %conv125.i.728 = and i128 %mul121.i.726, 18446744073709551615
  %add61.i.699 = add nuw nsw i128 %shr54.i.696, %shr68.i.703
  %add75.i.706 = add nuw nsw i128 %add61.i.699, %conv111.i.721
  %add86.i.712 = add nuw nsw i128 %add75.i.706, %conv125.i.728
  %add99.i.717 = add nuw nsw i128 %add86.i.712, %shr41.i.691
  %add113.i.722 = add nuw nsw i128 %add99.i.717, %conv97.i.716
  %add127.i.729 = add nuw nsw i128 %add113.i.722, %conv84.i.711
  store i128 %add127.i.729, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.731 = mul nuw i128 %conv79.i.708, %conv22.i.682
  %shr137.i.732 = lshr i128 %mul135.i.731, 64
  %conv139.i.733 = and i128 %mul135.i.731, 18446744073709551615
  %mul148.i.736 = mul nuw i128 %conv38.i.689, %conv63.i.701
  %shr150.i.737 = lshr i128 %mul148.i.736, 64
  %conv152.i.738 = and i128 %mul148.i.736, 18446744073709551615
  %mul162.i.741 = mul nuw i128 %conv118.i.725, %conv12.i.675
  %shr164.i.742 = lshr i128 %mul162.i.741, 64
  %conv166.i.743 = and i128 %mul162.i.741, 18446744073709551615
  %add102.i.718 = add nuw nsw i128 %shr123.i.727, %shr109.i.720
  %add116.i.723 = add nuw nsw i128 %add102.i.718, %conv166.i.743
  %add130.i.730 = add nuw nsw i128 %add116.i.723, %shr95.i.715
  %add141.i.734 = add nuw nsw i128 %add130.i.730, %conv152.i.738
  %add154.i.739 = add nuw nsw i128 %add141.i.734, %shr82.i.710
  %add168.i.744 = add nuw nsw i128 %add154.i.739, %conv139.i.733
  store i128 %add168.i.744, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.746 = mul nuw i128 %conv79.i.708, %conv63.i.701
  %shr178.i.747 = lshr i128 %mul176.i.746, 64
  %conv180.i.748 = and i128 %mul176.i.746, 18446744073709551615
  %mul189.i.751 = mul nuw i128 %conv38.i.689, %conv118.i.725
  %shr191.i.752 = lshr i128 %mul189.i.751, 64
  %conv193.i.753 = and i128 %mul189.i.751, 18446744073709551615
  %add157.i.740 = add nuw nsw i128 %shr150.i.737, %shr164.i.742
  %add171.i.745 = add nuw nsw i128 %add157.i.740, %conv193.i.753
  %add182.i.749 = add nuw nsw i128 %add171.i.745, %shr137.i.732
  %add195.i.754 = add nuw nsw i128 %add182.i.749, %conv180.i.748
  store i128 %add195.i.754, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.755 = add nuw nsw i128 %shr178.i.747, %shr191.i.752
  %mul203.i.756 = mul nuw i128 %conv79.i.708, %conv118.i.725
  %shr205.i.757 = lshr i128 %mul203.i.756, 64
  %conv207.i.758 = and i128 %mul203.i.756, 18446744073709551615
  %add209.i.759 = add nuw nsw i128 %add198.i.755, %conv207.i.758
  store i128 %add209.i.759, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.757, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.804 = add nuw nsw i128 %conv5.i.672, 1267650600228229401427983728624
  %add3.i.806 = or i128 %add31.i.686, 1267650600228229401496703205376
  %add6.i.809 = add nuw nsw i128 %add72.i.705, 1267650600228229401427983728656
  %add9.i.812 = add i128 %add127.i.729, 1267650600228229401427983728656
  %shl.i.i.816 = shl nuw nsw i128 %add195.i.754, 32
  %add.i.i.817 = add i128 %shl.i.i.816, %add168.i.744
  %add3.i.i.818 = add i128 %add.i.i.817, %add.i.804
  %sub.i.i.819 = sub i128 %add9.i.812, %add.i.i.817
  %sub7.i.i.821 = sub nsw i128 %add195.i.754, %shr205.i.757
  %add9.i.i.822 = add nsw i128 %sub7.i.i.821, %add3.i.806
  %sub11.i.i.823 = sub nsw i128 %add6.i.809, %sub7.i.i.821
  %shl13.i.i.824 = shl i128 %add168.i.744, 32
  %sub15.i.i.825 = sub i128 %add9.i.i.822, %shl13.i.i.824
  %add19.i.i.827 = add i128 %shl13.i.i.824, %sub.i.i.819
  %sub23.i.i.829 = sub i128 %sub11.i.i.823, %shl.i.i.816
  %sub26.i.i.831 = sub i128 %add3.i.i.818, %add209.i.759
  %shl28.i.i.832 = shl nuw nsw i128 %add209.i.759, 32
  %sub30.i.i.833 = sub i128 %sub26.i.i.831, %shl28.i.i.832
  %shl32.i.i.834 = shl nuw nsw i128 %add209.i.759, 33
  %add34.i.i.835 = add i128 %shl32.i.i.834, %sub15.i.i.825
  store i128 %add34.i.i.835, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.836 = shl nuw nsw i128 %add209.i.759, 1
  %add37.i.i.837 = add i128 %mul.i.i.836, %sub23.i.i.829
  %sub41.i.i.839 = sub i128 %add19.i.i.827, %shl28.i.i.832
  %sub44.i.i.840 = sub i128 %sub30.i.i.833, %shr205.i.757
  %shl46.i.i.841 = shl nuw nsw i128 %shr205.i.757, 32
  %sub48.i.i.842 = sub i128 %sub44.i.i.840, %shl46.i.i.841
  store i128 %sub48.i.i.842, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.843 = shl nuw nsw i128 %shr205.i.757, 33
  %add52.i.i.844 = add i128 %shl50.i.i.843, %add37.i.i.837
  store i128 %add52.i.i.844, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.845 = mul nuw nsw i128 %shr205.i.757, 3
  %add56.i.i.846 = add i128 %mul54.i.i.845, %sub41.i.i.839
  store i128 %add56.i.i.846, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %15 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1192 = add i128 %15, 1267650600228229401427983728624
  %16 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1194 = add i128 %16, 1267650600228229401496703205376
  %17 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1197 = add i128 %17, 1267650600228229401427983728656
  %18 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1200 = add i128 %18, 1267650600228229401427983728656
  %19 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %20 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1204 = shl i128 %20, 32
  %add.i.i.1205 = add i128 %shl.i.i.1204, %19
  %add3.i.i.1206 = add i128 %add.i.i.1205, %add.i.1192
  %sub.i.i.1207 = sub i128 %add9.i.1200, %add.i.i.1205
  %21 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1209 = sub i128 %20, %21
  %add9.i.i.1210 = add i128 %sub7.i.i.1209, %add3.i.1194
  %sub11.i.i.1211 = sub i128 %add6.i.1197, %sub7.i.i.1209
  %shl13.i.i.1212 = shl i128 %19, 32
  %sub15.i.i.1213 = sub i128 %add9.i.i.1210, %shl13.i.i.1212
  %add19.i.i.1215 = add i128 %shl13.i.i.1212, %sub.i.i.1207
  %sub23.i.i.1217 = sub i128 %sub11.i.i.1211, %shl.i.i.1204
  %22 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1219 = sub i128 %add3.i.i.1206, %22
  %shl28.i.i.1220 = shl i128 %22, 32
  %sub30.i.i.1221 = sub i128 %sub26.i.i.1219, %shl28.i.i.1220
  %shl32.i.i.1222 = shl i128 %22, 33
  %add34.i.i.1223 = add i128 %shl32.i.i.1222, %sub15.i.i.1213
  store i128 %add34.i.i.1223, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.1224 = shl i128 %22, 1
  %add37.i.i.1225 = add i128 %mul.i.i.1224, %sub23.i.i.1217
  %sub41.i.i.1227 = sub i128 %add19.i.i.1215, %shl28.i.i.1220
  %sub44.i.i.1228 = sub i128 %sub30.i.i.1221, %21
  %shl46.i.i.1229 = shl i128 %21, 32
  %sub48.i.i.1230 = sub i128 %sub44.i.i.1228, %shl46.i.i.1229
  store i128 %sub48.i.i.1230, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.1231 = shl i128 %21, 33
  %add52.i.i.1232 = add i128 %shl50.i.i.1231, %add37.i.i.1225
  store i128 %add52.i.i.1232, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.1233 = mul i128 %21, 3
  %add56.i.i.1234 = add i128 %mul54.i.i.1233, %sub41.i.i.1227
  store i128 %add56.i.i.1234, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %23 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1532 = add i128 %23, 1267650600228229401427983728624
  %24 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1534 = add i128 %24, 1267650600228229401496703205376
  %25 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1537 = add i128 %25, 1267650600228229401427983728656
  %26 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1540 = add i128 %26, 1267650600228229401427983728656
  %27 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %28 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1544 = shl i128 %28, 32
  %add.i.i.1545 = add i128 %shl.i.i.1544, %27
  %add3.i.i.1546 = add i128 %add.i.i.1545, %add.i.1532
  %sub.i.i.1547 = sub i128 %add9.i.1540, %add.i.i.1545
  %29 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1549 = sub i128 %28, %29
  %add9.i.i.1550 = add i128 %sub7.i.i.1549, %add3.i.1534
  %sub11.i.i.1551 = sub i128 %add6.i.1537, %sub7.i.i.1549
  %shl13.i.i.1552 = shl i128 %27, 32
  %sub15.i.i.1553 = sub i128 %add9.i.i.1550, %shl13.i.i.1552
  %add19.i.i.1555 = add i128 %shl13.i.i.1552, %sub.i.i.1547
  %sub23.i.i.1557 = sub i128 %sub11.i.i.1551, %shl.i.i.1544
  %30 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1559 = sub i128 %add3.i.i.1546, %30
  %shl28.i.i.1560 = shl i128 %30, 32
  %sub30.i.i.1561 = sub i128 %sub26.i.i.1559, %shl28.i.i.1560
  %shl32.i.i.1562 = shl i128 %30, 33
  %add34.i.i.1563 = add i128 %shl32.i.i.1562, %sub15.i.i.1553
  store i128 %add34.i.i.1563, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.1564 = shl i128 %30, 1
  %add37.i.i.1565 = add i128 %mul.i.i.1564, %sub23.i.i.1557
  %sub41.i.i.1567 = sub i128 %add19.i.i.1555, %shl28.i.i.1560
  %sub44.i.i.1568 = sub i128 %sub30.i.i.1561, %29
  %shl46.i.i.1569 = shl i128 %29, 32
  %sub48.i.i.1570 = sub i128 %sub44.i.i.1568, %shl46.i.i.1569
  store i128 %sub48.i.i.1570, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.1571 = shl i128 %29, 33
  %add52.i.i.1572 = add i128 %shl50.i.i.1571, %add37.i.i.1565
  store i128 %add52.i.i.1572, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.1573 = mul i128 %29, 3
  %add56.i.i.1574 = add i128 %mul54.i.i.1573, %sub41.i.i.1567
  store i128 %add56.i.i.1574, i128* %arrayidx10.i, align 16, !tbaa !2
  %add.i.i.1876 = add i128 %add56.i.i.1574, 18446744069414584320
  %shr.i.i.1878 = lshr i128 %add52.i.i.1572, 64
  %add8.i.i.1879 = add i128 %add.i.i.1876, %shr.i.i.1878
  %conv12.i.i.1880 = and i128 %add52.i.i.1572, 18446744073709551615
  %add13.i.i.1881 = add nuw nsw i128 %conv12.i.i.1880, 18446673704965373952
  %add16.i.i.1882 = add i128 %sub48.i.i.1570, 18446744073709551615
  %add19.i.i.1884 = add i128 %add34.i.i.1563, 1298074214633706907132628377272319
  %shr22.i.i.1885 = lshr i128 %add8.i.i.1879, 64
  %conv23.i.i.1886 = trunc i128 %shr22.i.i.1885 to i64
  %conv26.i.i.1887 = and i128 %add8.i.i.1879, 18446744073709551615
  %sub.i.i.1888 = sub nsw i128 %conv26.i.i.1887, %shr22.i.i.1885
  %shl.i.i.1889 = shl nuw nsw i128 %shr22.i.i.1885, 32
  %add32.i.i.1890 = add nsw i128 %sub.i.i.1888, %shl.i.i.1889
  %shr34.i.i.1891 = lshr i128 %add32.i.i.1890, 64
  %conv35.i.i.1892 = trunc i128 %shr34.i.i.1891 to i64
  %add36.i.i.1893 = add i64 %conv35.i.i.1892, %conv23.i.i.1886
  %conv39.i.i.1894 = and i128 %add32.i.i.1890, 18446744073709551615
  %sub43.i.i.1895 = sub nsw i128 %conv39.i.i.1894, %shr34.i.i.1891
  %shl45.i.i.1896 = shl nuw nsw i128 %shr34.i.i.1891, 32
  %add47.i.i.1897 = add nsw i128 %sub43.i.i.1895, %shl45.i.i.1896
  %conv48.i.i.1898 = zext i64 %add36.i.i.1893 to i128
  %add50.i.i.1899 = add i128 %add16.i.i.1882, %conv48.i.i.1898
  %shl52.i.i.1900 = shl nuw nsw i128 %conv48.i.i.1898, 32
  %sub54.i.i.1901 = sub i128 %add19.i.i.1884, %shl52.i.i.1900
  %shr56.i.i.1902 = lshr i128 %add47.i.i.1897, 64
  %conv57.i.i.1903 = trunc i128 %shr56.i.i.1902 to i64
  %sub58.i.i.1904 = sub i64 0, %conv57.i.i.1903
  %conv60.i.i.1905 = trunc i128 %add47.i.i.1897 to i64
  %and.i.i.1906 = and i64 %conv60.i.i.1905, 9223372036854775807
  %neg.i.i.1907 = sub nsw i64 9223372032559808512, %and.i.i.1906
  %sub62177.i.i.1908 = and i64 %neg.i.i.1907, %conv60.i.i.1905
  %and66.i.i.1909 = ashr i64 %sub62177.i.i.1908, 63
  %or.i.i.1910 = or i64 %and66.i.i.1909, %sub58.i.i.1904
  %conv68.i.i.1911 = zext i64 %or.i.i.1910 to i128
  %sub70.i.i.1912 = sub i128 %add50.i.i.1899, %conv68.i.i.1911
  %and71.i.i.1913 = and i64 %or.i.i.1910, 4294967295
  %conv72.i.i.1914 = zext i64 %and71.i.i.1913 to i128
  %sub74.i.i.1915 = sub i128 %sub54.i.i.1901, %conv72.i.i.1914
  %and75.i.i.1916 = and i64 %or.i.i.1910, -4294967295
  %conv76.i.i.1917 = zext i64 %and75.i.i.1916 to i128
  %sub78.i.i.1918 = sub nsw i128 %add47.i.i.1897, %conv76.i.i.1917
  %shr80.i.i.1919 = lshr i128 %sub70.i.i.1912, 64
  %add84.i.i.1920 = add i128 %sub74.i.i.1915, %shr80.i.i.1919
  %shr90.i.i.1922 = lshr i128 %add84.i.i.1920, 64
  %add94.i.i.1923 = add nuw nsw i128 %add13.i.i.1881, %shr90.i.i.1922
  %shr100.i.i.1925 = lshr i128 %add94.i.i.1923, 64
  %add104.i.i.1926 = add nsw i128 %sub78.i.i.1918, %shr100.i.i.1925
  %add.i.1934 = add i128 %add56.i.i.846, 18446744069414584320
  %shr.i.1936 = lshr i128 %add52.i.i.844, 64
  %add8.i.1937 = add i128 %add.i.1934, %shr.i.1936
  %conv12.i.1938 = and i128 %add52.i.i.844, 18446744073709551615
  %add13.i.1939 = add nuw nsw i128 %conv12.i.1938, 18446673704965373952
  %add16.i.1940 = add i128 %sub48.i.i.842, 18446744073709551615
  %add19.i.1942 = add i128 %add34.i.i.835, 1298074214633706907132628377272319
  %shr22.i.1943 = lshr i128 %add8.i.1937, 64
  %conv23.i.1944 = trunc i128 %shr22.i.1943 to i64
  %conv26.i.1945 = and i128 %add8.i.1937, 18446744073709551615
  %sub.i.1946 = sub nsw i128 %conv26.i.1945, %shr22.i.1943
  %shl.i.1947 = shl nuw nsw i128 %shr22.i.1943, 32
  %add32.i.1948 = add nsw i128 %sub.i.1946, %shl.i.1947
  %shr34.i.1949 = lshr i128 %add32.i.1948, 64
  %conv35.i.1950 = trunc i128 %shr34.i.1949 to i64
  %add36.i.1951 = add i64 %conv35.i.1950, %conv23.i.1944
  %conv39.i.1952 = and i128 %add32.i.1948, 18446744073709551615
  %sub43.i.1953 = sub nsw i128 %conv39.i.1952, %shr34.i.1949
  %shl45.i.1954 = shl nuw nsw i128 %shr34.i.1949, 32
  %add47.i.1955 = add nsw i128 %sub43.i.1953, %shl45.i.1954
  %conv48.i.1956 = zext i64 %add36.i.1951 to i128
  %add50.i.1957 = add i128 %add16.i.1940, %conv48.i.1956
  %shl52.i.1958 = shl nuw nsw i128 %conv48.i.1956, 32
  %sub54.i.1959 = sub i128 %add19.i.1942, %shl52.i.1958
  %shr56.i.1960 = lshr i128 %add47.i.1955, 64
  %conv57.i.1961 = trunc i128 %shr56.i.1960 to i64
  %sub58.i.1962 = sub i64 0, %conv57.i.1961
  %conv60.i.1963 = trunc i128 %add47.i.1955 to i64
  %and.i.1964 = and i64 %conv60.i.1963, 9223372036854775807
  %neg.i.1965 = sub nsw i64 9223372032559808512, %and.i.1964
  %sub62177.i.1966 = and i64 %neg.i.1965, %conv60.i.1963
  %and66.i.1967 = ashr i64 %sub62177.i.1966, 63
  %or.i.1968 = or i64 %and66.i.1967, %sub58.i.1962
  %conv68.i.1969 = zext i64 %or.i.1968 to i128
  %sub70.i.1970 = sub i128 %add50.i.1957, %conv68.i.1969
  %and71.i.1971 = and i64 %or.i.1968, 4294967295
  %conv72.i.1972 = zext i64 %and71.i.1971 to i128
  %sub74.i.1973 = sub i128 %sub54.i.1959, %conv72.i.1972
  %and75.i.1974 = and i64 %or.i.1968, -4294967295
  %conv76.i.1975 = zext i64 %and75.i.1974 to i128
  %sub78.i.1976 = sub nsw i128 %add47.i.1955, %conv76.i.1975
  %shr80.i.1977 = lshr i128 %sub70.i.1970, 64
  %add84.i.1978 = add i128 %sub74.i.1973, %shr80.i.1977
  %shr90.i.1980 = lshr i128 %add84.i.1978, 64
  %add94.i.1981 = add nuw nsw i128 %add13.i.1939, %shr90.i.1980
  %shr100.i.1983 = lshr i128 %add94.i.1981, 64
  %add104.i.1984 = add nsw i128 %sub78.i.1976, %shr100.i.1983
  %conv.i.1990 = and i128 %sub70.i.i.1912, 18446744073709551615
  %conv2.i.1991 = and i128 %sub70.i.1970, 18446744073709551615
  %mul.i.1992 = mul nuw i128 %conv.i.1990, %conv2.i.1991
  %shr.i.1993 = lshr i128 %mul.i.1992, 64
  %conv5.i.1994 = and i128 %mul.i.1992, 18446744073709551615
  store i128 %conv5.i.1994, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.1997 = and i128 %add84.i.1978, 18446744073709551615
  %mul13.i.1998 = mul nuw i128 %conv.i.1990, %conv12.i.1997
  %shr15.i.1999 = lshr i128 %mul13.i.1998, 64
  %conv17.i.2000 = and i128 %mul13.i.1998, 18446744073709551615
  %add.i.2001 = add nuw nsw i128 %conv17.i.2000, %shr.i.1993
  %conv22.i.2004 = and i128 %add84.i.i.1920, 18446744073709551615
  %mul25.i.2005 = mul nuw i128 %conv22.i.2004, %conv2.i.1991
  %shr27.i.2006 = lshr i128 %mul25.i.2005, 64
  %conv29.i.2007 = and i128 %mul25.i.2005, 18446744073709551615
  %add31.i.2008 = add nuw nsw i128 %add.i.2001, %conv29.i.2007
  store i128 %add31.i.2008, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.2011 = and i128 %add94.i.1981, 18446744073709551615
  %mul39.i.2012 = mul nuw i128 %conv.i.1990, %conv38.i.2011
  %shr41.i.2013 = lshr i128 %mul39.i.2012, 64
  %conv43.i.2014 = and i128 %mul39.i.2012, 18446744073709551615
  %mul52.i.2017 = mul nuw i128 %conv22.i.2004, %conv12.i.1997
  %shr54.i.2018 = lshr i128 %mul52.i.2017, 64
  %conv56.i.2019 = and i128 %mul52.i.2017, 18446744073709551615
  %conv63.i.2023 = and i128 %add94.i.i.1923, 18446744073709551615
  %mul66.i.2024 = mul nuw i128 %conv63.i.2023, %conv2.i.1991
  %shr68.i.2025 = lshr i128 %mul66.i.2024, 64
  %conv70.i.2026 = and i128 %mul66.i.2024, 18446744073709551615
  %add34.i.2009 = add nuw nsw i128 %conv43.i.2014, %shr15.i.1999
  %add45.i.2015 = add nuw nsw i128 %add34.i.2009, %shr27.i.2006
  %add58.i.2020 = add nuw nsw i128 %add45.i.2015, %conv56.i.2019
  %add72.i.2027 = add nuw nsw i128 %add58.i.2020, %conv70.i.2026
  store i128 %add72.i.2027, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.2030 = and i128 %add104.i.1984, 18446744073709551615
  %mul80.i.2031 = mul nuw i128 %conv.i.1990, %conv79.i.2030
  %shr82.i.2032 = lshr i128 %mul80.i.2031, 64
  %conv84.i.2033 = and i128 %mul80.i.2031, 18446744073709551615
  %mul93.i.2036 = mul nuw i128 %conv22.i.2004, %conv38.i.2011
  %shr95.i.2037 = lshr i128 %mul93.i.2036, 64
  %conv97.i.2038 = and i128 %mul93.i.2036, 18446744073709551615
  %add102.i.2040 = add nuw nsw i128 %shr95.i.2037, %shr82.i.2032
  %mul107.i.2041 = mul nuw i128 %conv63.i.2023, %conv12.i.1997
  %shr109.i.2042 = lshr i128 %mul107.i.2041, 64
  %conv111.i.2043 = and i128 %mul107.i.2041, 18446744073709551615
  %conv118.i.2047 = and i128 %add104.i.i.1926, 18446744073709551615
  %mul121.i.2048 = mul nuw i128 %conv118.i.2047, %conv2.i.1991
  %shr123.i.2049 = lshr i128 %mul121.i.2048, 64
  %conv125.i.2050 = and i128 %mul121.i.2048, 18446744073709551615
  %add61.i.2021 = add nuw nsw i128 %conv84.i.2033, %shr41.i.2013
  %add75.i.2028 = add nuw nsw i128 %add61.i.2021, %shr54.i.2018
  %add86.i.2034 = add nuw nsw i128 %add75.i.2028, %conv97.i.2038
  %add99.i.2039 = add nuw nsw i128 %add86.i.2034, %shr68.i.2025
  %add113.i.2044 = add nuw nsw i128 %add99.i.2039, %conv111.i.2043
  %add127.i.2051 = add nuw nsw i128 %add113.i.2044, %conv125.i.2050
  store i128 %add127.i.2051, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.2053 = mul nuw i128 %conv22.i.2004, %conv79.i.2030
  %shr137.i.2054 = lshr i128 %mul135.i.2053, 64
  %conv139.i.2055 = and i128 %mul135.i.2053, 18446744073709551615
  %mul148.i.2058 = mul nuw i128 %conv63.i.2023, %conv38.i.2011
  %shr150.i.2059 = lshr i128 %mul148.i.2058, 64
  %conv152.i.2060 = and i128 %mul148.i.2058, 18446744073709551615
  %add157.i.2062 = add nuw nsw i128 %shr150.i.2059, %shr137.i.2054
  %mul162.i.2063 = mul nuw i128 %conv118.i.2047, %conv12.i.1997
  %shr164.i.2064 = lshr i128 %mul162.i.2063, 64
  %conv166.i.2065 = and i128 %mul162.i.2063, 18446744073709551615
  %add116.i.2045 = add nuw nsw i128 %add102.i.2040, %conv139.i.2055
  %add130.i.2052 = add nuw nsw i128 %add116.i.2045, %shr109.i.2042
  %add141.i.2056 = add nuw nsw i128 %add130.i.2052, %conv152.i.2060
  %add154.i.2061 = add nuw nsw i128 %add141.i.2056, %shr123.i.2049
  %add168.i.2066 = add nuw nsw i128 %add154.i.2061, %conv166.i.2065
  store i128 %add168.i.2066, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.2068 = mul nuw i128 %conv63.i.2023, %conv79.i.2030
  %shr178.i.2069 = lshr i128 %mul176.i.2068, 64
  %conv180.i.2070 = and i128 %mul176.i.2068, 18446744073709551615
  %mul189.i.2073 = mul nuw i128 %conv118.i.2047, %conv38.i.2011
  %shr191.i.2074 = lshr i128 %mul189.i.2073, 64
  %conv193.i.2075 = and i128 %mul189.i.2073, 18446744073709551615
  %add171.i.2067 = add nuw nsw i128 %add157.i.2062, %conv180.i.2070
  %add182.i.2071 = add nuw nsw i128 %add171.i.2067, %shr164.i.2064
  %add195.i.2076 = add nuw nsw i128 %add182.i.2071, %conv193.i.2075
  store i128 %add195.i.2076, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.2077 = add nuw nsw i128 %shr191.i.2074, %shr178.i.2069
  %mul203.i.2078 = mul nuw i128 %conv118.i.2047, %conv79.i.2030
  %shr205.i.2079 = lshr i128 %mul203.i.2078, 64
  %conv207.i.2080 = and i128 %mul203.i.2078, 18446744073709551615
  %add209.i.2081 = add nuw nsw i128 %add198.i.2077, %conv207.i.2080
  store i128 %add209.i.2081, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.2079, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.2380 = add nuw nsw i128 %conv5.i.1994, 1267650600228229401427983728624
  %add3.i.2382 = or i128 %add31.i.2008, 1267650600228229401496703205376
  %add6.i.2385 = add nuw nsw i128 %add72.i.2027, 1267650600228229401427983728656
  %add9.i.2388 = add i128 %add127.i.2051, 1267650600228229401427983728656
  %shl.i.i.2392 = shl nuw nsw i128 %add195.i.2076, 32
  %add.i.i.2393 = add i128 %shl.i.i.2392, %add168.i.2066
  %add3.i.i.2394 = add i128 %add.i.i.2393, %add.i.2380
  %sub.i.i.2395 = sub i128 %add9.i.2388, %add.i.i.2393
  %sub7.i.i.2397 = sub nsw i128 %add195.i.2076, %shr205.i.2079
  %add9.i.i.2398 = add nsw i128 %sub7.i.i.2397, %add3.i.2382
  %sub11.i.i.2399 = sub nsw i128 %add6.i.2385, %sub7.i.i.2397
  %shl13.i.i.2400 = shl i128 %add168.i.2066, 32
  %sub15.i.i.2401 = sub i128 %add9.i.i.2398, %shl13.i.i.2400
  %add19.i.i.2403 = add i128 %shl13.i.i.2400, %sub.i.i.2395
  %sub23.i.i.2405 = sub i128 %sub11.i.i.2399, %shl.i.i.2392
  %sub26.i.i.2407 = sub i128 %add3.i.i.2394, %add209.i.2081
  %shl28.i.i.2408 = shl nuw nsw i128 %add209.i.2081, 32
  %sub30.i.i.2409 = sub i128 %sub26.i.i.2407, %shl28.i.i.2408
  %shl32.i.i.2410 = shl nuw nsw i128 %add209.i.2081, 33
  %add34.i.i.2411 = add i128 %shl32.i.i.2410, %sub15.i.i.2401
  store i128 %add34.i.i.2411, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.2412 = shl nuw nsw i128 %add209.i.2081, 1
  %add37.i.i.2413 = add i128 %mul.i.i.2412, %sub23.i.i.2405
  %sub41.i.i.2415 = sub i128 %add19.i.i.2403, %shl28.i.i.2408
  %sub44.i.i.2416 = sub i128 %sub30.i.i.2409, %shr205.i.2079
  %shl46.i.i.2417 = shl nuw nsw i128 %shr205.i.2079, 32
  %sub48.i.i.2418 = sub i128 %sub44.i.i.2416, %shl46.i.i.2417
  store i128 %sub48.i.i.2418, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2419 = shl nuw nsw i128 %shr205.i.2079, 33
  %add52.i.i.2420 = add i128 %shl50.i.i.2419, %add37.i.i.2413
  store i128 %add52.i.i.2420, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.2421 = mul nuw nsw i128 %shr205.i.2079, 3
  %add56.i.i.2422 = add i128 %mul54.i.i.2421, %sub41.i.i.2415
  store i128 %add56.i.i.2422, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %31 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3029 = add i128 %31, 1267650600228229401427983728624
  %32 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.3031 = add i128 %32, 1267650600228229401496703205376
  %33 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.3034 = add i128 %33, 1267650600228229401427983728656
  %34 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.3037 = add i128 %34, 1267650600228229401427983728656
  %35 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %36 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.3041 = shl i128 %36, 32
  %add.i.i.3042 = add i128 %shl.i.i.3041, %35
  %add3.i.i.3043 = add i128 %add.i.i.3042, %add.i.3029
  %sub.i.i.3044 = sub i128 %add9.i.3037, %add.i.i.3042
  %37 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3046 = sub i128 %36, %37
  %add9.i.i.3047 = add i128 %sub7.i.i.3046, %add3.i.3031
  %sub11.i.i.3048 = sub i128 %add6.i.3034, %sub7.i.i.3046
  %shl13.i.i.3049 = shl i128 %35, 32
  %sub15.i.i.3050 = sub i128 %add9.i.i.3047, %shl13.i.i.3049
  %add19.i.i.3052 = add i128 %shl13.i.i.3049, %sub.i.i.3044
  %sub23.i.i.3054 = sub i128 %sub11.i.i.3048, %shl.i.i.3041
  %38 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3056 = sub i128 %add3.i.i.3043, %38
  %shl28.i.i.3057 = shl i128 %38, 32
  %sub30.i.i.3058 = sub i128 %sub26.i.i.3056, %shl28.i.i.3057
  %shl32.i.i.3059 = shl i128 %38, 33
  %add34.i.i.3060 = add i128 %shl32.i.i.3059, %sub15.i.i.3050
  store i128 %add34.i.i.3060, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3061 = shl i128 %38, 1
  %add37.i.i.3062 = add i128 %mul.i.i.3061, %sub23.i.i.3054
  %sub41.i.i.3064 = sub i128 %add19.i.i.3052, %shl28.i.i.3057
  %sub44.i.i.3065 = sub i128 %sub30.i.i.3058, %37
  %shl46.i.i.3066 = shl i128 %37, 32
  %sub48.i.i.3067 = sub i128 %sub44.i.i.3065, %shl46.i.i.3066
  store i128 %sub48.i.i.3067, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3068 = shl i128 %37, 33
  %add52.i.i.3069 = add i128 %shl50.i.i.3068, %add37.i.i.3062
  store i128 %add52.i.i.3069, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3070 = mul i128 %37, 3
  %add56.i.i.3071 = add i128 %mul54.i.i.3070, %sub41.i.i.3064
  store i128 %add56.i.i.3071, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %39 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3375 = add i128 %39, 1267650600228229401427983728624
  %40 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.3377 = add i128 %40, 1267650600228229401496703205376
  %41 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.3380 = add i128 %41, 1267650600228229401427983728656
  %42 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.3383 = add i128 %42, 1267650600228229401427983728656
  %43 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %44 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.3387 = shl i128 %44, 32
  %add.i.i.3388 = add i128 %shl.i.i.3387, %43
  %add3.i.i.3389 = add i128 %add.i.i.3388, %add.i.3375
  %sub.i.i.3390 = sub i128 %add9.i.3383, %add.i.i.3388
  %45 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3392 = sub i128 %44, %45
  %add9.i.i.3393 = add i128 %sub7.i.i.3392, %add3.i.3377
  %sub11.i.i.3394 = sub i128 %add6.i.3380, %sub7.i.i.3392
  %shl13.i.i.3395 = shl i128 %43, 32
  %sub15.i.i.3396 = sub i128 %add9.i.i.3393, %shl13.i.i.3395
  %add19.i.i.3398 = add i128 %shl13.i.i.3395, %sub.i.i.3390
  %sub23.i.i.3400 = sub i128 %sub11.i.i.3394, %shl.i.i.3387
  %46 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3402 = sub i128 %add3.i.i.3389, %46
  %shl28.i.i.3403 = shl i128 %46, 32
  %sub30.i.i.3404 = sub i128 %sub26.i.i.3402, %shl28.i.i.3403
  %shl32.i.i.3405 = shl i128 %46, 33
  %add34.i.i.3406 = add i128 %shl32.i.i.3405, %sub15.i.i.3396
  store i128 %add34.i.i.3406, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3407 = shl i128 %46, 1
  %add37.i.i.3408 = add i128 %mul.i.i.3407, %sub23.i.i.3400
  %sub41.i.i.3410 = sub i128 %add19.i.i.3398, %shl28.i.i.3403
  %sub44.i.i.3411 = sub i128 %sub30.i.i.3404, %45
  %shl46.i.i.3412 = shl i128 %45, 32
  %sub48.i.i.3413 = sub i128 %sub44.i.i.3411, %shl46.i.i.3412
  store i128 %sub48.i.i.3413, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3414 = shl i128 %45, 33
  %add52.i.i.3415 = add i128 %shl50.i.i.3414, %add37.i.i.3408
  store i128 %add52.i.i.3415, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3416 = mul i128 %45, 3
  %add56.i.i.3417 = add i128 %mul54.i.i.3416, %sub41.i.i.3410
  store i128 %add56.i.i.3417, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %47 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3721 = add i128 %47, 1267650600228229401427983728624
  %48 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.3723 = add i128 %48, 1267650600228229401496703205376
  %49 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.3726 = add i128 %49, 1267650600228229401427983728656
  %50 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.3729 = add i128 %50, 1267650600228229401427983728656
  %51 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %52 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.3733 = shl i128 %52, 32
  %add.i.i.3734 = add i128 %shl.i.i.3733, %51
  %add3.i.i.3735 = add i128 %add.i.i.3734, %add.i.3721
  %sub.i.i.3736 = sub i128 %add9.i.3729, %add.i.i.3734
  %53 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3738 = sub i128 %52, %53
  %add9.i.i.3739 = add i128 %sub7.i.i.3738, %add3.i.3723
  %sub11.i.i.3740 = sub i128 %add6.i.3726, %sub7.i.i.3738
  %shl13.i.i.3741 = shl i128 %51, 32
  %sub15.i.i.3742 = sub i128 %add9.i.i.3739, %shl13.i.i.3741
  %add19.i.i.3744 = add i128 %shl13.i.i.3741, %sub.i.i.3736
  %sub23.i.i.3746 = sub i128 %sub11.i.i.3740, %shl.i.i.3733
  %54 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3748 = sub i128 %add3.i.i.3735, %54
  %shl28.i.i.3749 = shl i128 %54, 32
  %sub30.i.i.3750 = sub i128 %sub26.i.i.3748, %shl28.i.i.3749
  %shl32.i.i.3751 = shl i128 %54, 33
  %add34.i.i.3752 = add i128 %shl32.i.i.3751, %sub15.i.i.3742
  store i128 %add34.i.i.3752, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3753 = shl i128 %54, 1
  %add37.i.i.3754 = add i128 %mul.i.i.3753, %sub23.i.i.3746
  %sub41.i.i.3756 = sub i128 %add19.i.i.3744, %shl28.i.i.3749
  %sub44.i.i.3757 = sub i128 %sub30.i.i.3750, %53
  %shl46.i.i.3758 = shl i128 %53, 32
  %sub48.i.i.3759 = sub i128 %sub44.i.i.3757, %shl46.i.i.3758
  store i128 %sub48.i.i.3759, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3760 = shl i128 %53, 33
  %add52.i.i.3761 = add i128 %shl50.i.i.3760, %add37.i.i.3754
  store i128 %add52.i.i.3761, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3762 = mul i128 %53, 3
  %add56.i.i.3763 = add i128 %mul54.i.i.3762, %sub41.i.i.3756
  store i128 %add56.i.i.3763, i128* %arrayidx10.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %55 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.4024 = add i128 %55, 1267650600228229401427983728624
  %56 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.4026 = add i128 %56, 1267650600228229401496703205376
  %57 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.4029 = add i128 %57, 1267650600228229401427983728656
  %58 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.4032 = add i128 %58, 1267650600228229401427983728656
  %59 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %60 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.4036 = shl i128 %60, 32
  %add.i.i.4037 = add i128 %shl.i.i.4036, %59
  %add3.i.i.4038 = add i128 %add.i.i.4037, %add.i.4024
  %sub.i.i.4039 = sub i128 %add9.i.4032, %add.i.i.4037
  %61 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.4041 = sub i128 %60, %61
  %add9.i.i.4042 = add i128 %sub7.i.i.4041, %add3.i.4026
  %sub11.i.i.4043 = sub i128 %add6.i.4029, %sub7.i.i.4041
  %shl13.i.i.4044 = shl i128 %59, 32
  %sub15.i.i.4045 = sub i128 %add9.i.i.4042, %shl13.i.i.4044
  %add19.i.i.4047 = add i128 %shl13.i.i.4044, %sub.i.i.4039
  %sub23.i.i.4049 = sub i128 %sub11.i.i.4043, %shl.i.i.4036
  %62 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.4051 = sub i128 %add3.i.i.4038, %62
  %shl28.i.i.4052 = shl i128 %62, 32
  %sub30.i.i.4053 = sub i128 %sub26.i.i.4051, %shl28.i.i.4052
  %shl32.i.i.4054 = shl i128 %62, 33
  %add34.i.i.4055 = add i128 %shl32.i.i.4054, %sub15.i.i.4045
  store i128 %add34.i.i.4055, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.4056 = shl i128 %62, 1
  %add37.i.i.4057 = add i128 %mul.i.i.4056, %sub23.i.i.4049
  %sub41.i.i.4059 = sub i128 %add19.i.i.4047, %shl28.i.i.4052
  %sub44.i.i.4060 = sub i128 %sub30.i.i.4053, %61
  %shl46.i.i.4061 = shl i128 %61, 32
  %sub48.i.i.4062 = sub i128 %sub44.i.i.4060, %shl46.i.i.4061
  store i128 %sub48.i.i.4062, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.4063 = shl i128 %61, 33
  %add52.i.i.4064 = add i128 %shl50.i.i.4063, %add37.i.i.4057
  store i128 %add52.i.i.4064, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.4065 = mul i128 %61, 3
  %add56.i.i.4066 = add i128 %mul54.i.i.4065, %sub41.i.i.4059
  store i128 %add56.i.i.4066, i128* %arrayidx10.i, align 16, !tbaa !2
  %add.i.i.3817 = add i128 %add56.i.i.4066, 18446744069414584320
  %shr.i.i.3819 = lshr i128 %add52.i.i.4064, 64
  %add8.i.i.3820 = add i128 %add.i.i.3817, %shr.i.i.3819
  %conv12.i.i.3821 = and i128 %add52.i.i.4064, 18446744073709551615
  %add13.i.i.3822 = add nuw nsw i128 %conv12.i.i.3821, 18446673704965373952
  %add16.i.i.3823 = add i128 %sub48.i.i.4062, 18446744073709551615
  %add19.i.i.3825 = add i128 %add34.i.i.4055, 1298074214633706907132628377272319
  %shr22.i.i.3826 = lshr i128 %add8.i.i.3820, 64
  %conv23.i.i.3827 = trunc i128 %shr22.i.i.3826 to i64
  %conv26.i.i.3828 = and i128 %add8.i.i.3820, 18446744073709551615
  %sub.i.i.3829 = sub nsw i128 %conv26.i.i.3828, %shr22.i.i.3826
  %shl.i.i.3830 = shl nuw nsw i128 %shr22.i.i.3826, 32
  %add32.i.i.3831 = add nsw i128 %sub.i.i.3829, %shl.i.i.3830
  %shr34.i.i.3832 = lshr i128 %add32.i.i.3831, 64
  %conv35.i.i.3833 = trunc i128 %shr34.i.i.3832 to i64
  %add36.i.i.3834 = add i64 %conv35.i.i.3833, %conv23.i.i.3827
  %conv39.i.i.3835 = and i128 %add32.i.i.3831, 18446744073709551615
  %sub43.i.i.3836 = sub nsw i128 %conv39.i.i.3835, %shr34.i.i.3832
  %shl45.i.i.3837 = shl nuw nsw i128 %shr34.i.i.3832, 32
  %add47.i.i.3838 = add nsw i128 %sub43.i.i.3836, %shl45.i.i.3837
  %conv48.i.i.3839 = zext i64 %add36.i.i.3834 to i128
  %add50.i.i.3840 = add i128 %add16.i.i.3823, %conv48.i.i.3839
  %shl52.i.i.3841 = shl nuw nsw i128 %conv48.i.i.3839, 32
  %sub54.i.i.3842 = sub i128 %add19.i.i.3825, %shl52.i.i.3841
  %shr56.i.i.3843 = lshr i128 %add47.i.i.3838, 64
  %conv57.i.i.3844 = trunc i128 %shr56.i.i.3843 to i64
  %sub58.i.i.3845 = sub i64 0, %conv57.i.i.3844
  %conv60.i.i.3846 = trunc i128 %add47.i.i.3838 to i64
  %and.i.i.3847 = and i64 %conv60.i.i.3846, 9223372036854775807
  %neg.i.i.3848 = sub nsw i64 9223372032559808512, %and.i.i.3847
  %sub62177.i.i.3849 = and i64 %neg.i.i.3848, %conv60.i.i.3846
  %and66.i.i.3850 = ashr i64 %sub62177.i.i.3849, 63
  %or.i.i.3851 = or i64 %and66.i.i.3850, %sub58.i.i.3845
  %conv68.i.i.3852 = zext i64 %or.i.i.3851 to i128
  %sub70.i.i.3853 = sub i128 %add50.i.i.3840, %conv68.i.i.3852
  %and71.i.i.3854 = and i64 %or.i.i.3851, 4294967295
  %conv72.i.i.3855 = zext i64 %and71.i.i.3854 to i128
  %sub74.i.i.3856 = sub i128 %sub54.i.i.3842, %conv72.i.i.3855
  %and75.i.i.3857 = and i64 %or.i.i.3851, -4294967295
  %conv76.i.i.3858 = zext i64 %and75.i.i.3857 to i128
  %sub78.i.i.3859 = sub nsw i128 %add47.i.i.3838, %conv76.i.i.3858
  %shr80.i.i.3860 = lshr i128 %sub70.i.i.3853, 64
  %add84.i.i.3861 = add i128 %sub74.i.i.3856, %shr80.i.i.3860
  %shr90.i.i.3863 = lshr i128 %add84.i.i.3861, 64
  %add94.i.i.3864 = add nuw nsw i128 %add13.i.i.3822, %shr90.i.i.3863
  %shr100.i.i.3866 = lshr i128 %add94.i.i.3864, 64
  %add104.i.i.3867 = add nsw i128 %sub78.i.i.3859, %shr100.i.i.3866
  %add.i.3875 = add i128 %add56.i.i.2422, 18446744069414584320
  %shr.i.3877 = lshr i128 %add52.i.i.2420, 64
  %add8.i.3878 = add i128 %add.i.3875, %shr.i.3877
  %conv12.i.3879 = and i128 %add52.i.i.2420, 18446744073709551615
  %add13.i.3880 = add nuw nsw i128 %conv12.i.3879, 18446673704965373952
  %add16.i.3881 = add i128 %sub48.i.i.2418, 18446744073709551615
  %add19.i.3883 = add i128 %add34.i.i.2411, 1298074214633706907132628377272319
  %shr22.i.3884 = lshr i128 %add8.i.3878, 64
  %conv23.i.3885 = trunc i128 %shr22.i.3884 to i64
  %conv26.i.3886 = and i128 %add8.i.3878, 18446744073709551615
  %sub.i.3887 = sub nsw i128 %conv26.i.3886, %shr22.i.3884
  %shl.i.3888 = shl nuw nsw i128 %shr22.i.3884, 32
  %add32.i.3889 = add nsw i128 %sub.i.3887, %shl.i.3888
  %shr34.i.3890 = lshr i128 %add32.i.3889, 64
  %conv35.i.3891 = trunc i128 %shr34.i.3890 to i64
  %add36.i.3892 = add i64 %conv35.i.3891, %conv23.i.3885
  %conv39.i.3893 = and i128 %add32.i.3889, 18446744073709551615
  %sub43.i.3894 = sub nsw i128 %conv39.i.3893, %shr34.i.3890
  %shl45.i.3895 = shl nuw nsw i128 %shr34.i.3890, 32
  %add47.i.3896 = add nsw i128 %sub43.i.3894, %shl45.i.3895
  %conv48.i.3897 = zext i64 %add36.i.3892 to i128
  %add50.i.3898 = add i128 %add16.i.3881, %conv48.i.3897
  %shl52.i.3899 = shl nuw nsw i128 %conv48.i.3897, 32
  %sub54.i.3900 = sub i128 %add19.i.3883, %shl52.i.3899
  %shr56.i.3901 = lshr i128 %add47.i.3896, 64
  %conv57.i.3902 = trunc i128 %shr56.i.3901 to i64
  %sub58.i.3903 = sub i64 0, %conv57.i.3902
  %conv60.i.3904 = trunc i128 %add47.i.3896 to i64
  %and.i.3905 = and i64 %conv60.i.3904, 9223372036854775807
  %neg.i.3906 = sub nsw i64 9223372032559808512, %and.i.3905
  %sub62177.i.3907 = and i64 %neg.i.3906, %conv60.i.3904
  %and66.i.3908 = ashr i64 %sub62177.i.3907, 63
  %or.i.3909 = or i64 %and66.i.3908, %sub58.i.3903
  %conv68.i.3910 = zext i64 %or.i.3909 to i128
  %sub70.i.3911 = sub i128 %add50.i.3898, %conv68.i.3910
  %and71.i.3912 = and i64 %or.i.3909, 4294967295
  %conv72.i.3913 = zext i64 %and71.i.3912 to i128
  %sub74.i.3914 = sub i128 %sub54.i.3900, %conv72.i.3913
  %and75.i.3915 = and i64 %or.i.3909, -4294967295
  %conv76.i.3916 = zext i64 %and75.i.3915 to i128
  %sub78.i.3917 = sub nsw i128 %add47.i.3896, %conv76.i.3916
  %shr80.i.3918 = lshr i128 %sub70.i.3911, 64
  %add84.i.3919 = add i128 %sub74.i.3914, %shr80.i.3918
  %shr90.i.3921 = lshr i128 %add84.i.3919, 64
  %add94.i.3922 = add nuw nsw i128 %add13.i.3880, %shr90.i.3921
  %shr100.i.3924 = lshr i128 %add94.i.3922, 64
  %add104.i.3925 = add nsw i128 %sub78.i.3917, %shr100.i.3924
  %conv.i.3931 = and i128 %sub70.i.i.3853, 18446744073709551615
  %conv2.i.3932 = and i128 %sub70.i.3911, 18446744073709551615
  %mul.i.3933 = mul nuw i128 %conv.i.3931, %conv2.i.3932
  %shr.i.3934 = lshr i128 %mul.i.3933, 64
  %conv5.i.3935 = and i128 %mul.i.3933, 18446744073709551615
  store i128 %conv5.i.3935, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3938 = and i128 %add84.i.3919, 18446744073709551615
  %mul13.i.3939 = mul nuw i128 %conv.i.3931, %conv12.i.3938
  %shr15.i.3940 = lshr i128 %mul13.i.3939, 64
  %conv17.i.3941 = and i128 %mul13.i.3939, 18446744073709551615
  %add.i.3942 = add nuw nsw i128 %conv17.i.3941, %shr.i.3934
  %conv22.i.3945 = and i128 %add84.i.i.3861, 18446744073709551615
  %mul25.i.3946 = mul nuw i128 %conv22.i.3945, %conv2.i.3932
  %shr27.i.3947 = lshr i128 %mul25.i.3946, 64
  %conv29.i.3948 = and i128 %mul25.i.3946, 18446744073709551615
  %add31.i.3949 = add nuw nsw i128 %add.i.3942, %conv29.i.3948
  store i128 %add31.i.3949, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.3952 = and i128 %add94.i.3922, 18446744073709551615
  %mul39.i.3953 = mul nuw i128 %conv.i.3931, %conv38.i.3952
  %shr41.i.3954 = lshr i128 %mul39.i.3953, 64
  %conv43.i.3955 = and i128 %mul39.i.3953, 18446744073709551615
  %mul52.i.3958 = mul nuw i128 %conv22.i.3945, %conv12.i.3938
  %shr54.i.3959 = lshr i128 %mul52.i.3958, 64
  %conv56.i.3960 = and i128 %mul52.i.3958, 18446744073709551615
  %conv63.i.3964 = and i128 %add94.i.i.3864, 18446744073709551615
  %mul66.i.3965 = mul nuw i128 %conv63.i.3964, %conv2.i.3932
  %shr68.i.3966 = lshr i128 %mul66.i.3965, 64
  %conv70.i.3967 = and i128 %mul66.i.3965, 18446744073709551615
  %add34.i.3950 = add nuw nsw i128 %conv43.i.3955, %shr15.i.3940
  %add45.i.3956 = add nuw nsw i128 %add34.i.3950, %shr27.i.3947
  %add58.i.3961 = add nuw nsw i128 %add45.i.3956, %conv56.i.3960
  %add72.i.3968 = add nuw nsw i128 %add58.i.3961, %conv70.i.3967
  store i128 %add72.i.3968, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.3971 = and i128 %add104.i.3925, 18446744073709551615
  %mul80.i.3972 = mul nuw i128 %conv.i.3931, %conv79.i.3971
  %shr82.i.3973 = lshr i128 %mul80.i.3972, 64
  %conv84.i.3974 = and i128 %mul80.i.3972, 18446744073709551615
  %mul93.i.3977 = mul nuw i128 %conv22.i.3945, %conv38.i.3952
  %shr95.i.3978 = lshr i128 %mul93.i.3977, 64
  %conv97.i.3979 = and i128 %mul93.i.3977, 18446744073709551615
  %add102.i.3981 = add nuw nsw i128 %shr95.i.3978, %shr82.i.3973
  %mul107.i.3982 = mul nuw i128 %conv63.i.3964, %conv12.i.3938
  %shr109.i.3983 = lshr i128 %mul107.i.3982, 64
  %conv111.i.3984 = and i128 %mul107.i.3982, 18446744073709551615
  %conv118.i.3988 = and i128 %add104.i.i.3867, 18446744073709551615
  %mul121.i.3989 = mul nuw i128 %conv118.i.3988, %conv2.i.3932
  %shr123.i.3990 = lshr i128 %mul121.i.3989, 64
  %conv125.i.3991 = and i128 %mul121.i.3989, 18446744073709551615
  %add61.i.3962 = add nuw nsw i128 %conv84.i.3974, %shr41.i.3954
  %add75.i.3969 = add nuw nsw i128 %add61.i.3962, %shr54.i.3959
  %add86.i.3975 = add nuw nsw i128 %add75.i.3969, %conv97.i.3979
  %add99.i.3980 = add nuw nsw i128 %add86.i.3975, %shr68.i.3966
  %add113.i.3985 = add nuw nsw i128 %add99.i.3980, %conv111.i.3984
  %add127.i.3992 = add nuw nsw i128 %add113.i.3985, %conv125.i.3991
  store i128 %add127.i.3992, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.3994 = mul nuw i128 %conv22.i.3945, %conv79.i.3971
  %shr137.i.3995 = lshr i128 %mul135.i.3994, 64
  %conv139.i.3996 = and i128 %mul135.i.3994, 18446744073709551615
  %mul148.i.3999 = mul nuw i128 %conv63.i.3964, %conv38.i.3952
  %shr150.i.4000 = lshr i128 %mul148.i.3999, 64
  %conv152.i.4001 = and i128 %mul148.i.3999, 18446744073709551615
  %add157.i.4003 = add nuw nsw i128 %shr150.i.4000, %shr137.i.3995
  %mul162.i.4004 = mul nuw i128 %conv118.i.3988, %conv12.i.3938
  %shr164.i.4005 = lshr i128 %mul162.i.4004, 64
  %conv166.i.4006 = and i128 %mul162.i.4004, 18446744073709551615
  %add116.i.3986 = add nuw nsw i128 %add102.i.3981, %conv139.i.3996
  %add130.i.3993 = add nuw nsw i128 %add116.i.3986, %shr109.i.3983
  %add141.i.3997 = add nuw nsw i128 %add130.i.3993, %conv152.i.4001
  %add154.i.4002 = add nuw nsw i128 %add141.i.3997, %shr123.i.3990
  %add168.i.4007 = add nuw nsw i128 %add154.i.4002, %conv166.i.4006
  store i128 %add168.i.4007, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.4009 = mul nuw i128 %conv63.i.3964, %conv79.i.3971
  %shr178.i.4010 = lshr i128 %mul176.i.4009, 64
  %conv180.i.4011 = and i128 %mul176.i.4009, 18446744073709551615
  %mul189.i.4014 = mul nuw i128 %conv118.i.3988, %conv38.i.3952
  %shr191.i.4015 = lshr i128 %mul189.i.4014, 64
  %conv193.i.4016 = and i128 %mul189.i.4014, 18446744073709551615
  %add171.i.4008 = add nuw nsw i128 %add157.i.4003, %conv180.i.4011
  %add182.i.4012 = add nuw nsw i128 %add171.i.4008, %shr164.i.4005
  %add195.i.4017 = add nuw nsw i128 %add182.i.4012, %conv193.i.4016
  store i128 %add195.i.4017, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.4018 = add nuw nsw i128 %shr191.i.4015, %shr178.i.4010
  %mul203.i.4019 = mul nuw i128 %conv118.i.3988, %conv79.i.3971
  %shr205.i.4020 = lshr i128 %mul203.i.4019, 64
  %conv207.i.4021 = and i128 %mul203.i.4019, 18446744073709551615
  %add209.i.4022 = add nuw nsw i128 %add198.i.4018, %conv207.i.4021
  store i128 %add209.i.4022, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.4020, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.3770 = add nuw nsw i128 %conv5.i.3935, 1267650600228229401427983728624
  %add3.i.3772 = or i128 %add31.i.3949, 1267650600228229401496703205376
  %add6.i.3775 = add nuw nsw i128 %add72.i.3968, 1267650600228229401427983728656
  %add9.i.3778 = add i128 %add127.i.3992, 1267650600228229401427983728656
  %shl.i.i.3782 = shl nuw nsw i128 %add195.i.4017, 32
  %add.i.i.3783 = add i128 %shl.i.i.3782, %add168.i.4007
  %add3.i.i.3784 = add i128 %add.i.i.3783, %add.i.3770
  %sub.i.i.3785 = sub i128 %add9.i.3778, %add.i.i.3783
  %sub7.i.i.3787 = sub nsw i128 %add195.i.4017, %shr205.i.4020
  %add9.i.i.3788 = add nsw i128 %sub7.i.i.3787, %add3.i.3772
  %sub11.i.i.3789 = sub nsw i128 %add6.i.3775, %sub7.i.i.3787
  %shl13.i.i.3790 = shl i128 %add168.i.4007, 32
  %sub15.i.i.3791 = sub i128 %add9.i.i.3788, %shl13.i.i.3790
  %add19.i.i.3793 = add i128 %shl13.i.i.3790, %sub.i.i.3785
  %sub23.i.i.3795 = sub i128 %sub11.i.i.3789, %shl.i.i.3782
  %sub26.i.i.3797 = sub i128 %add3.i.i.3784, %add209.i.4022
  %shl28.i.i.3798 = shl nuw nsw i128 %add209.i.4022, 32
  %sub30.i.i.3799 = sub i128 %sub26.i.i.3797, %shl28.i.i.3798
  %shl32.i.i.3800 = shl nuw nsw i128 %add209.i.4022, 33
  %add34.i.i.3801 = add i128 %shl32.i.i.3800, %sub15.i.i.3791
  store i128 %add34.i.i.3801, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3802 = shl nuw nsw i128 %add209.i.4022, 1
  %add37.i.i.3803 = add i128 %mul.i.i.3802, %sub23.i.i.3795
  %sub41.i.i.3805 = sub i128 %add19.i.i.3793, %shl28.i.i.3798
  %sub44.i.i.3806 = sub i128 %sub30.i.i.3799, %shr205.i.4020
  %shl46.i.i.3807 = shl nuw nsw i128 %shr205.i.4020, 32
  %sub48.i.i.3808 = sub i128 %sub44.i.i.3806, %shl46.i.i.3807
  store i128 %sub48.i.i.3808, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3809 = shl nuw nsw i128 %shr205.i.4020, 33
  %add52.i.i.3810 = add i128 %shl50.i.i.3809, %add37.i.i.3803
  store i128 %add52.i.i.3810, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3811 = mul nuw nsw i128 %shr205.i.4020, 3
  %add56.i.i.3812 = add i128 %mul54.i.i.3811, %sub41.i.i.3805
  store i128 %add56.i.i.3812, i128* %arrayidx10.i, align 16, !tbaa !2
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.04439 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %63 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3678 = add i128 %63, 1267650600228229401427983728624
  %64 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.3680 = add i128 %64, 1267650600228229401496703205376
  %65 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.3683 = add i128 %65, 1267650600228229401427983728656
  %66 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.3686 = add i128 %66, 1267650600228229401427983728656
  %67 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %68 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.3690 = shl i128 %68, 32
  %add.i.i.3691 = add i128 %shl.i.i.3690, %67
  %add3.i.i.3692 = add i128 %add.i.i.3691, %add.i.3678
  %sub.i.i.3693 = sub i128 %add9.i.3686, %add.i.i.3691
  %69 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3695 = sub i128 %68, %69
  %add9.i.i.3696 = add i128 %sub7.i.i.3695, %add3.i.3680
  %sub11.i.i.3697 = sub i128 %add6.i.3683, %sub7.i.i.3695
  %shl13.i.i.3698 = shl i128 %67, 32
  %sub15.i.i.3699 = sub i128 %add9.i.i.3696, %shl13.i.i.3698
  %add19.i.i.3701 = add i128 %shl13.i.i.3698, %sub.i.i.3693
  %sub23.i.i.3703 = sub i128 %sub11.i.i.3697, %shl.i.i.3690
  %70 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3705 = sub i128 %add3.i.i.3692, %70
  %shl28.i.i.3706 = shl i128 %70, 32
  %sub30.i.i.3707 = sub i128 %sub26.i.i.3705, %shl28.i.i.3706
  %shl32.i.i.3708 = shl i128 %70, 33
  %add34.i.i.3709 = add i128 %shl32.i.i.3708, %sub15.i.i.3699
  store i128 %add34.i.i.3709, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3710 = shl i128 %70, 1
  %add37.i.i.3711 = add i128 %mul.i.i.3710, %sub23.i.i.3703
  %sub41.i.i.3713 = sub i128 %add19.i.i.3701, %shl28.i.i.3706
  %sub44.i.i.3714 = sub i128 %sub30.i.i.3707, %69
  %shl46.i.i.3715 = shl i128 %69, 32
  %sub48.i.i.3716 = sub i128 %sub44.i.i.3714, %shl46.i.i.3715
  store i128 %sub48.i.i.3716, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3717 = shl i128 %69, 33
  %add52.i.i.3718 = add i128 %shl50.i.i.3717, %add37.i.i.3711
  store i128 %add52.i.i.3718, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3719 = mul i128 %69, 3
  %add56.i.i.3720 = add i128 %mul54.i.i.3719, %sub41.i.i.3713
  store i128 %add56.i.i.3720, i128* %arrayidx10.i, align 16, !tbaa !2
  %inc = add nuw nsw i32 %i.04439, 1
  %exitcond4445 = icmp eq i32 %inc, 8
  br i1 %exitcond4445, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add56.i.i.3720.lcssa = phi i128 [ %add56.i.i.3720, %for.body ]
  %add52.i.i.3718.lcssa = phi i128 [ %add52.i.i.3718, %for.body ]
  %sub48.i.i.3716.lcssa = phi i128 [ %sub48.i.i.3716, %for.body ]
  %add34.i.i.3709.lcssa = phi i128 [ %add34.i.i.3709, %for.body ]
  %add.i.i.3471 = add i128 %add56.i.i.3720.lcssa, 18446744069414584320
  %shr.i.i.3473 = lshr i128 %add52.i.i.3718.lcssa, 64
  %add8.i.i.3474 = add i128 %add.i.i.3471, %shr.i.i.3473
  %conv12.i.i.3475 = and i128 %add52.i.i.3718.lcssa, 18446744073709551615
  %add13.i.i.3476 = add nuw nsw i128 %conv12.i.i.3475, 18446673704965373952
  %add16.i.i.3477 = add i128 %sub48.i.i.3716.lcssa, 18446744073709551615
  %add19.i.i.3479 = add i128 %add34.i.i.3709.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.3480 = lshr i128 %add8.i.i.3474, 64
  %conv23.i.i.3481 = trunc i128 %shr22.i.i.3480 to i64
  %conv26.i.i.3482 = and i128 %add8.i.i.3474, 18446744073709551615
  %sub.i.i.3483 = sub nsw i128 %conv26.i.i.3482, %shr22.i.i.3480
  %shl.i.i.3484 = shl nuw nsw i128 %shr22.i.i.3480, 32
  %add32.i.i.3485 = add nsw i128 %sub.i.i.3483, %shl.i.i.3484
  %shr34.i.i.3486 = lshr i128 %add32.i.i.3485, 64
  %conv35.i.i.3487 = trunc i128 %shr34.i.i.3486 to i64
  %add36.i.i.3488 = add i64 %conv35.i.i.3487, %conv23.i.i.3481
  %conv39.i.i.3489 = and i128 %add32.i.i.3485, 18446744073709551615
  %sub43.i.i.3490 = sub nsw i128 %conv39.i.i.3489, %shr34.i.i.3486
  %shl45.i.i.3491 = shl nuw nsw i128 %shr34.i.i.3486, 32
  %add47.i.i.3492 = add nsw i128 %sub43.i.i.3490, %shl45.i.i.3491
  %conv48.i.i.3493 = zext i64 %add36.i.i.3488 to i128
  %add50.i.i.3494 = add i128 %add16.i.i.3477, %conv48.i.i.3493
  %shl52.i.i.3495 = shl nuw nsw i128 %conv48.i.i.3493, 32
  %sub54.i.i.3496 = sub i128 %add19.i.i.3479, %shl52.i.i.3495
  %shr56.i.i.3497 = lshr i128 %add47.i.i.3492, 64
  %conv57.i.i.3498 = trunc i128 %shr56.i.i.3497 to i64
  %sub58.i.i.3499 = sub i64 0, %conv57.i.i.3498
  %conv60.i.i.3500 = trunc i128 %add47.i.i.3492 to i64
  %and.i.i.3501 = and i64 %conv60.i.i.3500, 9223372036854775807
  %neg.i.i.3502 = sub nsw i64 9223372032559808512, %and.i.i.3501
  %sub62177.i.i.3503 = and i64 %neg.i.i.3502, %conv60.i.i.3500
  %and66.i.i.3504 = ashr i64 %sub62177.i.i.3503, 63
  %or.i.i.3505 = or i64 %and66.i.i.3504, %sub58.i.i.3499
  %conv68.i.i.3506 = zext i64 %or.i.i.3505 to i128
  %sub70.i.i.3507 = sub i128 %add50.i.i.3494, %conv68.i.i.3506
  %and71.i.i.3508 = and i64 %or.i.i.3505, 4294967295
  %conv72.i.i.3509 = zext i64 %and71.i.i.3508 to i128
  %sub74.i.i.3510 = sub i128 %sub54.i.i.3496, %conv72.i.i.3509
  %and75.i.i.3511 = and i64 %or.i.i.3505, -4294967295
  %conv76.i.i.3512 = zext i64 %and75.i.i.3511 to i128
  %sub78.i.i.3513 = sub nsw i128 %add47.i.i.3492, %conv76.i.i.3512
  %shr80.i.i.3514 = lshr i128 %sub70.i.i.3507, 64
  %add84.i.i.3515 = add i128 %sub74.i.i.3510, %shr80.i.i.3514
  %shr90.i.i.3517 = lshr i128 %add84.i.i.3515, 64
  %add94.i.i.3518 = add nuw nsw i128 %add13.i.i.3476, %shr90.i.i.3517
  %shr100.i.i.3520 = lshr i128 %add94.i.i.3518, 64
  %add104.i.i.3521 = add nsw i128 %sub78.i.i.3513, %shr100.i.i.3520
  %add.i.3529 = add i128 %add56.i.i.3812, 18446744069414584320
  %shr.i.3531 = lshr i128 %add52.i.i.3810, 64
  %add8.i.3532 = add i128 %add.i.3529, %shr.i.3531
  %conv12.i.3533 = and i128 %add52.i.i.3810, 18446744073709551615
  %add13.i.3534 = add nuw nsw i128 %conv12.i.3533, 18446673704965373952
  %add16.i.3535 = add i128 %sub48.i.i.3808, 18446744073709551615
  %add19.i.3537 = add i128 %add34.i.i.3801, 1298074214633706907132628377272319
  %shr22.i.3538 = lshr i128 %add8.i.3532, 64
  %conv23.i.3539 = trunc i128 %shr22.i.3538 to i64
  %conv26.i.3540 = and i128 %add8.i.3532, 18446744073709551615
  %sub.i.3541 = sub nsw i128 %conv26.i.3540, %shr22.i.3538
  %shl.i.3542 = shl nuw nsw i128 %shr22.i.3538, 32
  %add32.i.3543 = add nsw i128 %sub.i.3541, %shl.i.3542
  %shr34.i.3544 = lshr i128 %add32.i.3543, 64
  %conv35.i.3545 = trunc i128 %shr34.i.3544 to i64
  %add36.i.3546 = add i64 %conv35.i.3545, %conv23.i.3539
  %conv39.i.3547 = and i128 %add32.i.3543, 18446744073709551615
  %sub43.i.3548 = sub nsw i128 %conv39.i.3547, %shr34.i.3544
  %shl45.i.3549 = shl nuw nsw i128 %shr34.i.3544, 32
  %add47.i.3550 = add nsw i128 %sub43.i.3548, %shl45.i.3549
  %conv48.i.3551 = zext i64 %add36.i.3546 to i128
  %add50.i.3552 = add i128 %add16.i.3535, %conv48.i.3551
  %shl52.i.3553 = shl nuw nsw i128 %conv48.i.3551, 32
  %sub54.i.3554 = sub i128 %add19.i.3537, %shl52.i.3553
  %shr56.i.3555 = lshr i128 %add47.i.3550, 64
  %conv57.i.3556 = trunc i128 %shr56.i.3555 to i64
  %sub58.i.3557 = sub i64 0, %conv57.i.3556
  %conv60.i.3558 = trunc i128 %add47.i.3550 to i64
  %and.i.3559 = and i64 %conv60.i.3558, 9223372036854775807
  %neg.i.3560 = sub nsw i64 9223372032559808512, %and.i.3559
  %sub62177.i.3561 = and i64 %neg.i.3560, %conv60.i.3558
  %and66.i.3562 = ashr i64 %sub62177.i.3561, 63
  %or.i.3563 = or i64 %and66.i.3562, %sub58.i.3557
  %conv68.i.3564 = zext i64 %or.i.3563 to i128
  %sub70.i.3565 = sub i128 %add50.i.3552, %conv68.i.3564
  %and71.i.3566 = and i64 %or.i.3563, 4294967295
  %conv72.i.3567 = zext i64 %and71.i.3566 to i128
  %sub74.i.3568 = sub i128 %sub54.i.3554, %conv72.i.3567
  %and75.i.3569 = and i64 %or.i.3563, -4294967295
  %conv76.i.3570 = zext i64 %and75.i.3569 to i128
  %sub78.i.3571 = sub nsw i128 %add47.i.3550, %conv76.i.3570
  %shr80.i.3572 = lshr i128 %sub70.i.3565, 64
  %add84.i.3573 = add i128 %sub74.i.3568, %shr80.i.3572
  %shr90.i.3575 = lshr i128 %add84.i.3573, 64
  %add94.i.3576 = add nuw nsw i128 %add13.i.3534, %shr90.i.3575
  %shr100.i.3578 = lshr i128 %add94.i.3576, 64
  %add104.i.3579 = add nsw i128 %sub78.i.3571, %shr100.i.3578
  %conv.i.3585 = and i128 %sub70.i.i.3507, 18446744073709551615
  %conv2.i.3586 = and i128 %sub70.i.3565, 18446744073709551615
  %mul.i.3587 = mul nuw i128 %conv.i.3585, %conv2.i.3586
  %shr.i.3588 = lshr i128 %mul.i.3587, 64
  %conv5.i.3589 = and i128 %mul.i.3587, 18446744073709551615
  store i128 %conv5.i.3589, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3592 = and i128 %add84.i.3573, 18446744073709551615
  %mul13.i.3593 = mul nuw i128 %conv.i.3585, %conv12.i.3592
  %shr15.i.3594 = lshr i128 %mul13.i.3593, 64
  %conv17.i.3595 = and i128 %mul13.i.3593, 18446744073709551615
  %add.i.3596 = add nuw nsw i128 %conv17.i.3595, %shr.i.3588
  %conv22.i.3599 = and i128 %add84.i.i.3515, 18446744073709551615
  %mul25.i.3600 = mul nuw i128 %conv22.i.3599, %conv2.i.3586
  %shr27.i.3601 = lshr i128 %mul25.i.3600, 64
  %conv29.i.3602 = and i128 %mul25.i.3600, 18446744073709551615
  %add31.i.3603 = add nuw nsw i128 %add.i.3596, %conv29.i.3602
  store i128 %add31.i.3603, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.3606 = and i128 %add94.i.3576, 18446744073709551615
  %mul39.i.3607 = mul nuw i128 %conv.i.3585, %conv38.i.3606
  %shr41.i.3608 = lshr i128 %mul39.i.3607, 64
  %conv43.i.3609 = and i128 %mul39.i.3607, 18446744073709551615
  %mul52.i.3612 = mul nuw i128 %conv22.i.3599, %conv12.i.3592
  %shr54.i.3613 = lshr i128 %mul52.i.3612, 64
  %conv56.i.3614 = and i128 %mul52.i.3612, 18446744073709551615
  %conv63.i.3618 = and i128 %add94.i.i.3518, 18446744073709551615
  %mul66.i.3619 = mul nuw i128 %conv63.i.3618, %conv2.i.3586
  %shr68.i.3620 = lshr i128 %mul66.i.3619, 64
  %conv70.i.3621 = and i128 %mul66.i.3619, 18446744073709551615
  %add34.i.3604 = add nuw nsw i128 %conv43.i.3609, %shr15.i.3594
  %add45.i.3610 = add nuw nsw i128 %add34.i.3604, %shr27.i.3601
  %add58.i.3615 = add nuw nsw i128 %add45.i.3610, %conv56.i.3614
  %add72.i.3622 = add nuw nsw i128 %add58.i.3615, %conv70.i.3621
  store i128 %add72.i.3622, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.3625 = and i128 %add104.i.3579, 18446744073709551615
  %mul80.i.3626 = mul nuw i128 %conv.i.3585, %conv79.i.3625
  %shr82.i.3627 = lshr i128 %mul80.i.3626, 64
  %conv84.i.3628 = and i128 %mul80.i.3626, 18446744073709551615
  %mul93.i.3631 = mul nuw i128 %conv22.i.3599, %conv38.i.3606
  %shr95.i.3632 = lshr i128 %mul93.i.3631, 64
  %conv97.i.3633 = and i128 %mul93.i.3631, 18446744073709551615
  %add102.i.3635 = add nuw nsw i128 %shr95.i.3632, %shr82.i.3627
  %mul107.i.3636 = mul nuw i128 %conv63.i.3618, %conv12.i.3592
  %shr109.i.3637 = lshr i128 %mul107.i.3636, 64
  %conv111.i.3638 = and i128 %mul107.i.3636, 18446744073709551615
  %conv118.i.3642 = and i128 %add104.i.i.3521, 18446744073709551615
  %mul121.i.3643 = mul nuw i128 %conv118.i.3642, %conv2.i.3586
  %shr123.i.3644 = lshr i128 %mul121.i.3643, 64
  %conv125.i.3645 = and i128 %mul121.i.3643, 18446744073709551615
  %add61.i.3616 = add nuw nsw i128 %conv84.i.3628, %shr41.i.3608
  %add75.i.3623 = add nuw nsw i128 %add61.i.3616, %shr54.i.3613
  %add86.i.3629 = add nuw nsw i128 %add75.i.3623, %conv97.i.3633
  %add99.i.3634 = add nuw nsw i128 %add86.i.3629, %shr68.i.3620
  %add113.i.3639 = add nuw nsw i128 %add99.i.3634, %conv111.i.3638
  %add127.i.3646 = add nuw nsw i128 %add113.i.3639, %conv125.i.3645
  store i128 %add127.i.3646, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.3648 = mul nuw i128 %conv22.i.3599, %conv79.i.3625
  %shr137.i.3649 = lshr i128 %mul135.i.3648, 64
  %conv139.i.3650 = and i128 %mul135.i.3648, 18446744073709551615
  %mul148.i.3653 = mul nuw i128 %conv63.i.3618, %conv38.i.3606
  %shr150.i.3654 = lshr i128 %mul148.i.3653, 64
  %conv152.i.3655 = and i128 %mul148.i.3653, 18446744073709551615
  %add157.i.3657 = add nuw nsw i128 %shr150.i.3654, %shr137.i.3649
  %mul162.i.3658 = mul nuw i128 %conv118.i.3642, %conv12.i.3592
  %shr164.i.3659 = lshr i128 %mul162.i.3658, 64
  %conv166.i.3660 = and i128 %mul162.i.3658, 18446744073709551615
  %add116.i.3640 = add nuw nsw i128 %add102.i.3635, %conv139.i.3650
  %add130.i.3647 = add nuw nsw i128 %add116.i.3640, %shr109.i.3637
  %add141.i.3651 = add nuw nsw i128 %add130.i.3647, %conv152.i.3655
  %add154.i.3656 = add nuw nsw i128 %add141.i.3651, %shr123.i.3644
  %add168.i.3661 = add nuw nsw i128 %add154.i.3656, %conv166.i.3660
  store i128 %add168.i.3661, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.3663 = mul nuw i128 %conv63.i.3618, %conv79.i.3625
  %shr178.i.3664 = lshr i128 %mul176.i.3663, 64
  %conv180.i.3665 = and i128 %mul176.i.3663, 18446744073709551615
  %mul189.i.3668 = mul nuw i128 %conv118.i.3642, %conv38.i.3606
  %shr191.i.3669 = lshr i128 %mul189.i.3668, 64
  %conv193.i.3670 = and i128 %mul189.i.3668, 18446744073709551615
  %add171.i.3662 = add nuw nsw i128 %add157.i.3657, %conv180.i.3665
  %add182.i.3666 = add nuw nsw i128 %add171.i.3662, %shr164.i.3659
  %add195.i.3671 = add nuw nsw i128 %add182.i.3666, %conv193.i.3670
  store i128 %add195.i.3671, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.3672 = add nuw nsw i128 %shr191.i.3669, %shr178.i.3664
  %mul203.i.3673 = mul nuw i128 %conv118.i.3642, %conv79.i.3625
  %shr205.i.3674 = lshr i128 %mul203.i.3673, 64
  %conv207.i.3675 = and i128 %mul203.i.3673, 18446744073709551615
  %add209.i.3676 = add nuw nsw i128 %add198.i.3672, %conv207.i.3675
  store i128 %add209.i.3676, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.3674, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.3424 = add nuw nsw i128 %conv5.i.3589, 1267650600228229401427983728624
  %add3.i.3426 = or i128 %add31.i.3603, 1267650600228229401496703205376
  %add6.i.3429 = add nuw nsw i128 %add72.i.3622, 1267650600228229401427983728656
  %add9.i.3432 = add i128 %add127.i.3646, 1267650600228229401427983728656
  %shl.i.i.3436 = shl nuw nsw i128 %add195.i.3671, 32
  %add.i.i.3437 = add i128 %shl.i.i.3436, %add168.i.3661
  %add3.i.i.3438 = add i128 %add.i.i.3437, %add.i.3424
  %sub.i.i.3439 = sub i128 %add9.i.3432, %add.i.i.3437
  %sub7.i.i.3441 = sub nsw i128 %add195.i.3671, %shr205.i.3674
  %add9.i.i.3442 = add nsw i128 %sub7.i.i.3441, %add3.i.3426
  %sub11.i.i.3443 = sub nsw i128 %add6.i.3429, %sub7.i.i.3441
  %shl13.i.i.3444 = shl i128 %add168.i.3661, 32
  %sub15.i.i.3445 = sub i128 %add9.i.i.3442, %shl13.i.i.3444
  %add19.i.i.3447 = add i128 %shl13.i.i.3444, %sub.i.i.3439
  %sub23.i.i.3449 = sub i128 %sub11.i.i.3443, %shl.i.i.3436
  %sub26.i.i.3451 = sub i128 %add3.i.i.3438, %add209.i.3676
  %shl28.i.i.3452 = shl nuw nsw i128 %add209.i.3676, 32
  %sub30.i.i.3453 = sub i128 %sub26.i.i.3451, %shl28.i.i.3452
  %shl32.i.i.3454 = shl nuw nsw i128 %add209.i.3676, 33
  %add34.i.i.3455 = add i128 %shl32.i.i.3454, %sub15.i.i.3445
  store i128 %add34.i.i.3455, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3456 = shl nuw nsw i128 %add209.i.3676, 1
  %add37.i.i.3457 = add i128 %mul.i.i.3456, %sub23.i.i.3449
  %sub41.i.i.3459 = sub i128 %add19.i.i.3447, %shl28.i.i.3452
  %sub44.i.i.3460 = sub i128 %sub30.i.i.3453, %shr205.i.3674
  %shl46.i.i.3461 = shl nuw nsw i128 %shr205.i.3674, 32
  %sub48.i.i.3462 = sub i128 %sub44.i.i.3460, %shl46.i.i.3461
  store i128 %sub48.i.i.3462, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3463 = shl nuw nsw i128 %shr205.i.3674, 33
  %add52.i.i.3464 = add i128 %shl50.i.i.3463, %add37.i.i.3457
  store i128 %add52.i.i.3464, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3465 = mul nuw nsw i128 %shr205.i.3674, 3
  %add56.i.i.3466 = add i128 %mul54.i.i.3465, %sub41.i.i.3459
  store i128 %add56.i.i.3466, i128* %arrayidx10.i, align 16, !tbaa !2
  br label %for.body.61

for.body.61:                                      ; preds = %for.body.61, %for.end
  %i.14438 = phi i32 [ 0, %for.end ], [ %inc67, %for.body.61 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %71 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.3332 = add i128 %71, 1267650600228229401427983728624
  %72 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.3334 = add i128 %72, 1267650600228229401496703205376
  %73 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.3337 = add i128 %73, 1267650600228229401427983728656
  %74 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.3340 = add i128 %74, 1267650600228229401427983728656
  %75 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %76 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.3344 = shl i128 %76, 32
  %add.i.i.3345 = add i128 %shl.i.i.3344, %75
  %add3.i.i.3346 = add i128 %add.i.i.3345, %add.i.3332
  %sub.i.i.3347 = sub i128 %add9.i.3340, %add.i.i.3345
  %77 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3349 = sub i128 %76, %77
  %add9.i.i.3350 = add i128 %sub7.i.i.3349, %add3.i.3334
  %sub11.i.i.3351 = sub i128 %add6.i.3337, %sub7.i.i.3349
  %shl13.i.i.3352 = shl i128 %75, 32
  %sub15.i.i.3353 = sub i128 %add9.i.i.3350, %shl13.i.i.3352
  %add19.i.i.3355 = add i128 %shl13.i.i.3352, %sub.i.i.3347
  %sub23.i.i.3357 = sub i128 %sub11.i.i.3351, %shl.i.i.3344
  %78 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3359 = sub i128 %add3.i.i.3346, %78
  %shl28.i.i.3360 = shl i128 %78, 32
  %sub30.i.i.3361 = sub i128 %sub26.i.i.3359, %shl28.i.i.3360
  %shl32.i.i.3362 = shl i128 %78, 33
  %add34.i.i.3363 = add i128 %shl32.i.i.3362, %sub15.i.i.3353
  store i128 %add34.i.i.3363, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3364 = shl i128 %78, 1
  %add37.i.i.3365 = add i128 %mul.i.i.3364, %sub23.i.i.3357
  %sub41.i.i.3367 = sub i128 %add19.i.i.3355, %shl28.i.i.3360
  %sub44.i.i.3368 = sub i128 %sub30.i.i.3361, %77
  %shl46.i.i.3369 = shl i128 %77, 32
  %sub48.i.i.3370 = sub i128 %sub44.i.i.3368, %shl46.i.i.3369
  store i128 %sub48.i.i.3370, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3371 = shl i128 %77, 33
  %add52.i.i.3372 = add i128 %shl50.i.i.3371, %add37.i.i.3365
  store i128 %add52.i.i.3372, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3373 = mul i128 %77, 3
  %add56.i.i.3374 = add i128 %mul54.i.i.3373, %sub41.i.i.3367
  store i128 %add56.i.i.3374, i128* %arrayidx10.i, align 16, !tbaa !2
  %inc67 = add nuw nsw i32 %i.14438, 1
  %exitcond4444 = icmp eq i32 %inc67, 16
  br i1 %exitcond4444, label %for.end.68, label %for.body.61

for.end.68:                                       ; preds = %for.body.61
  %add56.i.i.3374.lcssa = phi i128 [ %add56.i.i.3374, %for.body.61 ]
  %add52.i.i.3372.lcssa = phi i128 [ %add52.i.i.3372, %for.body.61 ]
  %sub48.i.i.3370.lcssa = phi i128 [ %sub48.i.i.3370, %for.body.61 ]
  %add34.i.i.3363.lcssa = phi i128 [ %add34.i.i.3363, %for.body.61 ]
  %add.i.i.3125 = add i128 %add56.i.i.3374.lcssa, 18446744069414584320
  %shr.i.i.3127 = lshr i128 %add52.i.i.3372.lcssa, 64
  %add8.i.i.3128 = add i128 %add.i.i.3125, %shr.i.i.3127
  %conv12.i.i.3129 = and i128 %add52.i.i.3372.lcssa, 18446744073709551615
  %add13.i.i.3130 = add nuw nsw i128 %conv12.i.i.3129, 18446673704965373952
  %add16.i.i.3131 = add i128 %sub48.i.i.3370.lcssa, 18446744073709551615
  %add19.i.i.3133 = add i128 %add34.i.i.3363.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.3134 = lshr i128 %add8.i.i.3128, 64
  %conv23.i.i.3135 = trunc i128 %shr22.i.i.3134 to i64
  %conv26.i.i.3136 = and i128 %add8.i.i.3128, 18446744073709551615
  %sub.i.i.3137 = sub nsw i128 %conv26.i.i.3136, %shr22.i.i.3134
  %shl.i.i.3138 = shl nuw nsw i128 %shr22.i.i.3134, 32
  %add32.i.i.3139 = add nsw i128 %sub.i.i.3137, %shl.i.i.3138
  %shr34.i.i.3140 = lshr i128 %add32.i.i.3139, 64
  %conv35.i.i.3141 = trunc i128 %shr34.i.i.3140 to i64
  %add36.i.i.3142 = add i64 %conv35.i.i.3141, %conv23.i.i.3135
  %conv39.i.i.3143 = and i128 %add32.i.i.3139, 18446744073709551615
  %sub43.i.i.3144 = sub nsw i128 %conv39.i.i.3143, %shr34.i.i.3140
  %shl45.i.i.3145 = shl nuw nsw i128 %shr34.i.i.3140, 32
  %add47.i.i.3146 = add nsw i128 %sub43.i.i.3144, %shl45.i.i.3145
  %conv48.i.i.3147 = zext i64 %add36.i.i.3142 to i128
  %add50.i.i.3148 = add i128 %add16.i.i.3131, %conv48.i.i.3147
  %shl52.i.i.3149 = shl nuw nsw i128 %conv48.i.i.3147, 32
  %sub54.i.i.3150 = sub i128 %add19.i.i.3133, %shl52.i.i.3149
  %shr56.i.i.3151 = lshr i128 %add47.i.i.3146, 64
  %conv57.i.i.3152 = trunc i128 %shr56.i.i.3151 to i64
  %sub58.i.i.3153 = sub i64 0, %conv57.i.i.3152
  %conv60.i.i.3154 = trunc i128 %add47.i.i.3146 to i64
  %and.i.i.3155 = and i64 %conv60.i.i.3154, 9223372036854775807
  %neg.i.i.3156 = sub nsw i64 9223372032559808512, %and.i.i.3155
  %sub62177.i.i.3157 = and i64 %neg.i.i.3156, %conv60.i.i.3154
  %and66.i.i.3158 = ashr i64 %sub62177.i.i.3157, 63
  %or.i.i.3159 = or i64 %and66.i.i.3158, %sub58.i.i.3153
  %conv68.i.i.3160 = zext i64 %or.i.i.3159 to i128
  %sub70.i.i.3161 = sub i128 %add50.i.i.3148, %conv68.i.i.3160
  %and71.i.i.3162 = and i64 %or.i.i.3159, 4294967295
  %conv72.i.i.3163 = zext i64 %and71.i.i.3162 to i128
  %sub74.i.i.3164 = sub i128 %sub54.i.i.3150, %conv72.i.i.3163
  %and75.i.i.3165 = and i64 %or.i.i.3159, -4294967295
  %conv76.i.i.3166 = zext i64 %and75.i.i.3165 to i128
  %sub78.i.i.3167 = sub nsw i128 %add47.i.i.3146, %conv76.i.i.3166
  %shr80.i.i.3168 = lshr i128 %sub70.i.i.3161, 64
  %add84.i.i.3169 = add i128 %sub74.i.i.3164, %shr80.i.i.3168
  %shr90.i.i.3171 = lshr i128 %add84.i.i.3169, 64
  %add94.i.i.3172 = add nuw nsw i128 %add13.i.i.3130, %shr90.i.i.3171
  %shr100.i.i.3174 = lshr i128 %add94.i.i.3172, 64
  %add104.i.i.3175 = add nsw i128 %sub78.i.i.3167, %shr100.i.i.3174
  %add.i.3183 = add i128 %add56.i.i.3466, 18446744069414584320
  %shr.i.3185 = lshr i128 %add52.i.i.3464, 64
  %add8.i.3186 = add i128 %add.i.3183, %shr.i.3185
  %conv12.i.3187 = and i128 %add52.i.i.3464, 18446744073709551615
  %add13.i.3188 = add nuw nsw i128 %conv12.i.3187, 18446673704965373952
  %add16.i.3189 = add i128 %sub48.i.i.3462, 18446744073709551615
  %add19.i.3191 = add i128 %add34.i.i.3455, 1298074214633706907132628377272319
  %shr22.i.3192 = lshr i128 %add8.i.3186, 64
  %conv23.i.3193 = trunc i128 %shr22.i.3192 to i64
  %conv26.i.3194 = and i128 %add8.i.3186, 18446744073709551615
  %sub.i.3195 = sub nsw i128 %conv26.i.3194, %shr22.i.3192
  %shl.i.3196 = shl nuw nsw i128 %shr22.i.3192, 32
  %add32.i.3197 = add nsw i128 %sub.i.3195, %shl.i.3196
  %shr34.i.3198 = lshr i128 %add32.i.3197, 64
  %conv35.i.3199 = trunc i128 %shr34.i.3198 to i64
  %add36.i.3200 = add i64 %conv35.i.3199, %conv23.i.3193
  %conv39.i.3201 = and i128 %add32.i.3197, 18446744073709551615
  %sub43.i.3202 = sub nsw i128 %conv39.i.3201, %shr34.i.3198
  %shl45.i.3203 = shl nuw nsw i128 %shr34.i.3198, 32
  %add47.i.3204 = add nsw i128 %sub43.i.3202, %shl45.i.3203
  %conv48.i.3205 = zext i64 %add36.i.3200 to i128
  %add50.i.3206 = add i128 %add16.i.3189, %conv48.i.3205
  %shl52.i.3207 = shl nuw nsw i128 %conv48.i.3205, 32
  %sub54.i.3208 = sub i128 %add19.i.3191, %shl52.i.3207
  %shr56.i.3209 = lshr i128 %add47.i.3204, 64
  %conv57.i.3210 = trunc i128 %shr56.i.3209 to i64
  %sub58.i.3211 = sub i64 0, %conv57.i.3210
  %conv60.i.3212 = trunc i128 %add47.i.3204 to i64
  %and.i.3213 = and i64 %conv60.i.3212, 9223372036854775807
  %neg.i.3214 = sub nsw i64 9223372032559808512, %and.i.3213
  %sub62177.i.3215 = and i64 %neg.i.3214, %conv60.i.3212
  %and66.i.3216 = ashr i64 %sub62177.i.3215, 63
  %or.i.3217 = or i64 %and66.i.3216, %sub58.i.3211
  %conv68.i.3218 = zext i64 %or.i.3217 to i128
  %sub70.i.3219 = sub i128 %add50.i.3206, %conv68.i.3218
  %and71.i.3220 = and i64 %or.i.3217, 4294967295
  %conv72.i.3221 = zext i64 %and71.i.3220 to i128
  %sub74.i.3222 = sub i128 %sub54.i.3208, %conv72.i.3221
  %and75.i.3223 = and i64 %or.i.3217, -4294967295
  %conv76.i.3224 = zext i64 %and75.i.3223 to i128
  %sub78.i.3225 = sub nsw i128 %add47.i.3204, %conv76.i.3224
  %shr80.i.3226 = lshr i128 %sub70.i.3219, 64
  %add84.i.3227 = add i128 %sub74.i.3222, %shr80.i.3226
  %shr90.i.3229 = lshr i128 %add84.i.3227, 64
  %add94.i.3230 = add nuw nsw i128 %add13.i.3188, %shr90.i.3229
  %shr100.i.3232 = lshr i128 %add94.i.3230, 64
  %add104.i.3233 = add nsw i128 %sub78.i.3225, %shr100.i.3232
  %conv.i.3239 = and i128 %sub70.i.i.3161, 18446744073709551615
  %conv2.i.3240 = and i128 %sub70.i.3219, 18446744073709551615
  %mul.i.3241 = mul nuw i128 %conv.i.3239, %conv2.i.3240
  %shr.i.3242 = lshr i128 %mul.i.3241, 64
  %conv5.i.3243 = and i128 %mul.i.3241, 18446744073709551615
  store i128 %conv5.i.3243, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.3246 = and i128 %add84.i.3227, 18446744073709551615
  %mul13.i.3247 = mul nuw i128 %conv.i.3239, %conv12.i.3246
  %shr15.i.3248 = lshr i128 %mul13.i.3247, 64
  %conv17.i.3249 = and i128 %mul13.i.3247, 18446744073709551615
  %add.i.3250 = add nuw nsw i128 %conv17.i.3249, %shr.i.3242
  %conv22.i.3253 = and i128 %add84.i.i.3169, 18446744073709551615
  %mul25.i.3254 = mul nuw i128 %conv22.i.3253, %conv2.i.3240
  %shr27.i.3255 = lshr i128 %mul25.i.3254, 64
  %conv29.i.3256 = and i128 %mul25.i.3254, 18446744073709551615
  %add31.i.3257 = add nuw nsw i128 %add.i.3250, %conv29.i.3256
  store i128 %add31.i.3257, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.3260 = and i128 %add94.i.3230, 18446744073709551615
  %mul39.i.3261 = mul nuw i128 %conv.i.3239, %conv38.i.3260
  %shr41.i.3262 = lshr i128 %mul39.i.3261, 64
  %conv43.i.3263 = and i128 %mul39.i.3261, 18446744073709551615
  %mul52.i.3266 = mul nuw i128 %conv22.i.3253, %conv12.i.3246
  %shr54.i.3267 = lshr i128 %mul52.i.3266, 64
  %conv56.i.3268 = and i128 %mul52.i.3266, 18446744073709551615
  %conv63.i.3272 = and i128 %add94.i.i.3172, 18446744073709551615
  %mul66.i.3273 = mul nuw i128 %conv63.i.3272, %conv2.i.3240
  %shr68.i.3274 = lshr i128 %mul66.i.3273, 64
  %conv70.i.3275 = and i128 %mul66.i.3273, 18446744073709551615
  %add34.i.3258 = add nuw nsw i128 %conv43.i.3263, %shr15.i.3248
  %add45.i.3264 = add nuw nsw i128 %add34.i.3258, %shr27.i.3255
  %add58.i.3269 = add nuw nsw i128 %add45.i.3264, %conv56.i.3268
  %add72.i.3276 = add nuw nsw i128 %add58.i.3269, %conv70.i.3275
  store i128 %add72.i.3276, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.3279 = and i128 %add104.i.3233, 18446744073709551615
  %mul80.i.3280 = mul nuw i128 %conv.i.3239, %conv79.i.3279
  %shr82.i.3281 = lshr i128 %mul80.i.3280, 64
  %conv84.i.3282 = and i128 %mul80.i.3280, 18446744073709551615
  %mul93.i.3285 = mul nuw i128 %conv22.i.3253, %conv38.i.3260
  %shr95.i.3286 = lshr i128 %mul93.i.3285, 64
  %conv97.i.3287 = and i128 %mul93.i.3285, 18446744073709551615
  %add102.i.3289 = add nuw nsw i128 %shr95.i.3286, %shr82.i.3281
  %mul107.i.3290 = mul nuw i128 %conv63.i.3272, %conv12.i.3246
  %shr109.i.3291 = lshr i128 %mul107.i.3290, 64
  %conv111.i.3292 = and i128 %mul107.i.3290, 18446744073709551615
  %conv118.i.3296 = and i128 %add104.i.i.3175, 18446744073709551615
  %mul121.i.3297 = mul nuw i128 %conv118.i.3296, %conv2.i.3240
  %shr123.i.3298 = lshr i128 %mul121.i.3297, 64
  %conv125.i.3299 = and i128 %mul121.i.3297, 18446744073709551615
  %add61.i.3270 = add nuw nsw i128 %conv84.i.3282, %shr41.i.3262
  %add75.i.3277 = add nuw nsw i128 %add61.i.3270, %shr54.i.3267
  %add86.i.3283 = add nuw nsw i128 %add75.i.3277, %conv97.i.3287
  %add99.i.3288 = add nuw nsw i128 %add86.i.3283, %shr68.i.3274
  %add113.i.3293 = add nuw nsw i128 %add99.i.3288, %conv111.i.3292
  %add127.i.3300 = add nuw nsw i128 %add113.i.3293, %conv125.i.3299
  store i128 %add127.i.3300, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.3302 = mul nuw i128 %conv22.i.3253, %conv79.i.3279
  %shr137.i.3303 = lshr i128 %mul135.i.3302, 64
  %conv139.i.3304 = and i128 %mul135.i.3302, 18446744073709551615
  %mul148.i.3307 = mul nuw i128 %conv63.i.3272, %conv38.i.3260
  %shr150.i.3308 = lshr i128 %mul148.i.3307, 64
  %conv152.i.3309 = and i128 %mul148.i.3307, 18446744073709551615
  %add157.i.3311 = add nuw nsw i128 %shr150.i.3308, %shr137.i.3303
  %mul162.i.3312 = mul nuw i128 %conv118.i.3296, %conv12.i.3246
  %shr164.i.3313 = lshr i128 %mul162.i.3312, 64
  %conv166.i.3314 = and i128 %mul162.i.3312, 18446744073709551615
  %add116.i.3294 = add nuw nsw i128 %add102.i.3289, %conv139.i.3304
  %add130.i.3301 = add nuw nsw i128 %add116.i.3294, %shr109.i.3291
  %add141.i.3305 = add nuw nsw i128 %add130.i.3301, %conv152.i.3309
  %add154.i.3310 = add nuw nsw i128 %add141.i.3305, %shr123.i.3298
  %add168.i.3315 = add nuw nsw i128 %add154.i.3310, %conv166.i.3314
  store i128 %add168.i.3315, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.3317 = mul nuw i128 %conv63.i.3272, %conv79.i.3279
  %shr178.i.3318 = lshr i128 %mul176.i.3317, 64
  %conv180.i.3319 = and i128 %mul176.i.3317, 18446744073709551615
  %mul189.i.3322 = mul nuw i128 %conv118.i.3296, %conv38.i.3260
  %shr191.i.3323 = lshr i128 %mul189.i.3322, 64
  %conv193.i.3324 = and i128 %mul189.i.3322, 18446744073709551615
  %add171.i.3316 = add nuw nsw i128 %add157.i.3311, %conv180.i.3319
  %add182.i.3320 = add nuw nsw i128 %add171.i.3316, %shr164.i.3313
  %add195.i.3325 = add nuw nsw i128 %add182.i.3320, %conv193.i.3324
  store i128 %add195.i.3325, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.3326 = add nuw nsw i128 %shr191.i.3323, %shr178.i.3318
  %mul203.i.3327 = mul nuw i128 %conv118.i.3296, %conv79.i.3279
  %shr205.i.3328 = lshr i128 %mul203.i.3327, 64
  %conv207.i.3329 = and i128 %mul203.i.3327, 18446744073709551615
  %add209.i.3330 = add nuw nsw i128 %add198.i.3326, %conv207.i.3329
  store i128 %add209.i.3330, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.3328, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.3078 = add nuw nsw i128 %conv5.i.3243, 1267650600228229401427983728624
  %add3.i.3080 = or i128 %add31.i.3257, 1267650600228229401496703205376
  %add6.i.3083 = add nuw nsw i128 %add72.i.3276, 1267650600228229401427983728656
  %add9.i.3086 = add i128 %add127.i.3300, 1267650600228229401427983728656
  %shl.i.i.3090 = shl nuw nsw i128 %add195.i.3325, 32
  %add.i.i.3091 = add i128 %shl.i.i.3090, %add168.i.3315
  %add3.i.i.3092 = add i128 %add.i.i.3091, %add.i.3078
  %sub.i.i.3093 = sub i128 %add9.i.3086, %add.i.i.3091
  %sub7.i.i.3095 = sub nsw i128 %add195.i.3325, %shr205.i.3328
  %add9.i.i.3096 = add nsw i128 %sub7.i.i.3095, %add3.i.3080
  %sub11.i.i.3097 = sub nsw i128 %add6.i.3083, %sub7.i.i.3095
  %shl13.i.i.3098 = shl i128 %add168.i.3315, 32
  %sub15.i.i.3099 = sub i128 %add9.i.i.3096, %shl13.i.i.3098
  %add19.i.i.3101 = add i128 %shl13.i.i.3098, %sub.i.i.3093
  %sub23.i.i.3103 = sub i128 %sub11.i.i.3097, %shl.i.i.3090
  %sub26.i.i.3105 = sub i128 %add3.i.i.3092, %add209.i.3330
  %shl28.i.i.3106 = shl nuw nsw i128 %add209.i.3330, 32
  %sub30.i.i.3107 = sub i128 %sub26.i.i.3105, %shl28.i.i.3106
  %shl32.i.i.3108 = shl nuw nsw i128 %add209.i.3330, 33
  %add34.i.i.3109 = add i128 %shl32.i.i.3108, %sub15.i.i.3099
  store i128 %add34.i.i.3109, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3110 = shl nuw nsw i128 %add209.i.3330, 1
  %add37.i.i.3111 = add i128 %mul.i.i.3110, %sub23.i.i.3103
  %sub41.i.i.3113 = sub i128 %add19.i.i.3101, %shl28.i.i.3106
  %sub44.i.i.3114 = sub i128 %sub30.i.i.3107, %shr205.i.3328
  %shl46.i.i.3115 = shl nuw nsw i128 %shr205.i.3328, 32
  %sub48.i.i.3116 = sub i128 %sub44.i.i.3114, %shl46.i.i.3115
  store i128 %sub48.i.i.3116, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3117 = shl nuw nsw i128 %shr205.i.3328, 33
  %add52.i.i.3118 = add i128 %shl50.i.i.3117, %add37.i.i.3111
  store i128 %add52.i.i.3118, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3119 = mul nuw nsw i128 %shr205.i.3328, 3
  %add56.i.i.3120 = add i128 %mul54.i.i.3119, %sub41.i.i.3113
  store i128 %add56.i.i.3120, i128* %arrayidx10.i, align 16, !tbaa !2
  br label %for.body.78

for.body.78:                                      ; preds = %for.body.78, %for.end.68
  %i.24437 = phi i32 [ 0, %for.end.68 ], [ %inc84, %for.body.78 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %79 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2986 = add i128 %79, 1267650600228229401427983728624
  %80 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.2988 = add i128 %80, 1267650600228229401496703205376
  %81 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.2991 = add i128 %81, 1267650600228229401427983728656
  %82 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.2994 = add i128 %82, 1267650600228229401427983728656
  %83 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %84 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.2998 = shl i128 %84, 32
  %add.i.i.2999 = add i128 %shl.i.i.2998, %83
  %add3.i.i.3000 = add i128 %add.i.i.2999, %add.i.2986
  %sub.i.i.3001 = sub i128 %add9.i.2994, %add.i.i.2999
  %85 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.3003 = sub i128 %84, %85
  %add9.i.i.3004 = add i128 %sub7.i.i.3003, %add3.i.2988
  %sub11.i.i.3005 = sub i128 %add6.i.2991, %sub7.i.i.3003
  %shl13.i.i.3006 = shl i128 %83, 32
  %sub15.i.i.3007 = sub i128 %add9.i.i.3004, %shl13.i.i.3006
  %add19.i.i.3009 = add i128 %shl13.i.i.3006, %sub.i.i.3001
  %sub23.i.i.3011 = sub i128 %sub11.i.i.3005, %shl.i.i.2998
  %86 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.3013 = sub i128 %add3.i.i.3000, %86
  %shl28.i.i.3014 = shl i128 %86, 32
  %sub30.i.i.3015 = sub i128 %sub26.i.i.3013, %shl28.i.i.3014
  %shl32.i.i.3016 = shl i128 %86, 33
  %add34.i.i.3017 = add i128 %shl32.i.i.3016, %sub15.i.i.3007
  store i128 %add34.i.i.3017, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.3018 = shl i128 %86, 1
  %add37.i.i.3019 = add i128 %mul.i.i.3018, %sub23.i.i.3011
  %sub41.i.i.3021 = sub i128 %add19.i.i.3009, %shl28.i.i.3014
  %sub44.i.i.3022 = sub i128 %sub30.i.i.3015, %85
  %shl46.i.i.3023 = shl i128 %85, 32
  %sub48.i.i.3024 = sub i128 %sub44.i.i.3022, %shl46.i.i.3023
  store i128 %sub48.i.i.3024, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.3025 = shl i128 %85, 33
  %add52.i.i.3026 = add i128 %shl50.i.i.3025, %add37.i.i.3019
  store i128 %add52.i.i.3026, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.3027 = mul i128 %85, 3
  %add56.i.i.3028 = add i128 %mul54.i.i.3027, %sub41.i.i.3021
  store i128 %add56.i.i.3028, i128* %arrayidx10.i, align 16, !tbaa !2
  %inc84 = add nuw nsw i32 %i.24437, 1
  %exitcond4443 = icmp eq i32 %inc84, 32
  br i1 %exitcond4443, label %for.end.85, label %for.body.78

for.end.85:                                       ; preds = %for.body.78
  %add56.i.i.3028.lcssa = phi i128 [ %add56.i.i.3028, %for.body.78 ]
  %add52.i.i.3026.lcssa = phi i128 [ %add52.i.i.3026, %for.body.78 ]
  %sub48.i.i.3024.lcssa = phi i128 [ %sub48.i.i.3024, %for.body.78 ]
  %add34.i.i.3017.lcssa = phi i128 [ %add34.i.i.3017, %for.body.78 ]
  %add.i.i.2773 = add i128 %add56.i.i.3028.lcssa, 18446744069414584320
  %shr.i.i.2775 = lshr i128 %add52.i.i.3026.lcssa, 64
  %add8.i.i.2776 = add i128 %add.i.i.2773, %shr.i.i.2775
  %conv12.i.i.2777 = and i128 %add52.i.i.3026.lcssa, 18446744073709551615
  %add13.i.i.2778 = add nuw nsw i128 %conv12.i.i.2777, 18446673704965373952
  %add16.i.i.2779 = add i128 %sub48.i.i.3024.lcssa, 18446744073709551615
  %add19.i.i.2781 = add i128 %add34.i.i.3017.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.2782 = lshr i128 %add8.i.i.2776, 64
  %conv23.i.i.2783 = trunc i128 %shr22.i.i.2782 to i64
  %conv26.i.i.2784 = and i128 %add8.i.i.2776, 18446744073709551615
  %sub.i.i.2785 = sub nsw i128 %conv26.i.i.2784, %shr22.i.i.2782
  %shl.i.i.2786 = shl nuw nsw i128 %shr22.i.i.2782, 32
  %add32.i.i.2787 = add nsw i128 %sub.i.i.2785, %shl.i.i.2786
  %shr34.i.i.2788 = lshr i128 %add32.i.i.2787, 64
  %conv35.i.i.2789 = trunc i128 %shr34.i.i.2788 to i64
  %add36.i.i.2790 = add i64 %conv35.i.i.2789, %conv23.i.i.2783
  %conv39.i.i.2791 = and i128 %add32.i.i.2787, 18446744073709551615
  %sub43.i.i.2792 = sub nsw i128 %conv39.i.i.2791, %shr34.i.i.2788
  %shl45.i.i.2793 = shl nuw nsw i128 %shr34.i.i.2788, 32
  %add47.i.i.2794 = add nsw i128 %sub43.i.i.2792, %shl45.i.i.2793
  %conv48.i.i.2795 = zext i64 %add36.i.i.2790 to i128
  %add50.i.i.2796 = add i128 %add16.i.i.2779, %conv48.i.i.2795
  %shl52.i.i.2797 = shl nuw nsw i128 %conv48.i.i.2795, 32
  %sub54.i.i.2798 = sub i128 %add19.i.i.2781, %shl52.i.i.2797
  %shr56.i.i.2799 = lshr i128 %add47.i.i.2794, 64
  %conv57.i.i.2800 = trunc i128 %shr56.i.i.2799 to i64
  %sub58.i.i.2801 = sub i64 0, %conv57.i.i.2800
  %conv60.i.i.2802 = trunc i128 %add47.i.i.2794 to i64
  %and.i.i.2803 = and i64 %conv60.i.i.2802, 9223372036854775807
  %neg.i.i.2804 = sub nsw i64 9223372032559808512, %and.i.i.2803
  %sub62177.i.i.2805 = and i64 %neg.i.i.2804, %conv60.i.i.2802
  %and66.i.i.2806 = ashr i64 %sub62177.i.i.2805, 63
  %or.i.i.2807 = or i64 %and66.i.i.2806, %sub58.i.i.2801
  %conv68.i.i.2808 = zext i64 %or.i.i.2807 to i128
  %sub70.i.i.2809 = sub i128 %add50.i.i.2796, %conv68.i.i.2808
  %and71.i.i.2810 = and i64 %or.i.i.2807, 4294967295
  %conv72.i.i.2811 = zext i64 %and71.i.i.2810 to i128
  %sub74.i.i.2812 = sub i128 %sub54.i.i.2798, %conv72.i.i.2811
  %and75.i.i.2813 = and i64 %or.i.i.2807, -4294967295
  %conv76.i.i.2814 = zext i64 %and75.i.i.2813 to i128
  %sub78.i.i.2815 = sub nsw i128 %add47.i.i.2794, %conv76.i.i.2814
  %shr80.i.i.2816 = lshr i128 %sub70.i.i.2809, 64
  %add84.i.i.2817 = add i128 %sub74.i.i.2812, %shr80.i.i.2816
  %shr90.i.i.2819 = lshr i128 %add84.i.i.2817, 64
  %add94.i.i.2820 = add nuw nsw i128 %add13.i.i.2778, %shr90.i.i.2819
  %shr100.i.i.2822 = lshr i128 %add94.i.i.2820, 64
  %add104.i.i.2823 = add nsw i128 %sub78.i.i.2815, %shr100.i.i.2822
  %87 = load i128, i128* %arrayidx.i.i.553, align 16, !tbaa !2
  %add.i.2831 = add i128 %87, 18446744069414584320
  %88 = load i128, i128* %arrayidx6.i.i.555, align 16, !tbaa !2
  %shr.i.2833 = lshr i128 %88, 64
  %add8.i.2834 = add i128 %add.i.2831, %shr.i.2833
  %conv12.i.2835 = and i128 %88, 18446744073709551615
  %add13.i.2836 = add nuw nsw i128 %conv12.i.2835, 18446673704965373952
  %89 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.2837 = add i128 %89, 18446744073709551615
  %90 = load i128, i128* %arrayidx18.i.i.561, align 16, !tbaa !2
  %add19.i.2839 = add i128 %90, 1298074214633706907132628377272319
  %shr22.i.2840 = lshr i128 %add8.i.2834, 64
  %conv23.i.2841 = trunc i128 %shr22.i.2840 to i64
  %conv26.i.2842 = and i128 %add8.i.2834, 18446744073709551615
  %sub.i.2843 = sub nsw i128 %conv26.i.2842, %shr22.i.2840
  %shl.i.2844 = shl nuw nsw i128 %shr22.i.2840, 32
  %add32.i.2845 = add nsw i128 %sub.i.2843, %shl.i.2844
  %shr34.i.2846 = lshr i128 %add32.i.2845, 64
  %conv35.i.2847 = trunc i128 %shr34.i.2846 to i64
  %add36.i.2848 = add i64 %conv35.i.2847, %conv23.i.2841
  %conv39.i.2849 = and i128 %add32.i.2845, 18446744073709551615
  %sub43.i.2850 = sub nsw i128 %conv39.i.2849, %shr34.i.2846
  %shl45.i.2851 = shl nuw nsw i128 %shr34.i.2846, 32
  %add47.i.2852 = add nsw i128 %sub43.i.2850, %shl45.i.2851
  %conv48.i.2853 = zext i64 %add36.i.2848 to i128
  %add50.i.2854 = add i128 %add16.i.2837, %conv48.i.2853
  %shl52.i.2855 = shl nuw nsw i128 %conv48.i.2853, 32
  %sub54.i.2856 = sub i128 %add19.i.2839, %shl52.i.2855
  %shr56.i.2857 = lshr i128 %add47.i.2852, 64
  %conv57.i.2858 = trunc i128 %shr56.i.2857 to i64
  %sub58.i.2859 = sub i64 0, %conv57.i.2858
  %conv60.i.2860 = trunc i128 %add47.i.2852 to i64
  %and.i.2861 = and i64 %conv60.i.2860, 9223372036854775807
  %neg.i.2862 = sub nsw i64 9223372032559808512, %and.i.2861
  %sub62177.i.2863 = and i64 %neg.i.2862, %conv60.i.2860
  %and66.i.2864 = ashr i64 %sub62177.i.2863, 63
  %or.i.2865 = or i64 %and66.i.2864, %sub58.i.2859
  %conv68.i.2866 = zext i64 %or.i.2865 to i128
  %sub70.i.2867 = sub i128 %add50.i.2854, %conv68.i.2866
  %and71.i.2868 = and i64 %or.i.2865, 4294967295
  %conv72.i.2869 = zext i64 %and71.i.2868 to i128
  %sub74.i.2870 = sub i128 %sub54.i.2856, %conv72.i.2869
  %and75.i.2871 = and i64 %or.i.2865, -4294967295
  %conv76.i.2872 = zext i64 %and75.i.2871 to i128
  %sub78.i.2873 = sub nsw i128 %add47.i.2852, %conv76.i.2872
  %shr80.i.2874 = lshr i128 %sub70.i.2867, 64
  %add84.i.2875 = add i128 %sub74.i.2870, %shr80.i.2874
  %shr90.i.2877 = lshr i128 %add84.i.2875, 64
  %add94.i.2878 = add nuw nsw i128 %add13.i.2836, %shr90.i.2877
  %shr100.i.2880 = lshr i128 %add94.i.2878, 64
  %add104.i.2881 = add nsw i128 %sub78.i.2873, %shr100.i.2880
  %conv.i.2887 = and i128 %sub70.i.i.2809, 18446744073709551615
  %conv2.i.2888 = and i128 %sub70.i.2867, 18446744073709551615
  %mul.i.2889 = mul nuw i128 %conv2.i.2888, %conv.i.2887
  %shr.i.2890 = lshr i128 %mul.i.2889, 64
  %conv5.i.2891 = and i128 %mul.i.2889, 18446744073709551615
  store i128 %conv5.i.2891, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.2894 = and i128 %add84.i.2875, 18446744073709551615
  %mul13.i.2895 = mul nuw i128 %conv12.i.2894, %conv.i.2887
  %shr15.i.2896 = lshr i128 %mul13.i.2895, 64
  %conv17.i.2897 = and i128 %mul13.i.2895, 18446744073709551615
  %conv22.i.2901 = and i128 %add84.i.i.2817, 18446744073709551615
  %mul25.i.2902 = mul nuw i128 %conv2.i.2888, %conv22.i.2901
  %shr27.i.2903 = lshr i128 %mul25.i.2902, 64
  %conv29.i.2904 = and i128 %mul25.i.2902, 18446744073709551615
  %add.i.2898 = add nuw nsw i128 %conv29.i.2904, %shr.i.2890
  %add31.i.2905 = add nuw nsw i128 %add.i.2898, %conv17.i.2897
  store i128 %add31.i.2905, i128* %arrayidx2.i, align 16, !tbaa !2
  %add34.i.2906 = add nuw nsw i128 %shr15.i.2896, %shr27.i.2903
  %conv38.i.2908 = and i128 %add94.i.2878, 18446744073709551615
  %mul39.i.2909 = mul nuw i128 %conv38.i.2908, %conv.i.2887
  %shr41.i.2910 = lshr i128 %mul39.i.2909, 64
  %conv43.i.2911 = and i128 %mul39.i.2909, 18446744073709551615
  %mul52.i.2914 = mul nuw i128 %conv12.i.2894, %conv22.i.2901
  %shr54.i.2915 = lshr i128 %mul52.i.2914, 64
  %conv56.i.2916 = and i128 %mul52.i.2914, 18446744073709551615
  %conv63.i.2920 = and i128 %add94.i.i.2820, 18446744073709551615
  %mul66.i.2921 = mul nuw i128 %conv63.i.2920, %conv2.i.2888
  %shr68.i.2922 = lshr i128 %mul66.i.2921, 64
  %conv70.i.2923 = and i128 %mul66.i.2921, 18446744073709551615
  %add45.i.2912 = add nuw nsw i128 %add34.i.2906, %conv56.i.2916
  %add58.i.2917 = add nuw nsw i128 %add45.i.2912, %conv70.i.2923
  %add72.i.2924 = add nuw nsw i128 %add58.i.2917, %conv43.i.2911
  store i128 %add72.i.2924, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.2927 = and i128 %add104.i.2881, 18446744073709551615
  %mul80.i.2928 = mul nuw i128 %conv79.i.2927, %conv.i.2887
  %shr82.i.2929 = lshr i128 %mul80.i.2928, 64
  %conv84.i.2930 = and i128 %mul80.i.2928, 18446744073709551615
  %mul93.i.2933 = mul nuw i128 %conv38.i.2908, %conv22.i.2901
  %shr95.i.2934 = lshr i128 %mul93.i.2933, 64
  %conv97.i.2935 = and i128 %mul93.i.2933, 18446744073709551615
  %mul107.i.2938 = mul nuw i128 %conv12.i.2894, %conv63.i.2920
  %shr109.i.2939 = lshr i128 %mul107.i.2938, 64
  %conv111.i.2940 = and i128 %mul107.i.2938, 18446744073709551615
  %conv118.i.2944 = and i128 %add104.i.i.2823, 18446744073709551615
  %mul121.i.2945 = mul nuw i128 %conv118.i.2944, %conv2.i.2888
  %shr123.i.2946 = lshr i128 %mul121.i.2945, 64
  %conv125.i.2947 = and i128 %mul121.i.2945, 18446744073709551615
  %add61.i.2918 = add nuw nsw i128 %shr68.i.2922, %shr54.i.2915
  %add75.i.2925 = add nuw nsw i128 %add61.i.2918, %conv111.i.2940
  %add86.i.2931 = add nuw nsw i128 %add75.i.2925, %shr41.i.2910
  %add99.i.2936 = add nuw nsw i128 %add86.i.2931, %conv97.i.2935
  %add113.i.2941 = add nuw nsw i128 %add99.i.2936, %conv125.i.2947
  %add127.i.2948 = add nuw nsw i128 %add113.i.2941, %conv84.i.2930
  store i128 %add127.i.2948, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.2950 = mul nuw i128 %conv79.i.2927, %conv22.i.2901
  %shr137.i.2951 = lshr i128 %mul135.i.2950, 64
  %conv139.i.2952 = and i128 %mul135.i.2950, 18446744073709551615
  %mul148.i.2955 = mul nuw i128 %conv38.i.2908, %conv63.i.2920
  %shr150.i.2956 = lshr i128 %mul148.i.2955, 64
  %conv152.i.2957 = and i128 %mul148.i.2955, 18446744073709551615
  %mul162.i.2960 = mul nuw i128 %conv118.i.2944, %conv12.i.2894
  %shr164.i.2961 = lshr i128 %mul162.i.2960, 64
  %conv166.i.2962 = and i128 %mul162.i.2960, 18446744073709551615
  %add102.i.2937 = add nuw nsw i128 %shr95.i.2934, %shr109.i.2939
  %add116.i.2942 = add nuw nsw i128 %add102.i.2937, %shr123.i.2946
  %add130.i.2949 = add nuw nsw i128 %add116.i.2942, %conv152.i.2957
  %add141.i.2953 = add nuw nsw i128 %add130.i.2949, %conv166.i.2962
  %add154.i.2958 = add nuw nsw i128 %add141.i.2953, %shr82.i.2929
  %add168.i.2963 = add nuw nsw i128 %add154.i.2958, %conv139.i.2952
  store i128 %add168.i.2963, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.2965 = mul nuw i128 %conv79.i.2927, %conv63.i.2920
  %shr178.i.2966 = lshr i128 %mul176.i.2965, 64
  %conv180.i.2967 = and i128 %mul176.i.2965, 18446744073709551615
  %mul189.i.2970 = mul nuw i128 %conv38.i.2908, %conv118.i.2944
  %shr191.i.2971 = lshr i128 %mul189.i.2970, 64
  %conv193.i.2972 = and i128 %mul189.i.2970, 18446744073709551615
  %add157.i.2959 = add nuw nsw i128 %shr164.i.2961, %shr150.i.2956
  %add171.i.2964 = add nuw nsw i128 %add157.i.2959, %conv193.i.2972
  %add182.i.2968 = add nuw nsw i128 %add171.i.2964, %shr137.i.2951
  %add195.i.2973 = add nuw nsw i128 %add182.i.2968, %conv180.i.2967
  store i128 %add195.i.2973, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.2974 = add nuw nsw i128 %shr178.i.2966, %shr191.i.2971
  %mul203.i.2975 = mul nuw i128 %conv79.i.2927, %conv118.i.2944
  %shr205.i.2976 = lshr i128 %mul203.i.2975, 64
  %conv207.i.2977 = and i128 %mul203.i.2975, 18446744073709551615
  %add209.i.2978 = add nuw nsw i128 %add198.i.2974, %conv207.i.2977
  store i128 %add209.i.2978, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.2976, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.2726 = add nuw nsw i128 %conv5.i.2891, 1267650600228229401427983728624
  %add3.i.2728 = or i128 %add31.i.2905, 1267650600228229401496703205376
  %add6.i.2731 = add nuw nsw i128 %add72.i.2924, 1267650600228229401427983728656
  %add9.i.2734 = add i128 %add127.i.2948, 1267650600228229401427983728656
  %shl.i.i.2738 = shl nuw nsw i128 %add195.i.2973, 32
  %add.i.i.2739 = add i128 %shl.i.i.2738, %add168.i.2963
  %add3.i.i.2740 = add i128 %add.i.i.2739, %add.i.2726
  %sub.i.i.2741 = sub i128 %add9.i.2734, %add.i.i.2739
  %sub7.i.i.2743 = sub nsw i128 %add195.i.2973, %shr205.i.2976
  %add9.i.i.2744 = add nsw i128 %sub7.i.i.2743, %add3.i.2728
  %sub11.i.i.2745 = sub nsw i128 %add6.i.2731, %sub7.i.i.2743
  %shl13.i.i.2746 = shl i128 %add168.i.2963, 32
  %sub15.i.i.2747 = sub i128 %add9.i.i.2744, %shl13.i.i.2746
  %add19.i.i.2749 = add i128 %shl13.i.i.2746, %sub.i.i.2741
  %sub23.i.i.2751 = sub i128 %sub11.i.i.2745, %shl.i.i.2738
  %sub26.i.i.2753 = sub i128 %add3.i.i.2740, %add209.i.2978
  %shl28.i.i.2754 = shl nuw nsw i128 %add209.i.2978, 32
  %sub30.i.i.2755 = sub i128 %sub26.i.i.2753, %shl28.i.i.2754
  %shl32.i.i.2756 = shl nuw nsw i128 %add209.i.2978, 33
  %add34.i.i.2757 = add i128 %shl32.i.i.2756, %sub15.i.i.2747
  store i128 %add34.i.i.2757, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.2758 = shl nuw nsw i128 %add209.i.2978, 1
  %add37.i.i.2759 = add i128 %mul.i.i.2758, %sub23.i.i.2751
  %sub41.i.i.2761 = sub i128 %add19.i.i.2749, %shl28.i.i.2754
  %sub44.i.i.2762 = sub i128 %sub30.i.i.2755, %shr205.i.2976
  %shl46.i.i.2763 = shl nuw nsw i128 %shr205.i.2976, 32
  %sub48.i.i.2764 = sub i128 %sub44.i.i.2762, %shl46.i.i.2763
  store i128 %sub48.i.i.2764, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2765 = shl nuw nsw i128 %shr205.i.2976, 33
  %add52.i.i.2766 = add i128 %shl50.i.i.2765, %add37.i.i.2759
  store i128 %add52.i.i.2766, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.2767 = mul nuw nsw i128 %shr205.i.2976, 3
  %add56.i.i.2768 = add i128 %mul54.i.i.2767, %sub41.i.i.2761
  store i128 %add56.i.i.2768, i128* %arrayidx10.i, align 16, !tbaa !2
  br label %for.body.94

for.body.94:                                      ; preds = %for.body.94, %for.end.85
  %i.34436 = phi i32 [ 0, %for.end.85 ], [ %inc100, %for.body.94 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay2)
  %91 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2677 = add i128 %91, 1267650600228229401427983728624
  %92 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.2679 = add i128 %92, 1267650600228229401496703205376
  %93 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.2682 = add i128 %93, 1267650600228229401427983728656
  %94 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.2685 = add i128 %94, 1267650600228229401427983728656
  %95 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %96 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.2689 = shl i128 %96, 32
  %add.i.i.2690 = add i128 %shl.i.i.2689, %95
  %add3.i.i.2691 = add i128 %add.i.i.2690, %add.i.2677
  %sub.i.i.2692 = sub i128 %add9.i.2685, %add.i.i.2690
  %97 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.2694 = sub i128 %96, %97
  %add9.i.i.2695 = add i128 %sub7.i.i.2694, %add3.i.2679
  %sub11.i.i.2696 = sub i128 %add6.i.2682, %sub7.i.i.2694
  %shl13.i.i.2697 = shl i128 %95, 32
  %sub15.i.i.2698 = sub i128 %add9.i.i.2695, %shl13.i.i.2697
  %add19.i.i.2700 = add i128 %shl13.i.i.2697, %sub.i.i.2692
  %sub23.i.i.2702 = sub i128 %sub11.i.i.2696, %shl.i.i.2689
  %98 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.2704 = sub i128 %add3.i.i.2691, %98
  %shl28.i.i.2705 = shl i128 %98, 32
  %sub30.i.i.2706 = sub i128 %sub26.i.i.2704, %shl28.i.i.2705
  %shl32.i.i.2707 = shl i128 %98, 33
  %add34.i.i.2708 = add i128 %shl32.i.i.2707, %sub15.i.i.2698
  store i128 %add34.i.i.2708, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i.2709 = shl i128 %98, 1
  %add37.i.i.2710 = add i128 %mul.i.i.2709, %sub23.i.i.2702
  %sub41.i.i.2712 = sub i128 %add19.i.i.2700, %shl28.i.i.2705
  %sub44.i.i.2713 = sub i128 %sub30.i.i.2706, %97
  %shl46.i.i.2714 = shl i128 %97, 32
  %sub48.i.i.2715 = sub i128 %sub44.i.i.2713, %shl46.i.i.2714
  store i128 %sub48.i.i.2715, i128* %arraydecay2, align 16, !tbaa !2
  %shl50.i.i.2716 = shl i128 %97, 33
  %add52.i.i.2717 = add i128 %shl50.i.i.2716, %add37.i.i.2710
  store i128 %add52.i.i.2717, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i.2718 = mul i128 %97, 3
  %add56.i.i.2719 = add i128 %mul54.i.i.2718, %sub41.i.i.2712
  store i128 %add56.i.i.2719, i128* %arrayidx10.i, align 16, !tbaa !2
  %inc100 = add nuw nsw i32 %i.34436, 1
  %exitcond4442 = icmp eq i32 %inc100, 192
  br i1 %exitcond4442, label %for.end.101, label %for.body.94

for.end.101:                                      ; preds = %for.body.94
  %add.i.2528 = add i128 %add56.i.i.3120, 18446744069414584320
  %shr.i.2530 = lshr i128 %add52.i.i.3118, 64
  %add8.i.2531 = add i128 %add.i.2528, %shr.i.2530
  %conv12.i.2532 = and i128 %add52.i.i.3118, 18446744073709551615
  %add13.i.2533 = add nuw nsw i128 %conv12.i.2532, 18446673704965373952
  %add16.i.2534 = add i128 %sub48.i.i.3116, 18446744073709551615
  %add19.i.2536 = add i128 %add34.i.i.3109, 1298074214633706907132628377272319
  %shr22.i.2537 = lshr i128 %add8.i.2531, 64
  %conv23.i.2538 = trunc i128 %shr22.i.2537 to i64
  %conv26.i.2539 = and i128 %add8.i.2531, 18446744073709551615
  %sub.i.2540 = sub nsw i128 %conv26.i.2539, %shr22.i.2537
  %shl.i.2541 = shl nuw nsw i128 %shr22.i.2537, 32
  %add32.i.2542 = add nsw i128 %sub.i.2540, %shl.i.2541
  %shr34.i.2543 = lshr i128 %add32.i.2542, 64
  %conv35.i.2544 = trunc i128 %shr34.i.2543 to i64
  %add36.i.2545 = add i64 %conv35.i.2544, %conv23.i.2538
  %conv39.i.2546 = and i128 %add32.i.2542, 18446744073709551615
  %sub43.i.2547 = sub nsw i128 %conv39.i.2546, %shr34.i.2543
  %shl45.i.2548 = shl nuw nsw i128 %shr34.i.2543, 32
  %add47.i.2549 = add nsw i128 %sub43.i.2547, %shl45.i.2548
  %conv48.i.2550 = zext i64 %add36.i.2545 to i128
  %add50.i.2551 = add i128 %add16.i.2534, %conv48.i.2550
  %shl52.i.2552 = shl nuw nsw i128 %conv48.i.2550, 32
  %sub54.i.2553 = sub i128 %add19.i.2536, %shl52.i.2552
  %shr56.i.2554 = lshr i128 %add47.i.2549, 64
  %conv57.i.2555 = trunc i128 %shr56.i.2554 to i64
  %sub58.i.2556 = sub i64 0, %conv57.i.2555
  %conv60.i.2557 = trunc i128 %add47.i.2549 to i64
  %and.i.2558 = and i64 %conv60.i.2557, 9223372036854775807
  %neg.i.2559 = sub nsw i64 9223372032559808512, %and.i.2558
  %sub62177.i.2560 = and i64 %neg.i.2559, %conv60.i.2557
  %and66.i.2561 = ashr i64 %sub62177.i.2560, 63
  %or.i.2562 = or i64 %and66.i.2561, %sub58.i.2556
  %conv68.i.2563 = zext i64 %or.i.2562 to i128
  %sub70.i.2564 = sub i128 %add50.i.2551, %conv68.i.2563
  %and71.i.2565 = and i64 %or.i.2562, 4294967295
  %conv72.i.2566 = zext i64 %and71.i.2565 to i128
  %sub74.i.2567 = sub i128 %sub54.i.2553, %conv72.i.2566
  %and75.i.2568 = and i64 %or.i.2562, -4294967295
  %conv76.i.2569 = zext i64 %and75.i.2568 to i128
  %sub78.i.2570 = sub nsw i128 %add47.i.2549, %conv76.i.2569
  %shr80.i.2571 = lshr i128 %sub70.i.2564, 64
  %add84.i.2572 = add i128 %sub74.i.2567, %shr80.i.2571
  %shr90.i.2574 = lshr i128 %add84.i.2572, 64
  %add94.i.2575 = add nuw nsw i128 %add13.i.2533, %shr90.i.2574
  %shr100.i.2577 = lshr i128 %add94.i.2575, 64
  %add104.i.2578 = add nsw i128 %sub78.i.2570, %shr100.i.2577
  %conv2.i.2585 = and i128 %sub70.i.2564, 18446744073709551615
  %mul.i.2586 = mul nuw i128 %conv.i.2887, %conv2.i.2585
  %shr.i.2587 = lshr i128 %mul.i.2586, 64
  %conv5.i.2588 = and i128 %mul.i.2586, 18446744073709551615
  store i128 %conv5.i.2588, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.2591 = and i128 %add84.i.2572, 18446744073709551615
  %mul13.i.2592 = mul nuw i128 %conv.i.2887, %conv12.i.2591
  %shr15.i.2593 = lshr i128 %mul13.i.2592, 64
  %conv17.i.2594 = and i128 %mul13.i.2592, 18446744073709551615
  %add.i.2595 = add nuw nsw i128 %conv17.i.2594, %shr.i.2587
  %mul25.i.2599 = mul nuw i128 %conv22.i.2901, %conv2.i.2585
  %shr27.i.2600 = lshr i128 %mul25.i.2599, 64
  %conv29.i.2601 = and i128 %mul25.i.2599, 18446744073709551615
  %add31.i.2602 = add nuw nsw i128 %add.i.2595, %conv29.i.2601
  store i128 %add31.i.2602, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv38.i.2605 = and i128 %add94.i.2575, 18446744073709551615
  %mul39.i.2606 = mul nuw i128 %conv.i.2887, %conv38.i.2605
  %shr41.i.2607 = lshr i128 %mul39.i.2606, 64
  %conv43.i.2608 = and i128 %mul39.i.2606, 18446744073709551615
  %mul52.i.2611 = mul nuw i128 %conv22.i.2901, %conv12.i.2591
  %shr54.i.2612 = lshr i128 %mul52.i.2611, 64
  %conv56.i.2613 = and i128 %mul52.i.2611, 18446744073709551615
  %mul66.i.2618 = mul nuw i128 %conv63.i.2920, %conv2.i.2585
  %shr68.i.2619 = lshr i128 %mul66.i.2618, 64
  %conv70.i.2620 = and i128 %mul66.i.2618, 18446744073709551615
  %add34.i.2603 = add nuw nsw i128 %conv43.i.2608, %shr15.i.2593
  %add45.i.2609 = add nuw nsw i128 %add34.i.2603, %shr27.i.2600
  %add58.i.2614 = add nuw nsw i128 %add45.i.2609, %conv56.i.2613
  %add72.i.2621 = add nuw nsw i128 %add58.i.2614, %conv70.i.2620
  store i128 %add72.i.2621, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.2624 = and i128 %add104.i.2578, 18446744073709551615
  %mul80.i.2625 = mul nuw i128 %conv.i.2887, %conv79.i.2624
  %shr82.i.2626 = lshr i128 %mul80.i.2625, 64
  %conv84.i.2627 = and i128 %mul80.i.2625, 18446744073709551615
  %mul93.i.2630 = mul nuw i128 %conv22.i.2901, %conv38.i.2605
  %shr95.i.2631 = lshr i128 %mul93.i.2630, 64
  %conv97.i.2632 = and i128 %mul93.i.2630, 18446744073709551615
  %add102.i.2634 = add nuw nsw i128 %shr95.i.2631, %shr82.i.2626
  %mul107.i.2635 = mul nuw i128 %conv63.i.2920, %conv12.i.2591
  %shr109.i.2636 = lshr i128 %mul107.i.2635, 64
  %conv111.i.2637 = and i128 %mul107.i.2635, 18446744073709551615
  %mul121.i.2642 = mul nuw i128 %conv118.i.2944, %conv2.i.2585
  %shr123.i.2643 = lshr i128 %mul121.i.2642, 64
  %conv125.i.2644 = and i128 %mul121.i.2642, 18446744073709551615
  %add61.i.2615 = add nuw nsw i128 %conv84.i.2627, %shr41.i.2607
  %add75.i.2622 = add nuw nsw i128 %add61.i.2615, %shr54.i.2612
  %add86.i.2628 = add nuw nsw i128 %add75.i.2622, %conv97.i.2632
  %add99.i.2633 = add nuw nsw i128 %add86.i.2628, %shr68.i.2619
  %add113.i.2638 = add nuw nsw i128 %add99.i.2633, %conv111.i.2637
  %add127.i.2645 = add nuw nsw i128 %add113.i.2638, %conv125.i.2644
  store i128 %add127.i.2645, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.2647 = mul nuw i128 %conv22.i.2901, %conv79.i.2624
  %shr137.i.2648 = lshr i128 %mul135.i.2647, 64
  %conv139.i.2649 = and i128 %mul135.i.2647, 18446744073709551615
  %mul148.i.2652 = mul nuw i128 %conv63.i.2920, %conv38.i.2605
  %shr150.i.2653 = lshr i128 %mul148.i.2652, 64
  %conv152.i.2654 = and i128 %mul148.i.2652, 18446744073709551615
  %add157.i.2656 = add nuw nsw i128 %shr150.i.2653, %shr137.i.2648
  %mul162.i.2657 = mul nuw i128 %conv118.i.2944, %conv12.i.2591
  %shr164.i.2658 = lshr i128 %mul162.i.2657, 64
  %conv166.i.2659 = and i128 %mul162.i.2657, 18446744073709551615
  %add116.i.2639 = add nuw nsw i128 %add102.i.2634, %conv139.i.2649
  %add130.i.2646 = add nuw nsw i128 %add116.i.2639, %shr109.i.2636
  %add141.i.2650 = add nuw nsw i128 %add130.i.2646, %conv152.i.2654
  %add154.i.2655 = add nuw nsw i128 %add141.i.2650, %shr123.i.2643
  %add168.i.2660 = add nuw nsw i128 %add154.i.2655, %conv166.i.2659
  store i128 %add168.i.2660, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.2662 = mul nuw i128 %conv63.i.2920, %conv79.i.2624
  %shr178.i.2663 = lshr i128 %mul176.i.2662, 64
  %conv180.i.2664 = and i128 %mul176.i.2662, 18446744073709551615
  %mul189.i.2667 = mul nuw i128 %conv118.i.2944, %conv38.i.2605
  %shr191.i.2668 = lshr i128 %mul189.i.2667, 64
  %conv193.i.2669 = and i128 %mul189.i.2667, 18446744073709551615
  %add171.i.2661 = add nuw nsw i128 %add157.i.2656, %conv180.i.2664
  %add182.i.2665 = add nuw nsw i128 %add171.i.2661, %shr164.i.2658
  %add195.i.2670 = add nuw nsw i128 %add182.i.2665, %conv193.i.2669
  store i128 %add195.i.2670, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.2671 = add nuw nsw i128 %shr191.i.2668, %shr178.i.2663
  %mul203.i.2672 = mul nuw i128 %conv118.i.2944, %conv79.i.2624
  %shr205.i.2673 = lshr i128 %mul203.i.2672, 64
  %conv207.i.2674 = and i128 %mul203.i.2672, 18446744073709551615
  %add209.i.2675 = add nuw nsw i128 %add198.i.2671, %conv207.i.2674
  store i128 %add209.i.2675, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.2673, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %arraydecay105 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 0
  %add.i.2423 = add nuw nsw i128 %conv5.i.2588, 1267650600228229401427983728624
  %add3.i.2425 = or i128 %add31.i.2602, 1267650600228229401496703205376
  %arrayidx4.i.2426 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 1
  %add6.i.2428 = add nuw nsw i128 %add72.i.2621, 1267650600228229401427983728656
  %arrayidx7.i.2429 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 2
  %add9.i.2431 = add i128 %add127.i.2645, 1267650600228229401427983728656
  %arrayidx10.i.2432 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp2, i64 0, i64 3
  %shl.i.i.2435 = shl nuw nsw i128 %add195.i.2670, 32
  %add.i.i.2436 = add i128 %shl.i.i.2435, %add168.i.2660
  %add3.i.i.2437 = add i128 %add.i.i.2436, %add.i.2423
  %sub.i.i.2438 = sub i128 %add9.i.2431, %add.i.i.2436
  %sub7.i.i.2440 = sub nsw i128 %add195.i.2670, %shr205.i.2673
  %add9.i.i.2441 = add nsw i128 %sub7.i.i.2440, %add3.i.2425
  %sub11.i.i.2442 = sub nsw i128 %add6.i.2428, %sub7.i.i.2440
  %shl13.i.i.2443 = shl i128 %add168.i.2660, 32
  %sub15.i.i.2444 = sub i128 %add9.i.i.2441, %shl13.i.i.2443
  %add19.i.i.2446 = add i128 %shl13.i.i.2443, %sub.i.i.2438
  %sub23.i.i.2448 = sub i128 %sub11.i.i.2442, %shl.i.i.2435
  %sub26.i.i.2450 = sub i128 %add3.i.i.2437, %add209.i.2675
  %shl28.i.i.2451 = shl nuw nsw i128 %add209.i.2675, 32
  %sub30.i.i.2452 = sub i128 %sub26.i.i.2450, %shl28.i.i.2451
  %shl32.i.i.2453 = shl nuw nsw i128 %add209.i.2675, 33
  %add34.i.i.2454 = add i128 %shl32.i.i.2453, %sub15.i.i.2444
  store i128 %add34.i.i.2454, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.2455 = shl nuw nsw i128 %add209.i.2675, 1
  %add37.i.i.2456 = add i128 %mul.i.i.2455, %sub23.i.i.2448
  %sub41.i.i.2458 = sub i128 %add19.i.i.2446, %shl28.i.i.2451
  %sub44.i.i.2459 = sub i128 %sub30.i.i.2452, %shr205.i.2673
  %shl46.i.i.2460 = shl nuw nsw i128 %shr205.i.2673, 32
  %sub48.i.i.2461 = sub i128 %sub44.i.i.2459, %shl46.i.i.2460
  store i128 %sub48.i.i.2461, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.2462 = shl nuw nsw i128 %shr205.i.2673, 33
  %add52.i.i.2463 = add i128 %shl50.i.i.2462, %add37.i.i.2456
  store i128 %add52.i.i.2463, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.2464 = mul nuw nsw i128 %shr205.i.2673, 3
  %add56.i.i.2465 = add i128 %mul54.i.i.2464, %sub41.i.i.2458
  store i128 %add56.i.i.2465, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  br label %for.body.109

for.body.109:                                     ; preds = %for.body.109, %for.end.101
  %i.44435 = phi i32 [ 0, %for.end.101 ], [ %inc115, %for.body.109 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %99 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2337 = add i128 %99, 1267650600228229401427983728624
  %100 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.2339 = add i128 %100, 1267650600228229401496703205376
  %101 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.2342 = add i128 %101, 1267650600228229401427983728656
  %102 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.2345 = add i128 %102, 1267650600228229401427983728656
  %103 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %104 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.2349 = shl i128 %104, 32
  %add.i.i.2350 = add i128 %shl.i.i.2349, %103
  %add3.i.i.2351 = add i128 %add.i.i.2350, %add.i.2337
  %sub.i.i.2352 = sub i128 %add9.i.2345, %add.i.i.2350
  %105 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.2354 = sub i128 %104, %105
  %add9.i.i.2355 = add i128 %sub7.i.i.2354, %add3.i.2339
  %sub11.i.i.2356 = sub i128 %add6.i.2342, %sub7.i.i.2354
  %shl13.i.i.2357 = shl i128 %103, 32
  %sub15.i.i.2358 = sub i128 %add9.i.i.2355, %shl13.i.i.2357
  %add19.i.i.2360 = add i128 %shl13.i.i.2357, %sub.i.i.2352
  %sub23.i.i.2362 = sub i128 %sub11.i.i.2356, %shl.i.i.2349
  %106 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.2364 = sub i128 %add3.i.i.2351, %106
  %shl28.i.i.2365 = shl i128 %106, 32
  %sub30.i.i.2366 = sub i128 %sub26.i.i.2364, %shl28.i.i.2365
  %shl32.i.i.2367 = shl i128 %106, 33
  %add34.i.i.2368 = add i128 %shl32.i.i.2367, %sub15.i.i.2358
  store i128 %add34.i.i.2368, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.2369 = shl i128 %106, 1
  %add37.i.i.2370 = add i128 %mul.i.i.2369, %sub23.i.i.2362
  %sub41.i.i.2372 = sub i128 %add19.i.i.2360, %shl28.i.i.2365
  %sub44.i.i.2373 = sub i128 %sub30.i.i.2366, %105
  %shl46.i.i.2374 = shl i128 %105, 32
  %sub48.i.i.2375 = sub i128 %sub44.i.i.2373, %shl46.i.i.2374
  store i128 %sub48.i.i.2375, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.2376 = shl i128 %105, 33
  %add52.i.i.2377 = add i128 %shl50.i.i.2376, %add37.i.i.2370
  store i128 %add52.i.i.2377, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.2378 = mul i128 %105, 3
  %add56.i.i.2379 = add i128 %mul54.i.i.2378, %sub41.i.i.2372
  store i128 %add56.i.i.2379, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %inc115 = add nuw nsw i32 %i.44435, 1
  %exitcond4441 = icmp eq i32 %inc115, 16
  br i1 %exitcond4441, label %for.end.116, label %for.body.109

for.end.116:                                      ; preds = %for.body.109
  %add56.i.i.2379.lcssa = phi i128 [ %add56.i.i.2379, %for.body.109 ]
  %add52.i.i.2377.lcssa = phi i128 [ %add52.i.i.2377, %for.body.109 ]
  %sub48.i.i.2375.lcssa = phi i128 [ %sub48.i.i.2375, %for.body.109 ]
  %add34.i.i.2368.lcssa = phi i128 [ %add34.i.i.2368, %for.body.109 ]
  %add.i.i.2130 = add i128 %add56.i.i.2379.lcssa, 18446744069414584320
  %shr.i.i.2132 = lshr i128 %add52.i.i.2377.lcssa, 64
  %add8.i.i.2133 = add i128 %add.i.i.2130, %shr.i.i.2132
  %conv12.i.i.2134 = and i128 %add52.i.i.2377.lcssa, 18446744073709551615
  %add13.i.i.2135 = add nuw nsw i128 %conv12.i.i.2134, 18446673704965373952
  %add16.i.i.2136 = add i128 %sub48.i.i.2375.lcssa, 18446744073709551615
  %add19.i.i.2138 = add i128 %add34.i.i.2368.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.2139 = lshr i128 %add8.i.i.2133, 64
  %conv23.i.i.2140 = trunc i128 %shr22.i.i.2139 to i64
  %conv26.i.i.2141 = and i128 %add8.i.i.2133, 18446744073709551615
  %sub.i.i.2142 = sub nsw i128 %conv26.i.i.2141, %shr22.i.i.2139
  %shl.i.i.2143 = shl nuw nsw i128 %shr22.i.i.2139, 32
  %add32.i.i.2144 = add nsw i128 %sub.i.i.2142, %shl.i.i.2143
  %shr34.i.i.2145 = lshr i128 %add32.i.i.2144, 64
  %conv35.i.i.2146 = trunc i128 %shr34.i.i.2145 to i64
  %add36.i.i.2147 = add i64 %conv35.i.i.2146, %conv23.i.i.2140
  %conv39.i.i.2148 = and i128 %add32.i.i.2144, 18446744073709551615
  %sub43.i.i.2149 = sub nsw i128 %conv39.i.i.2148, %shr34.i.i.2145
  %shl45.i.i.2150 = shl nuw nsw i128 %shr34.i.i.2145, 32
  %add47.i.i.2151 = add nsw i128 %sub43.i.i.2149, %shl45.i.i.2150
  %conv48.i.i.2152 = zext i64 %add36.i.i.2147 to i128
  %add50.i.i.2153 = add i128 %add16.i.i.2136, %conv48.i.i.2152
  %shl52.i.i.2154 = shl nuw nsw i128 %conv48.i.i.2152, 32
  %sub54.i.i.2155 = sub i128 %add19.i.i.2138, %shl52.i.i.2154
  %shr56.i.i.2156 = lshr i128 %add47.i.i.2151, 64
  %conv57.i.i.2157 = trunc i128 %shr56.i.i.2156 to i64
  %sub58.i.i.2158 = sub i64 0, %conv57.i.i.2157
  %conv60.i.i.2159 = trunc i128 %add47.i.i.2151 to i64
  %and.i.i.2160 = and i64 %conv60.i.i.2159, 9223372036854775807
  %neg.i.i.2161 = sub nsw i64 9223372032559808512, %and.i.i.2160
  %sub62177.i.i.2162 = and i64 %neg.i.i.2161, %conv60.i.i.2159
  %and66.i.i.2163 = ashr i64 %sub62177.i.i.2162, 63
  %or.i.i.2164 = or i64 %and66.i.i.2163, %sub58.i.i.2158
  %conv68.i.i.2165 = zext i64 %or.i.i.2164 to i128
  %sub70.i.i.2166 = sub i128 %add50.i.i.2153, %conv68.i.i.2165
  %and71.i.i.2167 = and i64 %or.i.i.2164, 4294967295
  %conv72.i.i.2168 = zext i64 %and71.i.i.2167 to i128
  %sub74.i.i.2169 = sub i128 %sub54.i.i.2155, %conv72.i.i.2168
  %and75.i.i.2170 = and i64 %or.i.i.2164, -4294967295
  %conv76.i.i.2171 = zext i64 %and75.i.i.2170 to i128
  %sub78.i.i.2172 = sub nsw i128 %add47.i.i.2151, %conv76.i.i.2171
  %shr80.i.i.2173 = lshr i128 %sub70.i.i.2166, 64
  %add84.i.i.2174 = add i128 %sub74.i.i.2169, %shr80.i.i.2173
  %shr90.i.i.2176 = lshr i128 %add84.i.i.2174, 64
  %add94.i.i.2177 = add nuw nsw i128 %add13.i.i.2135, %shr90.i.i.2176
  %shr100.i.i.2179 = lshr i128 %add94.i.i.2177, 64
  %add104.i.i.2180 = add nsw i128 %sub78.i.i.2172, %shr100.i.i.2179
  %conv.i.2244 = and i128 %sub70.i.i.2166, 18446744073709551615
  %mul.i.2246 = mul nuw i128 %conv.i.2244, %conv2.i.3240
  %shr.i.2247 = lshr i128 %mul.i.2246, 64
  %conv5.i.2248 = and i128 %mul.i.2246, 18446744073709551615
  store i128 %conv5.i.2248, i128* %arraydecay, align 16, !tbaa !2
  %mul13.i.2252 = mul nuw i128 %conv.i.2244, %conv12.i.3246
  %shr15.i.2253 = lshr i128 %mul13.i.2252, 64
  %conv17.i.2254 = and i128 %mul13.i.2252, 18446744073709551615
  %add.i.2255 = add nuw nsw i128 %conv17.i.2254, %shr.i.2247
  %conv22.i.2258 = and i128 %add84.i.i.2174, 18446744073709551615
  %mul25.i.2259 = mul nuw i128 %conv22.i.2258, %conv2.i.3240
  %shr27.i.2260 = lshr i128 %mul25.i.2259, 64
  %conv29.i.2261 = and i128 %mul25.i.2259, 18446744073709551615
  %add31.i.2262 = add nuw nsw i128 %add.i.2255, %conv29.i.2261
  store i128 %add31.i.2262, i128* %arrayidx2.i, align 16, !tbaa !2
  %mul39.i.2266 = mul nuw i128 %conv.i.2244, %conv38.i.3260
  %shr41.i.2267 = lshr i128 %mul39.i.2266, 64
  %conv43.i.2268 = and i128 %mul39.i.2266, 18446744073709551615
  %mul52.i.2271 = mul nuw i128 %conv22.i.2258, %conv12.i.3246
  %shr54.i.2272 = lshr i128 %mul52.i.2271, 64
  %conv56.i.2273 = and i128 %mul52.i.2271, 18446744073709551615
  %conv63.i.2277 = and i128 %add94.i.i.2177, 18446744073709551615
  %mul66.i.2278 = mul nuw i128 %conv63.i.2277, %conv2.i.3240
  %shr68.i.2279 = lshr i128 %mul66.i.2278, 64
  %conv70.i.2280 = and i128 %mul66.i.2278, 18446744073709551615
  %add34.i.2263 = add nuw nsw i128 %conv43.i.2268, %shr15.i.2253
  %add45.i.2269 = add nuw nsw i128 %add34.i.2263, %shr27.i.2260
  %add58.i.2274 = add nuw nsw i128 %add45.i.2269, %conv56.i.2273
  %add72.i.2281 = add nuw nsw i128 %add58.i.2274, %conv70.i.2280
  store i128 %add72.i.2281, i128* %arrayidx5.i, align 16, !tbaa !2
  %mul80.i.2285 = mul nuw i128 %conv.i.2244, %conv79.i.3279
  %shr82.i.2286 = lshr i128 %mul80.i.2285, 64
  %conv84.i.2287 = and i128 %mul80.i.2285, 18446744073709551615
  %mul93.i.2290 = mul nuw i128 %conv22.i.2258, %conv38.i.3260
  %shr95.i.2291 = lshr i128 %mul93.i.2290, 64
  %conv97.i.2292 = and i128 %mul93.i.2290, 18446744073709551615
  %add102.i.2294 = add nuw nsw i128 %shr95.i.2291, %shr82.i.2286
  %mul107.i.2295 = mul nuw i128 %conv63.i.2277, %conv12.i.3246
  %shr109.i.2296 = lshr i128 %mul107.i.2295, 64
  %conv111.i.2297 = and i128 %mul107.i.2295, 18446744073709551615
  %conv118.i.2301 = and i128 %add104.i.i.2180, 18446744073709551615
  %mul121.i.2302 = mul nuw i128 %conv118.i.2301, %conv2.i.3240
  %shr123.i.2303 = lshr i128 %mul121.i.2302, 64
  %conv125.i.2304 = and i128 %mul121.i.2302, 18446744073709551615
  %add61.i.2275 = add nuw nsw i128 %conv84.i.2287, %shr41.i.2267
  %add75.i.2282 = add nuw nsw i128 %add61.i.2275, %shr54.i.2272
  %add86.i.2288 = add nuw nsw i128 %add75.i.2282, %conv97.i.2292
  %add99.i.2293 = add nuw nsw i128 %add86.i.2288, %shr68.i.2279
  %add113.i.2298 = add nuw nsw i128 %add99.i.2293, %conv111.i.2297
  %add127.i.2305 = add nuw nsw i128 %add113.i.2298, %conv125.i.2304
  store i128 %add127.i.2305, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.2307 = mul nuw i128 %conv22.i.2258, %conv79.i.3279
  %shr137.i.2308 = lshr i128 %mul135.i.2307, 64
  %conv139.i.2309 = and i128 %mul135.i.2307, 18446744073709551615
  %mul148.i.2312 = mul nuw i128 %conv63.i.2277, %conv38.i.3260
  %shr150.i.2313 = lshr i128 %mul148.i.2312, 64
  %conv152.i.2314 = and i128 %mul148.i.2312, 18446744073709551615
  %add157.i.2316 = add nuw nsw i128 %shr150.i.2313, %shr137.i.2308
  %mul162.i.2317 = mul nuw i128 %conv118.i.2301, %conv12.i.3246
  %shr164.i.2318 = lshr i128 %mul162.i.2317, 64
  %conv166.i.2319 = and i128 %mul162.i.2317, 18446744073709551615
  %add116.i.2299 = add nuw nsw i128 %add102.i.2294, %conv139.i.2309
  %add130.i.2306 = add nuw nsw i128 %add116.i.2299, %shr109.i.2296
  %add141.i.2310 = add nuw nsw i128 %add130.i.2306, %conv152.i.2314
  %add154.i.2315 = add nuw nsw i128 %add141.i.2310, %shr123.i.2303
  %add168.i.2320 = add nuw nsw i128 %add154.i.2315, %conv166.i.2319
  store i128 %add168.i.2320, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.2322 = mul nuw i128 %conv63.i.2277, %conv79.i.3279
  %shr178.i.2323 = lshr i128 %mul176.i.2322, 64
  %conv180.i.2324 = and i128 %mul176.i.2322, 18446744073709551615
  %mul189.i.2327 = mul nuw i128 %conv118.i.2301, %conv38.i.3260
  %shr191.i.2328 = lshr i128 %mul189.i.2327, 64
  %conv193.i.2329 = and i128 %mul189.i.2327, 18446744073709551615
  %add171.i.2321 = add nuw nsw i128 %add157.i.2316, %conv180.i.2324
  %add182.i.2325 = add nuw nsw i128 %add171.i.2321, %shr164.i.2318
  %add195.i.2330 = add nuw nsw i128 %add182.i.2325, %conv193.i.2329
  store i128 %add195.i.2330, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.2331 = add nuw nsw i128 %shr191.i.2328, %shr178.i.2323
  %mul203.i.2332 = mul nuw i128 %conv118.i.2301, %conv79.i.3279
  %shr205.i.2333 = lshr i128 %mul203.i.2332, 64
  %conv207.i.2334 = and i128 %mul203.i.2332, 18446744073709551615
  %add209.i.2335 = add nuw nsw i128 %add198.i.2331, %conv207.i.2334
  store i128 %add209.i.2335, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.2333, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.2083 = add nuw nsw i128 %conv5.i.2248, 1267650600228229401427983728624
  %add3.i.2085 = or i128 %add31.i.2262, 1267650600228229401496703205376
  %add6.i.2088 = add nuw nsw i128 %add72.i.2281, 1267650600228229401427983728656
  %add9.i.2091 = add i128 %add127.i.2305, 1267650600228229401427983728656
  %shl.i.i.2095 = shl nuw nsw i128 %add195.i.2330, 32
  %add.i.i.2096 = add i128 %shl.i.i.2095, %add168.i.2320
  %add3.i.i.2097 = add i128 %add.i.i.2096, %add.i.2083
  %sub.i.i.2098 = sub i128 %add9.i.2091, %add.i.i.2096
  %sub7.i.i.2100 = sub nsw i128 %add195.i.2330, %shr205.i.2333
  %add9.i.i.2101 = add nsw i128 %sub7.i.i.2100, %add3.i.2085
  %sub11.i.i.2102 = sub nsw i128 %add6.i.2088, %sub7.i.i.2100
  %shl13.i.i.2103 = shl i128 %add168.i.2320, 32
  %sub15.i.i.2104 = sub i128 %add9.i.i.2101, %shl13.i.i.2103
  %add19.i.i.2106 = add i128 %shl13.i.i.2103, %sub.i.i.2098
  %sub23.i.i.2108 = sub i128 %sub11.i.i.2102, %shl.i.i.2095
  %sub26.i.i.2110 = sub i128 %add3.i.i.2097, %add209.i.2335
  %shl28.i.i.2111 = shl nuw nsw i128 %add209.i.2335, 32
  %sub30.i.i.2112 = sub i128 %sub26.i.i.2110, %shl28.i.i.2111
  %shl32.i.i.2113 = shl nuw nsw i128 %add209.i.2335, 33
  %add34.i.i.2114 = add i128 %shl32.i.i.2113, %sub15.i.i.2104
  store i128 %add34.i.i.2114, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.2115 = shl nuw nsw i128 %add209.i.2335, 1
  %add37.i.i.2116 = add i128 %mul.i.i.2115, %sub23.i.i.2108
  %sub41.i.i.2118 = sub i128 %add19.i.i.2106, %shl28.i.i.2111
  %sub44.i.i.2119 = sub i128 %sub30.i.i.2112, %shr205.i.2333
  %shl46.i.i.2120 = shl nuw nsw i128 %shr205.i.2333, 32
  %sub48.i.i.2121 = sub i128 %sub44.i.i.2119, %shl46.i.i.2120
  store i128 %sub48.i.i.2121, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.2122 = shl nuw nsw i128 %shr205.i.2333, 33
  %add52.i.i.2123 = add i128 %shl50.i.i.2122, %add37.i.i.2116
  store i128 %add52.i.i.2123, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.2124 = mul nuw nsw i128 %shr205.i.2333, 3
  %add56.i.i.2125 = add i128 %mul54.i.i.2124, %sub41.i.i.2118
  store i128 %add56.i.i.2125, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  br label %for.body.124

for.body.124:                                     ; preds = %for.body.124, %for.end.116
  %i.54434 = phi i32 [ 0, %for.end.116 ], [ %inc130, %for.body.124 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %107 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1829 = add i128 %107, 1267650600228229401427983728624
  %108 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1831 = add i128 %108, 1267650600228229401496703205376
  %109 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1834 = add i128 %109, 1267650600228229401427983728656
  %110 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1837 = add i128 %110, 1267650600228229401427983728656
  %111 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %112 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1841 = shl i128 %112, 32
  %add.i.i.1842 = add i128 %shl.i.i.1841, %111
  %add3.i.i.1843 = add i128 %add.i.i.1842, %add.i.1829
  %sub.i.i.1844 = sub i128 %add9.i.1837, %add.i.i.1842
  %113 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1846 = sub i128 %112, %113
  %add9.i.i.1847 = add i128 %sub7.i.i.1846, %add3.i.1831
  %sub11.i.i.1848 = sub i128 %add6.i.1834, %sub7.i.i.1846
  %shl13.i.i.1849 = shl i128 %111, 32
  %sub15.i.i.1850 = sub i128 %add9.i.i.1847, %shl13.i.i.1849
  %add19.i.i.1852 = add i128 %shl13.i.i.1849, %sub.i.i.1844
  %sub23.i.i.1854 = sub i128 %sub11.i.i.1848, %shl.i.i.1841
  %114 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1856 = sub i128 %add3.i.i.1843, %114
  %shl28.i.i.1857 = shl i128 %114, 32
  %sub30.i.i.1858 = sub i128 %sub26.i.i.1856, %shl28.i.i.1857
  %shl32.i.i.1859 = shl i128 %114, 33
  %add34.i.i.1860 = add i128 %shl32.i.i.1859, %sub15.i.i.1850
  store i128 %add34.i.i.1860, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1861 = shl i128 %114, 1
  %add37.i.i.1862 = add i128 %mul.i.i.1861, %sub23.i.i.1854
  %sub41.i.i.1864 = sub i128 %add19.i.i.1852, %shl28.i.i.1857
  %sub44.i.i.1865 = sub i128 %sub30.i.i.1858, %113
  %shl46.i.i.1866 = shl i128 %113, 32
  %sub48.i.i.1867 = sub i128 %sub44.i.i.1865, %shl46.i.i.1866
  store i128 %sub48.i.i.1867, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1868 = shl i128 %113, 33
  %add52.i.i.1869 = add i128 %shl50.i.i.1868, %add37.i.i.1862
  store i128 %add52.i.i.1869, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1870 = mul i128 %113, 3
  %add56.i.i.1871 = add i128 %mul54.i.i.1870, %sub41.i.i.1864
  store i128 %add56.i.i.1871, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %inc130 = add nuw nsw i32 %i.54434, 1
  %exitcond4440 = icmp eq i32 %inc130, 8
  br i1 %exitcond4440, label %for.end.131, label %for.body.124

for.end.131:                                      ; preds = %for.body.124
  %add56.i.i.1871.lcssa = phi i128 [ %add56.i.i.1871, %for.body.124 ]
  %add52.i.i.1869.lcssa = phi i128 [ %add52.i.i.1869, %for.body.124 ]
  %sub48.i.i.1867.lcssa = phi i128 [ %sub48.i.i.1867, %for.body.124 ]
  %add34.i.i.1860.lcssa = phi i128 [ %add34.i.i.1860, %for.body.124 ]
  %add.i.i.1622 = add i128 %add56.i.i.1871.lcssa, 18446744069414584320
  %shr.i.i.1624 = lshr i128 %add52.i.i.1869.lcssa, 64
  %add8.i.i.1625 = add i128 %add.i.i.1622, %shr.i.i.1624
  %conv12.i.i.1626 = and i128 %add52.i.i.1869.lcssa, 18446744073709551615
  %add13.i.i.1627 = add nuw nsw i128 %conv12.i.i.1626, 18446673704965373952
  %add16.i.i.1628 = add i128 %sub48.i.i.1867.lcssa, 18446744073709551615
  %add19.i.i.1630 = add i128 %add34.i.i.1860.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.1631 = lshr i128 %add8.i.i.1625, 64
  %conv23.i.i.1632 = trunc i128 %shr22.i.i.1631 to i64
  %conv26.i.i.1633 = and i128 %add8.i.i.1625, 18446744073709551615
  %sub.i.i.1634 = sub nsw i128 %conv26.i.i.1633, %shr22.i.i.1631
  %shl.i.i.1635 = shl nuw nsw i128 %shr22.i.i.1631, 32
  %add32.i.i.1636 = add nsw i128 %sub.i.i.1634, %shl.i.i.1635
  %shr34.i.i.1637 = lshr i128 %add32.i.i.1636, 64
  %conv35.i.i.1638 = trunc i128 %shr34.i.i.1637 to i64
  %add36.i.i.1639 = add i64 %conv35.i.i.1638, %conv23.i.i.1632
  %conv39.i.i.1640 = and i128 %add32.i.i.1636, 18446744073709551615
  %sub43.i.i.1641 = sub nsw i128 %conv39.i.i.1640, %shr34.i.i.1637
  %shl45.i.i.1642 = shl nuw nsw i128 %shr34.i.i.1637, 32
  %add47.i.i.1643 = add nsw i128 %sub43.i.i.1641, %shl45.i.i.1642
  %conv48.i.i.1644 = zext i64 %add36.i.i.1639 to i128
  %add50.i.i.1645 = add i128 %add16.i.i.1628, %conv48.i.i.1644
  %shl52.i.i.1646 = shl nuw nsw i128 %conv48.i.i.1644, 32
  %sub54.i.i.1647 = sub i128 %add19.i.i.1630, %shl52.i.i.1646
  %shr56.i.i.1648 = lshr i128 %add47.i.i.1643, 64
  %conv57.i.i.1649 = trunc i128 %shr56.i.i.1648 to i64
  %sub58.i.i.1650 = sub i64 0, %conv57.i.i.1649
  %conv60.i.i.1651 = trunc i128 %add47.i.i.1643 to i64
  %and.i.i.1652 = and i64 %conv60.i.i.1651, 9223372036854775807
  %neg.i.i.1653 = sub nsw i64 9223372032559808512, %and.i.i.1652
  %sub62177.i.i.1654 = and i64 %neg.i.i.1653, %conv60.i.i.1651
  %and66.i.i.1655 = ashr i64 %sub62177.i.i.1654, 63
  %or.i.i.1656 = or i64 %and66.i.i.1655, %sub58.i.i.1650
  %conv68.i.i.1657 = zext i64 %or.i.i.1656 to i128
  %sub70.i.i.1658 = sub i128 %add50.i.i.1645, %conv68.i.i.1657
  %and71.i.i.1659 = and i64 %or.i.i.1656, 4294967295
  %conv72.i.i.1660 = zext i64 %and71.i.i.1659 to i128
  %sub74.i.i.1661 = sub i128 %sub54.i.i.1647, %conv72.i.i.1660
  %and75.i.i.1662 = and i64 %or.i.i.1656, -4294967295
  %conv76.i.i.1663 = zext i64 %and75.i.i.1662 to i128
  %sub78.i.i.1664 = sub nsw i128 %add47.i.i.1643, %conv76.i.i.1663
  %shr80.i.i.1665 = lshr i128 %sub70.i.i.1658, 64
  %add84.i.i.1666 = add i128 %sub74.i.i.1661, %shr80.i.i.1665
  %shr90.i.i.1668 = lshr i128 %add84.i.i.1666, 64
  %add94.i.i.1669 = add nuw nsw i128 %add13.i.i.1627, %shr90.i.i.1668
  %shr100.i.i.1671 = lshr i128 %add94.i.i.1669, 64
  %add104.i.i.1672 = add nsw i128 %sub78.i.i.1664, %shr100.i.i.1671
  %conv.i.1736 = and i128 %sub70.i.i.1658, 18446744073709551615
  %mul.i.1738 = mul nuw i128 %conv.i.1736, %conv2.i.3586
  %shr.i.1739 = lshr i128 %mul.i.1738, 64
  %conv5.i.1740 = and i128 %mul.i.1738, 18446744073709551615
  store i128 %conv5.i.1740, i128* %arraydecay, align 16, !tbaa !2
  %mul13.i.1744 = mul nuw i128 %conv.i.1736, %conv12.i.3592
  %shr15.i.1745 = lshr i128 %mul13.i.1744, 64
  %conv17.i.1746 = and i128 %mul13.i.1744, 18446744073709551615
  %add.i.1747 = add nuw nsw i128 %conv17.i.1746, %shr.i.1739
  %conv22.i.1750 = and i128 %add84.i.i.1666, 18446744073709551615
  %mul25.i.1751 = mul nuw i128 %conv22.i.1750, %conv2.i.3586
  %shr27.i.1752 = lshr i128 %mul25.i.1751, 64
  %conv29.i.1753 = and i128 %mul25.i.1751, 18446744073709551615
  %add31.i.1754 = add nuw nsw i128 %add.i.1747, %conv29.i.1753
  store i128 %add31.i.1754, i128* %arrayidx2.i, align 16, !tbaa !2
  %mul39.i.1758 = mul nuw i128 %conv.i.1736, %conv38.i.3606
  %shr41.i.1759 = lshr i128 %mul39.i.1758, 64
  %conv43.i.1760 = and i128 %mul39.i.1758, 18446744073709551615
  %mul52.i.1763 = mul nuw i128 %conv22.i.1750, %conv12.i.3592
  %shr54.i.1764 = lshr i128 %mul52.i.1763, 64
  %conv56.i.1765 = and i128 %mul52.i.1763, 18446744073709551615
  %conv63.i.1769 = and i128 %add94.i.i.1669, 18446744073709551615
  %mul66.i.1770 = mul nuw i128 %conv63.i.1769, %conv2.i.3586
  %shr68.i.1771 = lshr i128 %mul66.i.1770, 64
  %conv70.i.1772 = and i128 %mul66.i.1770, 18446744073709551615
  %add34.i.1755 = add nuw nsw i128 %conv43.i.1760, %shr15.i.1745
  %add45.i.1761 = add nuw nsw i128 %add34.i.1755, %shr27.i.1752
  %add58.i.1766 = add nuw nsw i128 %add45.i.1761, %conv56.i.1765
  %add72.i.1773 = add nuw nsw i128 %add58.i.1766, %conv70.i.1772
  store i128 %add72.i.1773, i128* %arrayidx5.i, align 16, !tbaa !2
  %mul80.i.1777 = mul nuw i128 %conv.i.1736, %conv79.i.3625
  %shr82.i.1778 = lshr i128 %mul80.i.1777, 64
  %conv84.i.1779 = and i128 %mul80.i.1777, 18446744073709551615
  %mul93.i.1782 = mul nuw i128 %conv22.i.1750, %conv38.i.3606
  %shr95.i.1783 = lshr i128 %mul93.i.1782, 64
  %conv97.i.1784 = and i128 %mul93.i.1782, 18446744073709551615
  %add102.i.1786 = add nuw nsw i128 %shr95.i.1783, %shr82.i.1778
  %mul107.i.1787 = mul nuw i128 %conv63.i.1769, %conv12.i.3592
  %shr109.i.1788 = lshr i128 %mul107.i.1787, 64
  %conv111.i.1789 = and i128 %mul107.i.1787, 18446744073709551615
  %conv118.i.1793 = and i128 %add104.i.i.1672, 18446744073709551615
  %mul121.i.1794 = mul nuw i128 %conv118.i.1793, %conv2.i.3586
  %shr123.i.1795 = lshr i128 %mul121.i.1794, 64
  %conv125.i.1796 = and i128 %mul121.i.1794, 18446744073709551615
  %add61.i.1767 = add nuw nsw i128 %conv84.i.1779, %shr41.i.1759
  %add75.i.1774 = add nuw nsw i128 %add61.i.1767, %shr54.i.1764
  %add86.i.1780 = add nuw nsw i128 %add75.i.1774, %conv97.i.1784
  %add99.i.1785 = add nuw nsw i128 %add86.i.1780, %shr68.i.1771
  %add113.i.1790 = add nuw nsw i128 %add99.i.1785, %conv111.i.1789
  %add127.i.1797 = add nuw nsw i128 %add113.i.1790, %conv125.i.1796
  store i128 %add127.i.1797, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.1799 = mul nuw i128 %conv22.i.1750, %conv79.i.3625
  %shr137.i.1800 = lshr i128 %mul135.i.1799, 64
  %conv139.i.1801 = and i128 %mul135.i.1799, 18446744073709551615
  %mul148.i.1804 = mul nuw i128 %conv63.i.1769, %conv38.i.3606
  %shr150.i.1805 = lshr i128 %mul148.i.1804, 64
  %conv152.i.1806 = and i128 %mul148.i.1804, 18446744073709551615
  %add157.i.1808 = add nuw nsw i128 %shr150.i.1805, %shr137.i.1800
  %mul162.i.1809 = mul nuw i128 %conv118.i.1793, %conv12.i.3592
  %shr164.i.1810 = lshr i128 %mul162.i.1809, 64
  %conv166.i.1811 = and i128 %mul162.i.1809, 18446744073709551615
  %add116.i.1791 = add nuw nsw i128 %add102.i.1786, %conv139.i.1801
  %add130.i.1798 = add nuw nsw i128 %add116.i.1791, %shr109.i.1788
  %add141.i.1802 = add nuw nsw i128 %add130.i.1798, %conv152.i.1806
  %add154.i.1807 = add nuw nsw i128 %add141.i.1802, %shr123.i.1795
  %add168.i.1812 = add nuw nsw i128 %add154.i.1807, %conv166.i.1811
  store i128 %add168.i.1812, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.1814 = mul nuw i128 %conv63.i.1769, %conv79.i.3625
  %shr178.i.1815 = lshr i128 %mul176.i.1814, 64
  %conv180.i.1816 = and i128 %mul176.i.1814, 18446744073709551615
  %mul189.i.1819 = mul nuw i128 %conv118.i.1793, %conv38.i.3606
  %shr191.i.1820 = lshr i128 %mul189.i.1819, 64
  %conv193.i.1821 = and i128 %mul189.i.1819, 18446744073709551615
  %add171.i.1813 = add nuw nsw i128 %add157.i.1808, %conv180.i.1816
  %add182.i.1817 = add nuw nsw i128 %add171.i.1813, %shr164.i.1810
  %add195.i.1822 = add nuw nsw i128 %add182.i.1817, %conv193.i.1821
  store i128 %add195.i.1822, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.1823 = add nuw nsw i128 %shr191.i.1820, %shr178.i.1815
  %mul203.i.1824 = mul nuw i128 %conv118.i.1793, %conv79.i.3625
  %shr205.i.1825 = lshr i128 %mul203.i.1824, 64
  %conv207.i.1826 = and i128 %mul203.i.1824, 18446744073709551615
  %add209.i.1827 = add nuw nsw i128 %add198.i.1823, %conv207.i.1826
  store i128 %add209.i.1827, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.1825, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.1575 = add nuw nsw i128 %conv5.i.1740, 1267650600228229401427983728624
  %add3.i.1577 = or i128 %add31.i.1754, 1267650600228229401496703205376
  %add6.i.1580 = add nuw nsw i128 %add72.i.1773, 1267650600228229401427983728656
  %add9.i.1583 = add i128 %add127.i.1797, 1267650600228229401427983728656
  %shl.i.i.1587 = shl nuw nsw i128 %add195.i.1822, 32
  %add.i.i.1588 = add i128 %shl.i.i.1587, %add168.i.1812
  %add3.i.i.1589 = add i128 %add.i.i.1588, %add.i.1575
  %sub.i.i.1590 = sub i128 %add9.i.1583, %add.i.i.1588
  %sub7.i.i.1592 = sub nsw i128 %add195.i.1822, %shr205.i.1825
  %add9.i.i.1593 = add nsw i128 %sub7.i.i.1592, %add3.i.1577
  %sub11.i.i.1594 = sub nsw i128 %add6.i.1580, %sub7.i.i.1592
  %shl13.i.i.1595 = shl i128 %add168.i.1812, 32
  %sub15.i.i.1596 = sub i128 %add9.i.i.1593, %shl13.i.i.1595
  %add19.i.i.1598 = add i128 %shl13.i.i.1595, %sub.i.i.1590
  %sub23.i.i.1600 = sub i128 %sub11.i.i.1594, %shl.i.i.1587
  %sub26.i.i.1602 = sub i128 %add3.i.i.1589, %add209.i.1827
  %shl28.i.i.1603 = shl nuw nsw i128 %add209.i.1827, 32
  %sub30.i.i.1604 = sub i128 %sub26.i.i.1602, %shl28.i.i.1603
  %shl32.i.i.1605 = shl nuw nsw i128 %add209.i.1827, 33
  %add34.i.i.1606 = add i128 %shl32.i.i.1605, %sub15.i.i.1596
  store i128 %add34.i.i.1606, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1607 = shl nuw nsw i128 %add209.i.1827, 1
  %add37.i.i.1608 = add i128 %mul.i.i.1607, %sub23.i.i.1600
  %sub41.i.i.1610 = sub i128 %add19.i.i.1598, %shl28.i.i.1603
  %sub44.i.i.1611 = sub i128 %sub30.i.i.1604, %shr205.i.1825
  %shl46.i.i.1612 = shl nuw nsw i128 %shr205.i.1825, 32
  %sub48.i.i.1613 = sub i128 %sub44.i.i.1611, %shl46.i.i.1612
  store i128 %sub48.i.i.1613, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1614 = shl nuw nsw i128 %shr205.i.1825, 33
  %add52.i.i.1615 = add i128 %shl50.i.i.1614, %add37.i.i.1608
  store i128 %add52.i.i.1615, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1616 = mul nuw nsw i128 %shr205.i.1825, 3
  %add56.i.i.1617 = add i128 %mul54.i.i.1616, %sub41.i.i.1610
  store i128 %add56.i.i.1617, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  br label %for.body.139

for.body.139:                                     ; preds = %for.body.139, %for.end.131
  %i.64433 = phi i32 [ 0, %for.end.131 ], [ %inc145, %for.body.139 ]
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %115 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1489 = add i128 %115, 1267650600228229401427983728624
  %116 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1491 = add i128 %116, 1267650600228229401496703205376
  %117 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1494 = add i128 %117, 1267650600228229401427983728656
  %118 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1497 = add i128 %118, 1267650600228229401427983728656
  %119 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %120 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1501 = shl i128 %120, 32
  %add.i.i.1502 = add i128 %shl.i.i.1501, %119
  %add3.i.i.1503 = add i128 %add.i.i.1502, %add.i.1489
  %sub.i.i.1504 = sub i128 %add9.i.1497, %add.i.i.1502
  %121 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1506 = sub i128 %120, %121
  %add9.i.i.1507 = add i128 %sub7.i.i.1506, %add3.i.1491
  %sub11.i.i.1508 = sub i128 %add6.i.1494, %sub7.i.i.1506
  %shl13.i.i.1509 = shl i128 %119, 32
  %sub15.i.i.1510 = sub i128 %add9.i.i.1507, %shl13.i.i.1509
  %add19.i.i.1512 = add i128 %shl13.i.i.1509, %sub.i.i.1504
  %sub23.i.i.1514 = sub i128 %sub11.i.i.1508, %shl.i.i.1501
  %122 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1516 = sub i128 %add3.i.i.1503, %122
  %shl28.i.i.1517 = shl i128 %122, 32
  %sub30.i.i.1518 = sub i128 %sub26.i.i.1516, %shl28.i.i.1517
  %shl32.i.i.1519 = shl i128 %122, 33
  %add34.i.i.1520 = add i128 %shl32.i.i.1519, %sub15.i.i.1510
  store i128 %add34.i.i.1520, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1521 = shl i128 %122, 1
  %add37.i.i.1522 = add i128 %mul.i.i.1521, %sub23.i.i.1514
  %sub41.i.i.1524 = sub i128 %add19.i.i.1512, %shl28.i.i.1517
  %sub44.i.i.1525 = sub i128 %sub30.i.i.1518, %121
  %shl46.i.i.1526 = shl i128 %121, 32
  %sub48.i.i.1527 = sub i128 %sub44.i.i.1525, %shl46.i.i.1526
  store i128 %sub48.i.i.1527, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1528 = shl i128 %121, 33
  %add52.i.i.1529 = add i128 %shl50.i.i.1528, %add37.i.i.1522
  store i128 %add52.i.i.1529, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1530 = mul i128 %121, 3
  %add56.i.i.1531 = add i128 %mul54.i.i.1530, %sub41.i.i.1524
  store i128 %add56.i.i.1531, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %inc145 = add nuw nsw i32 %i.64433, 1
  %exitcond = icmp eq i32 %inc145, 4
  br i1 %exitcond, label %for.end.146, label %for.body.139

for.end.146:                                      ; preds = %for.body.139
  %add56.i.i.1531.lcssa = phi i128 [ %add56.i.i.1531, %for.body.139 ]
  %add52.i.i.1529.lcssa = phi i128 [ %add52.i.i.1529, %for.body.139 ]
  %sub48.i.i.1527.lcssa = phi i128 [ %sub48.i.i.1527, %for.body.139 ]
  %add34.i.i.1520.lcssa = phi i128 [ %add34.i.i.1520, %for.body.139 ]
  %add.i.i.1282 = add i128 %add56.i.i.1531.lcssa, 18446744069414584320
  %shr.i.i.1284 = lshr i128 %add52.i.i.1529.lcssa, 64
  %add8.i.i.1285 = add i128 %add.i.i.1282, %shr.i.i.1284
  %conv12.i.i.1286 = and i128 %add52.i.i.1529.lcssa, 18446744073709551615
  %add13.i.i.1287 = add nuw nsw i128 %conv12.i.i.1286, 18446673704965373952
  %add16.i.i.1288 = add i128 %sub48.i.i.1527.lcssa, 18446744073709551615
  %add19.i.i.1290 = add i128 %add34.i.i.1520.lcssa, 1298074214633706907132628377272319
  %shr22.i.i.1291 = lshr i128 %add8.i.i.1285, 64
  %conv23.i.i.1292 = trunc i128 %shr22.i.i.1291 to i64
  %conv26.i.i.1293 = and i128 %add8.i.i.1285, 18446744073709551615
  %sub.i.i.1294 = sub nsw i128 %conv26.i.i.1293, %shr22.i.i.1291
  %shl.i.i.1295 = shl nuw nsw i128 %shr22.i.i.1291, 32
  %add32.i.i.1296 = add nsw i128 %sub.i.i.1294, %shl.i.i.1295
  %shr34.i.i.1297 = lshr i128 %add32.i.i.1296, 64
  %conv35.i.i.1298 = trunc i128 %shr34.i.i.1297 to i64
  %add36.i.i.1299 = add i64 %conv35.i.i.1298, %conv23.i.i.1292
  %conv39.i.i.1300 = and i128 %add32.i.i.1296, 18446744073709551615
  %sub43.i.i.1301 = sub nsw i128 %conv39.i.i.1300, %shr34.i.i.1297
  %shl45.i.i.1302 = shl nuw nsw i128 %shr34.i.i.1297, 32
  %add47.i.i.1303 = add nsw i128 %sub43.i.i.1301, %shl45.i.i.1302
  %conv48.i.i.1304 = zext i64 %add36.i.i.1299 to i128
  %add50.i.i.1305 = add i128 %add16.i.i.1288, %conv48.i.i.1304
  %shl52.i.i.1306 = shl nuw nsw i128 %conv48.i.i.1304, 32
  %sub54.i.i.1307 = sub i128 %add19.i.i.1290, %shl52.i.i.1306
  %shr56.i.i.1308 = lshr i128 %add47.i.i.1303, 64
  %conv57.i.i.1309 = trunc i128 %shr56.i.i.1308 to i64
  %sub58.i.i.1310 = sub i64 0, %conv57.i.i.1309
  %conv60.i.i.1311 = trunc i128 %add47.i.i.1303 to i64
  %and.i.i.1312 = and i64 %conv60.i.i.1311, 9223372036854775807
  %neg.i.i.1313 = sub nsw i64 9223372032559808512, %and.i.i.1312
  %sub62177.i.i.1314 = and i64 %neg.i.i.1313, %conv60.i.i.1311
  %and66.i.i.1315 = ashr i64 %sub62177.i.i.1314, 63
  %or.i.i.1316 = or i64 %and66.i.i.1315, %sub58.i.i.1310
  %conv68.i.i.1317 = zext i64 %or.i.i.1316 to i128
  %sub70.i.i.1318 = sub i128 %add50.i.i.1305, %conv68.i.i.1317
  %and71.i.i.1319 = and i64 %or.i.i.1316, 4294967295
  %conv72.i.i.1320 = zext i64 %and71.i.i.1319 to i128
  %sub74.i.i.1321 = sub i128 %sub54.i.i.1307, %conv72.i.i.1320
  %and75.i.i.1322 = and i64 %or.i.i.1316, -4294967295
  %conv76.i.i.1323 = zext i64 %and75.i.i.1322 to i128
  %sub78.i.i.1324 = sub nsw i128 %add47.i.i.1303, %conv76.i.i.1323
  %shr80.i.i.1325 = lshr i128 %sub70.i.i.1318, 64
  %add84.i.i.1326 = add i128 %sub74.i.i.1321, %shr80.i.i.1325
  %shr90.i.i.1328 = lshr i128 %add84.i.i.1326, 64
  %add94.i.i.1329 = add nuw nsw i128 %add13.i.i.1287, %shr90.i.i.1328
  %shr100.i.i.1331 = lshr i128 %add94.i.i.1329, 64
  %add104.i.i.1332 = add nsw i128 %sub78.i.i.1324, %shr100.i.i.1331
  %conv.i.1396 = and i128 %sub70.i.i.1318, 18446744073709551615
  %mul.i.1398 = mul nuw i128 %conv.i.1396, %conv2.i.3932
  %shr.i.1399 = lshr i128 %mul.i.1398, 64
  %conv5.i.1400 = and i128 %mul.i.1398, 18446744073709551615
  store i128 %conv5.i.1400, i128* %arraydecay, align 16, !tbaa !2
  %mul13.i.1404 = mul nuw i128 %conv.i.1396, %conv12.i.3938
  %shr15.i.1405 = lshr i128 %mul13.i.1404, 64
  %conv17.i.1406 = and i128 %mul13.i.1404, 18446744073709551615
  %add.i.1407 = add nuw nsw i128 %conv17.i.1406, %shr.i.1399
  %conv22.i.1410 = and i128 %add84.i.i.1326, 18446744073709551615
  %mul25.i.1411 = mul nuw i128 %conv22.i.1410, %conv2.i.3932
  %shr27.i.1412 = lshr i128 %mul25.i.1411, 64
  %conv29.i.1413 = and i128 %mul25.i.1411, 18446744073709551615
  %add31.i.1414 = add nuw nsw i128 %add.i.1407, %conv29.i.1413
  store i128 %add31.i.1414, i128* %arrayidx2.i, align 16, !tbaa !2
  %mul39.i.1418 = mul nuw i128 %conv.i.1396, %conv38.i.3952
  %shr41.i.1419 = lshr i128 %mul39.i.1418, 64
  %conv43.i.1420 = and i128 %mul39.i.1418, 18446744073709551615
  %mul52.i.1423 = mul nuw i128 %conv22.i.1410, %conv12.i.3938
  %shr54.i.1424 = lshr i128 %mul52.i.1423, 64
  %conv56.i.1425 = and i128 %mul52.i.1423, 18446744073709551615
  %conv63.i.1429 = and i128 %add94.i.i.1329, 18446744073709551615
  %mul66.i.1430 = mul nuw i128 %conv63.i.1429, %conv2.i.3932
  %shr68.i.1431 = lshr i128 %mul66.i.1430, 64
  %conv70.i.1432 = and i128 %mul66.i.1430, 18446744073709551615
  %add34.i.1415 = add nuw nsw i128 %conv43.i.1420, %shr15.i.1405
  %add45.i.1421 = add nuw nsw i128 %add34.i.1415, %shr27.i.1412
  %add58.i.1426 = add nuw nsw i128 %add45.i.1421, %conv56.i.1425
  %add72.i.1433 = add nuw nsw i128 %add58.i.1426, %conv70.i.1432
  store i128 %add72.i.1433, i128* %arrayidx5.i, align 16, !tbaa !2
  %mul80.i.1437 = mul nuw i128 %conv.i.1396, %conv79.i.3971
  %shr82.i.1438 = lshr i128 %mul80.i.1437, 64
  %conv84.i.1439 = and i128 %mul80.i.1437, 18446744073709551615
  %mul93.i.1442 = mul nuw i128 %conv22.i.1410, %conv38.i.3952
  %shr95.i.1443 = lshr i128 %mul93.i.1442, 64
  %conv97.i.1444 = and i128 %mul93.i.1442, 18446744073709551615
  %add102.i.1446 = add nuw nsw i128 %shr95.i.1443, %shr82.i.1438
  %mul107.i.1447 = mul nuw i128 %conv63.i.1429, %conv12.i.3938
  %shr109.i.1448 = lshr i128 %mul107.i.1447, 64
  %conv111.i.1449 = and i128 %mul107.i.1447, 18446744073709551615
  %conv118.i.1453 = and i128 %add104.i.i.1332, 18446744073709551615
  %mul121.i.1454 = mul nuw i128 %conv118.i.1453, %conv2.i.3932
  %shr123.i.1455 = lshr i128 %mul121.i.1454, 64
  %conv125.i.1456 = and i128 %mul121.i.1454, 18446744073709551615
  %add61.i.1427 = add nuw nsw i128 %conv84.i.1439, %shr41.i.1419
  %add75.i.1434 = add nuw nsw i128 %add61.i.1427, %shr54.i.1424
  %add86.i.1440 = add nuw nsw i128 %add75.i.1434, %conv97.i.1444
  %add99.i.1445 = add nuw nsw i128 %add86.i.1440, %shr68.i.1431
  %add113.i.1450 = add nuw nsw i128 %add99.i.1445, %conv111.i.1449
  %add127.i.1457 = add nuw nsw i128 %add113.i.1450, %conv125.i.1456
  store i128 %add127.i.1457, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.1459 = mul nuw i128 %conv22.i.1410, %conv79.i.3971
  %shr137.i.1460 = lshr i128 %mul135.i.1459, 64
  %conv139.i.1461 = and i128 %mul135.i.1459, 18446744073709551615
  %mul148.i.1464 = mul nuw i128 %conv63.i.1429, %conv38.i.3952
  %shr150.i.1465 = lshr i128 %mul148.i.1464, 64
  %conv152.i.1466 = and i128 %mul148.i.1464, 18446744073709551615
  %add157.i.1468 = add nuw nsw i128 %shr150.i.1465, %shr137.i.1460
  %mul162.i.1469 = mul nuw i128 %conv118.i.1453, %conv12.i.3938
  %shr164.i.1470 = lshr i128 %mul162.i.1469, 64
  %conv166.i.1471 = and i128 %mul162.i.1469, 18446744073709551615
  %add116.i.1451 = add nuw nsw i128 %add102.i.1446, %conv139.i.1461
  %add130.i.1458 = add nuw nsw i128 %add116.i.1451, %shr109.i.1448
  %add141.i.1462 = add nuw nsw i128 %add130.i.1458, %conv152.i.1466
  %add154.i.1467 = add nuw nsw i128 %add141.i.1462, %shr123.i.1455
  %add168.i.1472 = add nuw nsw i128 %add154.i.1467, %conv166.i.1471
  store i128 %add168.i.1472, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.1474 = mul nuw i128 %conv63.i.1429, %conv79.i.3971
  %shr178.i.1475 = lshr i128 %mul176.i.1474, 64
  %conv180.i.1476 = and i128 %mul176.i.1474, 18446744073709551615
  %mul189.i.1479 = mul nuw i128 %conv118.i.1453, %conv38.i.3952
  %shr191.i.1480 = lshr i128 %mul189.i.1479, 64
  %conv193.i.1481 = and i128 %mul189.i.1479, 18446744073709551615
  %add171.i.1473 = add nuw nsw i128 %add157.i.1468, %conv180.i.1476
  %add182.i.1477 = add nuw nsw i128 %add171.i.1473, %shr164.i.1470
  %add195.i.1482 = add nuw nsw i128 %add182.i.1477, %conv193.i.1481
  store i128 %add195.i.1482, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.1483 = add nuw nsw i128 %shr191.i.1480, %shr178.i.1475
  %mul203.i.1484 = mul nuw i128 %conv118.i.1453, %conv79.i.3971
  %shr205.i.1485 = lshr i128 %mul203.i.1484, 64
  %conv207.i.1486 = and i128 %mul203.i.1484, 18446744073709551615
  %add209.i.1487 = add nuw nsw i128 %add198.i.1483, %conv207.i.1486
  store i128 %add209.i.1487, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.1485, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.1235 = add nuw nsw i128 %conv5.i.1400, 1267650600228229401427983728624
  %add3.i.1237 = or i128 %add31.i.1414, 1267650600228229401496703205376
  %add6.i.1240 = add nuw nsw i128 %add72.i.1433, 1267650600228229401427983728656
  %add9.i.1243 = add i128 %add127.i.1457, 1267650600228229401427983728656
  %shl.i.i.1247 = shl nuw nsw i128 %add195.i.1482, 32
  %add.i.i.1248 = add i128 %shl.i.i.1247, %add168.i.1472
  %add3.i.i.1249 = add i128 %add.i.i.1248, %add.i.1235
  %sub.i.i.1250 = sub i128 %add9.i.1243, %add.i.i.1248
  %sub7.i.i.1252 = sub nsw i128 %add195.i.1482, %shr205.i.1485
  %add9.i.i.1253 = add nsw i128 %sub7.i.i.1252, %add3.i.1237
  %sub11.i.i.1254 = sub nsw i128 %add6.i.1240, %sub7.i.i.1252
  %shl13.i.i.1255 = shl i128 %add168.i.1472, 32
  %sub15.i.i.1256 = sub i128 %add9.i.i.1253, %shl13.i.i.1255
  %add19.i.i.1258 = add i128 %shl13.i.i.1255, %sub.i.i.1250
  %sub23.i.i.1260 = sub i128 %sub11.i.i.1254, %shl.i.i.1247
  %sub26.i.i.1262 = sub i128 %add3.i.i.1249, %add209.i.1487
  %shl28.i.i.1263 = shl nuw nsw i128 %add209.i.1487, 32
  %sub30.i.i.1264 = sub i128 %sub26.i.i.1262, %shl28.i.i.1263
  %shl32.i.i.1265 = shl nuw nsw i128 %add209.i.1487, 33
  %add34.i.i.1266 = add i128 %shl32.i.i.1265, %sub15.i.i.1256
  store i128 %add34.i.i.1266, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1267 = shl nuw nsw i128 %add209.i.1487, 1
  %add37.i.i.1268 = add i128 %mul.i.i.1267, %sub23.i.i.1260
  %sub41.i.i.1270 = sub i128 %add19.i.i.1258, %shl28.i.i.1263
  %sub44.i.i.1271 = sub i128 %sub30.i.i.1264, %shr205.i.1485
  %shl46.i.i.1272 = shl nuw nsw i128 %shr205.i.1485, 32
  %sub48.i.i.1273 = sub i128 %sub44.i.i.1271, %shl46.i.i.1272
  store i128 %sub48.i.i.1273, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1274 = shl nuw nsw i128 %shr205.i.1485, 33
  %add52.i.i.1275 = add i128 %shl50.i.i.1274, %add37.i.i.1268
  store i128 %add52.i.i.1275, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1276 = mul nuw nsw i128 %shr205.i.1485, 3
  %add56.i.i.1277 = add i128 %mul54.i.i.1276, %sub41.i.i.1270
  store i128 %add56.i.i.1277, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %123 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1149 = add i128 %123, 1267650600228229401427983728624
  %124 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1151 = add i128 %124, 1267650600228229401496703205376
  %125 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1154 = add i128 %125, 1267650600228229401427983728656
  %126 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1157 = add i128 %126, 1267650600228229401427983728656
  %127 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %128 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1161 = shl i128 %128, 32
  %add.i.i.1162 = add i128 %shl.i.i.1161, %127
  %add3.i.i.1163 = add i128 %add.i.i.1162, %add.i.1149
  %sub.i.i.1164 = sub i128 %add9.i.1157, %add.i.i.1162
  %129 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1166 = sub i128 %128, %129
  %add9.i.i.1167 = add i128 %sub7.i.i.1166, %add3.i.1151
  %sub11.i.i.1168 = sub i128 %add6.i.1154, %sub7.i.i.1166
  %shl13.i.i.1169 = shl i128 %127, 32
  %sub15.i.i.1170 = sub i128 %add9.i.i.1167, %shl13.i.i.1169
  %add19.i.i.1172 = add i128 %shl13.i.i.1169, %sub.i.i.1164
  %sub23.i.i.1174 = sub i128 %sub11.i.i.1168, %shl.i.i.1161
  %130 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1176 = sub i128 %add3.i.i.1163, %130
  %shl28.i.i.1177 = shl i128 %130, 32
  %sub30.i.i.1178 = sub i128 %sub26.i.i.1176, %shl28.i.i.1177
  %shl32.i.i.1179 = shl i128 %130, 33
  %add34.i.i.1180 = add i128 %shl32.i.i.1179, %sub15.i.i.1170
  store i128 %add34.i.i.1180, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1181 = shl i128 %130, 1
  %add37.i.i.1182 = add i128 %mul.i.i.1181, %sub23.i.i.1174
  %sub41.i.i.1184 = sub i128 %add19.i.i.1172, %shl28.i.i.1177
  %sub44.i.i.1185 = sub i128 %sub30.i.i.1178, %129
  %shl46.i.i.1186 = shl i128 %129, 32
  %sub48.i.i.1187 = sub i128 %sub44.i.i.1185, %shl46.i.i.1186
  store i128 %sub48.i.i.1187, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1188 = shl i128 %129, 33
  %add52.i.i.1189 = add i128 %shl50.i.i.1188, %add37.i.i.1182
  store i128 %add52.i.i.1189, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1190 = mul i128 %129, 3
  %add56.i.i.1191 = add i128 %mul54.i.i.1190, %sub41.i.i.1184
  store i128 %add56.i.i.1191, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %131 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1101 = add i128 %131, 1267650600228229401427983728624
  %132 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.1103 = add i128 %132, 1267650600228229401496703205376
  %133 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.1106 = add i128 %133, 1267650600228229401427983728656
  %134 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.1109 = add i128 %134, 1267650600228229401427983728656
  %135 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %136 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.1113 = shl i128 %136, 32
  %add.i.i.1114 = add i128 %shl.i.i.1113, %135
  %add3.i.i.1115 = add i128 %add.i.i.1114, %add.i.1101
  %sub.i.i.1116 = sub i128 %add9.i.1109, %add.i.i.1114
  %137 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.1118 = sub i128 %136, %137
  %add9.i.i.1119 = add i128 %sub7.i.i.1118, %add3.i.1103
  %sub11.i.i.1120 = sub i128 %add6.i.1106, %sub7.i.i.1118
  %shl13.i.i.1121 = shl i128 %135, 32
  %sub15.i.i.1122 = sub i128 %add9.i.i.1119, %shl13.i.i.1121
  %add19.i.i.1124 = add i128 %shl13.i.i.1121, %sub.i.i.1116
  %sub23.i.i.1126 = sub i128 %sub11.i.i.1120, %shl.i.i.1113
  %138 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.1128 = sub i128 %add3.i.i.1115, %138
  %shl28.i.i.1129 = shl i128 %138, 32
  %sub30.i.i.1130 = sub i128 %sub26.i.i.1128, %shl28.i.i.1129
  %shl32.i.i.1131 = shl i128 %138, 33
  %add34.i.i.1132 = add i128 %shl32.i.i.1131, %sub15.i.i.1122
  store i128 %add34.i.i.1132, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.1133 = shl i128 %138, 1
  %add37.i.i.1134 = add i128 %mul.i.i.1133, %sub23.i.i.1126
  %sub41.i.i.1136 = sub i128 %add19.i.i.1124, %shl28.i.i.1129
  %sub44.i.i.1137 = sub i128 %sub30.i.i.1130, %137
  %shl46.i.i.1138 = shl i128 %137, 32
  %sub48.i.i.1139 = sub i128 %sub44.i.i.1137, %shl46.i.i.1138
  store i128 %sub48.i.i.1139, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.1140 = shl i128 %137, 33
  %add52.i.i.1141 = add i128 %shl50.i.i.1140, %add37.i.i.1134
  store i128 %add52.i.i.1141, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.1142 = mul i128 %137, 3
  %add56.i.i.1143 = add i128 %mul54.i.i.1142, %sub41.i.i.1136
  store i128 %add56.i.i.1143, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %add.i.i.894 = add i128 %add56.i.i.1143, 18446744069414584320
  %shr.i.i.896 = lshr i128 %add52.i.i.1141, 64
  %add8.i.i.897 = add i128 %add.i.i.894, %shr.i.i.896
  %conv12.i.i.898 = and i128 %add52.i.i.1141, 18446744073709551615
  %add13.i.i.899 = add nuw nsw i128 %conv12.i.i.898, 18446673704965373952
  %add16.i.i.900 = add i128 %sub48.i.i.1139, 18446744073709551615
  %add19.i.i.902 = add i128 %add34.i.i.1132, 1298074214633706907132628377272319
  %shr22.i.i.903 = lshr i128 %add8.i.i.897, 64
  %conv23.i.i.904 = trunc i128 %shr22.i.i.903 to i64
  %conv26.i.i.905 = and i128 %add8.i.i.897, 18446744073709551615
  %sub.i.i.906 = sub nsw i128 %conv26.i.i.905, %shr22.i.i.903
  %shl.i.i.907 = shl nuw nsw i128 %shr22.i.i.903, 32
  %add32.i.i.908 = add nsw i128 %sub.i.i.906, %shl.i.i.907
  %shr34.i.i.909 = lshr i128 %add32.i.i.908, 64
  %conv35.i.i.910 = trunc i128 %shr34.i.i.909 to i64
  %add36.i.i.911 = add i64 %conv35.i.i.910, %conv23.i.i.904
  %conv39.i.i.912 = and i128 %add32.i.i.908, 18446744073709551615
  %sub43.i.i.913 = sub nsw i128 %conv39.i.i.912, %shr34.i.i.909
  %shl45.i.i.914 = shl nuw nsw i128 %shr34.i.i.909, 32
  %add47.i.i.915 = add nsw i128 %sub43.i.i.913, %shl45.i.i.914
  %conv48.i.i.916 = zext i64 %add36.i.i.911 to i128
  %add50.i.i.917 = add i128 %add16.i.i.900, %conv48.i.i.916
  %shl52.i.i.918 = shl nuw nsw i128 %conv48.i.i.916, 32
  %sub54.i.i.919 = sub i128 %add19.i.i.902, %shl52.i.i.918
  %shr56.i.i.920 = lshr i128 %add47.i.i.915, 64
  %conv57.i.i.921 = trunc i128 %shr56.i.i.920 to i64
  %sub58.i.i.922 = sub i64 0, %conv57.i.i.921
  %conv60.i.i.923 = trunc i128 %add47.i.i.915 to i64
  %and.i.i.924 = and i64 %conv60.i.i.923, 9223372036854775807
  %neg.i.i.925 = sub nsw i64 9223372032559808512, %and.i.i.924
  %sub62177.i.i.926 = and i64 %neg.i.i.925, %conv60.i.i.923
  %and66.i.i.927 = ashr i64 %sub62177.i.i.926, 63
  %or.i.i.928 = or i64 %and66.i.i.927, %sub58.i.i.922
  %conv68.i.i.929 = zext i64 %or.i.i.928 to i128
  %sub70.i.i.930 = sub i128 %add50.i.i.917, %conv68.i.i.929
  %and71.i.i.931 = and i64 %or.i.i.928, 4294967295
  %conv72.i.i.932 = zext i64 %and71.i.i.931 to i128
  %sub74.i.i.933 = sub i128 %sub54.i.i.919, %conv72.i.i.932
  %and75.i.i.934 = and i64 %or.i.i.928, -4294967295
  %conv76.i.i.935 = zext i64 %and75.i.i.934 to i128
  %sub78.i.i.936 = sub nsw i128 %add47.i.i.915, %conv76.i.i.935
  %shr80.i.i.937 = lshr i128 %sub70.i.i.930, 64
  %add84.i.i.938 = add i128 %sub74.i.i.933, %shr80.i.i.937
  %shr90.i.i.940 = lshr i128 %add84.i.i.938, 64
  %add94.i.i.941 = add nuw nsw i128 %add13.i.i.899, %shr90.i.i.940
  %shr100.i.i.943 = lshr i128 %add94.i.i.941, 64
  %add104.i.i.944 = add nsw i128 %sub78.i.i.936, %shr100.i.i.943
  %conv.i.1008 = and i128 %sub70.i.i.930, 18446744073709551615
  %mul.i.1010 = mul nuw i128 %conv.i.1008, %conv2.i.1991
  %shr.i.1011 = lshr i128 %mul.i.1010, 64
  %conv5.i.1012 = and i128 %mul.i.1010, 18446744073709551615
  store i128 %conv5.i.1012, i128* %arraydecay, align 16, !tbaa !2
  %mul13.i.1016 = mul nuw i128 %conv.i.1008, %conv12.i.1997
  %shr15.i.1017 = lshr i128 %mul13.i.1016, 64
  %conv17.i.1018 = and i128 %mul13.i.1016, 18446744073709551615
  %add.i.1019 = add nuw nsw i128 %conv17.i.1018, %shr.i.1011
  %conv22.i.1022 = and i128 %add84.i.i.938, 18446744073709551615
  %mul25.i.1023 = mul nuw i128 %conv22.i.1022, %conv2.i.1991
  %shr27.i.1024 = lshr i128 %mul25.i.1023, 64
  %conv29.i.1025 = and i128 %mul25.i.1023, 18446744073709551615
  %add31.i.1026 = add nuw nsw i128 %add.i.1019, %conv29.i.1025
  store i128 %add31.i.1026, i128* %arrayidx2.i, align 16, !tbaa !2
  %mul39.i.1030 = mul nuw i128 %conv.i.1008, %conv38.i.2011
  %shr41.i.1031 = lshr i128 %mul39.i.1030, 64
  %conv43.i.1032 = and i128 %mul39.i.1030, 18446744073709551615
  %mul52.i.1035 = mul nuw i128 %conv22.i.1022, %conv12.i.1997
  %shr54.i.1036 = lshr i128 %mul52.i.1035, 64
  %conv56.i.1037 = and i128 %mul52.i.1035, 18446744073709551615
  %conv63.i.1041 = and i128 %add94.i.i.941, 18446744073709551615
  %mul66.i.1042 = mul nuw i128 %conv63.i.1041, %conv2.i.1991
  %shr68.i.1043 = lshr i128 %mul66.i.1042, 64
  %conv70.i.1044 = and i128 %mul66.i.1042, 18446744073709551615
  %add34.i.1027 = add nuw nsw i128 %conv43.i.1032, %shr15.i.1017
  %add45.i.1033 = add nuw nsw i128 %add34.i.1027, %shr27.i.1024
  %add58.i.1038 = add nuw nsw i128 %add45.i.1033, %conv56.i.1037
  %add72.i.1045 = add nuw nsw i128 %add58.i.1038, %conv70.i.1044
  store i128 %add72.i.1045, i128* %arrayidx5.i, align 16, !tbaa !2
  %mul80.i.1049 = mul nuw i128 %conv.i.1008, %conv79.i.2030
  %shr82.i.1050 = lshr i128 %mul80.i.1049, 64
  %conv84.i.1051 = and i128 %mul80.i.1049, 18446744073709551615
  %mul93.i.1054 = mul nuw i128 %conv22.i.1022, %conv38.i.2011
  %shr95.i.1055 = lshr i128 %mul93.i.1054, 64
  %conv97.i.1056 = and i128 %mul93.i.1054, 18446744073709551615
  %add102.i.1058 = add nuw nsw i128 %shr95.i.1055, %shr82.i.1050
  %mul107.i.1059 = mul nuw i128 %conv63.i.1041, %conv12.i.1997
  %shr109.i.1060 = lshr i128 %mul107.i.1059, 64
  %conv111.i.1061 = and i128 %mul107.i.1059, 18446744073709551615
  %conv118.i.1065 = and i128 %add104.i.i.944, 18446744073709551615
  %mul121.i.1066 = mul nuw i128 %conv118.i.1065, %conv2.i.1991
  %shr123.i.1067 = lshr i128 %mul121.i.1066, 64
  %conv125.i.1068 = and i128 %mul121.i.1066, 18446744073709551615
  %add61.i.1039 = add nuw nsw i128 %conv84.i.1051, %shr41.i.1031
  %add75.i.1046 = add nuw nsw i128 %add61.i.1039, %shr54.i.1036
  %add86.i.1052 = add nuw nsw i128 %add75.i.1046, %conv97.i.1056
  %add99.i.1057 = add nuw nsw i128 %add86.i.1052, %shr68.i.1043
  %add113.i.1062 = add nuw nsw i128 %add99.i.1057, %conv111.i.1061
  %add127.i.1069 = add nuw nsw i128 %add113.i.1062, %conv125.i.1068
  store i128 %add127.i.1069, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.1071 = mul nuw i128 %conv22.i.1022, %conv79.i.2030
  %shr137.i.1072 = lshr i128 %mul135.i.1071, 64
  %conv139.i.1073 = and i128 %mul135.i.1071, 18446744073709551615
  %mul148.i.1076 = mul nuw i128 %conv63.i.1041, %conv38.i.2011
  %shr150.i.1077 = lshr i128 %mul148.i.1076, 64
  %conv152.i.1078 = and i128 %mul148.i.1076, 18446744073709551615
  %add157.i.1080 = add nuw nsw i128 %shr150.i.1077, %shr137.i.1072
  %mul162.i.1081 = mul nuw i128 %conv118.i.1065, %conv12.i.1997
  %shr164.i.1082 = lshr i128 %mul162.i.1081, 64
  %conv166.i.1083 = and i128 %mul162.i.1081, 18446744073709551615
  %add116.i.1063 = add nuw nsw i128 %add102.i.1058, %conv139.i.1073
  %add130.i.1070 = add nuw nsw i128 %add116.i.1063, %shr109.i.1060
  %add141.i.1074 = add nuw nsw i128 %add130.i.1070, %conv152.i.1078
  %add154.i.1079 = add nuw nsw i128 %add141.i.1074, %shr123.i.1067
  %add168.i.1084 = add nuw nsw i128 %add154.i.1079, %conv166.i.1083
  store i128 %add168.i.1084, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.1086 = mul nuw i128 %conv63.i.1041, %conv79.i.2030
  %shr178.i.1087 = lshr i128 %mul176.i.1086, 64
  %conv180.i.1088 = and i128 %mul176.i.1086, 18446744073709551615
  %mul189.i.1091 = mul nuw i128 %conv118.i.1065, %conv38.i.2011
  %shr191.i.1092 = lshr i128 %mul189.i.1091, 64
  %conv193.i.1093 = and i128 %mul189.i.1091, 18446744073709551615
  %add171.i.1085 = add nuw nsw i128 %add157.i.1080, %conv180.i.1088
  %add182.i.1089 = add nuw nsw i128 %add171.i.1085, %shr164.i.1082
  %add195.i.1094 = add nuw nsw i128 %add182.i.1089, %conv193.i.1093
  store i128 %add195.i.1094, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.1095 = add nuw nsw i128 %shr191.i.1092, %shr178.i.1087
  %mul203.i.1096 = mul nuw i128 %conv118.i.1065, %conv79.i.2030
  %shr205.i.1097 = lshr i128 %mul203.i.1096, 64
  %conv207.i.1098 = and i128 %mul203.i.1096, 18446744073709551615
  %add209.i.1099 = add nuw nsw i128 %add198.i.1095, %conv207.i.1098
  store i128 %add209.i.1099, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.1097, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.847 = add nuw nsw i128 %conv5.i.1012, 1267650600228229401427983728624
  %add3.i.849 = or i128 %add31.i.1026, 1267650600228229401496703205376
  %add6.i.852 = add nuw nsw i128 %add72.i.1045, 1267650600228229401427983728656
  %add9.i.855 = add i128 %add127.i.1069, 1267650600228229401427983728656
  %shl.i.i.859 = shl nuw nsw i128 %add195.i.1094, 32
  %add.i.i.860 = add i128 %shl.i.i.859, %add168.i.1084
  %add3.i.i.861 = add i128 %add.i.i.860, %add.i.847
  %sub.i.i.862 = sub i128 %add9.i.855, %add.i.i.860
  %sub7.i.i.864 = sub nsw i128 %add195.i.1094, %shr205.i.1097
  %add9.i.i.865 = add nsw i128 %sub7.i.i.864, %add3.i.849
  %sub11.i.i.866 = sub nsw i128 %add6.i.852, %sub7.i.i.864
  %shl13.i.i.867 = shl i128 %add168.i.1084, 32
  %sub15.i.i.868 = sub i128 %add9.i.i.865, %shl13.i.i.867
  %add19.i.i.870 = add i128 %shl13.i.i.867, %sub.i.i.862
  %sub23.i.i.872 = sub i128 %sub11.i.i.866, %shl.i.i.859
  %sub26.i.i.874 = sub i128 %add3.i.i.861, %add209.i.1099
  %shl28.i.i.875 = shl nuw nsw i128 %add209.i.1099, 32
  %sub30.i.i.876 = sub i128 %sub26.i.i.874, %shl28.i.i.875
  %shl32.i.i.877 = shl nuw nsw i128 %add209.i.1099, 33
  %add34.i.i.878 = add i128 %shl32.i.i.877, %sub15.i.i.868
  store i128 %add34.i.i.878, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.879 = shl nuw nsw i128 %add209.i.1099, 1
  %add37.i.i.880 = add i128 %mul.i.i.879, %sub23.i.i.872
  %sub41.i.i.882 = sub i128 %add19.i.i.870, %shl28.i.i.875
  %sub44.i.i.883 = sub i128 %sub30.i.i.876, %shr205.i.1097
  %shl46.i.i.884 = shl nuw nsw i128 %shr205.i.1097, 32
  %sub48.i.i.885 = sub i128 %sub44.i.i.883, %shl46.i.i.884
  store i128 %sub48.i.i.885, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.886 = shl nuw nsw i128 %shr205.i.1097, 33
  %add52.i.i.887 = add i128 %shl50.i.i.886, %add37.i.i.880
  store i128 %add52.i.i.887, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.888 = mul nuw nsw i128 %shr205.i.1097, 3
  %add56.i.i.889 = add i128 %mul54.i.i.888, %sub41.i.i.882
  store i128 %add56.i.i.889, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %139 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.761 = add i128 %139, 1267650600228229401427983728624
  %140 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.763 = add i128 %140, 1267650600228229401496703205376
  %141 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.766 = add i128 %141, 1267650600228229401427983728656
  %142 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.769 = add i128 %142, 1267650600228229401427983728656
  %143 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %144 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.773 = shl i128 %144, 32
  %add.i.i.774 = add i128 %shl.i.i.773, %143
  %add3.i.i.775 = add i128 %add.i.i.774, %add.i.761
  %sub.i.i.776 = sub i128 %add9.i.769, %add.i.i.774
  %145 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.778 = sub i128 %144, %145
  %add9.i.i.779 = add i128 %sub7.i.i.778, %add3.i.763
  %sub11.i.i.780 = sub i128 %add6.i.766, %sub7.i.i.778
  %shl13.i.i.781 = shl i128 %143, 32
  %sub15.i.i.782 = sub i128 %add9.i.i.779, %shl13.i.i.781
  %add19.i.i.784 = add i128 %shl13.i.i.781, %sub.i.i.776
  %sub23.i.i.786 = sub i128 %sub11.i.i.780, %shl.i.i.773
  %146 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.788 = sub i128 %add3.i.i.775, %146
  %shl28.i.i.789 = shl i128 %146, 32
  %sub30.i.i.790 = sub i128 %sub26.i.i.788, %shl28.i.i.789
  %shl32.i.i.791 = shl i128 %146, 33
  %add34.i.i.792 = add i128 %shl32.i.i.791, %sub15.i.i.782
  store i128 %add34.i.i.792, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.793 = shl i128 %146, 1
  %add37.i.i.794 = add i128 %mul.i.i.793, %sub23.i.i.786
  %sub41.i.i.796 = sub i128 %add19.i.i.784, %shl28.i.i.789
  %sub44.i.i.797 = sub i128 %sub30.i.i.790, %145
  %shl46.i.i.798 = shl i128 %145, 32
  %sub48.i.i.799 = sub i128 %sub44.i.i.797, %shl46.i.i.798
  store i128 %sub48.i.i.799, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.800 = shl i128 %145, 33
  %add52.i.i.801 = add i128 %shl50.i.i.800, %add37.i.i.794
  store i128 %add52.i.i.801, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.802 = mul i128 %145, 3
  %add56.i.i.803 = add i128 %mul54.i.i.802, %sub41.i.i.796
  store i128 %add56.i.i.803, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay, i128* %arraydecay105)
  %147 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.507 = add i128 %147, 1267650600228229401427983728624
  %148 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add3.i.509 = add i128 %148, 1267650600228229401496703205376
  %149 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add6.i.512 = add i128 %149, 1267650600228229401427983728656
  %150 = load i128, i128* %arrayidx8.i, align 16, !tbaa !2
  %add9.i.515 = add i128 %150, 1267650600228229401427983728656
  %151 = load i128, i128* %arrayidx.i.i, align 16, !tbaa !2
  %152 = load i128, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %shl.i.i.519 = shl i128 %152, 32
  %add.i.i.520 = add i128 %shl.i.i.519, %151
  %add3.i.i.521 = add i128 %add.i.i.520, %add.i.507
  %sub.i.i.522 = sub i128 %add9.i.515, %add.i.i.520
  %153 = load i128, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %sub7.i.i.524 = sub i128 %152, %153
  %add9.i.i.525 = add i128 %sub7.i.i.524, %add3.i.509
  %sub11.i.i.526 = sub i128 %add6.i.512, %sub7.i.i.524
  %shl13.i.i.527 = shl i128 %151, 32
  %sub15.i.i.528 = sub i128 %add9.i.i.525, %shl13.i.i.527
  %add19.i.i.530 = add i128 %shl13.i.i.527, %sub.i.i.522
  %sub23.i.i.532 = sub i128 %sub11.i.i.526, %shl.i.i.519
  %154 = load i128, i128* %arrayidx24.i.i, align 16, !tbaa !2
  %sub26.i.i.534 = sub i128 %add3.i.i.521, %154
  %shl28.i.i.535 = shl i128 %154, 32
  %sub30.i.i.536 = sub i128 %sub26.i.i.534, %shl28.i.i.535
  %shl32.i.i.537 = shl i128 %154, 33
  %add34.i.i.538 = add i128 %shl32.i.i.537, %sub15.i.i.528
  store i128 %add34.i.i.538, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.539 = shl i128 %154, 1
  %add37.i.i.540 = add i128 %mul.i.i.539, %sub23.i.i.532
  %sub41.i.i.542 = sub i128 %add19.i.i.530, %shl28.i.i.535
  %sub44.i.i.543 = sub i128 %sub30.i.i.536, %153
  %shl46.i.i.544 = shl i128 %153, 32
  %sub48.i.i.545 = sub i128 %sub44.i.i.543, %shl46.i.i.544
  store i128 %sub48.i.i.545, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.546 = shl i128 %153, 33
  %add52.i.i.547 = add i128 %shl50.i.i.546, %add37.i.i.540
  store i128 %add52.i.i.547, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.548 = mul i128 %153, 3
  %add56.i.i.549 = add i128 %mul54.i.i.548, %sub41.i.i.542
  store i128 %add56.i.i.549, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %add.i.i.300 = add i128 %add56.i.i.549, 18446744069414584320
  %shr.i.i.302 = lshr i128 %add52.i.i.547, 64
  %add8.i.i.303 = add i128 %add.i.i.300, %shr.i.i.302
  %conv12.i.i.304 = and i128 %add52.i.i.547, 18446744073709551615
  %add13.i.i.305 = add nuw nsw i128 %conv12.i.i.304, 18446673704965373952
  %add16.i.i.306 = add i128 %sub48.i.i.545, 18446744073709551615
  %add19.i.i.308 = add i128 %add34.i.i.538, 1298074214633706907132628377272319
  %shr22.i.i.309 = lshr i128 %add8.i.i.303, 64
  %conv23.i.i.310 = trunc i128 %shr22.i.i.309 to i64
  %conv26.i.i.311 = and i128 %add8.i.i.303, 18446744073709551615
  %sub.i.i.312 = sub nsw i128 %conv26.i.i.311, %shr22.i.i.309
  %shl.i.i.313 = shl nuw nsw i128 %shr22.i.i.309, 32
  %add32.i.i.314 = add nsw i128 %sub.i.i.312, %shl.i.i.313
  %shr34.i.i.315 = lshr i128 %add32.i.i.314, 64
  %conv35.i.i.316 = trunc i128 %shr34.i.i.315 to i64
  %add36.i.i.317 = add i64 %conv35.i.i.316, %conv23.i.i.310
  %conv39.i.i.318 = and i128 %add32.i.i.314, 18446744073709551615
  %sub43.i.i.319 = sub nsw i128 %conv39.i.i.318, %shr34.i.i.315
  %shl45.i.i.320 = shl nuw nsw i128 %shr34.i.i.315, 32
  %add47.i.i.321 = add nsw i128 %sub43.i.i.319, %shl45.i.i.320
  %conv48.i.i.322 = zext i64 %add36.i.i.317 to i128
  %add50.i.i.323 = add i128 %add16.i.i.306, %conv48.i.i.322
  %shl52.i.i.324 = shl nuw nsw i128 %conv48.i.i.322, 32
  %sub54.i.i.325 = sub i128 %add19.i.i.308, %shl52.i.i.324
  %shr56.i.i.326 = lshr i128 %add47.i.i.321, 64
  %conv57.i.i.327 = trunc i128 %shr56.i.i.326 to i64
  %sub58.i.i.328 = sub i64 0, %conv57.i.i.327
  %conv60.i.i.329 = trunc i128 %add47.i.i.321 to i64
  %and.i.i.330 = and i64 %conv60.i.i.329, 9223372036854775807
  %neg.i.i.331 = sub nsw i64 9223372032559808512, %and.i.i.330
  %sub62177.i.i.332 = and i64 %neg.i.i.331, %conv60.i.i.329
  %and66.i.i.333 = ashr i64 %sub62177.i.i.332, 63
  %or.i.i.334 = or i64 %and66.i.i.333, %sub58.i.i.328
  %conv68.i.i.335 = zext i64 %or.i.i.334 to i128
  %sub70.i.i.336 = sub i128 %add50.i.i.323, %conv68.i.i.335
  %and71.i.i.337 = and i64 %or.i.i.334, 4294967295
  %conv72.i.i.338 = zext i64 %and71.i.i.337 to i128
  %sub74.i.i.339 = sub i128 %sub54.i.i.325, %conv72.i.i.338
  %and75.i.i.340 = and i64 %or.i.i.334, -4294967295
  %conv76.i.i.341 = zext i64 %and75.i.i.340 to i128
  %sub78.i.i.342 = sub nsw i128 %add47.i.i.321, %conv76.i.i.341
  %shr80.i.i.343 = lshr i128 %sub70.i.i.336, 64
  %add84.i.i.344 = add i128 %sub74.i.i.339, %shr80.i.i.343
  %shr90.i.i.346 = lshr i128 %add84.i.i.344, 64
  %add94.i.i.347 = add nuw nsw i128 %add13.i.i.305, %shr90.i.i.346
  %shr100.i.i.349 = lshr i128 %add94.i.i.347, 64
  %add104.i.i.350 = add nsw i128 %sub78.i.i.342, %shr100.i.i.349
  %155 = load i128, i128* %arrayidx.i.i.553, align 16, !tbaa !2
  %add.i.358 = add i128 %155, 18446744069414584320
  %156 = load i128, i128* %arrayidx6.i.i.555, align 16, !tbaa !2
  %shr.i.360 = lshr i128 %156, 64
  %add8.i.361 = add i128 %add.i.358, %shr.i.360
  %conv12.i.362 = and i128 %156, 18446744073709551615
  %add13.i.363 = add nuw nsw i128 %conv12.i.362, 18446673704965373952
  %157 = load i128, i128* %in, align 16, !tbaa !2
  %add16.i.364 = add i128 %157, 18446744073709551615
  %158 = load i128, i128* %arrayidx18.i.i.561, align 16, !tbaa !2
  %add19.i.366 = add i128 %158, 1298074214633706907132628377272319
  %shr22.i.367 = lshr i128 %add8.i.361, 64
  %conv23.i.368 = trunc i128 %shr22.i.367 to i64
  %conv26.i.369 = and i128 %add8.i.361, 18446744073709551615
  %sub.i.370 = sub nsw i128 %conv26.i.369, %shr22.i.367
  %shl.i.371 = shl nuw nsw i128 %shr22.i.367, 32
  %add32.i.372 = add nsw i128 %sub.i.370, %shl.i.371
  %shr34.i.373 = lshr i128 %add32.i.372, 64
  %conv35.i.374 = trunc i128 %shr34.i.373 to i64
  %add36.i.375 = add i64 %conv35.i.374, %conv23.i.368
  %conv39.i.376 = and i128 %add32.i.372, 18446744073709551615
  %sub43.i.377 = sub nsw i128 %conv39.i.376, %shr34.i.373
  %shl45.i.378 = shl nuw nsw i128 %shr34.i.373, 32
  %add47.i.379 = add nsw i128 %sub43.i.377, %shl45.i.378
  %conv48.i.380 = zext i64 %add36.i.375 to i128
  %add50.i.381 = add i128 %add16.i.364, %conv48.i.380
  %shl52.i.382 = shl nuw nsw i128 %conv48.i.380, 32
  %sub54.i.383 = sub i128 %add19.i.366, %shl52.i.382
  %shr56.i.384 = lshr i128 %add47.i.379, 64
  %conv57.i.385 = trunc i128 %shr56.i.384 to i64
  %sub58.i.386 = sub i64 0, %conv57.i.385
  %conv60.i.387 = trunc i128 %add47.i.379 to i64
  %and.i.388 = and i64 %conv60.i.387, 9223372036854775807
  %neg.i.389 = sub nsw i64 9223372032559808512, %and.i.388
  %sub62177.i.390 = and i64 %neg.i.389, %conv60.i.387
  %and66.i.391 = ashr i64 %sub62177.i.390, 63
  %or.i.392 = or i64 %and66.i.391, %sub58.i.386
  %conv68.i.393 = zext i64 %or.i.392 to i128
  %sub70.i.394 = sub i128 %add50.i.381, %conv68.i.393
  %and71.i.395 = and i64 %or.i.392, 4294967295
  %conv72.i.396 = zext i64 %and71.i.395 to i128
  %sub74.i.397 = sub i128 %sub54.i.383, %conv72.i.396
  %and75.i.398 = and i64 %or.i.392, -4294967295
  %conv76.i.399 = zext i64 %and75.i.398 to i128
  %sub78.i.400 = sub nsw i128 %add47.i.379, %conv76.i.399
  %shr80.i.401 = lshr i128 %sub70.i.394, 64
  %add84.i.402 = add i128 %sub74.i.397, %shr80.i.401
  %shr90.i.404 = lshr i128 %add84.i.402, 64
  %add94.i.405 = add nuw nsw i128 %add13.i.363, %shr90.i.404
  %shr100.i.407 = lshr i128 %add94.i.405, 64
  %add104.i.408 = add nsw i128 %sub78.i.400, %shr100.i.407
  %conv.i.414 = and i128 %sub70.i.i.336, 18446744073709551615
  %conv2.i.415 = and i128 %sub70.i.394, 18446744073709551615
  %mul.i.416 = mul nuw i128 %conv2.i.415, %conv.i.414
  %shr.i.417 = lshr i128 %mul.i.416, 64
  %conv5.i.418 = and i128 %mul.i.416, 18446744073709551615
  store i128 %conv5.i.418, i128* %arraydecay, align 16, !tbaa !2
  %conv12.i.421 = and i128 %add84.i.402, 18446744073709551615
  %mul13.i.422 = mul nuw i128 %conv12.i.421, %conv.i.414
  %shr15.i.423 = lshr i128 %mul13.i.422, 64
  %conv17.i.424 = and i128 %mul13.i.422, 18446744073709551615
  %conv22.i.428 = and i128 %add84.i.i.344, 18446744073709551615
  %mul25.i.429 = mul nuw i128 %conv2.i.415, %conv22.i.428
  %shr27.i.430 = lshr i128 %mul25.i.429, 64
  %conv29.i.431 = and i128 %mul25.i.429, 18446744073709551615
  %add.i.425 = add nuw nsw i128 %conv29.i.431, %shr.i.417
  %add31.i.432 = add nuw nsw i128 %add.i.425, %conv17.i.424
  store i128 %add31.i.432, i128* %arrayidx2.i, align 16, !tbaa !2
  %add34.i.433 = add nuw nsw i128 %shr15.i.423, %shr27.i.430
  %conv38.i.435 = and i128 %add94.i.405, 18446744073709551615
  %mul39.i.436 = mul nuw i128 %conv38.i.435, %conv.i.414
  %shr41.i.437 = lshr i128 %mul39.i.436, 64
  %conv43.i.438 = and i128 %mul39.i.436, 18446744073709551615
  %mul52.i.441 = mul nuw i128 %conv12.i.421, %conv22.i.428
  %shr54.i.442 = lshr i128 %mul52.i.441, 64
  %conv56.i.443 = and i128 %mul52.i.441, 18446744073709551615
  %conv63.i.447 = and i128 %add94.i.i.347, 18446744073709551615
  %mul66.i.448 = mul nuw i128 %conv63.i.447, %conv2.i.415
  %shr68.i.449 = lshr i128 %mul66.i.448, 64
  %conv70.i.450 = and i128 %mul66.i.448, 18446744073709551615
  %add45.i.439 = add nuw nsw i128 %add34.i.433, %conv56.i.443
  %add58.i.444 = add nuw nsw i128 %add45.i.439, %conv70.i.450
  %add72.i.451 = add nuw nsw i128 %add58.i.444, %conv43.i.438
  store i128 %add72.i.451, i128* %arrayidx5.i, align 16, !tbaa !2
  %conv79.i.454 = and i128 %add104.i.408, 18446744073709551615
  %mul80.i.455 = mul nuw i128 %conv79.i.454, %conv.i.414
  %shr82.i.456 = lshr i128 %mul80.i.455, 64
  %conv84.i.457 = and i128 %mul80.i.455, 18446744073709551615
  %mul93.i.460 = mul nuw i128 %conv38.i.435, %conv22.i.428
  %shr95.i.461 = lshr i128 %mul93.i.460, 64
  %conv97.i.462 = and i128 %mul93.i.460, 18446744073709551615
  %mul107.i.465 = mul nuw i128 %conv12.i.421, %conv63.i.447
  %shr109.i.466 = lshr i128 %mul107.i.465, 64
  %conv111.i.467 = and i128 %mul107.i.465, 18446744073709551615
  %conv118.i.471 = and i128 %add104.i.i.350, 18446744073709551615
  %mul121.i.472 = mul nuw i128 %conv118.i.471, %conv2.i.415
  %shr123.i.473 = lshr i128 %mul121.i.472, 64
  %conv125.i.474 = and i128 %mul121.i.472, 18446744073709551615
  %add61.i.445 = add nuw nsw i128 %shr68.i.449, %shr54.i.442
  %add75.i.452 = add nuw nsw i128 %add61.i.445, %conv111.i.467
  %add86.i.458 = add nuw nsw i128 %add75.i.452, %shr41.i.437
  %add99.i.463 = add nuw nsw i128 %add86.i.458, %conv97.i.462
  %add113.i.468 = add nuw nsw i128 %add99.i.463, %conv125.i.474
  %add127.i.475 = add nuw nsw i128 %add113.i.468, %conv84.i.457
  store i128 %add127.i.475, i128* %arrayidx8.i, align 16, !tbaa !2
  %mul135.i.477 = mul nuw i128 %conv79.i.454, %conv22.i.428
  %shr137.i.478 = lshr i128 %mul135.i.477, 64
  %conv139.i.479 = and i128 %mul135.i.477, 18446744073709551615
  %mul148.i.482 = mul nuw i128 %conv38.i.435, %conv63.i.447
  %shr150.i.483 = lshr i128 %mul148.i.482, 64
  %conv152.i.484 = and i128 %mul148.i.482, 18446744073709551615
  %mul162.i.487 = mul nuw i128 %conv118.i.471, %conv12.i.421
  %shr164.i.488 = lshr i128 %mul162.i.487, 64
  %conv166.i.489 = and i128 %mul162.i.487, 18446744073709551615
  %add102.i.464 = add nuw nsw i128 %shr95.i.461, %shr109.i.466
  %add116.i.469 = add nuw nsw i128 %add102.i.464, %shr123.i.473
  %add130.i.476 = add nuw nsw i128 %add116.i.469, %conv152.i.484
  %add141.i.480 = add nuw nsw i128 %add130.i.476, %conv166.i.489
  %add154.i.485 = add nuw nsw i128 %add141.i.480, %shr82.i.456
  %add168.i.490 = add nuw nsw i128 %add154.i.485, %conv139.i.479
  store i128 %add168.i.490, i128* %arrayidx.i.i, align 16, !tbaa !2
  %mul176.i.492 = mul nuw i128 %conv79.i.454, %conv63.i.447
  %shr178.i.493 = lshr i128 %mul176.i.492, 64
  %conv180.i.494 = and i128 %mul176.i.492, 18446744073709551615
  %mul189.i.497 = mul nuw i128 %conv38.i.435, %conv118.i.471
  %shr191.i.498 = lshr i128 %mul189.i.497, 64
  %conv193.i.499 = and i128 %mul189.i.497, 18446744073709551615
  %add157.i.486 = add nuw nsw i128 %shr164.i.488, %shr150.i.483
  %add171.i.491 = add nuw nsw i128 %add157.i.486, %conv193.i.499
  %add182.i.495 = add nuw nsw i128 %add171.i.491, %shr137.i.478
  %add195.i.500 = add nuw nsw i128 %add182.i.495, %conv180.i.494
  store i128 %add195.i.500, i128* %arrayidx1.i.i, align 16, !tbaa !2
  %add198.i.501 = add nuw nsw i128 %shr178.i.493, %shr191.i.498
  %mul203.i.502 = mul nuw i128 %conv79.i.454, %conv118.i.471
  %shr205.i.503 = lshr i128 %mul203.i.502, 64
  %conv207.i.504 = and i128 %mul203.i.502, 18446744073709551615
  %add209.i.505 = add nuw nsw i128 %add198.i.501, %conv207.i.504
  store i128 %add209.i.505, i128* %arrayidx24.i.i, align 16, !tbaa !2
  store i128 %shr205.i.503, i128* %arrayidx6.i.i, align 16, !tbaa !2
  %add.i.253 = add nuw nsw i128 %conv5.i.418, 1267650600228229401427983728624
  %add3.i.255 = or i128 %add31.i.432, 1267650600228229401496703205376
  %add6.i.258 = add nuw nsw i128 %add72.i.451, 1267650600228229401427983728656
  %add9.i.261 = add i128 %add127.i.475, 1267650600228229401427983728656
  %shl.i.i.265 = shl nuw nsw i128 %add195.i.500, 32
  %add.i.i.266 = add i128 %shl.i.i.265, %add168.i.490
  %add3.i.i.267 = add i128 %add.i.i.266, %add.i.253
  %sub.i.i.268 = sub i128 %add9.i.261, %add.i.i.266
  %sub7.i.i.270 = sub nsw i128 %add195.i.500, %shr205.i.503
  %add9.i.i.271 = add nsw i128 %sub7.i.i.270, %add3.i.255
  %sub11.i.i.272 = sub nsw i128 %add6.i.258, %sub7.i.i.270
  %shl13.i.i.273 = shl i128 %add168.i.490, 32
  %sub15.i.i.274 = sub i128 %add9.i.i.271, %shl13.i.i.273
  %add19.i.i.276 = add i128 %shl13.i.i.273, %sub.i.i.268
  %sub23.i.i.278 = sub i128 %sub11.i.i.272, %shl.i.i.265
  %sub26.i.i.280 = sub i128 %add3.i.i.267, %add209.i.505
  %shl28.i.i.281 = shl nuw nsw i128 %add209.i.505, 32
  %sub30.i.i.282 = sub i128 %sub26.i.i.280, %shl28.i.i.281
  %shl32.i.i.283 = shl nuw nsw i128 %add209.i.505, 33
  %add34.i.i.284 = add i128 %shl32.i.i.283, %sub15.i.i.274
  store i128 %add34.i.i.284, i128* %arrayidx4.i.2426, align 16, !tbaa !2
  %mul.i.i.285 = shl nuw nsw i128 %add209.i.505, 1
  %add37.i.i.286 = add i128 %mul.i.i.285, %sub23.i.i.278
  %sub41.i.i.288 = sub i128 %add19.i.i.276, %shl28.i.i.281
  %sub44.i.i.289 = sub i128 %sub30.i.i.282, %shr205.i.503
  %shl46.i.i.290 = shl nuw nsw i128 %shr205.i.503, 32
  %sub48.i.i.291 = sub i128 %sub44.i.i.289, %shl46.i.i.290
  store i128 %sub48.i.i.291, i128* %arraydecay105, align 16, !tbaa !2
  %shl50.i.i.292 = shl nuw nsw i128 %shr205.i.503, 33
  %add52.i.i.293 = add i128 %shl50.i.i.292, %add37.i.i.286
  store i128 %add52.i.i.293, i128* %arrayidx7.i.2429, align 16, !tbaa !2
  %mul54.i.i.294 = mul nuw nsw i128 %shr205.i.503, 3
  %add56.i.i.295 = add i128 %mul54.i.i.294, %sub41.i.i.288
  store i128 %add56.i.i.295, i128* %arrayidx10.i.2432, align 16, !tbaa !2
  %add.i.i.242 = add i128 %add56.i.i.295, 18446744069414584320
  %shr.i.i = lshr i128 %add52.i.i.293, 64
  %add8.i.i = add i128 %add.i.i.242, %shr.i.i
  %conv12.i.i = and i128 %add52.i.i.293, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %add16.i.i = add i128 %sub48.i.i.291, 18446744073709551615
  %add19.i.i.244 = add i128 %add34.i.i.284, 1298074214633706907132628377272319
  %shr22.i.i = lshr i128 %add8.i.i, 64
  %conv23.i.i = trunc i128 %shr22.i.i to i64
  %conv26.i.i = and i128 %add8.i.i, 18446744073709551615
  %sub.i.i.245 = sub nsw i128 %conv26.i.i, %shr22.i.i
  %shl.i.i.246 = shl nuw nsw i128 %shr22.i.i, 32
  %add32.i.i = add nsw i128 %sub.i.i.245, %shl.i.i.246
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
  %sub54.i.i = sub i128 %add19.i.i.244, %shl52.i.i
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
  %159 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %add.i.247 = add i128 %159, 18446744069414584320
  %160 = load i128, i128* %arrayidx7.i, align 16, !tbaa !2
  %shr.i = lshr i128 %160, 64
  %add8.i = add i128 %add.i.247, %shr.i
  %conv12.i = and i128 %160, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %161 = load i128, i128* %arraydecay2, align 16, !tbaa !2
  %add16.i = add i128 %161, 18446744073709551615
  %162 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %add19.i = add i128 %162, 1298074214633706907132628377272319
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
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i = and i128 %sub70.i.i, 18446744073709551615
  %conv2.i = and i128 %sub70.i, 18446744073709551615
  %mul.i = mul nuw i128 %conv2.i, %conv.i
  %shr.i.248 = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  %conv12.i.250 = and i128 %add84.i, 18446744073709551615
  %mul13.i = mul nuw i128 %conv12.i.250, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = and i128 %mul13.i, 18446744073709551615
  %conv22.i = and i128 %add84.i.i, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv22.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.251 = add nuw nsw i128 %conv29.i, %shr.i.248
  %add31.i = add nuw nsw i128 %add.i.251, %conv17.i
  %add34.i = add nuw nsw i128 %shr15.i, %shr27.i
  %conv38.i = and i128 %add94.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.250, %conv22.i
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %conv63.i = and i128 %add94.i.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv63.i, %conv2.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add45.i = add nuw nsw i128 %add34.i, %conv56.i
  %add58.i = add nuw nsw i128 %add45.i, %conv70.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  %conv79.i = and i128 %add104.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv22.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.250, %conv63.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %conv118.i = and i128 %add104.i.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv118.i, %conv2.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %shr68.i, %shr54.i
  %add75.i = add nuw nsw i128 %add61.i, %conv111.i
  %add86.i = add nuw nsw i128 %add75.i, %shr41.i
  %add99.i = add nuw nsw i128 %add86.i, %conv97.i
  %add113.i = add nuw nsw i128 %add99.i, %conv125.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  %mul135.i = mul nuw i128 %conv79.i, %conv22.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv63.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv118.i, %conv12.i.250
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr95.i, %shr109.i
  %add116.i = add nuw nsw i128 %add102.i, %shr123.i
  %add130.i = add nuw nsw i128 %add116.i, %conv152.i
  %add141.i = add nuw nsw i128 %add130.i, %conv166.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  %mul176.i = mul nuw i128 %conv79.i, %conv63.i
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv118.i
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr164.i, %shr150.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv118.i
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %add.i.198 = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i.200 = or i128 %add31.i, 1267650600228229401496703205376
  %arrayidx4.i.201 = getelementptr inbounds i128, i128* %out, i64 1
  %add6.i.203 = add nuw nsw i128 %add72.i, 1267650600228229401427983728656
  %arrayidx7.i.204 = getelementptr inbounds i128, i128* %out, i64 2
  %add9.i.206 = add i128 %add127.i, 1267650600228229401427983728656
  %arrayidx10.i.207 = getelementptr inbounds i128, i128* %out, i64 3
  %shl.i.i.210 = shl nuw nsw i128 %add195.i, 32
  %add.i.i.211 = add i128 %shl.i.i.210, %add168.i
  %add3.i.i.212 = add i128 %add.i.i.211, %add.i.198
  %sub.i.i.213 = sub i128 %add9.i.206, %add.i.i.211
  %sub7.i.i.215 = sub nsw i128 %add195.i, %shr205.i
  %add9.i.i.216 = add nsw i128 %sub7.i.i.215, %add3.i.200
  %sub11.i.i.217 = sub nsw i128 %add6.i.203, %sub7.i.i.215
  %shl13.i.i.218 = shl i128 %add168.i, 32
  %sub15.i.i.219 = sub i128 %add9.i.i.216, %shl13.i.i.218
  %add19.i.i.221 = add i128 %shl13.i.i.218, %sub.i.i.213
  %sub23.i.i.223 = sub i128 %sub11.i.i.217, %shl.i.i.210
  %sub26.i.i.225 = sub i128 %add3.i.i.212, %add209.i
  %shl28.i.i.226 = shl nuw nsw i128 %add209.i, 32
  %sub30.i.i.227 = sub i128 %sub26.i.i.225, %shl28.i.i.226
  %shl32.i.i.228 = shl nuw nsw i128 %add209.i, 33
  %add34.i.i.229 = add i128 %shl32.i.i.228, %sub15.i.i.219
  store i128 %add34.i.i.229, i128* %arrayidx4.i.201, align 16, !tbaa !2
  %mul.i.i.230 = shl nuw nsw i128 %add209.i, 1
  %add37.i.i.231 = add i128 %mul.i.i.230, %sub23.i.i.223
  %sub41.i.i.233 = sub i128 %add19.i.i.221, %shl28.i.i.226
  %sub44.i.i.234 = sub i128 %sub30.i.i.227, %shr205.i
  %shl46.i.i.235 = shl nuw nsw i128 %shr205.i, 32
  %sub48.i.i.236 = sub i128 %sub44.i.i.234, %shl46.i.i.235
  store i128 %sub48.i.i.236, i128* %out, align 16, !tbaa !2
  %shl50.i.i.237 = shl nuw nsw i128 %shr205.i, 33
  %add52.i.i.238 = add i128 %shl50.i.i.237, %add37.i.i.231
  store i128 %add52.i.i.238, i128* %arrayidx7.i.204, align 16, !tbaa !2
  %mul54.i.i.239 = mul nuw nsw i128 %shr205.i, 3
  %add56.i.i.240 = add i128 %mul54.i.i.239, %sub41.i.i.233
  store i128 %add56.i.i.240, i128* %arrayidx10.i.207, align 16, !tbaa !2
  call void @llvm.lifetime.end(i64 128, i8* %2) #1
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
  store i64 %conv119.i, i64* %arrayidx120.i, align 8, !tbaa !16
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
  store i64 %conv3.i.146, i64* %out, align 8, !tbaa !16
  %conv1.i.134 = and i128 %shr.i.143, 1
  %sub.i.135 = sub nsw i128 %conv3.2, %conv1.i.134
  %shr.i.136 = lshr i128 %sub.i.135, 64
  %conv1.i.127 = and i128 %shr.i.136, 1
  %sub.i.128 = sub nsw i128 %conv3.1, %conv1.i.127
  %shr.i.129 = lshr i128 %sub.i.128, 64
  %4 = load i64, i64* %arrayidx120.i, align 8, !tbaa !16
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
  store i64 %conv3.i.118, i64* %arrayidx114.i, align 8, !tbaa !16
  %fold156 = sub nsw i128 %add94.i, %conv1.i.127
  %conv.i.105 = and i128 %fold156, 18446744073709551615
  %conv1.i.106 = and i128 %shr.i.115, 1
  %sub.i.107 = sub nsw i128 %conv.i.105, %conv1.i.106
  %shr.i.108 = lshr i128 %sub.i.107, 64
  %conv3.i.111 = trunc i128 %sub.i.107 to i64
  store i64 %conv3.i.111, i64* %arrayidx117.i, align 8, !tbaa !16
  %conv1.i.99 = and i128 %shr.i.108, 1
  %and39 = and i64 %or25, -4294967295
  %conv1.i = zext i64 %and39 to i128
  %sub.i.100 = sub nsw i128 %sub.i.121, %conv1.i
  %sub.i.84 = sub nsw i128 %sub.i.100, %conv1.i.99
  %conv3.i = trunc i128 %sub.i.84 to i64
  store i64 %conv3.i, i64* %arrayidx120.i, align 8, !tbaa !16
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
  %11 = load i64, i64* %arraydecay64, align 16, !tbaa !16
  %conv.i.449 = zext i64 %11 to i128
  store i128 %conv.i.449, i128* %arraydecay62, align 16, !tbaa !2
  %12 = load i64, i64* %arrayidx2.i.450, align 8, !tbaa !16
  %conv3.i.451 = zext i64 %12 to i128
  store i128 %conv3.i.451, i128* %arrayidx4.i.452, align 16, !tbaa !2
  %13 = load i64, i64* %arrayidx5.i.453, align 16, !tbaa !16
  %conv6.i.454 = zext i64 %13 to i128
  store i128 %conv6.i.454, i128* %arrayidx7.i.455, align 16, !tbaa !2
  %14 = load i64, i64* %arrayidx8.i.456, align 8, !tbaa !16
  %conv9.i.457 = zext i64 %14 to i128
  store i128 %conv9.i.457, i128* %arrayidx10.i.458, align 16, !tbaa !2
  %15 = load i64, i64* %arraydecay68, align 16, !tbaa !16
  %conv.i.459 = zext i64 %15 to i128
  store i128 %conv.i.459, i128* %arraydecay66, align 16, !tbaa !2
  %16 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !16
  %conv3.i.461 = zext i64 %16 to i128
  store i128 %conv3.i.461, i128* %arrayidx4.i.462, align 16, !tbaa !2
  %17 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !16
  %conv6.i.464 = zext i64 %17 to i128
  store i128 %conv6.i.464, i128* %arrayidx7.i.465, align 16, !tbaa !2
  %18 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !16
  %conv9.i.467 = zext i64 %18 to i128
  store i128 %conv9.i.467, i128* %arrayidx10.i.468, align 16, !tbaa !2
  %19 = load i64, i64* %arraydecay72, align 16, !tbaa !16
  %conv.i.513 = zext i64 %19 to i128
  store i128 %conv.i.513, i128* %arraydecay70, align 16, !tbaa !2
  %20 = load i64, i64* %arrayidx2.i.514, align 8, !tbaa !16
  %conv3.i.515 = zext i64 %20 to i128
  store i128 %conv3.i.515, i128* %arrayidx4.i.516, align 16, !tbaa !2
  %21 = load i64, i64* %arrayidx5.i.517, align 16, !tbaa !16
  %conv6.i.518 = zext i64 %21 to i128
  store i128 %conv6.i.518, i128* %arrayidx7.i.519, align 16, !tbaa !2
  %22 = load i64, i64* %arrayidx8.i.520, align 8, !tbaa !16
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
  %44 = load i64, i64* %arraydecay68, align 16, !tbaa !16
  %conv.i.366 = zext i64 %44 to i128
  %sub.i = sub nsw i128 40564819207303340845695479315968, %conv.i.366
  %45 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !16
  %conv3.i.368 = zext i64 %45 to i128
  %sub4.i = sub nsw i128 40564819207303340847894502572032, %conv3.i.368
  %46 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !16
  %conv7.i = zext i64 %46 to i128
  %sub8.i = sub nsw i128 40564819207303340845695479316992, %conv7.i
  %47 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !16
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
  %49 = load i64, i64* %arraydecay64, align 16, !tbaa !16
  %conv.i.332 = zext i64 %49 to i128
  store i128 %conv.i.332, i128* %arraydecay62, align 16, !tbaa !2
  %50 = load i64, i64* %arrayidx2.i.450, align 8, !tbaa !16
  %conv3.i.334 = zext i64 %50 to i128
  store i128 %conv3.i.334, i128* %arrayidx4.i.452, align 16, !tbaa !2
  %51 = load i64, i64* %arrayidx5.i.453, align 16, !tbaa !16
  %conv6.i.337 = zext i64 %51 to i128
  store i128 %conv6.i.337, i128* %arrayidx7.i.455, align 16, !tbaa !2
  %52 = load i64, i64* %arrayidx8.i.456, align 8, !tbaa !16
  %conv9.i.340 = zext i64 %52 to i128
  store i128 %conv9.i.340, i128* %arrayidx10.i.458, align 16, !tbaa !2
  %53 = load i64, i64* %arraydecay68, align 16, !tbaa !16
  %conv.i.322 = zext i64 %53 to i128
  store i128 %conv.i.322, i128* %arraydecay66, align 16, !tbaa !2
  %54 = load i64, i64* %arrayidx2.i.460, align 8, !tbaa !16
  %conv3.i.324 = zext i64 %54 to i128
  store i128 %conv3.i.324, i128* %arrayidx4.i.462, align 16, !tbaa !2
  %55 = load i64, i64* %arrayidx5.i.463, align 16, !tbaa !16
  %conv6.i.327 = zext i64 %55 to i128
  store i128 %conv6.i.327, i128* %arrayidx7.i.465, align 16, !tbaa !2
  %56 = load i64, i64* %arrayidx8.i.466, align 8, !tbaa !16
  %conv9.i.330 = zext i64 %56 to i128
  store i128 %conv9.i.330, i128* %arrayidx10.i.468, align 16, !tbaa !2
  %57 = load i64, i64* %arraydecay72, align 16, !tbaa !16
  %conv.i.317 = zext i64 %57 to i128
  store i128 %conv.i.317, i128* %arraydecay70, align 16, !tbaa !2
  %58 = load i64, i64* %arrayidx2.i.514, align 8, !tbaa !16
  %conv3.i = zext i64 %58 to i128
  store i128 %conv3.i, i128* %arrayidx4.i.516, align 16, !tbaa !2
  %59 = load i64, i64* %arrayidx5.i.517, align 16, !tbaa !16
  %conv6.i = zext i64 %59 to i128
  store i128 %conv6.i, i128* %arrayidx7.i.519, align 16, !tbaa !2
  %60 = load i64, i64* %arrayidx8.i.520, align 8, !tbaa !16
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
  %ftmp5 = alloca [4 x i128], align 16
  %tmp = alloca [8 x i128], align 16
  %0 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp5 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %2 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %2) #1
  %arrayidx.i = getelementptr inbounds i128, i128* %z1, i64 3
  %3 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %add.i = add i128 %3, 18446744069414584320
  %arrayidx6.i = getelementptr inbounds i128, i128* %z1, i64 2
  %4 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %shr.i = lshr i128 %4, 64
  %add8.i = add i128 %add.i, %shr.i
  %conv12.i = and i128 %4, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i, 18446673704965373952
  %5 = load i128, i128* %z1, align 16, !tbaa !2
  %add16.i = add i128 %5, 18446744073709551615
  %arrayidx18.i = getelementptr inbounds i128, i128* %z1, i64 1
  %6 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %add19.i = add i128 %6, 1298074214633706907132628377272319
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
  %or.i.12223508 = or i128 %add84.i, %sub70.i
  %or3.i3509 = or i128 %or.i.12223508, %add94.i
  %or5.i3510 = or i128 %or3.i3509, %add104.i
  %or5.i = trunc i128 %or5.i3510 to i64
  %dec.i = add i64 %or5.i, -1
  %shl.i.1225 = shl i64 %dec.i, 32
  %and.i.1226 = and i64 %shl.i.1225, %dec.i
  %shl6.i = shl i64 %and.i.1226, 16
  %and7.i = and i64 %shl6.i, %and.i.1226
  %shl8.i = shl i64 %and7.i, 8
  %and9.i = and i64 %shl8.i, %and7.i
  %shl10.i = shl i64 %and9.i, 4
  %and11.i = and i64 %shl10.i, %and9.i
  %shl12.i = shl i64 %and11.i, 2
  %and13.i = and i64 %shl12.i, %and11.i
  %shl14.i = shl i64 %and13.i, 1
  %and15.i = and i64 %shl14.i, %and13.i
  %xor.i.1227 = xor i64 %conv86.i, -1
  %xor18.i = xor i64 %conv96.i, 4294967295
  %or19.i = or i64 %xor18.i, %xor.i.1227
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
  %7 = load i64, i64* %z2, align 8, !tbaa !16
  %arrayidx1.i.1241 = getelementptr inbounds i64, i64* %z2, i64 1
  %8 = load i64, i64* %arrayidx1.i.1241, align 8, !tbaa !16
  %or.i.1242 = or i64 %8, %7
  %arrayidx2.i.1243 = getelementptr inbounds i64, i64* %z2, i64 2
  %9 = load i64, i64* %arrayidx2.i.1243, align 8, !tbaa !16
  %or3.i.1244 = or i64 %or.i.1242, %9
  %arrayidx4.i.1245 = getelementptr inbounds i64, i64* %z2, i64 3
  %10 = load i64, i64* %arrayidx4.i.1245, align 8, !tbaa !16
  %or5.i.1246 = or i64 %or3.i.1244, %10
  %dec.i.1247 = add i64 %or5.i.1246, -1
  %shl.i.1248 = shl i64 %dec.i.1247, 32
  %and.i.1249 = and i64 %shl.i.1248, %dec.i.1247
  %shl6.i.1250 = shl i64 %and.i.1249, 16
  %and7.i.1251 = and i64 %shl6.i.1250, %and.i.1249
  %shl8.i.1252 = shl i64 %and7.i.1251, 8
  %and9.i.1253 = and i64 %shl8.i.1252, %and7.i.1251
  %shl10.i.1254 = shl i64 %and9.i.1253, 4
  %and11.i.1255 = and i64 %shl10.i.1254, %and9.i.1253
  %shl12.i.1256 = shl i64 %and11.i.1255, 2
  %and13.i.1257 = and i64 %shl12.i.1256, %and11.i.1255
  %shl14.i.1258 = shl i64 %and13.i.1257, 1
  %and15.i.1259 = and i64 %shl14.i.1258, %and13.i.1257
  %xor.i.1260 = xor i64 %7, -1
  %xor18.i.1261 = xor i64 %8, 4294967295
  %or19.i.1262 = or i64 %xor18.i.1261, %xor.i.1260
  %or22.i.1263 = or i64 %or19.i.1262, %9
  %xor24.i.1264 = xor i64 %10, -4294967295
  %or25.i.1265 = or i64 %or22.i.1263, %xor24.i.1264
  %dec26.i.1266 = add i64 %or25.i.1265, -1
  %shl27.i.1267 = shl i64 %dec26.i.1266, 32
  %and28.i.1268 = and i64 %shl27.i.1267, %dec26.i.1266
  %shl29.i.1269 = shl i64 %and28.i.1268, 16
  %and30.i.1270 = and i64 %shl29.i.1269, %and28.i.1268
  %shl31.i.1271 = shl i64 %and30.i.1270, 8
  %and32.i.1272 = and i64 %shl31.i.1271, %and30.i.1270
  %shl33.i.1273 = shl i64 %and32.i.1272, 4
  %and34.i.1274 = and i64 %shl33.i.1273, %and32.i.1272
  %shl35.i.1275 = shl i64 %and34.i.1274, 2
  %and36.i.1276 = and i64 %shl35.i.1275, %and34.i.1274
  %shl37.i.1277 = shl i64 %and36.i.1276, 1
  %and38.i.1278 = and i64 %shl37.i.1277, %and36.i.1276
  %sub86.i.1279 = or i64 %and38.i.1278, %and15.i.1259
  %or41.i.1280 = ashr i64 %sub86.i.1279, 63
  %coerce14.sroa.2.0.insert.ext = zext i64 %or41.i.1280 to i128
  %coerce14.sroa.2.0.insert.shift = shl nuw i128 %coerce14.sroa.2.0.insert.ext, 64
  %coerce14.sroa.0.0.insert.insert = or i128 %coerce14.sroa.2.0.insert.shift, %coerce14.sroa.2.0.insert.ext
  %arraydecay15 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  %conv.i.2660 = and i128 %sub70.i, 18446744073709551615
  %mul.i.2661 = mul nuw i128 %conv.i.2660, %conv.i.2660
  %shr.i.2662 = lshr i128 %mul.i.2661, 64
  %conv5.i.2663 = and i128 %mul.i.2661, 18446744073709551615
  store i128 %conv5.i.2663, i128* %arraydecay15, align 16, !tbaa !2
  %arrayidx8.i.2664 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %conv12.i.2666 = and i128 %add84.i, 18446744073709551615
  %mul13.i.2667 = mul nuw i128 %conv12.i.2666, %conv.i.2660
  %shr15.i.2668 = lshr i128 %mul13.i.2667, 64
  %conv17.i.2669 = shl i128 %mul13.i.2667, 1
  %factor.i.2670 = and i128 %conv17.i.2669, 36893488147419103230
  %add21.i.2671 = add nuw nsw i128 %factor.i.2670, %shr.i.2662
  store i128 %add21.i.2671, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %arrayidx23.i.2672 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %conv27.i.2674 = and i128 %add94.i, 18446744073709551615
  %mul28.i.2675 = mul nuw i128 %conv27.i.2674, %conv.i.2660
  %shr30.i.2676 = lshr i128 %mul28.i.2675, 64
  %conv32.i.2677 = and i128 %mul28.i.2675, 18446744073709551615
  %add34.i.2678 = add nuw nsw i128 %conv32.i.2677, %shr15.i.2668
  %mul36.i.2679 = shl nuw nsw i128 %add34.i.2678, 1
  %arrayidx38.i.2680 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %conv42.i.2682 = and i128 %add104.i, 18446744073709551615
  %mul43.i.2683 = mul nuw i128 %conv42.i.2682, %conv.i.2660
  %shr45.i.2684 = lshr i128 %mul43.i.2683, 64
  %conv47.i.2685 = and i128 %mul43.i.2683, 18446744073709551615
  %arrayidx51.i.2687 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %mul56.i.2688 = mul nuw i128 %conv27.i.2674, %conv12.i.2666
  %shr58.i.2689 = lshr i128 %mul56.i.2688, 64
  %conv60.i.2690 = and i128 %mul56.i.2688, 18446744073709551615
  %add49.i.2686 = add nuw nsw i128 %conv60.i.2690, %shr30.i.2676
  %add62.i.2691 = add nuw nsw i128 %add49.i.2686, %conv47.i.2685
  %mul64.i.2692 = shl nuw nsw i128 %add62.i.2691, 1
  %add67.i.2693 = add nuw nsw i128 %shr45.i.2684, %shr58.i.2689
  %mul72.i.2694 = mul nuw i128 %conv12.i.2666, %conv12.i.2666
  %shr74.i.2695 = lshr i128 %mul72.i.2694, 64
  %conv76.i.2696 = and i128 %mul72.i.2694, 18446744073709551615
  %add78.i.2697 = add nuw nsw i128 %mul36.i.2679, %conv76.i.2696
  store i128 %add78.i.2697, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add81.i.2698 = add nuw nsw i128 %mul64.i.2692, %shr74.i.2695
  store i128 %add81.i.2698, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul86.i.2699 = mul nuw i128 %conv42.i.2682, %conv12.i.2666
  %shr88.i.2700 = lshr i128 %mul86.i.2699, 64
  %conv90.i.2701 = and i128 %mul86.i.2699, 18446744073709551615
  %add92.i.2702 = add nuw nsw i128 %add67.i.2693, %conv90.i.2701
  %mul94.i.2703 = shl nuw nsw i128 %add92.i.2702, 1
  %arrayidx96.i.2704 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %mul101.i.2705 = mul nuw i128 %conv42.i.2682, %conv27.i.2674
  %shr103.i.2706 = lshr i128 %mul101.i.2705, 64
  %conv105.i.2707 = and i128 %mul101.i.2705, 18446744073709551615
  %add107.i.2708 = add nuw nsw i128 %conv105.i.2707, %shr88.i.2700
  %mul109.i.2709 = shl nuw nsw i128 %add107.i.2708, 1
  %arrayidx111.i.2710 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %add114.i.2711 = shl nuw nsw i128 %shr103.i.2706, 1
  %mul119.i.2712 = mul nuw i128 %conv27.i.2674, %conv27.i.2674
  %shr121.i.2713 = lshr i128 %mul119.i.2712, 64
  %conv123.i.2714 = and i128 %mul119.i.2712, 18446744073709551615
  %add125.i.2715 = add nuw nsw i128 %mul94.i.2703, %conv123.i.2714
  store i128 %add125.i.2715, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %add128.i.2716 = add nuw nsw i128 %mul109.i.2709, %shr121.i.2713
  store i128 %add128.i.2716, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %mul133.i.2717 = mul nuw i128 %conv42.i.2682, %conv42.i.2682
  %shr135.i.2718 = lshr i128 %mul133.i.2717, 64
  %conv137.i.2719 = and i128 %mul133.i.2717, 18446744073709551615
  %add139.i.2720 = add nuw nsw i128 %add114.i.2711, %conv137.i.2719
  store i128 %add139.i.2720, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  %arrayidx141.i.2721 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  store i128 %shr135.i.2718, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %arraydecay17 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %add.i.3151 = add nuw nsw i128 %conv5.i.2663, 1267650600228229401427983728624
  %add3.i.3153 = or i128 %add21.i.2671, 1267650600228229401496703205376
  %arrayidx4.i.3154 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  %add6.i.3156 = add nuw nsw i128 %add78.i.2697, 1267650600228229401427983728656
  %arrayidx7.i.3157 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  %add9.i.3159 = add nuw nsw i128 %add81.i.2698, 1267650600228229401427983728656
  %arrayidx10.i.3160 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  %shl.i.i.3163 = shl nuw nsw i128 %add128.i.2716, 32
  %add.i.i.3164 = add nuw nsw i128 %shl.i.i.3163, %add125.i.2715
  %add3.i.i.3165 = add nuw nsw i128 %add.i.i.3164, %add.i.3151
  %sub.i.i.3166 = sub nsw i128 %add9.i.3159, %add.i.i.3164
  %sub7.i.i.3168 = sub nsw i128 %add128.i.2716, %shr135.i.2718
  %add9.i.i.3169 = add nsw i128 %sub7.i.i.3168, %add3.i.3153
  %sub11.i.i.3170 = sub nsw i128 %add6.i.3156, %sub7.i.i.3168
  %shl13.i.i.3171 = shl nuw nsw i128 %add125.i.2715, 32
  %sub15.i.i.3172 = sub nsw i128 %add9.i.i.3169, %shl13.i.i.3171
  %add19.i.i.3174 = add i128 %shl13.i.i.3171, %sub.i.i.3166
  %sub23.i.i.3176 = sub nsw i128 %sub11.i.i.3170, %shl.i.i.3163
  %sub26.i.i.3178 = sub i128 %add3.i.i.3165, %add139.i.2720
  %shl28.i.i.3179 = shl nuw nsw i128 %add139.i.2720, 32
  %sub30.i.i.3180 = sub i128 %sub26.i.i.3178, %shl28.i.i.3179
  %shl32.i.i.3181 = shl nuw nsw i128 %add139.i.2720, 33
  %add34.i.i.3182 = add i128 %shl32.i.i.3181, %sub15.i.i.3172
  store i128 %add34.i.i.3182, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %mul.i.i.3183 = shl nuw nsw i128 %add139.i.2720, 1
  %add37.i.i.3184 = add i128 %mul.i.i.3183, %sub23.i.i.3176
  %sub41.i.i.3186 = sub i128 %add19.i.i.3174, %shl28.i.i.3179
  %sub44.i.i.3187 = sub i128 %sub30.i.i.3180, %shr135.i.2718
  %shl46.i.i.3188 = shl nuw nsw i128 %shr135.i.2718, 32
  %sub48.i.i.3189 = sub i128 %sub44.i.i.3187, %shl46.i.i.3188
  store i128 %sub48.i.i.3189, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.3190 = shl nuw nsw i128 %shr135.i.2718, 33
  %add52.i.i.3191 = add i128 %shl50.i.i.3190, %add37.i.i.3184
  store i128 %add52.i.i.3191, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %mul54.i.i.3192 = mul nuw nsw i128 %shr135.i.2718, 3
  %add56.i.i.3193 = add i128 %mul54.i.i.3192, %sub41.i.i.3186
  store i128 %add56.i.i.3193, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  %add.i.3095 = add i128 %add56.i.i.3193, 18446744069414584320
  %shr.i.3097 = lshr i128 %add52.i.i.3191, 64
  %add8.i.3098 = add i128 %add.i.3095, %shr.i.3097
  %conv12.i.3099 = and i128 %add52.i.i.3191, 18446744073709551615
  %add13.i.3100 = add nuw nsw i128 %conv12.i.3099, 18446673704965373952
  %add16.i.3101 = add i128 %sub48.i.i.3189, 18446744073709551615
  %add19.i.3103 = add i128 %add34.i.i.3182, 1298074214633706907132628377272319
  %shr22.i.3104 = lshr i128 %add8.i.3098, 64
  %conv23.i.3105 = trunc i128 %shr22.i.3104 to i64
  %conv26.i.3106 = and i128 %add8.i.3098, 18446744073709551615
  %sub.i.3107 = sub nsw i128 %conv26.i.3106, %shr22.i.3104
  %shl.i.3108 = shl nuw nsw i128 %shr22.i.3104, 32
  %add32.i.3109 = add nsw i128 %sub.i.3107, %shl.i.3108
  %shr34.i.3110 = lshr i128 %add32.i.3109, 64
  %conv35.i.3111 = trunc i128 %shr34.i.3110 to i64
  %add36.i.3112 = add i64 %conv35.i.3111, %conv23.i.3105
  %conv39.i.3113 = and i128 %add32.i.3109, 18446744073709551615
  %sub43.i.3114 = sub nsw i128 %conv39.i.3113, %shr34.i.3110
  %shl45.i.3115 = shl nuw nsw i128 %shr34.i.3110, 32
  %add47.i.3116 = add nsw i128 %sub43.i.3114, %shl45.i.3115
  %conv48.i.3117 = zext i64 %add36.i.3112 to i128
  %add50.i.3118 = add i128 %add16.i.3101, %conv48.i.3117
  %shl52.i.3119 = shl nuw nsw i128 %conv48.i.3117, 32
  %sub54.i.3120 = sub i128 %add19.i.3103, %shl52.i.3119
  %shr56.i.3121 = lshr i128 %add47.i.3116, 64
  %conv57.i.3122 = trunc i128 %shr56.i.3121 to i64
  %sub58.i.3123 = sub i64 0, %conv57.i.3122
  %conv60.i.3124 = trunc i128 %add47.i.3116 to i64
  %and.i.3125 = and i64 %conv60.i.3124, 9223372036854775807
  %neg.i.3126 = sub nsw i64 9223372032559808512, %and.i.3125
  %sub62177.i.3127 = and i64 %neg.i.3126, %conv60.i.3124
  %and66.i.3128 = ashr i64 %sub62177.i.3127, 63
  %or.i.3129 = or i64 %and66.i.3128, %sub58.i.3123
  %conv68.i.3130 = zext i64 %or.i.3129 to i128
  %sub70.i.3131 = sub i128 %add50.i.3118, %conv68.i.3130
  %and71.i.3132 = and i64 %or.i.3129, 4294967295
  %conv72.i.3133 = zext i64 %and71.i.3132 to i128
  %sub74.i.3134 = sub i128 %sub54.i.3120, %conv72.i.3133
  %and75.i.3135 = and i64 %or.i.3129, -4294967295
  %conv76.i.3136 = zext i64 %and75.i.3135 to i128
  %sub78.i.3137 = sub nsw i128 %add47.i.3116, %conv76.i.3136
  %shr80.i.3138 = lshr i128 %sub70.i.3131, 64
  %add84.i.3139 = add i128 %sub74.i.3134, %shr80.i.3138
  %shr90.i.3141 = lshr i128 %add84.i.3139, 64
  %add94.i.3142 = add nuw nsw i128 %add13.i.3100, %shr90.i.3141
  %shr100.i.3144 = lshr i128 %add94.i.3142, 64
  %add104.i.3145 = add nsw i128 %sub78.i.3137, %shr100.i.3144
  %tobool = icmp eq i32 %mixed, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i64, i64* %z2, align 8, !tbaa !16
  %conv.i.3032 = zext i64 %11 to i128
  %mul.i.3033 = mul nuw i128 %conv.i.3032, %conv.i.3032
  %shr.i.3034 = lshr i128 %mul.i.3033, 64
  %conv5.i.3035 = and i128 %mul.i.3033, 18446744073709551615
  store i128 %conv5.i.3035, i128* %arraydecay15, align 16, !tbaa !2
  %12 = load i64, i64* %arrayidx1.i.1241, align 8, !tbaa !16
  %conv12.i.3038 = zext i64 %12 to i128
  %mul13.i.3039 = mul nuw i128 %conv12.i.3038, %conv.i.3032
  %shr15.i.3040 = lshr i128 %mul13.i.3039, 64
  %conv17.i.3041 = shl i128 %mul13.i.3039, 1
  %factor.i.3042 = and i128 %conv17.i.3041, 36893488147419103230
  %add21.i.3043 = add nuw nsw i128 %factor.i.3042, %shr.i.3034
  store i128 %add21.i.3043, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %13 = load i64, i64* %arrayidx2.i.1243, align 8, !tbaa !16
  %conv27.i.3046 = zext i64 %13 to i128
  %mul28.i.3047 = mul nuw i128 %conv27.i.3046, %conv.i.3032
  %shr30.i.3048 = lshr i128 %mul28.i.3047, 64
  %conv32.i.3049 = and i128 %mul28.i.3047, 18446744073709551615
  %add34.i.3050 = add nuw nsw i128 %conv32.i.3049, %shr15.i.3040
  %mul36.i.3051 = shl nuw nsw i128 %add34.i.3050, 1
  %14 = load i64, i64* %arrayidx4.i.1245, align 8, !tbaa !16
  %conv42.i.3054 = zext i64 %14 to i128
  %mul43.i.3055 = mul nuw i128 %conv42.i.3054, %conv.i.3032
  %shr45.i.3056 = lshr i128 %mul43.i.3055, 64
  %conv47.i.3057 = and i128 %mul43.i.3055, 18446744073709551615
  %mul56.i.3060 = mul nuw i128 %conv27.i.3046, %conv12.i.3038
  %shr58.i.3061 = lshr i128 %mul56.i.3060, 64
  %conv60.i.3062 = and i128 %mul56.i.3060, 18446744073709551615
  %add49.i.3058 = add nuw nsw i128 %conv60.i.3062, %shr30.i.3048
  %add62.i.3063 = add nuw nsw i128 %add49.i.3058, %conv47.i.3057
  %mul64.i.3064 = shl nuw nsw i128 %add62.i.3063, 1
  %add67.i.3065 = add nuw nsw i128 %shr45.i.3056, %shr58.i.3061
  %mul72.i.3066 = mul nuw i128 %conv12.i.3038, %conv12.i.3038
  %shr74.i.3067 = lshr i128 %mul72.i.3066, 64
  %conv76.i.3068 = and i128 %mul72.i.3066, 18446744073709551615
  %add78.i.3069 = add nuw nsw i128 %mul36.i.3051, %conv76.i.3068
  store i128 %add78.i.3069, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add81.i.3070 = add nuw nsw i128 %mul64.i.3064, %shr74.i.3067
  store i128 %add81.i.3070, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul86.i.3071 = mul nuw i128 %conv42.i.3054, %conv12.i.3038
  %shr88.i.3072 = lshr i128 %mul86.i.3071, 64
  %conv90.i.3073 = and i128 %mul86.i.3071, 18446744073709551615
  %add92.i.3074 = add nuw nsw i128 %add67.i.3065, %conv90.i.3073
  %mul94.i.3075 = shl nuw nsw i128 %add92.i.3074, 1
  %mul101.i.3077 = mul nuw i128 %conv42.i.3054, %conv27.i.3046
  %shr103.i.3078 = lshr i128 %mul101.i.3077, 64
  %conv105.i.3079 = and i128 %mul101.i.3077, 18446744073709551615
  %add107.i.3080 = add nuw nsw i128 %conv105.i.3079, %shr88.i.3072
  %mul109.i.3081 = shl nuw nsw i128 %add107.i.3080, 1
  %add114.i.3083 = shl nuw nsw i128 %shr103.i.3078, 1
  %mul119.i.3084 = mul nuw i128 %conv27.i.3046, %conv27.i.3046
  %shr121.i.3085 = lshr i128 %mul119.i.3084, 64
  %conv123.i.3086 = and i128 %mul119.i.3084, 18446744073709551615
  %add125.i.3087 = add nuw nsw i128 %mul94.i.3075, %conv123.i.3086
  store i128 %add125.i.3087, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %add128.i.3088 = add nuw nsw i128 %mul109.i.3081, %shr121.i.3085
  store i128 %add128.i.3088, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %mul133.i.3089 = mul nuw i128 %conv42.i.3054, %conv42.i.3054
  %shr135.i.3090 = lshr i128 %mul133.i.3089, 64
  %conv137.i.3091 = and i128 %mul133.i.3089, 18446744073709551615
  %add139.i.3092 = add nuw nsw i128 %add114.i.3083, %conv137.i.3091
  store i128 %add139.i.3092, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr135.i.3090, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.2989 = add nuw nsw i128 %conv5.i.3035, 1267650600228229401427983728624
  %add3.i.2991 = or i128 %add21.i.3043, 1267650600228229401496703205376
  %add6.i.2994 = add nuw nsw i128 %add78.i.3069, 1267650600228229401427983728656
  %add9.i.2997 = add nuw nsw i128 %add81.i.3070, 1267650600228229401427983728656
  %shl.i.i.3001 = shl nuw nsw i128 %add128.i.3088, 32
  %add.i.i.3002 = add nuw nsw i128 %shl.i.i.3001, %add125.i.3087
  %sub7.i.i.3006 = sub nsw i128 %add128.i.3088, %shr135.i.3090
  %shl13.i.i.3009 = shl nuw nsw i128 %add125.i.3087, 32
  %shl28.i.i.3017 = shl nuw nsw i128 %add139.i.3092, 32
  %shl32.i.i.3019 = shl nuw nsw i128 %add139.i.3092, 33
  %add9.i.i.3007 = sub nsw i128 %add3.i.2991, %shl13.i.i.3009
  %sub15.i.i.3010 = add i128 %add9.i.i.3007, %sub7.i.i.3006
  %add34.i.i.3020 = add i128 %sub15.i.i.3010, %shl32.i.i.3019
  %mul.i.i.3021 = shl nuw nsw i128 %add139.i.3092, 1
  %shl46.i.i.3026 = shl nuw nsw i128 %shr135.i.3090, 32
  %add3.i.i.3003 = sub nsw i128 %add.i.2989, %shr135.i.3090
  %sub26.i.i.3016 = sub nsw i128 %add3.i.i.3003, %shl46.i.i.3026
  %sub30.i.i.3018 = sub nsw i128 %sub26.i.i.3016, %add139.i.3092
  %sub44.i.i.3025 = add nsw i128 %sub30.i.i.3018, %add.i.i.3002
  %sub48.i.i.3027 = sub i128 %sub44.i.i.3025, %shl28.i.i.3017
  %shl50.i.i.3028 = shl nuw nsw i128 %shr135.i.3090, 33
  %sub11.i.i.3008 = add nuw nsw i128 %add6.i.2994, %shl50.i.i.3028
  %sub23.i.i.3014 = sub nsw i128 %sub11.i.i.3008, %sub7.i.i.3006
  %add37.i.i.3022 = sub i128 %sub23.i.i.3014, %shl.i.i.3001
  %add52.i.i.3029 = add i128 %add37.i.i.3022, %mul.i.i.3021
  %mul54.i.i.3030 = mul nuw nsw i128 %shr135.i.3090, 3
  %sub.i.i.3004 = add nuw nsw i128 %add9.i.2997, %mul54.i.i.3030
  %add19.i.i.3012 = add i128 %sub.i.i.3004, %shl13.i.i.3009
  %sub41.i.i.3024 = sub i128 %add19.i.i.3012, %add.i.i.3002
  %add56.i.i.3031 = sub i128 %sub41.i.i.3024, %shl28.i.i.3017
  %add.i.2933 = add i128 %add56.i.i.3031, 18446744069414584320
  %shr.i.2935 = lshr i128 %add52.i.i.3029, 64
  %add8.i.2936 = add i128 %add.i.2933, %shr.i.2935
  %conv12.i.2937 = and i128 %add52.i.i.3029, 18446744073709551615
  %add13.i.2938 = add nuw nsw i128 %conv12.i.2937, 18446673704965373952
  %add16.i.2939 = add i128 %sub48.i.i.3027, 18446744073709551615
  %add19.i.2941 = add i128 %add34.i.i.3020, 1298074214633706907132628377272319
  %shr22.i.2942 = lshr i128 %add8.i.2936, 64
  %conv23.i.2943 = trunc i128 %shr22.i.2942 to i64
  %conv26.i.2944 = and i128 %add8.i.2936, 18446744073709551615
  %sub.i.2945 = sub nsw i128 %conv26.i.2944, %shr22.i.2942
  %shl.i.2946 = shl nuw nsw i128 %shr22.i.2942, 32
  %add32.i.2947 = add nsw i128 %sub.i.2945, %shl.i.2946
  %shr34.i.2948 = lshr i128 %add32.i.2947, 64
  %conv35.i.2949 = trunc i128 %shr34.i.2948 to i64
  %add36.i.2950 = add i64 %conv35.i.2949, %conv23.i.2943
  %conv39.i.2951 = and i128 %add32.i.2947, 18446744073709551615
  %sub43.i.2952 = sub nsw i128 %conv39.i.2951, %shr34.i.2948
  %shl45.i.2953 = shl nuw nsw i128 %shr34.i.2948, 32
  %add47.i.2954 = add nsw i128 %sub43.i.2952, %shl45.i.2953
  %conv48.i.2955 = zext i64 %add36.i.2950 to i128
  %add50.i.2956 = add i128 %add16.i.2939, %conv48.i.2955
  %shl52.i.2957 = shl nuw nsw i128 %conv48.i.2955, 32
  %sub54.i.2958 = sub i128 %add19.i.2941, %shl52.i.2957
  %shr56.i.2959 = lshr i128 %add47.i.2954, 64
  %conv57.i.2960 = trunc i128 %shr56.i.2959 to i64
  %sub58.i.2961 = sub i64 0, %conv57.i.2960
  %conv60.i.2962 = trunc i128 %add47.i.2954 to i64
  %and.i.2963 = and i64 %conv60.i.2962, 9223372036854775807
  %neg.i.2964 = sub nsw i64 9223372032559808512, %and.i.2963
  %sub62177.i.2965 = and i64 %neg.i.2964, %conv60.i.2962
  %and66.i.2966 = ashr i64 %sub62177.i.2965, 63
  %or.i.2967 = or i64 %and66.i.2966, %sub58.i.2961
  %conv68.i.2968 = zext i64 %or.i.2967 to i128
  %sub70.i.2969 = sub i128 %add50.i.2956, %conv68.i.2968
  %and71.i.2970 = and i64 %or.i.2967, 4294967295
  %conv72.i.2971 = zext i64 %and71.i.2970 to i128
  %sub74.i.2972 = sub i128 %sub54.i.2958, %conv72.i.2971
  %and75.i.2973 = and i64 %or.i.2967, -4294967295
  %conv76.i.2974 = zext i64 %and75.i.2973 to i128
  %sub78.i.2975 = sub nsw i128 %add47.i.2954, %conv76.i.2974
  %shr80.i.2976 = lshr i128 %sub70.i.2969, 64
  %add84.i.2977 = add i128 %sub74.i.2972, %shr80.i.2976
  %shr90.i.2979 = lshr i128 %add84.i.2977, 64
  %add94.i.2980 = add nuw nsw i128 %add13.i.2938, %shr90.i.2979
  %shr100.i.2982 = lshr i128 %add94.i.2980, 64
  %add104.i.2983 = add nsw i128 %sub78.i.2975, %shr100.i.2982
  %arrayidx.i.2875 = getelementptr inbounds i128, i128* %x1, i64 3
  %15 = load i128, i128* %arrayidx.i.2875, align 16, !tbaa !2
  %add.i.2876 = add i128 %15, 18446744069414584320
  %arrayidx6.i.2877 = getelementptr inbounds i128, i128* %x1, i64 2
  %16 = load i128, i128* %arrayidx6.i.2877, align 16, !tbaa !2
  %shr.i.2878 = lshr i128 %16, 64
  %add8.i.2879 = add i128 %add.i.2876, %shr.i.2878
  %conv12.i.2880 = and i128 %16, 18446744073709551615
  %add13.i.2881 = add nuw nsw i128 %conv12.i.2880, 18446673704965373952
  %17 = load i128, i128* %x1, align 16, !tbaa !2
  %add16.i.2882 = add i128 %17, 18446744073709551615
  %arrayidx18.i.2883 = getelementptr inbounds i128, i128* %x1, i64 1
  %18 = load i128, i128* %arrayidx18.i.2883, align 16, !tbaa !2
  %add19.i.2884 = add i128 %18, 1298074214633706907132628377272319
  %shr22.i.2885 = lshr i128 %add8.i.2879, 64
  %conv23.i.2886 = trunc i128 %shr22.i.2885 to i64
  %conv26.i.2887 = and i128 %add8.i.2879, 18446744073709551615
  %sub.i.2888 = sub nsw i128 %conv26.i.2887, %shr22.i.2885
  %shl.i.2889 = shl nuw nsw i128 %shr22.i.2885, 32
  %add32.i.2890 = add nsw i128 %sub.i.2888, %shl.i.2889
  %shr34.i.2891 = lshr i128 %add32.i.2890, 64
  %conv35.i.2892 = trunc i128 %shr34.i.2891 to i64
  %add36.i.2893 = add i64 %conv35.i.2892, %conv23.i.2886
  %conv39.i.2894 = and i128 %add32.i.2890, 18446744073709551615
  %sub43.i.2895 = sub nsw i128 %conv39.i.2894, %shr34.i.2891
  %shl45.i.2896 = shl nuw nsw i128 %shr34.i.2891, 32
  %add47.i.2897 = add nsw i128 %sub43.i.2895, %shl45.i.2896
  %conv48.i.2898 = zext i64 %add36.i.2893 to i128
  %add50.i.2899 = add i128 %add16.i.2882, %conv48.i.2898
  %shl52.i.2900 = shl nuw nsw i128 %conv48.i.2898, 32
  %sub54.i.2901 = sub i128 %add19.i.2884, %shl52.i.2900
  %shr56.i.2902 = lshr i128 %add47.i.2897, 64
  %conv57.i.2903 = trunc i128 %shr56.i.2902 to i64
  %sub58.i.2904 = sub i64 0, %conv57.i.2903
  %conv60.i.2905 = trunc i128 %add47.i.2897 to i64
  %and.i.2906 = and i64 %conv60.i.2905, 9223372036854775807
  %neg.i.2907 = sub nsw i64 9223372032559808512, %and.i.2906
  %sub62177.i.2908 = and i64 %neg.i.2907, %conv60.i.2905
  %and66.i.2909 = ashr i64 %sub62177.i.2908, 63
  %or.i.2910 = or i64 %and66.i.2909, %sub58.i.2904
  %conv68.i.2911 = zext i64 %or.i.2910 to i128
  %sub70.i.2912 = sub i128 %add50.i.2899, %conv68.i.2911
  %and71.i.2913 = and i64 %or.i.2910, 4294967295
  %conv72.i.2914 = zext i64 %and71.i.2913 to i128
  %sub74.i.2915 = sub i128 %sub54.i.2901, %conv72.i.2914
  %and75.i.2916 = and i64 %or.i.2910, -4294967295
  %conv76.i.2917 = zext i64 %and75.i.2916 to i128
  %sub78.i.2918 = sub nsw i128 %add47.i.2897, %conv76.i.2917
  %shr80.i.2919 = lshr i128 %sub70.i.2912, 64
  %add84.i.2920 = add i128 %sub74.i.2915, %shr80.i.2919
  %shr90.i.2922 = lshr i128 %add84.i.2920, 64
  %add94.i.2923 = add nuw nsw i128 %add13.i.2881, %shr90.i.2922
  %shr100.i.2925 = lshr i128 %add94.i.2923, 64
  %add104.i.2926 = add nsw i128 %sub78.i.2918, %shr100.i.2925
  %conv.i.2782 = and i128 %sub70.i.2912, 18446744073709551615
  %conv2.i.2783 = and i128 %sub70.i.2969, 18446744073709551615
  %mul.i.2784 = mul nuw i128 %conv2.i.2783, %conv.i.2782
  %shr.i.2785 = lshr i128 %mul.i.2784, 64
  %conv5.i.2786 = and i128 %mul.i.2784, 18446744073709551615
  store i128 %conv5.i.2786, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.2789 = and i128 %add84.i.2977, 18446744073709551615
  %mul13.i.2790 = mul nuw i128 %conv12.i.2789, %conv.i.2782
  %shr15.i.2791 = lshr i128 %mul13.i.2790, 64
  %conv17.i.2792 = and i128 %mul13.i.2790, 18446744073709551615
  %conv22.i.2796 = and i128 %add84.i.2920, 18446744073709551615
  %mul25.i.2797 = mul nuw i128 %conv2.i.2783, %conv22.i.2796
  %shr27.i.2798 = lshr i128 %mul25.i.2797, 64
  %conv29.i.2799 = and i128 %mul25.i.2797, 18446744073709551615
  %add.i.2793 = add nuw nsw i128 %conv29.i.2799, %shr.i.2785
  %add31.i.2800 = add nuw nsw i128 %add.i.2793, %conv17.i.2792
  store i128 %add31.i.2800, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.2803 = and i128 %add94.i.2980, 18446744073709551615
  %mul39.i.2804 = mul nuw i128 %conv38.i.2803, %conv.i.2782
  %shr41.i.2805 = lshr i128 %mul39.i.2804, 64
  %conv43.i.2806 = and i128 %mul39.i.2804, 18446744073709551615
  %mul52.i.2809 = mul nuw i128 %conv12.i.2789, %conv22.i.2796
  %shr54.i.2810 = lshr i128 %mul52.i.2809, 64
  %conv56.i.2811 = and i128 %mul52.i.2809, 18446744073709551615
  %conv63.i.2815 = and i128 %add94.i.2923, 18446744073709551615
  %mul66.i.2816 = mul nuw i128 %conv63.i.2815, %conv2.i.2783
  %shr68.i.2817 = lshr i128 %mul66.i.2816, 64
  %conv70.i.2818 = and i128 %mul66.i.2816, 18446744073709551615
  %add34.i.2801 = add nuw nsw i128 %conv70.i.2818, %shr27.i.2798
  %add45.i.2807 = add nuw nsw i128 %add34.i.2801, %shr15.i.2791
  %add58.i.2812 = add nuw nsw i128 %add45.i.2807, %conv56.i.2811
  %add72.i.2819 = add nuw nsw i128 %add58.i.2812, %conv43.i.2806
  store i128 %add72.i.2819, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.2822 = and i128 %add104.i.2983, 18446744073709551615
  %mul80.i.2823 = mul nuw i128 %conv79.i.2822, %conv.i.2782
  %shr82.i.2824 = lshr i128 %mul80.i.2823, 64
  %conv84.i.2825 = and i128 %mul80.i.2823, 18446744073709551615
  %mul93.i.2828 = mul nuw i128 %conv38.i.2803, %conv22.i.2796
  %shr95.i.2829 = lshr i128 %mul93.i.2828, 64
  %conv97.i.2830 = and i128 %mul93.i.2828, 18446744073709551615
  %mul107.i.2833 = mul nuw i128 %conv12.i.2789, %conv63.i.2815
  %shr109.i.2834 = lshr i128 %mul107.i.2833, 64
  %conv111.i.2835 = and i128 %mul107.i.2833, 18446744073709551615
  %conv118.i.2839 = and i128 %add104.i.2926, 18446744073709551615
  %mul121.i.2840 = mul nuw i128 %conv118.i.2839, %conv2.i.2783
  %shr123.i.2841 = lshr i128 %mul121.i.2840, 64
  %conv125.i.2842 = and i128 %mul121.i.2840, 18446744073709551615
  %add61.i.2813 = add nuw nsw i128 %shr54.i.2810, %shr68.i.2817
  %add75.i.2820 = add nuw nsw i128 %add61.i.2813, %conv111.i.2835
  %add86.i.2826 = add nuw nsw i128 %add75.i.2820, %conv125.i.2842
  %add99.i.2831 = add nuw nsw i128 %add86.i.2826, %shr41.i.2805
  %add113.i.2836 = add nuw nsw i128 %add99.i.2831, %conv97.i.2830
  %add127.i.2843 = add nuw nsw i128 %add113.i.2836, %conv84.i.2825
  store i128 %add127.i.2843, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.2845 = mul nuw i128 %conv79.i.2822, %conv22.i.2796
  %shr137.i.2846 = lshr i128 %mul135.i.2845, 64
  %conv139.i.2847 = and i128 %mul135.i.2845, 18446744073709551615
  %mul148.i.2850 = mul nuw i128 %conv38.i.2803, %conv63.i.2815
  %shr150.i.2851 = lshr i128 %mul148.i.2850, 64
  %conv152.i.2852 = and i128 %mul148.i.2850, 18446744073709551615
  %mul162.i.2855 = mul nuw i128 %conv118.i.2839, %conv12.i.2789
  %shr164.i.2856 = lshr i128 %mul162.i.2855, 64
  %conv166.i.2857 = and i128 %mul162.i.2855, 18446744073709551615
  %add102.i.2832 = add nuw nsw i128 %shr123.i.2841, %shr109.i.2834
  %add116.i.2837 = add nuw nsw i128 %add102.i.2832, %conv166.i.2857
  %add130.i.2844 = add nuw nsw i128 %add116.i.2837, %shr95.i.2829
  %add141.i.2848 = add nuw nsw i128 %add130.i.2844, %conv152.i.2852
  %add154.i.2853 = add nuw nsw i128 %add141.i.2848, %shr82.i.2824
  %add168.i.2858 = add nuw nsw i128 %add154.i.2853, %conv139.i.2847
  store i128 %add168.i.2858, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.2860 = mul nuw i128 %conv79.i.2822, %conv63.i.2815
  %shr178.i.2861 = lshr i128 %mul176.i.2860, 64
  %conv180.i.2862 = and i128 %mul176.i.2860, 18446744073709551615
  %mul189.i.2865 = mul nuw i128 %conv38.i.2803, %conv118.i.2839
  %shr191.i.2866 = lshr i128 %mul189.i.2865, 64
  %conv193.i.2867 = and i128 %mul189.i.2865, 18446744073709551615
  %add157.i.2854 = add nuw nsw i128 %shr150.i.2851, %shr164.i.2856
  %add171.i.2859 = add nuw nsw i128 %add157.i.2854, %conv193.i.2867
  %add182.i.2863 = add nuw nsw i128 %add171.i.2859, %shr137.i.2846
  %add195.i.2868 = add nuw nsw i128 %add182.i.2863, %conv180.i.2862
  store i128 %add195.i.2868, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.2869 = add nuw nsw i128 %shr178.i.2861, %shr191.i.2866
  %mul203.i.2870 = mul nuw i128 %conv79.i.2822, %conv118.i.2839
  %shr205.i.2871 = lshr i128 %mul203.i.2870, 64
  %conv207.i.2872 = and i128 %mul203.i.2870, 18446744073709551615
  %add209.i.2873 = add nuw nsw i128 %add198.i.2869, %conv207.i.2872
  store i128 %add209.i.2873, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.2871, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.2739 = add nuw nsw i128 %conv5.i.2786, 1267650600228229401427983728624
  %add3.i.2741 = or i128 %add31.i.2800, 1267650600228229401496703205376
  %add6.i.2744 = add nuw nsw i128 %add72.i.2819, 1267650600228229401427983728656
  %add9.i.2747 = add i128 %add127.i.2843, 1267650600228229401427983728656
  %shl.i.i.2751 = shl nuw nsw i128 %add195.i.2868, 32
  %add.i.i.2752 = add i128 %shl.i.i.2751, %add168.i.2858
  %sub7.i.i.2756 = sub nsw i128 %add195.i.2868, %shr205.i.2871
  %shl13.i.i.2759 = shl i128 %add168.i.2858, 32
  %shl28.i.i.2767 = shl nuw nsw i128 %add209.i.2873, 32
  %shl32.i.i.2769 = shl nuw nsw i128 %add209.i.2873, 33
  %add9.i.i.2757 = sub i128 %add3.i.2741, %shl13.i.i.2759
  %sub15.i.i.2760 = add i128 %add9.i.i.2757, %shl32.i.i.2769
  %add34.i.i.2770 = add i128 %sub15.i.i.2760, %sub7.i.i.2756
  %mul.i.i.2771 = shl nuw nsw i128 %add209.i.2873, 1
  %shl46.i.i.2776 = shl nuw nsw i128 %shr205.i.2871, 32
  %add3.i.i.2753 = sub nsw i128 %add.i.2739, %add209.i.2873
  %sub26.i.i.2766 = add i128 %add3.i.i.2753, %add.i.i.2752
  %sub30.i.i.2768 = sub i128 %sub26.i.i.2766, %shl28.i.i.2767
  %sub44.i.i.2775 = sub i128 %sub30.i.i.2768, %shr205.i.2871
  %sub48.i.i.2777 = sub i128 %sub44.i.i.2775, %shl46.i.i.2776
  %shl50.i.i.2778 = shl nuw nsw i128 %shr205.i.2871, 33
  %sub11.i.i.2758 = sub nsw i128 %add6.i.2744, %shl.i.i.2751
  %sub23.i.i.2764 = add i128 %sub11.i.i.2758, %mul.i.i.2771
  %add37.i.i.2772 = sub i128 %sub23.i.i.2764, %sub7.i.i.2756
  %add52.i.i.2779 = add i128 %add37.i.i.2772, %shl50.i.i.2778
  %mul54.i.i.2780 = mul nuw nsw i128 %shr205.i.2871, 3
  %sub.i.i.2754 = add i128 %add9.i.2747, %shl13.i.i.2759
  %add19.i.i.2762 = sub i128 %sub.i.i.2754, %add.i.i.2752
  %sub41.i.i.2774 = sub i128 %add19.i.i.2762, %shl28.i.i.2767
  %add56.i.i.2781 = add i128 %sub41.i.i.2774, %mul54.i.i.2780
  %arraydecay32 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 0
  %19 = load i128, i128* %z1, align 16, !tbaa !2
  %20 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %arrayidx3.i.2734 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 1
  %21 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %arrayidx5.i.2736 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 2
  %22 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %arrayidx7.i.2738 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 3
  %23 = load i64, i64* %z2, align 8, !tbaa !16
  %conv.i.2722 = zext i64 %23 to i128
  %add.i.2723 = add i128 %19, %conv.i.2722
  store i128 %add.i.2723, i128* %arraydecay32, align 16, !tbaa !2
  %24 = load i64, i64* %arrayidx1.i.1241, align 8, !tbaa !16
  %conv3.i.2725 = zext i64 %24 to i128
  %add5.i = add i128 %20, %conv3.i.2725
  store i128 %add5.i, i128* %arrayidx3.i.2734, align 16, !tbaa !2
  %25 = load i64, i64* %arrayidx2.i.1243, align 8, !tbaa !16
  %conv7.i = zext i64 %25 to i128
  %add9.i.2729 = add i128 %21, %conv7.i
  store i128 %add9.i.2729, i128* %arrayidx5.i.2736, align 16, !tbaa !2
  %26 = load i64, i64* %arrayidx4.i.1245, align 8, !tbaa !16
  %conv11.i = zext i64 %26 to i128
  %add13.i.2732 = add i128 %22, %conv11.i
  store i128 %add13.i.2732, i128* %arrayidx7.i.2738, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay15, i128* %arraydecay32)
  %27 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.2617 = add i128 %27, 1267650600228229401427983728624
  %28 = load i128, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %add3.i.2619 = add i128 %28, 1267650600228229401496703205376
  %29 = load i128, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add6.i.2622 = add i128 %29, 1267650600228229401427983728656
  %30 = load i128, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %add9.i.2625 = add i128 %30, 1267650600228229401427983728656
  %31 = load i128, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %32 = load i128, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %shl.i.i.2629 = shl i128 %32, 32
  %add.i.i.2630 = add i128 %shl.i.i.2629, %31
  %add3.i.i.2631 = add i128 %add.i.i.2630, %add.i.2617
  %sub.i.i.2632 = sub i128 %add9.i.2625, %add.i.i.2630
  %33 = load i128, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %sub7.i.i.2634 = sub i128 %32, %33
  %add9.i.i.2635 = add i128 %sub7.i.i.2634, %add3.i.2619
  %sub11.i.i.2636 = sub i128 %add6.i.2622, %sub7.i.i.2634
  %shl13.i.i.2637 = shl i128 %31, 32
  %sub15.i.i.2638 = sub i128 %add9.i.i.2635, %shl13.i.i.2637
  %add19.i.i.2640 = add i128 %shl13.i.i.2637, %sub.i.i.2632
  %sub23.i.i.2642 = sub i128 %sub11.i.i.2636, %shl.i.i.2629
  %34 = load i128, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  %sub26.i.i.2644 = sub i128 %add3.i.i.2631, %34
  %shl28.i.i.2645 = shl i128 %34, 32
  %sub30.i.i.2646 = sub i128 %sub26.i.i.2644, %shl28.i.i.2645
  %shl32.i.i.2647 = shl i128 %34, 33
  %add34.i.i.2648 = add i128 %shl32.i.i.2647, %sub15.i.i.2638
  %mul.i.i.2649 = shl i128 %34, 1
  %add37.i.i.2650 = add i128 %mul.i.i.2649, %sub23.i.i.2642
  %sub41.i.i.2652 = sub i128 %add19.i.i.2640, %shl28.i.i.2645
  %sub44.i.i.2653 = sub i128 %sub30.i.i.2646, %33
  %shl46.i.i.2654 = shl i128 %33, 32
  %sub48.i.i.2655 = sub i128 %sub44.i.i.2653, %shl46.i.i.2654
  %shl50.i.i.2656 = shl i128 %33, 33
  %add52.i.i.2657 = add i128 %shl50.i.i.2656, %add37.i.i.2650
  %mul54.i.i.2658 = mul i128 %33, 3
  %add56.i.i.2659 = add i128 %mul54.i.i.2658, %sub41.i.i.2652
  %35 = load i128, i128* %arraydecay17, align 16, !tbaa !2
  %36 = load i128, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %37 = load i128, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %38 = load i128, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  %add.i.2593 = add i128 %sub48.i.i.2655, 40564819207303340845695479315968
  %add2.i.2595 = add i128 %add34.i.i.2648, 40564819207303340847894502572032
  %add4.i.2597 = add i128 %add52.i.i.2657, 40564819207303340845695479316992
  %add6.i.2599 = add i128 %add56.i.i.2659, 40564819207303340845695479316992
  %sum = add i128 %35, %sub48.i.i.3027
  %sub.i.2600 = sub i128 %add.i.2593, %sum
  store i128 %sub.i.2600, i128* %arraydecay32, align 16, !tbaa !2
  %sum3536 = add i128 %36, %add34.i.i.3020
  %sub11.i.2602 = sub i128 %add2.i.2595, %sum3536
  store i128 %sub11.i.2602, i128* %arrayidx3.i.2734, align 16, !tbaa !2
  %sum3537 = add i128 %37, %add52.i.i.3029
  %sub14.i.2604 = sub i128 %add4.i.2597, %sum3537
  store i128 %sub14.i.2604, i128* %arrayidx5.i.2736, align 16, !tbaa !2
  %sum3538 = add i128 %38, %add56.i.i.3031
  %sub17.i.2606 = sub i128 %add6.i.2599, %sum3538
  store i128 %sub17.i.2606, i128* %arrayidx7.i.2738, align 16, !tbaa !2
  %39 = load i64, i64* %z2, align 8, !tbaa !16
  %conv2.i.2501 = zext i64 %39 to i128
  %mul.i.2502 = mul nuw i128 %conv2.i.2501, %conv2.i.2783
  %shr.i.2503 = lshr i128 %mul.i.2502, 64
  %conv5.i.2504 = and i128 %mul.i.2502, 18446744073709551615
  store i128 %conv5.i.2504, i128* %arraydecay15, align 16, !tbaa !2
  %40 = load i64, i64* %arrayidx1.i.1241, align 8, !tbaa !16
  %conv12.i.2507 = zext i64 %40 to i128
  %mul13.i.2508 = mul nuw i128 %conv12.i.2507, %conv2.i.2783
  %shr15.i.2509 = lshr i128 %mul13.i.2508, 64
  %conv17.i.2510 = and i128 %mul13.i.2508, 18446744073709551615
  %mul25.i.2515 = mul nuw i128 %conv2.i.2501, %conv12.i.2789
  %shr27.i.2516 = lshr i128 %mul25.i.2515, 64
  %conv29.i.2517 = and i128 %mul25.i.2515, 18446744073709551615
  %add.i.2511 = add nuw nsw i128 %conv29.i.2517, %shr.i.2503
  %add31.i.2518 = add nuw nsw i128 %add.i.2511, %conv17.i.2510
  store i128 %add31.i.2518, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %41 = load i64, i64* %arrayidx2.i.1243, align 8, !tbaa !16
  %conv38.i.2521 = zext i64 %41 to i128
  %mul39.i.2522 = mul nuw i128 %conv38.i.2521, %conv2.i.2783
  %shr41.i.2523 = lshr i128 %mul39.i.2522, 64
  %conv43.i.2524 = and i128 %mul39.i.2522, 18446744073709551615
  %mul52.i.2527 = mul nuw i128 %conv12.i.2507, %conv12.i.2789
  %shr54.i.2528 = lshr i128 %mul52.i.2527, 64
  %conv56.i.2529 = and i128 %mul52.i.2527, 18446744073709551615
  %mul66.i.2534 = mul nuw i128 %conv2.i.2501, %conv38.i.2803
  %shr68.i.2535 = lshr i128 %mul66.i.2534, 64
  %conv70.i.2536 = and i128 %mul66.i.2534, 18446744073709551615
  %add34.i.2519 = add nuw nsw i128 %conv70.i.2536, %shr27.i.2516
  %add45.i.2525 = add nuw nsw i128 %add34.i.2519, %shr15.i.2509
  %add58.i.2530 = add nuw nsw i128 %add45.i.2525, %conv56.i.2529
  %add72.i.2537 = add nuw nsw i128 %add58.i.2530, %conv43.i.2524
  store i128 %add72.i.2537, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %42 = load i64, i64* %arrayidx4.i.1245, align 8, !tbaa !16
  %conv79.i.2540 = zext i64 %42 to i128
  %mul80.i.2541 = mul nuw i128 %conv79.i.2540, %conv2.i.2783
  %shr82.i.2542 = lshr i128 %mul80.i.2541, 64
  %conv84.i.2543 = and i128 %mul80.i.2541, 18446744073709551615
  %mul93.i.2546 = mul nuw i128 %conv38.i.2521, %conv12.i.2789
  %shr95.i.2547 = lshr i128 %mul93.i.2546, 64
  %conv97.i.2548 = and i128 %mul93.i.2546, 18446744073709551615
  %mul107.i.2551 = mul nuw i128 %conv12.i.2507, %conv38.i.2803
  %shr109.i.2552 = lshr i128 %mul107.i.2551, 64
  %conv111.i.2553 = and i128 %mul107.i.2551, 18446744073709551615
  %mul121.i.2558 = mul nuw i128 %conv2.i.2501, %conv79.i.2822
  %shr123.i.2559 = lshr i128 %mul121.i.2558, 64
  %conv125.i.2560 = and i128 %mul121.i.2558, 18446744073709551615
  %add61.i.2531 = add nuw nsw i128 %conv125.i.2560, %shr68.i.2535
  %add75.i.2538 = add nuw nsw i128 %add61.i.2531, %shr54.i.2528
  %add86.i.2544 = add nuw nsw i128 %add75.i.2538, %conv111.i.2553
  %add99.i.2549 = add nuw nsw i128 %add86.i.2544, %shr41.i.2523
  %add113.i.2554 = add nuw nsw i128 %add99.i.2549, %conv97.i.2548
  %add127.i.2561 = add nuw nsw i128 %add113.i.2554, %conv84.i.2543
  store i128 %add127.i.2561, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.2563 = mul nuw i128 %conv79.i.2540, %conv12.i.2789
  %shr137.i.2564 = lshr i128 %mul135.i.2563, 64
  %conv139.i.2565 = and i128 %mul135.i.2563, 18446744073709551615
  %mul148.i.2568 = mul nuw i128 %conv38.i.2521, %conv38.i.2803
  %shr150.i.2569 = lshr i128 %mul148.i.2568, 64
  %conv152.i.2570 = and i128 %mul148.i.2568, 18446744073709551615
  %mul162.i.2573 = mul nuw i128 %conv12.i.2507, %conv79.i.2822
  %shr164.i.2574 = lshr i128 %mul162.i.2573, 64
  %conv166.i.2575 = and i128 %mul162.i.2573, 18446744073709551615
  %add102.i.2550 = add nuw nsw i128 %shr109.i.2552, %shr123.i.2559
  %add116.i.2555 = add nuw nsw i128 %add102.i.2550, %conv166.i.2575
  %add130.i.2562 = add nuw nsw i128 %add116.i.2555, %shr95.i.2547
  %add141.i.2566 = add nuw nsw i128 %add130.i.2562, %conv152.i.2570
  %add154.i.2571 = add nuw nsw i128 %add141.i.2566, %shr82.i.2542
  %add168.i.2576 = add nuw nsw i128 %add154.i.2571, %conv139.i.2565
  store i128 %add168.i.2576, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.2578 = mul nuw i128 %conv79.i.2540, %conv38.i.2803
  %shr178.i.2579 = lshr i128 %mul176.i.2578, 64
  %conv180.i.2580 = and i128 %mul176.i.2578, 18446744073709551615
  %mul189.i.2583 = mul nuw i128 %conv38.i.2521, %conv79.i.2822
  %shr191.i.2584 = lshr i128 %mul189.i.2583, 64
  %conv193.i.2585 = and i128 %mul189.i.2583, 18446744073709551615
  %add157.i.2572 = add nuw nsw i128 %shr150.i.2569, %shr164.i.2574
  %add171.i.2577 = add nuw nsw i128 %add157.i.2572, %conv193.i.2585
  %add182.i.2581 = add nuw nsw i128 %add171.i.2577, %shr137.i.2564
  %add195.i.2586 = add nuw nsw i128 %add182.i.2581, %conv180.i.2580
  store i128 %add195.i.2586, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.2587 = add nuw nsw i128 %shr178.i.2579, %shr191.i.2584
  %mul203.i.2588 = mul nuw i128 %conv79.i.2540, %conv79.i.2822
  %shr205.i.2589 = lshr i128 %mul203.i.2588, 64
  %conv207.i.2590 = and i128 %mul203.i.2588, 18446744073709551615
  %add209.i.2591 = add nuw nsw i128 %add198.i.2587, %conv207.i.2590
  store i128 %add209.i.2591, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.2589, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add6.i.2462 = add nuw nsw i128 %add72.i.2537, 1267650600228229401427983728656
  %shl.i.i.2469 = shl nuw nsw i128 %add195.i.2586, 32
  %add.i.i.2470 = add i128 %shl.i.i.2469, %add168.i.2576
  %sub7.i.i.2474 = sub nsw i128 %add195.i.2586, %shr205.i.2589
  %shl13.i.i.2477 = shl i128 %add168.i.2576, 32
  %shl28.i.i.2485 = shl nuw nsw i128 %add209.i.2591, 32
  %shl32.i.i.2487 = shl nuw nsw i128 %add209.i.2591, 33
  %mul.i.i.2489 = shl nuw nsw i128 %add209.i.2591, 1
  %shl46.i.i.2494 = shl nuw nsw i128 %shr205.i.2589, 32
  %shl50.i.i.2496 = shl nuw nsw i128 %shr205.i.2589, 33
  %sub11.i.i.2476 = add nuw nsw i128 %add6.i.2462, %shl50.i.i.2496
  %sub23.i.i.2482 = sub i128 %sub11.i.i.2476, %sub7.i.i.2474
  %add37.i.i.2490 = sub i128 %sub23.i.i.2482, %shl.i.i.2469
  %add52.i.i.2497 = add i128 %add37.i.i.2490, %mul.i.i.2489
  %mul54.i.i.2498 = mul nuw nsw i128 %shr205.i.2589, 3
  %arrayidx.i.i.2249 = getelementptr inbounds i128, i128* %y1, i64 3
  %43 = load i128, i128* %arrayidx.i.i.2249, align 16, !tbaa !2
  %add.i.i.2250 = add i128 %43, 18446744069414584320
  %arrayidx6.i.i.2251 = getelementptr inbounds i128, i128* %y1, i64 2
  %44 = load i128, i128* %arrayidx6.i.i.2251, align 16, !tbaa !2
  %shr.i.i.2252 = lshr i128 %44, 64
  %add8.i.i.2253 = add i128 %add.i.i.2250, %shr.i.i.2252
  %conv12.i.i.2254 = and i128 %44, 18446744073709551615
  %add13.i.i.2255 = add nuw nsw i128 %conv12.i.i.2254, 18446673704965373952
  %45 = load i128, i128* %y1, align 16, !tbaa !2
  %add16.i.i.2256 = add i128 %45, 18446744073709551615
  %arrayidx18.i.i.2257 = getelementptr inbounds i128, i128* %y1, i64 1
  %46 = load i128, i128* %arrayidx18.i.i.2257, align 16, !tbaa !2
  %add19.i.i.2258 = add i128 %46, 1298074214633706907132628377272319
  %shr22.i.i.2259 = lshr i128 %add8.i.i.2253, 64
  %conv23.i.i.2260 = trunc i128 %shr22.i.i.2259 to i64
  %conv26.i.i.2261 = and i128 %add8.i.i.2253, 18446744073709551615
  %sub.i.i.2262 = sub nsw i128 %conv26.i.i.2261, %shr22.i.i.2259
  %shl.i.i.2263 = shl nuw nsw i128 %shr22.i.i.2259, 32
  %add32.i.i.2264 = add nsw i128 %sub.i.i.2262, %shl.i.i.2263
  %shr34.i.i.2265 = lshr i128 %add32.i.i.2264, 64
  %conv35.i.i.2266 = trunc i128 %shr34.i.i.2265 to i64
  %add36.i.i.2267 = add i64 %conv35.i.i.2266, %conv23.i.i.2260
  %conv39.i.i.2268 = and i128 %add32.i.i.2264, 18446744073709551615
  %sub43.i.i.2269 = sub nsw i128 %conv39.i.i.2268, %shr34.i.i.2265
  %shl45.i.i.2270 = shl nuw nsw i128 %shr34.i.i.2265, 32
  %add47.i.i.2271 = add nsw i128 %sub43.i.i.2269, %shl45.i.i.2270
  %conv48.i.i.2272 = zext i64 %add36.i.i.2267 to i128
  %add50.i.i.2273 = add i128 %add16.i.i.2256, %conv48.i.i.2272
  %shl52.i.i.2274 = shl nuw nsw i128 %conv48.i.i.2272, 32
  %sub54.i.i.2275 = sub i128 %add19.i.i.2258, %shl52.i.i.2274
  %shr56.i.i.2276 = lshr i128 %add47.i.i.2271, 64
  %conv57.i.i.2277 = trunc i128 %shr56.i.i.2276 to i64
  %sub58.i.i.2278 = sub i64 0, %conv57.i.i.2277
  %conv60.i.i.2279 = trunc i128 %add47.i.i.2271 to i64
  %and.i.i.2280 = and i64 %conv60.i.i.2279, 9223372036854775807
  %neg.i.i.2281 = sub nsw i64 9223372032559808512, %and.i.i.2280
  %sub62177.i.i.2282 = and i64 %neg.i.i.2281, %conv60.i.i.2279
  %and66.i.i.2283 = ashr i64 %sub62177.i.i.2282, 63
  %or.i.i.2284 = or i64 %and66.i.i.2283, %sub58.i.i.2278
  %conv68.i.i.2285 = zext i64 %or.i.i.2284 to i128
  %sub70.i.i.2286 = sub i128 %add50.i.i.2273, %conv68.i.i.2285
  %and71.i.i.2287 = and i64 %or.i.i.2284, 4294967295
  %conv72.i.i.2288 = zext i64 %and71.i.i.2287 to i128
  %sub74.i.i.2289 = sub i128 %sub54.i.i.2275, %conv72.i.i.2288
  %and75.i.i.2290 = and i64 %or.i.i.2284, -4294967295
  %conv76.i.i.2291 = zext i64 %and75.i.i.2290 to i128
  %sub78.i.i.2292 = sub nsw i128 %add47.i.i.2271, %conv76.i.i.2291
  %shr80.i.i.2293 = lshr i128 %sub70.i.i.2286, 64
  %add84.i.i.2294 = add i128 %sub74.i.i.2289, %shr80.i.i.2293
  %shr90.i.i.2296 = lshr i128 %add84.i.i.2294, 64
  %add94.i.i.2297 = add nuw nsw i128 %add13.i.i.2255, %shr90.i.i.2296
  %shr100.i.i.2299 = lshr i128 %add94.i.i.2297, 64
  %add104.i.i.2300 = add nsw i128 %sub78.i.i.2292, %shr100.i.i.2299
  %shr.i.2310 = lshr i128 %add52.i.i.2497, 64
  %sub.i.i.2472 = add i128 %add127.i.2561, 1267650600246676145497398312976
  %add19.i.i.2480 = add i128 %sub.i.i.2472, %mul54.i.i.2498
  %sub41.i.i.2492 = add i128 %add19.i.i.2480, %shl13.i.i.2477
  %add56.i.i.2499 = sub i128 %sub41.i.i.2492, %add.i.i.2470
  %add.i.2308 = sub i128 %add56.i.i.2499, %shl28.i.i.2485
  %add8.i.2311 = add i128 %add.i.2308, %shr.i.2310
  %conv12.i.2312 = and i128 %add52.i.i.2497, 18446744073709551615
  %add13.i.2313 = add nuw nsw i128 %conv12.i.2312, 18446673704965373952
  %shr22.i.2317 = lshr i128 %add8.i.2311, 64
  %conv23.i.2318 = trunc i128 %shr22.i.2317 to i64
  %conv26.i.2319 = and i128 %add8.i.2311, 18446744073709551615
  %sub.i.2320 = sub nsw i128 %conv26.i.2319, %shr22.i.2317
  %shl.i.2321 = shl nuw nsw i128 %shr22.i.2317, 32
  %add32.i.2322 = add nsw i128 %sub.i.2320, %shl.i.2321
  %shr34.i.2323 = lshr i128 %add32.i.2322, 64
  %conv35.i.2324 = trunc i128 %shr34.i.2323 to i64
  %add36.i.2325 = add i64 %conv35.i.2324, %conv23.i.2318
  %conv39.i.2326 = and i128 %add32.i.2322, 18446744073709551615
  %sub43.i.2327 = sub nsw i128 %conv39.i.2326, %shr34.i.2323
  %shl45.i.2328 = shl nuw nsw i128 %shr34.i.2323, 32
  %add47.i.2329 = add nsw i128 %sub43.i.2327, %shl45.i.2328
  %conv48.i.2330 = zext i64 %add36.i.2325 to i128
  %shl52.i.2332 = shl nuw nsw i128 %conv48.i.2330, 32
  %shr56.i.2334 = lshr i128 %add47.i.2329, 64
  %conv57.i.2335 = trunc i128 %shr56.i.2334 to i64
  %sub58.i.2336 = sub i64 0, %conv57.i.2335
  %conv60.i.2337 = trunc i128 %add47.i.2329 to i64
  %and.i.2338 = and i64 %conv60.i.2337, 9223372036854775807
  %neg.i.2339 = sub nsw i64 9223372032559808512, %and.i.2338
  %sub62177.i.2340 = and i64 %neg.i.2339, %conv60.i.2337
  %and66.i.2341 = ashr i64 %sub62177.i.2340, 63
  %or.i.2342 = or i64 %and66.i.2341, %sub58.i.2336
  %conv68.i.2343 = zext i64 %or.i.2342 to i128
  %add3.i.i.2471 = add nuw nsw i128 %conv5.i.2504, 1267650600246676145501693280239
  %sub26.i.i.2484 = sub nsw i128 %add3.i.i.2471, %shr205.i.2589
  %sub30.i.i.2486 = sub nsw i128 %sub26.i.i.2484, %shl46.i.i.2494
  %sub44.i.i.2493 = sub nsw i128 %sub30.i.i.2486, %add209.i.2591
  %sub48.i.i.2495 = add i128 %sub44.i.i.2493, %add.i.i.2470
  %add16.i.2314 = sub i128 %sub48.i.i.2495, %shl28.i.i.2485
  %add50.i.2331 = add i128 %add16.i.2314, %conv48.i.2330
  %sub70.i.2344 = sub i128 %add50.i.2331, %conv68.i.2343
  %and71.i.2345 = and i64 %or.i.2342, 4294967295
  %conv72.i.2346 = zext i64 %and71.i.2345 to i128
  %and75.i.2348 = and i64 %or.i.2342, -4294967295
  %conv76.i.2349 = zext i64 %and75.i.2348 to i128
  %sub78.i.2350 = sub nsw i128 %add47.i.2329, %conv76.i.2349
  %shr80.i.2351 = lshr i128 %sub70.i.2344, 64
  %add9.i.i.2475 = add nuw nsw i128 %add31.i.2518, 1299341865233935136534125080477695
  %sub15.i.i.2478 = sub i128 %add9.i.i.2475, %shl13.i.i.2477
  %add34.i.i.2488 = add i128 %sub15.i.i.2478, %sub7.i.i.2474
  %add19.i.2316 = add i128 %add34.i.i.2488, %shl32.i.i.2487
  %sub54.i.2333 = sub i128 %add19.i.2316, %shl52.i.2332
  %sub74.i.2347 = sub i128 %sub54.i.2333, %conv72.i.2346
  %add84.i.2352 = add i128 %sub74.i.2347, %shr80.i.2351
  %shr90.i.2354 = lshr i128 %add84.i.2352, 64
  %add94.i.2355 = add nuw nsw i128 %add13.i.2313, %shr90.i.2354
  %shr100.i.2357 = lshr i128 %add94.i.2355, 64
  %add104.i.2358 = add nsw i128 %sub78.i.2350, %shr100.i.2357
  %conv.i.2364 = and i128 %sub70.i.i.2286, 18446744073709551615
  %conv2.i.2365 = and i128 %sub70.i.2344, 18446744073709551615
  %mul.i.2366 = mul nuw i128 %conv2.i.2365, %conv.i.2364
  %shr.i.2367 = lshr i128 %mul.i.2366, 64
  %conv5.i.2368 = and i128 %mul.i.2366, 18446744073709551615
  store i128 %conv5.i.2368, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.2371 = and i128 %add84.i.2352, 18446744073709551615
  %mul13.i.2372 = mul nuw i128 %conv12.i.2371, %conv.i.2364
  %shr15.i.2373 = lshr i128 %mul13.i.2372, 64
  %conv17.i.2374 = and i128 %mul13.i.2372, 18446744073709551615
  %conv22.i.2378 = and i128 %add84.i.i.2294, 18446744073709551615
  %mul25.i.2379 = mul nuw i128 %conv2.i.2365, %conv22.i.2378
  %shr27.i.2380 = lshr i128 %mul25.i.2379, 64
  %conv29.i.2381 = and i128 %mul25.i.2379, 18446744073709551615
  %add.i.2375 = add nuw nsw i128 %conv29.i.2381, %shr.i.2367
  %add31.i.2382 = add nuw nsw i128 %add.i.2375, %conv17.i.2374
  store i128 %add31.i.2382, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.2385 = and i128 %add94.i.2355, 18446744073709551615
  %mul39.i.2386 = mul nuw i128 %conv38.i.2385, %conv.i.2364
  %shr41.i.2387 = lshr i128 %mul39.i.2386, 64
  %conv43.i.2388 = and i128 %mul39.i.2386, 18446744073709551615
  %mul52.i.2391 = mul nuw i128 %conv12.i.2371, %conv22.i.2378
  %shr54.i.2392 = lshr i128 %mul52.i.2391, 64
  %conv56.i.2393 = and i128 %mul52.i.2391, 18446744073709551615
  %conv63.i.2397 = and i128 %add94.i.i.2297, 18446744073709551615
  %mul66.i.2398 = mul nuw i128 %conv63.i.2397, %conv2.i.2365
  %shr68.i.2399 = lshr i128 %mul66.i.2398, 64
  %conv70.i.2400 = and i128 %mul66.i.2398, 18446744073709551615
  %add34.i.2383 = add nuw nsw i128 %conv70.i.2400, %shr27.i.2380
  %add45.i.2389 = add nuw nsw i128 %add34.i.2383, %shr15.i.2373
  %add58.i.2394 = add nuw nsw i128 %add45.i.2389, %conv56.i.2393
  %add72.i.2401 = add nuw nsw i128 %add58.i.2394, %conv43.i.2388
  store i128 %add72.i.2401, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.2404 = and i128 %add104.i.2358, 18446744073709551615
  %mul80.i.2405 = mul nuw i128 %conv79.i.2404, %conv.i.2364
  %shr82.i.2406 = lshr i128 %mul80.i.2405, 64
  %conv84.i.2407 = and i128 %mul80.i.2405, 18446744073709551615
  %mul93.i.2410 = mul nuw i128 %conv38.i.2385, %conv22.i.2378
  %shr95.i.2411 = lshr i128 %mul93.i.2410, 64
  %conv97.i.2412 = and i128 %mul93.i.2410, 18446744073709551615
  %mul107.i.2415 = mul nuw i128 %conv12.i.2371, %conv63.i.2397
  %shr109.i.2416 = lshr i128 %mul107.i.2415, 64
  %conv111.i.2417 = and i128 %mul107.i.2415, 18446744073709551615
  %conv118.i.2421 = and i128 %add104.i.i.2300, 18446744073709551615
  %mul121.i.2422 = mul nuw i128 %conv118.i.2421, %conv2.i.2365
  %shr123.i.2423 = lshr i128 %mul121.i.2422, 64
  %conv125.i.2424 = and i128 %mul121.i.2422, 18446744073709551615
  %add61.i.2395 = add nuw nsw i128 %shr54.i.2392, %shr68.i.2399
  %add75.i.2402 = add nuw nsw i128 %add61.i.2395, %conv111.i.2417
  %add86.i.2408 = add nuw nsw i128 %add75.i.2402, %conv125.i.2424
  %add99.i.2413 = add nuw nsw i128 %add86.i.2408, %shr41.i.2387
  %add113.i.2418 = add nuw nsw i128 %add99.i.2413, %conv97.i.2412
  %add127.i.2425 = add nuw nsw i128 %add113.i.2418, %conv84.i.2407
  store i128 %add127.i.2425, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.2427 = mul nuw i128 %conv79.i.2404, %conv22.i.2378
  %shr137.i.2428 = lshr i128 %mul135.i.2427, 64
  %conv139.i.2429 = and i128 %mul135.i.2427, 18446744073709551615
  %mul148.i.2432 = mul nuw i128 %conv38.i.2385, %conv63.i.2397
  %shr150.i.2433 = lshr i128 %mul148.i.2432, 64
  %conv152.i.2434 = and i128 %mul148.i.2432, 18446744073709551615
  %mul162.i.2437 = mul nuw i128 %conv118.i.2421, %conv12.i.2371
  %shr164.i.2438 = lshr i128 %mul162.i.2437, 64
  %conv166.i.2439 = and i128 %mul162.i.2437, 18446744073709551615
  %add102.i.2414 = add nuw nsw i128 %shr123.i.2423, %shr109.i.2416
  %add116.i.2419 = add nuw nsw i128 %add102.i.2414, %conv166.i.2439
  %add130.i.2426 = add nuw nsw i128 %add116.i.2419, %shr95.i.2411
  %add141.i.2430 = add nuw nsw i128 %add130.i.2426, %conv152.i.2434
  %add154.i.2435 = add nuw nsw i128 %add141.i.2430, %shr82.i.2406
  %add168.i.2440 = add nuw nsw i128 %add154.i.2435, %conv139.i.2429
  store i128 %add168.i.2440, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.2442 = mul nuw i128 %conv79.i.2404, %conv63.i.2397
  %shr178.i.2443 = lshr i128 %mul176.i.2442, 64
  %conv180.i.2444 = and i128 %mul176.i.2442, 18446744073709551615
  %mul189.i.2447 = mul nuw i128 %conv38.i.2385, %conv118.i.2421
  %shr191.i.2448 = lshr i128 %mul189.i.2447, 64
  %conv193.i.2449 = and i128 %mul189.i.2447, 18446744073709551615
  %add157.i.2436 = add nuw nsw i128 %shr150.i.2433, %shr164.i.2438
  %add171.i.2441 = add nuw nsw i128 %add157.i.2436, %conv193.i.2449
  %add182.i.2445 = add nuw nsw i128 %add171.i.2441, %shr137.i.2428
  %add195.i.2450 = add nuw nsw i128 %add182.i.2445, %conv180.i.2444
  store i128 %add195.i.2450, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.2451 = add nuw nsw i128 %shr178.i.2443, %shr191.i.2448
  %mul203.i.2452 = mul nuw i128 %conv79.i.2404, %conv118.i.2421
  %shr205.i.2453 = lshr i128 %mul203.i.2452, 64
  %conv207.i.2454 = and i128 %mul203.i.2452, 18446744073709551615
  %add209.i.2455 = add nuw nsw i128 %add198.i.2451, %conv207.i.2454
  store i128 %add209.i.2455, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.2453, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.2203 = add nuw nsw i128 %conv5.i.2368, 1267650600228229401427983728624
  %add3.i.2205 = or i128 %add31.i.2382, 1267650600228229401496703205376
  %add6.i.2208 = add nuw nsw i128 %add72.i.2401, 1267650600228229401427983728656
  %add9.i.2211 = add i128 %add127.i.2425, 1267650600228229401427983728656
  %shl.i.i.2215 = shl nuw nsw i128 %add195.i.2450, 32
  %add.i.i.2216 = add i128 %shl.i.i.2215, %add168.i.2440
  %sub7.i.i.2220 = sub nsw i128 %add195.i.2450, %shr205.i.2453
  %shl13.i.i.2223 = shl i128 %add168.i.2440, 32
  %shl28.i.i.2231 = shl nuw nsw i128 %add209.i.2455, 32
  %shl32.i.i.2233 = shl nuw nsw i128 %add209.i.2455, 33
  %add9.i.i.2221 = sub i128 %add3.i.2205, %shl13.i.i.2223
  %sub15.i.i.2224 = add i128 %add9.i.i.2221, %shl32.i.i.2233
  %add34.i.i.2234 = add i128 %sub15.i.i.2224, %sub7.i.i.2220
  %mul.i.i.2235 = shl nuw nsw i128 %add209.i.2455, 1
  %shl46.i.i.2240 = shl nuw nsw i128 %shr205.i.2453, 32
  %add3.i.i.2217 = sub nsw i128 %add.i.2203, %add209.i.2455
  %sub26.i.i.2230 = add i128 %add3.i.i.2217, %add.i.i.2216
  %sub30.i.i.2232 = sub i128 %sub26.i.i.2230, %shl28.i.i.2231
  %sub44.i.i.2239 = sub i128 %sub30.i.i.2232, %shr205.i.2453
  %sub48.i.i.2241 = sub i128 %sub44.i.i.2239, %shl46.i.i.2240
  %shl50.i.i.2242 = shl nuw nsw i128 %shr205.i.2453, 33
  %sub11.i.i.2222 = sub nsw i128 %add6.i.2208, %shl.i.i.2215
  %sub23.i.i.2228 = add i128 %sub11.i.i.2222, %mul.i.i.2235
  %add37.i.i.2236 = sub i128 %sub23.i.i.2228, %sub7.i.i.2220
  %add52.i.i.2243 = add i128 %add37.i.i.2236, %shl50.i.i.2242
  %mul54.i.i.2244 = mul nuw nsw i128 %shr205.i.2453, 3
  %sub.i.i.2218 = add i128 %add9.i.2211, %shl13.i.i.2223
  %add19.i.i.2226 = sub i128 %sub.i.i.2218, %add.i.i.2216
  %sub41.i.i.2238 = sub i128 %add19.i.i.2226, %shl28.i.i.2231
  %add56.i.i.2245 = add i128 %sub41.i.i.2238, %mul54.i.i.2244
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load i128, i128* %x1, align 16, !tbaa !2
  %arrayidx2.i.2197 = getelementptr inbounds i128, i128* %x1, i64 1
  %48 = load i128, i128* %arrayidx2.i.2197, align 16, !tbaa !2
  %arrayidx4.i.2199 = getelementptr inbounds i128, i128* %x1, i64 2
  %49 = load i128, i128* %arrayidx4.i.2199, align 16, !tbaa !2
  %arrayidx6.i.2201 = getelementptr inbounds i128, i128* %x1, i64 3
  %50 = load i128, i128* %arrayidx6.i.2201, align 16, !tbaa !2
  %arraydecay51 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 0
  %51 = load i128, i128* %z1, align 16, !tbaa !2
  %52 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %arrayidx3.i.2192 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 1
  %53 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %arrayidx5.i.2194 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 2
  %54 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %arrayidx7.i.2196 = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp5, i64 0, i64 3
  %mul.i.2184 = shl i128 %51, 1
  store i128 %mul.i.2184, i128* %arraydecay51, align 16, !tbaa !2
  %mul3.i.2186 = shl i128 %52, 1
  store i128 %mul3.i.2186, i128* %arrayidx3.i.2192, align 16, !tbaa !2
  %mul6.i.2188 = shl i128 %53, 1
  store i128 %mul6.i.2188, i128* %arrayidx5.i.2194, align 16, !tbaa !2
  %mul9.i.2190 = shl i128 %54, 1
  store i128 %mul9.i.2190, i128* %arrayidx7.i.2196, align 16, !tbaa !2
  %55 = load i128, i128* %y1, align 16, !tbaa !2
  %arrayidx2.i.2178 = getelementptr inbounds i128, i128* %y1, i64 1
  %56 = load i128, i128* %arrayidx2.i.2178, align 16, !tbaa !2
  %arrayidx4.i.2180 = getelementptr inbounds i128, i128* %y1, i64 2
  %57 = load i128, i128* %arrayidx4.i.2180, align 16, !tbaa !2
  %arrayidx6.i.2182 = getelementptr inbounds i128, i128* %y1, i64 3
  %58 = load i128, i128* %arrayidx6.i.2182, align 16, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx18.i.i.1787.pre-phi = phi i128* [ %arrayidx3.i.2192, %if.else ], [ %arrayidx3.i.2734, %if.then ]
  %arrayidx6.i.i.1781.pre-phi = phi i128* [ %arrayidx5.i.2194, %if.else ], [ %arrayidx5.i.2736, %if.then ]
  %arrayidx.i.i.1779.pre-phi = phi i128* [ %arrayidx7.i.2196, %if.else ], [ %arrayidx7.i.2738, %if.then ]
  %arraydecay67.pre-phi = phi i128* [ %arraydecay51, %if.else ], [ %arraydecay32, %if.then ]
  %59 = phi i128 [ %50, %if.else ], [ %add56.i.i.2781, %if.then ]
  %sub23.i.i.27643507 = phi i128 [ %49, %if.else ], [ %add52.i.i.2779, %if.then ]
  %ftmp3.sroa.16.16.3506 = phi i128 [ %48, %if.else ], [ %add34.i.i.2770, %if.then ]
  %add3.i.i.27533505 = phi i128 [ %47, %if.else ], [ %sub48.i.i.2777, %if.then ]
  %60 = phi i128 [ %58, %if.else ], [ %add56.i.i.2245, %if.then ]
  %sub23.i.i.22283504 = phi i128 [ %57, %if.else ], [ %add52.i.i.2243, %if.then ]
  %sub15.i.i.22243503 = phi i128 [ %56, %if.else ], [ %add34.i.i.2234, %if.then ]
  %add3.i.i.22173502 = phi i128 [ %55, %if.else ], [ %sub48.i.i.2241, %if.then ]
  %61 = load i64, i64* %x2, align 8, !tbaa !16
  %conv.i.2085 = zext i64 %61 to i128
  %conv2.i.2086 = and i128 %sub70.i.3131, 18446744073709551615
  %mul.i.2087 = mul nuw i128 %conv.i.2085, %conv2.i.2086
  %shr.i.2088 = lshr i128 %mul.i.2087, 64
  %conv5.i.2089 = and i128 %mul.i.2087, 18446744073709551615
  store i128 %conv5.i.2089, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.2092 = and i128 %add84.i.3139, 18446744073709551615
  %mul13.i.2093 = mul nuw i128 %conv.i.2085, %conv12.i.2092
  %shr15.i.2094 = lshr i128 %mul13.i.2093, 64
  %conv17.i.2095 = and i128 %mul13.i.2093, 18446744073709551615
  %add.i.2096 = add nuw nsw i128 %conv17.i.2095, %shr.i.2088
  %arrayidx21.i.2098 = getelementptr inbounds i64, i64* %x2, i64 1
  %62 = load i64, i64* %arrayidx21.i.2098, align 8, !tbaa !16
  %conv22.i.2099 = zext i64 %62 to i128
  %mul25.i.2100 = mul nuw i128 %conv22.i.2099, %conv2.i.2086
  %shr27.i.2101 = lshr i128 %mul25.i.2100, 64
  %conv29.i.2102 = and i128 %mul25.i.2100, 18446744073709551615
  %add31.i.2103 = add nuw nsw i128 %add.i.2096, %conv29.i.2102
  store i128 %add31.i.2103, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.2106 = and i128 %add94.i.3142, 18446744073709551615
  %mul39.i.2107 = mul nuw i128 %conv.i.2085, %conv38.i.2106
  %shr41.i.2108 = lshr i128 %mul39.i.2107, 64
  %conv43.i.2109 = and i128 %mul39.i.2107, 18446744073709551615
  %mul52.i.2112 = mul nuw i128 %conv22.i.2099, %conv12.i.2092
  %shr54.i.2113 = lshr i128 %mul52.i.2112, 64
  %conv56.i.2114 = and i128 %mul52.i.2112, 18446744073709551615
  %arrayidx62.i.2117 = getelementptr inbounds i64, i64* %x2, i64 2
  %63 = load i64, i64* %arrayidx62.i.2117, align 8, !tbaa !16
  %conv63.i.2118 = zext i64 %63 to i128
  %mul66.i.2119 = mul nuw i128 %conv63.i.2118, %conv2.i.2086
  %shr68.i.2120 = lshr i128 %mul66.i.2119, 64
  %conv70.i.2121 = and i128 %mul66.i.2119, 18446744073709551615
  %add34.i.2104 = add nuw nsw i128 %conv43.i.2109, %shr15.i.2094
  %add45.i.2110 = add nuw nsw i128 %add34.i.2104, %shr27.i.2101
  %add58.i.2115 = add nuw nsw i128 %add45.i.2110, %conv56.i.2114
  %add72.i.2122 = add nuw nsw i128 %add58.i.2115, %conv70.i.2121
  store i128 %add72.i.2122, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.2125 = and i128 %add104.i.3145, 18446744073709551615
  %mul80.i.2126 = mul nuw i128 %conv.i.2085, %conv79.i.2125
  %shr82.i.2127 = lshr i128 %mul80.i.2126, 64
  %conv84.i.2128 = and i128 %mul80.i.2126, 18446744073709551615
  %mul93.i.2131 = mul nuw i128 %conv22.i.2099, %conv38.i.2106
  %shr95.i.2132 = lshr i128 %mul93.i.2131, 64
  %conv97.i.2133 = and i128 %mul93.i.2131, 18446744073709551615
  %add102.i.2135 = add nuw nsw i128 %shr95.i.2132, %shr82.i.2127
  %mul107.i.2136 = mul nuw i128 %conv63.i.2118, %conv12.i.2092
  %shr109.i.2137 = lshr i128 %mul107.i.2136, 64
  %conv111.i.2138 = and i128 %mul107.i.2136, 18446744073709551615
  %arrayidx117.i.2141 = getelementptr inbounds i64, i64* %x2, i64 3
  %64 = load i64, i64* %arrayidx117.i.2141, align 8, !tbaa !16
  %conv118.i.2142 = zext i64 %64 to i128
  %mul121.i.2143 = mul nuw i128 %conv118.i.2142, %conv2.i.2086
  %shr123.i.2144 = lshr i128 %mul121.i.2143, 64
  %conv125.i.2145 = and i128 %mul121.i.2143, 18446744073709551615
  %add61.i.2116 = add nuw nsw i128 %conv84.i.2128, %shr41.i.2108
  %add75.i.2123 = add nuw nsw i128 %add61.i.2116, %shr54.i.2113
  %add86.i.2129 = add nuw nsw i128 %add75.i.2123, %conv97.i.2133
  %add99.i.2134 = add nuw nsw i128 %add86.i.2129, %shr68.i.2120
  %add113.i.2139 = add nuw nsw i128 %add99.i.2134, %conv111.i.2138
  %add127.i.2146 = add nuw nsw i128 %add113.i.2139, %conv125.i.2145
  store i128 %add127.i.2146, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.2148 = mul nuw i128 %conv22.i.2099, %conv79.i.2125
  %shr137.i.2149 = lshr i128 %mul135.i.2148, 64
  %conv139.i.2150 = and i128 %mul135.i.2148, 18446744073709551615
  %mul148.i.2153 = mul nuw i128 %conv63.i.2118, %conv38.i.2106
  %shr150.i.2154 = lshr i128 %mul148.i.2153, 64
  %conv152.i.2155 = and i128 %mul148.i.2153, 18446744073709551615
  %add157.i.2157 = add nuw nsw i128 %shr150.i.2154, %shr137.i.2149
  %mul162.i.2158 = mul nuw i128 %conv118.i.2142, %conv12.i.2092
  %shr164.i.2159 = lshr i128 %mul162.i.2158, 64
  %conv166.i.2160 = and i128 %mul162.i.2158, 18446744073709551615
  %add116.i.2140 = add nuw nsw i128 %add102.i.2135, %conv139.i.2150
  %add130.i.2147 = add nuw nsw i128 %add116.i.2140, %shr109.i.2137
  %add141.i.2151 = add nuw nsw i128 %add130.i.2147, %conv152.i.2155
  %add154.i.2156 = add nuw nsw i128 %add141.i.2151, %shr123.i.2144
  %add168.i.2161 = add nuw nsw i128 %add154.i.2156, %conv166.i.2160
  store i128 %add168.i.2161, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.2163 = mul nuw i128 %conv63.i.2118, %conv79.i.2125
  %shr178.i.2164 = lshr i128 %mul176.i.2163, 64
  %conv180.i.2165 = and i128 %mul176.i.2163, 18446744073709551615
  %mul189.i.2168 = mul nuw i128 %conv118.i.2142, %conv38.i.2106
  %shr191.i.2169 = lshr i128 %mul189.i.2168, 64
  %conv193.i.2170 = and i128 %mul189.i.2168, 18446744073709551615
  %add171.i.2162 = add nuw nsw i128 %add157.i.2157, %conv180.i.2165
  %add182.i.2166 = add nuw nsw i128 %add171.i.2162, %shr164.i.2159
  %add195.i.2171 = add nuw nsw i128 %add182.i.2166, %conv193.i.2170
  store i128 %add195.i.2171, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.2172 = add nuw nsw i128 %shr191.i.2169, %shr178.i.2164
  %mul203.i.2173 = mul nuw i128 %conv118.i.2142, %conv79.i.2125
  %shr205.i.2174 = lshr i128 %mul203.i.2173, 64
  %conv207.i.2175 = and i128 %mul203.i.2173, 18446744073709551615
  %add209.i.2176 = add nuw nsw i128 %add198.i.2172, %conv207.i.2175
  store i128 %add209.i.2176, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.2174, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %shl.i.i.2054 = shl nuw nsw i128 %add195.i.2171, 32
  %add.i.i.2055 = add i128 %shl.i.i.2054, %add168.i.2161
  %sub7.i.i.2059 = sub nsw i128 %add195.i.2171, %shr205.i.2174
  %shl13.i.i.2062 = shl i128 %add168.i.2161, 32
  %shl28.i.i.2070 = shl nuw nsw i128 %add209.i.2176, 32
  %shl32.i.i.2072 = shl nuw nsw i128 %add209.i.2176, 33
  %mul.i.i.2074 = shl nuw nsw i128 %add209.i.2176, 1
  %shl46.i.i.2079 = shl nuw nsw i128 %shr205.i.2174, 32
  %shl50.i.i.2081 = shl nuw nsw i128 %shr205.i.2174, 33
  %mul54.i.i.2083 = mul nuw nsw i128 %shr205.i.2174, 3
  %add3.i.i.2056 = sub i128 163526927429441592784209900992496, %add3.i.i.27533505
  %sub26.i.i.2069 = add i128 %add3.i.i.2056, %conv5.i.2089
  %sub30.i.i.2071 = sub i128 %sub26.i.i.2069, %shr205.i.2174
  %sub44.i.i.2078 = sub i128 %sub30.i.i.2071, %shl46.i.i.2079
  %sub48.i.i.2080 = sub i128 %sub44.i.i.2078, %add209.i.2176
  %add.i.2028 = add i128 %sub48.i.i.2080, %add.i.i.2055
  %sub.i.2035 = sub i128 %add.i.2028, %shl28.i.i.2070
  %add9.i.i.2060 = sub i128 163526927429441592793074713493504, %ftmp3.sroa.16.16.3506
  %sub15.i.i.2063 = add i128 %add9.i.i.2060, %add31.i.2103
  %add34.i.i.2073 = sub i128 %sub15.i.i.2063, %shl13.i.i.2062
  %add2.i.2030 = add i128 %add34.i.i.2073, %sub7.i.i.2059
  %sub11.i.2037 = add i128 %add2.i.2030, %shl32.i.i.2072
  %sub11.i.i.2061 = sub i128 163526927429441592784209900996624, %sub23.i.i.27643507
  %sub23.i.i.2067 = add i128 %sub11.i.i.2061, %add72.i.2122
  %add37.i.i.2075 = add i128 %sub23.i.i.2067, %shl50.i.i.2081
  %add52.i.i.2082 = sub i128 %add37.i.i.2075, %sub7.i.i.2059
  %add4.i.2032 = sub i128 %add52.i.i.2082, %shl.i.i.2054
  %sub14.i.2039 = add i128 %add4.i.2032, %mul.i.i.2074
  %sub.i.i.2057 = sub i128 163526927429441592784209900996624, %59
  %add19.i.i.2065 = add i128 %sub.i.i.2057, %add127.i.2146
  %sub41.i.i.2077 = add i128 %add19.i.i.2065, %mul54.i.i.2083
  %add56.i.i.2084 = add i128 %sub41.i.i.2077, %shl13.i.i.2062
  %add6.i.2034 = sub i128 %add56.i.i.2084, %add.i.i.2055
  %sub17.i.2041 = sub i128 %add6.i.2034, %shl28.i.i.2070
  %add.i.1972 = add i128 %sub17.i.2041, 18446744069414584320
  %shr.i.1974 = lshr i128 %sub14.i.2039, 64
  %add8.i.1975 = add i128 %add.i.1972, %shr.i.1974
  %conv12.i.1976 = and i128 %sub14.i.2039, 18446744073709551615
  %add13.i.1977 = add nuw nsw i128 %conv12.i.1976, 18446673704965373952
  %add16.i.1978 = add i128 %sub.i.2035, 18446744073709551615
  %add19.i.1980 = add i128 %sub11.i.2037, 1298074214633706907132628377272319
  %shr22.i.1981 = lshr i128 %add8.i.1975, 64
  %conv23.i.1982 = trunc i128 %shr22.i.1981 to i64
  %conv26.i.1983 = and i128 %add8.i.1975, 18446744073709551615
  %sub.i.1984 = sub nsw i128 %conv26.i.1983, %shr22.i.1981
  %shl.i.1985 = shl nuw nsw i128 %shr22.i.1981, 32
  %add32.i.1986 = add nsw i128 %sub.i.1984, %shl.i.1985
  %shr34.i.1987 = lshr i128 %add32.i.1986, 64
  %conv35.i.1988 = trunc i128 %shr34.i.1987 to i64
  %add36.i.1989 = add i64 %conv35.i.1988, %conv23.i.1982
  %conv39.i.1990 = and i128 %add32.i.1986, 18446744073709551615
  %sub43.i.1991 = sub nsw i128 %conv39.i.1990, %shr34.i.1987
  %shl45.i.1992 = shl nuw nsw i128 %shr34.i.1987, 32
  %add47.i.1993 = add nsw i128 %sub43.i.1991, %shl45.i.1992
  %conv48.i.1994 = zext i64 %add36.i.1989 to i128
  %add50.i.1995 = add i128 %add16.i.1978, %conv48.i.1994
  %shl52.i.1996 = shl nuw nsw i128 %conv48.i.1994, 32
  %sub54.i.1997 = sub i128 %add19.i.1980, %shl52.i.1996
  %shr56.i.1998 = lshr i128 %add47.i.1993, 64
  %conv57.i.1999 = trunc i128 %shr56.i.1998 to i64
  %sub58.i.2000 = sub i64 0, %conv57.i.1999
  %conv60.i.2001 = trunc i128 %add47.i.1993 to i64
  %and.i.2002 = and i64 %conv60.i.2001, 9223372036854775807
  %neg.i.2003 = sub nsw i64 9223372032559808512, %and.i.2002
  %sub62177.i.2004 = and i64 %neg.i.2003, %conv60.i.2001
  %and66.i.2005 = ashr i64 %sub62177.i.2004, 63
  %or.i.2006 = or i64 %and66.i.2005, %sub58.i.2000
  %conv68.i.2007 = zext i64 %or.i.2006 to i128
  %sub70.i.2008 = sub i128 %add50.i.1995, %conv68.i.2007
  %and71.i.2009 = and i64 %or.i.2006, 4294967295
  %conv72.i.2010 = zext i64 %and71.i.2009 to i128
  %sub74.i.2011 = sub i128 %sub54.i.1997, %conv72.i.2010
  %and75.i.2012 = and i64 %or.i.2006, -4294967295
  %conv76.i.2013 = zext i64 %and75.i.2012 to i128
  %sub78.i.2014 = sub nsw i128 %add47.i.1993, %conv76.i.2013
  %shr80.i.2015 = lshr i128 %sub70.i.2008, 64
  %add84.i.2016 = add i128 %sub74.i.2011, %shr80.i.2015
  %conv86.i.2017 = trunc i128 %sub70.i.2008 to i64
  %shr90.i.2018 = lshr i128 %add84.i.2016, 64
  %add94.i.2019 = add nuw nsw i128 %add13.i.1977, %shr90.i.2018
  %conv96.i.2020 = trunc i128 %add84.i.2016 to i64
  %shr100.i.2021 = lshr i128 %add94.i.2019, 64
  %add104.i.2022 = add nsw i128 %shr100.i.2021, %sub78.i.2014
  %conv106.i.2023 = trunc i128 %add94.i.2019 to i64
  %conv119.i.2026 = trunc i128 %add104.i.2022 to i64
  %or.i.19303511 = or i128 %add84.i.2016, %sub70.i.2008
  %or3.i.19323512 = or i128 %or.i.19303511, %add94.i.2019
  %or5.i.19343513 = or i128 %or3.i.19323512, %add104.i.2022
  %or5.i.1934 = trunc i128 %or5.i.19343513 to i64
  %dec.i.1935 = add i64 %or5.i.1934, -1
  %shl.i.1936 = shl i64 %dec.i.1935, 32
  %and.i.1937 = and i64 %shl.i.1936, %dec.i.1935
  %shl6.i.1938 = shl i64 %and.i.1937, 16
  %and7.i.1939 = and i64 %shl6.i.1938, %and.i.1937
  %shl8.i.1940 = shl i64 %and7.i.1939, 8
  %and9.i.1941 = and i64 %shl8.i.1940, %and7.i.1939
  %shl10.i.1942 = shl i64 %and9.i.1941, 4
  %and11.i.1943 = and i64 %shl10.i.1942, %and9.i.1941
  %shl12.i.1944 = shl i64 %and11.i.1943, 2
  %and13.i.1945 = and i64 %shl12.i.1944, %and11.i.1943
  %shl14.i.1946 = shl i64 %and13.i.1945, 1
  %and15.i.1947 = and i64 %shl14.i.1946, %and13.i.1945
  %xor.i.1948 = xor i64 %conv86.i.2017, -1
  %xor18.i.1949 = xor i64 %conv96.i.2020, 4294967295
  %or19.i.1950 = or i64 %xor18.i.1949, %xor.i.1948
  %or22.i.1951 = or i64 %or19.i.1950, %conv106.i.2023
  %xor24.i.1952 = xor i64 %conv119.i.2026, -4294967295
  %or25.i.1953 = or i64 %or22.i.1951, %xor24.i.1952
  %dec26.i.1954 = add i64 %or25.i.1953, -1
  %shl27.i.1955 = shl i64 %dec26.i.1954, 32
  %and28.i.1956 = and i64 %shl27.i.1955, %dec26.i.1954
  %shl29.i.1957 = shl i64 %and28.i.1956, 16
  %and30.i.1958 = and i64 %shl29.i.1957, %and28.i.1956
  %shl31.i.1959 = shl i64 %and30.i.1958, 8
  %and32.i.1960 = and i64 %shl31.i.1959, %and30.i.1958
  %shl33.i.1961 = shl i64 %and32.i.1960, 4
  %and34.i.1962 = and i64 %shl33.i.1961, %and32.i.1960
  %shl35.i.1963 = shl i64 %and34.i.1962, 2
  %and36.i.1964 = and i64 %shl35.i.1963, %and34.i.1962
  %shl37.i.1965 = shl i64 %and36.i.1964, 1
  %and38.i.1966 = and i64 %shl37.i.1965, %and36.i.1964
  %sub86.i.1967 = or i64 %and38.i.1966, %and15.i.1947
  %or41.i.1968 = ashr i64 %sub86.i.1967, 63
  %coerce64.sroa.2.0.insert.ext = zext i64 %or41.i.1968 to i128
  %coerce64.sroa.2.0.insert.shift = shl nuw i128 %coerce64.sroa.2.0.insert.ext, 64
  %coerce64.sroa.0.0.insert.insert = or i128 %coerce64.sroa.2.0.insert.shift, %coerce64.sroa.2.0.insert.ext
  %65 = load i128, i128* %arrayidx.i.i.1779.pre-phi, align 16, !tbaa !2
  %add.i.i.1780 = add i128 %65, 18446744069414584320
  %66 = load i128, i128* %arrayidx6.i.i.1781.pre-phi, align 16, !tbaa !2
  %shr.i.i.1782 = lshr i128 %66, 64
  %add8.i.i.1783 = add i128 %add.i.i.1780, %shr.i.i.1782
  %conv12.i.i.1784 = and i128 %66, 18446744073709551615
  %add13.i.i.1785 = add nuw nsw i128 %conv12.i.i.1784, 18446673704965373952
  %67 = load i128, i128* %arraydecay67.pre-phi, align 16, !tbaa !2
  %add16.i.i.1786 = add i128 %67, 18446744073709551615
  %68 = load i128, i128* %arrayidx18.i.i.1787.pre-phi, align 16, !tbaa !2
  %add19.i.i.1788 = add i128 %68, 1298074214633706907132628377272319
  %shr22.i.i.1789 = lshr i128 %add8.i.i.1783, 64
  %conv23.i.i.1790 = trunc i128 %shr22.i.i.1789 to i64
  %conv26.i.i.1791 = and i128 %add8.i.i.1783, 18446744073709551615
  %sub.i.i.1792 = sub nsw i128 %conv26.i.i.1791, %shr22.i.i.1789
  %shl.i.i.1793 = shl nuw nsw i128 %shr22.i.i.1789, 32
  %add32.i.i.1794 = add nsw i128 %sub.i.i.1792, %shl.i.i.1793
  %shr34.i.i.1795 = lshr i128 %add32.i.i.1794, 64
  %conv35.i.i.1796 = trunc i128 %shr34.i.i.1795 to i64
  %add36.i.i.1797 = add i64 %conv35.i.i.1796, %conv23.i.i.1790
  %conv39.i.i.1798 = and i128 %add32.i.i.1794, 18446744073709551615
  %sub43.i.i.1799 = sub nsw i128 %conv39.i.i.1798, %shr34.i.i.1795
  %shl45.i.i.1800 = shl nuw nsw i128 %shr34.i.i.1795, 32
  %add47.i.i.1801 = add nsw i128 %sub43.i.i.1799, %shl45.i.i.1800
  %conv48.i.i.1802 = zext i64 %add36.i.i.1797 to i128
  %add50.i.i.1803 = add i128 %add16.i.i.1786, %conv48.i.i.1802
  %shl52.i.i.1804 = shl nuw nsw i128 %conv48.i.i.1802, 32
  %sub54.i.i.1805 = sub i128 %add19.i.i.1788, %shl52.i.i.1804
  %shr56.i.i.1806 = lshr i128 %add47.i.i.1801, 64
  %conv57.i.i.1807 = trunc i128 %shr56.i.i.1806 to i64
  %sub58.i.i.1808 = sub i64 0, %conv57.i.i.1807
  %conv60.i.i.1809 = trunc i128 %add47.i.i.1801 to i64
  %and.i.i.1810 = and i64 %conv60.i.i.1809, 9223372036854775807
  %neg.i.i.1811 = sub nsw i64 9223372032559808512, %and.i.i.1810
  %sub62177.i.i.1812 = and i64 %neg.i.i.1811, %conv60.i.i.1809
  %and66.i.i.1813 = ashr i64 %sub62177.i.i.1812, 63
  %or.i.i.1814 = or i64 %and66.i.i.1813, %sub58.i.i.1808
  %conv68.i.i.1815 = zext i64 %or.i.i.1814 to i128
  %sub70.i.i.1816 = sub i128 %add50.i.i.1803, %conv68.i.i.1815
  %and71.i.i.1817 = and i64 %or.i.i.1814, 4294967295
  %conv72.i.i.1818 = zext i64 %and71.i.i.1817 to i128
  %sub74.i.i.1819 = sub i128 %sub54.i.i.1805, %conv72.i.i.1818
  %and75.i.i.1820 = and i64 %or.i.i.1814, -4294967295
  %conv76.i.i.1821 = zext i64 %and75.i.i.1820 to i128
  %sub78.i.i.1822 = sub nsw i128 %add47.i.i.1801, %conv76.i.i.1821
  %shr80.i.i.1823 = lshr i128 %sub70.i.i.1816, 64
  %add84.i.i.1824 = add i128 %sub74.i.i.1819, %shr80.i.i.1823
  %shr90.i.i.1826 = lshr i128 %add84.i.i.1824, 64
  %add94.i.i.1827 = add nuw nsw i128 %add13.i.i.1785, %shr90.i.i.1826
  %shr100.i.i.1829 = lshr i128 %add94.i.i.1827, 64
  %add104.i.i.1830 = add nsw i128 %sub78.i.i.1822, %shr100.i.i.1829
  %conv.i.1836 = and i128 %sub70.i.2008, 18446744073709551615
  %conv2.i.1837 = and i128 %sub70.i.i.1816, 18446744073709551615
  %mul.i.1838 = mul nuw i128 %conv.i.1836, %conv2.i.1837
  %conv12.i.1843 = and i128 %add84.i.i.1824, 18446744073709551615
  %mul13.i.1844 = mul nuw i128 %conv.i.1836, %conv12.i.1843
  %conv22.i.1850 = and i128 %add84.i.2016, 18446744073709551615
  %mul25.i.1851 = mul nuw i128 %conv22.i.1850, %conv2.i.1837
  %conv38.i.1857 = and i128 %add94.i.i.1827, 18446744073709551615
  %mul39.i.1858 = mul nuw i128 %conv.i.1836, %conv38.i.1857
  %mul52.i.1863 = mul nuw i128 %conv22.i.1850, %conv12.i.1843
  %conv63.i.1869 = and i128 %add94.i.2019, 18446744073709551615
  %mul66.i.1870 = mul nuw i128 %conv63.i.1869, %conv2.i.1837
  %conv79.i.1876 = and i128 %add104.i.i.1830, 18446744073709551615
  %mul80.i.1877 = mul nuw i128 %conv79.i.1876, %conv.i.1836
  %shr82.i.1878 = lshr i128 %mul80.i.1877, 64
  %mul93.i.1882 = mul nuw i128 %conv22.i.1850, %conv38.i.1857
  %shr95.i.1883 = lshr i128 %mul93.i.1882, 64
  %add102.i.1886 = add nuw nsw i128 %shr95.i.1883, %shr82.i.1878
  %mul107.i.1887 = mul nuw i128 %conv63.i.1869, %conv12.i.1843
  %shr109.i.1888 = lshr i128 %mul107.i.1887, 64
  %conv118.i.1893 = and i128 %add104.i.2022, 18446744073709551615
  %mul121.i.1894 = mul nuw i128 %conv118.i.1893, %conv2.i.1837
  %shr123.i.1895 = lshr i128 %mul121.i.1894, 64
  %mul135.i.1899 = mul nuw i128 %conv22.i.1850, %conv79.i.1876
  %shr137.i.1900 = lshr i128 %mul135.i.1899, 64
  %conv139.i.1901 = and i128 %mul135.i.1899, 18446744073709551615
  %mul148.i.1904 = mul nuw i128 %conv63.i.1869, %conv38.i.1857
  %shr150.i.1905 = lshr i128 %mul148.i.1904, 64
  %conv152.i.1906 = and i128 %mul148.i.1904, 18446744073709551615
  %add157.i.1908 = add nuw nsw i128 %shr150.i.1905, %shr137.i.1900
  %mul162.i.1909 = mul nuw i128 %conv118.i.1893, %conv12.i.1843
  %shr164.i.1910 = lshr i128 %mul162.i.1909, 64
  %conv166.i.1911 = and i128 %mul162.i.1909, 18446744073709551615
  %add116.i.1891 = add nuw nsw i128 %add102.i.1886, %conv139.i.1901
  %add130.i.1898 = add nuw nsw i128 %add116.i.1891, %shr109.i.1888
  %add141.i.1902 = add nuw nsw i128 %add130.i.1898, %conv152.i.1906
  %add154.i.1907 = add nuw nsw i128 %add141.i.1902, %shr123.i.1895
  %add168.i.1912 = add nuw nsw i128 %add154.i.1907, %conv166.i.1911
  %mul176.i.1914 = mul nuw i128 %conv63.i.1869, %conv79.i.1876
  %shr178.i.1915 = lshr i128 %mul176.i.1914, 64
  %conv180.i.1916 = and i128 %mul176.i.1914, 18446744073709551615
  %mul189.i.1919 = mul nuw i128 %conv118.i.1893, %conv38.i.1857
  %shr191.i.1920 = lshr i128 %mul189.i.1919, 64
  %conv193.i.1921 = and i128 %mul189.i.1919, 18446744073709551615
  %add171.i.1913 = add nuw nsw i128 %add157.i.1908, %conv180.i.1916
  %add182.i.1917 = add nuw nsw i128 %add171.i.1913, %shr164.i.1910
  %add195.i.1922 = add nuw nsw i128 %add182.i.1917, %conv193.i.1921
  %add198.i.1923 = add nuw nsw i128 %shr191.i.1920, %shr178.i.1915
  %mul203.i.1924 = mul nuw i128 %conv118.i.1893, %conv79.i.1876
  %shr205.i.1925 = lshr i128 %mul203.i.1924, 64
  %conv207.i.1926 = and i128 %mul203.i.1924, 18446744073709551615
  %add209.i.1927 = add nuw nsw i128 %add198.i.1923, %conv207.i.1926
  %shl.i.i.1746 = shl nuw nsw i128 %add195.i.1922, 32
  %add.i.i.1747 = add i128 %shl.i.i.1746, %add168.i.1912
  %sub7.i.i.1751 = sub nsw i128 %add195.i.1922, %shr205.i.1925
  %shl13.i.i.1754 = shl i128 %add168.i.1912, 32
  %shl28.i.i.1762 = shl nuw nsw i128 %add209.i.1927, 32
  %mul.i.1643 = mul nuw i128 %conv2.i.2086, %conv.i.2660
  %shr.i.1644 = lshr i128 %mul.i.1643, 64
  %conv5.i.1645 = and i128 %mul.i.1643, 18446744073709551615
  store i128 %conv5.i.1645, i128* %arraydecay15, align 16, !tbaa !2
  %mul13.i.1649 = mul nuw i128 %conv2.i.2086, %conv12.i.2666
  %shr15.i.1650 = lshr i128 %mul13.i.1649, 64
  %conv17.i.1651 = and i128 %mul13.i.1649, 18446744073709551615
  %add.i.1652 = add nuw nsw i128 %conv17.i.1651, %shr.i.1644
  %mul25.i.1656 = mul nuw i128 %conv12.i.2092, %conv.i.2660
  %shr27.i.1657 = lshr i128 %mul25.i.1656, 64
  %conv29.i.1658 = and i128 %mul25.i.1656, 18446744073709551615
  %add31.i.1659 = add nuw nsw i128 %add.i.1652, %conv29.i.1658
  store i128 %add31.i.1659, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %mul39.i.1663 = mul nuw i128 %conv2.i.2086, %conv27.i.2674
  %shr41.i.1664 = lshr i128 %mul39.i.1663, 64
  %conv43.i.1665 = and i128 %mul39.i.1663, 18446744073709551615
  %mul52.i.1668 = mul nuw i128 %conv12.i.2092, %conv12.i.2666
  %shr54.i.1669 = lshr i128 %mul52.i.1668, 64
  %conv56.i.1670 = and i128 %mul52.i.1668, 18446744073709551615
  %mul66.i.1675 = mul nuw i128 %conv38.i.2106, %conv.i.2660
  %shr68.i.1676 = lshr i128 %mul66.i.1675, 64
  %conv70.i.1677 = and i128 %mul66.i.1675, 18446744073709551615
  %add34.i.1660 = add nuw nsw i128 %conv43.i.1665, %shr15.i.1650
  %add45.i.1666 = add nuw nsw i128 %add34.i.1660, %shr27.i.1657
  %add58.i.1671 = add nuw nsw i128 %add45.i.1666, %conv56.i.1670
  %add72.i.1678 = add nuw nsw i128 %add58.i.1671, %conv70.i.1677
  store i128 %add72.i.1678, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %mul80.i.1682 = mul nuw i128 %conv2.i.2086, %conv42.i.2682
  %shr82.i.1683 = lshr i128 %mul80.i.1682, 64
  %conv84.i.1684 = and i128 %mul80.i.1682, 18446744073709551615
  %mul93.i.1687 = mul nuw i128 %conv12.i.2092, %conv27.i.2674
  %shr95.i.1688 = lshr i128 %mul93.i.1687, 64
  %conv97.i.1689 = and i128 %mul93.i.1687, 18446744073709551615
  %add102.i.1691 = add nuw nsw i128 %shr95.i.1688, %shr82.i.1683
  %mul107.i.1692 = mul nuw i128 %conv38.i.2106, %conv12.i.2666
  %shr109.i.1693 = lshr i128 %mul107.i.1692, 64
  %conv111.i.1694 = and i128 %mul107.i.1692, 18446744073709551615
  %mul121.i.1699 = mul nuw i128 %conv79.i.2125, %conv.i.2660
  %shr123.i.1700 = lshr i128 %mul121.i.1699, 64
  %conv125.i.1701 = and i128 %mul121.i.1699, 18446744073709551615
  %add61.i.1672 = add nuw nsw i128 %conv84.i.1684, %shr41.i.1664
  %add75.i.1679 = add nuw nsw i128 %add61.i.1672, %shr54.i.1669
  %add86.i.1685 = add nuw nsw i128 %add75.i.1679, %conv97.i.1689
  %add99.i.1690 = add nuw nsw i128 %add86.i.1685, %shr68.i.1676
  %add113.i.1695 = add nuw nsw i128 %add99.i.1690, %conv111.i.1694
  %add127.i.1702 = add nuw nsw i128 %add113.i.1695, %conv125.i.1701
  store i128 %add127.i.1702, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.1704 = mul nuw i128 %conv12.i.2092, %conv42.i.2682
  %shr137.i.1705 = lshr i128 %mul135.i.1704, 64
  %conv139.i.1706 = and i128 %mul135.i.1704, 18446744073709551615
  %mul148.i.1709 = mul nuw i128 %conv38.i.2106, %conv27.i.2674
  %shr150.i.1710 = lshr i128 %mul148.i.1709, 64
  %conv152.i.1711 = and i128 %mul148.i.1709, 18446744073709551615
  %add157.i.1713 = add nuw nsw i128 %shr150.i.1710, %shr137.i.1705
  %mul162.i.1714 = mul nuw i128 %conv79.i.2125, %conv12.i.2666
  %shr164.i.1715 = lshr i128 %mul162.i.1714, 64
  %conv166.i.1716 = and i128 %mul162.i.1714, 18446744073709551615
  %add116.i.1696 = add nuw nsw i128 %add102.i.1691, %conv139.i.1706
  %add130.i.1703 = add nuw nsw i128 %add116.i.1696, %shr109.i.1693
  %add141.i.1707 = add nuw nsw i128 %add130.i.1703, %conv152.i.1711
  %add154.i.1712 = add nuw nsw i128 %add141.i.1707, %shr123.i.1700
  %add168.i.1717 = add nuw nsw i128 %add154.i.1712, %conv166.i.1716
  store i128 %add168.i.1717, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.1719 = mul nuw i128 %conv38.i.2106, %conv42.i.2682
  %shr178.i.1720 = lshr i128 %mul176.i.1719, 64
  %conv180.i.1721 = and i128 %mul176.i.1719, 18446744073709551615
  %mul189.i.1724 = mul nuw i128 %conv79.i.2125, %conv27.i.2674
  %shr191.i.1725 = lshr i128 %mul189.i.1724, 64
  %conv193.i.1726 = and i128 %mul189.i.1724, 18446744073709551615
  %add171.i.1718 = add nuw nsw i128 %add157.i.1713, %conv180.i.1721
  %add182.i.1722 = add nuw nsw i128 %add171.i.1718, %shr164.i.1715
  %add195.i.1727 = add nuw nsw i128 %add182.i.1722, %conv193.i.1726
  store i128 %add195.i.1727, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.1728 = add nuw nsw i128 %shr191.i.1725, %shr178.i.1720
  %mul203.i.1729 = mul nuw i128 %conv79.i.2125, %conv42.i.2682
  %shr205.i.1730 = lshr i128 %mul203.i.1729, 64
  %conv207.i.1731 = and i128 %mul203.i.1729, 18446744073709551615
  %add209.i.1732 = add nuw nsw i128 %add198.i.1728, %conv207.i.1731
  store i128 %add209.i.1732, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.1730, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.1598 = add nuw nsw i128 %conv5.i.1645, 1267650600228229401427983728624
  %add3.i.1600 = or i128 %add31.i.1659, 1267650600228229401496703205376
  %add6.i.1603 = add nuw nsw i128 %add72.i.1678, 1267650600228229401427983728656
  %add9.i.1606 = add i128 %add127.i.1702, 1267650600228229401427983728656
  %shl.i.i.1610 = shl nuw nsw i128 %add195.i.1727, 32
  %add.i.i.1611 = add i128 %shl.i.i.1610, %add168.i.1717
  %add3.i.i.1612 = add i128 %add.i.i.1611, %add.i.1598
  %sub.i.i.1613 = sub i128 %add9.i.1606, %add.i.i.1611
  %sub7.i.i.1615 = sub nsw i128 %add195.i.1727, %shr205.i.1730
  %add9.i.i.1616 = add nsw i128 %sub7.i.i.1615, %add3.i.1600
  %sub11.i.i.1617 = sub nsw i128 %add6.i.1603, %sub7.i.i.1615
  %shl13.i.i.1618 = shl i128 %add168.i.1717, 32
  %sub15.i.i.1619 = sub i128 %add9.i.i.1616, %shl13.i.i.1618
  %add19.i.i.1621 = add i128 %shl13.i.i.1618, %sub.i.i.1613
  %sub23.i.i.1623 = sub i128 %sub11.i.i.1617, %shl.i.i.1610
  %sub26.i.i.1625 = sub i128 %add3.i.i.1612, %add209.i.1732
  %shl28.i.i.1626 = shl nuw nsw i128 %add209.i.1732, 32
  %sub30.i.i.1627 = sub i128 %sub26.i.i.1625, %shl28.i.i.1626
  %shl32.i.i.1628 = shl nuw nsw i128 %add209.i.1732, 33
  %add34.i.i.1629 = add i128 %shl32.i.i.1628, %sub15.i.i.1619
  store i128 %add34.i.i.1629, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %mul.i.i.1630 = shl nuw nsw i128 %add209.i.1732, 1
  %add37.i.i.1631 = add i128 %mul.i.i.1630, %sub23.i.i.1623
  %sub41.i.i.1633 = sub i128 %add19.i.i.1621, %shl28.i.i.1626
  %sub44.i.i.1634 = sub i128 %sub30.i.i.1627, %shr205.i.1730
  %shl46.i.i.1635 = shl nuw nsw i128 %shr205.i.1730, 32
  %sub48.i.i.1636 = sub i128 %sub44.i.i.1634, %shl46.i.i.1635
  store i128 %sub48.i.i.1636, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.1637 = shl nuw nsw i128 %shr205.i.1730, 33
  %add52.i.i.1638 = add i128 %shl50.i.i.1637, %add37.i.i.1631
  store i128 %add52.i.i.1638, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %mul54.i.i.1639 = mul nuw nsw i128 %shr205.i.1730, 3
  %add56.i.i.1640 = add i128 %mul54.i.i.1639, %sub41.i.i.1633
  store i128 %add56.i.i.1640, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  %add.i.i.1449 = add i128 %add56.i.i.1640, 18446744069414584320
  %shr.i.i.1451 = lshr i128 %add52.i.i.1638, 64
  %add8.i.i.1452 = add i128 %add.i.i.1449, %shr.i.i.1451
  %conv12.i.i.1453 = and i128 %add52.i.i.1638, 18446744073709551615
  %add13.i.i.1454 = add nuw nsw i128 %conv12.i.i.1453, 18446673704965373952
  %add16.i.i.1455 = add i128 %sub48.i.i.1636, 18446744073709551615
  %add19.i.i.1457 = add i128 %add34.i.i.1629, 1298074214633706907132628377272319
  %shr22.i.i.1458 = lshr i128 %add8.i.i.1452, 64
  %conv23.i.i.1459 = trunc i128 %shr22.i.i.1458 to i64
  %conv26.i.i.1460 = and i128 %add8.i.i.1452, 18446744073709551615
  %sub.i.i.1461 = sub nsw i128 %conv26.i.i.1460, %shr22.i.i.1458
  %shl.i.i.1462 = shl nuw nsw i128 %shr22.i.i.1458, 32
  %add32.i.i.1463 = add nsw i128 %sub.i.i.1461, %shl.i.i.1462
  %shr34.i.i.1464 = lshr i128 %add32.i.i.1463, 64
  %conv35.i.i.1465 = trunc i128 %shr34.i.i.1464 to i64
  %add36.i.i.1466 = add i64 %conv35.i.i.1465, %conv23.i.i.1459
  %conv39.i.i.1467 = and i128 %add32.i.i.1463, 18446744073709551615
  %sub43.i.i.1468 = sub nsw i128 %conv39.i.i.1467, %shr34.i.i.1464
  %shl45.i.i.1469 = shl nuw nsw i128 %shr34.i.i.1464, 32
  %add47.i.i.1470 = add nsw i128 %sub43.i.i.1468, %shl45.i.i.1469
  %conv48.i.i.1471 = zext i64 %add36.i.i.1466 to i128
  %add50.i.i.1472 = add i128 %add16.i.i.1455, %conv48.i.i.1471
  %shl52.i.i.1473 = shl nuw nsw i128 %conv48.i.i.1471, 32
  %sub54.i.i.1474 = sub i128 %add19.i.i.1457, %shl52.i.i.1473
  %shr56.i.i.1475 = lshr i128 %add47.i.i.1470, 64
  %conv57.i.i.1476 = trunc i128 %shr56.i.i.1475 to i64
  %sub58.i.i.1477 = sub i64 0, %conv57.i.i.1476
  %conv60.i.i.1478 = trunc i128 %add47.i.i.1470 to i64
  %and.i.i.1479 = and i64 %conv60.i.i.1478, 9223372036854775807
  %neg.i.i.1480 = sub nsw i64 9223372032559808512, %and.i.i.1479
  %sub62177.i.i.1481 = and i64 %neg.i.i.1480, %conv60.i.i.1478
  %and66.i.i.1482 = ashr i64 %sub62177.i.i.1481, 63
  %or.i.i.1483 = or i64 %and66.i.i.1482, %sub58.i.i.1477
  %conv68.i.i.1484 = zext i64 %or.i.i.1483 to i128
  %sub70.i.i.1485 = sub i128 %add50.i.i.1472, %conv68.i.i.1484
  %and71.i.i.1486 = and i64 %or.i.i.1483, 4294967295
  %conv72.i.i.1487 = zext i64 %and71.i.i.1486 to i128
  %sub74.i.i.1488 = sub i128 %sub54.i.i.1474, %conv72.i.i.1487
  %and75.i.i.1489 = and i64 %or.i.i.1483, -4294967295
  %conv76.i.i.1490 = zext i64 %and75.i.i.1489 to i128
  %sub78.i.i.1491 = sub nsw i128 %add47.i.i.1470, %conv76.i.i.1490
  %shr80.i.i.1492 = lshr i128 %sub70.i.i.1485, 64
  %add84.i.i.1493 = add i128 %sub74.i.i.1488, %shr80.i.i.1492
  %shr90.i.i.1495 = lshr i128 %add84.i.i.1493, 64
  %add94.i.i.1496 = add nuw nsw i128 %add13.i.i.1454, %shr90.i.i.1495
  %shr100.i.i.1498 = lshr i128 %add94.i.i.1496, 64
  %add104.i.i.1499 = add nsw i128 %sub78.i.i.1491, %shr100.i.i.1498
  %69 = load i64, i64* %y2, align 8, !tbaa !16
  %conv.i.1505 = zext i64 %69 to i128
  %conv2.i.1506 = and i128 %sub70.i.i.1485, 18446744073709551615
  %mul.i.1507 = mul nuw i128 %conv2.i.1506, %conv.i.1505
  %shr.i.1508 = lshr i128 %mul.i.1507, 64
  %conv5.i.1509 = and i128 %mul.i.1507, 18446744073709551615
  store i128 %conv5.i.1509, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.1512 = and i128 %add84.i.i.1493, 18446744073709551615
  %mul13.i.1513 = mul nuw i128 %conv12.i.1512, %conv.i.1505
  %shr15.i.1514 = lshr i128 %mul13.i.1513, 64
  %conv17.i.1515 = and i128 %mul13.i.1513, 18446744073709551615
  %arrayidx21.i.1518 = getelementptr inbounds i64, i64* %y2, i64 1
  %70 = load i64, i64* %arrayidx21.i.1518, align 8, !tbaa !16
  %conv22.i.1519 = zext i64 %70 to i128
  %mul25.i.1520 = mul nuw i128 %conv2.i.1506, %conv22.i.1519
  %shr27.i.1521 = lshr i128 %mul25.i.1520, 64
  %conv29.i.1522 = and i128 %mul25.i.1520, 18446744073709551615
  %add.i.1516 = add nuw nsw i128 %conv29.i.1522, %shr.i.1508
  %add31.i.1523 = add nuw nsw i128 %add.i.1516, %conv17.i.1515
  store i128 %add31.i.1523, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.1526 = and i128 %add94.i.i.1496, 18446744073709551615
  %mul39.i.1527 = mul nuw i128 %conv38.i.1526, %conv.i.1505
  %shr41.i.1528 = lshr i128 %mul39.i.1527, 64
  %conv43.i.1529 = and i128 %mul39.i.1527, 18446744073709551615
  %mul52.i.1532 = mul nuw i128 %conv12.i.1512, %conv22.i.1519
  %shr54.i.1533 = lshr i128 %mul52.i.1532, 64
  %conv56.i.1534 = and i128 %mul52.i.1532, 18446744073709551615
  %arrayidx62.i.1537 = getelementptr inbounds i64, i64* %y2, i64 2
  %71 = load i64, i64* %arrayidx62.i.1537, align 8, !tbaa !16
  %conv63.i.1538 = zext i64 %71 to i128
  %mul66.i.1539 = mul nuw i128 %conv2.i.1506, %conv63.i.1538
  %shr68.i.1540 = lshr i128 %mul66.i.1539, 64
  %conv70.i.1541 = and i128 %mul66.i.1539, 18446744073709551615
  %add34.i.1524 = add nuw nsw i128 %conv70.i.1541, %shr27.i.1521
  %add45.i.1530 = add nuw nsw i128 %add34.i.1524, %shr15.i.1514
  %add58.i.1535 = add nuw nsw i128 %add45.i.1530, %conv56.i.1534
  %add72.i.1542 = add nuw nsw i128 %add58.i.1535, %conv43.i.1529
  store i128 %add72.i.1542, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.1545 = and i128 %add104.i.i.1499, 18446744073709551615
  %mul80.i.1546 = mul nuw i128 %conv79.i.1545, %conv.i.1505
  %shr82.i.1547 = lshr i128 %mul80.i.1546, 64
  %conv84.i.1548 = and i128 %mul80.i.1546, 18446744073709551615
  %mul93.i.1551 = mul nuw i128 %conv38.i.1526, %conv22.i.1519
  %shr95.i.1552 = lshr i128 %mul93.i.1551, 64
  %conv97.i.1553 = and i128 %mul93.i.1551, 18446744073709551615
  %mul107.i.1556 = mul nuw i128 %conv12.i.1512, %conv63.i.1538
  %shr109.i.1557 = lshr i128 %mul107.i.1556, 64
  %conv111.i.1558 = and i128 %mul107.i.1556, 18446744073709551615
  %arrayidx117.i.1561 = getelementptr inbounds i64, i64* %y2, i64 3
  %72 = load i64, i64* %arrayidx117.i.1561, align 8, !tbaa !16
  %conv118.i.1562 = zext i64 %72 to i128
  %mul121.i.1563 = mul nuw i128 %conv2.i.1506, %conv118.i.1562
  %shr123.i.1564 = lshr i128 %mul121.i.1563, 64
  %conv125.i.1565 = and i128 %mul121.i.1563, 18446744073709551615
  %add61.i.1536 = add nuw nsw i128 %conv125.i.1565, %shr68.i.1540
  %add75.i.1543 = add nuw nsw i128 %add61.i.1536, %shr54.i.1533
  %add86.i.1549 = add nuw nsw i128 %add75.i.1543, %conv111.i.1558
  %add99.i.1554 = add nuw nsw i128 %add86.i.1549, %shr41.i.1528
  %add113.i.1559 = add nuw nsw i128 %add99.i.1554, %conv97.i.1553
  %add127.i.1566 = add nuw nsw i128 %add113.i.1559, %conv84.i.1548
  store i128 %add127.i.1566, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.1568 = mul nuw i128 %conv79.i.1545, %conv22.i.1519
  %shr137.i.1569 = lshr i128 %mul135.i.1568, 64
  %conv139.i.1570 = and i128 %mul135.i.1568, 18446744073709551615
  %mul148.i.1573 = mul nuw i128 %conv38.i.1526, %conv63.i.1538
  %shr150.i.1574 = lshr i128 %mul148.i.1573, 64
  %conv152.i.1575 = and i128 %mul148.i.1573, 18446744073709551615
  %mul162.i.1578 = mul nuw i128 %conv12.i.1512, %conv118.i.1562
  %shr164.i.1579 = lshr i128 %mul162.i.1578, 64
  %conv166.i.1580 = and i128 %mul162.i.1578, 18446744073709551615
  %add102.i.1555 = add nuw nsw i128 %shr109.i.1557, %shr123.i.1564
  %add116.i.1560 = add nuw nsw i128 %add102.i.1555, %conv166.i.1580
  %add130.i.1567 = add nuw nsw i128 %add116.i.1560, %shr95.i.1552
  %add141.i.1571 = add nuw nsw i128 %add130.i.1567, %conv152.i.1575
  %add154.i.1576 = add nuw nsw i128 %add141.i.1571, %shr82.i.1547
  %add168.i.1581 = add nuw nsw i128 %add154.i.1576, %conv139.i.1570
  store i128 %add168.i.1581, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.1583 = mul nuw i128 %conv79.i.1545, %conv63.i.1538
  %shr178.i.1584 = lshr i128 %mul176.i.1583, 64
  %conv180.i.1585 = and i128 %mul176.i.1583, 18446744073709551615
  %mul189.i.1588 = mul nuw i128 %conv38.i.1526, %conv118.i.1562
  %shr191.i.1589 = lshr i128 %mul189.i.1588, 64
  %conv193.i.1590 = and i128 %mul189.i.1588, 18446744073709551615
  %add157.i.1577 = add nuw nsw i128 %shr150.i.1574, %shr164.i.1579
  %add171.i.1582 = add nuw nsw i128 %add157.i.1577, %conv193.i.1590
  %add182.i.1586 = add nuw nsw i128 %add171.i.1582, %shr137.i.1569
  %add195.i.1591 = add nuw nsw i128 %add182.i.1586, %conv180.i.1585
  store i128 %add195.i.1591, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.1592 = add nuw nsw i128 %shr178.i.1584, %shr191.i.1589
  %mul203.i.1593 = mul nuw i128 %conv79.i.1545, %conv118.i.1562
  %shr205.i.1594 = lshr i128 %mul203.i.1593, 64
  %conv207.i.1595 = and i128 %mul203.i.1593, 18446744073709551615
  %add209.i.1596 = add nuw nsw i128 %add198.i.1592, %conv207.i.1595
  store i128 %add209.i.1596, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.1594, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.1403 = add nuw nsw i128 %conv5.i.1509, 1267650600228229401427983728624
  %add3.i.1405 = or i128 %add31.i.1523, 1267650600228229401496703205376
  %add6.i.1408 = add nuw nsw i128 %add72.i.1542, 1267650600228229401427983728656
  %add9.i.1411 = add i128 %add127.i.1566, 1267650600228229401427983728656
  %shl.i.i.1415 = shl nuw nsw i128 %add195.i.1591, 32
  %add.i.i.1416 = add i128 %shl.i.i.1415, %add168.i.1581
  %add3.i.i.1417 = add i128 %add.i.i.1416, %add.i.1403
  %sub.i.i.1418 = sub i128 %add9.i.1411, %add.i.i.1416
  %sub7.i.i.1420 = sub nsw i128 %add195.i.1591, %shr205.i.1594
  %add9.i.i.1421 = add nsw i128 %sub7.i.i.1420, %add3.i.1405
  %sub11.i.i.1422 = sub nsw i128 %add6.i.1408, %sub7.i.i.1420
  %shl13.i.i.1423 = shl i128 %add168.i.1581, 32
  %sub15.i.i.1424 = sub i128 %add9.i.i.1421, %shl13.i.i.1423
  %add19.i.i.1426 = add i128 %shl13.i.i.1423, %sub.i.i.1418
  %sub23.i.i.1428 = sub i128 %sub11.i.i.1422, %shl.i.i.1415
  %sub26.i.i.1430 = sub i128 %add3.i.i.1417, %add209.i.1596
  %shl28.i.i.1431 = shl nuw nsw i128 %add209.i.1596, 32
  %sub30.i.i.1432 = sub i128 %sub26.i.i.1430, %shl28.i.i.1431
  %shl32.i.i.1433 = shl nuw nsw i128 %add209.i.1596, 33
  %add34.i.i.1434 = add i128 %shl32.i.i.1433, %sub15.i.i.1424
  %mul.i.i.1435 = shl nuw nsw i128 %add209.i.1596, 1
  %add37.i.i.1436 = add i128 %mul.i.i.1435, %sub23.i.i.1428
  %sub41.i.i.1438 = sub i128 %add19.i.i.1426, %shl28.i.i.1431
  %sub44.i.i.1439 = sub i128 %sub30.i.i.1432, %shr205.i.1594
  %shl46.i.i.1440 = shl nuw nsw i128 %shr205.i.1594, 32
  %sub48.i.i.1441 = sub i128 %sub44.i.i.1439, %shl46.i.i.1440
  %shl50.i.i.1442 = shl nuw nsw i128 %shr205.i.1594, 33
  %add52.i.i.1443 = add i128 %shl50.i.i.1442, %add37.i.i.1436
  %mul54.i.i.1444 = mul nuw nsw i128 %shr205.i.1594, 3
  %add56.i.i.1445 = add i128 %mul54.i.i.1444, %sub41.i.i.1438
  %add.i.1389 = add i128 %sub48.i.i.1441, 162259276829213363382781917263872
  %add2.i.1391 = add i128 %add34.i.i.1434, 162259276829213363391578010288128
  %add4.i.1393 = add i128 %add52.i.i.1443, 162259276829213363382781917267968
  %add6.i.1395 = add i128 %add56.i.i.1445, 162259276829213363382781917267968
  %sub.i.1396 = sub i128 %add.i.1389, %add3.i.i.22173502
  %sub11.i.1398 = sub i128 %add2.i.1391, %sub15.i.i.22243503
  %sub14.i.1400 = sub i128 %add4.i.1393, %sub23.i.i.22283504
  %sub17.i.1402 = sub i128 %add6.i.1395, %60
  %mul.i.1382 = shl i128 %sub.i.1396, 1
  store i128 %mul.i.1382, i128* %arraydecay67.pre-phi, align 16, !tbaa !2
  %mul3.i.1384 = shl i128 %sub11.i.1398, 1
  store i128 %mul3.i.1384, i128* %arrayidx18.i.i.1787.pre-phi, align 16, !tbaa !2
  %mul6.i.1386 = shl i128 %sub14.i.1400, 1
  store i128 %mul6.i.1386, i128* %arrayidx6.i.i.1781.pre-phi, align 16, !tbaa !2
  %mul9.i.1388 = shl i128 %sub17.i.1402, 1
  store i128 %mul9.i.1388, i128* %arrayidx.i.i.1779.pre-phi, align 16, !tbaa !2
  %add.i.1326 = add i128 %mul9.i.1388, 18446744069414584320
  %73 = lshr i128 %sub14.i.1400, 63
  %shr.i.1328 = and i128 %73, 18446744073709551615
  %add8.i.1329 = add i128 %add.i.1326, %shr.i.1328
  %conv12.i.1330 = and i128 %mul6.i.1386, 18446744073709551614
  %add13.i.1331 = add nuw nsw i128 %conv12.i.1330, 18446673704965373952
  %add16.i.1332 = add i128 %mul.i.1382, 18446744073709551615
  %add19.i.1334 = add i128 %mul3.i.1384, 1298074214633706907132628377272319
  %shr22.i.1335 = lshr i128 %add8.i.1329, 64
  %conv23.i.1336 = trunc i128 %shr22.i.1335 to i64
  %fold = add i128 %add.i.1326, %73
  %conv26.i.1337 = and i128 %fold, 18446744073709551615
  %sub.i.1338 = sub nsw i128 %conv26.i.1337, %shr22.i.1335
  %shl.i.1339 = shl nuw nsw i128 %shr22.i.1335, 32
  %add32.i.1340 = add nsw i128 %sub.i.1338, %shl.i.1339
  %shr34.i.1341 = lshr i128 %add32.i.1340, 64
  %conv35.i.1342 = trunc i128 %shr34.i.1341 to i64
  %add36.i.1343 = add i64 %conv35.i.1342, %conv23.i.1336
  %conv39.i.1344 = and i128 %add32.i.1340, 18446744073709551615
  %sub43.i.1345 = sub nsw i128 %conv39.i.1344, %shr34.i.1341
  %shl45.i.1346 = shl nuw nsw i128 %shr34.i.1341, 32
  %add47.i.1347 = add nsw i128 %sub43.i.1345, %shl45.i.1346
  %conv48.i.1348 = zext i64 %add36.i.1343 to i128
  %add50.i.1349 = add i128 %add16.i.1332, %conv48.i.1348
  %shl52.i.1350 = shl nuw nsw i128 %conv48.i.1348, 32
  %sub54.i.1351 = sub i128 %add19.i.1334, %shl52.i.1350
  %shr56.i.1352 = lshr i128 %add47.i.1347, 64
  %conv57.i.1353 = trunc i128 %shr56.i.1352 to i64
  %sub58.i.1354 = sub i64 0, %conv57.i.1353
  %conv60.i.1355 = trunc i128 %add47.i.1347 to i64
  %and.i.1356 = and i64 %conv60.i.1355, 9223372036854775807
  %neg.i.1357 = sub nsw i64 9223372032559808512, %and.i.1356
  %sub62177.i.1358 = and i64 %neg.i.1357, %conv60.i.1355
  %and66.i.1359 = ashr i64 %sub62177.i.1358, 63
  %or.i.1360 = or i64 %and66.i.1359, %sub58.i.1354
  %conv68.i.1361 = zext i64 %or.i.1360 to i128
  %sub70.i.1362 = sub i128 %add50.i.1349, %conv68.i.1361
  %and71.i.1363 = and i64 %or.i.1360, 4294967295
  %conv72.i.1364 = zext i64 %and71.i.1363 to i128
  %sub74.i.1365 = sub i128 %sub54.i.1351, %conv72.i.1364
  %and75.i.1366 = and i64 %or.i.1360, -4294967295
  %conv76.i.1367 = zext i64 %and75.i.1366 to i128
  %sub78.i.1368 = sub nsw i128 %add47.i.1347, %conv76.i.1367
  %shr80.i.1369 = lshr i128 %sub70.i.1362, 64
  %add84.i.1370 = add i128 %sub74.i.1365, %shr80.i.1369
  %conv86.i.1371 = trunc i128 %sub70.i.1362 to i64
  %shr90.i.1372 = lshr i128 %add84.i.1370, 64
  %add94.i.1373 = add nuw nsw i128 %add13.i.1331, %shr90.i.1372
  %conv96.i.1374 = trunc i128 %add84.i.1370 to i64
  %shr100.i.1375 = lshr i128 %add94.i.1373, 64
  %add104.i.1376 = add nsw i128 %shr100.i.1375, %sub78.i.1368
  %conv106.i.1377 = trunc i128 %add94.i.1373 to i64
  %conv119.i.1380 = trunc i128 %add104.i.1376 to i64
  %or.i.12843514 = or i128 %add84.i.1370, %sub70.i.1362
  %or3.i.12863515 = or i128 %or.i.12843514, %add94.i.1373
  %or5.i.12883516 = or i128 %or3.i.12863515, %add104.i.1376
  %or5.i.1288 = trunc i128 %or5.i.12883516 to i64
  %dec.i.1289 = add i64 %or5.i.1288, -1
  %shl.i.1290 = shl i64 %dec.i.1289, 32
  %and.i.1291 = and i64 %shl.i.1290, %dec.i.1289
  %shl6.i.1292 = shl i64 %and.i.1291, 16
  %and7.i.1293 = and i64 %shl6.i.1292, %and.i.1291
  %shl8.i.1294 = shl i64 %and7.i.1293, 8
  %and9.i.1295 = and i64 %shl8.i.1294, %and7.i.1293
  %shl10.i.1296 = shl i64 %and9.i.1295, 4
  %and11.i.1297 = and i64 %shl10.i.1296, %and9.i.1295
  %shl12.i.1298 = shl i64 %and11.i.1297, 2
  %and13.i.1299 = and i64 %shl12.i.1298, %and11.i.1297
  %shl14.i.1300 = shl i64 %and13.i.1299, 1
  %and15.i.1301 = and i64 %shl14.i.1300, %and13.i.1299
  %xor.i.1302 = xor i64 %conv86.i.1371, -1
  %xor18.i.1303 = xor i64 %conv96.i.1374, 4294967295
  %or19.i.1304 = or i64 %xor18.i.1303, %xor.i.1302
  %or22.i.1305 = or i64 %or19.i.1304, %conv106.i.1377
  %xor24.i.1306 = xor i64 %conv119.i.1380, -4294967295
  %or25.i.1307 = or i64 %or22.i.1305, %xor24.i.1306
  %dec26.i.1308 = add i64 %or25.i.1307, -1
  %shl27.i.1309 = shl i64 %dec26.i.1308, 32
  %and28.i.1310 = and i64 %shl27.i.1309, %dec26.i.1308
  %shl29.i.1311 = shl i64 %and28.i.1310, 16
  %and30.i.1312 = and i64 %shl29.i.1311, %and28.i.1310
  %shl31.i.1313 = shl i64 %and30.i.1312, 8
  %and32.i.1314 = and i64 %shl31.i.1313, %and30.i.1312
  %shl33.i.1315 = shl i64 %and32.i.1314, 4
  %and34.i.1316 = and i64 %shl33.i.1315, %and32.i.1314
  %shl35.i.1317 = shl i64 %and34.i.1316, 2
  %and36.i.1318 = and i64 %shl35.i.1317, %and34.i.1316
  %shl37.i.1319 = shl i64 %and36.i.1318, 1
  %and38.i.1320 = and i64 %shl37.i.1319, %and36.i.1318
  %sub86.i.1321 = or i64 %and38.i.1320, %and15.i.1301
  %or41.i.1322 = ashr i64 %sub86.i.1321, 63
  %coerce86.sroa.2.0.insert.ext = zext i64 %or41.i.1322 to i128
  %coerce86.sroa.2.0.insert.shift = shl nuw i128 %coerce86.sroa.2.0.insert.ext, 64
  %coerce86.sroa.0.0.insert.insert = or i128 %coerce86.sroa.2.0.insert.shift, %coerce86.sroa.2.0.insert.ext
  %notlhs = icmp eq i128 %coerce64.sroa.0.0.insert.insert, 0
  %notrhs = icmp eq i128 %coerce86.sroa.0.0.insert.insert, 0
  %or.cond.not = or i1 %notlhs, %notrhs
  %74 = or i128 %coerce.sroa.0.0.insert.insert, %coerce14.sroa.0.0.insert.insert
  %75 = icmp ne i128 %74, 0
  %76 = or i1 %75, %or.cond.not
  br i1 %76, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end
  tail call fastcc void @point_double(i128* %x3, i128* %y3, i128* %z3, i128* %x1, i128* %y1, i128* %z1)
  br label %cleanup

if.end.94:                                        ; preds = %if.end
  %conv84.i.1879 = and i128 %mul80.i.1877, 18446744073709551615
  %shr41.i.1859 = lshr i128 %mul39.i.1858, 64
  %add61.i.1867 = add nuw nsw i128 %conv84.i.1879, %shr41.i.1859
  %shr54.i.1864 = lshr i128 %mul52.i.1863, 64
  %add75.i.1874 = add nuw nsw i128 %add61.i.1867, %shr54.i.1864
  %conv97.i.1884 = and i128 %mul93.i.1882, 18446744073709551615
  %add86.i.1880 = add nuw nsw i128 %add75.i.1874, %conv97.i.1884
  %shr68.i.1871 = lshr i128 %mul66.i.1870, 64
  %add99.i.1885 = add nuw nsw i128 %add86.i.1880, %shr68.i.1871
  %conv111.i.1889 = and i128 %mul107.i.1887, 18446744073709551615
  %add113.i.1890 = add nuw nsw i128 %add99.i.1885, %conv111.i.1889
  %conv125.i.1896 = and i128 %mul121.i.1894, 18446744073709551615
  %add127.i.1897 = add nuw nsw i128 %add113.i.1890, %conv125.i.1896
  %conv43.i.1860 = and i128 %mul39.i.1858, 18446744073709551615
  %shr15.i.1845 = lshr i128 %mul13.i.1844, 64
  %add34.i.1855 = add nuw nsw i128 %conv43.i.1860, %shr15.i.1845
  %shr27.i.1852 = lshr i128 %mul25.i.1851, 64
  %add45.i.1861 = add nuw nsw i128 %add34.i.1855, %shr27.i.1852
  %conv56.i.1865 = and i128 %mul52.i.1863, 18446744073709551615
  %add58.i.1866 = add nuw nsw i128 %add45.i.1861, %conv56.i.1865
  %conv70.i.1872 = and i128 %mul66.i.1870, 18446744073709551615
  %add72.i.1873 = add nuw nsw i128 %add58.i.1866, %conv70.i.1872
  %conv17.i.1846 = and i128 %mul13.i.1844, 18446744073709551615
  %shr.i.1839 = lshr i128 %mul.i.1838, 64
  %add.i.1847 = add nuw nsw i128 %conv17.i.1846, %shr.i.1839
  %conv29.i.1853 = and i128 %mul25.i.1851, 18446744073709551615
  %add31.i.1854 = add nuw nsw i128 %add.i.1847, %conv29.i.1853
  %conv5.i.1840 = and i128 %mul.i.1838, 18446744073709551615
  %mul54.i.i.1775 = mul nuw nsw i128 %shr205.i.1925, 3
  %add9.i.1742 = add i128 %add127.i.1897, 1267650600228229401427983728656
  %sub.i.i.1749 = add i128 %add9.i.1742, %shl13.i.i.1754
  %add19.i.i.1757 = sub i128 %sub.i.i.1749, %add.i.i.1747
  %sub41.i.i.1769 = sub i128 %add19.i.i.1757, %shl28.i.i.1762
  %add56.i.i.1776 = add i128 %sub41.i.i.1769, %mul54.i.i.1775
  %shl50.i.i.1773 = shl nuw nsw i128 %shr205.i.1925, 33
  %mul.i.i.1766 = shl nuw nsw i128 %add209.i.1927, 1
  %add6.i.1739 = add nuw nsw i128 %add72.i.1873, 1267650600228229401427983728656
  %sub11.i.i.1753 = sub nsw i128 %add6.i.1739, %shl.i.i.1746
  %sub23.i.i.1759 = add i128 %sub11.i.i.1753, %mul.i.i.1766
  %add37.i.i.1767 = sub i128 %sub23.i.i.1759, %sub7.i.i.1751
  %add52.i.i.1774 = add i128 %add37.i.i.1767, %shl50.i.i.1773
  %add.i.1734 = add nuw nsw i128 %conv5.i.1840, 1267650600228229401427983728624
  %shl46.i.i.1771 = shl nuw nsw i128 %shr205.i.1925, 32
  %add3.i.i.1748 = sub nsw i128 %add.i.1734, %add209.i.1927
  %sub26.i.i.1761 = add i128 %add3.i.i.1748, %add.i.i.1747
  %sub30.i.i.1763 = sub i128 %sub26.i.i.1761, %shl28.i.i.1762
  %sub44.i.i.1770 = sub i128 %sub30.i.i.1763, %shr205.i.1925
  %sub48.i.i.1772 = sub i128 %sub44.i.i.1770, %shl46.i.i.1771
  %shl32.i.i.1764 = shl nuw nsw i128 %add209.i.1927, 33
  %add3.i.1736 = or i128 %add31.i.1854, 1267650600228229401496703205376
  %add9.i.i.1752 = sub i128 %add3.i.1736, %shl13.i.i.1754
  %sub15.i.i.1755 = add i128 %add9.i.i.1752, %shl32.i.i.1764
  %add34.i.i.1765 = add i128 %sub15.i.i.1755, %sub7.i.i.1751
  %mul.i.1228 = shl i128 %sub.i.2035, 1
  store i128 %mul.i.1228, i128* %arraydecay17, align 16, !tbaa !2
  %mul3.i.1230 = shl i128 %sub11.i.2037, 1
  store i128 %mul3.i.1230, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %mul6.i.1232 = shl i128 %sub14.i.2039, 1
  store i128 %mul6.i.1232, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %mul9.i.1234 = shl i128 %sub17.i.2041, 1
  store i128 %mul9.i.1234, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay15, i128* %arraydecay17)
  %77 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.1178 = add i128 %77, 1267650600228229401427983728624
  %78 = load i128, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %add3.i.1180 = add i128 %78, 1267650600228229401496703205376
  %79 = load i128, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add6.i.1183 = add i128 %79, 1267650600228229401427983728656
  %80 = load i128, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %add9.i.1186 = add i128 %80, 1267650600228229401427983728656
  %81 = load i128, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %82 = load i128, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %shl.i.i.1190 = shl i128 %82, 32
  %add.i.i.1191 = add i128 %shl.i.i.1190, %81
  %add3.i.i.1192 = add i128 %add.i.i.1191, %add.i.1178
  %sub.i.i.1193 = sub i128 %add9.i.1186, %add.i.i.1191
  %83 = load i128, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %sub7.i.i.1195 = sub i128 %82, %83
  %add9.i.i.1196 = add i128 %sub7.i.i.1195, %add3.i.1180
  %sub11.i.i.1197 = sub i128 %add6.i.1183, %sub7.i.i.1195
  %shl13.i.i.1198 = shl i128 %81, 32
  %sub15.i.i.1199 = sub i128 %add9.i.i.1196, %shl13.i.i.1198
  %add19.i.i.1201 = add i128 %shl13.i.i.1198, %sub.i.i.1193
  %sub23.i.i.1203 = sub i128 %sub11.i.i.1197, %shl.i.i.1190
  %84 = load i128, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  %sub26.i.i.1205 = sub i128 %add3.i.i.1192, %84
  %shl28.i.i.1206 = shl i128 %84, 32
  %sub30.i.i.1207 = sub i128 %sub26.i.i.1205, %shl28.i.i.1206
  %shl32.i.i.1208 = shl i128 %84, 33
  %add34.i.i.1209 = add i128 %shl32.i.i.1208, %sub15.i.i.1199
  store i128 %add34.i.i.1209, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %mul.i.i.1210 = shl i128 %84, 1
  %add37.i.i.1211 = add i128 %mul.i.i.1210, %sub23.i.i.1203
  %sub41.i.i.1213 = sub i128 %add19.i.i.1201, %shl28.i.i.1206
  %sub44.i.i.1214 = sub i128 %sub30.i.i.1207, %83
  %shl46.i.i.1215 = shl i128 %83, 32
  %sub48.i.i.1216 = sub i128 %sub44.i.i.1214, %shl46.i.i.1215
  store i128 %sub48.i.i.1216, i128* %arraydecay17, align 16, !tbaa !2
  %shl50.i.i.1217 = shl i128 %83, 33
  %add52.i.i.1218 = add i128 %shl50.i.i.1217, %add37.i.i.1211
  store i128 %add52.i.i.1218, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %mul54.i.i.1219 = mul i128 %83, 3
  %add56.i.i.1220 = add i128 %mul54.i.i.1219, %sub41.i.i.1213
  store i128 %add56.i.i.1220, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  %add.i.1029 = add i128 %add56.i.i.1220, 18446744069414584320
  %shr.i.1031 = lshr i128 %add52.i.i.1218, 64
  %add8.i.1032 = add i128 %add.i.1029, %shr.i.1031
  %conv12.i.1033 = and i128 %add52.i.i.1218, 18446744073709551615
  %add13.i.1034 = add nuw nsw i128 %conv12.i.1033, 18446673704965373952
  %add16.i.1035 = add i128 %sub48.i.i.1216, 18446744073709551615
  %add19.i.1037 = add i128 %add34.i.i.1209, 1298074214633706907132628377272319
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
  %add50.i.1052 = add i128 %add16.i.1035, %conv48.i.1051
  %shl52.i.1053 = shl nuw nsw i128 %conv48.i.1051, 32
  %sub54.i.1054 = sub i128 %add19.i.1037, %shl52.i.1053
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
  %sub70.i.1065 = sub i128 %add50.i.1052, %conv68.i.1064
  %and71.i.1066 = and i64 %or.i.1063, 4294967295
  %conv72.i.1067 = zext i64 %and71.i.1066 to i128
  %sub74.i.1068 = sub i128 %sub54.i.1054, %conv72.i.1067
  %and75.i.1069 = and i64 %or.i.1063, -4294967295
  %conv76.i.1070 = zext i64 %and75.i.1069 to i128
  %sub78.i.1071 = sub nsw i128 %add47.i.1050, %conv76.i.1070
  %shr80.i.1072 = lshr i128 %sub70.i.1065, 64
  %add84.i.1073 = add i128 %sub74.i.1068, %shr80.i.1072
  %shr90.i.1075 = lshr i128 %add84.i.1073, 64
  %add94.i.1076 = add nuw nsw i128 %add13.i.1034, %shr90.i.1075
  %shr100.i.1078 = lshr i128 %add94.i.1076, 64
  %add104.i.1079 = add nsw i128 %sub78.i.1071, %shr100.i.1078
  %conv2.i.1086 = and i128 %sub70.i.1065, 18446744073709551615
  %mul.i.1087 = mul nuw i128 %conv2.i.1086, %conv.i.1836
  %shr.i.1088 = lshr i128 %mul.i.1087, 64
  %conv5.i.1089 = and i128 %mul.i.1087, 18446744073709551615
  store i128 %conv5.i.1089, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.1092 = and i128 %add84.i.1073, 18446744073709551615
  %mul13.i.1093 = mul nuw i128 %conv12.i.1092, %conv.i.1836
  %shr15.i.1094 = lshr i128 %mul13.i.1093, 64
  %conv17.i.1095 = and i128 %mul13.i.1093, 18446744073709551615
  %mul25.i.1100 = mul nuw i128 %conv2.i.1086, %conv22.i.1850
  %shr27.i.1101 = lshr i128 %mul25.i.1100, 64
  %conv29.i.1102 = and i128 %mul25.i.1100, 18446744073709551615
  %add.i.1096 = add nuw nsw i128 %conv29.i.1102, %shr.i.1088
  %add31.i.1103 = add nuw nsw i128 %add.i.1096, %conv17.i.1095
  store i128 %add31.i.1103, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.1106 = and i128 %add94.i.1076, 18446744073709551615
  %mul39.i.1107 = mul nuw i128 %conv38.i.1106, %conv.i.1836
  %shr41.i.1108 = lshr i128 %mul39.i.1107, 64
  %conv43.i.1109 = and i128 %mul39.i.1107, 18446744073709551615
  %mul52.i.1112 = mul nuw i128 %conv12.i.1092, %conv22.i.1850
  %shr54.i.1113 = lshr i128 %mul52.i.1112, 64
  %conv56.i.1114 = and i128 %mul52.i.1112, 18446744073709551615
  %mul66.i.1119 = mul nuw i128 %conv2.i.1086, %conv63.i.1869
  %shr68.i.1120 = lshr i128 %mul66.i.1119, 64
  %conv70.i.1121 = and i128 %mul66.i.1119, 18446744073709551615
  %add34.i.1104 = add nuw nsw i128 %conv70.i.1121, %shr27.i.1101
  %add45.i.1110 = add nuw nsw i128 %add34.i.1104, %shr15.i.1094
  %add58.i.1115 = add nuw nsw i128 %add45.i.1110, %conv56.i.1114
  %add72.i.1122 = add nuw nsw i128 %add58.i.1115, %conv43.i.1109
  store i128 %add72.i.1122, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.1125 = and i128 %add104.i.1079, 18446744073709551615
  %mul80.i.1126 = mul nuw i128 %conv79.i.1125, %conv.i.1836
  %shr82.i.1127 = lshr i128 %mul80.i.1126, 64
  %conv84.i.1128 = and i128 %mul80.i.1126, 18446744073709551615
  %mul93.i.1131 = mul nuw i128 %conv38.i.1106, %conv22.i.1850
  %shr95.i.1132 = lshr i128 %mul93.i.1131, 64
  %conv97.i.1133 = and i128 %mul93.i.1131, 18446744073709551615
  %mul107.i.1136 = mul nuw i128 %conv12.i.1092, %conv63.i.1869
  %shr109.i.1137 = lshr i128 %mul107.i.1136, 64
  %conv111.i.1138 = and i128 %mul107.i.1136, 18446744073709551615
  %mul121.i.1143 = mul nuw i128 %conv2.i.1086, %conv118.i.1893
  %shr123.i.1144 = lshr i128 %mul121.i.1143, 64
  %conv125.i.1145 = and i128 %mul121.i.1143, 18446744073709551615
  %add61.i.1116 = add nuw nsw i128 %conv125.i.1145, %shr68.i.1120
  %add75.i.1123 = add nuw nsw i128 %add61.i.1116, %shr54.i.1113
  %add86.i.1129 = add nuw nsw i128 %add75.i.1123, %conv111.i.1138
  %add99.i.1134 = add nuw nsw i128 %add86.i.1129, %shr41.i.1108
  %add113.i.1139 = add nuw nsw i128 %add99.i.1134, %conv97.i.1133
  %add127.i.1146 = add nuw nsw i128 %add113.i.1139, %conv84.i.1128
  store i128 %add127.i.1146, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.1148 = mul nuw i128 %conv79.i.1125, %conv22.i.1850
  %shr137.i.1149 = lshr i128 %mul135.i.1148, 64
  %conv139.i.1150 = and i128 %mul135.i.1148, 18446744073709551615
  %mul148.i.1153 = mul nuw i128 %conv38.i.1106, %conv63.i.1869
  %shr150.i.1154 = lshr i128 %mul148.i.1153, 64
  %conv152.i.1155 = and i128 %mul148.i.1153, 18446744073709551615
  %mul162.i.1158 = mul nuw i128 %conv12.i.1092, %conv118.i.1893
  %shr164.i.1159 = lshr i128 %mul162.i.1158, 64
  %conv166.i.1160 = and i128 %mul162.i.1158, 18446744073709551615
  %add102.i.1135 = add nuw nsw i128 %shr109.i.1137, %shr123.i.1144
  %add116.i.1140 = add nuw nsw i128 %add102.i.1135, %conv166.i.1160
  %add130.i.1147 = add nuw nsw i128 %add116.i.1140, %shr95.i.1132
  %add141.i.1151 = add nuw nsw i128 %add130.i.1147, %conv152.i.1155
  %add154.i.1156 = add nuw nsw i128 %add141.i.1151, %shr82.i.1127
  %add168.i.1161 = add nuw nsw i128 %add154.i.1156, %conv139.i.1150
  store i128 %add168.i.1161, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.1163 = mul nuw i128 %conv79.i.1125, %conv63.i.1869
  %shr178.i.1164 = lshr i128 %mul176.i.1163, 64
  %conv180.i.1165 = and i128 %mul176.i.1163, 18446744073709551615
  %mul189.i.1168 = mul nuw i128 %conv38.i.1106, %conv118.i.1893
  %shr191.i.1169 = lshr i128 %mul189.i.1168, 64
  %conv193.i.1170 = and i128 %mul189.i.1168, 18446744073709551615
  %add157.i.1157 = add nuw nsw i128 %shr150.i.1154, %shr164.i.1159
  %add171.i.1162 = add nuw nsw i128 %add157.i.1157, %conv193.i.1170
  %add182.i.1166 = add nuw nsw i128 %add171.i.1162, %shr137.i.1149
  %add195.i.1171 = add nuw nsw i128 %add182.i.1166, %conv180.i.1165
  store i128 %add195.i.1171, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.1172 = add nuw nsw i128 %shr178.i.1164, %shr191.i.1169
  %mul203.i.1173 = mul nuw i128 %conv79.i.1125, %conv118.i.1893
  %shr205.i.1174 = lshr i128 %mul203.i.1173, 64
  %conv207.i.1175 = and i128 %mul203.i.1173, 18446744073709551615
  %add209.i.1176 = add nuw nsw i128 %add198.i.1172, %conv207.i.1175
  store i128 %add209.i.1176, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.1174, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.924 = add nuw nsw i128 %conv5.i.1089, 1267650600228229401427983728624
  %add3.i.926 = or i128 %add31.i.1103, 1267650600228229401496703205376
  %add6.i.929 = add nuw nsw i128 %add72.i.1122, 1267650600228229401427983728656
  %add9.i.932 = add i128 %add127.i.1146, 1267650600228229401427983728656
  %shl.i.i.936 = shl nuw nsw i128 %add195.i.1171, 32
  %add.i.i.937 = add i128 %shl.i.i.936, %add168.i.1161
  %sub7.i.i.941 = sub nsw i128 %add195.i.1171, %shr205.i.1174
  %shl13.i.i.944 = shl i128 %add168.i.1161, 32
  %shl28.i.i.952 = shl nuw nsw i128 %add209.i.1176, 32
  %shl32.i.i.954 = shl nuw nsw i128 %add209.i.1176, 33
  %add9.i.i.942 = sub i128 %add3.i.926, %shl13.i.i.944
  %sub15.i.i.945 = add i128 %add9.i.i.942, %shl32.i.i.954
  %add34.i.i.955 = add i128 %sub15.i.i.945, %sub7.i.i.941
  %mul.i.i.956 = shl nuw nsw i128 %add209.i.1176, 1
  %shl46.i.i.961 = shl nuw nsw i128 %shr205.i.1174, 32
  %add3.i.i.938 = sub nsw i128 %add.i.924, %add209.i.1176
  %sub26.i.i.951 = add i128 %add3.i.i.938, %add.i.i.937
  %sub30.i.i.953 = sub i128 %sub26.i.i.951, %shl28.i.i.952
  %sub44.i.i.960 = sub i128 %sub30.i.i.953, %shr205.i.1174
  %sub48.i.i.962 = sub i128 %sub44.i.i.960, %shl46.i.i.961
  %shl50.i.i.963 = shl nuw nsw i128 %shr205.i.1174, 33
  %sub11.i.i.943 = sub nsw i128 %add6.i.929, %shl.i.i.936
  %sub23.i.i.949 = add i128 %sub11.i.i.943, %mul.i.i.956
  %add37.i.i.957 = sub i128 %sub23.i.i.949, %sub7.i.i.941
  %add52.i.i.964 = add i128 %add37.i.i.957, %shl50.i.i.963
  %mul54.i.i.965 = mul nuw nsw i128 %shr205.i.1174, 3
  %sub.i.i.939 = add i128 %add9.i.932, %shl13.i.i.944
  %add19.i.i.947 = sub i128 %sub.i.i.939, %add.i.i.937
  %sub41.i.i.959 = sub i128 %add19.i.i.947, %shl28.i.i.952
  %add56.i.i.966 = add i128 %sub41.i.i.959, %mul54.i.i.965
  %add.i.i.717 = add i128 %59, 18446744069414584320
  %shr.i.i.719 = lshr i128 %sub23.i.i.27643507, 64
  %add8.i.i.720 = add i128 %add.i.i.717, %shr.i.i.719
  %conv12.i.i.721 = and i128 %sub23.i.i.27643507, 18446744073709551615
  %add13.i.i.722 = add nuw nsw i128 %conv12.i.i.721, 18446673704965373952
  %add16.i.i.723 = add i128 %add3.i.i.27533505, 18446744073709551615
  %add19.i.i.725 = add i128 %ftmp3.sroa.16.16.3506, 1298074214633706907132628377272319
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
  %85 = load i128, i128* %arrayidx10.i.3160, align 16, !tbaa !2
  %add.i.775 = add i128 %85, 18446744069414584320
  %86 = load i128, i128* %arrayidx7.i.3157, align 16, !tbaa !2
  %shr.i.777 = lshr i128 %86, 64
  %add8.i.778 = add i128 %add.i.775, %shr.i.777
  %conv12.i.779 = and i128 %86, 18446744073709551615
  %add13.i.780 = add nuw nsw i128 %conv12.i.779, 18446673704965373952
  %87 = load i128, i128* %arraydecay17, align 16, !tbaa !2
  %add16.i.781 = add i128 %87, 18446744073709551615
  %88 = load i128, i128* %arrayidx4.i.3154, align 16, !tbaa !2
  %add19.i.783 = add i128 %88, 1298074214633706907132628377272319
  %shr22.i.784 = lshr i128 %add8.i.778, 64
  %conv23.i.785 = trunc i128 %shr22.i.784 to i64
  %conv26.i.786 = and i128 %add8.i.778, 18446744073709551615
  %sub.i.787 = sub nsw i128 %conv26.i.786, %shr22.i.784
  %shl.i.788 = shl nuw nsw i128 %shr22.i.784, 32
  %add32.i.789 = add nsw i128 %sub.i.787, %shl.i.788
  %shr34.i.790 = lshr i128 %add32.i.789, 64
  %conv35.i.791 = trunc i128 %shr34.i.790 to i64
  %add36.i.792 = add i64 %conv35.i.791, %conv23.i.785
  %conv39.i.793 = and i128 %add32.i.789, 18446744073709551615
  %sub43.i.794 = sub nsw i128 %conv39.i.793, %shr34.i.790
  %shl45.i.795 = shl nuw nsw i128 %shr34.i.790, 32
  %add47.i.796 = add nsw i128 %sub43.i.794, %shl45.i.795
  %conv48.i.797 = zext i64 %add36.i.792 to i128
  %add50.i.798 = add i128 %add16.i.781, %conv48.i.797
  %shl52.i.799 = shl nuw nsw i128 %conv48.i.797, 32
  %sub54.i.800 = sub i128 %add19.i.783, %shl52.i.799
  %shr56.i.801 = lshr i128 %add47.i.796, 64
  %conv57.i.802 = trunc i128 %shr56.i.801 to i64
  %sub58.i.803 = sub i64 0, %conv57.i.802
  %conv60.i.804 = trunc i128 %add47.i.796 to i64
  %and.i.805 = and i64 %conv60.i.804, 9223372036854775807
  %neg.i.806 = sub nsw i64 9223372032559808512, %and.i.805
  %sub62177.i.807 = and i64 %neg.i.806, %conv60.i.804
  %and66.i.808 = ashr i64 %sub62177.i.807, 63
  %or.i.809 = or i64 %and66.i.808, %sub58.i.803
  %conv68.i.810 = zext i64 %or.i.809 to i128
  %sub70.i.811 = sub i128 %add50.i.798, %conv68.i.810
  %and71.i.812 = and i64 %or.i.809, 4294967295
  %conv72.i.813 = zext i64 %and71.i.812 to i128
  %sub74.i.814 = sub i128 %sub54.i.800, %conv72.i.813
  %and75.i.815 = and i64 %or.i.809, -4294967295
  %conv76.i.816 = zext i64 %and75.i.815 to i128
  %sub78.i.817 = sub nsw i128 %add47.i.796, %conv76.i.816
  %shr80.i.818 = lshr i128 %sub70.i.811, 64
  %add84.i.819 = add i128 %sub74.i.814, %shr80.i.818
  %shr90.i.821 = lshr i128 %add84.i.819, 64
  %add94.i.822 = add nuw nsw i128 %add13.i.780, %shr90.i.821
  %shr100.i.824 = lshr i128 %add94.i.822, 64
  %add104.i.825 = add nsw i128 %sub78.i.817, %shr100.i.824
  %conv.i.831 = and i128 %sub70.i.i.753, 18446744073709551615
  %conv2.i.832 = and i128 %sub70.i.811, 18446744073709551615
  %mul.i.833 = mul nuw i128 %conv2.i.832, %conv.i.831
  %shr.i.834 = lshr i128 %mul.i.833, 64
  %conv5.i.835 = and i128 %mul.i.833, 18446744073709551615
  store i128 %conv5.i.835, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.838 = and i128 %add84.i.819, 18446744073709551615
  %mul13.i.839 = mul nuw i128 %conv12.i.838, %conv.i.831
  %shr15.i.840 = lshr i128 %mul13.i.839, 64
  %conv17.i.841 = and i128 %mul13.i.839, 18446744073709551615
  %conv22.i.845 = and i128 %add84.i.i.761, 18446744073709551615
  %mul25.i.846 = mul nuw i128 %conv2.i.832, %conv22.i.845
  %shr27.i.847 = lshr i128 %mul25.i.846, 64
  %conv29.i.848 = and i128 %mul25.i.846, 18446744073709551615
  %add.i.842 = add nuw nsw i128 %conv29.i.848, %shr.i.834
  %add31.i.849 = add nuw nsw i128 %add.i.842, %conv17.i.841
  store i128 %add31.i.849, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv38.i.852 = and i128 %add94.i.822, 18446744073709551615
  %mul39.i.853 = mul nuw i128 %conv38.i.852, %conv.i.831
  %shr41.i.854 = lshr i128 %mul39.i.853, 64
  %conv43.i.855 = and i128 %mul39.i.853, 18446744073709551615
  %mul52.i.858 = mul nuw i128 %conv12.i.838, %conv22.i.845
  %shr54.i.859 = lshr i128 %mul52.i.858, 64
  %conv56.i.860 = and i128 %mul52.i.858, 18446744073709551615
  %conv63.i.864 = and i128 %add94.i.i.764, 18446744073709551615
  %mul66.i.865 = mul nuw i128 %conv2.i.832, %conv63.i.864
  %shr68.i.866 = lshr i128 %mul66.i.865, 64
  %conv70.i.867 = and i128 %mul66.i.865, 18446744073709551615
  %add34.i.850 = add nuw nsw i128 %conv70.i.867, %shr27.i.847
  %add45.i.856 = add nuw nsw i128 %add34.i.850, %shr15.i.840
  %add58.i.861 = add nuw nsw i128 %add45.i.856, %conv56.i.860
  %add72.i.868 = add nuw nsw i128 %add58.i.861, %conv43.i.855
  store i128 %add72.i.868, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %conv79.i.871 = and i128 %add104.i.825, 18446744073709551615
  %mul80.i.872 = mul nuw i128 %conv79.i.871, %conv.i.831
  %shr82.i.873 = lshr i128 %mul80.i.872, 64
  %conv84.i.874 = and i128 %mul80.i.872, 18446744073709551615
  %mul93.i.877 = mul nuw i128 %conv38.i.852, %conv22.i.845
  %shr95.i.878 = lshr i128 %mul93.i.877, 64
  %conv97.i.879 = and i128 %mul93.i.877, 18446744073709551615
  %mul107.i.882 = mul nuw i128 %conv12.i.838, %conv63.i.864
  %shr109.i.883 = lshr i128 %mul107.i.882, 64
  %conv111.i.884 = and i128 %mul107.i.882, 18446744073709551615
  %conv118.i.888 = and i128 %add104.i.i.767, 18446744073709551615
  %mul121.i.889 = mul nuw i128 %conv2.i.832, %conv118.i.888
  %shr123.i.890 = lshr i128 %mul121.i.889, 64
  %conv125.i.891 = and i128 %mul121.i.889, 18446744073709551615
  %add61.i.862 = add nuw nsw i128 %conv125.i.891, %shr68.i.866
  %add75.i.869 = add nuw nsw i128 %add61.i.862, %shr54.i.859
  %add86.i.875 = add nuw nsw i128 %add75.i.869, %conv111.i.884
  %add99.i.880 = add nuw nsw i128 %add86.i.875, %shr41.i.854
  %add113.i.885 = add nuw nsw i128 %add99.i.880, %conv97.i.879
  %add127.i.892 = add nuw nsw i128 %add113.i.885, %conv84.i.874
  store i128 %add127.i.892, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.894 = mul nuw i128 %conv79.i.871, %conv22.i.845
  %shr137.i.895 = lshr i128 %mul135.i.894, 64
  %conv139.i.896 = and i128 %mul135.i.894, 18446744073709551615
  %mul148.i.899 = mul nuw i128 %conv38.i.852, %conv63.i.864
  %shr150.i.900 = lshr i128 %mul148.i.899, 64
  %conv152.i.901 = and i128 %mul148.i.899, 18446744073709551615
  %mul162.i.904 = mul nuw i128 %conv12.i.838, %conv118.i.888
  %shr164.i.905 = lshr i128 %mul162.i.904, 64
  %conv166.i.906 = and i128 %mul162.i.904, 18446744073709551615
  %add102.i.881 = add nuw nsw i128 %shr109.i.883, %shr123.i.890
  %add116.i.886 = add nuw nsw i128 %add102.i.881, %conv166.i.906
  %add130.i.893 = add nuw nsw i128 %add116.i.886, %shr95.i.878
  %add141.i.897 = add nuw nsw i128 %add130.i.893, %conv152.i.901
  %add154.i.902 = add nuw nsw i128 %add141.i.897, %shr82.i.873
  %add168.i.907 = add nuw nsw i128 %add154.i.902, %conv139.i.896
  store i128 %add168.i.907, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.909 = mul nuw i128 %conv79.i.871, %conv63.i.864
  %shr178.i.910 = lshr i128 %mul176.i.909, 64
  %conv180.i.911 = and i128 %mul176.i.909, 18446744073709551615
  %mul189.i.914 = mul nuw i128 %conv38.i.852, %conv118.i.888
  %shr191.i.915 = lshr i128 %mul189.i.914, 64
  %conv193.i.916 = and i128 %mul189.i.914, 18446744073709551615
  %add157.i.903 = add nuw nsw i128 %shr150.i.900, %shr164.i.905
  %add171.i.908 = add nuw nsw i128 %add157.i.903, %conv193.i.916
  %add182.i.912 = add nuw nsw i128 %add171.i.908, %shr137.i.895
  %add195.i.917 = add nuw nsw i128 %add182.i.912, %conv180.i.911
  %add198.i.918 = add nuw nsw i128 %shr178.i.910, %shr191.i.915
  %mul203.i.919 = mul nuw i128 %conv79.i.871, %conv118.i.888
  %shr205.i.920 = lshr i128 %mul203.i.919, 64
  %conv207.i.921 = and i128 %mul203.i.919, 18446744073709551615
  %add209.i.922 = add nuw nsw i128 %add198.i.918, %conv207.i.921
  %add.i.670 = add nuw nsw i128 %conv5.i.835, 1267650600228229401427983728624
  %add3.i.672 = or i128 %add31.i.849, 1267650600228229401496703205376
  %add6.i.675 = add nuw nsw i128 %add72.i.868, 1267650600228229401427983728656
  %add9.i.678 = add i128 %add127.i.892, 1267650600228229401427983728656
  %shl.i.i.682 = shl nuw nsw i128 %add195.i.917, 32
  %add.i.i.683 = add i128 %shl.i.i.682, %add168.i.907
  %sub7.i.i.687 = sub nsw i128 %add195.i.917, %shr205.i.920
  %shl13.i.i.690 = shl i128 %add168.i.907, 32
  %shl28.i.i.698 = shl nuw nsw i128 %add209.i.922, 32
  %shl32.i.i.700 = shl nuw nsw i128 %add209.i.922, 33
  %add9.i.i.688 = sub i128 %add3.i.672, %shl13.i.i.690
  %sub15.i.i.691 = add i128 %add9.i.i.688, %shl32.i.i.700
  %add34.i.i.701 = add i128 %sub15.i.i.691, %sub7.i.i.687
  %mul.i.i.702 = shl nuw nsw i128 %add209.i.922, 1
  %shl46.i.i.707 = shl nuw nsw i128 %shr205.i.920, 32
  %add3.i.i.684 = sub nsw i128 %add.i.670, %add209.i.922
  %sub26.i.i.697 = add i128 %add3.i.i.684, %add.i.i.683
  %sub30.i.i.699 = sub i128 %sub26.i.i.697, %shl28.i.i.698
  %sub44.i.i.706 = sub i128 %sub30.i.i.699, %shr205.i.920
  %sub48.i.i.708 = sub i128 %sub44.i.i.706, %shl46.i.i.707
  %shl50.i.i.709 = shl nuw nsw i128 %shr205.i.920, 33
  %sub11.i.i.689 = sub nsw i128 %add6.i.675, %shl.i.i.682
  %sub23.i.i.695 = add i128 %sub11.i.i.689, %mul.i.i.702
  %add37.i.i.703 = sub i128 %sub23.i.i.695, %sub7.i.i.687
  %add52.i.i.710 = add i128 %add37.i.i.703, %shl50.i.i.709
  %mul54.i.i.711 = mul nuw nsw i128 %shr205.i.920, 3
  %sub.i.i.685 = add i128 %add9.i.678, %shl13.i.i.690
  %add19.i.i.693 = sub i128 %sub.i.i.685, %add.i.i.683
  %sub41.i.i.705 = sub i128 %add19.i.i.693, %shl28.i.i.698
  %add56.i.i.712 = add i128 %sub41.i.i.705, %mul54.i.i.711
  %conv.i.655 = and i128 %sub70.i.1362, 18446744073709551615
  %mul.i.656 = mul nuw i128 %conv.i.655, %conv.i.655
  %shr.i.657 = lshr i128 %mul.i.656, 64
  %conv5.i.658 = and i128 %mul.i.656, 18446744073709551615
  store i128 %conv5.i.658, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.661 = and i128 %add84.i.1370, 18446744073709551615
  %mul13.i.662 = mul nuw i128 %conv12.i.661, %conv.i.655
  %shr15.i.663 = lshr i128 %mul13.i.662, 64
  %conv17.i.664 = shl i128 %mul13.i.662, 1
  %factor.i = and i128 %conv17.i.664, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i.657
  store i128 %add21.i, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %conv27.i = and i128 %add94.i.1373, 18446744073709551615
  %mul28.i = mul nuw i128 %conv27.i, %conv.i.655
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i.667 = add nuw nsw i128 %conv32.i, %shr15.i.663
  %mul36.i = shl nuw nsw i128 %add34.i.667, 1
  %conv42.i = and i128 %add104.i.1376, 18446744073709551615
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
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i.669
  store i128 %add78.i, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  store i128 %add81.i, i128* %arrayidx38.i.2680, align 16, !tbaa !2
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
  store i128 %add125.i, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  store i128 %add128.i, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %mul133.i = mul nuw i128 %conv42.i, %conv42.i
  %shr135.i = lshr i128 %mul133.i, 64
  %conv137.i = and i128 %mul133.i, 18446744073709551615
  %add139.i = add nuw nsw i128 %add114.i, %conv137.i
  store i128 %add139.i, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr135.i, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %shl.i.i.624 = shl nuw nsw i128 %add128.i, 32
  %add.i.i.625 = add nuw nsw i128 %shl.i.i.624, %add125.i
  %sub7.i.i.629 = sub nsw i128 %add128.i, %shr135.i
  %shl13.i.i.632 = shl nuw nsw i128 %add125.i, 32
  %shl28.i.i.640 = shl nuw nsw i128 %add139.i, 32
  %shl32.i.i.642 = shl nuw nsw i128 %add139.i, 33
  %mul.i.i.644 = shl nuw nsw i128 %add139.i, 1
  %shl46.i.i.649 = shl nuw nsw i128 %shr135.i, 32
  %shl50.i.i.651 = shl nuw nsw i128 %shr135.i, 33
  %mul54.i.i.653 = mul nuw nsw i128 %shr135.i, 3
  %mul.i.599.neg = mul i128 %sub48.i.i.708, -2
  %add.i.612 = sub nsw i128 41832469807531570247123463044592, %shr135.i
  %add3.i.i.626 = sub nsw i128 %add.i.612, %shl46.i.i.649
  %sub26.i.i.639 = add nuw nsw i128 %add3.i.i.626, %conv5.i.658
  %sub30.i.i.641 = sub nsw i128 %sub26.i.i.639, %add139.i
  %sub44.i.i.648 = add nuw nsw i128 %sub30.i.i.641, %add.i.i.625
  %sub48.i.i.650 = sub i128 %sub44.i.i.648, %shl28.i.i.640
  %add.i.576 = sub i128 %sub48.i.i.650, %sub48.i.i.962
  %sub.i.583 = add i128 %add.i.576, %mul.i.599.neg
  %mul3.i.601.neg = mul i128 %add34.i.i.701, -2
  %add3.i.614 = or i128 %add21.i, 41832469807531570249391205777408
  %add9.i.i.630 = sub nsw i128 %add3.i.614, %shl13.i.i.632
  %sub15.i.i.633 = add i128 %add9.i.i.630, %sub7.i.i.629
  %add34.i.i.643 = add i128 %sub15.i.i.633, %shl32.i.i.642
  %add2.i.578 = sub i128 %add34.i.i.643, %add34.i.i.955
  %sub11.i.585 = add i128 %add2.i.578, %mul3.i.601.neg
  %mul6.i.603.neg = mul i128 %add52.i.i.710, -2
  %add6.i.617 = add nuw nsw i128 %shl50.i.i.651, 41832469807531570247123463045648
  %sub11.i.i.631 = add nuw nsw i128 %add6.i.617, %add78.i
  %sub23.i.i.637 = sub nsw i128 %sub11.i.i.631, %sub7.i.i.629
  %add37.i.i.645 = sub nsw i128 %sub23.i.i.637, %shl.i.i.624
  %add52.i.i.652 = add i128 %add37.i.i.645, %mul.i.i.644
  %add4.i.580 = sub i128 %add52.i.i.652, %add52.i.i.964
  %sub14.i.587 = add i128 %add4.i.580, %mul6.i.603.neg
  %mul9.i.605.neg = mul i128 %add56.i.i.712, -2
  %add9.i.620 = add nuw nsw i128 %mul54.i.i.653, 41832469807531570247123463045648
  %sub.i.i.627 = add nuw nsw i128 %add9.i.620, %add81.i
  %add19.i.i.635 = add nuw nsw i128 %sub.i.i.627, %shl13.i.i.632
  %sub41.i.i.647 = sub i128 %add19.i.i.635, %add.i.i.625
  %add56.i.i.654 = sub i128 %sub41.i.i.647, %shl28.i.i.640
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
  store i128 %conv5.i.478, i128* %arraydecay15, align 16, !tbaa !2
  %conv12.i.481 = and i128 %add84.i.i.462, 18446744073709551615
  %mul13.i.482 = mul nuw i128 %conv12.i.481, %conv.i.655
  %shr15.i.483 = lshr i128 %mul13.i.482, 64
  %conv17.i.484 = and i128 %mul13.i.482, 18446744073709551615
  %mul25.i.489 = mul nuw i128 %conv2.i.475, %conv12.i.661
  %shr27.i.490 = lshr i128 %mul25.i.489, 64
  %conv29.i.491 = and i128 %mul25.i.489, 18446744073709551615
  %add.i.485 = add nuw nsw i128 %conv29.i.491, %shr.i.477
  %add31.i.492 = add nuw nsw i128 %add.i.485, %conv17.i.484
  store i128 %add31.i.492, i128* %arrayidx8.i.2664, align 16, !tbaa !2
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
  store i128 %add72.i.511, i128* %arrayidx23.i.2672, align 16, !tbaa !2
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
  %add61.i.505 = add nuw nsw i128 %conv125.i.534, %shr68.i.509
  %add75.i.512 = add nuw nsw i128 %add61.i.505, %shr54.i.502
  %add86.i.518 = add nuw nsw i128 %add75.i.512, %conv111.i.527
  %add99.i.523 = add nuw nsw i128 %add86.i.518, %shr41.i.497
  %add113.i.528 = add nuw nsw i128 %add99.i.523, %conv97.i.522
  %add127.i.535 = add nuw nsw i128 %add113.i.528, %conv84.i.517
  store i128 %add127.i.535, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %mul135.i.537 = mul nuw i128 %conv79.i.514, %conv12.i.661
  %shr137.i.538 = lshr i128 %mul135.i.537, 64
  %conv139.i.539 = and i128 %mul135.i.537, 18446744073709551615
  %mul148.i.542 = mul nuw i128 %conv38.i.495, %conv27.i
  %shr150.i.543 = lshr i128 %mul148.i.542, 64
  %conv152.i.544 = and i128 %mul148.i.542, 18446744073709551615
  %mul162.i.547 = mul nuw i128 %conv12.i.481, %conv42.i
  %shr164.i.548 = lshr i128 %mul162.i.547, 64
  %conv166.i.549 = and i128 %mul162.i.547, 18446744073709551615
  %add102.i.524 = add nuw nsw i128 %shr109.i.526, %shr123.i.533
  %add116.i.529 = add nuw nsw i128 %add102.i.524, %conv166.i.549
  %add130.i.536 = add nuw nsw i128 %add116.i.529, %shr95.i.521
  %add141.i.540 = add nuw nsw i128 %add130.i.536, %conv152.i.544
  %add154.i.545 = add nuw nsw i128 %add141.i.540, %shr82.i.516
  %add168.i.550 = add nuw nsw i128 %add154.i.545, %conv139.i.539
  store i128 %add168.i.550, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %mul176.i.552 = mul nuw i128 %conv79.i.514, %conv27.i
  %shr178.i.553 = lshr i128 %mul176.i.552, 64
  %conv180.i.554 = and i128 %mul176.i.552, 18446744073709551615
  %mul189.i.557 = mul nuw i128 %conv38.i.495, %conv42.i
  %shr191.i.558 = lshr i128 %mul189.i.557, 64
  %conv193.i.559 = and i128 %mul189.i.557, 18446744073709551615
  %add157.i.546 = add nuw nsw i128 %shr150.i.543, %shr164.i.548
  %add171.i.551 = add nuw nsw i128 %add157.i.546, %conv193.i.559
  %add182.i.555 = add nuw nsw i128 %add171.i.551, %shr137.i.538
  %add195.i.560 = add nuw nsw i128 %add182.i.555, %conv180.i.554
  store i128 %add195.i.560, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add198.i.561 = add nuw nsw i128 %shr178.i.553, %shr191.i.558
  %mul203.i.562 = mul nuw i128 %conv79.i.514, %conv42.i
  %shr205.i.563 = lshr i128 %mul203.i.562, 64
  %conv207.i.564 = and i128 %mul203.i.562, 18446744073709551615
  %add209.i.565 = add nuw nsw i128 %add198.i.561, %conv207.i.564
  store i128 %add209.i.565, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  store i128 %shr205.i.563, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.i.345 = add i128 %60, 18446744069414584320
  %shr.i.i = lshr i128 %sub23.i.i.22283504, 64
  %add8.i.i = add i128 %add.i.i.345, %shr.i.i
  %conv12.i.i = and i128 %sub23.i.i.22283504, 18446744073709551615
  %add13.i.i = add nuw nsw i128 %conv12.i.i, 18446673704965373952
  %add16.i.i = add i128 %add3.i.i.22173502, 18446744073709551615
  %add19.i.i.347 = add i128 %sub15.i.i.22243503, 1298074214633706907132628377272319
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
  %add.i.351 = add i128 %add56.i.i.966, 18446744069414584320
  %shr.i.353 = lshr i128 %add52.i.i.964, 64
  %add8.i.354 = add i128 %add.i.351, %shr.i.353
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
  %89 = load i128, i128* %arraydecay15, align 16, !tbaa !2
  %add.i.331 = add i128 %89, 1180591620717411303232
  %90 = load i128, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %add2.i = add i128 %90, 1180591621816922931200
  %91 = load i128, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %add4.i = add i128 %91, 1180591620717411303424
  %92 = load i128, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %add6.i.334 = add i128 %92, 1180591619343021768768
  %93 = load i128, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %add8.i.336 = add i128 %93, 1180591620717411303360
  %94 = load i128, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %add10.i = add i128 %94, 1180591620717411303360
  %95 = load i128, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  %add12.i = add i128 %95, 1180591620717411303360
  %96 = load i128, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add14.i = add i128 %96, 1180591620717411303360
  %sub.i.337 = sub i128 %add.i.331, %mul.i
  store i128 %sub.i.337, i128* %arraydecay15, align 16, !tbaa !2
  %sub19.i = sub i128 %add2.i, %mul3.i
  store i128 %sub19.i, i128* %arrayidx8.i.2664, align 16, !tbaa !2
  %sub22.i = sub i128 %add4.i, %mul6.i
  store i128 %sub22.i, i128* %arrayidx23.i.2672, align 16, !tbaa !2
  %sub25.i = sub i128 %add6.i.334, %mul9.i
  store i128 %sub25.i, i128* %arrayidx38.i.2680, align 16, !tbaa !2
  %sub28.i = sub i128 %add8.i.336, %mul12.i
  store i128 %sub28.i, i128* %arrayidx51.i.2687, align 16, !tbaa !2
  %sub31.i = sub i128 %add10.i, %mul15.i
  store i128 %sub31.i, i128* %arrayidx96.i.2704, align 16, !tbaa !2
  %sub34.i = sub i128 %add12.i, %mul18.i
  store i128 %sub34.i, i128* %arrayidx111.i.2710, align 16, !tbaa !2
  %sub37.i = sub i128 %add14.i, %mul21.i
  store i128 %sub37.i, i128* %arrayidx141.i.2721, align 16, !tbaa !2
  %add.i.326 = add i128 %sub.i.337, 40564819207303340845695479315968
  %add3.i = add i128 %sub19.i, 40564819207303340847894502572032
  %add6.i = add i128 %sub22.i, 40564819207303340845695479316992
  %add9.i = add i128 %sub25.i, 40564819207303340845695479316992
  %shl.i.i = shl i128 %sub31.i, 32
  %add.i.i = add i128 %shl.i.i, %sub28.i
  %sub7.i.i = sub i128 %sub31.i, %sub37.i
  %shl13.i.i = shl i128 %sub28.i, 32
  %shl28.i.i = shl i128 %sub34.i, 32
  %shl32.i.i = shl i128 %sub34.i, 33
  %add9.i.i = sub i128 %add3.i, %shl13.i.i
  %sub15.i.i = add i128 %add9.i.i, %shl32.i.i
  %add34.i.i = add i128 %sub15.i.i, %sub7.i.i
  %mul.i.i = shl i128 %sub34.i, 1
  %shl46.i.i = shl i128 %sub37.i, 32
  %add3.i.i = sub i128 %add.i.326, %sub34.i
  %sub26.i.i = add i128 %add3.i.i, %add.i.i
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %sub44.i.i = sub i128 %sub30.i.i, %sub37.i
  %sub48.i.i = sub i128 %sub44.i.i, %shl46.i.i
  %shl50.i.i = shl i128 %sub37.i, 33
  %sub11.i.i = sub i128 %add6.i, %shl.i.i
  %sub23.i.i = add i128 %sub11.i.i, %mul.i.i
  %add37.i.i = sub i128 %sub23.i.i, %sub7.i.i
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  %mul54.i.i = mul i128 %sub37.i, 3
  %sub.i.i = add i128 %add9.i, %shl13.i.i
  %add19.i.i = sub i128 %sub.i.i, %add.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  %neg.i.303 = xor i128 %coerce.sroa.0.0.insert.insert, -1
  %97 = load i64, i64* %x2, align 8, !tbaa !16
  %and.i.304 = and i64 %97, %or41.i
  %conv3.i.305 = zext i64 %and.i.304 to i128
  %and6.i.306 = and i128 %sub.i.583, %neg.i.303
  %or.i.307 = or i128 %conv3.i.305, %and6.i.306
  %98 = load i64, i64* %arrayidx21.i.2098, align 8, !tbaa !16
  %and.1.i.309 = and i64 %98, %or41.i
  %conv3.1.i.310 = zext i64 %and.1.i.309 to i128
  %and6.1.i.312 = and i128 %sub11.i.585, %neg.i.303
  %or.1.i.313 = or i128 %conv3.1.i.310, %and6.1.i.312
  %99 = load i64, i64* %arrayidx62.i.2117, align 8, !tbaa !16
  %and.2.i.315 = and i64 %99, %or41.i
  %conv3.2.i.316 = zext i64 %and.2.i.315 to i128
  %and6.2.i.318 = and i128 %sub14.i.587, %neg.i.303
  %or.2.i.319 = or i128 %conv3.2.i.316, %and6.2.i.318
  %100 = load i64, i64* %arrayidx117.i.2141, align 8, !tbaa !16
  %and.3.i.321 = and i64 %100, %or41.i
  %conv3.3.i.322 = zext i64 %and.3.i.321 to i128
  %and6.3.i.324 = and i128 %sub17.i.589, %neg.i.303
  %or.3.i.325 = or i128 %conv3.3.i.322, %and6.3.i.324
  %101 = load i128, i128* %x1, align 16, !tbaa !2
  %xor.i.281 = xor i128 %101, %or.i.307
  %and.i.282 = and i128 %xor.i.281, %coerce14.sroa.0.0.insert.insert
  %xor6.i.283 = xor i128 %and.i.282, %or.i.307
  %arrayidx.1.i.284 = getelementptr inbounds i128, i128* %x1, i64 1
  %102 = load i128, i128* %arrayidx.1.i.284, align 16, !tbaa !2
  %xor.1.i.286 = xor i128 %102, %or.1.i.313
  %and.1.i.287 = and i128 %xor.1.i.286, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.288 = xor i128 %and.1.i.287, %or.1.i.313
  %arrayidx.2.i.289 = getelementptr inbounds i128, i128* %x1, i64 2
  %103 = load i128, i128* %arrayidx.2.i.289, align 16, !tbaa !2
  %xor.2.i.291 = xor i128 %103, %or.2.i.319
  %and.2.i.292 = and i128 %xor.2.i.291, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.293 = xor i128 %and.2.i.292, %or.2.i.319
  %arrayidx.3.i.294 = getelementptr inbounds i128, i128* %x1, i64 3
  %104 = load i128, i128* %arrayidx.3.i.294, align 16, !tbaa !2
  %xor.3.i.296 = xor i128 %104, %or.3.i.325
  %and.3.i.297 = and i128 %xor.3.i.296, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.298 = xor i128 %and.3.i.297, %or.3.i.325
  %105 = load i64, i64* %y2, align 8, !tbaa !16
  %and.i.255 = and i64 %105, %or41.i
  %conv3.i.256 = zext i64 %and.i.255 to i128
  %and6.i.257 = and i128 %sub48.i.i, %neg.i.303
  %or.i.258 = or i128 %and6.i.257, %conv3.i.256
  %106 = load i64, i64* %arrayidx21.i.1518, align 8, !tbaa !16
  %and.1.i.260 = and i64 %106, %or41.i
  %conv3.1.i.261 = zext i64 %and.1.i.260 to i128
  %and6.1.i.263 = and i128 %add34.i.i, %neg.i.303
  %or.1.i.264 = or i128 %and6.1.i.263, %conv3.1.i.261
  %107 = load i64, i64* %arrayidx62.i.1537, align 8, !tbaa !16
  %and.2.i.266 = and i64 %107, %or41.i
  %conv3.2.i.267 = zext i64 %and.2.i.266 to i128
  %and6.2.i.269 = and i128 %add52.i.i, %neg.i.303
  %or.2.i.270 = or i128 %and6.2.i.269, %conv3.2.i.267
  %108 = load i64, i64* %arrayidx117.i.1561, align 8, !tbaa !16
  %and.3.i.272 = and i64 %108, %or41.i
  %conv3.3.i.273 = zext i64 %and.3.i.272 to i128
  %and6.3.i.275 = and i128 %add56.i.i, %neg.i.303
  %or.3.i.276 = or i128 %and6.3.i.275, %conv3.3.i.273
  %109 = load i128, i128* %y1, align 16, !tbaa !2
  %xor.i.232 = xor i128 %or.i.258, %109
  %and.i.233 = and i128 %xor.i.232, %coerce14.sroa.0.0.insert.insert
  %xor6.i.234 = xor i128 %and.i.233, %or.i.258
  %arrayidx.1.i.235 = getelementptr inbounds i128, i128* %y1, i64 1
  %110 = load i128, i128* %arrayidx.1.i.235, align 16, !tbaa !2
  %xor.1.i.237 = xor i128 %or.1.i.264, %110
  %and.1.i.238 = and i128 %xor.1.i.237, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i.239 = xor i128 %and.1.i.238, %or.1.i.264
  %arrayidx.2.i.240 = getelementptr inbounds i128, i128* %y1, i64 2
  %111 = load i128, i128* %arrayidx.2.i.240, align 16, !tbaa !2
  %xor.2.i.242 = xor i128 %or.2.i.270, %111
  %and.2.i.243 = and i128 %xor.2.i.242, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i.244 = xor i128 %and.2.i.243, %or.2.i.270
  %arrayidx.3.i.245 = getelementptr inbounds i128, i128* %y1, i64 3
  %112 = load i128, i128* %arrayidx.3.i.245, align 16, !tbaa !2
  %xor.3.i.247 = xor i128 %or.3.i.276, %112
  %and.3.i.248 = and i128 %xor.3.i.247, %coerce14.sroa.0.0.insert.insert
  %xor6.3.i.249 = xor i128 %and.3.i.248, %or.3.i.276
  %113 = load i64, i64* %z2, align 8, !tbaa !16
  %and.i.220 = and i64 %113, %or41.i
  %conv3.i = zext i64 %and.i.220 to i128
  %and6.i = and i128 %sub48.i.i.1772, %neg.i.303
  %or.i.221 = or i128 %conv3.i, %and6.i
  %114 = load i64, i64* %arrayidx1.i.1241, align 8, !tbaa !16
  %and.1.i.223 = and i64 %114, %or41.i
  %conv3.1.i = zext i64 %and.1.i.223 to i128
  %and6.1.i = and i128 %add34.i.i.1765, %neg.i.303
  %or.1.i = or i128 %conv3.1.i, %and6.1.i
  %115 = load i64, i64* %arrayidx2.i.1243, align 8, !tbaa !16
  %and.2.i.225 = and i64 %115, %or41.i
  %conv3.2.i = zext i64 %and.2.i.225 to i128
  %and6.2.i = and i128 %add52.i.i.1774, %neg.i.303
  %or.2.i = or i128 %conv3.2.i, %and6.2.i
  %116 = load i64, i64* %arrayidx4.i.1245, align 8, !tbaa !16
  %and.3.i.227 = and i64 %116, %or41.i
  %conv3.3.i = zext i64 %and.3.i.227 to i128
  %and6.3.i = and i128 %add56.i.i.1776, %neg.i.303
  %or.3.i = or i128 %conv3.3.i, %and6.3.i
  %117 = load i128, i128* %z1, align 16, !tbaa !2
  %xor.i = xor i128 %117, %or.i.221
  %and.i.214 = and i128 %xor.i, %coerce14.sroa.0.0.insert.insert
  %xor6.i = xor i128 %and.i.214, %or.i.221
  %118 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %xor.1.i = xor i128 %118, %or.1.i
  %and.1.i = and i128 %xor.1.i, %coerce14.sroa.0.0.insert.insert
  %xor6.1.i = xor i128 %and.1.i, %or.1.i
  %119 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %xor.2.i = xor i128 %119, %or.2.i
  %and.2.i = and i128 %xor.2.i, %coerce14.sroa.0.0.insert.insert
  %xor6.2.i = xor i128 %and.2.i, %or.2.i
  %120 = load i128, i128* %arrayidx.i, align 16, !tbaa !2
  %xor.3.i = xor i128 %120, %or.3.i
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
  call void @llvm.lifetime.end(i64 128, i8* %2) #1
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_double(i128* nocapture %x_out, i128* nocapture %y_out, i128* nocapture %z_out, i128* nocapture readonly %x_in, i128* nocapture readonly %y_in, i128* nocapture readonly %z_in) #0 {
entry:
  %tmp = alloca [8 x i128], align 16
  %ftmp = alloca [4 x i128], align 16
  %0 = bitcast [8 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [4 x i128]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #1
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 0
  %2 = load i128, i128* %x_in, align 16, !tbaa !2
  store i128 %2, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i128, i128* %x_in, i64 1
  %3 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %arrayidx3.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 1
  store i128 %3, i128* %arrayidx3.i, align 16, !tbaa !2
  %arrayidx4.i = getelementptr inbounds i128, i128* %x_in, i64 2
  %4 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 2
  store i128 %4, i128* %arrayidx5.i, align 16, !tbaa !2
  %arrayidx6.i = getelementptr inbounds i128, i128* %x_in, i64 3
  %5 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %ftmp, i64 0, i64 3
  store i128 %5, i128* %arrayidx7.i, align 16, !tbaa !2
  %arraydecay12 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 0
  call void @felem_square(i128* %arraydecay12, i128* %z_in)
  %6 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add.i.931 = add i128 %6, 1267650600228229401427983728624
  %arrayidx2.i.932 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 1
  %7 = load i128, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %add3.i.933 = add i128 %7, 1267650600228229401496703205376
  %arrayidx5.i.935 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 2
  %8 = load i128, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %add6.i.936 = add i128 %8, 1267650600228229401427983728656
  %arrayidx8.i.938 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 3
  %9 = load i128, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %add9.i.939 = add i128 %9, 1267650600228229401427983728656
  %arrayidx.i.i.941 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 4
  %10 = load i128, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %arrayidx1.i.i.942 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 5
  %11 = load i128, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %shl.i.i.943 = shl i128 %11, 32
  %add.i.i.944 = add i128 %shl.i.i.943, %10
  %arrayidx6.i.i.947 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 7
  %12 = load i128, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %sub7.i.i.948 = sub i128 %11, %12
  %shl13.i.i.951 = shl i128 %10, 32
  %arrayidx24.i.i.957 = getelementptr inbounds [8 x i128], [8 x i128]* %tmp, i64 0, i64 6
  %13 = load i128, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  %shl28.i.i.959 = shl i128 %13, 32
  %shl32.i.i.961 = shl i128 %13, 33
  %add9.i.i.949 = sub i128 %add3.i.933, %shl13.i.i.951
  %sub15.i.i.952 = add i128 %add9.i.i.949, %sub7.i.i.948
  %add34.i.i.962 = add i128 %sub15.i.i.952, %shl32.i.i.961
  %mul.i.i.963 = shl i128 %13, 1
  %shl46.i.i.968 = shl i128 %12, 32
  %add3.i.i.945 = sub i128 %add.i.931, %12
  %sub26.i.i.958 = add i128 %add3.i.i.945, %add.i.i.944
  %sub30.i.i.960 = sub i128 %sub26.i.i.958, %13
  %sub44.i.i.967 = sub i128 %sub30.i.i.960, %shl46.i.i.968
  %sub48.i.i.969 = sub i128 %sub44.i.i.967, %shl28.i.i.959
  %shl50.i.i.970 = shl i128 %12, 33
  %sub11.i.i.950 = sub i128 %add6.i.936, %shl.i.i.943
  %sub23.i.i.956 = sub i128 %sub11.i.i.950, %sub7.i.i.948
  %add37.i.i.964 = add i128 %sub23.i.i.956, %shl50.i.i.970
  %add52.i.i.971 = add i128 %add37.i.i.964, %mul.i.i.963
  %mul54.i.i.972 = mul i128 %12, 3
  %sub.i.i.946 = add i128 %add9.i.939, %shl13.i.i.951
  %add19.i.i.954 = sub i128 %sub.i.i.946, %add.i.i.944
  %sub41.i.i.966 = add i128 %add19.i.i.954, %mul54.i.i.972
  %add56.i.i.973 = sub i128 %sub41.i.i.966, %shl28.i.i.959
  call void @felem_square(i128* %arraydecay12, i128* %y_in)
  %14 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add.i.888 = add i128 %14, 1267650600228229401427983728624
  %15 = load i128, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %add3.i.890 = add i128 %15, 1267650600228229401496703205376
  %16 = load i128, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %add6.i.893 = add i128 %16, 1267650600228229401427983728656
  %17 = load i128, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %add9.i.896 = add i128 %17, 1267650600228229401427983728656
  %18 = load i128, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %19 = load i128, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %shl.i.i.900 = shl i128 %19, 32
  %add.i.i.901 = add i128 %shl.i.i.900, %18
  %20 = load i128, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %sub7.i.i.905 = sub i128 %19, %20
  %shl13.i.i.908 = shl i128 %18, 32
  %21 = load i128, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  %shl28.i.i.916 = shl i128 %21, 32
  %shl32.i.i.918 = shl i128 %21, 33
  %add9.i.i.906 = sub i128 %add3.i.890, %shl13.i.i.908
  %sub15.i.i.909 = add i128 %add9.i.i.906, %sub7.i.i.905
  %add34.i.i.919 = add i128 %sub15.i.i.909, %shl32.i.i.918
  %mul.i.i.920 = shl i128 %21, 1
  %shl46.i.i.925 = shl i128 %20, 32
  %add3.i.i.902 = sub i128 %add.i.888, %20
  %sub26.i.i.915 = add i128 %add3.i.i.902, %add.i.i.901
  %sub30.i.i.917 = sub i128 %sub26.i.i.915, %21
  %sub44.i.i.924 = sub i128 %sub30.i.i.917, %shl46.i.i.925
  %sub48.i.i.926 = sub i128 %sub44.i.i.924, %shl28.i.i.916
  %shl50.i.i.927 = shl i128 %20, 33
  %sub11.i.i.907 = sub i128 %add6.i.893, %shl.i.i.900
  %sub23.i.i.913 = sub i128 %sub11.i.i.907, %sub7.i.i.905
  %add37.i.i.921 = add i128 %sub23.i.i.913, %shl50.i.i.927
  %add52.i.i.928 = add i128 %add37.i.i.921, %mul.i.i.920
  %mul54.i.i.929 = mul i128 %20, 3
  %sub.i.i.903 = add i128 %add9.i.896, %shl13.i.i.908
  %add19.i.i.911 = sub i128 %sub.i.i.903, %add.i.i.901
  %sub41.i.i.923 = add i128 %add19.i.i.911, %mul54.i.i.929
  %add56.i.i.930 = sub i128 %sub41.i.i.923, %shl28.i.i.916
  %add.i.832 = add i128 %add56.i.i.930, 18446744069414584320
  %shr.i.834 = lshr i128 %add52.i.i.928, 64
  %add8.i.835 = add i128 %add.i.832, %shr.i.834
  %conv12.i.836 = and i128 %add52.i.i.928, 18446744073709551615
  %add13.i.837 = add nuw nsw i128 %conv12.i.836, 18446673704965373952
  %add16.i.838 = add i128 %sub48.i.i.926, 18446744073709551615
  %add19.i.840 = add i128 %add34.i.i.919, 1298074214633706907132628377272319
  %shr22.i.841 = lshr i128 %add8.i.835, 64
  %conv23.i.842 = trunc i128 %shr22.i.841 to i64
  %conv26.i.843 = and i128 %add8.i.835, 18446744073709551615
  %sub.i.844 = sub nsw i128 %conv26.i.843, %shr22.i.841
  %shl.i.845 = shl nuw nsw i128 %shr22.i.841, 32
  %add32.i.846 = add nsw i128 %sub.i.844, %shl.i.845
  %shr34.i.847 = lshr i128 %add32.i.846, 64
  %conv35.i.848 = trunc i128 %shr34.i.847 to i64
  %add36.i.849 = add i64 %conv35.i.848, %conv23.i.842
  %conv39.i.850 = and i128 %add32.i.846, 18446744073709551615
  %sub43.i.851 = sub nsw i128 %conv39.i.850, %shr34.i.847
  %shl45.i.852 = shl nuw nsw i128 %shr34.i.847, 32
  %add47.i.853 = add nsw i128 %sub43.i.851, %shl45.i.852
  %conv48.i.854 = zext i64 %add36.i.849 to i128
  %add50.i.855 = add i128 %add16.i.838, %conv48.i.854
  %shl52.i.856 = shl nuw nsw i128 %conv48.i.854, 32
  %sub54.i.857 = sub i128 %add19.i.840, %shl52.i.856
  %shr56.i.858 = lshr i128 %add47.i.853, 64
  %conv57.i.859 = trunc i128 %shr56.i.858 to i64
  %sub58.i.860 = sub i64 0, %conv57.i.859
  %conv60.i.861 = trunc i128 %add47.i.853 to i64
  %and.i.862 = and i64 %conv60.i.861, 9223372036854775807
  %neg.i.863 = sub nsw i64 9223372032559808512, %and.i.862
  %sub62177.i.864 = and i64 %neg.i.863, %conv60.i.861
  %and66.i.865 = ashr i64 %sub62177.i.864, 63
  %or.i.866 = or i64 %and66.i.865, %sub58.i.860
  %conv68.i.867 = zext i64 %or.i.866 to i128
  %sub70.i.868 = sub i128 %add50.i.855, %conv68.i.867
  %and71.i.869 = and i64 %or.i.866, 4294967295
  %conv72.i.870 = zext i64 %and71.i.869 to i128
  %sub74.i.871 = sub i128 %sub54.i.857, %conv72.i.870
  %and75.i.872 = and i64 %or.i.866, -4294967295
  %conv76.i.873 = zext i64 %and75.i.872 to i128
  %sub78.i.874 = sub nsw i128 %add47.i.853, %conv76.i.873
  %shr80.i.875 = lshr i128 %sub70.i.868, 64
  %add84.i.876 = add i128 %sub74.i.871, %shr80.i.875
  %shr90.i.878 = lshr i128 %add84.i.876, 64
  %add94.i.879 = add nuw nsw i128 %add13.i.837, %shr90.i.878
  %shr100.i.881 = lshr i128 %add94.i.879, 64
  %add104.i.882 = add nsw i128 %sub78.i.874, %shr100.i.881
  %22 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %add.i.i.682 = add i128 %22, 18446744069414584320
  %23 = load i128, i128* %arrayidx4.i, align 16, !tbaa !2
  %shr.i.i.684 = lshr i128 %23, 64
  %add8.i.i.685 = add i128 %add.i.i.682, %shr.i.i.684
  %conv12.i.i.686 = and i128 %23, 18446744073709551615
  %add13.i.i.687 = add nuw nsw i128 %conv12.i.i.686, 18446673704965373952
  %24 = load i128, i128* %x_in, align 16, !tbaa !2
  %add16.i.i.688 = add i128 %24, 18446744073709551615
  %25 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %add19.i.i.690 = add i128 %25, 1298074214633706907132628377272319
  %shr22.i.i.691 = lshr i128 %add8.i.i.685, 64
  %conv23.i.i.692 = trunc i128 %shr22.i.i.691 to i64
  %conv26.i.i.693 = and i128 %add8.i.i.685, 18446744073709551615
  %sub.i.i.694 = sub nsw i128 %conv26.i.i.693, %shr22.i.i.691
  %shl.i.i.695 = shl nuw nsw i128 %shr22.i.i.691, 32
  %add32.i.i.696 = add nsw i128 %sub.i.i.694, %shl.i.i.695
  %shr34.i.i.697 = lshr i128 %add32.i.i.696, 64
  %conv35.i.i.698 = trunc i128 %shr34.i.i.697 to i64
  %add36.i.i.699 = add i64 %conv35.i.i.698, %conv23.i.i.692
  %conv39.i.i.700 = and i128 %add32.i.i.696, 18446744073709551615
  %sub43.i.i.701 = sub nsw i128 %conv39.i.i.700, %shr34.i.i.697
  %shl45.i.i.702 = shl nuw nsw i128 %shr34.i.i.697, 32
  %add47.i.i.703 = add nsw i128 %sub43.i.i.701, %shl45.i.i.702
  %conv48.i.i.704 = zext i64 %add36.i.i.699 to i128
  %add50.i.i.705 = add i128 %add16.i.i.688, %conv48.i.i.704
  %shl52.i.i.706 = shl nuw nsw i128 %conv48.i.i.704, 32
  %sub54.i.i.707 = sub i128 %add19.i.i.690, %shl52.i.i.706
  %shr56.i.i.708 = lshr i128 %add47.i.i.703, 64
  %conv57.i.i.709 = trunc i128 %shr56.i.i.708 to i64
  %sub58.i.i.710 = sub i64 0, %conv57.i.i.709
  %conv60.i.i.711 = trunc i128 %add47.i.i.703 to i64
  %and.i.i.712 = and i64 %conv60.i.i.711, 9223372036854775807
  %neg.i.i.713 = sub nsw i64 9223372032559808512, %and.i.i.712
  %sub62177.i.i.714 = and i64 %neg.i.i.713, %conv60.i.i.711
  %and66.i.i.715 = ashr i64 %sub62177.i.i.714, 63
  %or.i.i.716 = or i64 %and66.i.i.715, %sub58.i.i.710
  %conv68.i.i.717 = zext i64 %or.i.i.716 to i128
  %sub70.i.i.718 = sub i128 %add50.i.i.705, %conv68.i.i.717
  %and71.i.i.719 = and i64 %or.i.i.716, 4294967295
  %conv72.i.i.720 = zext i64 %and71.i.i.719 to i128
  %sub74.i.i.721 = sub i128 %sub54.i.i.707, %conv72.i.i.720
  %and75.i.i.722 = and i64 %or.i.i.716, -4294967295
  %conv76.i.i.723 = zext i64 %and75.i.i.722 to i128
  %sub78.i.i.724 = sub nsw i128 %add47.i.i.703, %conv76.i.i.723
  %shr80.i.i.725 = lshr i128 %sub70.i.i.718, 64
  %add84.i.i.726 = add i128 %sub74.i.i.721, %shr80.i.i.725
  %shr90.i.i.728 = lshr i128 %add84.i.i.726, 64
  %add94.i.i.729 = add nuw nsw i128 %add13.i.i.687, %shr90.i.i.728
  %shr100.i.i.731 = lshr i128 %add94.i.i.729, 64
  %add104.i.i.732 = add nsw i128 %sub78.i.i.724, %shr100.i.i.731
  %conv.i.738 = and i128 %sub70.i.868, 18446744073709551615
  %conv2.i.739 = and i128 %sub70.i.i.718, 18446744073709551615
  %mul.i.740 = mul nuw i128 %conv.i.738, %conv2.i.739
  %shr.i.741 = lshr i128 %mul.i.740, 64
  %conv5.i.742 = and i128 %mul.i.740, 18446744073709551615
  store i128 %conv5.i.742, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.745 = and i128 %add84.i.i.726, 18446744073709551615
  %mul13.i.746 = mul nuw i128 %conv12.i.745, %conv.i.738
  %shr15.i.747 = lshr i128 %mul13.i.746, 64
  %conv17.i.748 = and i128 %mul13.i.746, 18446744073709551615
  %add.i.749 = add nuw nsw i128 %conv17.i.748, %shr.i.741
  %conv22.i.752 = and i128 %add84.i.876, 18446744073709551615
  %mul25.i.753 = mul nuw i128 %conv22.i.752, %conv2.i.739
  %shr27.i.754 = lshr i128 %mul25.i.753, 64
  %conv29.i.755 = and i128 %mul25.i.753, 18446744073709551615
  %add31.i.756 = add nuw nsw i128 %add.i.749, %conv29.i.755
  store i128 %add31.i.756, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %add34.i.757 = add nuw nsw i128 %shr27.i.754, %shr15.i.747
  %conv38.i.759 = and i128 %add94.i.i.729, 18446744073709551615
  %mul39.i.760 = mul nuw i128 %conv38.i.759, %conv.i.738
  %shr41.i.761 = lshr i128 %mul39.i.760, 64
  %conv43.i.762 = and i128 %mul39.i.760, 18446744073709551615
  %add45.i.763 = add nuw nsw i128 %add34.i.757, %conv43.i.762
  %mul52.i.765 = mul nuw i128 %conv22.i.752, %conv12.i.745
  %shr54.i.766 = lshr i128 %mul52.i.765, 64
  %conv56.i.767 = and i128 %mul52.i.765, 18446744073709551615
  %add58.i.768 = add nuw nsw i128 %add45.i.763, %conv56.i.767
  %add61.i.769 = add nuw nsw i128 %shr54.i.766, %shr41.i.761
  %conv63.i.771 = and i128 %add94.i.879, 18446744073709551615
  %mul66.i.772 = mul nuw i128 %conv63.i.771, %conv2.i.739
  %shr68.i.773 = lshr i128 %mul66.i.772, 64
  %conv70.i.774 = and i128 %mul66.i.772, 18446744073709551615
  %add72.i.775 = add nuw nsw i128 %add58.i.768, %conv70.i.774
  store i128 %add72.i.775, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %conv79.i.778 = and i128 %add104.i.i.732, 18446744073709551615
  %mul80.i.779 = mul nuw i128 %conv79.i.778, %conv.i.738
  %shr82.i.780 = lshr i128 %mul80.i.779, 64
  %conv84.i.781 = and i128 %mul80.i.779, 18446744073709551615
  %mul93.i.784 = mul nuw i128 %conv38.i.759, %conv22.i.752
  %shr95.i.785 = lshr i128 %mul93.i.784, 64
  %conv97.i.786 = and i128 %mul93.i.784, 18446744073709551615
  %add102.i.788 = add nuw nsw i128 %shr82.i.780, %shr95.i.785
  %mul107.i.789 = mul nuw i128 %conv63.i.771, %conv12.i.745
  %shr109.i.790 = lshr i128 %mul107.i.789, 64
  %conv111.i.791 = and i128 %mul107.i.789, 18446744073709551615
  %add116.i.793 = add nuw nsw i128 %add102.i.788, %shr109.i.790
  %conv118.i.795 = and i128 %add104.i.882, 18446744073709551615
  %mul121.i.796 = mul nuw i128 %conv118.i.795, %conv2.i.739
  %shr123.i.797 = lshr i128 %mul121.i.796, 64
  %conv125.i.798 = and i128 %mul121.i.796, 18446744073709551615
  %add75.i.776 = add nuw nsw i128 %add61.i.769, %conv97.i.786
  %add86.i.782 = add nuw nsw i128 %add75.i.776, %shr68.i.773
  %add99.i.787 = add nuw nsw i128 %add86.i.782, %conv84.i.781
  %add113.i.792 = add nuw nsw i128 %add99.i.787, %conv111.i.791
  %add127.i.799 = add nuw nsw i128 %add113.i.792, %conv125.i.798
  store i128 %add127.i.799, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %mul135.i.801 = mul nuw i128 %conv79.i.778, %conv22.i.752
  %shr137.i.802 = lshr i128 %mul135.i.801, 64
  %conv139.i.803 = and i128 %mul135.i.801, 18446744073709551615
  %mul148.i.806 = mul nuw i128 %conv63.i.771, %conv38.i.759
  %shr150.i.807 = lshr i128 %mul148.i.806, 64
  %conv152.i.808 = and i128 %mul148.i.806, 18446744073709551615
  %add157.i.810 = add nuw nsw i128 %shr150.i.807, %shr137.i.802
  %mul162.i.811 = mul nuw i128 %conv118.i.795, %conv12.i.745
  %shr164.i.812 = lshr i128 %mul162.i.811, 64
  %conv166.i.813 = and i128 %mul162.i.811, 18446744073709551615
  %add130.i.800 = add nuw nsw i128 %add116.i.793, %conv139.i.803
  %add141.i.804 = add nuw nsw i128 %add130.i.800, %conv152.i.808
  %add154.i.809 = add nuw nsw i128 %add141.i.804, %shr123.i.797
  %add168.i.814 = add nuw nsw i128 %add154.i.809, %conv166.i.813
  store i128 %add168.i.814, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %mul176.i.816 = mul nuw i128 %conv79.i.778, %conv63.i.771
  %shr178.i.817 = lshr i128 %mul176.i.816, 64
  %conv180.i.818 = and i128 %mul176.i.816, 18446744073709551615
  %mul189.i.821 = mul nuw i128 %conv118.i.795, %conv38.i.759
  %shr191.i.822 = lshr i128 %mul189.i.821, 64
  %conv193.i.823 = and i128 %mul189.i.821, 18446744073709551615
  %add171.i.815 = add nuw nsw i128 %add157.i.810, %conv180.i.818
  %add182.i.819 = add nuw nsw i128 %add171.i.815, %shr164.i.812
  %add195.i.824 = add nuw nsw i128 %add182.i.819, %conv193.i.823
  store i128 %add195.i.824, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %add198.i.825 = add nuw nsw i128 %shr191.i.822, %shr178.i.817
  %mul203.i.826 = mul nuw i128 %conv118.i.795, %conv79.i.778
  %shr205.i.827 = lshr i128 %mul203.i.826, 64
  %conv207.i.828 = and i128 %mul203.i.826, 18446744073709551615
  %add209.i.829 = add nuw nsw i128 %add198.i.825, %conv207.i.828
  store i128 %add209.i.829, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  store i128 %shr205.i.827, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %add.i.636 = add nuw nsw i128 %conv5.i.742, 1267650600228229401427983728624
  %add3.i.638 = or i128 %add31.i.756, 1267650600228229401496703205376
  %add6.i.641 = add nuw nsw i128 %add72.i.775, 1267650600228229401427983728656
  %add9.i.644 = add i128 %add127.i.799, 1267650600228229401427983728656
  %shl.i.i.648 = shl nuw nsw i128 %add195.i.824, 32
  %add.i.i.649 = add i128 %shl.i.i.648, %add168.i.814
  %sub7.i.i.653 = sub nsw i128 %add195.i.824, %shr205.i.827
  %shl13.i.i.656 = shl i128 %add168.i.814, 32
  %shl28.i.i.664 = shl nuw nsw i128 %add209.i.829, 32
  %shl32.i.i.666 = shl nuw nsw i128 %add209.i.829, 33
  %add9.i.i.654 = sub i128 %add3.i.638, %shl13.i.i.656
  %sub15.i.i.657 = add i128 %add9.i.i.654, %shl32.i.i.666
  %add34.i.i.667 = add i128 %sub15.i.i.657, %sub7.i.i.653
  %mul.i.i.668 = shl nuw nsw i128 %add209.i.829, 1
  %shl46.i.i.673 = shl nuw nsw i128 %shr205.i.827, 32
  %add3.i.i.650 = sub nsw i128 %add.i.636, %add209.i.829
  %sub26.i.i.663 = add i128 %add3.i.i.650, %add.i.i.649
  %sub30.i.i.665 = sub i128 %sub26.i.i.663, %shl28.i.i.664
  %sub44.i.i.672 = sub i128 %sub30.i.i.665, %shr205.i.827
  %sub48.i.i.674 = sub i128 %sub44.i.i.672, %shl46.i.i.673
  %shl50.i.i.675 = shl nuw nsw i128 %shr205.i.827, 33
  %sub11.i.i.655 = sub nsw i128 %add6.i.641, %shl.i.i.648
  %sub23.i.i.661 = add i128 %sub11.i.i.655, %mul.i.i.668
  %add37.i.i.669 = sub i128 %sub23.i.i.661, %sub7.i.i.653
  %add52.i.i.676 = add i128 %add37.i.i.669, %shl50.i.i.675
  %mul54.i.i.677 = mul nuw nsw i128 %shr205.i.827, 3
  %sub.i.i.651 = add i128 %add9.i.644, %shl13.i.i.656
  %add19.i.i.659 = sub i128 %sub.i.i.651, %add.i.i.649
  %sub41.i.i.671 = sub i128 %add19.i.i.659, %shl28.i.i.664
  %add56.i.i.678 = add i128 %sub41.i.i.671, %mul54.i.i.677
  %26 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.622 = add i128 %26, 40564819207303340845695479315968
  %27 = load i128, i128* %arrayidx3.i, align 16, !tbaa !2
  %add2.i.624 = add i128 %27, 40564819207303340847894502572032
  %28 = load i128, i128* %arrayidx5.i, align 16, !tbaa !2
  %add4.i.626 = add i128 %28, 40564819207303340845695479316992
  %29 = load i128, i128* %arrayidx7.i, align 16, !tbaa !2
  %add6.i.628 = add i128 %29, 40564819207303340845695479316992
  %sub.i.629 = sub i128 %add.i.622, %sub48.i.i.969
  store i128 %sub.i.629, i128* %arraydecay, align 16, !tbaa !2
  %sub11.i.631 = sub i128 %add2.i.624, %add34.i.i.962
  store i128 %sub11.i.631, i128* %arrayidx3.i, align 16, !tbaa !2
  %sub14.i.633 = sub i128 %add4.i.626, %add52.i.i.971
  store i128 %sub14.i.633, i128* %arrayidx5.i, align 16, !tbaa !2
  %sub17.i.635 = sub i128 %add6.i.628, %add56.i.i.973
  store i128 %sub17.i.635, i128* %arrayidx7.i, align 16, !tbaa !2
  %add.i.612 = add i128 %sub48.i.i.969, %2
  %add4.i.615 = add i128 %add34.i.i.962, %3
  %add7.i.618 = add i128 %add52.i.i.971, %4
  %add10.i.621 = add i128 %add56.i.i.973, %5
  %mul.i.605 = mul i128 %add.i.612, 3
  %mul3.i.607 = mul i128 %add4.i.615, 3
  %mul6.i.609 = mul i128 %add7.i.618, 3
  %mul9.i.611 = mul i128 %add10.i.621, 3
  %add.i.i.399 = add i128 %sub17.i.635, 18446744069414584320
  %shr.i.i.401 = lshr i128 %sub14.i.633, 64
  %add8.i.i.402 = add i128 %add.i.i.399, %shr.i.i.401
  %conv12.i.i.403 = and i128 %sub14.i.633, 18446744073709551615
  %add13.i.i.404 = add nuw nsw i128 %conv12.i.i.403, 18446673704965373952
  %add16.i.i.405 = add i128 %sub.i.629, 18446744073709551615
  %add19.i.i.407 = add i128 %sub11.i.631, 1298074214633706907132628377272319
  %shr22.i.i.408 = lshr i128 %add8.i.i.402, 64
  %conv23.i.i.409 = trunc i128 %shr22.i.i.408 to i64
  %conv26.i.i.410 = and i128 %add8.i.i.402, 18446744073709551615
  %sub.i.i.411 = sub nsw i128 %conv26.i.i.410, %shr22.i.i.408
  %shl.i.i.412 = shl nuw nsw i128 %shr22.i.i.408, 32
  %add32.i.i.413 = add nsw i128 %sub.i.i.411, %shl.i.i.412
  %shr34.i.i.414 = lshr i128 %add32.i.i.413, 64
  %conv35.i.i.415 = trunc i128 %shr34.i.i.414 to i64
  %add36.i.i.416 = add i64 %conv35.i.i.415, %conv23.i.i.409
  %conv39.i.i.417 = and i128 %add32.i.i.413, 18446744073709551615
  %sub43.i.i.418 = sub nsw i128 %conv39.i.i.417, %shr34.i.i.414
  %shl45.i.i.419 = shl nuw nsw i128 %shr34.i.i.414, 32
  %add47.i.i.420 = add nsw i128 %sub43.i.i.418, %shl45.i.i.419
  %conv48.i.i.421 = zext i64 %add36.i.i.416 to i128
  %add50.i.i.422 = add i128 %add16.i.i.405, %conv48.i.i.421
  %shl52.i.i.423 = shl nuw nsw i128 %conv48.i.i.421, 32
  %sub54.i.i.424 = sub i128 %add19.i.i.407, %shl52.i.i.423
  %shr56.i.i.425 = lshr i128 %add47.i.i.420, 64
  %conv57.i.i.426 = trunc i128 %shr56.i.i.425 to i64
  %sub58.i.i.427 = sub i64 0, %conv57.i.i.426
  %conv60.i.i.428 = trunc i128 %add47.i.i.420 to i64
  %and.i.i.429 = and i64 %conv60.i.i.428, 9223372036854775807
  %neg.i.i.430 = sub nsw i64 9223372032559808512, %and.i.i.429
  %sub62177.i.i.431 = and i64 %neg.i.i.430, %conv60.i.i.428
  %and66.i.i.432 = ashr i64 %sub62177.i.i.431, 63
  %or.i.i.433 = or i64 %and66.i.i.432, %sub58.i.i.427
  %conv68.i.i.434 = zext i64 %or.i.i.433 to i128
  %sub70.i.i.435 = sub i128 %add50.i.i.422, %conv68.i.i.434
  %and71.i.i.436 = and i64 %or.i.i.433, 4294967295
  %conv72.i.i.437 = zext i64 %and71.i.i.436 to i128
  %sub74.i.i.438 = sub i128 %sub54.i.i.424, %conv72.i.i.437
  %and75.i.i.439 = and i64 %or.i.i.433, -4294967295
  %conv76.i.i.440 = zext i64 %and75.i.i.439 to i128
  %sub78.i.i.441 = sub nsw i128 %add47.i.i.420, %conv76.i.i.440
  %shr80.i.i.442 = lshr i128 %sub70.i.i.435, 64
  %add84.i.i.443 = add i128 %sub74.i.i.438, %shr80.i.i.442
  %shr90.i.i.445 = lshr i128 %add84.i.i.443, 64
  %add94.i.i.446 = add nuw nsw i128 %add13.i.i.404, %shr90.i.i.445
  %shr100.i.i.448 = lshr i128 %add94.i.i.446, 64
  %add104.i.i.449 = add nsw i128 %sub78.i.i.441, %shr100.i.i.448
  %add.i.456 = add i128 %mul9.i.611, 18446744069414584320
  %shr.i.458 = lshr i128 %mul6.i.609, 64
  %add8.i.459 = add i128 %add.i.456, %shr.i.458
  %conv12.i.460 = and i128 %mul6.i.609, 18446744073709551615
  %add13.i.461 = add nuw nsw i128 %conv12.i.460, 18446673704965373952
  %add16.i.462 = add i128 %mul.i.605, 18446744073709551615
  %add19.i.464 = add i128 %mul3.i.607, 1298074214633706907132628377272319
  %shr22.i.465 = lshr i128 %add8.i.459, 64
  %conv23.i.466 = trunc i128 %shr22.i.465 to i64
  %conv26.i.467 = and i128 %add8.i.459, 18446744073709551615
  %sub.i.468 = sub nsw i128 %conv26.i.467, %shr22.i.465
  %shl.i.469 = shl nuw nsw i128 %shr22.i.465, 32
  %add32.i.470 = add nsw i128 %sub.i.468, %shl.i.469
  %shr34.i.471 = lshr i128 %add32.i.470, 64
  %conv35.i.472 = trunc i128 %shr34.i.471 to i64
  %add36.i.473 = add i64 %conv35.i.472, %conv23.i.466
  %conv39.i.474 = and i128 %add32.i.470, 18446744073709551615
  %sub43.i.475 = sub nsw i128 %conv39.i.474, %shr34.i.471
  %shl45.i.476 = shl nuw nsw i128 %shr34.i.471, 32
  %add47.i.477 = add nsw i128 %sub43.i.475, %shl45.i.476
  %conv48.i.478 = zext i64 %add36.i.473 to i128
  %add50.i.479 = add i128 %add16.i.462, %conv48.i.478
  %shl52.i.480 = shl nuw nsw i128 %conv48.i.478, 32
  %sub54.i.481 = sub i128 %add19.i.464, %shl52.i.480
  %shr56.i.482 = lshr i128 %add47.i.477, 64
  %conv57.i.483 = trunc i128 %shr56.i.482 to i64
  %sub58.i.484 = sub i64 0, %conv57.i.483
  %conv60.i.485 = trunc i128 %add47.i.477 to i64
  %and.i.486 = and i64 %conv60.i.485, 9223372036854775807
  %neg.i.487 = sub nsw i64 9223372032559808512, %and.i.486
  %sub62177.i.488 = and i64 %neg.i.487, %conv60.i.485
  %and66.i.489 = ashr i64 %sub62177.i.488, 63
  %or.i.490 = or i64 %and66.i.489, %sub58.i.484
  %conv68.i.491 = zext i64 %or.i.490 to i128
  %sub70.i.492 = sub i128 %add50.i.479, %conv68.i.491
  %and71.i.493 = and i64 %or.i.490, 4294967295
  %conv72.i.494 = zext i64 %and71.i.493 to i128
  %sub74.i.495 = sub i128 %sub54.i.481, %conv72.i.494
  %and75.i.496 = and i64 %or.i.490, -4294967295
  %conv76.i.497 = zext i64 %and75.i.496 to i128
  %sub78.i.498 = sub nsw i128 %add47.i.477, %conv76.i.497
  %shr80.i.499 = lshr i128 %sub70.i.492, 64
  %add84.i.500 = add i128 %sub74.i.495, %shr80.i.499
  %shr90.i.502 = lshr i128 %add84.i.500, 64
  %add94.i.503 = add nuw nsw i128 %add13.i.461, %shr90.i.502
  %shr100.i.505 = lshr i128 %add94.i.503, 64
  %add104.i.506 = add nsw i128 %sub78.i.498, %shr100.i.505
  %conv.i.512 = and i128 %sub70.i.i.435, 18446744073709551615
  %conv2.i.513 = and i128 %sub70.i.492, 18446744073709551615
  %mul.i.514 = mul nuw i128 %conv.i.512, %conv2.i.513
  %shr.i.515 = lshr i128 %mul.i.514, 64
  %conv5.i.516 = and i128 %mul.i.514, 18446744073709551615
  store i128 %conv5.i.516, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.519 = and i128 %add84.i.500, 18446744073709551615
  %mul13.i.520 = mul nuw i128 %conv.i.512, %conv12.i.519
  %shr15.i.521 = lshr i128 %mul13.i.520, 64
  %conv17.i.522 = and i128 %mul13.i.520, 18446744073709551615
  %add.i.523 = add nuw nsw i128 %conv17.i.522, %shr.i.515
  %conv22.i.526 = and i128 %add84.i.i.443, 18446744073709551615
  %mul25.i.527 = mul nuw i128 %conv22.i.526, %conv2.i.513
  %shr27.i.528 = lshr i128 %mul25.i.527, 64
  %conv29.i.529 = and i128 %mul25.i.527, 18446744073709551615
  %add31.i.530 = add nuw nsw i128 %add.i.523, %conv29.i.529
  store i128 %add31.i.530, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %conv38.i.533 = and i128 %add94.i.503, 18446744073709551615
  %mul39.i.534 = mul nuw i128 %conv.i.512, %conv38.i.533
  %shr41.i.535 = lshr i128 %mul39.i.534, 64
  %conv43.i.536 = and i128 %mul39.i.534, 18446744073709551615
  %mul52.i.539 = mul nuw i128 %conv22.i.526, %conv12.i.519
  %shr54.i.540 = lshr i128 %mul52.i.539, 64
  %conv56.i.541 = and i128 %mul52.i.539, 18446744073709551615
  %conv63.i.545 = and i128 %add94.i.i.446, 18446744073709551615
  %mul66.i.546 = mul nuw i128 %conv63.i.545, %conv2.i.513
  %shr68.i.547 = lshr i128 %mul66.i.546, 64
  %conv70.i.548 = and i128 %mul66.i.546, 18446744073709551615
  %add34.i.531 = add nuw nsw i128 %conv43.i.536, %shr15.i.521
  %add45.i.537 = add nuw nsw i128 %add34.i.531, %shr27.i.528
  %add58.i.542 = add nuw nsw i128 %add45.i.537, %conv56.i.541
  %add72.i.549 = add nuw nsw i128 %add58.i.542, %conv70.i.548
  store i128 %add72.i.549, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %conv79.i.552 = and i128 %add104.i.506, 18446744073709551615
  %mul80.i.553 = mul nuw i128 %conv.i.512, %conv79.i.552
  %shr82.i.554 = lshr i128 %mul80.i.553, 64
  %conv84.i.555 = and i128 %mul80.i.553, 18446744073709551615
  %mul93.i.558 = mul nuw i128 %conv22.i.526, %conv38.i.533
  %shr95.i.559 = lshr i128 %mul93.i.558, 64
  %conv97.i.560 = and i128 %mul93.i.558, 18446744073709551615
  %add102.i.562 = add nuw nsw i128 %shr95.i.559, %shr82.i.554
  %mul107.i.563 = mul nuw i128 %conv63.i.545, %conv12.i.519
  %shr109.i.564 = lshr i128 %mul107.i.563, 64
  %conv111.i.565 = and i128 %mul107.i.563, 18446744073709551615
  %conv118.i.569 = and i128 %add104.i.i.449, 18446744073709551615
  %mul121.i.570 = mul nuw i128 %conv118.i.569, %conv2.i.513
  %shr123.i.571 = lshr i128 %mul121.i.570, 64
  %conv125.i.572 = and i128 %mul121.i.570, 18446744073709551615
  %add61.i.543 = add nuw nsw i128 %conv84.i.555, %shr41.i.535
  %add75.i.550 = add nuw nsw i128 %add61.i.543, %shr54.i.540
  %add86.i.556 = add nuw nsw i128 %add75.i.550, %conv97.i.560
  %add99.i.561 = add nuw nsw i128 %add86.i.556, %shr68.i.547
  %add113.i.566 = add nuw nsw i128 %add99.i.561, %conv111.i.565
  %add127.i.573 = add nuw nsw i128 %add113.i.566, %conv125.i.572
  store i128 %add127.i.573, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %mul135.i.575 = mul nuw i128 %conv22.i.526, %conv79.i.552
  %shr137.i.576 = lshr i128 %mul135.i.575, 64
  %conv139.i.577 = and i128 %mul135.i.575, 18446744073709551615
  %mul148.i.580 = mul nuw i128 %conv63.i.545, %conv38.i.533
  %shr150.i.581 = lshr i128 %mul148.i.580, 64
  %conv152.i.582 = and i128 %mul148.i.580, 18446744073709551615
  %add157.i.584 = add nuw nsw i128 %shr150.i.581, %shr137.i.576
  %mul162.i.585 = mul nuw i128 %conv118.i.569, %conv12.i.519
  %shr164.i.586 = lshr i128 %mul162.i.585, 64
  %conv166.i.587 = and i128 %mul162.i.585, 18446744073709551615
  %add116.i.567 = add nuw nsw i128 %add102.i.562, %conv139.i.577
  %add130.i.574 = add nuw nsw i128 %add116.i.567, %shr109.i.564
  %add141.i.578 = add nuw nsw i128 %add130.i.574, %conv152.i.582
  %add154.i.583 = add nuw nsw i128 %add141.i.578, %shr123.i.571
  %add168.i.588 = add nuw nsw i128 %add154.i.583, %conv166.i.587
  store i128 %add168.i.588, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %mul176.i.590 = mul nuw i128 %conv63.i.545, %conv79.i.552
  %shr178.i.591 = lshr i128 %mul176.i.590, 64
  %conv180.i.592 = and i128 %mul176.i.590, 18446744073709551615
  %mul189.i.595 = mul nuw i128 %conv118.i.569, %conv38.i.533
  %shr191.i.596 = lshr i128 %mul189.i.595, 64
  %conv193.i.597 = and i128 %mul189.i.595, 18446744073709551615
  %add171.i.589 = add nuw nsw i128 %add157.i.584, %conv180.i.592
  %add182.i.593 = add nuw nsw i128 %add171.i.589, %shr164.i.586
  %add195.i.598 = add nuw nsw i128 %add182.i.593, %conv193.i.597
  store i128 %add195.i.598, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %add198.i.599 = add nuw nsw i128 %shr191.i.596, %shr178.i.591
  %mul203.i.600 = mul nuw i128 %conv118.i.569, %conv79.i.552
  %shr205.i.601 = lshr i128 %mul203.i.600, 64
  %conv207.i.602 = and i128 %mul203.i.600, 18446744073709551615
  %add209.i.603 = add nuw nsw i128 %add198.i.599, %conv207.i.602
  store i128 %add209.i.603, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  store i128 %shr205.i.601, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %add6.i.358 = add nuw nsw i128 %add72.i.549, 1267650600228229401427983728656
  %shl.i.i.365 = shl nuw nsw i128 %add195.i.598, 32
  %add.i.i.366 = add i128 %shl.i.i.365, %add168.i.588
  %sub7.i.i.370 = sub nsw i128 %add195.i.598, %shr205.i.601
  %shl13.i.i.373 = shl i128 %add168.i.588, 32
  %shl28.i.i.381 = shl nuw nsw i128 %add209.i.603, 32
  %shl32.i.i.383 = shl nuw nsw i128 %add209.i.603, 33
  %mul.i.i.385 = shl nuw nsw i128 %add209.i.603, 1
  %shl46.i.i.390 = shl nuw nsw i128 %shr205.i.601, 32
  %shl50.i.i.392 = shl nuw nsw i128 %shr205.i.601, 33
  %sub11.i.i.372 = sub nsw i128 %add6.i.358, %shl.i.i.365
  %sub23.i.i.378 = add i128 %sub11.i.i.372, %mul.i.i.385
  %add37.i.i.386 = sub i128 %sub23.i.i.378, %sub7.i.i.370
  %add52.i.i.393 = add i128 %add37.i.i.386, %shl50.i.i.392
  %mul54.i.i.394 = mul nuw nsw i128 %shr205.i.601, 3
  %shr.i.346 = lshr i128 %add52.i.i.393, 64
  %sub.i.i.368 = add i128 %add127.i.573, 1267650600246676145497398312976
  %add19.i.i.376 = add i128 %sub.i.i.368, %shl13.i.i.373
  %sub41.i.i.388 = sub i128 %add19.i.i.376, %add.i.i.366
  %add56.i.i.395 = sub i128 %sub41.i.i.388, %shl28.i.i.381
  %add.i.344 = add i128 %add56.i.i.395, %mul54.i.i.394
  %add8.i.347 = add i128 %add.i.344, %shr.i.346
  %conv12.i.348 = and i128 %add52.i.i.393, 18446744073709551615
  %add13.i = add nuw nsw i128 %conv12.i.348, 18446673704965373952
  %shr22.i = lshr i128 %add8.i.347, 64
  %conv23.i = trunc i128 %shr22.i to i64
  %conv26.i = and i128 %add8.i.347, 18446744073709551615
  %sub.i.349 = sub nsw i128 %conv26.i, %shr22.i
  %shl.i = shl nuw nsw i128 %shr22.i, 32
  %add32.i = add nsw i128 %sub.i.349, %shl.i
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
  %conv60.i.350 = trunc i128 %add47.i to i64
  %and.i = and i64 %conv60.i.350, 9223372036854775807
  %neg.i = sub nsw i64 9223372032559808512, %and.i
  %sub62177.i = and i64 %neg.i, %conv60.i.350
  %and66.i = ashr i64 %sub62177.i, 63
  %or.i = or i64 %and66.i, %sub58.i
  %conv68.i = zext i64 %or.i to i128
  %add3.i.i.367 = add nuw nsw i128 %conv5.i.516, 1267650600246676145501693280239
  %sub26.i.i.380 = sub nsw i128 %add3.i.i.367, %add209.i.603
  %sub30.i.i.382 = add i128 %sub26.i.i.380, %add.i.i.366
  %sub44.i.i.389 = sub i128 %sub30.i.i.382, %shl28.i.i.381
  %sub48.i.i.391 = sub i128 %sub44.i.i.389, %shr205.i.601
  %add16.i = sub i128 %sub48.i.i.391, %shl46.i.i.390
  %add50.i = add i128 %add16.i, %conv48.i
  %sub70.i = sub i128 %add50.i, %conv68.i
  %and71.i = and i64 %or.i, 4294967295
  %conv72.i = zext i64 %and71.i to i128
  %and75.i = and i64 %or.i, -4294967295
  %conv76.i.351 = zext i64 %and75.i to i128
  %sub78.i = sub nsw i128 %add47.i, %conv76.i.351
  %shr80.i = lshr i128 %sub70.i, 64
  %add9.i.i.371 = add nuw nsw i128 %add31.i.530, 1299341865233935136534125080477695
  %sub15.i.i.374 = sub i128 %add9.i.i.371, %shl13.i.i.373
  %add34.i.i.384 = add i128 %sub15.i.i.374, %shl32.i.i.383
  %add19.i = add i128 %add34.i.i.384, %sub7.i.i.370
  %sub54.i = sub i128 %add19.i, %shl52.i
  %sub74.i = sub i128 %sub54.i, %conv72.i
  %add84.i = add i128 %sub74.i, %shr80.i
  %shr90.i = lshr i128 %add84.i, 64
  %add94.i = add nuw nsw i128 %add13.i, %shr90.i
  %shr100.i = lshr i128 %add94.i, 64
  %add104.i = add nsw i128 %sub78.i, %shr100.i
  %conv.i.282 = and i128 %sub70.i, 18446744073709551615
  %mul.i.283 = mul nuw i128 %conv.i.282, %conv.i.282
  %shr.i.284 = lshr i128 %mul.i.283, 64
  %conv5.i.285 = and i128 %mul.i.283, 18446744073709551615
  store i128 %conv5.i.285, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.288 = and i128 %add84.i, 18446744073709551615
  %mul13.i.289 = mul nuw i128 %conv12.i.288, %conv.i.282
  %shr15.i.290 = lshr i128 %mul13.i.289, 64
  %conv17.i.291 = shl i128 %mul13.i.289, 1
  %factor.i.292 = and i128 %conv17.i.291, 36893488147419103230
  %add21.i.293 = add nuw nsw i128 %factor.i.292, %shr.i.284
  store i128 %add21.i.293, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %conv27.i.296 = and i128 %add94.i, 18446744073709551615
  %mul28.i.297 = mul nuw i128 %conv27.i.296, %conv.i.282
  %shr30.i.298 = lshr i128 %mul28.i.297, 64
  %conv32.i.299 = and i128 %mul28.i.297, 18446744073709551615
  %add34.i.300 = add nuw nsw i128 %conv32.i.299, %shr15.i.290
  %mul36.i.301 = shl nuw nsw i128 %add34.i.300, 1
  %conv42.i.304 = and i128 %add104.i, 18446744073709551615
  %mul43.i.305 = mul nuw i128 %conv42.i.304, %conv.i.282
  %shr45.i.306 = lshr i128 %mul43.i.305, 64
  %conv47.i.307 = and i128 %mul43.i.305, 18446744073709551615
  %mul56.i.310 = mul nuw i128 %conv27.i.296, %conv12.i.288
  %shr58.i.311 = lshr i128 %mul56.i.310, 64
  %conv60.i.312 = and i128 %mul56.i.310, 18446744073709551615
  %add49.i.308 = add nuw nsw i128 %conv60.i.312, %shr30.i.298
  %add62.i.313 = add nuw nsw i128 %add49.i.308, %conv47.i.307
  %mul64.i.314 = shl nuw nsw i128 %add62.i.313, 1
  %add67.i.315 = add nuw nsw i128 %shr45.i.306, %shr58.i.311
  %mul72.i.316 = mul nuw i128 %conv12.i.288, %conv12.i.288
  %shr74.i.317 = lshr i128 %mul72.i.316, 64
  %conv76.i.318 = and i128 %mul72.i.316, 18446744073709551615
  %add78.i.319 = add nuw nsw i128 %mul36.i.301, %conv76.i.318
  store i128 %add78.i.319, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %add81.i.320 = add nuw nsw i128 %mul64.i.314, %shr74.i.317
  store i128 %add81.i.320, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %mul86.i.321 = mul nuw i128 %conv42.i.304, %conv12.i.288
  %shr88.i.322 = lshr i128 %mul86.i.321, 64
  %conv90.i.323 = and i128 %mul86.i.321, 18446744073709551615
  %add92.i.324 = add nuw nsw i128 %add67.i.315, %conv90.i.323
  %mul94.i.325 = shl nuw nsw i128 %add92.i.324, 1
  %mul101.i.327 = mul nuw i128 %conv42.i.304, %conv27.i.296
  %shr103.i.328 = lshr i128 %mul101.i.327, 64
  %conv105.i.329 = and i128 %mul101.i.327, 18446744073709551615
  %add107.i.330 = add nuw nsw i128 %conv105.i.329, %shr88.i.322
  %mul109.i.331 = shl nuw nsw i128 %add107.i.330, 1
  %add114.i.333 = shl nuw nsw i128 %shr103.i.328, 1
  %mul119.i.334 = mul nuw i128 %conv27.i.296, %conv27.i.296
  %shr121.i.335 = lshr i128 %mul119.i.334, 64
  %conv123.i.336 = and i128 %mul119.i.334, 18446744073709551615
  %add125.i.337 = add nuw nsw i128 %mul94.i.325, %conv123.i.336
  store i128 %add125.i.337, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %add128.i.338 = add nuw nsw i128 %mul109.i.331, %shr121.i.335
  store i128 %add128.i.338, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %mul133.i.339 = mul nuw i128 %conv42.i.304, %conv42.i.304
  %shr135.i.340 = lshr i128 %mul133.i.339, 64
  %conv137.i.341 = and i128 %mul133.i.339, 18446744073709551615
  %add139.i.342 = add nuw nsw i128 %add114.i.333, %conv137.i.341
  store i128 %add139.i.342, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  store i128 %shr135.i.340, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %add.i.239 = add nuw nsw i128 %conv5.i.285, 1267650600228229401427983728624
  %add3.i.241 = or i128 %add21.i.293, 1267650600228229401496703205376
  %arrayidx4.i.242 = getelementptr inbounds i128, i128* %x_out, i64 1
  %add6.i.244 = add nuw nsw i128 %add78.i.319, 1267650600228229401427983728656
  %arrayidx7.i.245 = getelementptr inbounds i128, i128* %x_out, i64 2
  %add9.i.247 = add nuw nsw i128 %add81.i.320, 1267650600228229401427983728656
  %arrayidx10.i.248 = getelementptr inbounds i128, i128* %x_out, i64 3
  %shl.i.i.251 = shl nuw nsw i128 %add128.i.338, 32
  %add.i.i.252 = add nuw nsw i128 %shl.i.i.251, %add125.i.337
  %add3.i.i.253 = add nuw nsw i128 %add.i.i.252, %add.i.239
  %sub.i.i.254 = sub nsw i128 %add9.i.247, %add.i.i.252
  %sub7.i.i.256 = sub nsw i128 %add128.i.338, %shr135.i.340
  %add9.i.i.257 = add nsw i128 %sub7.i.i.256, %add3.i.241
  %sub11.i.i.258 = sub nsw i128 %add6.i.244, %sub7.i.i.256
  %shl13.i.i.259 = shl nuw nsw i128 %add125.i.337, 32
  %sub15.i.i.260 = sub nsw i128 %add9.i.i.257, %shl13.i.i.259
  %add19.i.i.262 = add i128 %shl13.i.i.259, %sub.i.i.254
  %sub23.i.i.264 = sub nsw i128 %sub11.i.i.258, %shl.i.i.251
  %sub26.i.i.266 = sub i128 %add3.i.i.253, %add139.i.342
  %shl28.i.i.267 = shl nuw nsw i128 %add139.i.342, 32
  %sub30.i.i.268 = sub i128 %sub26.i.i.266, %shl28.i.i.267
  %shl32.i.i.269 = shl nuw nsw i128 %add139.i.342, 33
  %add34.i.i.270 = add i128 %shl32.i.i.269, %sub15.i.i.260
  %mul.i.i.271 = shl nuw nsw i128 %add139.i.342, 1
  %add37.i.i.272 = add i128 %mul.i.i.271, %sub23.i.i.264
  %sub41.i.i.274 = sub i128 %add19.i.i.262, %shl28.i.i.267
  %sub44.i.i.275 = sub i128 %sub30.i.i.268, %shr135.i.340
  %shl46.i.i.276 = shl nuw nsw i128 %shr135.i.340, 32
  %sub48.i.i.277 = sub i128 %sub44.i.i.275, %shl46.i.i.276
  %shl50.i.i.278 = shl nuw nsw i128 %shr135.i.340, 33
  %add52.i.i.279 = add i128 %shl50.i.i.278, %add37.i.i.272
  %mul54.i.i.280 = mul nuw nsw i128 %shr135.i.340, 3
  %add56.i.i.281 = add i128 %mul54.i.i.280, %sub41.i.i.274
  %mul.i.226 = shl i128 %sub48.i.i.674, 3
  %mul3.i.228 = shl i128 %add34.i.i.667, 3
  %mul6.i.230 = shl i128 %add52.i.i.676, 3
  %mul9.i.232 = shl i128 %add56.i.i.678, 3
  %add.i.212 = add i128 %sub48.i.i.277, 40564819207303340845695479315968
  %add2.i.214 = add i128 %add34.i.i.270, 40564819207303340847894502572032
  %add4.i.216 = add i128 %add52.i.i.279, 40564819207303340845695479316992
  %add6.i.218 = add i128 %add56.i.i.281, 40564819207303340845695479316992
  %sub.i.219 = sub i128 %add.i.212, %mul.i.226
  store i128 %sub.i.219, i128* %x_out, align 16, !tbaa !2
  %sub11.i.221 = sub i128 %add2.i.214, %mul3.i.228
  store i128 %sub11.i.221, i128* %arrayidx4.i.242, align 16, !tbaa !2
  %sub14.i.223 = sub i128 %add4.i.216, %mul6.i.230
  store i128 %sub14.i.223, i128* %arrayidx7.i.245, align 16, !tbaa !2
  %sub17.i.225 = sub i128 %add6.i.218, %mul9.i.232
  store i128 %sub17.i.225, i128* %arrayidx10.i.248, align 16, !tbaa !2
  %30 = load i128, i128* %y_in, align 16, !tbaa !2
  %arrayidx2.i.196 = getelementptr inbounds i128, i128* %y_in, i64 1
  %31 = load i128, i128* %arrayidx2.i.196, align 16, !tbaa !2
  %arrayidx4.i.198 = getelementptr inbounds i128, i128* %y_in, i64 2
  %32 = load i128, i128* %arrayidx4.i.198, align 16, !tbaa !2
  %arrayidx6.i.200 = getelementptr inbounds i128, i128* %y_in, i64 3
  %33 = load i128, i128* %arrayidx6.i.200, align 16, !tbaa !2
  %34 = load i128, i128* %z_in, align 16, !tbaa !2
  %add.i.187 = add i128 %30, %34
  store i128 %add.i.187, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx2.i.188 = getelementptr inbounds i128, i128* %z_in, i64 1
  %35 = load i128, i128* %arrayidx2.i.188, align 16, !tbaa !2
  %add4.i.190 = add i128 %31, %35
  store i128 %add4.i.190, i128* %arrayidx3.i, align 16, !tbaa !2
  %arrayidx5.i.191 = getelementptr inbounds i128, i128* %z_in, i64 2
  %36 = load i128, i128* %arrayidx5.i.191, align 16, !tbaa !2
  %add7.i = add i128 %32, %36
  store i128 %add7.i, i128* %arrayidx5.i, align 16, !tbaa !2
  %arrayidx8.i.193 = getelementptr inbounds i128, i128* %z_in, i64 3
  %37 = load i128, i128* %arrayidx8.i.193, align 16, !tbaa !2
  %add10.i.195 = add i128 %33, %37
  store i128 %add10.i.195, i128* %arrayidx7.i, align 16, !tbaa !2
  call void @felem_square(i128* %arraydecay12, i128* %arraydecay)
  %38 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add.i.138 = add i128 %38, 1267650600228229401427983728624
  %39 = load i128, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %add3.i.140 = add i128 %39, 1267650600228229401496703205376
  %arrayidx4.i.141 = getelementptr inbounds i128, i128* %z_out, i64 1
  %40 = load i128, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %add6.i.143 = add i128 %40, 1267650600228229401427983728656
  %arrayidx7.i.144 = getelementptr inbounds i128, i128* %z_out, i64 2
  %41 = load i128, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %add9.i.146 = add i128 %41, 1267650600228229401427983728656
  %arrayidx10.i.147 = getelementptr inbounds i128, i128* %z_out, i64 3
  %42 = load i128, i128* %arrayidx.i.i.941, align 16, !tbaa !2
  %43 = load i128, i128* %arrayidx1.i.i.942, align 16, !tbaa !2
  %shl.i.i.150 = shl i128 %43, 32
  %add.i.i.151 = add i128 %shl.i.i.150, %42
  %add3.i.i.152 = add i128 %add.i.i.151, %add.i.138
  %sub.i.i.153 = sub i128 %add9.i.146, %add.i.i.151
  %44 = load i128, i128* %arrayidx6.i.i.947, align 16, !tbaa !2
  %sub7.i.i.155 = sub i128 %43, %44
  %add9.i.i.156 = add i128 %sub7.i.i.155, %add3.i.140
  %sub11.i.i.157 = sub i128 %add6.i.143, %sub7.i.i.155
  %shl13.i.i.158 = shl i128 %42, 32
  %sub15.i.i.159 = sub i128 %add9.i.i.156, %shl13.i.i.158
  %add19.i.i.161 = add i128 %shl13.i.i.158, %sub.i.i.153
  %sub23.i.i.163 = sub i128 %sub11.i.i.157, %shl.i.i.150
  %45 = load i128, i128* %arrayidx24.i.i.957, align 16, !tbaa !2
  %sub26.i.i.165 = sub i128 %add3.i.i.152, %45
  %shl28.i.i.166 = shl i128 %45, 32
  %sub30.i.i.167 = sub i128 %sub26.i.i.165, %shl28.i.i.166
  %shl32.i.i.168 = shl i128 %45, 33
  %add34.i.i.169 = add i128 %shl32.i.i.168, %sub15.i.i.159
  %mul.i.i.170 = shl i128 %45, 1
  %add37.i.i.171 = add i128 %mul.i.i.170, %sub23.i.i.163
  %sub41.i.i.173 = sub i128 %add19.i.i.161, %shl28.i.i.166
  %sub44.i.i.174 = sub i128 %sub30.i.i.167, %44
  %shl46.i.i.175 = shl i128 %44, 32
  %sub48.i.i.176 = sub i128 %sub44.i.i.174, %shl46.i.i.175
  %shl50.i.i.177 = shl i128 %44, 33
  %add52.i.i.178 = add i128 %shl50.i.i.177, %add37.i.i.171
  %mul54.i.i.179 = mul i128 %44, 3
  %add56.i.i.180 = add i128 %mul54.i.i.179, %sub41.i.i.173
  %add.i.124 = add i128 %sub48.i.i.176, 40564819207303340845695479315968
  %add2.i.126 = add i128 %add34.i.i.169, 40564819207303340847894502572032
  %add4.i.128 = add i128 %add52.i.i.178, 40564819207303340845695479316992
  %add6.i.130 = add i128 %add56.i.i.180, 40564819207303340845695479316992
  %sum = add i128 %sub48.i.i.926, %sub48.i.i.969
  %sub.i.131 = sub i128 %add.i.124, %sum
  store i128 %sub.i.131, i128* %z_out, align 16, !tbaa !2
  %sum1106 = add i128 %add34.i.i.919, %add34.i.i.962
  %sub11.i.133 = sub i128 %add2.i.126, %sum1106
  store i128 %sub11.i.133, i128* %arrayidx4.i.141, align 16, !tbaa !2
  %sum1107 = add i128 %add52.i.i.928, %add52.i.i.971
  %sub14.i.135 = sub i128 %add4.i.128, %sum1107
  store i128 %sub14.i.135, i128* %arrayidx7.i.144, align 16, !tbaa !2
  %sum1108 = add i128 %add56.i.i.930, %add56.i.i.973
  %sub17.i.137 = sub i128 %add6.i.130, %sum1108
  store i128 %sub17.i.137, i128* %arrayidx10.i.147, align 16, !tbaa !2
  %mul.i.117 = shl i128 %sub48.i.i.674, 2
  %mul3.i.119 = shl i128 %add34.i.i.667, 2
  %mul6.i.121 = shl i128 %add52.i.i.676, 2
  %mul9.i.123 = shl i128 %add56.i.i.678, 2
  %add4.i.112 = add i128 %mul6.i.121, 162259276829213363382781917267968
  %46 = load i128, i128* %x_out, align 16, !tbaa !2
  %47 = load i128, i128* %arrayidx4.i.242, align 16, !tbaa !2
  %48 = load i128, i128* %arrayidx7.i.245, align 16, !tbaa !2
  %sub14.i = sub i128 %add4.i.112, %48
  %49 = load i128, i128* %arrayidx10.i.248, align 16, !tbaa !2
  %shr.i.i = lshr i128 %sub14.i, 64
  %sub17.i = add i128 %mul9.i.123, 162259276829231810126851331852288
  %add.i.i.90 = sub i128 %sub17.i, %49
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
  %add16.i.i = sub i128 %sub.i.115, %46
  %add50.i.i = add i128 %add16.i.i, %conv48.i.i
  %sub70.i.i = sub i128 %add50.i.i, %conv68.i.i
  %and71.i.i = and i64 %or.i.i, 4294967295
  %conv72.i.i = zext i64 %and71.i.i to i128
  %and75.i.i = and i64 %or.i.i, -4294967295
  %conv76.i.i = zext i64 %and75.i.i to i128
  %sub78.i.i = sub nsw i128 %add47.i.i, %conv76.i.i
  %shr80.i.i = lshr i128 %sub70.i.i, 64
  %sub11.i = add i128 %mul3.i.119, 1460333491462920270524206387560447
  %add19.i.i.92 = sub i128 %sub11.i, %47
  %sub54.i.i = sub i128 %add19.i.i.92, %shl52.i.i
  %sub74.i.i = sub i128 %sub54.i.i, %conv72.i.i
  %add84.i.i = add i128 %sub74.i.i, %shr80.i.i
  %shr90.i.i = lshr i128 %add84.i.i, 64
  %add94.i.i = add nuw nsw i128 %add13.i.i, %shr90.i.i
  %shr100.i.i = lshr i128 %add94.i.i, 64
  %add104.i.i = add nsw i128 %sub78.i.i, %shr100.i.i
  %conv2.i = and i128 %sub70.i.i, 18446744073709551615
  %mul.i.96 = mul nuw i128 %conv2.i, %conv.i.282
  %shr.i.97 = lshr i128 %mul.i.96, 64
  %conv5.i.98 = and i128 %mul.i.96, 18446744073709551615
  store i128 %conv5.i.98, i128* %arraydecay12, align 16, !tbaa !2
  %conv12.i.101 = and i128 %add84.i.i, 18446744073709551615
  %mul13.i.102 = mul nuw i128 %conv12.i.101, %conv.i.282
  %shr15.i.103 = lshr i128 %mul13.i.102, 64
  %conv17.i.104 = and i128 %mul13.i.102, 18446744073709551615
  %mul25.i = mul nuw i128 %conv2.i, %conv12.i.288
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add.i.105 = add nuw nsw i128 %conv29.i, %shr.i.97
  %add31.i = add nuw nsw i128 %add.i.105, %conv17.i.104
  store i128 %add31.i, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %conv38.i = and i128 %add94.i.i, 18446744073709551615
  %mul39.i = mul nuw i128 %conv38.i, %conv.i.282
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv12.i.101, %conv12.i.288
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %mul66.i = mul nuw i128 %conv2.i, %conv27.i.296
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %add34.i.107 = add nuw nsw i128 %conv70.i, %shr27.i
  %add45.i = add nuw nsw i128 %add34.i.107, %shr15.i.103
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  store i128 %add72.i, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %conv79.i = and i128 %add104.i.i, 18446744073709551615
  %mul80.i = mul nuw i128 %conv79.i, %conv.i.282
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv12.i.288
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv12.i.101, %conv27.i.296
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %mul121.i = mul nuw i128 %conv2.i, %conv42.i.304
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %add61.i = add nuw nsw i128 %conv125.i, %shr68.i
  %add75.i = add nuw nsw i128 %add61.i, %shr54.i
  %add86.i = add nuw nsw i128 %add75.i, %conv111.i
  %add99.i = add nuw nsw i128 %add86.i, %shr41.i
  %add113.i = add nuw nsw i128 %add99.i, %conv97.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  store i128 %add127.i, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %mul135.i = mul nuw i128 %conv79.i, %conv12.i.288
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv38.i, %conv27.i.296
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %mul162.i = mul nuw i128 %conv12.i.101, %conv42.i.304
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr123.i
  %add116.i = add nuw nsw i128 %add102.i, %conv166.i
  %add130.i = add nuw nsw i128 %add116.i, %shr95.i
  %add141.i = add nuw nsw i128 %add130.i, %conv152.i
  %add154.i = add nuw nsw i128 %add141.i, %shr82.i
  %add168.i = add nuw nsw i128 %add154.i, %conv139.i
  %mul176.i = mul nuw i128 %conv79.i, %conv27.i.296
  %shr178.i = lshr i128 %mul176.i, 64
  %conv180.i = and i128 %mul176.i, 18446744073709551615
  %mul189.i = mul nuw i128 %conv38.i, %conv42.i.304
  %shr191.i = lshr i128 %mul189.i, 64
  %conv193.i = and i128 %mul189.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr150.i, %shr164.i
  %add171.i = add nuw nsw i128 %add157.i, %conv193.i
  %add182.i = add nuw nsw i128 %add171.i, %shr137.i
  %add195.i = add nuw nsw i128 %add182.i, %conv180.i
  %add198.i = add nuw nsw i128 %shr178.i, %shr191.i
  %mul203.i = mul nuw i128 %conv79.i, %conv42.i.304
  %shr205.i = lshr i128 %mul203.i, 64
  %conv207.i = and i128 %mul203.i, 18446744073709551615
  %add209.i = add nuw nsw i128 %add198.i, %conv207.i
  %mul.i.84 = mul nuw i128 %conv.i.738, %conv.i.738
  %shr.i = lshr i128 %mul.i.84, 64
  %mul13.i = mul nuw i128 %conv22.i.752, %conv.i.738
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %mul28.i = mul nuw i128 %conv63.i.771, %conv.i.738
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %mul43.i = mul nuw i128 %conv118.i.795, %conv.i.738
  %shr45.i = lshr i128 %mul43.i, 64
  %conv47.i = and i128 %mul43.i, 18446744073709551615
  %mul56.i = mul nuw i128 %conv63.i.771, %conv22.i.752
  %shr58.i = lshr i128 %mul56.i, 64
  %conv60.i = and i128 %mul56.i, 18446744073709551615
  %add49.i = add nuw nsw i128 %conv60.i, %shr30.i
  %add62.i = add nuw nsw i128 %add49.i, %conv47.i
  %mul64.i = shl nuw nsw i128 %add62.i, 1
  %add67.i = add nuw nsw i128 %shr45.i, %shr58.i
  %mul72.i = mul nuw i128 %conv22.i.752, %conv22.i.752
  %shr74.i = lshr i128 %mul72.i, 64
  %conv76.i = and i128 %mul72.i, 18446744073709551615
  %add78.i = add nuw nsw i128 %mul36.i, %conv76.i
  %add81.i = add nuw nsw i128 %mul64.i, %shr74.i
  %mul86.i = mul nuw i128 %conv118.i.795, %conv22.i.752
  %shr88.i = lshr i128 %mul86.i, 64
  %conv90.i = and i128 %mul86.i, 18446744073709551615
  %add92.i = add nuw nsw i128 %add67.i, %conv90.i
  %mul94.i = shl nuw nsw i128 %add92.i, 1
  %mul101.i = mul nuw i128 %conv118.i.795, %conv63.i.771
  %shr103.i = lshr i128 %mul101.i, 64
  %conv105.i = and i128 %mul101.i, 18446744073709551615
  %add107.i = add nuw nsw i128 %conv105.i, %shr88.i
  %mul109.i = shl nuw nsw i128 %add107.i, 1
  %add114.i = shl nuw nsw i128 %shr103.i, 1
  %mul119.i = mul nuw i128 %conv63.i.771, %conv63.i.771
  %shr121.i = lshr i128 %mul119.i, 64
  %conv123.i = and i128 %mul119.i, 18446744073709551615
  %add125.i = add nuw nsw i128 %mul94.i, %conv123.i
  %add128.i = add nuw nsw i128 %mul109.i, %shr121.i
  %mul133.i = mul nuw i128 %conv118.i.795, %conv118.i.795
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
  %50 = load i128, i128* %arraydecay12, align 16, !tbaa !2
  %add.i.73 = add i128 %50, 1180591620717411303232
  %51 = load i128, i128* %arrayidx2.i.932, align 16, !tbaa !2
  %add2.i = add i128 %51, 1180591621816922931200
  %52 = load i128, i128* %arrayidx5.i.935, align 16, !tbaa !2
  %add4.i = add i128 %52, 1180591620717411303424
  %53 = load i128, i128* %arrayidx8.i.938, align 16, !tbaa !2
  %add6.i.76 = add i128 %53, 1180591619343021768768
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
  call void @llvm.lifetime.end(i64 64, i8* %1) #1
  call void @llvm.lifetime.end(i64 128, i8* %0) #1
  ret void
}

declare void @ec_GFp_nistp_points_make_affine_internal(i64, i8*, i64, i8*, void (i8*)*, i32 (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @smallfelem_one(i64* nocapture %out) #0 {
entry:
  store i64 1, i64* %out, align 8, !tbaa !16
  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1
  %0 = bitcast i64* %arrayidx1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @smallfelem_is_zero_int(i8* nocapture readonly %small) #4 {
entry:
  %0 = bitcast i8* %small to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !16
  %arrayidx1.i = getelementptr inbounds i8, i8* %small, i64 8
  %2 = bitcast i8* %arrayidx1.i to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !16
  %or.i = or i64 %3, %1
  %arrayidx2.i = getelementptr inbounds i8, i8* %small, i64 16
  %4 = bitcast i8* %arrayidx2.i to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !16
  %or3.i = or i64 %or.i, %5
  %arrayidx4.i = getelementptr inbounds i8, i8* %small, i64 24
  %6 = bitcast i8* %arrayidx4.i to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !16
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
  %0 = load i64, i64* %in, align 8, !tbaa !16
  store i64 %0, i64* %out, align 8, !tbaa !16
  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !16
  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %1, i64* %arrayidx3, align 8, !tbaa !16
  %arrayidx4 = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !16
  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %2, i64* %arrayidx5, align 8, !tbaa !16
  %arrayidx6 = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !16
  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %3, i64* %arrayidx7, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_square_contract(i64* nocapture %out, i64* nocapture readonly %in) #0 {
entry:
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = load i64, i64* %in, align 8, !tbaa !16
  %conv.i = zext i64 %1 to i128
  %mul.i = mul nuw i128 %conv.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  %arrayidx11.i = getelementptr inbounds i64, i64* %in, i64 1
  %2 = load i64, i64* %arrayidx11.i, align 8, !tbaa !16
  %conv12.i = zext i64 %2 to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = shl i128 %mul13.i, 1
  %factor.i = and i128 %conv17.i, 36893488147419103230
  %add21.i = add nuw nsw i128 %factor.i, %shr.i
  %arrayidx26.i = getelementptr inbounds i64, i64* %in, i64 2
  %3 = load i64, i64* %arrayidx26.i, align 8, !tbaa !16
  %conv27.i = zext i64 %3 to i128
  %mul28.i = mul nuw i128 %conv27.i, %conv.i
  %shr30.i = lshr i128 %mul28.i, 64
  %conv32.i = and i128 %mul28.i, 18446744073709551615
  %add34.i = add nuw nsw i128 %conv32.i, %shr15.i
  %mul36.i = shl nuw nsw i128 %add34.i, 1
  %arrayidx41.i = getelementptr inbounds i64, i64* %in, i64 3
  %4 = load i64, i64* %arrayidx41.i, align 8, !tbaa !16
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
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = load i64, i64* %in1, align 8, !tbaa !16
  %conv.i = zext i64 %1 to i128
  %2 = load i64, i64* %in2, align 8, !tbaa !16
  %conv2.i = zext i64 %2 to i128
  %mul.i = mul nuw i128 %conv2.i, %conv.i
  %shr.i = lshr i128 %mul.i, 64
  %conv5.i = and i128 %mul.i, 18446744073709551615
  %arrayidx11.i = getelementptr inbounds i64, i64* %in2, i64 1
  %3 = load i64, i64* %arrayidx11.i, align 8, !tbaa !16
  %conv12.i = zext i64 %3 to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %shr15.i = lshr i128 %mul13.i, 64
  %conv17.i = and i128 %mul13.i, 18446744073709551615
  %add.i = add nuw nsw i128 %conv17.i, %shr.i
  %arrayidx21.i = getelementptr inbounds i64, i64* %in1, i64 1
  %4 = load i64, i64* %arrayidx21.i, align 8, !tbaa !16
  %conv22.i = zext i64 %4 to i128
  %mul25.i = mul nuw i128 %conv22.i, %conv2.i
  %shr27.i = lshr i128 %mul25.i, 64
  %conv29.i = and i128 %mul25.i, 18446744073709551615
  %add31.i = add nuw nsw i128 %add.i, %conv29.i
  %arrayidx37.i = getelementptr inbounds i64, i64* %in2, i64 2
  %5 = load i64, i64* %arrayidx37.i, align 8, !tbaa !16
  %conv38.i = zext i64 %5 to i128
  %mul39.i = mul nuw i128 %conv38.i, %conv.i
  %shr41.i = lshr i128 %mul39.i, 64
  %conv43.i = and i128 %mul39.i, 18446744073709551615
  %mul52.i = mul nuw i128 %conv22.i, %conv12.i
  %shr54.i = lshr i128 %mul52.i, 64
  %conv56.i = and i128 %mul52.i, 18446744073709551615
  %arrayidx62.i = getelementptr inbounds i64, i64* %in1, i64 2
  %6 = load i64, i64* %arrayidx62.i, align 8, !tbaa !16
  %conv63.i = zext i64 %6 to i128
  %mul66.i = mul nuw i128 %conv63.i, %conv2.i
  %shr68.i = lshr i128 %mul66.i, 64
  %conv70.i = and i128 %mul66.i, 18446744073709551615
  %arrayidx78.i = getelementptr inbounds i64, i64* %in2, i64 3
  %7 = load i64, i64* %arrayidx78.i, align 8, !tbaa !16
  %conv79.i = zext i64 %7 to i128
  %mul80.i = mul nuw i128 %conv79.i, %conv.i
  %shr82.i = lshr i128 %mul80.i, 64
  %conv84.i = and i128 %mul80.i, 18446744073709551615
  %mul93.i = mul nuw i128 %conv38.i, %conv22.i
  %shr95.i = lshr i128 %mul93.i, 64
  %conv97.i = and i128 %mul93.i, 18446744073709551615
  %mul107.i = mul nuw i128 %conv63.i, %conv12.i
  %shr109.i = lshr i128 %mul107.i, 64
  %conv111.i = and i128 %mul107.i, 18446744073709551615
  %arrayidx117.i = getelementptr inbounds i64, i64* %in1, i64 3
  %8 = load i64, i64* %arrayidx117.i, align 8, !tbaa !16
  %conv118.i = zext i64 %8 to i128
  %mul121.i = mul nuw i128 %conv118.i, %conv2.i
  %shr123.i = lshr i128 %mul121.i, 64
  %conv125.i = and i128 %mul121.i, 18446744073709551615
  %mul135.i = mul nuw i128 %conv79.i, %conv22.i
  %shr137.i = lshr i128 %mul135.i, 64
  %conv139.i = and i128 %mul135.i, 18446744073709551615
  %mul148.i = mul nuw i128 %conv63.i, %conv38.i
  %shr150.i = lshr i128 %mul148.i, 64
  %conv152.i = and i128 %mul148.i, 18446744073709551615
  %add157.i = add nuw nsw i128 %shr137.i, %shr150.i
  %mul162.i = mul nuw i128 %conv118.i, %conv12.i
  %shr164.i = lshr i128 %mul162.i, 64
  %conv166.i = and i128 %mul162.i, 18446744073709551615
  %add102.i = add nuw nsw i128 %shr109.i, %shr95.i
  %add116.i = add nuw nsw i128 %add102.i, %conv152.i
  %add130.i = add nuw nsw i128 %add116.i, %shr82.i
  %add141.i = add nuw nsw i128 %add130.i, %conv139.i
  %add154.i = add nuw nsw i128 %add141.i, %shr123.i
  %add168.i = add nuw nsw i128 %add154.i, %conv166.i
  %mul176.i = mul nuw i128 %conv79.i, %conv63.i
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
  %arraydecay1 = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 0
  %add.i.4 = add nuw nsw i128 %conv5.i, 1267650600228229401427983728624
  %add3.i = or i128 %add31.i, 1267650600228229401496703205376
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 1
  %add34.i = add nuw nsw i128 %shr15.i, 1267650600228229401427983728656
  %add45.i = add nuw nsw i128 %add34.i, %shr27.i
  %add58.i = add nuw nsw i128 %add45.i, %conv56.i
  %add72.i = add nuw nsw i128 %add58.i, %conv43.i
  %add6.i = add nuw nsw i128 %add72.i, %conv70.i
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 2
  %add61.i = add nuw nsw i128 %shr54.i, 1267650600228229401427983728656
  %add75.i = add nuw nsw i128 %add61.i, %shr41.i
  %add86.i = add nuw nsw i128 %add75.i, %conv97.i
  %add99.i = add nuw nsw i128 %add86.i, %shr68.i
  %add113.i = add nuw nsw i128 %add99.i, %conv111.i
  %add127.i = add nuw nsw i128 %add113.i, %conv84.i
  %add9.i = add i128 %add127.i, %conv125.i
  %arrayidx10.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 3
  %shl.i.i = shl nuw nsw i128 %add195.i, 32
  %add.i.i = add i128 %add168.i, %shl.i.i
  %add3.i.i = add i128 %add.i.i, %add.i.4
  %sub.i.i = sub i128 %add9.i, %add.i.i
  %sub7.i.i = sub nsw i128 %add195.i, %shr205.i
  %add9.i.i = add nsw i128 %sub7.i.i, %add3.i
  %sub11.i.i = sub nsw i128 %add6.i, %sub7.i.i
  %shl13.i.i = shl i128 %add168.i, 32
  %sub15.i.i = sub i128 %add9.i.i, %shl13.i.i
  %add19.i.i = add i128 %sub.i.i, %shl13.i.i
  %sub23.i.i = sub i128 %sub11.i.i, %shl.i.i
  %sub26.i.i = sub i128 %add3.i.i, %add209.i
  %shl28.i.i = shl nuw nsw i128 %add209.i, 32
  %sub30.i.i = sub i128 %sub26.i.i, %shl28.i.i
  %shl32.i.i = shl nuw nsw i128 %add209.i, 33
  %add34.i.i = add i128 %sub15.i.i, %shl32.i.i
  store i128 %add34.i.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %mul.i.i = shl nuw nsw i128 %add209.i, 1
  %add37.i.i = add i128 %sub23.i.i, %mul.i.i
  %sub41.i.i = sub i128 %add19.i.i, %shl28.i.i
  %9 = mul nsw i128 %shr205.i, -4294967297
  %sub48.i.i = add i128 %9, %sub30.i.i
  store i128 %sub48.i.i, i128* %arraydecay1, align 16, !tbaa !2
  %shl50.i.i = shl nuw nsw i128 %shr205.i, 33
  %add52.i.i = add i128 %add37.i.i, %shl50.i.i
  store i128 %add52.i.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %mul54.i.i = mul nuw nsw i128 %shr205.i, 3
  %add56.i.i = add i128 %sub41.i.i, %mul54.i.i
  store i128 %add56.i.i, i128* %arrayidx10.i, align 16, !tbaa !2
  call fastcc void @felem_contract(i64* %out, i128* %arraydecay1)
  call void @llvm.lifetime.end(i64 64, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @smallfelem_inv_contract(i64* nocapture %out, i64* nocapture readonly %in) #0 {
entry:
  %tmp = alloca [4 x i128], align 16
  %0 = bitcast [4 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %arraydecay = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 0
  %1 = load i64, i64* %in, align 8, !tbaa !16
  %conv.i = zext i64 %1 to i128
  store i128 %conv.i, i128* %arraydecay, align 16, !tbaa !2
  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1
  %2 = load i64, i64* %arrayidx2.i, align 8, !tbaa !16
  %conv3.i = zext i64 %2 to i128
  %arrayidx4.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 1
  store i128 %conv3.i, i128* %arrayidx4.i, align 16, !tbaa !2
  %arrayidx5.i = getelementptr inbounds i64, i64* %in, i64 2
  %3 = load i64, i64* %arrayidx5.i, align 8, !tbaa !16
  %conv6.i = zext i64 %3 to i128
  %arrayidx7.i = getelementptr inbounds [4 x i128], [4 x i128]* %tmp, i64 0, i64 2
  store i128 %conv6.i, i128* %arrayidx7.i, align 16, !tbaa !2
  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 3
  %4 = load i64, i64* %arrayidx8.i, align 8, !tbaa !16
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
  %13 = load i64, i64* %arrayidx14, align 8, !tbaa !16
  %and15 = and i64 %13, %dec
  %or18 = or i64 %12, %and15
  store i64 %or18, i64* %arrayidx17, align 8, !tbaa !16
  %arrayidx14.1 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 1
  %14 = load i64, i64* %arrayidx14.1, align 8, !tbaa !16
  %and15.1 = and i64 %14, %dec
  %or18.1 = or i64 %11, %and15.1
  store i64 %or18.1, i64* %arrayidx17.1, align 8, !tbaa !16
  %arrayidx14.2 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 2
  %15 = load i64, i64* %arrayidx14.2, align 8, !tbaa !16
  %and15.2 = and i64 %15, %dec
  %or18.2 = or i64 %10, %and15.2
  store i64 %or18.2, i64* %arrayidx17.2, align 8, !tbaa !16
  %arrayidx14.3 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 3
  %16 = load i64, i64* %arrayidx14.3, align 8, !tbaa !16
  %and15.3 = and i64 %16, %dec
  %or18.3 = or i64 %9, %and15.3
  store i64 %or18.3, i64* %arrayidx17.3, align 8, !tbaa !16
  %arrayidx14.4 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 4
  %17 = load i64, i64* %arrayidx14.4, align 8, !tbaa !16
  %and15.4 = and i64 %17, %dec
  %or18.4 = or i64 %8, %and15.4
  store i64 %or18.4, i64* %arrayidx17.4, align 8, !tbaa !16
  %arrayidx14.5 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 5
  %18 = load i64, i64* %arrayidx14.5, align 8, !tbaa !16
  %and15.5 = and i64 %18, %dec
  %or18.5 = or i64 %7, %and15.5
  store i64 %or18.5, i64* %arrayidx17.5, align 8, !tbaa !16
  %arrayidx14.6 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 6
  %19 = load i64, i64* %arrayidx14.6, align 8, !tbaa !16
  %and15.6 = and i64 %19, %dec
  %or18.6 = or i64 %6, %and15.6
  store i64 %or18.6, i64* %arrayidx17.6, align 8, !tbaa !16
  %arrayidx14.7 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 7
  %20 = load i64, i64* %arrayidx14.7, align 8, !tbaa !16
  %and15.7 = and i64 %20, %dec
  %or18.7 = or i64 %5, %and15.7
  store i64 %or18.7, i64* %arrayidx17.7, align 8, !tbaa !16
  %arrayidx14.8 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 8
  %21 = load i64, i64* %arrayidx14.8, align 8, !tbaa !16
  %and15.8 = and i64 %21, %dec
  %or18.8 = or i64 %4, %and15.8
  store i64 %or18.8, i64* %arrayidx17.8, align 8, !tbaa !16
  %arrayidx14.9 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 9
  %22 = load i64, i64* %arrayidx14.9, align 8, !tbaa !16
  %and15.9 = and i64 %22, %dec
  %or18.9 = or i64 %3, %and15.9
  store i64 %or18.9, i64* %arrayidx17.9, align 8, !tbaa !16
  %arrayidx14.10 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 10
  %23 = load i64, i64* %arrayidx14.10, align 8, !tbaa !16
  %and15.10 = and i64 %23, %dec
  %or18.10 = or i64 %2, %and15.10
  store i64 %or18.10, i64* %arrayidx17.10, align 8, !tbaa !16
  %arrayidx14.11 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 11
  %24 = load i64, i64* %arrayidx14.11, align 8, !tbaa !16
  %and15.11 = and i64 %24, %dec
  %or18.11 = or i64 %1, %and15.11
  store i64 %or18.11, i64* %arrayidx17.11, align 8, !tbaa !16
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
!6 = !{!7, !9, i64 112}
!7 = !{!"ec_group_st", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !9, i64 36, !4, i64 40, !8, i64 48, !10, i64 56, !8, i64 64, !4, i64 72, !8, i64 96, !8, i64 104, !9, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !4, i64 152, !4, i64 160}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!7, !8, i64 136}
!12 = !{!13, !8, i64 16}
!13 = !{!"ec_point_st", !8, i64 0, !9, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40}
!14 = !{!13, !8, i64 24}
!15 = !{!13, !8, i64 32}
!16 = !{!10, !10, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!7, !8, i64 8}
!20 = !{!7, !8, i64 16}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !22}
!24 = !{!25, !9, i64 3072}
!25 = !{!"nistp256_pre_comp_st", !4, i64 0, !9, i64 3072, !8, i64 3080}
!26 = !{!25, !8, i64 3080}
!27 = !{!7, !4, i64 152}
!28 = distinct !{!28, !22}
