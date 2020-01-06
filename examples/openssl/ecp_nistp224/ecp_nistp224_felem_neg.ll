; ./config no-asm enable-ec_nistp_64_gcc_128
; make

; ModuleID = 'crypto/ec/ecp_nistp224.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_method_st = type { i32, i32, i32 (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, void (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, void (%struct.ec_point_st*)*, i32 (%struct.ec_point_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)*, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i64 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, i8*, i64)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)*, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* }
%struct.ec_group_st = type { %struct.ec_method_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, i32, i32, i32, i8*, i64, %struct.bignum_st*, [6 x i32], %struct.bignum_st*, %struct.bignum_st*, i32, i8*, i8*, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)*, %struct.bn_mont_ctx_st*, i32, %union.anon }
%struct.ec_point_st = type { %struct.ec_method_st*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, i32 }
%struct.bignum_st = type opaque
%struct.bignum_ctx = type opaque
%struct.bn_mont_ctx_st = type opaque
%union.anon = type { %struct.nistp224_pre_comp_st* }
%struct.nistp224_pre_comp_st = type { [2 x [16 x [3 x [4 x i64]]]], i32, i8* }
%struct.ec_key_st = type { %struct.ec_key_method_st*, %struct.engine_st*, i32, %struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, i32, i32, i32, %struct.crypto_ex_data_st, i8* }
%struct.ec_key_method_st = type { i8*, i32, i32 (%struct.ec_key_st*)*, void (%struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.ec_group_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_st*)*, i32 (%struct.ec_key_st*, %struct.ec_point_st*)*, i32 (%struct.ec_key_st*)*, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (%struct.ec_key_st*, %struct.bignum_ctx*, %struct.bignum_st**, %struct.bignum_st**)*, %struct.ECDSA_SIG_st* (i8*, i32, %struct.bignum_st*, %struct.bignum_st*, %struct.ec_key_st*)*, i32 (i32, i8*, i32, i8*, i32, %struct.ec_key_st*)*, i32 (i8*, i32, %struct.ECDSA_SIG_st*, %struct.ec_key_st*)* }
%struct.ECDSA_SIG_st = type { %struct.bignum_st*, %struct.bignum_st* }
%struct.engine_st = type opaque
%struct.crypto_ex_data_st = type { %struct.stack_st_void* }
%struct.stack_st_void = type opaque

@EC_GFp_nistp224_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ec_GFp_nistp224_group_init, void (%struct.ec_group_st*)* @ec_GFp_simple_group_finish, void (%struct.ec_group_st*)* @ec_GFp_simple_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ec_GFp_nist_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp224_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_set_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_get_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp224_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* @ec_GFp_nistp224_points_mul, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_nistp224_precompute_mult, i32 (%struct.ec_group_st*)* @ec_GFp_nistp224_have_precompute_mult, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i64 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ecdh_simple_compute_key, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"crypto/ec/ecp_nistp224.c\00", align 1
@nistp224_curve_params = internal constant [5 x [28 x i8]] [[28 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\00\00\00\01", [28 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE", [28 x i8] c"\B4\05\0A\85\0C\04\B3\AB\F5A2VPD\B0\B7\D7\BF\D8\BA'\0B9C#U\FF\B4", [28 x i8] c"\B7\0E\0C\BDk\B4\BF\7F2\13\90\B9J\03\C1\D3V\C2\11\2242\80\D6\11\5C\1D!", [28 x i8] c"\BD7c\88\B5\F7#\FBL\22\DF\E6\CDCu\A0Z\07GdD\D5\81\99\85\00~4"], align 16
@gmul = internal constant [2 x [16 x [3 x [4 x i64]]]] [[16 x [3 x [4 x i64]]] [[3 x [4 x i64]] zeroinitializer, [3 x [4 x i64]] [[4 x i64] [i64 14215405738138913, i64 54557040081707572, i64 35802381656082947, i64 51525368618398911], [4 x i64] [i64 60096666400751156, i64 33108880804766788, i64 70733931823418691, i64 53259671233230627], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 71378600081669097, i64 53101353446198878, i64 9643677127944771, i64 8806794754890693], [4 x i64] [i64 11787557387672643, i64 66683595736409698, i64 62071344511258832, i64 42804938177827617], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 30749386935733944, i64 24100114246361841, i64 6449338927450687, i64 67233816825210696], [4 x i64] [i64 68010914192828013, i64 48399079136688607, i64 13854281485496300, i64 26093033259862551], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 1760964184319715, i64 41090027584401568, i64 67532174447950347, i64 1294857651850942], [4 x i64] [i64 32950441342316381, i64 37393468670956624, i64 36547193909475078, i64 29580121932532827], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 66029711509099974, i64 2357355352064724, i64 62261198381500593, i64 41424473139086755], [4 x i64] [i64 44747090636954559, i64 18408407550890224, i64 71473164347156647, i64 23149671595181610], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 36644373851745395, i64 45067346634300687, i64 15269155078675364, i64 55047824290902620], [4 x i64] [i64 52870985989664036, i64 62482831525149420, i64 55050187086899839, i64 8720744547476036], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 21566442933681569, i64 58858973370079675, i64 71931372512054140, i64 10714412583876681], [4 x i64] [i64 19370324697435552, i64 57908507923887355, i64 42340026435320969, i64 71608876929167634], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 63768024459850029, i64 56043627304934510, i64 34260102009486412, i64 1626393528605511], [4 x i64] [i64 44894586669579834, i64 6862401668738010, i64 28182317526089046, i64 32234762541237140], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 1241452496952329, i64 32837518891159477, i64 51964745771230176, i64 18517456905243677], [4 x i64] [i64 64715081076890241, i64 17397160098818133, i64 8160769644386790, i64 4044017734465703], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 61557443266865279, i64 19193158631805686, i64 63114965174238904, i64 57153014074658596], [4 x i64] [i64 33295952022928805, i64 6856166956736580, i64 41238105016811088, i64 55172608173881473], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 51955431143051104, i64 48951545393908131, i64 7332110390559962, i64 6585796058786180], [4 x i64] [i64 33542384203444382, i64 10058797968965999, i64 21426027006873135, i64 63791559461639017], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 24521654599544755, i64 48950835715048786, i64 56486885804635390, i64 30538161968627171], [4 x i64] [i64 71951289672484434, i64 50802807143032121, i64 45762139208909556, i64 11379042128140896], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 18220922147849391, i64 2697206093288044, i64 53180879631546064, i64 9383343528083543], [4 x i64] [i64 39346355303216222, i64 67866619231686511, i64 37772318539245749, i64 65271359694450105], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 49944528290716795, i64 48476314201006552, i64 7926935861973702, i64 56315968460949481], [4 x i64] [i64 11418713148600607, i64 2383810739544042, i64 69034399404693108, i64 8489243135795900], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 44809056590259435, i64 1914876046564940, i64 71801422434380147, i64 68027829451324504], [4 x i64] [i64 62240249598010623, i64 62677691397309147, i64 32834184294422163, i64 67174968371586392], [4 x i64] [i64 1, i64 0, i64 0, i64 0]]], [16 x [3 x [4 x i64]]] [[3 x [4 x i64]] zeroinitializer, [3 x [4 x i64]] [[4 x i64] [i64 42332462233023828, i64 42243062983880493, i64 58027427525010455, i64 59490963410320433], [4 x i64] [i64 37661422047375710, i64 9350132935584427, i64 45389832818299846, i64 15017233711959853], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 7398951664410213, i64 60475672073594172, i64 65189123520720006, i64 28643743500374243], [4 x i64] [i64 70475444581864262, i64 68053533660433071, i64 55479242755132331, i64 731566529102474], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 33904912311162351, i64 37915670572403972, i64 61931713228770714, i64 59556603249994803], [4 x i64] [i64 12229322042053423, i64 53667417733410291, i64 62062863872954880, i64 59213258449723648], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 41174889044835069, i64 48461860850250128, i64 40209832863945724, i64 36688508243763925], [4 x i64] [i64 39821100915975713, i64 10027667342093709, i64 49411097451828917, i64 61039442818226922], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 33400705216086256, i64 65773690130261649, i64 29591350155084583, i64 27904408962553022], [4 x i64] [i64 19878918007644842, i64 39760458290838277, i64 8882603977681800, i64 64454190132739665], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 36697159835102230, i64 575617900413498, i64 29339469010895205, i64 5910771084751601], [4 x i64] [i64 14138852356790521, i64 20623455015356372, i64 54424934377855695, i64 3323637626710203], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 41284609216738756, i64 23348383899184552, i64 57208799144709267, i64 18021335613985331], [4 x i64] [i64 71519866587154834, i64 331650310714647, i64 7414810685154214, i64 1962338185252335], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 20952864667040953, i64 53105343129885304, i64 17663783448724262, i64 61941988514011822], [4 x i64] [i64 58374853219681168, i64 25954017644378996, i64 43623027367233463, i64 42061554624494661], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 18866340853038698, i64 41174294738871394, i64 69059630486859566, i64 53229817573778734], [4 x i64] [i64 1229341092743632, i64 11808623625303923, i64 32750466386186109, i64 7063500670951355], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 25736141242682233, i64 20639221590945830, i64 63648179904700148, i64 55382561624164830], [4 x i64] [i64 13648133609350424, i64 13987049300520376, i64 20241014388399759, i64 56125148414327283], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 16887184962971910, i64 20148389049946259, i64 62590757308324646, i64 11679895284435717], [4 x i64] [i64 31555794398004138, i64 31652418437296597, i64 5565067883491094, i64 42948060693069400], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 4484933557700496, i64 12797448631115054, i64 41696350946270356, i64 52844113124987323], [4 x i64] [i64 50320894428189032, i64 4608360979303795, i64 45000129293402240, i64 34760599269173168], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 48724297006178995, i64 67574095596594845, i64 30183651778200389, i64 18251160955299033], [4 x i64] [i64 38854541824519485, i64 43405894546881848, i64 25178753450613532, i64 62159745794163690], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 48681561500723115, i64 21533324478502711, i64 55818039270904196, i64 3040451452578746], [4 x i64] [i64 30400509585702766, i64 71720626911765290, i64 7308408247352024, i64 1419608241050629], [4 x i64] [i64 1, i64 0, i64 0, i64 0]], [3 x [4 x i64]] [[4 x i64] [i64 66796554085571222, i64 26158445393921034, i64 33651971713134491, i64 32657111288886622], [4 x i64] [i64 14152348376426694, i64 50782694041125259, i64 40839628717987281, i64 17443819558305038], [4 x i64] [i64 1, i64 0, i64 0, i64 0]]]], align 16

; Function Attrs: nounwind readnone uwtable
define %struct.ec_method_st* @EC_GFp_nistp224_method() #0 {
entry:
  ret %struct.ec_method_st* @EC_GFp_nistp224_method.ret
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp224_group_init(%struct.ec_group_st* %group) #1 {
entry:
  %call = tail call i32 @ec_GFp_simple_group_init(%struct.ec_group_st* %group) #4
  %a_is_minus3 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 13
  store i32 1, i32* %a_is_minus3, align 4, !tbaa !2
  ret i32 %call
}

declare void @ec_GFp_simple_group_finish(%struct.ec_group_st*) #2

declare void @ec_GFp_simple_group_clear_finish(%struct.ec_group_st*) #2

declare i32 @ec_GFp_nist_group_copy(%struct.ec_group_st*, %struct.ec_group_st*) #2

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp224_group_set_curve(%struct.ec_group_st* %group, %struct.bignum_st* %p, %struct.bignum_st* %a, %struct.bignum_st* %b, %struct.bignum_ctx* %ctx) #1 {
entry:
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %if.then, %entry
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx.addr.0) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #4
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #4
  %call6 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #4
  %cmp7 = icmp eq %struct.bignum_st* %call6, null
  br i1 %cmp7, label %err, label %if.end.9

if.end.9:                                         ; preds = %if.end.3
  %call10 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [28 x i8]], [5 x [28 x i8]]* @nistp224_curve_params, i64 0, i64 0, i64 0), i32 28, %struct.bignum_st* %call4) #4
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [28 x i8]], [5 x [28 x i8]]* @nistp224_curve_params, i64 0, i64 1, i64 0), i32 28, %struct.bignum_st* %call5) #4
  %call12 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [28 x i8]], [5 x [28 x i8]]* @nistp224_curve_params, i64 0, i64 2, i64 0), i32 28, %struct.bignum_st* %call6) #4
  %call13 = tail call i32 @BN_cmp(%struct.bignum_st* %call4, %struct.bignum_st* %p) #4
  %tobool = icmp eq i32 %call13, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.19

lor.lhs.false:                                    ; preds = %if.end.9
  %call14 = tail call i32 @BN_cmp(%struct.bignum_st* %call5, %struct.bignum_st* %a) #4
  %tobool15 = icmp eq i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false.16, label %if.then.19

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %call17 = tail call i32 @BN_cmp(%struct.bignum_st* %call6, %struct.bignum_st* %b) #4
  %tobool18 = icmp eq i32 %call17, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %if.end.9
  tail call void @ERR_put_error(i32 16, i32 225, i32 145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1298) #4
  br label %err

if.end.20:                                        ; preds = %lor.lhs.false.16
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_224, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !9
  %call21 = tail call i32 @ec_GFp_simple_group_set_curve(%struct.ec_group_st* %group, %struct.bignum_st* %p, %struct.bignum_st* %a, %struct.bignum_st* %b, %struct.bignum_ctx* %ctx.addr.0) #4
  br label %err

err:                                              ; preds = %if.end.3, %if.end.20, %if.then.19
  %ret.0 = phi i32 [ 0, %if.end.3 ], [ 0, %if.then.19 ], [ %call21, %if.end.20 ]
  tail call void @BN_CTX_end(%struct.bignum_ctx* %ctx.addr.0) #4
  tail call void @BN_CTX_free(%struct.bignum_ctx* %new_ctx.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %err
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then ]
  ret i32 %retval.0
}

declare i32 @ec_GFp_simple_group_get_curve(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_group_get_degree(%struct.ec_group_st*) #2

declare i32 @ec_group_simple_order_bits(%struct.ec_group_st*) #2

declare i32 @ec_GFp_simple_group_check_discriminant(%struct.ec_group_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_point_init(%struct.ec_point_st*) #2

declare void @ec_GFp_simple_point_finish(%struct.ec_point_st*) #2

declare void @ec_GFp_simple_point_clear_finish(%struct.ec_point_st*) #2

declare i32 @ec_GFp_simple_point_copy(%struct.ec_point_st*, %struct.ec_point_st*) #2

declare i32 @ec_GFp_simple_point_set_to_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #2

declare i32 @ec_GFp_simple_set_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_get_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_point_set_affine_coordinates(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp224_point_get_affine_coordinates(%struct.ec_group_st* %group, %struct.ec_point_st* %point, %struct.bignum_st* %x, %struct.bignum_st* %y, %struct.bignum_ctx* nocapture readnone %ctx) #1 {
entry:
  %z1 = alloca [4 x i64], align 16
  %z2 = alloca [4 x i64], align 16
  %x_in = alloca [4 x i64], align 16
  %y_in = alloca [4 x i64], align 16
  %x_out = alloca [4 x i64], align 16
  %y_out = alloca [4 x i64], align 16
  %0 = bitcast [4 x i64]* %z1 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #4
  %1 = bitcast [4 x i64]* %z2 to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #4
  %2 = bitcast [4 x i64]* %x_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #4
  %3 = bitcast [4 x i64]* %y_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #4
  %4 = bitcast [4 x i64]* %x_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #4
  %5 = bitcast [4 x i64]* %y_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #4
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* %group, %struct.ec_point_st* %point) #4
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 226, i32 106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1323) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 0
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %6 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !10
  %call1 = call fastcc i32 @BN_to_felem(i64* %arraydecay, %struct.bignum_st* %6)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %7 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !12
  %call4 = call fastcc i32 @BN_to_felem(i64* %arraydecay3, %struct.bignum_st* %7)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %cleanup, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [4 x i64], [4 x i64]* %z1, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !13
  %call8 = call fastcc i32 @BN_to_felem(i64* %arraydecay7, %struct.bignum_st* %8)
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %cleanup, label %if.end.11

if.end.11:                                        ; preds = %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [4 x i64], [4 x i64]* %z2, i64 0, i64 0
  call void @felem_inv(i64* %arraydecay12, i64* %arraydecay7)
  %9 = load i64, i64* %arraydecay12, align 16, !tbaa !14
  %mul.i = shl i64 %9, 1
  %arrayidx1.i = getelementptr inbounds [4 x i64], [4 x i64]* %z2, i64 0, i64 1
  %10 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %mul2.i = shl i64 %10, 1
  %arrayidx3.i = getelementptr inbounds [4 x i64], [4 x i64]* %z2, i64 0, i64 2
  %11 = load i64, i64* %arrayidx3.i, align 16, !tbaa !14
  %mul4.i = shl i64 %11, 1
  %conv.i = zext i64 %9 to i128
  %mul8.i = mul nuw i128 %conv.i, %conv.i
  %conv12.i = zext i64 %mul2.i to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %conv17.i = zext i64 %mul4.i to i128
  %mul18.i = mul nuw i128 %conv17.i, %conv.i
  %conv20.i = zext i64 %10 to i128
  %mul23.i = mul nuw i128 %conv20.i, %conv20.i
  %arrayidx25.i = getelementptr inbounds [4 x i64], [4 x i64]* %z2, i64 0, i64 3
  %12 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv26.i = zext i64 %12 to i128
  %conv27.i = zext i64 %mul.i to i128
  %mul28.i = mul nuw i128 %conv26.i, %conv27.i
  %mul32.i = mul nuw i128 %conv17.i, %conv20.i
  %add33.i = add i128 %mul32.i, %mul28.i
  %mul38.i = mul nuw i128 %conv26.i, %conv12.i
  %conv40.i = zext i64 %11 to i128
  %mul43.i = mul nuw i128 %conv40.i, %conv40.i
  %add44.i = add i128 %mul38.i, %mul43.i
  %mul49.i = mul nuw i128 %conv26.i, %conv17.i
  %mul55.i = mul nuw i128 %conv26.i, %conv26.i
  %add.i.63 = add i128 %mul8.i, -170141183460469231731687303715884072960
  %add3.i = add i128 %mul13.i, 170141183460469229370468033484042534912
  %shr.i = lshr i128 %mul55.i, 16
  %add14.i = add i128 %add44.i, %shr.i
  %and.i = shl i128 %mul55.i, 40
  %shl.i = and i128 %and.i, 72056494526300160
  %shr21.i = lshr i128 %mul49.i, 16
  %and25.i = shl i128 %mul49.i, 40
  %shl26.i = and i128 %and25.i, 72055395014672384
  %sub31.i = sub i128 %add3.i, %mul49.i
  %shr33.i = lshr i128 %add14.i, 16
  %add.i = add i128 %mul23.i, 170141183460469229370504062281061498880
  %add6.i = add i128 %add.i, %mul18.i
  %sub.i = sub i128 %add6.i, %mul55.i
  %add28.i = add i128 %sub.i, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %add40.i = add i128 %sub31.i, %shl38.i
  %sub43.i = sub i128 %add.i.63, %add14.i
  %shr45.i = lshr i128 %add35.i, 56
  %add17.i = add i128 %add33.i, %shr21.i
  %add23.i = add i128 %add17.i, %shl.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %add63.i = add i128 %add40.i, %shl61.i
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i.64 = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i.64, i64* %arraydecay7, align 16, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds [4 x i64], [4 x i64]* %z1, i64 0, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds [4 x i64], [4 x i64]* %z1, i64 0, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 16, !tbaa !14
  %conv91.i = trunc i128 %add85.i to i64
  %arrayidx92.i = getelementptr inbounds [4 x i64], [4 x i64]* %z1, i64 0, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !14
  %13 = load i64, i64* %arraydecay, align 16, !tbaa !14
  %conv.i.241 = zext i64 %13 to i128
  %conv2.i.242 = zext i64 %conv.i.64 to i128
  %mul.i.243 = mul nuw nsw i128 %conv2.i.242, %conv.i.241
  %conv7.i.245 = zext i64 %conv80.i to i128
  %mul8.i.246 = mul nuw nsw i128 %conv7.i.245, %conv.i.241
  %arrayidx9.i.247 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 1
  %14 = load i64, i64* %arrayidx9.i.247, align 8, !tbaa !14
  %conv10.i.248 = zext i64 %14 to i128
  %mul13.i.249 = mul nuw nsw i128 %conv10.i.248, %conv2.i.242
  %conv18.i.253 = zext i64 %conv88.i to i128
  %mul19.i.254 = mul nuw nsw i128 %conv18.i.253, %conv.i.241
  %mul24.i.255 = mul nuw nsw i128 %conv10.i.248, %conv7.i.245
  %arrayidx26.i.257 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 2
  %15 = load i64, i64* %arrayidx26.i.257, align 16, !tbaa !14
  %conv27.i.258 = zext i64 %15 to i128
  %mul30.i.259 = mul nuw nsw i128 %conv27.i.258, %conv2.i.242
  %mul37.i.264 = mul nuw nsw i128 %add85.i, %conv.i.241
  %mul42.i.265 = mul nuw nsw i128 %conv18.i.253, %conv10.i.248
  %mul48.i.267 = mul nuw nsw i128 %conv27.i.258, %conv7.i.245
  %arrayidx50.i.269 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 3
  %16 = load i64, i64* %arrayidx50.i.269, align 8, !tbaa !14
  %conv51.i.270 = zext i64 %16 to i128
  %mul54.i.271 = mul nuw nsw i128 %conv51.i.270, %conv2.i.242
  %mul61.i.274 = mul nuw nsw i128 %add85.i, %conv10.i.248
  %mul66.i.275 = mul nuw nsw i128 %conv27.i.258, %conv18.i.253
  %mul72.i.277 = mul nuw nsw i128 %conv51.i.270, %conv7.i.245
  %mul79.i.280 = mul nuw nsw i128 %add85.i, %conv27.i.258
  %mul84.i.281 = mul nuw nsw i128 %conv51.i.270, %conv18.i.253
  %add85.i.282 = add nuw nsw i128 %mul79.i.280, %mul84.i.281
  %mul91.i.284 = mul nuw nsw i128 %add85.i, %conv51.i.270
  %add.i.327 = add nsw i128 %mul.i.243, -170141183460469231731687303715884072960
  %shr.i.335 = lshr i128 %mul91.i.284, 16
  %add67.i.276 = add nuw nsw i128 %mul72.i.277, %mul66.i.275
  %add73.i.278 = add nuw nsw i128 %add67.i.276, %mul61.i.274
  %add14.i.336 = add nuw i128 %add73.i.278, %shr.i.335
  %and.i.337 = shl i128 %mul91.i.284, 40
  %shl.i.338 = and i128 %and.i.337, 72056494526300160
  %shr21.i.342 = lshr i128 %add85.i.282, 16
  %and25.i.344 = shl i128 %add85.i.282, 40
  %shl26.i.345 = and i128 %and25.i.344, 72056494526300160
  %shr33.i.348 = lshr i128 %add14.i.336, 16
  %add25.i.256 = add nuw i128 %mul24.i.255, 170141183460469229370504062281061498880
  %add31.i.260 = add i128 %add25.i.256, %mul19.i.254
  %add6.i.331 = add i128 %add31.i.260, %mul30.i.259
  %sub.i.340 = sub i128 %add6.i.331, %mul91.i.284
  %add28.i.346 = add i128 %sub.i.340, %shl26.i.345
  %add35.i.349 = add i128 %add28.i.346, %shr33.i.348
  %and37.i.350 = shl i128 %add14.i.336, 40
  %shl38.i.351 = and i128 %and37.i.350, 72056494526300160
  %sub43.i.353 = sub i128 %add.i.327, %add14.i.336
  %shr45.i.354 = lshr i128 %add35.i.349, 56
  %add43.i.266 = add nuw nsw i128 %mul48.i.267, %mul42.i.265
  %add49.i.268 = add nuw nsw i128 %add43.i.266, %mul54.i.271
  %add55.i.272 = add nuw nsw i128 %add49.i.268, %mul37.i.264
  %add17.i.339 = add nuw i128 %add55.i.272, %shl.i.338
  %add23.i.343 = add i128 %add17.i.339, %shr21.i.342
  %add47.i.355 = add i128 %add23.i.343, %shr45.i.354
  %and49.i.356 = and i128 %add35.i.349, 72057594037927935
  %shr51.i.357 = lshr i128 %add47.i.355, 56
  %and54.i.358 = and i128 %add47.i.355, 72057594037927935
  %shr56.i.359 = lshr i128 %add47.i.355, 72
  %add58.i.360 = add nuw nsw i128 %shr56.i.359, %and49.i.356
  %and60.i.361 = shl nuw nsw i128 %shr51.i.357, 40
  %shl61.i.362 = and i128 %and60.i.361, 72056494526300160
  %sub66.i.364 = sub i128 %sub43.i.353, %shr51.i.357
  %shr68.i.365 = lshr i128 %sub66.i.364, 56
  %add.i.250 = add nuw i128 %mul8.i.246, 170141183460469229370468033484042534912
  %add3.i.329 = add i128 %add.i.250, %mul13.i.249
  %sub31.i.347 = sub i128 %add3.i.329, %add85.i.282
  %add40.i.352 = add i128 %sub31.i.347, %shl38.i.351
  %add63.i.363 = add i128 %add40.i.352, %shl61.i.362
  %add70.i.366 = add i128 %add63.i.363, %shr68.i.365
  %sub66.tr.i.367 = trunc i128 %sub66.i.364 to i64
  %conv.i.368 = and i64 %sub66.tr.i.367, 72057594037927935
  store i64 %conv.i.368, i64* %arraydecay, align 16, !tbaa !14
  %shr75.i.369 = lshr i128 %add70.i.366, 56
  %add77.i.370 = add nuw nsw i128 %add58.i.360, %shr75.i.369
  %add70.tr.i.371 = trunc i128 %add70.i.366 to i64
  %conv80.i.372 = and i64 %add70.tr.i.371, 72057594037927935
  store i64 %conv80.i.372, i64* %arrayidx9.i.247, align 8, !tbaa !14
  %shr83.i.374 = lshr i128 %add77.i.370, 56
  %add85.i.375 = add nuw nsw i128 %shr83.i.374, %and54.i.358
  %add77.tr.i.376 = trunc i128 %add77.i.370 to i64
  %conv88.i.377 = and i64 %add77.tr.i.376, 72057594037927935
  store i64 %conv88.i.377, i64* %arrayidx26.i.257, align 16, !tbaa !14
  %conv91.i.379 = trunc i128 %add85.i.375 to i64
  store i64 %conv91.i.379, i64* %arrayidx50.i.269, align 8, !tbaa !14
  %arraydecay23 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  %shr.i.289 = lshr i64 %conv91.i.379, 56
  %sub.i.290 = sub nsw i64 %conv.i.368, %shr.i.289
  %shl.i.291 = shl nuw nsw i64 %shr.i.289, 40
  %add.i.292 = add nuw nsw i64 %shl.i.291, %conv80.i.372
  %and.i.293 = and i64 %conv91.i.379, 72057594037927935
  %or.i.294 = or i64 %conv80.i.372, 1099511627775
  %and15.i.295 = and i64 %add77.tr.i.376, %or.i.294
  %and17.i.296 = and i64 %and15.i.295, %conv91.i.379
  %add18.i.297 = add nuw nsw i64 %and17.i.296, 1
  %and21.i.298 = and i64 %add70.tr.i.371, 1099511627775
  %add22.i.299 = add nsw i64 %conv.i.368, -1
  %sub23.i.300 = add nsw i64 %add22.i.299, %and21.i.298
  %shr24.i.301 = ashr i64 %sub23.i.300, 63
  %or25.i.302 = or i64 %add18.i.297, %shr24.i.301
  %and26.i.303 = and i64 %or25.i.302, 72057594037927935
  %sub27.i.304 = add nsw i64 %and26.i.303, -1
  %shr28.i.305 = ashr i64 %sub27.i.304, 63
  %xor.i.306 = xor i64 %shr28.i.305, -1
  %and30.i.307 = and i64 %and.i.293, %xor.i.306
  %and33.i.308 = and i64 %conv88.i.377, %xor.i.306
  %or35.i.309 = or i64 %xor.i.306, 1099511627775
  %and37.i.310 = and i64 %or35.i.309, %add.i.292
  %and38.i.311 = and i64 %shr28.i.305, 1
  %sub40.i.312 = sub nsw i64 %sub.i.290, %and38.i.311
  %shr42.i.313 = ashr i64 %sub40.i.312, 63
  %and43.i.314 = and i64 %shr42.i.313, 72057594037927936
  %add45.i.315 = add nsw i64 %and43.i.314, %sub40.i.312
  %and46.i.316 = and i64 %shr42.i.313, 1
  %sub48.i.317 = sub nsw i64 %and37.i.310, %and46.i.316
  %shr50.i.318 = ashr i64 %sub48.i.317, 56
  %add52.i.319 = add nsw i64 %shr50.i.318, %and33.i.308
  %and54.i.320 = and i64 %sub48.i.317, 72057594037927935
  %shr56.i.321 = ashr i64 %add52.i.319, 56
  %add58.i.322 = add nsw i64 %shr56.i.321, %and30.i.307
  %and60.i.323 = and i64 %add52.i.319, 72057594037927935
  store i64 %add45.i.315, i64* %arraydecay23, align 16, !tbaa !14
  %arrayidx64.i.324 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 1
  store i64 %and54.i.320, i64* %arrayidx64.i.324, align 8, !tbaa !14
  %arrayidx66.i.325 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  store i64 %and60.i.323, i64* %arrayidx66.i.325, align 16, !tbaa !14
  %arrayidx68.i.326 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 3
  store i64 %add58.i.322, i64* %arrayidx68.i.326, align 8, !tbaa !14
  %cmp = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.end.11
  %call27 = call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %x, i64* %arraydecay23)
  %tobool28 = icmp eq %struct.bignum_st* %call27, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.25
  tail call void @ERR_put_error(i32 16, i32 226, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1338) #4
  br label %cleanup

if.end.31:                                        ; preds = %if.then.25, %if.end.11
  %17 = load i64, i64* %arraydecay7, align 16, !tbaa !14
  %conv.i.196 = zext i64 %17 to i128
  %18 = load i64, i64* %arraydecay12, align 16, !tbaa !14
  %conv2.i.197 = zext i64 %18 to i128
  %mul.i.198 = mul nuw i128 %conv2.i.197, %conv.i.196
  %19 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %conv7.i.200 = zext i64 %19 to i128
  %mul8.i.201 = mul nuw i128 %conv7.i.200, %conv.i.196
  %20 = load i64, i64* %arrayidx81.i, align 8, !tbaa !14
  %conv10.i.203 = zext i64 %20 to i128
  %mul13.i.204 = mul nuw i128 %conv10.i.203, %conv2.i.197
  %21 = load i64, i64* %arrayidx3.i, align 16, !tbaa !14
  %conv18.i.208 = zext i64 %21 to i128
  %mul19.i.209 = mul nuw i128 %conv18.i.208, %conv.i.196
  %mul24.i.210 = mul nuw i128 %conv10.i.203, %conv7.i.200
  %22 = load i64, i64* %arrayidx89.i, align 16, !tbaa !14
  %conv27.i.213 = zext i64 %22 to i128
  %mul30.i.214 = mul nuw i128 %conv27.i.213, %conv2.i.197
  %23 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv36.i.218 = zext i64 %23 to i128
  %mul37.i.219 = mul nuw i128 %conv36.i.218, %conv.i.196
  %mul42.i.220 = mul nuw i128 %conv18.i.208, %conv10.i.203
  %mul48.i.222 = mul nuw i128 %conv27.i.213, %conv7.i.200
  %24 = load i64, i64* %arrayidx92.i, align 8, !tbaa !14
  %conv51.i.225 = zext i64 %24 to i128
  %mul54.i.226 = mul nuw i128 %conv51.i.225, %conv2.i.197
  %mul61.i.229 = mul nuw i128 %conv36.i.218, %conv10.i.203
  %mul66.i.230 = mul nuw i128 %conv27.i.213, %conv18.i.208
  %add67.i.231 = add i128 %mul61.i.229, %mul66.i.230
  %mul72.i.232 = mul nuw i128 %conv51.i.225, %conv7.i.200
  %add73.i.233 = add i128 %add67.i.231, %mul72.i.232
  %mul79.i.235 = mul nuw i128 %conv36.i.218, %conv27.i.213
  %mul84.i.236 = mul nuw i128 %conv51.i.225, %conv18.i.208
  %add85.i.237 = add i128 %mul84.i.236, %mul79.i.235
  %mul91.i.239 = mul nuw i128 %conv51.i.225, %conv36.i.218
  %add.i.142 = add i128 %mul.i.198, -170141183460469231731687303715884072960
  %shr.i.150 = lshr i128 %mul91.i.239, 16
  %add14.i.151 = add i128 %add73.i.233, %shr.i.150
  %and.i.152 = shl i128 %mul91.i.239, 40
  %shl.i.153 = and i128 %and.i.152, 72056494526300160
  %shr21.i.157 = lshr i128 %add85.i.237, 16
  %and25.i.159 = shl i128 %add85.i.237, 40
  %shl26.i.160 = and i128 %and25.i.159, 72056494526300160
  %shr33.i.163 = lshr i128 %add14.i.151, 16
  %add25.i.211 = add i128 %mul24.i.210, 170141183460469229370504062281061498880
  %add31.i.215 = add i128 %add25.i.211, %mul19.i.209
  %add6.i.146 = add i128 %add31.i.215, %mul30.i.214
  %sub.i.155 = sub i128 %add6.i.146, %mul91.i.239
  %add28.i.161 = add i128 %sub.i.155, %shl26.i.160
  %add35.i.164 = add i128 %add28.i.161, %shr33.i.163
  %and37.i.165 = shl i128 %add14.i.151, 40
  %shl38.i.166 = and i128 %and37.i.165, 72056494526300160
  %sub43.i.168 = sub i128 %add.i.142, %add14.i.151
  %shr45.i.169 = lshr i128 %add35.i.164, 56
  %add43.i.221 = add i128 %mul48.i.222, %mul42.i.220
  %add49.i.223 = add i128 %add43.i.221, %mul37.i.219
  %add55.i.227 = add i128 %add49.i.223, %mul54.i.226
  %add17.i.154 = add i128 %add55.i.227, %shl.i.153
  %add23.i.158 = add i128 %add17.i.154, %shr21.i.157
  %add47.i.170 = add i128 %add23.i.158, %shr45.i.169
  %and49.i.171 = and i128 %add35.i.164, 72057594037927935
  %shr51.i.172 = lshr i128 %add47.i.170, 56
  %and54.i.173 = and i128 %add47.i.170, 72057594037927935
  %shr56.i.174 = lshr i128 %add47.i.170, 72
  %add58.i.175 = add nuw nsw i128 %shr56.i.174, %and49.i.171
  %and60.i.176 = shl nuw nsw i128 %shr51.i.172, 40
  %shl61.i.177 = and i128 %and60.i.176, 72056494526300160
  %sub66.i.179 = sub i128 %sub43.i.168, %shr51.i.172
  %shr68.i.180 = lshr i128 %sub66.i.179, 56
  %add.i.205 = add i128 %mul8.i.201, 170141183460469229370468033484042534912
  %add3.i.144 = add i128 %add.i.205, %mul13.i.204
  %sub31.i.162 = sub i128 %add3.i.144, %add85.i.237
  %add40.i.167 = add i128 %sub31.i.162, %shl38.i.166
  %add63.i.178 = add i128 %add40.i.167, %shl61.i.177
  %add70.i.181 = add i128 %add63.i.178, %shr68.i.180
  %sub66.tr.i.182 = trunc i128 %sub66.i.179 to i64
  %conv.i.183 = and i64 %sub66.tr.i.182, 72057594037927935
  store i64 %conv.i.183, i64* %arraydecay7, align 16, !tbaa !14
  %shr75.i.184 = lshr i128 %add70.i.181, 56
  %add77.i.185 = add nuw nsw i128 %add58.i.175, %shr75.i.184
  %add70.tr.i.186 = trunc i128 %add70.i.181 to i64
  %conv80.i.187 = and i64 %add70.tr.i.186, 72057594037927935
  store i64 %conv80.i.187, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i.189 = lshr i128 %add77.i.185, 56
  %add85.i.190 = add nuw nsw i128 %shr83.i.189, %and54.i.173
  %add77.tr.i.191 = trunc i128 %add77.i.185 to i64
  %conv88.i.192 = and i64 %add77.tr.i.191, 72057594037927935
  store i64 %conv88.i.192, i64* %arrayidx89.i, align 16, !tbaa !14
  %conv91.i.194 = trunc i128 %add85.i.190 to i64
  store i64 %conv91.i.194, i64* %arrayidx92.i, align 8, !tbaa !14
  %25 = load i64, i64* %arraydecay3, align 16, !tbaa !14
  %conv.i.131 = zext i64 %25 to i128
  %conv2.i = zext i64 %conv.i.183 to i128
  %mul.i.132 = mul nuw nsw i128 %conv2.i, %conv.i.131
  %conv7.i = zext i64 %conv80.i.187 to i128
  %mul8.i.133 = mul nuw nsw i128 %conv7.i, %conv.i.131
  %arrayidx9.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 1
  %26 = load i64, i64* %arrayidx9.i, align 8, !tbaa !14
  %conv10.i = zext i64 %26 to i128
  %mul13.i.134 = mul nuw nsw i128 %conv10.i, %conv2.i
  %conv18.i = zext i64 %conv88.i.192 to i128
  %mul19.i = mul nuw nsw i128 %conv18.i, %conv.i.131
  %mul24.i = mul nuw nsw i128 %conv10.i, %conv7.i
  %arrayidx26.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 2
  %27 = load i64, i64* %arrayidx26.i, align 16, !tbaa !14
  %conv27.i.137 = zext i64 %27 to i128
  %mul30.i = mul nuw nsw i128 %conv27.i.137, %conv2.i
  %mul37.i = mul nuw nsw i128 %add85.i.190, %conv.i.131
  %mul42.i = mul nuw nsw i128 %conv18.i, %conv10.i
  %mul48.i = mul nuw nsw i128 %conv27.i.137, %conv7.i
  %arrayidx50.i.138 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 3
  %28 = load i64, i64* %arrayidx50.i.138, align 8, !tbaa !14
  %conv51.i = zext i64 %28 to i128
  %mul54.i = mul nuw nsw i128 %conv51.i, %conv2.i
  %mul61.i = mul nuw nsw i128 %add85.i.190, %conv10.i
  %mul66.i = mul nuw nsw i128 %conv27.i.137, %conv18.i
  %mul72.i = mul nuw nsw i128 %conv51.i, %conv7.i
  %mul79.i = mul nuw nsw i128 %add85.i.190, %conv27.i.137
  %mul84.i = mul nuw nsw i128 %conv51.i, %conv18.i
  %add85.i.140 = add nuw nsw i128 %mul79.i, %mul84.i
  %mul91.i = mul nuw nsw i128 %add85.i.190, %conv51.i
  %add.i.77 = add nsw i128 %mul.i.132, -170141183460469231731687303715884072960
  %shr.i.85 = lshr i128 %mul91.i, 16
  %add67.i = add nuw nsw i128 %mul72.i, %mul66.i
  %add73.i = add nuw nsw i128 %add67.i, %mul61.i
  %add14.i.86 = add nuw i128 %add73.i, %shr.i.85
  %and.i.87 = shl i128 %mul91.i, 40
  %shl.i.88 = and i128 %and.i.87, 72056494526300160
  %shr21.i.92 = lshr i128 %add85.i.140, 16
  %and25.i.94 = shl i128 %add85.i.140, 40
  %shl26.i.95 = and i128 %and25.i.94, 72056494526300160
  %shr33.i.98 = lshr i128 %add14.i.86, 16
  %add25.i = add nuw i128 %mul24.i, 170141183460469229370504062281061498880
  %add31.i = add i128 %add25.i, %mul19.i
  %add6.i.81 = add i128 %add31.i, %mul30.i
  %sub.i.90 = sub i128 %add6.i.81, %mul91.i
  %add28.i.96 = add i128 %sub.i.90, %shl26.i.95
  %add35.i.99 = add i128 %add28.i.96, %shr33.i.98
  %and37.i.100 = shl i128 %add14.i.86, 40
  %shl38.i.101 = and i128 %and37.i.100, 72056494526300160
  %sub43.i.103 = sub i128 %add.i.77, %add14.i.86
  %shr45.i.104 = lshr i128 %add35.i.99, 56
  %add43.i = add nuw nsw i128 %mul48.i, %mul42.i
  %add49.i = add nuw nsw i128 %add43.i, %mul54.i
  %add55.i = add nuw nsw i128 %add49.i, %mul37.i
  %add17.i.89 = add nuw i128 %add55.i, %shl.i.88
  %add23.i.93 = add i128 %add17.i.89, %shr21.i.92
  %add47.i.105 = add i128 %add23.i.93, %shr45.i.104
  %and49.i.106 = and i128 %add35.i.99, 72057594037927935
  %shr51.i.107 = lshr i128 %add47.i.105, 56
  %and54.i.108 = and i128 %add47.i.105, 72057594037927935
  %shr56.i.109 = lshr i128 %add47.i.105, 72
  %add58.i.110 = add nuw nsw i128 %shr56.i.109, %and49.i.106
  %and60.i.111 = shl nuw nsw i128 %shr51.i.107, 40
  %shl61.i.112 = and i128 %and60.i.111, 72056494526300160
  %sub66.i.114 = sub i128 %sub43.i.103, %shr51.i.107
  %shr68.i.115 = lshr i128 %sub66.i.114, 56
  %add.i.135 = add nuw i128 %mul8.i.133, 170141183460469229370468033484042534912
  %add3.i.79 = add i128 %add.i.135, %mul13.i.134
  %sub31.i.97 = sub i128 %add3.i.79, %add85.i.140
  %add40.i.102 = add i128 %sub31.i.97, %shl38.i.101
  %add63.i.113 = add i128 %add40.i.102, %shl61.i.112
  %add70.i.116 = add i128 %add63.i.113, %shr68.i.115
  %sub66.tr.i.117 = trunc i128 %sub66.i.114 to i64
  %conv.i.118 = and i64 %sub66.tr.i.117, 72057594037927935
  store i64 %conv.i.118, i64* %arraydecay3, align 16, !tbaa !14
  %shr75.i.119 = lshr i128 %add70.i.116, 56
  %add77.i.120 = add nuw nsw i128 %add58.i.110, %shr75.i.119
  %add70.tr.i.121 = trunc i128 %add70.i.116 to i64
  %conv80.i.122 = and i64 %add70.tr.i.121, 72057594037927935
  store i64 %conv80.i.122, i64* %arrayidx9.i, align 8, !tbaa !14
  %shr83.i.124 = lshr i128 %add77.i.120, 56
  %add85.i.125 = add nuw nsw i128 %shr83.i.124, %and54.i.108
  %add77.tr.i.126 = trunc i128 %add77.i.120 to i64
  %conv88.i.127 = and i64 %add77.tr.i.126, 72057594037927935
  store i64 %conv88.i.127, i64* %arrayidx26.i, align 16, !tbaa !14
  %conv91.i.129 = trunc i128 %add85.i.125 to i64
  store i64 %conv91.i.129, i64* %arrayidx50.i.138, align 8, !tbaa !14
  %arraydecay42 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  %shr.i.67 = lshr i64 %conv91.i.129, 56
  %sub.i.68 = sub nsw i64 %conv.i.118, %shr.i.67
  %shl.i.69 = shl nuw nsw i64 %shr.i.67, 40
  %add.i.70 = add nuw nsw i64 %shl.i.69, %conv80.i.122
  %and.i.71 = and i64 %conv91.i.129, 72057594037927935
  %or.i = or i64 %conv80.i.122, 1099511627775
  %and15.i = and i64 %add77.tr.i.126, %or.i
  %and17.i = and i64 %and15.i, %conv91.i.129
  %add18.i = add nuw nsw i64 %and17.i, 1
  %and21.i = and i64 %add70.tr.i.121, 1099511627775
  %add22.i = add nsw i64 %conv.i.118, -1
  %sub23.i = add nsw i64 %add22.i, %and21.i
  %shr24.i = ashr i64 %sub23.i, 63
  %or25.i = or i64 %add18.i, %shr24.i
  %and26.i = and i64 %or25.i, 72057594037927935
  %sub27.i = add nsw i64 %and26.i, -1
  %shr28.i = ashr i64 %sub27.i, 63
  %xor.i = xor i64 %shr28.i, -1
  %and30.i = and i64 %and.i.71, %xor.i
  %and33.i = and i64 %conv88.i.127, %xor.i
  %or35.i = or i64 %xor.i, 1099511627775
  %and37.i.72 = and i64 %or35.i, %add.i.70
  %and38.i = and i64 %shr28.i, 1
  %sub40.i = sub nsw i64 %sub.i.68, %and38.i
  %shr42.i = ashr i64 %sub40.i, 63
  %and43.i = and i64 %shr42.i, 72057594037927936
  %add45.i = add nsw i64 %and43.i, %sub40.i
  %and46.i = and i64 %shr42.i, 1
  %sub48.i = sub nsw i64 %and37.i.72, %and46.i
  %shr50.i = ashr i64 %sub48.i, 56
  %add52.i = add nsw i64 %shr50.i, %and33.i
  %and54.i.73 = and i64 %sub48.i, 72057594037927935
  %shr56.i.74 = ashr i64 %add52.i, 56
  %add58.i.75 = add nsw i64 %shr56.i.74, %and30.i
  %and60.i.76 = and i64 %add52.i, 72057594037927935
  store i64 %add45.i, i64* %arraydecay42, align 16, !tbaa !14
  %arrayidx64.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 1
  store i64 %and54.i.73, i64* %arrayidx64.i, align 8, !tbaa !14
  %arrayidx66.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  store i64 %and60.i.76, i64* %arrayidx66.i, align 16, !tbaa !14
  %arrayidx68.i = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 3
  store i64 %add58.i.75, i64* %arrayidx68.i, align 8, !tbaa !14
  %cmp44 = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp44, label %cleanup, label %if.then.45

if.then.45:                                       ; preds = %if.end.31
  %call47 = call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %y, i64* %arraydecay42)
  %tobool48 = icmp eq %struct.bignum_st* %call47, null
  br i1 %tobool48, label %if.then.49, label %cleanup

if.then.49:                                       ; preds = %if.then.45
  tail call void @ERR_put_error(i32 16, i32 226, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1350) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %if.then.45, %if.end, %lor.lhs.false, %lor.lhs.false.6, %if.then.49, %if.then.29, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.49 ], [ 0, %if.then.29 ], [ 0, %lor.lhs.false.6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.then.45 ], [ 1, %if.end.31 ]
  call void @llvm.lifetime.end(i64 32, i8* %5) #4
  call void @llvm.lifetime.end(i64 32, i8* %4) #4
  call void @llvm.lifetime.end(i64 32, i8* %3) #4
  call void @llvm.lifetime.end(i64 32, i8* %2) #4
  call void @llvm.lifetime.end(i64 32, i8* %1) #4
  call void @llvm.lifetime.end(i64 32, i8* %0) #4
  ret i32 %retval.0
}

declare i32 @ec_GFp_simple_add(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_dbl(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_invert(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_is_at_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #2

declare i32 @ec_GFp_simple_is_on_curve(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_cmp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_make_affine(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_points_make_affine(%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*) #2

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp224_points_mul(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %scalar, i64 %num, %struct.ec_point_st** nocapture readonly %points, %struct.bignum_st** nocapture readonly %scalars, %struct.bignum_ctx* %ctx) #1 {
entry:
  %g_secret = alloca [28 x i8], align 16
  %tmp = alloca [28 x i8], align 16
  %x_in = alloca [4 x i64], align 16
  %y_in = alloca [4 x i64], align 16
  %z_in = alloca [4 x i64], align 16
  %x_out = alloca [4 x i64], align 16
  %y_out = alloca [4 x i64], align 16
  %z_out = alloca [4 x i64], align 16
  %0 = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %0) #4
  %1 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %1) #4
  %2 = bitcast [4 x i64]* %x_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %2) #4
  %3 = bitcast [4 x i64]* %y_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %3) #4
  %4 = bitcast [4 x i64]* %z_in to i8*
  call void @llvm.lifetime.start(i64 32, i8* %4) #4
  %5 = bitcast [4 x i64]* %x_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %5) #4
  %6 = bitcast [4 x i64]* %y_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %6) #4
  %7 = bitcast [4 x i64]* %z_out to i8*
  call void @llvm.lifetime.start(i64 32, i8* %7) #4
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx) #4
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #4
  %call15 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #4
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #4
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #4
  %cmp = icmp eq %struct.bignum_st* %call17, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp18 = icmp ne %struct.bignum_st* %scalar, null
  br i1 %cmp18, label %if.then.19, label %if.end.58

if.then.19:                                       ; preds = %if.end
  %nistp224 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19, i32 0
  %8 = load %struct.nistp224_pre_comp_st*, %struct.nistp224_pre_comp_st** %nistp224, align 8, !tbaa !15
  %tobool = icmp eq %struct.nistp224_pre_comp_st* %8, null
  %arraydecay = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %8, i64 0, i32 0, i64 0
  %g_pre_comp.0 = select i1 %tobool, [16 x [3 x [4 x i64]]]* getelementptr inbounds ([2 x [16 x [3 x [4 x i64]]]], [2 x [16 x [3 x [4 x i64]]]]* @gmul, i64 0, i64 0), [16 x [3 x [4 x i64]]]* %arraydecay
  %call24 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #4
  %cmp25 = icmp eq %struct.ec_point_st* %call24, null
  br i1 %cmp25, label %err, label %if.end.27

if.end.27:                                        ; preds = %if.then.19
  %arraydecay30 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 0, i64 0
  %call31 = tail call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call, i64* %arraydecay30)
  %tobool32 = icmp eq %struct.bignum_st* %call31, null
  br i1 %tobool32, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %arraydecay36 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 1, i64 0
  %call37 = tail call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call15, i64* %arraydecay36)
  %tobool38 = icmp eq %struct.bignum_st* %call37, null
  br i1 %tobool38, label %if.then.46, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %arraydecay43 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp.0, i64 0, i64 1, i64 2, i64 0
  %call44 = tail call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call16, i64* %arraydecay43)
  %tobool45 = icmp eq %struct.bignum_st* %call44, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.39, %lor.lhs.false, %if.end.27
  tail call void @ERR_put_error(i32 16, i32 228, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1438) #4
  br label %err

if.end.47:                                        ; preds = %lor.lhs.false.39
  %call48 = tail call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call24, %struct.bignum_st* %call, %struct.bignum_st* %call15, %struct.bignum_st* %call16, %struct.bignum_ctx* %ctx) #4
  %tobool49 = icmp eq i32 %call48, 0
  br i1 %tobool49, label %err, label %if.end.51

if.end.51:                                        ; preds = %if.end.47
  %generator52 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %9 = load %struct.ec_point_st*, %struct.ec_point_st** %generator52, align 8, !tbaa !16
  %call53 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call24, %struct.ec_point_st* %9, %struct.bignum_ctx* %ctx) #4
  %cmp54 = icmp eq i32 %call53, 0
  %.463 = zext i1 %cmp54 to i32
  %10 = zext i1 %cmp54 to i64
  %add = xor i64 %10, 1
  %num.add = add i64 %add, %num
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.51, %if.end
  %have_pre_comp.0 = phi i32 [ 0, %if.end ], [ %.463, %if.end.51 ]
  %num_points.0 = phi i64 [ %num, %if.end ], [ %num.add, %if.end.51 ]
  %g_pre_comp.1 = phi [16 x [3 x [4 x i64]]]* [ null, %if.end ], [ %g_pre_comp.0, %if.end.51 ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end ], [ %call24, %if.end.51 ]
  %cmp59 = icmp eq i64 %num_points.0, 0
  br i1 %cmp59, label %if.end.261, label %if.then.60

if.then.60:                                       ; preds = %if.end.58
  %cmp61 = icmp ugt i64 %num_points.0, 2
  %mul = mul i64 %num_points.0, 28
  %call64 = tail call i8* @CRYPTO_zalloc(i64 %mul, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1464) #4
  %11 = bitcast i8* %call64 to [28 x i8]*
  %mul65 = mul i64 %num_points.0, 1632
  %call66 = tail call i8* @CRYPTO_zalloc(i64 %mul65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1465) #4
  %12 = bitcast i8* %call66 to [17 x [3 x [4 x i64]]]*
  br i1 %cmp61, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.then.60
  %add70 = mul i64 %num_points.0, 544
  %mul71 = add i64 %add70, 32
  %call72 = tail call i8* @CRYPTO_malloc(i64 %mul71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1468) #4
  %13 = bitcast i8* %call72 to [4 x i64]*
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.then.60
  %tmp_felems.0 = phi [4 x i64]* [ %13, %if.then.68 ], [ null, %if.then.60 ]
  %cmp74 = icmp eq i8* %call64, null
  %cmp76 = icmp eq i8* %call66, null
  %or.cond = or i1 %cmp74, %cmp76
  %cmp79 = icmp eq [4 x i64]* %tmp_felems.0, null
  %or.cond318 = and i1 %cmp61, %cmp79
  %or.cond462 = or i1 %or.cond, %or.cond318
  br i1 %or.cond462, label %if.then.80, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.73
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %arraydecay121 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  %arraydecay125 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  %arraydecay129 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 0
  %arrayidx4.i = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  %arrayidx4.i.467 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  %arrayidx4.i.473 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 2
  %14 = bitcast [4 x i64]* %x_out to <2 x i64>*
  %15 = bitcast i64* %arrayidx4.i to <2 x i64>*
  %16 = bitcast [4 x i64]* %y_out to <2 x i64>*
  %17 = bitcast i64* %arrayidx4.i.467 to <2 x i64>*
  %18 = bitcast [4 x i64]* %z_out to <2 x i64>*
  %19 = bitcast i64* %arrayidx4.i.473 to <2 x i64>*
  br label %for.body

if.then.80:                                       ; preds = %if.end.73
  tail call void @ERR_put_error(i32 16, i32 228, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1471) #4
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.252
  %conv580 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.252 ]
  %i.0579 = phi i32 [ 0, %for.body.lr.ph ], [ %inc253, %for.inc.252 ]
  %cmp85 = icmp eq i64 %conv580, %num
  br i1 %cmp85, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %for.body
  %call88 = call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* %group) #4
  br label %if.end.93

if.else.89:                                       ; preds = %for.body
  %arrayidx90 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %conv580
  %20 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx90, align 8, !tbaa !15
  %arrayidx92 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalars, i64 %conv580
  %21 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx92, align 8, !tbaa !15
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.87
  %p.0 = phi %struct.ec_point_st* [ %call88, %if.then.87 ], [ %20, %if.else.89 ]
  %p_scalar.0 = phi %struct.bignum_st* [ %scalar, %if.then.87 ], [ %21, %if.else.89 ]
  %cmp94 = icmp ne %struct.bignum_st* %p_scalar.0, null
  %cmp97 = icmp ne %struct.ec_point_st* %p.0, null
  %or.cond319 = and i1 %cmp97, %cmp94
  br i1 %or.cond319, label %if.then.99, label %for.inc.252

if.then.99:                                       ; preds = %if.end.93
  %call100 = call i32 @BN_num_bits(%struct.bignum_st* %p_scalar.0) #4
  %cmp101 = icmp sgt i32 %call100, 224
  br i1 %cmp101, label %if.then.106, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %if.then.99
  %call104 = call i32 @BN_is_negative(%struct.bignum_st* %p_scalar.0) #4
  %tobool105 = icmp eq i32 %call104, 0
  br i1 %tobool105, label %if.else.113, label %if.then.106

if.then.106:                                      ; preds = %lor.lhs.false.103, %if.then.99
  %22 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !17
  %call107 = call i32 @BN_nnmod(%struct.bignum_st* %call17, %struct.bignum_st* %p_scalar.0, %struct.bignum_st* %22, %struct.bignum_ctx* %ctx) #4
  %tobool108 = icmp eq i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.then.106
  call void @ERR_put_error(i32 16, i32 228, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1500) #4
  br label %err

if.end.110:                                       ; preds = %if.then.106
  %call112 = call i32 @BN_bn2bin(%struct.bignum_st* %call17, i8* %1) #4
  br label %if.end.116

if.else.113:                                      ; preds = %lor.lhs.false.103
  %call115 = call i32 @BN_bn2bin(%struct.bignum_st* %p_scalar.0, i8* %1) #4
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.end.110
  %num_bytes.0 = phi i32 [ %call112, %if.end.110 ], [ %call115, %if.else.113 ]
  %cmp.9.i = icmp eq i32 %num_bytes.0, 0
  br i1 %cmp.9.i, label %flip_endian.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.116
  %sub.i = add i32 %num_bytes.0, -1
  %xtraiter585 = and i32 %num_bytes.0, 3
  %lcmp.mod586 = icmp eq i32 %xtraiter585, 0
  br i1 %lcmp.mod586, label %for.body.lr.ph.i.split, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol, %for.body.i.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ 0, %for.body.i.prol.preheader ]
  %prol.iter587 = phi i32 [ %prol.iter587.sub, %for.body.i.prol ], [ %xtraiter585, %for.body.i.prol.preheader ]
  %23 = trunc i64 %indvars.iv.i.prol to i32
  %sub1.i.prol = sub i32 %sub.i, %23
  %idxprom.i.prol = zext i32 %sub1.i.prol to i64
  %arrayidx.i.prol = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.prol
  %24 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !18
  %arrayidx3.i.prol = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 %conv580, i64 %indvars.iv.i.prol
  store i8 %24, i8* %arrayidx3.i.prol, align 1, !tbaa !18
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter587.sub = add i32 %prol.iter587, -1
  %prol.iter587.cmp = icmp eq i32 %prol.iter587.sub, 0
  br i1 %prol.iter587.cmp, label %for.body.lr.ph.i.split.loopexit, label %for.body.i.prol, !llvm.loop !19

for.body.lr.ph.i.split.loopexit:                  ; preds = %for.body.i.prol
  %indvars.iv.next.i.prol.lcssa = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  br label %for.body.lr.ph.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i, %for.body.lr.ph.i.split.loopexit
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol.lcssa, %for.body.lr.ph.i.split.loopexit ]
  %25 = icmp ult i32 %sub.i, 3
  br i1 %25, label %flip_endian.exit.loopexit, label %for.body.lr.ph.i.split.split

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.split.split ], [ %indvars.iv.next.i.3, %for.body.i ]
  %26 = trunc i64 %indvars.iv.i to i32
  %sub1.i = sub i32 %sub.i, %26
  %idxprom.i = zext i32 %sub1.i to i64
  %arrayidx.i = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i
  %27 = load i8, i8* %arrayidx.i, align 1, !tbaa !18
  %arrayidx3.i = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 %conv580, i64 %indvars.iv.i
  store i8 %27, i8* %arrayidx3.i, align 1, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %28 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %28
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.1
  %29 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !18
  %arrayidx3.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 %conv580, i64 %indvars.iv.next.i
  store i8 %29, i8* %arrayidx3.i.1, align 1, !tbaa !18
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %30 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %30
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.2
  %31 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !18
  %arrayidx3.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 %conv580, i64 %indvars.iv.next.i.1
  store i8 %31, i8* %arrayidx3.i.2, align 1, !tbaa !18
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %32 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %32
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.3
  %33 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !18
  %arrayidx3.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 %conv580, i64 %indvars.iv.next.i.2
  store i8 %33, i8* %arrayidx3.i.3, align 1, !tbaa !18
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv581.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond582.3 = icmp eq i32 %lftr.wideiv581.3, %num_bytes.0
  br i1 %exitcond582.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %flip_endian.exit.loopexit, %if.end.116
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 2
  %34 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !10
  %call122 = call fastcc i32 @BN_to_felem(i64* %arraydecay121, %struct.bignum_st* %34)
  %tobool123 = icmp eq i32 %call122, 0
  br i1 %tobool123, label %err.loopexit, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %flip_endian.exit
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 3
  %35 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !12
  %call126 = call fastcc i32 @BN_to_felem(i64* %arraydecay125, %struct.bignum_st* %35)
  %tobool127 = icmp eq i32 %call126, 0
  br i1 %tobool127, label %err.loopexit, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.124
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 4
  %36 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !13
  %call130 = call fastcc i32 @BN_to_felem(i64* %arraydecay129, %struct.bignum_st* %36)
  %tobool131 = icmp eq i32 %call130, 0
  br i1 %tobool131, label %err.loopexit, label %if.end.133

if.end.133:                                       ; preds = %lor.lhs.false.128
  %arraydecay138 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 0, i64 0
  %37 = load <2 x i64>, <2 x i64>* %14, align 16, !tbaa !14
  %38 = bitcast i64* %arraydecay138 to <2 x i64>*
  store <2 x i64> %37, <2 x i64>* %38, align 8, !tbaa !14
  %arrayidx5.i = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 0, i64 2
  %39 = load <2 x i64>, <2 x i64>* %15, align 16, !tbaa !14
  %40 = bitcast i64* %arrayidx5.i to <2 x i64>*
  store <2 x i64> %39, <2 x i64>* %40, align 8, !tbaa !14
  %arraydecay144 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 1, i64 0
  %41 = load <2 x i64>, <2 x i64>* %16, align 16, !tbaa !14
  %42 = bitcast i64* %arraydecay144 to <2 x i64>*
  store <2 x i64> %41, <2 x i64>* %42, align 8, !tbaa !14
  %arrayidx5.i.468 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 1, i64 2
  %43 = load <2 x i64>, <2 x i64>* %17, align 16, !tbaa !14
  %44 = bitcast i64* %arrayidx5.i.468 to <2 x i64>*
  store <2 x i64> %43, <2 x i64>* %44, align 8, !tbaa !14
  %arraydecay150 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 2, i64 0
  %45 = load <2 x i64>, <2 x i64>* %18, align 16, !tbaa !14
  %46 = bitcast i64* %arraydecay150 to <2 x i64>*
  store <2 x i64> %45, <2 x i64>* %46, align 8, !tbaa !14
  %arrayidx5.i.474 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 1, i64 2, i64 2
  %47 = load <2 x i64>, <2 x i64>* %19, align 16, !tbaa !14
  %48 = bitcast i64* %arrayidx5.i.474 to <2 x i64>*
  store <2 x i64> %47, <2 x i64>* %48, align 8, !tbaa !14
  br label %for.body.155

for.body.155:                                     ; preds = %for.inc, %if.end.133
  %indvars.iv = phi i64 [ 2, %if.end.133 ], [ %indvars.iv.next, %for.inc ]
  %49 = trunc i64 %indvars.iv to i32
  %and = and i32 %49, 1
  %tobool156 = icmp eq i32 %and, 0
  %arraydecay163 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %indvars.iv, i64 0, i64 0
  %arraydecay169 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %indvars.iv, i64 1, i64 0
  %arraydecay175 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %indvars.iv, i64 2, i64 0
  br i1 %tobool156, label %if.else.211, label %if.then.157

if.then.157:                                      ; preds = %for.body.155
  %50 = add nsw i64 %indvars.iv, -1
  %arraydecay196 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %50, i64 0, i64 0
  %arraydecay203 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %50, i64 1, i64 0
  %arraydecay210 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %50, i64 2, i64 0
  call fastcc void @point_add(i64* %arraydecay163, i64* %arraydecay169, i64* %arraydecay175, i64* %arraydecay138, i64* %arraydecay144, i64* %arraydecay150, i32 0, i64* %arraydecay196, i64* %arraydecay203, i64* %arraydecay210)
  br label %for.inc

if.else.211:                                      ; preds = %for.body.155
  %div = sdiv i32 %49, 2
  %idxprom230 = sext i32 %div to i64
  %arraydecay235 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %idxprom230, i64 0, i64 0
  %arraydecay242 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %idxprom230, i64 1, i64 0
  %arraydecay249 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %12, i64 %conv580, i64 %idxprom230, i64 2, i64 0
  call fastcc void @point_double(i64* %arraydecay163, i64* %arraydecay169, i64* %arraydecay175, i64* %arraydecay235, i64* %arraydecay242, i64* %arraydecay249)
  br label %for.inc

for.inc:                                          ; preds = %if.then.157, %if.else.211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond584 = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond584, label %for.inc.252.loopexit, label %for.body.155

for.inc.252.loopexit:                             ; preds = %for.inc
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.inc.252.loopexit, %if.end.93
  %inc253 = add i32 %i.0579, 1
  %conv = zext i32 %inc253 to i64
  %cmp82 = icmp ult i64 %conv, %num_points.0
  br i1 %cmp82, label %for.body, label %for.end.254

for.end.254:                                      ; preds = %for.inc.252
  br i1 %cmp61, label %if.then.256, label %if.end.261

if.then.256:                                      ; preds = %for.end.254
  %mul257 = mul i64 %num_points.0, 17
  %51 = bitcast [4 x i64]* %tmp_felems.0 to i8*
  call void @ec_GFp_nistp_points_make_affine_internal(i64 %mul257, i8* %call66, i64 32, i8* %51, void (i8*)* bitcast (void (i64*)* @felem_one to void (i8*)*), i32 (i8*)* nonnull @felem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_square_reduce to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @felem_mul_reduce to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_inv to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_contract to void (i8*, i8*)*)) #4
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.58, %for.end.254, %if.then.256
  %mixed.1 = phi i32 [ 1, %if.then.256 ], [ 0, %for.end.254 ], [ 0, %if.end.58 ]
  %secrets.0 = phi [28 x i8]* [ %11, %if.then.256 ], [ %11, %for.end.254 ], [ null, %if.end.58 ]
  %pre_comp.0 = phi [17 x [3 x [4 x i64]]]* [ %12, %if.then.256 ], [ %12, %for.end.254 ], [ null, %if.end.58 ]
  %tmp_felems.1 = phi [4 x i64]* [ %tmp_felems.0, %if.then.256 ], [ %tmp_felems.0, %for.end.254 ], [ null, %if.end.58 ]
  %tobool265 = icmp ne i32 %have_pre_comp.0, 0
  %or.cond320 = and i1 %cmp18, %tobool265
  br i1 %or.cond320, label %if.then.266, label %if.else.292

if.then.266:                                      ; preds = %if.end.261
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 28, i32 16, i1 false)
  %call267 = call i32 @BN_num_bits(%struct.bignum_st* %scalar) #4
  %cmp268 = icmp sgt i32 %call267, 224
  br i1 %cmp268, label %if.then.273, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %if.then.266
  %call271 = call i32 @BN_is_negative(%struct.bignum_st* %scalar) #4
  %tobool272 = icmp eq i32 %call271, 0
  br i1 %tobool272, label %if.else.281, label %if.then.273

if.then.273:                                      ; preds = %lor.lhs.false.270, %if.then.266
  %order274 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %52 = load %struct.bignum_st*, %struct.bignum_st** %order274, align 8, !tbaa !17
  %call275 = call i32 @BN_nnmod(%struct.bignum_st* %call17, %struct.bignum_st* %scalar, %struct.bignum_st* %52, %struct.bignum_ctx* %ctx) #4
  %tobool276 = icmp eq i32 %call275, 0
  br i1 %tobool276, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %if.then.273
  call void @ERR_put_error(i32 16, i32 228, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1546) #4
  br label %err

if.end.278:                                       ; preds = %if.then.273
  %call280 = call i32 @BN_bn2bin(%struct.bignum_st* %call17, i8* %1) #4
  br label %if.end.284

if.else.281:                                      ; preds = %lor.lhs.false.270
  %call283 = call i32 @BN_bn2bin(%struct.bignum_st* %scalar, i8* %1) #4
  br label %if.end.284

if.end.284:                                       ; preds = %if.else.281, %if.end.278
  %num_bytes.1 = phi i32 [ %call280, %if.end.278 ], [ %call283, %if.else.281 ]
  %cmp.9.i.563 = icmp eq i32 %num_bytes.1, 0
  br i1 %cmp.9.i.563, label %flip_endian.exit575, label %for.body.lr.ph.i.565

for.body.lr.ph.i.565:                             ; preds = %if.end.284
  %sub.i.564 = add i32 %num_bytes.1, -1
  %xtraiter = and i32 %num_bytes.1, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.i.565.split, label %for.body.i.574.prol.preheader

for.body.i.574.prol.preheader:                    ; preds = %for.body.lr.ph.i.565
  br label %for.body.i.574.prol

for.body.i.574.prol:                              ; preds = %for.body.i.574.prol.preheader, %for.body.i.574.prol
  %indvars.iv.i.566.prol = phi i64 [ %indvars.iv.next.i.571.prol, %for.body.i.574.prol ], [ 0, %for.body.i.574.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.i.574.prol ], [ %xtraiter, %for.body.i.574.prol.preheader ]
  %53 = trunc i64 %indvars.iv.i.566.prol to i32
  %sub1.i.567.prol = sub i32 %sub.i.564, %53
  %idxprom.i.568.prol = zext i32 %sub1.i.567.prol to i64
  %arrayidx.i.569.prol = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.568.prol
  %54 = load i8, i8* %arrayidx.i.569.prol, align 1, !tbaa !18
  %arrayidx3.i.570.prol = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.566.prol
  store i8 %54, i8* %arrayidx3.i.570.prol, align 1, !tbaa !18
  %indvars.iv.next.i.571.prol = add nuw nsw i64 %indvars.iv.i.566.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.i.565.split.loopexit, label %for.body.i.574.prol, !llvm.loop !21

for.body.lr.ph.i.565.split.loopexit:              ; preds = %for.body.i.574.prol
  %indvars.iv.next.i.571.prol.lcssa = phi i64 [ %indvars.iv.next.i.571.prol, %for.body.i.574.prol ]
  br label %for.body.lr.ph.i.565.split

for.body.lr.ph.i.565.split:                       ; preds = %for.body.lr.ph.i.565.split.loopexit, %for.body.lr.ph.i.565
  %indvars.iv.i.566.unr = phi i64 [ 0, %for.body.lr.ph.i.565 ], [ %indvars.iv.next.i.571.prol.lcssa, %for.body.lr.ph.i.565.split.loopexit ]
  %55 = icmp ult i32 %sub.i.564, 3
  br i1 %55, label %flip_endian.exit575.loopexit, label %for.body.lr.ph.i.565.split.split

for.body.lr.ph.i.565.split.split:                 ; preds = %for.body.lr.ph.i.565.split
  br label %for.body.i.574

for.body.i.574:                                   ; preds = %for.body.i.574, %for.body.lr.ph.i.565.split.split
  %indvars.iv.i.566 = phi i64 [ %indvars.iv.i.566.unr, %for.body.lr.ph.i.565.split.split ], [ %indvars.iv.next.i.571.3, %for.body.i.574 ]
  %56 = trunc i64 %indvars.iv.i.566 to i32
  %sub1.i.567 = sub i32 %sub.i.564, %56
  %idxprom.i.568 = zext i32 %sub1.i.567 to i64
  %arrayidx.i.569 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.568
  %57 = load i8, i8* %arrayidx.i.569, align 1, !tbaa !18
  %arrayidx3.i.570 = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.566
  store i8 %57, i8* %arrayidx3.i.570, align 1, !tbaa !18
  %indvars.iv.next.i.571 = add nuw nsw i64 %indvars.iv.i.566, 1
  %58 = trunc i64 %indvars.iv.next.i.571 to i32
  %sub1.i.567.1 = sub i32 %sub.i.564, %58
  %idxprom.i.568.1 = zext i32 %sub1.i.567.1 to i64
  %arrayidx.i.569.1 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.568.1
  %59 = load i8, i8* %arrayidx.i.569.1, align 1, !tbaa !18
  %arrayidx3.i.570.1 = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.571
  store i8 %59, i8* %arrayidx3.i.570.1, align 1, !tbaa !18
  %indvars.iv.next.i.571.1 = add nsw i64 %indvars.iv.i.566, 2
  %60 = trunc i64 %indvars.iv.next.i.571.1 to i32
  %sub1.i.567.2 = sub i32 %sub.i.564, %60
  %idxprom.i.568.2 = zext i32 %sub1.i.567.2 to i64
  %arrayidx.i.569.2 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.568.2
  %61 = load i8, i8* %arrayidx.i.569.2, align 1, !tbaa !18
  %arrayidx3.i.570.2 = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.571.1
  store i8 %61, i8* %arrayidx3.i.570.2, align 1, !tbaa !18
  %indvars.iv.next.i.571.2 = add nsw i64 %indvars.iv.i.566, 3
  %62 = trunc i64 %indvars.iv.next.i.571.2 to i32
  %sub1.i.567.3 = sub i32 %sub.i.564, %62
  %idxprom.i.568.3 = zext i32 %sub1.i.567.3 to i64
  %arrayidx.i.569.3 = getelementptr inbounds [28 x i8], [28 x i8]* %tmp, i64 0, i64 %idxprom.i.568.3
  %63 = load i8, i8* %arrayidx.i.569.3, align 1, !tbaa !18
  %arrayidx3.i.570.3 = getelementptr inbounds [28 x i8], [28 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.571.2
  store i8 %63, i8* %arrayidx3.i.570.3, align 1, !tbaa !18
  %indvars.iv.next.i.571.3 = add nsw i64 %indvars.iv.i.566, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.571.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %num_bytes.1
  br i1 %exitcond.3, label %flip_endian.exit575.loopexit.unr-lcssa, label %for.body.i.574

flip_endian.exit575.loopexit.unr-lcssa:           ; preds = %for.body.i.574
  br label %flip_endian.exit575.loopexit

flip_endian.exit575.loopexit:                     ; preds = %for.body.lr.ph.i.565.split, %flip_endian.exit575.loopexit.unr-lcssa
  br label %flip_endian.exit575

flip_endian.exit575:                              ; preds = %flip_endian.exit575.loopexit, %if.end.284
  %arraydecay287 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  %arraydecay288 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  %arraydecay289 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 0
  %conv290 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i64* %arraydecay287, i64* %arraydecay288, i64* %arraydecay289, [28 x i8]* %secrets.0, i32 %conv290, i8* %0, i32 %mixed.1, [17 x [3 x [4 x i64]]]* %pre_comp.0, [16 x [3 x [4 x i64]]]* %g_pre_comp.1)
  br label %if.end.297

if.else.292:                                      ; preds = %if.end.261
  %arraydecay293 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 0
  %arraydecay294 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 0
  %arraydecay295 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 0
  %conv296 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i64* %arraydecay293, i64* %arraydecay294, i64* %arraydecay295, [28 x i8]* %secrets.0, i32 %conv296, i8* null, i32 %mixed.1, [17 x [3 x [4 x i64]]]* %pre_comp.0, [16 x [3 x [4 x i64]]]* null)
  br label %if.end.297

if.end.297:                                       ; preds = %if.else.292, %flip_endian.exit575
  %arraydecay303.pre-phi = phi i64* [ %arraydecay295, %if.else.292 ], [ %arraydecay289, %flip_endian.exit575 ]
  %arraydecay301.pre-phi = phi i64* [ %arraydecay294, %if.else.292 ], [ %arraydecay288, %flip_endian.exit575 ]
  %arraydecay299.pre-phi = phi i64* [ %arraydecay293, %if.else.292 ], [ %arraydecay287, %flip_endian.exit575 ]
  %arraydecay298 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 0
  %64 = load i64, i64* %arraydecay299.pre-phi, align 16, !tbaa !14
  %arrayidx3.i.522 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 1
  %65 = load i64, i64* %arrayidx3.i.522, align 8, !tbaa !14
  %arrayidx5.i.523 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 2
  %66 = load i64, i64* %arrayidx5.i.523, align 16, !tbaa !14
  %arrayidx7.i.524 = getelementptr inbounds [4 x i64], [4 x i64]* %x_out, i64 0, i64 3
  %67 = load i64, i64* %arrayidx7.i.524, align 8, !tbaa !14
  %shr.i.525 = lshr i64 %67, 56
  %sub.i.526 = sub nsw i64 %64, %shr.i.525
  %shl.i.527 = shl nuw nsw i64 %shr.i.525, 40
  %add.i.528 = add nsw i64 %shl.i.527, %65
  %and.i.529 = and i64 %67, 72057594037927935
  %or.i.530 = or i64 %65, 1099511627775
  %and15.i.531 = and i64 %or.i.530, %66
  %and17.i.532 = and i64 %and15.i.531, %67
  %add18.i.533 = add i64 %and17.i.532, 1
  %and21.i.534 = and i64 %65, 1099511627775
  %add22.i.535 = add i64 %64, -1
  %sub23.i.536 = add i64 %add22.i.535, %and21.i.534
  %shr24.i.537 = ashr i64 %sub23.i.536, 63
  %or25.i.538 = or i64 %add18.i.533, %shr24.i.537
  %and26.i.539 = and i64 %or25.i.538, 72057594037927935
  %sub27.i.540 = add nsw i64 %and26.i.539, -1
  %shr28.i.541 = ashr i64 %sub27.i.540, 63
  %xor.i.542 = xor i64 %shr28.i.541, -1
  %and30.i.543 = and i64 %and.i.529, %xor.i.542
  %and33.i.544 = and i64 %66, %xor.i.542
  %or35.i.545 = or i64 %xor.i.542, 1099511627775
  %and37.i.546 = and i64 %or35.i.545, %add.i.528
  %and38.i.547 = and i64 %shr28.i.541, 1
  %sub40.i.548 = sub i64 %sub.i.526, %and38.i.547
  %shr42.i.549 = ashr i64 %sub40.i.548, 63
  %and43.i.550 = and i64 %shr42.i.549, 72057594037927936
  %add45.i.551 = add nsw i64 %and43.i.550, %sub40.i.548
  %and46.i.552 = and i64 %shr42.i.549, 1
  %sub48.i.553 = sub nsw i64 %and37.i.546, %and46.i.552
  %shr50.i.554 = ashr i64 %sub48.i.553, 56
  %add52.i.555 = add nsw i64 %shr50.i.554, %and33.i.544
  %and54.i.556 = and i64 %sub48.i.553, 72057594037927935
  %shr56.i.557 = ashr i64 %add52.i.555, 56
  %add58.i.558 = add nsw i64 %shr56.i.557, %and30.i.543
  %and60.i.559 = and i64 %add52.i.555, 72057594037927935
  store i64 %add45.i.551, i64* %arraydecay298, align 16, !tbaa !14
  %arrayidx64.i.560 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 1
  store i64 %and54.i.556, i64* %arrayidx64.i.560, align 8, !tbaa !14
  %arrayidx66.i.561 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 2
  store i64 %and60.i.559, i64* %arrayidx66.i.561, align 16, !tbaa !14
  %arrayidx68.i.562 = getelementptr inbounds [4 x i64], [4 x i64]* %x_in, i64 0, i64 3
  store i64 %add58.i.558, i64* %arrayidx68.i.562, align 8, !tbaa !14
  %arraydecay300 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 0
  %68 = load i64, i64* %arraydecay301.pre-phi, align 16, !tbaa !14
  %arrayidx3.i.481 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 1
  %69 = load i64, i64* %arrayidx3.i.481, align 8, !tbaa !14
  %arrayidx5.i.482 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 2
  %70 = load i64, i64* %arrayidx5.i.482, align 16, !tbaa !14
  %arrayidx7.i.483 = getelementptr inbounds [4 x i64], [4 x i64]* %y_out, i64 0, i64 3
  %71 = load i64, i64* %arrayidx7.i.483, align 8, !tbaa !14
  %shr.i.484 = lshr i64 %71, 56
  %sub.i.485 = sub nsw i64 %68, %shr.i.484
  %shl.i.486 = shl nuw nsw i64 %shr.i.484, 40
  %add.i.487 = add nsw i64 %shl.i.486, %69
  %and.i.488 = and i64 %71, 72057594037927935
  %or.i.489 = or i64 %69, 1099511627775
  %and15.i.490 = and i64 %or.i.489, %70
  %and17.i.491 = and i64 %and15.i.490, %71
  %add18.i.492 = add i64 %and17.i.491, 1
  %and21.i.493 = and i64 %69, 1099511627775
  %add22.i.494 = add i64 %68, -1
  %sub23.i.495 = add i64 %add22.i.494, %and21.i.493
  %shr24.i.496 = ashr i64 %sub23.i.495, 63
  %or25.i.497 = or i64 %add18.i.492, %shr24.i.496
  %and26.i.498 = and i64 %or25.i.497, 72057594037927935
  %sub27.i.499 = add nsw i64 %and26.i.498, -1
  %shr28.i.500 = ashr i64 %sub27.i.499, 63
  %xor.i.501 = xor i64 %shr28.i.500, -1
  %and30.i.502 = and i64 %and.i.488, %xor.i.501
  %and33.i.503 = and i64 %70, %xor.i.501
  %or35.i.504 = or i64 %xor.i.501, 1099511627775
  %and37.i.505 = and i64 %or35.i.504, %add.i.487
  %and38.i.506 = and i64 %shr28.i.500, 1
  %sub40.i.507 = sub i64 %sub.i.485, %and38.i.506
  %shr42.i.508 = ashr i64 %sub40.i.507, 63
  %and43.i.509 = and i64 %shr42.i.508, 72057594037927936
  %add45.i.510 = add nsw i64 %and43.i.509, %sub40.i.507
  %and46.i.511 = and i64 %shr42.i.508, 1
  %sub48.i.512 = sub nsw i64 %and37.i.505, %and46.i.511
  %shr50.i.513 = ashr i64 %sub48.i.512, 56
  %add52.i.514 = add nsw i64 %shr50.i.513, %and33.i.503
  %and54.i.515 = and i64 %sub48.i.512, 72057594037927935
  %shr56.i.516 = ashr i64 %add52.i.514, 56
  %add58.i.517 = add nsw i64 %shr56.i.516, %and30.i.502
  %and60.i.518 = and i64 %add52.i.514, 72057594037927935
  store i64 %add45.i.510, i64* %arraydecay300, align 16, !tbaa !14
  %arrayidx64.i.519 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 1
  store i64 %and54.i.515, i64* %arrayidx64.i.519, align 8, !tbaa !14
  %arrayidx66.i.520 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 2
  store i64 %and60.i.518, i64* %arrayidx66.i.520, align 16, !tbaa !14
  %arrayidx68.i.521 = getelementptr inbounds [4 x i64], [4 x i64]* %y_in, i64 0, i64 3
  store i64 %add58.i.517, i64* %arrayidx68.i.521, align 8, !tbaa !14
  %arraydecay302 = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 0
  %72 = load i64, i64* %arraydecay303.pre-phi, align 16, !tbaa !14
  %arrayidx3.i.477 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 1
  %73 = load i64, i64* %arrayidx3.i.477, align 8, !tbaa !14
  %arrayidx5.i.478 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 2
  %74 = load i64, i64* %arrayidx5.i.478, align 16, !tbaa !14
  %arrayidx7.i.479 = getelementptr inbounds [4 x i64], [4 x i64]* %z_out, i64 0, i64 3
  %75 = load i64, i64* %arrayidx7.i.479, align 8, !tbaa !14
  %shr.i = lshr i64 %75, 56
  %sub.i.480 = sub nsw i64 %72, %shr.i
  %shl.i = shl nuw nsw i64 %shr.i, 40
  %add.i = add nsw i64 %shl.i, %73
  %and.i = and i64 %75, 72057594037927935
  %or.i = or i64 %73, 1099511627775
  %and15.i = and i64 %or.i, %74
  %and17.i = and i64 %and15.i, %75
  %add18.i = add i64 %and17.i, 1
  %and21.i = and i64 %73, 1099511627775
  %add22.i = add i64 %72, -1
  %sub23.i = add i64 %add22.i, %and21.i
  %shr24.i = ashr i64 %sub23.i, 63
  %or25.i = or i64 %add18.i, %shr24.i
  %and26.i = and i64 %or25.i, 72057594037927935
  %sub27.i = add nsw i64 %and26.i, -1
  %shr28.i = ashr i64 %sub27.i, 63
  %xor.i = xor i64 %shr28.i, -1
  %and30.i = and i64 %and.i, %xor.i
  %and33.i = and i64 %74, %xor.i
  %or35.i = or i64 %xor.i, 1099511627775
  %and37.i = and i64 %or35.i, %add.i
  %and38.i = and i64 %shr28.i, 1
  %sub40.i = sub i64 %sub.i.480, %and38.i
  %shr42.i = ashr i64 %sub40.i, 63
  %and43.i = and i64 %shr42.i, 72057594037927936
  %add45.i = add nsw i64 %and43.i, %sub40.i
  %and46.i = and i64 %shr42.i, 1
  %sub48.i = sub nsw i64 %and37.i, %and46.i
  %shr50.i = ashr i64 %sub48.i, 56
  %add52.i = add nsw i64 %shr50.i, %and33.i
  %and54.i = and i64 %sub48.i, 72057594037927935
  %shr56.i = ashr i64 %add52.i, 56
  %add58.i = add nsw i64 %shr56.i, %and30.i
  %and60.i = and i64 %add52.i, 72057594037927935
  store i64 %add45.i, i64* %arraydecay302, align 16, !tbaa !14
  %arrayidx64.i = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 1
  store i64 %and54.i, i64* %arrayidx64.i, align 8, !tbaa !14
  %arrayidx66.i = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 2
  store i64 %and60.i, i64* %arrayidx66.i, align 16, !tbaa !14
  %arrayidx68.i = getelementptr inbounds [4 x i64], [4 x i64]* %z_in, i64 0, i64 3
  store i64 %add58.i, i64* %arrayidx68.i, align 8, !tbaa !14
  %call305 = call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call, i64* %arraydecay298)
  %tobool306 = icmp eq %struct.bignum_st* %call305, null
  br i1 %tobool306, label %if.then.315, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %if.end.297
  %call309 = call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call15, i64* %arraydecay300)
  %tobool310 = icmp eq %struct.bignum_st* %call309, null
  br i1 %tobool310, label %if.then.315, label %lor.lhs.false.311

lor.lhs.false.311:                                ; preds = %lor.lhs.false.307
  %call313 = call fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %call16, i64* %arraydecay302)
  %tobool314 = icmp eq %struct.bignum_st* %call313, null
  br i1 %tobool314, label %if.then.315, label %if.end.316

if.then.315:                                      ; preds = %lor.lhs.false.311, %lor.lhs.false.307, %if.end.297
  call void @ERR_put_error(i32 16, i32 228, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1569) #4
  br label %err

if.end.316:                                       ; preds = %lor.lhs.false.311
  %call317 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %call, %struct.bignum_st* %call15, %struct.bignum_st* %call16, %struct.bignum_ctx* %ctx) #4
  br label %err

err.loopexit:                                     ; preds = %flip_endian.exit, %lor.lhs.false.124, %lor.lhs.false.128
  br label %err

err:                                              ; preds = %err.loopexit, %if.end.47, %if.then.19, %entry, %if.end.316, %if.then.315, %if.then.277, %if.then.109, %if.then.80, %if.then.46
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then.19 ], [ 0, %if.then.80 ], [ 0, %if.then.109 ], [ %call317, %if.end.316 ], [ 0, %if.then.315 ], [ 0, %if.then.277 ], [ 0, %if.end.47 ], [ 0, %if.then.46 ], [ 0, %err.loopexit ]
  %secrets.1 = phi [28 x i8]* [ null, %entry ], [ null, %if.then.19 ], [ %11, %if.then.80 ], [ %11, %if.then.109 ], [ %secrets.0, %if.end.316 ], [ %secrets.0, %if.then.315 ], [ %secrets.0, %if.then.277 ], [ null, %if.end.47 ], [ null, %if.then.46 ], [ %11, %err.loopexit ]
  %pre_comp.1 = phi [17 x [3 x [4 x i64]]]* [ null, %entry ], [ null, %if.then.19 ], [ %12, %if.then.80 ], [ %12, %if.then.109 ], [ %pre_comp.0, %if.end.316 ], [ %pre_comp.0, %if.then.315 ], [ %pre_comp.0, %if.then.277 ], [ null, %if.end.47 ], [ null, %if.then.46 ], [ %12, %err.loopexit ]
  %tmp_felems.2 = phi [4 x i64]* [ null, %entry ], [ null, %if.then.19 ], [ %tmp_felems.0, %if.then.80 ], [ %tmp_felems.0, %if.then.109 ], [ %tmp_felems.1, %if.end.316 ], [ %tmp_felems.1, %if.then.315 ], [ %tmp_felems.1, %if.then.277 ], [ null, %if.end.47 ], [ null, %if.then.46 ], [ %tmp_felems.0, %err.loopexit ]
  %generator.1 = phi %struct.ec_point_st* [ null, %entry ], [ null, %if.then.19 ], [ %generator.0, %if.then.80 ], [ %generator.0, %if.then.109 ], [ %generator.0, %if.end.316 ], [ %generator.0, %if.then.315 ], [ %generator.0, %if.then.277 ], [ %call24, %if.end.47 ], [ %call24, %if.then.46 ], [ %generator.0, %err.loopexit ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx) #4
  call void @EC_POINT_free(%struct.ec_point_st* %generator.1) #4
  %76 = getelementptr inbounds [28 x i8], [28 x i8]* %secrets.1, i64 0, i64 0
  call void @CRYPTO_free(i8* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1577) #4
  %77 = bitcast [17 x [3 x [4 x i64]]]* %pre_comp.1 to i8*
  call void @CRYPTO_free(i8* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1578) #4
  %78 = bitcast [4 x i64]* %tmp_felems.2 to i8*
  call void @CRYPTO_free(i8* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1579) #4
  call void @llvm.lifetime.end(i64 32, i8* %7) #4
  call void @llvm.lifetime.end(i64 32, i8* %6) #4
  call void @llvm.lifetime.end(i64 32, i8* %5) #4
  call void @llvm.lifetime.end(i64 32, i8* %4) #4
  call void @llvm.lifetime.end(i64 32, i8* %3) #4
  call void @llvm.lifetime.end(i64 32, i8* %2) #4
  call void @llvm.lifetime.end(i64 28, i8* %1) #4
  call void @llvm.lifetime.end(i64 28, i8* %0) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp224_precompute_mult(%struct.ec_group_st* %group, %struct.bignum_ctx* %ctx) #1 {
entry:
  %tmp_felems = alloca [32 x [4 x i64]], align 16
  %0 = bitcast [32 x [4 x i64]]* %tmp_felems to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %0) #4
  tail call void @EC_pre_comp_free(%struct.ec_group_st* %group) #4
  %cmp = icmp eq %struct.bignum_ctx* %ctx, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = tail call %struct.bignum_ctx* @BN_CTX_new() #4
  %cmp1 = icmp eq %struct.bignum_ctx* %call, null
  br i1 %cmp1, label %cleanup, label %if.end.3

if.end.3:                                         ; preds = %if.then, %entry
  %new_ctx.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ null, %entry ]
  %ctx.addr.0 = phi %struct.bignum_ctx* [ %call, %if.then ], [ %ctx, %entry ]
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx.addr.0) #4
  %call4 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #4
  %call5 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx.addr.0) #4
  %cmp6 = icmp eq %struct.bignum_st* %call5, null
  br i1 %cmp6, label %err, label %if.end.8

if.end.8:                                         ; preds = %if.end.3
  %generator9 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !16
  %cmp10 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp10, label %err, label %if.end.12

if.end.12:                                        ; preds = %if.end.8
  %call13 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #4
  %cmp14 = icmp eq %struct.ec_point_st* %call13, null
  br i1 %cmp14, label %err, label %if.end.16

if.end.16:                                        ; preds = %if.end.12
  %call17 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [28 x i8]], [5 x [28 x i8]]* @nistp224_curve_params, i64 0, i64 3, i64 0), i32 28, %struct.bignum_st* %call4) #4
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [28 x i8]], [5 x [28 x i8]]* @nistp224_curve_params, i64 0, i64 4, i64 0), i32 28, %struct.bignum_st* %call5) #4
  %call19 = tail call i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.bignum_st* %call4, %struct.bignum_st* %call5, %struct.bignum_ctx* %ctx.addr.0) #4
  %tobool = icmp eq i32 %call19, 0
  br i1 %tobool, label %err, label %if.end.21

if.end.21:                                        ; preds = %if.end.16
  %call.i = tail call i8* @CRYPTO_zalloc(i64 3088, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1220) #4
  %2 = bitcast i8* %call.i to %struct.nistp224_pre_comp_st*
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %nistp224_pre_comp_new.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.21
  %references.i = getelementptr inbounds i8, i8* %call.i, i64 3072
  %3 = bitcast i8* %references.i to i32*
  store i32 1, i32* %3, align 4, !tbaa !22
  %call1.i = tail call i8* @CRYPTO_THREAD_lock_new() #4
  %lock.i = getelementptr inbounds i8, i8* %call.i, i64 3080
  %4 = bitcast i8* %lock.i to i8**
  store i8* %call1.i, i8** %4, align 8, !tbaa !24
  %cmp.i = icmp eq i8* %call1.i, null
  br i1 %cmp.i, label %nistp224_pre_comp_new.exit.thread, label %if.end.25

nistp224_pre_comp_new.exit.thread:                ; preds = %if.end.i
  tail call void @ERR_put_error(i32 16, i32 227, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1231) #4
  tail call void @CRYPTO_free(i8* %call.i, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1232) #4
  br label %err

nistp224_pre_comp_new.exit:                       ; preds = %if.end.21
  tail call void @ERR_put_error(i32 16, i32 227, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1223) #4
  br label %err

if.end.25:                                        ; preds = %if.end.i
  %5 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !16
  %call27 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.ec_point_st* %5, %struct.bignum_ctx* %ctx.addr.0) #4
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* bitcast ([2 x [16 x [3 x [4 x i64]]]]* @gmul to i8*), i64 3072, i32 8, i1 false)
  br label %done

if.end.30:                                        ; preds = %if.end.25
  %arrayidx32 = getelementptr inbounds i8, i8* %call.i, i64 96
  %arraydecay = bitcast i8* %arrayidx32 to i64*
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !16
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %6, i64 0, i32 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !10
  %call35 = tail call fastcc i32 @BN_to_felem(i64* %arraydecay, %struct.bignum_st* %7)
  %tobool36 = icmp eq i32 %call35, 0
  br i1 %tobool36, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %arraydecay41 = getelementptr inbounds i8, i8* %call.i, i64 128
  %8 = bitcast i8* %arraydecay41 to i64*
  %9 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !16
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %9, i64 0, i32 3
  %10 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !12
  %call43 = tail call fastcc i32 @BN_to_felem(i64* %8, %struct.bignum_st* %10)
  %tobool44 = icmp eq i32 %call43, 0
  br i1 %tobool44, label %err, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %arraydecay50 = getelementptr inbounds i8, i8* %call.i, i64 160
  %11 = bitcast i8* %arraydecay50 to i64*
  %12 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !16
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %12, i64 0, i32 4
  %13 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !13
  %call52 = tail call fastcc i32 @BN_to_felem(i64* %11, %struct.bignum_st* %13)
  %tobool53 = icmp eq i32 %call52, 0
  br i1 %tobool53, label %err, label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.45
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc.220
  %i.0736 = phi i32 [ %mul, %for.inc.220 ], [ 1, %for.body.preheader ]
  %idxprom = sext i32 %i.0736 to i64
  %arraydecay61 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 1, i64 %idxprom, i64 0, i64 0
  %arraydecay67 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 1, i64 %idxprom, i64 1, i64 0
  %arraydecay73 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 1, i64 %idxprom, i64 2, i64 0
  %arraydecay79 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom, i64 0, i64 0
  %arraydecay85 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom, i64 1, i64 0
  %arraydecay91 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom, i64 2, i64 0
  tail call fastcc void @point_double(i64* %arraydecay61, i64* %arraydecay67, i64* %arraydecay73, i64* %arraydecay79, i64* %arraydecay85, i64* %arraydecay91)
  br label %for.body.94

for.body.94:                                      ; preds = %for.body.94, %for.body
  %j.0734 = phi i32 [ 0, %for.body ], [ %inc, %for.body.94 ]
  tail call fastcc void @point_double(i64* %arraydecay61, i64* %arraydecay67, i64* %arraydecay73, i64* %arraydecay61, i64* %arraydecay67, i64* %arraydecay73)
  %inc = add nuw nsw i32 %j.0734, 1
  %exitcond739 = icmp eq i32 %inc, 27
  br i1 %exitcond739, label %for.end, label %for.body.94

for.end:                                          ; preds = %for.body.94
  %cmp131 = icmp eq i32 %i.0736, 8
  br i1 %cmp131, label %for.body.224.preheader, label %if.end.133

if.end.133:                                       ; preds = %for.end
  %mul = shl i32 %i.0736, 1
  %idxprom134 = sext i32 %mul to i64
  %arraydecay139 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom134, i64 0, i64 0
  %arraydecay146 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom134, i64 1, i64 0
  %arraydecay153 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 0, i64 %idxprom134, i64 2, i64 0
  tail call fastcc void @point_double(i64* %arraydecay139, i64* %arraydecay146, i64* %arraydecay153, i64* %arraydecay61, i64* %arraydecay67, i64* %arraydecay73)
  br label %for.body.174

for.body.174:                                     ; preds = %for.body.174, %if.end.133
  %j.1735 = phi i32 [ 0, %if.end.133 ], [ %inc218, %for.body.174 ]
  tail call fastcc void @point_double(i64* %arraydecay139, i64* %arraydecay146, i64* %arraydecay153, i64* %arraydecay139, i64* %arraydecay146, i64* %arraydecay153)
  %inc218 = add nuw nsw i32 %j.1735, 1
  %exitcond740 = icmp eq i32 %inc218, 27
  br i1 %exitcond740, label %for.inc.220, label %for.body.174

for.inc.220:                                      ; preds = %for.body.174
  %cmp56 = icmp slt i32 %mul, 9
  br i1 %cmp56, label %for.body, label %for.body.224.preheader

for.body.224.preheader:                           ; preds = %for.end, %for.inc.220
  br label %for.body.224

for.body.224:                                     ; preds = %for.body.224.preheader, %for.body.224
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.224 ], [ 0, %for.body.224.preheader ]
  %arrayidx227 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv
  %14 = bitcast [16 x [3 x [4 x i64]]]* %arrayidx227 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 96, i32 8, i1 false)
  %arraydecay234 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 6, i64 0, i64 0
  %arraydecay240 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 6, i64 1, i64 0
  %arraydecay246 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 6, i64 2, i64 0
  %arraydecay252 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 4, i64 0, i64 0
  %arraydecay258 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 4, i64 1, i64 0
  %arraydecay264 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 4, i64 2, i64 0
  %arraydecay270 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 2, i64 0, i64 0
  %arraydecay276 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 2, i64 1, i64 0
  %arraydecay282 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 2, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay234, i64* %arraydecay240, i64* %arraydecay246, i64* %arraydecay252, i64* %arraydecay258, i64* %arraydecay264, i32 0, i64* %arraydecay270, i64* %arraydecay276, i64* %arraydecay282)
  %arraydecay288 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 10, i64 0, i64 0
  %arraydecay294 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 10, i64 1, i64 0
  %arraydecay300 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 10, i64 2, i64 0
  %arraydecay306 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 8, i64 0, i64 0
  %arraydecay312 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 8, i64 1, i64 0
  %arraydecay318 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 8, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay288, i64* %arraydecay294, i64* %arraydecay300, i64* %arraydecay306, i64* %arraydecay312, i64* %arraydecay318, i32 0, i64* %arraydecay270, i64* %arraydecay276, i64* %arraydecay282)
  %arraydecay342 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 12, i64 0, i64 0
  %arraydecay348 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 12, i64 1, i64 0
  %arraydecay354 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 12, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay342, i64* %arraydecay348, i64* %arraydecay354, i64* %arraydecay306, i64* %arraydecay312, i64* %arraydecay318, i32 0, i64* %arraydecay252, i64* %arraydecay258, i64* %arraydecay264)
  %arraydecay396 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 14, i64 0, i64 0
  %arraydecay402 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 14, i64 1, i64 0
  %arraydecay408 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 14, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay396, i64* %arraydecay402, i64* %arraydecay408, i64* %arraydecay342, i64* %arraydecay348, i64* %arraydecay354, i32 0, i64* %arraydecay270, i64* %arraydecay276, i64* %arraydecay282)
  %arraydecay503 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 1, i64 0, i64 0
  %arraydecay509 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 1, i64 1, i64 0
  %arraydecay515 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 1, i64 2, i64 0
  %arraydecay455 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 3, i64 0, i64 0
  %arraydecay464 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 3, i64 1, i64 0
  %arraydecay473 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 3, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455, i64* %arraydecay464, i64* %arraydecay473, i64* %arraydecay270, i64* %arraydecay276, i64* %arraydecay282, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.1 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 5, i64 0, i64 0
  %arraydecay464.1 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 5, i64 1, i64 0
  %arraydecay473.1 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 5, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.1, i64* %arraydecay464.1, i64* %arraydecay473.1, i64* %arraydecay252, i64* %arraydecay258, i64* %arraydecay264, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.2 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 7, i64 0, i64 0
  %arraydecay464.2 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 7, i64 1, i64 0
  %arraydecay473.2 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 7, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.2, i64* %arraydecay464.2, i64* %arraydecay473.2, i64* %arraydecay234, i64* %arraydecay240, i64* %arraydecay246, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.3 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 9, i64 0, i64 0
  %arraydecay464.3 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 9, i64 1, i64 0
  %arraydecay473.3 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 9, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.3, i64* %arraydecay464.3, i64* %arraydecay473.3, i64* %arraydecay306, i64* %arraydecay312, i64* %arraydecay318, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.4 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 11, i64 0, i64 0
  %arraydecay464.4 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 11, i64 1, i64 0
  %arraydecay473.4 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 11, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.4, i64* %arraydecay464.4, i64* %arraydecay473.4, i64* %arraydecay288, i64* %arraydecay294, i64* %arraydecay300, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.5 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 13, i64 0, i64 0
  %arraydecay464.5 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 13, i64 1, i64 0
  %arraydecay473.5 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 13, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.5, i64* %arraydecay464.5, i64* %arraydecay473.5, i64* %arraydecay342, i64* %arraydecay348, i64* %arraydecay354, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %arraydecay455.6 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 15, i64 0, i64 0
  %arraydecay464.6 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 15, i64 1, i64 0
  %arraydecay473.6 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %2, i64 0, i32 0, i64 %indvars.iv, i64 15, i64 2, i64 0
  tail call fastcc void @point_add(i64* %arraydecay455.6, i64* %arraydecay464.6, i64* %arraydecay473.6, i64* %arraydecay396, i64* %arraydecay402, i64* %arraydecay408, i32 0, i64* %arraydecay503, i64* %arraydecay509, i64* %arraydecay515)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %for.end.521, label %for.body.224

for.end.521:                                      ; preds = %for.body.224
  call void @ec_GFp_nistp_points_make_affine_internal(i64 31, i8* %arrayidx32, i64 32, i8* %0, void (i8*)* bitcast (void (i64*)* @felem_one to void (i8*)*), i32 (i8*)* nonnull @felem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_square_reduce to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @felem_mul_reduce to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_inv to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_contract to void (i8*, i8*)*)) #4
  br label %done

done:                                             ; preds = %for.end.521, %if.then.29
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  store i32 1, i32* %pre_comp_type, align 4, !tbaa !25
  %nistp224 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19, i32 0
  %15 = bitcast %struct.nistp224_pre_comp_st** %nistp224 to i8**
  store i8* %call.i, i8** %15, align 8, !tbaa !15
  br label %err

err:                                              ; preds = %nistp224_pre_comp_new.exit, %nistp224_pre_comp_new.exit.thread, %lor.lhs.false.45, %lor.lhs.false, %if.end.30, %if.end.16, %if.end.12, %if.end.8, %if.end.3, %done
  %ret.0 = phi i32 [ 0, %if.end.3 ], [ 0, %if.end.8 ], [ 0, %if.end.12 ], [ 0, %nistp224_pre_comp_new.exit ], [ 1, %done ], [ 0, %lor.lhs.false.45 ], [ 0, %lor.lhs.false ], [ 0, %if.end.30 ], [ 0, %if.end.16 ], [ 0, %nistp224_pre_comp_new.exit.thread ]
  %pre.0 = phi %struct.nistp224_pre_comp_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ null, %nistp224_pre_comp_new.exit ], [ null, %done ], [ %2, %lor.lhs.false.45 ], [ %2, %lor.lhs.false ], [ %2, %if.end.30 ], [ null, %if.end.16 ], [ null, %nistp224_pre_comp_new.exit.thread ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ %call13, %nistp224_pre_comp_new.exit ], [ %call13, %done ], [ %call13, %lor.lhs.false.45 ], [ %call13, %lor.lhs.false ], [ %call13, %if.end.30 ], [ %call13, %if.end.16 ], [ %call13, %nistp224_pre_comp_new.exit.thread ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx.addr.0) #4
  call void @EC_POINT_free(%struct.ec_point_st* %generator.0) #4
  call void @BN_CTX_free(%struct.bignum_ctx* %new_ctx.0) #4
  %cmp.i.722 = icmp eq %struct.nistp224_pre_comp_st* %pre.0, null
  br i1 %cmp.i.722, label %cleanup, label %if.end.i.724

if.end.i.724:                                     ; preds = %err
  %references.i.723 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %pre.0, i64 0, i32 1
  %16 = atomicrmw sub i32* %references.i.723, i32 1 release
  %cmp.i.i = icmp eq i32 %16, 1
  br i1 %cmp.i.i, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %if.end.i.724
  fence acquire
  br label %if.end.3.i

CRYPTO_DOWN_REF.exit.i:                           ; preds = %if.end.i.724
  %cmp1.i = icmp sgt i32 %16, 1
  br i1 %cmp1.i, label %cleanup, label %if.end.3.i

if.end.3.i:                                       ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %lock.i.725 = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %pre.0, i64 0, i32 2
  %17 = load i8*, i8** %lock.i.725, align 8, !tbaa !24
  call void @CRYPTO_THREAD_lock_free(i8* %17) #4
  %18 = bitcast %struct.nistp224_pre_comp_st* %pre.0 to i8*
  call void @CRYPTO_free(i8* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1260) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i, %CRYPTO_DOWN_REF.exit.i, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ %ret.0, %CRYPTO_DOWN_REF.exit.i ], [ %ret.0, %if.end.3.i ]
  call void @llvm.lifetime.end(i64 1024, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly uwtable
define i32 @ec_GFp_nistp224_have_precompute_mult(%struct.ec_group_st* nocapture readonly %group) #3 {
entry:
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %0 = load i32, i32* %pre_comp_type, align 4, !tbaa !25
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %nistp224 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19, i32 0
  %1 = load %struct.nistp224_pre_comp_st*, %struct.nistp224_pre_comp_st** %nistp224, align 8, !tbaa !15
  %cmp1 = icmp ne %struct.nistp224_pre_comp_st* %1, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare i32 @ec_GFp_nist_field_mul(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_nist_field_sqr(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i64 @ec_key_simple_priv2oct(%struct.ec_key_st*, i8*, i64) #2

declare i32 @ec_key_simple_oct2priv(%struct.ec_key_st*, i8*, i64) #2

declare i32 @ec_key_simple_generate_key(%struct.ec_key_st*) #2

declare i32 @ec_key_simple_check_key(%struct.ec_key_st*) #2

declare i32 @ec_key_simple_generate_public_key(%struct.ec_key_st*) #2

declare i32 @ecdh_simple_compute_key(i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*) #2

; Function Attrs: nounwind uwtable
define void @felem_neg(i64* nocapture %out, i64* nocapture readonly %in) #1 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !14
  %conv.i = zext i64 %0 to i128
  %arrayidx9.i = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx9.i, align 8, !tbaa !14
  %conv10.i = zext i64 %1 to i128
  %arrayidx13.i = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx13.i, align 8, !tbaa !14
  %conv14.i = zext i64 %2 to i128
  %sub16.i = sub nsw i128 18446744073709551360, %conv14.i
  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx17.i, align 8, !tbaa !14
  %conv18.i = zext i64 %3 to i128
  %sub20.i = sub nsw i128 18446744073709551360, %conv18.i
  %add6.i.4 = add i128 %sub16.i, 170141183460469229370504062281061498880
  %shr45.i = lshr i128 %add6.i.4, 56
  %add47.i = add nsw i128 %shr45.i, %sub20.i
  %and49.i = and i128 %add6.i.4, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %add.i.2 = sub nuw i128 -170141183460469231713240559642174521088, %conv.i
  %sub66.i = sub nuw i128 %add.i.2, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add3.i = sub nsw i128 170141183460469229388914496082775375616, %conv10.i
  %add63.i = add nuw i128 %add3.i, %shl61.i
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i.6 = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i.6, i64* %out, align 8, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !14
  %conv91.i = trunc i128 %add85.i to i64
  %arrayidx92.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define %struct.nistp224_pre_comp_st* @EC_nistp224_pre_comp_dup(%struct.nistp224_pre_comp_st* %p) #1 {
entry:
  %cmp = icmp eq %struct.nistp224_pre_comp_st* %p, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %references = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %p, i64 0, i32 1
  %0 = atomicrmw add i32* %references, i32 1 monotonic
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.nistp224_pre_comp_st* %p
}

; Function Attrs: nounwind uwtable
define void @EC_nistp224_pre_comp_free(%struct.nistp224_pre_comp_st* %p) #1 {
entry:
  %cmp = icmp eq %struct.nistp224_pre_comp_st* %p, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %p, i64 0, i32 1
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
  %lock = getelementptr inbounds %struct.nistp224_pre_comp_st, %struct.nistp224_pre_comp_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %lock, align 8, !tbaa !24
  tail call void @CRYPTO_THREAD_lock_free(i8* %1) #4
  %2 = bitcast %struct.nistp224_pre_comp_st* %p to i8*
  tail call void @CRYPTO_free(i8* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1260) #4
  br label %cleanup

cleanup:                                          ; preds = %CRYPTO_DOWN_REF.exit, %entry, %if.end.3
  ret void
}

declare void @CRYPTO_THREAD_lock_free(i8*) #2

declare void @CRYPTO_free(i8*, i8*, i32) #2

declare i32 @ec_GFp_simple_group_init(%struct.ec_group_st*) #2

declare %struct.bignum_ctx* @BN_CTX_new() #2

declare void @BN_CTX_start(%struct.bignum_ctx*) #2

declare %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx*) #2

declare %struct.bignum_st* @BN_bin2bn(i8*, i32, %struct.bignum_st*) #2

declare i32 @BN_cmp(%struct.bignum_st*, %struct.bignum_st*) #2

declare void @ERR_put_error(i32, i32, i32, i8*, i32) #2

declare i32 @BN_nist_mod_224(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @ec_GFp_simple_group_set_curve(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare void @BN_CTX_end(%struct.bignum_ctx*) #2

declare void @BN_CTX_free(%struct.bignum_ctx*) #2

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @BN_to_felem(i64* nocapture %out, %struct.bignum_st* %bn) #1 {
entry:
  %b_in = alloca [28 x i8], align 16
  %b_out = alloca [28 x i8], align 16
  %0 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %0) #4
  %1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %1) #4
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 16, i1 false)
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* %bn) #4
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp ugt i32 %div, 28
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 345) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_is_negative(%struct.bignum_st* %bn) #4
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 349) #4
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @BN_bn2bin(%struct.bignum_st* %bn, i8* %0) #4
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
  %arrayidx.i.prol = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 %idxprom.i.prol
  %3 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !18
  %arrayidx3.i.prol = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 %indvars.iv.i.prol
  store i8 %3, i8* %arrayidx3.i.prol, align 1, !tbaa !18
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.i.split.loopexit, label %for.body.i.prol, !llvm.loop !26

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
  %arrayidx.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 %idxprom.i
  %6 = load i8, i8* %arrayidx.i, align 1, !tbaa !18
  %arrayidx3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 %indvars.iv.i
  store i8 %6, i8* %arrayidx3.i, align 1, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %7 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %7
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 %idxprom.i.1
  %8 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !18
  %arrayidx3.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i
  store i8 %8, i8* %arrayidx3.i.1, align 1, !tbaa !18
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %9 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %9
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 %idxprom.i.2
  %10 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !18
  %arrayidx3.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.1
  store i8 %10, i8* %arrayidx3.i.2, align 1, !tbaa !18
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %11 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %11
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 %idxprom.i.3
  %12 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !18
  %arrayidx3.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.2
  store i8 %12, i8* %arrayidx3.i.3, align 1, !tbaa !18
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %call5
  br i1 %exitcond.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  %.phi.trans.insert = bitcast [28 x i8]* %b_out to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 16, !tbaa !14
  %add.ptr.i.phi.trans.insert = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 7
  %.phi.trans.insert15 = bitcast i8* %add.ptr.i.phi.trans.insert to i64*
  %.pre16 = load i64, i64* %.phi.trans.insert15, align 8, !tbaa !14
  %add.ptr3.i.phi.trans.insert = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 14
  %.phi.trans.insert17 = bitcast i8* %add.ptr3.i.phi.trans.insert to i64*
  %.pre18 = load i64, i64* %.phi.trans.insert17, align 8, !tbaa !14
  %add.ptr6.i.phi.trans.insert = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 20
  %.phi.trans.insert19 = bitcast i8* %add.ptr6.i.phi.trans.insert to i64*
  %.pre20 = load i64, i64* %.phi.trans.insert19, align 8, !tbaa !14
  %phitmp = and i64 %.pre, 72057594037927935
  %phitmp31 = and i64 %.pre16, 72057594037927935
  %phitmp32 = and i64 %.pre18, 72057594037927935
  %phitmp33 = lshr i64 %.pre20, 8
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %if.end.4, %flip_endian.exit.loopexit
  %13 = phi i64 [ %phitmp33, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %14 = phi i64 [ %phitmp32, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %15 = phi i64 [ %phitmp31, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %16 = phi i64 [ %phitmp, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  store i64 %16, i64* %out, align 8, !tbaa !14
  %arrayidx2.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %15, i64* %arrayidx2.i, align 8, !tbaa !14
  %arrayidx5.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %14, i64* %arrayidx5.i, align 8, !tbaa !14
  %arrayidx7.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %13, i64* %arrayidx7.i, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %flip_endian.exit, %if.then.3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.3 ], [ 1, %flip_endian.exit ]
  call void @llvm.lifetime.end(i64 28, i8* %1) #4
  call void @llvm.lifetime.end(i64 28, i8* %0) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @felem_inv(i64* nocapture %out, i64* nocapture readonly %in) #1 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !14
  %mul.i = shl i64 %0, 1
  %arrayidx1.i = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %mul2.i = shl i64 %1, 1
  %arrayidx3.i = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx3.i, align 8, !tbaa !14
  %mul4.i = shl i64 %2, 1
  %conv.i = zext i64 %0 to i128
  %mul8.i = mul nuw i128 %conv.i, %conv.i
  %conv12.i = zext i64 %mul2.i to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %conv17.i = zext i64 %mul4.i to i128
  %mul18.i = mul nuw i128 %conv17.i, %conv.i
  %conv20.i = zext i64 %1 to i128
  %mul23.i = mul nuw i128 %conv20.i, %conv20.i
  %arrayidx25.i = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv26.i = zext i64 %3 to i128
  %conv27.i = zext i64 %mul.i to i128
  %mul28.i = mul nuw i128 %conv26.i, %conv27.i
  %mul32.i = mul nuw i128 %conv17.i, %conv20.i
  %add33.i = add i128 %mul32.i, %mul28.i
  %mul38.i = mul nuw i128 %conv26.i, %conv12.i
  %conv40.i = zext i64 %2 to i128
  %mul43.i = mul nuw i128 %conv40.i, %conv40.i
  %add44.i = add i128 %mul38.i, %mul43.i
  %mul49.i = mul nuw i128 %conv26.i, %conv17.i
  %mul55.i = mul nuw i128 %conv26.i, %conv26.i
  %add.i.2641 = add i128 %mul8.i, -170141183460469231731687303715884072960
  %add3.i.2643 = add i128 %mul13.i, 170141183460469229370468033484042534912
  %shr.i.2649 = lshr i128 %mul55.i, 16
  %add14.i.2650 = add i128 %add44.i, %shr.i.2649
  %and.i.2651 = shl i128 %mul55.i, 40
  %shl.i.2652 = and i128 %and.i.2651, 72056494526300160
  %shr21.i.2656 = lshr i128 %mul49.i, 16
  %and25.i.2658 = shl i128 %mul49.i, 40
  %shl26.i.2659 = and i128 %and25.i.2658, 72055395014672384
  %sub31.i.2661 = sub i128 %add3.i.2643, %mul49.i
  %shr33.i.2662 = lshr i128 %add14.i.2650, 16
  %add.i = add i128 %mul23.i, 170141183460469229370504062281061498880
  %add6.i.2645 = add i128 %add.i, %mul18.i
  %sub.i.2654 = sub i128 %add6.i.2645, %mul55.i
  %add28.i.2660 = add i128 %sub.i.2654, %shl26.i.2659
  %add35.i.2663 = add i128 %add28.i.2660, %shr33.i.2662
  %and37.i.2664 = shl i128 %add14.i.2650, 40
  %shl38.i.2665 = and i128 %and37.i.2664, 72056494526300160
  %add40.i.2666 = add i128 %sub31.i.2661, %shl38.i.2665
  %sub43.i.2667 = sub i128 %add.i.2641, %add14.i.2650
  %shr45.i.2668 = lshr i128 %add35.i.2663, 56
  %add17.i.2653 = add i128 %add33.i, %shr21.i.2656
  %add23.i.2657 = add i128 %add17.i.2653, %shl.i.2652
  %add47.i.2669 = add i128 %add23.i.2657, %shr45.i.2668
  %and49.i.2670 = and i128 %add35.i.2663, 72057594037927935
  %shr51.i.2671 = lshr i128 %add47.i.2669, 56
  %and54.i.2672 = and i128 %add47.i.2669, 72057594037927935
  %shr56.i.2673 = lshr i128 %add47.i.2669, 72
  %add58.i.2674 = add nuw nsw i128 %shr56.i.2673, %and49.i.2670
  %and60.i.2675 = shl nuw nsw i128 %shr51.i.2671, 40
  %shl61.i.2676 = and i128 %and60.i.2675, 72056494526300160
  %add63.i.2677 = add i128 %add40.i.2666, %shl61.i.2676
  %sub66.i.2678 = sub i128 %sub43.i.2667, %shr51.i.2671
  %shr68.i.2679 = lshr i128 %sub66.i.2678, 56
  %add70.i.2680 = add i128 %add63.i.2677, %shr68.i.2679
  %shr75.i.2683 = lshr i128 %add70.i.2680, 56
  %add77.i.2684 = add nuw nsw i128 %add58.i.2674, %shr75.i.2683
  %shr83.i.2688 = lshr i128 %add77.i.2684, 56
  %add85.i.2689 = add nuw nsw i128 %shr83.i.2688, %and54.i.2672
  %conv2.i.2597 = and i128 %sub66.i.2678, 72057594037927935
  %mul.i.2598 = mul nuw nsw i128 %conv2.i.2597, %conv.i
  %conv7.i.2600 = and i128 %add70.i.2680, 72057594037927935
  %mul8.i.2601 = mul nuw nsw i128 %conv7.i.2600, %conv.i
  %mul13.i.2604 = mul nuw nsw i128 %conv2.i.2597, %conv20.i
  %conv18.i.2608 = and i128 %add77.i.2684, 72057594037927935
  %mul19.i.2609 = mul nuw nsw i128 %conv18.i.2608, %conv.i
  %mul24.i.2610 = mul nuw nsw i128 %conv7.i.2600, %conv20.i
  %mul30.i.2614 = mul nuw nsw i128 %conv2.i.2597, %conv40.i
  %mul37.i.2619 = mul nuw nsw i128 %add85.i.2689, %conv.i
  %mul42.i.2620 = mul nuw nsw i128 %conv18.i.2608, %conv20.i
  %mul48.i.2622 = mul nuw nsw i128 %conv7.i.2600, %conv40.i
  %mul54.i.2626 = mul nuw nsw i128 %conv2.i.2597, %conv26.i
  %mul61.i.2629 = mul nuw nsw i128 %add85.i.2689, %conv20.i
  %mul66.i.2630 = mul nuw nsw i128 %conv18.i.2608, %conv40.i
  %mul72.i.2632 = mul nuw nsw i128 %conv7.i.2600, %conv26.i
  %mul79.i.2635 = mul nuw nsw i128 %add85.i.2689, %conv40.i
  %mul84.i.2636 = mul nuw nsw i128 %conv18.i.2608, %conv26.i
  %add85.i.2637 = add nuw nsw i128 %mul79.i.2635, %mul84.i.2636
  %mul91.i.2639 = mul nuw nsw i128 %add85.i.2689, %conv26.i
  %add.i.2542 = add nsw i128 %mul.i.2598, -170141183460469231731687303715884072960
  %shr.i.2550 = lshr i128 %mul91.i.2639, 16
  %add67.i.2631 = add nuw nsw i128 %mul66.i.2630, %mul72.i.2632
  %add73.i.2633 = add nuw nsw i128 %add67.i.2631, %mul61.i.2629
  %add14.i.2551 = add nuw i128 %add73.i.2633, %shr.i.2550
  %and.i.2552 = shl i128 %mul91.i.2639, 40
  %shl.i.2553 = and i128 %and.i.2552, 72056494526300160
  %shr21.i.2557 = lshr i128 %add85.i.2637, 16
  %and25.i.2559 = shl i128 %add85.i.2637, 40
  %shl26.i.2560 = and i128 %and25.i.2559, 72056494526300160
  %shr33.i.2563 = lshr i128 %add14.i.2551, 16
  %add25.i.2611 = add nuw i128 %mul30.i.2614, 170141183460469229370504062281061498880
  %add31.i.2615 = add i128 %add25.i.2611, %mul24.i.2610
  %add6.i.2546 = add i128 %add31.i.2615, %mul19.i.2609
  %sub.i.2555 = sub i128 %add6.i.2546, %mul91.i.2639
  %add28.i.2561 = add i128 %sub.i.2555, %shl26.i.2560
  %add35.i.2564 = add i128 %add28.i.2561, %shr33.i.2563
  %and37.i.2565 = shl i128 %add14.i.2551, 40
  %shl38.i.2566 = and i128 %and37.i.2565, 72056494526300160
  %sub43.i.2568 = sub i128 %add.i.2542, %add14.i.2551
  %shr45.i.2569 = lshr i128 %add35.i.2564, 56
  %add43.i.2621 = add nuw nsw i128 %mul48.i.2622, %mul54.i.2626
  %add49.i.2623 = add nuw nsw i128 %add43.i.2621, %mul42.i.2620
  %add55.i.2627 = add nuw nsw i128 %add49.i.2623, %mul37.i.2619
  %add17.i.2554 = add nuw i128 %add55.i.2627, %shl.i.2553
  %add23.i.2558 = add i128 %add17.i.2554, %shr21.i.2557
  %add47.i.2570 = add i128 %add23.i.2558, %shr45.i.2569
  %and49.i.2571 = and i128 %add35.i.2564, 72057594037927935
  %shr51.i.2572 = lshr i128 %add47.i.2570, 56
  %and54.i.2573 = and i128 %add47.i.2570, 72057594037927935
  %shr56.i.2574 = lshr i128 %add47.i.2570, 72
  %add58.i.2575 = add nuw nsw i128 %shr56.i.2574, %and49.i.2571
  %and60.i.2576 = shl nuw nsw i128 %shr51.i.2572, 40
  %shl61.i.2577 = and i128 %and60.i.2576, 72056494526300160
  %sub66.i.2579 = sub i128 %sub43.i.2568, %shr51.i.2572
  %shr68.i.2580 = lshr i128 %sub66.i.2579, 56
  %add.i.2605 = add nuw i128 %mul13.i.2604, 170141183460469229370468033484042534912
  %add3.i.2544 = add i128 %add.i.2605, %mul8.i.2601
  %sub31.i.2562 = sub i128 %add3.i.2544, %add85.i.2637
  %add40.i.2567 = add i128 %sub31.i.2562, %shl38.i.2566
  %add63.i.2578 = add i128 %add40.i.2567, %shl61.i.2577
  %add70.i.2581 = add i128 %add63.i.2578, %shr68.i.2580
  %sub66.tr.i.2582 = trunc i128 %sub66.i.2579 to i64
  %conv.i.2583 = and i64 %sub66.tr.i.2582, 72057594037927935
  %shr75.i.2584 = lshr i128 %add70.i.2581, 56
  %add77.i.2585 = add nuw nsw i128 %add58.i.2575, %shr75.i.2584
  %add70.tr.i.2586 = trunc i128 %add70.i.2581 to i64
  %conv80.i.2587 = and i64 %add70.tr.i.2586, 72057594037927935
  %shr83.i.2589 = lshr i128 %add77.i.2585, 56
  %add85.i.2590 = add nuw nsw i128 %shr83.i.2589, %and54.i.2573
  %add77.tr.i.2591 = trunc i128 %add77.i.2585 to i64
  %conv88.i.2592 = and i64 %add77.tr.i.2591, 72057594037927935
  %mul.i.2510 = shl nuw nsw i64 %conv.i.2583, 1
  %mul2.i.2512 = shl nuw nsw i64 %conv80.i.2587, 1
  %mul4.i.2514 = shl nuw nsw i64 %conv88.i.2592, 1
  %conv.i.2515 = zext i64 %conv.i.2583 to i128
  %mul8.i.2516 = mul nuw nsw i128 %conv.i.2515, %conv.i.2515
  %conv12.i.2517 = zext i64 %mul2.i.2512 to i128
  %mul13.i.2518 = mul nuw nsw i128 %conv12.i.2517, %conv.i.2515
  %conv17.i.2520 = zext i64 %mul4.i.2514 to i128
  %mul18.i.2521 = mul nuw nsw i128 %conv17.i.2520, %conv.i.2515
  %conv20.i.2522 = zext i64 %conv80.i.2587 to i128
  %mul23.i.2523 = mul nuw nsw i128 %conv20.i.2522, %conv20.i.2522
  %conv27.i.2528 = zext i64 %mul.i.2510 to i128
  %mul28.i.2529 = mul nuw nsw i128 %add85.i.2590, %conv27.i.2528
  %mul32.i.2530 = mul nuw nsw i128 %conv17.i.2520, %conv20.i.2522
  %add33.i.2531 = add nuw nsw i128 %mul32.i.2530, %mul28.i.2529
  %mul38.i.2533 = mul nuw nsw i128 %add85.i.2590, %conv12.i.2517
  %conv40.i.2534 = zext i64 %conv88.i.2592 to i128
  %mul43.i.2535 = mul nuw nsw i128 %conv40.i.2534, %conv40.i.2534
  %add44.i.2536 = add nuw nsw i128 %mul43.i.2535, %mul38.i.2533
  %mul49.i.2538 = mul nuw nsw i128 %conv17.i.2520, %add85.i.2590
  %mul55.i.2540 = mul nuw nsw i128 %add85.i.2590, %add85.i.2590
  %add.i.2456 = add nsw i128 %mul8.i.2516, -170141183460469231731687303715884072960
  %add3.i.2458 = add nuw i128 %mul13.i.2518, 170141183460469229370468033484042534912
  %shr.i.2464 = lshr i128 %mul55.i.2540, 16
  %add14.i.2465 = add nuw i128 %add44.i.2536, %shr.i.2464
  %and.i.2466 = shl i128 %mul55.i.2540, 40
  %shl.i.2467 = and i128 %and.i.2466, 72056494526300160
  %add17.i.2468 = add nuw i128 %add33.i.2531, %shl.i.2467
  %shr21.i.2471 = lshr i128 %mul49.i.2538, 16
  %add23.i.2472 = add i128 %add17.i.2468, %shr21.i.2471
  %and25.i.2473 = shl i128 %mul49.i.2538, 40
  %shl26.i.2474 = and i128 %and25.i.2473, 72055395014672384
  %sub31.i.2476 = sub i128 %add3.i.2458, %mul49.i.2538
  %shr33.i.2477 = lshr i128 %add14.i.2465, 16
  %add.i.2524 = add nuw i128 %mul23.i.2523, 170141183460469229370504062281061498880
  %add6.i.2460 = sub i128 %add.i.2524, %mul55.i.2540
  %sub.i.2469 = add i128 %add6.i.2460, %mul18.i.2521
  %add28.i.2475 = add i128 %sub.i.2469, %shl26.i.2474
  %add35.i.2478 = add i128 %add28.i.2475, %shr33.i.2477
  %and37.i.2479 = shl i128 %add14.i.2465, 40
  %shl38.i.2480 = and i128 %and37.i.2479, 72056494526300160
  %add40.i.2481 = add i128 %sub31.i.2476, %shl38.i.2480
  %sub43.i.2482 = sub i128 %add.i.2456, %add14.i.2465
  %shr45.i.2483 = lshr i128 %add35.i.2478, 56
  %add47.i.2484 = add i128 %add23.i.2472, %shr45.i.2483
  %and49.i.2485 = and i128 %add35.i.2478, 72057594037927935
  %shr51.i.2486 = lshr i128 %add47.i.2484, 56
  %and54.i.2487 = and i128 %add47.i.2484, 72057594037927935
  %shr56.i.2488 = lshr i128 %add47.i.2484, 72
  %add58.i.2489 = add nuw nsw i128 %shr56.i.2488, %and49.i.2485
  %and60.i.2490 = shl nuw nsw i128 %shr51.i.2486, 40
  %shl61.i.2491 = and i128 %and60.i.2490, 72056494526300160
  %add63.i.2492 = add i128 %add40.i.2481, %shl61.i.2491
  %sub66.i.2493 = sub i128 %sub43.i.2482, %shr51.i.2486
  %shr68.i.2494 = lshr i128 %sub66.i.2493, 56
  %add70.i.2495 = add i128 %add63.i.2492, %shr68.i.2494
  %shr75.i.2498 = lshr i128 %add70.i.2495, 56
  %add77.i.2499 = add nuw nsw i128 %add58.i.2489, %shr75.i.2498
  %shr83.i.2503 = lshr i128 %add77.i.2499, 56
  %add85.i.2504 = add nuw nsw i128 %shr83.i.2503, %and54.i.2487
  %conv2.i.2412 = and i128 %sub66.i.2493, 72057594037927935
  %mul.i.2413 = mul nuw nsw i128 %conv2.i.2412, %conv.i
  %conv7.i.2415 = and i128 %add70.i.2495, 72057594037927935
  %mul8.i.2416 = mul nuw nsw i128 %conv7.i.2415, %conv.i
  %mul13.i.2419 = mul nuw nsw i128 %conv2.i.2412, %conv20.i
  %conv18.i.2423 = and i128 %add77.i.2499, 72057594037927935
  %mul19.i.2424 = mul nuw nsw i128 %conv18.i.2423, %conv.i
  %mul24.i.2425 = mul nuw nsw i128 %conv7.i.2415, %conv20.i
  %mul30.i.2429 = mul nuw nsw i128 %conv2.i.2412, %conv40.i
  %mul37.i.2434 = mul nuw nsw i128 %add85.i.2504, %conv.i
  %mul42.i.2435 = mul nuw nsw i128 %conv18.i.2423, %conv20.i
  %mul48.i.2437 = mul nuw nsw i128 %conv7.i.2415, %conv40.i
  %mul54.i.2441 = mul nuw nsw i128 %conv2.i.2412, %conv26.i
  %mul61.i.2444 = mul nuw nsw i128 %add85.i.2504, %conv20.i
  %mul66.i.2445 = mul nuw nsw i128 %conv18.i.2423, %conv40.i
  %mul72.i.2447 = mul nuw nsw i128 %conv7.i.2415, %conv26.i
  %mul79.i.2450 = mul nuw nsw i128 %add85.i.2504, %conv40.i
  %mul84.i.2451 = mul nuw nsw i128 %conv18.i.2423, %conv26.i
  %add85.i.2452 = add nuw nsw i128 %mul79.i.2450, %mul84.i.2451
  %mul91.i.2454 = mul nuw nsw i128 %add85.i.2504, %conv26.i
  %add.i.2357 = add nsw i128 %mul.i.2413, -170141183460469231731687303715884072960
  %shr.i.2365 = lshr i128 %mul91.i.2454, 16
  %add67.i.2446 = add nuw nsw i128 %mul66.i.2445, %mul72.i.2447
  %add73.i.2448 = add nuw nsw i128 %add67.i.2446, %mul61.i.2444
  %add14.i.2366 = add nuw i128 %add73.i.2448, %shr.i.2365
  %and.i.2367 = shl i128 %mul91.i.2454, 40
  %shl.i.2368 = and i128 %and.i.2367, 72056494526300160
  %shr21.i.2372 = lshr i128 %add85.i.2452, 16
  %and25.i.2374 = shl i128 %add85.i.2452, 40
  %shl26.i.2375 = and i128 %and25.i.2374, 72056494526300160
  %shr33.i.2378 = lshr i128 %add14.i.2366, 16
  %add25.i.2426 = add nuw i128 %mul30.i.2429, 170141183460469229370504062281061498880
  %add31.i.2430 = add i128 %add25.i.2426, %mul24.i.2425
  %add6.i.2361 = add i128 %add31.i.2430, %mul19.i.2424
  %sub.i.2370 = sub i128 %add6.i.2361, %mul91.i.2454
  %add28.i.2376 = add i128 %sub.i.2370, %shl26.i.2375
  %add35.i.2379 = add i128 %add28.i.2376, %shr33.i.2378
  %and37.i.2380 = shl i128 %add14.i.2366, 40
  %shl38.i.2381 = and i128 %and37.i.2380, 72056494526300160
  %sub43.i.2383 = sub i128 %add.i.2357, %add14.i.2366
  %shr45.i.2384 = lshr i128 %add35.i.2379, 56
  %add43.i.2436 = add nuw nsw i128 %mul48.i.2437, %mul54.i.2441
  %add49.i.2438 = add nuw nsw i128 %add43.i.2436, %mul42.i.2435
  %add55.i.2442 = add nuw nsw i128 %add49.i.2438, %mul37.i.2434
  %add17.i.2369 = add nuw i128 %add55.i.2442, %shl.i.2368
  %add23.i.2373 = add i128 %add17.i.2369, %shr21.i.2372
  %add47.i.2385 = add i128 %add23.i.2373, %shr45.i.2384
  %and49.i.2386 = and i128 %add35.i.2379, 72057594037927935
  %shr51.i.2387 = lshr i128 %add47.i.2385, 56
  %and54.i.2388 = and i128 %add47.i.2385, 72057594037927935
  %shr56.i.2389 = lshr i128 %add47.i.2385, 72
  %add58.i.2390 = add nuw nsw i128 %shr56.i.2389, %and49.i.2386
  %and60.i.2391 = shl nuw nsw i128 %shr51.i.2387, 40
  %shl61.i.2392 = and i128 %and60.i.2391, 72056494526300160
  %sub66.i.2394 = sub i128 %sub43.i.2383, %shr51.i.2387
  %shr68.i.2395 = lshr i128 %sub66.i.2394, 56
  %add.i.2420 = add nuw i128 %mul13.i.2419, 170141183460469229370468033484042534912
  %add3.i.2359 = add i128 %add.i.2420, %mul8.i.2416
  %sub31.i.2377 = sub i128 %add3.i.2359, %add85.i.2452
  %add40.i.2382 = add i128 %sub31.i.2377, %shl38.i.2381
  %add63.i.2393 = add i128 %add40.i.2382, %shl61.i.2392
  %add70.i.2396 = add i128 %add63.i.2393, %shr68.i.2395
  %sub66.tr.i.2397 = trunc i128 %sub66.i.2394 to i64
  %conv.i.2398 = and i64 %sub66.tr.i.2397, 72057594037927935
  %shr75.i.2399 = lshr i128 %add70.i.2396, 56
  %add77.i.2400 = add nuw nsw i128 %add58.i.2390, %shr75.i.2399
  %add70.tr.i.2401 = trunc i128 %add70.i.2396 to i64
  %conv80.i.2402 = and i64 %add70.tr.i.2401, 72057594037927935
  %shr83.i.2404 = lshr i128 %add77.i.2400, 56
  %add85.i.2405 = add nuw nsw i128 %shr83.i.2404, %and54.i.2388
  %add77.tr.i.2406 = trunc i128 %add77.i.2400 to i64
  %conv88.i.2407 = and i64 %add77.tr.i.2406, 72057594037927935
  %mul.i.2325 = shl nuw nsw i64 %conv.i.2398, 1
  %mul2.i.2327 = shl nuw nsw i64 %conv80.i.2402, 1
  %mul4.i.2329 = shl nuw nsw i64 %conv88.i.2407, 1
  %conv.i.2330 = zext i64 %conv.i.2398 to i128
  %mul8.i.2331 = mul nuw nsw i128 %conv.i.2330, %conv.i.2330
  %conv12.i.2332 = zext i64 %mul2.i.2327 to i128
  %mul13.i.2333 = mul nuw nsw i128 %conv12.i.2332, %conv.i.2330
  %conv17.i.2335 = zext i64 %mul4.i.2329 to i128
  %mul18.i.2336 = mul nuw nsw i128 %conv17.i.2335, %conv.i.2330
  %conv20.i.2337 = zext i64 %conv80.i.2402 to i128
  %mul23.i.2338 = mul nuw nsw i128 %conv20.i.2337, %conv20.i.2337
  %conv27.i.2343 = zext i64 %mul.i.2325 to i128
  %mul28.i.2344 = mul nuw nsw i128 %add85.i.2405, %conv27.i.2343
  %mul32.i.2345 = mul nuw nsw i128 %conv17.i.2335, %conv20.i.2337
  %add33.i.2346 = add nuw nsw i128 %mul32.i.2345, %mul28.i.2344
  %mul38.i.2348 = mul nuw nsw i128 %add85.i.2405, %conv12.i.2332
  %conv40.i.2349 = zext i64 %conv88.i.2407 to i128
  %mul43.i.2350 = mul nuw nsw i128 %conv40.i.2349, %conv40.i.2349
  %add44.i.2351 = add nuw nsw i128 %mul43.i.2350, %mul38.i.2348
  %mul49.i.2353 = mul nuw nsw i128 %conv17.i.2335, %add85.i.2405
  %mul55.i.2355 = mul nuw nsw i128 %add85.i.2405, %add85.i.2405
  %add.i.2271 = add nsw i128 %mul8.i.2331, -170141183460469231731687303715884072960
  %add3.i.2273 = add nuw i128 %mul13.i.2333, 170141183460469229370468033484042534912
  %shr.i.2279 = lshr i128 %mul55.i.2355, 16
  %add14.i.2280 = add nuw i128 %add44.i.2351, %shr.i.2279
  %and.i.2281 = shl i128 %mul55.i.2355, 40
  %shl.i.2282 = and i128 %and.i.2281, 72056494526300160
  %add17.i.2283 = add nuw i128 %add33.i.2346, %shl.i.2282
  %shr21.i.2286 = lshr i128 %mul49.i.2353, 16
  %add23.i.2287 = add i128 %add17.i.2283, %shr21.i.2286
  %and25.i.2288 = shl i128 %mul49.i.2353, 40
  %shl26.i.2289 = and i128 %and25.i.2288, 72055395014672384
  %sub31.i.2291 = sub i128 %add3.i.2273, %mul49.i.2353
  %shr33.i.2292 = lshr i128 %add14.i.2280, 16
  %add.i.2339 = add nuw i128 %mul23.i.2338, 170141183460469229370504062281061498880
  %add6.i.2275 = sub i128 %add.i.2339, %mul55.i.2355
  %sub.i.2284 = add i128 %add6.i.2275, %mul18.i.2336
  %add28.i.2290 = add i128 %sub.i.2284, %shl26.i.2289
  %add35.i.2293 = add i128 %add28.i.2290, %shr33.i.2292
  %and37.i.2294 = shl i128 %add14.i.2280, 40
  %shl38.i.2295 = and i128 %and37.i.2294, 72056494526300160
  %add40.i.2296 = add i128 %sub31.i.2291, %shl38.i.2295
  %sub43.i.2297 = sub i128 %add.i.2271, %add14.i.2280
  %shr45.i.2298 = lshr i128 %add35.i.2293, 56
  %add47.i.2299 = add i128 %add23.i.2287, %shr45.i.2298
  %and49.i.2300 = and i128 %add35.i.2293, 72057594037927935
  %shr51.i.2301 = lshr i128 %add47.i.2299, 56
  %and54.i.2302 = and i128 %add47.i.2299, 72057594037927935
  %shr56.i.2303 = lshr i128 %add47.i.2299, 72
  %add58.i.2304 = add nuw nsw i128 %shr56.i.2303, %and49.i.2300
  %and60.i.2305 = shl nuw nsw i128 %shr51.i.2301, 40
  %shl61.i.2306 = and i128 %and60.i.2305, 72056494526300160
  %add63.i.2307 = add i128 %add40.i.2296, %shl61.i.2306
  %sub66.i.2308 = sub i128 %sub43.i.2297, %shr51.i.2301
  %shr68.i.2309 = lshr i128 %sub66.i.2308, 56
  %add70.i.2310 = add i128 %add63.i.2307, %shr68.i.2309
  %sub66.tr.i.2311 = trunc i128 %sub66.i.2308 to i64
  %conv.i.2312 = and i64 %sub66.tr.i.2311, 72057594037927935
  %shr75.i.2313 = lshr i128 %add70.i.2310, 56
  %add77.i.2314 = add nuw nsw i128 %add58.i.2304, %shr75.i.2313
  %add70.tr.i.2315 = trunc i128 %add70.i.2310 to i64
  %conv80.i.2316 = and i64 %add70.tr.i.2315, 72057594037927935
  %shr83.i.2318 = lshr i128 %add77.i.2314, 56
  %add85.i.2319 = add nuw nsw i128 %shr83.i.2318, %and54.i.2302
  %add77.tr.i.2320 = trunc i128 %add77.i.2314 to i64
  %conv88.i.2321 = and i64 %add77.tr.i.2320, 72057594037927935
  %mul.i.2239 = shl nuw nsw i64 %conv.i.2312, 1
  %mul2.i.2241 = shl nuw nsw i64 %conv80.i.2316, 1
  %mul4.i.2243 = shl nuw nsw i64 %conv88.i.2321, 1
  %conv.i.2244 = zext i64 %conv.i.2312 to i128
  %mul8.i.2245 = mul nuw nsw i128 %conv.i.2244, %conv.i.2244
  %conv12.i.2246 = zext i64 %mul2.i.2241 to i128
  %mul13.i.2247 = mul nuw nsw i128 %conv12.i.2246, %conv.i.2244
  %conv17.i.2249 = zext i64 %mul4.i.2243 to i128
  %mul18.i.2250 = mul nuw nsw i128 %conv17.i.2249, %conv.i.2244
  %conv20.i.2251 = zext i64 %conv80.i.2316 to i128
  %mul23.i.2252 = mul nuw nsw i128 %conv20.i.2251, %conv20.i.2251
  %conv27.i.2257 = zext i64 %mul.i.2239 to i128
  %mul28.i.2258 = mul nuw nsw i128 %add85.i.2319, %conv27.i.2257
  %mul32.i.2259 = mul nuw nsw i128 %conv17.i.2249, %conv20.i.2251
  %add33.i.2260 = add nuw nsw i128 %mul32.i.2259, %mul28.i.2258
  %mul38.i.2262 = mul nuw nsw i128 %add85.i.2319, %conv12.i.2246
  %conv40.i.2263 = zext i64 %conv88.i.2321 to i128
  %mul43.i.2264 = mul nuw nsw i128 %conv40.i.2263, %conv40.i.2263
  %add44.i.2265 = add nuw nsw i128 %mul43.i.2264, %mul38.i.2262
  %mul49.i.2267 = mul nuw nsw i128 %conv17.i.2249, %add85.i.2319
  %mul55.i.2269 = mul nuw nsw i128 %add85.i.2319, %add85.i.2319
  %add.i.2185 = add nsw i128 %mul8.i.2245, -170141183460469231731687303715884072960
  %add3.i.2187 = add nuw i128 %mul13.i.2247, 170141183460469229370468033484042534912
  %shr.i.2193 = lshr i128 %mul55.i.2269, 16
  %add14.i.2194 = add nuw i128 %add44.i.2265, %shr.i.2193
  %and.i.2195 = shl i128 %mul55.i.2269, 40
  %shl.i.2196 = and i128 %and.i.2195, 72056494526300160
  %add17.i.2197 = add nuw i128 %add33.i.2260, %shl.i.2196
  %shr21.i.2200 = lshr i128 %mul49.i.2267, 16
  %add23.i.2201 = add i128 %add17.i.2197, %shr21.i.2200
  %and25.i.2202 = shl i128 %mul49.i.2267, 40
  %shl26.i.2203 = and i128 %and25.i.2202, 72055395014672384
  %sub31.i.2205 = sub i128 %add3.i.2187, %mul49.i.2267
  %shr33.i.2206 = lshr i128 %add14.i.2194, 16
  %add.i.2253 = add nuw i128 %mul23.i.2252, 170141183460469229370504062281061498880
  %add6.i.2189 = sub i128 %add.i.2253, %mul55.i.2269
  %sub.i.2198 = add i128 %add6.i.2189, %mul18.i.2250
  %add28.i.2204 = add i128 %sub.i.2198, %shl26.i.2203
  %add35.i.2207 = add i128 %add28.i.2204, %shr33.i.2206
  %and37.i.2208 = shl i128 %add14.i.2194, 40
  %shl38.i.2209 = and i128 %and37.i.2208, 72056494526300160
  %add40.i.2210 = add i128 %sub31.i.2205, %shl38.i.2209
  %sub43.i.2211 = sub i128 %add.i.2185, %add14.i.2194
  %shr45.i.2212 = lshr i128 %add35.i.2207, 56
  %add47.i.2213 = add i128 %add23.i.2201, %shr45.i.2212
  %and49.i.2214 = and i128 %add35.i.2207, 72057594037927935
  %shr51.i.2215 = lshr i128 %add47.i.2213, 56
  %and54.i.2216 = and i128 %add47.i.2213, 72057594037927935
  %shr56.i.2217 = lshr i128 %add47.i.2213, 72
  %add58.i.2218 = add nuw nsw i128 %shr56.i.2217, %and49.i.2214
  %and60.i.2219 = shl nuw nsw i128 %shr51.i.2215, 40
  %shl61.i.2220 = and i128 %and60.i.2219, 72056494526300160
  %add63.i.2221 = add i128 %add40.i.2210, %shl61.i.2220
  %sub66.i.2222 = sub i128 %sub43.i.2211, %shr51.i.2215
  %shr68.i.2223 = lshr i128 %sub66.i.2222, 56
  %add70.i.2224 = add i128 %add63.i.2221, %shr68.i.2223
  %sub66.tr.i.2225 = trunc i128 %sub66.i.2222 to i64
  %conv.i.2226 = and i64 %sub66.tr.i.2225, 72057594037927935
  %shr75.i.2227 = lshr i128 %add70.i.2224, 56
  %add77.i.2228 = add nuw nsw i128 %add58.i.2218, %shr75.i.2227
  %add70.tr.i.2229 = trunc i128 %add70.i.2224 to i64
  %conv80.i.2230 = and i64 %add70.tr.i.2229, 72057594037927935
  %shr83.i.2232 = lshr i128 %add77.i.2228, 56
  %add85.i.2233 = add nuw nsw i128 %shr83.i.2232, %and54.i.2216
  %add77.tr.i.2234 = trunc i128 %add77.i.2228 to i64
  %conv88.i.2235 = and i64 %add77.tr.i.2234, 72057594037927935
  %mul.i.2153 = shl nuw nsw i64 %conv.i.2226, 1
  %mul2.i.2155 = shl nuw nsw i64 %conv80.i.2230, 1
  %mul4.i.2157 = shl nuw nsw i64 %conv88.i.2235, 1
  %conv.i.2158 = zext i64 %conv.i.2226 to i128
  %mul8.i.2159 = mul nuw nsw i128 %conv.i.2158, %conv.i.2158
  %conv12.i.2160 = zext i64 %mul2.i.2155 to i128
  %mul13.i.2161 = mul nuw nsw i128 %conv12.i.2160, %conv.i.2158
  %conv17.i.2163 = zext i64 %mul4.i.2157 to i128
  %mul18.i.2164 = mul nuw nsw i128 %conv17.i.2163, %conv.i.2158
  %conv20.i.2165 = zext i64 %conv80.i.2230 to i128
  %mul23.i.2166 = mul nuw nsw i128 %conv20.i.2165, %conv20.i.2165
  %conv27.i.2171 = zext i64 %mul.i.2153 to i128
  %mul28.i.2172 = mul nuw nsw i128 %add85.i.2233, %conv27.i.2171
  %mul32.i.2173 = mul nuw nsw i128 %conv17.i.2163, %conv20.i.2165
  %add33.i.2174 = add nuw nsw i128 %mul32.i.2173, %mul28.i.2172
  %mul38.i.2176 = mul nuw nsw i128 %add85.i.2233, %conv12.i.2160
  %conv40.i.2177 = zext i64 %conv88.i.2235 to i128
  %mul43.i.2178 = mul nuw nsw i128 %conv40.i.2177, %conv40.i.2177
  %add44.i.2179 = add nuw nsw i128 %mul43.i.2178, %mul38.i.2176
  %mul49.i.2181 = mul nuw nsw i128 %conv17.i.2163, %add85.i.2233
  %mul55.i.2183 = mul nuw nsw i128 %add85.i.2233, %add85.i.2233
  %add.i.2099 = add nsw i128 %mul8.i.2159, -170141183460469231731687303715884072960
  %add3.i.2101 = add nuw i128 %mul13.i.2161, 170141183460469229370468033484042534912
  %shr.i.2107 = lshr i128 %mul55.i.2183, 16
  %add14.i.2108 = add nuw i128 %add44.i.2179, %shr.i.2107
  %and.i.2109 = shl i128 %mul55.i.2183, 40
  %shl.i.2110 = and i128 %and.i.2109, 72056494526300160
  %add17.i.2111 = add nuw i128 %add33.i.2174, %shl.i.2110
  %shr21.i.2114 = lshr i128 %mul49.i.2181, 16
  %add23.i.2115 = add i128 %add17.i.2111, %shr21.i.2114
  %and25.i.2116 = shl i128 %mul49.i.2181, 40
  %shl26.i.2117 = and i128 %and25.i.2116, 72055395014672384
  %sub31.i.2119 = sub i128 %add3.i.2101, %mul49.i.2181
  %shr33.i.2120 = lshr i128 %add14.i.2108, 16
  %add.i.2167 = add nuw i128 %mul23.i.2166, 170141183460469229370504062281061498880
  %add6.i.2103 = sub i128 %add.i.2167, %mul55.i.2183
  %sub.i.2112 = add i128 %add6.i.2103, %mul18.i.2164
  %add28.i.2118 = add i128 %sub.i.2112, %shl26.i.2117
  %add35.i.2121 = add i128 %add28.i.2118, %shr33.i.2120
  %and37.i.2122 = shl i128 %add14.i.2108, 40
  %shl38.i.2123 = and i128 %and37.i.2122, 72056494526300160
  %add40.i.2124 = add i128 %sub31.i.2119, %shl38.i.2123
  %sub43.i.2125 = sub i128 %add.i.2099, %add14.i.2108
  %shr45.i.2126 = lshr i128 %add35.i.2121, 56
  %add47.i.2127 = add i128 %add23.i.2115, %shr45.i.2126
  %and49.i.2128 = and i128 %add35.i.2121, 72057594037927935
  %shr51.i.2129 = lshr i128 %add47.i.2127, 56
  %and54.i.2130 = and i128 %add47.i.2127, 72057594037927935
  %shr56.i.2131 = lshr i128 %add47.i.2127, 72
  %add58.i.2132 = add nuw nsw i128 %shr56.i.2131, %and49.i.2128
  %and60.i.2133 = shl nuw nsw i128 %shr51.i.2129, 40
  %shl61.i.2134 = and i128 %and60.i.2133, 72056494526300160
  %add63.i.2135 = add i128 %add40.i.2124, %shl61.i.2134
  %sub66.i.2136 = sub i128 %sub43.i.2125, %shr51.i.2129
  %shr68.i.2137 = lshr i128 %sub66.i.2136, 56
  %add70.i.2138 = add i128 %add63.i.2135, %shr68.i.2137
  %shr75.i.2141 = lshr i128 %add70.i.2138, 56
  %add77.i.2142 = add nuw nsw i128 %add58.i.2132, %shr75.i.2141
  %shr83.i.2146 = lshr i128 %add77.i.2142, 56
  %add85.i.2147 = add nuw nsw i128 %shr83.i.2146, %and54.i.2130
  %conv.i.2054 = and i128 %sub66.i.2136, 72057594037927935
  %mul.i.2056 = mul nuw nsw i128 %conv.i.2054, %conv.i.2330
  %mul8.i.2059 = mul nuw nsw i128 %conv.i.2054, %conv20.i.2337
  %conv10.i.2061 = and i128 %add70.i.2138, 72057594037927935
  %mul13.i.2062 = mul nuw nsw i128 %conv10.i.2061, %conv.i.2330
  %mul19.i.2067 = mul nuw nsw i128 %conv.i.2054, %conv40.i.2349
  %mul24.i.2068 = mul nuw nsw i128 %conv10.i.2061, %conv20.i.2337
  %conv27.i.2071 = and i128 %add77.i.2142, 72057594037927935
  %mul30.i.2072 = mul nuw nsw i128 %conv27.i.2071, %conv.i.2330
  %mul37.i.2077 = mul nuw nsw i128 %conv.i.2054, %add85.i.2405
  %mul42.i.2078 = mul nuw nsw i128 %conv10.i.2061, %conv40.i.2349
  %add43.i.2079 = add nuw nsw i128 %mul42.i.2078, %mul37.i.2077
  %mul48.i.2080 = mul nuw nsw i128 %conv27.i.2071, %conv20.i.2337
  %add49.i.2081 = add nuw i128 %add43.i.2079, %mul48.i.2080
  %mul54.i.2084 = mul nuw nsw i128 %add85.i.2147, %conv.i.2330
  %add55.i.2085 = add i128 %add49.i.2081, %mul54.i.2084
  %mul61.i.2087 = mul nuw nsw i128 %conv10.i.2061, %add85.i.2405
  %mul66.i.2088 = mul nuw nsw i128 %conv27.i.2071, %conv40.i.2349
  %add67.i.2089 = add nuw nsw i128 %mul66.i.2088, %mul61.i.2087
  %mul72.i.2090 = mul nuw nsw i128 %add85.i.2147, %conv20.i.2337
  %add73.i.2091 = add nuw i128 %add67.i.2089, %mul72.i.2090
  %mul79.i.2093 = mul nuw nsw i128 %conv27.i.2071, %add85.i.2405
  %mul84.i.2094 = mul nuw nsw i128 %add85.i.2147, %conv40.i.2349
  %add85.i.2095 = add nuw nsw i128 %mul84.i.2094, %mul79.i.2093
  %mul91.i.2097 = mul nuw nsw i128 %add85.i.2147, %add85.i.2405
  %add.i.2000 = add nsw i128 %mul.i.2056, -170141183460469231731687303715884072960
  %shr.i.2008 = lshr i128 %mul91.i.2097, 16
  %add14.i.2009 = add i128 %add73.i.2091, %shr.i.2008
  %and.i.2010 = shl i128 %mul91.i.2097, 40
  %shl.i.2011 = and i128 %and.i.2010, 72056494526300160
  %add17.i.2012 = add i128 %add55.i.2085, %shl.i.2011
  %shr21.i.2015 = lshr i128 %add85.i.2095, 16
  %add23.i.2016 = add i128 %add17.i.2012, %shr21.i.2015
  %and25.i.2017 = shl i128 %add85.i.2095, 40
  %shl26.i.2018 = and i128 %and25.i.2017, 72056494526300160
  %shr33.i.2021 = lshr i128 %add14.i.2009, 16
  %add25.i.2069 = add nuw i128 %mul19.i.2067, 170141183460469229370504062281061498880
  %add31.i.2073 = add i128 %add25.i.2069, %mul24.i.2068
  %add6.i.2004 = add i128 %add31.i.2073, %mul30.i.2072
  %sub.i.2013 = sub i128 %add6.i.2004, %mul91.i.2097
  %add28.i.2019 = add i128 %sub.i.2013, %shl26.i.2018
  %add35.i.2022 = add i128 %add28.i.2019, %shr33.i.2021
  %and37.i.2023 = shl i128 %add14.i.2009, 40
  %shl38.i.2024 = and i128 %and37.i.2023, 72056494526300160
  %sub43.i.2026 = sub i128 %add.i.2000, %add14.i.2009
  %shr45.i.2027 = lshr i128 %add35.i.2022, 56
  %add47.i.2028 = add i128 %add23.i.2016, %shr45.i.2027
  %and49.i.2029 = and i128 %add35.i.2022, 72057594037927935
  %shr51.i.2030 = lshr i128 %add47.i.2028, 56
  %and54.i.2031 = and i128 %add47.i.2028, 72057594037927935
  %shr56.i.2032 = lshr i128 %add47.i.2028, 72
  %add58.i.2033 = add nuw nsw i128 %shr56.i.2032, %and49.i.2029
  %and60.i.2034 = shl nuw nsw i128 %shr51.i.2030, 40
  %shl61.i.2035 = and i128 %and60.i.2034, 72056494526300160
  %sub66.i.2037 = sub i128 %sub43.i.2026, %shr51.i.2030
  %shr68.i.2038 = lshr i128 %sub66.i.2037, 56
  %add.i.2063 = add nuw i128 %mul8.i.2059, 170141183460469229370468033484042534912
  %add3.i.2002 = add i128 %add.i.2063, %mul13.i.2062
  %sub31.i.2020 = sub i128 %add3.i.2002, %add85.i.2095
  %add40.i.2025 = add i128 %sub31.i.2020, %shl38.i.2024
  %add63.i.2036 = add i128 %add40.i.2025, %shl61.i.2035
  %add70.i.2039 = add i128 %add63.i.2036, %shr68.i.2038
  %sub66.tr.i.2040 = trunc i128 %sub66.i.2037 to i64
  %conv.i.2041 = and i64 %sub66.tr.i.2040, 72057594037927935
  %shr75.i.2042 = lshr i128 %add70.i.2039, 56
  %add77.i.2043 = add nuw nsw i128 %add58.i.2033, %shr75.i.2042
  %add70.tr.i.2044 = trunc i128 %add70.i.2039 to i64
  %conv80.i.2045 = and i64 %add70.tr.i.2044, 72057594037927935
  %shr83.i.2047 = lshr i128 %add77.i.2043, 56
  %add85.i.2048 = add nuw nsw i128 %shr83.i.2047, %and54.i.2031
  %add77.tr.i.2049 = trunc i128 %add77.i.2043 to i64
  %conv88.i.2050 = and i64 %add77.tr.i.2049, 72057594037927935
  %mul.i.1968 = shl nuw nsw i64 %conv.i.2041, 1
  %mul2.i.1970 = shl nuw nsw i64 %conv80.i.2045, 1
  %mul4.i.1972 = shl nuw nsw i64 %conv88.i.2050, 1
  %conv.i.1973 = zext i64 %conv.i.2041 to i128
  %mul8.i.1974 = mul nuw nsw i128 %conv.i.1973, %conv.i.1973
  %conv12.i.1975 = zext i64 %mul2.i.1970 to i128
  %mul13.i.1976 = mul nuw nsw i128 %conv12.i.1975, %conv.i.1973
  %conv17.i.1978 = zext i64 %mul4.i.1972 to i128
  %mul18.i.1979 = mul nuw nsw i128 %conv17.i.1978, %conv.i.1973
  %conv20.i.1980 = zext i64 %conv80.i.2045 to i128
  %mul23.i.1981 = mul nuw nsw i128 %conv20.i.1980, %conv20.i.1980
  %conv27.i.1986 = zext i64 %mul.i.1968 to i128
  %mul28.i.1987 = mul nuw nsw i128 %add85.i.2048, %conv27.i.1986
  %mul32.i.1988 = mul nuw nsw i128 %conv17.i.1978, %conv20.i.1980
  %add33.i.1989 = add nuw nsw i128 %mul32.i.1988, %mul28.i.1987
  %mul38.i.1991 = mul nuw nsw i128 %add85.i.2048, %conv12.i.1975
  %conv40.i.1992 = zext i64 %conv88.i.2050 to i128
  %mul43.i.1993 = mul nuw nsw i128 %conv40.i.1992, %conv40.i.1992
  %add44.i.1994 = add nuw nsw i128 %mul43.i.1993, %mul38.i.1991
  %mul49.i.1996 = mul nuw nsw i128 %conv17.i.1978, %add85.i.2048
  %mul55.i.1998 = mul nuw nsw i128 %add85.i.2048, %add85.i.2048
  %add.i.1914 = add nsw i128 %mul8.i.1974, -170141183460469231731687303715884072960
  %add3.i.1916 = add nuw i128 %mul13.i.1976, 170141183460469229370468033484042534912
  %shr.i.1922 = lshr i128 %mul55.i.1998, 16
  %add14.i.1923 = add nuw i128 %add44.i.1994, %shr.i.1922
  %and.i.1924 = shl i128 %mul55.i.1998, 40
  %shl.i.1925 = and i128 %and.i.1924, 72056494526300160
  %add17.i.1926 = add nuw i128 %add33.i.1989, %shl.i.1925
  %shr21.i.1929 = lshr i128 %mul49.i.1996, 16
  %add23.i.1930 = add i128 %add17.i.1926, %shr21.i.1929
  %and25.i.1931 = shl i128 %mul49.i.1996, 40
  %shl26.i.1932 = and i128 %and25.i.1931, 72055395014672384
  %sub31.i.1934 = sub i128 %add3.i.1916, %mul49.i.1996
  %shr33.i.1935 = lshr i128 %add14.i.1923, 16
  %add.i.1982 = add nuw i128 %mul23.i.1981, 170141183460469229370504062281061498880
  %add6.i.1918 = sub i128 %add.i.1982, %mul55.i.1998
  %sub.i.1927 = add i128 %add6.i.1918, %mul18.i.1979
  %add28.i.1933 = add i128 %sub.i.1927, %shl26.i.1932
  %add35.i.1936 = add i128 %add28.i.1933, %shr33.i.1935
  %and37.i.1937 = shl i128 %add14.i.1923, 40
  %shl38.i.1938 = and i128 %and37.i.1937, 72056494526300160
  %add40.i.1939 = add i128 %sub31.i.1934, %shl38.i.1938
  %sub43.i.1940 = sub i128 %add.i.1914, %add14.i.1923
  %shr45.i.1941 = lshr i128 %add35.i.1936, 56
  %add47.i.1942 = add i128 %add23.i.1930, %shr45.i.1941
  %and49.i.1943 = and i128 %add35.i.1936, 72057594037927935
  %shr51.i.1944 = lshr i128 %add47.i.1942, 56
  %and54.i.1945 = and i128 %add47.i.1942, 72057594037927935
  %shr56.i.1946 = lshr i128 %add47.i.1942, 72
  %add58.i.1947 = add nuw nsw i128 %shr56.i.1946, %and49.i.1943
  %and60.i.1948 = shl nuw nsw i128 %shr51.i.1944, 40
  %shl61.i.1949 = and i128 %and60.i.1948, 72056494526300160
  %add63.i.1950 = add i128 %add40.i.1939, %shl61.i.1949
  %sub66.i.1951 = sub i128 %sub43.i.1940, %shr51.i.1944
  %shr68.i.1952 = lshr i128 %sub66.i.1951, 56
  %add70.i.1953 = add i128 %add63.i.1950, %shr68.i.1952
  %sub66.tr.i.1954 = trunc i128 %sub66.i.1951 to i64
  %shr75.i.1956 = lshr i128 %add70.i.1953, 56
  %add77.i.1957 = add nuw nsw i128 %add58.i.1947, %shr75.i.1956
  %add70.tr.i.1958 = trunc i128 %add70.i.1953 to i64
  %shr83.i.1961 = lshr i128 %add77.i.1957, 56
  %add85.i.1962 = add nuw nsw i128 %shr83.i.1961, %and54.i.1945
  %add77.tr.i.1963 = trunc i128 %add77.i.1957 to i64
  %conv91.i.1966 = trunc i128 %add85.i.1962 to i64
  %conv.i.19553059.3118 = and i64 %sub66.tr.i.1954, 72057594037927935
  %ftmp2.sroa.23.8.3061.3119 = and i64 %add70.tr.i.1958, 72057594037927935
  %conv88.i.18783062.3120 = and i64 %add77.tr.i.1963, 72057594037927935
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %conv88.i.187830623125 = phi i64 [ %conv88.i.18783062.3120, %entry ], [ %conv88.i.18783062, %for.body ]
  %ftmp2.sroa.23.8.30613124 = phi i64 [ %ftmp2.sroa.23.8.3061.3119, %entry ], [ %ftmp2.sroa.23.8.3061, %for.body ]
  %conv.i.195530593123 = phi i64 [ %conv.i.19553059.3118, %entry ], [ %conv.i.19553059, %for.body ]
  %i.03122 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %ftmp2.sroa.65.24.load30653121 = phi i64 [ %conv91.i.1966, %entry ], [ %conv91.i.1880, %for.body ]
  %mul.i.1882 = shl nuw nsw i64 %conv.i.195530593123, 1
  %mul2.i.1884 = shl nuw nsw i64 %ftmp2.sroa.23.8.30613124, 1
  %mul4.i.1886 = shl nuw nsw i64 %conv88.i.187830623125, 1
  %conv.i.1887 = zext i64 %conv.i.195530593123 to i128
  %mul8.i.1888 = mul nuw nsw i128 %conv.i.1887, %conv.i.1887
  %conv12.i.1889 = zext i64 %mul2.i.1884 to i128
  %mul13.i.1890 = mul nuw nsw i128 %conv.i.1887, %conv12.i.1889
  %conv17.i.1892 = zext i64 %mul4.i.1886 to i128
  %mul18.i.1893 = mul nuw nsw i128 %conv.i.1887, %conv17.i.1892
  %conv20.i.1894 = zext i64 %ftmp2.sroa.23.8.30613124 to i128
  %mul23.i.1895 = mul nuw nsw i128 %conv20.i.1894, %conv20.i.1894
  %conv26.i.1899 = zext i64 %ftmp2.sroa.65.24.load30653121 to i128
  %conv27.i.1900 = zext i64 %mul.i.1882 to i128
  %mul28.i.1901 = mul nuw nsw i128 %conv27.i.1900, %conv26.i.1899
  %mul32.i.1902 = mul nuw nsw i128 %conv20.i.1894, %conv17.i.1892
  %mul38.i.1905 = mul nuw nsw i128 %conv12.i.1889, %conv26.i.1899
  %conv40.i.1906 = zext i64 %conv88.i.187830623125 to i128
  %mul43.i.1907 = mul nuw nsw i128 %conv40.i.1906, %conv40.i.1906
  %mul49.i.1910 = mul nuw nsw i128 %conv17.i.1892, %conv26.i.1899
  %mul55.i.1912 = mul nuw i128 %conv26.i.1899, %conv26.i.1899
  %add.i.1828 = add nsw i128 %mul8.i.1888, -170141183460469231731687303715884072960
  %shr.i.1836 = lshr i128 %mul55.i.1912, 16
  %add44.i.1908 = add nuw nsw i128 %mul43.i.1907, %shr.i.1836
  %add14.i.1837 = add nuw nsw i128 %add44.i.1908, %mul38.i.1905
  %and.i.1838 = shl i128 %mul55.i.1912, 40
  %shl.i.1839 = and i128 %and.i.1838, 72056494526300160
  %shr21.i.1843 = lshr i128 %mul49.i.1910, 16
  %and25.i.1845 = shl i128 %mul49.i.1910, 40
  %shl26.i.1846 = and i128 %and25.i.1845, 72055395014672384
  %shr33.i.1849 = lshr i128 %add14.i.1837, 16
  %add.i.1896 = sub i128 170141183460469229370504062281061498880, %mul55.i.1912
  %add6.i.1832 = add i128 %add.i.1896, %mul23.i.1895
  %sub.i.1841 = add i128 %add6.i.1832, %mul18.i.1893
  %add28.i.1847 = add i128 %sub.i.1841, %shl26.i.1846
  %add35.i.1850 = add i128 %add28.i.1847, %shr33.i.1849
  %and37.i.1851 = shl i128 %add14.i.1837, 40
  %shl38.i.1852 = and i128 %and37.i.1851, 72056494526300160
  %sub43.i.1854 = sub nuw i128 %add.i.1828, %add14.i.1837
  %shr45.i.1855 = lshr i128 %add35.i.1850, 56
  %add33.i.1903 = add nuw nsw i128 %mul32.i.1902, %shl.i.1839
  %add17.i.1840 = add nuw nsw i128 %add33.i.1903, %shr21.i.1843
  %add23.i.1844 = add nuw nsw i128 %add17.i.1840, %mul28.i.1901
  %add47.i.1856 = add nuw i128 %add23.i.1844, %shr45.i.1855
  %and49.i.1857 = and i128 %add35.i.1850, 72057594037927935
  %shr51.i.1858 = lshr i128 %add47.i.1856, 56
  %and54.i.1859 = and i128 %add47.i.1856, 72057594037927935
  %shr56.i.1860 = lshr i128 %add47.i.1856, 72
  %add58.i.1861 = add nuw nsw i128 %shr56.i.1860, %and49.i.1857
  %and60.i.1862 = shl nuw nsw i128 %shr51.i.1858, 40
  %shl61.i.1863 = and i128 %and60.i.1862, 72056494526300160
  %sub66.i.1865 = sub i128 %sub43.i.1854, %shr51.i.1858
  %shr68.i.1866 = lshr i128 %sub66.i.1865, 56
  %add3.i.1830 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.1910
  %sub31.i.1848 = add nuw i128 %add3.i.1830, %mul13.i.1890
  %add40.i.1853 = add i128 %sub31.i.1848, %shl38.i.1852
  %add63.i.1864 = add i128 %add40.i.1853, %shl61.i.1863
  %add70.i.1867 = add i128 %add63.i.1864, %shr68.i.1866
  %sub66.tr.i.1868 = trunc i128 %sub66.i.1865 to i64
  %shr75.i.1870 = lshr i128 %add70.i.1867, 56
  %add77.i.1871 = add nuw nsw i128 %add58.i.1861, %shr75.i.1870
  %add70.tr.i.1872 = trunc i128 %add70.i.1867 to i64
  %shr83.i.1875 = lshr i128 %add77.i.1871, 56
  %add85.i.1876 = add nuw nsw i128 %shr83.i.1875, %and54.i.1859
  %add77.tr.i.1877 = trunc i128 %add77.i.1871 to i64
  %conv91.i.1880 = trunc i128 %add85.i.1876 to i64
  %inc = add nuw nsw i32 %i.03122, 1
  %conv.i.19553059 = and i64 %sub66.tr.i.1868, 72057594037927935
  %ftmp2.sroa.23.8.3061 = and i64 %add70.tr.i.1872, 72057594037927935
  %conv88.i.18783062 = and i64 %add77.tr.i.1877, 72057594037927935
  %exitcond3131 = icmp eq i32 %inc, 5
  br i1 %exitcond3131, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv88.i.18783062.lcssa = phi i64 [ %conv88.i.18783062, %for.body ]
  %ftmp2.sroa.23.8.3061.lcssa = phi i64 [ %ftmp2.sroa.23.8.3061, %for.body ]
  %conv.i.19553059.lcssa = phi i64 [ %conv.i.19553059, %for.body ]
  %add85.i.1876.lcssa = phi i128 [ %add85.i.1876, %for.body ]
  %conv.i.1783 = zext i64 %conv.i.19553059.lcssa to i128
  %mul.i.1785 = mul nuw nsw i128 %conv.i.1783, %conv.i.1973
  %mul8.i.1788 = mul nuw nsw i128 %conv.i.1783, %conv20.i.1980
  %conv10.i.1790 = zext i64 %ftmp2.sroa.23.8.3061.lcssa to i128
  %mul13.i.1791 = mul nuw nsw i128 %conv10.i.1790, %conv.i.1973
  %mul19.i.1796 = mul nuw nsw i128 %conv.i.1783, %conv40.i.1992
  %mul24.i.1797 = mul nuw nsw i128 %conv10.i.1790, %conv20.i.1980
  %conv27.i.1800 = zext i64 %conv88.i.18783062.lcssa to i128
  %mul30.i.1801 = mul nuw nsw i128 %conv27.i.1800, %conv.i.1973
  %mul37.i.1806 = mul nuw nsw i128 %conv.i.1783, %add85.i.2048
  %mul42.i.1807 = mul nuw nsw i128 %conv10.i.1790, %conv40.i.1992
  %mul48.i.1809 = mul nuw nsw i128 %conv27.i.1800, %conv20.i.1980
  %mul54.i.1813 = mul nuw nsw i128 %add85.i.1876.lcssa, %conv.i.1973
  %mul61.i.1816 = mul nuw nsw i128 %conv10.i.1790, %add85.i.2048
  %mul66.i.1817 = mul nuw nsw i128 %conv27.i.1800, %conv40.i.1992
  %mul72.i.1819 = mul nuw nsw i128 %add85.i.1876.lcssa, %conv20.i.1980
  %mul79.i.1822 = mul nuw nsw i128 %conv27.i.1800, %add85.i.2048
  %mul84.i.1823 = mul nuw nsw i128 %add85.i.1876.lcssa, %conv40.i.1992
  %add85.i.1824 = add nuw nsw i128 %mul79.i.1822, %mul84.i.1823
  %mul91.i.1826 = mul nuw nsw i128 %add85.i.1876.lcssa, %add85.i.2048
  %add.i.1729 = add nsw i128 %mul.i.1785, -170141183460469231731687303715884072960
  %shr.i.1737 = lshr i128 %mul91.i.1826, 16
  %add67.i.1818 = add nuw nsw i128 %shr.i.1737, %mul72.i.1819
  %add73.i.1820 = add nuw i128 %add67.i.1818, %mul66.i.1817
  %add14.i.1738 = add i128 %add73.i.1820, %mul61.i.1816
  %and.i.1739 = shl i128 %mul91.i.1826, 40
  %shl.i.1740 = and i128 %and.i.1739, 72056494526300160
  %shr21.i.1744 = lshr i128 %add85.i.1824, 16
  %and25.i.1746 = shl i128 %add85.i.1824, 40
  %shl26.i.1747 = and i128 %and25.i.1746, 72056494526300160
  %shr33.i.1750 = lshr i128 %add14.i.1738, 16
  %add25.i.1798 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.1826
  %add31.i.1802 = add i128 %add25.i.1798, %mul30.i.1801
  %add6.i.1733 = add i128 %add31.i.1802, %mul24.i.1797
  %sub.i.1742 = add i128 %add6.i.1733, %mul19.i.1796
  %add28.i.1748 = add i128 %sub.i.1742, %shl26.i.1747
  %add35.i.1751 = add i128 %add28.i.1748, %shr33.i.1750
  %and37.i.1752 = shl i128 %add14.i.1738, 40
  %shl38.i.1753 = and i128 %and37.i.1752, 72056494526300160
  %sub43.i.1755 = sub i128 %add.i.1729, %add14.i.1738
  %shr45.i.1756 = lshr i128 %add35.i.1751, 56
  %add43.i.1808 = add nuw nsw i128 %mul48.i.1809, %mul54.i.1813
  %add49.i.1810 = add nuw i128 %add43.i.1808, %shl.i.1740
  %add55.i.1814 = add i128 %add49.i.1810, %mul42.i.1807
  %add17.i.1741 = add i128 %add55.i.1814, %mul37.i.1806
  %add23.i.1745 = add i128 %add17.i.1741, %shr21.i.1744
  %add47.i.1757 = add i128 %add23.i.1745, %shr45.i.1756
  %and49.i.1758 = and i128 %add35.i.1751, 72057594037927935
  %shr51.i.1759 = lshr i128 %add47.i.1757, 56
  %and54.i.1760 = and i128 %add47.i.1757, 72057594037927935
  %shr56.i.1761 = lshr i128 %add47.i.1757, 72
  %add58.i.1762 = add nuw nsw i128 %shr56.i.1761, %and49.i.1758
  %and60.i.1763 = shl nuw nsw i128 %shr51.i.1759, 40
  %shl61.i.1764 = and i128 %and60.i.1763, 72056494526300160
  %sub66.i.1766 = sub i128 %sub43.i.1755, %shr51.i.1759
  %shr68.i.1767 = lshr i128 %sub66.i.1766, 56
  %add.i.1792 = add nuw i128 %mul13.i.1791, 170141183460469229370468033484042534912
  %add3.i.1731 = sub i128 %add.i.1792, %add85.i.1824
  %sub31.i.1749 = add i128 %add3.i.1731, %mul8.i.1788
  %add40.i.1754 = add i128 %sub31.i.1749, %shl38.i.1753
  %add63.i.1765 = add i128 %add40.i.1754, %shl61.i.1764
  %add70.i.1768 = add i128 %add63.i.1765, %shr68.i.1767
  %sub66.tr.i.1769 = trunc i128 %sub66.i.1766 to i64
  %conv.i.1770 = and i64 %sub66.tr.i.1769, 72057594037927935
  %shr75.i.1771 = lshr i128 %add70.i.1768, 56
  %add77.i.1772 = add nuw nsw i128 %add58.i.1762, %shr75.i.1771
  %add70.tr.i.1773 = trunc i128 %add70.i.1768 to i64
  %conv80.i.1774 = and i64 %add70.tr.i.1773, 72057594037927935
  %shr83.i.1776 = lshr i128 %add77.i.1772, 56
  %add85.i.1777 = add nuw nsw i128 %shr83.i.1776, %and54.i.1760
  %add77.tr.i.1778 = trunc i128 %add77.i.1772 to i64
  %conv88.i.1779 = and i64 %add77.tr.i.1778, 72057594037927935
  %mul.i.1697 = shl nuw nsw i64 %conv.i.1770, 1
  %mul2.i.1699 = shl nuw nsw i64 %conv80.i.1774, 1
  %mul4.i.1701 = shl nuw nsw i64 %conv88.i.1779, 1
  %conv.i.1702 = zext i64 %conv.i.1770 to i128
  %mul8.i.1703 = mul nuw nsw i128 %conv.i.1702, %conv.i.1702
  %conv12.i.1704 = zext i64 %mul2.i.1699 to i128
  %mul13.i.1705 = mul nuw nsw i128 %conv12.i.1704, %conv.i.1702
  %conv17.i.1707 = zext i64 %mul4.i.1701 to i128
  %mul18.i.1708 = mul nuw nsw i128 %conv17.i.1707, %conv.i.1702
  %conv20.i.1709 = zext i64 %conv80.i.1774 to i128
  %mul23.i.1710 = mul nuw nsw i128 %conv20.i.1709, %conv20.i.1709
  %conv27.i.1715 = zext i64 %mul.i.1697 to i128
  %mul28.i.1716 = mul nuw nsw i128 %add85.i.1777, %conv27.i.1715
  %mul32.i.1717 = mul nuw nsw i128 %conv17.i.1707, %conv20.i.1709
  %add33.i.1718 = add nuw nsw i128 %mul32.i.1717, %mul28.i.1716
  %mul38.i.1720 = mul nuw nsw i128 %add85.i.1777, %conv12.i.1704
  %conv40.i.1721 = zext i64 %conv88.i.1779 to i128
  %mul43.i.1722 = mul nuw nsw i128 %conv40.i.1721, %conv40.i.1721
  %add44.i.1723 = add nuw nsw i128 %mul43.i.1722, %mul38.i.1720
  %mul49.i.1725 = mul nuw nsw i128 %conv17.i.1707, %add85.i.1777
  %mul55.i.1727 = mul nuw nsw i128 %add85.i.1777, %add85.i.1777
  %add.i.1643 = add nsw i128 %mul8.i.1703, -170141183460469231731687303715884072960
  %add3.i.1645 = add nuw i128 %mul13.i.1705, 170141183460469229370468033484042534912
  %shr.i.1651 = lshr i128 %mul55.i.1727, 16
  %add14.i.1652 = add nuw i128 %add44.i.1723, %shr.i.1651
  %and.i.1653 = shl i128 %mul55.i.1727, 40
  %shl.i.1654 = and i128 %and.i.1653, 72056494526300160
  %add17.i.1655 = add nuw i128 %add33.i.1718, %shl.i.1654
  %shr21.i.1658 = lshr i128 %mul49.i.1725, 16
  %add23.i.1659 = add i128 %add17.i.1655, %shr21.i.1658
  %and25.i.1660 = shl i128 %mul49.i.1725, 40
  %shl26.i.1661 = and i128 %and25.i.1660, 72055395014672384
  %sub31.i.1663 = sub i128 %add3.i.1645, %mul49.i.1725
  %shr33.i.1664 = lshr i128 %add14.i.1652, 16
  %add.i.1711 = add nuw i128 %mul23.i.1710, 170141183460469229370504062281061498880
  %add6.i.1647 = sub i128 %add.i.1711, %mul55.i.1727
  %sub.i.1656 = add i128 %add6.i.1647, %mul18.i.1708
  %add28.i.1662 = add i128 %sub.i.1656, %shl26.i.1661
  %add35.i.1665 = add i128 %add28.i.1662, %shr33.i.1664
  %and37.i.1666 = shl i128 %add14.i.1652, 40
  %shl38.i.1667 = and i128 %and37.i.1666, 72056494526300160
  %add40.i.1668 = add i128 %sub31.i.1663, %shl38.i.1667
  %sub43.i.1669 = sub i128 %add.i.1643, %add14.i.1652
  %shr45.i.1670 = lshr i128 %add35.i.1665, 56
  %add47.i.1671 = add i128 %add23.i.1659, %shr45.i.1670
  %and49.i.1672 = and i128 %add35.i.1665, 72057594037927935
  %shr51.i.1673 = lshr i128 %add47.i.1671, 56
  %and54.i.1674 = and i128 %add47.i.1671, 72057594037927935
  %shr56.i.1675 = lshr i128 %add47.i.1671, 72
  %add58.i.1676 = add nuw nsw i128 %shr56.i.1675, %and49.i.1672
  %and60.i.1677 = shl nuw nsw i128 %shr51.i.1673, 40
  %shl61.i.1678 = and i128 %and60.i.1677, 72056494526300160
  %add63.i.1679 = add i128 %add40.i.1668, %shl61.i.1678
  %sub66.i.1680 = sub i128 %sub43.i.1669, %shr51.i.1673
  %shr68.i.1681 = lshr i128 %sub66.i.1680, 56
  %add70.i.1682 = add i128 %add63.i.1679, %shr68.i.1681
  %sub66.tr.i.1683 = trunc i128 %sub66.i.1680 to i64
  %shr75.i.1685 = lshr i128 %add70.i.1682, 56
  %add77.i.1686 = add nuw nsw i128 %add58.i.1676, %shr75.i.1685
  %add70.tr.i.1687 = trunc i128 %add70.i.1682 to i64
  %shr83.i.1690 = lshr i128 %add77.i.1686, 56
  %add85.i.1691 = add nuw nsw i128 %shr83.i.1690, %and54.i.1674
  %add77.tr.i.1692 = trunc i128 %add77.i.1686 to i64
  %conv91.i.1695 = trunc i128 %add85.i.1691 to i64
  %conv.i.15983050.3110 = and i64 %sub66.tr.i.1683, 72057594037927935
  %ftmp3.sroa.16.8.3052.3111 = and i64 %add70.tr.i.1687, 72057594037927935
  %conv88.i.12373055.3112 = and i64 %add77.tr.i.1692, 72057594037927935
  br label %for.body.52

for.body.52:                                      ; preds = %for.body.52, %for.end
  %conv88.i.123730553117 = phi i64 [ %conv88.i.12373055.3112, %for.end ], [ %conv88.i.12373055, %for.body.52 ]
  %ftmp3.sroa.16.8.30523116 = phi i64 [ %ftmp3.sroa.16.8.3052.3111, %for.end ], [ %ftmp3.sroa.16.8.3052, %for.body.52 ]
  %conv.i.159830503115 = phi i64 [ %conv.i.15983050.3110, %for.end ], [ %conv.i.15983050, %for.body.52 ]
  %i.13114 = phi i32 [ 0, %for.end ], [ %inc58, %for.body.52 ]
  %ftmp3.sroa.44.24.load30573113 = phi i64 [ %conv91.i.1695, %for.end ], [ %conv91.i.1609, %for.body.52 ]
  %mul.i.1611 = shl nuw nsw i64 %conv.i.159830503115, 1
  %mul2.i.1613 = shl nuw nsw i64 %ftmp3.sroa.16.8.30523116, 1
  %mul4.i.1615 = shl nuw nsw i64 %conv88.i.123730553117, 1
  %conv.i.1616 = zext i64 %conv.i.159830503115 to i128
  %mul8.i.1617 = mul nuw nsw i128 %conv.i.1616, %conv.i.1616
  %conv12.i.1618 = zext i64 %mul2.i.1613 to i128
  %mul13.i.1619 = mul nuw nsw i128 %conv.i.1616, %conv12.i.1618
  %conv17.i.1621 = zext i64 %mul4.i.1615 to i128
  %mul18.i.1622 = mul nuw nsw i128 %conv.i.1616, %conv17.i.1621
  %conv20.i.1623 = zext i64 %ftmp3.sroa.16.8.30523116 to i128
  %mul23.i.1624 = mul nuw nsw i128 %conv20.i.1623, %conv20.i.1623
  %conv26.i.1628 = zext i64 %ftmp3.sroa.44.24.load30573113 to i128
  %conv27.i.1629 = zext i64 %mul.i.1611 to i128
  %mul28.i.1630 = mul nuw nsw i128 %conv27.i.1629, %conv26.i.1628
  %mul32.i.1631 = mul nuw nsw i128 %conv20.i.1623, %conv17.i.1621
  %mul38.i.1634 = mul nuw nsw i128 %conv12.i.1618, %conv26.i.1628
  %conv40.i.1635 = zext i64 %conv88.i.123730553117 to i128
  %mul43.i.1636 = mul nuw nsw i128 %conv40.i.1635, %conv40.i.1635
  %mul49.i.1639 = mul nuw nsw i128 %conv17.i.1621, %conv26.i.1628
  %mul55.i.1641 = mul nuw i128 %conv26.i.1628, %conv26.i.1628
  %add.i.1557 = add nsw i128 %mul8.i.1617, -170141183460469231731687303715884072960
  %shr.i.1565 = lshr i128 %mul55.i.1641, 16
  %add44.i.1637 = add nuw nsw i128 %mul43.i.1636, %shr.i.1565
  %add14.i.1566 = add nuw nsw i128 %add44.i.1637, %mul38.i.1634
  %and.i.1567 = shl i128 %mul55.i.1641, 40
  %shl.i.1568 = and i128 %and.i.1567, 72056494526300160
  %shr21.i.1572 = lshr i128 %mul49.i.1639, 16
  %and25.i.1574 = shl i128 %mul49.i.1639, 40
  %shl26.i.1575 = and i128 %and25.i.1574, 72055395014672384
  %shr33.i.1578 = lshr i128 %add14.i.1566, 16
  %add.i.1625 = sub i128 170141183460469229370504062281061498880, %mul55.i.1641
  %add6.i.1561 = add i128 %add.i.1625, %mul23.i.1624
  %sub.i.1570 = add i128 %add6.i.1561, %mul18.i.1622
  %add28.i.1576 = add i128 %sub.i.1570, %shl26.i.1575
  %add35.i.1579 = add i128 %add28.i.1576, %shr33.i.1578
  %and37.i.1580 = shl i128 %add14.i.1566, 40
  %shl38.i.1581 = and i128 %and37.i.1580, 72056494526300160
  %sub43.i.1583 = sub nuw i128 %add.i.1557, %add14.i.1566
  %shr45.i.1584 = lshr i128 %add35.i.1579, 56
  %add33.i.1632 = add nuw nsw i128 %mul32.i.1631, %shl.i.1568
  %add17.i.1569 = add nuw nsw i128 %add33.i.1632, %shr21.i.1572
  %add23.i.1573 = add nuw nsw i128 %add17.i.1569, %mul28.i.1630
  %add47.i.1585 = add nuw i128 %add23.i.1573, %shr45.i.1584
  %and49.i.1586 = and i128 %add35.i.1579, 72057594037927935
  %shr51.i.1587 = lshr i128 %add47.i.1585, 56
  %and54.i.1588 = and i128 %add47.i.1585, 72057594037927935
  %shr56.i.1589 = lshr i128 %add47.i.1585, 72
  %add58.i.1590 = add nuw nsw i128 %shr56.i.1589, %and49.i.1586
  %and60.i.1591 = shl nuw nsw i128 %shr51.i.1587, 40
  %shl61.i.1592 = and i128 %and60.i.1591, 72056494526300160
  %sub66.i.1594 = sub i128 %sub43.i.1583, %shr51.i.1587
  %shr68.i.1595 = lshr i128 %sub66.i.1594, 56
  %add3.i.1559 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.1639
  %sub31.i.1577 = add nuw i128 %add3.i.1559, %mul13.i.1619
  %add40.i.1582 = add i128 %sub31.i.1577, %shl38.i.1581
  %add63.i.1593 = add i128 %add40.i.1582, %shl61.i.1592
  %add70.i.1596 = add i128 %add63.i.1593, %shr68.i.1595
  %sub66.tr.i.1597 = trunc i128 %sub66.i.1594 to i64
  %shr75.i.1599 = lshr i128 %add70.i.1596, 56
  %add77.i.1600 = add nuw nsw i128 %add58.i.1590, %shr75.i.1599
  %add70.tr.i.1601 = trunc i128 %add70.i.1596 to i64
  %shr83.i.1604 = lshr i128 %add77.i.1600, 56
  %add85.i.1605 = add nuw nsw i128 %shr83.i.1604, %and54.i.1588
  %add77.tr.i.1606 = trunc i128 %add77.i.1600 to i64
  %conv91.i.1609 = trunc i128 %add85.i.1605 to i64
  %inc58 = add nuw nsw i32 %i.13114, 1
  %conv.i.15983050 = and i64 %sub66.tr.i.1597, 72057594037927935
  %ftmp3.sroa.16.8.3052 = and i64 %add70.tr.i.1601, 72057594037927935
  %conv88.i.12373055 = and i64 %add77.tr.i.1606, 72057594037927935
  %exitcond3130 = icmp eq i32 %inc58, 11
  br i1 %exitcond3130, label %for.end.59, label %for.body.52

for.end.59:                                       ; preds = %for.body.52
  %conv88.i.12373055.lcssa = phi i64 [ %conv88.i.12373055, %for.body.52 ]
  %ftmp3.sroa.16.8.3052.lcssa = phi i64 [ %ftmp3.sroa.16.8.3052, %for.body.52 ]
  %conv.i.15983050.lcssa = phi i64 [ %conv.i.15983050, %for.body.52 ]
  %add85.i.1605.lcssa = phi i128 [ %add85.i.1605, %for.body.52 ]
  %conv.i.1512 = zext i64 %conv.i.15983050.lcssa to i128
  %mul.i.1514 = mul nuw nsw i128 %conv.i.1512, %conv.i.1702
  %mul8.i.1517 = mul nuw nsw i128 %conv.i.1512, %conv20.i.1709
  %conv10.i.1519 = zext i64 %ftmp3.sroa.16.8.3052.lcssa to i128
  %mul13.i.1520 = mul nuw nsw i128 %conv10.i.1519, %conv.i.1702
  %mul19.i.1525 = mul nuw nsw i128 %conv.i.1512, %conv40.i.1721
  %mul24.i.1526 = mul nuw nsw i128 %conv10.i.1519, %conv20.i.1709
  %conv27.i.1529 = zext i64 %conv88.i.12373055.lcssa to i128
  %mul30.i.1530 = mul nuw nsw i128 %conv27.i.1529, %conv.i.1702
  %mul37.i.1535 = mul nuw nsw i128 %conv.i.1512, %add85.i.1777
  %mul42.i.1536 = mul nuw nsw i128 %conv10.i.1519, %conv40.i.1721
  %mul48.i.1538 = mul nuw nsw i128 %conv27.i.1529, %conv20.i.1709
  %mul54.i.1542 = mul nuw nsw i128 %add85.i.1605.lcssa, %conv.i.1702
  %mul61.i.1545 = mul nuw nsw i128 %conv10.i.1519, %add85.i.1777
  %mul66.i.1546 = mul nuw nsw i128 %conv27.i.1529, %conv40.i.1721
  %mul72.i.1548 = mul nuw nsw i128 %add85.i.1605.lcssa, %conv20.i.1709
  %mul79.i.1551 = mul nuw nsw i128 %conv27.i.1529, %add85.i.1777
  %mul84.i.1552 = mul nuw nsw i128 %add85.i.1605.lcssa, %conv40.i.1721
  %add85.i.1553 = add nuw nsw i128 %mul79.i.1551, %mul84.i.1552
  %mul91.i.1555 = mul nuw nsw i128 %add85.i.1605.lcssa, %add85.i.1777
  %add.i.1458 = add nsw i128 %mul.i.1514, -170141183460469231731687303715884072960
  %shr.i.1466 = lshr i128 %mul91.i.1555, 16
  %add67.i.1547 = add nuw nsw i128 %shr.i.1466, %mul72.i.1548
  %add73.i.1549 = add nuw i128 %add67.i.1547, %mul66.i.1546
  %add14.i.1467 = add i128 %add73.i.1549, %mul61.i.1545
  %and.i.1468 = shl i128 %mul91.i.1555, 40
  %shl.i.1469 = and i128 %and.i.1468, 72056494526300160
  %shr21.i.1473 = lshr i128 %add85.i.1553, 16
  %and25.i.1475 = shl i128 %add85.i.1553, 40
  %shl26.i.1476 = and i128 %and25.i.1475, 72056494526300160
  %shr33.i.1479 = lshr i128 %add14.i.1467, 16
  %add25.i.1527 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.1555
  %add31.i.1531 = add i128 %add25.i.1527, %mul30.i.1530
  %add6.i.1462 = add i128 %add31.i.1531, %mul24.i.1526
  %sub.i.1471 = add i128 %add6.i.1462, %mul19.i.1525
  %add28.i.1477 = add i128 %sub.i.1471, %shl26.i.1476
  %add35.i.1480 = add i128 %add28.i.1477, %shr33.i.1479
  %and37.i.1481 = shl i128 %add14.i.1467, 40
  %shl38.i.1482 = and i128 %and37.i.1481, 72056494526300160
  %sub43.i.1484 = sub i128 %add.i.1458, %add14.i.1467
  %shr45.i.1485 = lshr i128 %add35.i.1480, 56
  %add43.i.1537 = add nuw nsw i128 %mul48.i.1538, %mul54.i.1542
  %add49.i.1539 = add nuw i128 %add43.i.1537, %shl.i.1469
  %add55.i.1543 = add i128 %add49.i.1539, %mul42.i.1536
  %add17.i.1470 = add i128 %add55.i.1543, %mul37.i.1535
  %add23.i.1474 = add i128 %add17.i.1470, %shr21.i.1473
  %add47.i.1486 = add i128 %add23.i.1474, %shr45.i.1485
  %and49.i.1487 = and i128 %add35.i.1480, 72057594037927935
  %shr51.i.1488 = lshr i128 %add47.i.1486, 56
  %and54.i.1489 = and i128 %add47.i.1486, 72057594037927935
  %shr56.i.1490 = lshr i128 %add47.i.1486, 72
  %add58.i.1491 = add nuw nsw i128 %shr56.i.1490, %and49.i.1487
  %and60.i.1492 = shl nuw nsw i128 %shr51.i.1488, 40
  %shl61.i.1493 = and i128 %and60.i.1492, 72056494526300160
  %sub66.i.1495 = sub i128 %sub43.i.1484, %shr51.i.1488
  %shr68.i.1496 = lshr i128 %sub66.i.1495, 56
  %add.i.1521 = add nuw i128 %mul13.i.1520, 170141183460469229370468033484042534912
  %add3.i.1460 = sub i128 %add.i.1521, %add85.i.1553
  %sub31.i.1478 = add i128 %add3.i.1460, %mul8.i.1517
  %add40.i.1483 = add i128 %sub31.i.1478, %shl38.i.1482
  %add63.i.1494 = add i128 %add40.i.1483, %shl61.i.1493
  %add70.i.1497 = add i128 %add63.i.1494, %shr68.i.1496
  %sub66.tr.i.1498 = trunc i128 %sub66.i.1495 to i64
  %conv.i.1499 = and i64 %sub66.tr.i.1498, 72057594037927935
  %shr75.i.1500 = lshr i128 %add70.i.1497, 56
  %add77.i.1501 = add nuw nsw i128 %add58.i.1491, %shr75.i.1500
  %add70.tr.i.1502 = trunc i128 %add70.i.1497 to i64
  %conv80.i.1503 = and i64 %add70.tr.i.1502, 72057594037927935
  %shr83.i.1505 = lshr i128 %add77.i.1501, 56
  %add85.i.1506 = add nuw nsw i128 %shr83.i.1505, %and54.i.1489
  %add77.tr.i.1507 = trunc i128 %add77.i.1501 to i64
  %conv88.i.1508 = and i64 %add77.tr.i.1507, 72057594037927935
  %mul.i.1426 = shl nuw nsw i64 %conv.i.1499, 1
  %mul2.i.1428 = shl nuw nsw i64 %conv80.i.1503, 1
  %mul4.i.1430 = shl nuw nsw i64 %conv88.i.1508, 1
  %conv.i.1431 = zext i64 %conv.i.1499 to i128
  %mul8.i.1432 = mul nuw nsw i128 %conv.i.1431, %conv.i.1431
  %conv12.i.1433 = zext i64 %mul2.i.1428 to i128
  %mul13.i.1434 = mul nuw nsw i128 %conv12.i.1433, %conv.i.1431
  %conv17.i.1436 = zext i64 %mul4.i.1430 to i128
  %mul18.i.1437 = mul nuw nsw i128 %conv17.i.1436, %conv.i.1431
  %conv20.i.1438 = zext i64 %conv80.i.1503 to i128
  %mul23.i.1439 = mul nuw nsw i128 %conv20.i.1438, %conv20.i.1438
  %conv27.i.1444 = zext i64 %mul.i.1426 to i128
  %mul28.i.1445 = mul nuw nsw i128 %add85.i.1506, %conv27.i.1444
  %mul32.i.1446 = mul nuw nsw i128 %conv17.i.1436, %conv20.i.1438
  %add33.i.1447 = add nuw nsw i128 %mul32.i.1446, %mul28.i.1445
  %mul38.i.1449 = mul nuw nsw i128 %add85.i.1506, %conv12.i.1433
  %conv40.i.1450 = zext i64 %conv88.i.1508 to i128
  %mul43.i.1451 = mul nuw nsw i128 %conv40.i.1450, %conv40.i.1450
  %add44.i.1452 = add nuw nsw i128 %mul43.i.1451, %mul38.i.1449
  %mul49.i.1454 = mul nuw nsw i128 %conv17.i.1436, %add85.i.1506
  %mul55.i.1456 = mul nuw nsw i128 %add85.i.1506, %add85.i.1506
  %add.i.1372 = add nsw i128 %mul8.i.1432, -170141183460469231731687303715884072960
  %add3.i.1374 = add nuw i128 %mul13.i.1434, 170141183460469229370468033484042534912
  %shr.i.1380 = lshr i128 %mul55.i.1456, 16
  %add14.i.1381 = add nuw i128 %add44.i.1452, %shr.i.1380
  %and.i.1382 = shl i128 %mul55.i.1456, 40
  %shl.i.1383 = and i128 %and.i.1382, 72056494526300160
  %add17.i.1384 = add nuw i128 %add33.i.1447, %shl.i.1383
  %shr21.i.1387 = lshr i128 %mul49.i.1454, 16
  %add23.i.1388 = add i128 %add17.i.1384, %shr21.i.1387
  %and25.i.1389 = shl i128 %mul49.i.1454, 40
  %shl26.i.1390 = and i128 %and25.i.1389, 72055395014672384
  %sub31.i.1392 = sub i128 %add3.i.1374, %mul49.i.1454
  %shr33.i.1393 = lshr i128 %add14.i.1381, 16
  %add.i.1440 = add nuw i128 %mul23.i.1439, 170141183460469229370504062281061498880
  %add6.i.1376 = sub i128 %add.i.1440, %mul55.i.1456
  %sub.i.1385 = add i128 %add6.i.1376, %mul18.i.1437
  %add28.i.1391 = add i128 %sub.i.1385, %shl26.i.1390
  %add35.i.1394 = add i128 %add28.i.1391, %shr33.i.1393
  %and37.i.1395 = shl i128 %add14.i.1381, 40
  %shl38.i.1396 = and i128 %and37.i.1395, 72056494526300160
  %add40.i.1397 = add i128 %sub31.i.1392, %shl38.i.1396
  %sub43.i.1398 = sub i128 %add.i.1372, %add14.i.1381
  %shr45.i.1399 = lshr i128 %add35.i.1394, 56
  %add47.i.1400 = add i128 %add23.i.1388, %shr45.i.1399
  %and49.i.1401 = and i128 %add35.i.1394, 72057594037927935
  %shr51.i.1402 = lshr i128 %add47.i.1400, 56
  %and54.i.1403 = and i128 %add47.i.1400, 72057594037927935
  %shr56.i.1404 = lshr i128 %add47.i.1400, 72
  %add58.i.1405 = add nuw nsw i128 %shr56.i.1404, %and49.i.1401
  %and60.i.1406 = shl nuw nsw i128 %shr51.i.1402, 40
  %shl61.i.1407 = and i128 %and60.i.1406, 72056494526300160
  %add63.i.1408 = add i128 %add40.i.1397, %shl61.i.1407
  %sub66.i.1409 = sub i128 %sub43.i.1398, %shr51.i.1402
  %shr68.i.1410 = lshr i128 %sub66.i.1409, 56
  %add70.i.1411 = add i128 %add63.i.1408, %shr68.i.1410
  %sub66.tr.i.1412 = trunc i128 %sub66.i.1409 to i64
  %shr75.i.1414 = lshr i128 %add70.i.1411, 56
  %add77.i.1415 = add nuw nsw i128 %add58.i.1405, %shr75.i.1414
  %add70.tr.i.1416 = trunc i128 %add70.i.1411 to i64
  %shr83.i.1419 = lshr i128 %add77.i.1415, 56
  %add85.i.1420 = add nuw nsw i128 %shr83.i.1419, %and54.i.1403
  %add77.tr.i.1421 = trunc i128 %add77.i.1415 to i64
  %conv91.i.1424 = trunc i128 %add85.i.1420 to i64
  %conv.i.15983051.3102 = and i64 %sub66.tr.i.1412, 72057594037927935
  %ftmp3.sroa.16.8.3053.3103 = and i64 %add70.tr.i.1416, 72057594037927935
  %conv88.i.12373054.3104 = and i64 %add77.tr.i.1421, 72057594037927935
  br label %for.body.71

for.body.71:                                      ; preds = %for.body.71, %for.end.59
  %conv88.i.123730543109 = phi i64 [ %conv88.i.12373054.3104, %for.end.59 ], [ %conv88.i.12373054, %for.body.71 ]
  %ftmp3.sroa.16.8.30533108 = phi i64 [ %ftmp3.sroa.16.8.3053.3103, %for.end.59 ], [ %ftmp3.sroa.16.8.3053, %for.body.71 ]
  %conv.i.159830513107 = phi i64 [ %conv.i.15983051.3102, %for.end.59 ], [ %conv.i.15983051, %for.body.71 ]
  %i.23106 = phi i32 [ 0, %for.end.59 ], [ %inc77, %for.body.71 ]
  %ftmp3.sroa.44.24.load30563105 = phi i64 [ %conv91.i.1424, %for.end.59 ], [ %conv91.i.1338, %for.body.71 ]
  %mul.i.1340 = shl nuw nsw i64 %conv.i.159830513107, 1
  %mul2.i.1342 = shl nuw nsw i64 %ftmp3.sroa.16.8.30533108, 1
  %mul4.i.1344 = shl nuw nsw i64 %conv88.i.123730543109, 1
  %conv.i.1345 = zext i64 %conv.i.159830513107 to i128
  %mul8.i.1346 = mul nuw nsw i128 %conv.i.1345, %conv.i.1345
  %conv12.i.1347 = zext i64 %mul2.i.1342 to i128
  %mul13.i.1348 = mul nuw nsw i128 %conv.i.1345, %conv12.i.1347
  %conv17.i.1350 = zext i64 %mul4.i.1344 to i128
  %mul18.i.1351 = mul nuw nsw i128 %conv.i.1345, %conv17.i.1350
  %conv20.i.1352 = zext i64 %ftmp3.sroa.16.8.30533108 to i128
  %mul23.i.1353 = mul nuw nsw i128 %conv20.i.1352, %conv20.i.1352
  %conv26.i.1357 = zext i64 %ftmp3.sroa.44.24.load30563105 to i128
  %conv27.i.1358 = zext i64 %mul.i.1340 to i128
  %mul28.i.1359 = mul nuw nsw i128 %conv27.i.1358, %conv26.i.1357
  %mul32.i.1360 = mul nuw nsw i128 %conv20.i.1352, %conv17.i.1350
  %mul38.i.1363 = mul nuw nsw i128 %conv12.i.1347, %conv26.i.1357
  %conv40.i.1364 = zext i64 %conv88.i.123730543109 to i128
  %mul43.i.1365 = mul nuw nsw i128 %conv40.i.1364, %conv40.i.1364
  %mul49.i.1368 = mul nuw nsw i128 %conv17.i.1350, %conv26.i.1357
  %mul55.i.1370 = mul nuw i128 %conv26.i.1357, %conv26.i.1357
  %add.i.1286 = add nsw i128 %mul8.i.1346, -170141183460469231731687303715884072960
  %shr.i.1294 = lshr i128 %mul55.i.1370, 16
  %add44.i.1366 = add nuw nsw i128 %mul43.i.1365, %shr.i.1294
  %add14.i.1295 = add nuw nsw i128 %add44.i.1366, %mul38.i.1363
  %and.i.1296 = shl i128 %mul55.i.1370, 40
  %shl.i.1297 = and i128 %and.i.1296, 72056494526300160
  %shr21.i.1301 = lshr i128 %mul49.i.1368, 16
  %and25.i.1303 = shl i128 %mul49.i.1368, 40
  %shl26.i.1304 = and i128 %and25.i.1303, 72055395014672384
  %shr33.i.1307 = lshr i128 %add14.i.1295, 16
  %add.i.1354 = sub i128 170141183460469229370504062281061498880, %mul55.i.1370
  %add6.i.1290 = add i128 %add.i.1354, %mul23.i.1353
  %sub.i.1299 = add i128 %add6.i.1290, %mul18.i.1351
  %add28.i.1305 = add i128 %sub.i.1299, %shl26.i.1304
  %add35.i.1308 = add i128 %add28.i.1305, %shr33.i.1307
  %and37.i.1309 = shl i128 %add14.i.1295, 40
  %shl38.i.1310 = and i128 %and37.i.1309, 72056494526300160
  %sub43.i.1312 = sub nuw i128 %add.i.1286, %add14.i.1295
  %shr45.i.1313 = lshr i128 %add35.i.1308, 56
  %add33.i.1361 = add nuw nsw i128 %mul32.i.1360, %shl.i.1297
  %add17.i.1298 = add nuw nsw i128 %add33.i.1361, %shr21.i.1301
  %add23.i.1302 = add nuw nsw i128 %add17.i.1298, %mul28.i.1359
  %add47.i.1314 = add nuw i128 %add23.i.1302, %shr45.i.1313
  %and49.i.1315 = and i128 %add35.i.1308, 72057594037927935
  %shr51.i.1316 = lshr i128 %add47.i.1314, 56
  %and54.i.1317 = and i128 %add47.i.1314, 72057594037927935
  %shr56.i.1318 = lshr i128 %add47.i.1314, 72
  %add58.i.1319 = add nuw nsw i128 %shr56.i.1318, %and49.i.1315
  %and60.i.1320 = shl nuw nsw i128 %shr51.i.1316, 40
  %shl61.i.1321 = and i128 %and60.i.1320, 72056494526300160
  %sub66.i.1323 = sub i128 %sub43.i.1312, %shr51.i.1316
  %shr68.i.1324 = lshr i128 %sub66.i.1323, 56
  %add3.i.1288 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.1368
  %sub31.i.1306 = add nuw i128 %add3.i.1288, %mul13.i.1348
  %add40.i.1311 = add i128 %sub31.i.1306, %shl38.i.1310
  %add63.i.1322 = add i128 %add40.i.1311, %shl61.i.1321
  %add70.i.1325 = add i128 %add63.i.1322, %shr68.i.1324
  %sub66.tr.i.1326 = trunc i128 %sub66.i.1323 to i64
  %shr75.i.1328 = lshr i128 %add70.i.1325, 56
  %add77.i.1329 = add nuw nsw i128 %add58.i.1319, %shr75.i.1328
  %add70.tr.i.1330 = trunc i128 %add70.i.1325 to i64
  %shr83.i.1333 = lshr i128 %add77.i.1329, 56
  %add85.i.1334 = add nuw nsw i128 %shr83.i.1333, %and54.i.1317
  %add77.tr.i.1335 = trunc i128 %add77.i.1329 to i64
  %conv91.i.1338 = trunc i128 %add85.i.1334 to i64
  %inc77 = add nuw nsw i32 %i.23106, 1
  %conv.i.15983051 = and i64 %sub66.tr.i.1326, 72057594037927935
  %ftmp3.sroa.16.8.3053 = and i64 %add70.tr.i.1330, 72057594037927935
  %conv88.i.12373054 = and i64 %add77.tr.i.1335, 72057594037927935
  %exitcond3129 = icmp eq i32 %inc77, 23
  br i1 %exitcond3129, label %for.end.78, label %for.body.71

for.end.78:                                       ; preds = %for.body.71
  %conv88.i.12373054.lcssa = phi i64 [ %conv88.i.12373054, %for.body.71 ]
  %ftmp3.sroa.16.8.3053.lcssa = phi i64 [ %ftmp3.sroa.16.8.3053, %for.body.71 ]
  %conv.i.15983051.lcssa = phi i64 [ %conv.i.15983051, %for.body.71 ]
  %add85.i.1334.lcssa = phi i128 [ %add85.i.1334, %for.body.71 ]
  %conv.i.1241 = zext i64 %conv.i.15983051.lcssa to i128
  %mul.i.1243 = mul nuw nsw i128 %conv.i.1241, %conv.i.1431
  %mul8.i.1246 = mul nuw nsw i128 %conv.i.1241, %conv20.i.1438
  %conv10.i.1248 = zext i64 %ftmp3.sroa.16.8.3053.lcssa to i128
  %mul13.i.1249 = mul nuw nsw i128 %conv10.i.1248, %conv.i.1431
  %mul19.i.1254 = mul nuw nsw i128 %conv.i.1241, %conv40.i.1450
  %mul24.i.1255 = mul nuw nsw i128 %conv10.i.1248, %conv20.i.1438
  %conv27.i.1258 = zext i64 %conv88.i.12373054.lcssa to i128
  %mul30.i.1259 = mul nuw nsw i128 %conv27.i.1258, %conv.i.1431
  %mul37.i.1264 = mul nuw nsw i128 %conv.i.1241, %add85.i.1506
  %mul42.i.1265 = mul nuw nsw i128 %conv10.i.1248, %conv40.i.1450
  %mul48.i.1267 = mul nuw nsw i128 %conv27.i.1258, %conv20.i.1438
  %mul54.i.1271 = mul nuw nsw i128 %add85.i.1334.lcssa, %conv.i.1431
  %mul61.i.1274 = mul nuw nsw i128 %conv10.i.1248, %add85.i.1506
  %mul66.i.1275 = mul nuw nsw i128 %conv27.i.1258, %conv40.i.1450
  %mul72.i.1277 = mul nuw nsw i128 %add85.i.1334.lcssa, %conv20.i.1438
  %mul79.i.1280 = mul nuw nsw i128 %conv27.i.1258, %add85.i.1506
  %mul84.i.1281 = mul nuw nsw i128 %add85.i.1334.lcssa, %conv40.i.1450
  %add85.i.1282 = add nuw nsw i128 %mul79.i.1280, %mul84.i.1281
  %mul91.i.1284 = mul nuw nsw i128 %add85.i.1334.lcssa, %add85.i.1506
  %add.i.1187 = add nsw i128 %mul.i.1243, -170141183460469231731687303715884072960
  %shr.i.1195 = lshr i128 %mul91.i.1284, 16
  %add67.i.1276 = add nuw nsw i128 %shr.i.1195, %mul72.i.1277
  %add73.i.1278 = add nuw i128 %add67.i.1276, %mul66.i.1275
  %add14.i.1196 = add i128 %add73.i.1278, %mul61.i.1274
  %and.i.1197 = shl i128 %mul91.i.1284, 40
  %shl.i.1198 = and i128 %and.i.1197, 72056494526300160
  %shr21.i.1202 = lshr i128 %add85.i.1282, 16
  %and25.i.1204 = shl i128 %add85.i.1282, 40
  %shl26.i.1205 = and i128 %and25.i.1204, 72056494526300160
  %shr33.i.1208 = lshr i128 %add14.i.1196, 16
  %add25.i.1256 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.1284
  %add31.i.1260 = add i128 %add25.i.1256, %mul30.i.1259
  %add6.i.1191 = add i128 %add31.i.1260, %mul24.i.1255
  %sub.i.1200 = add i128 %add6.i.1191, %mul19.i.1254
  %add28.i.1206 = add i128 %sub.i.1200, %shl26.i.1205
  %add35.i.1209 = add i128 %add28.i.1206, %shr33.i.1208
  %and37.i.1210 = shl i128 %add14.i.1196, 40
  %shl38.i.1211 = and i128 %and37.i.1210, 72056494526300160
  %sub43.i.1213 = sub i128 %add.i.1187, %add14.i.1196
  %shr45.i.1214 = lshr i128 %add35.i.1209, 56
  %add43.i.1266 = add nuw nsw i128 %mul48.i.1267, %mul54.i.1271
  %add49.i.1268 = add nuw i128 %add43.i.1266, %shl.i.1198
  %add55.i.1272 = add i128 %add49.i.1268, %mul42.i.1265
  %add17.i.1199 = add i128 %add55.i.1272, %mul37.i.1264
  %add23.i.1203 = add i128 %add17.i.1199, %shr21.i.1202
  %add47.i.1215 = add i128 %add23.i.1203, %shr45.i.1214
  %and49.i.1216 = and i128 %add35.i.1209, 72057594037927935
  %shr51.i.1217 = lshr i128 %add47.i.1215, 56
  %and54.i.1218 = and i128 %add47.i.1215, 72057594037927935
  %shr56.i.1219 = lshr i128 %add47.i.1215, 72
  %add58.i.1220 = add nuw nsw i128 %shr56.i.1219, %and49.i.1216
  %and60.i.1221 = shl nuw nsw i128 %shr51.i.1217, 40
  %shl61.i.1222 = and i128 %and60.i.1221, 72056494526300160
  %sub66.i.1224 = sub i128 %sub43.i.1213, %shr51.i.1217
  %shr68.i.1225 = lshr i128 %sub66.i.1224, 56
  %add.i.1250 = add nuw i128 %mul13.i.1249, 170141183460469229370468033484042534912
  %add3.i.1189 = sub i128 %add.i.1250, %add85.i.1282
  %sub31.i.1207 = add i128 %add3.i.1189, %mul8.i.1246
  %add40.i.1212 = add i128 %sub31.i.1207, %shl38.i.1211
  %add63.i.1223 = add i128 %add40.i.1212, %shl61.i.1222
  %add70.i.1226 = add i128 %add63.i.1223, %shr68.i.1225
  %sub66.tr.i.1227 = trunc i128 %sub66.i.1224 to i64
  %conv.i.1228 = and i64 %sub66.tr.i.1227, 72057594037927935
  %shr75.i.1229 = lshr i128 %add70.i.1226, 56
  %add77.i.1230 = add nuw nsw i128 %add58.i.1220, %shr75.i.1229
  %add70.tr.i.1231 = trunc i128 %add70.i.1226 to i64
  %conv80.i.1232 = and i64 %add70.tr.i.1231, 72057594037927935
  %shr83.i.1234 = lshr i128 %add77.i.1230, 56
  %add85.i.1235 = add nuw nsw i128 %shr83.i.1234, %and54.i.1218
  %add77.tr.i.1236 = trunc i128 %add77.i.1230 to i64
  %conv88.i.1237 = and i64 %add77.tr.i.1236, 72057594037927935
  %mul.i.1155 = shl nuw nsw i64 %conv.i.1228, 1
  %mul2.i.1157 = shl nuw nsw i64 %conv80.i.1232, 1
  %mul4.i.1159 = shl nuw nsw i64 %conv88.i.1237, 1
  %conv.i.1160 = zext i64 %conv.i.1228 to i128
  %mul8.i.1161 = mul nuw nsw i128 %conv.i.1160, %conv.i.1160
  %conv12.i.1162 = zext i64 %mul2.i.1157 to i128
  %mul13.i.1163 = mul nuw nsw i128 %conv12.i.1162, %conv.i.1160
  %conv17.i.1165 = zext i64 %mul4.i.1159 to i128
  %mul18.i.1166 = mul nuw nsw i128 %conv17.i.1165, %conv.i.1160
  %conv20.i.1167 = zext i64 %conv80.i.1232 to i128
  %mul23.i.1168 = mul nuw nsw i128 %conv20.i.1167, %conv20.i.1167
  %conv27.i.1173 = zext i64 %mul.i.1155 to i128
  %mul28.i.1174 = mul nuw nsw i128 %add85.i.1235, %conv27.i.1173
  %mul32.i.1175 = mul nuw nsw i128 %conv17.i.1165, %conv20.i.1167
  %add33.i.1176 = add nuw nsw i128 %mul32.i.1175, %mul28.i.1174
  %mul38.i.1178 = mul nuw nsw i128 %add85.i.1235, %conv12.i.1162
  %conv40.i.1179 = zext i64 %conv88.i.1237 to i128
  %mul43.i.1180 = mul nuw nsw i128 %conv40.i.1179, %conv40.i.1179
  %add44.i.1181 = add nuw nsw i128 %mul43.i.1180, %mul38.i.1178
  %mul49.i.1183 = mul nuw nsw i128 %conv17.i.1165, %add85.i.1235
  %mul55.i.1185 = mul nuw nsw i128 %add85.i.1235, %add85.i.1235
  %add.i.1101 = add nsw i128 %mul8.i.1161, -170141183460469231731687303715884072960
  %add3.i.1103 = add nuw i128 %mul13.i.1163, 170141183460469229370468033484042534912
  %shr.i.1109 = lshr i128 %mul55.i.1185, 16
  %add14.i.1110 = add nuw i128 %add44.i.1181, %shr.i.1109
  %and.i.1111 = shl i128 %mul55.i.1185, 40
  %shl.i.1112 = and i128 %and.i.1111, 72056494526300160
  %add17.i.1113 = add nuw i128 %add33.i.1176, %shl.i.1112
  %shr21.i.1116 = lshr i128 %mul49.i.1183, 16
  %add23.i.1117 = add i128 %add17.i.1113, %shr21.i.1116
  %and25.i.1118 = shl i128 %mul49.i.1183, 40
  %shl26.i.1119 = and i128 %and25.i.1118, 72055395014672384
  %sub31.i.1121 = sub i128 %add3.i.1103, %mul49.i.1183
  %shr33.i.1122 = lshr i128 %add14.i.1110, 16
  %add.i.1169 = add nuw i128 %mul23.i.1168, 170141183460469229370504062281061498880
  %add6.i.1105 = sub i128 %add.i.1169, %mul55.i.1185
  %sub.i.1114 = add i128 %add6.i.1105, %mul18.i.1166
  %add28.i.1120 = add i128 %sub.i.1114, %shl26.i.1119
  %add35.i.1123 = add i128 %add28.i.1120, %shr33.i.1122
  %and37.i.1124 = shl i128 %add14.i.1110, 40
  %shl38.i.1125 = and i128 %and37.i.1124, 72056494526300160
  %add40.i.1126 = add i128 %sub31.i.1121, %shl38.i.1125
  %sub43.i.1127 = sub i128 %add.i.1101, %add14.i.1110
  %shr45.i.1128 = lshr i128 %add35.i.1123, 56
  %add47.i.1129 = add i128 %add23.i.1117, %shr45.i.1128
  %and49.i.1130 = and i128 %add35.i.1123, 72057594037927935
  %shr51.i.1131 = lshr i128 %add47.i.1129, 56
  %and54.i.1132 = and i128 %add47.i.1129, 72057594037927935
  %shr56.i.1133 = lshr i128 %add47.i.1129, 72
  %add58.i.1134 = add nuw nsw i128 %shr56.i.1133, %and49.i.1130
  %and60.i.1135 = shl nuw nsw i128 %shr51.i.1131, 40
  %shl61.i.1136 = and i128 %and60.i.1135, 72056494526300160
  %add63.i.1137 = add i128 %add40.i.1126, %shl61.i.1136
  %sub66.i.1138 = sub i128 %sub43.i.1127, %shr51.i.1131
  %shr68.i.1139 = lshr i128 %sub66.i.1138, 56
  %add70.i.1140 = add i128 %add63.i.1137, %shr68.i.1139
  %sub66.tr.i.1141 = trunc i128 %sub66.i.1138 to i64
  %shr75.i.1143 = lshr i128 %add70.i.1140, 56
  %add77.i.1144 = add nuw nsw i128 %add58.i.1134, %shr75.i.1143
  %add70.tr.i.1145 = trunc i128 %add70.i.1140 to i64
  %shr83.i.1148 = lshr i128 %add77.i.1144, 56
  %add85.i.1149 = add nuw nsw i128 %shr83.i.1148, %and54.i.1132
  %add77.tr.i.1150 = trunc i128 %add77.i.1144 to i64
  %conv91.i.1153 = trunc i128 %add85.i.1149 to i64
  %conv.i.8713042.3094 = and i64 %sub66.tr.i.1141, 72057594037927935
  %ftmp4.sroa.10.8.3045.3095 = and i64 %add70.tr.i.1145, 72057594037927935
  %ftmp4.sroa.18.16.3047.3096 = and i64 %add77.tr.i.1150, 72057594037927935
  br label %for.body.90

for.body.90:                                      ; preds = %for.body.90, %for.end.78
  %ftmp4.sroa.18.16.30473101 = phi i64 [ %ftmp4.sroa.18.16.3047.3096, %for.end.78 ], [ %ftmp4.sroa.18.16.3047, %for.body.90 ]
  %ftmp4.sroa.10.8.30453100 = phi i64 [ %ftmp4.sroa.10.8.3045.3095, %for.end.78 ], [ %ftmp4.sroa.10.8.3045, %for.body.90 ]
  %conv.i.87130423099 = phi i64 [ %conv.i.8713042.3094, %for.end.78 ], [ %conv.i.8713042, %for.body.90 ]
  %i.33098 = phi i32 [ 0, %for.end.78 ], [ %inc96, %for.body.90 ]
  %ftmp4.sroa.26.24.load30483097 = phi i64 [ %conv91.i.1153, %for.end.78 ], [ %conv91.i.1067, %for.body.90 ]
  %mul.i.1069 = shl nuw nsw i64 %conv.i.87130423099, 1
  %mul2.i.1071 = shl nuw nsw i64 %ftmp4.sroa.10.8.30453100, 1
  %mul4.i.1073 = shl nuw nsw i64 %ftmp4.sroa.18.16.30473101, 1
  %conv.i.1074 = zext i64 %conv.i.87130423099 to i128
  %mul8.i.1075 = mul nuw nsw i128 %conv.i.1074, %conv.i.1074
  %conv12.i.1076 = zext i64 %mul2.i.1071 to i128
  %mul13.i.1077 = mul nuw nsw i128 %conv.i.1074, %conv12.i.1076
  %conv17.i.1079 = zext i64 %mul4.i.1073 to i128
  %mul18.i.1080 = mul nuw nsw i128 %conv.i.1074, %conv17.i.1079
  %conv20.i.1081 = zext i64 %ftmp4.sroa.10.8.30453100 to i128
  %mul23.i.1082 = mul nuw nsw i128 %conv20.i.1081, %conv20.i.1081
  %conv26.i.1086 = zext i64 %ftmp4.sroa.26.24.load30483097 to i128
  %conv27.i.1087 = zext i64 %mul.i.1069 to i128
  %mul28.i.1088 = mul nuw nsw i128 %conv27.i.1087, %conv26.i.1086
  %mul32.i.1089 = mul nuw nsw i128 %conv20.i.1081, %conv17.i.1079
  %mul38.i.1092 = mul nuw nsw i128 %conv12.i.1076, %conv26.i.1086
  %conv40.i.1093 = zext i64 %ftmp4.sroa.18.16.30473101 to i128
  %mul43.i.1094 = mul nuw nsw i128 %conv40.i.1093, %conv40.i.1093
  %mul49.i.1097 = mul nuw nsw i128 %conv17.i.1079, %conv26.i.1086
  %mul55.i.1099 = mul nuw i128 %conv26.i.1086, %conv26.i.1086
  %add.i.1015 = add nsw i128 %mul8.i.1075, -170141183460469231731687303715884072960
  %shr.i.1023 = lshr i128 %mul55.i.1099, 16
  %add44.i.1095 = add nuw nsw i128 %mul43.i.1094, %shr.i.1023
  %add14.i.1024 = add nuw nsw i128 %add44.i.1095, %mul38.i.1092
  %and.i.1025 = shl i128 %mul55.i.1099, 40
  %shl.i.1026 = and i128 %and.i.1025, 72056494526300160
  %shr21.i.1030 = lshr i128 %mul49.i.1097, 16
  %and25.i.1032 = shl i128 %mul49.i.1097, 40
  %shl26.i.1033 = and i128 %and25.i.1032, 72055395014672384
  %shr33.i.1036 = lshr i128 %add14.i.1024, 16
  %add.i.1083 = sub i128 170141183460469229370504062281061498880, %mul55.i.1099
  %add6.i.1019 = add i128 %add.i.1083, %mul23.i.1082
  %sub.i.1028 = add i128 %add6.i.1019, %mul18.i.1080
  %add28.i.1034 = add i128 %sub.i.1028, %shl26.i.1033
  %add35.i.1037 = add i128 %add28.i.1034, %shr33.i.1036
  %and37.i.1038 = shl i128 %add14.i.1024, 40
  %shl38.i.1039 = and i128 %and37.i.1038, 72056494526300160
  %sub43.i.1041 = sub nuw i128 %add.i.1015, %add14.i.1024
  %shr45.i.1042 = lshr i128 %add35.i.1037, 56
  %add33.i.1090 = add nuw nsw i128 %mul32.i.1089, %shl.i.1026
  %add17.i.1027 = add nuw nsw i128 %add33.i.1090, %shr21.i.1030
  %add23.i.1031 = add nuw nsw i128 %add17.i.1027, %mul28.i.1088
  %add47.i.1043 = add nuw i128 %add23.i.1031, %shr45.i.1042
  %and49.i.1044 = and i128 %add35.i.1037, 72057594037927935
  %shr51.i.1045 = lshr i128 %add47.i.1043, 56
  %and54.i.1046 = and i128 %add47.i.1043, 72057594037927935
  %shr56.i.1047 = lshr i128 %add47.i.1043, 72
  %add58.i.1048 = add nuw nsw i128 %shr56.i.1047, %and49.i.1044
  %and60.i.1049 = shl nuw nsw i128 %shr51.i.1045, 40
  %shl61.i.1050 = and i128 %and60.i.1049, 72056494526300160
  %sub66.i.1052 = sub i128 %sub43.i.1041, %shr51.i.1045
  %shr68.i.1053 = lshr i128 %sub66.i.1052, 56
  %add3.i.1017 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.1097
  %sub31.i.1035 = add nuw i128 %add3.i.1017, %mul13.i.1077
  %add40.i.1040 = add i128 %sub31.i.1035, %shl38.i.1039
  %add63.i.1051 = add i128 %add40.i.1040, %shl61.i.1050
  %add70.i.1054 = add i128 %add63.i.1051, %shr68.i.1053
  %sub66.tr.i.1055 = trunc i128 %sub66.i.1052 to i64
  %shr75.i.1057 = lshr i128 %add70.i.1054, 56
  %add77.i.1058 = add nuw nsw i128 %add58.i.1048, %shr75.i.1057
  %add70.tr.i.1059 = trunc i128 %add70.i.1054 to i64
  %shr83.i.1062 = lshr i128 %add77.i.1058, 56
  %add85.i.1063 = add nuw nsw i128 %shr83.i.1062, %and54.i.1046
  %add77.tr.i.1064 = trunc i128 %add77.i.1058 to i64
  %conv91.i.1067 = trunc i128 %add85.i.1063 to i64
  %inc96 = add nuw nsw i32 %i.33098, 1
  %conv.i.8713042 = and i64 %sub66.tr.i.1055, 72057594037927935
  %ftmp4.sroa.10.8.3045 = and i64 %add70.tr.i.1059, 72057594037927935
  %ftmp4.sroa.18.16.3047 = and i64 %add77.tr.i.1064, 72057594037927935
  %exitcond3128 = icmp eq i32 %inc96, 47
  br i1 %exitcond3128, label %for.end.97, label %for.body.90

for.end.97:                                       ; preds = %for.body.90
  %ftmp4.sroa.18.16.3047.lcssa = phi i64 [ %ftmp4.sroa.18.16.3047, %for.body.90 ]
  %ftmp4.sroa.10.8.3045.lcssa = phi i64 [ %ftmp4.sroa.10.8.3045, %for.body.90 ]
  %conv.i.8713042.lcssa = phi i64 [ %conv.i.8713042, %for.body.90 ]
  %add85.i.1063.lcssa = phi i128 [ %add85.i.1063, %for.body.90 ]
  %conv2.i.971 = zext i64 %conv.i.8713042.lcssa to i128
  %mul.i.972 = mul nuw nsw i128 %conv2.i.971, %conv.i.1160
  %conv7.i.974 = zext i64 %ftmp4.sroa.10.8.3045.lcssa to i128
  %mul8.i.975 = mul nuw nsw i128 %conv7.i.974, %conv.i.1160
  %mul13.i.978 = mul nuw nsw i128 %conv2.i.971, %conv20.i.1167
  %conv18.i.982 = zext i64 %ftmp4.sroa.18.16.3047.lcssa to i128
  %mul19.i.983 = mul nuw nsw i128 %conv18.i.982, %conv.i.1160
  %mul24.i.984 = mul nuw nsw i128 %conv7.i.974, %conv20.i.1167
  %mul30.i.988 = mul nuw nsw i128 %conv2.i.971, %conv40.i.1179
  %mul37.i.993 = mul nuw nsw i128 %add85.i.1063.lcssa, %conv.i.1160
  %mul42.i.994 = mul nuw nsw i128 %conv18.i.982, %conv20.i.1167
  %add43.i.995 = add nuw nsw i128 %mul42.i.994, %mul37.i.993
  %mul48.i.996 = mul nuw nsw i128 %conv7.i.974, %conv40.i.1179
  %mul54.i.1000 = mul nuw nsw i128 %conv2.i.971, %add85.i.1235
  %mul61.i.1003 = mul nuw nsw i128 %add85.i.1063.lcssa, %conv20.i.1167
  %mul66.i.1004 = mul nuw nsw i128 %conv18.i.982, %conv40.i.1179
  %mul72.i.1006 = mul nuw nsw i128 %conv7.i.974, %add85.i.1235
  %mul79.i.1009 = mul nuw nsw i128 %add85.i.1063.lcssa, %conv40.i.1179
  %mul84.i.1010 = mul nuw nsw i128 %conv18.i.982, %add85.i.1235
  %add85.i.1011 = add nuw nsw i128 %mul84.i.1010, %mul79.i.1009
  %mul91.i.1013 = mul nuw nsw i128 %add85.i.1063.lcssa, %add85.i.1235
  %add.i.916 = add nsw i128 %mul.i.972, -170141183460469231731687303715884072960
  %shr.i.924 = lshr i128 %mul91.i.1013, 16
  %add67.i.1005 = add nuw nsw i128 %shr.i.924, %mul61.i.1003
  %add73.i.1007 = add nuw i128 %add67.i.1005, %mul66.i.1004
  %add14.i.925 = add i128 %add73.i.1007, %mul72.i.1006
  %and.i.926 = shl i128 %mul91.i.1013, 40
  %shl.i.927 = and i128 %and.i.926, 72056494526300160
  %shr21.i.931 = lshr i128 %add85.i.1011, 16
  %and25.i.933 = shl i128 %add85.i.1011, 40
  %shl26.i.934 = and i128 %and25.i.933, 72056494526300160
  %shr33.i.937 = lshr i128 %add14.i.925, 16
  %add25.i.985 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.1013
  %add31.i.989 = add i128 %add25.i.985, %mul19.i.983
  %add6.i.920 = add i128 %add31.i.989, %mul24.i.984
  %sub.i.929 = add i128 %add6.i.920, %mul30.i.988
  %add28.i.935 = add i128 %sub.i.929, %shl26.i.934
  %add35.i.938 = add i128 %add28.i.935, %shr33.i.937
  %and37.i.939 = shl i128 %add14.i.925, 40
  %shl38.i.940 = and i128 %and37.i.939, 72056494526300160
  %sub43.i.942 = sub i128 %add.i.916, %add14.i.925
  %shr45.i.943 = lshr i128 %add35.i.938, 56
  %add49.i.997 = add nuw i128 %add43.i.995, %shl.i.927
  %add55.i.1001 = add i128 %add49.i.997, %mul48.i.996
  %add17.i.928 = add i128 %add55.i.1001, %mul54.i.1000
  %add23.i.932 = add i128 %add17.i.928, %shr21.i.931
  %add47.i.944 = add i128 %add23.i.932, %shr45.i.943
  %and49.i.945 = and i128 %add35.i.938, 72057594037927935
  %shr51.i.946 = lshr i128 %add47.i.944, 56
  %and54.i.947 = and i128 %add47.i.944, 72057594037927935
  %shr56.i.948 = lshr i128 %add47.i.944, 72
  %add58.i.949 = add nuw nsw i128 %shr56.i.948, %and49.i.945
  %and60.i.950 = shl nuw nsw i128 %shr51.i.946, 40
  %shl61.i.951 = and i128 %and60.i.950, 72056494526300160
  %sub66.i.953 = sub i128 %sub43.i.942, %shr51.i.946
  %shr68.i.954 = lshr i128 %sub66.i.953, 56
  %add.i.979 = add nuw i128 %mul8.i.975, 170141183460469229370468033484042534912
  %add3.i.918 = sub i128 %add.i.979, %add85.i.1011
  %sub31.i.936 = add i128 %add3.i.918, %mul13.i.978
  %add40.i.941 = add i128 %sub31.i.936, %shl38.i.940
  %add63.i.952 = add i128 %add40.i.941, %shl61.i.951
  %add70.i.955 = add i128 %add63.i.952, %shr68.i.954
  %sub66.tr.i.956 = trunc i128 %sub66.i.953 to i64
  %conv.i.957 = and i64 %sub66.tr.i.956, 72057594037927935
  %shr75.i.958 = lshr i128 %add70.i.955, 56
  %add77.i.959 = add nuw nsw i128 %add58.i.949, %shr75.i.958
  %add70.tr.i.960 = trunc i128 %add70.i.955 to i64
  %conv80.i.961 = and i64 %add70.tr.i.960, 72057594037927935
  %shr83.i.963 = lshr i128 %add77.i.959, 56
  %add85.i.964 = add nuw nsw i128 %shr83.i.963, %and54.i.947
  %add77.tr.i.965 = trunc i128 %add77.i.959 to i64
  %conv88.i.966 = and i64 %add77.tr.i.965, 72057594037927935
  %mul.i.884 = shl nuw nsw i64 %conv.i.957, 1
  %mul2.i.886 = shl nuw nsw i64 %conv80.i.961, 1
  %mul4.i.888 = shl nuw nsw i64 %conv88.i.966, 1
  %conv.i.889 = zext i64 %conv.i.957 to i128
  %mul8.i.890 = mul nuw nsw i128 %conv.i.889, %conv.i.889
  %conv12.i.891 = zext i64 %mul2.i.886 to i128
  %mul13.i.892 = mul nuw nsw i128 %conv12.i.891, %conv.i.889
  %conv17.i.894 = zext i64 %mul4.i.888 to i128
  %mul18.i.895 = mul nuw nsw i128 %conv17.i.894, %conv.i.889
  %conv20.i.896 = zext i64 %conv80.i.961 to i128
  %mul23.i.897 = mul nuw nsw i128 %conv20.i.896, %conv20.i.896
  %conv27.i.902 = zext i64 %mul.i.884 to i128
  %mul28.i.903 = mul nuw nsw i128 %add85.i.964, %conv27.i.902
  %mul32.i.904 = mul nuw nsw i128 %conv17.i.894, %conv20.i.896
  %add33.i.905 = add nuw nsw i128 %mul32.i.904, %mul28.i.903
  %mul38.i.907 = mul nuw nsw i128 %add85.i.964, %conv12.i.891
  %conv40.i.908 = zext i64 %conv88.i.966 to i128
  %mul43.i.909 = mul nuw nsw i128 %conv40.i.908, %conv40.i.908
  %add44.i.910 = add nuw nsw i128 %mul43.i.909, %mul38.i.907
  %mul49.i.912 = mul nuw nsw i128 %conv17.i.894, %add85.i.964
  %mul55.i.914 = mul nuw nsw i128 %add85.i.964, %add85.i.964
  %add.i.830 = add nsw i128 %mul8.i.890, -170141183460469231731687303715884072960
  %add3.i.832 = add nuw i128 %mul13.i.892, 170141183460469229370468033484042534912
  %shr.i.838 = lshr i128 %mul55.i.914, 16
  %add14.i.839 = add nuw i128 %add44.i.910, %shr.i.838
  %and.i.840 = shl i128 %mul55.i.914, 40
  %shl.i.841 = and i128 %and.i.840, 72056494526300160
  %add17.i.842 = add nuw i128 %add33.i.905, %shl.i.841
  %shr21.i.845 = lshr i128 %mul49.i.912, 16
  %add23.i.846 = add i128 %add17.i.842, %shr21.i.845
  %and25.i.847 = shl i128 %mul49.i.912, 40
  %shl26.i.848 = and i128 %and25.i.847, 72055395014672384
  %sub31.i.850 = sub i128 %add3.i.832, %mul49.i.912
  %shr33.i.851 = lshr i128 %add14.i.839, 16
  %add.i.898 = add nuw i128 %mul23.i.897, 170141183460469229370504062281061498880
  %add6.i.834 = sub i128 %add.i.898, %mul55.i.914
  %sub.i.843 = add i128 %add6.i.834, %mul18.i.895
  %add28.i.849 = add i128 %sub.i.843, %shl26.i.848
  %add35.i.852 = add i128 %add28.i.849, %shr33.i.851
  %and37.i.853 = shl i128 %add14.i.839, 40
  %shl38.i.854 = and i128 %and37.i.853, 72056494526300160
  %add40.i.855 = add i128 %sub31.i.850, %shl38.i.854
  %sub43.i.856 = sub i128 %add.i.830, %add14.i.839
  %shr45.i.857 = lshr i128 %add35.i.852, 56
  %add47.i.858 = add i128 %add23.i.846, %shr45.i.857
  %and49.i.859 = and i128 %add35.i.852, 72057594037927935
  %shr51.i.860 = lshr i128 %add47.i.858, 56
  %and54.i.861 = and i128 %add47.i.858, 72057594037927935
  %shr56.i.862 = lshr i128 %add47.i.858, 72
  %add58.i.863 = add nuw nsw i128 %shr56.i.862, %and49.i.859
  %and60.i.864 = shl nuw nsw i128 %shr51.i.860, 40
  %shl61.i.865 = and i128 %and60.i.864, 72056494526300160
  %add63.i.866 = add i128 %add40.i.855, %shl61.i.865
  %sub66.i.867 = sub i128 %sub43.i.856, %shr51.i.860
  %shr68.i.868 = lshr i128 %sub66.i.867, 56
  %add70.i.869 = add i128 %add63.i.866, %shr68.i.868
  %sub66.tr.i.870 = trunc i128 %sub66.i.867 to i64
  %shr75.i.872 = lshr i128 %add70.i.869, 56
  %add77.i.873 = add nuw nsw i128 %add58.i.863, %shr75.i.872
  %add70.tr.i.874 = trunc i128 %add70.i.869 to i64
  %shr83.i.877 = lshr i128 %add77.i.873, 56
  %add85.i.878 = add nuw nsw i128 %shr83.i.877, %and54.i.861
  %add77.tr.i.879 = trunc i128 %add77.i.873 to i64
  %conv91.i.882 = trunc i128 %add85.i.878 to i64
  %conv.i.8713043.3086 = and i64 %sub66.tr.i.870, 72057594037927935
  %ftmp4.sroa.10.8.3044.3087 = and i64 %add70.tr.i.874, 72057594037927935
  %ftmp4.sroa.18.16.3046.3088 = and i64 %add77.tr.i.879, 72057594037927935
  br label %for.body.109

for.body.109:                                     ; preds = %for.body.109, %for.end.97
  %ftmp4.sroa.18.16.30463093 = phi i64 [ %ftmp4.sroa.18.16.3046.3088, %for.end.97 ], [ %ftmp4.sroa.18.16.3046, %for.body.109 ]
  %ftmp4.sroa.10.8.30443092 = phi i64 [ %ftmp4.sroa.10.8.3044.3087, %for.end.97 ], [ %ftmp4.sroa.10.8.3044, %for.body.109 ]
  %conv.i.87130433091 = phi i64 [ %conv.i.8713043.3086, %for.end.97 ], [ %conv.i.8713043, %for.body.109 ]
  %i.43090 = phi i32 [ 0, %for.end.97 ], [ %inc115, %for.body.109 ]
  %ftmp4.sroa.26.24.load30493089 = phi i64 [ %conv91.i.882, %for.end.97 ], [ %conv91.i.796, %for.body.109 ]
  %mul.i.798 = shl nuw nsw i64 %conv.i.87130433091, 1
  %mul2.i.800 = shl nuw nsw i64 %ftmp4.sroa.10.8.30443092, 1
  %mul4.i.802 = shl nuw nsw i64 %ftmp4.sroa.18.16.30463093, 1
  %conv.i.803 = zext i64 %conv.i.87130433091 to i128
  %mul8.i.804 = mul nuw nsw i128 %conv.i.803, %conv.i.803
  %conv12.i.805 = zext i64 %mul2.i.800 to i128
  %mul13.i.806 = mul nuw nsw i128 %conv.i.803, %conv12.i.805
  %conv17.i.808 = zext i64 %mul4.i.802 to i128
  %mul18.i.809 = mul nuw nsw i128 %conv.i.803, %conv17.i.808
  %conv20.i.810 = zext i64 %ftmp4.sroa.10.8.30443092 to i128
  %mul23.i.811 = mul nuw nsw i128 %conv20.i.810, %conv20.i.810
  %conv26.i.815 = zext i64 %ftmp4.sroa.26.24.load30493089 to i128
  %conv27.i.816 = zext i64 %mul.i.798 to i128
  %mul28.i.817 = mul nuw nsw i128 %conv27.i.816, %conv26.i.815
  %mul32.i.818 = mul nuw nsw i128 %conv20.i.810, %conv17.i.808
  %mul38.i.821 = mul nuw nsw i128 %conv12.i.805, %conv26.i.815
  %conv40.i.822 = zext i64 %ftmp4.sroa.18.16.30463093 to i128
  %mul43.i.823 = mul nuw nsw i128 %conv40.i.822, %conv40.i.822
  %mul49.i.826 = mul nuw nsw i128 %conv17.i.808, %conv26.i.815
  %mul55.i.828 = mul nuw i128 %conv26.i.815, %conv26.i.815
  %add.i.744 = add nsw i128 %mul8.i.804, -170141183460469231731687303715884072960
  %shr.i.752 = lshr i128 %mul55.i.828, 16
  %add44.i.824 = add nuw nsw i128 %mul43.i.823, %shr.i.752
  %add14.i.753 = add nuw nsw i128 %add44.i.824, %mul38.i.821
  %and.i.754 = shl i128 %mul55.i.828, 40
  %shl.i.755 = and i128 %and.i.754, 72056494526300160
  %shr21.i.759 = lshr i128 %mul49.i.826, 16
  %and25.i.761 = shl i128 %mul49.i.826, 40
  %shl26.i.762 = and i128 %and25.i.761, 72055395014672384
  %shr33.i.765 = lshr i128 %add14.i.753, 16
  %add.i.812 = sub i128 170141183460469229370504062281061498880, %mul55.i.828
  %add6.i.748 = add i128 %add.i.812, %mul23.i.811
  %sub.i.757 = add i128 %add6.i.748, %mul18.i.809
  %add28.i.763 = add i128 %sub.i.757, %shl26.i.762
  %add35.i.766 = add i128 %add28.i.763, %shr33.i.765
  %and37.i.767 = shl i128 %add14.i.753, 40
  %shl38.i.768 = and i128 %and37.i.767, 72056494526300160
  %sub43.i.770 = sub nuw i128 %add.i.744, %add14.i.753
  %shr45.i.771 = lshr i128 %add35.i.766, 56
  %add33.i.819 = add nuw nsw i128 %mul32.i.818, %shl.i.755
  %add17.i.756 = add nuw nsw i128 %add33.i.819, %shr21.i.759
  %add23.i.760 = add nuw nsw i128 %add17.i.756, %mul28.i.817
  %add47.i.772 = add nuw i128 %add23.i.760, %shr45.i.771
  %and49.i.773 = and i128 %add35.i.766, 72057594037927935
  %shr51.i.774 = lshr i128 %add47.i.772, 56
  %and54.i.775 = and i128 %add47.i.772, 72057594037927935
  %shr56.i.776 = lshr i128 %add47.i.772, 72
  %add58.i.777 = add nuw nsw i128 %shr56.i.776, %and49.i.773
  %and60.i.778 = shl nuw nsw i128 %shr51.i.774, 40
  %shl61.i.779 = and i128 %and60.i.778, 72056494526300160
  %sub66.i.781 = sub i128 %sub43.i.770, %shr51.i.774
  %shr68.i.782 = lshr i128 %sub66.i.781, 56
  %add3.i.746 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.826
  %sub31.i.764 = add nuw i128 %add3.i.746, %mul13.i.806
  %add40.i.769 = add i128 %sub31.i.764, %shl38.i.768
  %add63.i.780 = add i128 %add40.i.769, %shl61.i.779
  %add70.i.783 = add i128 %add63.i.780, %shr68.i.782
  %sub66.tr.i.784 = trunc i128 %sub66.i.781 to i64
  %shr75.i.786 = lshr i128 %add70.i.783, 56
  %add77.i.787 = add nuw nsw i128 %add58.i.777, %shr75.i.786
  %add70.tr.i.788 = trunc i128 %add70.i.783 to i64
  %shr83.i.791 = lshr i128 %add77.i.787, 56
  %add85.i.792 = add nuw nsw i128 %shr83.i.791, %and54.i.775
  %add77.tr.i.793 = trunc i128 %add77.i.787 to i64
  %conv91.i.796 = trunc i128 %add85.i.792 to i64
  %inc115 = add nuw nsw i32 %i.43090, 1
  %conv.i.8713043 = and i64 %sub66.tr.i.784, 72057594037927935
  %ftmp4.sroa.10.8.3044 = and i64 %add70.tr.i.788, 72057594037927935
  %ftmp4.sroa.18.16.3046 = and i64 %add77.tr.i.793, 72057594037927935
  %exitcond3127 = icmp eq i32 %inc115, 23
  br i1 %exitcond3127, label %for.end.116, label %for.body.109

for.end.116:                                      ; preds = %for.body.109
  %ftmp4.sroa.18.16.3046.lcssa = phi i64 [ %ftmp4.sroa.18.16.3046, %for.body.109 ]
  %ftmp4.sroa.10.8.3044.lcssa = phi i64 [ %ftmp4.sroa.10.8.3044, %for.body.109 ]
  %conv.i.8713043.lcssa = phi i64 [ %conv.i.8713043, %for.body.109 ]
  %add85.i.792.lcssa = phi i128 [ %add85.i.792, %for.body.109 ]
  %conv2.i.700 = zext i64 %conv.i.8713043.lcssa to i128
  %mul.i.701 = mul nuw nsw i128 %conv2.i.700, %conv.i.1431
  %conv7.i.703 = zext i64 %ftmp4.sroa.10.8.3044.lcssa to i128
  %mul8.i.704 = mul nuw nsw i128 %conv7.i.703, %conv.i.1431
  %mul13.i.707 = mul nuw nsw i128 %conv2.i.700, %conv20.i.1438
  %conv18.i.711 = zext i64 %ftmp4.sroa.18.16.3046.lcssa to i128
  %mul19.i.712 = mul nuw nsw i128 %conv18.i.711, %conv.i.1431
  %mul24.i.713 = mul nuw nsw i128 %conv7.i.703, %conv20.i.1438
  %mul30.i.717 = mul nuw nsw i128 %conv2.i.700, %conv40.i.1450
  %mul37.i.722 = mul nuw nsw i128 %add85.i.792.lcssa, %conv.i.1431
  %mul42.i.723 = mul nuw nsw i128 %conv18.i.711, %conv20.i.1438
  %add43.i.724 = add nuw nsw i128 %mul42.i.723, %mul37.i.722
  %mul48.i.725 = mul nuw nsw i128 %conv7.i.703, %conv40.i.1450
  %mul54.i.729 = mul nuw nsw i128 %conv2.i.700, %add85.i.1506
  %mul61.i.732 = mul nuw nsw i128 %add85.i.792.lcssa, %conv20.i.1438
  %mul66.i.733 = mul nuw nsw i128 %conv18.i.711, %conv40.i.1450
  %mul72.i.735 = mul nuw nsw i128 %conv7.i.703, %add85.i.1506
  %mul79.i.738 = mul nuw nsw i128 %add85.i.792.lcssa, %conv40.i.1450
  %mul84.i.739 = mul nuw nsw i128 %conv18.i.711, %add85.i.1506
  %add85.i.740 = add nuw nsw i128 %mul84.i.739, %mul79.i.738
  %mul91.i.742 = mul nuw nsw i128 %add85.i.792.lcssa, %add85.i.1506
  %add.i.645 = add nsw i128 %mul.i.701, -170141183460469231731687303715884072960
  %shr.i.653 = lshr i128 %mul91.i.742, 16
  %add67.i.734 = add nuw nsw i128 %shr.i.653, %mul61.i.732
  %add73.i.736 = add nuw i128 %add67.i.734, %mul66.i.733
  %add14.i.654 = add i128 %add73.i.736, %mul72.i.735
  %and.i.655 = shl i128 %mul91.i.742, 40
  %shl.i.656 = and i128 %and.i.655, 72056494526300160
  %shr21.i.660 = lshr i128 %add85.i.740, 16
  %and25.i.662 = shl i128 %add85.i.740, 40
  %shl26.i.663 = and i128 %and25.i.662, 72056494526300160
  %shr33.i.666 = lshr i128 %add14.i.654, 16
  %add25.i.714 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.742
  %add31.i.718 = add i128 %add25.i.714, %mul19.i.712
  %add6.i.649 = add i128 %add31.i.718, %mul24.i.713
  %sub.i.658 = add i128 %add6.i.649, %mul30.i.717
  %add28.i.664 = add i128 %sub.i.658, %shl26.i.663
  %add35.i.667 = add i128 %add28.i.664, %shr33.i.666
  %and37.i.668 = shl i128 %add14.i.654, 40
  %shl38.i.669 = and i128 %and37.i.668, 72056494526300160
  %sub43.i.671 = sub i128 %add.i.645, %add14.i.654
  %shr45.i.672 = lshr i128 %add35.i.667, 56
  %add49.i.726 = add nuw i128 %add43.i.724, %shl.i.656
  %add55.i.730 = add i128 %add49.i.726, %mul48.i.725
  %add17.i.657 = add i128 %add55.i.730, %mul54.i.729
  %add23.i.661 = add i128 %add17.i.657, %shr21.i.660
  %add47.i.673 = add i128 %add23.i.661, %shr45.i.672
  %and49.i.674 = and i128 %add35.i.667, 72057594037927935
  %shr51.i.675 = lshr i128 %add47.i.673, 56
  %and54.i.676 = and i128 %add47.i.673, 72057594037927935
  %shr56.i.677 = lshr i128 %add47.i.673, 72
  %add58.i.678 = add nuw nsw i128 %shr56.i.677, %and49.i.674
  %and60.i.679 = shl nuw nsw i128 %shr51.i.675, 40
  %shl61.i.680 = and i128 %and60.i.679, 72056494526300160
  %sub66.i.682 = sub i128 %sub43.i.671, %shr51.i.675
  %shr68.i.683 = lshr i128 %sub66.i.682, 56
  %add.i.708 = add nuw i128 %mul8.i.704, 170141183460469229370468033484042534912
  %add3.i.647 = sub i128 %add.i.708, %add85.i.740
  %sub31.i.665 = add i128 %add3.i.647, %mul13.i.707
  %add40.i.670 = add i128 %sub31.i.665, %shl38.i.669
  %add63.i.681 = add i128 %add40.i.670, %shl61.i.680
  %add70.i.684 = add i128 %add63.i.681, %shr68.i.683
  %sub66.tr.i.685 = trunc i128 %sub66.i.682 to i64
  %shr75.i.687 = lshr i128 %add70.i.684, 56
  %add77.i.688 = add nuw nsw i128 %add58.i.678, %shr75.i.687
  %add70.tr.i.689 = trunc i128 %add70.i.684 to i64
  %shr83.i.692 = lshr i128 %add77.i.688, 56
  %add85.i.693 = add nuw nsw i128 %shr83.i.692, %and54.i.676
  %add77.tr.i.694 = trunc i128 %add77.i.688 to i64
  %conv91.i.697 = trunc i128 %add85.i.693 to i64
  %conv.i.19553058.3078 = and i64 %sub66.tr.i.685, 72057594037927935
  %ftmp2.sroa.23.8.3060.3079 = and i64 %add70.tr.i.689, 72057594037927935
  %conv88.i.18783063.3080 = and i64 %add77.tr.i.694, 72057594037927935
  br label %for.body.124

for.body.124:                                     ; preds = %for.body.124, %for.end.116
  %conv88.i.187830633085 = phi i64 [ %conv88.i.18783063.3080, %for.end.116 ], [ %conv88.i.18783063, %for.body.124 ]
  %ftmp2.sroa.23.8.30603084 = phi i64 [ %ftmp2.sroa.23.8.3060.3079, %for.end.116 ], [ %ftmp2.sroa.23.8.3060, %for.body.124 ]
  %conv.i.195530583083 = phi i64 [ %conv.i.19553058.3078, %for.end.116 ], [ %conv.i.19553058, %for.body.124 ]
  %i.53082 = phi i32 [ 0, %for.end.116 ], [ %inc130, %for.body.124 ]
  %ftmp2.sroa.65.24.load30643081 = phi i64 [ %conv91.i.697, %for.end.116 ], [ %conv91.i.611, %for.body.124 ]
  %mul.i.613 = shl nuw nsw i64 %conv.i.195530583083, 1
  %mul2.i.615 = shl nuw nsw i64 %ftmp2.sroa.23.8.30603084, 1
  %mul4.i.617 = shl nuw nsw i64 %conv88.i.187830633085, 1
  %conv.i.618 = zext i64 %conv.i.195530583083 to i128
  %mul8.i.619 = mul nuw nsw i128 %conv.i.618, %conv.i.618
  %conv12.i.620 = zext i64 %mul2.i.615 to i128
  %mul13.i.621 = mul nuw nsw i128 %conv.i.618, %conv12.i.620
  %conv17.i.623 = zext i64 %mul4.i.617 to i128
  %mul18.i.624 = mul nuw nsw i128 %conv.i.618, %conv17.i.623
  %conv20.i.625 = zext i64 %ftmp2.sroa.23.8.30603084 to i128
  %mul23.i.626 = mul nuw nsw i128 %conv20.i.625, %conv20.i.625
  %conv26.i.630 = zext i64 %ftmp2.sroa.65.24.load30643081 to i128
  %conv27.i.631 = zext i64 %mul.i.613 to i128
  %mul28.i.632 = mul nuw nsw i128 %conv27.i.631, %conv26.i.630
  %mul32.i.633 = mul nuw nsw i128 %conv20.i.625, %conv17.i.623
  %mul38.i.636 = mul nuw nsw i128 %conv12.i.620, %conv26.i.630
  %conv40.i.637 = zext i64 %conv88.i.187830633085 to i128
  %mul43.i.638 = mul nuw nsw i128 %conv40.i.637, %conv40.i.637
  %mul49.i.641 = mul nuw nsw i128 %conv17.i.623, %conv26.i.630
  %mul55.i.643 = mul nuw i128 %conv26.i.630, %conv26.i.630
  %add.i.559 = add nsw i128 %mul8.i.619, -170141183460469231731687303715884072960
  %shr.i.567 = lshr i128 %mul55.i.643, 16
  %add44.i.639 = add nuw nsw i128 %mul43.i.638, %shr.i.567
  %add14.i.568 = add nuw nsw i128 %add44.i.639, %mul38.i.636
  %and.i.569 = shl i128 %mul55.i.643, 40
  %shl.i.570 = and i128 %and.i.569, 72056494526300160
  %shr21.i.574 = lshr i128 %mul49.i.641, 16
  %and25.i.576 = shl i128 %mul49.i.641, 40
  %shl26.i.577 = and i128 %and25.i.576, 72055395014672384
  %shr33.i.580 = lshr i128 %add14.i.568, 16
  %add.i.627 = sub i128 170141183460469229370504062281061498880, %mul55.i.643
  %add6.i.563 = add i128 %add.i.627, %mul23.i.626
  %sub.i.572 = add i128 %add6.i.563, %mul18.i.624
  %add28.i.578 = add i128 %sub.i.572, %shl26.i.577
  %add35.i.581 = add i128 %add28.i.578, %shr33.i.580
  %and37.i.582 = shl i128 %add14.i.568, 40
  %shl38.i.583 = and i128 %and37.i.582, 72056494526300160
  %sub43.i.585 = sub nuw i128 %add.i.559, %add14.i.568
  %shr45.i.586 = lshr i128 %add35.i.581, 56
  %add33.i.634 = add nuw nsw i128 %mul32.i.633, %shl.i.570
  %add17.i.571 = add nuw nsw i128 %add33.i.634, %shr21.i.574
  %add23.i.575 = add nuw nsw i128 %add17.i.571, %mul28.i.632
  %add47.i.587 = add nuw i128 %add23.i.575, %shr45.i.586
  %and49.i.588 = and i128 %add35.i.581, 72057594037927935
  %shr51.i.589 = lshr i128 %add47.i.587, 56
  %and54.i.590 = and i128 %add47.i.587, 72057594037927935
  %shr56.i.591 = lshr i128 %add47.i.587, 72
  %add58.i.592 = add nuw nsw i128 %shr56.i.591, %and49.i.588
  %and60.i.593 = shl nuw nsw i128 %shr51.i.589, 40
  %shl61.i.594 = and i128 %and60.i.593, 72056494526300160
  %sub66.i.596 = sub i128 %sub43.i.585, %shr51.i.589
  %shr68.i.597 = lshr i128 %sub66.i.596, 56
  %add3.i.561 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.641
  %sub31.i.579 = add nuw i128 %add3.i.561, %mul13.i.621
  %add40.i.584 = add i128 %sub31.i.579, %shl38.i.583
  %add63.i.595 = add i128 %add40.i.584, %shl61.i.594
  %add70.i.598 = add i128 %add63.i.595, %shr68.i.597
  %sub66.tr.i.599 = trunc i128 %sub66.i.596 to i64
  %shr75.i.601 = lshr i128 %add70.i.598, 56
  %add77.i.602 = add nuw nsw i128 %add58.i.592, %shr75.i.601
  %add70.tr.i.603 = trunc i128 %add70.i.598 to i64
  %shr83.i.606 = lshr i128 %add77.i.602, 56
  %add85.i.607 = add nuw nsw i128 %shr83.i.606, %and54.i.590
  %add77.tr.i.608 = trunc i128 %add77.i.602 to i64
  %conv91.i.611 = trunc i128 %add85.i.607 to i64
  %inc130 = add nuw nsw i32 %i.53082, 1
  %conv.i.19553058 = and i64 %sub66.tr.i.599, 72057594037927935
  %ftmp2.sroa.23.8.3060 = and i64 %add70.tr.i.603, 72057594037927935
  %conv88.i.18783063 = and i64 %add77.tr.i.608, 72057594037927935
  %exitcond3126 = icmp eq i32 %inc130, 6
  br i1 %exitcond3126, label %for.end.131, label %for.body.124

for.end.131:                                      ; preds = %for.body.124
  %conv88.i.18783063.lcssa = phi i64 [ %conv88.i.18783063, %for.body.124 ]
  %ftmp2.sroa.23.8.3060.lcssa = phi i64 [ %ftmp2.sroa.23.8.3060, %for.body.124 ]
  %conv.i.19553058.lcssa = phi i64 [ %conv.i.19553058, %for.body.124 ]
  %add85.i.607.lcssa = phi i128 [ %add85.i.607, %for.body.124 ]
  %conv.i.514 = zext i64 %conv.i.19553058.lcssa to i128
  %mul.i.516 = mul nuw nsw i128 %conv.i.514, %conv.i.1973
  %mul8.i.519 = mul nuw nsw i128 %conv.i.514, %conv20.i.1980
  %conv10.i.521 = zext i64 %ftmp2.sroa.23.8.3060.lcssa to i128
  %mul13.i.522 = mul nuw nsw i128 %conv10.i.521, %conv.i.1973
  %mul19.i.527 = mul nuw nsw i128 %conv.i.514, %conv40.i.1992
  %mul24.i.528 = mul nuw nsw i128 %conv10.i.521, %conv20.i.1980
  %conv27.i.531 = zext i64 %conv88.i.18783063.lcssa to i128
  %mul30.i.532 = mul nuw nsw i128 %conv27.i.531, %conv.i.1973
  %mul37.i.537 = mul nuw nsw i128 %conv.i.514, %add85.i.2048
  %mul42.i.538 = mul nuw nsw i128 %conv10.i.521, %conv40.i.1992
  %mul48.i.540 = mul nuw nsw i128 %conv27.i.531, %conv20.i.1980
  %mul54.i.544 = mul nuw nsw i128 %add85.i.607.lcssa, %conv.i.1973
  %mul61.i.547 = mul nuw nsw i128 %conv10.i.521, %add85.i.2048
  %mul66.i.548 = mul nuw nsw i128 %conv27.i.531, %conv40.i.1992
  %mul72.i.550 = mul nuw nsw i128 %add85.i.607.lcssa, %conv20.i.1980
  %mul79.i.553 = mul nuw nsw i128 %conv27.i.531, %add85.i.2048
  %mul84.i.554 = mul nuw nsw i128 %add85.i.607.lcssa, %conv40.i.1992
  %add85.i.555 = add nuw nsw i128 %mul79.i.553, %mul84.i.554
  %mul91.i.557 = mul nuw nsw i128 %add85.i.607.lcssa, %add85.i.2048
  %add.i.460 = add nsw i128 %mul.i.516, -170141183460469231731687303715884072960
  %shr.i.468 = lshr i128 %mul91.i.557, 16
  %add67.i.549 = add nuw nsw i128 %shr.i.468, %mul72.i.550
  %add73.i.551 = add nuw i128 %add67.i.549, %mul66.i.548
  %add14.i.469 = add i128 %add73.i.551, %mul61.i.547
  %and.i.470 = shl i128 %mul91.i.557, 40
  %shl.i.471 = and i128 %and.i.470, 72056494526300160
  %shr21.i.475 = lshr i128 %add85.i.555, 16
  %and25.i.477 = shl i128 %add85.i.555, 40
  %shl26.i.478 = and i128 %and25.i.477, 72056494526300160
  %shr33.i.481 = lshr i128 %add14.i.469, 16
  %add25.i.529 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.557
  %add31.i.533 = add i128 %add25.i.529, %mul30.i.532
  %add6.i.464 = add i128 %add31.i.533, %mul24.i.528
  %sub.i.473 = add i128 %add6.i.464, %mul19.i.527
  %add28.i.479 = add i128 %sub.i.473, %shl26.i.478
  %add35.i.482 = add i128 %add28.i.479, %shr33.i.481
  %and37.i.483 = shl i128 %add14.i.469, 40
  %shl38.i.484 = and i128 %and37.i.483, 72056494526300160
  %sub43.i.486 = sub i128 %add.i.460, %add14.i.469
  %shr45.i.487 = lshr i128 %add35.i.482, 56
  %add43.i.539 = add nuw nsw i128 %mul48.i.540, %mul54.i.544
  %add49.i.541 = add nuw i128 %add43.i.539, %shl.i.471
  %add55.i.545 = add i128 %add49.i.541, %mul42.i.538
  %add17.i.472 = add i128 %add55.i.545, %mul37.i.537
  %add23.i.476 = add i128 %add17.i.472, %shr21.i.475
  %add47.i.488 = add i128 %add23.i.476, %shr45.i.487
  %and49.i.489 = and i128 %add35.i.482, 72057594037927935
  %shr51.i.490 = lshr i128 %add47.i.488, 56
  %and54.i.491 = and i128 %add47.i.488, 72057594037927935
  %shr56.i.492 = lshr i128 %add47.i.488, 72
  %add58.i.493 = add nuw nsw i128 %shr56.i.492, %and49.i.489
  %and60.i.494 = shl nuw nsw i128 %shr51.i.490, 40
  %shl61.i.495 = and i128 %and60.i.494, 72056494526300160
  %sub66.i.497 = sub i128 %sub43.i.486, %shr51.i.490
  %shr68.i.498 = lshr i128 %sub66.i.497, 56
  %add.i.523 = add nuw i128 %mul13.i.522, 170141183460469229370468033484042534912
  %add3.i.462 = sub i128 %add.i.523, %add85.i.555
  %sub31.i.480 = add i128 %add3.i.462, %mul8.i.519
  %add40.i.485 = add i128 %sub31.i.480, %shl38.i.484
  %add63.i.496 = add i128 %add40.i.485, %shl61.i.495
  %add70.i.499 = add i128 %add63.i.496, %shr68.i.498
  %sub66.tr.i.500 = trunc i128 %sub66.i.497 to i64
  %conv.i.501 = and i64 %sub66.tr.i.500, 72057594037927935
  %shr75.i.502 = lshr i128 %add70.i.499, 56
  %add77.i.503 = add nuw nsw i128 %add58.i.493, %shr75.i.502
  %add70.tr.i.504 = trunc i128 %add70.i.499 to i64
  %conv80.i.505 = and i64 %add70.tr.i.504, 72057594037927935
  %shr83.i.507 = lshr i128 %add77.i.503, 56
  %add85.i.508 = add nuw nsw i128 %shr83.i.507, %and54.i.491
  %add77.tr.i.509 = trunc i128 %add77.i.503 to i64
  %conv88.i.510 = and i64 %add77.tr.i.509, 72057594037927935
  %mul.i.428 = shl nuw nsw i64 %conv.i.501, 1
  %mul2.i.430 = shl nuw nsw i64 %conv80.i.505, 1
  %mul4.i.432 = shl nuw nsw i64 %conv88.i.510, 1
  %conv.i.433 = zext i64 %conv.i.501 to i128
  %mul8.i.434 = mul nuw nsw i128 %conv.i.433, %conv.i.433
  %conv12.i.435 = zext i64 %mul2.i.430 to i128
  %mul13.i.436 = mul nuw nsw i128 %conv12.i.435, %conv.i.433
  %conv17.i.438 = zext i64 %mul4.i.432 to i128
  %mul18.i.439 = mul nuw nsw i128 %conv17.i.438, %conv.i.433
  %conv20.i.440 = zext i64 %conv80.i.505 to i128
  %mul23.i.441 = mul nuw nsw i128 %conv20.i.440, %conv20.i.440
  %conv27.i.446 = zext i64 %mul.i.428 to i128
  %mul28.i.447 = mul nuw nsw i128 %add85.i.508, %conv27.i.446
  %mul32.i.448 = mul nuw nsw i128 %conv17.i.438, %conv20.i.440
  %add33.i.449 = add nuw nsw i128 %mul32.i.448, %mul28.i.447
  %mul38.i.451 = mul nuw nsw i128 %add85.i.508, %conv12.i.435
  %conv40.i.452 = zext i64 %conv88.i.510 to i128
  %mul43.i.453 = mul nuw nsw i128 %conv40.i.452, %conv40.i.452
  %add44.i.454 = add nuw nsw i128 %mul43.i.453, %mul38.i.451
  %mul49.i.456 = mul nuw nsw i128 %conv17.i.438, %add85.i.508
  %mul55.i.458 = mul nuw nsw i128 %add85.i.508, %add85.i.508
  %add.i.374 = add nsw i128 %mul8.i.434, -170141183460469231731687303715884072960
  %add3.i.376 = add nuw i128 %mul13.i.436, 170141183460469229370468033484042534912
  %shr.i.382 = lshr i128 %mul55.i.458, 16
  %add14.i.383 = add nuw i128 %add44.i.454, %shr.i.382
  %and.i.384 = shl i128 %mul55.i.458, 40
  %shl.i.385 = and i128 %and.i.384, 72056494526300160
  %add17.i.386 = add nuw i128 %add33.i.449, %shl.i.385
  %shr21.i.389 = lshr i128 %mul49.i.456, 16
  %add23.i.390 = add i128 %add17.i.386, %shr21.i.389
  %and25.i.391 = shl i128 %mul49.i.456, 40
  %shl26.i.392 = and i128 %and25.i.391, 72055395014672384
  %sub31.i.394 = sub i128 %add3.i.376, %mul49.i.456
  %shr33.i.395 = lshr i128 %add14.i.383, 16
  %add.i.442 = add nuw i128 %mul23.i.441, 170141183460469229370504062281061498880
  %add6.i.378 = sub i128 %add.i.442, %mul55.i.458
  %sub.i.387 = add i128 %add6.i.378, %mul18.i.439
  %add28.i.393 = add i128 %sub.i.387, %shl26.i.392
  %add35.i.396 = add i128 %add28.i.393, %shr33.i.395
  %and37.i.397 = shl i128 %add14.i.383, 40
  %shl38.i.398 = and i128 %and37.i.397, 72056494526300160
  %add40.i.399 = add i128 %sub31.i.394, %shl38.i.398
  %sub43.i.400 = sub i128 %add.i.374, %add14.i.383
  %shr45.i.401 = lshr i128 %add35.i.396, 56
  %add47.i.402 = add i128 %add23.i.390, %shr45.i.401
  %and49.i.403 = and i128 %add35.i.396, 72057594037927935
  %shr51.i.404 = lshr i128 %add47.i.402, 56
  %and54.i.405 = and i128 %add47.i.402, 72057594037927935
  %shr56.i.406 = lshr i128 %add47.i.402, 72
  %add58.i.407 = add nuw nsw i128 %shr56.i.406, %and49.i.403
  %and60.i.408 = shl nuw nsw i128 %shr51.i.404, 40
  %shl61.i.409 = and i128 %and60.i.408, 72056494526300160
  %add63.i.410 = add i128 %add40.i.399, %shl61.i.409
  %sub66.i.411 = sub i128 %sub43.i.400, %shr51.i.404
  %shr68.i.412 = lshr i128 %sub66.i.411, 56
  %add70.i.413 = add i128 %add63.i.410, %shr68.i.412
  %shr75.i.416 = lshr i128 %add70.i.413, 56
  %add77.i.417 = add nuw nsw i128 %add58.i.407, %shr75.i.416
  %shr83.i.421 = lshr i128 %add77.i.417, 56
  %add85.i.422 = add nuw nsw i128 %shr83.i.421, %and54.i.405
  %conv.i.329 = and i128 %sub66.i.411, 72057594037927935
  %4 = load i64, i64* %in, align 8, !tbaa !14
  %conv2.i.330 = zext i64 %4 to i128
  %mul.i.331 = mul nuw nsw i128 %conv2.i.330, %conv.i.329
  %5 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %conv7.i.333 = zext i64 %5 to i128
  %mul8.i.334 = mul nuw nsw i128 %conv7.i.333, %conv.i.329
  %conv10.i.336 = and i128 %add70.i.413, 72057594037927935
  %mul13.i.337 = mul nuw nsw i128 %conv2.i.330, %conv10.i.336
  %6 = load i64, i64* %arrayidx3.i, align 8, !tbaa !14
  %conv18.i.341 = zext i64 %6 to i128
  %mul19.i.342 = mul nuw nsw i128 %conv18.i.341, %conv.i.329
  %mul24.i.343 = mul nuw nsw i128 %conv7.i.333, %conv10.i.336
  %conv27.i.346 = and i128 %add77.i.417, 72057594037927935
  %mul30.i.347 = mul nuw nsw i128 %conv2.i.330, %conv27.i.346
  %7 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv36.i.351 = zext i64 %7 to i128
  %mul37.i.352 = mul nuw nsw i128 %conv36.i.351, %conv.i.329
  %mul42.i.353 = mul nuw nsw i128 %conv18.i.341, %conv10.i.336
  %mul48.i.355 = mul nuw nsw i128 %conv7.i.333, %conv27.i.346
  %mul54.i.359 = mul nuw nsw i128 %conv2.i.330, %add85.i.422
  %mul61.i.362 = mul nuw nsw i128 %conv36.i.351, %conv10.i.336
  %mul66.i.363 = mul nuw nsw i128 %conv18.i.341, %conv27.i.346
  %mul72.i.365 = mul nuw nsw i128 %conv7.i.333, %add85.i.422
  %mul79.i.368 = mul nuw nsw i128 %conv36.i.351, %conv27.i.346
  %mul84.i.369 = mul nuw nsw i128 %conv18.i.341, %add85.i.422
  %add85.i.370 = add nuw nsw i128 %mul79.i.368, %mul84.i.369
  %mul91.i.372 = mul nuw nsw i128 %conv36.i.351, %add85.i.422
  %add.i.275 = add nsw i128 %mul.i.331, -170141183460469231731687303715884072960
  %shr.i.283 = lshr i128 %mul91.i.372, 16
  %add67.i.364 = add nuw nsw i128 %mul66.i.363, %mul72.i.365
  %add73.i.366 = add nuw i128 %add67.i.364, %mul61.i.362
  %add14.i.284 = add i128 %add73.i.366, %shr.i.283
  %and.i.285 = shl i128 %mul91.i.372, 40
  %shl.i.286 = and i128 %and.i.285, 72056494526300160
  %shr21.i.290 = lshr i128 %add85.i.370, 16
  %and25.i.292 = shl i128 %add85.i.370, 40
  %shl26.i.293 = and i128 %and25.i.292, 72056494526300160
  %shr33.i.296 = lshr i128 %add14.i.284, 16
  %add25.i.344 = add nuw i128 %mul30.i.347, 170141183460469229370504062281061498880
  %add31.i.348 = add i128 %add25.i.344, %mul24.i.343
  %add6.i.279 = add i128 %add31.i.348, %mul19.i.342
  %sub.i.288 = sub i128 %add6.i.279, %mul91.i.372
  %add28.i.294 = add i128 %sub.i.288, %shl26.i.293
  %add35.i.297 = add i128 %add28.i.294, %shr33.i.296
  %and37.i.298 = shl i128 %add14.i.284, 40
  %shl38.i.299 = and i128 %and37.i.298, 72056494526300160
  %sub43.i.301 = sub i128 %add.i.275, %add14.i.284
  %shr45.i.302 = lshr i128 %add35.i.297, 56
  %add43.i.354 = add nuw nsw i128 %mul48.i.355, %mul54.i.359
  %add49.i.356 = add nuw i128 %add43.i.354, %mul42.i.353
  %add55.i.360 = add i128 %add49.i.356, %mul37.i.352
  %add17.i.287 = add i128 %add55.i.360, %shl.i.286
  %add23.i.291 = add i128 %add17.i.287, %shr21.i.290
  %add47.i.303 = add i128 %add23.i.291, %shr45.i.302
  %and49.i.304 = and i128 %add35.i.297, 72057594037927935
  %shr51.i.305 = lshr i128 %add47.i.303, 56
  %and54.i.306 = and i128 %add47.i.303, 72057594037927935
  %shr56.i.307 = lshr i128 %add47.i.303, 72
  %add58.i.308 = add nuw nsw i128 %shr56.i.307, %and49.i.304
  %and60.i.309 = shl nuw nsw i128 %shr51.i.305, 40
  %shl61.i.310 = and i128 %and60.i.309, 72056494526300160
  %sub66.i.312 = sub i128 %sub43.i.301, %shr51.i.305
  %shr68.i.313 = lshr i128 %sub66.i.312, 56
  %add.i.338 = add nuw i128 %mul13.i.337, 170141183460469229370468033484042534912
  %add3.i.277 = add i128 %add.i.338, %mul8.i.334
  %sub31.i.295 = sub i128 %add3.i.277, %add85.i.370
  %add40.i.300 = add i128 %sub31.i.295, %shl38.i.299
  %add63.i.311 = add i128 %add40.i.300, %shl61.i.310
  %add70.i.314 = add i128 %add63.i.311, %shr68.i.313
  %sub66.tr.i.315 = trunc i128 %sub66.i.312 to i64
  %shr75.i.317 = lshr i128 %add70.i.314, 56
  %add77.i.318 = add nuw nsw i128 %add58.i.308, %shr75.i.317
  %add70.tr.i.319 = trunc i128 %add70.i.314 to i64
  %shr83.i.322 = lshr i128 %add77.i.318, 56
  %add85.i.323 = add nuw nsw i128 %shr83.i.322, %and54.i.306
  %add77.tr.i.324 = trunc i128 %add77.i.318 to i64
  %conv91.i.327 = trunc i128 %add85.i.323 to i64
  %conv.i.23983066.3070 = and i64 %sub66.tr.i.315, 72057594037927935
  %ftmp.sroa.23.8.3067.3071 = and i64 %add70.tr.i.319, 72057594037927935
  %ftmp.sroa.44.16.3068.3072 = and i64 %add77.tr.i.324, 72057594037927935
  br label %for.body.147

for.body.147:                                     ; preds = %for.body.147, %for.end.131
  %ftmp.sroa.44.16.30683077 = phi i64 [ %ftmp.sroa.44.16.3068.3072, %for.end.131 ], [ %ftmp.sroa.44.16.3068, %for.body.147 ]
  %ftmp.sroa.23.8.30673076 = phi i64 [ %ftmp.sroa.23.8.3067.3071, %for.end.131 ], [ %ftmp.sroa.23.8.3067, %for.body.147 ]
  %conv.i.239830663075 = phi i64 [ %conv.i.23983066.3070, %for.end.131 ], [ %conv.i.23983066, %for.body.147 ]
  %i.63074 = phi i32 [ 0, %for.end.131 ], [ %inc153, %for.body.147 ]
  %ftmp.sroa.65.24.load30693073 = phi i64 [ %conv91.i.327, %for.end.131 ], [ %conv91.i.241, %for.body.147 ]
  %mul.i.243 = shl nuw nsw i64 %conv.i.239830663075, 1
  %mul2.i.245 = shl nuw nsw i64 %ftmp.sroa.23.8.30673076, 1
  %mul4.i.247 = shl nuw nsw i64 %ftmp.sroa.44.16.30683077, 1
  %conv.i.248 = zext i64 %conv.i.239830663075 to i128
  %mul8.i.249 = mul nuw nsw i128 %conv.i.248, %conv.i.248
  %conv12.i.250 = zext i64 %mul2.i.245 to i128
  %mul13.i.251 = mul nuw nsw i128 %conv.i.248, %conv12.i.250
  %conv17.i.253 = zext i64 %mul4.i.247 to i128
  %mul18.i.254 = mul nuw nsw i128 %conv.i.248, %conv17.i.253
  %conv20.i.255 = zext i64 %ftmp.sroa.23.8.30673076 to i128
  %mul23.i.256 = mul nuw nsw i128 %conv20.i.255, %conv20.i.255
  %conv26.i.260 = zext i64 %ftmp.sroa.65.24.load30693073 to i128
  %conv27.i.261 = zext i64 %mul.i.243 to i128
  %mul28.i.262 = mul nuw nsw i128 %conv27.i.261, %conv26.i.260
  %mul32.i.263 = mul nuw nsw i128 %conv20.i.255, %conv17.i.253
  %mul38.i.266 = mul nuw nsw i128 %conv12.i.250, %conv26.i.260
  %conv40.i.267 = zext i64 %ftmp.sroa.44.16.30683077 to i128
  %mul43.i.268 = mul nuw nsw i128 %conv40.i.267, %conv40.i.267
  %mul49.i.271 = mul nuw nsw i128 %conv17.i.253, %conv26.i.260
  %mul55.i.273 = mul nuw i128 %conv26.i.260, %conv26.i.260
  %add.i.189 = add nsw i128 %mul8.i.249, -170141183460469231731687303715884072960
  %shr.i.197 = lshr i128 %mul55.i.273, 16
  %add44.i.269 = add nuw nsw i128 %mul43.i.268, %shr.i.197
  %add14.i.198 = add nuw nsw i128 %add44.i.269, %mul38.i.266
  %and.i.199 = shl i128 %mul55.i.273, 40
  %shl.i.200 = and i128 %and.i.199, 72056494526300160
  %shr21.i.204 = lshr i128 %mul49.i.271, 16
  %and25.i.206 = shl i128 %mul49.i.271, 40
  %shl26.i.207 = and i128 %and25.i.206, 72055395014672384
  %shr33.i.210 = lshr i128 %add14.i.198, 16
  %add.i.257 = sub i128 170141183460469229370504062281061498880, %mul55.i.273
  %add6.i.193 = add i128 %add.i.257, %mul23.i.256
  %sub.i.202 = add i128 %add6.i.193, %mul18.i.254
  %add28.i.208 = add i128 %sub.i.202, %shl26.i.207
  %add35.i.211 = add i128 %add28.i.208, %shr33.i.210
  %and37.i.212 = shl i128 %add14.i.198, 40
  %shl38.i.213 = and i128 %and37.i.212, 72056494526300160
  %sub43.i.215 = sub nuw i128 %add.i.189, %add14.i.198
  %shr45.i.216 = lshr i128 %add35.i.211, 56
  %add33.i.264 = add nuw nsw i128 %mul32.i.263, %shl.i.200
  %add17.i.201 = add nuw nsw i128 %add33.i.264, %shr21.i.204
  %add23.i.205 = add nuw nsw i128 %add17.i.201, %mul28.i.262
  %add47.i.217 = add nuw i128 %add23.i.205, %shr45.i.216
  %and49.i.218 = and i128 %add35.i.211, 72057594037927935
  %shr51.i.219 = lshr i128 %add47.i.217, 56
  %and54.i.220 = and i128 %add47.i.217, 72057594037927935
  %shr56.i.221 = lshr i128 %add47.i.217, 72
  %add58.i.222 = add nuw nsw i128 %shr56.i.221, %and49.i.218
  %and60.i.223 = shl nuw nsw i128 %shr51.i.219, 40
  %shl61.i.224 = and i128 %and60.i.223, 72056494526300160
  %sub66.i.226 = sub i128 %sub43.i.215, %shr51.i.219
  %shr68.i.227 = lshr i128 %sub66.i.226, 56
  %add3.i.191 = sub nsw i128 170141183460469229370468033484042534912, %mul49.i.271
  %sub31.i.209 = add nuw i128 %add3.i.191, %mul13.i.251
  %add40.i.214 = add i128 %sub31.i.209, %shl38.i.213
  %add63.i.225 = add i128 %add40.i.214, %shl61.i.224
  %add70.i.228 = add i128 %add63.i.225, %shr68.i.227
  %sub66.tr.i.229 = trunc i128 %sub66.i.226 to i64
  %shr75.i.231 = lshr i128 %add70.i.228, 56
  %add77.i.232 = add nuw nsw i128 %add58.i.222, %shr75.i.231
  %add70.tr.i.233 = trunc i128 %add70.i.228 to i64
  %shr83.i.236 = lshr i128 %add77.i.232, 56
  %add85.i.237 = add nuw nsw i128 %shr83.i.236, %and54.i.220
  %add77.tr.i.238 = trunc i128 %add77.i.232 to i64
  %conv91.i.241 = trunc i128 %add85.i.237 to i64
  %inc153 = add nuw nsw i32 %i.63074, 1
  %conv.i.23983066 = and i64 %sub66.tr.i.229, 72057594037927935
  %ftmp.sroa.23.8.3067 = and i64 %add70.tr.i.233, 72057594037927935
  %ftmp.sroa.44.16.3068 = and i64 %add77.tr.i.238, 72057594037927935
  %exitcond = icmp eq i32 %inc153, 97
  br i1 %exitcond, label %for.end.154, label %for.body.147

for.end.154:                                      ; preds = %for.body.147
  %ftmp.sroa.44.16.3068.lcssa = phi i64 [ %ftmp.sroa.44.16.3068, %for.body.147 ]
  %ftmp.sroa.23.8.3067.lcssa = phi i64 [ %ftmp.sroa.23.8.3067, %for.body.147 ]
  %conv.i.23983066.lcssa = phi i64 [ %conv.i.23983066, %for.body.147 ]
  %add85.i.237.lcssa = phi i128 [ %add85.i.237, %for.body.147 ]
  %conv.i.178 = zext i64 %conv.i.23983066.lcssa to i128
  %mul.i.179 = mul nuw nsw i128 %conv.i.178, %conv.i.889
  %mul8.i.180 = mul nuw nsw i128 %conv.i.178, %conv20.i.896
  %conv10.i = zext i64 %ftmp.sroa.23.8.3067.lcssa to i128
  %mul13.i.181 = mul nuw nsw i128 %conv10.i, %conv.i.889
  %mul19.i = mul nuw nsw i128 %conv.i.178, %conv40.i.908
  %mul24.i = mul nuw nsw i128 %conv10.i, %conv20.i.896
  %conv27.i.184 = zext i64 %ftmp.sroa.44.16.3068.lcssa to i128
  %mul30.i = mul nuw nsw i128 %conv27.i.184, %conv.i.889
  %mul37.i = mul nuw nsw i128 %conv.i.178, %add85.i.964
  %mul42.i = mul nuw nsw i128 %conv10.i, %conv40.i.908
  %mul48.i = mul nuw nsw i128 %conv27.i.184, %conv20.i.896
  %mul54.i = mul nuw nsw i128 %add85.i.237.lcssa, %conv.i.889
  %mul61.i = mul nuw nsw i128 %conv10.i, %add85.i.964
  %mul66.i = mul nuw nsw i128 %conv27.i.184, %conv40.i.908
  %mul72.i = mul nuw nsw i128 %add85.i.237.lcssa, %conv20.i.896
  %mul79.i = mul nuw nsw i128 %conv27.i.184, %add85.i.964
  %mul84.i = mul nuw nsw i128 %add85.i.237.lcssa, %conv40.i.908
  %add85.i.187 = add nuw nsw i128 %mul79.i, %mul84.i
  %mul91.i = mul nuw nsw i128 %add85.i.237.lcssa, %add85.i.964
  %add.i.176 = add nsw i128 %mul.i.179, -170141183460469231731687303715884072960
  %shr.i = lshr i128 %mul91.i, 16
  %add67.i = add nuw nsw i128 %shr.i, %mul72.i
  %add73.i = add nuw i128 %add67.i, %mul66.i
  %add14.i = add i128 %add73.i, %mul61.i
  %and.i = shl i128 %mul91.i, 40
  %shl.i = and i128 %and.i, 72056494526300160
  %shr21.i = lshr i128 %add85.i.187, 16
  %and25.i = shl i128 %add85.i.187, 40
  %shl26.i = and i128 %and25.i, 72056494526300160
  %shr33.i = lshr i128 %add14.i, 16
  %add25.i = sub nsw i128 170141183460469229370504062281061498880, %mul91.i
  %add31.i = add i128 %add25.i, %mul30.i
  %add6.i = add i128 %add31.i, %mul24.i
  %sub.i = add i128 %add6.i, %mul19.i
  %add28.i = add i128 %sub.i, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %sub43.i = sub i128 %add.i.176, %add14.i
  %shr45.i = lshr i128 %add35.i, 56
  %add43.i = add nuw nsw i128 %mul48.i, %mul54.i
  %add49.i = add nuw i128 %add43.i, %shl.i
  %add55.i = add i128 %add49.i, %mul42.i
  %add17.i = add i128 %add55.i, %mul37.i
  %add23.i = add i128 %add17.i, %shr21.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add.i.182 = add nuw i128 %mul13.i.181, 170141183460469229370468033484042534912
  %add3.i = sub i128 %add.i.182, %add85.i.187
  %sub31.i = add i128 %add3.i, %mul8.i.180
  %add40.i = add i128 %sub31.i, %shl38.i
  %add63.i = add i128 %add40.i, %shl61.i
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i.177 = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i.177, i64* %out, align 8, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !14
  %conv91.i = trunc i128 %add85.i to i64
  %arrayidx92.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @felem_contract(i64* nocapture %out, i64* nocapture readonly %in) #1 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx3, align 8, !tbaa !14
  %arrayidx5 = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx5, align 8, !tbaa !14
  %arrayidx7 = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx7, align 8, !tbaa !14
  %shr = lshr i64 %3, 56
  %sub = sub nsw i64 %0, %shr
  %shl = shl nuw nsw i64 %shr, 40
  %add = add nsw i64 %shl, %1
  %and = and i64 %3, 72057594037927935
  %or = or i64 %1, 1099511627775
  %and15 = and i64 %or, %2
  %and17 = and i64 %and15, %3
  %add18 = add i64 %and17, 1
  %and21 = and i64 %1, 1099511627775
  %add22 = add i64 %0, -1
  %sub23 = add i64 %add22, %and21
  %shr24 = ashr i64 %sub23, 63
  %or25 = or i64 %add18, %shr24
  %and26 = and i64 %or25, 72057594037927935
  %sub27 = add nsw i64 %and26, -1
  %shr28 = ashr i64 %sub27, 63
  %xor = xor i64 %shr28, -1
  %and30 = and i64 %and, %xor
  %and33 = and i64 %2, %xor
  %or35 = or i64 %xor, 1099511627775
  %and37 = and i64 %or35, %add
  %and38 = and i64 %shr28, 1
  %sub40 = sub i64 %sub, %and38
  %shr42 = ashr i64 %sub40, 63
  %and43 = and i64 %shr42, 72057594037927936
  %add45 = add nsw i64 %and43, %sub40
  %and46 = and i64 %shr42, 1
  %sub48 = sub nsw i64 %and37, %and46
  %shr50 = ashr i64 %sub48, 56
  %add52 = add nsw i64 %shr50, %and33
  %and54 = and i64 %sub48, 72057594037927935
  %shr56 = ashr i64 %add52, 56
  %add58 = add nsw i64 %shr56, %and30
  %and60 = and i64 %add52, 72057594037927935
  store i64 %add45, i64* %out, align 8, !tbaa !14
  %arrayidx64 = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %and54, i64* %arrayidx64, align 8, !tbaa !14
  %arrayidx66 = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %and60, i64* %arrayidx66, align 8, !tbaa !14
  %arrayidx68 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %add58, i64* %arrayidx68, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bignum_st* @felem_to_BN(%struct.bignum_st* %out, i64* nocapture readonly %in) #1 {
entry:
  %b_in = alloca [28 x i8], align 16
  %b_out = alloca [28 x i8], align 16
  %0 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %0) #4
  %1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 0
  call void @llvm.lifetime.start(i64 28, i8* %1) #4
  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1
  %arrayidx9.i = getelementptr inbounds i64, i64* %in, i64 2
  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 3
  %2 = load i64, i64* %in, align 8, !tbaa !14
  %conv.i = trunc i64 %2 to i8
  store i8 %conv.i, i8* %0, align 16, !tbaa !18
  %3 = load i64, i64* %arrayidx2.i, align 8, !tbaa !14
  %conv6.i = trunc i64 %3 to i8
  %arrayidx8.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 7
  store i8 %conv6.i, i8* %arrayidx8.i, align 1, !tbaa !18
  %4 = load i64, i64* %arrayidx9.i, align 8, !tbaa !14
  %conv13.i = trunc i64 %4 to i8
  %arrayidx16.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 14
  store i8 %conv13.i, i8* %arrayidx16.i, align 2, !tbaa !18
  %5 = load i64, i64* %arrayidx17.i, align 8, !tbaa !14
  %conv21.i = trunc i64 %5 to i8
  %arrayidx24.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 21
  store i8 %conv21.i, i8* %arrayidx24.i, align 1, !tbaa !18
  %shr.1.i = lshr i64 %2, 8
  %conv.1.i = trunc i64 %shr.1.i to i8
  %arrayidx1.1.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 1
  store i8 %conv.1.i, i8* %arrayidx1.1.i, align 1, !tbaa !18
  %shr5.1.i = lshr i64 %3, 8
  %conv6.1.i = trunc i64 %shr5.1.i to i8
  %arrayidx8.1.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 8
  store i8 %conv6.1.i, i8* %arrayidx8.1.i, align 8, !tbaa !18
  %shr12.1.i = lshr i64 %4, 8
  %conv13.1.i = trunc i64 %shr12.1.i to i8
  %arrayidx16.1.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 15
  store i8 %conv13.1.i, i8* %arrayidx16.1.i, align 1, !tbaa !18
  %shr20.1.i = lshr i64 %5, 8
  %conv21.1.i = trunc i64 %shr20.1.i to i8
  %arrayidx24.1.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 22
  store i8 %conv21.1.i, i8* %arrayidx24.1.i, align 2, !tbaa !18
  %shr.2.i = lshr i64 %2, 16
  %conv.2.i = trunc i64 %shr.2.i to i8
  %arrayidx1.2.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 2
  store i8 %conv.2.i, i8* %arrayidx1.2.i, align 2, !tbaa !18
  %shr5.2.i = lshr i64 %3, 16
  %conv6.2.i = trunc i64 %shr5.2.i to i8
  %arrayidx8.2.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 9
  store i8 %conv6.2.i, i8* %arrayidx8.2.i, align 1, !tbaa !18
  %shr12.2.i = lshr i64 %4, 16
  %conv13.2.i = trunc i64 %shr12.2.i to i8
  %arrayidx16.2.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 16
  store i8 %conv13.2.i, i8* %arrayidx16.2.i, align 16, !tbaa !18
  %shr20.2.i = lshr i64 %5, 16
  %conv21.2.i = trunc i64 %shr20.2.i to i8
  %arrayidx24.2.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 23
  store i8 %conv21.2.i, i8* %arrayidx24.2.i, align 1, !tbaa !18
  %shr.3.i = lshr i64 %2, 24
  %conv.3.i = trunc i64 %shr.3.i to i8
  %arrayidx1.3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 3
  store i8 %conv.3.i, i8* %arrayidx1.3.i, align 1, !tbaa !18
  %shr5.3.i = lshr i64 %3, 24
  %conv6.3.i = trunc i64 %shr5.3.i to i8
  %arrayidx8.3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 10
  store i8 %conv6.3.i, i8* %arrayidx8.3.i, align 2, !tbaa !18
  %shr12.3.i = lshr i64 %4, 24
  %conv13.3.i = trunc i64 %shr12.3.i to i8
  %arrayidx16.3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 17
  store i8 %conv13.3.i, i8* %arrayidx16.3.i, align 1, !tbaa !18
  %shr20.3.i = lshr i64 %5, 24
  %conv21.3.i = trunc i64 %shr20.3.i to i8
  %arrayidx24.3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 24
  store i8 %conv21.3.i, i8* %arrayidx24.3.i, align 8, !tbaa !18
  %shr.4.i = lshr i64 %2, 32
  %conv.4.i = trunc i64 %shr.4.i to i8
  %arrayidx1.4.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 4
  store i8 %conv.4.i, i8* %arrayidx1.4.i, align 4, !tbaa !18
  %shr5.4.i = lshr i64 %3, 32
  %conv6.4.i = trunc i64 %shr5.4.i to i8
  %arrayidx8.4.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 11
  store i8 %conv6.4.i, i8* %arrayidx8.4.i, align 1, !tbaa !18
  %shr12.4.i = lshr i64 %4, 32
  %conv13.4.i = trunc i64 %shr12.4.i to i8
  %arrayidx16.4.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 18
  store i8 %conv13.4.i, i8* %arrayidx16.4.i, align 2, !tbaa !18
  %shr20.4.i = lshr i64 %5, 32
  %conv21.4.i = trunc i64 %shr20.4.i to i8
  %arrayidx24.4.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 25
  store i8 %conv21.4.i, i8* %arrayidx24.4.i, align 1, !tbaa !18
  %shr.5.i = lshr i64 %2, 40
  %conv.5.i = trunc i64 %shr.5.i to i8
  %arrayidx1.5.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 5
  store i8 %conv.5.i, i8* %arrayidx1.5.i, align 1, !tbaa !18
  %shr5.5.i = lshr i64 %3, 40
  %conv6.5.i = trunc i64 %shr5.5.i to i8
  %arrayidx8.5.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 12
  store i8 %conv6.5.i, i8* %arrayidx8.5.i, align 4, !tbaa !18
  %shr12.5.i = lshr i64 %4, 40
  %conv13.5.i = trunc i64 %shr12.5.i to i8
  %arrayidx16.5.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 19
  store i8 %conv13.5.i, i8* %arrayidx16.5.i, align 1, !tbaa !18
  %shr20.5.i = lshr i64 %5, 40
  %conv21.5.i = trunc i64 %shr20.5.i to i8
  %arrayidx24.5.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 26
  store i8 %conv21.5.i, i8* %arrayidx24.5.i, align 2, !tbaa !18
  %shr.6.i = lshr i64 %2, 48
  %conv.6.i = trunc i64 %shr.6.i to i8
  %arrayidx1.6.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 6
  store i8 %conv.6.i, i8* %arrayidx1.6.i, align 2, !tbaa !18
  %shr5.6.i = lshr i64 %3, 48
  %conv6.6.i = trunc i64 %shr5.6.i to i8
  %arrayidx8.6.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 13
  store i8 %conv6.6.i, i8* %arrayidx8.6.i, align 1, !tbaa !18
  %shr12.6.i = lshr i64 %4, 48
  %conv13.6.i = trunc i64 %shr12.6.i to i8
  %arrayidx16.6.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 20
  store i8 %conv13.6.i, i8* %arrayidx16.6.i, align 4, !tbaa !18
  %shr20.6.i = lshr i64 %5, 48
  %conv21.6.i = trunc i64 %shr20.6.i to i8
  %arrayidx24.6.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 27
  store i8 %conv21.6.i, i8* %arrayidx24.6.i, align 1, !tbaa !18
  br label %vector.body

vector.body:                                      ; preds = %entry
  %6 = getelementptr [28 x i8], [28 x i8]* %b_in, i64 0, i64 12
  %7 = bitcast i8* %6 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %7, align 4, !tbaa !18
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %8 = bitcast [28 x i8]* %b_out to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %8, align 16, !tbaa !18
  br label %for.body.i

for.body.i:                                       ; preds = %vector.body
  %arrayidx.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 11
  %9 = load i8, i8* %arrayidx.i, align 1, !tbaa !18
  %arrayidx3.i = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 16
  store i8 %9, i8* %arrayidx3.i, align 16, !tbaa !18
  %arrayidx.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 10
  %10 = load i8, i8* %arrayidx.i.1, align 2, !tbaa !18
  %arrayidx3.i.1 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 17
  store i8 %10, i8* %arrayidx3.i.1, align 1, !tbaa !18
  %arrayidx.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 9
  %11 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !18
  %arrayidx3.i.2 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 18
  store i8 %11, i8* %arrayidx3.i.2, align 2, !tbaa !18
  %arrayidx.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 8
  %12 = load i8, i8* %arrayidx.i.3, align 8, !tbaa !18
  %arrayidx3.i.3 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 19
  store i8 %12, i8* %arrayidx3.i.3, align 1, !tbaa !18
  %arrayidx.i.4 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 7
  %13 = load i8, i8* %arrayidx.i.4, align 1, !tbaa !18
  %arrayidx3.i.4 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 20
  store i8 %13, i8* %arrayidx3.i.4, align 4, !tbaa !18
  %arrayidx.i.5 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 6
  %14 = load i8, i8* %arrayidx.i.5, align 2, !tbaa !18
  %arrayidx3.i.5 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 21
  store i8 %14, i8* %arrayidx3.i.5, align 1, !tbaa !18
  %arrayidx.i.6 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 5
  %15 = load i8, i8* %arrayidx.i.6, align 1, !tbaa !18
  %arrayidx3.i.6 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 22
  store i8 %15, i8* %arrayidx3.i.6, align 2, !tbaa !18
  %arrayidx.i.7 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 4
  %16 = load i8, i8* %arrayidx.i.7, align 4, !tbaa !18
  %arrayidx3.i.7 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 23
  store i8 %16, i8* %arrayidx3.i.7, align 1, !tbaa !18
  %arrayidx.i.8 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 3
  %17 = load i8, i8* %arrayidx.i.8, align 1, !tbaa !18
  %arrayidx3.i.8 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 24
  store i8 %17, i8* %arrayidx3.i.8, align 8, !tbaa !18
  %arrayidx.i.9 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 2
  %18 = load i8, i8* %arrayidx.i.9, align 2, !tbaa !18
  %arrayidx3.i.9 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 25
  store i8 %18, i8* %arrayidx3.i.9, align 1, !tbaa !18
  %arrayidx.i.10 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 1
  %19 = load i8, i8* %arrayidx.i.10, align 1, !tbaa !18
  %arrayidx3.i.10 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 26
  store i8 %19, i8* %arrayidx3.i.10, align 2, !tbaa !18
  %arrayidx.i.11 = getelementptr inbounds [28 x i8], [28 x i8]* %b_in, i64 0, i64 0
  %20 = load i8, i8* %arrayidx.i.11, align 16, !tbaa !18
  %arrayidx3.i.11 = getelementptr inbounds [28 x i8], [28 x i8]* %b_out, i64 0, i64 27
  store i8 %20, i8* %arrayidx3.i.11, align 1, !tbaa !18
  %call = call %struct.bignum_st* @BN_bin2bn(i8* %1, i32 28, %struct.bignum_st* %out) #4
  call void @llvm.lifetime.end(i64 28, i8* %1) #4
  call void @llvm.lifetime.end(i64 28, i8* %0) #4
  ret %struct.bignum_st* %call
}

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st*) #2

declare i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @EC_POINT_cmp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #2

declare i8* @CRYPTO_zalloc(i64, i8*, i32) #2

declare i8* @CRYPTO_malloc(i64, i8*, i32) #2

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st*) #2

declare i32 @BN_num_bits(%struct.bignum_st*) #2

declare i32 @BN_is_negative(%struct.bignum_st*) #2

declare i32 @BN_nnmod(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

declare i32 @BN_bn2bin(%struct.bignum_st*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @felem_assign(i64* nocapture %out, i64* nocapture readonly %in) #1 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !14
  store i64 %0, i64* %out, align 8, !tbaa !14
  %arrayidx2 = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx2, align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %1, i64* %arrayidx3, align 8, !tbaa !14
  %arrayidx4 = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx4, align 8, !tbaa !14
  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %2, i64* %arrayidx5, align 8, !tbaa !14
  %arrayidx6 = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx6, align 8, !tbaa !14
  %arrayidx7 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %3, i64* %arrayidx7, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_add(i64* nocapture %x3, i64* nocapture %y3, i64* nocapture %z3, i64* nocapture readonly %x1, i64* nocapture readonly %y1, i64* %z1, i32 %mixed, i64* nocapture readonly %x2, i64* nocapture readonly %y2, i64* nocapture readonly %z2) #1 {
entry:
  %tobool = icmp ne i32 %mixed, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %z2, align 8, !tbaa !14
  %mul.i = shl i64 %0, 1
  %arrayidx1.i = getelementptr inbounds i64, i64* %z2, i64 1
  %1 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %mul2.i = shl i64 %1, 1
  %arrayidx3.i = getelementptr inbounds i64, i64* %z2, i64 2
  %2 = load i64, i64* %arrayidx3.i, align 8, !tbaa !14
  %mul4.i = shl i64 %2, 1
  %conv.i = zext i64 %0 to i128
  %mul8.i = mul nuw i128 %conv.i, %conv.i
  %conv12.i = zext i64 %mul2.i to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %conv17.i = zext i64 %mul4.i to i128
  %mul18.i = mul nuw i128 %conv17.i, %conv.i
  %conv20.i = zext i64 %1 to i128
  %mul23.i = mul nuw i128 %conv20.i, %conv20.i
  %arrayidx25.i = getelementptr inbounds i64, i64* %z2, i64 3
  %3 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv26.i = zext i64 %3 to i128
  %conv27.i = zext i64 %mul.i to i128
  %mul28.i = mul nuw i128 %conv26.i, %conv27.i
  %mul32.i = mul nuw i128 %conv17.i, %conv20.i
  %add33.i = add i128 %mul32.i, %mul28.i
  %mul38.i = mul nuw i128 %conv26.i, %conv12.i
  %conv40.i = zext i64 %2 to i128
  %mul43.i = mul nuw i128 %conv40.i, %conv40.i
  %add44.i = add i128 %mul38.i, %mul43.i
  %mul49.i = mul nuw i128 %conv26.i, %conv17.i
  %mul55.i = mul nuw i128 %conv26.i, %conv26.i
  %add.i.979 = add i128 %mul8.i, -170141183460469231731687303715884072960
  %add3.i.981 = add i128 %mul13.i, 170141183460469229370468033484042534912
  %shr.i.987 = lshr i128 %mul55.i, 16
  %add14.i.988 = add i128 %add44.i, %shr.i.987
  %and.i.989 = shl i128 %mul55.i, 40
  %shl.i.990 = and i128 %and.i.989, 72056494526300160
  %shr21.i.994 = lshr i128 %mul49.i, 16
  %and25.i.996 = shl i128 %mul49.i, 40
  %shl26.i.997 = and i128 %and25.i.996, 72055395014672384
  %sub31.i.999 = sub i128 %add3.i.981, %mul49.i
  %shr33.i.1000 = lshr i128 %add14.i.988, 16
  %add.i = add i128 %mul23.i, 170141183460469229370504062281061498880
  %add6.i.983 = add i128 %add.i, %mul18.i
  %sub.i.992 = sub i128 %add6.i.983, %mul55.i
  %add28.i.998 = add i128 %sub.i.992, %shl26.i.997
  %add35.i.1001 = add i128 %add28.i.998, %shr33.i.1000
  %and37.i.1002 = shl i128 %add14.i.988, 40
  %shl38.i.1003 = and i128 %and37.i.1002, 72056494526300160
  %add40.i.1004 = add i128 %sub31.i.999, %shl38.i.1003
  %sub43.i.1005 = sub i128 %add.i.979, %add14.i.988
  %shr45.i.1006 = lshr i128 %add35.i.1001, 56
  %add17.i.991 = add i128 %add33.i, %shr21.i.994
  %add23.i.995 = add i128 %add17.i.991, %shl.i.990
  %add47.i.1007 = add i128 %add23.i.995, %shr45.i.1006
  %and49.i.1008 = and i128 %add35.i.1001, 72057594037927935
  %shr51.i.1009 = lshr i128 %add47.i.1007, 56
  %and54.i.1010 = and i128 %add47.i.1007, 72057594037927935
  %shr56.i.1011 = lshr i128 %add47.i.1007, 72
  %add58.i.1012 = add nuw nsw i128 %shr56.i.1011, %and49.i.1008
  %and60.i.1013 = shl nuw nsw i128 %shr51.i.1009, 40
  %shl61.i.1014 = and i128 %and60.i.1013, 72056494526300160
  %add63.i.1015 = add i128 %add40.i.1004, %shl61.i.1014
  %sub66.i.1016 = sub i128 %sub43.i.1005, %shr51.i.1009
  %shr68.i.1017 = lshr i128 %sub66.i.1016, 56
  %add70.i.1018 = add i128 %add63.i.1015, %shr68.i.1017
  %shr75.i.1021 = lshr i128 %add70.i.1018, 56
  %add77.i.1022 = add nuw nsw i128 %add58.i.1012, %shr75.i.1021
  %shr83.i.1026 = lshr i128 %add77.i.1022, 56
  %add85.i.1027 = add nuw nsw i128 %shr83.i.1026, %and54.i.1010
  %conv.i.1797 = and i128 %sub66.i.1016, 72057594037927935
  %mul.i.1799 = mul nuw nsw i128 %conv.i.1797, %conv.i
  %mul8.i.1802 = mul nuw nsw i128 %conv.i.1797, %conv20.i
  %conv10.i.1804 = and i128 %add70.i.1018, 72057594037927935
  %mul13.i.1805 = mul nuw nsw i128 %conv10.i.1804, %conv.i
  %mul19.i.1810 = mul nuw nsw i128 %conv.i.1797, %conv40.i
  %mul24.i.1811 = mul nuw nsw i128 %conv10.i.1804, %conv20.i
  %conv27.i.1814 = and i128 %add77.i.1022, 72057594037927935
  %mul30.i.1815 = mul nuw nsw i128 %conv27.i.1814, %conv.i
  %mul37.i.1820 = mul nuw nsw i128 %conv.i.1797, %conv26.i
  %mul42.i.1821 = mul nuw nsw i128 %conv10.i.1804, %conv40.i
  %add43.i.1822 = add nuw nsw i128 %mul42.i.1821, %mul37.i.1820
  %mul48.i.1823 = mul nuw nsw i128 %conv27.i.1814, %conv20.i
  %add49.i.1824 = add nuw nsw i128 %add43.i.1822, %mul48.i.1823
  %mul54.i.1827 = mul nuw nsw i128 %add85.i.1027, %conv.i
  %add55.i.1828 = add nuw nsw i128 %add49.i.1824, %mul54.i.1827
  %mul61.i.1830 = mul nuw nsw i128 %conv10.i.1804, %conv26.i
  %mul66.i.1831 = mul nuw nsw i128 %conv27.i.1814, %conv40.i
  %add67.i.1832 = add nuw nsw i128 %mul66.i.1831, %mul61.i.1830
  %mul72.i.1833 = mul nuw nsw i128 %add85.i.1027, %conv20.i
  %add73.i.1834 = add nuw nsw i128 %add67.i.1832, %mul72.i.1833
  %mul79.i.1836 = mul nuw nsw i128 %conv27.i.1814, %conv26.i
  %mul84.i.1837 = mul nuw nsw i128 %add85.i.1027, %conv40.i
  %add85.i.1838 = add nuw nsw i128 %mul84.i.1837, %mul79.i.1836
  %mul91.i.1840 = mul nuw nsw i128 %add85.i.1027, %conv26.i
  %add.i.1743 = add nsw i128 %mul.i.1799, -170141183460469231731687303715884072960
  %shr.i.1751 = lshr i128 %mul91.i.1840, 16
  %add14.i.1752 = add nuw i128 %add73.i.1834, %shr.i.1751
  %and.i.1753 = shl i128 %mul91.i.1840, 40
  %shl.i.1754 = and i128 %and.i.1753, 72056494526300160
  %add17.i.1755 = add nuw i128 %add55.i.1828, %shl.i.1754
  %shr21.i.1758 = lshr i128 %add85.i.1838, 16
  %add23.i.1759 = add i128 %add17.i.1755, %shr21.i.1758
  %and25.i.1760 = shl i128 %add85.i.1838, 40
  %shl26.i.1761 = and i128 %and25.i.1760, 72056494526300160
  %shr33.i.1764 = lshr i128 %add14.i.1752, 16
  %add25.i.1812 = add nuw i128 %mul19.i.1810, 170141183460469229370504062281061498880
  %add31.i.1816 = add i128 %add25.i.1812, %mul24.i.1811
  %add6.i.1747 = add i128 %add31.i.1816, %mul30.i.1815
  %sub.i.1756 = sub i128 %add6.i.1747, %mul91.i.1840
  %add28.i.1762 = add i128 %sub.i.1756, %shl26.i.1761
  %add35.i.1765 = add i128 %add28.i.1762, %shr33.i.1764
  %and37.i.1766 = shl i128 %add14.i.1752, 40
  %shl38.i.1767 = and i128 %and37.i.1766, 72056494526300160
  %sub43.i.1769 = sub i128 %add.i.1743, %add14.i.1752
  %shr45.i.1770 = lshr i128 %add35.i.1765, 56
  %add47.i.1771 = add i128 %add23.i.1759, %shr45.i.1770
  %and49.i.1772 = and i128 %add35.i.1765, 72057594037927935
  %shr51.i.1773 = lshr i128 %add47.i.1771, 56
  %and54.i.1774 = and i128 %add47.i.1771, 72057594037927935
  %shr56.i.1775 = lshr i128 %add47.i.1771, 72
  %add58.i.1776 = add nuw nsw i128 %shr56.i.1775, %and49.i.1772
  %and60.i.1777 = shl nuw nsw i128 %shr51.i.1773, 40
  %shl61.i.1778 = and i128 %and60.i.1777, 72056494526300160
  %sub66.i.1780 = sub i128 %sub43.i.1769, %shr51.i.1773
  %shr68.i.1781 = lshr i128 %sub66.i.1780, 56
  %add.i.1806 = add nuw i128 %mul8.i.1802, 170141183460469229370468033484042534912
  %add3.i.1745 = add i128 %add.i.1806, %mul13.i.1805
  %sub31.i.1763 = sub i128 %add3.i.1745, %add85.i.1838
  %add40.i.1768 = add i128 %sub31.i.1763, %shl38.i.1767
  %add63.i.1779 = add i128 %add40.i.1768, %shl61.i.1778
  %add70.i.1782 = add i128 %add63.i.1779, %shr68.i.1781
  %shr75.i.1785 = lshr i128 %add70.i.1782, 56
  %add77.i.1786 = add nuw nsw i128 %add58.i.1776, %shr75.i.1785
  %shr83.i.1790 = lshr i128 %add77.i.1786, 56
  %add85.i.1791 = add nuw nsw i128 %shr83.i.1790, %and54.i.1774
  %conv.i.1698 = and i128 %sub66.i.1780, 72057594037927935
  %4 = load i64, i64* %y1, align 8, !tbaa !14
  %conv2.i.1699 = zext i64 %4 to i128
  %mul.i.1700 = mul nuw nsw i128 %conv.i.1698, %conv2.i.1699
  %arrayidx6.i.1701 = getelementptr inbounds i64, i64* %y1, i64 1
  %5 = load i64, i64* %arrayidx6.i.1701, align 8, !tbaa !14
  %conv7.i.1702 = zext i64 %5 to i128
  %mul8.i.1703 = mul nuw nsw i128 %conv.i.1698, %conv7.i.1702
  %conv10.i.1705 = and i128 %add70.i.1782, 72057594037927935
  %mul13.i.1706 = mul nuw nsw i128 %conv10.i.1705, %conv2.i.1699
  %arrayidx17.i.1709 = getelementptr inbounds i64, i64* %y1, i64 2
  %6 = load i64, i64* %arrayidx17.i.1709, align 8, !tbaa !14
  %conv18.i.1710 = zext i64 %6 to i128
  %mul19.i.1711 = mul nuw nsw i128 %conv.i.1698, %conv18.i.1710
  %mul24.i.1712 = mul nuw nsw i128 %conv10.i.1705, %conv7.i.1702
  %conv27.i.1715 = and i128 %add77.i.1786, 72057594037927935
  %mul30.i.1716 = mul nuw nsw i128 %conv27.i.1715, %conv2.i.1699
  %arrayidx35.i.1719 = getelementptr inbounds i64, i64* %y1, i64 3
  %7 = load i64, i64* %arrayidx35.i.1719, align 8, !tbaa !14
  %conv36.i.1720 = zext i64 %7 to i128
  %mul37.i.1721 = mul nuw nsw i128 %conv.i.1698, %conv36.i.1720
  %mul42.i.1722 = mul nuw nsw i128 %conv10.i.1705, %conv18.i.1710
  %add43.i.1723 = add nuw nsw i128 %mul42.i.1722, %mul37.i.1721
  %mul48.i.1724 = mul nuw nsw i128 %conv27.i.1715, %conv7.i.1702
  %add49.i.1725 = add nuw nsw i128 %add43.i.1723, %mul48.i.1724
  %mul54.i.1728 = mul nuw nsw i128 %add85.i.1791, %conv2.i.1699
  %add55.i.1729 = add nuw nsw i128 %add49.i.1725, %mul54.i.1728
  %mul61.i.1731 = mul nuw nsw i128 %conv10.i.1705, %conv36.i.1720
  %mul66.i.1732 = mul nuw nsw i128 %conv27.i.1715, %conv18.i.1710
  %add67.i.1733 = add nuw nsw i128 %mul66.i.1732, %mul61.i.1731
  %mul72.i.1734 = mul nuw nsw i128 %add85.i.1791, %conv7.i.1702
  %add73.i.1735 = add nuw nsw i128 %add67.i.1733, %mul72.i.1734
  %mul79.i.1737 = mul nuw nsw i128 %conv27.i.1715, %conv36.i.1720
  %mul84.i.1738 = mul nuw nsw i128 %add85.i.1791, %conv18.i.1710
  %add85.i.1739 = add nuw nsw i128 %mul84.i.1738, %mul79.i.1737
  %mul91.i.1741 = mul nuw nsw i128 %add85.i.1791, %conv36.i.1720
  %add.i.1644 = add nsw i128 %mul.i.1700, -170141183460469231731687303715884072960
  %shr.i.1652 = lshr i128 %mul91.i.1741, 16
  %add14.i.1653 = add nuw i128 %add73.i.1735, %shr.i.1652
  %and.i.1654 = shl i128 %mul91.i.1741, 40
  %shl.i.1655 = and i128 %and.i.1654, 72056494526300160
  %add17.i.1656 = add nuw i128 %add55.i.1729, %shl.i.1655
  %shr21.i.1659 = lshr i128 %add85.i.1739, 16
  %add23.i.1660 = add i128 %add17.i.1656, %shr21.i.1659
  %and25.i.1661 = shl i128 %add85.i.1739, 40
  %shl26.i.1662 = and i128 %and25.i.1661, 72056494526300160
  %shr33.i.1665 = lshr i128 %add14.i.1653, 16
  %add25.i.1713 = add nuw i128 %mul19.i.1711, 170141183460469229370504062281061498880
  %add31.i.1717 = add i128 %add25.i.1713, %mul24.i.1712
  %add6.i.1648 = add i128 %add31.i.1717, %mul30.i.1716
  %sub.i.1657 = sub i128 %add6.i.1648, %mul91.i.1741
  %add28.i.1663 = add i128 %sub.i.1657, %shl26.i.1662
  %add35.i.1666 = add i128 %add28.i.1663, %shr33.i.1665
  %and37.i.1667 = shl i128 %add14.i.1653, 40
  %shl38.i.1668 = and i128 %and37.i.1667, 72056494526300160
  %sub43.i.1670 = sub i128 %add.i.1644, %add14.i.1653
  %shr45.i.1671 = lshr i128 %add35.i.1666, 56
  %add47.i.1672 = add i128 %add23.i.1660, %shr45.i.1671
  %and49.i.1673 = and i128 %add35.i.1666, 72057594037927935
  %shr51.i.1674 = lshr i128 %add47.i.1672, 56
  %and54.i.1675 = and i128 %add47.i.1672, 72057594037927935
  %shr56.i.1676 = lshr i128 %add47.i.1672, 72
  %add58.i.1677 = add nuw nsw i128 %shr56.i.1676, %and49.i.1673
  %and60.i.1678 = shl nuw nsw i128 %shr51.i.1674, 40
  %shl61.i.1679 = and i128 %and60.i.1678, 72056494526300160
  %sub66.i.1681 = sub i128 %sub43.i.1670, %shr51.i.1674
  %shr68.i.1682 = lshr i128 %sub66.i.1681, 56
  %add.i.1707 = add nuw i128 %mul8.i.1703, 170141183460469229370468033484042534912
  %add3.i.1646 = add i128 %add.i.1707, %mul13.i.1706
  %sub31.i.1664 = sub i128 %add3.i.1646, %add85.i.1739
  %add40.i.1669 = add i128 %sub31.i.1664, %shl38.i.1668
  %add63.i.1680 = add i128 %add40.i.1669, %shl61.i.1679
  %add70.i.1683 = add i128 %add63.i.1680, %shr68.i.1682
  %sub66.tr.i.1684 = trunc i128 %sub66.i.1681 to i64
  %conv.i.1685 = and i64 %sub66.tr.i.1684, 72057594037927935
  %shr75.i.1686 = lshr i128 %add70.i.1683, 56
  %add77.i.1687 = add nuw nsw i128 %add58.i.1677, %shr75.i.1686
  %add70.tr.i.1688 = trunc i128 %add70.i.1683 to i64
  %conv80.i.1689 = and i64 %add70.tr.i.1688, 72057594037927935
  %shr83.i.1691 = lshr i128 %add77.i.1687, 56
  %add85.i.1692 = add nuw nsw i128 %shr83.i.1691, %and54.i.1675
  %add77.tr.i.1693 = trunc i128 %add77.i.1687 to i64
  %conv88.i.1694 = and i64 %add77.tr.i.1693, 72057594037927935
  %conv91.i.1696 = trunc i128 %add85.i.1692 to i64
  %8 = load i64, i64* %x1, align 8, !tbaa !14
  %conv2.i.1600 = zext i64 %8 to i128
  %mul.i.1601 = mul nuw nsw i128 %conv.i.1797, %conv2.i.1600
  %arrayidx6.i.1602 = getelementptr inbounds i64, i64* %x1, i64 1
  %9 = load i64, i64* %arrayidx6.i.1602, align 8, !tbaa !14
  %conv7.i.1603 = zext i64 %9 to i128
  %mul8.i.1604 = mul nuw nsw i128 %conv.i.1797, %conv7.i.1603
  %mul13.i.1607 = mul nuw nsw i128 %conv10.i.1804, %conv2.i.1600
  %arrayidx17.i.1610 = getelementptr inbounds i64, i64* %x1, i64 2
  %10 = load i64, i64* %arrayidx17.i.1610, align 8, !tbaa !14
  %conv18.i.1611 = zext i64 %10 to i128
  %mul19.i.1612 = mul nuw nsw i128 %conv.i.1797, %conv18.i.1611
  %mul24.i.1613 = mul nuw nsw i128 %conv10.i.1804, %conv7.i.1603
  %mul30.i.1617 = mul nuw nsw i128 %conv27.i.1814, %conv2.i.1600
  %arrayidx35.i.1620 = getelementptr inbounds i64, i64* %x1, i64 3
  %11 = load i64, i64* %arrayidx35.i.1620, align 8, !tbaa !14
  %conv36.i.1621 = zext i64 %11 to i128
  %mul37.i.1622 = mul nuw nsw i128 %conv.i.1797, %conv36.i.1621
  %mul42.i.1623 = mul nuw nsw i128 %conv10.i.1804, %conv18.i.1611
  %add43.i.1624 = add nuw nsw i128 %mul42.i.1623, %mul37.i.1622
  %mul48.i.1625 = mul nuw nsw i128 %conv27.i.1814, %conv7.i.1603
  %add49.i.1626 = add nuw nsw i128 %add43.i.1624, %mul48.i.1625
  %mul54.i.1629 = mul nuw nsw i128 %add85.i.1027, %conv2.i.1600
  %add55.i.1630 = add nuw nsw i128 %add49.i.1626, %mul54.i.1629
  %mul61.i.1632 = mul nuw nsw i128 %conv10.i.1804, %conv36.i.1621
  %mul66.i.1633 = mul nuw nsw i128 %conv27.i.1814, %conv18.i.1611
  %add67.i.1634 = add nuw nsw i128 %mul66.i.1633, %mul61.i.1632
  %mul72.i.1635 = mul nuw nsw i128 %add85.i.1027, %conv7.i.1603
  %add73.i.1636 = add nuw nsw i128 %add67.i.1634, %mul72.i.1635
  %mul79.i.1638 = mul nuw nsw i128 %conv27.i.1814, %conv36.i.1621
  %mul84.i.1639 = mul nuw nsw i128 %add85.i.1027, %conv18.i.1611
  %add85.i.1640 = add nuw nsw i128 %mul84.i.1639, %mul79.i.1638
  %mul91.i.1642 = mul nuw nsw i128 %add85.i.1027, %conv36.i.1621
  %add.i.1545 = add nsw i128 %mul.i.1601, -170141183460469231731687303715884072960
  %shr.i.1553 = lshr i128 %mul91.i.1642, 16
  %add14.i.1554 = add nuw i128 %add73.i.1636, %shr.i.1553
  %and.i.1555 = shl i128 %mul91.i.1642, 40
  %shl.i.1556 = and i128 %and.i.1555, 72056494526300160
  %add17.i.1557 = add nuw i128 %add55.i.1630, %shl.i.1556
  %shr21.i.1560 = lshr i128 %add85.i.1640, 16
  %add23.i.1561 = add i128 %add17.i.1557, %shr21.i.1560
  %and25.i.1562 = shl i128 %add85.i.1640, 40
  %shl26.i.1563 = and i128 %and25.i.1562, 72056494526300160
  %shr33.i.1566 = lshr i128 %add14.i.1554, 16
  %add25.i.1614 = add nuw i128 %mul19.i.1612, 170141183460469229370504062281061498880
  %add31.i.1618 = add i128 %add25.i.1614, %mul24.i.1613
  %add6.i.1549 = add i128 %add31.i.1618, %mul30.i.1617
  %sub.i.1558 = sub i128 %add6.i.1549, %mul91.i.1642
  %add28.i.1564 = add i128 %sub.i.1558, %shl26.i.1563
  %add35.i.1567 = add i128 %add28.i.1564, %shr33.i.1566
  %and37.i.1568 = shl i128 %add14.i.1554, 40
  %shl38.i.1569 = and i128 %and37.i.1568, 72056494526300160
  %sub43.i.1571 = sub i128 %add.i.1545, %add14.i.1554
  %shr45.i.1572 = lshr i128 %add35.i.1567, 56
  %add47.i.1573 = add i128 %add23.i.1561, %shr45.i.1572
  %and49.i.1574 = and i128 %add35.i.1567, 72057594037927935
  %shr51.i.1575 = lshr i128 %add47.i.1573, 56
  %and54.i.1576 = and i128 %add47.i.1573, 72057594037927935
  %shr56.i.1577 = lshr i128 %add47.i.1573, 72
  %add58.i.1578 = add nuw nsw i128 %shr56.i.1577, %and49.i.1574
  %and60.i.1579 = shl nuw nsw i128 %shr51.i.1575, 40
  %shl61.i.1580 = and i128 %and60.i.1579, 72056494526300160
  %sub66.i.1582 = sub i128 %sub43.i.1571, %shr51.i.1575
  %shr68.i.1583 = lshr i128 %sub66.i.1582, 56
  %add.i.1608 = add nuw i128 %mul8.i.1604, 170141183460469229370468033484042534912
  %add3.i.1547 = add i128 %add.i.1608, %mul13.i.1607
  %sub31.i.1565 = sub i128 %add3.i.1547, %add85.i.1640
  %add40.i.1570 = add i128 %sub31.i.1565, %shl38.i.1569
  %add63.i.1581 = add i128 %add40.i.1570, %shl61.i.1580
  %add70.i.1584 = add i128 %add63.i.1581, %shr68.i.1583
  %sub66.tr.i.1585 = trunc i128 %sub66.i.1582 to i64
  %conv.i.1586 = and i64 %sub66.tr.i.1585, 72057594037927935
  %shr75.i.1587 = lshr i128 %add70.i.1584, 56
  %add77.i.1588 = add nuw nsw i128 %add58.i.1578, %shr75.i.1587
  %add70.tr.i.1589 = trunc i128 %add70.i.1584 to i64
  %conv80.i.1590 = and i64 %add70.tr.i.1589, 72057594037927935
  %shr83.i.1592 = lshr i128 %add77.i.1588, 56
  %add85.i.1593 = add nuw nsw i128 %shr83.i.1592, %and54.i.1576
  %add77.tr.i.1594 = trunc i128 %add77.i.1588 to i64
  %conv88.i.1595 = and i64 %add77.tr.i.1594, 72057594037927935
  %conv91.i.1597 = trunc i128 %add85.i.1593 to i64
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i64, i64* %y1, align 8, !tbaa !14
  %arrayidx2.i.1539 = getelementptr inbounds i64, i64* %y1, i64 1
  %13 = load i64, i64* %arrayidx2.i.1539, align 8, !tbaa !14
  %arrayidx4.i.1541 = getelementptr inbounds i64, i64* %y1, i64 2
  %14 = load i64, i64* %arrayidx4.i.1541, align 8, !tbaa !14
  %arrayidx6.i.1543 = getelementptr inbounds i64, i64* %y1, i64 3
  %15 = load i64, i64* %arrayidx6.i.1543, align 8, !tbaa !14
  %16 = load i64, i64* %x1, align 8, !tbaa !14
  %arrayidx2.i.1533 = getelementptr inbounds i64, i64* %x1, i64 1
  %17 = load i64, i64* %arrayidx2.i.1533, align 8, !tbaa !14
  %arrayidx4.i.1535 = getelementptr inbounds i64, i64* %x1, i64 2
  %18 = load i64, i64* %arrayidx4.i.1535, align 8, !tbaa !14
  %arrayidx6.i.1537 = getelementptr inbounds i64, i64* %x1, i64 3
  %19 = load i64, i64* %arrayidx6.i.1537, align 8, !tbaa !14
  %.pre = getelementptr inbounds i64, i64* %z2, i64 1
  %.pre2142 = getelementptr inbounds i64, i64* %z2, i64 2
  %.pre2143 = getelementptr inbounds i64, i64* %z2, i64 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx4.i.1035.pre-phi = phi i64* [ %.pre2143, %if.else ], [ %arrayidx25.i, %if.then ]
  %arrayidx2.i.1034.pre-phi = phi i64* [ %.pre2142, %if.else ], [ %arrayidx3.i, %if.then ]
  %arrayidx1.i.1033.pre-phi = phi i64* [ %.pre, %if.else ], [ %arrayidx1.i, %if.then ]
  %ftmp2.sroa.41.24.load2140 = phi i64 [ %19, %if.else ], [ %conv91.i.1597, %if.then ]
  %ftmp2.sroa.28.16.2139 = phi i64 [ %18, %if.else ], [ %conv88.i.1595, %if.then ]
  %ftmp2.sroa.15.8.2138 = phi i64 [ %17, %if.else ], [ %conv80.i.1590, %if.then ]
  %add.i.2982137 = phi i64 [ %16, %if.else ], [ %conv.i.1586, %if.then ]
  %ftmp4.sroa.20.24.load2136 = phi i64 [ %15, %if.else ], [ %conv91.i.1696, %if.then ]
  %ftmp4.sroa.14.16.2135 = phi i64 [ %14, %if.else ], [ %conv88.i.1694, %if.then ]
  %ftmp4.sroa.8.8.2134 = phi i64 [ %13, %if.else ], [ %conv80.i.1689, %if.then ]
  %conv.i.17842133 = phi i64 [ %12, %if.else ], [ %conv.i.1685, %if.then ]
  %20 = load i64, i64* %z1, align 8, !tbaa !14
  %mul.i.1501 = shl i64 %20, 1
  %arrayidx1.i.1502 = getelementptr inbounds i64, i64* %z1, i64 1
  %21 = load i64, i64* %arrayidx1.i.1502, align 8, !tbaa !14
  %mul2.i.1503 = shl i64 %21, 1
  %arrayidx3.i.1504 = getelementptr inbounds i64, i64* %z1, i64 2
  %22 = load i64, i64* %arrayidx3.i.1504, align 8, !tbaa !14
  %mul4.i.1505 = shl i64 %22, 1
  %conv.i.1506 = zext i64 %20 to i128
  %mul8.i.1507 = mul nuw i128 %conv.i.1506, %conv.i.1506
  %conv12.i.1508 = zext i64 %mul2.i.1503 to i128
  %mul13.i.1509 = mul nuw i128 %conv12.i.1508, %conv.i.1506
  %conv17.i.1511 = zext i64 %mul4.i.1505 to i128
  %mul18.i.1512 = mul nuw i128 %conv17.i.1511, %conv.i.1506
  %conv20.i.1513 = zext i64 %21 to i128
  %mul23.i.1514 = mul nuw i128 %conv20.i.1513, %conv20.i.1513
  %arrayidx25.i.1517 = getelementptr inbounds i64, i64* %z1, i64 3
  %23 = load i64, i64* %arrayidx25.i.1517, align 8, !tbaa !14
  %conv26.i.1518 = zext i64 %23 to i128
  %conv27.i.1519 = zext i64 %mul.i.1501 to i128
  %mul28.i.1520 = mul nuw i128 %conv26.i.1518, %conv27.i.1519
  %mul32.i.1521 = mul nuw i128 %conv17.i.1511, %conv20.i.1513
  %add33.i.1522 = add i128 %mul32.i.1521, %mul28.i.1520
  %mul38.i.1524 = mul nuw i128 %conv26.i.1518, %conv12.i.1508
  %conv40.i.1525 = zext i64 %22 to i128
  %mul43.i.1526 = mul nuw i128 %conv40.i.1525, %conv40.i.1525
  %add44.i.1527 = add i128 %mul38.i.1524, %mul43.i.1526
  %mul49.i.1529 = mul nuw i128 %conv26.i.1518, %conv17.i.1511
  %mul55.i.1531 = mul nuw i128 %conv26.i.1518, %conv26.i.1518
  %add.i.1447 = add i128 %mul8.i.1507, -170141183460469231731687303715884072960
  %add3.i.1449 = add i128 %mul13.i.1509, 170141183460469229370468033484042534912
  %shr.i.1455 = lshr i128 %mul55.i.1531, 16
  %add14.i.1456 = add i128 %add44.i.1527, %shr.i.1455
  %and.i.1457 = shl i128 %mul55.i.1531, 40
  %shl.i.1458 = and i128 %and.i.1457, 72056494526300160
  %shr21.i.1462 = lshr i128 %mul49.i.1529, 16
  %and25.i.1464 = shl i128 %mul49.i.1529, 40
  %shl26.i.1465 = and i128 %and25.i.1464, 72055395014672384
  %sub31.i.1467 = sub i128 %add3.i.1449, %mul49.i.1529
  %shr33.i.1468 = lshr i128 %add14.i.1456, 16
  %add.i.1515 = add i128 %mul23.i.1514, 170141183460469229370504062281061498880
  %add6.i.1451 = add i128 %add.i.1515, %mul18.i.1512
  %sub.i.1460 = sub i128 %add6.i.1451, %mul55.i.1531
  %add28.i.1466 = add i128 %sub.i.1460, %shl26.i.1465
  %add35.i.1469 = add i128 %add28.i.1466, %shr33.i.1468
  %and37.i.1470 = shl i128 %add14.i.1456, 40
  %shl38.i.1471 = and i128 %and37.i.1470, 72056494526300160
  %add40.i.1472 = add i128 %sub31.i.1467, %shl38.i.1471
  %sub43.i.1473 = sub i128 %add.i.1447, %add14.i.1456
  %shr45.i.1474 = lshr i128 %add35.i.1469, 56
  %add17.i.1459 = add i128 %add33.i.1522, %shr21.i.1462
  %add23.i.1463 = add i128 %add17.i.1459, %shl.i.1458
  %add47.i.1475 = add i128 %add23.i.1463, %shr45.i.1474
  %and49.i.1476 = and i128 %add35.i.1469, 72057594037927935
  %shr51.i.1477 = lshr i128 %add47.i.1475, 56
  %and54.i.1478 = and i128 %add47.i.1475, 72057594037927935
  %shr56.i.1479 = lshr i128 %add47.i.1475, 72
  %add58.i.1480 = add nuw nsw i128 %shr56.i.1479, %and49.i.1476
  %and60.i.1481 = shl nuw nsw i128 %shr51.i.1477, 40
  %shl61.i.1482 = and i128 %and60.i.1481, 72056494526300160
  %add63.i.1483 = add i128 %add40.i.1472, %shl61.i.1482
  %sub66.i.1484 = sub i128 %sub43.i.1473, %shr51.i.1477
  %shr68.i.1485 = lshr i128 %sub66.i.1484, 56
  %add70.i.1486 = add i128 %add63.i.1483, %shr68.i.1485
  %shr75.i.1489 = lshr i128 %add70.i.1486, 56
  %add77.i.1490 = add nuw nsw i128 %add58.i.1480, %shr75.i.1489
  %shr83.i.1494 = lshr i128 %add77.i.1490, 56
  %add85.i.1495 = add nuw nsw i128 %shr83.i.1494, %and54.i.1478
  %conv.i.1402 = and i128 %sub66.i.1484, 72057594037927935
  %mul.i.1404 = mul nuw nsw i128 %conv.i.1402, %conv.i.1506
  %mul8.i.1407 = mul nuw nsw i128 %conv.i.1402, %conv20.i.1513
  %conv10.i.1409 = and i128 %add70.i.1486, 72057594037927935
  %mul13.i.1410 = mul nuw nsw i128 %conv10.i.1409, %conv.i.1506
  %mul19.i.1415 = mul nuw nsw i128 %conv.i.1402, %conv40.i.1525
  %mul24.i.1416 = mul nuw nsw i128 %conv10.i.1409, %conv20.i.1513
  %conv27.i.1419 = and i128 %add77.i.1490, 72057594037927935
  %mul30.i.1420 = mul nuw nsw i128 %conv27.i.1419, %conv.i.1506
  %mul37.i.1425 = mul nuw nsw i128 %conv.i.1402, %conv26.i.1518
  %mul42.i.1426 = mul nuw nsw i128 %conv10.i.1409, %conv40.i.1525
  %add43.i.1427 = add nuw nsw i128 %mul42.i.1426, %mul37.i.1425
  %mul48.i.1428 = mul nuw nsw i128 %conv27.i.1419, %conv20.i.1513
  %add49.i.1429 = add nuw nsw i128 %add43.i.1427, %mul48.i.1428
  %mul54.i.1432 = mul nuw nsw i128 %add85.i.1495, %conv.i.1506
  %add55.i.1433 = add nuw nsw i128 %add49.i.1429, %mul54.i.1432
  %mul61.i.1435 = mul nuw nsw i128 %conv10.i.1409, %conv26.i.1518
  %mul66.i.1436 = mul nuw nsw i128 %conv27.i.1419, %conv40.i.1525
  %add67.i.1437 = add nuw nsw i128 %mul66.i.1436, %mul61.i.1435
  %mul72.i.1438 = mul nuw nsw i128 %add85.i.1495, %conv20.i.1513
  %add73.i.1439 = add nuw nsw i128 %add67.i.1437, %mul72.i.1438
  %mul79.i.1441 = mul nuw nsw i128 %conv27.i.1419, %conv26.i.1518
  %mul84.i.1442 = mul nuw nsw i128 %add85.i.1495, %conv40.i.1525
  %add85.i.1443 = add nuw nsw i128 %mul84.i.1442, %mul79.i.1441
  %mul91.i.1445 = mul nuw nsw i128 %add85.i.1495, %conv26.i.1518
  %add.i.1348 = add nsw i128 %mul.i.1404, -170141183460469231731687303715884072960
  %shr.i.1356 = lshr i128 %mul91.i.1445, 16
  %add14.i.1357 = add nuw i128 %add73.i.1439, %shr.i.1356
  %and.i.1358 = shl i128 %mul91.i.1445, 40
  %shl.i.1359 = and i128 %and.i.1358, 72056494526300160
  %add17.i.1360 = add nuw i128 %add55.i.1433, %shl.i.1359
  %shr21.i.1363 = lshr i128 %add85.i.1443, 16
  %add23.i.1364 = add i128 %add17.i.1360, %shr21.i.1363
  %and25.i.1365 = shl i128 %add85.i.1443, 40
  %shl26.i.1366 = and i128 %and25.i.1365, 72056494526300160
  %shr33.i.1369 = lshr i128 %add14.i.1357, 16
  %add25.i.1417 = add nuw i128 %mul19.i.1415, 170141183460469229370504062281061498880
  %add31.i.1421 = add i128 %add25.i.1417, %mul24.i.1416
  %add6.i.1352 = add i128 %add31.i.1421, %mul30.i.1420
  %sub.i.1361 = sub i128 %add6.i.1352, %mul91.i.1445
  %add28.i.1367 = add i128 %sub.i.1361, %shl26.i.1366
  %add35.i.1370 = add i128 %add28.i.1367, %shr33.i.1369
  %and37.i.1371 = shl i128 %add14.i.1357, 40
  %shl38.i.1372 = and i128 %and37.i.1371, 72056494526300160
  %sub43.i.1374 = sub i128 %add.i.1348, %add14.i.1357
  %shr45.i.1375 = lshr i128 %add35.i.1370, 56
  %add47.i.1376 = add i128 %add23.i.1364, %shr45.i.1375
  %and49.i.1377 = and i128 %add35.i.1370, 72057594037927935
  %shr51.i.1378 = lshr i128 %add47.i.1376, 56
  %and54.i.1379 = and i128 %add47.i.1376, 72057594037927935
  %shr56.i.1380 = lshr i128 %add47.i.1376, 72
  %add58.i.1381 = add nuw nsw i128 %shr56.i.1380, %and49.i.1377
  %and60.i.1382 = shl nuw nsw i128 %shr51.i.1378, 40
  %shl61.i.1383 = and i128 %and60.i.1382, 72056494526300160
  %sub66.i.1385 = sub i128 %sub43.i.1374, %shr51.i.1378
  %shr68.i.1386 = lshr i128 %sub66.i.1385, 56
  %add.i.1411 = add nuw i128 %mul8.i.1407, 170141183460469229370468033484042534912
  %add3.i.1350 = add i128 %add.i.1411, %mul13.i.1410
  %sub31.i.1368 = sub i128 %add3.i.1350, %add85.i.1443
  %add40.i.1373 = add i128 %sub31.i.1368, %shl38.i.1372
  %add63.i.1384 = add i128 %add40.i.1373, %shl61.i.1383
  %add70.i.1387 = add i128 %add63.i.1384, %shr68.i.1386
  %shr75.i.1390 = lshr i128 %add70.i.1387, 56
  %add77.i.1391 = add nuw nsw i128 %add58.i.1381, %shr75.i.1390
  %shr83.i.1395 = lshr i128 %add77.i.1391, 56
  %add85.i.1396 = add nuw nsw i128 %shr83.i.1395, %and54.i.1379
  %conv.i.1303 = and i128 %sub66.i.1385, 72057594037927935
  %24 = load i64, i64* %y2, align 8, !tbaa !14
  %conv2.i.1304 = zext i64 %24 to i128
  %mul.i.1305 = mul nuw nsw i128 %conv.i.1303, %conv2.i.1304
  %arrayidx6.i.1306 = getelementptr inbounds i64, i64* %y2, i64 1
  %25 = load i64, i64* %arrayidx6.i.1306, align 8, !tbaa !14
  %conv7.i.1307 = zext i64 %25 to i128
  %mul8.i.1308 = mul nuw nsw i128 %conv.i.1303, %conv7.i.1307
  %conv10.i.1310 = and i128 %add70.i.1387, 72057594037927935
  %mul13.i.1311 = mul nuw nsw i128 %conv10.i.1310, %conv2.i.1304
  %arrayidx17.i.1314 = getelementptr inbounds i64, i64* %y2, i64 2
  %26 = load i64, i64* %arrayidx17.i.1314, align 8, !tbaa !14
  %conv18.i.1315 = zext i64 %26 to i128
  %mul19.i.1316 = mul nuw nsw i128 %conv.i.1303, %conv18.i.1315
  %mul24.i.1317 = mul nuw nsw i128 %conv10.i.1310, %conv7.i.1307
  %conv27.i.1320 = and i128 %add77.i.1391, 72057594037927935
  %mul30.i.1321 = mul nuw nsw i128 %conv27.i.1320, %conv2.i.1304
  %arrayidx35.i.1324 = getelementptr inbounds i64, i64* %y2, i64 3
  %27 = load i64, i64* %arrayidx35.i.1324, align 8, !tbaa !14
  %conv36.i.1325 = zext i64 %27 to i128
  %mul37.i.1326 = mul nuw nsw i128 %conv.i.1303, %conv36.i.1325
  %mul42.i.1327 = mul nuw nsw i128 %conv10.i.1310, %conv18.i.1315
  %mul48.i.1329 = mul nuw nsw i128 %conv27.i.1320, %conv7.i.1307
  %mul54.i.1333 = mul nuw nsw i128 %add85.i.1396, %conv2.i.1304
  %mul61.i.1336 = mul nuw nsw i128 %conv10.i.1310, %conv36.i.1325
  %mul66.i.1337 = mul nuw nsw i128 %conv27.i.1320, %conv18.i.1315
  %add67.i.1338 = add nuw nsw i128 %mul66.i.1337, %mul61.i.1336
  %mul72.i.1339 = mul nuw nsw i128 %add85.i.1396, %conv7.i.1307
  %add73.i.1340 = add nuw nsw i128 %add67.i.1338, %mul72.i.1339
  %mul79.i.1342 = mul nuw nsw i128 %conv27.i.1320, %conv36.i.1325
  %mul84.i.1343 = mul nuw nsw i128 %add85.i.1396, %conv18.i.1315
  %add85.i.1344 = add nuw nsw i128 %mul84.i.1343, %mul79.i.1342
  %mul91.i.1346 = mul nuw nsw i128 %add85.i.1396, %conv36.i.1325
  %conv.i.1292 = zext i64 %conv.i.17842133 to i128
  %conv10.i.1295 = zext i64 %ftmp4.sroa.8.8.2134 to i128
  %conv14.i.1298 = zext i64 %ftmp4.sroa.14.16.2135 to i128
  %conv18.i.1301 = zext i64 %ftmp4.sroa.20.24.load2136 to i128
  %shr.i.1239 = lshr i128 %mul91.i.1346, 16
  %add14.i.1240 = add nuw i128 %add73.i.1340, %shr.i.1239
  %and.i.1241 = shl i128 %mul91.i.1346, 40
  %shl.i.1242 = and i128 %and.i.1241, 72056494526300160
  %shr21.i.1246 = lshr i128 %add85.i.1344, 16
  %and25.i.1248 = shl i128 %add85.i.1344, 40
  %shl26.i.1249 = and i128 %and25.i.1248, 72056494526300160
  %shr33.i.1252 = lshr i128 %add14.i.1240, 16
  %add31.i.1322 = sub nsw i128 170141183460469229388950806354771050240, %conv14.i.1298
  %add4.i.1289 = add nuw i128 %add31.i.1322, %mul19.i.1316
  %sub16.i.1299 = add i128 %add4.i.1289, %mul24.i.1317
  %add6.i.1235 = add i128 %sub16.i.1299, %mul30.i.1321
  %sub.i.1244 = sub i128 %add6.i.1235, %mul91.i.1346
  %add28.i.1250 = add i128 %sub.i.1244, %shl26.i.1249
  %add35.i.1253 = add i128 %add28.i.1250, %shr33.i.1252
  %and37.i.1254 = shl i128 %add14.i.1240, 40
  %shl38.i.1255 = and i128 %and37.i.1254, 72056494526300160
  %shr45.i.1258 = lshr i128 %add35.i.1253, 56
  %add43.i.1328 = sub nsw i128 18446744073709551360, %conv18.i.1301
  %add49.i.1330 = add nsw i128 %add43.i.1328, %mul37.i.1326
  %add55.i.1334 = add nsw i128 %add49.i.1330, %mul42.i.1327
  %add6.i.1291 = add nsw i128 %add55.i.1334, %mul48.i.1329
  %sub20.i.1302 = add nsw i128 %add6.i.1291, %mul54.i.1333
  %add17.i.1243 = add i128 %sub20.i.1302, %shl.i.1242
  %add23.i.1247 = add i128 %add17.i.1243, %shr21.i.1246
  %add47.i.1259 = add i128 %add23.i.1247, %shr45.i.1258
  %and49.i.1260 = and i128 %add35.i.1253, 72057594037927935
  %shr51.i.1261 = lshr i128 %add47.i.1259, 56
  %and54.i.1262 = and i128 %add47.i.1259, 72057594037927935
  %shr56.i.1263 = lshr i128 %add47.i.1259, 72
  %add58.i.1264 = add nuw nsw i128 %shr56.i.1263, %and49.i.1260
  %and60.i.1265 = shl nuw nsw i128 %shr51.i.1261, 40
  %shl61.i.1266 = and i128 %and60.i.1265, 72056494526300160
  %sub.i.1293 = sub nuw i128 -170141183460469231713240559642174521088, %conv.i.1292
  %add.i.1231 = add nsw i128 %sub.i.1293, %mul.i.1305
  %sub43.i.1257 = sub i128 %add.i.1231, %add14.i.1240
  %sub66.i.1268 = sub i128 %sub43.i.1257, %shr51.i.1261
  %shr68.i.1269 = lshr i128 %sub66.i.1268, 56
  %add2.i.1287 = sub nsw i128 170141183460469229388914496082775375616, %conv10.i.1295
  %sub12.i.1296 = add nuw i128 %add2.i.1287, %mul8.i.1308
  %add3.i.1233 = add i128 %sub12.i.1296, %mul13.i.1311
  %sub31.i.1251 = sub i128 %add3.i.1233, %add85.i.1344
  %add40.i.1256 = add i128 %sub31.i.1251, %shl38.i.1255
  %add63.i.1267 = add i128 %add40.i.1256, %shl61.i.1266
  %add70.i.1270 = add i128 %add63.i.1267, %shr68.i.1269
  %sub66.tr.i.1271 = trunc i128 %sub66.i.1268 to i64
  %conv.i.1272 = and i64 %sub66.tr.i.1271, 72057594037927935
  %shr75.i.1273 = lshr i128 %add70.i.1270, 56
  %add77.i.1274 = add nuw nsw i128 %add58.i.1264, %shr75.i.1273
  %add70.tr.i.1275 = trunc i128 %add70.i.1270 to i64
  %conv80.i.1276 = and i64 %add70.tr.i.1275, 72057594037927935
  %shr83.i.1278 = lshr i128 %add77.i.1274, 56
  %add85.i.1279 = add nuw nsw i128 %shr83.i.1278, %and54.i.1262
  %add77.tr.i.1280 = trunc i128 %add77.i.1274 to i64
  %conv88.i.1281 = and i64 %add77.tr.i.1280, 72057594037927935
  %conv91.i.1283 = trunc i128 %add85.i.1279 to i64
  %28 = load i64, i64* %x2, align 8, !tbaa !14
  %conv2.i.1187 = zext i64 %28 to i128
  %mul.i.1188 = mul nuw nsw i128 %conv.i.1402, %conv2.i.1187
  %arrayidx6.i.1189 = getelementptr inbounds i64, i64* %x2, i64 1
  %29 = load i64, i64* %arrayidx6.i.1189, align 8, !tbaa !14
  %conv7.i.1190 = zext i64 %29 to i128
  %mul8.i.1191 = mul nuw nsw i128 %conv.i.1402, %conv7.i.1190
  %mul13.i.1194 = mul nuw nsw i128 %conv10.i.1409, %conv2.i.1187
  %arrayidx17.i.1197 = getelementptr inbounds i64, i64* %x2, i64 2
  %30 = load i64, i64* %arrayidx17.i.1197, align 8, !tbaa !14
  %conv18.i.1198 = zext i64 %30 to i128
  %mul19.i.1199 = mul nuw nsw i128 %conv.i.1402, %conv18.i.1198
  %mul24.i.1200 = mul nuw nsw i128 %conv10.i.1409, %conv7.i.1190
  %mul30.i.1204 = mul nuw nsw i128 %conv27.i.1419, %conv2.i.1187
  %arrayidx35.i.1207 = getelementptr inbounds i64, i64* %x2, i64 3
  %31 = load i64, i64* %arrayidx35.i.1207, align 8, !tbaa !14
  %conv36.i.1208 = zext i64 %31 to i128
  %mul37.i.1209 = mul nuw nsw i128 %conv.i.1402, %conv36.i.1208
  %mul42.i.1210 = mul nuw nsw i128 %conv10.i.1409, %conv18.i.1198
  %mul48.i.1212 = mul nuw nsw i128 %conv27.i.1419, %conv7.i.1190
  %mul54.i.1216 = mul nuw nsw i128 %add85.i.1495, %conv2.i.1187
  %mul61.i.1219 = mul nuw nsw i128 %conv10.i.1409, %conv36.i.1208
  %mul66.i.1220 = mul nuw nsw i128 %conv27.i.1419, %conv18.i.1198
  %add67.i.1221 = add nuw nsw i128 %mul66.i.1220, %mul61.i.1219
  %mul72.i.1222 = mul nuw nsw i128 %add85.i.1495, %conv7.i.1190
  %add73.i.1223 = add nuw nsw i128 %add67.i.1221, %mul72.i.1222
  %mul79.i.1225 = mul nuw nsw i128 %conv27.i.1419, %conv36.i.1208
  %mul84.i.1226 = mul nuw nsw i128 %add85.i.1495, %conv18.i.1198
  %add85.i.1227 = add nuw nsw i128 %mul84.i.1226, %mul79.i.1225
  %mul91.i.1229 = mul nuw nsw i128 %add85.i.1495, %conv36.i.1208
  %conv.i.1175 = zext i64 %add.i.2982137 to i128
  %conv10.i.1178 = zext i64 %ftmp2.sroa.15.8.2138 to i128
  %conv14.i.1181 = zext i64 %ftmp2.sroa.28.16.2139 to i128
  %conv18.i.1184 = zext i64 %ftmp2.sroa.41.24.load2140 to i128
  %shr.i.1122 = lshr i128 %mul91.i.1229, 16
  %add14.i.1123 = add nuw i128 %add73.i.1223, %shr.i.1122
  %and.i.1124 = shl i128 %mul91.i.1229, 40
  %shl.i.1125 = and i128 %and.i.1124, 72056494526300160
  %shr21.i.1129 = lshr i128 %add85.i.1227, 16
  %and25.i.1131 = shl i128 %add85.i.1227, 40
  %shl26.i.1132 = and i128 %and25.i.1131, 72056494526300160
  %shr33.i.1135 = lshr i128 %add14.i.1123, 16
  %add31.i.1205 = sub nsw i128 170141183460469229388950806354771050240, %conv14.i.1181
  %add4.i.1172 = add nuw i128 %add31.i.1205, %mul19.i.1199
  %sub16.i.1182 = add i128 %add4.i.1172, %mul24.i.1200
  %add6.i.1118 = add i128 %sub16.i.1182, %mul30.i.1204
  %sub.i.1127 = sub i128 %add6.i.1118, %mul91.i.1229
  %add28.i.1133 = add i128 %sub.i.1127, %shl26.i.1132
  %add35.i.1136 = add i128 %add28.i.1133, %shr33.i.1135
  %and37.i.1137 = shl i128 %add14.i.1123, 40
  %shl38.i.1138 = and i128 %and37.i.1137, 72056494526300160
  %shr45.i.1141 = lshr i128 %add35.i.1136, 56
  %add43.i.1211 = sub nsw i128 18446744073709551360, %conv18.i.1184
  %add49.i.1213 = add nsw i128 %add43.i.1211, %mul37.i.1209
  %add55.i.1217 = add nsw i128 %add49.i.1213, %mul42.i.1210
  %add6.i.1174 = add nsw i128 %add55.i.1217, %mul48.i.1212
  %sub20.i.1185 = add nsw i128 %add6.i.1174, %mul54.i.1216
  %add17.i.1126 = add i128 %sub20.i.1185, %shl.i.1125
  %add23.i.1130 = add i128 %add17.i.1126, %shr21.i.1129
  %add47.i.1142 = add i128 %add23.i.1130, %shr45.i.1141
  %and49.i.1143 = and i128 %add35.i.1136, 72057594037927935
  %shr51.i.1144 = lshr i128 %add47.i.1142, 56
  %and54.i.1145 = and i128 %add47.i.1142, 72057594037927935
  %shr56.i.1146 = lshr i128 %add47.i.1142, 72
  %add58.i.1147 = add nuw nsw i128 %shr56.i.1146, %and49.i.1143
  %and60.i.1148 = shl nuw nsw i128 %shr51.i.1144, 40
  %shl61.i.1149 = and i128 %and60.i.1148, 72056494526300160
  %sub.i.1176 = sub nuw i128 -170141183460469231713240559642174521088, %conv.i.1175
  %add.i.1114 = add nsw i128 %sub.i.1176, %mul.i.1188
  %sub43.i.1140 = sub i128 %add.i.1114, %add14.i.1123
  %sub66.i.1151 = sub i128 %sub43.i.1140, %shr51.i.1144
  %shr68.i.1152 = lshr i128 %sub66.i.1151, 56
  %add2.i.1170 = sub nsw i128 170141183460469229388914496082775375616, %conv10.i.1178
  %sub12.i.1179 = add nuw i128 %add2.i.1170, %mul8.i.1191
  %add3.i.1116 = add i128 %sub12.i.1179, %mul13.i.1194
  %sub31.i.1134 = sub i128 %add3.i.1116, %add85.i.1227
  %add40.i.1139 = add i128 %sub31.i.1134, %shl38.i.1138
  %add63.i.1150 = add i128 %add40.i.1139, %shl61.i.1149
  %add70.i.1153 = add i128 %add63.i.1150, %shr68.i.1152
  %sub66.tr.i.1154 = trunc i128 %sub66.i.1151 to i64
  %conv.i.1155 = and i64 %sub66.tr.i.1154, 72057594037927935
  %shr75.i.1156 = lshr i128 %add70.i.1153, 56
  %add77.i.1157 = add nuw nsw i128 %add58.i.1147, %shr75.i.1156
  %add70.tr.i.1158 = trunc i128 %add70.i.1153 to i64
  %conv80.i.1159 = and i64 %add70.tr.i.1158, 72057594037927935
  %shr83.i.1161 = lshr i128 %add77.i.1157, 56
  %add85.i.1162 = add nuw nsw i128 %shr83.i.1161, %and54.i.1145
  %add77.tr.i.1163 = trunc i128 %add77.i.1157 to i64
  %conv88.i.1164 = and i64 %add77.tr.i.1163, 72057594037927935
  %conv91.i.1166 = trunc i128 %add85.i.1162 to i64
  %or.i.1090 = or i64 %conv80.i.1159, %conv.i.1155
  %or3.i.1092 = or i64 %or.i.1090, %conv88.i.1164
  %or5.i.1094 = or i64 %or3.i.1092, %conv91.i.1166
  %sub.i.1095 = add nsw i64 %or5.i.1094, -1
  %xor.i.1096 = xor i64 %conv.i.1155, 1
  %xor8.i.1097 = xor i64 %conv80.i.1159, 72056494526300160
  %or9.i.1098 = or i64 %xor8.i.1097, %xor.i.1096
  %xor11.i.1099 = xor i64 %conv88.i.1164, 72057594037927935
  %or12.i.1100 = or i64 %or9.i.1098, %xor11.i.1099
  %xor14.i.1101 = xor i64 %conv91.i.1166, 72057594037927935
  %or15.i.1102 = or i64 %or12.i.1100, %xor14.i.1101
  %sub16.i.1103 = add nsw i64 %or15.i.1102, -1
  %xor20.i.1104 = xor i64 %conv.i.1155, 2
  %xor22.i.1105 = xor i64 %conv80.i.1159, 72055395014672384
  %or23.i.1106 = or i64 %xor22.i.1105, %xor20.i.1104
  %or26.i.1107 = or i64 %or23.i.1106, %xor11.i.1099
  %xor28.i.1108 = xor i64 %conv91.i.1166, 144115188075855871
  %or29.i.1109 = or i64 %or26.i.1107, %xor28.i.1108
  %sub30.i.1110 = add nsw i64 %or29.i.1109, -1
  %shr.5255.i.1111 = or i64 %sub16.i.1103, %sub.i.1095
  %or3356.i.1112 = or i64 %shr.5255.i.1111, %sub30.i.1110
  %or.i.1065 = or i64 %conv80.i.1276, %conv.i.1272
  %or3.i.1067 = or i64 %or.i.1065, %conv88.i.1281
  %or5.i.1069 = or i64 %or3.i.1067, %conv91.i.1283
  %sub.i.1070 = add nsw i64 %or5.i.1069, -1
  %xor.i.1071 = xor i64 %conv.i.1272, 1
  %xor8.i.1072 = xor i64 %conv80.i.1276, 72056494526300160
  %or9.i.1073 = or i64 %xor8.i.1072, %xor.i.1071
  %xor11.i.1074 = xor i64 %conv88.i.1281, 72057594037927935
  %or12.i.1075 = or i64 %or9.i.1073, %xor11.i.1074
  %xor14.i.1076 = xor i64 %conv91.i.1283, 72057594037927935
  %or15.i.1077 = or i64 %or12.i.1075, %xor14.i.1076
  %sub16.i.1078 = add nsw i64 %or15.i.1077, -1
  %xor20.i.1079 = xor i64 %conv.i.1272, 2
  %xor22.i.1080 = xor i64 %conv80.i.1276, 72055395014672384
  %or23.i.1081 = or i64 %xor22.i.1080, %xor20.i.1079
  %or26.i.1082 = or i64 %or23.i.1081, %xor11.i.1074
  %xor28.i.1083 = xor i64 %conv91.i.1283, 144115188075855871
  %or29.i.1084 = or i64 %or26.i.1082, %xor28.i.1083
  %sub30.i.1085 = add nsw i64 %or29.i.1084, -1
  %shr.5255.i.1086 = or i64 %sub16.i.1078, %sub.i.1070
  %or3356.i.1087 = or i64 %shr.5255.i.1086, %sub30.i.1085
  %or.i.1040 = or i64 %21, %20
  %or3.i.1042 = or i64 %or.i.1040, %22
  %or5.i.1044 = or i64 %or3.i.1042, %23
  %sub.i.1045 = add nsw i64 %or5.i.1044, -1
  %xor.i.1046 = xor i64 %20, 1
  %xor8.i.1047 = xor i64 %21, 72056494526300160
  %or9.i.1048 = or i64 %xor8.i.1047, %xor.i.1046
  %xor11.i.1049 = xor i64 %22, 72057594037927935
  %or12.i.1050 = or i64 %or9.i.1048, %xor11.i.1049
  %xor14.i.1051 = xor i64 %23, 72057594037927935
  %or15.i.1052 = or i64 %or12.i.1050, %xor14.i.1051
  %sub16.i.1053 = add nsw i64 %or15.i.1052, -1
  %xor20.i.1054 = xor i64 %20, 2
  %xor22.i.1055 = xor i64 %21, 72055395014672384
  %or23.i.1056 = or i64 %xor22.i.1055, %xor20.i.1054
  %or26.i.1057 = or i64 %or23.i.1056, %xor11.i.1049
  %xor28.i.1058 = xor i64 %23, 144115188075855871
  %or29.i.1059 = or i64 %or26.i.1057, %xor28.i.1058
  %sub30.i.1060 = add nsw i64 %or29.i.1059, -1
  %shr.5255.i.1061 = or i64 %sub16.i.1053, %sub.i.1045
  %or3356.i.1062 = or i64 %shr.5255.i.1061, %sub30.i.1060
  %32 = load i64, i64* %z2, align 8, !tbaa !14
  %33 = load i64, i64* %arrayidx1.i.1033.pre-phi, align 8, !tbaa !14
  %or.i = or i64 %33, %32
  %34 = load i64, i64* %arrayidx2.i.1034.pre-phi, align 8, !tbaa !14
  %or3.i = or i64 %or.i, %34
  %35 = load i64, i64* %arrayidx4.i.1035.pre-phi, align 8, !tbaa !14
  %or5.i = or i64 %or3.i, %35
  %sub.i.1036 = add nsw i64 %or5.i, -1
  %xor.i.1037 = xor i64 %32, 1
  %xor8.i = xor i64 %33, 72056494526300160
  %or9.i = or i64 %xor8.i, %xor.i.1037
  %xor11.i = xor i64 %34, 72057594037927935
  %or12.i = or i64 %or9.i, %xor11.i
  %xor14.i = xor i64 %35, 72057594037927935
  %or15.i = or i64 %or12.i, %xor14.i
  %sub16.i.1038 = add nsw i64 %or15.i, -1
  %xor20.i = xor i64 %32, 2
  %xor22.i = xor i64 %33, 72055395014672384
  %or23.i = or i64 %xor22.i, %xor20.i
  %or26.i = or i64 %or23.i, %xor11.i
  %xor28.i = xor i64 %35, 144115188075855871
  %or29.i = or i64 %or26.i, %xor28.i
  %sub30.i = add nsw i64 %or29.i, -1
  %shr.5255.i = or i64 %sub16.i.1038, %sub.i.1036
  %or3356.i = or i64 %shr.5255.i, %sub30.i
  %36 = and i64 %or3356.i.1087, %or3356.i.1112
  %37 = icmp sgt i64 %36, -1
  %or34.i.10632141 = or i64 %or3356.i, %or3356.i.1062
  %38 = icmp slt i64 %or34.i.10632141, 0
  %39 = or i1 %38, %37
  br i1 %39, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %if.end
  tail call fastcc void @point_double(i64* %x3, i64* %y3, i64* %z3, i64* %x1, i64* %y1, i64* %z1)
  br label %cleanup

if.end.54:                                        ; preds = %if.end
  br i1 %tobool, label %if.end.62, label %if.then.56

if.then.56:                                       ; preds = %if.end.54
  %conv2.i.935 = zext i64 %32 to i128
  %mul.i.936 = mul nuw i128 %conv2.i.935, %conv.i.1506
  %conv7.i.938 = zext i64 %33 to i128
  %mul8.i.939 = mul nuw i128 %conv7.i.938, %conv.i.1506
  %mul13.i.942 = mul nuw i128 %conv2.i.935, %conv20.i.1513
  %conv18.i.946 = zext i64 %34 to i128
  %mul19.i.947 = mul nuw i128 %conv18.i.946, %conv.i.1506
  %mul24.i.948 = mul nuw i128 %conv7.i.938, %conv20.i.1513
  %mul30.i.952 = mul nuw i128 %conv2.i.935, %conv40.i.1525
  %conv36.i.956 = zext i64 %35 to i128
  %mul37.i.957 = mul nuw i128 %conv36.i.956, %conv.i.1506
  %mul42.i.958 = mul nuw i128 %conv18.i.946, %conv20.i.1513
  %mul48.i.960 = mul nuw i128 %conv7.i.938, %conv40.i.1525
  %mul54.i.964 = mul nuw i128 %conv2.i.935, %conv26.i.1518
  %mul61.i.967 = mul nuw i128 %conv36.i.956, %conv20.i.1513
  %mul66.i.968 = mul nuw i128 %conv18.i.946, %conv40.i.1525
  %mul72.i.970 = mul nuw i128 %conv7.i.938, %conv26.i.1518
  %mul79.i.973 = mul nuw i128 %conv36.i.956, %conv40.i.1525
  %mul84.i.974 = mul nuw i128 %conv18.i.946, %conv26.i.1518
  %add85.i.975 = add i128 %mul79.i.973, %mul84.i.974
  %mul91.i.977 = mul nuw i128 %conv36.i.956, %conv26.i.1518
  %add.i.880 = add i128 %mul.i.936, -170141183460469231731687303715884072960
  %shr.i.888 = lshr i128 %mul91.i.977, 16
  %add67.i.969 = add i128 %mul66.i.968, %mul72.i.970
  %add73.i.971 = add i128 %add67.i.969, %mul61.i.967
  %add14.i.889 = add i128 %add73.i.971, %shr.i.888
  %and.i.890 = shl i128 %mul91.i.977, 40
  %shl.i.891 = and i128 %and.i.890, 72056494526300160
  %shr21.i.895 = lshr i128 %add85.i.975, 16
  %and25.i.897 = shl i128 %add85.i.975, 40
  %shl26.i.898 = and i128 %and25.i.897, 72056494526300160
  %shr33.i.901 = lshr i128 %add14.i.889, 16
  %add25.i.949 = add i128 %mul30.i.952, 170141183460469229370504062281061498880
  %add31.i.953 = add i128 %add25.i.949, %mul24.i.948
  %add6.i.884 = add i128 %add31.i.953, %mul19.i.947
  %sub.i.893 = sub i128 %add6.i.884, %mul91.i.977
  %add28.i.899 = add i128 %sub.i.893, %shl26.i.898
  %add35.i.902 = add i128 %add28.i.899, %shr33.i.901
  %and37.i.903 = shl i128 %add14.i.889, 40
  %shl38.i.904 = and i128 %and37.i.903, 72056494526300160
  %sub43.i.906 = sub i128 %add.i.880, %add14.i.889
  %shr45.i.907 = lshr i128 %add35.i.902, 56
  %add43.i.959 = add i128 %mul48.i.960, %mul54.i.964
  %add49.i.961 = add i128 %add43.i.959, %mul42.i.958
  %add55.i.965 = add i128 %add49.i.961, %mul37.i.957
  %add17.i.892 = add i128 %add55.i.965, %shl.i.891
  %add23.i.896 = add i128 %add17.i.892, %shr21.i.895
  %add47.i.908 = add i128 %add23.i.896, %shr45.i.907
  %and49.i.909 = and i128 %add35.i.902, 72057594037927935
  %shr51.i.910 = lshr i128 %add47.i.908, 56
  %and54.i.911 = and i128 %add47.i.908, 72057594037927935
  %shr56.i.912 = lshr i128 %add47.i.908, 72
  %add58.i.913 = add nuw nsw i128 %shr56.i.912, %and49.i.909
  %and60.i.914 = shl nuw nsw i128 %shr51.i.910, 40
  %shl61.i.915 = and i128 %and60.i.914, 72056494526300160
  %sub66.i.917 = sub i128 %sub43.i.906, %shr51.i.910
  %shr68.i.918 = lshr i128 %sub66.i.917, 56
  %add.i.943 = add i128 %mul13.i.942, 170141183460469229370468033484042534912
  %add3.i.882 = add i128 %add.i.943, %mul8.i.939
  %sub31.i.900 = sub i128 %add3.i.882, %add85.i.975
  %add40.i.905 = add i128 %sub31.i.900, %shl38.i.904
  %add63.i.916 = add i128 %add40.i.905, %shl61.i.915
  %add70.i.919 = add i128 %add63.i.916, %shr68.i.918
  %sub66.tr.i.920 = trunc i128 %sub66.i.917 to i64
  %conv.i.921 = and i64 %sub66.tr.i.920, 72057594037927935
  %shr75.i.922 = lshr i128 %add70.i.919, 56
  %add77.i.923 = add nuw nsw i128 %add58.i.913, %shr75.i.922
  %add70.tr.i.924 = trunc i128 %add70.i.919 to i64
  %conv80.i.925 = and i64 %add70.tr.i.924, 72057594037927935
  %shr83.i.927 = lshr i128 %add77.i.923, 56
  %add85.i.928 = add nuw nsw i128 %shr83.i.927, %and54.i.911
  %add77.tr.i.929 = trunc i128 %add77.i.923 to i64
  %conv88.i.930 = and i64 %add77.tr.i.929, 72057594037927935
  %conv91.i.932 = trunc i128 %add85.i.928 to i64
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.54, %if.then.56
  %conv91.i.9322132 = phi i64 [ %conv91.i.932, %if.then.56 ], [ %23, %if.end.54 ]
  %ftmp5.sroa.26.16.2131 = phi i64 [ %conv88.i.930, %if.then.56 ], [ %22, %if.end.54 ]
  %ftmp5.sroa.14.8.2130 = phi i64 [ %conv80.i.925, %if.then.56 ], [ %21, %if.end.54 ]
  %ftmp5.sroa.0.0.2129 = phi i64 [ %conv.i.921, %if.then.56 ], [ %20, %if.end.54 ]
  %conv.i.829 = zext i64 %conv.i.1155 to i128
  %conv2.i.830 = zext i64 %ftmp5.sroa.0.0.2129 to i128
  %mul.i.831 = mul nuw nsw i128 %conv2.i.830, %conv.i.829
  %conv7.i.833 = zext i64 %ftmp5.sroa.14.8.2130 to i128
  %mul8.i.834 = mul nuw nsw i128 %conv7.i.833, %conv.i.829
  %conv10.i.836 = zext i64 %conv80.i.1159 to i128
  %mul13.i.837 = mul nuw nsw i128 %conv2.i.830, %conv10.i.836
  %conv18.i.841 = zext i64 %ftmp5.sroa.26.16.2131 to i128
  %mul19.i.842 = mul nuw nsw i128 %conv18.i.841, %conv.i.829
  %mul24.i.843 = mul nuw nsw i128 %conv7.i.833, %conv10.i.836
  %conv27.i.846 = zext i64 %conv88.i.1164 to i128
  %mul30.i.847 = mul nuw nsw i128 %conv2.i.830, %conv27.i.846
  %conv36.i.851 = zext i64 %conv91.i.9322132 to i128
  %mul37.i.852 = mul nuw nsw i128 %conv36.i.851, %conv.i.829
  %mul42.i.853 = mul nuw nsw i128 %conv18.i.841, %conv10.i.836
  %add43.i.854 = add nuw nsw i128 %mul42.i.853, %mul37.i.852
  %mul48.i.855 = mul nuw nsw i128 %conv7.i.833, %conv27.i.846
  %add49.i.856 = add nuw nsw i128 %add43.i.854, %mul48.i.855
  %mul54.i.859 = mul nuw nsw i128 %conv2.i.830, %add85.i.1162
  %mul61.i.862 = mul nuw nsw i128 %conv36.i.851, %conv10.i.836
  %mul66.i.863 = mul nuw nsw i128 %conv18.i.841, %conv27.i.846
  %add67.i.864 = add nuw nsw i128 %mul66.i.863, %mul61.i.862
  %mul72.i.865 = mul nuw nsw i128 %conv7.i.833, %add85.i.1162
  %mul79.i.868 = mul nuw nsw i128 %conv36.i.851, %conv27.i.846
  %mul84.i.869 = mul nuw nsw i128 %conv18.i.841, %add85.i.1162
  %add85.i.870 = add nuw nsw i128 %mul84.i.869, %mul79.i.868
  %mul91.i.872 = mul nuw nsw i128 %conv36.i.851, %add85.i.1162
  %add.i.775 = add nsw i128 %mul.i.831, -170141183460469231731687303715884072960
  %shr.i.783 = lshr i128 %mul91.i.872, 16
  %add73.i.866 = add nuw nsw i128 %add67.i.864, %shr.i.783
  %add14.i.784 = add nuw nsw i128 %add73.i.866, %mul72.i.865
  %and.i.785 = shl i128 %mul91.i.872, 40
  %shl.i.786 = and i128 %and.i.785, 72056494526300160
  %shr21.i.790 = lshr i128 %add85.i.870, 16
  %and25.i.792 = shl i128 %add85.i.870, 40
  %shl26.i.793 = and i128 %and25.i.792, 72056494526300160
  %shr33.i.796 = lshr i128 %add14.i.784, 16
  %add25.i.844 = sub nsw i128 170141183460469229370504062281061498880, %mul91.i.872
  %add31.i.848 = add i128 %add25.i.844, %mul19.i.842
  %add6.i.779 = add i128 %add31.i.848, %mul24.i.843
  %sub.i.788 = add i128 %add6.i.779, %mul30.i.847
  %add28.i.794 = add i128 %sub.i.788, %shl26.i.793
  %add35.i.797 = add i128 %add28.i.794, %shr33.i.796
  %and37.i.798 = shl i128 %add14.i.784, 40
  %shl38.i.799 = and i128 %and37.i.798, 72056494526300160
  %sub43.i.801 = sub nuw i128 %add.i.775, %add14.i.784
  %shr45.i.802 = lshr i128 %add35.i.797, 56
  %add55.i.860 = add nuw nsw i128 %add49.i.856, %shl.i.786
  %add17.i.787 = add nuw nsw i128 %add55.i.860, %mul54.i.859
  %add23.i.791 = add nuw i128 %add17.i.787, %shr21.i.790
  %add47.i.803 = add i128 %add23.i.791, %shr45.i.802
  %and49.i.804 = and i128 %add35.i.797, 72057594037927935
  %shr51.i.805 = lshr i128 %add47.i.803, 56
  %and54.i.806 = and i128 %add47.i.803, 72057594037927935
  %shr56.i.807 = lshr i128 %add47.i.803, 72
  %add58.i.808 = add nuw nsw i128 %shr56.i.807, %and49.i.804
  %and60.i.809 = shl nuw nsw i128 %shr51.i.805, 40
  %shl61.i.810 = and i128 %and60.i.809, 72056494526300160
  %sub66.i.812 = sub i128 %sub43.i.801, %shr51.i.805
  %shr68.i.813 = lshr i128 %sub66.i.812, 56
  %add.i.838 = add nuw i128 %mul8.i.834, 170141183460469229370468033484042534912
  %add3.i.777 = sub i128 %add.i.838, %add85.i.870
  %sub31.i.795 = add i128 %add3.i.777, %mul13.i.837
  %add40.i.800 = add i128 %sub31.i.795, %shl38.i.799
  %add63.i.811 = add i128 %add40.i.800, %shl61.i.810
  %add70.i.814 = add i128 %add63.i.811, %shr68.i.813
  %shr75.i.817 = lshr i128 %add70.i.814, 56
  %add77.i.818 = add nuw nsw i128 %add58.i.808, %shr75.i.817
  %40 = insertelement <2 x i128> undef, i128 %sub66.i.812, i32 0
  %41 = insertelement <2 x i128> %40, i128 %add70.i.814, i32 1
  %42 = trunc <2 x i128> %41 to <2 x i64>
  %43 = and <2 x i64> %42, <i64 72057594037927935, i64 72057594037927935>
  %shr83.i.822 = lshr i128 %add77.i.818, 56
  %add85.i.823 = add nuw nsw i128 %shr83.i.822, %and54.i.806
  %add77.tr.i.824 = trunc i128 %add77.i.818 to i64
  %conv88.i.825 = and i64 %add77.tr.i.824, 72057594037927935
  %conv91.i.827 = trunc i128 %add85.i.823 to i64
  %mul.i.737 = shl nuw nsw i64 %conv.i.1155, 1
  %mul2.i.739 = shl nuw nsw i64 %conv80.i.1159, 1
  %mul4.i.741 = shl nuw nsw i64 %conv88.i.1164, 1
  %mul8.i.743 = mul nuw nsw i128 %conv.i.829, %conv.i.829
  %conv12.i.744 = zext i64 %mul2.i.739 to i128
  %mul13.i.745 = mul nuw nsw i128 %conv12.i.744, %conv.i.829
  %conv17.i.747 = zext i64 %mul4.i.741 to i128
  %mul18.i.748 = mul nuw nsw i128 %conv17.i.747, %conv.i.829
  %mul23.i.750 = mul nuw nsw i128 %conv10.i.836, %conv10.i.836
  %conv27.i.755 = zext i64 %mul.i.737 to i128
  %mul28.i.756 = mul nuw nsw i128 %add85.i.1162, %conv27.i.755
  %mul32.i.757 = mul nuw nsw i128 %conv17.i.747, %conv10.i.836
  %add33.i.758 = add nuw nsw i128 %mul32.i.757, %mul28.i.756
  %mul38.i.760 = mul nuw nsw i128 %add85.i.1162, %conv12.i.744
  %mul43.i.762 = mul nuw nsw i128 %conv27.i.846, %conv27.i.846
  %add44.i.763 = add nuw nsw i128 %mul43.i.762, %mul38.i.760
  %mul49.i.765 = mul nuw nsw i128 %conv17.i.747, %add85.i.1162
  %mul55.i.767 = mul nuw nsw i128 %add85.i.1162, %add85.i.1162
  %add.i.683 = add nsw i128 %mul8.i.743, -170141183460469231731687303715884072960
  %add3.i.685 = add nuw i128 %mul13.i.745, 170141183460469229370468033484042534912
  %shr.i.691 = lshr i128 %mul55.i.767, 16
  %add14.i.692 = add nuw i128 %add44.i.763, %shr.i.691
  %and.i.693 = shl i128 %mul55.i.767, 40
  %shl.i.694 = and i128 %and.i.693, 72056494526300160
  %add17.i.695 = add nuw i128 %add33.i.758, %shl.i.694
  %shr21.i.698 = lshr i128 %mul49.i.765, 16
  %add23.i.699 = add i128 %add17.i.695, %shr21.i.698
  %and25.i.700 = shl i128 %mul49.i.765, 40
  %shl26.i.701 = and i128 %and25.i.700, 72055395014672384
  %sub31.i.703 = sub i128 %add3.i.685, %mul49.i.765
  %shr33.i.704 = lshr i128 %add14.i.692, 16
  %add.i.751 = add nuw i128 %mul23.i.750, 170141183460469229370504062281061498880
  %add6.i.687 = sub i128 %add.i.751, %mul55.i.767
  %sub.i.696 = add i128 %add6.i.687, %mul18.i.748
  %add28.i.702 = add i128 %sub.i.696, %shl26.i.701
  %add35.i.705 = add i128 %add28.i.702, %shr33.i.704
  %and37.i.706 = shl i128 %add14.i.692, 40
  %shl38.i.707 = and i128 %and37.i.706, 72056494526300160
  %add40.i.708 = add i128 %sub31.i.703, %shl38.i.707
  %sub43.i.709 = sub i128 %add.i.683, %add14.i.692
  %shr45.i.710 = lshr i128 %add35.i.705, 56
  %add47.i.711 = add i128 %add23.i.699, %shr45.i.710
  %and49.i.712 = and i128 %add35.i.705, 72057594037927935
  %shr51.i.713 = lshr i128 %add47.i.711, 56
  %and54.i.714 = and i128 %add47.i.711, 72057594037927935
  %shr56.i.715 = lshr i128 %add47.i.711, 72
  %add58.i.716 = add nuw nsw i128 %shr56.i.715, %and49.i.712
  %and60.i.717 = shl nuw nsw i128 %shr51.i.713, 40
  %shl61.i.718 = and i128 %and60.i.717, 72056494526300160
  %add63.i.719 = add i128 %add40.i.708, %shl61.i.718
  %sub66.i.720 = sub i128 %sub43.i.709, %shr51.i.713
  %shr68.i.721 = lshr i128 %sub66.i.720, 56
  %add70.i.722 = add i128 %add63.i.719, %shr68.i.721
  %shr75.i.725 = lshr i128 %add70.i.722, 56
  %add77.i.726 = add nuw nsw i128 %add58.i.716, %shr75.i.725
  %shr83.i.730 = lshr i128 %add77.i.726, 56
  %add85.i.731 = add nuw nsw i128 %shr83.i.730, %and54.i.714
  %conv.i.638 = and i128 %sub66.i.720, 72057594037927935
  %mul.i.640 = mul nuw nsw i128 %conv.i.638, %conv.i.829
  %mul8.i.643 = mul nuw nsw i128 %conv.i.638, %conv10.i.836
  %conv10.i.645 = and i128 %add70.i.722, 72057594037927935
  %mul13.i.646 = mul nuw nsw i128 %conv10.i.645, %conv.i.829
  %mul19.i.651 = mul nuw nsw i128 %conv.i.638, %conv27.i.846
  %mul24.i.652 = mul nuw nsw i128 %conv10.i.645, %conv10.i.836
  %conv27.i.655 = and i128 %add77.i.726, 72057594037927935
  %mul30.i.656 = mul nuw nsw i128 %conv27.i.655, %conv.i.829
  %mul37.i.661 = mul nuw nsw i128 %conv.i.638, %add85.i.1162
  %mul42.i.662 = mul nuw nsw i128 %conv10.i.645, %conv27.i.846
  %add43.i.663 = add nuw nsw i128 %mul42.i.662, %mul37.i.661
  %mul48.i.664 = mul nuw nsw i128 %conv27.i.655, %conv10.i.836
  %add49.i.665 = add nuw i128 %add43.i.663, %mul48.i.664
  %mul54.i.668 = mul nuw nsw i128 %add85.i.731, %conv.i.829
  %add55.i.669 = add i128 %add49.i.665, %mul54.i.668
  %mul61.i.671 = mul nuw nsw i128 %conv10.i.645, %add85.i.1162
  %mul66.i.672 = mul nuw nsw i128 %conv27.i.655, %conv27.i.846
  %add67.i.673 = add nuw nsw i128 %mul66.i.672, %mul61.i.671
  %mul72.i.674 = mul nuw nsw i128 %add85.i.731, %conv10.i.836
  %add73.i.675 = add nuw i128 %add67.i.673, %mul72.i.674
  %mul79.i.677 = mul nuw nsw i128 %conv27.i.655, %add85.i.1162
  %mul84.i.678 = mul nuw nsw i128 %add85.i.731, %conv27.i.846
  %add85.i.679 = add nuw nsw i128 %mul84.i.678, %mul79.i.677
  %mul91.i.681 = mul nuw nsw i128 %add85.i.731, %add85.i.1162
  %add.i.584 = add nsw i128 %mul.i.640, -170141183460469231731687303715884072960
  %shr.i.592 = lshr i128 %mul91.i.681, 16
  %add14.i.593 = add i128 %add73.i.675, %shr.i.592
  %and.i.594 = shl i128 %mul91.i.681, 40
  %shl.i.595 = and i128 %and.i.594, 72056494526300160
  %add17.i.596 = add i128 %add55.i.669, %shl.i.595
  %shr21.i.599 = lshr i128 %add85.i.679, 16
  %add23.i.600 = add i128 %add17.i.596, %shr21.i.599
  %and25.i.601 = shl i128 %add85.i.679, 40
  %shl26.i.602 = and i128 %and25.i.601, 72056494526300160
  %shr33.i.605 = lshr i128 %add14.i.593, 16
  %add25.i.653 = add nuw i128 %mul19.i.651, 170141183460469229370504062281061498880
  %add31.i.657 = add i128 %add25.i.653, %mul24.i.652
  %add6.i.588 = add i128 %add31.i.657, %mul30.i.656
  %sub.i.597 = sub i128 %add6.i.588, %mul91.i.681
  %add28.i.603 = add i128 %sub.i.597, %shl26.i.602
  %add35.i.606 = add i128 %add28.i.603, %shr33.i.605
  %and37.i.607 = shl i128 %add14.i.593, 40
  %shl38.i.608 = and i128 %and37.i.607, 72056494526300160
  %sub43.i.610 = sub i128 %add.i.584, %add14.i.593
  %shr45.i.611 = lshr i128 %add35.i.606, 56
  %add47.i.612 = add i128 %add23.i.600, %shr45.i.611
  %and49.i.613 = and i128 %add35.i.606, 72057594037927935
  %shr51.i.614 = lshr i128 %add47.i.612, 56
  %and54.i.615 = and i128 %add47.i.612, 72057594037927935
  %shr56.i.616 = lshr i128 %add47.i.612, 72
  %add58.i.617 = add nuw nsw i128 %shr56.i.616, %and49.i.613
  %and60.i.618 = shl nuw nsw i128 %shr51.i.614, 40
  %shl61.i.619 = and i128 %and60.i.618, 72056494526300160
  %sub66.i.621 = sub i128 %sub43.i.610, %shr51.i.614
  %shr68.i.622 = lshr i128 %sub66.i.621, 56
  %add.i.647 = add nuw i128 %mul8.i.643, 170141183460469229370468033484042534912
  %add3.i.586 = add i128 %add.i.647, %mul13.i.646
  %sub31.i.604 = sub i128 %add3.i.586, %add85.i.679
  %add40.i.609 = add i128 %sub31.i.604, %shl38.i.608
  %add63.i.620 = add i128 %add40.i.609, %shl61.i.619
  %add70.i.623 = add i128 %add63.i.620, %shr68.i.622
  %shr75.i.626 = lshr i128 %add70.i.623, 56
  %add77.i.627 = add nuw nsw i128 %add58.i.617, %shr75.i.626
  %shr83.i.631 = lshr i128 %add77.i.627, 56
  %add85.i.632 = add nuw nsw i128 %shr83.i.631, %and54.i.615
  %mul.i.541 = mul nuw nsw i128 %conv.i.638, %conv.i.1175
  %mul8.i.544 = mul nuw nsw i128 %conv10.i.645, %conv.i.1175
  %mul13.i.547 = mul nuw nsw i128 %conv.i.638, %conv10.i.1178
  %mul19.i.552 = mul nuw nsw i128 %conv27.i.655, %conv.i.1175
  %mul24.i.553 = mul nuw nsw i128 %conv10.i.645, %conv10.i.1178
  %mul30.i.557 = mul nuw nsw i128 %conv.i.638, %conv14.i.1181
  %mul37.i.562 = mul nuw nsw i128 %add85.i.731, %conv.i.1175
  %mul42.i.563 = mul nuw nsw i128 %conv27.i.655, %conv10.i.1178
  %mul48.i.565 = mul nuw nsw i128 %conv10.i.645, %conv14.i.1181
  %mul54.i.569 = mul nuw nsw i128 %conv.i.638, %conv18.i.1184
  %mul61.i.572 = mul nuw nsw i128 %add85.i.731, %conv10.i.1178
  %mul66.i.573 = mul nuw nsw i128 %conv27.i.655, %conv14.i.1181
  %mul72.i.575 = mul nuw nsw i128 %conv10.i.645, %conv18.i.1184
  %mul79.i.578 = mul nuw nsw i128 %add85.i.731, %conv14.i.1181
  %mul84.i.579 = mul nuw nsw i128 %conv27.i.655, %conv18.i.1184
  %add85.i.580 = add nuw nsw i128 %mul79.i.578, %mul84.i.579
  %mul91.i.582 = mul nuw nsw i128 %add85.i.731, %conv18.i.1184
  %add.i.485 = add nsw i128 %mul.i.541, -170141183460469231731687303715884072960
  %shr.i.493 = lshr i128 %mul91.i.582, 16
  %add67.i.574 = add nuw nsw i128 %mul66.i.573, %mul72.i.575
  %add73.i.576 = add nuw nsw i128 %add67.i.574, %mul61.i.572
  %add14.i.494 = add nuw i128 %add73.i.576, %shr.i.493
  %and.i.495 = shl i128 %mul91.i.582, 40
  %shl.i.496 = and i128 %and.i.495, 72056494526300160
  %shr21.i.500 = lshr i128 %add85.i.580, 16
  %and25.i.502 = shl i128 %add85.i.580, 40
  %shl26.i.503 = and i128 %and25.i.502, 72056494526300160
  %shr33.i.506 = lshr i128 %add14.i.494, 16
  %add25.i.554 = add nuw i128 %mul30.i.557, 170141183460469229370504062281061498880
  %add31.i.558 = add i128 %add25.i.554, %mul24.i.553
  %add6.i.489 = add i128 %add31.i.558, %mul19.i.552
  %sub.i.498 = sub i128 %add6.i.489, %mul91.i.582
  %add28.i.504 = add i128 %sub.i.498, %shl26.i.503
  %add35.i.507 = add i128 %add28.i.504, %shr33.i.506
  %and37.i.508 = shl i128 %add14.i.494, 40
  %shl38.i.509 = and i128 %and37.i.508, 72056494526300160
  %sub43.i.511 = sub i128 %add.i.485, %add14.i.494
  %shr45.i.512 = lshr i128 %add35.i.507, 56
  %add43.i.564 = add nuw nsw i128 %mul48.i.565, %mul54.i.569
  %add49.i.566 = add nuw nsw i128 %add43.i.564, %mul42.i.563
  %add55.i.570 = add nuw nsw i128 %add49.i.566, %mul37.i.562
  %add17.i.497 = add nuw i128 %add55.i.570, %shl.i.496
  %add23.i.501 = add i128 %add17.i.497, %shr21.i.500
  %add47.i.513 = add i128 %add23.i.501, %shr45.i.512
  %and49.i.514 = and i128 %add35.i.507, 72057594037927935
  %shr51.i.515 = lshr i128 %add47.i.513, 56
  %and54.i.516 = and i128 %add47.i.513, 72057594037927935
  %shr56.i.517 = lshr i128 %add47.i.513, 72
  %add58.i.518 = add nuw nsw i128 %shr56.i.517, %and49.i.514
  %and60.i.519 = shl nuw nsw i128 %shr51.i.515, 40
  %shl61.i.520 = and i128 %and60.i.519, 72056494526300160
  %sub66.i.522 = sub i128 %sub43.i.511, %shr51.i.515
  %shr68.i.523 = lshr i128 %sub66.i.522, 56
  %add.i.548 = add nuw i128 %mul13.i.547, 170141183460469229370468033484042534912
  %add3.i.487 = add i128 %add.i.548, %mul8.i.544
  %sub31.i.505 = sub i128 %add3.i.487, %add85.i.580
  %add40.i.510 = add i128 %sub31.i.505, %shl38.i.509
  %add63.i.521 = add i128 %add40.i.510, %shl61.i.520
  %add70.i.524 = add i128 %add63.i.521, %shr68.i.523
  %sub66.tr.i.525 = trunc i128 %sub66.i.522 to i64
  %conv.i.526 = and i64 %sub66.tr.i.525, 72057594037927935
  %shr75.i.527 = lshr i128 %add70.i.524, 56
  %add77.i.528 = add nuw nsw i128 %add58.i.518, %shr75.i.527
  %add70.tr.i.529 = trunc i128 %add70.i.524 to i64
  %conv80.i.530 = and i64 %add70.tr.i.529, 72057594037927935
  %shr83.i.532 = lshr i128 %add77.i.528, 56
  %add85.i.533 = add nuw nsw i128 %shr83.i.532, %and54.i.516
  %add77.tr.i.534 = trunc i128 %add77.i.528 to i64
  %conv88.i.535 = and i64 %add77.tr.i.534, 72057594037927935
  %conv91.i.537 = trunc i128 %add85.i.533 to i64
  %conv2.i.441 = and i128 %sub66.i.621, 72057594037927935
  %mul.i.442 = mul nuw nsw i128 %conv2.i.441, %conv.i.1292
  %conv7.i.444 = and i128 %add70.i.623, 72057594037927935
  %mul8.i.445 = mul nuw nsw i128 %conv7.i.444, %conv.i.1292
  %mul13.i.448 = mul nuw nsw i128 %conv2.i.441, %conv10.i.1295
  %conv18.i.452 = and i128 %add77.i.627, 72057594037927935
  %mul19.i.453 = mul nuw nsw i128 %conv18.i.452, %conv.i.1292
  %mul24.i.454 = mul nuw nsw i128 %conv7.i.444, %conv10.i.1295
  %mul30.i.458 = mul nuw nsw i128 %conv2.i.441, %conv14.i.1298
  %mul37.i.463 = mul nuw nsw i128 %add85.i.632, %conv.i.1292
  %mul42.i.464 = mul nuw nsw i128 %conv18.i.452, %conv10.i.1295
  %mul48.i.466 = mul nuw nsw i128 %conv7.i.444, %conv14.i.1298
  %mul54.i.470 = mul nuw nsw i128 %conv2.i.441, %conv18.i.1301
  %mul61.i.473 = mul nuw nsw i128 %add85.i.632, %conv10.i.1295
  %mul66.i.474 = mul nuw nsw i128 %conv18.i.452, %conv14.i.1298
  %mul72.i.476 = mul nuw nsw i128 %conv7.i.444, %conv18.i.1301
  %mul79.i.479 = mul nuw nsw i128 %add85.i.632, %conv14.i.1298
  %mul84.i.480 = mul nuw nsw i128 %conv18.i.452, %conv18.i.1301
  %mul91.i.483 = mul nuw nsw i128 %add85.i.632, %conv18.i.1301
  %mul.i.408 = shl nuw nsw i64 %conv.i.1272, 1
  %mul2.i.410 = shl nuw nsw i64 %conv80.i.1276, 1
  %mul4.i.412 = shl nuw nsw i64 %conv88.i.1281, 1
  %conv.i.413 = zext i64 %conv.i.1272 to i128
  %mul8.i.414 = mul nuw nsw i128 %conv.i.413, %conv.i.413
  %conv12.i.415 = zext i64 %mul2.i.410 to i128
  %mul13.i.416 = mul nuw nsw i128 %conv12.i.415, %conv.i.413
  %conv17.i.418 = zext i64 %mul4.i.412 to i128
  %mul18.i.419 = mul nuw nsw i128 %conv17.i.418, %conv.i.413
  %conv20.i.420 = zext i64 %conv80.i.1276 to i128
  %mul23.i.421 = mul nuw nsw i128 %conv20.i.420, %conv20.i.420
  %conv27.i.426 = zext i64 %mul.i.408 to i128
  %mul28.i.427 = mul nuw nsw i128 %add85.i.1279, %conv27.i.426
  %mul32.i.428 = mul nuw nsw i128 %conv17.i.418, %conv20.i.420
  %mul38.i.431 = mul nuw nsw i128 %add85.i.1279, %conv12.i.415
  %conv40.i.432 = zext i64 %conv88.i.1281 to i128
  %mul43.i.433 = mul nuw nsw i128 %conv40.i.432, %conv40.i.432
  %add44.i.434 = add nuw nsw i128 %mul43.i.433, %mul38.i.431
  %mul49.i.436 = mul nuw nsw i128 %conv17.i.418, %add85.i.1279
  %mul55.i.438 = mul nuw nsw i128 %add85.i.1279, %add85.i.1279
  %mul.i.378 = shl nuw nsw i64 %conv.i.526, 1
  %mul2.i.380 = shl nuw nsw i64 %conv80.i.530, 1
  %mul4.i.382 = shl nuw nsw i64 %conv88.i.535, 1
  %mul6.i = shl nuw nsw i64 %conv91.i.537, 1
  %conv.i.371 = zext i64 %mul.i.378 to i128
  %conv10.i.374 = zext i64 %mul2.i.380 to i128
  %conv14.i = zext i64 %mul4.i.382 to i128
  %conv18.i.376 = zext i64 %mul6.i to i128
  %shr.i.318 = lshr i128 %mul55.i.438, 16
  %add14.i.319 = add nuw i128 %add44.i.434, %shr.i.318
  %and.i.320 = shl i128 %mul55.i.438, 40
  %shl.i.321 = and i128 %and.i.320, 72056494526300160
  %shr21.i.325 = lshr i128 %mul49.i.436, 16
  %and25.i.327 = shl i128 %mul49.i.436, 40
  %shl26.i.328 = and i128 %and25.i.327, 72055395014672384
  %shr33.i.331 = lshr i128 %add14.i.319, 16
  %sub16.i.404 = add nuw i128 %mul23.i.421, 170141183460469229407397550428480601600
  %add4.i.368 = sub i128 %sub16.i.404, %mul55.i.438
  %sub16.i = add i128 %add4.i.368, %mul18.i.419
  %add6.i.314 = add i128 %sub16.i, %shl26.i.328
  %sub.i.323 = add i128 %add6.i.314, %shr33.i.331
  %add28.i.329 = sub i128 %sub.i.323, %conv18.i.452
  %add35.i.332 = sub i128 %add28.i.329, %conv14.i
  %and37.i.333 = shl i128 %add14.i.319, 40
  %shl38.i.334 = and i128 %and37.i.333, 72056494526300160
  %shr45.i.337 = lshr i128 %add35.i.332, 56
  %add6.i.396 = add nuw nsw i128 %mul28.i.427, 36893488147419102720
  %sub20.i.407 = add nuw i128 %add6.i.396, %mul32.i.428
  %add6.i.370 = add i128 %sub20.i.407, %shl.i.321
  %sub20.i.377 = add i128 %add6.i.370, %shr21.i.325
  %add17.i.322 = sub i128 %sub20.i.377, %add85.i.632
  %add23.i.326 = sub i128 %add17.i.322, %conv18.i.376
  %add47.i.338 = add i128 %add23.i.326, %shr45.i.337
  %and49.i.339 = and i128 %add35.i.332, 72057594037927935
  %shr51.i.340 = lshr i128 %add47.i.338, 56
  %and54.i.341 = and i128 %add47.i.338, 72057594037927935
  %shr56.i.342 = lshr i128 %add47.i.338, 72
  %add58.i.343 = add nuw nsw i128 %shr56.i.342, %and49.i.339
  %and60.i.344 = shl nuw nsw i128 %shr51.i.340, 40
  %shl61.i.345 = and i128 %and60.i.344, 72056494526300160
  %add.i.364 = add nsw i128 %mul8.i.414, -170141183460469231694793815568464969216
  %sub.i.372 = sub i128 %add.i.364, %add14.i.319
  %add.i.310 = sub i128 %sub.i.372, %conv2.i.441
  %sub43.i.336 = sub i128 %add.i.310, %conv.i.371
  %sub66.i.347 = sub i128 %sub43.i.336, %shr51.i.340
  %shr68.i.348 = lshr i128 %sub66.i.347, 56
  %add2.i.366 = add nuw i128 %mul13.i.416, 170141183460469229407360958681508216320
  %sub12.i = sub i128 %add2.i.366, %mul49.i.436
  %add3.i.312 = add i128 %sub12.i, %shl38.i.334
  %sub31.i.330 = sub i128 %add3.i.312, %conv7.i.444
  %add40.i.335 = sub i128 %sub31.i.330, %conv10.i.374
  %add63.i.346 = add i128 %add40.i.335, %shl61.i.345
  %add70.i.349 = add i128 %add63.i.346, %shr68.i.348
  %shr75.i.352 = lshr i128 %add70.i.349, 56
  %add77.i.353 = add nuw nsw i128 %add58.i.343, %shr75.i.352
  %44 = insertelement <2 x i128> undef, i128 %sub66.i.347, i32 0
  %45 = insertelement <2 x i128> %44, i128 %add70.i.349, i32 1
  %46 = trunc <2 x i128> %45 to <2 x i64>
  %47 = and <2 x i64> %46, <i64 72057594037927935, i64 72057594037927935>
  %shr83.i.357 = lshr i128 %add77.i.353, 56
  %add85.i.358 = add nuw nsw i128 %shr83.i.357, %and54.i.341
  %add77.tr.i.359 = trunc i128 %add77.i.353 to i64
  %conv88.i.360 = and i64 %add77.tr.i.359, 72057594037927935
  %conv91.i.362 = trunc i128 %add85.i.358 to i64
  %add.i.298 = add nuw nsw i64 %conv.i.526, 288230376151711748
  %add2.i.300 = add nuw nsw i64 %conv80.i.530, 288225978105200636
  %add4.i.302 = add nuw nsw i64 %conv88.i.535, 288230376151711740
  %add6.i.304 = add nuw nsw i64 %conv91.i.537, 288230376151711740
  %48 = extractelement <2 x i64> %47, i32 0
  %sub.i.305 = sub nsw i64 %add.i.298, %48
  %49 = extractelement <2 x i64> %47, i32 1
  %sub11.i = sub nsw i64 %add2.i.300, %49
  %sub14.i = sub nsw i64 %add4.i.302, %conv88.i.360
  %sub17.i.309 = sub i64 %add6.i.304, %conv91.i.362
  %conv2.i = zext i64 %sub.i.305 to i128
  %mul.i.286 = mul nuw nsw i128 %conv2.i, %conv.i.413
  %conv7.i = zext i64 %sub11.i to i128
  %mul8.i.288 = mul nuw nsw i128 %conv7.i, %conv.i.413
  %mul13.i.290 = mul nuw nsw i128 %conv2.i, %conv20.i.420
  %conv18.i = zext i64 %sub14.i to i128
  %mul19.i = mul nuw nsw i128 %conv18.i, %conv.i.413
  %mul24.i = mul nuw nsw i128 %conv7.i, %conv20.i.420
  %mul30.i = mul nuw nsw i128 %conv2.i, %conv40.i.432
  %conv36.i = zext i64 %sub17.i.309 to i128
  %mul37.i = mul nuw nsw i128 %conv36.i, %conv.i.413
  %mul42.i = mul nuw nsw i128 %conv18.i, %conv20.i.420
  %mul48.i = mul nuw nsw i128 %conv7.i, %conv40.i.432
  %mul54.i = mul nuw nsw i128 %conv2.i, %add85.i.1279
  %mul61.i = mul nuw nsw i128 %conv36.i, %conv20.i.420
  %mul66.i = mul nuw nsw i128 %conv18.i, %conv40.i.432
  %mul72.i = mul nuw nsw i128 %conv7.i, %add85.i.1279
  %mul79.i = mul nuw nsw i128 %conv36.i, %conv40.i.432
  %mul84.i = mul nuw nsw i128 %conv18.i, %add85.i.1279
  %mul91.i = mul nuw nsw i128 %conv36.i, %add85.i.1279
  %add.i.277 = or i128 %mul.i.286, 1329227995784915872903807060280344576
  %add85.i.481.neg = sub nsw i128 1329227995784915854457062986570792960, %mul84.i.480
  %add85.i.296 = sub nsw i128 %add85.i.481.neg, %mul79.i.479
  %add10.i = add i128 %add85.i.296, %mul84.i
  %sub29.i = add i128 %add10.i, %mul79.i
  %add12.i = sub nsw i128 1329227995784915854457062986570792960, %mul91.i.483
  %sub32.i = add i128 %add12.i, %mul91.i
  %shr.i = lshr i128 %sub32.i, 16
  %add67.i.475.neg = sub nsw i128 1329207713375312202786639039319506944, %mul72.i.476
  %add73.i.477.neg = sub nsw i128 %add67.i.475.neg, %mul66.i.474
  %add67.i = sub nsw i128 %add73.i.477.neg, %mul61.i.473
  %add73.i = add i128 %add67.i, %mul72.i
  %add8.i = add i128 %add73.i, %mul66.i
  %sub26.i = add i128 %add8.i, %mul61.i
  %add14.i = add i128 %sub26.i, %shr.i
  %and.i.274 = shl i128 %sub32.i, 40
  %shl.i = and i128 %and.i.274, 72056494526300160
  %shr21.i = lshr i128 %sub29.i, 16
  %and25.i = shl i128 %sub29.i, 40
  %shl26.i = and i128 %and25.i, 72056494526300160
  %shr33.i = lshr i128 %add14.i, 16
  %add31.i.459.neg = sub nuw i128 -168811955464684318238413482164135919616, %mul30.i.458
  %add25.i = sub i128 %add31.i.459.neg, %mul24.i.454
  %add31.i = sub i128 %add25.i, %mul19.i.453
  %add4.i = add i128 %add31.i, %mul30.i
  %sub20.i = add i128 %add4.i, %mul24.i
  %add6.i = add i128 %sub20.i, %mul19.i
  %sub.i.275 = sub i128 %add6.i, %sub32.i
  %add28.i = add i128 %sub.i.275, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %shr45.i = lshr i128 %add35.i, 56
  %add43.i.465.neg = sub nsw i128 1329227995784915872903807060280344576, %mul54.i.470
  %add49.i.467.neg = sub nsw i128 %add43.i.465.neg, %mul48.i.466
  %add55.i.471.neg = sub nsw i128 %add49.i.467.neg, %mul42.i.464
  %add43.i = sub nsw i128 %add55.i.471.neg, %mul37.i.463
  %add49.i = add i128 %add43.i, %mul54.i
  %add55.i = add i128 %add49.i, %mul48.i
  %add6.i.281 = add i128 %add55.i, %mul42.i
  %sub23.i = add i128 %add6.i.281, %mul37.i
  %add17.i = add i128 %sub23.i, %shl.i
  %add23.i = add i128 %add17.i, %shr21.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %sub.i.283 = sub nuw i128 -170141183460469231731687303715884072960, %mul.i.442
  %add.i.271 = add i128 %sub.i.283, %add.i.277
  %sub43.i = sub i128 %add.i.271, %add14.i
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add.i.291 = sub nuw i128 -168811955464684318238449510961154883584, %mul13.i.448
  %add2.i = sub i128 %add.i.291, %mul8.i.445
  %sub17.i = add i128 %add2.i, %mul13.i.290
  %add3.i = add i128 %sub17.i, %mul8.i.288
  %sub31.i = sub i128 %add3.i, %sub29.i
  %add40.i = add i128 %sub31.i, %shl38.i
  %add63.i = add i128 %add40.i, %shl61.i
  %add70.i = add i128 %add63.i, %shr68.i
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %50 = insertelement <2 x i128> undef, i128 %sub66.i, i32 0
  %51 = insertelement <2 x i128> %50, i128 %add70.i, i32 1
  %52 = trunc <2 x i128> %51 to <2 x i64>
  %53 = and <2 x i64> %52, <i64 72057594037927935, i64 72057594037927935>
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %conv91.i = trunc i128 %add85.i to i64
  %sub.i.252 = ashr i64 %or3356.i.1062, 63
  %54 = bitcast i64* %x2 to <2 x i64>*
  %55 = load <2 x i64>, <2 x i64>* %54, align 8, !tbaa !14
  %56 = xor <2 x i64> %55, %47
  %57 = insertelement <2 x i64> undef, i64 %sub.i.252, i32 0
  %58 = insertelement <2 x i64> %57, i64 %sub.i.252, i32 1
  %59 = and <2 x i64> %58, %56
  %60 = xor <2 x i64> %59, %47
  %61 = bitcast i64* %arrayidx17.i.1197 to <2 x i64>*
  %62 = load <2 x i64>, <2 x i64>* %61, align 8, !tbaa !14
  %63 = insertelement <2 x i64> undef, i64 %conv88.i.360, i32 0
  %64 = insertelement <2 x i64> %63, i64 %conv91.i.362, i32 1
  %65 = xor <2 x i64> %62, %64
  %66 = and <2 x i64> %58, %65
  %67 = xor <2 x i64> %66, %64
  %sub.i.233 = ashr i64 %or3356.i, 63
  %68 = bitcast i64* %x1 to <2 x i64>*
  %69 = load <2 x i64>, <2 x i64>* %68, align 8, !tbaa !14
  %70 = xor <2 x i64> %69, %60
  %71 = insertelement <2 x i64> undef, i64 %sub.i.233, i32 0
  %72 = insertelement <2 x i64> %71, i64 %sub.i.233, i32 1
  %73 = and <2 x i64> %72, %70
  %74 = xor <2 x i64> %73, %60
  %arrayidx.2.i.242 = getelementptr inbounds i64, i64* %x1, i64 2
  %75 = bitcast i64* %arrayidx.2.i.242 to <2 x i64>*
  %76 = load <2 x i64>, <2 x i64>* %75, align 8, !tbaa !14
  %77 = xor <2 x i64> %76, %67
  %78 = and <2 x i64> %72, %77
  %79 = xor <2 x i64> %78, %67
  %80 = bitcast i64* %y2 to <2 x i64>*
  %81 = load <2 x i64>, <2 x i64>* %80, align 8, !tbaa !14
  %82 = xor <2 x i64> %81, %53
  %83 = and <2 x i64> %58, %82
  %84 = xor <2 x i64> %83, %53
  %85 = bitcast i64* %arrayidx17.i.1314 to <2 x i64>*
  %86 = load <2 x i64>, <2 x i64>* %85, align 8, !tbaa !14
  %87 = insertelement <2 x i64> undef, i64 %conv88.i, i32 0
  %88 = insertelement <2 x i64> %87, i64 %conv91.i, i32 1
  %89 = xor <2 x i64> %86, %88
  %90 = and <2 x i64> %58, %89
  %91 = xor <2 x i64> %90, %88
  %92 = bitcast i64* %y1 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !14
  %94 = xor <2 x i64> %93, %84
  %95 = and <2 x i64> %72, %94
  %96 = xor <2 x i64> %95, %84
  %arrayidx.2.i.204 = getelementptr inbounds i64, i64* %y1, i64 2
  %97 = bitcast i64* %arrayidx.2.i.204 to <2 x i64>*
  %98 = load <2 x i64>, <2 x i64>* %97, align 8, !tbaa !14
  %99 = xor <2 x i64> %98, %91
  %100 = and <2 x i64> %72, %99
  %101 = xor <2 x i64> %100, %91
  %102 = load i64, i64* %z2, align 8, !tbaa !14
  %103 = load i64, i64* %arrayidx1.i.1033.pre-phi, align 8, !tbaa !14
  %104 = insertelement <2 x i64> undef, i64 %102, i32 0
  %105 = insertelement <2 x i64> %104, i64 %103, i32 1
  %106 = xor <2 x i64> %105, %43
  %107 = and <2 x i64> %58, %106
  %108 = xor <2 x i64> %107, %43
  %109 = load i64, i64* %arrayidx2.i.1034.pre-phi, align 8, !tbaa !14
  %xor.2.i.187 = xor i64 %109, %conv88.i.825
  %and.2.i.188 = and i64 %xor.2.i.187, %sub.i.252
  %xor5.2.i.189 = xor i64 %and.2.i.188, %conv88.i.825
  %110 = load i64, i64* %arrayidx4.i.1035.pre-phi, align 8, !tbaa !14
  %xor.3.i.192 = xor i64 %110, %conv91.i.827
  %and.3.i.193 = and i64 %xor.3.i.192, %sub.i.252
  %xor5.3.i.194 = xor i64 %and.3.i.193, %conv91.i.827
  %111 = bitcast i64* %z1 to <2 x i64>*
  %112 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !14
  %113 = xor <2 x i64> %112, %108
  %114 = and <2 x i64> %72, %113
  %115 = xor <2 x i64> %114, %108
  %116 = load i64, i64* %arrayidx3.i.1504, align 8, !tbaa !14
  %xor.2.i = xor i64 %116, %xor5.2.i.189
  %and.2.i = and i64 %xor.2.i, %sub.i.233
  %xor5.2.i = xor i64 %and.2.i, %xor5.2.i.189
  %117 = load i64, i64* %arrayidx25.i.1517, align 8, !tbaa !14
  %xor.3.i = xor i64 %117, %xor5.3.i.194
  %and.3.i = and i64 %xor.3.i, %sub.i.233
  %xor5.3.i = xor i64 %and.3.i, %xor5.3.i.194
  %118 = bitcast i64* %x3 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %118, align 8, !tbaa !14
  %arrayidx5.i.173 = getelementptr inbounds i64, i64* %x3, i64 2
  %119 = bitcast i64* %arrayidx5.i.173 to <2 x i64>*
  store <2 x i64> %79, <2 x i64>* %119, align 8, !tbaa !14
  %120 = bitcast i64* %y3 to <2 x i64>*
  store <2 x i64> %96, <2 x i64>* %120, align 8, !tbaa !14
  %arrayidx5.i.167 = getelementptr inbounds i64, i64* %y3, i64 2
  %121 = bitcast i64* %arrayidx5.i.167 to <2 x i64>*
  store <2 x i64> %101, <2 x i64>* %121, align 8, !tbaa !14
  %122 = bitcast i64* %z3 to <2 x i64>*
  store <2 x i64> %115, <2 x i64>* %122, align 8, !tbaa !14
  %arrayidx5.i = getelementptr inbounds i64, i64* %z3, i64 2
  store i64 %xor5.2.i, i64* %arrayidx5.i, align 8, !tbaa !14
  %arrayidx7.i = getelementptr inbounds i64, i64* %z3, i64 3
  store i64 %xor5.3.i, i64* %arrayidx7.i, align 8, !tbaa !14
  br label %cleanup

cleanup:                                          ; preds = %if.end.62, %if.then.53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_double(i64* nocapture %x_out, i64* nocapture %y_out, i64* nocapture %z_out, i64* nocapture readonly %x_in, i64* nocapture readonly %y_in, i64* nocapture readonly %z_in) #1 {
entry:
  %0 = load i64, i64* %x_in, align 8, !tbaa !14
  %arrayidx2.i = getelementptr inbounds i64, i64* %x_in, i64 1
  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !14
  %arrayidx4.i = getelementptr inbounds i64, i64* %x_in, i64 2
  %2 = load i64, i64* %arrayidx4.i, align 8, !tbaa !14
  %arrayidx6.i = getelementptr inbounds i64, i64* %x_in, i64 3
  %3 = load i64, i64* %arrayidx6.i, align 8, !tbaa !14
  %4 = load i64, i64* %z_in, align 8, !tbaa !14
  %mul.i.726 = shl i64 %4, 1
  %arrayidx1.i.727 = getelementptr inbounds i64, i64* %z_in, i64 1
  %5 = load i64, i64* %arrayidx1.i.727, align 8, !tbaa !14
  %mul2.i.728 = shl i64 %5, 1
  %arrayidx3.i.729 = getelementptr inbounds i64, i64* %z_in, i64 2
  %6 = load i64, i64* %arrayidx3.i.729, align 8, !tbaa !14
  %mul4.i.730 = shl i64 %6, 1
  %conv.i.731 = zext i64 %4 to i128
  %mul8.i.732 = mul nuw i128 %conv.i.731, %conv.i.731
  %conv12.i.733 = zext i64 %mul2.i.728 to i128
  %mul13.i.734 = mul nuw i128 %conv12.i.733, %conv.i.731
  %conv17.i.736 = zext i64 %mul4.i.730 to i128
  %mul18.i.737 = mul nuw i128 %conv17.i.736, %conv.i.731
  %conv20.i.738 = zext i64 %5 to i128
  %mul23.i.739 = mul nuw i128 %conv20.i.738, %conv20.i.738
  %arrayidx25.i.742 = getelementptr inbounds i64, i64* %z_in, i64 3
  %7 = load i64, i64* %arrayidx25.i.742, align 8, !tbaa !14
  %conv26.i.743 = zext i64 %7 to i128
  %conv27.i.744 = zext i64 %mul.i.726 to i128
  %mul28.i.745 = mul nuw i128 %conv26.i.743, %conv27.i.744
  %mul32.i.746 = mul nuw i128 %conv17.i.736, %conv20.i.738
  %add33.i.747 = add i128 %mul32.i.746, %mul28.i.745
  %mul38.i.749 = mul nuw i128 %conv26.i.743, %conv12.i.733
  %conv40.i.750 = zext i64 %6 to i128
  %mul43.i.751 = mul nuw i128 %conv40.i.750, %conv40.i.750
  %add44.i.752 = add i128 %mul38.i.749, %mul43.i.751
  %mul49.i.754 = mul nuw i128 %conv26.i.743, %conv17.i.736
  %mul55.i.756 = mul nuw i128 %conv26.i.743, %conv26.i.743
  %add.i.672 = add i128 %mul8.i.732, -170141183460469231731687303715884072960
  %add3.i.674 = add i128 %mul13.i.734, 170141183460469229370468033484042534912
  %shr.i.680 = lshr i128 %mul55.i.756, 16
  %add14.i.681 = add i128 %add44.i.752, %shr.i.680
  %and.i.682 = shl i128 %mul55.i.756, 40
  %shl.i.683 = and i128 %and.i.682, 72056494526300160
  %shr21.i.687 = lshr i128 %mul49.i.754, 16
  %and25.i.689 = shl i128 %mul49.i.754, 40
  %shl26.i.690 = and i128 %and25.i.689, 72055395014672384
  %sub31.i.692 = sub i128 %add3.i.674, %mul49.i.754
  %shr33.i.693 = lshr i128 %add14.i.681, 16
  %add.i.740 = add i128 %mul23.i.739, 170141183460469229370504062281061498880
  %add6.i.676 = add i128 %add.i.740, %mul18.i.737
  %sub.i.685 = sub i128 %add6.i.676, %mul55.i.756
  %add28.i.691 = add i128 %sub.i.685, %shl26.i.690
  %add35.i.694 = add i128 %add28.i.691, %shr33.i.693
  %and37.i.695 = shl i128 %add14.i.681, 40
  %shl38.i.696 = and i128 %and37.i.695, 72056494526300160
  %add40.i.697 = add i128 %sub31.i.692, %shl38.i.696
  %sub43.i.698 = sub i128 %add.i.672, %add14.i.681
  %shr45.i.699 = lshr i128 %add35.i.694, 56
  %add17.i.684 = add i128 %add33.i.747, %shr21.i.687
  %add23.i.688 = add i128 %add17.i.684, %shl.i.683
  %add47.i.700 = add i128 %add23.i.688, %shr45.i.699
  %and49.i.701 = and i128 %add35.i.694, 72057594037927935
  %shr51.i.702 = lshr i128 %add47.i.700, 56
  %and54.i.703 = and i128 %add47.i.700, 72057594037927935
  %shr56.i.704 = lshr i128 %add47.i.700, 72
  %add58.i.705 = add nuw nsw i128 %shr56.i.704, %and49.i.701
  %and60.i.706 = shl nuw nsw i128 %shr51.i.702, 40
  %shl61.i.707 = and i128 %and60.i.706, 72056494526300160
  %add63.i.708 = add i128 %add40.i.697, %shl61.i.707
  %sub66.i.709 = sub i128 %sub43.i.698, %shr51.i.702
  %shr68.i.710 = lshr i128 %sub66.i.709, 56
  %add70.i.711 = add i128 %add63.i.708, %shr68.i.710
  %sub66.tr.i.712 = trunc i128 %sub66.i.709 to i64
  %conv.i.713 = and i64 %sub66.tr.i.712, 72057594037927935
  %shr75.i.714 = lshr i128 %add70.i.711, 56
  %add77.i.715 = add nuw nsw i128 %add58.i.705, %shr75.i.714
  %add70.tr.i.716 = trunc i128 %add70.i.711 to i64
  %conv80.i.717 = and i64 %add70.tr.i.716, 72057594037927935
  %shr83.i.719 = lshr i128 %add77.i.715, 56
  %add85.i.720 = add nuw nsw i128 %shr83.i.719, %and54.i.703
  %add77.tr.i.721 = trunc i128 %add77.i.715 to i64
  %conv88.i.722 = and i64 %add77.tr.i.721, 72057594037927935
  %conv91.i.724 = trunc i128 %add85.i.720 to i64
  %8 = load i64, i64* %y_in, align 8, !tbaa !14
  %mul.i.640 = shl i64 %8, 1
  %arrayidx1.i.641 = getelementptr inbounds i64, i64* %y_in, i64 1
  %9 = load i64, i64* %arrayidx1.i.641, align 8, !tbaa !14
  %mul2.i.642 = shl i64 %9, 1
  %arrayidx3.i.643 = getelementptr inbounds i64, i64* %y_in, i64 2
  %10 = load i64, i64* %arrayidx3.i.643, align 8, !tbaa !14
  %mul4.i.644 = shl i64 %10, 1
  %conv.i.645 = zext i64 %8 to i128
  %mul8.i.646 = mul nuw i128 %conv.i.645, %conv.i.645
  %conv12.i.647 = zext i64 %mul2.i.642 to i128
  %mul13.i.648 = mul nuw i128 %conv12.i.647, %conv.i.645
  %conv17.i.650 = zext i64 %mul4.i.644 to i128
  %mul18.i.651 = mul nuw i128 %conv17.i.650, %conv.i.645
  %conv20.i.652 = zext i64 %9 to i128
  %mul23.i.653 = mul nuw i128 %conv20.i.652, %conv20.i.652
  %arrayidx25.i.656 = getelementptr inbounds i64, i64* %y_in, i64 3
  %11 = load i64, i64* %arrayidx25.i.656, align 8, !tbaa !14
  %conv26.i.657 = zext i64 %11 to i128
  %conv27.i.658 = zext i64 %mul.i.640 to i128
  %mul28.i.659 = mul nuw i128 %conv26.i.657, %conv27.i.658
  %mul32.i.660 = mul nuw i128 %conv17.i.650, %conv20.i.652
  %add33.i.661 = add i128 %mul32.i.660, %mul28.i.659
  %mul38.i.663 = mul nuw i128 %conv26.i.657, %conv12.i.647
  %conv40.i.664 = zext i64 %10 to i128
  %mul43.i.665 = mul nuw i128 %conv40.i.664, %conv40.i.664
  %add44.i.666 = add i128 %mul38.i.663, %mul43.i.665
  %mul49.i.668 = mul nuw i128 %conv26.i.657, %conv17.i.650
  %mul55.i.670 = mul nuw i128 %conv26.i.657, %conv26.i.657
  %add.i.586 = add i128 %mul8.i.646, -170141183460469231731687303715884072960
  %add3.i.588 = add i128 %mul13.i.648, 170141183460469229370468033484042534912
  %shr.i.594 = lshr i128 %mul55.i.670, 16
  %add14.i.595 = add i128 %add44.i.666, %shr.i.594
  %and.i.596 = shl i128 %mul55.i.670, 40
  %shl.i.597 = and i128 %and.i.596, 72056494526300160
  %shr21.i.601 = lshr i128 %mul49.i.668, 16
  %and25.i.603 = shl i128 %mul49.i.668, 40
  %shl26.i.604 = and i128 %and25.i.603, 72055395014672384
  %sub31.i.606 = sub i128 %add3.i.588, %mul49.i.668
  %shr33.i.607 = lshr i128 %add14.i.595, 16
  %add.i.654 = add i128 %mul23.i.653, 170141183460469229370504062281061498880
  %add6.i.590 = add i128 %add.i.654, %mul18.i.651
  %sub.i.599 = sub i128 %add6.i.590, %mul55.i.670
  %add28.i.605 = add i128 %sub.i.599, %shl26.i.604
  %add35.i.608 = add i128 %add28.i.605, %shr33.i.607
  %and37.i.609 = shl i128 %add14.i.595, 40
  %shl38.i.610 = and i128 %and37.i.609, 72056494526300160
  %add40.i.611 = add i128 %sub31.i.606, %shl38.i.610
  %sub43.i.612 = sub i128 %add.i.586, %add14.i.595
  %shr45.i.613 = lshr i128 %add35.i.608, 56
  %add17.i.598 = add i128 %add33.i.661, %shr21.i.601
  %add23.i.602 = add i128 %add17.i.598, %shl.i.597
  %add47.i.614 = add i128 %add23.i.602, %shr45.i.613
  %and49.i.615 = and i128 %add35.i.608, 72057594037927935
  %shr51.i.616 = lshr i128 %add47.i.614, 56
  %and54.i.617 = and i128 %add47.i.614, 72057594037927935
  %shr56.i.618 = lshr i128 %add47.i.614, 72
  %add58.i.619 = add nuw nsw i128 %shr56.i.618, %and49.i.615
  %and60.i.620 = shl nuw nsw i128 %shr51.i.616, 40
  %shl61.i.621 = and i128 %and60.i.620, 72056494526300160
  %add63.i.622 = add i128 %add40.i.611, %shl61.i.621
  %sub66.i.623 = sub i128 %sub43.i.612, %shr51.i.616
  %shr68.i.624 = lshr i128 %sub66.i.623, 56
  %add70.i.625 = add i128 %add63.i.622, %shr68.i.624
  %sub66.tr.i.626 = trunc i128 %sub66.i.623 to i64
  %conv.i.627 = and i64 %sub66.tr.i.626, 72057594037927935
  %shr75.i.628 = lshr i128 %add70.i.625, 56
  %add77.i.629 = add nuw nsw i128 %add58.i.619, %shr75.i.628
  %add70.tr.i.630 = trunc i128 %add70.i.625 to i64
  %conv80.i.631 = and i64 %add70.tr.i.630, 72057594037927935
  %shr83.i.633 = lshr i128 %add77.i.629, 56
  %add85.i.634 = add nuw nsw i128 %shr83.i.633, %and54.i.617
  %add77.tr.i.635 = trunc i128 %add77.i.629 to i64
  %conv88.i.636 = and i64 %add77.tr.i.635, 72057594037927935
  %conv91.i.638 = trunc i128 %add85.i.634 to i64
  %conv.i.541 = zext i64 %0 to i128
  %conv2.i.542 = zext i64 %conv.i.627 to i128
  %mul.i.543 = mul nuw nsw i128 %conv2.i.542, %conv.i.541
  %conv7.i.545 = zext i64 %conv80.i.631 to i128
  %mul8.i.546 = mul nuw nsw i128 %conv7.i.545, %conv.i.541
  %conv10.i.548 = zext i64 %1 to i128
  %mul13.i.549 = mul nuw nsw i128 %conv2.i.542, %conv10.i.548
  %conv18.i.553 = zext i64 %conv88.i.636 to i128
  %mul19.i.554 = mul nuw nsw i128 %conv18.i.553, %conv.i.541
  %mul24.i.555 = mul nuw nsw i128 %conv7.i.545, %conv10.i.548
  %conv27.i.558 = zext i64 %2 to i128
  %mul30.i.559 = mul nuw nsw i128 %conv2.i.542, %conv27.i.558
  %mul37.i.564 = mul nuw nsw i128 %add85.i.634, %conv.i.541
  %mul42.i.565 = mul nuw nsw i128 %conv18.i.553, %conv10.i.548
  %mul48.i.567 = mul nuw nsw i128 %conv7.i.545, %conv27.i.558
  %conv51.i.570 = zext i64 %3 to i128
  %mul54.i.571 = mul nuw nsw i128 %conv2.i.542, %conv51.i.570
  %mul61.i.574 = mul nuw nsw i128 %add85.i.634, %conv10.i.548
  %mul66.i.575 = mul nuw nsw i128 %conv18.i.553, %conv27.i.558
  %mul72.i.577 = mul nuw nsw i128 %conv7.i.545, %conv51.i.570
  %mul79.i.580 = mul nuw nsw i128 %add85.i.634, %conv27.i.558
  %mul84.i.581 = mul nuw nsw i128 %conv18.i.553, %conv51.i.570
  %add85.i.582 = add nuw nsw i128 %mul84.i.581, %mul79.i.580
  %mul91.i.584 = mul nuw nsw i128 %add85.i.634, %conv51.i.570
  %add.i.487 = add nsw i128 %mul.i.543, -170141183460469231731687303715884072960
  %shr.i.495 = lshr i128 %mul91.i.584, 16
  %add67.i.576 = add nuw nsw i128 %mul61.i.574, %mul72.i.577
  %add73.i.578 = add nuw i128 %add67.i.576, %mul66.i.575
  %add14.i.496 = add i128 %add73.i.578, %shr.i.495
  %and.i.497 = shl i128 %mul91.i.584, 40
  %shl.i.498 = and i128 %and.i.497, 72056494526300160
  %shr21.i.502 = lshr i128 %add85.i.582, 16
  %and25.i.504 = shl i128 %add85.i.582, 40
  %shl26.i.505 = and i128 %and25.i.504, 72056494526300160
  %shr33.i.508 = lshr i128 %add14.i.496, 16
  %add25.i.556 = add nuw i128 %mul30.i.559, 170141183460469229370504062281061498880
  %add31.i.560 = add i128 %add25.i.556, %mul24.i.555
  %add6.i.491 = sub i128 %add31.i.560, %mul91.i.584
  %sub.i.500 = add i128 %add6.i.491, %mul19.i.554
  %add28.i.506 = add i128 %sub.i.500, %shl26.i.505
  %add35.i.509 = add i128 %add28.i.506, %shr33.i.508
  %and37.i.510 = shl i128 %add14.i.496, 40
  %shl38.i.511 = and i128 %and37.i.510, 72056494526300160
  %sub43.i.513 = sub i128 %add.i.487, %add14.i.496
  %shr45.i.514 = lshr i128 %add35.i.509, 56
  %add43.i.566 = add nuw nsw i128 %mul48.i.567, %mul54.i.571
  %add49.i.568 = add nuw nsw i128 %add43.i.566, %mul37.i.564
  %add55.i.572 = add nuw i128 %add49.i.568, %mul42.i.565
  %add17.i.499 = add i128 %add55.i.572, %shl.i.498
  %add23.i.503 = add i128 %add17.i.499, %shr21.i.502
  %add47.i.515 = add i128 %add23.i.503, %shr45.i.514
  %and49.i.516 = and i128 %add35.i.509, 72057594037927935
  %shr51.i.517 = lshr i128 %add47.i.515, 56
  %and54.i.518 = and i128 %add47.i.515, 72057594037927935
  %shr56.i.519 = lshr i128 %add47.i.515, 72
  %add58.i.520 = add nuw nsw i128 %shr56.i.519, %and49.i.516
  %and60.i.521 = shl nuw nsw i128 %shr51.i.517, 40
  %shl61.i.522 = and i128 %and60.i.521, 72056494526300160
  %sub66.i.524 = sub i128 %sub43.i.513, %shr51.i.517
  %shr68.i.525 = lshr i128 %sub66.i.524, 56
  %add.i.550 = add nuw i128 %mul13.i.549, 170141183460469229370468033484042534912
  %add3.i.489 = add i128 %add.i.550, %mul8.i.546
  %sub31.i.507 = sub i128 %add3.i.489, %add85.i.582
  %add40.i.512 = add i128 %sub31.i.507, %shl38.i.511
  %add63.i.523 = add i128 %add40.i.512, %shl61.i.522
  %add70.i.526 = add i128 %add63.i.523, %shr68.i.525
  %sub66.tr.i.527 = trunc i128 %sub66.i.524 to i64
  %conv.i.528 = and i64 %sub66.tr.i.527, 72057594037927935
  %shr75.i.529 = lshr i128 %add70.i.526, 56
  %add77.i.530 = add nuw nsw i128 %add58.i.520, %shr75.i.529
  %add70.tr.i.531 = trunc i128 %add70.i.526 to i64
  %conv80.i.532 = and i64 %add70.tr.i.531, 72057594037927935
  %shr83.i.534 = lshr i128 %add77.i.530, 56
  %add85.i.535 = add nuw nsw i128 %shr83.i.534, %and54.i.518
  %add77.tr.i.536 = trunc i128 %add77.i.530 to i64
  %conv88.i.537 = and i64 %add77.tr.i.536, 72057594037927935
  %conv91.i.539 = trunc i128 %add85.i.535 to i64
  %add.i.473 = add i64 %0, 288230376151711748
  %add2.i.475 = add i64 %1, 288225978105200636
  %add4.i.477 = add i64 %2, 288230376151711740
  %add6.i.479 = add i64 %3, 288230376151711740
  %sub.i.480 = sub i64 %add.i.473, %conv.i.713
  %sub11.i.482 = sub i64 %add2.i.475, %conv80.i.717
  %sub14.i.484 = sub i64 %add4.i.477, %conv88.i.722
  %sub17.i.486 = sub i64 %add6.i.479, %conv91.i.724
  %add.i.463 = add i64 %conv.i.713, %0
  %add4.i.466 = add i64 %conv80.i.717, %1
  %add7.i.469 = add i64 %conv88.i.722, %2
  %add10.i.472 = add i64 %conv91.i.724, %3
  %mul.i.456 = mul i64 %add.i.463, 3
  %mul2.i.458 = mul i64 %add4.i.466, 3
  %mul4.i.460 = mul i64 %add7.i.469, 3
  %mul6.i.462 = mul i64 %add10.i.472, 3
  %conv.i.411 = zext i64 %sub.i.480 to i128
  %conv2.i.412 = zext i64 %mul.i.456 to i128
  %mul.i.413 = mul nuw i128 %conv2.i.412, %conv.i.411
  %conv7.i.415 = zext i64 %mul2.i.458 to i128
  %mul8.i.416 = mul nuw i128 %conv7.i.415, %conv.i.411
  %conv10.i.418 = zext i64 %sub11.i.482 to i128
  %mul13.i.419 = mul nuw i128 %conv10.i.418, %conv2.i.412
  %conv18.i.423 = zext i64 %mul4.i.460 to i128
  %mul19.i.424 = mul nuw i128 %conv18.i.423, %conv.i.411
  %mul24.i.425 = mul nuw i128 %conv7.i.415, %conv10.i.418
  %conv27.i.428 = zext i64 %sub14.i.484 to i128
  %mul30.i.429 = mul nuw i128 %conv27.i.428, %conv2.i.412
  %conv36.i.433 = zext i64 %mul6.i.462 to i128
  %mul37.i.434 = mul nuw i128 %conv36.i.433, %conv.i.411
  %mul42.i.435 = mul nuw i128 %conv18.i.423, %conv10.i.418
  %mul48.i.437 = mul nuw i128 %conv27.i.428, %conv7.i.415
  %conv51.i.440 = zext i64 %sub17.i.486 to i128
  %mul54.i.441 = mul nuw i128 %conv51.i.440, %conv2.i.412
  %mul61.i.444 = mul nuw i128 %conv36.i.433, %conv10.i.418
  %mul66.i.445 = mul nuw i128 %conv18.i.423, %conv27.i.428
  %mul72.i.447 = mul nuw i128 %conv51.i.440, %conv7.i.415
  %mul79.i.450 = mul nuw i128 %conv36.i.433, %conv27.i.428
  %mul84.i.451 = mul nuw i128 %conv18.i.423, %conv51.i.440
  %add85.i.452 = add i128 %mul79.i.450, %mul84.i.451
  %mul91.i.454 = mul nuw i128 %conv36.i.433, %conv51.i.440
  %add.i.357 = add i128 %mul.i.413, -170141183460469231731687303715884072960
  %shr.i.365 = lshr i128 %mul91.i.454, 16
  %add67.i.446 = add i128 %mul72.i.447, %mul66.i.445
  %add73.i.448 = add i128 %add67.i.446, %mul61.i.444
  %add14.i.366 = add i128 %add73.i.448, %shr.i.365
  %and.i.367 = shl i128 %mul91.i.454, 40
  %shl.i.368 = and i128 %and.i.367, 72056494526300160
  %shr21.i.372 = lshr i128 %add85.i.452, 16
  %and25.i.374 = shl i128 %add85.i.452, 40
  %shl26.i.375 = and i128 %and25.i.374, 72056494526300160
  %shr33.i.378 = lshr i128 %add14.i.366, 16
  %add25.i.426 = add i128 %mul24.i.425, 170141183460469229370504062281061498880
  %add31.i.430 = add i128 %add25.i.426, %mul30.i.429
  %add6.i.361 = add i128 %add31.i.430, %mul19.i.424
  %sub.i.370 = sub i128 %add6.i.361, %mul91.i.454
  %add28.i.376 = add i128 %sub.i.370, %shl26.i.375
  %add35.i.379 = add i128 %add28.i.376, %shr33.i.378
  %and37.i.380 = shl i128 %add14.i.366, 40
  %shl38.i.381 = and i128 %and37.i.380, 72056494526300160
  %sub43.i.383 = sub i128 %add.i.357, %add14.i.366
  %shr45.i.384 = lshr i128 %add35.i.379, 56
  %add43.i.436 = add i128 %mul42.i.435, %mul48.i.437
  %add49.i.438 = add i128 %add43.i.436, %mul54.i.441
  %add55.i.442 = add i128 %add49.i.438, %mul37.i.434
  %add17.i.369 = add i128 %add55.i.442, %shl.i.368
  %add23.i.373 = add i128 %add17.i.369, %shr21.i.372
  %add47.i.385 = add i128 %add23.i.373, %shr45.i.384
  %and49.i.386 = and i128 %add35.i.379, 72057594037927935
  %shr51.i.387 = lshr i128 %add47.i.385, 56
  %and54.i.388 = and i128 %add47.i.385, 72057594037927935
  %shr56.i.389 = lshr i128 %add47.i.385, 72
  %add58.i.390 = add nuw nsw i128 %shr56.i.389, %and49.i.386
  %and60.i.391 = shl nuw nsw i128 %shr51.i.387, 40
  %shl61.i.392 = and i128 %and60.i.391, 72056494526300160
  %sub66.i.394 = sub i128 %sub43.i.383, %shr51.i.387
  %shr68.i.395 = lshr i128 %sub66.i.394, 56
  %add.i.420 = add i128 %mul13.i.419, 170141183460469229370468033484042534912
  %add3.i.359 = add i128 %add.i.420, %mul8.i.416
  %sub31.i.377 = sub i128 %add3.i.359, %add85.i.452
  %add40.i.382 = add i128 %sub31.i.377, %shl38.i.381
  %add63.i.393 = add i128 %add40.i.382, %shl61.i.392
  %add70.i.396 = add i128 %add63.i.393, %shr68.i.395
  %sub66.tr.i.397 = trunc i128 %sub66.i.394 to i64
  %conv.i.398 = and i64 %sub66.tr.i.397, 72057594037927935
  %shr75.i.399 = lshr i128 %add70.i.396, 56
  %add77.i.400 = add nuw nsw i128 %add58.i.390, %shr75.i.399
  %add70.tr.i.401 = trunc i128 %add70.i.396 to i64
  %conv80.i.402 = and i64 %add70.tr.i.401, 72057594037927935
  %shr83.i.404 = lshr i128 %add77.i.400, 56
  %add85.i.405 = add nuw nsw i128 %shr83.i.404, %and54.i.388
  %add77.tr.i.406 = trunc i128 %add77.i.400 to i64
  %conv88.i.407 = and i64 %add77.tr.i.406, 72057594037927935
  %mul.i.325 = shl nuw nsw i64 %conv.i.398, 1
  %mul2.i.327 = shl nuw nsw i64 %conv80.i.402, 1
  %mul4.i.329 = shl nuw nsw i64 %conv88.i.407, 1
  %conv.i.330 = zext i64 %conv.i.398 to i128
  %mul8.i.331 = mul nuw nsw i128 %conv.i.330, %conv.i.330
  %conv12.i.332 = zext i64 %mul2.i.327 to i128
  %mul13.i.333 = mul nuw nsw i128 %conv12.i.332, %conv.i.330
  %conv17.i.335 = zext i64 %mul4.i.329 to i128
  %mul18.i.336 = mul nuw nsw i128 %conv17.i.335, %conv.i.330
  %conv20.i.337 = zext i64 %conv80.i.402 to i128
  %mul23.i.338 = mul nuw nsw i128 %conv20.i.337, %conv20.i.337
  %conv27.i.343 = zext i64 %mul.i.325 to i128
  %mul28.i.344 = mul nuw nsw i128 %add85.i.405, %conv27.i.343
  %mul32.i.345 = mul nuw nsw i128 %conv17.i.335, %conv20.i.337
  %mul38.i.348 = mul nuw nsw i128 %add85.i.405, %conv12.i.332
  %conv40.i.349 = zext i64 %conv88.i.407 to i128
  %mul43.i.350 = mul nuw nsw i128 %conv40.i.349, %conv40.i.349
  %add44.i.351 = add nuw nsw i128 %mul43.i.350, %mul38.i.348
  %mul49.i.353 = mul nuw nsw i128 %conv17.i.335, %add85.i.405
  %mul55.i.355 = mul nuw nsw i128 %add85.i.405, %add85.i.405
  %mul.i.312 = shl nuw nsw i64 %conv.i.528, 3
  %mul2.i.314 = shl nuw nsw i64 %conv80.i.532, 3
  %mul4.i.316 = shl nuw nsw i64 %conv88.i.537, 3
  %mul6.i.318 = shl nuw nsw i64 %conv91.i.539, 3
  %conv.i.301 = zext i64 %mul.i.312 to i128
  %conv10.i.304 = zext i64 %mul2.i.314 to i128
  %conv14.i.307 = zext i64 %mul4.i.316 to i128
  %conv18.i.310 = zext i64 %mul6.i.318 to i128
  %shr.i.248 = lshr i128 %mul55.i.355, 16
  %add14.i.249 = add nuw i128 %add44.i.351, %shr.i.248
  %and.i.250 = shl i128 %mul55.i.355, 40
  %shl.i.251 = and i128 %and.i.250, 72056494526300160
  %shr21.i.255 = lshr i128 %mul49.i.353, 16
  %and25.i.257 = shl i128 %mul49.i.353, 40
  %shl26.i.258 = and i128 %and25.i.257, 72055395014672384
  %shr33.i.261 = lshr i128 %add14.i.249, 16
  %add4.i.298 = add nuw i128 %mul23.i.338, 170141183460469229388950806354771050240
  %sub16.i.308 = sub i128 %add4.i.298, %mul55.i.355
  %add6.i.244 = add i128 %sub16.i.308, %mul18.i.336
  %sub.i.253 = sub i128 %add6.i.244, %conv14.i.307
  %add28.i.259 = add i128 %sub.i.253, %shl26.i.258
  %add35.i.262 = add i128 %add28.i.259, %shr33.i.261
  %and37.i.263 = shl i128 %add14.i.249, 40
  %shl38.i.264 = and i128 %and37.i.263, 72056494526300160
  %shr45.i.267 = lshr i128 %add35.i.262, 56
  %add33.i.346 = add nuw nsw i128 %mul28.i.344, 18446744073709551360
  %add6.i.300 = add nuw i128 %add33.i.346, %mul32.i.345
  %sub20.i.311 = add i128 %add6.i.300, %shl.i.251
  %add17.i.252 = add i128 %sub20.i.311, %shr21.i.255
  %add23.i.256 = sub i128 %add17.i.252, %conv18.i.310
  %add47.i.268 = add i128 %add23.i.256, %shr45.i.267
  %and49.i.269 = and i128 %add35.i.262, 72057594037927935
  %shr51.i.270 = lshr i128 %add47.i.268, 56
  %and54.i.271 = and i128 %add47.i.268, 72057594037927935
  %shr56.i.272 = lshr i128 %add47.i.268, 72
  %add58.i.273 = add nuw nsw i128 %shr56.i.272, %and49.i.269
  %and60.i.274 = shl nuw nsw i128 %shr51.i.270, 40
  %shl61.i.275 = and i128 %and60.i.274, 72056494526300160
  %sub.i.302 = add nsw i128 %mul8.i.331, -170141183460469231713240559642174521088
  %add.i.240 = sub nuw i128 %sub.i.302, %conv.i.301
  %sub43.i.266 = sub i128 %add.i.240, %add14.i.249
  %sub66.i.277 = sub i128 %sub43.i.266, %shr51.i.270
  %shr68.i.278 = lshr i128 %sub66.i.277, 56
  %sub12.i.305 = add nuw i128 %mul13.i.333, 170141183460469229388914496082775375616
  %add3.i.242 = sub i128 %sub12.i.305, %conv10.i.304
  %sub31.i.260 = sub i128 %add3.i.242, %mul49.i.353
  %add40.i.265 = add i128 %sub31.i.260, %shl38.i.264
  %add63.i.276 = add i128 %add40.i.265, %shl61.i.275
  %add70.i.279 = add i128 %add63.i.276, %shr68.i.278
  %sub66.tr.i.280 = trunc i128 %sub66.i.277 to i64
  %conv.i.281 = and i64 %sub66.tr.i.280, 72057594037927935
  store i64 %conv.i.281, i64* %x_out, align 8, !tbaa !14
  %shr75.i.282 = lshr i128 %add70.i.279, 56
  %add77.i.283 = add nuw nsw i128 %add58.i.273, %shr75.i.282
  %add70.tr.i.284 = trunc i128 %add70.i.279 to i64
  %conv80.i.285 = and i64 %add70.tr.i.284, 72057594037927935
  %arrayidx81.i.286 = getelementptr inbounds i64, i64* %x_out, i64 1
  store i64 %conv80.i.285, i64* %arrayidx81.i.286, align 8, !tbaa !14
  %shr83.i.287 = lshr i128 %add77.i.283, 56
  %add85.i.288 = add nuw nsw i128 %shr83.i.287, %and54.i.271
  %add77.tr.i.289 = trunc i128 %add77.i.283 to i64
  %conv88.i.290 = and i64 %add77.tr.i.289, 72057594037927935
  %arrayidx89.i.291 = getelementptr inbounds i64, i64* %x_out, i64 2
  store i64 %conv88.i.290, i64* %arrayidx89.i.291, align 8, !tbaa !14
  %conv91.i.292 = trunc i128 %add85.i.288 to i64
  %arrayidx92.i.293 = getelementptr inbounds i64, i64* %x_out, i64 3
  store i64 %conv91.i.292, i64* %arrayidx92.i.293, align 8, !tbaa !14
  %add.i.230 = add nuw nsw i64 %conv.i.627, %conv.i.713
  %add4.i.233 = add nuw nsw i64 %conv80.i.631, %conv80.i.717
  %add7.i.236 = add nuw nsw i64 %conv88.i.636, %conv88.i.722
  %add10.i.239 = add nuw nsw i64 %conv91.i.638, %conv91.i.724
  %12 = load i64, i64* %y_in, align 8, !tbaa !14
  %13 = load i64, i64* %arrayidx1.i.641, align 8, !tbaa !14
  %14 = load i64, i64* %arrayidx3.i.643, align 8, !tbaa !14
  %15 = load i64, i64* %arrayidx25.i.656, align 8, !tbaa !14
  %16 = load i64, i64* %z_in, align 8, !tbaa !14
  %add.i.215 = add i64 %16, %12
  %17 = load i64, i64* %arrayidx1.i.727, align 8, !tbaa !14
  %add4.i.218 = add i64 %17, %13
  %18 = load i64, i64* %arrayidx3.i.729, align 8, !tbaa !14
  %add7.i = add i64 %18, %14
  %19 = load i64, i64* %arrayidx25.i.742, align 8, !tbaa !14
  %add10.i.223 = add i64 %19, %15
  %mul.i.183 = shl i64 %add.i.215, 1
  %mul2.i.185 = shl i64 %add4.i.218, 1
  %mul4.i.187 = shl i64 %add7.i, 1
  %conv.i.188 = zext i64 %add.i.215 to i128
  %mul8.i.189 = mul nuw i128 %conv.i.188, %conv.i.188
  %conv12.i.190 = zext i64 %mul2.i.185 to i128
  %mul13.i.191 = mul nuw i128 %conv12.i.190, %conv.i.188
  %conv17.i.193 = zext i64 %mul4.i.187 to i128
  %mul18.i.194 = mul nuw i128 %conv17.i.193, %conv.i.188
  %conv20.i.195 = zext i64 %add4.i.218 to i128
  %mul23.i.196 = mul nuw i128 %conv20.i.195, %conv20.i.195
  %conv26.i.200 = zext i64 %add10.i.223 to i128
  %conv27.i.201 = zext i64 %mul.i.183 to i128
  %mul28.i.202 = mul nuw i128 %conv26.i.200, %conv27.i.201
  %mul32.i.203 = mul nuw i128 %conv17.i.193, %conv20.i.195
  %mul38.i.206 = mul nuw i128 %conv26.i.200, %conv12.i.190
  %conv40.i.207 = zext i64 %add7.i to i128
  %mul43.i.208 = mul nuw i128 %conv40.i.207, %conv40.i.207
  %add44.i.209 = add i128 %mul38.i.206, %mul43.i.208
  %mul49.i.211 = mul nuw i128 %conv26.i.200, %conv17.i.193
  %mul55.i.213 = mul nuw i128 %conv26.i.200, %conv26.i.200
  %conv.i.176 = zext i64 %add.i.230 to i128
  %conv10.i.179 = zext i64 %add4.i.233 to i128
  %conv14.i = zext i64 %add7.i.236 to i128
  %conv18.i.181 = zext i64 %add10.i.239 to i128
  %shr.i.123 = lshr i128 %mul55.i.213, 16
  %add14.i.124 = add i128 %add44.i.209, %shr.i.123
  %and.i.125 = shl i128 %mul55.i.213, 40
  %shl.i.126 = and i128 %and.i.125, 72056494526300160
  %shr21.i.130 = lshr i128 %mul49.i.211, 16
  %and25.i.132 = shl i128 %mul49.i.211, 40
  %shl26.i.133 = and i128 %and25.i.132, 72055395014672384
  %shr33.i.136 = lshr i128 %add14.i.124, 16
  %add4.i.173 = add i128 %mul23.i.196, 170141183460469229388950806354771050240
  %sub16.i = add i128 %add4.i.173, %mul18.i.194
  %add6.i.119 = sub i128 %sub16.i, %mul55.i.213
  %sub.i.128 = add i128 %add6.i.119, %shl26.i.133
  %add28.i.134 = add i128 %sub.i.128, %shr33.i.136
  %add35.i.137 = sub i128 %add28.i.134, %conv14.i
  %and37.i.138 = shl i128 %add14.i.124, 40
  %shl38.i.139 = and i128 %and37.i.138, 72056494526300160
  %shr45.i.142 = lshr i128 %add35.i.137, 56
  %add33.i.204 = add i128 %mul28.i.202, 18446744073709551360
  %add6.i.175 = add i128 %add33.i.204, %mul32.i.203
  %sub20.i.182 = add i128 %add6.i.175, %shr21.i.130
  %add17.i.127 = add i128 %sub20.i.182, %shl.i.126
  %add23.i.131 = sub i128 %add17.i.127, %conv18.i.181
  %add47.i.143 = add i128 %add23.i.131, %shr45.i.142
  %and49.i.144 = and i128 %add35.i.137, 72057594037927935
  %shr51.i.145 = lshr i128 %add47.i.143, 56
  %and54.i.146 = and i128 %add47.i.143, 72057594037927935
  %shr56.i.147 = lshr i128 %add47.i.143, 72
  %add58.i.148 = add nuw nsw i128 %shr56.i.147, %and49.i.144
  %and60.i.149 = shl nuw nsw i128 %shr51.i.145, 40
  %shl61.i.150 = and i128 %and60.i.149, 72056494526300160
  %sub.i.177 = add i128 %mul8.i.189, -170141183460469231713240559642174521088
  %add.i.115 = sub i128 %sub.i.177, %add14.i.124
  %sub43.i.141 = sub i128 %add.i.115, %conv.i.176
  %sub66.i.152 = sub i128 %sub43.i.141, %shr51.i.145
  %shr68.i.153 = lshr i128 %sub66.i.152, 56
  %sub12.i = add i128 %mul13.i.191, 170141183460469229388914496082775375616
  %add3.i.117 = sub i128 %sub12.i, %mul49.i.211
  %sub31.i.135 = add i128 %add3.i.117, %shl38.i.139
  %add40.i.140 = sub i128 %sub31.i.135, %conv10.i.179
  %add63.i.151 = add i128 %add40.i.140, %shl61.i.150
  %add70.i.154 = add i128 %add63.i.151, %shr68.i.153
  %sub66.tr.i.155 = trunc i128 %sub66.i.152 to i64
  %conv.i.156 = and i64 %sub66.tr.i.155, 72057594037927935
  store i64 %conv.i.156, i64* %z_out, align 8, !tbaa !14
  %shr75.i.157 = lshr i128 %add70.i.154, 56
  %add77.i.158 = add nuw nsw i128 %add58.i.148, %shr75.i.157
  %add70.tr.i.159 = trunc i128 %add70.i.154 to i64
  %conv80.i.160 = and i64 %add70.tr.i.159, 72057594037927935
  %arrayidx81.i.161 = getelementptr inbounds i64, i64* %z_out, i64 1
  store i64 %conv80.i.160, i64* %arrayidx81.i.161, align 8, !tbaa !14
  %shr83.i.162 = lshr i128 %add77.i.158, 56
  %add85.i.163 = add nuw nsw i128 %shr83.i.162, %and54.i.146
  %add77.tr.i.164 = trunc i128 %add77.i.158 to i64
  %conv88.i.165 = and i64 %add77.tr.i.164, 72057594037927935
  %arrayidx89.i.166 = getelementptr inbounds i64, i64* %z_out, i64 2
  store i64 %conv88.i.165, i64* %arrayidx89.i.166, align 8, !tbaa !14
  %conv91.i.167 = trunc i128 %add85.i.163 to i64
  %arrayidx92.i.168 = getelementptr inbounds i64, i64* %z_out, i64 3
  store i64 %conv91.i.167, i64* %arrayidx92.i.168, align 8, !tbaa !14
  %mul.i.109 = shl nuw nsw i64 %conv.i.528, 2
  %mul2.i.111 = shl nuw nsw i64 %conv80.i.532, 2
  %mul4.i.113 = shl nuw nsw i64 %conv88.i.537, 2
  %mul6.i = shl nuw nsw i64 %conv91.i.539, 2
  %20 = load i64, i64* %x_out, align 8, !tbaa !14
  %add.i.97 = sub i64 288230376151711748, %20
  %sub.i.104 = add i64 %add.i.97, %mul.i.109
  %21 = load i64, i64* %arrayidx81.i.286, align 8, !tbaa !14
  %add2.i.99 = sub i64 288225978105200636, %21
  %sub11.i = add i64 %add2.i.99, %mul2.i.111
  %22 = load i64, i64* %arrayidx89.i.291, align 8, !tbaa !14
  %add4.i.101 = sub i64 288230376151711740, %22
  %sub14.i = add i64 %add4.i.101, %mul4.i.113
  %23 = load i64, i64* %arrayidx92.i.293, align 8, !tbaa !14
  %add6.i.103 = sub i64 288230376151711740, %23
  %sub17.i.108 = add i64 %add6.i.103, %mul6.i
  %conv2.i = zext i64 %sub.i.104 to i128
  %mul.i.85 = mul nuw nsw i128 %conv2.i, %conv.i.330
  %conv7.i = zext i64 %sub11.i to i128
  %mul8.i.87 = mul nuw nsw i128 %conv7.i, %conv.i.330
  %mul13.i.89 = mul nuw nsw i128 %conv2.i, %conv20.i.337
  %conv18.i = zext i64 %sub14.i to i128
  %mul19.i = mul nuw nsw i128 %conv18.i, %conv.i.330
  %mul24.i = mul nuw nsw i128 %conv7.i, %conv20.i.337
  %mul30.i = mul nuw nsw i128 %conv40.i.349, %conv2.i
  %conv36.i = zext i64 %sub17.i.108 to i128
  %mul37.i = mul nuw nsw i128 %conv36.i, %conv.i.330
  %mul42.i = mul nuw nsw i128 %conv18.i, %conv20.i.337
  %mul48.i = mul nuw nsw i128 %conv7.i, %conv40.i.349
  %mul54.i = mul nuw nsw i128 %conv2.i, %add85.i.405
  %mul61.i = mul nuw nsw i128 %conv36.i, %conv20.i.337
  %mul66.i = mul nuw nsw i128 %conv18.i, %conv40.i.349
  %mul72.i = mul nuw nsw i128 %conv7.i, %add85.i.405
  %mul79.i = mul nuw nsw i128 %conv36.i, %conv40.i.349
  %mul84.i = mul nuw nsw i128 %conv18.i, %add85.i.405
  %mul91.i = mul nuw nsw i128 %conv36.i, %add85.i.405
  %mul.i.77 = shl nuw nsw i64 %conv.i.627, 1
  %mul2.i = shl nuw nsw i64 %conv80.i.631, 1
  %mul4.i = shl nuw nsw i64 %conv88.i.636, 1
  %conv12.i = zext i64 %mul2.i to i128
  %conv17.i = zext i64 %mul4.i to i128
  %mul18.i = mul nuw nsw i128 %conv17.i, %conv2.i.542
  %mul23.i = mul nuw nsw i128 %conv7.i.545, %conv7.i.545
  %add.i.82 = add nuw nsw i128 %mul18.i, %mul23.i
  %conv27.i = zext i64 %mul.i.77 to i128
  %mul28.i = mul nuw nsw i128 %add85.i.634, %conv27.i
  %mul32.i = mul nuw nsw i128 %conv17.i, %conv7.i.545
  %add33.i = add nuw nsw i128 %mul32.i, %mul28.i
  %mul38.i = mul nuw nsw i128 %add85.i.634, %conv12.i
  %mul43.i = mul nuw nsw i128 %conv18.i.553, %conv18.i.553
  %add44.i = add nuw nsw i128 %mul43.i, %mul38.i
  %mul8.i = shl nuw nsw i128 %conv2.i.542, 3
  %mul.i = mul nuw nsw i128 %mul8.i, %conv2.i.542
  %mul3.i = mul nuw nsw i128 %mul8.i, %conv12.i
  %mul5.i = shl nuw nsw i128 %add.i.82, 3
  %mul7.i = shl i128 %add33.i, 3
  %mul9.i = shl i128 %add44.i, 3
  %mul49.i = shl nuw nsw i128 %add85.i.634, 3
  %mul11.i = mul nuw nsw i128 %mul49.i, %conv17.i
  %mul13.i = mul nuw nsw i128 %mul49.i, %add85.i.634
  %add.i.65 = or i128 %mul.i.85, 1329227995784915872903807060280344576
  %add85.i.95 = sub nsw i128 1329227995784915854457062986570792960, %mul11.i
  %add10.i = add i128 %add85.i.95, %mul84.i
  %sub29.i = add i128 %add10.i, %mul79.i
  %add12.i = sub nsw i128 1329227995784915854457062986570792960, %mul13.i
  %sub32.i = add i128 %add12.i, %mul91.i
  %shr.i = lshr i128 %sub32.i, 16
  %add67.i = sub i128 1329207713375312202786639039319506944, %mul9.i
  %add73.i = add i128 %add67.i, %mul72.i
  %add8.i = add i128 %add73.i, %mul66.i
  %sub26.i = add i128 %add8.i, %mul61.i
  %add14.i = add i128 %sub26.i, %shr.i
  %and.i = shl i128 %sub32.i, 40
  %shl.i = and i128 %and.i, 72056494526300160
  %shr21.i = lshr i128 %sub29.i, 16
  %and25.i = shl i128 %sub29.i, 40
  %shl26.i = and i128 %and25.i, 72056494526300160
  %shr33.i = lshr i128 %add14.i, 16
  %add31.i = sub nuw i128 -168811955464684318238413482164135919616, %mul5.i
  %add4.i = add i128 %add31.i, %mul30.i
  %sub20.i = add i128 %add4.i, %mul24.i
  %add6.i = add i128 %sub20.i, %mul19.i
  %sub.i = sub i128 %add6.i, %sub32.i
  %add28.i = add i128 %sub.i, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %shr45.i = lshr i128 %add35.i, 56
  %add43.i = sub i128 1329227995784915872903807060280344576, %mul7.i
  %add49.i = add i128 %add43.i, %mul54.i
  %add55.i = add i128 %add49.i, %mul48.i
  %add6.i.68 = add i128 %add55.i, %mul42.i
  %sub23.i = add i128 %add6.i.68, %mul37.i
  %add17.i = add i128 %sub23.i, %shl.i
  %add23.i = add i128 %add17.i, %shr21.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %sub.i.70 = sub nuw i128 -170141183460469231731687303715884072960, %mul.i
  %add.i = add i128 %sub.i.70, %add.i.65
  %sub43.i = sub i128 %add.i, %add14.i
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add2.i = sub nuw i128 -168811955464684318238449510961154883584, %mul3.i
  %sub17.i = add nsw i128 %add2.i, %mul13.i.89
  %add3.i = add nsw i128 %sub17.i, %mul8.i.87
  %sub31.i = sub i128 %add3.i, %sub29.i
  %add40.i = add i128 %sub31.i, %shl38.i
  %add63.i = add i128 %add40.i, %shl61.i
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i, i64* %y_out, align 8, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds i64, i64* %y_out, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds i64, i64* %y_out, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !14
  %conv91.i = trunc i128 %add85.i to i64
  %arrayidx92.i = getelementptr inbounds i64, i64* %y_out, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @batch_mul(i64* nocapture %x_out, i64* nocapture %y_out, i64* nocapture %z_out, [28 x i8]* nocapture readonly %scalars, i32 %num_points, i8* readonly %g_scalar, i32 %mixed, [17 x [3 x [4 x i64]]]* nocapture readonly %pre_comp, [16 x [3 x [4 x i64]]]* nocapture readonly %g_pre_comp) #1 {
entry:
  %nq = alloca [3 x [4 x i64]], align 16
  %tmp = alloca [4 x [4 x i64]], align 16
  %sign = alloca i8, align 1
  %digit = alloca i8, align 1
  %cmp = icmp ne i8* %g_scalar, null
  %0 = bitcast [3 x [4 x i64]]* %nq to i8*
  call void @llvm.lifetime.start(i64 96, i8* %0) #4
  %1 = bitcast [4 x [4 x i64]]* %tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #4
  call void @llvm.lifetime.start(i64 1, i8* nonnull %sign) #4
  call void @llvm.lifetime.start(i64 1, i8* nonnull %digit) #4
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 96, i32 16, i1 false)
  %tobool = icmp ne i32 %num_points, 0
  %cond = select i1 %tobool, i32 220, i32 27
  %arraydecay39 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp, i64 1, i64 0
  %arraydecay40 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 0
  %arraydecay83 = getelementptr inbounds [16 x [3 x [4 x i64]]], [16 x [3 x [4 x i64]]]* %g_pre_comp, i64 0, i64 0
  %arraydecay86 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 0, i64 0
  %arraydecay88 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 1, i64 0
  %arraydecay90 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 2, i64 0
  %arraydecay98 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 0, i64 0
  %arraydecay100 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 1, i64 0
  %arraydecay102 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 2, i64 0
  %arraydecay168 = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 3, i64 0
  %arrayidx9.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 1, i64 1
  %arrayidx13.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 1, i64 2
  %arrayidx17.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 1, i64 3
  %arrayidx81.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 3, i64 1
  %arrayidx89.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 3, i64 2
  %arrayidx92.i.i = getelementptr inbounds [4 x [4 x i64]], [4 x [4 x i64]]* %tmp, i64 0, i64 3, i64 3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc.199
  %i.0462 = phi i32 [ %cond, %entry ], [ %dec, %for.inc.199 ]
  %skip.0461 = phi i32 [ 1, %entry ], [ %skip.5, %for.inc.199 ]
  %tobool6 = icmp ne i32 %skip.0461, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @point_double(i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp18 = icmp slt i32 %i.0462, 28
  %or.cond = and i1 %cmp, %cmp18
  br i1 %or.cond, label %if.then.20, label %if.end.103

if.then.20:                                       ; preds = %if.end
  %add = add nsw i32 %i.0462, 196
  %cmp.i = icmp ugt i32 %add, 223
  br i1 %cmp.i, label %get_bit.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.20
  %shr.i = lshr i32 %add, 3
  %idxprom.i = zext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i
  %2 = load i8, i8* %arrayidx.i, align 1, !tbaa !18
  %conv.i = zext i8 %2 to i32
  %and.i = and i32 %add, 7
  %shr1.i = lshr i32 %conv.i, %and.i
  %conv3.i = and i32 %shr1.i, 1
  br label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.20, %if.end.i
  %retval.0.i = phi i32 [ %conv3.i, %if.end.i ], [ 0, %if.then.20 ]
  %shl = shl nuw nsw i32 %retval.0.i, 3
  %add23 = add nsw i32 %i.0462, 140
  %cmp.i.291 = icmp ugt i32 %add23, 223
  br i1 %cmp.i.291, label %get_bit.exit302, label %if.end.i.300

if.end.i.300:                                     ; preds = %get_bit.exit
  %shr.i.292 = lshr i32 %add23, 3
  %idxprom.i.293 = zext i32 %shr.i.292 to i64
  %arrayidx.i.294 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.293
  %3 = load i8, i8* %arrayidx.i.294, align 1, !tbaa !18
  %conv.i.295 = zext i8 %3 to i32
  %and.i.296 = and i32 %add23, 7
  %shr1.i.297 = lshr i32 %conv.i.295, %and.i.296
  %conv3.i.299 = and i32 %shr1.i.297, 1
  br label %get_bit.exit302

get_bit.exit302:                                  ; preds = %get_bit.exit, %if.end.i.300
  %retval.0.i.301 = phi i32 [ %conv3.i.299, %if.end.i.300 ], [ 0, %get_bit.exit ]
  %shl26 = shl nuw nsw i32 %retval.0.i.301, 2
  %or274 = or i32 %shl26, %shl
  %add28 = add nsw i32 %i.0462, 84
  %cmp.i.304 = icmp ugt i32 %add28, 223
  br i1 %cmp.i.304, label %get_bit.exit315, label %if.end.i.313

if.end.i.313:                                     ; preds = %get_bit.exit302
  %shr.i.305 = lshr i32 %add28, 3
  %idxprom.i.306 = zext i32 %shr.i.305 to i64
  %arrayidx.i.307 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.306
  %4 = load i8, i8* %arrayidx.i.307, align 1, !tbaa !18
  %conv.i.308 = zext i8 %4 to i32
  %and.i.309 = and i32 %add28, 7
  %shr1.i.310 = lshr i32 %conv.i.308, %and.i.309
  %conv3.i.312 = and i32 %shr1.i.310, 1
  br label %get_bit.exit315

get_bit.exit315:                                  ; preds = %get_bit.exit302, %if.end.i.313
  %retval.0.i.314 = phi i32 [ %conv3.i.312, %if.end.i.313 ], [ 0, %get_bit.exit302 ]
  %shl31 = shl nuw nsw i32 %retval.0.i.314, 1
  %or33275 = or i32 %or274, %shl31
  %or33.451 = zext i32 %or33275 to i64
  %add34 = add nsw i32 %i.0462, 28
  %cmp.i.388 = icmp ugt i32 %add34, 223
  br i1 %cmp.i.388, label %get_bit.exit399, label %if.end.i.397

if.end.i.397:                                     ; preds = %get_bit.exit315
  %shr.i.389 = lshr i32 %add34, 3
  %idxprom.i.390 = zext i32 %shr.i.389 to i64
  %arrayidx.i.391 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.390
  %5 = load i8, i8* %arrayidx.i.391, align 1, !tbaa !18
  %conv.i.392 = zext i8 %5 to i32
  %and.i.393 = and i32 %add34, 7
  %shr1.i.394 = lshr i32 %conv.i.392, %and.i.393
  %shr1.tr.i.395 = zext i32 %shr1.i.394 to i64
  %conv3.i.396 = and i64 %shr1.tr.i.395, 1
  br label %get_bit.exit399

get_bit.exit399:                                  ; preds = %get_bit.exit315, %if.end.i.397
  %retval.0.i.398 = phi i64 [ %conv3.i.396, %if.end.i.397 ], [ 0, %get_bit.exit315 ]
  %or37 = or i64 %retval.0.i.398, %or33.451
  call fastcc void @select_point(i64 %or37, i32 16, [3 x [4 x i64]]* %arraydecay39, [4 x i64]* %arraydecay40)
  br i1 %tobool6, label %if.else, label %if.then.42

if.then.42:                                       ; preds = %get_bit.exit399
  call fastcc void @point_add(i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i32 1, i64* %arraydecay98, i64* %arraydecay100, i64* %arraydecay102)
  br label %if.end.61

if.else:                                          ; preds = %get_bit.exit399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 96, i32 16, i1 false)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.42
  %add62 = add nsw i32 %i.0462, 168
  %cmp.i.400 = icmp ugt i32 %add62, 223
  br i1 %cmp.i.400, label %get_bit.exit411, label %if.end.i.409

if.end.i.409:                                     ; preds = %if.end.61
  %shr.i.401 = lshr i32 %add62, 3
  %idxprom.i.402 = zext i32 %shr.i.401 to i64
  %arrayidx.i.403 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.402
  %6 = load i8, i8* %arrayidx.i.403, align 1, !tbaa !18
  %conv.i.404 = zext i8 %6 to i32
  %and.i.405 = and i32 %add62, 7
  %shr1.i.406 = lshr i32 %conv.i.404, %and.i.405
  %conv3.i.408 = and i32 %shr1.i.406, 1
  br label %get_bit.exit411

get_bit.exit411:                                  ; preds = %if.end.61, %if.end.i.409
  %retval.0.i.410 = phi i32 [ %conv3.i.408, %if.end.i.409 ], [ 0, %if.end.61 ]
  %shl65 = shl nuw nsw i32 %retval.0.i.410, 3
  %add67 = add nsw i32 %i.0462, 112
  %cmp.i.436 = icmp ugt i32 %add67, 223
  br i1 %cmp.i.436, label %get_bit.exit447, label %if.end.i.445

if.end.i.445:                                     ; preds = %get_bit.exit411
  %shr.i.437 = lshr i32 %add67, 3
  %idxprom.i.438 = zext i32 %shr.i.437 to i64
  %arrayidx.i.439 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.438
  %7 = load i8, i8* %arrayidx.i.439, align 1, !tbaa !18
  %conv.i.440 = zext i8 %7 to i32
  %and.i.441 = and i32 %add67, 7
  %shr1.i.442 = lshr i32 %conv.i.440, %and.i.441
  %conv3.i.444 = and i32 %shr1.i.442, 1
  br label %get_bit.exit447

get_bit.exit447:                                  ; preds = %get_bit.exit411, %if.end.i.445
  %retval.0.i.446 = phi i32 [ %conv3.i.444, %if.end.i.445 ], [ 0, %get_bit.exit411 ]
  %shl70 = shl nuw nsw i32 %retval.0.i.446, 2
  %or72276 = or i32 %shl70, %shl65
  %add73 = add nsw i32 %i.0462, 56
  %cmp.i.424 = icmp ugt i32 %add73, 223
  br i1 %cmp.i.424, label %get_bit.exit435, label %if.end.i.433

if.end.i.433:                                     ; preds = %get_bit.exit447
  %shr.i.425 = lshr i32 %add73, 3
  %idxprom.i.426 = zext i32 %shr.i.425 to i64
  %arrayidx.i.427 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.426
  %8 = load i8, i8* %arrayidx.i.427, align 1, !tbaa !18
  %conv.i.428 = zext i8 %8 to i32
  %and.i.429 = and i32 %add73, 7
  %shr1.i.430 = lshr i32 %conv.i.428, %and.i.429
  %conv3.i.432 = and i32 %shr1.i.430, 1
  br label %get_bit.exit435

get_bit.exit435:                                  ; preds = %get_bit.exit447, %if.end.i.433
  %retval.0.i.434 = phi i32 [ %conv3.i.432, %if.end.i.433 ], [ 0, %get_bit.exit447 ]
  %shl76 = shl nuw nsw i32 %retval.0.i.434, 1
  %or78277 = or i32 %or72276, %shl76
  %or78.456 = zext i32 %or78277 to i64
  %cmp.i.412 = icmp ugt i32 %i.0462, 223
  br i1 %cmp.i.412, label %get_bit.exit423, label %if.end.i.421

if.end.i.421:                                     ; preds = %get_bit.exit435
  %shr.i.413 = lshr i32 %i.0462, 3
  %idxprom.i.414 = zext i32 %shr.i.413 to i64
  %arrayidx.i.415 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.414
  %9 = load i8, i8* %arrayidx.i.415, align 1, !tbaa !18
  %conv.i.416 = zext i8 %9 to i32
  %and.i.417 = and i32 %i.0462, 7
  %shr1.i.418 = lshr i32 %conv.i.416, %and.i.417
  %shr1.tr.i.419 = zext i32 %shr1.i.418 to i64
  %conv3.i.420 = and i64 %shr1.tr.i.419, 1
  br label %get_bit.exit423

get_bit.exit423:                                  ; preds = %get_bit.exit435, %if.end.i.421
  %retval.0.i.422 = phi i64 [ %conv3.i.420, %if.end.i.421 ], [ 0, %get_bit.exit435 ]
  %or81 = or i64 %retval.0.i.422, %or78.456
  call fastcc void @select_point(i64 %or81, i32 16, [3 x [4 x i64]]* %arraydecay83, [4 x i64]* %arraydecay40)
  call fastcc void @point_add(i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i32 1, i64* %arraydecay98, i64* %arraydecay100, i64* %arraydecay102)
  br label %if.end.103

if.end.103:                                       ; preds = %get_bit.exit423, %if.end
  %skip.2 = phi i32 [ 0, %get_bit.exit423 ], [ %skip.0461, %if.end ]
  %rem = srem i32 %i.0462, 5
  %cmp106 = icmp eq i32 %rem, 0
  %or.cond278 = and i1 %tobool, %cmp106
  br i1 %or.cond278, label %for.body.112.lr.ph, label %for.inc.199

for.body.112.lr.ph:                               ; preds = %if.end.103
  %add115 = add nsw i32 %i.0462, 4
  %cmp.i.376 = icmp ugt i32 %add115, 223
  %add123 = add nsw i32 %i.0462, 3
  %cmp.i.364 = icmp ugt i32 %add123, 223
  %add132 = add nsw i32 %i.0462, 2
  %cmp.i.352 = icmp ugt i32 %add132, 223
  %add141 = add nsw i32 %i.0462, 1
  %cmp.i.340 = icmp ugt i32 %add141, 223
  %cmp.i.328 = icmp ugt i32 %i.0462, 223
  %sub = add nsw i32 %i.0462, -1
  %cmp.i.316 = icmp ugt i32 %sub, 223
  %shr.i.317 = lshr i32 %sub, 3
  %idxprom.i.318 = zext i32 %shr.i.317 to i64
  %and.i.321 = and i32 %sub, 7
  %shr.i.329 = lshr i32 %i.0462, 3
  %idxprom.i.330 = zext i32 %shr.i.329 to i64
  %and.i.333 = and i32 %i.0462, 7
  %shr.i.341 = lshr i32 %add141, 3
  %idxprom.i.342 = zext i32 %shr.i.341 to i64
  %and.i.345 = and i32 %add141, 7
  %shr.i.353 = lshr i32 %add132, 3
  %idxprom.i.354 = zext i32 %shr.i.353 to i64
  %and.i.357 = and i32 %add132, 7
  %shr.i.365 = lshr i32 %add123, 3
  %idxprom.i.366 = zext i32 %shr.i.365 to i64
  %and.i.369 = and i32 %add123, 7
  %shr.i.377 = lshr i32 %add115, 3
  %idxprom.i.378 = zext i32 %shr.i.377 to i64
  %and.i.381 = and i32 %add115, 7
  br label %for.body.112

for.body.112:                                     ; preds = %for.inc, %for.body.112.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.112.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %skip.3459 = phi i32 [ %skip.2, %for.body.112.lr.ph ], [ 0, %for.inc ]
  br i1 %cmp.i.376, label %get_bit.exit387, label %if.end.i.385

if.end.i.385:                                     ; preds = %for.body.112
  %arrayidx.i.379 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.378
  %10 = load i8, i8* %arrayidx.i.379, align 1, !tbaa !18
  %conv.i.380 = zext i8 %10 to i32
  %shr1.i.382 = lshr i32 %conv.i.380, %and.i.381
  %shr1.tr.i.383 = trunc i32 %shr1.i.382 to i8
  %conv3.i.384 = and i8 %shr1.tr.i.383, 1
  br label %get_bit.exit387

get_bit.exit387:                                  ; preds = %for.body.112, %if.end.i.385
  %retval.0.i.386 = phi i8 [ %conv3.i.384, %if.end.i.385 ], [ 0, %for.body.112 ]
  %shl118 = shl nuw nsw i8 %retval.0.i.386, 5
  br i1 %cmp.i.364, label %get_bit.exit375, label %if.end.i.373

if.end.i.373:                                     ; preds = %get_bit.exit387
  %arrayidx.i.367 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.366
  %11 = load i8, i8* %arrayidx.i.367, align 1, !tbaa !18
  %conv.i.368 = zext i8 %11 to i32
  %shr1.i.370 = lshr i32 %conv.i.368, %and.i.369
  %shr1.tr.i.371 = trunc i32 %shr1.i.370 to i8
  %conv3.i.372 = and i8 %shr1.tr.i.371, 1
  br label %get_bit.exit375

get_bit.exit375:                                  ; preds = %get_bit.exit387, %if.end.i.373
  %retval.0.i.374 = phi i8 [ %conv3.i.372, %if.end.i.373 ], [ 0, %get_bit.exit387 ]
  %shl126 = shl nuw nsw i8 %retval.0.i.374, 4
  %or128268 = or i8 %shl126, %shl118
  br i1 %cmp.i.352, label %get_bit.exit363, label %if.end.i.361

if.end.i.361:                                     ; preds = %get_bit.exit375
  %arrayidx.i.355 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.354
  %12 = load i8, i8* %arrayidx.i.355, align 1, !tbaa !18
  %conv.i.356 = zext i8 %12 to i32
  %shr1.i.358 = lshr i32 %conv.i.356, %and.i.357
  %shr1.tr.i.359 = trunc i32 %shr1.i.358 to i8
  %conv3.i.360 = and i8 %shr1.tr.i.359, 1
  br label %get_bit.exit363

get_bit.exit363:                                  ; preds = %get_bit.exit375, %if.end.i.361
  %retval.0.i.362 = phi i8 [ %conv3.i.360, %if.end.i.361 ], [ 0, %get_bit.exit375 ]
  %shl135 = shl nuw nsw i8 %retval.0.i.362, 3
  %or137269 = or i8 %or128268, %shl135
  br i1 %cmp.i.340, label %get_bit.exit351, label %if.end.i.349

if.end.i.349:                                     ; preds = %get_bit.exit363
  %arrayidx.i.343 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.342
  %13 = load i8, i8* %arrayidx.i.343, align 1, !tbaa !18
  %conv.i.344 = zext i8 %13 to i32
  %shr1.i.346 = lshr i32 %conv.i.344, %and.i.345
  %shr1.tr.i.347 = trunc i32 %shr1.i.346 to i8
  %conv3.i.348 = and i8 %shr1.tr.i.347, 1
  br label %get_bit.exit351

get_bit.exit351:                                  ; preds = %get_bit.exit363, %if.end.i.349
  %retval.0.i.350 = phi i8 [ %conv3.i.348, %if.end.i.349 ], [ 0, %get_bit.exit363 ]
  %shl144 = shl nuw nsw i8 %retval.0.i.350, 2
  %or146270 = or i8 %or137269, %shl144
  br i1 %cmp.i.328, label %get_bit.exit339, label %if.end.i.337

if.end.i.337:                                     ; preds = %get_bit.exit351
  %arrayidx.i.331 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.330
  %14 = load i8, i8* %arrayidx.i.331, align 1, !tbaa !18
  %conv.i.332 = zext i8 %14 to i32
  %shr1.i.334 = lshr i32 %conv.i.332, %and.i.333
  %shr1.tr.i.335 = trunc i32 %shr1.i.334 to i8
  %conv3.i.336 = and i8 %shr1.tr.i.335, 1
  br label %get_bit.exit339

get_bit.exit339:                                  ; preds = %get_bit.exit351, %if.end.i.337
  %retval.0.i.338 = phi i8 [ %conv3.i.336, %if.end.i.337 ], [ 0, %get_bit.exit351 ]
  %shl152 = shl nuw nsw i8 %retval.0.i.338, 1
  %or154271 = or i8 %or146270, %shl152
  br i1 %cmp.i.316, label %get_bit.exit327, label %if.end.i.325

if.end.i.325:                                     ; preds = %get_bit.exit339
  %arrayidx.i.319 = getelementptr inbounds [28 x i8], [28 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.318
  %15 = load i8, i8* %arrayidx.i.319, align 1, !tbaa !18
  %conv.i.320 = zext i8 %15 to i32
  %shr1.i.322 = lshr i32 %conv.i.320, %and.i.321
  %shr1.tr.i.323 = trunc i32 %shr1.i.322 to i8
  %conv3.i.324 = and i8 %shr1.tr.i.323, 1
  br label %get_bit.exit327

get_bit.exit327:                                  ; preds = %get_bit.exit339, %if.end.i.325
  %retval.0.i.326 = phi i8 [ %conv3.i.324, %if.end.i.325 ], [ 0, %get_bit.exit339 ]
  %or160 = or i8 %or154271, %retval.0.i.326
  call void @ec_GFp_nistp_recode_scalar_bits(i8* nonnull %sign, i8* nonnull %digit, i8 zeroext %or160) #4
  %16 = load i8, i8* %digit, align 1, !tbaa !18
  %conv162 = zext i8 %16 to i64
  %arraydecay165 = getelementptr inbounds [17 x [3 x [4 x i64]]], [17 x [3 x [4 x i64]]]* %pre_comp, i64 %indvars.iv, i64 0
  call fastcc void @select_point(i64 %conv162, i32 17, [3 x [4 x i64]]* %arraydecay165, [4 x i64]* %arraydecay40)
  %17 = load i64, i64* %arraydecay100, align 16, !tbaa !14
  %conv.i.i = zext i64 %17 to i128
  %18 = load i64, i64* %arrayidx9.i.i, align 8, !tbaa !14
  %conv10.i.i = zext i64 %18 to i128
  %19 = load i64, i64* %arrayidx13.i.i, align 16, !tbaa !14
  %conv14.i.i = zext i64 %19 to i128
  %sub16.i.i = sub nsw i128 18446744073709551360, %conv14.i.i
  %20 = load i64, i64* %arrayidx17.i.i, align 8, !tbaa !14
  %conv18.i.i = zext i64 %20 to i128
  %sub20.i.i = sub nsw i128 18446744073709551360, %conv18.i.i
  %add6.i.4.i = add i128 %sub16.i.i, 170141183460469229370504062281061498880
  %shr45.i.i = lshr i128 %add6.i.4.i, 56
  %add47.i.i = add nsw i128 %shr45.i.i, %sub20.i.i
  %and49.i.i = and i128 %add6.i.4.i, 72057594037927935
  %shr51.i.i = lshr i128 %add47.i.i, 56
  %and54.i.i = and i128 %add47.i.i, 72057594037927935
  %shr56.i.i = lshr i128 %add47.i.i, 72
  %add58.i.i = add nuw nsw i128 %shr56.i.i, %and49.i.i
  %and60.i.i = shl nuw nsw i128 %shr51.i.i, 40
  %shl61.i.i = and i128 %and60.i.i, 72056494526300160
  %add.i.2.i = sub nuw i128 -170141183460469231713240559642174521088, %conv.i.i
  %sub66.i.i = sub nuw i128 %add.i.2.i, %shr51.i.i
  %shr68.i.i = lshr i128 %sub66.i.i, 56
  %add3.i.i = sub nsw i128 170141183460469229388914496082775375616, %conv10.i.i
  %add63.i.i = add nuw i128 %add3.i.i, %shl61.i.i
  %add70.i.i = add i128 %add63.i.i, %shr68.i.i
  %sub66.tr.i.i = trunc i128 %sub66.i.i to i64
  %conv.i.6.i = and i64 %sub66.tr.i.i, 72057594037927935
  store i64 %conv.i.6.i, i64* %arraydecay168, align 16, !tbaa !14
  %shr75.i.i = lshr i128 %add70.i.i, 56
  %add77.i.i = add nuw nsw i128 %add58.i.i, %shr75.i.i
  %add70.tr.i.i = trunc i128 %add70.i.i to i64
  %conv80.i.i = and i64 %add70.tr.i.i, 72057594037927935
  store i64 %conv80.i.i, i64* %arrayidx81.i.i, align 8, !tbaa !14
  %shr83.i.i = lshr i128 %add77.i.i, 56
  %add85.i.i = add nuw nsw i128 %shr83.i.i, %and54.i.i
  %add77.tr.i.i = trunc i128 %add77.i.i to i64
  %conv88.i.i = and i64 %add77.tr.i.i, 72057594037927935
  store i64 %conv88.i.i, i64* %arrayidx89.i.i, align 16, !tbaa !14
  %conv91.i.i = trunc i128 %add85.i.i to i64
  store i64 %conv91.i.i, i64* %arrayidx92.i.i, align 8, !tbaa !14
  %21 = load i8, i8* %sign, align 1, !tbaa !18
  %conv175 = zext i8 %21 to i64
  %sub.i = sub nsw i64 0, %conv175
  %xor.i = xor i64 %17, %conv.i.6.i
  %and.i.303 = and i64 %xor.i, %sub.i
  %xor5.i = xor i64 %and.i.303, %17
  store i64 %xor5.i, i64* %arraydecay100, align 16, !tbaa !14
  %xor.1.i = xor i64 %18, %conv80.i.i
  %and.1.i = and i64 %xor.1.i, %sub.i
  %xor5.1.i = xor i64 %and.1.i, %18
  store i64 %xor5.1.i, i64* %arrayidx9.i.i, align 8, !tbaa !14
  %xor.2.i = xor i64 %19, %conv88.i.i
  %and.2.i = and i64 %xor.2.i, %sub.i
  %xor5.2.i = xor i64 %and.2.i, %19
  store i64 %xor5.2.i, i64* %arrayidx13.i.i, align 16, !tbaa !14
  %xor.3.i = xor i64 %20, %conv91.i.i
  %and.3.i = and i64 %xor.3.i, %sub.i
  %xor5.3.i = xor i64 %and.3.i, %20
  store i64 %xor5.3.i, i64* %arrayidx17.i.i, align 8, !tbaa !14
  %tobool176 = icmp eq i32 %skip.3459, 0
  br i1 %tobool176, label %if.then.177, label %if.else.196

if.then.177:                                      ; preds = %get_bit.exit327
  call fastcc void @point_add(i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i64* %arraydecay86, i64* %arraydecay88, i64* %arraydecay90, i32 %mixed, i64* %arraydecay98, i64* %arraydecay100, i64* %arraydecay102)
  br label %for.inc

if.else.196:                                      ; preds = %get_bit.exit327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 96, i32 16, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.then.177, %if.else.196
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %num_points
  br i1 %exitcond, label %for.inc.199.loopexit, label %for.body.112

for.inc.199.loopexit:                             ; preds = %for.inc
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.inc.199.loopexit, %if.end.103
  %skip.5 = phi i32 [ %skip.2, %if.end.103 ], [ 0, %for.inc.199.loopexit ]
  %dec = add nsw i32 %i.0462, -1
  %cmp4 = icmp sgt i32 %i.0462, 0
  br i1 %cmp4, label %for.body, label %for.end.200

for.end.200:                                      ; preds = %for.inc.199
  %22 = bitcast [3 x [4 x i64]]* %nq to <2 x i64>*
  %23 = load <2 x i64>, <2 x i64>* %22, align 16, !tbaa !14
  %24 = bitcast i64* %x_out to <2 x i64>*
  store <2 x i64> %23, <2 x i64>* %24, align 8, !tbaa !14
  %arrayidx4.i.287 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 0, i64 2
  %arrayidx5.i.288 = getelementptr inbounds i64, i64* %x_out, i64 2
  %25 = bitcast i64* %arrayidx4.i.287 to <2 x i64>*
  %26 = load <2 x i64>, <2 x i64>* %25, align 16, !tbaa !14
  %27 = bitcast i64* %arrayidx5.i.288 to <2 x i64>*
  store <2 x i64> %26, <2 x i64>* %27, align 8, !tbaa !14
  %28 = bitcast i64* %arraydecay88 to <2 x i64>*
  %29 = load <2 x i64>, <2 x i64>* %28, align 16, !tbaa !14
  %30 = bitcast i64* %y_out to <2 x i64>*
  store <2 x i64> %29, <2 x i64>* %30, align 8, !tbaa !14
  %arrayidx4.i.281 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 1, i64 2
  %arrayidx5.i.282 = getelementptr inbounds i64, i64* %y_out, i64 2
  %31 = bitcast i64* %arrayidx4.i.281 to <2 x i64>*
  %32 = load <2 x i64>, <2 x i64>* %31, align 16, !tbaa !14
  %33 = bitcast i64* %arrayidx5.i.282 to <2 x i64>*
  store <2 x i64> %32, <2 x i64>* %33, align 8, !tbaa !14
  %34 = bitcast i64* %arraydecay90 to <2 x i64>*
  %35 = load <2 x i64>, <2 x i64>* %34, align 16, !tbaa !14
  %36 = bitcast i64* %z_out to <2 x i64>*
  store <2 x i64> %35, <2 x i64>* %36, align 8, !tbaa !14
  %arrayidx4.i = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %nq, i64 0, i64 2, i64 2
  %arrayidx5.i = getelementptr inbounds i64, i64* %z_out, i64 2
  %37 = bitcast i64* %arrayidx4.i to <2 x i64>*
  %38 = load <2 x i64>, <2 x i64>* %37, align 16, !tbaa !14
  %39 = bitcast i64* %arrayidx5.i to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8, !tbaa !14
  call void @llvm.lifetime.end(i64 1, i8* nonnull %digit) #4
  call void @llvm.lifetime.end(i64 1, i8* nonnull %sign) #4
  call void @llvm.lifetime.end(i64 128, i8* %1) #4
  call void @llvm.lifetime.end(i64 96, i8* %0) #4
  ret void
}

declare void @EC_POINT_free(%struct.ec_point_st*) #2

declare void @EC_pre_comp_free(%struct.ec_group_st*) #2

declare i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @ec_GFp_nistp_points_make_affine_internal(i64, i8*, i64, i8*, void (i8*)*, i32 (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @felem_one(i64* nocapture %out) #1 {
entry:
  store i64 1, i64* %out, align 8, !tbaa !14
  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1
  %0 = bitcast i64* %arrayidx1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @felem_is_zero_int(i8* nocapture readonly %in) #3 {
entry:
  %0 = bitcast i8* %in to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !14
  %arrayidx1.i = getelementptr inbounds i8, i8* %in, i64 8
  %2 = bitcast i8* %arrayidx1.i to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !14
  %or.i = or i64 %3, %1
  %arrayidx2.i = getelementptr inbounds i8, i8* %in, i64 16
  %4 = bitcast i8* %arrayidx2.i to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !14
  %or3.i = or i64 %or.i, %5
  %arrayidx4.i = getelementptr inbounds i8, i8* %in, i64 24
  %6 = bitcast i8* %arrayidx4.i to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !14
  %or5.i = or i64 %or3.i, %7
  %sub.i = add nsw i64 %or5.i, -1
  %xor.i = xor i64 %1, 1
  %xor8.i = xor i64 %3, 72056494526300160
  %or9.i = or i64 %xor8.i, %xor.i
  %xor11.i = xor i64 %5, 72057594037927935
  %or12.i = or i64 %or9.i, %xor11.i
  %xor14.i = xor i64 %7, 72057594037927935
  %or15.i = or i64 %or12.i, %xor14.i
  %sub16.i = add nsw i64 %or15.i, -1
  %xor20.i = xor i64 %1, 2
  %xor22.i = xor i64 %3, 72055395014672384
  %or23.i = or i64 %xor22.i, %xor20.i
  %or26.i = or i64 %or23.i, %xor11.i
  %xor28.i = xor i64 %7, 144115188075855871
  %or29.i = or i64 %or26.i, %xor28.i
  %sub30.i = add nsw i64 %or29.i, -1
  %shr.5255.i = or i64 %sub16.i, %sub.i
  %or3356.i = or i64 %shr.5255.i, %sub30.i
  %or34.i = lshr i64 %or3356.i, 63
  %call.tr = trunc i64 %or34.i to i32
  ret i32 %call.tr
}

; Function Attrs: nounwind uwtable
define internal void @felem_square_reduce(i64* nocapture %out, i64* nocapture readonly %in) #1 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !14
  %mul.i = shl i64 %0, 1
  %arrayidx1.i = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx1.i, align 8, !tbaa !14
  %mul2.i = shl i64 %1, 1
  %arrayidx3.i = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx3.i, align 8, !tbaa !14
  %mul4.i = shl i64 %2, 1
  %conv.i = zext i64 %0 to i128
  %mul8.i = mul nuw i128 %conv.i, %conv.i
  %conv12.i = zext i64 %mul2.i to i128
  %mul13.i = mul nuw i128 %conv12.i, %conv.i
  %conv17.i = zext i64 %mul4.i to i128
  %mul18.i = mul nuw i128 %conv17.i, %conv.i
  %conv20.i = zext i64 %1 to i128
  %mul23.i = mul nuw i128 %conv20.i, %conv20.i
  %arrayidx25.i = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx25.i, align 8, !tbaa !14
  %conv26.i = zext i64 %3 to i128
  %conv27.i = zext i64 %mul.i to i128
  %mul28.i = mul nuw i128 %conv26.i, %conv27.i
  %mul32.i = mul nuw i128 %conv17.i, %conv20.i
  %add33.i = add i128 %mul32.i, %mul28.i
  %mul38.i = mul nuw i128 %conv26.i, %conv12.i
  %conv40.i = zext i64 %2 to i128
  %mul43.i = mul nuw i128 %conv40.i, %conv40.i
  %add44.i = add i128 %mul38.i, %mul43.i
  %mul49.i = mul nuw i128 %conv26.i, %conv17.i
  %mul55.i = mul nuw i128 %conv26.i, %conv26.i
  %add.i.2 = add i128 %mul8.i, -170141183460469231731687303715884072960
  %add3.i = add i128 %mul13.i, 170141183460469229370468033484042534912
  %shr.i = lshr i128 %mul55.i, 16
  %add14.i = add i128 %add44.i, %shr.i
  %and.i = shl i128 %mul55.i, 40
  %shl.i = and i128 %and.i, 72056494526300160
  %shr21.i = lshr i128 %mul49.i, 16
  %and25.i = shl i128 %mul49.i, 40
  %shl26.i = and i128 %and25.i, 72055395014672384
  %sub31.i = sub i128 %add3.i, %mul49.i
  %shr33.i = lshr i128 %add14.i, 16
  %add.i = add i128 %mul23.i, 170141183460469229370504062281061498880
  %add6.i = add i128 %add.i, %mul18.i
  %sub.i = sub i128 %add6.i, %mul55.i
  %add28.i = add i128 %sub.i, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %add40.i = add i128 %sub31.i, %shl38.i
  %sub43.i = sub i128 %add.i.2, %add14.i
  %shr45.i = lshr i128 %add35.i, 56
  %add17.i = add i128 %add33.i, %shr21.i
  %add23.i = add i128 %add17.i, %shl.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %add63.i = add i128 %add40.i, %shl61.i
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i.3 = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i.3, i64* %out, align 8, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !14
  %conv91.i = trunc i128 %add85.i to i64
  %arrayidx92.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @felem_mul_reduce(i64* nocapture %out, i64* nocapture readonly %in1, i64* nocapture readonly %in2) #1 {
entry:
  %0 = load i64, i64* %in1, align 8, !tbaa !14
  %conv.i = zext i64 %0 to i128
  %1 = load i64, i64* %in2, align 8, !tbaa !14
  %conv2.i = zext i64 %1 to i128
  %mul.i = mul nuw i128 %conv2.i, %conv.i
  %arrayidx6.i = getelementptr inbounds i64, i64* %in2, i64 1
  %2 = load i64, i64* %arrayidx6.i, align 8, !tbaa !14
  %conv7.i = zext i64 %2 to i128
  %mul8.i = mul nuw i128 %conv7.i, %conv.i
  %arrayidx9.i = getelementptr inbounds i64, i64* %in1, i64 1
  %3 = load i64, i64* %arrayidx9.i, align 8, !tbaa !14
  %conv10.i = zext i64 %3 to i128
  %mul13.i = mul nuw i128 %conv10.i, %conv2.i
  %arrayidx17.i = getelementptr inbounds i64, i64* %in2, i64 2
  %4 = load i64, i64* %arrayidx17.i, align 8, !tbaa !14
  %conv18.i = zext i64 %4 to i128
  %mul19.i = mul nuw i128 %conv18.i, %conv.i
  %mul24.i = mul nuw i128 %conv10.i, %conv7.i
  %arrayidx26.i = getelementptr inbounds i64, i64* %in1, i64 2
  %5 = load i64, i64* %arrayidx26.i, align 8, !tbaa !14
  %conv27.i = zext i64 %5 to i128
  %mul30.i = mul nuw i128 %conv27.i, %conv2.i
  %arrayidx35.i = getelementptr inbounds i64, i64* %in2, i64 3
  %6 = load i64, i64* %arrayidx35.i, align 8, !tbaa !14
  %conv36.i = zext i64 %6 to i128
  %mul37.i = mul nuw i128 %conv36.i, %conv.i
  %mul42.i = mul nuw i128 %conv18.i, %conv10.i
  %mul48.i = mul nuw i128 %conv27.i, %conv7.i
  %arrayidx50.i = getelementptr inbounds i64, i64* %in1, i64 3
  %7 = load i64, i64* %arrayidx50.i, align 8, !tbaa !14
  %conv51.i = zext i64 %7 to i128
  %mul54.i = mul nuw i128 %conv51.i, %conv2.i
  %mul61.i = mul nuw i128 %conv36.i, %conv10.i
  %mul66.i = mul nuw i128 %conv27.i, %conv18.i
  %add67.i = add i128 %mul61.i, %mul66.i
  %mul72.i = mul nuw i128 %conv51.i, %conv7.i
  %add73.i = add i128 %add67.i, %mul72.i
  %mul79.i = mul nuw i128 %conv36.i, %conv27.i
  %mul84.i = mul nuw i128 %conv51.i, %conv18.i
  %add85.i = add i128 %mul84.i, %mul79.i
  %mul91.i = mul nuw i128 %conv51.i, %conv36.i
  %add.i.2 = add i128 %mul.i, -170141183460469231731687303715884072960
  %shr.i = lshr i128 %mul91.i, 16
  %add14.i = add i128 %add73.i, %shr.i
  %and.i = shl i128 %mul91.i, 40
  %shl.i = and i128 %and.i, 72056494526300160
  %shr21.i = lshr i128 %add85.i, 16
  %and25.i = shl i128 %add85.i, 40
  %shl26.i = and i128 %and25.i, 72056494526300160
  %shr33.i = lshr i128 %add14.i, 16
  %add25.i = add i128 %mul24.i, 170141183460469229370504062281061498880
  %add31.i = add i128 %add25.i, %mul19.i
  %add6.i = add i128 %add31.i, %mul30.i
  %sub.i = sub i128 %add6.i, %mul91.i
  %add28.i = add i128 %sub.i, %shl26.i
  %add35.i = add i128 %add28.i, %shr33.i
  %and37.i = shl i128 %add14.i, 40
  %shl38.i = and i128 %and37.i, 72056494526300160
  %sub43.i = sub i128 %add.i.2, %add14.i
  %shr45.i = lshr i128 %add35.i, 56
  %add43.i = add i128 %mul48.i, %mul42.i
  %add49.i = add i128 %add43.i, %mul37.i
  %add55.i = add i128 %add49.i, %mul54.i
  %add17.i = add i128 %add55.i, %shl.i
  %add23.i = add i128 %add17.i, %shr21.i
  %add47.i = add i128 %add23.i, %shr45.i
  %and49.i = and i128 %add35.i, 72057594037927935
  %shr51.i = lshr i128 %add47.i, 56
  %and54.i = and i128 %add47.i, 72057594037927935
  %shr56.i = lshr i128 %add47.i, 72
  %add58.i = add nuw nsw i128 %shr56.i, %and49.i
  %and60.i = shl nuw nsw i128 %shr51.i, 40
  %shl61.i = and i128 %and60.i, 72056494526300160
  %sub66.i = sub i128 %sub43.i, %shr51.i
  %shr68.i = lshr i128 %sub66.i, 56
  %add.i = add i128 %mul8.i, 170141183460469229370468033484042534912
  %add3.i = add i128 %add.i, %mul13.i
  %sub31.i = sub i128 %add3.i, %add85.i
  %add40.i = add i128 %sub31.i, %shl38.i
  %add63.i = add i128 %add40.i, %shl61.i
  %add70.i = add i128 %add63.i, %shr68.i
  %sub66.tr.i = trunc i128 %sub66.i to i64
  %conv.i.3 = and i64 %sub66.tr.i, 72057594037927935
  store i64 %conv.i.3, i64* %out, align 8, !tbaa !14
  %shr75.i = lshr i128 %add70.i, 56
  %add77.i = add nuw nsw i128 %add58.i, %shr75.i
  %add70.tr.i = trunc i128 %add70.i to i64
  %conv80.i = and i64 %add70.tr.i, 72057594037927935
  %arrayidx81.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %conv80.i, i64* %arrayidx81.i, align 8, !tbaa !14
  %shr83.i = lshr i128 %add77.i, 56
  %add85.i.4 = add nuw nsw i128 %shr83.i, %and54.i
  %add77.tr.i = trunc i128 %add77.i to i64
  %conv88.i = and i64 %add77.tr.i, 72057594037927935
  %arrayidx89.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %conv88.i, i64* %arrayidx89.i, align 8, !tbaa !14
  %conv91.i = trunc i128 %add85.i.4 to i64
  %arrayidx92.i.5 = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %conv91.i, i64* %arrayidx92.i.5, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @select_point(i64 %idx, i32 %size, [3 x [4 x i64]]* nocapture readonly %pre_comp, [4 x i64]* nocapture %out) #1 {
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
  %13 = load i64, i64* %arrayidx14, align 8, !tbaa !14
  %and15 = and i64 %13, %dec
  %or18 = or i64 %12, %and15
  store i64 %or18, i64* %arrayidx17, align 8, !tbaa !14
  %arrayidx14.1 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 1
  %14 = load i64, i64* %arrayidx14.1, align 8, !tbaa !14
  %and15.1 = and i64 %14, %dec
  %or18.1 = or i64 %11, %and15.1
  store i64 %or18.1, i64* %arrayidx17.1, align 8, !tbaa !14
  %arrayidx14.2 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 2
  %15 = load i64, i64* %arrayidx14.2, align 8, !tbaa !14
  %and15.2 = and i64 %15, %dec
  %or18.2 = or i64 %10, %and15.2
  store i64 %or18.2, i64* %arrayidx17.2, align 8, !tbaa !14
  %arrayidx14.3 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 3
  %16 = load i64, i64* %arrayidx14.3, align 8, !tbaa !14
  %and15.3 = and i64 %16, %dec
  %or18.3 = or i64 %9, %and15.3
  store i64 %or18.3, i64* %arrayidx17.3, align 8, !tbaa !14
  %arrayidx14.4 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 4
  %17 = load i64, i64* %arrayidx14.4, align 8, !tbaa !14
  %and15.4 = and i64 %17, %dec
  %or18.4 = or i64 %8, %and15.4
  store i64 %or18.4, i64* %arrayidx17.4, align 8, !tbaa !14
  %arrayidx14.5 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 5
  %18 = load i64, i64* %arrayidx14.5, align 8, !tbaa !14
  %and15.5 = and i64 %18, %dec
  %or18.5 = or i64 %7, %and15.5
  store i64 %or18.5, i64* %arrayidx17.5, align 8, !tbaa !14
  %arrayidx14.6 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 6
  %19 = load i64, i64* %arrayidx14.6, align 8, !tbaa !14
  %and15.6 = and i64 %19, %dec
  %or18.6 = or i64 %6, %and15.6
  store i64 %or18.6, i64* %arrayidx17.6, align 8, !tbaa !14
  %arrayidx14.7 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 7
  %20 = load i64, i64* %arrayidx14.7, align 8, !tbaa !14
  %and15.7 = and i64 %20, %dec
  %or18.7 = or i64 %5, %and15.7
  store i64 %or18.7, i64* %arrayidx17.7, align 8, !tbaa !14
  %arrayidx14.8 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 8
  %21 = load i64, i64* %arrayidx14.8, align 8, !tbaa !14
  %and15.8 = and i64 %21, %dec
  %or18.8 = or i64 %4, %and15.8
  store i64 %or18.8, i64* %arrayidx17.8, align 8, !tbaa !14
  %arrayidx14.9 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 9
  %22 = load i64, i64* %arrayidx14.9, align 8, !tbaa !14
  %and15.9 = and i64 %22, %dec
  %or18.9 = or i64 %3, %and15.9
  store i64 %or18.9, i64* %arrayidx17.9, align 8, !tbaa !14
  %arrayidx14.10 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 10
  %23 = load i64, i64* %arrayidx14.10, align 8, !tbaa !14
  %and15.10 = and i64 %23, %dec
  %or18.10 = or i64 %2, %and15.10
  store i64 %or18.10, i64* %arrayidx17.10, align 8, !tbaa !14
  %arrayidx14.11 = getelementptr inbounds [3 x [4 x i64]], [3 x [4 x i64]]* %pre_comp, i64 %indvars.iv, i64 0, i64 11
  %24 = load i64, i64* %arrayidx14.11, align 8, !tbaa !14
  %and15.11 = and i64 %24, %dec
  %or18.11 = or i64 %1, %and15.11
  store i64 %or18.11, i64* %arrayidx17.11, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %for.end.21.loopexit, label %for.body

for.end.21.loopexit:                              ; preds = %for.body
  br label %for.end.21

for.end.21:                                       ; preds = %for.end.21.loopexit, %entry
  ret void
}

declare void @ec_GFp_nistp_recode_scalar_bits(i8*, i8*, i8 zeroext) #2

declare i8* @CRYPTO_THREAD_lock_new() #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{!3, !7, i64 112}
!3 = !{!"ec_group_st", !4, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !5, i64 40, !4, i64 48, !8, i64 56, !4, i64 64, !5, i64 72, !4, i64 96, !4, i64 104, !7, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !5, i64 152, !5, i64 160}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!3, !4, i64 136}
!10 = !{!11, !4, i64 16}
!11 = !{!"ec_point_st", !4, i64 0, !7, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40}
!12 = !{!11, !4, i64 24}
!13 = !{!11, !4, i64 32}
!14 = !{!8, !8, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!3, !4, i64 8}
!17 = !{!3, !4, i64 16}
!18 = !{!5, !5, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !20}
!22 = !{!23, !7, i64 3072}
!23 = !{!"nistp224_pre_comp_st", !5, i64 0, !7, i64 3072, !4, i64 3080}
!24 = !{!23, !4, i64 3080}
!25 = !{!3, !5, i64 152}
!26 = distinct !{!26, !20}
