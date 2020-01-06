; ./config no-asm enable-ec_nistp_64_gcc_128
; make

; ModuleID = 'crypto/ec/ecp_nistp521.c'
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
%struct.nistp521_pre_comp_st = type { [16 x [3 x [9 x i64]]], i32, i8* }

@EC_GFp_nistp521_method.ret = internal constant %struct.ec_method_st { i32 1, i32 406, i32 (%struct.ec_group_st*)* @ec_GFp_nistp521_group_init, void (%struct.ec_group_st*)* @ec_GFp_simple_group_finish, void (%struct.ec_group_st*)* @ec_GFp_simple_group_clear_finish, i32 (%struct.ec_group_st*, %struct.ec_group_st*)* @ec_GFp_nist_group_copy, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp521_group_set_curve, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_get_curve, i32 (%struct.ec_group_st*)* @ec_GFp_simple_group_get_degree, i32 (%struct.ec_group_st*)* @ec_group_simple_order_bits, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_simple_group_check_discriminant, i32 (%struct.ec_point_st*)* @ec_GFp_simple_point_init, void (%struct.ec_point_st*)* @ec_GFp_simple_point_finish, void (%struct.ec_point_st*)* @ec_GFp_simple_point_clear_finish, i32 (%struct.ec_point_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_copy, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_point_set_to_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_set_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_get_Jprojective_coordinates_GFp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_simple_point_set_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nistp521_point_get_affine_coordinates, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i32, %struct.bignum_ctx*)* null, i64 (%struct.ec_group_st*, %struct.ec_point_st*, i32, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, i8*, i64, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_add, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_dbl, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_invert, i32 (%struct.ec_group_st*, %struct.ec_point_st*)* @ec_GFp_simple_is_at_infinity, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_is_on_curve, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_cmp, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* @ec_GFp_simple_make_affine, i32 (%struct.ec_group_st*, i64, %struct.ec_point_st**, %struct.bignum_ctx*)* @ec_GFp_simple_points_make_affine, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, i64, %struct.ec_point_st**, %struct.bignum_st**, %struct.bignum_ctx*)* @ec_GFp_nistp521_points_mul, i32 (%struct.ec_group_st*, %struct.bignum_ctx*)* @ec_GFp_nistp521_precompute_mult, i32 (%struct.ec_group_st*)* @ec_GFp_nistp521_have_precompute_mult, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_mul, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @ec_GFp_nist_field_sqr, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i64 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_priv2oct, i32 (%struct.ec_key_st*, i8*, i64)* @ec_key_simple_oct2priv, i32 (%struct.ec_key_st*, %struct.bignum_st*)* null, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_key, i32 (%struct.ec_key_st*)* @ec_key_simple_check_key, i32 (%struct.ec_key_st*)* @ec_key_simple_generate_public_key, i32 (%struct.ec_key_st*, %struct.ec_key_st*)* null, void (%struct.ec_key_st*)* null, i32 (i8**, i64*, %struct.ec_point_st*, %struct.ec_key_st*)* @ecdh_simple_compute_key, i32 (%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null, i32 (%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*)* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"crypto/ec/ecp_nistp521.c\00", align 1
@nistp521_curve_params = internal constant [5 x [66 x i8]] [[66 x i8] c"\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [66 x i8] c"\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FC", [66 x i8] c"\00Q\95>\B9a\8E\1C\9A\1F\92\9A!\A0\B6\85@\EE\A2\DAr[\99\B3\15\F3\B8\B4\89\91\8E\F1\09\E1V\199Q\EC~\93{\16R\C0\BD;\B1\BF\075s\DF\88=,4\F1\EFE\1F\D4kP?\00", [66 x i8] c"\00\C6\85\8E\06\B7\04\04\E9\CD\9E>\CBf#\95\B4B\9Cd\819\05?\B5!\F8(\AF`kM=\BA\A1K^w\EF\E7Y(\FE\1D\C1'\A2\FF\A8\DE3H\B3\C1\85jB\9B\F9~~1\C2\E5\BDf", [66 x i8] c"\01\189)jx\9A;\C0\04\5C\8A_\B4,}\1B\D9\98\F5DIW\9BDh\17\AF\BD\17'>f,\97\EEr\99^\F4&@\C5P\B9\01?\AD\07a5<p\86\A2r\C2@\88\BE\94v\9F\D1fP"], align 16
@gmul = internal constant [16 x [3 x [9 x i64]]] [[3 x [9 x i64]] zeroinitializer, [3 x [9 x i64]] [[9 x i64] [i64 107662193291804006, i64 156764387973048062, i64 5200896066446132, i64 135037196563642487, i64 30202750027516766, i64 94555012806093784, i64 97746763129557904, i64 263238996462508174, i64 55878890433217540], [9 x i64] [i64 53643482783376976, i64 224091089528721442, i64 256727146720269139, i64 172680296574162242, i64 227218914761240178, i64 137026748380081989, i64 275209519478621333, i64 216191964133904561, i64 78875843521714747], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 248818024239815598, i64 68439110785812081, i64 69356082119435693, i64 118944220382269095, i64 143109813876409467, i64 269301167522018126, i64 89759470938176146, i64 185784475424510077, i64 67432608270484965], [9 x i64] [i64 76969611682492792, i64 164834918331809094, i64 242045298884155992, i64 70238746073538723, i64 72587413832712611, i64 117657050261535340, i64 213926679015513749, i64 126075467209511292, i64 99087220106255799], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 85357026627631931, i64 275799397262170618, i64 193031651880102003, i64 59801716978586923, i64 83964301881446114, i64 22840256528202508, i64 194081837314414388, i64 222286351153865994, i64 46355154457181625], [9 x i64] [i64 5957637048075716, i64 217369084467200750, i64 28572585110612818, i64 20635594340375821, i64 45349996332084175, i64 203498249684330542, i64 162628157059821241, i64 254051537796193181, i64 142008485808234430], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 115699669707084877, i64 27658917167077339, i64 211173019325442770, i64 58508949711035917, i64 176133006176578449, i64 286004766719919457, i64 284694387565934236, i64 270764684126736341, i64 74608610647404645], [9 x i64] [i64 185427702470952429, i64 222643017731418220, i64 13522846395484314, i64 186326058078407921, i64 198419528161705339, i64 100497259887215390, i64 197206109416089806, i64 25672027167771401, i64 3406291878286628], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 182021676768147954, i64 172930014546080759, i64 138895075991037654, i64 235934697641172243, i64 27730320196411543, i64 113022493050822225, i64 207878302801438681, i64 266313891404818042, i64 130891172683322366], [9 x i64] [i64 41168026354574463, i64 33680513507247361, i64 269413084887956749, i64 242140931057620833, i64 128929932887871315, i64 48038932284854428, i64 111303443934034199, i64 170023492048506113, i64 143360740140998823], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 134425189601320381, i64 260186432550402665, i64 171678927283829543, i64 252983222112544416, i64 132305405591194105, i64 270602171681501759, i64 272296954479380013, i64 104435921201057878, i64 108657865336312406], [9 x i64] [i64 114456331693404500, i64 281139027592507440, i64 62416162571593130, i64 83096845865136584, i64 66402651191401000, i64 165554388465669282, i64 242878144236104974, i64 11801559461345807, i64 67258410132057789], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 54921445886212921, i64 264010728307327571, i64 48540398146488464, i64 38046474206052097, i64 131018639621352187, i64 269269057993736052, i64 171604831092059514, i64 226502319611390201, i64 40955853996707363], [9 x i64] [i64 228496940765560023, i64 60915004430338246, i64 101679219507860758, i64 83983612521646248, i64 74425713252203235, i64 40674977338158817, i64 232629268965117148, i64 258202943948012181, i64 82501075909064286], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 5781481702552587, i64 81936078708350940, i64 684428450673870, i64 133775839246670778, i64 187393766212496108, i64 163607746850311095, i64 104632887796117062, i64 196249512117870923, i64 120194447878062517], [9 x i64] [i64 253107672290978120, i64 39877908298150671, i64 243230812957569816, i64 139146955128709334, i64 269377625756283059, i64 93147841917237891, i64 25559748171724610, i64 256984472390645826, i64 110805271569863234], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 83907952979223667, i64 54203007381021646, i64 160604902073304494, i64 23256222146912600, i64 182952255629341354, i64 115033435942373103, i64 20223102552038729, i64 57575416695682744, i64 5669819612697091], [9 x i64] [i64 168448660585422906, i64 239179205648869171, i64 285900858825794631, i64 3096201469763925, i64 168713258819827008, i64 1427068068807299, i64 219126752609233260, i64 21459001911328522, i64 107764485524627839], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 80472600425850483, i64 224473061399101374, i64 6388189075278565, i64 285031614597630631, i64 274421322182961254, i64 283887570695703148, i64 181479600993480562, i64 102090085528419116, i64 106185979073531434], [9 x i64] [i64 73824376971567759, i64 128945964170724839, i64 121577388434101727, i64 139989292724168369, i64 226558589893534708, i64 204492623498446405, i64 83195714170398631, i64 266701901401486980, i64 38808386010626826], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 68456392460871366, i64 187178293677952462, i64 126894947334365842, i64 147434772495009553, i64 201495664110630374, i64 5788334286214178, i64 264555323551016548, i64 201523436559516008, i64 86612822398908315], [9 x i64] [i64 237190349179942813, i64 57919897970055867, i64 259503898983505200, i64 240994968244069959, i64 197627180832108777, i64 14909165662016715, i64 231275607518278278, i64 267691401609550987, i64 6132280927674703], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 163949238868714069, i64 58905398262457208, i64 23410114530391911, i64 143013967514063650, i64 158564875852387944, i64 188561501915912131, i64 215199150119715708, i64 206622526511148848, i64 89915256697746367], [9 x i64] [i64 235472781441274037, i64 144389939058319050, i64 169063410541876690, i64 249173223097855798, i64 170576668317566447, i64 219758551860586130, i64 106180284152399658, i64 282632998754084398, i64 28517994447710861], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 59660094509333031, i64 40078737667398616, i64 59594866337222579, i64 21701153162777097, i64 116340500610041056, i64 102768039285926622, i64 162621478236739094, i64 253440927871325083, i64 22528988507453060], [9 x i64] [i64 187831405429143038, i64 110453562439088903, i64 137990260688458424, i64 1698402127094515, i64 205917707824120335, i64 108655472150581258, i64 140144397608972274, i64 151461723712079459, i64 90428809641917057], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 99408195288972852, i64 252546355624683750, i64 156284726038664712, i64 187814555657646027, i64 253333639507146726, i64 204421248249226768, i64 185585298873836337, i64 54122284901443166, i64 15606490642109597], [9 x i64] [i64 202273776109261432, i64 249084945752482875, i64 85968979218604038, i64 25519703624199912, i64 11298581697006935, i64 276104559392320902, i64 110836315469364654, i64 232146578341713168, i64 19823468322155842], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], [3 x [9 x i64]] [[9 x i64] [i64 35744586964765654, i64 163922703223845131, i64 14854816205463052, i64 102143583654246457, i64 142452439656043030, i64 112217592890821305, i64 23787854062546502, i64 249179525718089087, i64 26558462432025871], [9 x i64] [i64 78779712580399778, i64 278917745207099588, i64 183813831278226615, i64 239336779130140502, i64 161422671968267096, i64 106085547023527836, i64 95793207021835882, i64 250342103785073150, i64 115330905904664661], [9 x i64] [i64 1, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]]], align 16

; Function Attrs: nounwind uwtable
define void @felem_inv(i64* nocapture %out, i64* %in) #0 {
entry:
  %ftmp = alloca [9 x i64], align 16
  %ftmp2 = alloca [9 x i64], align 16
  %ftmp3 = alloca [9 x i64], align 16
  %ftmp4 = alloca [9 x i64], align 16
  %tmp = alloca [9 x i128], align 16
  %0 = bitcast [9 x i64]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %1 = bitcast [9 x i64]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast [9 x i64]* %ftmp3 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %ftmp4 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %4) #1
  %arraydecay = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay, i64* %in)
  %arraydecay2 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 0
  %5 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i = trunc i128 %5 to i64
  %and.i = and i64 %conv.i, 288230376151711743
  store i64 %and.i, i64* %arraydecay2, align 16, !tbaa !6
  %arrayidx2.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 1
  %6 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i = trunc i128 %6 to i64
  %and4.i = and i64 %conv3.i, 288230376151711743
  %arrayidx5.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 1
  %arrayidx6.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 2
  %7 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i = trunc i128 %7 to i64
  %and8.i = and i64 %conv7.i, 288230376151711743
  %arrayidx9.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 2
  %arrayidx10.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 3
  %8 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i = trunc i128 %8 to i64
  %and12.i = and i64 %conv11.i, 288230376151711743
  %arrayidx13.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 3
  %arrayidx14.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 4
  %9 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i = trunc i128 %9 to i64
  %and16.i = and i64 %conv15.i, 288230376151711743
  %arrayidx17.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 4
  %arrayidx18.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 5
  %10 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i = trunc i128 %10 to i64
  %and20.i = and i64 %conv19.i, 288230376151711743
  %arrayidx21.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 5
  %arrayidx22.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 6
  %11 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i = trunc i128 %11 to i64
  %and24.i = and i64 %conv23.i, 288230376151711743
  %arrayidx25.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 6
  %arrayidx26.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 7
  %12 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i = trunc i128 %12 to i64
  %and28.i = and i64 %conv27.i, 288230376151711743
  %arrayidx29.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 7
  %arrayidx30.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 8
  %13 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i = trunc i128 %13 to i64
  %and32.i = and i64 %conv31.i, 288230376151711743
  %arrayidx33.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 8
  %shr.i = lshr i64 %conv.i, 58
  %add.i = add nuw nsw i64 %and4.i, %shr.i
  %14 = lshr i128 %5, 58
  %and40.i = trunc i128 %14 to i64
  %shl.i = and i64 %and40.i, 288230376151711680
  %add42.i = add nuw nsw i64 %add.i, %shl.i
  %shr44.i = lshr i128 %5, 116
  %shr46.i = trunc i128 %shr44.i to i64
  %shr51.i = lshr i64 %conv3.i, 58
  %15 = lshr i128 %6, 58
  %and57.i = trunc i128 %15 to i64
  %shl58.i = and i64 %and57.i, 288230376151711680
  %add48.i = add nuw nsw i64 %shr51.i, %shr46.i
  %add53.i = add nuw nsw i64 %add48.i, %and8.i
  %add60.i = add nuw nsw i64 %add53.i, %shl58.i
  store i64 %add60.i, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i = lshr i128 %6, 116
  %shr64.i = trunc i128 %shr62.i to i64
  %shr69.i = lshr i64 %conv7.i, 58
  %16 = lshr i128 %7, 58
  %and75.i = trunc i128 %16 to i64
  %shl76.i = and i64 %and75.i, 288230376151711680
  %add66.i = add nuw nsw i64 %shr69.i, %shr64.i
  %add71.i = add nuw nsw i64 %add66.i, %and12.i
  %add78.i = add nuw nsw i64 %add71.i, %shl76.i
  store i64 %add78.i, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i = lshr i128 %7, 116
  %shr82.i = trunc i128 %shr80.i to i64
  %shr87.i = lshr i64 %conv11.i, 58
  %17 = lshr i128 %8, 58
  %and93.i = trunc i128 %17 to i64
  %shl94.i = and i64 %and93.i, 288230376151711680
  %add84.i = add nuw nsw i64 %shr87.i, %shr82.i
  %add89.i = add nuw nsw i64 %add84.i, %and16.i
  %add96.i = add nuw nsw i64 %add89.i, %shl94.i
  store i64 %add96.i, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i = lshr i128 %8, 116
  %shr100.i = trunc i128 %shr98.i to i64
  %shr105.i = lshr i64 %conv15.i, 58
  %18 = lshr i128 %9, 58
  %and111.i = trunc i128 %18 to i64
  %shl112.i = and i64 %and111.i, 288230376151711680
  %add102.i = add nuw nsw i64 %shr105.i, %shr100.i
  %add107.i = add nuw nsw i64 %add102.i, %and20.i
  %add114.i = add nuw nsw i64 %add107.i, %shl112.i
  store i64 %add114.i, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i = lshr i128 %9, 116
  %shr118.i = trunc i128 %shr116.i to i64
  %shr123.i = lshr i64 %conv19.i, 58
  %19 = lshr i128 %10, 58
  %and129.i = trunc i128 %19 to i64
  %shl130.i = and i64 %and129.i, 288230376151711680
  %add120.i = add nuw nsw i64 %shr123.i, %shr118.i
  %add125.i = add nuw nsw i64 %add120.i, %and24.i
  %add132.i = add nuw nsw i64 %add125.i, %shl130.i
  store i64 %add132.i, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i = lshr i128 %10, 116
  %shr136.i = trunc i128 %shr134.i to i64
  %shr141.i = lshr i64 %conv23.i, 58
  %20 = lshr i128 %11, 58
  %and147.i = trunc i128 %20 to i64
  %shl148.i = and i64 %and147.i, 288230376151711680
  %add138.i = add nuw nsw i64 %shr141.i, %shr136.i
  %add143.i = add nuw nsw i64 %add138.i, %and28.i
  %add150.i = add nuw nsw i64 %add143.i, %shl148.i
  store i64 %add150.i, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i = lshr i128 %11, 116
  %shr154.i = trunc i128 %shr152.i to i64
  %shr159.i = lshr i64 %conv27.i, 58
  %21 = lshr i128 %12, 58
  %and165.i = trunc i128 %21 to i64
  %shl166.i = and i64 %and165.i, 288230376151711680
  %add156.i = add nuw nsw i64 %shr159.i, %shr154.i
  %add161.i = add nuw nsw i64 %add156.i, %and32.i
  %add168.i = add nuw nsw i64 %add161.i, %shl166.i
  store i64 %add168.i, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i = lshr i128 %12, 116
  %shr172.i = trunc i128 %shr170.i to i64
  %shr175.i = lshr i64 %conv31.i, 58
  %add176.i = add nuw nsw i64 %shr175.i, %shr172.i
  %22 = lshr i128 %13, 58
  %and180.i = trunc i128 %22 to i64
  %shl181.i = and i64 %and180.i, 288230376151711680
  %add182.i = add nuw nsw i64 %add176.i, %shl181.i
  %shl187.i = shl nuw nsw i64 %add182.i, 1
  %23 = lshr i128 %13, 115
  %.tr.i = trunc i128 %23 to i64
  %shl188.i = and i64 %.tr.i, 8190
  %24 = load i64, i64* %arraydecay2, align 16, !tbaa !6
  %add190.i = add i64 %shl187.i, %24
  %add192.i = add nuw nsw i64 %shl188.i, %add42.i
  %shr194.i = lshr i64 %add190.i, 58
  %add196.i = add nuw nsw i64 %add192.i, %shr194.i
  store i64 %add196.i, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i = and i64 %add190.i, 288230376151711743
  store i64 %and198.i, i64* %arraydecay2, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %in, i64* %arraydecay2)
  %25 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.200 = trunc i128 %25 to i64
  %and.i.201 = and i64 %conv.i.200, 288230376151711743
  store i64 %and.i.201, i64* %arraydecay2, align 16, !tbaa !6
  %26 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.203 = trunc i128 %26 to i64
  %and4.i.204 = and i64 %conv3.i.203, 288230376151711743
  %27 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.207 = trunc i128 %27 to i64
  %and8.i.208 = and i64 %conv7.i.207, 288230376151711743
  %28 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.211 = trunc i128 %28 to i64
  %and12.i.212 = and i64 %conv11.i.211, 288230376151711743
  %29 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.215 = trunc i128 %29 to i64
  %and16.i.216 = and i64 %conv15.i.215, 288230376151711743
  %30 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.219 = trunc i128 %30 to i64
  %and20.i.220 = and i64 %conv19.i.219, 288230376151711743
  %31 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.223 = trunc i128 %31 to i64
  %and24.i.224 = and i64 %conv23.i.223, 288230376151711743
  %32 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.227 = trunc i128 %32 to i64
  %and28.i.228 = and i64 %conv27.i.227, 288230376151711743
  %33 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.231 = trunc i128 %33 to i64
  %and32.i.232 = and i64 %conv31.i.231, 288230376151711743
  %shr.i.234 = lshr i64 %conv.i.200, 58
  %add.i.235 = add nuw nsw i64 %and4.i.204, %shr.i.234
  %34 = lshr i128 %25, 58
  %and40.i.236 = trunc i128 %34 to i64
  %shl.i.237 = and i64 %and40.i.236, 288230376151711680
  %add42.i.238 = add nuw nsw i64 %add.i.235, %shl.i.237
  %shr44.i.239 = lshr i128 %25, 116
  %shr46.i.240 = trunc i128 %shr44.i.239 to i64
  %shr51.i.242 = lshr i64 %conv3.i.203, 58
  %35 = lshr i128 %26, 58
  %and57.i.244 = trunc i128 %35 to i64
  %shl58.i.245 = and i64 %and57.i.244, 288230376151711680
  %add48.i.241 = add nuw nsw i64 %shr51.i.242, %shr46.i.240
  %add53.i.243 = add nuw nsw i64 %add48.i.241, %and8.i.208
  %add60.i.246 = add nuw nsw i64 %add53.i.243, %shl58.i.245
  store i64 %add60.i.246, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i.247 = lshr i128 %26, 116
  %shr64.i.248 = trunc i128 %shr62.i.247 to i64
  %shr69.i.250 = lshr i64 %conv7.i.207, 58
  %36 = lshr i128 %27, 58
  %and75.i.252 = trunc i128 %36 to i64
  %shl76.i.253 = and i64 %and75.i.252, 288230376151711680
  %add66.i.249 = add nuw nsw i64 %shr69.i.250, %shr64.i.248
  %add71.i.251 = add nuw nsw i64 %add66.i.249, %and12.i.212
  %add78.i.254 = add nuw nsw i64 %add71.i.251, %shl76.i.253
  store i64 %add78.i.254, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i.255 = lshr i128 %27, 116
  %shr82.i.256 = trunc i128 %shr80.i.255 to i64
  %shr87.i.258 = lshr i64 %conv11.i.211, 58
  %37 = lshr i128 %28, 58
  %and93.i.260 = trunc i128 %37 to i64
  %shl94.i.261 = and i64 %and93.i.260, 288230376151711680
  %add84.i.257 = add nuw nsw i64 %shr87.i.258, %shr82.i.256
  %add89.i.259 = add nuw nsw i64 %add84.i.257, %and16.i.216
  %add96.i.262 = add nuw nsw i64 %add89.i.259, %shl94.i.261
  store i64 %add96.i.262, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i.263 = lshr i128 %28, 116
  %shr100.i.264 = trunc i128 %shr98.i.263 to i64
  %shr105.i.266 = lshr i64 %conv15.i.215, 58
  %38 = lshr i128 %29, 58
  %and111.i.268 = trunc i128 %38 to i64
  %shl112.i.269 = and i64 %and111.i.268, 288230376151711680
  %add102.i.265 = add nuw nsw i64 %shr105.i.266, %shr100.i.264
  %add107.i.267 = add nuw nsw i64 %add102.i.265, %and20.i.220
  %add114.i.270 = add nuw nsw i64 %add107.i.267, %shl112.i.269
  store i64 %add114.i.270, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i.271 = lshr i128 %29, 116
  %shr118.i.272 = trunc i128 %shr116.i.271 to i64
  %shr123.i.274 = lshr i64 %conv19.i.219, 58
  %39 = lshr i128 %30, 58
  %and129.i.276 = trunc i128 %39 to i64
  %shl130.i.277 = and i64 %and129.i.276, 288230376151711680
  %add120.i.273 = add nuw nsw i64 %shr123.i.274, %shr118.i.272
  %add125.i.275 = add nuw nsw i64 %add120.i.273, %and24.i.224
  %add132.i.278 = add nuw nsw i64 %add125.i.275, %shl130.i.277
  store i64 %add132.i.278, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i.279 = lshr i128 %30, 116
  %shr136.i.280 = trunc i128 %shr134.i.279 to i64
  %shr141.i.282 = lshr i64 %conv23.i.223, 58
  %40 = lshr i128 %31, 58
  %and147.i.284 = trunc i128 %40 to i64
  %shl148.i.285 = and i64 %and147.i.284, 288230376151711680
  %add138.i.281 = add nuw nsw i64 %shr141.i.282, %shr136.i.280
  %add143.i.283 = add nuw nsw i64 %add138.i.281, %and28.i.228
  %add150.i.286 = add nuw nsw i64 %add143.i.283, %shl148.i.285
  store i64 %add150.i.286, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i.287 = lshr i128 %31, 116
  %shr154.i.288 = trunc i128 %shr152.i.287 to i64
  %shr159.i.290 = lshr i64 %conv27.i.227, 58
  %41 = lshr i128 %32, 58
  %and165.i.292 = trunc i128 %41 to i64
  %shl166.i.293 = and i64 %and165.i.292, 288230376151711680
  %add156.i.289 = add nuw nsw i64 %shr159.i.290, %shr154.i.288
  %add161.i.291 = add nuw nsw i64 %add156.i.289, %and32.i.232
  %add168.i.294 = add nuw nsw i64 %add161.i.291, %shl166.i.293
  store i64 %add168.i.294, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i.295 = lshr i128 %32, 116
  %shr172.i.296 = trunc i128 %shr170.i.295 to i64
  %shr175.i.298 = lshr i64 %conv31.i.231, 58
  %add176.i.299 = add nuw nsw i64 %shr175.i.298, %shr172.i.296
  %42 = lshr i128 %33, 58
  %and180.i.300 = trunc i128 %42 to i64
  %shl181.i.301 = and i64 %and180.i.300, 288230376151711680
  %add182.i.302 = add nuw nsw i64 %add176.i.299, %shl181.i.301
  %shl187.i.303 = shl nuw nsw i64 %add182.i.302, 1
  %43 = lshr i128 %33, 115
  %.tr.i.304 = trunc i128 %43 to i64
  %shl188.i.305 = and i64 %.tr.i.304, 8190
  %44 = load i64, i64* %arraydecay2, align 16, !tbaa !6
  %add190.i.306 = add i64 %shl187.i.303, %44
  %add192.i.307 = add nuw nsw i64 %shl188.i.305, %add42.i.238
  %shr194.i.308 = lshr i64 %add190.i.306, 58
  %add196.i.309 = add nuw nsw i64 %add192.i.307, %shr194.i.308
  store i64 %add196.i.309, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i.310 = and i64 %add190.i.306, 288230376151711743
  store i64 %and198.i.310, i64* %arraydecay2, align 16, !tbaa !6
  %arraydecay8 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 0
  store i64 %and198.i.310, i64* %arraydecay8, align 16, !tbaa !6
  %arrayidx3.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 1
  store i64 %add196.i.309, i64* %arrayidx3.i, align 8, !tbaa !6
  %arrayidx5.i.312 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 2
  store i64 %add60.i.246, i64* %arrayidx5.i.312, align 16, !tbaa !6
  %arrayidx7.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 3
  store i64 %add78.i.254, i64* %arrayidx7.i, align 8, !tbaa !6
  %arrayidx9.i.314 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 4
  store i64 %add96.i.262, i64* %arrayidx9.i.314, align 16, !tbaa !6
  %arrayidx11.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 5
  store i64 %add114.i.270, i64* %arrayidx11.i, align 8, !tbaa !6
  %arrayidx13.i.316 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 6
  store i64 %add132.i.278, i64* %arrayidx13.i.316, align 16, !tbaa !6
  %arrayidx15.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 7
  store i64 %add150.i.286, i64* %arrayidx15.i, align 8, !tbaa !6
  %arrayidx17.i.318 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 8
  store i64 %add168.i.294, i64* %arrayidx17.i.318, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay2)
  %45 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.430 = trunc i128 %45 to i64
  %and.i.431 = and i64 %conv.i.430, 288230376151711743
  store i64 %and.i.431, i64* %arraydecay2, align 16, !tbaa !6
  %46 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.433 = trunc i128 %46 to i64
  %and4.i.434 = and i64 %conv3.i.433, 288230376151711743
  %47 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.437 = trunc i128 %47 to i64
  %and8.i.438 = and i64 %conv7.i.437, 288230376151711743
  %48 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.441 = trunc i128 %48 to i64
  %and12.i.442 = and i64 %conv11.i.441, 288230376151711743
  %49 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.445 = trunc i128 %49 to i64
  %and16.i.446 = and i64 %conv15.i.445, 288230376151711743
  %50 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.449 = trunc i128 %50 to i64
  %and20.i.450 = and i64 %conv19.i.449, 288230376151711743
  %51 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.453 = trunc i128 %51 to i64
  %and24.i.454 = and i64 %conv23.i.453, 288230376151711743
  %52 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.457 = trunc i128 %52 to i64
  %and28.i.458 = and i64 %conv27.i.457, 288230376151711743
  %53 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.461 = trunc i128 %53 to i64
  %and32.i.462 = and i64 %conv31.i.461, 288230376151711743
  %shr.i.464 = lshr i64 %conv.i.430, 58
  %add.i.465 = add nuw nsw i64 %and4.i.434, %shr.i.464
  %54 = lshr i128 %45, 58
  %and40.i.466 = trunc i128 %54 to i64
  %shl.i.467 = and i64 %and40.i.466, 288230376151711680
  %add42.i.468 = add nuw nsw i64 %add.i.465, %shl.i.467
  %shr44.i.469 = lshr i128 %45, 116
  %shr46.i.470 = trunc i128 %shr44.i.469 to i64
  %shr51.i.472 = lshr i64 %conv3.i.433, 58
  %55 = lshr i128 %46, 58
  %and57.i.474 = trunc i128 %55 to i64
  %shl58.i.475 = and i64 %and57.i.474, 288230376151711680
  %add48.i.471 = add nuw nsw i64 %shr51.i.472, %shr46.i.470
  %add53.i.473 = add nuw nsw i64 %add48.i.471, %and8.i.438
  %add60.i.476 = add nuw nsw i64 %add53.i.473, %shl58.i.475
  store i64 %add60.i.476, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i.477 = lshr i128 %46, 116
  %shr64.i.478 = trunc i128 %shr62.i.477 to i64
  %shr69.i.480 = lshr i64 %conv7.i.437, 58
  %56 = lshr i128 %47, 58
  %and75.i.482 = trunc i128 %56 to i64
  %shl76.i.483 = and i64 %and75.i.482, 288230376151711680
  %add66.i.479 = add nuw nsw i64 %shr69.i.480, %shr64.i.478
  %add71.i.481 = add nuw nsw i64 %add66.i.479, %and12.i.442
  %add78.i.484 = add nuw nsw i64 %add71.i.481, %shl76.i.483
  store i64 %add78.i.484, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i.485 = lshr i128 %47, 116
  %shr82.i.486 = trunc i128 %shr80.i.485 to i64
  %shr87.i.488 = lshr i64 %conv11.i.441, 58
  %57 = lshr i128 %48, 58
  %and93.i.490 = trunc i128 %57 to i64
  %shl94.i.491 = and i64 %and93.i.490, 288230376151711680
  %add84.i.487 = add nuw nsw i64 %shr87.i.488, %shr82.i.486
  %add89.i.489 = add nuw nsw i64 %add84.i.487, %and16.i.446
  %add96.i.492 = add nuw nsw i64 %add89.i.489, %shl94.i.491
  store i64 %add96.i.492, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i.493 = lshr i128 %48, 116
  %shr100.i.494 = trunc i128 %shr98.i.493 to i64
  %shr105.i.496 = lshr i64 %conv15.i.445, 58
  %58 = lshr i128 %49, 58
  %and111.i.498 = trunc i128 %58 to i64
  %shl112.i.499 = and i64 %and111.i.498, 288230376151711680
  %add102.i.495 = add nuw nsw i64 %shr105.i.496, %shr100.i.494
  %add107.i.497 = add nuw nsw i64 %add102.i.495, %and20.i.450
  %add114.i.500 = add nuw nsw i64 %add107.i.497, %shl112.i.499
  store i64 %add114.i.500, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i.501 = lshr i128 %49, 116
  %shr118.i.502 = trunc i128 %shr116.i.501 to i64
  %shr123.i.504 = lshr i64 %conv19.i.449, 58
  %59 = lshr i128 %50, 58
  %and129.i.506 = trunc i128 %59 to i64
  %shl130.i.507 = and i64 %and129.i.506, 288230376151711680
  %add120.i.503 = add nuw nsw i64 %shr123.i.504, %shr118.i.502
  %add125.i.505 = add nuw nsw i64 %add120.i.503, %and24.i.454
  %add132.i.508 = add nuw nsw i64 %add125.i.505, %shl130.i.507
  store i64 %add132.i.508, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i.509 = lshr i128 %50, 116
  %shr136.i.510 = trunc i128 %shr134.i.509 to i64
  %shr141.i.512 = lshr i64 %conv23.i.453, 58
  %60 = lshr i128 %51, 58
  %and147.i.514 = trunc i128 %60 to i64
  %shl148.i.515 = and i64 %and147.i.514, 288230376151711680
  %add138.i.511 = add nuw nsw i64 %shr141.i.512, %shr136.i.510
  %add143.i.513 = add nuw nsw i64 %add138.i.511, %and28.i.458
  %add150.i.516 = add nuw nsw i64 %add143.i.513, %shl148.i.515
  store i64 %add150.i.516, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i.517 = lshr i128 %51, 116
  %shr154.i.518 = trunc i128 %shr152.i.517 to i64
  %shr159.i.520 = lshr i64 %conv27.i.457, 58
  %61 = lshr i128 %52, 58
  %and165.i.522 = trunc i128 %61 to i64
  %shl166.i.523 = and i64 %and165.i.522, 288230376151711680
  %add156.i.519 = add nuw nsw i64 %shr159.i.520, %shr154.i.518
  %add161.i.521 = add nuw nsw i64 %add156.i.519, %and32.i.462
  %add168.i.524 = add nuw nsw i64 %add161.i.521, %shl166.i.523
  store i64 %add168.i.524, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i.525 = lshr i128 %52, 116
  %shr172.i.526 = trunc i128 %shr170.i.525 to i64
  %shr175.i.528 = lshr i64 %conv31.i.461, 58
  %add176.i.529 = add nuw nsw i64 %shr175.i.528, %shr172.i.526
  %62 = lshr i128 %53, 58
  %and180.i.530 = trunc i128 %62 to i64
  %shl181.i.531 = and i64 %and180.i.530, 288230376151711680
  %add182.i.532 = add nuw nsw i64 %add176.i.529, %shl181.i.531
  %shl187.i.533 = shl nuw nsw i64 %add182.i.532, 1
  %63 = lshr i128 %53, 115
  %.tr.i.534 = trunc i128 %63 to i64
  %shl188.i.535 = and i64 %.tr.i.534, 8190
  %64 = load i64, i64* %arraydecay2, align 16, !tbaa !6
  %add190.i.536 = add i64 %shl187.i.533, %64
  %add192.i.537 = add nuw nsw i64 %shl188.i.535, %add42.i.468
  %shr194.i.538 = lshr i64 %add190.i.536, 58
  %add196.i.539 = add nuw nsw i64 %add192.i.537, %shr194.i.538
  store i64 %add196.i.539, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i.540 = and i64 %add190.i.536, 288230376151711743
  store i64 %and198.i.540, i64* %arraydecay2, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %in, i64* %arraydecay2)
  %65 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.652 = trunc i128 %65 to i64
  %and.i.653 = and i64 %conv.i.652, 288230376151711743
  store i64 %and.i.653, i64* %arraydecay2, align 16, !tbaa !6
  %66 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.655 = trunc i128 %66 to i64
  %and4.i.656 = and i64 %conv3.i.655, 288230376151711743
  %67 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.659 = trunc i128 %67 to i64
  %and8.i.660 = and i64 %conv7.i.659, 288230376151711743
  %68 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.663 = trunc i128 %68 to i64
  %and12.i.664 = and i64 %conv11.i.663, 288230376151711743
  %69 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.667 = trunc i128 %69 to i64
  %and16.i.668 = and i64 %conv15.i.667, 288230376151711743
  %70 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.671 = trunc i128 %70 to i64
  %and20.i.672 = and i64 %conv19.i.671, 288230376151711743
  %71 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.675 = trunc i128 %71 to i64
  %and24.i.676 = and i64 %conv23.i.675, 288230376151711743
  %72 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.679 = trunc i128 %72 to i64
  %and28.i.680 = and i64 %conv27.i.679, 288230376151711743
  %73 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.683 = trunc i128 %73 to i64
  %and32.i.684 = and i64 %conv31.i.683, 288230376151711743
  %shr.i.686 = lshr i64 %conv.i.652, 58
  %add.i.687 = add nuw nsw i64 %and4.i.656, %shr.i.686
  %74 = lshr i128 %65, 58
  %and40.i.688 = trunc i128 %74 to i64
  %shl.i.689 = and i64 %and40.i.688, 288230376151711680
  %add42.i.690 = add nuw nsw i64 %add.i.687, %shl.i.689
  %shr44.i.691 = lshr i128 %65, 116
  %shr46.i.692 = trunc i128 %shr44.i.691 to i64
  %shr51.i.694 = lshr i64 %conv3.i.655, 58
  %75 = lshr i128 %66, 58
  %and57.i.696 = trunc i128 %75 to i64
  %shl58.i.697 = and i64 %and57.i.696, 288230376151711680
  %add48.i.693 = add nuw nsw i64 %shr51.i.694, %shr46.i.692
  %add53.i.695 = add nuw nsw i64 %add48.i.693, %and8.i.660
  %add60.i.698 = add nuw nsw i64 %add53.i.695, %shl58.i.697
  store i64 %add60.i.698, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i.699 = lshr i128 %66, 116
  %shr64.i.700 = trunc i128 %shr62.i.699 to i64
  %shr69.i.702 = lshr i64 %conv7.i.659, 58
  %76 = lshr i128 %67, 58
  %and75.i.704 = trunc i128 %76 to i64
  %shl76.i.705 = and i64 %and75.i.704, 288230376151711680
  %add66.i.701 = add nuw nsw i64 %shr69.i.702, %shr64.i.700
  %add71.i.703 = add nuw nsw i64 %add66.i.701, %and12.i.664
  %add78.i.706 = add nuw nsw i64 %add71.i.703, %shl76.i.705
  store i64 %add78.i.706, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i.707 = lshr i128 %67, 116
  %shr82.i.708 = trunc i128 %shr80.i.707 to i64
  %shr87.i.710 = lshr i64 %conv11.i.663, 58
  %77 = lshr i128 %68, 58
  %and93.i.712 = trunc i128 %77 to i64
  %shl94.i.713 = and i64 %and93.i.712, 288230376151711680
  %add84.i.709 = add nuw nsw i64 %shr87.i.710, %shr82.i.708
  %add89.i.711 = add nuw nsw i64 %add84.i.709, %and16.i.668
  %add96.i.714 = add nuw nsw i64 %add89.i.711, %shl94.i.713
  store i64 %add96.i.714, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i.715 = lshr i128 %68, 116
  %shr100.i.716 = trunc i128 %shr98.i.715 to i64
  %shr105.i.718 = lshr i64 %conv15.i.667, 58
  %78 = lshr i128 %69, 58
  %and111.i.720 = trunc i128 %78 to i64
  %shl112.i.721 = and i64 %and111.i.720, 288230376151711680
  %add102.i.717 = add nuw nsw i64 %shr105.i.718, %shr100.i.716
  %add107.i.719 = add nuw nsw i64 %add102.i.717, %and20.i.672
  %add114.i.722 = add nuw nsw i64 %add107.i.719, %shl112.i.721
  store i64 %add114.i.722, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i.723 = lshr i128 %69, 116
  %shr118.i.724 = trunc i128 %shr116.i.723 to i64
  %shr123.i.726 = lshr i64 %conv19.i.671, 58
  %79 = lshr i128 %70, 58
  %and129.i.728 = trunc i128 %79 to i64
  %shl130.i.729 = and i64 %and129.i.728, 288230376151711680
  %add120.i.725 = add nuw nsw i64 %shr123.i.726, %shr118.i.724
  %add125.i.727 = add nuw nsw i64 %add120.i.725, %and24.i.676
  %add132.i.730 = add nuw nsw i64 %add125.i.727, %shl130.i.729
  store i64 %add132.i.730, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i.731 = lshr i128 %70, 116
  %shr136.i.732 = trunc i128 %shr134.i.731 to i64
  %shr141.i.734 = lshr i64 %conv23.i.675, 58
  %80 = lshr i128 %71, 58
  %and147.i.736 = trunc i128 %80 to i64
  %shl148.i.737 = and i64 %and147.i.736, 288230376151711680
  %add138.i.733 = add nuw nsw i64 %shr141.i.734, %shr136.i.732
  %add143.i.735 = add nuw nsw i64 %add138.i.733, %and28.i.680
  %add150.i.738 = add nuw nsw i64 %add143.i.735, %shl148.i.737
  store i64 %add150.i.738, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i.739 = lshr i128 %71, 116
  %shr154.i.740 = trunc i128 %shr152.i.739 to i64
  %shr159.i.742 = lshr i64 %conv27.i.679, 58
  %81 = lshr i128 %72, 58
  %and165.i.744 = trunc i128 %81 to i64
  %shl166.i.745 = and i64 %and165.i.744, 288230376151711680
  %add156.i.741 = add nuw nsw i64 %shr159.i.742, %shr154.i.740
  %add161.i.743 = add nuw nsw i64 %add156.i.741, %and32.i.684
  %add168.i.746 = add nuw nsw i64 %add161.i.743, %shl166.i.745
  store i64 %add168.i.746, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i.747 = lshr i128 %72, 116
  %shr172.i.748 = trunc i128 %shr170.i.747 to i64
  %shr175.i.750 = lshr i64 %conv31.i.683, 58
  %add176.i.751 = add nuw nsw i64 %shr175.i.750, %shr172.i.748
  %82 = lshr i128 %73, 58
  %and180.i.752 = trunc i128 %82 to i64
  %shl181.i.753 = and i64 %and180.i.752, 288230376151711680
  %add182.i.754 = add nuw nsw i64 %add176.i.751, %shl181.i.753
  %shl187.i.755 = shl nuw nsw i64 %add182.i.754, 1
  %83 = lshr i128 %73, 115
  %.tr.i.756 = trunc i128 %83 to i64
  %shl188.i.757 = and i64 %.tr.i.756, 8190
  %84 = load i64, i64* %arraydecay2, align 16, !tbaa !6
  %add190.i.758 = add i64 %shl187.i.755, %84
  %add192.i.759 = add nuw nsw i64 %shl188.i.757, %add42.i.690
  %shr194.i.760 = lshr i64 %add190.i.758, 58
  %add196.i.761 = add nuw nsw i64 %add192.i.759, %shr194.i.760
  store i64 %add196.i.761, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i.762 = and i64 %add190.i.758, 288230376151711743
  store i64 %and198.i.762, i64* %arraydecay2, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay2)
  %85 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.874 = trunc i128 %85 to i64
  %and.i.875 = and i64 %conv.i.874, 288230376151711743
  store i64 %and.i.875, i64* %arraydecay2, align 16, !tbaa !6
  %86 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.877 = trunc i128 %86 to i64
  %and4.i.878 = and i64 %conv3.i.877, 288230376151711743
  %87 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.881 = trunc i128 %87 to i64
  %and8.i.882 = and i64 %conv7.i.881, 288230376151711743
  %88 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.885 = trunc i128 %88 to i64
  %and12.i.886 = and i64 %conv11.i.885, 288230376151711743
  %89 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.889 = trunc i128 %89 to i64
  %and16.i.890 = and i64 %conv15.i.889, 288230376151711743
  %90 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.893 = trunc i128 %90 to i64
  %and20.i.894 = and i64 %conv19.i.893, 288230376151711743
  %91 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.897 = trunc i128 %91 to i64
  %and24.i.898 = and i64 %conv23.i.897, 288230376151711743
  %92 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.901 = trunc i128 %92 to i64
  %and28.i.902 = and i64 %conv27.i.901, 288230376151711743
  %93 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.905 = trunc i128 %93 to i64
  %and32.i.906 = and i64 %conv31.i.905, 288230376151711743
  %shr.i.908 = lshr i64 %conv.i.874, 58
  %add.i.909 = add nuw nsw i64 %and4.i.878, %shr.i.908
  %94 = lshr i128 %85, 58
  %and40.i.910 = trunc i128 %94 to i64
  %shl.i.911 = and i64 %and40.i.910, 288230376151711680
  %add42.i.912 = add nuw nsw i64 %add.i.909, %shl.i.911
  %shr44.i.913 = lshr i128 %85, 116
  %shr46.i.914 = trunc i128 %shr44.i.913 to i64
  %shr51.i.916 = lshr i64 %conv3.i.877, 58
  %95 = lshr i128 %86, 58
  %and57.i.918 = trunc i128 %95 to i64
  %shl58.i.919 = and i64 %and57.i.918, 288230376151711680
  %add48.i.915 = add nuw nsw i64 %shr51.i.916, %shr46.i.914
  %add53.i.917 = add nuw nsw i64 %add48.i.915, %and8.i.882
  %add60.i.920 = add nuw nsw i64 %add53.i.917, %shl58.i.919
  store i64 %add60.i.920, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i.921 = lshr i128 %86, 116
  %shr64.i.922 = trunc i128 %shr62.i.921 to i64
  %shr69.i.924 = lshr i64 %conv7.i.881, 58
  %96 = lshr i128 %87, 58
  %and75.i.926 = trunc i128 %96 to i64
  %shl76.i.927 = and i64 %and75.i.926, 288230376151711680
  %add66.i.923 = add nuw nsw i64 %shr69.i.924, %shr64.i.922
  %add71.i.925 = add nuw nsw i64 %add66.i.923, %and12.i.886
  %add78.i.928 = add nuw nsw i64 %add71.i.925, %shl76.i.927
  store i64 %add78.i.928, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i.929 = lshr i128 %87, 116
  %shr82.i.930 = trunc i128 %shr80.i.929 to i64
  %shr87.i.932 = lshr i64 %conv11.i.885, 58
  %97 = lshr i128 %88, 58
  %and93.i.934 = trunc i128 %97 to i64
  %shl94.i.935 = and i64 %and93.i.934, 288230376151711680
  %add84.i.931 = add nuw nsw i64 %shr87.i.932, %shr82.i.930
  %add89.i.933 = add nuw nsw i64 %add84.i.931, %and16.i.890
  %add96.i.936 = add nuw nsw i64 %add89.i.933, %shl94.i.935
  store i64 %add96.i.936, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i.937 = lshr i128 %88, 116
  %shr100.i.938 = trunc i128 %shr98.i.937 to i64
  %shr105.i.940 = lshr i64 %conv15.i.889, 58
  %98 = lshr i128 %89, 58
  %and111.i.942 = trunc i128 %98 to i64
  %shl112.i.943 = and i64 %and111.i.942, 288230376151711680
  %add102.i.939 = add nuw nsw i64 %shr105.i.940, %shr100.i.938
  %add107.i.941 = add nuw nsw i64 %add102.i.939, %and20.i.894
  %add114.i.944 = add nuw nsw i64 %add107.i.941, %shl112.i.943
  store i64 %add114.i.944, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i.945 = lshr i128 %89, 116
  %shr118.i.946 = trunc i128 %shr116.i.945 to i64
  %shr123.i.948 = lshr i64 %conv19.i.893, 58
  %99 = lshr i128 %90, 58
  %and129.i.950 = trunc i128 %99 to i64
  %shl130.i.951 = and i64 %and129.i.950, 288230376151711680
  %add120.i.947 = add nuw nsw i64 %shr123.i.948, %shr118.i.946
  %add125.i.949 = add nuw nsw i64 %add120.i.947, %and24.i.898
  %add132.i.952 = add nuw nsw i64 %add125.i.949, %shl130.i.951
  store i64 %add132.i.952, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i.953 = lshr i128 %90, 116
  %shr136.i.954 = trunc i128 %shr134.i.953 to i64
  %shr141.i.956 = lshr i64 %conv23.i.897, 58
  %100 = lshr i128 %91, 58
  %and147.i.958 = trunc i128 %100 to i64
  %shl148.i.959 = and i64 %and147.i.958, 288230376151711680
  %add138.i.955 = add nuw nsw i64 %shr141.i.956, %shr136.i.954
  %add143.i.957 = add nuw nsw i64 %add138.i.955, %and28.i.902
  %add150.i.960 = add nuw nsw i64 %add143.i.957, %shl148.i.959
  store i64 %add150.i.960, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i.961 = lshr i128 %91, 116
  %shr154.i.962 = trunc i128 %shr152.i.961 to i64
  %shr159.i.964 = lshr i64 %conv27.i.901, 58
  %101 = lshr i128 %92, 58
  %and165.i.966 = trunc i128 %101 to i64
  %shl166.i.967 = and i64 %and165.i.966, 288230376151711680
  %add156.i.963 = add nuw nsw i64 %shr159.i.964, %shr154.i.962
  %add161.i.965 = add nuw nsw i64 %add156.i.963, %and32.i.906
  %add168.i.968 = add nuw nsw i64 %add161.i.965, %shl166.i.967
  store i64 %add168.i.968, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i.969 = lshr i128 %92, 116
  %shr172.i.970 = trunc i128 %shr170.i.969 to i64
  %shr175.i.972 = lshr i64 %conv31.i.905, 58
  %add176.i.973 = add nuw nsw i64 %shr175.i.972, %shr172.i.970
  %102 = lshr i128 %93, 58
  %and180.i.974 = trunc i128 %102 to i64
  %shl181.i.975 = and i64 %and180.i.974, 288230376151711680
  %add182.i.976 = add nuw nsw i64 %add176.i.973, %shl181.i.975
  %shl187.i.977 = shl nuw nsw i64 %add182.i.976, 1
  %103 = lshr i128 %93, 115
  %.tr.i.978 = trunc i128 %103 to i64
  %shl188.i.979 = and i64 %.tr.i.978, 8190
  %104 = load i64, i64* %arraydecay2, align 16, !tbaa !6
  %add190.i.980 = add i64 %shl187.i.977, %104
  %add192.i.981 = add nuw nsw i64 %shl188.i.979, %add42.i.912
  %shr194.i.982 = lshr i64 %add190.i.980, 58
  %add196.i.983 = add nuw nsw i64 %add192.i.981, %shr194.i.982
  store i64 %add196.i.983, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i.984 = and i64 %add190.i.980, 288230376151711743
  store i64 %and198.i.984, i64* %arraydecay2, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay8)
  %arraydecay24 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 0
  %105 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1096 = trunc i128 %105 to i64
  %and.i.1097 = and i64 %conv.i.1096, 288230376151711743
  store i64 %and.i.1097, i64* %arraydecay24, align 16, !tbaa !6
  %106 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1099 = trunc i128 %106 to i64
  %and4.i.1100 = and i64 %conv3.i.1099, 288230376151711743
  %arrayidx5.i.1101 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 1
  %107 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1103 = trunc i128 %107 to i64
  %and8.i.1104 = and i64 %conv7.i.1103, 288230376151711743
  %arrayidx9.i.1105 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 2
  %108 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1107 = trunc i128 %108 to i64
  %and12.i.1108 = and i64 %conv11.i.1107, 288230376151711743
  %arrayidx13.i.1109 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 3
  %109 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1111 = trunc i128 %109 to i64
  %and16.i.1112 = and i64 %conv15.i.1111, 288230376151711743
  %arrayidx17.i.1113 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 4
  %110 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1115 = trunc i128 %110 to i64
  %and20.i.1116 = and i64 %conv19.i.1115, 288230376151711743
  %arrayidx21.i.1117 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 5
  %111 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1119 = trunc i128 %111 to i64
  %and24.i.1120 = and i64 %conv23.i.1119, 288230376151711743
  %arrayidx25.i.1121 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 6
  %112 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1123 = trunc i128 %112 to i64
  %and28.i.1124 = and i64 %conv27.i.1123, 288230376151711743
  %arrayidx29.i.1125 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 7
  %113 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1127 = trunc i128 %113 to i64
  %and32.i.1128 = and i64 %conv31.i.1127, 288230376151711743
  %arrayidx33.i.1129 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 8
  %shr.i.1130 = lshr i64 %conv.i.1096, 58
  %add.i.1131 = add nuw nsw i64 %and4.i.1100, %shr.i.1130
  %114 = lshr i128 %105, 58
  %and40.i.1132 = trunc i128 %114 to i64
  %shl.i.1133 = and i64 %and40.i.1132, 288230376151711680
  %add42.i.1134 = add nuw nsw i64 %add.i.1131, %shl.i.1133
  %shr44.i.1135 = lshr i128 %105, 116
  %shr46.i.1136 = trunc i128 %shr44.i.1135 to i64
  %shr51.i.1138 = lshr i64 %conv3.i.1099, 58
  %115 = lshr i128 %106, 58
  %and57.i.1140 = trunc i128 %115 to i64
  %shl58.i.1141 = and i64 %and57.i.1140, 288230376151711680
  %add48.i.1137 = add nuw nsw i64 %shr51.i.1138, %shr46.i.1136
  %add53.i.1139 = add nuw nsw i64 %add48.i.1137, %and8.i.1104
  %add60.i.1142 = add nuw nsw i64 %add53.i.1139, %shl58.i.1141
  store i64 %add60.i.1142, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1143 = lshr i128 %106, 116
  %shr64.i.1144 = trunc i128 %shr62.i.1143 to i64
  %shr69.i.1146 = lshr i64 %conv7.i.1103, 58
  %116 = lshr i128 %107, 58
  %and75.i.1148 = trunc i128 %116 to i64
  %shl76.i.1149 = and i64 %and75.i.1148, 288230376151711680
  %add66.i.1145 = add nuw nsw i64 %shr69.i.1146, %shr64.i.1144
  %add71.i.1147 = add nuw nsw i64 %add66.i.1145, %and12.i.1108
  %add78.i.1150 = add nuw nsw i64 %add71.i.1147, %shl76.i.1149
  store i64 %add78.i.1150, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1151 = lshr i128 %107, 116
  %shr82.i.1152 = trunc i128 %shr80.i.1151 to i64
  %shr87.i.1154 = lshr i64 %conv11.i.1107, 58
  %117 = lshr i128 %108, 58
  %and93.i.1156 = trunc i128 %117 to i64
  %shl94.i.1157 = and i64 %and93.i.1156, 288230376151711680
  %add84.i.1153 = add nuw nsw i64 %shr87.i.1154, %shr82.i.1152
  %add89.i.1155 = add nuw nsw i64 %add84.i.1153, %and16.i.1112
  %add96.i.1158 = add nuw nsw i64 %add89.i.1155, %shl94.i.1157
  store i64 %add96.i.1158, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1159 = lshr i128 %108, 116
  %shr100.i.1160 = trunc i128 %shr98.i.1159 to i64
  %shr105.i.1162 = lshr i64 %conv15.i.1111, 58
  %118 = lshr i128 %109, 58
  %and111.i.1164 = trunc i128 %118 to i64
  %shl112.i.1165 = and i64 %and111.i.1164, 288230376151711680
  %add102.i.1161 = add nuw nsw i64 %shr105.i.1162, %shr100.i.1160
  %add107.i.1163 = add nuw nsw i64 %add102.i.1161, %and20.i.1116
  %add114.i.1166 = add nuw nsw i64 %add107.i.1163, %shl112.i.1165
  store i64 %add114.i.1166, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1167 = lshr i128 %109, 116
  %shr118.i.1168 = trunc i128 %shr116.i.1167 to i64
  %shr123.i.1170 = lshr i64 %conv19.i.1115, 58
  %119 = lshr i128 %110, 58
  %and129.i.1172 = trunc i128 %119 to i64
  %shl130.i.1173 = and i64 %and129.i.1172, 288230376151711680
  %add120.i.1169 = add nuw nsw i64 %shr123.i.1170, %shr118.i.1168
  %add125.i.1171 = add nuw nsw i64 %add120.i.1169, %and24.i.1120
  %add132.i.1174 = add nuw nsw i64 %add125.i.1171, %shl130.i.1173
  store i64 %add132.i.1174, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1175 = lshr i128 %110, 116
  %shr136.i.1176 = trunc i128 %shr134.i.1175 to i64
  %shr141.i.1178 = lshr i64 %conv23.i.1119, 58
  %120 = lshr i128 %111, 58
  %and147.i.1180 = trunc i128 %120 to i64
  %shl148.i.1181 = and i64 %and147.i.1180, 288230376151711680
  %add138.i.1177 = add nuw nsw i64 %shr141.i.1178, %shr136.i.1176
  %add143.i.1179 = add nuw nsw i64 %add138.i.1177, %and28.i.1124
  %add150.i.1182 = add nuw nsw i64 %add143.i.1179, %shl148.i.1181
  store i64 %add150.i.1182, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1183 = lshr i128 %111, 116
  %shr154.i.1184 = trunc i128 %shr152.i.1183 to i64
  %shr159.i.1186 = lshr i64 %conv27.i.1123, 58
  %121 = lshr i128 %112, 58
  %and165.i.1188 = trunc i128 %121 to i64
  %shl166.i.1189 = and i64 %and165.i.1188, 288230376151711680
  %add156.i.1185 = add nuw nsw i64 %shr159.i.1186, %shr154.i.1184
  %add161.i.1187 = add nuw nsw i64 %add156.i.1185, %and32.i.1128
  %add168.i.1190 = add nuw nsw i64 %add161.i.1187, %shl166.i.1189
  store i64 %add168.i.1190, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1191 = lshr i128 %112, 116
  %shr172.i.1192 = trunc i128 %shr170.i.1191 to i64
  %shr175.i.1194 = lshr i64 %conv31.i.1127, 58
  %add176.i.1195 = add nuw nsw i64 %shr175.i.1194, %shr172.i.1192
  %122 = lshr i128 %113, 58
  %and180.i.1196 = trunc i128 %122 to i64
  %shl181.i.1197 = and i64 %and180.i.1196, 288230376151711680
  %add182.i.1198 = add nuw nsw i64 %add176.i.1195, %shl181.i.1197
  %shl187.i.1199 = shl nuw nsw i64 %add182.i.1198, 1
  %123 = lshr i128 %113, 115
  %.tr.i.1200 = trunc i128 %123 to i64
  %shl188.i.1201 = and i64 %.tr.i.1200, 8190
  %124 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1202 = add i64 %shl187.i.1199, %124
  %add192.i.1203 = add nuw nsw i64 %shl188.i.1201, %add42.i.1134
  %shr194.i.1204 = lshr i64 %add190.i.1202, 58
  %add196.i.1205 = add nuw nsw i64 %add192.i.1203, %shr194.i.1204
  store i64 %add196.i.1205, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1206 = and i64 %add190.i.1202, 288230376151711743
  store i64 %and198.i.1206, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %125 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1334 = trunc i128 %125 to i64
  %and.i.1335 = and i64 %conv.i.1334, 288230376151711743
  store i64 %and.i.1335, i64* %arraydecay24, align 16, !tbaa !6
  %126 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1337 = trunc i128 %126 to i64
  %and4.i.1338 = and i64 %conv3.i.1337, 288230376151711743
  %127 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1341 = trunc i128 %127 to i64
  %and8.i.1342 = and i64 %conv7.i.1341, 288230376151711743
  %128 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1345 = trunc i128 %128 to i64
  %and12.i.1346 = and i64 %conv11.i.1345, 288230376151711743
  %129 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1349 = trunc i128 %129 to i64
  %and16.i.1350 = and i64 %conv15.i.1349, 288230376151711743
  %130 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1353 = trunc i128 %130 to i64
  %and20.i.1354 = and i64 %conv19.i.1353, 288230376151711743
  %131 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1357 = trunc i128 %131 to i64
  %and24.i.1358 = and i64 %conv23.i.1357, 288230376151711743
  %132 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1361 = trunc i128 %132 to i64
  %and28.i.1362 = and i64 %conv27.i.1361, 288230376151711743
  %133 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1365 = trunc i128 %133 to i64
  %and32.i.1366 = and i64 %conv31.i.1365, 288230376151711743
  %shr.i.1368 = lshr i64 %conv.i.1334, 58
  %add.i.1369 = add nuw nsw i64 %and4.i.1338, %shr.i.1368
  %134 = lshr i128 %125, 58
  %and40.i.1370 = trunc i128 %134 to i64
  %shl.i.1371 = and i64 %and40.i.1370, 288230376151711680
  %add42.i.1372 = add nuw nsw i64 %add.i.1369, %shl.i.1371
  %shr44.i.1373 = lshr i128 %125, 116
  %shr46.i.1374 = trunc i128 %shr44.i.1373 to i64
  %shr51.i.1376 = lshr i64 %conv3.i.1337, 58
  %135 = lshr i128 %126, 58
  %and57.i.1378 = trunc i128 %135 to i64
  %shl58.i.1379 = and i64 %and57.i.1378, 288230376151711680
  %add48.i.1375 = add nuw nsw i64 %shr51.i.1376, %shr46.i.1374
  %add53.i.1377 = add nuw nsw i64 %add48.i.1375, %and8.i.1342
  %add60.i.1380 = add nuw nsw i64 %add53.i.1377, %shl58.i.1379
  store i64 %add60.i.1380, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1381 = lshr i128 %126, 116
  %shr64.i.1382 = trunc i128 %shr62.i.1381 to i64
  %shr69.i.1384 = lshr i64 %conv7.i.1341, 58
  %136 = lshr i128 %127, 58
  %and75.i.1386 = trunc i128 %136 to i64
  %shl76.i.1387 = and i64 %and75.i.1386, 288230376151711680
  %add66.i.1383 = add nuw nsw i64 %shr69.i.1384, %shr64.i.1382
  %add71.i.1385 = add nuw nsw i64 %add66.i.1383, %and12.i.1346
  %add78.i.1388 = add nuw nsw i64 %add71.i.1385, %shl76.i.1387
  store i64 %add78.i.1388, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1389 = lshr i128 %127, 116
  %shr82.i.1390 = trunc i128 %shr80.i.1389 to i64
  %shr87.i.1392 = lshr i64 %conv11.i.1345, 58
  %137 = lshr i128 %128, 58
  %and93.i.1394 = trunc i128 %137 to i64
  %shl94.i.1395 = and i64 %and93.i.1394, 288230376151711680
  %add84.i.1391 = add nuw nsw i64 %shr87.i.1392, %shr82.i.1390
  %add89.i.1393 = add nuw nsw i64 %add84.i.1391, %and16.i.1350
  %add96.i.1396 = add nuw nsw i64 %add89.i.1393, %shl94.i.1395
  store i64 %add96.i.1396, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1397 = lshr i128 %128, 116
  %shr100.i.1398 = trunc i128 %shr98.i.1397 to i64
  %shr105.i.1400 = lshr i64 %conv15.i.1349, 58
  %138 = lshr i128 %129, 58
  %and111.i.1402 = trunc i128 %138 to i64
  %shl112.i.1403 = and i64 %and111.i.1402, 288230376151711680
  %add102.i.1399 = add nuw nsw i64 %shr105.i.1400, %shr100.i.1398
  %add107.i.1401 = add nuw nsw i64 %add102.i.1399, %and20.i.1354
  %add114.i.1404 = add nuw nsw i64 %add107.i.1401, %shl112.i.1403
  store i64 %add114.i.1404, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1405 = lshr i128 %129, 116
  %shr118.i.1406 = trunc i128 %shr116.i.1405 to i64
  %shr123.i.1408 = lshr i64 %conv19.i.1353, 58
  %139 = lshr i128 %130, 58
  %and129.i.1410 = trunc i128 %139 to i64
  %shl130.i.1411 = and i64 %and129.i.1410, 288230376151711680
  %add120.i.1407 = add nuw nsw i64 %shr123.i.1408, %shr118.i.1406
  %add125.i.1409 = add nuw nsw i64 %add120.i.1407, %and24.i.1358
  %add132.i.1412 = add nuw nsw i64 %add125.i.1409, %shl130.i.1411
  store i64 %add132.i.1412, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1413 = lshr i128 %130, 116
  %shr136.i.1414 = trunc i128 %shr134.i.1413 to i64
  %shr141.i.1416 = lshr i64 %conv23.i.1357, 58
  %140 = lshr i128 %131, 58
  %and147.i.1418 = trunc i128 %140 to i64
  %shl148.i.1419 = and i64 %and147.i.1418, 288230376151711680
  %add138.i.1415 = add nuw nsw i64 %shr141.i.1416, %shr136.i.1414
  %add143.i.1417 = add nuw nsw i64 %add138.i.1415, %and28.i.1362
  %add150.i.1420 = add nuw nsw i64 %add143.i.1417, %shl148.i.1419
  store i64 %add150.i.1420, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1421 = lshr i128 %131, 116
  %shr154.i.1422 = trunc i128 %shr152.i.1421 to i64
  %shr159.i.1424 = lshr i64 %conv27.i.1361, 58
  %141 = lshr i128 %132, 58
  %and165.i.1426 = trunc i128 %141 to i64
  %shl166.i.1427 = and i64 %and165.i.1426, 288230376151711680
  %add156.i.1423 = add nuw nsw i64 %shr159.i.1424, %shr154.i.1422
  %add161.i.1425 = add nuw nsw i64 %add156.i.1423, %and32.i.1366
  %add168.i.1428 = add nuw nsw i64 %add161.i.1425, %shl166.i.1427
  store i64 %add168.i.1428, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1429 = lshr i128 %132, 116
  %shr172.i.1430 = trunc i128 %shr170.i.1429 to i64
  %shr175.i.1432 = lshr i64 %conv31.i.1365, 58
  %add176.i.1433 = add nuw nsw i64 %shr175.i.1432, %shr172.i.1430
  %142 = lshr i128 %133, 58
  %and180.i.1434 = trunc i128 %142 to i64
  %shl181.i.1435 = and i64 %and180.i.1434, 288230376151711680
  %add182.i.1436 = add nuw nsw i64 %add176.i.1433, %shl181.i.1435
  %shl187.i.1437 = shl nuw nsw i64 %add182.i.1436, 1
  %143 = lshr i128 %133, 115
  %.tr.i.1438 = trunc i128 %143 to i64
  %shl188.i.1439 = and i64 %.tr.i.1438, 8190
  %144 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1440 = add i64 %shl187.i.1437, %144
  %add192.i.1441 = add nuw nsw i64 %shl188.i.1439, %add42.i.1372
  %shr194.i.1442 = lshr i64 %add190.i.1440, 58
  %add196.i.1443 = add nuw nsw i64 %add192.i.1441, %shr194.i.1442
  store i64 %add196.i.1443, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1444 = and i64 %add190.i.1440, 288230376151711743
  store i64 %and198.i.1444, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %145 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1556 = trunc i128 %145 to i64
  %and.i.1557 = and i64 %conv.i.1556, 288230376151711743
  store i64 %and.i.1557, i64* %arraydecay24, align 16, !tbaa !6
  %146 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1559 = trunc i128 %146 to i64
  %and4.i.1560 = and i64 %conv3.i.1559, 288230376151711743
  %147 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1563 = trunc i128 %147 to i64
  %and8.i.1564 = and i64 %conv7.i.1563, 288230376151711743
  %148 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1567 = trunc i128 %148 to i64
  %and12.i.1568 = and i64 %conv11.i.1567, 288230376151711743
  %149 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1571 = trunc i128 %149 to i64
  %and16.i.1572 = and i64 %conv15.i.1571, 288230376151711743
  %150 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1575 = trunc i128 %150 to i64
  %and20.i.1576 = and i64 %conv19.i.1575, 288230376151711743
  %151 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1579 = trunc i128 %151 to i64
  %and24.i.1580 = and i64 %conv23.i.1579, 288230376151711743
  %152 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1583 = trunc i128 %152 to i64
  %and28.i.1584 = and i64 %conv27.i.1583, 288230376151711743
  %153 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1587 = trunc i128 %153 to i64
  %and32.i.1588 = and i64 %conv31.i.1587, 288230376151711743
  %shr.i.1590 = lshr i64 %conv.i.1556, 58
  %add.i.1591 = add nuw nsw i64 %and4.i.1560, %shr.i.1590
  %154 = lshr i128 %145, 58
  %and40.i.1592 = trunc i128 %154 to i64
  %shl.i.1593 = and i64 %and40.i.1592, 288230376151711680
  %add42.i.1594 = add nuw nsw i64 %add.i.1591, %shl.i.1593
  %shr44.i.1595 = lshr i128 %145, 116
  %shr46.i.1596 = trunc i128 %shr44.i.1595 to i64
  %shr51.i.1598 = lshr i64 %conv3.i.1559, 58
  %155 = lshr i128 %146, 58
  %and57.i.1600 = trunc i128 %155 to i64
  %shl58.i.1601 = and i64 %and57.i.1600, 288230376151711680
  %add48.i.1597 = add nuw nsw i64 %shr51.i.1598, %shr46.i.1596
  %add53.i.1599 = add nuw nsw i64 %add48.i.1597, %and8.i.1564
  %add60.i.1602 = add nuw nsw i64 %add53.i.1599, %shl58.i.1601
  store i64 %add60.i.1602, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1603 = lshr i128 %146, 116
  %shr64.i.1604 = trunc i128 %shr62.i.1603 to i64
  %shr69.i.1606 = lshr i64 %conv7.i.1563, 58
  %156 = lshr i128 %147, 58
  %and75.i.1608 = trunc i128 %156 to i64
  %shl76.i.1609 = and i64 %and75.i.1608, 288230376151711680
  %add66.i.1605 = add nuw nsw i64 %shr69.i.1606, %shr64.i.1604
  %add71.i.1607 = add nuw nsw i64 %add66.i.1605, %and12.i.1568
  %add78.i.1610 = add nuw nsw i64 %add71.i.1607, %shl76.i.1609
  store i64 %add78.i.1610, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1611 = lshr i128 %147, 116
  %shr82.i.1612 = trunc i128 %shr80.i.1611 to i64
  %shr87.i.1614 = lshr i64 %conv11.i.1567, 58
  %157 = lshr i128 %148, 58
  %and93.i.1616 = trunc i128 %157 to i64
  %shl94.i.1617 = and i64 %and93.i.1616, 288230376151711680
  %add84.i.1613 = add nuw nsw i64 %shr87.i.1614, %shr82.i.1612
  %add89.i.1615 = add nuw nsw i64 %add84.i.1613, %and16.i.1572
  %add96.i.1618 = add nuw nsw i64 %add89.i.1615, %shl94.i.1617
  store i64 %add96.i.1618, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1619 = lshr i128 %148, 116
  %shr100.i.1620 = trunc i128 %shr98.i.1619 to i64
  %shr105.i.1622 = lshr i64 %conv15.i.1571, 58
  %158 = lshr i128 %149, 58
  %and111.i.1624 = trunc i128 %158 to i64
  %shl112.i.1625 = and i64 %and111.i.1624, 288230376151711680
  %add102.i.1621 = add nuw nsw i64 %shr105.i.1622, %shr100.i.1620
  %add107.i.1623 = add nuw nsw i64 %add102.i.1621, %and20.i.1576
  %add114.i.1626 = add nuw nsw i64 %add107.i.1623, %shl112.i.1625
  store i64 %add114.i.1626, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1627 = lshr i128 %149, 116
  %shr118.i.1628 = trunc i128 %shr116.i.1627 to i64
  %shr123.i.1630 = lshr i64 %conv19.i.1575, 58
  %159 = lshr i128 %150, 58
  %and129.i.1632 = trunc i128 %159 to i64
  %shl130.i.1633 = and i64 %and129.i.1632, 288230376151711680
  %add120.i.1629 = add nuw nsw i64 %shr123.i.1630, %shr118.i.1628
  %add125.i.1631 = add nuw nsw i64 %add120.i.1629, %and24.i.1580
  %add132.i.1634 = add nuw nsw i64 %add125.i.1631, %shl130.i.1633
  store i64 %add132.i.1634, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1635 = lshr i128 %150, 116
  %shr136.i.1636 = trunc i128 %shr134.i.1635 to i64
  %shr141.i.1638 = lshr i64 %conv23.i.1579, 58
  %160 = lshr i128 %151, 58
  %and147.i.1640 = trunc i128 %160 to i64
  %shl148.i.1641 = and i64 %and147.i.1640, 288230376151711680
  %add138.i.1637 = add nuw nsw i64 %shr141.i.1638, %shr136.i.1636
  %add143.i.1639 = add nuw nsw i64 %add138.i.1637, %and28.i.1584
  %add150.i.1642 = add nuw nsw i64 %add143.i.1639, %shl148.i.1641
  store i64 %add150.i.1642, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1643 = lshr i128 %151, 116
  %shr154.i.1644 = trunc i128 %shr152.i.1643 to i64
  %shr159.i.1646 = lshr i64 %conv27.i.1583, 58
  %161 = lshr i128 %152, 58
  %and165.i.1648 = trunc i128 %161 to i64
  %shl166.i.1649 = and i64 %and165.i.1648, 288230376151711680
  %add156.i.1645 = add nuw nsw i64 %shr159.i.1646, %shr154.i.1644
  %add161.i.1647 = add nuw nsw i64 %add156.i.1645, %and32.i.1588
  %add168.i.1650 = add nuw nsw i64 %add161.i.1647, %shl166.i.1649
  store i64 %add168.i.1650, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1651 = lshr i128 %152, 116
  %shr172.i.1652 = trunc i128 %shr170.i.1651 to i64
  %shr175.i.1654 = lshr i64 %conv31.i.1587, 58
  %add176.i.1655 = add nuw nsw i64 %shr175.i.1654, %shr172.i.1652
  %162 = lshr i128 %153, 58
  %and180.i.1656 = trunc i128 %162 to i64
  %shl181.i.1657 = and i64 %and180.i.1656, 288230376151711680
  %add182.i.1658 = add nuw nsw i64 %add176.i.1655, %shl181.i.1657
  %shl187.i.1659 = shl nuw nsw i64 %add182.i.1658, 1
  %163 = lshr i128 %153, 115
  %.tr.i.1660 = trunc i128 %163 to i64
  %shl188.i.1661 = and i64 %.tr.i.1660, 8190
  %164 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1662 = add i64 %shl187.i.1659, %164
  %add192.i.1663 = add nuw nsw i64 %shl188.i.1661, %add42.i.1594
  %shr194.i.1664 = lshr i64 %add190.i.1662, 58
  %add196.i.1665 = add nuw nsw i64 %add192.i.1663, %shr194.i.1664
  store i64 %add196.i.1665, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1666 = and i64 %add190.i.1662, 288230376151711743
  store i64 %and198.i.1666, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.1666, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.1665, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.1602, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.1610, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.1618, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.1626, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.1634, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.1642, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.1650, i64* %arrayidx17.i.318, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %165 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1921 = trunc i128 %165 to i64
  %and.i.1922 = and i64 %conv.i.1921, 288230376151711743
  store i64 %and.i.1922, i64* %arraydecay24, align 16, !tbaa !6
  %166 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1924 = trunc i128 %166 to i64
  %and4.i.1925 = and i64 %conv3.i.1924, 288230376151711743
  %167 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1928 = trunc i128 %167 to i64
  %and8.i.1929 = and i64 %conv7.i.1928, 288230376151711743
  %168 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1932 = trunc i128 %168 to i64
  %and12.i.1933 = and i64 %conv11.i.1932, 288230376151711743
  %169 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1936 = trunc i128 %169 to i64
  %and16.i.1937 = and i64 %conv15.i.1936, 288230376151711743
  %170 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1940 = trunc i128 %170 to i64
  %and20.i.1941 = and i64 %conv19.i.1940, 288230376151711743
  %171 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1944 = trunc i128 %171 to i64
  %and24.i.1945 = and i64 %conv23.i.1944, 288230376151711743
  %172 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1948 = trunc i128 %172 to i64
  %and28.i.1949 = and i64 %conv27.i.1948, 288230376151711743
  %173 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1952 = trunc i128 %173 to i64
  %and32.i.1953 = and i64 %conv31.i.1952, 288230376151711743
  %shr.i.1955 = lshr i64 %conv.i.1921, 58
  %add.i.1956 = add nuw nsw i64 %and4.i.1925, %shr.i.1955
  %174 = lshr i128 %165, 58
  %and40.i.1957 = trunc i128 %174 to i64
  %shl.i.1958 = and i64 %and40.i.1957, 288230376151711680
  %add42.i.1959 = add nuw nsw i64 %add.i.1956, %shl.i.1958
  %shr44.i.1960 = lshr i128 %165, 116
  %shr46.i.1961 = trunc i128 %shr44.i.1960 to i64
  %shr51.i.1963 = lshr i64 %conv3.i.1924, 58
  %175 = lshr i128 %166, 58
  %and57.i.1965 = trunc i128 %175 to i64
  %shl58.i.1966 = and i64 %and57.i.1965, 288230376151711680
  %add48.i.1962 = add nuw nsw i64 %shr51.i.1963, %shr46.i.1961
  %add53.i.1964 = add nuw nsw i64 %add48.i.1962, %and8.i.1929
  %add60.i.1967 = add nuw nsw i64 %add53.i.1964, %shl58.i.1966
  store i64 %add60.i.1967, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1968 = lshr i128 %166, 116
  %shr64.i.1969 = trunc i128 %shr62.i.1968 to i64
  %shr69.i.1971 = lshr i64 %conv7.i.1928, 58
  %176 = lshr i128 %167, 58
  %and75.i.1973 = trunc i128 %176 to i64
  %shl76.i.1974 = and i64 %and75.i.1973, 288230376151711680
  %add66.i.1970 = add nuw nsw i64 %shr69.i.1971, %shr64.i.1969
  %add71.i.1972 = add nuw nsw i64 %add66.i.1970, %and12.i.1933
  %add78.i.1975 = add nuw nsw i64 %add71.i.1972, %shl76.i.1974
  store i64 %add78.i.1975, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1976 = lshr i128 %167, 116
  %shr82.i.1977 = trunc i128 %shr80.i.1976 to i64
  %shr87.i.1979 = lshr i64 %conv11.i.1932, 58
  %177 = lshr i128 %168, 58
  %and93.i.1981 = trunc i128 %177 to i64
  %shl94.i.1982 = and i64 %and93.i.1981, 288230376151711680
  %add84.i.1978 = add nuw nsw i64 %shr87.i.1979, %shr82.i.1977
  %add89.i.1980 = add nuw nsw i64 %add84.i.1978, %and16.i.1937
  %add96.i.1983 = add nuw nsw i64 %add89.i.1980, %shl94.i.1982
  store i64 %add96.i.1983, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1984 = lshr i128 %168, 116
  %shr100.i.1985 = trunc i128 %shr98.i.1984 to i64
  %shr105.i.1987 = lshr i64 %conv15.i.1936, 58
  %178 = lshr i128 %169, 58
  %and111.i.1989 = trunc i128 %178 to i64
  %shl112.i.1990 = and i64 %and111.i.1989, 288230376151711680
  %add102.i.1986 = add nuw nsw i64 %shr105.i.1987, %shr100.i.1985
  %add107.i.1988 = add nuw nsw i64 %add102.i.1986, %and20.i.1941
  %add114.i.1991 = add nuw nsw i64 %add107.i.1988, %shl112.i.1990
  store i64 %add114.i.1991, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1992 = lshr i128 %169, 116
  %shr118.i.1993 = trunc i128 %shr116.i.1992 to i64
  %shr123.i.1995 = lshr i64 %conv19.i.1940, 58
  %179 = lshr i128 %170, 58
  %and129.i.1997 = trunc i128 %179 to i64
  %shl130.i.1998 = and i64 %and129.i.1997, 288230376151711680
  %add120.i.1994 = add nuw nsw i64 %shr123.i.1995, %shr118.i.1993
  %add125.i.1996 = add nuw nsw i64 %add120.i.1994, %and24.i.1945
  %add132.i.1999 = add nuw nsw i64 %add125.i.1996, %shl130.i.1998
  store i64 %add132.i.1999, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2000 = lshr i128 %170, 116
  %shr136.i.2001 = trunc i128 %shr134.i.2000 to i64
  %shr141.i.2003 = lshr i64 %conv23.i.1944, 58
  %180 = lshr i128 %171, 58
  %and147.i.2005 = trunc i128 %180 to i64
  %shl148.i.2006 = and i64 %and147.i.2005, 288230376151711680
  %add138.i.2002 = add nuw nsw i64 %shr141.i.2003, %shr136.i.2001
  %add143.i.2004 = add nuw nsw i64 %add138.i.2002, %and28.i.1949
  %add150.i.2007 = add nuw nsw i64 %add143.i.2004, %shl148.i.2006
  store i64 %add150.i.2007, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2008 = lshr i128 %171, 116
  %shr154.i.2009 = trunc i128 %shr152.i.2008 to i64
  %shr159.i.2011 = lshr i64 %conv27.i.1948, 58
  %181 = lshr i128 %172, 58
  %and165.i.2013 = trunc i128 %181 to i64
  %shl166.i.2014 = and i64 %and165.i.2013, 288230376151711680
  %add156.i.2010 = add nuw nsw i64 %shr159.i.2011, %shr154.i.2009
  %add161.i.2012 = add nuw nsw i64 %add156.i.2010, %and32.i.1953
  %add168.i.2015 = add nuw nsw i64 %add161.i.2012, %shl166.i.2014
  store i64 %add168.i.2015, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2016 = lshr i128 %172, 116
  %shr172.i.2017 = trunc i128 %shr170.i.2016 to i64
  %shr175.i.2019 = lshr i64 %conv31.i.1952, 58
  %add176.i.2020 = add nuw nsw i64 %shr175.i.2019, %shr172.i.2017
  %182 = lshr i128 %173, 58
  %and180.i.2021 = trunc i128 %182 to i64
  %shl181.i.2022 = and i64 %and180.i.2021, 288230376151711680
  %add182.i.2023 = add nuw nsw i64 %add176.i.2020, %shl181.i.2022
  %shl187.i.2024 = shl nuw nsw i64 %add182.i.2023, 1
  %183 = lshr i128 %173, 115
  %.tr.i.2025 = trunc i128 %183 to i64
  %shl188.i.2026 = and i64 %.tr.i.2025, 8190
  %184 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2027 = add i64 %shl187.i.2024, %184
  %add192.i.2028 = add nuw nsw i64 %shl188.i.2026, %add42.i.1959
  %shr194.i.2029 = lshr i64 %add190.i.2027, 58
  %add196.i.2030 = add nuw nsw i64 %add192.i.2028, %shr194.i.2029
  store i64 %add196.i.2030, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2031 = and i64 %add190.i.2027, 288230376151711743
  store i64 %and198.i.2031, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %185 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2159 = trunc i128 %185 to i64
  %and.i.2160 = and i64 %conv.i.2159, 288230376151711743
  store i64 %and.i.2160, i64* %arraydecay24, align 16, !tbaa !6
  %186 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2162 = trunc i128 %186 to i64
  %and4.i.2163 = and i64 %conv3.i.2162, 288230376151711743
  %187 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2166 = trunc i128 %187 to i64
  %and8.i.2167 = and i64 %conv7.i.2166, 288230376151711743
  %188 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2170 = trunc i128 %188 to i64
  %and12.i.2171 = and i64 %conv11.i.2170, 288230376151711743
  %189 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2174 = trunc i128 %189 to i64
  %and16.i.2175 = and i64 %conv15.i.2174, 288230376151711743
  %190 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2178 = trunc i128 %190 to i64
  %and20.i.2179 = and i64 %conv19.i.2178, 288230376151711743
  %191 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2182 = trunc i128 %191 to i64
  %and24.i.2183 = and i64 %conv23.i.2182, 288230376151711743
  %192 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2186 = trunc i128 %192 to i64
  %and28.i.2187 = and i64 %conv27.i.2186, 288230376151711743
  %193 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2190 = trunc i128 %193 to i64
  %and32.i.2191 = and i64 %conv31.i.2190, 288230376151711743
  %shr.i.2193 = lshr i64 %conv.i.2159, 58
  %add.i.2194 = add nuw nsw i64 %and4.i.2163, %shr.i.2193
  %194 = lshr i128 %185, 58
  %and40.i.2195 = trunc i128 %194 to i64
  %shl.i.2196 = and i64 %and40.i.2195, 288230376151711680
  %add42.i.2197 = add nuw nsw i64 %add.i.2194, %shl.i.2196
  %shr44.i.2198 = lshr i128 %185, 116
  %shr46.i.2199 = trunc i128 %shr44.i.2198 to i64
  %shr51.i.2201 = lshr i64 %conv3.i.2162, 58
  %195 = lshr i128 %186, 58
  %and57.i.2203 = trunc i128 %195 to i64
  %shl58.i.2204 = and i64 %and57.i.2203, 288230376151711680
  %add48.i.2200 = add nuw nsw i64 %shr51.i.2201, %shr46.i.2199
  %add53.i.2202 = add nuw nsw i64 %add48.i.2200, %and8.i.2167
  %add60.i.2205 = add nuw nsw i64 %add53.i.2202, %shl58.i.2204
  store i64 %add60.i.2205, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2206 = lshr i128 %186, 116
  %shr64.i.2207 = trunc i128 %shr62.i.2206 to i64
  %shr69.i.2209 = lshr i64 %conv7.i.2166, 58
  %196 = lshr i128 %187, 58
  %and75.i.2211 = trunc i128 %196 to i64
  %shl76.i.2212 = and i64 %and75.i.2211, 288230376151711680
  %add66.i.2208 = add nuw nsw i64 %shr69.i.2209, %shr64.i.2207
  %add71.i.2210 = add nuw nsw i64 %add66.i.2208, %and12.i.2171
  %add78.i.2213 = add nuw nsw i64 %add71.i.2210, %shl76.i.2212
  store i64 %add78.i.2213, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2214 = lshr i128 %187, 116
  %shr82.i.2215 = trunc i128 %shr80.i.2214 to i64
  %shr87.i.2217 = lshr i64 %conv11.i.2170, 58
  %197 = lshr i128 %188, 58
  %and93.i.2219 = trunc i128 %197 to i64
  %shl94.i.2220 = and i64 %and93.i.2219, 288230376151711680
  %add84.i.2216 = add nuw nsw i64 %shr87.i.2217, %shr82.i.2215
  %add89.i.2218 = add nuw nsw i64 %add84.i.2216, %and16.i.2175
  %add96.i.2221 = add nuw nsw i64 %add89.i.2218, %shl94.i.2220
  store i64 %add96.i.2221, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2222 = lshr i128 %188, 116
  %shr100.i.2223 = trunc i128 %shr98.i.2222 to i64
  %shr105.i.2225 = lshr i64 %conv15.i.2174, 58
  %198 = lshr i128 %189, 58
  %and111.i.2227 = trunc i128 %198 to i64
  %shl112.i.2228 = and i64 %and111.i.2227, 288230376151711680
  %add102.i.2224 = add nuw nsw i64 %shr105.i.2225, %shr100.i.2223
  %add107.i.2226 = add nuw nsw i64 %add102.i.2224, %and20.i.2179
  %add114.i.2229 = add nuw nsw i64 %add107.i.2226, %shl112.i.2228
  store i64 %add114.i.2229, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2230 = lshr i128 %189, 116
  %shr118.i.2231 = trunc i128 %shr116.i.2230 to i64
  %shr123.i.2233 = lshr i64 %conv19.i.2178, 58
  %199 = lshr i128 %190, 58
  %and129.i.2235 = trunc i128 %199 to i64
  %shl130.i.2236 = and i64 %and129.i.2235, 288230376151711680
  %add120.i.2232 = add nuw nsw i64 %shr123.i.2233, %shr118.i.2231
  %add125.i.2234 = add nuw nsw i64 %add120.i.2232, %and24.i.2183
  %add132.i.2237 = add nuw nsw i64 %add125.i.2234, %shl130.i.2236
  store i64 %add132.i.2237, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2238 = lshr i128 %190, 116
  %shr136.i.2239 = trunc i128 %shr134.i.2238 to i64
  %shr141.i.2241 = lshr i64 %conv23.i.2182, 58
  %200 = lshr i128 %191, 58
  %and147.i.2243 = trunc i128 %200 to i64
  %shl148.i.2244 = and i64 %and147.i.2243, 288230376151711680
  %add138.i.2240 = add nuw nsw i64 %shr141.i.2241, %shr136.i.2239
  %add143.i.2242 = add nuw nsw i64 %add138.i.2240, %and28.i.2187
  %add150.i.2245 = add nuw nsw i64 %add143.i.2242, %shl148.i.2244
  store i64 %add150.i.2245, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2246 = lshr i128 %191, 116
  %shr154.i.2247 = trunc i128 %shr152.i.2246 to i64
  %shr159.i.2249 = lshr i64 %conv27.i.2186, 58
  %201 = lshr i128 %192, 58
  %and165.i.2251 = trunc i128 %201 to i64
  %shl166.i.2252 = and i64 %and165.i.2251, 288230376151711680
  %add156.i.2248 = add nuw nsw i64 %shr159.i.2249, %shr154.i.2247
  %add161.i.2250 = add nuw nsw i64 %add156.i.2248, %and32.i.2191
  %add168.i.2253 = add nuw nsw i64 %add161.i.2250, %shl166.i.2252
  store i64 %add168.i.2253, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2254 = lshr i128 %192, 116
  %shr172.i.2255 = trunc i128 %shr170.i.2254 to i64
  %shr175.i.2257 = lshr i64 %conv31.i.2190, 58
  %add176.i.2258 = add nuw nsw i64 %shr175.i.2257, %shr172.i.2255
  %202 = lshr i128 %193, 58
  %and180.i.2259 = trunc i128 %202 to i64
  %shl181.i.2260 = and i64 %and180.i.2259, 288230376151711680
  %add182.i.2261 = add nuw nsw i64 %add176.i.2258, %shl181.i.2260
  %shl187.i.2262 = shl nuw nsw i64 %add182.i.2261, 1
  %203 = lshr i128 %193, 115
  %.tr.i.2263 = trunc i128 %203 to i64
  %shl188.i.2264 = and i64 %.tr.i.2263, 8190
  %204 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2265 = add i64 %shl187.i.2262, %204
  %add192.i.2266 = add nuw nsw i64 %shl188.i.2264, %add42.i.2197
  %shr194.i.2267 = lshr i64 %add190.i.2265, 58
  %add196.i.2268 = add nuw nsw i64 %add192.i.2266, %shr194.i.2267
  store i64 %add196.i.2268, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2269 = and i64 %add190.i.2265, 288230376151711743
  store i64 %and198.i.2269, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %205 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2381 = trunc i128 %205 to i64
  %and.i.2382 = and i64 %conv.i.2381, 288230376151711743
  store i64 %and.i.2382, i64* %arraydecay24, align 16, !tbaa !6
  %206 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2384 = trunc i128 %206 to i64
  %and4.i.2385 = and i64 %conv3.i.2384, 288230376151711743
  %207 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2388 = trunc i128 %207 to i64
  %and8.i.2389 = and i64 %conv7.i.2388, 288230376151711743
  %208 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2392 = trunc i128 %208 to i64
  %and12.i.2393 = and i64 %conv11.i.2392, 288230376151711743
  %209 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2396 = trunc i128 %209 to i64
  %and16.i.2397 = and i64 %conv15.i.2396, 288230376151711743
  %210 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2400 = trunc i128 %210 to i64
  %and20.i.2401 = and i64 %conv19.i.2400, 288230376151711743
  %211 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2404 = trunc i128 %211 to i64
  %and24.i.2405 = and i64 %conv23.i.2404, 288230376151711743
  %212 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2408 = trunc i128 %212 to i64
  %and28.i.2409 = and i64 %conv27.i.2408, 288230376151711743
  %213 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2412 = trunc i128 %213 to i64
  %and32.i.2413 = and i64 %conv31.i.2412, 288230376151711743
  %shr.i.2415 = lshr i64 %conv.i.2381, 58
  %add.i.2416 = add nuw nsw i64 %and4.i.2385, %shr.i.2415
  %214 = lshr i128 %205, 58
  %and40.i.2417 = trunc i128 %214 to i64
  %shl.i.2418 = and i64 %and40.i.2417, 288230376151711680
  %add42.i.2419 = add nuw nsw i64 %add.i.2416, %shl.i.2418
  %shr44.i.2420 = lshr i128 %205, 116
  %shr46.i.2421 = trunc i128 %shr44.i.2420 to i64
  %shr51.i.2423 = lshr i64 %conv3.i.2384, 58
  %215 = lshr i128 %206, 58
  %and57.i.2425 = trunc i128 %215 to i64
  %shl58.i.2426 = and i64 %and57.i.2425, 288230376151711680
  %add48.i.2422 = add nuw nsw i64 %shr51.i.2423, %shr46.i.2421
  %add53.i.2424 = add nuw nsw i64 %add48.i.2422, %and8.i.2389
  %add60.i.2427 = add nuw nsw i64 %add53.i.2424, %shl58.i.2426
  store i64 %add60.i.2427, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2428 = lshr i128 %206, 116
  %shr64.i.2429 = trunc i128 %shr62.i.2428 to i64
  %shr69.i.2431 = lshr i64 %conv7.i.2388, 58
  %216 = lshr i128 %207, 58
  %and75.i.2433 = trunc i128 %216 to i64
  %shl76.i.2434 = and i64 %and75.i.2433, 288230376151711680
  %add66.i.2430 = add nuw nsw i64 %shr69.i.2431, %shr64.i.2429
  %add71.i.2432 = add nuw nsw i64 %add66.i.2430, %and12.i.2393
  %add78.i.2435 = add nuw nsw i64 %add71.i.2432, %shl76.i.2434
  store i64 %add78.i.2435, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2436 = lshr i128 %207, 116
  %shr82.i.2437 = trunc i128 %shr80.i.2436 to i64
  %shr87.i.2439 = lshr i64 %conv11.i.2392, 58
  %217 = lshr i128 %208, 58
  %and93.i.2441 = trunc i128 %217 to i64
  %shl94.i.2442 = and i64 %and93.i.2441, 288230376151711680
  %add84.i.2438 = add nuw nsw i64 %shr87.i.2439, %shr82.i.2437
  %add89.i.2440 = add nuw nsw i64 %add84.i.2438, %and16.i.2397
  %add96.i.2443 = add nuw nsw i64 %add89.i.2440, %shl94.i.2442
  store i64 %add96.i.2443, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2444 = lshr i128 %208, 116
  %shr100.i.2445 = trunc i128 %shr98.i.2444 to i64
  %shr105.i.2447 = lshr i64 %conv15.i.2396, 58
  %218 = lshr i128 %209, 58
  %and111.i.2449 = trunc i128 %218 to i64
  %shl112.i.2450 = and i64 %and111.i.2449, 288230376151711680
  %add102.i.2446 = add nuw nsw i64 %shr105.i.2447, %shr100.i.2445
  %add107.i.2448 = add nuw nsw i64 %add102.i.2446, %and20.i.2401
  %add114.i.2451 = add nuw nsw i64 %add107.i.2448, %shl112.i.2450
  store i64 %add114.i.2451, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2452 = lshr i128 %209, 116
  %shr118.i.2453 = trunc i128 %shr116.i.2452 to i64
  %shr123.i.2455 = lshr i64 %conv19.i.2400, 58
  %219 = lshr i128 %210, 58
  %and129.i.2457 = trunc i128 %219 to i64
  %shl130.i.2458 = and i64 %and129.i.2457, 288230376151711680
  %add120.i.2454 = add nuw nsw i64 %shr123.i.2455, %shr118.i.2453
  %add125.i.2456 = add nuw nsw i64 %add120.i.2454, %and24.i.2405
  %add132.i.2459 = add nuw nsw i64 %add125.i.2456, %shl130.i.2458
  store i64 %add132.i.2459, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2460 = lshr i128 %210, 116
  %shr136.i.2461 = trunc i128 %shr134.i.2460 to i64
  %shr141.i.2463 = lshr i64 %conv23.i.2404, 58
  %220 = lshr i128 %211, 58
  %and147.i.2465 = trunc i128 %220 to i64
  %shl148.i.2466 = and i64 %and147.i.2465, 288230376151711680
  %add138.i.2462 = add nuw nsw i64 %shr141.i.2463, %shr136.i.2461
  %add143.i.2464 = add nuw nsw i64 %add138.i.2462, %and28.i.2409
  %add150.i.2467 = add nuw nsw i64 %add143.i.2464, %shl148.i.2466
  store i64 %add150.i.2467, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2468 = lshr i128 %211, 116
  %shr154.i.2469 = trunc i128 %shr152.i.2468 to i64
  %shr159.i.2471 = lshr i64 %conv27.i.2408, 58
  %221 = lshr i128 %212, 58
  %and165.i.2473 = trunc i128 %221 to i64
  %shl166.i.2474 = and i64 %and165.i.2473, 288230376151711680
  %add156.i.2470 = add nuw nsw i64 %shr159.i.2471, %shr154.i.2469
  %add161.i.2472 = add nuw nsw i64 %add156.i.2470, %and32.i.2413
  %add168.i.2475 = add nuw nsw i64 %add161.i.2472, %shl166.i.2474
  store i64 %add168.i.2475, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2476 = lshr i128 %212, 116
  %shr172.i.2477 = trunc i128 %shr170.i.2476 to i64
  %shr175.i.2479 = lshr i64 %conv31.i.2412, 58
  %add176.i.2480 = add nuw nsw i64 %shr175.i.2479, %shr172.i.2477
  %222 = lshr i128 %213, 58
  %and180.i.2481 = trunc i128 %222 to i64
  %shl181.i.2482 = and i64 %and180.i.2481, 288230376151711680
  %add182.i.2483 = add nuw nsw i64 %add176.i.2480, %shl181.i.2482
  %shl187.i.2484 = shl nuw nsw i64 %add182.i.2483, 1
  %223 = lshr i128 %213, 115
  %.tr.i.2485 = trunc i128 %223 to i64
  %shl188.i.2486 = and i64 %.tr.i.2485, 8190
  %224 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2487 = add i64 %shl187.i.2484, %224
  %add192.i.2488 = add nuw nsw i64 %shl188.i.2486, %add42.i.2419
  %shr194.i.2489 = lshr i64 %add190.i.2487, 58
  %add196.i.2490 = add nuw nsw i64 %add192.i.2488, %shr194.i.2489
  store i64 %add196.i.2490, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2491 = and i64 %add190.i.2487, 288230376151711743
  store i64 %and198.i.2491, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %225 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2619 = trunc i128 %225 to i64
  %and.i.2620 = and i64 %conv.i.2619, 288230376151711743
  store i64 %and.i.2620, i64* %arraydecay24, align 16, !tbaa !6
  %226 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2622 = trunc i128 %226 to i64
  %and4.i.2623 = and i64 %conv3.i.2622, 288230376151711743
  %227 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2626 = trunc i128 %227 to i64
  %and8.i.2627 = and i64 %conv7.i.2626, 288230376151711743
  %228 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2630 = trunc i128 %228 to i64
  %and12.i.2631 = and i64 %conv11.i.2630, 288230376151711743
  %229 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2634 = trunc i128 %229 to i64
  %and16.i.2635 = and i64 %conv15.i.2634, 288230376151711743
  %230 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2638 = trunc i128 %230 to i64
  %and20.i.2639 = and i64 %conv19.i.2638, 288230376151711743
  %231 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2642 = trunc i128 %231 to i64
  %and24.i.2643 = and i64 %conv23.i.2642, 288230376151711743
  %232 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2646 = trunc i128 %232 to i64
  %and28.i.2647 = and i64 %conv27.i.2646, 288230376151711743
  %233 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2650 = trunc i128 %233 to i64
  %and32.i.2651 = and i64 %conv31.i.2650, 288230376151711743
  %shr.i.2653 = lshr i64 %conv.i.2619, 58
  %add.i.2654 = add nuw nsw i64 %and4.i.2623, %shr.i.2653
  %234 = lshr i128 %225, 58
  %and40.i.2655 = trunc i128 %234 to i64
  %shl.i.2656 = and i64 %and40.i.2655, 288230376151711680
  %add42.i.2657 = add nuw nsw i64 %add.i.2654, %shl.i.2656
  %shr44.i.2658 = lshr i128 %225, 116
  %shr46.i.2659 = trunc i128 %shr44.i.2658 to i64
  %shr51.i.2661 = lshr i64 %conv3.i.2622, 58
  %235 = lshr i128 %226, 58
  %and57.i.2663 = trunc i128 %235 to i64
  %shl58.i.2664 = and i64 %and57.i.2663, 288230376151711680
  %add48.i.2660 = add nuw nsw i64 %shr51.i.2661, %shr46.i.2659
  %add53.i.2662 = add nuw nsw i64 %add48.i.2660, %and8.i.2627
  %add60.i.2665 = add nuw nsw i64 %add53.i.2662, %shl58.i.2664
  store i64 %add60.i.2665, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2666 = lshr i128 %226, 116
  %shr64.i.2667 = trunc i128 %shr62.i.2666 to i64
  %shr69.i.2669 = lshr i64 %conv7.i.2626, 58
  %236 = lshr i128 %227, 58
  %and75.i.2671 = trunc i128 %236 to i64
  %shl76.i.2672 = and i64 %and75.i.2671, 288230376151711680
  %add66.i.2668 = add nuw nsw i64 %shr69.i.2669, %shr64.i.2667
  %add71.i.2670 = add nuw nsw i64 %add66.i.2668, %and12.i.2631
  %add78.i.2673 = add nuw nsw i64 %add71.i.2670, %shl76.i.2672
  store i64 %add78.i.2673, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2674 = lshr i128 %227, 116
  %shr82.i.2675 = trunc i128 %shr80.i.2674 to i64
  %shr87.i.2677 = lshr i64 %conv11.i.2630, 58
  %237 = lshr i128 %228, 58
  %and93.i.2679 = trunc i128 %237 to i64
  %shl94.i.2680 = and i64 %and93.i.2679, 288230376151711680
  %add84.i.2676 = add nuw nsw i64 %shr87.i.2677, %shr82.i.2675
  %add89.i.2678 = add nuw nsw i64 %add84.i.2676, %and16.i.2635
  %add96.i.2681 = add nuw nsw i64 %add89.i.2678, %shl94.i.2680
  store i64 %add96.i.2681, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2682 = lshr i128 %228, 116
  %shr100.i.2683 = trunc i128 %shr98.i.2682 to i64
  %shr105.i.2685 = lshr i64 %conv15.i.2634, 58
  %238 = lshr i128 %229, 58
  %and111.i.2687 = trunc i128 %238 to i64
  %shl112.i.2688 = and i64 %and111.i.2687, 288230376151711680
  %add102.i.2684 = add nuw nsw i64 %shr105.i.2685, %shr100.i.2683
  %add107.i.2686 = add nuw nsw i64 %add102.i.2684, %and20.i.2639
  %add114.i.2689 = add nuw nsw i64 %add107.i.2686, %shl112.i.2688
  store i64 %add114.i.2689, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2690 = lshr i128 %229, 116
  %shr118.i.2691 = trunc i128 %shr116.i.2690 to i64
  %shr123.i.2693 = lshr i64 %conv19.i.2638, 58
  %239 = lshr i128 %230, 58
  %and129.i.2695 = trunc i128 %239 to i64
  %shl130.i.2696 = and i64 %and129.i.2695, 288230376151711680
  %add120.i.2692 = add nuw nsw i64 %shr123.i.2693, %shr118.i.2691
  %add125.i.2694 = add nuw nsw i64 %add120.i.2692, %and24.i.2643
  %add132.i.2697 = add nuw nsw i64 %add125.i.2694, %shl130.i.2696
  store i64 %add132.i.2697, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2698 = lshr i128 %230, 116
  %shr136.i.2699 = trunc i128 %shr134.i.2698 to i64
  %shr141.i.2701 = lshr i64 %conv23.i.2642, 58
  %240 = lshr i128 %231, 58
  %and147.i.2703 = trunc i128 %240 to i64
  %shl148.i.2704 = and i64 %and147.i.2703, 288230376151711680
  %add138.i.2700 = add nuw nsw i64 %shr141.i.2701, %shr136.i.2699
  %add143.i.2702 = add nuw nsw i64 %add138.i.2700, %and28.i.2647
  %add150.i.2705 = add nuw nsw i64 %add143.i.2702, %shl148.i.2704
  store i64 %add150.i.2705, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2706 = lshr i128 %231, 116
  %shr154.i.2707 = trunc i128 %shr152.i.2706 to i64
  %shr159.i.2709 = lshr i64 %conv27.i.2646, 58
  %241 = lshr i128 %232, 58
  %and165.i.2711 = trunc i128 %241 to i64
  %shl166.i.2712 = and i64 %and165.i.2711, 288230376151711680
  %add156.i.2708 = add nuw nsw i64 %shr159.i.2709, %shr154.i.2707
  %add161.i.2710 = add nuw nsw i64 %add156.i.2708, %and32.i.2651
  %add168.i.2713 = add nuw nsw i64 %add161.i.2710, %shl166.i.2712
  store i64 %add168.i.2713, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2714 = lshr i128 %232, 116
  %shr172.i.2715 = trunc i128 %shr170.i.2714 to i64
  %shr175.i.2717 = lshr i64 %conv31.i.2650, 58
  %add176.i.2718 = add nuw nsw i64 %shr175.i.2717, %shr172.i.2715
  %242 = lshr i128 %233, 58
  %and180.i.2719 = trunc i128 %242 to i64
  %shl181.i.2720 = and i64 %and180.i.2719, 288230376151711680
  %add182.i.2721 = add nuw nsw i64 %add176.i.2718, %shl181.i.2720
  %shl187.i.2722 = shl nuw nsw i64 %add182.i.2721, 1
  %243 = lshr i128 %233, 115
  %.tr.i.2723 = trunc i128 %243 to i64
  %shl188.i.2724 = and i64 %.tr.i.2723, 8190
  %244 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2725 = add i64 %shl187.i.2722, %244
  %add192.i.2726 = add nuw nsw i64 %shl188.i.2724, %add42.i.2657
  %shr194.i.2727 = lshr i64 %add190.i.2725, 58
  %add196.i.2728 = add nuw nsw i64 %add192.i.2726, %shr194.i.2727
  store i64 %add196.i.2728, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2729 = and i64 %add190.i.2725, 288230376151711743
  store i64 %and198.i.2729, i64* %arraydecay24, align 16, !tbaa !6
  %arraydecay53 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 0
  %arrayidx3.i.2842 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 1
  %arrayidx5.i.2844 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 2
  %arrayidx7.i.2846 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 3
  %arrayidx9.i.2848 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 4
  %arrayidx11.i.2850 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 5
  %arrayidx13.i.2852 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 6
  %arrayidx15.i.2854 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 7
  %arrayidx17.i.2856 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 8
  store i64 %add168.i.2713, i64* %arrayidx17.i.2856, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay2)
  %245 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2984 = trunc i128 %245 to i64
  %and.i.2985 = and i64 %conv.i.2984, 288230376151711743
  store i64 %and.i.2985, i64* %arraydecay53, align 16, !tbaa !6
  %246 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2987 = trunc i128 %246 to i64
  %and4.i.2988 = and i64 %conv3.i.2987, 288230376151711743
  %247 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2991 = trunc i128 %247 to i64
  %and8.i.2992 = and i64 %conv7.i.2991, 288230376151711743
  %248 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2995 = trunc i128 %248 to i64
  %and12.i.2996 = and i64 %conv11.i.2995, 288230376151711743
  %249 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2999 = trunc i128 %249 to i64
  %and16.i.3000 = and i64 %conv15.i.2999, 288230376151711743
  %250 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.3003 = trunc i128 %250 to i64
  %and20.i.3004 = and i64 %conv19.i.3003, 288230376151711743
  %251 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.3007 = trunc i128 %251 to i64
  %and24.i.3008 = and i64 %conv23.i.3007, 288230376151711743
  %252 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.3011 = trunc i128 %252 to i64
  %and28.i.3012 = and i64 %conv27.i.3011, 288230376151711743
  %253 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.3015 = trunc i128 %253 to i64
  %and32.i.3016 = and i64 %conv31.i.3015, 288230376151711743
  %shr.i.3018 = lshr i64 %conv.i.2984, 58
  %add.i.3019 = add nuw nsw i64 %and4.i.2988, %shr.i.3018
  %254 = lshr i128 %245, 58
  %and40.i.3020 = trunc i128 %254 to i64
  %shl.i.3021 = and i64 %and40.i.3020, 288230376151711680
  %add42.i.3022 = add nuw nsw i64 %add.i.3019, %shl.i.3021
  %shr44.i.3023 = lshr i128 %245, 116
  %shr46.i.3024 = trunc i128 %shr44.i.3023 to i64
  %shr51.i.3026 = lshr i64 %conv3.i.2987, 58
  %255 = lshr i128 %246, 58
  %and57.i.3028 = trunc i128 %255 to i64
  %shl58.i.3029 = and i64 %and57.i.3028, 288230376151711680
  %add48.i.3025 = add nuw nsw i64 %shr51.i.3026, %shr46.i.3024
  %add53.i.3027 = add nuw nsw i64 %add48.i.3025, %and8.i.2992
  %add60.i.3030 = add nuw nsw i64 %add53.i.3027, %shl58.i.3029
  store i64 %add60.i.3030, i64* %arrayidx5.i.2844, align 16, !tbaa !6
  %shr62.i.3031 = lshr i128 %246, 116
  %shr64.i.3032 = trunc i128 %shr62.i.3031 to i64
  %shr69.i.3034 = lshr i64 %conv7.i.2991, 58
  %256 = lshr i128 %247, 58
  %and75.i.3036 = trunc i128 %256 to i64
  %shl76.i.3037 = and i64 %and75.i.3036, 288230376151711680
  %add66.i.3033 = add nuw nsw i64 %shr69.i.3034, %shr64.i.3032
  %add71.i.3035 = add nuw nsw i64 %add66.i.3033, %and12.i.2996
  %add78.i.3038 = add nuw nsw i64 %add71.i.3035, %shl76.i.3037
  store i64 %add78.i.3038, i64* %arrayidx7.i.2846, align 8, !tbaa !6
  %shr80.i.3039 = lshr i128 %247, 116
  %shr82.i.3040 = trunc i128 %shr80.i.3039 to i64
  %shr87.i.3042 = lshr i64 %conv11.i.2995, 58
  %257 = lshr i128 %248, 58
  %and93.i.3044 = trunc i128 %257 to i64
  %shl94.i.3045 = and i64 %and93.i.3044, 288230376151711680
  %add84.i.3041 = add nuw nsw i64 %shr87.i.3042, %shr82.i.3040
  %add89.i.3043 = add nuw nsw i64 %add84.i.3041, %and16.i.3000
  %add96.i.3046 = add nuw nsw i64 %add89.i.3043, %shl94.i.3045
  store i64 %add96.i.3046, i64* %arrayidx9.i.2848, align 16, !tbaa !6
  %shr98.i.3047 = lshr i128 %248, 116
  %shr100.i.3048 = trunc i128 %shr98.i.3047 to i64
  %shr105.i.3050 = lshr i64 %conv15.i.2999, 58
  %258 = lshr i128 %249, 58
  %and111.i.3052 = trunc i128 %258 to i64
  %shl112.i.3053 = and i64 %and111.i.3052, 288230376151711680
  %add102.i.3049 = add nuw nsw i64 %shr105.i.3050, %shr100.i.3048
  %add107.i.3051 = add nuw nsw i64 %add102.i.3049, %and20.i.3004
  %add114.i.3054 = add nuw nsw i64 %add107.i.3051, %shl112.i.3053
  store i64 %add114.i.3054, i64* %arrayidx11.i.2850, align 8, !tbaa !6
  %shr116.i.3055 = lshr i128 %249, 116
  %shr118.i.3056 = trunc i128 %shr116.i.3055 to i64
  %shr123.i.3058 = lshr i64 %conv19.i.3003, 58
  %259 = lshr i128 %250, 58
  %and129.i.3060 = trunc i128 %259 to i64
  %shl130.i.3061 = and i64 %and129.i.3060, 288230376151711680
  %add120.i.3057 = add nuw nsw i64 %shr123.i.3058, %shr118.i.3056
  %add125.i.3059 = add nuw nsw i64 %add120.i.3057, %and24.i.3008
  %add132.i.3062 = add nuw nsw i64 %add125.i.3059, %shl130.i.3061
  store i64 %add132.i.3062, i64* %arrayidx13.i.2852, align 16, !tbaa !6
  %shr134.i.3063 = lshr i128 %250, 116
  %shr136.i.3064 = trunc i128 %shr134.i.3063 to i64
  %shr141.i.3066 = lshr i64 %conv23.i.3007, 58
  %260 = lshr i128 %251, 58
  %and147.i.3068 = trunc i128 %260 to i64
  %shl148.i.3069 = and i64 %and147.i.3068, 288230376151711680
  %add138.i.3065 = add nuw nsw i64 %shr141.i.3066, %shr136.i.3064
  %add143.i.3067 = add nuw nsw i64 %add138.i.3065, %and28.i.3012
  %add150.i.3070 = add nuw nsw i64 %add143.i.3067, %shl148.i.3069
  store i64 %add150.i.3070, i64* %arrayidx15.i.2854, align 8, !tbaa !6
  %shr152.i.3071 = lshr i128 %251, 116
  %shr154.i.3072 = trunc i128 %shr152.i.3071 to i64
  %shr159.i.3074 = lshr i64 %conv27.i.3011, 58
  %261 = lshr i128 %252, 58
  %and165.i.3076 = trunc i128 %261 to i64
  %shl166.i.3077 = and i64 %and165.i.3076, 288230376151711680
  %add156.i.3073 = add nuw nsw i64 %shr159.i.3074, %shr154.i.3072
  %add161.i.3075 = add nuw nsw i64 %add156.i.3073, %and32.i.3016
  %add168.i.3078 = add nuw nsw i64 %add161.i.3075, %shl166.i.3077
  store i64 %add168.i.3078, i64* %arrayidx17.i.2856, align 16, !tbaa !6
  %shr170.i.3079 = lshr i128 %252, 116
  %shr172.i.3080 = trunc i128 %shr170.i.3079 to i64
  %shr175.i.3082 = lshr i64 %conv31.i.3015, 58
  %add176.i.3083 = add nuw nsw i64 %shr175.i.3082, %shr172.i.3080
  %262 = lshr i128 %253, 58
  %and180.i.3084 = trunc i128 %262 to i64
  %shl181.i.3085 = and i64 %and180.i.3084, 288230376151711680
  %add182.i.3086 = add nuw nsw i64 %add176.i.3083, %shl181.i.3085
  %shl187.i.3087 = shl nuw nsw i64 %add182.i.3086, 1
  %263 = lshr i128 %253, 115
  %.tr.i.3088 = trunc i128 %263 to i64
  %shl188.i.3089 = and i64 %.tr.i.3088, 8190
  %264 = load i64, i64* %arraydecay53, align 16, !tbaa !6
  %add190.i.3090 = add i64 %shl187.i.3087, %264
  %add192.i.3091 = add nuw nsw i64 %shl188.i.3089, %add42.i.3022
  %shr194.i.3092 = lshr i64 %add190.i.3090, 58
  %add196.i.3093 = add nuw nsw i64 %add192.i.3091, %shr194.i.3092
  store i64 %add196.i.3093, i64* %arrayidx3.i.2842, align 8, !tbaa !6
  %and198.i.3094 = and i64 %add190.i.3090, 288230376151711743
  store i64 %and198.i.3094, i64* %arraydecay53, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay53)
  %265 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.3206 = trunc i128 %265 to i64
  %and.i.3207 = and i64 %conv.i.3206, 288230376151711743
  store i64 %and.i.3207, i64* %arraydecay53, align 16, !tbaa !6
  %266 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.3209 = trunc i128 %266 to i64
  %and4.i.3210 = and i64 %conv3.i.3209, 288230376151711743
  %267 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.3213 = trunc i128 %267 to i64
  %and8.i.3214 = and i64 %conv7.i.3213, 288230376151711743
  %268 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.3217 = trunc i128 %268 to i64
  %and12.i.3218 = and i64 %conv11.i.3217, 288230376151711743
  %269 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.3221 = trunc i128 %269 to i64
  %and16.i.3222 = and i64 %conv15.i.3221, 288230376151711743
  %270 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.3225 = trunc i128 %270 to i64
  %and20.i.3226 = and i64 %conv19.i.3225, 288230376151711743
  %271 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.3229 = trunc i128 %271 to i64
  %and24.i.3230 = and i64 %conv23.i.3229, 288230376151711743
  %272 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.3233 = trunc i128 %272 to i64
  %and28.i.3234 = and i64 %conv27.i.3233, 288230376151711743
  %273 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.3237 = trunc i128 %273 to i64
  %and32.i.3238 = and i64 %conv31.i.3237, 288230376151711743
  %shr.i.3240 = lshr i64 %conv.i.3206, 58
  %add.i.3241 = add nuw nsw i64 %and4.i.3210, %shr.i.3240
  %274 = lshr i128 %265, 58
  %and40.i.3242 = trunc i128 %274 to i64
  %shl.i.3243 = and i64 %and40.i.3242, 288230376151711680
  %add42.i.3244 = add nuw nsw i64 %add.i.3241, %shl.i.3243
  %shr44.i.3245 = lshr i128 %265, 116
  %shr46.i.3246 = trunc i128 %shr44.i.3245 to i64
  %shr51.i.3248 = lshr i64 %conv3.i.3209, 58
  %275 = lshr i128 %266, 58
  %and57.i.3250 = trunc i128 %275 to i64
  %shl58.i.3251 = and i64 %and57.i.3250, 288230376151711680
  %add48.i.3247 = add nuw nsw i64 %shr51.i.3248, %shr46.i.3246
  %add53.i.3249 = add nuw nsw i64 %add48.i.3247, %and8.i.3214
  %add60.i.3252 = add nuw nsw i64 %add53.i.3249, %shl58.i.3251
  store i64 %add60.i.3252, i64* %arrayidx5.i.2844, align 16, !tbaa !6
  %shr62.i.3253 = lshr i128 %266, 116
  %shr64.i.3254 = trunc i128 %shr62.i.3253 to i64
  %shr69.i.3256 = lshr i64 %conv7.i.3213, 58
  %276 = lshr i128 %267, 58
  %and75.i.3258 = trunc i128 %276 to i64
  %shl76.i.3259 = and i64 %and75.i.3258, 288230376151711680
  %add66.i.3255 = add nuw nsw i64 %shr69.i.3256, %shr64.i.3254
  %add71.i.3257 = add nuw nsw i64 %add66.i.3255, %and12.i.3218
  %add78.i.3260 = add nuw nsw i64 %add71.i.3257, %shl76.i.3259
  store i64 %add78.i.3260, i64* %arrayidx7.i.2846, align 8, !tbaa !6
  %shr80.i.3261 = lshr i128 %267, 116
  %shr82.i.3262 = trunc i128 %shr80.i.3261 to i64
  %shr87.i.3264 = lshr i64 %conv11.i.3217, 58
  %277 = lshr i128 %268, 58
  %and93.i.3266 = trunc i128 %277 to i64
  %shl94.i.3267 = and i64 %and93.i.3266, 288230376151711680
  %add84.i.3263 = add nuw nsw i64 %shr87.i.3264, %shr82.i.3262
  %add89.i.3265 = add nuw nsw i64 %add84.i.3263, %and16.i.3222
  %add96.i.3268 = add nuw nsw i64 %add89.i.3265, %shl94.i.3267
  store i64 %add96.i.3268, i64* %arrayidx9.i.2848, align 16, !tbaa !6
  %shr98.i.3269 = lshr i128 %268, 116
  %shr100.i.3270 = trunc i128 %shr98.i.3269 to i64
  %shr105.i.3272 = lshr i64 %conv15.i.3221, 58
  %278 = lshr i128 %269, 58
  %and111.i.3274 = trunc i128 %278 to i64
  %shl112.i.3275 = and i64 %and111.i.3274, 288230376151711680
  %add102.i.3271 = add nuw nsw i64 %shr105.i.3272, %shr100.i.3270
  %add107.i.3273 = add nuw nsw i64 %add102.i.3271, %and20.i.3226
  %add114.i.3276 = add nuw nsw i64 %add107.i.3273, %shl112.i.3275
  store i64 %add114.i.3276, i64* %arrayidx11.i.2850, align 8, !tbaa !6
  %shr116.i.3277 = lshr i128 %269, 116
  %shr118.i.3278 = trunc i128 %shr116.i.3277 to i64
  %shr123.i.3280 = lshr i64 %conv19.i.3225, 58
  %279 = lshr i128 %270, 58
  %and129.i.3282 = trunc i128 %279 to i64
  %shl130.i.3283 = and i64 %and129.i.3282, 288230376151711680
  %add120.i.3279 = add nuw nsw i64 %shr123.i.3280, %shr118.i.3278
  %add125.i.3281 = add nuw nsw i64 %add120.i.3279, %and24.i.3230
  %add132.i.3284 = add nuw nsw i64 %add125.i.3281, %shl130.i.3283
  store i64 %add132.i.3284, i64* %arrayidx13.i.2852, align 16, !tbaa !6
  %shr134.i.3285 = lshr i128 %270, 116
  %shr136.i.3286 = trunc i128 %shr134.i.3285 to i64
  %shr141.i.3288 = lshr i64 %conv23.i.3229, 58
  %280 = lshr i128 %271, 58
  %and147.i.3290 = trunc i128 %280 to i64
  %shl148.i.3291 = and i64 %and147.i.3290, 288230376151711680
  %add138.i.3287 = add nuw nsw i64 %shr141.i.3288, %shr136.i.3286
  %add143.i.3289 = add nuw nsw i64 %add138.i.3287, %and28.i.3234
  %add150.i.3292 = add nuw nsw i64 %add143.i.3289, %shl148.i.3291
  store i64 %add150.i.3292, i64* %arrayidx15.i.2854, align 8, !tbaa !6
  %shr152.i.3293 = lshr i128 %271, 116
  %shr154.i.3294 = trunc i128 %shr152.i.3293 to i64
  %shr159.i.3296 = lshr i64 %conv27.i.3233, 58
  %281 = lshr i128 %272, 58
  %and165.i.3298 = trunc i128 %281 to i64
  %shl166.i.3299 = and i64 %and165.i.3298, 288230376151711680
  %add156.i.3295 = add nuw nsw i64 %shr159.i.3296, %shr154.i.3294
  %add161.i.3297 = add nuw nsw i64 %add156.i.3295, %and32.i.3238
  %add168.i.3300 = add nuw nsw i64 %add161.i.3297, %shl166.i.3299
  store i64 %add168.i.3300, i64* %arrayidx17.i.2856, align 16, !tbaa !6
  %shr170.i.3301 = lshr i128 %272, 116
  %shr172.i.3302 = trunc i128 %shr170.i.3301 to i64
  %shr175.i.3304 = lshr i64 %conv31.i.3237, 58
  %add176.i.3305 = add nuw nsw i64 %shr175.i.3304, %shr172.i.3302
  %282 = lshr i128 %273, 58
  %and180.i.3306 = trunc i128 %282 to i64
  %shl181.i.3307 = and i64 %and180.i.3306, 288230376151711680
  %add182.i.3308 = add nuw nsw i64 %add176.i.3305, %shl181.i.3307
  %shl187.i.3309 = shl nuw nsw i64 %add182.i.3308, 1
  %283 = lshr i128 %273, 115
  %.tr.i.3310 = trunc i128 %283 to i64
  %shl188.i.3311 = and i64 %.tr.i.3310, 8190
  %284 = load i64, i64* %arraydecay53, align 16, !tbaa !6
  %add190.i.3312 = add i64 %shl187.i.3309, %284
  %add192.i.3313 = add nuw nsw i64 %shl188.i.3311, %add42.i.3244
  %shr194.i.3314 = lshr i64 %add190.i.3312, 58
  %add196.i.3315 = add nuw nsw i64 %add192.i.3313, %shr194.i.3314
  store i64 %add196.i.3315, i64* %arrayidx3.i.2842, align 8, !tbaa !6
  %and198.i.3316 = and i64 %add190.i.3312, 288230376151711743
  store i64 %and198.i.3316, i64* %arraydecay53, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %285 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.3333 = trunc i128 %285 to i64
  %and.i.3334 = and i64 %conv.i.3333, 288230376151711743
  store i64 %and.i.3334, i64* %arraydecay24, align 16, !tbaa !6
  %286 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.3336 = trunc i128 %286 to i64
  %and4.i.3337 = and i64 %conv3.i.3336, 288230376151711743
  %287 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.3340 = trunc i128 %287 to i64
  %and8.i.3341 = and i64 %conv7.i.3340, 288230376151711743
  %288 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.3344 = trunc i128 %288 to i64
  %and12.i.3345 = and i64 %conv11.i.3344, 288230376151711743
  %289 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.3348 = trunc i128 %289 to i64
  %and16.i.3349 = and i64 %conv15.i.3348, 288230376151711743
  %290 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.3352 = trunc i128 %290 to i64
  %and20.i.3353 = and i64 %conv19.i.3352, 288230376151711743
  %291 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.3356 = trunc i128 %291 to i64
  %and24.i.3357 = and i64 %conv23.i.3356, 288230376151711743
  %292 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.3360 = trunc i128 %292 to i64
  %and28.i.3361 = and i64 %conv27.i.3360, 288230376151711743
  %293 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.3364 = trunc i128 %293 to i64
  %and32.i.3365 = and i64 %conv31.i.3364, 288230376151711743
  %shr.i.3367 = lshr i64 %conv.i.3333, 58
  %add.i.3368 = add nuw nsw i64 %and4.i.3337, %shr.i.3367
  %294 = lshr i128 %285, 58
  %and40.i.3369 = trunc i128 %294 to i64
  %shl.i.3370 = and i64 %and40.i.3369, 288230376151711680
  %add42.i.3371 = add nuw nsw i64 %add.i.3368, %shl.i.3370
  %shr44.i.3372 = lshr i128 %285, 116
  %shr46.i.3373 = trunc i128 %shr44.i.3372 to i64
  %shr51.i.3375 = lshr i64 %conv3.i.3336, 58
  %295 = lshr i128 %286, 58
  %and57.i.3377 = trunc i128 %295 to i64
  %shl58.i.3378 = and i64 %and57.i.3377, 288230376151711680
  %add48.i.3374 = add nuw nsw i64 %shr51.i.3375, %shr46.i.3373
  %add53.i.3376 = add nuw nsw i64 %add48.i.3374, %and8.i.3341
  %add60.i.3379 = add nuw nsw i64 %add53.i.3376, %shl58.i.3378
  store i64 %add60.i.3379, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.3380 = lshr i128 %286, 116
  %shr64.i.3381 = trunc i128 %shr62.i.3380 to i64
  %shr69.i.3383 = lshr i64 %conv7.i.3340, 58
  %296 = lshr i128 %287, 58
  %and75.i.3385 = trunc i128 %296 to i64
  %shl76.i.3386 = and i64 %and75.i.3385, 288230376151711680
  %add66.i.3382 = add nuw nsw i64 %shr69.i.3383, %shr64.i.3381
  %add71.i.3384 = add nuw nsw i64 %add66.i.3382, %and12.i.3345
  %add78.i.3387 = add nuw nsw i64 %add71.i.3384, %shl76.i.3386
  store i64 %add78.i.3387, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.3388 = lshr i128 %287, 116
  %shr82.i.3389 = trunc i128 %shr80.i.3388 to i64
  %shr87.i.3391 = lshr i64 %conv11.i.3344, 58
  %297 = lshr i128 %288, 58
  %and93.i.3393 = trunc i128 %297 to i64
  %shl94.i.3394 = and i64 %and93.i.3393, 288230376151711680
  %add84.i.3390 = add nuw nsw i64 %shr87.i.3391, %shr82.i.3389
  %add89.i.3392 = add nuw nsw i64 %add84.i.3390, %and16.i.3349
  %add96.i.3395 = add nuw nsw i64 %add89.i.3392, %shl94.i.3394
  store i64 %add96.i.3395, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.3396 = lshr i128 %288, 116
  %shr100.i.3397 = trunc i128 %shr98.i.3396 to i64
  %shr105.i.3399 = lshr i64 %conv15.i.3348, 58
  %298 = lshr i128 %289, 58
  %and111.i.3401 = trunc i128 %298 to i64
  %shl112.i.3402 = and i64 %and111.i.3401, 288230376151711680
  %add102.i.3398 = add nuw nsw i64 %shr105.i.3399, %shr100.i.3397
  %add107.i.3400 = add nuw nsw i64 %add102.i.3398, %and20.i.3353
  %add114.i.3403 = add nuw nsw i64 %add107.i.3400, %shl112.i.3402
  store i64 %add114.i.3403, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.3404 = lshr i128 %289, 116
  %shr118.i.3405 = trunc i128 %shr116.i.3404 to i64
  %shr123.i.3407 = lshr i64 %conv19.i.3352, 58
  %299 = lshr i128 %290, 58
  %and129.i.3409 = trunc i128 %299 to i64
  %shl130.i.3410 = and i64 %and129.i.3409, 288230376151711680
  %add120.i.3406 = add nuw nsw i64 %shr123.i.3407, %shr118.i.3405
  %add125.i.3408 = add nuw nsw i64 %add120.i.3406, %and24.i.3357
  %add132.i.3411 = add nuw nsw i64 %add125.i.3408, %shl130.i.3410
  store i64 %add132.i.3411, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.3412 = lshr i128 %290, 116
  %shr136.i.3413 = trunc i128 %shr134.i.3412 to i64
  %shr141.i.3415 = lshr i64 %conv23.i.3356, 58
  %300 = lshr i128 %291, 58
  %and147.i.3417 = trunc i128 %300 to i64
  %shl148.i.3418 = and i64 %and147.i.3417, 288230376151711680
  %add138.i.3414 = add nuw nsw i64 %shr141.i.3415, %shr136.i.3413
  %add143.i.3416 = add nuw nsw i64 %add138.i.3414, %and28.i.3361
  %add150.i.3419 = add nuw nsw i64 %add143.i.3416, %shl148.i.3418
  store i64 %add150.i.3419, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.3420 = lshr i128 %291, 116
  %shr154.i.3421 = trunc i128 %shr152.i.3420 to i64
  %shr159.i.3423 = lshr i64 %conv27.i.3360, 58
  %301 = lshr i128 %292, 58
  %and165.i.3425 = trunc i128 %301 to i64
  %shl166.i.3426 = and i64 %and165.i.3425, 288230376151711680
  %add156.i.3422 = add nuw nsw i64 %shr159.i.3423, %shr154.i.3421
  %add161.i.3424 = add nuw nsw i64 %add156.i.3422, %and32.i.3365
  %add168.i.3427 = add nuw nsw i64 %add161.i.3424, %shl166.i.3426
  store i64 %add168.i.3427, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.3428 = lshr i128 %292, 116
  %shr172.i.3429 = trunc i128 %shr170.i.3428 to i64
  %shr175.i.3431 = lshr i64 %conv31.i.3364, 58
  %add176.i.3432 = add nuw nsw i64 %shr175.i.3431, %shr172.i.3429
  %302 = lshr i128 %293, 58
  %and180.i.3433 = trunc i128 %302 to i64
  %shl181.i.3434 = and i64 %and180.i.3433, 288230376151711680
  %add182.i.3435 = add nuw nsw i64 %add176.i.3432, %shl181.i.3434
  %shl187.i.3436 = shl nuw nsw i64 %add182.i.3435, 1
  %303 = lshr i128 %293, 115
  %.tr.i.3437 = trunc i128 %303 to i64
  %shl188.i.3438 = and i64 %.tr.i.3437, 8190
  %304 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.3439 = add i64 %shl187.i.3436, %304
  %add192.i.3440 = add nuw nsw i64 %shl188.i.3438, %add42.i.3371
  %shr194.i.3441 = lshr i64 %add190.i.3439, 58
  %add196.i.3442 = add nuw nsw i64 %add192.i.3440, %shr194.i.3441
  store i64 %add196.i.3442, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.3443 = and i64 %add190.i.3439, 288230376151711743
  store i64 %and198.i.3443, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.3443, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.3442, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.3379, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.3387, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.3395, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.3403, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.3411, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.3419, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.3427, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.03450 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %305 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.3095 = trunc i128 %305 to i64
  %and.i.3096 = and i64 %conv.i.3095, 288230376151711743
  store i64 %and.i.3096, i64* %arraydecay24, align 16, !tbaa !6
  %306 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.3098 = trunc i128 %306 to i64
  %and4.i.3099 = and i64 %conv3.i.3098, 288230376151711743
  %307 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.3102 = trunc i128 %307 to i64
  %and8.i.3103 = and i64 %conv7.i.3102, 288230376151711743
  %308 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.3106 = trunc i128 %308 to i64
  %and12.i.3107 = and i64 %conv11.i.3106, 288230376151711743
  %309 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.3110 = trunc i128 %309 to i64
  %and16.i.3111 = and i64 %conv15.i.3110, 288230376151711743
  %310 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.3114 = trunc i128 %310 to i64
  %and20.i.3115 = and i64 %conv19.i.3114, 288230376151711743
  %311 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.3118 = trunc i128 %311 to i64
  %and24.i.3119 = and i64 %conv23.i.3118, 288230376151711743
  %312 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.3122 = trunc i128 %312 to i64
  %and28.i.3123 = and i64 %conv27.i.3122, 288230376151711743
  %313 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.3126 = trunc i128 %313 to i64
  %and32.i.3127 = and i64 %conv31.i.3126, 288230376151711743
  %shr.i.3129 = lshr i64 %conv.i.3095, 58
  %add.i.3130 = add nuw nsw i64 %and4.i.3099, %shr.i.3129
  %314 = lshr i128 %305, 58
  %and40.i.3131 = trunc i128 %314 to i64
  %shl.i.3132 = and i64 %and40.i.3131, 288230376151711680
  %add42.i.3133 = add nuw nsw i64 %add.i.3130, %shl.i.3132
  %shr44.i.3134 = lshr i128 %305, 116
  %shr46.i.3135 = trunc i128 %shr44.i.3134 to i64
  %shr51.i.3137 = lshr i64 %conv3.i.3098, 58
  %315 = lshr i128 %306, 58
  %and57.i.3139 = trunc i128 %315 to i64
  %shl58.i.3140 = and i64 %and57.i.3139, 288230376151711680
  %add48.i.3136 = add nuw nsw i64 %shr51.i.3137, %shr46.i.3135
  %add53.i.3138 = add nuw nsw i64 %add48.i.3136, %and8.i.3103
  %add60.i.3141 = add nuw nsw i64 %add53.i.3138, %shl58.i.3140
  store i64 %add60.i.3141, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.3142 = lshr i128 %306, 116
  %shr64.i.3143 = trunc i128 %shr62.i.3142 to i64
  %shr69.i.3145 = lshr i64 %conv7.i.3102, 58
  %316 = lshr i128 %307, 58
  %and75.i.3147 = trunc i128 %316 to i64
  %shl76.i.3148 = and i64 %and75.i.3147, 288230376151711680
  %add66.i.3144 = add nuw nsw i64 %shr69.i.3145, %shr64.i.3143
  %add71.i.3146 = add nuw nsw i64 %add66.i.3144, %and12.i.3107
  %add78.i.3149 = add nuw nsw i64 %add71.i.3146, %shl76.i.3148
  store i64 %add78.i.3149, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.3150 = lshr i128 %307, 116
  %shr82.i.3151 = trunc i128 %shr80.i.3150 to i64
  %shr87.i.3153 = lshr i64 %conv11.i.3106, 58
  %317 = lshr i128 %308, 58
  %and93.i.3155 = trunc i128 %317 to i64
  %shl94.i.3156 = and i64 %and93.i.3155, 288230376151711680
  %add84.i.3152 = add nuw nsw i64 %shr87.i.3153, %shr82.i.3151
  %add89.i.3154 = add nuw nsw i64 %add84.i.3152, %and16.i.3111
  %add96.i.3157 = add nuw nsw i64 %add89.i.3154, %shl94.i.3156
  store i64 %add96.i.3157, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.3158 = lshr i128 %308, 116
  %shr100.i.3159 = trunc i128 %shr98.i.3158 to i64
  %shr105.i.3161 = lshr i64 %conv15.i.3110, 58
  %318 = lshr i128 %309, 58
  %and111.i.3163 = trunc i128 %318 to i64
  %shl112.i.3164 = and i64 %and111.i.3163, 288230376151711680
  %add102.i.3160 = add nuw nsw i64 %shr105.i.3161, %shr100.i.3159
  %add107.i.3162 = add nuw nsw i64 %add102.i.3160, %and20.i.3115
  %add114.i.3165 = add nuw nsw i64 %add107.i.3162, %shl112.i.3164
  store i64 %add114.i.3165, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.3166 = lshr i128 %309, 116
  %shr118.i.3167 = trunc i128 %shr116.i.3166 to i64
  %shr123.i.3169 = lshr i64 %conv19.i.3114, 58
  %319 = lshr i128 %310, 58
  %and129.i.3171 = trunc i128 %319 to i64
  %shl130.i.3172 = and i64 %and129.i.3171, 288230376151711680
  %add120.i.3168 = add nuw nsw i64 %shr123.i.3169, %shr118.i.3167
  %add125.i.3170 = add nuw nsw i64 %add120.i.3168, %and24.i.3119
  %add132.i.3173 = add nuw nsw i64 %add125.i.3170, %shl130.i.3172
  store i64 %add132.i.3173, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.3174 = lshr i128 %310, 116
  %shr136.i.3175 = trunc i128 %shr134.i.3174 to i64
  %shr141.i.3177 = lshr i64 %conv23.i.3118, 58
  %320 = lshr i128 %311, 58
  %and147.i.3179 = trunc i128 %320 to i64
  %shl148.i.3180 = and i64 %and147.i.3179, 288230376151711680
  %add138.i.3176 = add nuw nsw i64 %shr141.i.3177, %shr136.i.3175
  %add143.i.3178 = add nuw nsw i64 %add138.i.3176, %and28.i.3123
  %add150.i.3181 = add nuw nsw i64 %add143.i.3178, %shl148.i.3180
  store i64 %add150.i.3181, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.3182 = lshr i128 %311, 116
  %shr154.i.3183 = trunc i128 %shr152.i.3182 to i64
  %shr159.i.3185 = lshr i64 %conv27.i.3122, 58
  %321 = lshr i128 %312, 58
  %and165.i.3187 = trunc i128 %321 to i64
  %shl166.i.3188 = and i64 %and165.i.3187, 288230376151711680
  %add156.i.3184 = add nuw nsw i64 %shr159.i.3185, %shr154.i.3183
  %add161.i.3186 = add nuw nsw i64 %add156.i.3184, %and32.i.3127
  %add168.i.3189 = add nuw nsw i64 %add161.i.3186, %shl166.i.3188
  store i64 %add168.i.3189, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.3190 = lshr i128 %312, 116
  %shr172.i.3191 = trunc i128 %shr170.i.3190 to i64
  %shr175.i.3193 = lshr i64 %conv31.i.3126, 58
  %add176.i.3194 = add nuw nsw i64 %shr175.i.3193, %shr172.i.3191
  %322 = lshr i128 %313, 58
  %and180.i.3195 = trunc i128 %322 to i64
  %shl181.i.3196 = and i64 %and180.i.3195, 288230376151711680
  %add182.i.3197 = add nuw nsw i64 %add176.i.3194, %shl181.i.3196
  %shl187.i.3198 = shl nuw nsw i64 %add182.i.3197, 1
  %323 = lshr i128 %313, 115
  %.tr.i.3199 = trunc i128 %323 to i64
  %shl188.i.3200 = and i64 %.tr.i.3199, 8190
  %324 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.3201 = add i64 %shl187.i.3198, %324
  %add192.i.3202 = add nuw nsw i64 %shl188.i.3200, %add42.i.3133
  %shr194.i.3203 = lshr i64 %add190.i.3201, 58
  %add196.i.3204 = add nuw nsw i64 %add192.i.3202, %shr194.i.3203
  store i64 %add196.i.3204, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.3205 = and i64 %add190.i.3201, 288230376151711743
  store i64 %and198.i.3205, i64* %arraydecay24, align 16, !tbaa !6
  %inc = add nuw nsw i32 %i.03450, 1
  %exitcond3456 = icmp eq i32 %inc, 8
  br i1 %exitcond3456, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %325 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2873 = trunc i128 %325 to i64
  %and.i.2874 = and i64 %conv.i.2873, 288230376151711743
  store i64 %and.i.2874, i64* %arraydecay24, align 16, !tbaa !6
  %326 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2876 = trunc i128 %326 to i64
  %and4.i.2877 = and i64 %conv3.i.2876, 288230376151711743
  %327 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2880 = trunc i128 %327 to i64
  %and8.i.2881 = and i64 %conv7.i.2880, 288230376151711743
  %328 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2884 = trunc i128 %328 to i64
  %and12.i.2885 = and i64 %conv11.i.2884, 288230376151711743
  %329 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2888 = trunc i128 %329 to i64
  %and16.i.2889 = and i64 %conv15.i.2888, 288230376151711743
  %330 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2892 = trunc i128 %330 to i64
  %and20.i.2893 = and i64 %conv19.i.2892, 288230376151711743
  %331 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2896 = trunc i128 %331 to i64
  %and24.i.2897 = and i64 %conv23.i.2896, 288230376151711743
  %332 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2900 = trunc i128 %332 to i64
  %and28.i.2901 = and i64 %conv27.i.2900, 288230376151711743
  %333 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2904 = trunc i128 %333 to i64
  %and32.i.2905 = and i64 %conv31.i.2904, 288230376151711743
  %shr.i.2907 = lshr i64 %conv.i.2873, 58
  %add.i.2908 = add nuw nsw i64 %and4.i.2877, %shr.i.2907
  %334 = lshr i128 %325, 58
  %and40.i.2909 = trunc i128 %334 to i64
  %shl.i.2910 = and i64 %and40.i.2909, 288230376151711680
  %add42.i.2911 = add nuw nsw i64 %add.i.2908, %shl.i.2910
  %shr44.i.2912 = lshr i128 %325, 116
  %shr46.i.2913 = trunc i128 %shr44.i.2912 to i64
  %shr51.i.2915 = lshr i64 %conv3.i.2876, 58
  %335 = lshr i128 %326, 58
  %and57.i.2917 = trunc i128 %335 to i64
  %shl58.i.2918 = and i64 %and57.i.2917, 288230376151711680
  %add48.i.2914 = add nuw nsw i64 %shr51.i.2915, %shr46.i.2913
  %add53.i.2916 = add nuw nsw i64 %add48.i.2914, %and8.i.2881
  %add60.i.2919 = add nuw nsw i64 %add53.i.2916, %shl58.i.2918
  store i64 %add60.i.2919, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2920 = lshr i128 %326, 116
  %shr64.i.2921 = trunc i128 %shr62.i.2920 to i64
  %shr69.i.2923 = lshr i64 %conv7.i.2880, 58
  %336 = lshr i128 %327, 58
  %and75.i.2925 = trunc i128 %336 to i64
  %shl76.i.2926 = and i64 %and75.i.2925, 288230376151711680
  %add66.i.2922 = add nuw nsw i64 %shr69.i.2923, %shr64.i.2921
  %add71.i.2924 = add nuw nsw i64 %add66.i.2922, %and12.i.2885
  %add78.i.2927 = add nuw nsw i64 %add71.i.2924, %shl76.i.2926
  store i64 %add78.i.2927, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2928 = lshr i128 %327, 116
  %shr82.i.2929 = trunc i128 %shr80.i.2928 to i64
  %shr87.i.2931 = lshr i64 %conv11.i.2884, 58
  %337 = lshr i128 %328, 58
  %and93.i.2933 = trunc i128 %337 to i64
  %shl94.i.2934 = and i64 %and93.i.2933, 288230376151711680
  %add84.i.2930 = add nuw nsw i64 %shr87.i.2931, %shr82.i.2929
  %add89.i.2932 = add nuw nsw i64 %add84.i.2930, %and16.i.2889
  %add96.i.2935 = add nuw nsw i64 %add89.i.2932, %shl94.i.2934
  store i64 %add96.i.2935, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2936 = lshr i128 %328, 116
  %shr100.i.2937 = trunc i128 %shr98.i.2936 to i64
  %shr105.i.2939 = lshr i64 %conv15.i.2888, 58
  %338 = lshr i128 %329, 58
  %and111.i.2941 = trunc i128 %338 to i64
  %shl112.i.2942 = and i64 %and111.i.2941, 288230376151711680
  %add102.i.2938 = add nuw nsw i64 %shr105.i.2939, %shr100.i.2937
  %add107.i.2940 = add nuw nsw i64 %add102.i.2938, %and20.i.2893
  %add114.i.2943 = add nuw nsw i64 %add107.i.2940, %shl112.i.2942
  store i64 %add114.i.2943, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2944 = lshr i128 %329, 116
  %shr118.i.2945 = trunc i128 %shr116.i.2944 to i64
  %shr123.i.2947 = lshr i64 %conv19.i.2892, 58
  %339 = lshr i128 %330, 58
  %and129.i.2949 = trunc i128 %339 to i64
  %shl130.i.2950 = and i64 %and129.i.2949, 288230376151711680
  %add120.i.2946 = add nuw nsw i64 %shr123.i.2947, %shr118.i.2945
  %add125.i.2948 = add nuw nsw i64 %add120.i.2946, %and24.i.2897
  %add132.i.2951 = add nuw nsw i64 %add125.i.2948, %shl130.i.2950
  store i64 %add132.i.2951, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2952 = lshr i128 %330, 116
  %shr136.i.2953 = trunc i128 %shr134.i.2952 to i64
  %shr141.i.2955 = lshr i64 %conv23.i.2896, 58
  %340 = lshr i128 %331, 58
  %and147.i.2957 = trunc i128 %340 to i64
  %shl148.i.2958 = and i64 %and147.i.2957, 288230376151711680
  %add138.i.2954 = add nuw nsw i64 %shr141.i.2955, %shr136.i.2953
  %add143.i.2956 = add nuw nsw i64 %add138.i.2954, %and28.i.2901
  %add150.i.2959 = add nuw nsw i64 %add143.i.2956, %shl148.i.2958
  store i64 %add150.i.2959, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2960 = lshr i128 %331, 116
  %shr154.i.2961 = trunc i128 %shr152.i.2960 to i64
  %shr159.i.2963 = lshr i64 %conv27.i.2900, 58
  %341 = lshr i128 %332, 58
  %and165.i.2965 = trunc i128 %341 to i64
  %shl166.i.2966 = and i64 %and165.i.2965, 288230376151711680
  %add156.i.2962 = add nuw nsw i64 %shr159.i.2963, %shr154.i.2961
  %add161.i.2964 = add nuw nsw i64 %add156.i.2962, %and32.i.2905
  %add168.i.2967 = add nuw nsw i64 %add161.i.2964, %shl166.i.2966
  store i64 %add168.i.2967, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2968 = lshr i128 %332, 116
  %shr172.i.2969 = trunc i128 %shr170.i.2968 to i64
  %shr175.i.2971 = lshr i64 %conv31.i.2904, 58
  %add176.i.2972 = add nuw nsw i64 %shr175.i.2971, %shr172.i.2969
  %342 = lshr i128 %333, 58
  %and180.i.2973 = trunc i128 %342 to i64
  %shl181.i.2974 = and i64 %and180.i.2973, 288230376151711680
  %add182.i.2975 = add nuw nsw i64 %add176.i.2972, %shl181.i.2974
  %shl187.i.2976 = shl nuw nsw i64 %add182.i.2975, 1
  %343 = lshr i128 %333, 115
  %.tr.i.2977 = trunc i128 %343 to i64
  %shl188.i.2978 = and i64 %.tr.i.2977, 8190
  %344 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2979 = add i64 %shl187.i.2976, %344
  %add192.i.2980 = add nuw nsw i64 %shl188.i.2978, %add42.i.2911
  %shr194.i.2981 = lshr i64 %add190.i.2979, 58
  %add196.i.2982 = add nuw nsw i64 %add192.i.2980, %shr194.i.2981
  store i64 %add196.i.2982, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2983 = and i64 %add190.i.2979, 288230376151711743
  store i64 %and198.i.2983, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.2983, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.2982, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.2919, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.2927, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.2935, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.2943, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.2951, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.2959, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.2967, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body.84

for.body.84:                                      ; preds = %for.body.84, %for.end
  %i.13449 = phi i32 [ 0, %for.end ], [ %inc90, %for.body.84 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %345 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2730 = trunc i128 %345 to i64
  %and.i.2731 = and i64 %conv.i.2730, 288230376151711743
  store i64 %and.i.2731, i64* %arraydecay24, align 16, !tbaa !6
  %346 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2733 = trunc i128 %346 to i64
  %and4.i.2734 = and i64 %conv3.i.2733, 288230376151711743
  %347 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2737 = trunc i128 %347 to i64
  %and8.i.2738 = and i64 %conv7.i.2737, 288230376151711743
  %348 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2741 = trunc i128 %348 to i64
  %and12.i.2742 = and i64 %conv11.i.2741, 288230376151711743
  %349 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2745 = trunc i128 %349 to i64
  %and16.i.2746 = and i64 %conv15.i.2745, 288230376151711743
  %350 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2749 = trunc i128 %350 to i64
  %and20.i.2750 = and i64 %conv19.i.2749, 288230376151711743
  %351 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2753 = trunc i128 %351 to i64
  %and24.i.2754 = and i64 %conv23.i.2753, 288230376151711743
  %352 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2757 = trunc i128 %352 to i64
  %and28.i.2758 = and i64 %conv27.i.2757, 288230376151711743
  %353 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2761 = trunc i128 %353 to i64
  %and32.i.2762 = and i64 %conv31.i.2761, 288230376151711743
  %shr.i.2764 = lshr i64 %conv.i.2730, 58
  %add.i.2765 = add nuw nsw i64 %and4.i.2734, %shr.i.2764
  %354 = lshr i128 %345, 58
  %and40.i.2766 = trunc i128 %354 to i64
  %shl.i.2767 = and i64 %and40.i.2766, 288230376151711680
  %add42.i.2768 = add nuw nsw i64 %add.i.2765, %shl.i.2767
  %shr44.i.2769 = lshr i128 %345, 116
  %shr46.i.2770 = trunc i128 %shr44.i.2769 to i64
  %shr51.i.2772 = lshr i64 %conv3.i.2733, 58
  %355 = lshr i128 %346, 58
  %and57.i.2774 = trunc i128 %355 to i64
  %shl58.i.2775 = and i64 %and57.i.2774, 288230376151711680
  %add48.i.2771 = add nuw nsw i64 %shr51.i.2772, %shr46.i.2770
  %add53.i.2773 = add nuw nsw i64 %add48.i.2771, %and8.i.2738
  %add60.i.2776 = add nuw nsw i64 %add53.i.2773, %shl58.i.2775
  store i64 %add60.i.2776, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2777 = lshr i128 %346, 116
  %shr64.i.2778 = trunc i128 %shr62.i.2777 to i64
  %shr69.i.2780 = lshr i64 %conv7.i.2737, 58
  %356 = lshr i128 %347, 58
  %and75.i.2782 = trunc i128 %356 to i64
  %shl76.i.2783 = and i64 %and75.i.2782, 288230376151711680
  %add66.i.2779 = add nuw nsw i64 %shr69.i.2780, %shr64.i.2778
  %add71.i.2781 = add nuw nsw i64 %add66.i.2779, %and12.i.2742
  %add78.i.2784 = add nuw nsw i64 %add71.i.2781, %shl76.i.2783
  store i64 %add78.i.2784, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2785 = lshr i128 %347, 116
  %shr82.i.2786 = trunc i128 %shr80.i.2785 to i64
  %shr87.i.2788 = lshr i64 %conv11.i.2741, 58
  %357 = lshr i128 %348, 58
  %and93.i.2790 = trunc i128 %357 to i64
  %shl94.i.2791 = and i64 %and93.i.2790, 288230376151711680
  %add84.i.2787 = add nuw nsw i64 %shr87.i.2788, %shr82.i.2786
  %add89.i.2789 = add nuw nsw i64 %add84.i.2787, %and16.i.2746
  %add96.i.2792 = add nuw nsw i64 %add89.i.2789, %shl94.i.2791
  store i64 %add96.i.2792, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2793 = lshr i128 %348, 116
  %shr100.i.2794 = trunc i128 %shr98.i.2793 to i64
  %shr105.i.2796 = lshr i64 %conv15.i.2745, 58
  %358 = lshr i128 %349, 58
  %and111.i.2798 = trunc i128 %358 to i64
  %shl112.i.2799 = and i64 %and111.i.2798, 288230376151711680
  %add102.i.2795 = add nuw nsw i64 %shr105.i.2796, %shr100.i.2794
  %add107.i.2797 = add nuw nsw i64 %add102.i.2795, %and20.i.2750
  %add114.i.2800 = add nuw nsw i64 %add107.i.2797, %shl112.i.2799
  store i64 %add114.i.2800, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2801 = lshr i128 %349, 116
  %shr118.i.2802 = trunc i128 %shr116.i.2801 to i64
  %shr123.i.2804 = lshr i64 %conv19.i.2749, 58
  %359 = lshr i128 %350, 58
  %and129.i.2806 = trunc i128 %359 to i64
  %shl130.i.2807 = and i64 %and129.i.2806, 288230376151711680
  %add120.i.2803 = add nuw nsw i64 %shr123.i.2804, %shr118.i.2802
  %add125.i.2805 = add nuw nsw i64 %add120.i.2803, %and24.i.2754
  %add132.i.2808 = add nuw nsw i64 %add125.i.2805, %shl130.i.2807
  store i64 %add132.i.2808, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2809 = lshr i128 %350, 116
  %shr136.i.2810 = trunc i128 %shr134.i.2809 to i64
  %shr141.i.2812 = lshr i64 %conv23.i.2753, 58
  %360 = lshr i128 %351, 58
  %and147.i.2814 = trunc i128 %360 to i64
  %shl148.i.2815 = and i64 %and147.i.2814, 288230376151711680
  %add138.i.2811 = add nuw nsw i64 %shr141.i.2812, %shr136.i.2810
  %add143.i.2813 = add nuw nsw i64 %add138.i.2811, %and28.i.2758
  %add150.i.2816 = add nuw nsw i64 %add143.i.2813, %shl148.i.2815
  store i64 %add150.i.2816, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2817 = lshr i128 %351, 116
  %shr154.i.2818 = trunc i128 %shr152.i.2817 to i64
  %shr159.i.2820 = lshr i64 %conv27.i.2757, 58
  %361 = lshr i128 %352, 58
  %and165.i.2822 = trunc i128 %361 to i64
  %shl166.i.2823 = and i64 %and165.i.2822, 288230376151711680
  %add156.i.2819 = add nuw nsw i64 %shr159.i.2820, %shr154.i.2818
  %add161.i.2821 = add nuw nsw i64 %add156.i.2819, %and32.i.2762
  %add168.i.2824 = add nuw nsw i64 %add161.i.2821, %shl166.i.2823
  store i64 %add168.i.2824, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2825 = lshr i128 %352, 116
  %shr172.i.2826 = trunc i128 %shr170.i.2825 to i64
  %shr175.i.2828 = lshr i64 %conv31.i.2761, 58
  %add176.i.2829 = add nuw nsw i64 %shr175.i.2828, %shr172.i.2826
  %362 = lshr i128 %353, 58
  %and180.i.2830 = trunc i128 %362 to i64
  %shl181.i.2831 = and i64 %and180.i.2830, 288230376151711680
  %add182.i.2832 = add nuw nsw i64 %add176.i.2829, %shl181.i.2831
  %shl187.i.2833 = shl nuw nsw i64 %add182.i.2832, 1
  %363 = lshr i128 %353, 115
  %.tr.i.2834 = trunc i128 %363 to i64
  %shl188.i.2835 = and i64 %.tr.i.2834, 8190
  %364 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2836 = add i64 %shl187.i.2833, %364
  %add192.i.2837 = add nuw nsw i64 %shl188.i.2835, %add42.i.2768
  %shr194.i.2838 = lshr i64 %add190.i.2836, 58
  %add196.i.2839 = add nuw nsw i64 %add192.i.2837, %shr194.i.2838
  store i64 %add196.i.2839, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2840 = and i64 %add190.i.2836, 288230376151711743
  store i64 %and198.i.2840, i64* %arraydecay24, align 16, !tbaa !6
  %inc90 = add nuw nsw i32 %i.13449, 1
  %exitcond3455 = icmp eq i32 %inc90, 16
  br i1 %exitcond3455, label %for.end.91, label %for.body.84

for.end.91:                                       ; preds = %for.body.84
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %365 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2508 = trunc i128 %365 to i64
  %and.i.2509 = and i64 %conv.i.2508, 288230376151711743
  store i64 %and.i.2509, i64* %arraydecay24, align 16, !tbaa !6
  %366 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2511 = trunc i128 %366 to i64
  %and4.i.2512 = and i64 %conv3.i.2511, 288230376151711743
  %367 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2515 = trunc i128 %367 to i64
  %and8.i.2516 = and i64 %conv7.i.2515, 288230376151711743
  %368 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2519 = trunc i128 %368 to i64
  %and12.i.2520 = and i64 %conv11.i.2519, 288230376151711743
  %369 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2523 = trunc i128 %369 to i64
  %and16.i.2524 = and i64 %conv15.i.2523, 288230376151711743
  %370 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2527 = trunc i128 %370 to i64
  %and20.i.2528 = and i64 %conv19.i.2527, 288230376151711743
  %371 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2531 = trunc i128 %371 to i64
  %and24.i.2532 = and i64 %conv23.i.2531, 288230376151711743
  %372 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2535 = trunc i128 %372 to i64
  %and28.i.2536 = and i64 %conv27.i.2535, 288230376151711743
  %373 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2539 = trunc i128 %373 to i64
  %and32.i.2540 = and i64 %conv31.i.2539, 288230376151711743
  %shr.i.2542 = lshr i64 %conv.i.2508, 58
  %add.i.2543 = add nuw nsw i64 %and4.i.2512, %shr.i.2542
  %374 = lshr i128 %365, 58
  %and40.i.2544 = trunc i128 %374 to i64
  %shl.i.2545 = and i64 %and40.i.2544, 288230376151711680
  %add42.i.2546 = add nuw nsw i64 %add.i.2543, %shl.i.2545
  %shr44.i.2547 = lshr i128 %365, 116
  %shr46.i.2548 = trunc i128 %shr44.i.2547 to i64
  %shr51.i.2550 = lshr i64 %conv3.i.2511, 58
  %375 = lshr i128 %366, 58
  %and57.i.2552 = trunc i128 %375 to i64
  %shl58.i.2553 = and i64 %and57.i.2552, 288230376151711680
  %add48.i.2549 = add nuw nsw i64 %shr51.i.2550, %shr46.i.2548
  %add53.i.2551 = add nuw nsw i64 %add48.i.2549, %and8.i.2516
  %add60.i.2554 = add nuw nsw i64 %add53.i.2551, %shl58.i.2553
  store i64 %add60.i.2554, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2555 = lshr i128 %366, 116
  %shr64.i.2556 = trunc i128 %shr62.i.2555 to i64
  %shr69.i.2558 = lshr i64 %conv7.i.2515, 58
  %376 = lshr i128 %367, 58
  %and75.i.2560 = trunc i128 %376 to i64
  %shl76.i.2561 = and i64 %and75.i.2560, 288230376151711680
  %add66.i.2557 = add nuw nsw i64 %shr69.i.2558, %shr64.i.2556
  %add71.i.2559 = add nuw nsw i64 %add66.i.2557, %and12.i.2520
  %add78.i.2562 = add nuw nsw i64 %add71.i.2559, %shl76.i.2561
  store i64 %add78.i.2562, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2563 = lshr i128 %367, 116
  %shr82.i.2564 = trunc i128 %shr80.i.2563 to i64
  %shr87.i.2566 = lshr i64 %conv11.i.2519, 58
  %377 = lshr i128 %368, 58
  %and93.i.2568 = trunc i128 %377 to i64
  %shl94.i.2569 = and i64 %and93.i.2568, 288230376151711680
  %add84.i.2565 = add nuw nsw i64 %shr87.i.2566, %shr82.i.2564
  %add89.i.2567 = add nuw nsw i64 %add84.i.2565, %and16.i.2524
  %add96.i.2570 = add nuw nsw i64 %add89.i.2567, %shl94.i.2569
  store i64 %add96.i.2570, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2571 = lshr i128 %368, 116
  %shr100.i.2572 = trunc i128 %shr98.i.2571 to i64
  %shr105.i.2574 = lshr i64 %conv15.i.2523, 58
  %378 = lshr i128 %369, 58
  %and111.i.2576 = trunc i128 %378 to i64
  %shl112.i.2577 = and i64 %and111.i.2576, 288230376151711680
  %add102.i.2573 = add nuw nsw i64 %shr105.i.2574, %shr100.i.2572
  %add107.i.2575 = add nuw nsw i64 %add102.i.2573, %and20.i.2528
  %add114.i.2578 = add nuw nsw i64 %add107.i.2575, %shl112.i.2577
  store i64 %add114.i.2578, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2579 = lshr i128 %369, 116
  %shr118.i.2580 = trunc i128 %shr116.i.2579 to i64
  %shr123.i.2582 = lshr i64 %conv19.i.2527, 58
  %379 = lshr i128 %370, 58
  %and129.i.2584 = trunc i128 %379 to i64
  %shl130.i.2585 = and i64 %and129.i.2584, 288230376151711680
  %add120.i.2581 = add nuw nsw i64 %shr123.i.2582, %shr118.i.2580
  %add125.i.2583 = add nuw nsw i64 %add120.i.2581, %and24.i.2532
  %add132.i.2586 = add nuw nsw i64 %add125.i.2583, %shl130.i.2585
  store i64 %add132.i.2586, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2587 = lshr i128 %370, 116
  %shr136.i.2588 = trunc i128 %shr134.i.2587 to i64
  %shr141.i.2590 = lshr i64 %conv23.i.2531, 58
  %380 = lshr i128 %371, 58
  %and147.i.2592 = trunc i128 %380 to i64
  %shl148.i.2593 = and i64 %and147.i.2592, 288230376151711680
  %add138.i.2589 = add nuw nsw i64 %shr141.i.2590, %shr136.i.2588
  %add143.i.2591 = add nuw nsw i64 %add138.i.2589, %and28.i.2536
  %add150.i.2594 = add nuw nsw i64 %add143.i.2591, %shl148.i.2593
  store i64 %add150.i.2594, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2595 = lshr i128 %371, 116
  %shr154.i.2596 = trunc i128 %shr152.i.2595 to i64
  %shr159.i.2598 = lshr i64 %conv27.i.2535, 58
  %381 = lshr i128 %372, 58
  %and165.i.2600 = trunc i128 %381 to i64
  %shl166.i.2601 = and i64 %and165.i.2600, 288230376151711680
  %add156.i.2597 = add nuw nsw i64 %shr159.i.2598, %shr154.i.2596
  %add161.i.2599 = add nuw nsw i64 %add156.i.2597, %and32.i.2540
  %add168.i.2602 = add nuw nsw i64 %add161.i.2599, %shl166.i.2601
  store i64 %add168.i.2602, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2603 = lshr i128 %372, 116
  %shr172.i.2604 = trunc i128 %shr170.i.2603 to i64
  %shr175.i.2606 = lshr i64 %conv31.i.2539, 58
  %add176.i.2607 = add nuw nsw i64 %shr175.i.2606, %shr172.i.2604
  %382 = lshr i128 %373, 58
  %and180.i.2608 = trunc i128 %382 to i64
  %shl181.i.2609 = and i64 %and180.i.2608, 288230376151711680
  %add182.i.2610 = add nuw nsw i64 %add176.i.2607, %shl181.i.2609
  %shl187.i.2611 = shl nuw nsw i64 %add182.i.2610, 1
  %383 = lshr i128 %373, 115
  %.tr.i.2612 = trunc i128 %383 to i64
  %shl188.i.2613 = and i64 %.tr.i.2612, 8190
  %384 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2614 = add i64 %shl187.i.2611, %384
  %add192.i.2615 = add nuw nsw i64 %shl188.i.2613, %add42.i.2546
  %shr194.i.2616 = lshr i64 %add190.i.2614, 58
  %add196.i.2617 = add nuw nsw i64 %add192.i.2615, %shr194.i.2616
  store i64 %add196.i.2617, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2618 = and i64 %add190.i.2614, 288230376151711743
  store i64 %and198.i.2618, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.2618, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.2617, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.2554, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.2562, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.2570, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.2578, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.2586, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.2594, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.2602, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body.101

for.body.101:                                     ; preds = %for.body.101, %for.end.91
  %i.23448 = phi i32 [ 0, %for.end.91 ], [ %inc107, %for.body.101 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %385 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2270 = trunc i128 %385 to i64
  %and.i.2271 = and i64 %conv.i.2270, 288230376151711743
  store i64 %and.i.2271, i64* %arraydecay24, align 16, !tbaa !6
  %386 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2273 = trunc i128 %386 to i64
  %and4.i.2274 = and i64 %conv3.i.2273, 288230376151711743
  %387 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2277 = trunc i128 %387 to i64
  %and8.i.2278 = and i64 %conv7.i.2277, 288230376151711743
  %388 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2281 = trunc i128 %388 to i64
  %and12.i.2282 = and i64 %conv11.i.2281, 288230376151711743
  %389 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2285 = trunc i128 %389 to i64
  %and16.i.2286 = and i64 %conv15.i.2285, 288230376151711743
  %390 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2289 = trunc i128 %390 to i64
  %and20.i.2290 = and i64 %conv19.i.2289, 288230376151711743
  %391 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2293 = trunc i128 %391 to i64
  %and24.i.2294 = and i64 %conv23.i.2293, 288230376151711743
  %392 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2297 = trunc i128 %392 to i64
  %and28.i.2298 = and i64 %conv27.i.2297, 288230376151711743
  %393 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2301 = trunc i128 %393 to i64
  %and32.i.2302 = and i64 %conv31.i.2301, 288230376151711743
  %shr.i.2304 = lshr i64 %conv.i.2270, 58
  %add.i.2305 = add nuw nsw i64 %and4.i.2274, %shr.i.2304
  %394 = lshr i128 %385, 58
  %and40.i.2306 = trunc i128 %394 to i64
  %shl.i.2307 = and i64 %and40.i.2306, 288230376151711680
  %add42.i.2308 = add nuw nsw i64 %add.i.2305, %shl.i.2307
  %shr44.i.2309 = lshr i128 %385, 116
  %shr46.i.2310 = trunc i128 %shr44.i.2309 to i64
  %shr51.i.2312 = lshr i64 %conv3.i.2273, 58
  %395 = lshr i128 %386, 58
  %and57.i.2314 = trunc i128 %395 to i64
  %shl58.i.2315 = and i64 %and57.i.2314, 288230376151711680
  %add48.i.2311 = add nuw nsw i64 %shr51.i.2312, %shr46.i.2310
  %add53.i.2313 = add nuw nsw i64 %add48.i.2311, %and8.i.2278
  %add60.i.2316 = add nuw nsw i64 %add53.i.2313, %shl58.i.2315
  store i64 %add60.i.2316, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2317 = lshr i128 %386, 116
  %shr64.i.2318 = trunc i128 %shr62.i.2317 to i64
  %shr69.i.2320 = lshr i64 %conv7.i.2277, 58
  %396 = lshr i128 %387, 58
  %and75.i.2322 = trunc i128 %396 to i64
  %shl76.i.2323 = and i64 %and75.i.2322, 288230376151711680
  %add66.i.2319 = add nuw nsw i64 %shr69.i.2320, %shr64.i.2318
  %add71.i.2321 = add nuw nsw i64 %add66.i.2319, %and12.i.2282
  %add78.i.2324 = add nuw nsw i64 %add71.i.2321, %shl76.i.2323
  store i64 %add78.i.2324, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2325 = lshr i128 %387, 116
  %shr82.i.2326 = trunc i128 %shr80.i.2325 to i64
  %shr87.i.2328 = lshr i64 %conv11.i.2281, 58
  %397 = lshr i128 %388, 58
  %and93.i.2330 = trunc i128 %397 to i64
  %shl94.i.2331 = and i64 %and93.i.2330, 288230376151711680
  %add84.i.2327 = add nuw nsw i64 %shr87.i.2328, %shr82.i.2326
  %add89.i.2329 = add nuw nsw i64 %add84.i.2327, %and16.i.2286
  %add96.i.2332 = add nuw nsw i64 %add89.i.2329, %shl94.i.2331
  store i64 %add96.i.2332, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2333 = lshr i128 %388, 116
  %shr100.i.2334 = trunc i128 %shr98.i.2333 to i64
  %shr105.i.2336 = lshr i64 %conv15.i.2285, 58
  %398 = lshr i128 %389, 58
  %and111.i.2338 = trunc i128 %398 to i64
  %shl112.i.2339 = and i64 %and111.i.2338, 288230376151711680
  %add102.i.2335 = add nuw nsw i64 %shr105.i.2336, %shr100.i.2334
  %add107.i.2337 = add nuw nsw i64 %add102.i.2335, %and20.i.2290
  %add114.i.2340 = add nuw nsw i64 %add107.i.2337, %shl112.i.2339
  store i64 %add114.i.2340, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2341 = lshr i128 %389, 116
  %shr118.i.2342 = trunc i128 %shr116.i.2341 to i64
  %shr123.i.2344 = lshr i64 %conv19.i.2289, 58
  %399 = lshr i128 %390, 58
  %and129.i.2346 = trunc i128 %399 to i64
  %shl130.i.2347 = and i64 %and129.i.2346, 288230376151711680
  %add120.i.2343 = add nuw nsw i64 %shr123.i.2344, %shr118.i.2342
  %add125.i.2345 = add nuw nsw i64 %add120.i.2343, %and24.i.2294
  %add132.i.2348 = add nuw nsw i64 %add125.i.2345, %shl130.i.2347
  store i64 %add132.i.2348, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2349 = lshr i128 %390, 116
  %shr136.i.2350 = trunc i128 %shr134.i.2349 to i64
  %shr141.i.2352 = lshr i64 %conv23.i.2293, 58
  %400 = lshr i128 %391, 58
  %and147.i.2354 = trunc i128 %400 to i64
  %shl148.i.2355 = and i64 %and147.i.2354, 288230376151711680
  %add138.i.2351 = add nuw nsw i64 %shr141.i.2352, %shr136.i.2350
  %add143.i.2353 = add nuw nsw i64 %add138.i.2351, %and28.i.2298
  %add150.i.2356 = add nuw nsw i64 %add143.i.2353, %shl148.i.2355
  store i64 %add150.i.2356, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2357 = lshr i128 %391, 116
  %shr154.i.2358 = trunc i128 %shr152.i.2357 to i64
  %shr159.i.2360 = lshr i64 %conv27.i.2297, 58
  %401 = lshr i128 %392, 58
  %and165.i.2362 = trunc i128 %401 to i64
  %shl166.i.2363 = and i64 %and165.i.2362, 288230376151711680
  %add156.i.2359 = add nuw nsw i64 %shr159.i.2360, %shr154.i.2358
  %add161.i.2361 = add nuw nsw i64 %add156.i.2359, %and32.i.2302
  %add168.i.2364 = add nuw nsw i64 %add161.i.2361, %shl166.i.2363
  store i64 %add168.i.2364, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2365 = lshr i128 %392, 116
  %shr172.i.2366 = trunc i128 %shr170.i.2365 to i64
  %shr175.i.2368 = lshr i64 %conv31.i.2301, 58
  %add176.i.2369 = add nuw nsw i64 %shr175.i.2368, %shr172.i.2366
  %402 = lshr i128 %393, 58
  %and180.i.2370 = trunc i128 %402 to i64
  %shl181.i.2371 = and i64 %and180.i.2370, 288230376151711680
  %add182.i.2372 = add nuw nsw i64 %add176.i.2369, %shl181.i.2371
  %shl187.i.2373 = shl nuw nsw i64 %add182.i.2372, 1
  %403 = lshr i128 %393, 115
  %.tr.i.2374 = trunc i128 %403 to i64
  %shl188.i.2375 = and i64 %.tr.i.2374, 8190
  %404 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2376 = add i64 %shl187.i.2373, %404
  %add192.i.2377 = add nuw nsw i64 %shl188.i.2375, %add42.i.2308
  %shr194.i.2378 = lshr i64 %add190.i.2376, 58
  %add196.i.2379 = add nuw nsw i64 %add192.i.2377, %shr194.i.2378
  store i64 %add196.i.2379, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2380 = and i64 %add190.i.2376, 288230376151711743
  store i64 %and198.i.2380, i64* %arraydecay24, align 16, !tbaa !6
  %inc107 = add nuw nsw i32 %i.23448, 1
  %exitcond3454 = icmp eq i32 %inc107, 32
  br i1 %exitcond3454, label %for.end.108, label %for.body.101

for.end.108:                                      ; preds = %for.body.101
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %405 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2048 = trunc i128 %405 to i64
  %and.i.2049 = and i64 %conv.i.2048, 288230376151711743
  store i64 %and.i.2049, i64* %arraydecay24, align 16, !tbaa !6
  %406 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.2051 = trunc i128 %406 to i64
  %and4.i.2052 = and i64 %conv3.i.2051, 288230376151711743
  %407 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.2055 = trunc i128 %407 to i64
  %and8.i.2056 = and i64 %conv7.i.2055, 288230376151711743
  %408 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.2059 = trunc i128 %408 to i64
  %and12.i.2060 = and i64 %conv11.i.2059, 288230376151711743
  %409 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.2063 = trunc i128 %409 to i64
  %and16.i.2064 = and i64 %conv15.i.2063, 288230376151711743
  %410 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.2067 = trunc i128 %410 to i64
  %and20.i.2068 = and i64 %conv19.i.2067, 288230376151711743
  %411 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.2071 = trunc i128 %411 to i64
  %and24.i.2072 = and i64 %conv23.i.2071, 288230376151711743
  %412 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.2075 = trunc i128 %412 to i64
  %and28.i.2076 = and i64 %conv27.i.2075, 288230376151711743
  %413 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.2079 = trunc i128 %413 to i64
  %and32.i.2080 = and i64 %conv31.i.2079, 288230376151711743
  %shr.i.2082 = lshr i64 %conv.i.2048, 58
  %add.i.2083 = add nuw nsw i64 %and4.i.2052, %shr.i.2082
  %414 = lshr i128 %405, 58
  %and40.i.2084 = trunc i128 %414 to i64
  %shl.i.2085 = and i64 %and40.i.2084, 288230376151711680
  %add42.i.2086 = add nuw nsw i64 %add.i.2083, %shl.i.2085
  %shr44.i.2087 = lshr i128 %405, 116
  %shr46.i.2088 = trunc i128 %shr44.i.2087 to i64
  %shr51.i.2090 = lshr i64 %conv3.i.2051, 58
  %415 = lshr i128 %406, 58
  %and57.i.2092 = trunc i128 %415 to i64
  %shl58.i.2093 = and i64 %and57.i.2092, 288230376151711680
  %add48.i.2089 = add nuw nsw i64 %shr51.i.2090, %shr46.i.2088
  %add53.i.2091 = add nuw nsw i64 %add48.i.2089, %and8.i.2056
  %add60.i.2094 = add nuw nsw i64 %add53.i.2091, %shl58.i.2093
  store i64 %add60.i.2094, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.2095 = lshr i128 %406, 116
  %shr64.i.2096 = trunc i128 %shr62.i.2095 to i64
  %shr69.i.2098 = lshr i64 %conv7.i.2055, 58
  %416 = lshr i128 %407, 58
  %and75.i.2100 = trunc i128 %416 to i64
  %shl76.i.2101 = and i64 %and75.i.2100, 288230376151711680
  %add66.i.2097 = add nuw nsw i64 %shr69.i.2098, %shr64.i.2096
  %add71.i.2099 = add nuw nsw i64 %add66.i.2097, %and12.i.2060
  %add78.i.2102 = add nuw nsw i64 %add71.i.2099, %shl76.i.2101
  store i64 %add78.i.2102, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.2103 = lshr i128 %407, 116
  %shr82.i.2104 = trunc i128 %shr80.i.2103 to i64
  %shr87.i.2106 = lshr i64 %conv11.i.2059, 58
  %417 = lshr i128 %408, 58
  %and93.i.2108 = trunc i128 %417 to i64
  %shl94.i.2109 = and i64 %and93.i.2108, 288230376151711680
  %add84.i.2105 = add nuw nsw i64 %shr87.i.2106, %shr82.i.2104
  %add89.i.2107 = add nuw nsw i64 %add84.i.2105, %and16.i.2064
  %add96.i.2110 = add nuw nsw i64 %add89.i.2107, %shl94.i.2109
  store i64 %add96.i.2110, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.2111 = lshr i128 %408, 116
  %shr100.i.2112 = trunc i128 %shr98.i.2111 to i64
  %shr105.i.2114 = lshr i64 %conv15.i.2063, 58
  %418 = lshr i128 %409, 58
  %and111.i.2116 = trunc i128 %418 to i64
  %shl112.i.2117 = and i64 %and111.i.2116, 288230376151711680
  %add102.i.2113 = add nuw nsw i64 %shr105.i.2114, %shr100.i.2112
  %add107.i.2115 = add nuw nsw i64 %add102.i.2113, %and20.i.2068
  %add114.i.2118 = add nuw nsw i64 %add107.i.2115, %shl112.i.2117
  store i64 %add114.i.2118, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.2119 = lshr i128 %409, 116
  %shr118.i.2120 = trunc i128 %shr116.i.2119 to i64
  %shr123.i.2122 = lshr i64 %conv19.i.2067, 58
  %419 = lshr i128 %410, 58
  %and129.i.2124 = trunc i128 %419 to i64
  %shl130.i.2125 = and i64 %and129.i.2124, 288230376151711680
  %add120.i.2121 = add nuw nsw i64 %shr123.i.2122, %shr118.i.2120
  %add125.i.2123 = add nuw nsw i64 %add120.i.2121, %and24.i.2072
  %add132.i.2126 = add nuw nsw i64 %add125.i.2123, %shl130.i.2125
  store i64 %add132.i.2126, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.2127 = lshr i128 %410, 116
  %shr136.i.2128 = trunc i128 %shr134.i.2127 to i64
  %shr141.i.2130 = lshr i64 %conv23.i.2071, 58
  %420 = lshr i128 %411, 58
  %and147.i.2132 = trunc i128 %420 to i64
  %shl148.i.2133 = and i64 %and147.i.2132, 288230376151711680
  %add138.i.2129 = add nuw nsw i64 %shr141.i.2130, %shr136.i.2128
  %add143.i.2131 = add nuw nsw i64 %add138.i.2129, %and28.i.2076
  %add150.i.2134 = add nuw nsw i64 %add143.i.2131, %shl148.i.2133
  store i64 %add150.i.2134, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.2135 = lshr i128 %411, 116
  %shr154.i.2136 = trunc i128 %shr152.i.2135 to i64
  %shr159.i.2138 = lshr i64 %conv27.i.2075, 58
  %421 = lshr i128 %412, 58
  %and165.i.2140 = trunc i128 %421 to i64
  %shl166.i.2141 = and i64 %and165.i.2140, 288230376151711680
  %add156.i.2137 = add nuw nsw i64 %shr159.i.2138, %shr154.i.2136
  %add161.i.2139 = add nuw nsw i64 %add156.i.2137, %and32.i.2080
  %add168.i.2142 = add nuw nsw i64 %add161.i.2139, %shl166.i.2141
  store i64 %add168.i.2142, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.2143 = lshr i128 %412, 116
  %shr172.i.2144 = trunc i128 %shr170.i.2143 to i64
  %shr175.i.2146 = lshr i64 %conv31.i.2079, 58
  %add176.i.2147 = add nuw nsw i64 %shr175.i.2146, %shr172.i.2144
  %422 = lshr i128 %413, 58
  %and180.i.2148 = trunc i128 %422 to i64
  %shl181.i.2149 = and i64 %and180.i.2148, 288230376151711680
  %add182.i.2150 = add nuw nsw i64 %add176.i.2147, %shl181.i.2149
  %shl187.i.2151 = shl nuw nsw i64 %add182.i.2150, 1
  %423 = lshr i128 %413, 115
  %.tr.i.2152 = trunc i128 %423 to i64
  %shl188.i.2153 = and i64 %.tr.i.2152, 8190
  %424 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.2154 = add i64 %shl187.i.2151, %424
  %add192.i.2155 = add nuw nsw i64 %shl188.i.2153, %add42.i.2086
  %shr194.i.2156 = lshr i64 %add190.i.2154, 58
  %add196.i.2157 = add nuw nsw i64 %add192.i.2155, %shr194.i.2156
  store i64 %add196.i.2157, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.2158 = and i64 %add190.i.2154, 288230376151711743
  store i64 %and198.i.2158, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.2158, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.2157, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.2094, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.2102, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.2110, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.2118, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.2126, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.2134, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.2142, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body.118

for.body.118:                                     ; preds = %for.body.118, %for.end.108
  %i.33447 = phi i32 [ 0, %for.end.108 ], [ %inc124, %for.body.118 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %425 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1810 = trunc i128 %425 to i64
  %and.i.1811 = and i64 %conv.i.1810, 288230376151711743
  store i64 %and.i.1811, i64* %arraydecay24, align 16, !tbaa !6
  %426 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1813 = trunc i128 %426 to i64
  %and4.i.1814 = and i64 %conv3.i.1813, 288230376151711743
  %427 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1817 = trunc i128 %427 to i64
  %and8.i.1818 = and i64 %conv7.i.1817, 288230376151711743
  %428 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1821 = trunc i128 %428 to i64
  %and12.i.1822 = and i64 %conv11.i.1821, 288230376151711743
  %429 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1825 = trunc i128 %429 to i64
  %and16.i.1826 = and i64 %conv15.i.1825, 288230376151711743
  %430 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1829 = trunc i128 %430 to i64
  %and20.i.1830 = and i64 %conv19.i.1829, 288230376151711743
  %431 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1833 = trunc i128 %431 to i64
  %and24.i.1834 = and i64 %conv23.i.1833, 288230376151711743
  %432 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1837 = trunc i128 %432 to i64
  %and28.i.1838 = and i64 %conv27.i.1837, 288230376151711743
  %433 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1841 = trunc i128 %433 to i64
  %and32.i.1842 = and i64 %conv31.i.1841, 288230376151711743
  %shr.i.1844 = lshr i64 %conv.i.1810, 58
  %add.i.1845 = add nuw nsw i64 %and4.i.1814, %shr.i.1844
  %434 = lshr i128 %425, 58
  %and40.i.1846 = trunc i128 %434 to i64
  %shl.i.1847 = and i64 %and40.i.1846, 288230376151711680
  %add42.i.1848 = add nuw nsw i64 %add.i.1845, %shl.i.1847
  %shr44.i.1849 = lshr i128 %425, 116
  %shr46.i.1850 = trunc i128 %shr44.i.1849 to i64
  %shr51.i.1852 = lshr i64 %conv3.i.1813, 58
  %435 = lshr i128 %426, 58
  %and57.i.1854 = trunc i128 %435 to i64
  %shl58.i.1855 = and i64 %and57.i.1854, 288230376151711680
  %add48.i.1851 = add nuw nsw i64 %shr51.i.1852, %shr46.i.1850
  %add53.i.1853 = add nuw nsw i64 %add48.i.1851, %and8.i.1818
  %add60.i.1856 = add nuw nsw i64 %add53.i.1853, %shl58.i.1855
  store i64 %add60.i.1856, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1857 = lshr i128 %426, 116
  %shr64.i.1858 = trunc i128 %shr62.i.1857 to i64
  %shr69.i.1860 = lshr i64 %conv7.i.1817, 58
  %436 = lshr i128 %427, 58
  %and75.i.1862 = trunc i128 %436 to i64
  %shl76.i.1863 = and i64 %and75.i.1862, 288230376151711680
  %add66.i.1859 = add nuw nsw i64 %shr69.i.1860, %shr64.i.1858
  %add71.i.1861 = add nuw nsw i64 %add66.i.1859, %and12.i.1822
  %add78.i.1864 = add nuw nsw i64 %add71.i.1861, %shl76.i.1863
  store i64 %add78.i.1864, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1865 = lshr i128 %427, 116
  %shr82.i.1866 = trunc i128 %shr80.i.1865 to i64
  %shr87.i.1868 = lshr i64 %conv11.i.1821, 58
  %437 = lshr i128 %428, 58
  %and93.i.1870 = trunc i128 %437 to i64
  %shl94.i.1871 = and i64 %and93.i.1870, 288230376151711680
  %add84.i.1867 = add nuw nsw i64 %shr87.i.1868, %shr82.i.1866
  %add89.i.1869 = add nuw nsw i64 %add84.i.1867, %and16.i.1826
  %add96.i.1872 = add nuw nsw i64 %add89.i.1869, %shl94.i.1871
  store i64 %add96.i.1872, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1873 = lshr i128 %428, 116
  %shr100.i.1874 = trunc i128 %shr98.i.1873 to i64
  %shr105.i.1876 = lshr i64 %conv15.i.1825, 58
  %438 = lshr i128 %429, 58
  %and111.i.1878 = trunc i128 %438 to i64
  %shl112.i.1879 = and i64 %and111.i.1878, 288230376151711680
  %add102.i.1875 = add nuw nsw i64 %shr105.i.1876, %shr100.i.1874
  %add107.i.1877 = add nuw nsw i64 %add102.i.1875, %and20.i.1830
  %add114.i.1880 = add nuw nsw i64 %add107.i.1877, %shl112.i.1879
  store i64 %add114.i.1880, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1881 = lshr i128 %429, 116
  %shr118.i.1882 = trunc i128 %shr116.i.1881 to i64
  %shr123.i.1884 = lshr i64 %conv19.i.1829, 58
  %439 = lshr i128 %430, 58
  %and129.i.1886 = trunc i128 %439 to i64
  %shl130.i.1887 = and i64 %and129.i.1886, 288230376151711680
  %add120.i.1883 = add nuw nsw i64 %shr123.i.1884, %shr118.i.1882
  %add125.i.1885 = add nuw nsw i64 %add120.i.1883, %and24.i.1834
  %add132.i.1888 = add nuw nsw i64 %add125.i.1885, %shl130.i.1887
  store i64 %add132.i.1888, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1889 = lshr i128 %430, 116
  %shr136.i.1890 = trunc i128 %shr134.i.1889 to i64
  %shr141.i.1892 = lshr i64 %conv23.i.1833, 58
  %440 = lshr i128 %431, 58
  %and147.i.1894 = trunc i128 %440 to i64
  %shl148.i.1895 = and i64 %and147.i.1894, 288230376151711680
  %add138.i.1891 = add nuw nsw i64 %shr141.i.1892, %shr136.i.1890
  %add143.i.1893 = add nuw nsw i64 %add138.i.1891, %and28.i.1838
  %add150.i.1896 = add nuw nsw i64 %add143.i.1893, %shl148.i.1895
  store i64 %add150.i.1896, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1897 = lshr i128 %431, 116
  %shr154.i.1898 = trunc i128 %shr152.i.1897 to i64
  %shr159.i.1900 = lshr i64 %conv27.i.1837, 58
  %441 = lshr i128 %432, 58
  %and165.i.1902 = trunc i128 %441 to i64
  %shl166.i.1903 = and i64 %and165.i.1902, 288230376151711680
  %add156.i.1899 = add nuw nsw i64 %shr159.i.1900, %shr154.i.1898
  %add161.i.1901 = add nuw nsw i64 %add156.i.1899, %and32.i.1842
  %add168.i.1904 = add nuw nsw i64 %add161.i.1901, %shl166.i.1903
  store i64 %add168.i.1904, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1905 = lshr i128 %432, 116
  %shr172.i.1906 = trunc i128 %shr170.i.1905 to i64
  %shr175.i.1908 = lshr i64 %conv31.i.1841, 58
  %add176.i.1909 = add nuw nsw i64 %shr175.i.1908, %shr172.i.1906
  %442 = lshr i128 %433, 58
  %and180.i.1910 = trunc i128 %442 to i64
  %shl181.i.1911 = and i64 %and180.i.1910, 288230376151711680
  %add182.i.1912 = add nuw nsw i64 %add176.i.1909, %shl181.i.1911
  %shl187.i.1913 = shl nuw nsw i64 %add182.i.1912, 1
  %443 = lshr i128 %433, 115
  %.tr.i.1914 = trunc i128 %443 to i64
  %shl188.i.1915 = and i64 %.tr.i.1914, 8190
  %444 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1916 = add i64 %shl187.i.1913, %444
  %add192.i.1917 = add nuw nsw i64 %shl188.i.1915, %add42.i.1848
  %shr194.i.1918 = lshr i64 %add190.i.1916, 58
  %add196.i.1919 = add nuw nsw i64 %add192.i.1917, %shr194.i.1918
  store i64 %add196.i.1919, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1920 = and i64 %add190.i.1916, 288230376151711743
  store i64 %and198.i.1920, i64* %arraydecay24, align 16, !tbaa !6
  %inc124 = add nuw nsw i32 %i.33447, 1
  %exitcond3453 = icmp eq i32 %inc124, 64
  br i1 %exitcond3453, label %for.end.125, label %for.body.118

for.end.125:                                      ; preds = %for.body.118
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %445 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1683 = trunc i128 %445 to i64
  %and.i.1684 = and i64 %conv.i.1683, 288230376151711743
  store i64 %and.i.1684, i64* %arraydecay24, align 16, !tbaa !6
  %446 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1686 = trunc i128 %446 to i64
  %and4.i.1687 = and i64 %conv3.i.1686, 288230376151711743
  %447 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1690 = trunc i128 %447 to i64
  %and8.i.1691 = and i64 %conv7.i.1690, 288230376151711743
  %448 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1694 = trunc i128 %448 to i64
  %and12.i.1695 = and i64 %conv11.i.1694, 288230376151711743
  %449 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1698 = trunc i128 %449 to i64
  %and16.i.1699 = and i64 %conv15.i.1698, 288230376151711743
  %450 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1702 = trunc i128 %450 to i64
  %and20.i.1703 = and i64 %conv19.i.1702, 288230376151711743
  %451 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1706 = trunc i128 %451 to i64
  %and24.i.1707 = and i64 %conv23.i.1706, 288230376151711743
  %452 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1710 = trunc i128 %452 to i64
  %and28.i.1711 = and i64 %conv27.i.1710, 288230376151711743
  %453 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1714 = trunc i128 %453 to i64
  %and32.i.1715 = and i64 %conv31.i.1714, 288230376151711743
  %shr.i.1717 = lshr i64 %conv.i.1683, 58
  %add.i.1718 = add nuw nsw i64 %and4.i.1687, %shr.i.1717
  %454 = lshr i128 %445, 58
  %and40.i.1719 = trunc i128 %454 to i64
  %shl.i.1720 = and i64 %and40.i.1719, 288230376151711680
  %add42.i.1721 = add nuw nsw i64 %add.i.1718, %shl.i.1720
  %shr44.i.1722 = lshr i128 %445, 116
  %shr46.i.1723 = trunc i128 %shr44.i.1722 to i64
  %shr51.i.1725 = lshr i64 %conv3.i.1686, 58
  %455 = lshr i128 %446, 58
  %and57.i.1727 = trunc i128 %455 to i64
  %shl58.i.1728 = and i64 %and57.i.1727, 288230376151711680
  %add48.i.1724 = add nuw nsw i64 %shr51.i.1725, %shr46.i.1723
  %add53.i.1726 = add nuw nsw i64 %add48.i.1724, %and8.i.1691
  %add60.i.1729 = add nuw nsw i64 %add53.i.1726, %shl58.i.1728
  store i64 %add60.i.1729, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1730 = lshr i128 %446, 116
  %shr64.i.1731 = trunc i128 %shr62.i.1730 to i64
  %shr69.i.1733 = lshr i64 %conv7.i.1690, 58
  %456 = lshr i128 %447, 58
  %and75.i.1735 = trunc i128 %456 to i64
  %shl76.i.1736 = and i64 %and75.i.1735, 288230376151711680
  %add66.i.1732 = add nuw nsw i64 %shr69.i.1733, %shr64.i.1731
  %add71.i.1734 = add nuw nsw i64 %add66.i.1732, %and12.i.1695
  %add78.i.1737 = add nuw nsw i64 %add71.i.1734, %shl76.i.1736
  store i64 %add78.i.1737, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1738 = lshr i128 %447, 116
  %shr82.i.1739 = trunc i128 %shr80.i.1738 to i64
  %shr87.i.1741 = lshr i64 %conv11.i.1694, 58
  %457 = lshr i128 %448, 58
  %and93.i.1743 = trunc i128 %457 to i64
  %shl94.i.1744 = and i64 %and93.i.1743, 288230376151711680
  %add84.i.1740 = add nuw nsw i64 %shr87.i.1741, %shr82.i.1739
  %add89.i.1742 = add nuw nsw i64 %add84.i.1740, %and16.i.1699
  %add96.i.1745 = add nuw nsw i64 %add89.i.1742, %shl94.i.1744
  store i64 %add96.i.1745, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1746 = lshr i128 %448, 116
  %shr100.i.1747 = trunc i128 %shr98.i.1746 to i64
  %shr105.i.1749 = lshr i64 %conv15.i.1698, 58
  %458 = lshr i128 %449, 58
  %and111.i.1751 = trunc i128 %458 to i64
  %shl112.i.1752 = and i64 %and111.i.1751, 288230376151711680
  %add102.i.1748 = add nuw nsw i64 %shr105.i.1749, %shr100.i.1747
  %add107.i.1750 = add nuw nsw i64 %add102.i.1748, %and20.i.1703
  %add114.i.1753 = add nuw nsw i64 %add107.i.1750, %shl112.i.1752
  store i64 %add114.i.1753, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1754 = lshr i128 %449, 116
  %shr118.i.1755 = trunc i128 %shr116.i.1754 to i64
  %shr123.i.1757 = lshr i64 %conv19.i.1702, 58
  %459 = lshr i128 %450, 58
  %and129.i.1759 = trunc i128 %459 to i64
  %shl130.i.1760 = and i64 %and129.i.1759, 288230376151711680
  %add120.i.1756 = add nuw nsw i64 %shr123.i.1757, %shr118.i.1755
  %add125.i.1758 = add nuw nsw i64 %add120.i.1756, %and24.i.1707
  %add132.i.1761 = add nuw nsw i64 %add125.i.1758, %shl130.i.1760
  store i64 %add132.i.1761, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1762 = lshr i128 %450, 116
  %shr136.i.1763 = trunc i128 %shr134.i.1762 to i64
  %shr141.i.1765 = lshr i64 %conv23.i.1706, 58
  %460 = lshr i128 %451, 58
  %and147.i.1767 = trunc i128 %460 to i64
  %shl148.i.1768 = and i64 %and147.i.1767, 288230376151711680
  %add138.i.1764 = add nuw nsw i64 %shr141.i.1765, %shr136.i.1763
  %add143.i.1766 = add nuw nsw i64 %add138.i.1764, %and28.i.1711
  %add150.i.1769 = add nuw nsw i64 %add143.i.1766, %shl148.i.1768
  store i64 %add150.i.1769, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1770 = lshr i128 %451, 116
  %shr154.i.1771 = trunc i128 %shr152.i.1770 to i64
  %shr159.i.1773 = lshr i64 %conv27.i.1710, 58
  %461 = lshr i128 %452, 58
  %and165.i.1775 = trunc i128 %461 to i64
  %shl166.i.1776 = and i64 %and165.i.1775, 288230376151711680
  %add156.i.1772 = add nuw nsw i64 %shr159.i.1773, %shr154.i.1771
  %add161.i.1774 = add nuw nsw i64 %add156.i.1772, %and32.i.1715
  %add168.i.1777 = add nuw nsw i64 %add161.i.1774, %shl166.i.1776
  store i64 %add168.i.1777, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1778 = lshr i128 %452, 116
  %shr172.i.1779 = trunc i128 %shr170.i.1778 to i64
  %shr175.i.1781 = lshr i64 %conv31.i.1714, 58
  %add176.i.1782 = add nuw nsw i64 %shr175.i.1781, %shr172.i.1779
  %462 = lshr i128 %453, 58
  %and180.i.1783 = trunc i128 %462 to i64
  %shl181.i.1784 = and i64 %and180.i.1783, 288230376151711680
  %add182.i.1785 = add nuw nsw i64 %add176.i.1782, %shl181.i.1784
  %shl187.i.1786 = shl nuw nsw i64 %add182.i.1785, 1
  %463 = lshr i128 %453, 115
  %.tr.i.1787 = trunc i128 %463 to i64
  %shl188.i.1788 = and i64 %.tr.i.1787, 8190
  %464 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1789 = add i64 %shl187.i.1786, %464
  %add192.i.1790 = add nuw nsw i64 %shl188.i.1788, %add42.i.1721
  %shr194.i.1791 = lshr i64 %add190.i.1789, 58
  %add196.i.1792 = add nuw nsw i64 %add192.i.1790, %shr194.i.1791
  store i64 %add196.i.1792, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1793 = and i64 %add190.i.1789, 288230376151711743
  store i64 %and198.i.1793, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.1793, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.1792, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.1729, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.1737, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.1745, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.1753, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.1761, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.1769, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.1777, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body.135

for.body.135:                                     ; preds = %for.body.135, %for.end.125
  %i.43446 = phi i32 [ 0, %for.end.125 ], [ %inc141, %for.body.135 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %465 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1445 = trunc i128 %465 to i64
  %and.i.1446 = and i64 %conv.i.1445, 288230376151711743
  store i64 %and.i.1446, i64* %arraydecay24, align 16, !tbaa !6
  %466 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1448 = trunc i128 %466 to i64
  %and4.i.1449 = and i64 %conv3.i.1448, 288230376151711743
  %467 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1452 = trunc i128 %467 to i64
  %and8.i.1453 = and i64 %conv7.i.1452, 288230376151711743
  %468 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1456 = trunc i128 %468 to i64
  %and12.i.1457 = and i64 %conv11.i.1456, 288230376151711743
  %469 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1460 = trunc i128 %469 to i64
  %and16.i.1461 = and i64 %conv15.i.1460, 288230376151711743
  %470 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1464 = trunc i128 %470 to i64
  %and20.i.1465 = and i64 %conv19.i.1464, 288230376151711743
  %471 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1468 = trunc i128 %471 to i64
  %and24.i.1469 = and i64 %conv23.i.1468, 288230376151711743
  %472 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1472 = trunc i128 %472 to i64
  %and28.i.1473 = and i64 %conv27.i.1472, 288230376151711743
  %473 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1476 = trunc i128 %473 to i64
  %and32.i.1477 = and i64 %conv31.i.1476, 288230376151711743
  %shr.i.1479 = lshr i64 %conv.i.1445, 58
  %add.i.1480 = add nuw nsw i64 %and4.i.1449, %shr.i.1479
  %474 = lshr i128 %465, 58
  %and40.i.1481 = trunc i128 %474 to i64
  %shl.i.1482 = and i64 %and40.i.1481, 288230376151711680
  %add42.i.1483 = add nuw nsw i64 %add.i.1480, %shl.i.1482
  %shr44.i.1484 = lshr i128 %465, 116
  %shr46.i.1485 = trunc i128 %shr44.i.1484 to i64
  %shr51.i.1487 = lshr i64 %conv3.i.1448, 58
  %475 = lshr i128 %466, 58
  %and57.i.1489 = trunc i128 %475 to i64
  %shl58.i.1490 = and i64 %and57.i.1489, 288230376151711680
  %add48.i.1486 = add nuw nsw i64 %shr51.i.1487, %shr46.i.1485
  %add53.i.1488 = add nuw nsw i64 %add48.i.1486, %and8.i.1453
  %add60.i.1491 = add nuw nsw i64 %add53.i.1488, %shl58.i.1490
  store i64 %add60.i.1491, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1492 = lshr i128 %466, 116
  %shr64.i.1493 = trunc i128 %shr62.i.1492 to i64
  %shr69.i.1495 = lshr i64 %conv7.i.1452, 58
  %476 = lshr i128 %467, 58
  %and75.i.1497 = trunc i128 %476 to i64
  %shl76.i.1498 = and i64 %and75.i.1497, 288230376151711680
  %add66.i.1494 = add nuw nsw i64 %shr69.i.1495, %shr64.i.1493
  %add71.i.1496 = add nuw nsw i64 %add66.i.1494, %and12.i.1457
  %add78.i.1499 = add nuw nsw i64 %add71.i.1496, %shl76.i.1498
  store i64 %add78.i.1499, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1500 = lshr i128 %467, 116
  %shr82.i.1501 = trunc i128 %shr80.i.1500 to i64
  %shr87.i.1503 = lshr i64 %conv11.i.1456, 58
  %477 = lshr i128 %468, 58
  %and93.i.1505 = trunc i128 %477 to i64
  %shl94.i.1506 = and i64 %and93.i.1505, 288230376151711680
  %add84.i.1502 = add nuw nsw i64 %shr87.i.1503, %shr82.i.1501
  %add89.i.1504 = add nuw nsw i64 %add84.i.1502, %and16.i.1461
  %add96.i.1507 = add nuw nsw i64 %add89.i.1504, %shl94.i.1506
  store i64 %add96.i.1507, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1508 = lshr i128 %468, 116
  %shr100.i.1509 = trunc i128 %shr98.i.1508 to i64
  %shr105.i.1511 = lshr i64 %conv15.i.1460, 58
  %478 = lshr i128 %469, 58
  %and111.i.1513 = trunc i128 %478 to i64
  %shl112.i.1514 = and i64 %and111.i.1513, 288230376151711680
  %add102.i.1510 = add nuw nsw i64 %shr105.i.1511, %shr100.i.1509
  %add107.i.1512 = add nuw nsw i64 %add102.i.1510, %and20.i.1465
  %add114.i.1515 = add nuw nsw i64 %add107.i.1512, %shl112.i.1514
  store i64 %add114.i.1515, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1516 = lshr i128 %469, 116
  %shr118.i.1517 = trunc i128 %shr116.i.1516 to i64
  %shr123.i.1519 = lshr i64 %conv19.i.1464, 58
  %479 = lshr i128 %470, 58
  %and129.i.1521 = trunc i128 %479 to i64
  %shl130.i.1522 = and i64 %and129.i.1521, 288230376151711680
  %add120.i.1518 = add nuw nsw i64 %shr123.i.1519, %shr118.i.1517
  %add125.i.1520 = add nuw nsw i64 %add120.i.1518, %and24.i.1469
  %add132.i.1523 = add nuw nsw i64 %add125.i.1520, %shl130.i.1522
  store i64 %add132.i.1523, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1524 = lshr i128 %470, 116
  %shr136.i.1525 = trunc i128 %shr134.i.1524 to i64
  %shr141.i.1527 = lshr i64 %conv23.i.1468, 58
  %480 = lshr i128 %471, 58
  %and147.i.1529 = trunc i128 %480 to i64
  %shl148.i.1530 = and i64 %and147.i.1529, 288230376151711680
  %add138.i.1526 = add nuw nsw i64 %shr141.i.1527, %shr136.i.1525
  %add143.i.1528 = add nuw nsw i64 %add138.i.1526, %and28.i.1473
  %add150.i.1531 = add nuw nsw i64 %add143.i.1528, %shl148.i.1530
  store i64 %add150.i.1531, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1532 = lshr i128 %471, 116
  %shr154.i.1533 = trunc i128 %shr152.i.1532 to i64
  %shr159.i.1535 = lshr i64 %conv27.i.1472, 58
  %481 = lshr i128 %472, 58
  %and165.i.1537 = trunc i128 %481 to i64
  %shl166.i.1538 = and i64 %and165.i.1537, 288230376151711680
  %add156.i.1534 = add nuw nsw i64 %shr159.i.1535, %shr154.i.1533
  %add161.i.1536 = add nuw nsw i64 %add156.i.1534, %and32.i.1477
  %add168.i.1539 = add nuw nsw i64 %add161.i.1536, %shl166.i.1538
  store i64 %add168.i.1539, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1540 = lshr i128 %472, 116
  %shr172.i.1541 = trunc i128 %shr170.i.1540 to i64
  %shr175.i.1543 = lshr i64 %conv31.i.1476, 58
  %add176.i.1544 = add nuw nsw i64 %shr175.i.1543, %shr172.i.1541
  %482 = lshr i128 %473, 58
  %and180.i.1545 = trunc i128 %482 to i64
  %shl181.i.1546 = and i64 %and180.i.1545, 288230376151711680
  %add182.i.1547 = add nuw nsw i64 %add176.i.1544, %shl181.i.1546
  %shl187.i.1548 = shl nuw nsw i64 %add182.i.1547, 1
  %483 = lshr i128 %473, 115
  %.tr.i.1549 = trunc i128 %483 to i64
  %shl188.i.1550 = and i64 %.tr.i.1549, 8190
  %484 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1551 = add i64 %shl187.i.1548, %484
  %add192.i.1552 = add nuw nsw i64 %shl188.i.1550, %add42.i.1483
  %shr194.i.1553 = lshr i64 %add190.i.1551, 58
  %add196.i.1554 = add nuw nsw i64 %add192.i.1552, %shr194.i.1553
  store i64 %add196.i.1554, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1555 = and i64 %add190.i.1551, 288230376151711743
  store i64 %and198.i.1555, i64* %arraydecay24, align 16, !tbaa !6
  %inc141 = add nuw nsw i32 %i.43446, 1
  %exitcond3452 = icmp eq i32 %inc141, 128
  br i1 %exitcond3452, label %for.end.142, label %for.body.135

for.end.142:                                      ; preds = %for.body.135
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %485 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1223 = trunc i128 %485 to i64
  %and.i.1224 = and i64 %conv.i.1223, 288230376151711743
  store i64 %and.i.1224, i64* %arraydecay24, align 16, !tbaa !6
  %486 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.1226 = trunc i128 %486 to i64
  %and4.i.1227 = and i64 %conv3.i.1226, 288230376151711743
  %487 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.1230 = trunc i128 %487 to i64
  %and8.i.1231 = and i64 %conv7.i.1230, 288230376151711743
  %488 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.1234 = trunc i128 %488 to i64
  %and12.i.1235 = and i64 %conv11.i.1234, 288230376151711743
  %489 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1238 = trunc i128 %489 to i64
  %and16.i.1239 = and i64 %conv15.i.1238, 288230376151711743
  %490 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1242 = trunc i128 %490 to i64
  %and20.i.1243 = and i64 %conv19.i.1242, 288230376151711743
  %491 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1246 = trunc i128 %491 to i64
  %and24.i.1247 = and i64 %conv23.i.1246, 288230376151711743
  %492 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1250 = trunc i128 %492 to i64
  %and28.i.1251 = and i64 %conv27.i.1250, 288230376151711743
  %493 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1254 = trunc i128 %493 to i64
  %and32.i.1255 = and i64 %conv31.i.1254, 288230376151711743
  %shr.i.1257 = lshr i64 %conv.i.1223, 58
  %add.i.1258 = add nuw nsw i64 %and4.i.1227, %shr.i.1257
  %494 = lshr i128 %485, 58
  %and40.i.1259 = trunc i128 %494 to i64
  %shl.i.1260 = and i64 %and40.i.1259, 288230376151711680
  %add42.i.1261 = add nuw nsw i64 %add.i.1258, %shl.i.1260
  %shr44.i.1262 = lshr i128 %485, 116
  %shr46.i.1263 = trunc i128 %shr44.i.1262 to i64
  %shr51.i.1265 = lshr i64 %conv3.i.1226, 58
  %495 = lshr i128 %486, 58
  %and57.i.1267 = trunc i128 %495 to i64
  %shl58.i.1268 = and i64 %and57.i.1267, 288230376151711680
  %add48.i.1264 = add nuw nsw i64 %shr51.i.1265, %shr46.i.1263
  %add53.i.1266 = add nuw nsw i64 %add48.i.1264, %and8.i.1231
  %add60.i.1269 = add nuw nsw i64 %add53.i.1266, %shl58.i.1268
  store i64 %add60.i.1269, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1270 = lshr i128 %486, 116
  %shr64.i.1271 = trunc i128 %shr62.i.1270 to i64
  %shr69.i.1273 = lshr i64 %conv7.i.1230, 58
  %496 = lshr i128 %487, 58
  %and75.i.1275 = trunc i128 %496 to i64
  %shl76.i.1276 = and i64 %and75.i.1275, 288230376151711680
  %add66.i.1272 = add nuw nsw i64 %shr69.i.1273, %shr64.i.1271
  %add71.i.1274 = add nuw nsw i64 %add66.i.1272, %and12.i.1235
  %add78.i.1277 = add nuw nsw i64 %add71.i.1274, %shl76.i.1276
  store i64 %add78.i.1277, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1278 = lshr i128 %487, 116
  %shr82.i.1279 = trunc i128 %shr80.i.1278 to i64
  %shr87.i.1281 = lshr i64 %conv11.i.1234, 58
  %497 = lshr i128 %488, 58
  %and93.i.1283 = trunc i128 %497 to i64
  %shl94.i.1284 = and i64 %and93.i.1283, 288230376151711680
  %add84.i.1280 = add nuw nsw i64 %shr87.i.1281, %shr82.i.1279
  %add89.i.1282 = add nuw nsw i64 %add84.i.1280, %and16.i.1239
  %add96.i.1285 = add nuw nsw i64 %add89.i.1282, %shl94.i.1284
  store i64 %add96.i.1285, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1286 = lshr i128 %488, 116
  %shr100.i.1287 = trunc i128 %shr98.i.1286 to i64
  %shr105.i.1289 = lshr i64 %conv15.i.1238, 58
  %498 = lshr i128 %489, 58
  %and111.i.1291 = trunc i128 %498 to i64
  %shl112.i.1292 = and i64 %and111.i.1291, 288230376151711680
  %add102.i.1288 = add nuw nsw i64 %shr105.i.1289, %shr100.i.1287
  %add107.i.1290 = add nuw nsw i64 %add102.i.1288, %and20.i.1243
  %add114.i.1293 = add nuw nsw i64 %add107.i.1290, %shl112.i.1292
  store i64 %add114.i.1293, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1294 = lshr i128 %489, 116
  %shr118.i.1295 = trunc i128 %shr116.i.1294 to i64
  %shr123.i.1297 = lshr i64 %conv19.i.1242, 58
  %499 = lshr i128 %490, 58
  %and129.i.1299 = trunc i128 %499 to i64
  %shl130.i.1300 = and i64 %and129.i.1299, 288230376151711680
  %add120.i.1296 = add nuw nsw i64 %shr123.i.1297, %shr118.i.1295
  %add125.i.1298 = add nuw nsw i64 %add120.i.1296, %and24.i.1247
  %add132.i.1301 = add nuw nsw i64 %add125.i.1298, %shl130.i.1300
  store i64 %add132.i.1301, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1302 = lshr i128 %490, 116
  %shr136.i.1303 = trunc i128 %shr134.i.1302 to i64
  %shr141.i.1305 = lshr i64 %conv23.i.1246, 58
  %500 = lshr i128 %491, 58
  %and147.i.1307 = trunc i128 %500 to i64
  %shl148.i.1308 = and i64 %and147.i.1307, 288230376151711680
  %add138.i.1304 = add nuw nsw i64 %shr141.i.1305, %shr136.i.1303
  %add143.i.1306 = add nuw nsw i64 %add138.i.1304, %and28.i.1251
  %add150.i.1309 = add nuw nsw i64 %add143.i.1306, %shl148.i.1308
  store i64 %add150.i.1309, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1310 = lshr i128 %491, 116
  %shr154.i.1311 = trunc i128 %shr152.i.1310 to i64
  %shr159.i.1313 = lshr i64 %conv27.i.1250, 58
  %501 = lshr i128 %492, 58
  %and165.i.1315 = trunc i128 %501 to i64
  %shl166.i.1316 = and i64 %and165.i.1315, 288230376151711680
  %add156.i.1312 = add nuw nsw i64 %shr159.i.1313, %shr154.i.1311
  %add161.i.1314 = add nuw nsw i64 %add156.i.1312, %and32.i.1255
  %add168.i.1317 = add nuw nsw i64 %add161.i.1314, %shl166.i.1316
  store i64 %add168.i.1317, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1318 = lshr i128 %492, 116
  %shr172.i.1319 = trunc i128 %shr170.i.1318 to i64
  %shr175.i.1321 = lshr i64 %conv31.i.1254, 58
  %add176.i.1322 = add nuw nsw i64 %shr175.i.1321, %shr172.i.1319
  %502 = lshr i128 %493, 58
  %and180.i.1323 = trunc i128 %502 to i64
  %shl181.i.1324 = and i64 %and180.i.1323, 288230376151711680
  %add182.i.1325 = add nuw nsw i64 %add176.i.1322, %shl181.i.1324
  %shl187.i.1326 = shl nuw nsw i64 %add182.i.1325, 1
  %503 = lshr i128 %493, 115
  %.tr.i.1327 = trunc i128 %503 to i64
  %shl188.i.1328 = and i64 %.tr.i.1327, 8190
  %504 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1329 = add i64 %shl187.i.1326, %504
  %add192.i.1330 = add nuw nsw i64 %shl188.i.1328, %add42.i.1261
  %shr194.i.1331 = lshr i64 %add190.i.1329, 58
  %add196.i.1332 = add nuw nsw i64 %add192.i.1330, %shr194.i.1331
  store i64 %add196.i.1332, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1333 = and i64 %add190.i.1329, 288230376151711743
  store i64 %and198.i.1333, i64* %arraydecay24, align 16, !tbaa !6
  store i64 %and198.i.1333, i64* %arraydecay8, align 16, !tbaa !6
  store i64 %add196.i.1332, i64* %arrayidx3.i, align 8, !tbaa !6
  store i64 %add60.i.1269, i64* %arrayidx5.i.312, align 16, !tbaa !6
  store i64 %add78.i.1277, i64* %arrayidx7.i, align 8, !tbaa !6
  store i64 %add96.i.1285, i64* %arrayidx9.i.314, align 16, !tbaa !6
  store i64 %add114.i.1293, i64* %arrayidx11.i, align 8, !tbaa !6
  store i64 %add132.i.1301, i64* %arrayidx13.i.316, align 16, !tbaa !6
  store i64 %add150.i.1309, i64* %arrayidx15.i, align 8, !tbaa !6
  store i64 %add168.i.1317, i64* %arrayidx17.i.318, align 16, !tbaa !6
  br label %for.body.152

for.body.152:                                     ; preds = %for.body.152, %for.end.142
  %i.53445 = phi i32 [ 0, %for.end.142 ], [ %inc158, %for.body.152 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %505 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.985 = trunc i128 %505 to i64
  %and.i.986 = and i64 %conv.i.985, 288230376151711743
  store i64 %and.i.986, i64* %arraydecay24, align 16, !tbaa !6
  %506 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.988 = trunc i128 %506 to i64
  %and4.i.989 = and i64 %conv3.i.988, 288230376151711743
  %507 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.992 = trunc i128 %507 to i64
  %and8.i.993 = and i64 %conv7.i.992, 288230376151711743
  %508 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.996 = trunc i128 %508 to i64
  %and12.i.997 = and i64 %conv11.i.996, 288230376151711743
  %509 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.1000 = trunc i128 %509 to i64
  %and16.i.1001 = and i64 %conv15.i.1000, 288230376151711743
  %510 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.1004 = trunc i128 %510 to i64
  %and20.i.1005 = and i64 %conv19.i.1004, 288230376151711743
  %511 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.1008 = trunc i128 %511 to i64
  %and24.i.1009 = and i64 %conv23.i.1008, 288230376151711743
  %512 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.1012 = trunc i128 %512 to i64
  %and28.i.1013 = and i64 %conv27.i.1012, 288230376151711743
  %513 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.1016 = trunc i128 %513 to i64
  %and32.i.1017 = and i64 %conv31.i.1016, 288230376151711743
  %shr.i.1019 = lshr i64 %conv.i.985, 58
  %add.i.1020 = add nuw nsw i64 %and4.i.989, %shr.i.1019
  %514 = lshr i128 %505, 58
  %and40.i.1021 = trunc i128 %514 to i64
  %shl.i.1022 = and i64 %and40.i.1021, 288230376151711680
  %add42.i.1023 = add nuw nsw i64 %add.i.1020, %shl.i.1022
  %shr44.i.1024 = lshr i128 %505, 116
  %shr46.i.1025 = trunc i128 %shr44.i.1024 to i64
  %shr51.i.1027 = lshr i64 %conv3.i.988, 58
  %515 = lshr i128 %506, 58
  %and57.i.1029 = trunc i128 %515 to i64
  %shl58.i.1030 = and i64 %and57.i.1029, 288230376151711680
  %add48.i.1026 = add nuw nsw i64 %shr51.i.1027, %shr46.i.1025
  %add53.i.1028 = add nuw nsw i64 %add48.i.1026, %and8.i.993
  %add60.i.1031 = add nuw nsw i64 %add53.i.1028, %shl58.i.1030
  store i64 %add60.i.1031, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.1032 = lshr i128 %506, 116
  %shr64.i.1033 = trunc i128 %shr62.i.1032 to i64
  %shr69.i.1035 = lshr i64 %conv7.i.992, 58
  %516 = lshr i128 %507, 58
  %and75.i.1037 = trunc i128 %516 to i64
  %shl76.i.1038 = and i64 %and75.i.1037, 288230376151711680
  %add66.i.1034 = add nuw nsw i64 %shr69.i.1035, %shr64.i.1033
  %add71.i.1036 = add nuw nsw i64 %add66.i.1034, %and12.i.997
  %add78.i.1039 = add nuw nsw i64 %add71.i.1036, %shl76.i.1038
  store i64 %add78.i.1039, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.1040 = lshr i128 %507, 116
  %shr82.i.1041 = trunc i128 %shr80.i.1040 to i64
  %shr87.i.1043 = lshr i64 %conv11.i.996, 58
  %517 = lshr i128 %508, 58
  %and93.i.1045 = trunc i128 %517 to i64
  %shl94.i.1046 = and i64 %and93.i.1045, 288230376151711680
  %add84.i.1042 = add nuw nsw i64 %shr87.i.1043, %shr82.i.1041
  %add89.i.1044 = add nuw nsw i64 %add84.i.1042, %and16.i.1001
  %add96.i.1047 = add nuw nsw i64 %add89.i.1044, %shl94.i.1046
  store i64 %add96.i.1047, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.1048 = lshr i128 %508, 116
  %shr100.i.1049 = trunc i128 %shr98.i.1048 to i64
  %shr105.i.1051 = lshr i64 %conv15.i.1000, 58
  %518 = lshr i128 %509, 58
  %and111.i.1053 = trunc i128 %518 to i64
  %shl112.i.1054 = and i64 %and111.i.1053, 288230376151711680
  %add102.i.1050 = add nuw nsw i64 %shr105.i.1051, %shr100.i.1049
  %add107.i.1052 = add nuw nsw i64 %add102.i.1050, %and20.i.1005
  %add114.i.1055 = add nuw nsw i64 %add107.i.1052, %shl112.i.1054
  store i64 %add114.i.1055, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.1056 = lshr i128 %509, 116
  %shr118.i.1057 = trunc i128 %shr116.i.1056 to i64
  %shr123.i.1059 = lshr i64 %conv19.i.1004, 58
  %519 = lshr i128 %510, 58
  %and129.i.1061 = trunc i128 %519 to i64
  %shl130.i.1062 = and i64 %and129.i.1061, 288230376151711680
  %add120.i.1058 = add nuw nsw i64 %shr123.i.1059, %shr118.i.1057
  %add125.i.1060 = add nuw nsw i64 %add120.i.1058, %and24.i.1009
  %add132.i.1063 = add nuw nsw i64 %add125.i.1060, %shl130.i.1062
  store i64 %add132.i.1063, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.1064 = lshr i128 %510, 116
  %shr136.i.1065 = trunc i128 %shr134.i.1064 to i64
  %shr141.i.1067 = lshr i64 %conv23.i.1008, 58
  %520 = lshr i128 %511, 58
  %and147.i.1069 = trunc i128 %520 to i64
  %shl148.i.1070 = and i64 %and147.i.1069, 288230376151711680
  %add138.i.1066 = add nuw nsw i64 %shr141.i.1067, %shr136.i.1065
  %add143.i.1068 = add nuw nsw i64 %add138.i.1066, %and28.i.1013
  %add150.i.1071 = add nuw nsw i64 %add143.i.1068, %shl148.i.1070
  store i64 %add150.i.1071, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.1072 = lshr i128 %511, 116
  %shr154.i.1073 = trunc i128 %shr152.i.1072 to i64
  %shr159.i.1075 = lshr i64 %conv27.i.1012, 58
  %521 = lshr i128 %512, 58
  %and165.i.1077 = trunc i128 %521 to i64
  %shl166.i.1078 = and i64 %and165.i.1077, 288230376151711680
  %add156.i.1074 = add nuw nsw i64 %shr159.i.1075, %shr154.i.1073
  %add161.i.1076 = add nuw nsw i64 %add156.i.1074, %and32.i.1017
  %add168.i.1079 = add nuw nsw i64 %add161.i.1076, %shl166.i.1078
  store i64 %add168.i.1079, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.1080 = lshr i128 %512, 116
  %shr172.i.1081 = trunc i128 %shr170.i.1080 to i64
  %shr175.i.1083 = lshr i64 %conv31.i.1016, 58
  %add176.i.1084 = add nuw nsw i64 %shr175.i.1083, %shr172.i.1081
  %522 = lshr i128 %513, 58
  %and180.i.1085 = trunc i128 %522 to i64
  %shl181.i.1086 = and i64 %and180.i.1085, 288230376151711680
  %add182.i.1087 = add nuw nsw i64 %add176.i.1084, %shl181.i.1086
  %shl187.i.1088 = shl nuw nsw i64 %add182.i.1087, 1
  %523 = lshr i128 %513, 115
  %.tr.i.1089 = trunc i128 %523 to i64
  %shl188.i.1090 = and i64 %.tr.i.1089, 8190
  %524 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.1091 = add i64 %shl187.i.1088, %524
  %add192.i.1092 = add nuw nsw i64 %shl188.i.1090, %add42.i.1023
  %shr194.i.1093 = lshr i64 %add190.i.1091, 58
  %add196.i.1094 = add nuw nsw i64 %add192.i.1092, %shr194.i.1093
  store i64 %add196.i.1094, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.1095 = and i64 %add190.i.1091, 288230376151711743
  store i64 %and198.i.1095, i64* %arraydecay24, align 16, !tbaa !6
  %inc158 = add nuw nsw i32 %i.53445, 1
  %exitcond3451 = icmp eq i32 %inc158, 256
  br i1 %exitcond3451, label %for.end.159, label %for.body.152

for.end.159:                                      ; preds = %for.body.152
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay8)
  %525 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.763 = trunc i128 %525 to i64
  %and.i.764 = and i64 %conv.i.763, 288230376151711743
  store i64 %and.i.764, i64* %arraydecay24, align 16, !tbaa !6
  %526 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.766 = trunc i128 %526 to i64
  %and4.i.767 = and i64 %conv3.i.766, 288230376151711743
  %527 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.770 = trunc i128 %527 to i64
  %and8.i.771 = and i64 %conv7.i.770, 288230376151711743
  %528 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.774 = trunc i128 %528 to i64
  %and12.i.775 = and i64 %conv11.i.774, 288230376151711743
  %529 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.778 = trunc i128 %529 to i64
  %and16.i.779 = and i64 %conv15.i.778, 288230376151711743
  %530 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.782 = trunc i128 %530 to i64
  %and20.i.783 = and i64 %conv19.i.782, 288230376151711743
  %531 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.786 = trunc i128 %531 to i64
  %and24.i.787 = and i64 %conv23.i.786, 288230376151711743
  %532 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.790 = trunc i128 %532 to i64
  %and28.i.791 = and i64 %conv27.i.790, 288230376151711743
  %533 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.794 = trunc i128 %533 to i64
  %and32.i.795 = and i64 %conv31.i.794, 288230376151711743
  %shr.i.797 = lshr i64 %conv.i.763, 58
  %add.i.798 = add nuw nsw i64 %and4.i.767, %shr.i.797
  %534 = lshr i128 %525, 58
  %and40.i.799 = trunc i128 %534 to i64
  %shl.i.800 = and i64 %and40.i.799, 288230376151711680
  %add42.i.801 = add nuw nsw i64 %add.i.798, %shl.i.800
  %shr44.i.802 = lshr i128 %525, 116
  %shr46.i.803 = trunc i128 %shr44.i.802 to i64
  %shr51.i.805 = lshr i64 %conv3.i.766, 58
  %535 = lshr i128 %526, 58
  %and57.i.807 = trunc i128 %535 to i64
  %shl58.i.808 = and i64 %and57.i.807, 288230376151711680
  %add48.i.804 = add nuw nsw i64 %shr51.i.805, %shr46.i.803
  %add53.i.806 = add nuw nsw i64 %add48.i.804, %and8.i.771
  %add60.i.809 = add nuw nsw i64 %add53.i.806, %shl58.i.808
  store i64 %add60.i.809, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.810 = lshr i128 %526, 116
  %shr64.i.811 = trunc i128 %shr62.i.810 to i64
  %shr69.i.813 = lshr i64 %conv7.i.770, 58
  %536 = lshr i128 %527, 58
  %and75.i.815 = trunc i128 %536 to i64
  %shl76.i.816 = and i64 %and75.i.815, 288230376151711680
  %add66.i.812 = add nuw nsw i64 %shr69.i.813, %shr64.i.811
  %add71.i.814 = add nuw nsw i64 %add66.i.812, %and12.i.775
  %add78.i.817 = add nuw nsw i64 %add71.i.814, %shl76.i.816
  store i64 %add78.i.817, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.818 = lshr i128 %527, 116
  %shr82.i.819 = trunc i128 %shr80.i.818 to i64
  %shr87.i.821 = lshr i64 %conv11.i.774, 58
  %537 = lshr i128 %528, 58
  %and93.i.823 = trunc i128 %537 to i64
  %shl94.i.824 = and i64 %and93.i.823, 288230376151711680
  %add84.i.820 = add nuw nsw i64 %shr87.i.821, %shr82.i.819
  %add89.i.822 = add nuw nsw i64 %add84.i.820, %and16.i.779
  %add96.i.825 = add nuw nsw i64 %add89.i.822, %shl94.i.824
  store i64 %add96.i.825, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.826 = lshr i128 %528, 116
  %shr100.i.827 = trunc i128 %shr98.i.826 to i64
  %shr105.i.829 = lshr i64 %conv15.i.778, 58
  %538 = lshr i128 %529, 58
  %and111.i.831 = trunc i128 %538 to i64
  %shl112.i.832 = and i64 %and111.i.831, 288230376151711680
  %add102.i.828 = add nuw nsw i64 %shr105.i.829, %shr100.i.827
  %add107.i.830 = add nuw nsw i64 %add102.i.828, %and20.i.783
  %add114.i.833 = add nuw nsw i64 %add107.i.830, %shl112.i.832
  store i64 %add114.i.833, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.834 = lshr i128 %529, 116
  %shr118.i.835 = trunc i128 %shr116.i.834 to i64
  %shr123.i.837 = lshr i64 %conv19.i.782, 58
  %539 = lshr i128 %530, 58
  %and129.i.839 = trunc i128 %539 to i64
  %shl130.i.840 = and i64 %and129.i.839, 288230376151711680
  %add120.i.836 = add nuw nsw i64 %shr123.i.837, %shr118.i.835
  %add125.i.838 = add nuw nsw i64 %add120.i.836, %and24.i.787
  %add132.i.841 = add nuw nsw i64 %add125.i.838, %shl130.i.840
  store i64 %add132.i.841, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.842 = lshr i128 %530, 116
  %shr136.i.843 = trunc i128 %shr134.i.842 to i64
  %shr141.i.845 = lshr i64 %conv23.i.786, 58
  %540 = lshr i128 %531, 58
  %and147.i.847 = trunc i128 %540 to i64
  %shl148.i.848 = and i64 %and147.i.847, 288230376151711680
  %add138.i.844 = add nuw nsw i64 %shr141.i.845, %shr136.i.843
  %add143.i.846 = add nuw nsw i64 %add138.i.844, %and28.i.791
  %add150.i.849 = add nuw nsw i64 %add143.i.846, %shl148.i.848
  store i64 %add150.i.849, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.850 = lshr i128 %531, 116
  %shr154.i.851 = trunc i128 %shr152.i.850 to i64
  %shr159.i.853 = lshr i64 %conv27.i.790, 58
  %541 = lshr i128 %532, 58
  %and165.i.855 = trunc i128 %541 to i64
  %shl166.i.856 = and i64 %and165.i.855, 288230376151711680
  %add156.i.852 = add nuw nsw i64 %shr159.i.853, %shr154.i.851
  %add161.i.854 = add nuw nsw i64 %add156.i.852, %and32.i.795
  %add168.i.857 = add nuw nsw i64 %add161.i.854, %shl166.i.856
  store i64 %add168.i.857, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.858 = lshr i128 %532, 116
  %shr172.i.859 = trunc i128 %shr170.i.858 to i64
  %shr175.i.861 = lshr i64 %conv31.i.794, 58
  %add176.i.862 = add nuw nsw i64 %shr175.i.861, %shr172.i.859
  %542 = lshr i128 %533, 58
  %and180.i.863 = trunc i128 %542 to i64
  %shl181.i.864 = and i64 %and180.i.863, 288230376151711680
  %add182.i.865 = add nuw nsw i64 %add176.i.862, %shl181.i.864
  %shl187.i.866 = shl nuw nsw i64 %add182.i.865, 1
  %543 = lshr i128 %533, 115
  %.tr.i.867 = trunc i128 %543 to i64
  %shl188.i.868 = and i64 %.tr.i.867, 8190
  %544 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.869 = add i64 %shl187.i.866, %544
  %add192.i.870 = add nuw nsw i64 %shl188.i.868, %add42.i.801
  %shr194.i.871 = lshr i64 %add190.i.869, 58
  %add196.i.872 = add nuw nsw i64 %add192.i.870, %shr194.i.871
  store i64 %add196.i.872, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.873 = and i64 %add190.i.869, 288230376151711743
  store i64 %and198.i.873, i64* %arraydecay24, align 16, !tbaa !6
  br label %for.body.167

for.body.167:                                     ; preds = %for.body.167, %for.end.159
  %i.63444 = phi i32 [ 0, %for.end.159 ], [ %inc173, %for.body.167 ]
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay24)
  %545 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.541 = trunc i128 %545 to i64
  %and.i.542 = and i64 %conv.i.541, 288230376151711743
  store i64 %and.i.542, i64* %arraydecay24, align 16, !tbaa !6
  %546 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.544 = trunc i128 %546 to i64
  %and4.i.545 = and i64 %conv3.i.544, 288230376151711743
  %547 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.548 = trunc i128 %547 to i64
  %and8.i.549 = and i64 %conv7.i.548, 288230376151711743
  %548 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.552 = trunc i128 %548 to i64
  %and12.i.553 = and i64 %conv11.i.552, 288230376151711743
  %549 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.556 = trunc i128 %549 to i64
  %and16.i.557 = and i64 %conv15.i.556, 288230376151711743
  %550 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.560 = trunc i128 %550 to i64
  %and20.i.561 = and i64 %conv19.i.560, 288230376151711743
  %551 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.564 = trunc i128 %551 to i64
  %and24.i.565 = and i64 %conv23.i.564, 288230376151711743
  %552 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.568 = trunc i128 %552 to i64
  %and28.i.569 = and i64 %conv27.i.568, 288230376151711743
  %553 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.572 = trunc i128 %553 to i64
  %and32.i.573 = and i64 %conv31.i.572, 288230376151711743
  %shr.i.575 = lshr i64 %conv.i.541, 58
  %add.i.576 = add nuw nsw i64 %and4.i.545, %shr.i.575
  %554 = lshr i128 %545, 58
  %and40.i.577 = trunc i128 %554 to i64
  %shl.i.578 = and i64 %and40.i.577, 288230376151711680
  %add42.i.579 = add nuw nsw i64 %add.i.576, %shl.i.578
  %shr44.i.580 = lshr i128 %545, 116
  %shr46.i.581 = trunc i128 %shr44.i.580 to i64
  %shr51.i.583 = lshr i64 %conv3.i.544, 58
  %555 = lshr i128 %546, 58
  %and57.i.585 = trunc i128 %555 to i64
  %shl58.i.586 = and i64 %and57.i.585, 288230376151711680
  %add48.i.582 = add nuw nsw i64 %shr51.i.583, %shr46.i.581
  %add53.i.584 = add nuw nsw i64 %add48.i.582, %and8.i.549
  %add60.i.587 = add nuw nsw i64 %add53.i.584, %shl58.i.586
  store i64 %add60.i.587, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.588 = lshr i128 %546, 116
  %shr64.i.589 = trunc i128 %shr62.i.588 to i64
  %shr69.i.591 = lshr i64 %conv7.i.548, 58
  %556 = lshr i128 %547, 58
  %and75.i.593 = trunc i128 %556 to i64
  %shl76.i.594 = and i64 %and75.i.593, 288230376151711680
  %add66.i.590 = add nuw nsw i64 %shr69.i.591, %shr64.i.589
  %add71.i.592 = add nuw nsw i64 %add66.i.590, %and12.i.553
  %add78.i.595 = add nuw nsw i64 %add71.i.592, %shl76.i.594
  store i64 %add78.i.595, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.596 = lshr i128 %547, 116
  %shr82.i.597 = trunc i128 %shr80.i.596 to i64
  %shr87.i.599 = lshr i64 %conv11.i.552, 58
  %557 = lshr i128 %548, 58
  %and93.i.601 = trunc i128 %557 to i64
  %shl94.i.602 = and i64 %and93.i.601, 288230376151711680
  %add84.i.598 = add nuw nsw i64 %shr87.i.599, %shr82.i.597
  %add89.i.600 = add nuw nsw i64 %add84.i.598, %and16.i.557
  %add96.i.603 = add nuw nsw i64 %add89.i.600, %shl94.i.602
  store i64 %add96.i.603, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.604 = lshr i128 %548, 116
  %shr100.i.605 = trunc i128 %shr98.i.604 to i64
  %shr105.i.607 = lshr i64 %conv15.i.556, 58
  %558 = lshr i128 %549, 58
  %and111.i.609 = trunc i128 %558 to i64
  %shl112.i.610 = and i64 %and111.i.609, 288230376151711680
  %add102.i.606 = add nuw nsw i64 %shr105.i.607, %shr100.i.605
  %add107.i.608 = add nuw nsw i64 %add102.i.606, %and20.i.561
  %add114.i.611 = add nuw nsw i64 %add107.i.608, %shl112.i.610
  store i64 %add114.i.611, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.612 = lshr i128 %549, 116
  %shr118.i.613 = trunc i128 %shr116.i.612 to i64
  %shr123.i.615 = lshr i64 %conv19.i.560, 58
  %559 = lshr i128 %550, 58
  %and129.i.617 = trunc i128 %559 to i64
  %shl130.i.618 = and i64 %and129.i.617, 288230376151711680
  %add120.i.614 = add nuw nsw i64 %shr123.i.615, %shr118.i.613
  %add125.i.616 = add nuw nsw i64 %add120.i.614, %and24.i.565
  %add132.i.619 = add nuw nsw i64 %add125.i.616, %shl130.i.618
  store i64 %add132.i.619, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.620 = lshr i128 %550, 116
  %shr136.i.621 = trunc i128 %shr134.i.620 to i64
  %shr141.i.623 = lshr i64 %conv23.i.564, 58
  %560 = lshr i128 %551, 58
  %and147.i.625 = trunc i128 %560 to i64
  %shl148.i.626 = and i64 %and147.i.625, 288230376151711680
  %add138.i.622 = add nuw nsw i64 %shr141.i.623, %shr136.i.621
  %add143.i.624 = add nuw nsw i64 %add138.i.622, %and28.i.569
  %add150.i.627 = add nuw nsw i64 %add143.i.624, %shl148.i.626
  store i64 %add150.i.627, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.628 = lshr i128 %551, 116
  %shr154.i.629 = trunc i128 %shr152.i.628 to i64
  %shr159.i.631 = lshr i64 %conv27.i.568, 58
  %561 = lshr i128 %552, 58
  %and165.i.633 = trunc i128 %561 to i64
  %shl166.i.634 = and i64 %and165.i.633, 288230376151711680
  %add156.i.630 = add nuw nsw i64 %shr159.i.631, %shr154.i.629
  %add161.i.632 = add nuw nsw i64 %add156.i.630, %and32.i.573
  %add168.i.635 = add nuw nsw i64 %add161.i.632, %shl166.i.634
  store i64 %add168.i.635, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.636 = lshr i128 %552, 116
  %shr172.i.637 = trunc i128 %shr170.i.636 to i64
  %shr175.i.639 = lshr i64 %conv31.i.572, 58
  %add176.i.640 = add nuw nsw i64 %shr175.i.639, %shr172.i.637
  %562 = lshr i128 %553, 58
  %and180.i.641 = trunc i128 %562 to i64
  %shl181.i.642 = and i64 %and180.i.641, 288230376151711680
  %add182.i.643 = add nuw nsw i64 %add176.i.640, %shl181.i.642
  %shl187.i.644 = shl nuw nsw i64 %add182.i.643, 1
  %563 = lshr i128 %553, 115
  %.tr.i.645 = trunc i128 %563 to i64
  %shl188.i.646 = and i64 %.tr.i.645, 8190
  %564 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.647 = add i64 %shl187.i.644, %564
  %add192.i.648 = add nuw nsw i64 %shl188.i.646, %add42.i.579
  %shr194.i.649 = lshr i64 %add190.i.647, 58
  %add196.i.650 = add nuw nsw i64 %add192.i.648, %shr194.i.649
  store i64 %add196.i.650, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.651 = and i64 %add190.i.647, 288230376151711743
  store i64 %and198.i.651, i64* %arraydecay24, align 16, !tbaa !6
  %inc173 = add nuw nsw i32 %i.63444, 1
  %exitcond = icmp eq i32 %inc173, 9
  br i1 %exitcond, label %for.end.174, label %for.body.167

for.end.174:                                      ; preds = %for.body.167
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %arraydecay53)
  %565 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.319 = trunc i128 %565 to i64
  %and.i.320 = and i64 %conv.i.319, 288230376151711743
  store i64 %and.i.320, i64* %arraydecay24, align 16, !tbaa !6
  %566 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.322 = trunc i128 %566 to i64
  %and4.i.323 = and i64 %conv3.i.322, 288230376151711743
  %567 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.326 = trunc i128 %567 to i64
  %and8.i.327 = and i64 %conv7.i.326, 288230376151711743
  %568 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.330 = trunc i128 %568 to i64
  %and12.i.331 = and i64 %conv11.i.330, 288230376151711743
  %569 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.334 = trunc i128 %569 to i64
  %and16.i.335 = and i64 %conv15.i.334, 288230376151711743
  %570 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.338 = trunc i128 %570 to i64
  %and20.i.339 = and i64 %conv19.i.338, 288230376151711743
  %571 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.342 = trunc i128 %571 to i64
  %and24.i.343 = and i64 %conv23.i.342, 288230376151711743
  %572 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.346 = trunc i128 %572 to i64
  %and28.i.347 = and i64 %conv27.i.346, 288230376151711743
  %573 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.350 = trunc i128 %573 to i64
  %and32.i.351 = and i64 %conv31.i.350, 288230376151711743
  %shr.i.353 = lshr i64 %conv.i.319, 58
  %add.i.354 = add nuw nsw i64 %and4.i.323, %shr.i.353
  %574 = lshr i128 %565, 58
  %and40.i.355 = trunc i128 %574 to i64
  %shl.i.356 = and i64 %and40.i.355, 288230376151711680
  %add42.i.357 = add nuw nsw i64 %add.i.354, %shl.i.356
  %shr44.i.358 = lshr i128 %565, 116
  %shr46.i.359 = trunc i128 %shr44.i.358 to i64
  %shr51.i.361 = lshr i64 %conv3.i.322, 58
  %575 = lshr i128 %566, 58
  %and57.i.363 = trunc i128 %575 to i64
  %shl58.i.364 = and i64 %and57.i.363, 288230376151711680
  %add48.i.360 = add nuw nsw i64 %shr51.i.361, %shr46.i.359
  %add53.i.362 = add nuw nsw i64 %add48.i.360, %and8.i.327
  %add60.i.365 = add nuw nsw i64 %add53.i.362, %shl58.i.364
  store i64 %add60.i.365, i64* %arrayidx9.i.1105, align 16, !tbaa !6
  %shr62.i.366 = lshr i128 %566, 116
  %shr64.i.367 = trunc i128 %shr62.i.366 to i64
  %shr69.i.369 = lshr i64 %conv7.i.326, 58
  %576 = lshr i128 %567, 58
  %and75.i.371 = trunc i128 %576 to i64
  %shl76.i.372 = and i64 %and75.i.371, 288230376151711680
  %add66.i.368 = add nuw nsw i64 %shr69.i.369, %shr64.i.367
  %add71.i.370 = add nuw nsw i64 %add66.i.368, %and12.i.331
  %add78.i.373 = add nuw nsw i64 %add71.i.370, %shl76.i.372
  store i64 %add78.i.373, i64* %arrayidx13.i.1109, align 8, !tbaa !6
  %shr80.i.374 = lshr i128 %567, 116
  %shr82.i.375 = trunc i128 %shr80.i.374 to i64
  %shr87.i.377 = lshr i64 %conv11.i.330, 58
  %577 = lshr i128 %568, 58
  %and93.i.379 = trunc i128 %577 to i64
  %shl94.i.380 = and i64 %and93.i.379, 288230376151711680
  %add84.i.376 = add nuw nsw i64 %shr87.i.377, %shr82.i.375
  %add89.i.378 = add nuw nsw i64 %add84.i.376, %and16.i.335
  %add96.i.381 = add nuw nsw i64 %add89.i.378, %shl94.i.380
  store i64 %add96.i.381, i64* %arrayidx17.i.1113, align 16, !tbaa !6
  %shr98.i.382 = lshr i128 %568, 116
  %shr100.i.383 = trunc i128 %shr98.i.382 to i64
  %shr105.i.385 = lshr i64 %conv15.i.334, 58
  %578 = lshr i128 %569, 58
  %and111.i.387 = trunc i128 %578 to i64
  %shl112.i.388 = and i64 %and111.i.387, 288230376151711680
  %add102.i.384 = add nuw nsw i64 %shr105.i.385, %shr100.i.383
  %add107.i.386 = add nuw nsw i64 %add102.i.384, %and20.i.339
  %add114.i.389 = add nuw nsw i64 %add107.i.386, %shl112.i.388
  store i64 %add114.i.389, i64* %arrayidx21.i.1117, align 8, !tbaa !6
  %shr116.i.390 = lshr i128 %569, 116
  %shr118.i.391 = trunc i128 %shr116.i.390 to i64
  %shr123.i.393 = lshr i64 %conv19.i.338, 58
  %579 = lshr i128 %570, 58
  %and129.i.395 = trunc i128 %579 to i64
  %shl130.i.396 = and i64 %and129.i.395, 288230376151711680
  %add120.i.392 = add nuw nsw i64 %shr123.i.393, %shr118.i.391
  %add125.i.394 = add nuw nsw i64 %add120.i.392, %and24.i.343
  %add132.i.397 = add nuw nsw i64 %add125.i.394, %shl130.i.396
  store i64 %add132.i.397, i64* %arrayidx25.i.1121, align 16, !tbaa !6
  %shr134.i.398 = lshr i128 %570, 116
  %shr136.i.399 = trunc i128 %shr134.i.398 to i64
  %shr141.i.401 = lshr i64 %conv23.i.342, 58
  %580 = lshr i128 %571, 58
  %and147.i.403 = trunc i128 %580 to i64
  %shl148.i.404 = and i64 %and147.i.403, 288230376151711680
  %add138.i.400 = add nuw nsw i64 %shr141.i.401, %shr136.i.399
  %add143.i.402 = add nuw nsw i64 %add138.i.400, %and28.i.347
  %add150.i.405 = add nuw nsw i64 %add143.i.402, %shl148.i.404
  store i64 %add150.i.405, i64* %arrayidx29.i.1125, align 8, !tbaa !6
  %shr152.i.406 = lshr i128 %571, 116
  %shr154.i.407 = trunc i128 %shr152.i.406 to i64
  %shr159.i.409 = lshr i64 %conv27.i.346, 58
  %581 = lshr i128 %572, 58
  %and165.i.411 = trunc i128 %581 to i64
  %shl166.i.412 = and i64 %and165.i.411, 288230376151711680
  %add156.i.408 = add nuw nsw i64 %shr159.i.409, %shr154.i.407
  %add161.i.410 = add nuw nsw i64 %add156.i.408, %and32.i.351
  %add168.i.413 = add nuw nsw i64 %add161.i.410, %shl166.i.412
  store i64 %add168.i.413, i64* %arrayidx33.i.1129, align 16, !tbaa !6
  %shr170.i.414 = lshr i128 %572, 116
  %shr172.i.415 = trunc i128 %shr170.i.414 to i64
  %shr175.i.417 = lshr i64 %conv31.i.350, 58
  %add176.i.418 = add nuw nsw i64 %shr175.i.417, %shr172.i.415
  %582 = lshr i128 %573, 58
  %and180.i.419 = trunc i128 %582 to i64
  %shl181.i.420 = and i64 %and180.i.419, 288230376151711680
  %add182.i.421 = add nuw nsw i64 %add176.i.418, %shl181.i.420
  %shl187.i.422 = shl nuw nsw i64 %add182.i.421, 1
  %583 = lshr i128 %573, 115
  %.tr.i.423 = trunc i128 %583 to i64
  %shl188.i.424 = and i64 %.tr.i.423, 8190
  %584 = load i64, i64* %arraydecay24, align 16, !tbaa !6
  %add190.i.425 = add i64 %shl187.i.422, %584
  %add192.i.426 = add nuw nsw i64 %shl188.i.424, %add42.i.357
  %shr194.i.427 = lshr i64 %add190.i.425, 58
  %add196.i.428 = add nuw nsw i64 %add192.i.426, %shr194.i.427
  store i64 %add196.i.428, i64* %arrayidx5.i.1101, align 8, !tbaa !6
  %and198.i.429 = and i64 %add190.i.425, 288230376151711743
  store i64 %and198.i.429, i64* %arraydecay24, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay24, i64* %in)
  call fastcc void @felem_reduce(i64* %out, i128* %arraydecay)
  call void @llvm.lifetime.end(i64 144, i8* %4) #1
  call void @llvm.lifetime.end(i64 72, i8* %3) #1
  call void @llvm.lifetime.end(i64 72, i8* %2) #1
  call void @llvm.lifetime.end(i64 72, i8* %1) #1
  call void @llvm.lifetime.end(i64 72, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @felem_square(i128* nocapture %out, i64* %in) #0 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !6
  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %mul3.i = shl i64 %1, 1
  %arrayidx5.i = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !6
  %mul6.i = shl i64 %2, 1
  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %mul9.i = shl i64 %3, 1
  %arrayidx11.i = getelementptr inbounds i64, i64* %in, i64 4
  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %mul12.i = shl i64 %4, 1
  %arrayidx14.i = getelementptr inbounds i64, i64* %in, i64 5
  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %mul15.i = shl i64 %5, 1
  %arrayidx17.i = getelementptr inbounds i64, i64* %in, i64 6
  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !6
  %mul18.i = shl i64 %6, 1
  %arrayidx20.i = getelementptr inbounds i64, i64* %in, i64 7
  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !6
  %mul21.i = shl i64 %7, 1
  %arrayidx23.i = getelementptr inbounds i64, i64* %in, i64 8
  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !6
  %mul24.i = shl i64 %8, 1
  %mul15.i.357 = shl i64 %5, 2
  %mul18.i.360 = shl i64 %6, 2
  %mul21.i.363 = shl i64 %7, 2
  %mul24.i.366 = shl i64 %8, 2
  %conv = zext i64 %0 to i128
  %mul = mul nuw i128 %conv, %conv
  %conv8 = zext i64 %mul3.i to i128
  %mul9 = mul nuw i128 %conv, %conv8
  %arrayidx10 = getelementptr inbounds i128, i128* %out, i64 1
  %conv14 = zext i64 %mul6.i to i128
  %mul15 = mul nuw i128 %conv, %conv14
  %conv17 = zext i64 %1 to i128
  %mul20 = mul nuw i128 %conv17, %conv17
  %add = add i128 %mul20, %mul15
  %arrayidx21 = getelementptr inbounds i128, i128* %out, i64 2
  %conv25 = zext i64 %mul9.i to i128
  %mul26 = mul nuw i128 %conv, %conv25
  %mul31 = mul nuw i128 %conv17, %conv14
  %add32 = add i128 %mul31, %mul26
  %arrayidx33 = getelementptr inbounds i128, i128* %out, i64 3
  %conv37 = zext i64 %mul12.i to i128
  %mul38 = mul nuw i128 %conv, %conv37
  %mul43 = mul nuw i128 %conv17, %conv25
  %add44 = add i128 %mul43, %mul38
  %conv46 = zext i64 %2 to i128
  %mul49 = mul nuw i128 %conv46, %conv46
  %add50 = add i128 %add44, %mul49
  %arrayidx51 = getelementptr inbounds i128, i128* %out, i64 4
  %conv55 = zext i64 %mul15.i to i128
  %mul56 = mul nuw i128 %conv, %conv55
  %mul61 = mul nuw i128 %conv17, %conv37
  %add62 = add i128 %mul61, %mul56
  %mul67 = mul nuw i128 %conv46, %conv25
  %add68 = add i128 %add62, %mul67
  %arrayidx69 = getelementptr inbounds i128, i128* %out, i64 5
  %conv73 = zext i64 %mul18.i to i128
  %mul74 = mul nuw i128 %conv, %conv73
  %mul79 = mul nuw i128 %conv17, %conv55
  %add80 = add i128 %mul79, %mul74
  %mul85 = mul nuw i128 %conv46, %conv37
  %add86 = add i128 %add80, %mul85
  %conv88 = zext i64 %3 to i128
  %mul91 = mul nuw i128 %conv88, %conv88
  %add92 = add i128 %add86, %mul91
  %arrayidx93 = getelementptr inbounds i128, i128* %out, i64 6
  %conv97 = zext i64 %mul21.i to i128
  %mul98 = mul nuw i128 %conv, %conv97
  %mul103 = mul nuw i128 %conv17, %conv73
  %add104 = add i128 %mul103, %mul98
  %mul109 = mul nuw i128 %conv46, %conv55
  %add110 = add i128 %add104, %mul109
  %mul115 = mul nuw i128 %conv88, %conv37
  %add116 = add i128 %add110, %mul115
  %arrayidx117 = getelementptr inbounds i128, i128* %out, i64 7
  %conv121 = zext i64 %mul24.i to i128
  %mul122 = mul nuw i128 %conv, %conv121
  %mul127 = mul nuw i128 %conv17, %conv97
  %add128 = add i128 %mul127, %mul122
  %mul133 = mul nuw i128 %conv46, %conv73
  %add134 = add i128 %add128, %mul133
  %mul139 = mul nuw i128 %conv88, %conv55
  %add140 = add i128 %add134, %mul139
  %conv142 = zext i64 %4 to i128
  %mul145 = mul nuw i128 %conv142, %conv142
  %add146 = add i128 %add140, %mul145
  %arrayidx147 = getelementptr inbounds i128, i128* %out, i64 8
  store i128 %add146, i128* %arrayidx147, align 16, !tbaa !2
  %conv151 = zext i64 %mul24.i.366 to i128
  %mul152 = mul nuw i128 %conv17, %conv151
  %conv156 = zext i64 %mul21.i.363 to i128
  %mul157 = mul nuw i128 %conv46, %conv156
  %add158 = add i128 %mul157, %mul152
  %conv162 = zext i64 %mul18.i.360 to i128
  %mul163 = mul nuw i128 %conv88, %conv162
  %add164 = add i128 %add158, %mul163
  %conv168 = zext i64 %mul15.i.357 to i128
  %mul169 = mul nuw i128 %conv142, %conv168
  %add170 = add i128 %add164, %mul
  %add172 = add i128 %add170, %mul169
  store i128 %add172, i128* %out, align 16, !tbaa !2
  %9 = load i64, i64* %arrayidx5.i, align 8, !tbaa !6
  %conv174 = zext i64 %9 to i128
  %mul177 = mul nuw i128 %conv174, %conv151
  %10 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %conv179 = zext i64 %10 to i128
  %mul182 = mul nuw i128 %conv179, %conv156
  %add183 = add i128 %mul182, %mul177
  %11 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %conv185 = zext i64 %11 to i128
  %mul188 = mul nuw i128 %conv185, %conv162
  %add189 = add i128 %add183, %mul188
  %12 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %conv191 = zext i64 %12 to i128
  %mul194 = mul nuw i128 %conv191, %conv55
  %add195 = add i128 %add189, %mul9
  %add197 = add i128 %add195, %mul194
  store i128 %add197, i128* %arrayidx10, align 16, !tbaa !2
  %mul202 = mul nuw i128 %conv179, %conv151
  %mul207 = mul nuw i128 %conv185, %conv156
  %add208 = add i128 %mul207, %mul202
  %mul213 = mul nuw i128 %conv191, %conv162
  %add214 = add i128 %add208, %add
  %add216 = add i128 %add214, %mul213
  store i128 %add216, i128* %arrayidx21, align 16, !tbaa !2
  %mul221 = mul nuw i128 %conv185, %conv151
  %mul226 = mul nuw i128 %conv191, %conv156
  %add227 = add i128 %mul226, %mul221
  %13 = load i64, i64* %arrayidx17.i, align 8, !tbaa !6
  %conv229 = zext i64 %13 to i128
  %mul232 = mul nuw i128 %conv229, %conv73
  %add233 = add i128 %add227, %add32
  %add235 = add i128 %add233, %mul232
  store i128 %add235, i128* %arrayidx33, align 16, !tbaa !2
  %mul240 = mul nuw i128 %conv191, %conv151
  %mul245 = mul nuw i128 %conv229, %conv156
  %add246 = add i128 %add50, %mul240
  %add248 = add i128 %add246, %mul245
  store i128 %add248, i128* %arrayidx51, align 16, !tbaa !2
  %mul253 = mul nuw i128 %conv229, %conv151
  %14 = load i64, i64* %arrayidx20.i, align 8, !tbaa !6
  %conv255 = zext i64 %14 to i128
  %mul258 = mul nuw i128 %conv255, %conv97
  %add259 = add i128 %add68, %mul253
  %add261 = add i128 %add259, %mul258
  store i128 %add261, i128* %arrayidx69, align 16, !tbaa !2
  %mul266 = mul nuw i128 %conv255, %conv151
  %add268 = add i128 %mul266, %add92
  store i128 %add268, i128* %arrayidx93, align 16, !tbaa !2
  %15 = load i64, i64* %arrayidx23.i, align 8, !tbaa !6
  %conv270 = zext i64 %15 to i128
  %mul273 = mul nuw i128 %conv270, %conv121
  %add275 = add i128 %mul273, %add116
  store i128 %add275, i128* %arrayidx117, align 16, !tbaa !2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @felem_reduce(i64* nocapture %out, i128* nocapture readonly %in) #0 {
entry:
  %0 = load i128, i128* %in, align 16, !tbaa !2
  %conv = trunc i128 %0 to i64
  %and = and i64 %conv, 288230376151711743
  store i64 %and, i64* %out, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds i128, i128* %in, i64 1
  %1 = load i128, i128* %arrayidx2, align 16, !tbaa !2
  %conv3 = trunc i128 %1 to i64
  %and4 = and i64 %conv3, 288230376151711743
  %arrayidx5 = getelementptr inbounds i64, i64* %out, i64 1
  %arrayidx6 = getelementptr inbounds i128, i128* %in, i64 2
  %2 = load i128, i128* %arrayidx6, align 16, !tbaa !2
  %conv7 = trunc i128 %2 to i64
  %and8 = and i64 %conv7, 288230376151711743
  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 2
  %arrayidx10 = getelementptr inbounds i128, i128* %in, i64 3
  %3 = load i128, i128* %arrayidx10, align 16, !tbaa !2
  %conv11 = trunc i128 %3 to i64
  %and12 = and i64 %conv11, 288230376151711743
  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 3
  %arrayidx14 = getelementptr inbounds i128, i128* %in, i64 4
  %4 = load i128, i128* %arrayidx14, align 16, !tbaa !2
  %conv15 = trunc i128 %4 to i64
  %and16 = and i64 %conv15, 288230376151711743
  %arrayidx17 = getelementptr inbounds i64, i64* %out, i64 4
  %arrayidx18 = getelementptr inbounds i128, i128* %in, i64 5
  %5 = load i128, i128* %arrayidx18, align 16, !tbaa !2
  %conv19 = trunc i128 %5 to i64
  %and20 = and i64 %conv19, 288230376151711743
  %arrayidx21 = getelementptr inbounds i64, i64* %out, i64 5
  %arrayidx22 = getelementptr inbounds i128, i128* %in, i64 6
  %6 = load i128, i128* %arrayidx22, align 16, !tbaa !2
  %conv23 = trunc i128 %6 to i64
  %and24 = and i64 %conv23, 288230376151711743
  %arrayidx25 = getelementptr inbounds i64, i64* %out, i64 6
  %arrayidx26 = getelementptr inbounds i128, i128* %in, i64 7
  %7 = load i128, i128* %arrayidx26, align 16, !tbaa !2
  %conv27 = trunc i128 %7 to i64
  %and28 = and i64 %conv27, 288230376151711743
  %arrayidx29 = getelementptr inbounds i64, i64* %out, i64 7
  %arrayidx30 = getelementptr inbounds i128, i128* %in, i64 8
  %8 = load i128, i128* %arrayidx30, align 16, !tbaa !2
  %conv31 = trunc i128 %8 to i64
  %and32 = and i64 %conv31, 288230376151711743
  %arrayidx33 = getelementptr inbounds i64, i64* %out, i64 8
  %shr = lshr i64 %conv, 58
  %add = add nuw nsw i64 %shr, %and4
  %9 = lshr i128 %0, 58
  %and40 = trunc i128 %9 to i64
  %shl = and i64 %and40, 288230376151711680
  %add42 = add nuw nsw i64 %shl, %add
  store i64 %add42, i64* %arrayidx5, align 8, !tbaa !6
  %shr44 = lshr i128 %0, 116
  %shr46 = trunc i128 %shr44 to i64
  %add48 = add nuw nsw i64 %shr46, %and8
  %shr51 = lshr i64 %conv3, 58
  %add53 = add nuw nsw i64 %shr51, %add48
  %10 = lshr i128 %1, 58
  %and57 = trunc i128 %10 to i64
  %shl58 = and i64 %and57, 288230376151711680
  %add60 = add nuw nsw i64 %shl58, %add53
  store i64 %add60, i64* %arrayidx9, align 8, !tbaa !6
  %shr62 = lshr i128 %1, 116
  %shr64 = trunc i128 %shr62 to i64
  %add66 = add nuw nsw i64 %shr64, %and12
  %shr69 = lshr i64 %conv7, 58
  %add71 = add nuw nsw i64 %shr69, %add66
  %11 = lshr i128 %2, 58
  %and75 = trunc i128 %11 to i64
  %shl76 = and i64 %and75, 288230376151711680
  %add78 = add nuw nsw i64 %shl76, %add71
  store i64 %add78, i64* %arrayidx13, align 8, !tbaa !6
  %shr80 = lshr i128 %2, 116
  %shr82 = trunc i128 %shr80 to i64
  %add84 = add nuw nsw i64 %shr82, %and16
  %shr87 = lshr i64 %conv11, 58
  %add89 = add nuw nsw i64 %shr87, %add84
  %12 = lshr i128 %3, 58
  %and93 = trunc i128 %12 to i64
  %shl94 = and i64 %and93, 288230376151711680
  %add96 = add nuw nsw i64 %shl94, %add89
  store i64 %add96, i64* %arrayidx17, align 8, !tbaa !6
  %shr98 = lshr i128 %3, 116
  %shr100 = trunc i128 %shr98 to i64
  %add102 = add nuw nsw i64 %shr100, %and20
  %shr105 = lshr i64 %conv15, 58
  %add107 = add nuw nsw i64 %shr105, %add102
  %13 = lshr i128 %4, 58
  %and111 = trunc i128 %13 to i64
  %shl112 = and i64 %and111, 288230376151711680
  %add114 = add nuw nsw i64 %shl112, %add107
  store i64 %add114, i64* %arrayidx21, align 8, !tbaa !6
  %shr116 = lshr i128 %4, 116
  %shr118 = trunc i128 %shr116 to i64
  %add120 = add nuw nsw i64 %shr118, %and24
  %shr123 = lshr i64 %conv19, 58
  %add125 = add nuw nsw i64 %shr123, %add120
  %14 = lshr i128 %5, 58
  %and129 = trunc i128 %14 to i64
  %shl130 = and i64 %and129, 288230376151711680
  %add132 = add nuw nsw i64 %shl130, %add125
  store i64 %add132, i64* %arrayidx25, align 8, !tbaa !6
  %shr134 = lshr i128 %5, 116
  %shr136 = trunc i128 %shr134 to i64
  %add138 = add nuw nsw i64 %shr136, %and28
  %shr141 = lshr i64 %conv23, 58
  %add143 = add nuw nsw i64 %shr141, %add138
  %15 = lshr i128 %6, 58
  %and147 = trunc i128 %15 to i64
  %shl148 = and i64 %and147, 288230376151711680
  %add150 = add nuw nsw i64 %shl148, %add143
  store i64 %add150, i64* %arrayidx29, align 8, !tbaa !6
  %shr152 = lshr i128 %6, 116
  %shr154 = trunc i128 %shr152 to i64
  %add156 = add nuw nsw i64 %shr154, %and32
  %shr159 = lshr i64 %conv27, 58
  %add161 = add nuw nsw i64 %shr159, %add156
  %16 = lshr i128 %7, 58
  %and165 = trunc i128 %16 to i64
  %shl166 = and i64 %and165, 288230376151711680
  %add168 = add nuw nsw i64 %shl166, %add161
  store i64 %add168, i64* %arrayidx33, align 8, !tbaa !6
  %17 = load i128, i128* %arrayidx26, align 16, !tbaa !2
  %shr170 = lshr i128 %17, 116
  %shr172 = trunc i128 %shr170 to i64
  %18 = load i128, i128* %arrayidx30, align 16, !tbaa !2
  %conv174 = trunc i128 %18 to i64
  %shr175 = lshr i64 %conv174, 58
  %add176 = add nuw nsw i64 %shr175, %shr172
  %19 = lshr i128 %18, 58
  %and180 = trunc i128 %19 to i64
  %shl181 = and i64 %and180, 288230376151711680
  %add182 = add nuw nsw i64 %add176, %shl181
  %shl187 = shl nuw nsw i64 %add182, 1
  %20 = lshr i128 %18, 115
  %.tr = trunc i128 %20 to i64
  %shl188 = and i64 %.tr, 8190
  %21 = load i64, i64* %out, align 8, !tbaa !6
  %add190 = add i64 %shl187, %21
  %22 = load i64, i64* %arrayidx5, align 8, !tbaa !6
  %add192 = add i64 %shl188, %22
  %shr194 = lshr i64 %add190, 58
  %add196 = add i64 %add192, %shr194
  store i64 %add196, i64* %arrayidx5, align 8, !tbaa !6
  %and198 = and i64 %add190, 288230376151711743
  store i64 %and198, i64* %out, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @felem_mul(i128* nocapture %out, i64* nocapture readonly %in1, i64* %in2) #0 {
entry:
  %0 = load i64, i64* %in2, align 8, !tbaa !6
  %arrayidx2.i = getelementptr inbounds i64, i64* %in2, i64 1
  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %mul3.i = shl i64 %1, 1
  %arrayidx5.i = getelementptr inbounds i64, i64* %in2, i64 2
  %2 = load i64, i64* %arrayidx5.i, align 8, !tbaa !6
  %mul6.i = shl i64 %2, 1
  %arrayidx8.i = getelementptr inbounds i64, i64* %in2, i64 3
  %3 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %mul9.i = shl i64 %3, 1
  %arrayidx11.i = getelementptr inbounds i64, i64* %in2, i64 4
  %4 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %mul12.i = shl i64 %4, 1
  %arrayidx14.i = getelementptr inbounds i64, i64* %in2, i64 5
  %5 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %mul15.i = shl i64 %5, 1
  %arrayidx17.i = getelementptr inbounds i64, i64* %in2, i64 6
  %6 = load i64, i64* %arrayidx17.i, align 8, !tbaa !6
  %mul18.i = shl i64 %6, 1
  %arrayidx20.i = getelementptr inbounds i64, i64* %in2, i64 7
  %7 = load i64, i64* %arrayidx20.i, align 8, !tbaa !6
  %mul21.i = shl i64 %7, 1
  %arrayidx23.i = getelementptr inbounds i64, i64* %in2, i64 8
  %8 = load i64, i64* %arrayidx23.i, align 8, !tbaa !6
  %mul24.i = shl i64 %8, 1
  %9 = load i64, i64* %in1, align 8, !tbaa !6
  %conv = zext i64 %9 to i128
  %conv2 = zext i64 %0 to i128
  %mul = mul nuw i128 %conv, %conv2
  store i128 %mul, i128* %out, align 16, !tbaa !2
  %conv7 = zext i64 %1 to i128
  %mul8 = mul nuw i128 %conv7, %conv
  %arrayidx9 = getelementptr inbounds i64, i64* %in1, i64 1
  %10 = load i64, i64* %arrayidx9, align 8, !tbaa !6
  %conv10 = zext i64 %10 to i128
  %mul13 = mul nuw i128 %conv2, %conv10
  %add = add i128 %mul13, %mul8
  %arrayidx14 = getelementptr inbounds i128, i128* %out, i64 1
  store i128 %add, i128* %arrayidx14, align 16, !tbaa !2
  %conv18 = zext i64 %2 to i128
  %mul19 = mul nuw i128 %conv18, %conv
  %mul24 = mul nuw i128 %conv7, %conv10
  %add25 = add i128 %mul24, %mul19
  %arrayidx26 = getelementptr inbounds i64, i64* %in1, i64 2
  %11 = load i64, i64* %arrayidx26, align 8, !tbaa !6
  %conv27 = zext i64 %11 to i128
  %mul30 = mul nuw i128 %conv2, %conv27
  %add31 = add i128 %add25, %mul30
  %arrayidx32 = getelementptr inbounds i128, i128* %out, i64 2
  store i128 %add31, i128* %arrayidx32, align 16, !tbaa !2
  %conv36 = zext i64 %3 to i128
  %mul37 = mul nuw i128 %conv36, %conv
  %mul42 = mul nuw i128 %conv18, %conv10
  %add43 = add i128 %mul42, %mul37
  %mul48 = mul nuw i128 %conv7, %conv27
  %add49 = add i128 %add43, %mul48
  %arrayidx50 = getelementptr inbounds i64, i64* %in1, i64 3
  %12 = load i64, i64* %arrayidx50, align 8, !tbaa !6
  %conv51 = zext i64 %12 to i128
  %mul54 = mul nuw i128 %conv2, %conv51
  %add55 = add i128 %add49, %mul54
  %arrayidx56 = getelementptr inbounds i128, i128* %out, i64 3
  store i128 %add55, i128* %arrayidx56, align 16, !tbaa !2
  %conv60 = zext i64 %4 to i128
  %mul61 = mul nuw i128 %conv60, %conv
  %mul66 = mul nuw i128 %conv36, %conv10
  %add67 = add i128 %mul66, %mul61
  %mul72 = mul nuw i128 %conv18, %conv27
  %add73 = add i128 %add67, %mul72
  %mul78 = mul nuw i128 %conv7, %conv51
  %add79 = add i128 %add73, %mul78
  %arrayidx80 = getelementptr inbounds i64, i64* %in1, i64 4
  %13 = load i64, i64* %arrayidx80, align 8, !tbaa !6
  %conv81 = zext i64 %13 to i128
  %mul84 = mul nuw i128 %conv2, %conv81
  %add85 = add i128 %add79, %mul84
  %arrayidx86 = getelementptr inbounds i128, i128* %out, i64 4
  store i128 %add85, i128* %arrayidx86, align 16, !tbaa !2
  %conv90 = zext i64 %5 to i128
  %mul91 = mul nuw i128 %conv90, %conv
  %mul96 = mul nuw i128 %conv60, %conv10
  %add97 = add i128 %mul96, %mul91
  %mul102 = mul nuw i128 %conv36, %conv27
  %add103 = add i128 %add97, %mul102
  %mul108 = mul nuw i128 %conv18, %conv51
  %add109 = add i128 %add103, %mul108
  %mul114 = mul nuw i128 %conv7, %conv81
  %add115 = add i128 %add109, %mul114
  %arrayidx116 = getelementptr inbounds i64, i64* %in1, i64 5
  %14 = load i64, i64* %arrayidx116, align 8, !tbaa !6
  %conv117 = zext i64 %14 to i128
  %mul120 = mul nuw i128 %conv2, %conv117
  %add121 = add i128 %add115, %mul120
  %arrayidx122 = getelementptr inbounds i128, i128* %out, i64 5
  store i128 %add121, i128* %arrayidx122, align 16, !tbaa !2
  %conv126 = zext i64 %6 to i128
  %mul127 = mul nuw i128 %conv126, %conv
  %mul132 = mul nuw i128 %conv90, %conv10
  %add133 = add i128 %mul132, %mul127
  %mul138 = mul nuw i128 %conv60, %conv27
  %add139 = add i128 %add133, %mul138
  %mul144 = mul nuw i128 %conv36, %conv51
  %add145 = add i128 %add139, %mul144
  %mul150 = mul nuw i128 %conv18, %conv81
  %add151 = add i128 %add145, %mul150
  %15 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %conv155 = zext i64 %15 to i128
  %mul156 = mul nuw i128 %conv155, %conv117
  %add157 = add i128 %add151, %mul156
  %arrayidx158 = getelementptr inbounds i64, i64* %in1, i64 6
  %16 = load i64, i64* %arrayidx158, align 8, !tbaa !6
  %conv159 = zext i64 %16 to i128
  %17 = load i64, i64* %in2, align 8, !tbaa !6
  %conv161 = zext i64 %17 to i128
  %mul162 = mul nuw i128 %conv161, %conv159
  %add163 = add i128 %add157, %mul162
  %arrayidx164 = getelementptr inbounds i128, i128* %out, i64 6
  store i128 %add163, i128* %arrayidx164, align 16, !tbaa !2
  %conv168 = zext i64 %7 to i128
  %mul169 = mul nuw i128 %conv168, %conv
  %18 = load i64, i64* %arrayidx17.i, align 8, !tbaa !6
  %conv173 = zext i64 %18 to i128
  %mul174 = mul nuw i128 %conv173, %conv10
  %add175 = add i128 %mul174, %mul169
  %19 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %conv179 = zext i64 %19 to i128
  %mul180 = mul nuw i128 %conv179, %conv27
  %add181 = add i128 %add175, %mul180
  %20 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %conv185 = zext i64 %20 to i128
  %mul186 = mul nuw i128 %conv185, %conv51
  %add187 = add i128 %add181, %mul186
  %21 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %conv191 = zext i64 %21 to i128
  %mul192 = mul nuw i128 %conv191, %conv81
  %add193 = add i128 %add187, %mul192
  %22 = load i64, i64* %arrayidx5.i, align 8, !tbaa !6
  %conv197 = zext i64 %22 to i128
  %mul198 = mul nuw i128 %conv197, %conv117
  %add199 = add i128 %add193, %mul198
  %mul204 = mul nuw i128 %conv155, %conv159
  %add205 = add i128 %add199, %mul204
  %arrayidx206 = getelementptr inbounds i64, i64* %in1, i64 7
  %23 = load i64, i64* %arrayidx206, align 8, !tbaa !6
  %conv207 = zext i64 %23 to i128
  %mul210 = mul nuw i128 %conv161, %conv207
  %add211 = add i128 %add205, %mul210
  %arrayidx212 = getelementptr inbounds i128, i128* %out, i64 7
  store i128 %add211, i128* %arrayidx212, align 16, !tbaa !2
  %24 = load i64, i64* %in1, align 8, !tbaa !6
  %conv214 = zext i64 %24 to i128
  %25 = load i64, i64* %arrayidx23.i, align 8, !tbaa !6
  %conv216 = zext i64 %25 to i128
  %mul217 = mul nuw i128 %conv216, %conv214
  %26 = load i64, i64* %arrayidx9, align 8, !tbaa !6
  %conv219 = zext i64 %26 to i128
  %27 = load i64, i64* %arrayidx20.i, align 8, !tbaa !6
  %conv221 = zext i64 %27 to i128
  %mul222 = mul nuw i128 %conv221, %conv219
  %add223 = add i128 %mul222, %mul217
  %28 = load i64, i64* %arrayidx26, align 8, !tbaa !6
  %conv225 = zext i64 %28 to i128
  %mul228 = mul nuw i128 %conv173, %conv225
  %add229 = add i128 %add223, %mul228
  %29 = load i64, i64* %arrayidx50, align 8, !tbaa !6
  %conv231 = zext i64 %29 to i128
  %mul234 = mul nuw i128 %conv179, %conv231
  %add235 = add i128 %add229, %mul234
  %mul240 = mul nuw i128 %conv185, %conv81
  %add241 = add i128 %add235, %mul240
  %mul246 = mul nuw i128 %conv191, %conv117
  %add247 = add i128 %add241, %mul246
  %mul252 = mul nuw i128 %conv197, %conv159
  %add253 = add i128 %add247, %mul252
  %mul258 = mul nuw i128 %conv155, %conv207
  %add259 = add i128 %add253, %mul258
  %arrayidx260 = getelementptr inbounds i64, i64* %in1, i64 8
  %30 = load i64, i64* %arrayidx260, align 8, !tbaa !6
  %conv261 = zext i64 %30 to i128
  %mul264 = mul nuw i128 %conv161, %conv261
  %add265 = add i128 %add259, %mul264
  %arrayidx266 = getelementptr inbounds i128, i128* %out, i64 8
  store i128 %add265, i128* %arrayidx266, align 16, !tbaa !2
  %conv270 = zext i64 %mul24.i to i128
  %mul271 = mul nuw i128 %conv219, %conv270
  %conv275 = zext i64 %mul21.i to i128
  %mul276 = mul nuw i128 %conv225, %conv275
  %add277 = add i128 %mul276, %mul271
  %conv281 = zext i64 %mul18.i to i128
  %mul282 = mul nuw i128 %conv231, %conv281
  %add283 = add i128 %add277, %mul282
  %31 = load i64, i64* %arrayidx80, align 8, !tbaa !6
  %conv285 = zext i64 %31 to i128
  %conv287 = zext i64 %mul15.i to i128
  %mul288 = mul nuw i128 %conv285, %conv287
  %add289 = add i128 %add283, %mul288
  %32 = load i64, i64* %arrayidx116, align 8, !tbaa !6
  %conv291 = zext i64 %32 to i128
  %conv293 = zext i64 %mul12.i to i128
  %mul294 = mul nuw i128 %conv291, %conv293
  %add295 = add i128 %add289, %mul294
  %conv299 = zext i64 %mul9.i to i128
  %mul300 = mul nuw i128 %conv159, %conv299
  %add301 = add i128 %add295, %mul300
  %conv305 = zext i64 %mul6.i to i128
  %mul306 = mul nuw i128 %conv207, %conv305
  %add307 = add i128 %add301, %mul306
  %conv311 = zext i64 %mul3.i to i128
  %mul312 = mul nuw i128 %conv261, %conv311
  %33 = load i128, i128* %out, align 16, !tbaa !2
  %add313 = add i128 %add307, %33
  %add315 = add i128 %add313, %mul312
  store i128 %add315, i128* %out, align 16, !tbaa !2
  %mul320 = mul nuw i128 %conv225, %conv270
  %mul325 = mul nuw i128 %conv231, %conv275
  %add326 = add i128 %mul325, %mul320
  %mul331 = mul nuw i128 %conv285, %conv281
  %add332 = add i128 %add326, %mul331
  %mul337 = mul nuw i128 %conv291, %conv287
  %add338 = add i128 %add332, %mul337
  %34 = load i64, i64* %arrayidx158, align 8, !tbaa !6
  %conv340 = zext i64 %34 to i128
  %mul343 = mul nuw i128 %conv340, %conv293
  %add344 = add i128 %add338, %mul343
  %mul349 = mul nuw i128 %conv207, %conv299
  %add350 = add i128 %add344, %mul349
  %mul355 = mul nuw i128 %conv261, %conv305
  %35 = load i128, i128* %arrayidx14, align 16, !tbaa !2
  %add356 = add i128 %add350, %35
  %add358 = add i128 %add356, %mul355
  store i128 %add358, i128* %arrayidx14, align 16, !tbaa !2
  %mul363 = mul nuw i128 %conv231, %conv270
  %mul368 = mul nuw i128 %conv285, %conv275
  %add369 = add i128 %mul368, %mul363
  %mul374 = mul nuw i128 %conv291, %conv281
  %add375 = add i128 %add369, %mul374
  %mul380 = mul nuw i128 %conv340, %conv287
  %add381 = add i128 %add375, %mul380
  %mul386 = mul nuw i128 %conv207, %conv293
  %add387 = add i128 %add381, %mul386
  %mul392 = mul nuw i128 %conv261, %conv299
  %36 = load i128, i128* %arrayidx32, align 16, !tbaa !2
  %add393 = add i128 %add387, %36
  %add395 = add i128 %add393, %mul392
  store i128 %add395, i128* %arrayidx32, align 16, !tbaa !2
  %mul400 = mul nuw i128 %conv285, %conv270
  %mul405 = mul nuw i128 %conv291, %conv275
  %add406 = add i128 %mul405, %mul400
  %mul411 = mul nuw i128 %conv340, %conv281
  %add412 = add i128 %add406, %mul411
  %37 = load i64, i64* %arrayidx206, align 8, !tbaa !6
  %conv414 = zext i64 %37 to i128
  %mul417 = mul nuw i128 %conv414, %conv287
  %add418 = add i128 %add412, %mul417
  %mul423 = mul nuw i128 %conv261, %conv293
  %38 = load i128, i128* %arrayidx56, align 16, !tbaa !2
  %add424 = add i128 %add418, %38
  %add426 = add i128 %add424, %mul423
  store i128 %add426, i128* %arrayidx56, align 16, !tbaa !2
  %mul431 = mul nuw i128 %conv291, %conv270
  %mul436 = mul nuw i128 %conv340, %conv275
  %add437 = add i128 %mul436, %mul431
  %mul442 = mul nuw i128 %conv414, %conv281
  %add443 = add i128 %add437, %mul442
  %mul448 = mul nuw i128 %conv261, %conv287
  %39 = load i128, i128* %arrayidx86, align 16, !tbaa !2
  %add449 = add i128 %add443, %39
  %add451 = add i128 %add449, %mul448
  store i128 %add451, i128* %arrayidx86, align 16, !tbaa !2
  %mul456 = mul nuw i128 %conv340, %conv270
  %mul461 = mul nuw i128 %conv414, %conv275
  %add462 = add i128 %mul461, %mul456
  %mul467 = mul nuw i128 %conv261, %conv281
  %40 = load i128, i128* %arrayidx122, align 16, !tbaa !2
  %add468 = add i128 %add462, %40
  %add470 = add i128 %add468, %mul467
  store i128 %add470, i128* %arrayidx122, align 16, !tbaa !2
  %mul475 = mul nuw i128 %conv414, %conv270
  %41 = load i64, i64* %arrayidx260, align 8, !tbaa !6
  %conv477 = zext i64 %41 to i128
  %mul480 = mul nuw i128 %conv477, %conv275
  %42 = load i128, i128* %arrayidx164, align 16, !tbaa !2
  %add481 = add i128 %42, %mul475
  %add483 = add i128 %add481, %mul480
  store i128 %add483, i128* %arrayidx164, align 16, !tbaa !2
  %mul488 = mul nuw i128 %conv477, %conv270
  %43 = load i128, i128* %arrayidx212, align 16, !tbaa !2
  %add490 = add i128 %mul488, %43
  store i128 %add490, i128* %arrayidx212, align 16, !tbaa !2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @felem_assign(i64* nocapture %out, i64* nocapture readonly %in) #0 {
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
  %arrayidx8 = getelementptr inbounds i64, i64* %in, i64 4
  %4 = load i64, i64* %arrayidx8, align 8, !tbaa !6
  %arrayidx9 = getelementptr inbounds i64, i64* %out, i64 4
  store i64 %4, i64* %arrayidx9, align 8, !tbaa !6
  %arrayidx10 = getelementptr inbounds i64, i64* %in, i64 5
  %5 = load i64, i64* %arrayidx10, align 8, !tbaa !6
  %arrayidx11 = getelementptr inbounds i64, i64* %out, i64 5
  store i64 %5, i64* %arrayidx11, align 8, !tbaa !6
  %arrayidx12 = getelementptr inbounds i64, i64* %in, i64 6
  %6 = load i64, i64* %arrayidx12, align 8, !tbaa !6
  %arrayidx13 = getelementptr inbounds i64, i64* %out, i64 6
  store i64 %6, i64* %arrayidx13, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds i64, i64* %in, i64 7
  %7 = load i64, i64* %arrayidx14, align 8, !tbaa !6
  %arrayidx15 = getelementptr inbounds i64, i64* %out, i64 7
  store i64 %7, i64* %arrayidx15, align 8, !tbaa !6
  %arrayidx16 = getelementptr inbounds i64, i64* %in, i64 8
  %8 = load i64, i64* %arrayidx16, align 8, !tbaa !6
  %arrayidx17 = getelementptr inbounds i64, i64* %out, i64 8
  store i64 %8, i64* %arrayidx17, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone uwtable
define %struct.ec_method_st* @EC_GFp_nistp521_method() #2 {
entry:
  ret %struct.ec_method_st* @EC_GFp_nistp521_method.ret
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp521_group_init(%struct.ec_group_st* %group) #0 {
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
define i32 @ec_GFp_nistp521_group_set_curve(%struct.ec_group_st* %group, %struct.bignum_st* %p, %struct.bignum_st* %a, %struct.bignum_st* %b, %struct.bignum_ctx* %ctx) #0 {
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
  %call10 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [66 x i8]], [5 x [66 x i8]]* @nistp521_curve_params, i64 0, i64 0, i64 0), i32 66, %struct.bignum_st* %call4) #1
  %call11 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [66 x i8]], [5 x [66 x i8]]* @nistp521_curve_params, i64 0, i64 1, i64 0), i32 66, %struct.bignum_st* %call5) #1
  %call12 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [66 x i8]], [5 x [66 x i8]]* @nistp521_curve_params, i64 0, i64 2, i64 0), i32 66, %struct.bignum_st* %call6) #1
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
  tail call void @ERR_put_error(i32 16, i32 233, i32 145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1757) #1
  br label %err

if.end.20:                                        ; preds = %lor.lhs.false.16
  %field_mod_func = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 16
  store i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)* @BN_nist_mod_521, i32 (%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*)** %field_mod_func, align 8, !tbaa !12
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
define i32 @ec_GFp_nistp521_point_get_affine_coordinates(%struct.ec_group_st* %group, %struct.ec_point_st* %point, %struct.bignum_st* %x, %struct.bignum_st* %y, %struct.bignum_ctx* nocapture readnone %ctx) #0 {
entry:
  %b_in.i = alloca [66 x i8], align 16
  %b_out.i = alloca [66 x i8], align 16
  %z1 = alloca [9 x i64], align 16
  %z2 = alloca [9 x i64], align 16
  %x_in = alloca [9 x i64], align 16
  %y_in = alloca [9 x i64], align 16
  %x_out = alloca [9 x i64], align 16
  %y_out = alloca [9 x i64], align 16
  %tmp = alloca [9 x i128], align 16
  %0 = bitcast [9 x i64]* %z1 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %1 = bitcast [9 x i64]* %z2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast [9 x i64]* %x_in to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %y_in to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i64]* %x_out to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [9 x i64]* %y_out to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %6) #1
  %call = tail call i32 @EC_POINT_is_at_infinity(%struct.ec_group_st* %group, %struct.ec_point_st* %point) #1
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 235, i32 106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1782) #1
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 0
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call1 = call fastcc i32 @BN_to_felem(i64* %arraydecay, %struct.bignum_st* %7)
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 0
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 3
  %8 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call4 = call fastcc i32 @BN_to_felem(i64* %arraydecay3, %struct.bignum_st* %8)
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %cleanup, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %arraydecay7 = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 0
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %point, i64 0, i32 4
  %9 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call8 = call fastcc i32 @BN_to_felem(i64* %arraydecay7, %struct.bignum_st* %9)
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %cleanup, label %if.end.11

if.end.11:                                        ; preds = %lor.lhs.false.6
  %arraydecay12 = getelementptr inbounds [9 x i64], [9 x i64]* %z2, i64 0, i64 0
  call void @felem_inv(i64* %arraydecay12, i64* %arraydecay7)
  %arraydecay14 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay14, i64* %arraydecay12)
  %10 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %conv.i = trunc i128 %10 to i64
  %and.i = and i64 %conv.i, 288230376151711743
  store i64 %and.i, i64* %arraydecay7, align 16, !tbaa !6
  %arrayidx2.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 1
  %11 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i = trunc i128 %11 to i64
  %and4.i = and i64 %conv3.i, 288230376151711743
  %arrayidx5.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 1
  %arrayidx6.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 2
  %12 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i = trunc i128 %12 to i64
  %and8.i = and i64 %conv7.i, 288230376151711743
  %arrayidx9.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 2
  %arrayidx10.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 3
  %13 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i = trunc i128 %13 to i64
  %and12.i = and i64 %conv11.i, 288230376151711743
  %arrayidx13.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 3
  %arrayidx14.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 4
  %14 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i = trunc i128 %14 to i64
  %and16.i = and i64 %conv15.i, 288230376151711743
  %arrayidx17.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 4
  %arrayidx18.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 5
  %15 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i = trunc i128 %15 to i64
  %and20.i = and i64 %conv19.i, 288230376151711743
  %arrayidx21.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 5
  %arrayidx22.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 6
  %16 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i = trunc i128 %16 to i64
  %and24.i = and i64 %conv23.i, 288230376151711743
  %arrayidx25.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 6
  %arrayidx26.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 7
  %17 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i = trunc i128 %17 to i64
  %and28.i = and i64 %conv27.i, 288230376151711743
  %arrayidx29.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 7
  %arrayidx30.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 8
  %18 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i = trunc i128 %18 to i64
  %and32.i = and i64 %conv31.i, 288230376151711743
  %arrayidx33.i = getelementptr inbounds [9 x i64], [9 x i64]* %z1, i64 0, i64 8
  %shr.i = lshr i64 %conv.i, 58
  %add.i = add nuw nsw i64 %and4.i, %shr.i
  %19 = lshr i128 %10, 58
  %and40.i = trunc i128 %19 to i64
  %shl.i = and i64 %and40.i, 288230376151711680
  %add42.i = add nuw nsw i64 %add.i, %shl.i
  %shr44.i = lshr i128 %10, 116
  %shr46.i = trunc i128 %shr44.i to i64
  %shr51.i = lshr i64 %conv3.i, 58
  %20 = lshr i128 %11, 58
  %and57.i = trunc i128 %20 to i64
  %shl58.i = and i64 %and57.i, 288230376151711680
  %add48.i = add nuw nsw i64 %shr51.i, %shr46.i
  %add53.i = add nuw nsw i64 %add48.i, %and8.i
  %add60.i = add nuw nsw i64 %add53.i, %shl58.i
  store i64 %add60.i, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i = lshr i128 %11, 116
  %shr64.i = trunc i128 %shr62.i to i64
  %shr69.i = lshr i64 %conv7.i, 58
  %21 = lshr i128 %12, 58
  %and75.i = trunc i128 %21 to i64
  %shl76.i = and i64 %and75.i, 288230376151711680
  %add66.i = add nuw nsw i64 %shr69.i, %shr64.i
  %add71.i = add nuw nsw i64 %add66.i, %and12.i
  %add78.i = add nuw nsw i64 %add71.i, %shl76.i
  store i64 %add78.i, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i = lshr i128 %12, 116
  %shr82.i = trunc i128 %shr80.i to i64
  %shr87.i = lshr i64 %conv11.i, 58
  %22 = lshr i128 %13, 58
  %and93.i = trunc i128 %22 to i64
  %shl94.i = and i64 %and93.i, 288230376151711680
  %add84.i = add nuw nsw i64 %shr87.i, %shr82.i
  %add89.i = add nuw nsw i64 %add84.i, %and16.i
  %add96.i = add nuw nsw i64 %add89.i, %shl94.i
  store i64 %add96.i, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i = lshr i128 %13, 116
  %shr100.i = trunc i128 %shr98.i to i64
  %shr105.i = lshr i64 %conv15.i, 58
  %23 = lshr i128 %14, 58
  %and111.i = trunc i128 %23 to i64
  %shl112.i = and i64 %and111.i, 288230376151711680
  %add102.i = add nuw nsw i64 %shr105.i, %shr100.i
  %add107.i = add nuw nsw i64 %add102.i, %and20.i
  %add114.i = add nuw nsw i64 %add107.i, %shl112.i
  store i64 %add114.i, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i = lshr i128 %14, 116
  %shr118.i = trunc i128 %shr116.i to i64
  %shr123.i = lshr i64 %conv19.i, 58
  %24 = lshr i128 %15, 58
  %and129.i = trunc i128 %24 to i64
  %shl130.i = and i64 %and129.i, 288230376151711680
  %add120.i = add nuw nsw i64 %shr123.i, %shr118.i
  %add125.i = add nuw nsw i64 %add120.i, %and24.i
  %add132.i = add nuw nsw i64 %add125.i, %shl130.i
  store i64 %add132.i, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i = lshr i128 %15, 116
  %shr136.i = trunc i128 %shr134.i to i64
  %shr141.i = lshr i64 %conv23.i, 58
  %25 = lshr i128 %16, 58
  %and147.i = trunc i128 %25 to i64
  %shl148.i = and i64 %and147.i, 288230376151711680
  %add138.i = add nuw nsw i64 %shr141.i, %shr136.i
  %add143.i = add nuw nsw i64 %add138.i, %and28.i
  %add150.i = add nuw nsw i64 %add143.i, %shl148.i
  store i64 %add150.i, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i = lshr i128 %16, 116
  %shr154.i = trunc i128 %shr152.i to i64
  %shr159.i = lshr i64 %conv27.i, 58
  %26 = lshr i128 %17, 58
  %and165.i = trunc i128 %26 to i64
  %shl166.i = and i64 %and165.i, 288230376151711680
  %add156.i = add nuw nsw i64 %shr159.i, %shr154.i
  %add161.i = add nuw nsw i64 %add156.i, %and32.i
  %add168.i = add nuw nsw i64 %add161.i, %shl166.i
  store i64 %add168.i, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i = lshr i128 %17, 116
  %shr172.i = trunc i128 %shr170.i to i64
  %shr175.i = lshr i64 %conv31.i, 58
  %add176.i = add nuw nsw i64 %shr175.i, %shr172.i
  %27 = lshr i128 %18, 58
  %and180.i = trunc i128 %27 to i64
  %shl181.i = and i64 %and180.i, 288230376151711680
  %add182.i = add nuw nsw i64 %add176.i, %shl181.i
  %shl187.i = shl nuw nsw i64 %add182.i, 1
  %28 = lshr i128 %18, 115
  %.tr.i = trunc i128 %28 to i64
  %shl188.i = and i64 %.tr.i, 8190
  %29 = load i64, i64* %arraydecay7, align 16, !tbaa !6
  %add190.i = add i64 %shl187.i, %29
  %add192.i = add nuw nsw i64 %shl188.i, %add42.i
  %shr194.i = lshr i64 %add190.i, 58
  %add196.i = add nuw nsw i64 %add192.i, %shr194.i
  store i64 %add196.i, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i = and i64 %add190.i, 288230376151711743
  store i64 %and198.i, i64* %arraydecay7, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay14, i64* %arraydecay, i64* %arraydecay7)
  %30 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %conv.i.63 = trunc i128 %30 to i64
  %and.i.64 = and i64 %conv.i.63, 288230376151711743
  store i64 %and.i.64, i64* %arraydecay, align 16, !tbaa !6
  %31 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.66 = trunc i128 %31 to i64
  %and4.i.67 = and i64 %conv3.i.66, 288230376151711743
  %arrayidx5.i.68 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 1
  %32 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.70 = trunc i128 %32 to i64
  %and8.i.71 = and i64 %conv7.i.70, 288230376151711743
  %arrayidx9.i.72 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 2
  %33 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.74 = trunc i128 %33 to i64
  %and12.i.75 = and i64 %conv11.i.74, 288230376151711743
  %arrayidx13.i.76 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 3
  %34 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.78 = trunc i128 %34 to i64
  %and16.i.79 = and i64 %conv15.i.78, 288230376151711743
  %arrayidx17.i.80 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 4
  %35 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.82 = trunc i128 %35 to i64
  %and20.i.83 = and i64 %conv19.i.82, 288230376151711743
  %arrayidx21.i.84 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 5
  %36 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.86 = trunc i128 %36 to i64
  %and24.i.87 = and i64 %conv23.i.86, 288230376151711743
  %arrayidx25.i.88 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 6
  %37 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.90 = trunc i128 %37 to i64
  %and28.i.91 = and i64 %conv27.i.90, 288230376151711743
  %arrayidx29.i.92 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 7
  %38 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.94 = trunc i128 %38 to i64
  %and32.i.95 = and i64 %conv31.i.94, 288230376151711743
  %arrayidx33.i.96 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 8
  %shr.i.97 = lshr i64 %conv.i.63, 58
  %add.i.98 = add nuw nsw i64 %and4.i.67, %shr.i.97
  %39 = lshr i128 %30, 58
  %and40.i.99 = trunc i128 %39 to i64
  %shl.i.100 = and i64 %and40.i.99, 288230376151711680
  %add42.i.101 = add nuw nsw i64 %add.i.98, %shl.i.100
  %shr44.i.102 = lshr i128 %30, 116
  %shr46.i.103 = trunc i128 %shr44.i.102 to i64
  %shr51.i.105 = lshr i64 %conv3.i.66, 58
  %40 = lshr i128 %31, 58
  %and57.i.107 = trunc i128 %40 to i64
  %shl58.i.108 = and i64 %and57.i.107, 288230376151711680
  %add48.i.104 = add nuw nsw i64 %shr51.i.105, %shr46.i.103
  %add53.i.106 = add nuw nsw i64 %add48.i.104, %and8.i.71
  %add60.i.109 = add nuw nsw i64 %add53.i.106, %shl58.i.108
  store i64 %add60.i.109, i64* %arrayidx9.i.72, align 16, !tbaa !6
  %shr62.i.110 = lshr i128 %31, 116
  %shr64.i.111 = trunc i128 %shr62.i.110 to i64
  %shr69.i.113 = lshr i64 %conv7.i.70, 58
  %41 = lshr i128 %32, 58
  %and75.i.115 = trunc i128 %41 to i64
  %shl76.i.116 = and i64 %and75.i.115, 288230376151711680
  %add66.i.112 = add nuw nsw i64 %shr69.i.113, %shr64.i.111
  %add71.i.114 = add nuw nsw i64 %add66.i.112, %and12.i.75
  %add78.i.117 = add nuw nsw i64 %add71.i.114, %shl76.i.116
  store i64 %add78.i.117, i64* %arrayidx13.i.76, align 8, !tbaa !6
  %shr80.i.118 = lshr i128 %32, 116
  %shr82.i.119 = trunc i128 %shr80.i.118 to i64
  %shr87.i.121 = lshr i64 %conv11.i.74, 58
  %42 = lshr i128 %33, 58
  %and93.i.123 = trunc i128 %42 to i64
  %shl94.i.124 = and i64 %and93.i.123, 288230376151711680
  %add84.i.120 = add nuw nsw i64 %shr87.i.121, %shr82.i.119
  %add89.i.122 = add nuw nsw i64 %add84.i.120, %and16.i.79
  %add96.i.125 = add nuw nsw i64 %add89.i.122, %shl94.i.124
  store i64 %add96.i.125, i64* %arrayidx17.i.80, align 16, !tbaa !6
  %shr98.i.126 = lshr i128 %33, 116
  %shr100.i.127 = trunc i128 %shr98.i.126 to i64
  %shr105.i.129 = lshr i64 %conv15.i.78, 58
  %43 = lshr i128 %34, 58
  %and111.i.131 = trunc i128 %43 to i64
  %shl112.i.132 = and i64 %and111.i.131, 288230376151711680
  %add102.i.128 = add nuw nsw i64 %shr105.i.129, %shr100.i.127
  %add107.i.130 = add nuw nsw i64 %add102.i.128, %and20.i.83
  %add114.i.133 = add nuw nsw i64 %add107.i.130, %shl112.i.132
  store i64 %add114.i.133, i64* %arrayidx21.i.84, align 8, !tbaa !6
  %shr116.i.134 = lshr i128 %34, 116
  %shr118.i.135 = trunc i128 %shr116.i.134 to i64
  %shr123.i.137 = lshr i64 %conv19.i.82, 58
  %44 = lshr i128 %35, 58
  %and129.i.139 = trunc i128 %44 to i64
  %shl130.i.140 = and i64 %and129.i.139, 288230376151711680
  %add120.i.136 = add nuw nsw i64 %shr123.i.137, %shr118.i.135
  %add125.i.138 = add nuw nsw i64 %add120.i.136, %and24.i.87
  %add132.i.141 = add nuw nsw i64 %add125.i.138, %shl130.i.140
  store i64 %add132.i.141, i64* %arrayidx25.i.88, align 16, !tbaa !6
  %shr134.i.142 = lshr i128 %35, 116
  %shr136.i.143 = trunc i128 %shr134.i.142 to i64
  %shr141.i.145 = lshr i64 %conv23.i.86, 58
  %45 = lshr i128 %36, 58
  %and147.i.147 = trunc i128 %45 to i64
  %shl148.i.148 = and i64 %and147.i.147, 288230376151711680
  %add138.i.144 = add nuw nsw i64 %shr141.i.145, %shr136.i.143
  %add143.i.146 = add nuw nsw i64 %add138.i.144, %and28.i.91
  %add150.i.149 = add nuw nsw i64 %add143.i.146, %shl148.i.148
  store i64 %add150.i.149, i64* %arrayidx29.i.92, align 8, !tbaa !6
  %shr152.i.150 = lshr i128 %36, 116
  %shr154.i.151 = trunc i128 %shr152.i.150 to i64
  %shr159.i.153 = lshr i64 %conv27.i.90, 58
  %46 = lshr i128 %37, 58
  %and165.i.155 = trunc i128 %46 to i64
  %shl166.i.156 = and i64 %and165.i.155, 288230376151711680
  %add156.i.152 = add nuw nsw i64 %shr159.i.153, %shr154.i.151
  %add161.i.154 = add nuw nsw i64 %add156.i.152, %and32.i.95
  %add168.i.157 = add nuw nsw i64 %add161.i.154, %shl166.i.156
  store i64 %add168.i.157, i64* %arrayidx33.i.96, align 16, !tbaa !6
  %shr170.i.158 = lshr i128 %37, 116
  %shr172.i.159 = trunc i128 %shr170.i.158 to i64
  %shr175.i.161 = lshr i64 %conv31.i.94, 58
  %add176.i.162 = add nuw nsw i64 %shr175.i.161, %shr172.i.159
  %47 = lshr i128 %38, 58
  %and180.i.163 = trunc i128 %47 to i64
  %shl181.i.164 = and i64 %and180.i.163, 288230376151711680
  %add182.i.165 = add nuw nsw i64 %add176.i.162, %shl181.i.164
  %shl187.i.166 = shl nuw nsw i64 %add182.i.165, 1
  %48 = lshr i128 %38, 115
  %.tr.i.167 = trunc i128 %48 to i64
  %shl188.i.168 = and i64 %.tr.i.167, 8190
  %49 = load i64, i64* %arraydecay, align 16, !tbaa !6
  %add190.i.169 = add i64 %shl187.i.166, %49
  %add192.i.170 = add nuw nsw i64 %shl188.i.168, %add42.i.101
  %shr194.i.171 = lshr i64 %add190.i.169, 58
  %add196.i.172 = add nuw nsw i64 %add192.i.170, %shr194.i.171
  store i64 %add196.i.172, i64* %arrayidx5.i.68, align 8, !tbaa !6
  %and198.i.173 = and i64 %add190.i.169, 288230376151711743
  store i64 %and198.i.173, i64* %arraydecay, align 16, !tbaa !6
  %arraydecay23 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 0
  call void @felem_contract(i64* %arraydecay23, i64* %arraydecay)
  %cmp = icmp eq %struct.bignum_st* %x, null
  br i1 %cmp, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.end.11
  %50 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %50) #1
  %51 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %51) #1
  call void @llvm.memset.p0i8.i64(i8* %50, i8 0, i64 66, i32 16, i1 false) #1
  %52 = load i64, i64* %arraydecay23, align 16, !tbaa !6
  %53 = bitcast [66 x i8]* %b_in.i to i64*
  store i64 %52, i64* %53, align 16, !tbaa !6
  %arrayidx2.i.i.176 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 1
  %54 = load i64, i64* %arrayidx2.i.i.176, align 8, !tbaa !6
  %shl.i.i.177 = shl i64 %54, 2
  %arrayidx3.i.i.178 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 7
  %55 = bitcast i8* %arrayidx3.i.i.178 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !6
  %or.i.i.179 = or i64 %56, %shl.i.i.177
  store i64 %or.i.i.179, i64* %55, align 8, !tbaa !6
  %arrayidx4.i.i.180 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 2
  %57 = load i64, i64* %arrayidx4.i.i.180, align 16, !tbaa !6
  %shl5.i.i.181 = shl i64 %57, 4
  %arrayidx6.i.i.182 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 14
  %58 = bitcast i8* %arrayidx6.i.i.182 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !6
  %or7.i.i.183 = or i64 %59, %shl5.i.i.181
  store i64 %or7.i.i.183, i64* %58, align 8, !tbaa !6
  %arrayidx8.i.i.184 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 3
  %60 = load i64, i64* %arrayidx8.i.i.184, align 8, !tbaa !6
  %shl9.i.i.185 = shl i64 %60, 6
  %arrayidx10.i.i.186 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 21
  %61 = bitcast i8* %arrayidx10.i.i.186 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !6
  %or11.i.i.187 = or i64 %62, %shl9.i.i.185
  store i64 %or11.i.i.187, i64* %61, align 8, !tbaa !6
  %arrayidx12.i.i.188 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 4
  %63 = load i64, i64* %arrayidx12.i.i.188, align 16, !tbaa !6
  %arrayidx13.i.i.189 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 29
  %64 = bitcast i8* %arrayidx13.i.i.189 to i64*
  store i64 %63, i64* %64, align 8, !tbaa !6
  %arrayidx14.i.i.190 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 5
  %65 = load i64, i64* %arrayidx14.i.i.190, align 8, !tbaa !6
  %shl15.i.i.191 = shl i64 %65, 2
  %arrayidx16.i.i.192 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 36
  %66 = bitcast i8* %arrayidx16.i.i.192 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !6
  %or17.i.i.193 = or i64 %67, %shl15.i.i.191
  store i64 %or17.i.i.193, i64* %66, align 8, !tbaa !6
  %arrayidx18.i.i.194 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 6
  %68 = load i64, i64* %arrayidx18.i.i.194, align 16, !tbaa !6
  %shl19.i.i.195 = shl i64 %68, 4
  %arrayidx20.i.i.196 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 43
  %69 = bitcast i8* %arrayidx20.i.i.196 to i64*
  %70 = load i64, i64* %69, align 8, !tbaa !6
  %or21.i.i.197 = or i64 %70, %shl19.i.i.195
  store i64 %or21.i.i.197, i64* %69, align 8, !tbaa !6
  %arrayidx22.i.i.198 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 7
  %71 = load i64, i64* %arrayidx22.i.i.198, align 8, !tbaa !6
  %shl23.i.i.199 = shl i64 %71, 6
  %arrayidx24.i.i.200 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %72 = bitcast i8* %arrayidx24.i.i.200 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !6
  %or25.i.i.201 = or i64 %73, %shl23.i.i.199
  store i64 %or25.i.i.201, i64* %72, align 8, !tbaa !6
  %arrayidx26.i.i.202 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 8
  %74 = load i64, i64* %arrayidx26.i.i.202, align 16, !tbaa !6
  %arrayidx27.i.i.203 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 58
  %75 = bitcast i8* %arrayidx27.i.i.203 to i64*
  store i64 %74, i64* %75, align 8, !tbaa !6
  br label %vector.body

vector.body:                                      ; preds = %if.then.25
  %76 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %77 = bitcast i8* %76 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %77, align 2, !tbaa !17
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %78 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %78, align 16, !tbaa !17
  %79 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %80 = bitcast i8* %79 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %80, align 2, !tbaa !17
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %81 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %82 = bitcast i8* %81 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %82, align 16, !tbaa !17
  %83 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %84 = bitcast i8* %83 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %84, align 2, !tbaa !17
  %reverse.2 = shufflevector <16 x i8> %wide.load.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %85 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %86 = bitcast i8* %85 to <16 x i8>*
  store <16 x i8> %reverse.2, <16 x i8>* %86, align 16, !tbaa !17
  %87 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %88 = bitcast i8* %87 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %88, align 2, !tbaa !17
  %reverse.3 = shufflevector <16 x i8> %wide.load.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %89 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %90 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %reverse.3, <16 x i8>* %90, align 16, !tbaa !17
  br label %for.body.i.i.210

for.body.i.i.210:                                 ; preds = %vector.body
  %arrayidx.i.i.206 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %91 = load i8, i8* %arrayidx.i.i.206, align 1, !tbaa !17
  %arrayidx3.i.4.i.207 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %91, i8* %arrayidx3.i.4.i.207, align 16, !tbaa !17
  %arrayidx.i.i.206.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %92 = load i8, i8* %arrayidx.i.i.206.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.207.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %92, i8* %arrayidx3.i.4.i.207.1, align 1, !tbaa !17
  %call.i.211 = call %struct.bignum_st* @BN_bin2bn(i8* %51, i32 66, %struct.bignum_st* %x) #1
  call void @llvm.lifetime.end(i64 66, i8* %51) #1
  call void @llvm.lifetime.end(i64 66, i8* %50) #1
  %tobool28 = icmp eq %struct.bignum_st* %call.i.211, null
  br i1 %tobool28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %for.body.i.i.210
  call void @ERR_put_error(i32 16, i32 235, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1797) #1
  br label %cleanup

if.end.31:                                        ; preds = %for.body.i.i.210, %if.end.11
  call fastcc void @felem_mul(i128* %arraydecay14, i64* %arraydecay7, i64* %arraydecay12)
  %93 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %conv.i.213 = trunc i128 %93 to i64
  %and.i.214 = and i64 %conv.i.213, 288230376151711743
  store i64 %and.i.214, i64* %arraydecay7, align 16, !tbaa !6
  %94 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.216 = trunc i128 %94 to i64
  %and4.i.217 = and i64 %conv3.i.216, 288230376151711743
  %95 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.220 = trunc i128 %95 to i64
  %and8.i.221 = and i64 %conv7.i.220, 288230376151711743
  %96 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.224 = trunc i128 %96 to i64
  %and12.i.225 = and i64 %conv11.i.224, 288230376151711743
  %97 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.228 = trunc i128 %97 to i64
  %and16.i.229 = and i64 %conv15.i.228, 288230376151711743
  %98 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.232 = trunc i128 %98 to i64
  %and20.i.233 = and i64 %conv19.i.232, 288230376151711743
  %99 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.236 = trunc i128 %99 to i64
  %and24.i.237 = and i64 %conv23.i.236, 288230376151711743
  %100 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.240 = trunc i128 %100 to i64
  %and28.i.241 = and i64 %conv27.i.240, 288230376151711743
  %101 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.244 = trunc i128 %101 to i64
  %and32.i.245 = and i64 %conv31.i.244, 288230376151711743
  %shr.i.247 = lshr i64 %conv.i.213, 58
  %add.i.248 = add nuw nsw i64 %and4.i.217, %shr.i.247
  %102 = lshr i128 %93, 58
  %and40.i.249 = trunc i128 %102 to i64
  %shl.i.250 = and i64 %and40.i.249, 288230376151711680
  %add42.i.251 = add nuw nsw i64 %add.i.248, %shl.i.250
  %shr44.i.252 = lshr i128 %93, 116
  %shr46.i.253 = trunc i128 %shr44.i.252 to i64
  %shr51.i.255 = lshr i64 %conv3.i.216, 58
  %103 = lshr i128 %94, 58
  %and57.i.257 = trunc i128 %103 to i64
  %shl58.i.258 = and i64 %and57.i.257, 288230376151711680
  %add48.i.254 = add nuw nsw i64 %shr51.i.255, %shr46.i.253
  %add53.i.256 = add nuw nsw i64 %add48.i.254, %and8.i.221
  %add60.i.259 = add nuw nsw i64 %add53.i.256, %shl58.i.258
  store i64 %add60.i.259, i64* %arrayidx9.i, align 16, !tbaa !6
  %shr62.i.260 = lshr i128 %94, 116
  %shr64.i.261 = trunc i128 %shr62.i.260 to i64
  %shr69.i.263 = lshr i64 %conv7.i.220, 58
  %104 = lshr i128 %95, 58
  %and75.i.265 = trunc i128 %104 to i64
  %shl76.i.266 = and i64 %and75.i.265, 288230376151711680
  %add66.i.262 = add nuw nsw i64 %shr69.i.263, %shr64.i.261
  %add71.i.264 = add nuw nsw i64 %add66.i.262, %and12.i.225
  %add78.i.267 = add nuw nsw i64 %add71.i.264, %shl76.i.266
  store i64 %add78.i.267, i64* %arrayidx13.i, align 8, !tbaa !6
  %shr80.i.268 = lshr i128 %95, 116
  %shr82.i.269 = trunc i128 %shr80.i.268 to i64
  %shr87.i.271 = lshr i64 %conv11.i.224, 58
  %105 = lshr i128 %96, 58
  %and93.i.273 = trunc i128 %105 to i64
  %shl94.i.274 = and i64 %and93.i.273, 288230376151711680
  %add84.i.270 = add nuw nsw i64 %shr87.i.271, %shr82.i.269
  %add89.i.272 = add nuw nsw i64 %add84.i.270, %and16.i.229
  %add96.i.275 = add nuw nsw i64 %add89.i.272, %shl94.i.274
  store i64 %add96.i.275, i64* %arrayidx17.i, align 16, !tbaa !6
  %shr98.i.276 = lshr i128 %96, 116
  %shr100.i.277 = trunc i128 %shr98.i.276 to i64
  %shr105.i.279 = lshr i64 %conv15.i.228, 58
  %106 = lshr i128 %97, 58
  %and111.i.281 = trunc i128 %106 to i64
  %shl112.i.282 = and i64 %and111.i.281, 288230376151711680
  %add102.i.278 = add nuw nsw i64 %shr105.i.279, %shr100.i.277
  %add107.i.280 = add nuw nsw i64 %add102.i.278, %and20.i.233
  %add114.i.283 = add nuw nsw i64 %add107.i.280, %shl112.i.282
  store i64 %add114.i.283, i64* %arrayidx21.i, align 8, !tbaa !6
  %shr116.i.284 = lshr i128 %97, 116
  %shr118.i.285 = trunc i128 %shr116.i.284 to i64
  %shr123.i.287 = lshr i64 %conv19.i.232, 58
  %107 = lshr i128 %98, 58
  %and129.i.289 = trunc i128 %107 to i64
  %shl130.i.290 = and i64 %and129.i.289, 288230376151711680
  %add120.i.286 = add nuw nsw i64 %shr123.i.287, %shr118.i.285
  %add125.i.288 = add nuw nsw i64 %add120.i.286, %and24.i.237
  %add132.i.291 = add nuw nsw i64 %add125.i.288, %shl130.i.290
  store i64 %add132.i.291, i64* %arrayidx25.i, align 16, !tbaa !6
  %shr134.i.292 = lshr i128 %98, 116
  %shr136.i.293 = trunc i128 %shr134.i.292 to i64
  %shr141.i.295 = lshr i64 %conv23.i.236, 58
  %108 = lshr i128 %99, 58
  %and147.i.297 = trunc i128 %108 to i64
  %shl148.i.298 = and i64 %and147.i.297, 288230376151711680
  %add138.i.294 = add nuw nsw i64 %shr141.i.295, %shr136.i.293
  %add143.i.296 = add nuw nsw i64 %add138.i.294, %and28.i.241
  %add150.i.299 = add nuw nsw i64 %add143.i.296, %shl148.i.298
  store i64 %add150.i.299, i64* %arrayidx29.i, align 8, !tbaa !6
  %shr152.i.300 = lshr i128 %99, 116
  %shr154.i.301 = trunc i128 %shr152.i.300 to i64
  %shr159.i.303 = lshr i64 %conv27.i.240, 58
  %109 = lshr i128 %100, 58
  %and165.i.305 = trunc i128 %109 to i64
  %shl166.i.306 = and i64 %and165.i.305, 288230376151711680
  %add156.i.302 = add nuw nsw i64 %shr159.i.303, %shr154.i.301
  %add161.i.304 = add nuw nsw i64 %add156.i.302, %and32.i.245
  %add168.i.307 = add nuw nsw i64 %add161.i.304, %shl166.i.306
  store i64 %add168.i.307, i64* %arrayidx33.i, align 16, !tbaa !6
  %shr170.i.308 = lshr i128 %100, 116
  %shr172.i.309 = trunc i128 %shr170.i.308 to i64
  %shr175.i.311 = lshr i64 %conv31.i.244, 58
  %add176.i.312 = add nuw nsw i64 %shr175.i.311, %shr172.i.309
  %110 = lshr i128 %101, 58
  %and180.i.313 = trunc i128 %110 to i64
  %shl181.i.314 = and i64 %and180.i.313, 288230376151711680
  %add182.i.315 = add nuw nsw i64 %add176.i.312, %shl181.i.314
  %shl187.i.316 = shl nuw nsw i64 %add182.i.315, 1
  %111 = lshr i128 %101, 115
  %.tr.i.317 = trunc i128 %111 to i64
  %shl188.i.318 = and i64 %.tr.i.317, 8190
  %112 = load i64, i64* %arraydecay7, align 16, !tbaa !6
  %add190.i.319 = add i64 %shl187.i.316, %112
  %add192.i.320 = add nuw nsw i64 %shl188.i.318, %add42.i.251
  %shr194.i.321 = lshr i64 %add190.i.319, 58
  %add196.i.322 = add nuw nsw i64 %add192.i.320, %shr194.i.321
  store i64 %add196.i.322, i64* %arrayidx5.i, align 8, !tbaa !6
  %and198.i.323 = and i64 %add190.i.319, 288230376151711743
  store i64 %and198.i.323, i64* %arraydecay7, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay14, i64* %arraydecay3, i64* %arraydecay7)
  %113 = load i128, i128* %arraydecay14, align 16, !tbaa !2
  %conv.i.324 = trunc i128 %113 to i64
  %and.i.325 = and i64 %conv.i.324, 288230376151711743
  store i64 %and.i.325, i64* %arraydecay3, align 16, !tbaa !6
  %114 = load i128, i128* %arrayidx2.i, align 16, !tbaa !2
  %conv3.i.327 = trunc i128 %114 to i64
  %and4.i.328 = and i64 %conv3.i.327, 288230376151711743
  %arrayidx5.i.329 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 1
  %115 = load i128, i128* %arrayidx6.i, align 16, !tbaa !2
  %conv7.i.331 = trunc i128 %115 to i64
  %and8.i.332 = and i64 %conv7.i.331, 288230376151711743
  %arrayidx9.i.333 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 2
  %116 = load i128, i128* %arrayidx10.i, align 16, !tbaa !2
  %conv11.i.335 = trunc i128 %116 to i64
  %and12.i.336 = and i64 %conv11.i.335, 288230376151711743
  %arrayidx13.i.337 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 3
  %117 = load i128, i128* %arrayidx14.i, align 16, !tbaa !2
  %conv15.i.339 = trunc i128 %117 to i64
  %and16.i.340 = and i64 %conv15.i.339, 288230376151711743
  %arrayidx17.i.341 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 4
  %118 = load i128, i128* %arrayidx18.i, align 16, !tbaa !2
  %conv19.i.343 = trunc i128 %118 to i64
  %and20.i.344 = and i64 %conv19.i.343, 288230376151711743
  %arrayidx21.i.345 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 5
  %119 = load i128, i128* %arrayidx22.i, align 16, !tbaa !2
  %conv23.i.347 = trunc i128 %119 to i64
  %and24.i.348 = and i64 %conv23.i.347, 288230376151711743
  %arrayidx25.i.349 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 6
  %120 = load i128, i128* %arrayidx26.i, align 16, !tbaa !2
  %conv27.i.351 = trunc i128 %120 to i64
  %and28.i.352 = and i64 %conv27.i.351, 288230376151711743
  %arrayidx29.i.353 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 7
  %121 = load i128, i128* %arrayidx30.i, align 16, !tbaa !2
  %conv31.i.355 = trunc i128 %121 to i64
  %and32.i.356 = and i64 %conv31.i.355, 288230376151711743
  %arrayidx33.i.357 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 8
  %shr.i.358 = lshr i64 %conv.i.324, 58
  %add.i.359 = add nuw nsw i64 %and4.i.328, %shr.i.358
  %122 = lshr i128 %113, 58
  %and40.i.360 = trunc i128 %122 to i64
  %shl.i.361 = and i64 %and40.i.360, 288230376151711680
  %add42.i.362 = add nuw nsw i64 %add.i.359, %shl.i.361
  %shr44.i.363 = lshr i128 %113, 116
  %shr46.i.364 = trunc i128 %shr44.i.363 to i64
  %shr51.i.366 = lshr i64 %conv3.i.327, 58
  %123 = lshr i128 %114, 58
  %and57.i.368 = trunc i128 %123 to i64
  %shl58.i.369 = and i64 %and57.i.368, 288230376151711680
  %add48.i.365 = add nuw nsw i64 %shr51.i.366, %shr46.i.364
  %add53.i.367 = add nuw nsw i64 %add48.i.365, %and8.i.332
  %add60.i.370 = add nuw nsw i64 %add53.i.367, %shl58.i.369
  store i64 %add60.i.370, i64* %arrayidx9.i.333, align 16, !tbaa !6
  %shr62.i.371 = lshr i128 %114, 116
  %shr64.i.372 = trunc i128 %shr62.i.371 to i64
  %shr69.i.374 = lshr i64 %conv7.i.331, 58
  %124 = lshr i128 %115, 58
  %and75.i.376 = trunc i128 %124 to i64
  %shl76.i.377 = and i64 %and75.i.376, 288230376151711680
  %add66.i.373 = add nuw nsw i64 %shr69.i.374, %shr64.i.372
  %add71.i.375 = add nuw nsw i64 %add66.i.373, %and12.i.336
  %add78.i.378 = add nuw nsw i64 %add71.i.375, %shl76.i.377
  store i64 %add78.i.378, i64* %arrayidx13.i.337, align 8, !tbaa !6
  %shr80.i.379 = lshr i128 %115, 116
  %shr82.i.380 = trunc i128 %shr80.i.379 to i64
  %shr87.i.382 = lshr i64 %conv11.i.335, 58
  %125 = lshr i128 %116, 58
  %and93.i.384 = trunc i128 %125 to i64
  %shl94.i.385 = and i64 %and93.i.384, 288230376151711680
  %add84.i.381 = add nuw nsw i64 %shr87.i.382, %shr82.i.380
  %add89.i.383 = add nuw nsw i64 %add84.i.381, %and16.i.340
  %add96.i.386 = add nuw nsw i64 %add89.i.383, %shl94.i.385
  store i64 %add96.i.386, i64* %arrayidx17.i.341, align 16, !tbaa !6
  %shr98.i.387 = lshr i128 %116, 116
  %shr100.i.388 = trunc i128 %shr98.i.387 to i64
  %shr105.i.390 = lshr i64 %conv15.i.339, 58
  %126 = lshr i128 %117, 58
  %and111.i.392 = trunc i128 %126 to i64
  %shl112.i.393 = and i64 %and111.i.392, 288230376151711680
  %add102.i.389 = add nuw nsw i64 %shr105.i.390, %shr100.i.388
  %add107.i.391 = add nuw nsw i64 %add102.i.389, %and20.i.344
  %add114.i.394 = add nuw nsw i64 %add107.i.391, %shl112.i.393
  store i64 %add114.i.394, i64* %arrayidx21.i.345, align 8, !tbaa !6
  %shr116.i.395 = lshr i128 %117, 116
  %shr118.i.396 = trunc i128 %shr116.i.395 to i64
  %shr123.i.398 = lshr i64 %conv19.i.343, 58
  %127 = lshr i128 %118, 58
  %and129.i.400 = trunc i128 %127 to i64
  %shl130.i.401 = and i64 %and129.i.400, 288230376151711680
  %add120.i.397 = add nuw nsw i64 %shr123.i.398, %shr118.i.396
  %add125.i.399 = add nuw nsw i64 %add120.i.397, %and24.i.348
  %add132.i.402 = add nuw nsw i64 %add125.i.399, %shl130.i.401
  store i64 %add132.i.402, i64* %arrayidx25.i.349, align 16, !tbaa !6
  %shr134.i.403 = lshr i128 %118, 116
  %shr136.i.404 = trunc i128 %shr134.i.403 to i64
  %shr141.i.406 = lshr i64 %conv23.i.347, 58
  %128 = lshr i128 %119, 58
  %and147.i.408 = trunc i128 %128 to i64
  %shl148.i.409 = and i64 %and147.i.408, 288230376151711680
  %add138.i.405 = add nuw nsw i64 %shr141.i.406, %shr136.i.404
  %add143.i.407 = add nuw nsw i64 %add138.i.405, %and28.i.352
  %add150.i.410 = add nuw nsw i64 %add143.i.407, %shl148.i.409
  store i64 %add150.i.410, i64* %arrayidx29.i.353, align 8, !tbaa !6
  %shr152.i.411 = lshr i128 %119, 116
  %shr154.i.412 = trunc i128 %shr152.i.411 to i64
  %shr159.i.414 = lshr i64 %conv27.i.351, 58
  %129 = lshr i128 %120, 58
  %and165.i.416 = trunc i128 %129 to i64
  %shl166.i.417 = and i64 %and165.i.416, 288230376151711680
  %add156.i.413 = add nuw nsw i64 %shr159.i.414, %shr154.i.412
  %add161.i.415 = add nuw nsw i64 %add156.i.413, %and32.i.356
  %add168.i.418 = add nuw nsw i64 %add161.i.415, %shl166.i.417
  store i64 %add168.i.418, i64* %arrayidx33.i.357, align 16, !tbaa !6
  %shr170.i.419 = lshr i128 %120, 116
  %shr172.i.420 = trunc i128 %shr170.i.419 to i64
  %shr175.i.422 = lshr i64 %conv31.i.355, 58
  %add176.i.423 = add nuw nsw i64 %shr175.i.422, %shr172.i.420
  %130 = lshr i128 %121, 58
  %and180.i.424 = trunc i128 %130 to i64
  %shl181.i.425 = and i64 %and180.i.424, 288230376151711680
  %add182.i.426 = add nuw nsw i64 %add176.i.423, %shl181.i.425
  %shl187.i.427 = shl nuw nsw i64 %add182.i.426, 1
  %131 = lshr i128 %121, 115
  %.tr.i.428 = trunc i128 %131 to i64
  %shl188.i.429 = and i64 %.tr.i.428, 8190
  %132 = load i64, i64* %arraydecay3, align 16, !tbaa !6
  %add190.i.430 = add i64 %shl187.i.427, %132
  %add192.i.431 = add nuw nsw i64 %shl188.i.429, %add42.i.362
  %shr194.i.432 = lshr i64 %add190.i.430, 58
  %add196.i.433 = add nuw nsw i64 %add192.i.431, %shr194.i.432
  store i64 %add196.i.433, i64* %arrayidx5.i.329, align 8, !tbaa !6
  %and198.i.434 = and i64 %add190.i.430, 288230376151711743
  store i64 %and198.i.434, i64* %arraydecay3, align 16, !tbaa !6
  %arraydecay42 = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 0
  call void @felem_contract(i64* %arraydecay42, i64* %arraydecay3)
  %cmp44 = icmp eq %struct.bignum_st* %y, null
  br i1 %cmp44, label %cleanup, label %if.then.45

if.then.45:                                       ; preds = %if.end.31
  %133 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %133) #1
  %134 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %134) #1
  call void @llvm.memset.p0i8.i64(i8* %133, i8 0, i64 66, i32 16, i1 false) #1
  %135 = load i64, i64* %arraydecay42, align 16, !tbaa !6
  %136 = bitcast [66 x i8]* %b_in.i to i64*
  store i64 %135, i64* %136, align 16, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 1
  %137 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !6
  %shl.i.i = shl i64 %137, 2
  %arrayidx3.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 7
  %138 = bitcast i8* %arrayidx3.i.i to i64*
  %139 = load i64, i64* %138, align 8, !tbaa !6
  %or.i.i = or i64 %139, %shl.i.i
  store i64 %or.i.i, i64* %138, align 8, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 2
  %140 = load i64, i64* %arrayidx4.i.i, align 16, !tbaa !6
  %shl5.i.i = shl i64 %140, 4
  %arrayidx6.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 14
  %141 = bitcast i8* %arrayidx6.i.i to i64*
  %142 = load i64, i64* %141, align 8, !tbaa !6
  %or7.i.i = or i64 %142, %shl5.i.i
  store i64 %or7.i.i, i64* %141, align 8, !tbaa !6
  %arrayidx8.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 3
  %143 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %shl9.i.i = shl i64 %143, 6
  %arrayidx10.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 21
  %144 = bitcast i8* %arrayidx10.i.i to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !6
  %or11.i.i = or i64 %145, %shl9.i.i
  store i64 %or11.i.i, i64* %144, align 8, !tbaa !6
  %arrayidx12.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 4
  %146 = load i64, i64* %arrayidx12.i.i, align 16, !tbaa !6
  %arrayidx13.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 29
  %147 = bitcast i8* %arrayidx13.i.i to i64*
  store i64 %146, i64* %147, align 8, !tbaa !6
  %arrayidx14.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 5
  %148 = load i64, i64* %arrayidx14.i.i, align 8, !tbaa !6
  %shl15.i.i = shl i64 %148, 2
  %arrayidx16.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 36
  %149 = bitcast i8* %arrayidx16.i.i to i64*
  %150 = load i64, i64* %149, align 8, !tbaa !6
  %or17.i.i = or i64 %150, %shl15.i.i
  store i64 %or17.i.i, i64* %149, align 8, !tbaa !6
  %arrayidx18.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 6
  %151 = load i64, i64* %arrayidx18.i.i, align 16, !tbaa !6
  %shl19.i.i = shl i64 %151, 4
  %arrayidx20.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 43
  %152 = bitcast i8* %arrayidx20.i.i to i64*
  %153 = load i64, i64* %152, align 8, !tbaa !6
  %or21.i.i = or i64 %153, %shl19.i.i
  store i64 %or21.i.i, i64* %152, align 8, !tbaa !6
  %arrayidx22.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 7
  %154 = load i64, i64* %arrayidx22.i.i, align 8, !tbaa !6
  %shl23.i.i = shl i64 %154, 6
  %arrayidx24.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %155 = bitcast i8* %arrayidx24.i.i to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !6
  %or25.i.i = or i64 %156, %shl23.i.i
  store i64 %or25.i.i, i64* %155, align 8, !tbaa !6
  %arrayidx26.i.i = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 8
  %157 = load i64, i64* %arrayidx26.i.i, align 16, !tbaa !6
  %arrayidx27.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 58
  %158 = bitcast i8* %arrayidx27.i.i to i64*
  store i64 %157, i64* %158, align 8, !tbaa !6
  br label %vector.body436

vector.body436:                                   ; preds = %if.then.45
  %159 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %160 = bitcast i8* %159 to <16 x i8>*
  %wide.load451 = load <16 x i8>, <16 x i8>* %160, align 2, !tbaa !17
  %reverse452 = shufflevector <16 x i8> %wide.load451, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %161 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse452, <16 x i8>* %161, align 16, !tbaa !17
  %162 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %163 = bitcast i8* %162 to <16 x i8>*
  %wide.load451.1 = load <16 x i8>, <16 x i8>* %163, align 2, !tbaa !17
  %reverse452.1 = shufflevector <16 x i8> %wide.load451.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %164 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %165 = bitcast i8* %164 to <16 x i8>*
  store <16 x i8> %reverse452.1, <16 x i8>* %165, align 16, !tbaa !17
  %166 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %167 = bitcast i8* %166 to <16 x i8>*
  %wide.load451.2 = load <16 x i8>, <16 x i8>* %167, align 2, !tbaa !17
  %reverse452.2 = shufflevector <16 x i8> %wide.load451.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %168 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %169 = bitcast i8* %168 to <16 x i8>*
  store <16 x i8> %reverse452.2, <16 x i8>* %169, align 16, !tbaa !17
  %170 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %171 = bitcast i8* %170 to <16 x i8>*
  %wide.load451.3 = load <16 x i8>, <16 x i8>* %171, align 2, !tbaa !17
  %reverse452.3 = shufflevector <16 x i8> %wide.load451.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %172 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %173 = bitcast i8* %172 to <16 x i8>*
  store <16 x i8> %reverse452.3, <16 x i8>* %173, align 16, !tbaa !17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %vector.body436
  %arrayidx.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %174 = load i8, i8* %arrayidx.i.i, align 1, !tbaa !17
  %arrayidx3.i.4.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %174, i8* %arrayidx3.i.4.i, align 16, !tbaa !17
  %arrayidx.i.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %175 = load i8, i8* %arrayidx.i.i.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %175, i8* %arrayidx3.i.4.i.1, align 1, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %134, i32 66, %struct.bignum_st* %y) #1
  call void @llvm.lifetime.end(i64 66, i8* %134) #1
  call void @llvm.lifetime.end(i64 66, i8* %133) #1
  %tobool48 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool48, label %if.then.49, label %cleanup

if.then.49:                                       ; preds = %for.body.i.i
  call void @ERR_put_error(i32 16, i32 235, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1809) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.31, %for.body.i.i, %if.end, %lor.lhs.false, %lor.lhs.false.6, %if.then.49, %if.then.29, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.49 ], [ 0, %if.then.29 ], [ 0, %lor.lhs.false.6 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %for.body.i.i ], [ 1, %if.end.31 ]
  call void @llvm.lifetime.end(i64 144, i8* %6) #1
  call void @llvm.lifetime.end(i64 72, i8* %5) #1
  call void @llvm.lifetime.end(i64 72, i8* %4) #1
  call void @llvm.lifetime.end(i64 72, i8* %3) #1
  call void @llvm.lifetime.end(i64 72, i8* %2) #1
  call void @llvm.lifetime.end(i64 72, i8* %1) #1
  call void @llvm.lifetime.end(i64 72, i8* %0) #1
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
define i32 @ec_GFp_nistp521_points_mul(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %scalar, i64 %num, %struct.ec_point_st** nocapture readonly %points, %struct.bignum_st** nocapture readonly %scalars, %struct.bignum_ctx* %ctx) #0 {
entry:
  %b_in.i = alloca [66 x i8], align 16
  %b_out.i = alloca [66 x i8], align 16
  %g_secret = alloca [66 x i8], align 16
  %tmp = alloca [66 x i8], align 16
  %x_in = alloca [9 x i64], align 16
  %y_in = alloca [9 x i64], align 16
  %z_in = alloca [9 x i64], align 16
  %x_out = alloca [9 x i64], align 16
  %y_out = alloca [9 x i64], align 16
  %z_out = alloca [9 x i64], align 16
  %0 = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %0) #1
  %1 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %1) #1
  %2 = bitcast [9 x i64]* %x_in to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %y_in to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i64]* %z_in to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [9 x i64]* %x_out to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast [9 x i64]* %y_out to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %7 = bitcast [9 x i64]* %z_out to i8*
  call void @llvm.lifetime.start(i64 72, i8* %7) #1
  tail call void @BN_CTX_start(%struct.bignum_ctx* %ctx) #1
  %call = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call16 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call17 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %call18 = tail call %struct.bignum_st* @BN_CTX_get(%struct.bignum_ctx* %ctx) #1
  %cmp = icmp eq %struct.bignum_st* %call18, null
  br i1 %cmp, label %err, label %if.end

if.end:                                           ; preds = %entry
  %cmp19 = icmp ne %struct.bignum_st* %scalar, null
  br i1 %cmp19, label %if.then.20, label %if.end.56

if.then.20:                                       ; preds = %if.end
  %pre_comp21 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %nistp521 = bitcast %union.anon* %pre_comp21 to %struct.nistp521_pre_comp_st**
  %8 = load %struct.nistp521_pre_comp_st*, %struct.nistp521_pre_comp_st** %nistp521, align 8, !tbaa !18
  %tobool = icmp eq %struct.nistp521_pre_comp_st* %8, null
  %arrayidx = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %8, i64 0, i32 0, i64 0
  %g_pre_comp.0 = select i1 %tobool, [3 x [9 x i64]]* getelementptr inbounds ([16 x [3 x [9 x i64]]], [16 x [3 x [9 x i64]]]* @gmul, i64 0, i64 0), [3 x [9 x i64]]* %arrayidx
  %call25 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #1
  %cmp26 = icmp eq %struct.ec_point_st* %call25, null
  br i1 %cmp26, label %err, label %if.end.28

if.end.28:                                        ; preds = %if.then.20
  %arraydecay = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 0
  %9 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %9) #1
  %10 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %10) #1
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 66, i32 16, i1 false) #1
  %11 = load i64, i64* %arraydecay, align 8, !tbaa !6
  %12 = bitcast [66 x i8]* %b_in.i to i64*
  store i64 %11, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 1
  %13 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !6
  %shl.i.i = shl i64 %13, 2
  %arrayidx3.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 7
  %14 = bitcast i8* %arrayidx3.i.i to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !6
  %or.i.i = or i64 %15, %shl.i.i
  store i64 %or.i.i, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 2
  %16 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !6
  %shl5.i.i = shl i64 %16, 4
  %arrayidx6.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 14
  %17 = bitcast i8* %arrayidx6.i.i to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !6
  %or7.i.i = or i64 %18, %shl5.i.i
  store i64 %or7.i.i, i64* %17, align 8, !tbaa !6
  %arrayidx8.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 3
  %19 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %shl9.i.i = shl i64 %19, 6
  %arrayidx10.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 21
  %20 = bitcast i8* %arrayidx10.i.i to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !6
  %or11.i.i = or i64 %21, %shl9.i.i
  store i64 %or11.i.i, i64* %20, align 8, !tbaa !6
  %arrayidx12.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 4
  %22 = load i64, i64* %arrayidx12.i.i, align 8, !tbaa !6
  %arrayidx13.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 29
  %23 = bitcast i8* %arrayidx13.i.i to i64*
  store i64 %22, i64* %23, align 8, !tbaa !6
  %arrayidx14.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 5
  %24 = load i64, i64* %arrayidx14.i.i, align 8, !tbaa !6
  %shl15.i.i = shl i64 %24, 2
  %arrayidx16.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 36
  %25 = bitcast i8* %arrayidx16.i.i to i64*
  %26 = load i64, i64* %25, align 8, !tbaa !6
  %or17.i.i = or i64 %26, %shl15.i.i
  store i64 %or17.i.i, i64* %25, align 8, !tbaa !6
  %arrayidx18.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 6
  %27 = load i64, i64* %arrayidx18.i.i, align 8, !tbaa !6
  %shl19.i.i = shl i64 %27, 4
  %arrayidx20.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 43
  %28 = bitcast i8* %arrayidx20.i.i to i64*
  %29 = load i64, i64* %28, align 8, !tbaa !6
  %or21.i.i = or i64 %29, %shl19.i.i
  store i64 %or21.i.i, i64* %28, align 8, !tbaa !6
  %arrayidx22.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 7
  %30 = load i64, i64* %arrayidx22.i.i, align 8, !tbaa !6
  %shl23.i.i = shl i64 %30, 6
  %arrayidx24.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %31 = bitcast i8* %arrayidx24.i.i to i64*
  %32 = load i64, i64* %31, align 8, !tbaa !6
  %or25.i.i = or i64 %32, %shl23.i.i
  store i64 %or25.i.i, i64* %31, align 8, !tbaa !6
  %arrayidx26.i.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 0, i64 8
  %33 = load i64, i64* %arrayidx26.i.i, align 8, !tbaa !6
  %arrayidx27.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 58
  %34 = bitcast i8* %arrayidx27.i.i to i64*
  store i64 %33, i64* %34, align 8, !tbaa !6
  br label %vector.body

vector.body:                                      ; preds = %if.end.28
  %35 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %36 = bitcast i8* %35 to <16 x i8>*
  %wide.load = load <16 x i8>, <16 x i8>* %36, align 2, !tbaa !17
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %37 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse, <16 x i8>* %37, align 16, !tbaa !17
  %38 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %39 = bitcast i8* %38 to <16 x i8>*
  %wide.load.1 = load <16 x i8>, <16 x i8>* %39, align 2, !tbaa !17
  %reverse.1 = shufflevector <16 x i8> %wide.load.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %40 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %41 = bitcast i8* %40 to <16 x i8>*
  store <16 x i8> %reverse.1, <16 x i8>* %41, align 16, !tbaa !17
  %42 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %43 = bitcast i8* %42 to <16 x i8>*
  %wide.load.2 = load <16 x i8>, <16 x i8>* %43, align 2, !tbaa !17
  %reverse.2 = shufflevector <16 x i8> %wide.load.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %44 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %45 = bitcast i8* %44 to <16 x i8>*
  store <16 x i8> %reverse.2, <16 x i8>* %45, align 16, !tbaa !17
  %46 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %47 = bitcast i8* %46 to <16 x i8>*
  %wide.load.3 = load <16 x i8>, <16 x i8>* %47, align 2, !tbaa !17
  %reverse.3 = shufflevector <16 x i8> %wide.load.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %48 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %49 = bitcast i8* %48 to <16 x i8>*
  store <16 x i8> %reverse.3, <16 x i8>* %49, align 16, !tbaa !17
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %vector.body
  %arrayidx.i.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %50 = load i8, i8* %arrayidx.i.i, align 1, !tbaa !17
  %arrayidx3.i.4.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %50, i8* %arrayidx3.i.4.i, align 16, !tbaa !17
  %arrayidx.i.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %51 = load i8, i8* %arrayidx.i.i.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %51, i8* %arrayidx3.i.4.i.1, align 1, !tbaa !17
  %call.i = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 66, %struct.bignum_st* %call) #1
  call void @llvm.lifetime.end(i64 66, i8* %10) #1
  call void @llvm.lifetime.end(i64 66, i8* %9) #1
  %tobool32 = icmp eq %struct.bignum_st* %call.i, null
  br i1 %tobool32, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.i.i
  %arraydecay35 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %9) #1
  call void @llvm.lifetime.start(i64 66, i8* %10) #1
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 66, i32 16, i1 false) #1
  %52 = load i64, i64* %arraydecay35, align 8, !tbaa !6
  store i64 %52, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i.458 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 1
  %53 = load i64, i64* %arrayidx2.i.i.458, align 8, !tbaa !6
  %shl.i.i.459 = shl i64 %53, 2
  %54 = load i64, i64* %14, align 8, !tbaa !6
  %or.i.i.461 = or i64 %54, %shl.i.i.459
  store i64 %or.i.i.461, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i.462 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 2
  %55 = load i64, i64* %arrayidx4.i.i.462, align 8, !tbaa !6
  %shl5.i.i.463 = shl i64 %55, 4
  %56 = load i64, i64* %17, align 8, !tbaa !6
  %or7.i.i.465 = or i64 %56, %shl5.i.i.463
  store i64 %or7.i.i.465, i64* %17, align 8, !tbaa !6
  %arrayidx8.i.i.466 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 3
  %57 = load i64, i64* %arrayidx8.i.i.466, align 8, !tbaa !6
  %shl9.i.i.467 = shl i64 %57, 6
  %58 = load i64, i64* %20, align 8, !tbaa !6
  %or11.i.i.469 = or i64 %58, %shl9.i.i.467
  store i64 %or11.i.i.469, i64* %20, align 8, !tbaa !6
  %arrayidx12.i.i.470 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 4
  %59 = load i64, i64* %arrayidx12.i.i.470, align 8, !tbaa !6
  store i64 %59, i64* %23, align 8, !tbaa !6
  %arrayidx14.i.i.472 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 5
  %60 = load i64, i64* %arrayidx14.i.i.472, align 8, !tbaa !6
  %shl15.i.i.473 = shl i64 %60, 2
  %61 = load i64, i64* %25, align 8, !tbaa !6
  %or17.i.i.475 = or i64 %61, %shl15.i.i.473
  store i64 %or17.i.i.475, i64* %25, align 8, !tbaa !6
  %arrayidx18.i.i.476 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 6
  %62 = load i64, i64* %arrayidx18.i.i.476, align 8, !tbaa !6
  %shl19.i.i.477 = shl i64 %62, 4
  %63 = load i64, i64* %28, align 8, !tbaa !6
  %or21.i.i.479 = or i64 %63, %shl19.i.i.477
  store i64 %or21.i.i.479, i64* %28, align 8, !tbaa !6
  %arrayidx22.i.i.480 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 7
  %64 = load i64, i64* %arrayidx22.i.i.480, align 8, !tbaa !6
  %shl23.i.i.481 = shl i64 %64, 6
  %65 = load i64, i64* %31, align 8, !tbaa !6
  %or25.i.i.483 = or i64 %65, %shl23.i.i.481
  store i64 %or25.i.i.483, i64* %31, align 8, !tbaa !6
  %arrayidx26.i.i.484 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 1, i64 8
  %66 = load i64, i64* %arrayidx26.i.i.484, align 8, !tbaa !6
  store i64 %66, i64* %34, align 8, !tbaa !6
  br label %vector.body676

vector.body676:                                   ; preds = %lor.lhs.false
  %67 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %68 = bitcast i8* %67 to <16 x i8>*
  %wide.load691 = load <16 x i8>, <16 x i8>* %68, align 2, !tbaa !17
  %reverse692 = shufflevector <16 x i8> %wide.load691, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %69 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse692, <16 x i8>* %69, align 16, !tbaa !17
  %70 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %71 = bitcast i8* %70 to <16 x i8>*
  %wide.load691.1 = load <16 x i8>, <16 x i8>* %71, align 2, !tbaa !17
  %reverse692.1 = shufflevector <16 x i8> %wide.load691.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %72 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %73 = bitcast i8* %72 to <16 x i8>*
  store <16 x i8> %reverse692.1, <16 x i8>* %73, align 16, !tbaa !17
  %74 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %75 = bitcast i8* %74 to <16 x i8>*
  %wide.load691.2 = load <16 x i8>, <16 x i8>* %75, align 2, !tbaa !17
  %reverse692.2 = shufflevector <16 x i8> %wide.load691.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %76 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %77 = bitcast i8* %76 to <16 x i8>*
  store <16 x i8> %reverse692.2, <16 x i8>* %77, align 16, !tbaa !17
  %78 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %79 = bitcast i8* %78 to <16 x i8>*
  %wide.load691.3 = load <16 x i8>, <16 x i8>* %79, align 2, !tbaa !17
  %reverse692.3 = shufflevector <16 x i8> %wide.load691.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %80 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %81 = bitcast i8* %80 to <16 x i8>*
  store <16 x i8> %reverse692.3, <16 x i8>* %81, align 16, !tbaa !17
  br label %for.body.i.i.492

for.body.i.i.492:                                 ; preds = %vector.body676
  %arrayidx.i.i.488 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %82 = load i8, i8* %arrayidx.i.i.488, align 1, !tbaa !17
  %arrayidx3.i.4.i.489 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %82, i8* %arrayidx3.i.4.i.489, align 16, !tbaa !17
  %arrayidx.i.i.488.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %83 = load i8, i8* %arrayidx.i.i.488.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.489.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %83, i8* %arrayidx3.i.4.i.489.1, align 1, !tbaa !17
  %call.i.493 = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 66, %struct.bignum_st* %call16) #1
  call void @llvm.lifetime.end(i64 66, i8* %10) #1
  call void @llvm.lifetime.end(i64 66, i8* %9) #1
  %tobool37 = icmp eq %struct.bignum_st* %call.i.493, null
  br i1 %tobool37, label %if.then.44, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %for.body.i.i.492
  %arraydecay41 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %9) #1
  call void @llvm.lifetime.start(i64 66, i8* %10) #1
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 66, i32 16, i1 false) #1
  %84 = load i64, i64* %arraydecay41, align 8, !tbaa !6
  store i64 %84, i64* %12, align 16, !tbaa !6
  %arrayidx2.i.i.497 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 1
  %85 = load i64, i64* %arrayidx2.i.i.497, align 8, !tbaa !6
  %shl.i.i.498 = shl i64 %85, 2
  %86 = load i64, i64* %14, align 8, !tbaa !6
  %or.i.i.500 = or i64 %86, %shl.i.i.498
  store i64 %or.i.i.500, i64* %14, align 8, !tbaa !6
  %arrayidx4.i.i.501 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 2
  %87 = load i64, i64* %arrayidx4.i.i.501, align 8, !tbaa !6
  %shl5.i.i.502 = shl i64 %87, 4
  %88 = load i64, i64* %17, align 8, !tbaa !6
  %or7.i.i.504 = or i64 %88, %shl5.i.i.502
  store i64 %or7.i.i.504, i64* %17, align 8, !tbaa !6
  %arrayidx8.i.i.505 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 3
  %89 = load i64, i64* %arrayidx8.i.i.505, align 8, !tbaa !6
  %shl9.i.i.506 = shl i64 %89, 6
  %90 = load i64, i64* %20, align 8, !tbaa !6
  %or11.i.i.508 = or i64 %90, %shl9.i.i.506
  store i64 %or11.i.i.508, i64* %20, align 8, !tbaa !6
  %arrayidx12.i.i.509 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 4
  %91 = load i64, i64* %arrayidx12.i.i.509, align 8, !tbaa !6
  store i64 %91, i64* %23, align 8, !tbaa !6
  %arrayidx14.i.i.511 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 5
  %92 = load i64, i64* %arrayidx14.i.i.511, align 8, !tbaa !6
  %shl15.i.i.512 = shl i64 %92, 2
  %93 = load i64, i64* %25, align 8, !tbaa !6
  %or17.i.i.514 = or i64 %93, %shl15.i.i.512
  store i64 %or17.i.i.514, i64* %25, align 8, !tbaa !6
  %arrayidx18.i.i.515 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 6
  %94 = load i64, i64* %arrayidx18.i.i.515, align 8, !tbaa !6
  %shl19.i.i.516 = shl i64 %94, 4
  %95 = load i64, i64* %28, align 8, !tbaa !6
  %or21.i.i.518 = or i64 %95, %shl19.i.i.516
  store i64 %or21.i.i.518, i64* %28, align 8, !tbaa !6
  %arrayidx22.i.i.519 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 7
  %96 = load i64, i64* %arrayidx22.i.i.519, align 8, !tbaa !6
  %shl23.i.i.520 = shl i64 %96, 6
  %97 = load i64, i64* %31, align 8, !tbaa !6
  %or25.i.i.522 = or i64 %97, %shl23.i.i.520
  store i64 %or25.i.i.522, i64* %31, align 8, !tbaa !6
  %arrayidx26.i.i.523 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp.0, i64 1, i64 2, i64 8
  %98 = load i64, i64* %arrayidx26.i.i.523, align 8, !tbaa !6
  store i64 %98, i64* %34, align 8, !tbaa !6
  br label %vector.body694

vector.body694:                                   ; preds = %lor.lhs.false.38
  %99 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %100 = bitcast i8* %99 to <16 x i8>*
  %wide.load709 = load <16 x i8>, <16 x i8>* %100, align 2, !tbaa !17
  %reverse710 = shufflevector <16 x i8> %wide.load709, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %101 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse710, <16 x i8>* %101, align 16, !tbaa !17
  %102 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %103 = bitcast i8* %102 to <16 x i8>*
  %wide.load709.1 = load <16 x i8>, <16 x i8>* %103, align 2, !tbaa !17
  %reverse710.1 = shufflevector <16 x i8> %wide.load709.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %104 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %105 = bitcast i8* %104 to <16 x i8>*
  store <16 x i8> %reverse710.1, <16 x i8>* %105, align 16, !tbaa !17
  %106 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %107 = bitcast i8* %106 to <16 x i8>*
  %wide.load709.2 = load <16 x i8>, <16 x i8>* %107, align 2, !tbaa !17
  %reverse710.2 = shufflevector <16 x i8> %wide.load709.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %108 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %109 = bitcast i8* %108 to <16 x i8>*
  store <16 x i8> %reverse710.2, <16 x i8>* %109, align 16, !tbaa !17
  %110 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %111 = bitcast i8* %110 to <16 x i8>*
  %wide.load709.3 = load <16 x i8>, <16 x i8>* %111, align 2, !tbaa !17
  %reverse710.3 = shufflevector <16 x i8> %wide.load709.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %112 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %113 = bitcast i8* %112 to <16 x i8>*
  store <16 x i8> %reverse710.3, <16 x i8>* %113, align 16, !tbaa !17
  br label %for.body.i.i.531

for.body.i.i.531:                                 ; preds = %vector.body694
  %arrayidx.i.i.527 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %114 = load i8, i8* %arrayidx.i.i.527, align 1, !tbaa !17
  %arrayidx3.i.4.i.528 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %114, i8* %arrayidx3.i.4.i.528, align 16, !tbaa !17
  %arrayidx.i.i.527.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %115 = load i8, i8* %arrayidx.i.i.527.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.528.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %115, i8* %arrayidx3.i.4.i.528.1, align 1, !tbaa !17
  %call.i.532 = call %struct.bignum_st* @BN_bin2bn(i8* %10, i32 66, %struct.bignum_st* %call17) #1
  call void @llvm.lifetime.end(i64 66, i8* %10) #1
  call void @llvm.lifetime.end(i64 66, i8* %9) #1
  %tobool43 = icmp eq %struct.bignum_st* %call.i.532, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.body.i.i.531, %for.body.i.i.492, %for.body.i.i
  call void @ERR_put_error(i32 16, i32 234, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1897) #1
  br label %err

if.end.45:                                        ; preds = %for.body.i.i.531
  %call46 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call25, %struct.bignum_st* %call, %struct.bignum_st* %call16, %struct.bignum_st* %call17, %struct.bignum_ctx* %ctx) #1
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %err, label %if.end.49

if.end.49:                                        ; preds = %if.end.45
  %generator50 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 1
  %116 = load %struct.ec_point_st*, %struct.ec_point_st** %generator50, align 8, !tbaa !19
  %call51 = call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call25, %struct.ec_point_st* %116, %struct.bignum_ctx* %ctx) #1
  %cmp52 = icmp eq i32 %call51, 0
  %.455 = zext i1 %cmp52 to i32
  %117 = zext i1 %cmp52 to i64
  %inc = xor i64 %117, 1
  %num.inc = add i64 %inc, %num
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.49, %if.end
  %have_pre_comp.0 = phi i32 [ 0, %if.end ], [ %.455, %if.end.49 ]
  %num_points.0 = phi i64 [ %num, %if.end ], [ %num.inc, %if.end.49 ]
  %g_pre_comp.1 = phi [3 x [9 x i64]]* [ null, %if.end ], [ %g_pre_comp.0, %if.end.49 ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end ], [ %call25, %if.end.49 ]
  %cmp57 = icmp eq i64 %num_points.0, 0
  br i1 %cmp57, label %if.end.253, label %if.then.58

if.then.58:                                       ; preds = %if.end.56
  %cmp59 = icmp ugt i64 %num_points.0, 1
  %mul = mul i64 %num_points.0, 66
  %call62 = call i8* @CRYPTO_zalloc(i64 %mul, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1923) #1
  %118 = bitcast i8* %call62 to [66 x i8]*
  %mul63 = mul i64 %num_points.0, 3672
  %call64 = call i8* @CRYPTO_zalloc(i64 %mul63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1924) #1
  %119 = bitcast i8* %call64 to [17 x [3 x [9 x i64]]]*
  br i1 %cmp59, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %if.then.58
  %120 = mul i64 %num_points.0, 1224
  %mul68 = add i64 %120, 72
  %call69 = call i8* @CRYPTO_malloc(i64 %mul68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1927) #1
  %121 = bitcast i8* %call69 to [9 x i64]*
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %if.then.58
  %tmp_felems.0 = phi [9 x i64]* [ %121, %if.then.66 ], [ null, %if.then.58 ]
  %cmp71 = icmp eq i8* %call62, null
  %cmp73 = icmp eq i8* %call64, null
  %or.cond = or i1 %cmp71, %cmp73
  %cmp76 = icmp eq [9 x i64]* %tmp_felems.0, null
  %or.cond310 = and i1 %cmp59, %cmp76
  %or.cond454 = or i1 %or.cond, %or.cond310
  br i1 %or.cond454, label %if.then.77, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.70
  %order = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %arraydecay118 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 0
  %arraydecay122 = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 0
  %arraydecay126 = getelementptr inbounds [9 x i64], [9 x i64]* %z_out, i64 0, i64 0
  br label %for.body

if.then.77:                                       ; preds = %if.end.70
  call void @ERR_put_error(i32 16, i32 234, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1930) #1
  br label %err

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.244
  %conv669 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.244 ]
  %i.0668 = phi i32 [ 0, %for.body.lr.ph ], [ %inc245, %for.inc.244 ]
  %cmp82 = icmp eq i64 %conv669, %num
  br i1 %cmp82, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %for.body
  %call85 = call %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st* %group) #1
  br label %if.end.90

if.else.86:                                       ; preds = %for.body
  %arrayidx87 = getelementptr inbounds %struct.ec_point_st*, %struct.ec_point_st** %points, i64 %conv669
  %122 = load %struct.ec_point_st*, %struct.ec_point_st** %arrayidx87, align 8, !tbaa !18
  %arrayidx89 = getelementptr inbounds %struct.bignum_st*, %struct.bignum_st** %scalars, i64 %conv669
  %123 = load %struct.bignum_st*, %struct.bignum_st** %arrayidx89, align 8, !tbaa !18
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.84
  %p.0 = phi %struct.ec_point_st* [ %call85, %if.then.84 ], [ %122, %if.else.86 ]
  %p_scalar.0 = phi %struct.bignum_st* [ %scalar, %if.then.84 ], [ %123, %if.else.86 ]
  %cmp91 = icmp ne %struct.bignum_st* %p_scalar.0, null
  %cmp94 = icmp ne %struct.ec_point_st* %p.0, null
  %or.cond311 = and i1 %cmp94, %cmp91
  br i1 %or.cond311, label %if.then.96, label %for.inc.244

if.then.96:                                       ; preds = %if.end.90
  %call97 = call i32 @BN_num_bits(%struct.bignum_st* %p_scalar.0) #1
  %cmp98 = icmp sgt i32 %call97, 521
  br i1 %cmp98, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %if.then.96
  %call101 = call i32 @BN_is_negative(%struct.bignum_st* %p_scalar.0) #1
  %tobool102 = icmp eq i32 %call101, 0
  br i1 %tobool102, label %if.else.110, label %if.then.103

if.then.103:                                      ; preds = %lor.lhs.false.100, %if.then.96
  %124 = load %struct.bignum_st*, %struct.bignum_st** %order, align 8, !tbaa !20
  %call104 = call i32 @BN_nnmod(%struct.bignum_st* %call18, %struct.bignum_st* %p_scalar.0, %struct.bignum_st* %124, %struct.bignum_ctx* %ctx) #1
  %tobool105 = icmp eq i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.103
  call void @ERR_put_error(i32 16, i32 234, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1962) #1
  br label %err

if.end.107:                                       ; preds = %if.then.103
  %call109 = call i32 @BN_bn2bin(%struct.bignum_st* %call18, i8* %1) #1
  br label %if.end.113

if.else.110:                                      ; preds = %lor.lhs.false.100
  %call112 = call i32 @BN_bn2bin(%struct.bignum_st* %p_scalar.0, i8* %1) #1
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.end.107
  %num_bytes.0 = phi i32 [ %call109, %if.end.107 ], [ %call112, %if.else.110 ]
  %cmp.9.i = icmp eq i32 %num_bytes.0, 0
  br i1 %cmp.9.i, label %flip_endian.exit, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.113
  %sub.i = add i32 %num_bytes.0, -1
  %xtraiter765 = and i32 %num_bytes.0, 3
  %lcmp.mod766 = icmp eq i32 %xtraiter765, 0
  br i1 %lcmp.mod766, label %for.body.lr.ph.i.split, label %for.body.i.prol.preheader

for.body.i.prol.preheader:                        ; preds = %for.body.lr.ph.i
  br label %for.body.i.prol

for.body.i.prol:                                  ; preds = %for.body.i.prol, %for.body.i.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ], [ 0, %for.body.i.prol.preheader ]
  %prol.iter767 = phi i32 [ %prol.iter767.sub, %for.body.i.prol ], [ %xtraiter765, %for.body.i.prol.preheader ]
  %125 = trunc i64 %indvars.iv.i.prol to i32
  %sub1.i.prol = sub i32 %sub.i, %125
  %idxprom.i.prol = zext i32 %sub1.i.prol to i64
  %arrayidx.i.prol = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.prol
  %126 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !17
  %arrayidx3.i.prol = getelementptr inbounds [66 x i8], [66 x i8]* %118, i64 %conv669, i64 %indvars.iv.i.prol
  store i8 %126, i8* %arrayidx3.i.prol, align 1, !tbaa !17
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1
  %prol.iter767.sub = add i32 %prol.iter767, -1
  %prol.iter767.cmp = icmp eq i32 %prol.iter767.sub, 0
  br i1 %prol.iter767.cmp, label %for.body.lr.ph.i.split.loopexit, label %for.body.i.prol, !llvm.loop !21

for.body.lr.ph.i.split.loopexit:                  ; preds = %for.body.i.prol
  %indvars.iv.next.i.prol.lcssa = phi i64 [ %indvars.iv.next.i.prol, %for.body.i.prol ]
  br label %for.body.lr.ph.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i, %for.body.lr.ph.i.split.loopexit
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i.prol.lcssa, %for.body.lr.ph.i.split.loopexit ]
  %127 = icmp ult i32 %sub.i, 3
  br i1 %127, label %flip_endian.exit.loopexit, label %for.body.lr.ph.i.split.split

for.body.lr.ph.i.split.split:                     ; preds = %for.body.lr.ph.i.split
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i.split.split
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %for.body.lr.ph.i.split.split ], [ %indvars.iv.next.i.3, %for.body.i ]
  %128 = trunc i64 %indvars.iv.i to i32
  %sub1.i = sub i32 %sub.i, %128
  %idxprom.i = zext i32 %sub1.i to i64
  %arrayidx.i = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i
  %129 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %arrayidx3.i = getelementptr inbounds [66 x i8], [66 x i8]* %118, i64 %conv669, i64 %indvars.iv.i
  store i8 %129, i8* %arrayidx3.i, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %130 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %130
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.1
  %131 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !17
  %arrayidx3.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %118, i64 %conv669, i64 %indvars.iv.next.i
  store i8 %131, i8* %arrayidx3.i.1, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %132 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %132
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.2
  %133 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !17
  %arrayidx3.i.2 = getelementptr inbounds [66 x i8], [66 x i8]* %118, i64 %conv669, i64 %indvars.iv.next.i.1
  store i8 %133, i8* %arrayidx3.i.2, align 1, !tbaa !17
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %134 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %134
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.3
  %135 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !17
  %arrayidx3.i.3 = getelementptr inbounds [66 x i8], [66 x i8]* %118, i64 %conv669, i64 %indvars.iv.next.i.2
  store i8 %135, i8* %arrayidx3.i.3, align 1, !tbaa !17
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv671.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond672.3 = icmp eq i32 %lftr.wideiv671.3, %num_bytes.0
  br i1 %exitcond672.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %flip_endian.exit.loopexit, %if.end.113
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 2
  %136 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call119 = call fastcc i32 @BN_to_felem(i64* %arraydecay118, %struct.bignum_st* %136)
  %tobool120 = icmp eq i32 %call119, 0
  br i1 %tobool120, label %err.loopexit, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %flip_endian.exit
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 3
  %137 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call123 = call fastcc i32 @BN_to_felem(i64* %arraydecay122, %struct.bignum_st* %137)
  %tobool124 = icmp eq i32 %call123, 0
  br i1 %tobool124, label %err.loopexit, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.121
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %p.0, i64 0, i32 4
  %138 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call127 = call fastcc i32 @BN_to_felem(i64* %arraydecay126, %struct.bignum_st* %138)
  %tobool128 = icmp eq i32 %call127, 0
  br i1 %tobool128, label %err.loopexit, label %if.end.130

if.end.130:                                       ; preds = %lor.lhs.false.125
  %arrayidx133 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 1
  %139 = bitcast [3 x [9 x i64]]* %arrayidx133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %5, i64 72, i32 8, i1 false)
  %arrayidx138 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 1, i64 1
  %140 = bitcast [9 x i64]* %arrayidx138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %140, i8* %6, i64 72, i32 8, i1 false)
  %arrayidx142 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 1, i64 2
  %141 = bitcast [9 x i64]* %arrayidx142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %7, i64 72, i32 8, i1 false)
  %arraydecay171 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %arrayidx133, i64 0, i64 0, i64 0
  %arraydecay176 = getelementptr inbounds [9 x i64], [9 x i64]* %arrayidx138, i64 0, i64 0
  %arraydecay181 = getelementptr inbounds [9 x i64], [9 x i64]* %arrayidx142, i64 0, i64 0
  br label %for.body.146

for.body.146:                                     ; preds = %for.inc, %if.end.130
  %indvars.iv = phi i64 [ 2, %if.end.130 ], [ %indvars.iv.next, %for.inc ]
  %142 = trunc i64 %indvars.iv to i32
  %and = and i32 %142, 1
  %tobool147 = icmp eq i32 %and, 0
  %arraydecay154 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %indvars.iv, i64 0, i64 0
  %arraydecay160 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %indvars.iv, i64 1, i64 0
  %arraydecay166 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %indvars.iv, i64 2, i64 0
  br i1 %tobool147, label %if.else.202, label %if.then.148

if.then.148:                                      ; preds = %for.body.146
  %143 = add nsw i64 %indvars.iv, -1
  %arraydecay187 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %143, i64 0, i64 0
  %arraydecay194 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %143, i64 1, i64 0
  %arraydecay201 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %143, i64 2, i64 0
  call fastcc void @point_add(i64* %arraydecay154, i64* %arraydecay160, i64* %arraydecay166, i64* %arraydecay171, i64* %arraydecay176, i64* %arraydecay181, i32 0, i64* %arraydecay187, i64* %arraydecay194, i64* %arraydecay201)
  br label %for.inc

if.else.202:                                      ; preds = %for.body.146
  %div = sdiv i32 %142, 2
  %idxprom221 = sext i32 %div to i64
  %arraydecay226 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %idxprom221, i64 0, i64 0
  %arraydecay233 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %idxprom221, i64 1, i64 0
  %arraydecay240 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %119, i64 %conv669, i64 %idxprom221, i64 2, i64 0
  call fastcc void @point_double(i64* %arraydecay154, i64* %arraydecay160, i64* %arraydecay166, i64* %arraydecay226, i64* %arraydecay233, i64* %arraydecay240)
  br label %for.inc

for.inc:                                          ; preds = %if.then.148, %if.else.202
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond674 = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond674, label %for.inc.244.loopexit, label %for.body.146

for.inc.244.loopexit:                             ; preds = %for.inc
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.inc.244.loopexit, %if.end.90
  %inc245 = add i32 %i.0668, 1
  %conv = zext i32 %inc245 to i64
  %cmp79 = icmp ult i64 %conv, %num_points.0
  br i1 %cmp79, label %for.body, label %for.end.246

for.end.246:                                      ; preds = %for.inc.244
  br i1 %cmp59, label %if.then.248, label %if.end.253

if.then.248:                                      ; preds = %for.end.246
  %mul249 = mul i64 %num_points.0, 17
  %144 = bitcast [9 x i64]* %tmp_felems.0 to i8*
  call void @ec_GFp_nistp_points_make_affine_internal(i64 %mul249, i8* %call64, i64 72, i8* %144, void (i8*)* bitcast (void (i64*)* @felem_one to void (i8*)*), i32 (i8*)* nonnull @felem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_square_reduce to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @felem_mul_reduce to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_inv to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_contract to void (i8*, i8*)*)) #1
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.56, %for.end.246, %if.then.248
  %mixed.1 = phi i32 [ 1, %if.then.248 ], [ 0, %for.end.246 ], [ 0, %if.end.56 ]
  %secrets.0 = phi [66 x i8]* [ %118, %if.then.248 ], [ %118, %for.end.246 ], [ null, %if.end.56 ]
  %pre_comp.0 = phi [17 x [3 x [9 x i64]]]* [ %119, %if.then.248 ], [ %119, %for.end.246 ], [ null, %if.end.56 ]
  %tmp_felems.1 = phi [9 x i64]* [ %tmp_felems.0, %if.then.248 ], [ %tmp_felems.0, %for.end.246 ], [ null, %if.end.56 ]
  %tobool257 = icmp ne i32 %have_pre_comp.0, 0
  %or.cond312 = and i1 %cmp19, %tobool257
  br i1 %or.cond312, label %if.then.258, label %if.else.284

if.then.258:                                      ; preds = %if.end.253
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 66, i32 16, i1 false)
  %call259 = call i32 @BN_num_bits(%struct.bignum_st* %scalar) #1
  %cmp260 = icmp sgt i32 %call259, 521
  br i1 %cmp260, label %if.then.265, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.then.258
  %call263 = call i32 @BN_is_negative(%struct.bignum_st* %scalar) #1
  %tobool264 = icmp eq i32 %call263, 0
  br i1 %tobool264, label %if.else.273, label %if.then.265

if.then.265:                                      ; preds = %lor.lhs.false.262, %if.then.258
  %order266 = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 2
  %145 = load %struct.bignum_st*, %struct.bignum_st** %order266, align 8, !tbaa !20
  %call267 = call i32 @BN_nnmod(%struct.bignum_st* %call18, %struct.bignum_st* %scalar, %struct.bignum_st* %145, %struct.bignum_ctx* %ctx) #1
  %tobool268 = icmp eq i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.then.265
  call void @ERR_put_error(i32 16, i32 234, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2008) #1
  br label %err

if.end.270:                                       ; preds = %if.then.265
  %call272 = call i32 @BN_bn2bin(%struct.bignum_st* %call18, i8* %1) #1
  br label %if.end.276

if.else.273:                                      ; preds = %lor.lhs.false.262
  %call275 = call i32 @BN_bn2bin(%struct.bignum_st* %scalar, i8* %1) #1
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.273, %if.end.270
  %num_bytes.1 = phi i32 [ %call272, %if.end.270 ], [ %call275, %if.else.273 ]
  %cmp.9.i.574 = icmp eq i32 %num_bytes.1, 0
  br i1 %cmp.9.i.574, label %flip_endian.exit586, label %for.body.lr.ph.i.576

for.body.lr.ph.i.576:                             ; preds = %if.end.276
  %sub.i.575 = add i32 %num_bytes.1, -1
  %xtraiter = and i32 %num_bytes.1, 3
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lr.ph.i.576.split, label %for.body.i.585.prol.preheader

for.body.i.585.prol.preheader:                    ; preds = %for.body.lr.ph.i.576
  br label %for.body.i.585.prol

for.body.i.585.prol:                              ; preds = %for.body.i.585.prol.preheader, %for.body.i.585.prol
  %indvars.iv.i.577.prol = phi i64 [ %indvars.iv.next.i.582.prol, %for.body.i.585.prol ], [ 0, %for.body.i.585.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.i.585.prol ], [ %xtraiter, %for.body.i.585.prol.preheader ]
  %146 = trunc i64 %indvars.iv.i.577.prol to i32
  %sub1.i.578.prol = sub i32 %sub.i.575, %146
  %idxprom.i.579.prol = zext i32 %sub1.i.578.prol to i64
  %arrayidx.i.580.prol = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.579.prol
  %147 = load i8, i8* %arrayidx.i.580.prol, align 1, !tbaa !17
  %arrayidx3.i.581.prol = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.577.prol
  store i8 %147, i8* %arrayidx3.i.581.prol, align 1, !tbaa !17
  %indvars.iv.next.i.582.prol = add nuw nsw i64 %indvars.iv.i.577.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.lr.ph.i.576.split.loopexit, label %for.body.i.585.prol, !llvm.loop !23

for.body.lr.ph.i.576.split.loopexit:              ; preds = %for.body.i.585.prol
  %indvars.iv.next.i.582.prol.lcssa = phi i64 [ %indvars.iv.next.i.582.prol, %for.body.i.585.prol ]
  br label %for.body.lr.ph.i.576.split

for.body.lr.ph.i.576.split:                       ; preds = %for.body.lr.ph.i.576.split.loopexit, %for.body.lr.ph.i.576
  %indvars.iv.i.577.unr = phi i64 [ 0, %for.body.lr.ph.i.576 ], [ %indvars.iv.next.i.582.prol.lcssa, %for.body.lr.ph.i.576.split.loopexit ]
  %148 = icmp ult i32 %sub.i.575, 3
  br i1 %148, label %flip_endian.exit586.loopexit, label %for.body.lr.ph.i.576.split.split

for.body.lr.ph.i.576.split.split:                 ; preds = %for.body.lr.ph.i.576.split
  br label %for.body.i.585

for.body.i.585:                                   ; preds = %for.body.i.585, %for.body.lr.ph.i.576.split.split
  %indvars.iv.i.577 = phi i64 [ %indvars.iv.i.577.unr, %for.body.lr.ph.i.576.split.split ], [ %indvars.iv.next.i.582.3, %for.body.i.585 ]
  %149 = trunc i64 %indvars.iv.i.577 to i32
  %sub1.i.578 = sub i32 %sub.i.575, %149
  %idxprom.i.579 = zext i32 %sub1.i.578 to i64
  %arrayidx.i.580 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.579
  %150 = load i8, i8* %arrayidx.i.580, align 1, !tbaa !17
  %arrayidx3.i.581 = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 %indvars.iv.i.577
  store i8 %150, i8* %arrayidx3.i.581, align 1, !tbaa !17
  %indvars.iv.next.i.582 = add nuw nsw i64 %indvars.iv.i.577, 1
  %151 = trunc i64 %indvars.iv.next.i.582 to i32
  %sub1.i.578.1 = sub i32 %sub.i.575, %151
  %idxprom.i.579.1 = zext i32 %sub1.i.578.1 to i64
  %arrayidx.i.580.1 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.579.1
  %152 = load i8, i8* %arrayidx.i.580.1, align 1, !tbaa !17
  %arrayidx3.i.581.1 = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.582
  store i8 %152, i8* %arrayidx3.i.581.1, align 1, !tbaa !17
  %indvars.iv.next.i.582.1 = add nsw i64 %indvars.iv.i.577, 2
  %153 = trunc i64 %indvars.iv.next.i.582.1 to i32
  %sub1.i.578.2 = sub i32 %sub.i.575, %153
  %idxprom.i.579.2 = zext i32 %sub1.i.578.2 to i64
  %arrayidx.i.580.2 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.579.2
  %154 = load i8, i8* %arrayidx.i.580.2, align 1, !tbaa !17
  %arrayidx3.i.581.2 = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.582.1
  store i8 %154, i8* %arrayidx3.i.581.2, align 1, !tbaa !17
  %indvars.iv.next.i.582.2 = add nsw i64 %indvars.iv.i.577, 3
  %155 = trunc i64 %indvars.iv.next.i.582.2 to i32
  %sub1.i.578.3 = sub i32 %sub.i.575, %155
  %idxprom.i.579.3 = zext i32 %sub1.i.578.3 to i64
  %arrayidx.i.580.3 = getelementptr inbounds [66 x i8], [66 x i8]* %tmp, i64 0, i64 %idxprom.i.579.3
  %156 = load i8, i8* %arrayidx.i.580.3, align 1, !tbaa !17
  %arrayidx3.i.581.3 = getelementptr inbounds [66 x i8], [66 x i8]* %g_secret, i64 0, i64 %indvars.iv.next.i.582.2
  store i8 %156, i8* %arrayidx3.i.581.3, align 1, !tbaa !17
  %indvars.iv.next.i.582.3 = add nsw i64 %indvars.iv.i.577, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.582.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %num_bytes.1
  br i1 %exitcond.3, label %flip_endian.exit586.loopexit.unr-lcssa, label %for.body.i.585

flip_endian.exit586.loopexit.unr-lcssa:           ; preds = %for.body.i.585
  br label %flip_endian.exit586.loopexit

flip_endian.exit586.loopexit:                     ; preds = %for.body.lr.ph.i.576.split, %flip_endian.exit586.loopexit.unr-lcssa
  br label %flip_endian.exit586

flip_endian.exit586:                              ; preds = %flip_endian.exit586.loopexit, %if.end.276
  %arraydecay279 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 0
  %arraydecay280 = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 0
  %arraydecay281 = getelementptr inbounds [9 x i64], [9 x i64]* %z_out, i64 0, i64 0
  %conv282 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i64* %arraydecay279, i64* %arraydecay280, i64* %arraydecay281, [66 x i8]* %secrets.0, i32 %conv282, i8* %0, i32 %mixed.1, [17 x [3 x [9 x i64]]]* %pre_comp.0, [3 x [9 x i64]]* %g_pre_comp.1)
  br label %if.end.289

if.else.284:                                      ; preds = %if.end.253
  %arraydecay285 = getelementptr inbounds [9 x i64], [9 x i64]* %x_out, i64 0, i64 0
  %arraydecay286 = getelementptr inbounds [9 x i64], [9 x i64]* %y_out, i64 0, i64 0
  %arraydecay287 = getelementptr inbounds [9 x i64], [9 x i64]* %z_out, i64 0, i64 0
  %conv288 = trunc i64 %num_points.0 to i32
  call fastcc void @batch_mul(i64* %arraydecay285, i64* %arraydecay286, i64* %arraydecay287, [66 x i8]* %secrets.0, i32 %conv288, i8* null, i32 %mixed.1, [17 x [3 x [9 x i64]]]* %pre_comp.0, [3 x [9 x i64]]* null)
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.284, %flip_endian.exit586
  %arraydecay295.pre-phi = phi i64* [ %arraydecay287, %if.else.284 ], [ %arraydecay281, %flip_endian.exit586 ]
  %arraydecay293.pre-phi = phi i64* [ %arraydecay286, %if.else.284 ], [ %arraydecay280, %flip_endian.exit586 ]
  %arraydecay291.pre-phi = phi i64* [ %arraydecay285, %if.else.284 ], [ %arraydecay279, %flip_endian.exit586 ]
  %arraydecay290 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 0
  call void @felem_contract(i64* %arraydecay290, i64* %arraydecay291.pre-phi)
  %arraydecay292 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 0
  call void @felem_contract(i64* %arraydecay292, i64* %arraydecay293.pre-phi)
  %arraydecay294 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 0
  call void @felem_contract(i64* %arraydecay294, i64* %arraydecay295.pre-phi)
  %157 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %157) #1
  %158 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %158) #1
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 66, i32 16, i1 false) #1
  %159 = load i64, i64* %arraydecay290, align 16, !tbaa !6
  %160 = bitcast [66 x i8]* %b_in.i to i64*
  store i64 %159, i64* %160, align 16, !tbaa !6
  %arrayidx2.i.i.628 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 1
  %161 = load i64, i64* %arrayidx2.i.i.628, align 8, !tbaa !6
  %shl.i.i.629 = shl i64 %161, 2
  %arrayidx3.i.i.630 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 7
  %162 = bitcast i8* %arrayidx3.i.i.630 to i64*
  %163 = load i64, i64* %162, align 8, !tbaa !6
  %or.i.i.631 = or i64 %163, %shl.i.i.629
  store i64 %or.i.i.631, i64* %162, align 8, !tbaa !6
  %arrayidx4.i.i.632 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 2
  %164 = load i64, i64* %arrayidx4.i.i.632, align 16, !tbaa !6
  %shl5.i.i.633 = shl i64 %164, 4
  %arrayidx6.i.i.634 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 14
  %165 = bitcast i8* %arrayidx6.i.i.634 to i64*
  %166 = load i64, i64* %165, align 8, !tbaa !6
  %or7.i.i.635 = or i64 %166, %shl5.i.i.633
  store i64 %or7.i.i.635, i64* %165, align 8, !tbaa !6
  %arrayidx8.i.i.636 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 3
  %167 = load i64, i64* %arrayidx8.i.i.636, align 8, !tbaa !6
  %shl9.i.i.637 = shl i64 %167, 6
  %arrayidx10.i.i.638 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 21
  %168 = bitcast i8* %arrayidx10.i.i.638 to i64*
  %169 = load i64, i64* %168, align 8, !tbaa !6
  %or11.i.i.639 = or i64 %169, %shl9.i.i.637
  store i64 %or11.i.i.639, i64* %168, align 8, !tbaa !6
  %arrayidx12.i.i.640 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 4
  %170 = load i64, i64* %arrayidx12.i.i.640, align 16, !tbaa !6
  %arrayidx13.i.i.641 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 29
  %171 = bitcast i8* %arrayidx13.i.i.641 to i64*
  store i64 %170, i64* %171, align 8, !tbaa !6
  %arrayidx14.i.i.642 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 5
  %172 = load i64, i64* %arrayidx14.i.i.642, align 8, !tbaa !6
  %shl15.i.i.643 = shl i64 %172, 2
  %arrayidx16.i.i.644 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 36
  %173 = bitcast i8* %arrayidx16.i.i.644 to i64*
  %174 = load i64, i64* %173, align 8, !tbaa !6
  %or17.i.i.645 = or i64 %174, %shl15.i.i.643
  store i64 %or17.i.i.645, i64* %173, align 8, !tbaa !6
  %arrayidx18.i.i.646 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 6
  %175 = load i64, i64* %arrayidx18.i.i.646, align 16, !tbaa !6
  %shl19.i.i.647 = shl i64 %175, 4
  %arrayidx20.i.i.648 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 43
  %176 = bitcast i8* %arrayidx20.i.i.648 to i64*
  %177 = load i64, i64* %176, align 8, !tbaa !6
  %or21.i.i.649 = or i64 %177, %shl19.i.i.647
  store i64 %or21.i.i.649, i64* %176, align 8, !tbaa !6
  %arrayidx22.i.i.650 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 7
  %178 = load i64, i64* %arrayidx22.i.i.650, align 8, !tbaa !6
  %shl23.i.i.651 = shl i64 %178, 6
  %arrayidx24.i.i.652 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %179 = bitcast i8* %arrayidx24.i.i.652 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !6
  %or25.i.i.653 = or i64 %180, %shl23.i.i.651
  store i64 %or25.i.i.653, i64* %179, align 8, !tbaa !6
  %arrayidx26.i.i.654 = getelementptr inbounds [9 x i64], [9 x i64]* %x_in, i64 0, i64 8
  %181 = load i64, i64* %arrayidx26.i.i.654, align 16, !tbaa !6
  %arrayidx27.i.i.655 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 58
  %182 = bitcast i8* %arrayidx27.i.i.655 to i64*
  store i64 %181, i64* %182, align 8, !tbaa !6
  br label %vector.body712

vector.body712:                                   ; preds = %if.end.289
  %183 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %184 = bitcast i8* %183 to <16 x i8>*
  %wide.load727 = load <16 x i8>, <16 x i8>* %184, align 2, !tbaa !17
  %reverse728 = shufflevector <16 x i8> %wide.load727, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %185 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse728, <16 x i8>* %185, align 16, !tbaa !17
  %186 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %187 = bitcast i8* %186 to <16 x i8>*
  %wide.load727.1 = load <16 x i8>, <16 x i8>* %187, align 2, !tbaa !17
  %reverse728.1 = shufflevector <16 x i8> %wide.load727.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %188 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %189 = bitcast i8* %188 to <16 x i8>*
  store <16 x i8> %reverse728.1, <16 x i8>* %189, align 16, !tbaa !17
  %190 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %191 = bitcast i8* %190 to <16 x i8>*
  %wide.load727.2 = load <16 x i8>, <16 x i8>* %191, align 2, !tbaa !17
  %reverse728.2 = shufflevector <16 x i8> %wide.load727.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %192 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %193 = bitcast i8* %192 to <16 x i8>*
  store <16 x i8> %reverse728.2, <16 x i8>* %193, align 16, !tbaa !17
  %194 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %195 = bitcast i8* %194 to <16 x i8>*
  %wide.load727.3 = load <16 x i8>, <16 x i8>* %195, align 2, !tbaa !17
  %reverse728.3 = shufflevector <16 x i8> %wide.load727.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %196 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %197 = bitcast i8* %196 to <16 x i8>*
  store <16 x i8> %reverse728.3, <16 x i8>* %197, align 16, !tbaa !17
  br label %for.body.i.i.662

for.body.i.i.662:                                 ; preds = %vector.body712
  %arrayidx.i.i.658 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %198 = load i8, i8* %arrayidx.i.i.658, align 1, !tbaa !17
  %arrayidx3.i.4.i.659 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %198, i8* %arrayidx3.i.4.i.659, align 16, !tbaa !17
  %arrayidx.i.i.658.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %199 = load i8, i8* %arrayidx.i.i.658.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.659.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %199, i8* %arrayidx3.i.4.i.659.1, align 1, !tbaa !17
  %call.i.663 = call %struct.bignum_st* @BN_bin2bn(i8* %158, i32 66, %struct.bignum_st* %call) #1
  call void @llvm.lifetime.end(i64 66, i8* %158) #1
  call void @llvm.lifetime.end(i64 66, i8* %157) #1
  %tobool298 = icmp eq %struct.bignum_st* %call.i.663, null
  br i1 %tobool298, label %if.then.307, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %for.body.i.i.662
  call void @llvm.lifetime.start(i64 66, i8* %157) #1
  call void @llvm.lifetime.start(i64 66, i8* %158) #1
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 66, i32 16, i1 false) #1
  %200 = load i64, i64* %arraydecay292, align 16, !tbaa !6
  store i64 %200, i64* %160, align 16, !tbaa !6
  %arrayidx2.i.i.589 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 1
  %201 = load i64, i64* %arrayidx2.i.i.589, align 8, !tbaa !6
  %shl.i.i.590 = shl i64 %201, 2
  %202 = load i64, i64* %162, align 8, !tbaa !6
  %or.i.i.592 = or i64 %202, %shl.i.i.590
  store i64 %or.i.i.592, i64* %162, align 8, !tbaa !6
  %arrayidx4.i.i.593 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 2
  %203 = load i64, i64* %arrayidx4.i.i.593, align 16, !tbaa !6
  %shl5.i.i.594 = shl i64 %203, 4
  %204 = load i64, i64* %165, align 8, !tbaa !6
  %or7.i.i.596 = or i64 %204, %shl5.i.i.594
  store i64 %or7.i.i.596, i64* %165, align 8, !tbaa !6
  %arrayidx8.i.i.597 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 3
  %205 = load i64, i64* %arrayidx8.i.i.597, align 8, !tbaa !6
  %shl9.i.i.598 = shl i64 %205, 6
  %206 = load i64, i64* %168, align 8, !tbaa !6
  %or11.i.i.600 = or i64 %206, %shl9.i.i.598
  store i64 %or11.i.i.600, i64* %168, align 8, !tbaa !6
  %arrayidx12.i.i.601 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 4
  %207 = load i64, i64* %arrayidx12.i.i.601, align 16, !tbaa !6
  store i64 %207, i64* %171, align 8, !tbaa !6
  %arrayidx14.i.i.603 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 5
  %208 = load i64, i64* %arrayidx14.i.i.603, align 8, !tbaa !6
  %shl15.i.i.604 = shl i64 %208, 2
  %209 = load i64, i64* %173, align 8, !tbaa !6
  %or17.i.i.606 = or i64 %209, %shl15.i.i.604
  store i64 %or17.i.i.606, i64* %173, align 8, !tbaa !6
  %arrayidx18.i.i.607 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 6
  %210 = load i64, i64* %arrayidx18.i.i.607, align 16, !tbaa !6
  %shl19.i.i.608 = shl i64 %210, 4
  %211 = load i64, i64* %176, align 8, !tbaa !6
  %or21.i.i.610 = or i64 %211, %shl19.i.i.608
  store i64 %or21.i.i.610, i64* %176, align 8, !tbaa !6
  %arrayidx22.i.i.611 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 7
  %212 = load i64, i64* %arrayidx22.i.i.611, align 8, !tbaa !6
  %shl23.i.i.612 = shl i64 %212, 6
  %213 = load i64, i64* %179, align 8, !tbaa !6
  %or25.i.i.614 = or i64 %213, %shl23.i.i.612
  store i64 %or25.i.i.614, i64* %179, align 8, !tbaa !6
  %arrayidx26.i.i.615 = getelementptr inbounds [9 x i64], [9 x i64]* %y_in, i64 0, i64 8
  %214 = load i64, i64* %arrayidx26.i.i.615, align 16, !tbaa !6
  store i64 %214, i64* %182, align 8, !tbaa !6
  br label %vector.body730

vector.body730:                                   ; preds = %lor.lhs.false.299
  %215 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %216 = bitcast i8* %215 to <16 x i8>*
  %wide.load745 = load <16 x i8>, <16 x i8>* %216, align 2, !tbaa !17
  %reverse746 = shufflevector <16 x i8> %wide.load745, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %217 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse746, <16 x i8>* %217, align 16, !tbaa !17
  %218 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %219 = bitcast i8* %218 to <16 x i8>*
  %wide.load745.1 = load <16 x i8>, <16 x i8>* %219, align 2, !tbaa !17
  %reverse746.1 = shufflevector <16 x i8> %wide.load745.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %220 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %221 = bitcast i8* %220 to <16 x i8>*
  store <16 x i8> %reverse746.1, <16 x i8>* %221, align 16, !tbaa !17
  %222 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %223 = bitcast i8* %222 to <16 x i8>*
  %wide.load745.2 = load <16 x i8>, <16 x i8>* %223, align 2, !tbaa !17
  %reverse746.2 = shufflevector <16 x i8> %wide.load745.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %224 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %225 = bitcast i8* %224 to <16 x i8>*
  store <16 x i8> %reverse746.2, <16 x i8>* %225, align 16, !tbaa !17
  %226 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %227 = bitcast i8* %226 to <16 x i8>*
  %wide.load745.3 = load <16 x i8>, <16 x i8>* %227, align 2, !tbaa !17
  %reverse746.3 = shufflevector <16 x i8> %wide.load745.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %228 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %229 = bitcast i8* %228 to <16 x i8>*
  store <16 x i8> %reverse746.3, <16 x i8>* %229, align 16, !tbaa !17
  br label %for.body.i.i.623

for.body.i.i.623:                                 ; preds = %vector.body730
  %arrayidx.i.i.619 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %230 = load i8, i8* %arrayidx.i.i.619, align 1, !tbaa !17
  %arrayidx3.i.4.i.620 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %230, i8* %arrayidx3.i.4.i.620, align 16, !tbaa !17
  %arrayidx.i.i.619.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %231 = load i8, i8* %arrayidx.i.i.619.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.620.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %231, i8* %arrayidx3.i.4.i.620.1, align 1, !tbaa !17
  %call.i.624 = call %struct.bignum_st* @BN_bin2bn(i8* %158, i32 66, %struct.bignum_st* %call16) #1
  call void @llvm.lifetime.end(i64 66, i8* %158) #1
  call void @llvm.lifetime.end(i64 66, i8* %157) #1
  %tobool302 = icmp eq %struct.bignum_st* %call.i.624, null
  br i1 %tobool302, label %if.then.307, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %for.body.i.i.623
  call void @llvm.lifetime.start(i64 66, i8* %157) #1
  call void @llvm.lifetime.start(i64 66, i8* %158) #1
  call void @llvm.memset.p0i8.i64(i8* %157, i8 0, i64 66, i32 16, i1 false) #1
  %232 = load i64, i64* %arraydecay294, align 16, !tbaa !6
  store i64 %232, i64* %160, align 16, !tbaa !6
  %arrayidx2.i.i.537 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 1
  %233 = load i64, i64* %arrayidx2.i.i.537, align 8, !tbaa !6
  %shl.i.i.538 = shl i64 %233, 2
  %234 = load i64, i64* %162, align 8, !tbaa !6
  %or.i.i.540 = or i64 %234, %shl.i.i.538
  store i64 %or.i.i.540, i64* %162, align 8, !tbaa !6
  %arrayidx4.i.i.541 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 2
  %235 = load i64, i64* %arrayidx4.i.i.541, align 16, !tbaa !6
  %shl5.i.i.542 = shl i64 %235, 4
  %236 = load i64, i64* %165, align 8, !tbaa !6
  %or7.i.i.544 = or i64 %236, %shl5.i.i.542
  store i64 %or7.i.i.544, i64* %165, align 8, !tbaa !6
  %arrayidx8.i.i.545 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 3
  %237 = load i64, i64* %arrayidx8.i.i.545, align 8, !tbaa !6
  %shl9.i.i.546 = shl i64 %237, 6
  %238 = load i64, i64* %168, align 8, !tbaa !6
  %or11.i.i.548 = or i64 %238, %shl9.i.i.546
  store i64 %or11.i.i.548, i64* %168, align 8, !tbaa !6
  %arrayidx12.i.i.549 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 4
  %239 = load i64, i64* %arrayidx12.i.i.549, align 16, !tbaa !6
  store i64 %239, i64* %171, align 8, !tbaa !6
  %arrayidx14.i.i.551 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 5
  %240 = load i64, i64* %arrayidx14.i.i.551, align 8, !tbaa !6
  %shl15.i.i.552 = shl i64 %240, 2
  %241 = load i64, i64* %173, align 8, !tbaa !6
  %or17.i.i.554 = or i64 %241, %shl15.i.i.552
  store i64 %or17.i.i.554, i64* %173, align 8, !tbaa !6
  %arrayidx18.i.i.555 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 6
  %242 = load i64, i64* %arrayidx18.i.i.555, align 16, !tbaa !6
  %shl19.i.i.556 = shl i64 %242, 4
  %243 = load i64, i64* %176, align 8, !tbaa !6
  %or21.i.i.558 = or i64 %243, %shl19.i.i.556
  store i64 %or21.i.i.558, i64* %176, align 8, !tbaa !6
  %arrayidx22.i.i.559 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 7
  %244 = load i64, i64* %arrayidx22.i.i.559, align 8, !tbaa !6
  %shl23.i.i.560 = shl i64 %244, 6
  %245 = load i64, i64* %179, align 8, !tbaa !6
  %or25.i.i.562 = or i64 %245, %shl23.i.i.560
  store i64 %or25.i.i.562, i64* %179, align 8, !tbaa !6
  %arrayidx26.i.i.563 = getelementptr inbounds [9 x i64], [9 x i64]* %z_in, i64 0, i64 8
  %246 = load i64, i64* %arrayidx26.i.i.563, align 16, !tbaa !6
  store i64 %246, i64* %182, align 8, !tbaa !6
  br label %vector.body748

vector.body748:                                   ; preds = %lor.lhs.false.303
  %247 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 50
  %248 = bitcast i8* %247 to <16 x i8>*
  %wide.load763 = load <16 x i8>, <16 x i8>* %248, align 2, !tbaa !17
  %reverse764 = shufflevector <16 x i8> %wide.load763, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %249 = bitcast [66 x i8]* %b_out.i to <16 x i8>*
  store <16 x i8> %reverse764, <16 x i8>* %249, align 16, !tbaa !17
  %250 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 34
  %251 = bitcast i8* %250 to <16 x i8>*
  %wide.load763.1 = load <16 x i8>, <16 x i8>* %251, align 2, !tbaa !17
  %reverse764.1 = shufflevector <16 x i8> %wide.load763.1, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %252 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 16
  %253 = bitcast i8* %252 to <16 x i8>*
  store <16 x i8> %reverse764.1, <16 x i8>* %253, align 16, !tbaa !17
  %254 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 18
  %255 = bitcast i8* %254 to <16 x i8>*
  %wide.load763.2 = load <16 x i8>, <16 x i8>* %255, align 2, !tbaa !17
  %reverse764.2 = shufflevector <16 x i8> %wide.load763.2, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %256 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 32
  %257 = bitcast i8* %256 to <16 x i8>*
  store <16 x i8> %reverse764.2, <16 x i8>* %257, align 16, !tbaa !17
  %258 = getelementptr [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 2
  %259 = bitcast i8* %258 to <16 x i8>*
  %wide.load763.3 = load <16 x i8>, <16 x i8>* %259, align 2, !tbaa !17
  %reverse764.3 = shufflevector <16 x i8> %wide.load763.3, <16 x i8> undef, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %260 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 48
  %261 = bitcast i8* %260 to <16 x i8>*
  store <16 x i8> %reverse764.3, <16 x i8>* %261, align 16, !tbaa !17
  br label %for.body.i.i.571

for.body.i.i.571:                                 ; preds = %vector.body748
  %arrayidx.i.i.567 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 1
  %262 = load i8, i8* %arrayidx.i.i.567, align 1, !tbaa !17
  %arrayidx3.i.4.i.568 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 64
  store i8 %262, i8* %arrayidx3.i.4.i.568, align 16, !tbaa !17
  %arrayidx.i.i.567.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in.i, i64 0, i64 0
  %263 = load i8, i8* %arrayidx.i.i.567.1, align 16, !tbaa !17
  %arrayidx3.i.4.i.568.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out.i, i64 0, i64 65
  store i8 %263, i8* %arrayidx3.i.4.i.568.1, align 1, !tbaa !17
  %call.i.572 = call %struct.bignum_st* @BN_bin2bn(i8* %158, i32 66, %struct.bignum_st* %call17) #1
  call void @llvm.lifetime.end(i64 66, i8* %158) #1
  call void @llvm.lifetime.end(i64 66, i8* %157) #1
  %tobool306 = icmp eq %struct.bignum_st* %call.i.572, null
  br i1 %tobool306, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %for.body.i.i.571, %for.body.i.i.623, %for.body.i.i.662
  call void @ERR_put_error(i32 16, i32 234, i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2032) #1
  br label %err

if.end.308:                                       ; preds = %for.body.i.i.571
  %call309 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %r, %struct.bignum_st* %call, %struct.bignum_st* %call16, %struct.bignum_st* %call17, %struct.bignum_ctx* %ctx) #1
  br label %err

err.loopexit:                                     ; preds = %flip_endian.exit, %lor.lhs.false.121, %lor.lhs.false.125
  br label %err

err:                                              ; preds = %err.loopexit, %if.end.45, %if.then.20, %entry, %if.end.308, %if.then.307, %if.then.269, %if.then.106, %if.then.77, %if.then.44
  %ret.0 = phi i32 [ 0, %entry ], [ 0, %if.then.20 ], [ 0, %if.then.77 ], [ 0, %if.then.106 ], [ %call309, %if.end.308 ], [ 0, %if.then.307 ], [ 0, %if.then.269 ], [ 0, %if.end.45 ], [ 0, %if.then.44 ], [ 0, %err.loopexit ]
  %secrets.1 = phi [66 x i8]* [ null, %entry ], [ null, %if.then.20 ], [ %118, %if.then.77 ], [ %118, %if.then.106 ], [ %secrets.0, %if.end.308 ], [ %secrets.0, %if.then.307 ], [ %secrets.0, %if.then.269 ], [ null, %if.end.45 ], [ null, %if.then.44 ], [ %118, %err.loopexit ]
  %pre_comp.1 = phi [17 x [3 x [9 x i64]]]* [ null, %entry ], [ null, %if.then.20 ], [ %119, %if.then.77 ], [ %119, %if.then.106 ], [ %pre_comp.0, %if.end.308 ], [ %pre_comp.0, %if.then.307 ], [ %pre_comp.0, %if.then.269 ], [ null, %if.end.45 ], [ null, %if.then.44 ], [ %119, %err.loopexit ]
  %tmp_felems.2 = phi [9 x i64]* [ null, %entry ], [ null, %if.then.20 ], [ %tmp_felems.0, %if.then.77 ], [ %tmp_felems.0, %if.then.106 ], [ %tmp_felems.1, %if.end.308 ], [ %tmp_felems.1, %if.then.307 ], [ %tmp_felems.1, %if.then.269 ], [ null, %if.end.45 ], [ null, %if.then.44 ], [ %tmp_felems.0, %err.loopexit ]
  %generator.1 = phi %struct.ec_point_st* [ null, %entry ], [ null, %if.then.20 ], [ %generator.0, %if.then.77 ], [ %generator.0, %if.then.106 ], [ %generator.0, %if.end.308 ], [ %generator.0, %if.then.307 ], [ %generator.0, %if.then.269 ], [ %call25, %if.end.45 ], [ %call25, %if.then.44 ], [ %generator.0, %err.loopexit ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx) #1
  call void @EC_POINT_free(%struct.ec_point_st* %generator.1) #1
  %264 = getelementptr inbounds [66 x i8], [66 x i8]* %secrets.1, i64 0, i64 0
  call void @CRYPTO_free(i8* %264, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2040) #1
  %265 = bitcast [17 x [3 x [9 x i64]]]* %pre_comp.1 to i8*
  call void @CRYPTO_free(i8* %265, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2041) #1
  %266 = bitcast [9 x i64]* %tmp_felems.2 to i8*
  call void @CRYPTO_free(i8* %266, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 2042) #1
  call void @llvm.lifetime.end(i64 72, i8* %7) #1
  call void @llvm.lifetime.end(i64 72, i8* %6) #1
  call void @llvm.lifetime.end(i64 72, i8* %5) #1
  call void @llvm.lifetime.end(i64 72, i8* %4) #1
  call void @llvm.lifetime.end(i64 72, i8* %3) #1
  call void @llvm.lifetime.end(i64 72, i8* %2) #1
  call void @llvm.lifetime.end(i64 66, i8* %1) #1
  call void @llvm.lifetime.end(i64 66, i8* %0) #1
  ret i32 %ret.0
}

; Function Attrs: nounwind uwtable
define i32 @ec_GFp_nistp521_precompute_mult(%struct.ec_group_st* %group, %struct.bignum_ctx* %ctx) #0 {
entry:
  %tmp_felems = alloca [16 x [9 x i64]], align 16
  %0 = bitcast [16 x [9 x i64]]* %tmp_felems to i8*
  call void @llvm.lifetime.start(i64 1152, i8* %0) #1
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
  %1 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %cmp10 = icmp eq %struct.ec_point_st* %1, null
  br i1 %cmp10, label %err, label %if.end.12

if.end.12:                                        ; preds = %if.end.8
  %call13 = tail call %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st* %group) #1
  %cmp14 = icmp eq %struct.ec_point_st* %call13, null
  br i1 %cmp14, label %err, label %if.end.16

if.end.16:                                        ; preds = %if.end.12
  %call17 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [66 x i8]], [5 x [66 x i8]]* @nistp521_curve_params, i64 0, i64 3, i64 0), i32 66, %struct.bignum_st* %call4) #1
  %call18 = tail call %struct.bignum_st* @BN_bin2bn(i8* getelementptr inbounds ([5 x [66 x i8]], [5 x [66 x i8]]* @nistp521_curve_params, i64 0, i64 4, i64 0), i32 66, %struct.bignum_st* %call5) #1
  %call19 = tail call i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.bignum_st* %call4, %struct.bignum_st* %call5, %struct.bignum_ctx* %ctx.addr.0) #1
  %tobool = icmp eq i32 %call19, 0
  br i1 %tobool, label %err, label %if.end.21

if.end.21:                                        ; preds = %if.end.16
  %call.i = tail call i8* @CRYPTO_zalloc(i64 3472, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1679) #1
  %2 = bitcast i8* %call.i to %struct.nistp521_pre_comp_st*
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %nistp521_pre_comp_new.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end.21
  %references.i = getelementptr inbounds i8, i8* %call.i, i64 3456
  %3 = bitcast i8* %references.i to i32*
  store i32 1, i32* %3, align 4, !tbaa !24
  %call1.i = tail call i8* @CRYPTO_THREAD_lock_new() #1
  %lock.i = getelementptr inbounds i8, i8* %call.i, i64 3464
  %4 = bitcast i8* %lock.i to i8**
  store i8* %call1.i, i8** %4, align 8, !tbaa !26
  %cmp3.i = icmp eq i8* %call1.i, null
  br i1 %cmp3.i, label %nistp521_pre_comp_new.exit.thread, label %if.end.25

nistp521_pre_comp_new.exit.thread:                ; preds = %if.end.i
  tail call void @ERR_put_error(i32 16, i32 237, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1690) #1
  tail call void @CRYPTO_free(i8* %call.i, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1691) #1
  br label %err

nistp521_pre_comp_new.exit:                       ; preds = %if.end.21
  tail call void @ERR_put_error(i32 16, i32 237, i32 65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1682) #1
  br label %err

if.end.25:                                        ; preds = %if.end.i
  %5 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %call27 = tail call i32 @EC_POINT_cmp(%struct.ec_group_st* %group, %struct.ec_point_st* %call13, %struct.ec_point_st* %5, %struct.bignum_ctx* %ctx.addr.0) #1
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* bitcast ([16 x [3 x [9 x i64]]]* @gmul to i8*), i64 3456, i32 8, i1 false)
  br label %done

if.end.30:                                        ; preds = %if.end.25
  %arrayidx = getelementptr inbounds i8, i8* %call.i, i64 216
  %arraydecay = bitcast i8* %arrayidx to i64*
  %6 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %X = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %6, i64 0, i32 2
  %7 = load %struct.bignum_st*, %struct.bignum_st** %X, align 8, !tbaa !13
  %call34 = tail call fastcc i32 @BN_to_felem(i64* %arraydecay, %struct.bignum_st* %7)
  %tobool35 = icmp eq i32 %call34, 0
  br i1 %tobool35, label %err, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %arraydecay39 = getelementptr inbounds i8, i8* %call.i, i64 288
  %8 = bitcast i8* %arraydecay39 to i64*
  %9 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Y = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %9, i64 0, i32 3
  %10 = load %struct.bignum_st*, %struct.bignum_st** %Y, align 8, !tbaa !15
  %call41 = tail call fastcc i32 @BN_to_felem(i64* %8, %struct.bignum_st* %10)
  %tobool42 = icmp eq i32 %call41, 0
  br i1 %tobool42, label %err, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false
  %arraydecay47 = getelementptr inbounds i8, i8* %call.i, i64 360
  %11 = bitcast i8* %arraydecay47 to i64*
  %12 = load %struct.ec_point_st*, %struct.ec_point_st** %generator9, align 8, !tbaa !19
  %Z = getelementptr inbounds %struct.ec_point_st, %struct.ec_point_st* %12, i64 0, i32 4
  %13 = load %struct.bignum_st*, %struct.bignum_st** %Z, align 8, !tbaa !16
  %call49 = tail call fastcc i32 @BN_to_felem(i64* %11, %struct.bignum_st* %13)
  %tobool50 = icmp eq i32 %call49, 0
  br i1 %tobool50, label %err, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lor.lhs.false.43
  %arraydecay57 = getelementptr inbounds i8, i8* %call.i, i64 432
  %14 = bitcast i8* %arraydecay57 to i64*
  %arraydecay63 = getelementptr inbounds i8, i8* %call.i, i64 504
  %15 = bitcast i8* %arraydecay63 to i64*
  %arraydecay69 = getelementptr inbounds i8, i8* %call.i, i64 576
  %16 = bitcast i8* %arraydecay69 to i64*
  %arraydecay74 = getelementptr inbounds i8, i8* %call.i, i64 216
  %17 = bitcast i8* %arraydecay74 to i64*
  %arraydecay79 = getelementptr inbounds i8, i8* %call.i, i64 288
  %18 = bitcast i8* %arraydecay79 to i64*
  %arraydecay84 = getelementptr inbounds i8, i8* %call.i, i64 360
  %19 = bitcast i8* %arraydecay84 to i64*
  tail call fastcc void @point_double(i64* %14, i64* %15, i64* %16, i64* %17, i64* %18, i64* %19)
  br label %for.body.87

for.body.87:                                      ; preds = %for.body.87, %for.cond.preheader
  %j.0463 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.87 ]
  tail call fastcc void @point_double(i64* %14, i64* %15, i64* %16, i64* %14, i64* %15, i64* %16)
  %inc = add nuw nsw i32 %j.0463, 1
  %exitcond = icmp eq i32 %inc, 129
  br i1 %exitcond, label %for.inc.124, label %for.body.87

for.inc.124:                                      ; preds = %for.body.87
  %arraydecay57.1 = getelementptr inbounds i8, i8* %call.i, i64 864
  %20 = bitcast i8* %arraydecay57.1 to i64*
  %arraydecay63.1 = getelementptr inbounds i8, i8* %call.i, i64 936
  %21 = bitcast i8* %arraydecay63.1 to i64*
  %arraydecay69.1 = getelementptr inbounds i8, i8* %call.i, i64 1008
  %22 = bitcast i8* %arraydecay69.1 to i64*
  tail call fastcc void @point_double(i64* %20, i64* %21, i64* %22, i64* %14, i64* %15, i64* %16)
  br label %for.body.87.1

done:                                             ; preds = %for.inc.124.2, %if.then.29
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  store i32 3, i32* %pre_comp_type, align 4, !tbaa !27
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %23 = bitcast %union.anon* %pre_comp to i8**
  store i8* %call.i, i8** %23, align 8, !tbaa !18
  br label %err

err:                                              ; preds = %nistp521_pre_comp_new.exit, %nistp521_pre_comp_new.exit.thread, %lor.lhs.false.43, %lor.lhs.false, %if.end.30, %if.end.16, %if.end.12, %if.end.8, %if.end.3, %done
  %ret.0 = phi i32 [ 0, %if.end.3 ], [ 0, %if.end.8 ], [ 0, %if.end.12 ], [ 0, %nistp521_pre_comp_new.exit ], [ 1, %done ], [ 0, %lor.lhs.false.43 ], [ 0, %lor.lhs.false ], [ 0, %if.end.30 ], [ 0, %if.end.16 ], [ 0, %nistp521_pre_comp_new.exit.thread ]
  %pre.0 = phi %struct.nistp521_pre_comp_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ null, %nistp521_pre_comp_new.exit ], [ null, %done ], [ %2, %lor.lhs.false.43 ], [ %2, %lor.lhs.false ], [ %2, %if.end.30 ], [ null, %if.end.16 ], [ null, %nistp521_pre_comp_new.exit.thread ]
  %generator.0 = phi %struct.ec_point_st* [ null, %if.end.3 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ %call13, %nistp521_pre_comp_new.exit ], [ %call13, %done ], [ %call13, %lor.lhs.false.43 ], [ %call13, %lor.lhs.false ], [ %call13, %if.end.30 ], [ %call13, %if.end.16 ], [ %call13, %nistp521_pre_comp_new.exit.thread ]
  call void @BN_CTX_end(%struct.bignum_ctx* %ctx.addr.0) #1
  call void @EC_POINT_free(%struct.ec_point_st* %generator.0) #1
  call void @BN_CTX_free(%struct.bignum_ctx* %new_ctx.0) #1
  %cmp.i.453 = icmp eq %struct.nistp521_pre_comp_st* %pre.0, null
  br i1 %cmp.i.453, label %cleanup, label %if.end.i.455

if.end.i.455:                                     ; preds = %err
  %references.i.454 = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %pre.0, i64 0, i32 1
  %24 = atomicrmw sub i32* %references.i.454, i32 1 release
  %cmp.i.i = icmp eq i32 %24, 1
  br i1 %cmp.i.i, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %if.end.i.455
  fence acquire
  br label %if.end.3.i

CRYPTO_DOWN_REF.exit.i:                           ; preds = %if.end.i.455
  %cmp1.i = icmp sgt i32 %24, 1
  br i1 %cmp1.i, label %cleanup, label %if.end.3.i

if.end.3.i:                                       ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %lock.i.456 = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %pre.0, i64 0, i32 2
  %25 = load i8*, i8** %lock.i.456, align 8, !tbaa !26
  call void @CRYPTO_THREAD_lock_free(i8* %25) #1
  %26 = bitcast %struct.nistp521_pre_comp_st* %pre.0 to i8*
  call void @CRYPTO_free(i8* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1719) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end.3.i, %CRYPTO_DOWN_REF.exit.i, %err, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %ret.0, %err ], [ %ret.0, %CRYPTO_DOWN_REF.exit.i ], [ %ret.0, %if.end.3.i ]
  call void @llvm.lifetime.end(i64 1152, i8* %0) #1
  ret i32 %retval.0

for.body.87.1:                                    ; preds = %for.body.87.1, %for.inc.124
  %j.0463.1 = phi i32 [ 0, %for.inc.124 ], [ %inc.1, %for.body.87.1 ]
  tail call fastcc void @point_double(i64* %20, i64* %21, i64* %22, i64* %20, i64* %21, i64* %22)
  %inc.1 = add nuw nsw i32 %j.0463.1, 1
  %exitcond.1 = icmp eq i32 %inc.1, 129
  br i1 %exitcond.1, label %for.inc.124.1, label %for.body.87.1

for.inc.124.1:                                    ; preds = %for.body.87.1
  %arraydecay57.2 = getelementptr inbounds i8, i8* %call.i, i64 1728
  %27 = bitcast i8* %arraydecay57.2 to i64*
  %arraydecay63.2 = getelementptr inbounds i8, i8* %call.i, i64 1800
  %28 = bitcast i8* %arraydecay63.2 to i64*
  %arraydecay69.2 = getelementptr inbounds i8, i8* %call.i, i64 1872
  %29 = bitcast i8* %arraydecay69.2 to i64*
  tail call fastcc void @point_double(i64* %27, i64* %28, i64* %29, i64* %20, i64* %21, i64* %22)
  br label %for.body.87.2

for.body.87.2:                                    ; preds = %for.body.87.2, %for.inc.124.1
  %j.0463.2 = phi i32 [ 0, %for.inc.124.1 ], [ %inc.2, %for.body.87.2 ]
  tail call fastcc void @point_double(i64* %27, i64* %28, i64* %29, i64* %27, i64* %28, i64* %29)
  %inc.2 = add nuw nsw i32 %j.0463.2, 1
  %exitcond.2 = icmp eq i32 %inc.2, 129
  br i1 %exitcond.2, label %for.inc.124.2, label %for.body.87.2

for.inc.124.2:                                    ; preds = %for.body.87.2
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 216, i32 8, i1 false)
  %arraydecay131 = getelementptr inbounds i8, i8* %call.i, i64 1296
  %30 = bitcast i8* %arraydecay131 to i64*
  %arraydecay135 = getelementptr inbounds i8, i8* %call.i, i64 1368
  %31 = bitcast i8* %arraydecay135 to i64*
  %arraydecay139 = getelementptr inbounds i8, i8* %call.i, i64 1440
  %32 = bitcast i8* %arraydecay139 to i64*
  %arraydecay143 = getelementptr inbounds i8, i8* %call.i, i64 864
  %33 = bitcast i8* %arraydecay143 to i64*
  %arraydecay147 = getelementptr inbounds i8, i8* %call.i, i64 936
  %34 = bitcast i8* %arraydecay147 to i64*
  %arraydecay151 = getelementptr inbounds i8, i8* %call.i, i64 1008
  %35 = bitcast i8* %arraydecay151 to i64*
  %arraydecay155 = getelementptr inbounds i8, i8* %call.i, i64 432
  %36 = bitcast i8* %arraydecay155 to i64*
  %arraydecay159 = getelementptr inbounds i8, i8* %call.i, i64 504
  %37 = bitcast i8* %arraydecay159 to i64*
  %arraydecay163 = getelementptr inbounds i8, i8* %call.i, i64 576
  %38 = bitcast i8* %arraydecay163 to i64*
  tail call fastcc void @point_add(i64* %30, i64* %31, i64* %32, i64* %33, i64* %34, i64* %35, i32 0, i64* %36, i64* %37, i64* %38)
  %arraydecay167 = getelementptr inbounds i8, i8* %call.i, i64 2160
  %39 = bitcast i8* %arraydecay167 to i64*
  %arraydecay171 = getelementptr inbounds i8, i8* %call.i, i64 2232
  %40 = bitcast i8* %arraydecay171 to i64*
  %arraydecay175 = getelementptr inbounds i8, i8* %call.i, i64 2304
  %41 = bitcast i8* %arraydecay175 to i64*
  %arraydecay179 = getelementptr inbounds i8, i8* %call.i, i64 1728
  %42 = bitcast i8* %arraydecay179 to i64*
  %arraydecay183 = getelementptr inbounds i8, i8* %call.i, i64 1800
  %43 = bitcast i8* %arraydecay183 to i64*
  %arraydecay187 = getelementptr inbounds i8, i8* %call.i, i64 1872
  %44 = bitcast i8* %arraydecay187 to i64*
  tail call fastcc void @point_add(i64* %39, i64* %40, i64* %41, i64* %42, i64* %43, i64* %44, i32 0, i64* %36, i64* %37, i64* %38)
  %arraydecay203 = getelementptr inbounds i8, i8* %call.i, i64 2592
  %45 = bitcast i8* %arraydecay203 to i64*
  %arraydecay207 = getelementptr inbounds i8, i8* %call.i, i64 2664
  %46 = bitcast i8* %arraydecay207 to i64*
  %arraydecay211 = getelementptr inbounds i8, i8* %call.i, i64 2736
  %47 = bitcast i8* %arraydecay211 to i64*
  tail call fastcc void @point_add(i64* %45, i64* %46, i64* %47, i64* %42, i64* %43, i64* %44, i32 0, i64* %33, i64* %34, i64* %35)
  %arraydecay239 = getelementptr inbounds i8, i8* %call.i, i64 3024
  %48 = bitcast i8* %arraydecay239 to i64*
  %arraydecay243 = getelementptr inbounds i8, i8* %call.i, i64 3096
  %49 = bitcast i8* %arraydecay243 to i64*
  %arraydecay247 = getelementptr inbounds i8, i8* %call.i, i64 3168
  %50 = bitcast i8* %arraydecay247 to i64*
  tail call fastcc void @point_add(i64* %48, i64* %49, i64* %50, i64* %45, i64* %46, i64* %47, i32 0, i64* %36, i64* %37, i64* %38)
  %arraydecay280 = getelementptr inbounds i8, i8* %call.i, i64 648
  %51 = bitcast i8* %arraydecay280 to i64*
  %arraydecay287 = getelementptr inbounds i8, i8* %call.i, i64 720
  %52 = bitcast i8* %arraydecay287 to i64*
  %arraydecay294 = getelementptr inbounds i8, i8* %call.i, i64 792
  %53 = bitcast i8* %arraydecay294 to i64*
  tail call fastcc void @point_add(i64* %51, i64* %52, i64* %53, i64* %14, i64* %15, i64* %16, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.1 = getelementptr inbounds i8, i8* %call.i, i64 1080
  %54 = bitcast i8* %arraydecay280.1 to i64*
  %arraydecay287.1 = getelementptr inbounds i8, i8* %call.i, i64 1152
  %55 = bitcast i8* %arraydecay287.1 to i64*
  %arraydecay294.1 = getelementptr inbounds i8, i8* %call.i, i64 1224
  %56 = bitcast i8* %arraydecay294.1 to i64*
  tail call fastcc void @point_add(i64* %54, i64* %55, i64* %56, i64* %20, i64* %21, i64* %22, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.2 = getelementptr inbounds i8, i8* %call.i, i64 1512
  %57 = bitcast i8* %arraydecay280.2 to i64*
  %arraydecay287.2 = getelementptr inbounds i8, i8* %call.i, i64 1584
  %58 = bitcast i8* %arraydecay287.2 to i64*
  %arraydecay294.2 = getelementptr inbounds i8, i8* %call.i, i64 1656
  %59 = bitcast i8* %arraydecay294.2 to i64*
  %arraydecay300.2 = getelementptr inbounds i8, i8* %call.i, i64 1296
  %60 = bitcast i8* %arraydecay300.2 to i64*
  %arraydecay306.2 = getelementptr inbounds i8, i8* %call.i, i64 1368
  %61 = bitcast i8* %arraydecay306.2 to i64*
  %arraydecay312.2 = getelementptr inbounds i8, i8* %call.i, i64 1440
  %62 = bitcast i8* %arraydecay312.2 to i64*
  tail call fastcc void @point_add(i64* %57, i64* %58, i64* %59, i64* %60, i64* %61, i64* %62, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.3 = getelementptr inbounds i8, i8* %call.i, i64 1944
  %63 = bitcast i8* %arraydecay280.3 to i64*
  %arraydecay287.3 = getelementptr inbounds i8, i8* %call.i, i64 2016
  %64 = bitcast i8* %arraydecay287.3 to i64*
  %arraydecay294.3 = getelementptr inbounds i8, i8* %call.i, i64 2088
  %65 = bitcast i8* %arraydecay294.3 to i64*
  tail call fastcc void @point_add(i64* %63, i64* %64, i64* %65, i64* %27, i64* %28, i64* %29, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.4 = getelementptr inbounds i8, i8* %call.i, i64 2376
  %66 = bitcast i8* %arraydecay280.4 to i64*
  %arraydecay287.4 = getelementptr inbounds i8, i8* %call.i, i64 2448
  %67 = bitcast i8* %arraydecay287.4 to i64*
  %arraydecay294.4 = getelementptr inbounds i8, i8* %call.i, i64 2520
  %68 = bitcast i8* %arraydecay294.4 to i64*
  %arraydecay300.4 = getelementptr inbounds i8, i8* %call.i, i64 2160
  %69 = bitcast i8* %arraydecay300.4 to i64*
  %arraydecay306.4 = getelementptr inbounds i8, i8* %call.i, i64 2232
  %70 = bitcast i8* %arraydecay306.4 to i64*
  %arraydecay312.4 = getelementptr inbounds i8, i8* %call.i, i64 2304
  %71 = bitcast i8* %arraydecay312.4 to i64*
  tail call fastcc void @point_add(i64* %66, i64* %67, i64* %68, i64* %69, i64* %70, i64* %71, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.5 = getelementptr inbounds i8, i8* %call.i, i64 2808
  %72 = bitcast i8* %arraydecay280.5 to i64*
  %arraydecay287.5 = getelementptr inbounds i8, i8* %call.i, i64 2880
  %73 = bitcast i8* %arraydecay287.5 to i64*
  %arraydecay294.5 = getelementptr inbounds i8, i8* %call.i, i64 2952
  %74 = bitcast i8* %arraydecay294.5 to i64*
  %arraydecay300.5 = getelementptr inbounds i8, i8* %call.i, i64 2592
  %75 = bitcast i8* %arraydecay300.5 to i64*
  %arraydecay306.5 = getelementptr inbounds i8, i8* %call.i, i64 2664
  %76 = bitcast i8* %arraydecay306.5 to i64*
  %arraydecay312.5 = getelementptr inbounds i8, i8* %call.i, i64 2736
  %77 = bitcast i8* %arraydecay312.5 to i64*
  tail call fastcc void @point_add(i64* %72, i64* %73, i64* %74, i64* %75, i64* %76, i64* %77, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  %arraydecay280.6 = getelementptr inbounds i8, i8* %call.i, i64 3240
  %78 = bitcast i8* %arraydecay280.6 to i64*
  %arraydecay287.6 = getelementptr inbounds i8, i8* %call.i, i64 3312
  %79 = bitcast i8* %arraydecay287.6 to i64*
  %arraydecay294.6 = getelementptr inbounds i8, i8* %call.i, i64 3384
  %80 = bitcast i8* %arraydecay294.6 to i64*
  %arraydecay300.6 = getelementptr inbounds i8, i8* %call.i, i64 3024
  %81 = bitcast i8* %arraydecay300.6 to i64*
  %arraydecay306.6 = getelementptr inbounds i8, i8* %call.i, i64 3096
  %82 = bitcast i8* %arraydecay306.6 to i64*
  %arraydecay312.6 = getelementptr inbounds i8, i8* %call.i, i64 3168
  %83 = bitcast i8* %arraydecay312.6 to i64*
  tail call fastcc void @point_add(i64* %78, i64* %79, i64* %80, i64* %81, i64* %82, i64* %83, i32 0, i64* %arraydecay, i64* %8, i64* %11)
  call void @ec_GFp_nistp_points_make_affine_internal(i64 15, i8* %arrayidx, i64 72, i8* %0, void (i8*)* bitcast (void (i64*)* @felem_one to void (i8*)*), i32 (i8*)* nonnull @felem_is_zero_int, void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_assign to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_square_reduce to void (i8*, i8*)*), void (i8*, i8*, i8*)* bitcast (void (i64*, i64*, i64*)* @felem_mul_reduce to void (i8*, i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_inv to void (i8*, i8*)*), void (i8*, i8*)* bitcast (void (i64*, i64*)* @felem_contract to void (i8*, i8*)*)) #1
  br label %done
}

; Function Attrs: nounwind readonly uwtable
define i32 @ec_GFp_nistp521_have_precompute_mult(%struct.ec_group_st* nocapture readonly %group) #4 {
entry:
  %pre_comp_type = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 18
  %0 = load i32, i32* %pre_comp_type, align 4, !tbaa !27
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %pre_comp = getelementptr inbounds %struct.ec_group_st, %struct.ec_group_st* %group, i64 0, i32 19
  %nistp521 = bitcast %union.anon* %pre_comp to %struct.nistp521_pre_comp_st**
  %1 = load %struct.nistp521_pre_comp_st*, %struct.nistp521_pre_comp_st** %nistp521, align 8, !tbaa !18
  %cmp1 = icmp ne %struct.nistp521_pre_comp_st* %1, null
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
define %struct.nistp521_pre_comp_st* @EC_nistp521_pre_comp_dup(%struct.nistp521_pre_comp_st* %p) #0 {
entry:
  %cmp = icmp eq %struct.nistp521_pre_comp_st* %p, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %references = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %p, i64 0, i32 1
  %0 = atomicrmw add i32* %references, i32 1 monotonic
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.nistp521_pre_comp_st* %p
}

; Function Attrs: nounwind uwtable
define void @EC_nistp521_pre_comp_free(%struct.nistp521_pre_comp_st* %p) #0 {
entry:
  %cmp = icmp eq %struct.nistp521_pre_comp_st* %p, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %p, i64 0, i32 1
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
  %lock = getelementptr inbounds %struct.nistp521_pre_comp_st, %struct.nistp521_pre_comp_st* %p, i64 0, i32 2
  %1 = load i8*, i8** %lock, align 8, !tbaa !26
  tail call void @CRYPTO_THREAD_lock_free(i8* %1) #1
  %2 = bitcast %struct.nistp521_pre_comp_st* %p to i8*
  tail call void @CRYPTO_free(i8* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 1719) #1
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

declare i32 @BN_nist_mod_521(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @ec_GFp_simple_group_set_curve(%struct.ec_group_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare void @BN_CTX_end(%struct.bignum_ctx*) #3

declare void @BN_CTX_free(%struct.bignum_ctx*) #3

declare i32 @EC_POINT_is_at_infinity(%struct.ec_group_st*, %struct.ec_point_st*) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @BN_to_felem(i64* nocapture %out, %struct.bignum_st* %bn) #0 {
entry:
  %b_in = alloca [66 x i8], align 16
  %b_out = alloca [66 x i8], align 16
  %0 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %0) #1
  %1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 0
  call void @llvm.lifetime.start(i64 66, i8* %1) #1
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 66, i32 16, i1 false)
  %call = tail call i32 @BN_num_bits(%struct.bignum_st* %bn) #1
  %add = add nsw i32 %call, 7
  %div = sdiv i32 %add, 8
  %cmp = icmp ugt i32 %div, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 191) #1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BN_is_negative(%struct.bignum_st* %bn) #1
  %tobool = icmp eq i32 %call2, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  tail call void @ERR_put_error(i32 16, i32 224, i32 144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 195) #1
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
  %arrayidx.i.prol = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 %idxprom.i.prol
  %3 = load i8, i8* %arrayidx.i.prol, align 1, !tbaa !17
  %arrayidx3.i.prol = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 %indvars.iv.i.prol
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
  %arrayidx.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 %idxprom.i
  %6 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %arrayidx3.i = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 %indvars.iv.i
  store i8 %6, i8* %arrayidx3.i, align 1, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %7 = trunc i64 %indvars.iv.next.i to i32
  %sub1.i.1 = sub i32 %sub.i, %7
  %idxprom.i.1 = zext i32 %sub1.i.1 to i64
  %arrayidx.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 %idxprom.i.1
  %8 = load i8, i8* %arrayidx.i.1, align 1, !tbaa !17
  %arrayidx3.i.1 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i
  store i8 %8, i8* %arrayidx3.i.1, align 1, !tbaa !17
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2
  %9 = trunc i64 %indvars.iv.next.i.1 to i32
  %sub1.i.2 = sub i32 %sub.i, %9
  %idxprom.i.2 = zext i32 %sub1.i.2 to i64
  %arrayidx.i.2 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 %idxprom.i.2
  %10 = load i8, i8* %arrayidx.i.2, align 1, !tbaa !17
  %arrayidx3.i.2 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.1
  store i8 %10, i8* %arrayidx3.i.2, align 1, !tbaa !17
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3
  %11 = trunc i64 %indvars.iv.next.i.2 to i32
  %sub1.i.3 = sub i32 %sub.i, %11
  %idxprom.i.3 = zext i32 %sub1.i.3 to i64
  %arrayidx.i.3 = getelementptr inbounds [66 x i8], [66 x i8]* %b_in, i64 0, i64 %idxprom.i.3
  %12 = load i8, i8* %arrayidx.i.3, align 1, !tbaa !17
  %arrayidx3.i.3 = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 %indvars.iv.next.i.2
  store i8 %12, i8* %arrayidx3.i.3, align 1, !tbaa !17
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.3 = icmp eq i32 %lftr.wideiv.3, %call5
  br i1 %exitcond.3, label %flip_endian.exit.loopexit.unr-lcssa, label %for.body.i

flip_endian.exit.loopexit.unr-lcssa:              ; preds = %for.body.i
  br label %flip_endian.exit.loopexit

flip_endian.exit.loopexit:                        ; preds = %for.body.lr.ph.i.split, %flip_endian.exit.loopexit.unr-lcssa
  %.phi.trans.insert = bitcast [66 x i8]* %b_out to i64*
  %.pre = load i64, i64* %.phi.trans.insert, align 16, !tbaa !6
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 7
  %.phi.trans.insert15 = bitcast i8* %arrayidx2.i.phi.trans.insert to i64*
  %.pre16 = load i64, i64* %.phi.trans.insert15, align 8, !tbaa !6
  %arrayidx5.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 14
  %.phi.trans.insert17 = bitcast i8* %arrayidx5.i.phi.trans.insert to i64*
  %.pre18 = load i64, i64* %.phi.trans.insert17, align 8, !tbaa !6
  %arrayidx9.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 21
  %.phi.trans.insert19 = bitcast i8* %arrayidx9.i.phi.trans.insert to i64*
  %.pre20 = load i64, i64* %.phi.trans.insert19, align 8, !tbaa !6
  %arrayidx13.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 29
  %.phi.trans.insert21 = bitcast i8* %arrayidx13.i.phi.trans.insert to i64*
  %.pre22 = load i64, i64* %.phi.trans.insert21, align 8, !tbaa !6
  %arrayidx16.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 36
  %.phi.trans.insert23 = bitcast i8* %arrayidx16.i.phi.trans.insert to i64*
  %.pre24 = load i64, i64* %.phi.trans.insert23, align 8, !tbaa !6
  %arrayidx20.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 43
  %.phi.trans.insert25 = bitcast i8* %arrayidx20.i.phi.trans.insert to i64*
  %.pre26 = load i64, i64* %.phi.trans.insert25, align 8, !tbaa !6
  %arrayidx24.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 50
  %.phi.trans.insert27 = bitcast i8* %arrayidx24.i.phi.trans.insert to i64*
  %.pre28 = load i64, i64* %.phi.trans.insert27, align 8, !tbaa !6
  %arrayidx28.i.phi.trans.insert = getelementptr inbounds [66 x i8], [66 x i8]* %b_out, i64 0, i64 58
  %.phi.trans.insert29 = bitcast i8* %arrayidx28.i.phi.trans.insert to i64*
  %.pre30 = load i64, i64* %.phi.trans.insert29, align 8, !tbaa !6
  %phitmp = and i64 %.pre, 288230376151711743
  %phitmp56 = lshr i64 %.pre16, 2
  %phitmp57 = and i64 %phitmp56, 288230376151711743
  %phitmp58 = lshr i64 %.pre18, 4
  %phitmp59 = and i64 %phitmp58, 288230376151711743
  %phitmp60 = lshr i64 %.pre20, 6
  %phitmp61 = and i64 %.pre22, 288230376151711743
  %phitmp62 = lshr i64 %.pre24, 2
  %phitmp63 = and i64 %phitmp62, 288230376151711743
  %phitmp64 = lshr i64 %.pre26, 4
  %phitmp65 = and i64 %phitmp64, 288230376151711743
  %phitmp66 = lshr i64 %.pre28, 6
  %phitmp67 = and i64 %.pre30, 144115188075855871
  br label %flip_endian.exit

flip_endian.exit:                                 ; preds = %if.end.4, %flip_endian.exit.loopexit
  %13 = phi i64 [ %phitmp67, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %14 = phi i64 [ %phitmp66, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %15 = phi i64 [ %phitmp65, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %16 = phi i64 [ %phitmp63, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %17 = phi i64 [ %phitmp61, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %18 = phi i64 [ %phitmp60, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %19 = phi i64 [ %phitmp59, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %20 = phi i64 [ %phitmp57, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  %21 = phi i64 [ %phitmp, %flip_endian.exit.loopexit ], [ 0, %if.end.4 ]
  store i64 %21, i64* %out, align 8, !tbaa !6
  %arrayidx4.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %20, i64* %arrayidx4.i, align 8, !tbaa !6
  %arrayidx8.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %19, i64* %arrayidx8.i, align 8, !tbaa !6
  %arrayidx12.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %18, i64* %arrayidx12.i, align 8, !tbaa !6
  %arrayidx15.i = getelementptr inbounds i64, i64* %out, i64 4
  store i64 %17, i64* %arrayidx15.i, align 8, !tbaa !6
  %arrayidx19.i = getelementptr inbounds i64, i64* %out, i64 5
  store i64 %16, i64* %arrayidx19.i, align 8, !tbaa !6
  %arrayidx23.i = getelementptr inbounds i64, i64* %out, i64 6
  store i64 %15, i64* %arrayidx23.i, align 8, !tbaa !6
  %arrayidx27.i = getelementptr inbounds i64, i64* %out, i64 7
  store i64 %14, i64* %arrayidx27.i, align 8, !tbaa !6
  %arrayidx30.i = getelementptr inbounds i64, i64* %out, i64 8
  store i64 %13, i64* %arrayidx30.i, align 8, !tbaa !6
  br label %cleanup

cleanup:                                          ; preds = %flip_endian.exit, %if.then.3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then.3 ], [ 1, %flip_endian.exit ]
  call void @llvm.lifetime.end(i64 66, i8* %1) #1
  call void @llvm.lifetime.end(i64 66, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @felem_contract(i64* %out, i64* nocapture readonly %in) #0 {
entry:
  %0 = load i64, i64* %in, align 8, !tbaa !6
  store i64 %0, i64* %out, align 8, !tbaa !6
  %arrayidx2.i = getelementptr inbounds i64, i64* %in, i64 1
  %1 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %arrayidx3.i = getelementptr inbounds i64, i64* %out, i64 1
  store i64 %1, i64* %arrayidx3.i, align 8, !tbaa !6
  %arrayidx4.i = getelementptr inbounds i64, i64* %in, i64 2
  %2 = load i64, i64* %arrayidx4.i, align 8, !tbaa !6
  %arrayidx5.i = getelementptr inbounds i64, i64* %out, i64 2
  store i64 %2, i64* %arrayidx5.i, align 8, !tbaa !6
  %arrayidx6.i = getelementptr inbounds i64, i64* %in, i64 3
  %3 = load i64, i64* %arrayidx6.i, align 8, !tbaa !6
  %arrayidx7.i = getelementptr inbounds i64, i64* %out, i64 3
  store i64 %3, i64* %arrayidx7.i, align 8, !tbaa !6
  %arrayidx8.i = getelementptr inbounds i64, i64* %in, i64 4
  %4 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %arrayidx9.i = getelementptr inbounds i64, i64* %out, i64 4
  store i64 %4, i64* %arrayidx9.i, align 8, !tbaa !6
  %arrayidx10.i = getelementptr inbounds i64, i64* %in, i64 5
  %5 = load i64, i64* %arrayidx10.i, align 8, !tbaa !6
  %arrayidx11.i = getelementptr inbounds i64, i64* %out, i64 5
  store i64 %5, i64* %arrayidx11.i, align 8, !tbaa !6
  %arrayidx12.i = getelementptr inbounds i64, i64* %in, i64 6
  %6 = load i64, i64* %arrayidx12.i, align 8, !tbaa !6
  %arrayidx13.i = getelementptr inbounds i64, i64* %out, i64 6
  store i64 %6, i64* %arrayidx13.i, align 8, !tbaa !6
  %arrayidx14.i = getelementptr inbounds i64, i64* %in, i64 7
  %7 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %arrayidx15.i = getelementptr inbounds i64, i64* %out, i64 7
  store i64 %7, i64* %arrayidx15.i, align 8, !tbaa !6
  %arrayidx16.i = getelementptr inbounds i64, i64* %in, i64 8
  %8 = load i64, i64* %arrayidx16.i, align 8, !tbaa !6
  %arrayidx17.i = getelementptr inbounds i64, i64* %out, i64 8
  %shr = lshr i64 %8, 57
  %add = add i64 %0, %shr
  %and = and i64 %8, 144115188075855871
  %shr4 = lshr i64 %add, 58
  %add6 = add i64 %shr4, %1
  %and8 = and i64 %add, 288230376151711743
  %shr10 = lshr i64 %add6, 58
  %add12 = add i64 %shr10, %2
  %and14 = and i64 %add6, 288230376151711743
  %shr16 = lshr i64 %add12, 58
  %add18 = add i64 %shr16, %3
  %and20 = and i64 %add12, 288230376151711743
  %shr22 = lshr i64 %add18, 58
  %add24 = add i64 %shr22, %4
  %and26 = and i64 %add18, 288230376151711743
  %shr28 = lshr i64 %add24, 58
  %add30 = add i64 %shr28, %5
  %and32 = and i64 %add24, 288230376151711743
  %shr34 = lshr i64 %add30, 58
  %add36 = add i64 %shr34, %6
  %and38 = and i64 %add30, 288230376151711743
  %shr40 = lshr i64 %add36, 58
  %add42 = add i64 %shr40, %7
  %and44 = and i64 %add36, 288230376151711743
  %shr46 = lshr i64 %add42, 58
  %add48 = add nuw nsw i64 %shr46, %and
  %and50 = and i64 %add42, 288230376151711743
  %xor = xor i64 %and8, 288230376151711743
  %xor53 = xor i64 %and14, 288230376151711743
  %xor55 = xor i64 %and20, 288230376151711743
  %xor58 = xor i64 %and26, 288230376151711743
  %xor61 = xor i64 %and32, 288230376151711743
  %xor64 = xor i64 %and38, 288230376151711743
  %xor67 = xor i64 %and44, 288230376151711743
  %xor70 = xor i64 %and50, 288230376151711743
  %xor73 = xor i64 %add48, 144115188075855871
  %or = or i64 %xor70, %xor
  %or56 = or i64 %or, %xor53
  %or59 = or i64 %or56, %xor55
  %or62 = or i64 %or59, %xor58
  %or65 = or i64 %or62, %xor61
  %or68 = or i64 %or65, %xor64
  %or71 = or i64 %or68, %xor67
  %or74 = or i64 %or71, %xor73
  %dec = add i64 %or74, -1
  %shl = shl i64 %dec, 32
  %and75 = and i64 %shl, %dec
  %shl76 = shl i64 %and75, 16
  %and77 = and i64 %shl76, %and75
  %shl78 = shl i64 %and77, 8
  %and79 = and i64 %shl78, %and77
  %shl80 = shl i64 %and79, 4
  %and81 = and i64 %shl80, %and79
  %shl82 = shl i64 %and81, 2
  %and83 = and i64 %shl82, %and81
  %shl84 = shl i64 %and83, 1
  %and85 = and i64 %shl84, %and83
  %sub = ashr i64 %and85, 63
  %neg = xor i64 %sub, -1
  %and88 = and i64 %and8, %neg
  %and90 = and i64 %and14, %neg
  %and92 = and i64 %and20, %neg
  %and94 = and i64 %and26, %neg
  %and96 = and i64 %and32, %neg
  %and98 = and i64 %and38, %neg
  %and100 = and i64 %and44, %neg
  %and102 = and i64 %and50, %neg
  %and104 = and i64 %add48, %neg
  %shr106 = lshr i64 %and104, 57
  %shl107 = shl nuw nsw i64 %shr106, 32
  %or108 = or i64 %shl107, %shr106
  %shl109 = shl nuw nsw i64 %or108, 16
  %or110 = or i64 %shl109, %or108
  %shl111 = shl nuw nsw i64 %or110, 8
  %or112 = or i64 %shl111, %or110
  %shl113 = shl i64 %or112, 4
  %or114 = or i64 %shl113, %or112
  %shl115 = shl i64 %or114, 2
  %or116 = or i64 %shl115, %or114
  %shl117 = shl i64 %or116, 1
  %or118 = or i64 %shl117, %or116
  %sub120 = ashr i64 %or118, 63
  %and121 = and i64 %sub120, 288230376151711743
  %sub123 = sub nsw i64 %and88, %and121
  %sub126 = sub nsw i64 %and90, %and121
  %sub129 = sub nsw i64 %and92, %and121
  %sub132 = sub nsw i64 %and94, %and121
  %sub135 = sub nsw i64 %and96, %and121
  %sub138 = sub nsw i64 %and98, %and121
  %sub141 = sub nsw i64 %and100, %and121
  %sub144 = sub nsw i64 %and102, %and121
  %and145 = and i64 %sub120, 144115188075855871
  %sub147 = sub nsw i64 %and104, %and145
  %sub150 = ashr i64 %sub123, 63
  %and151 = and i64 %sub150, 288230376151711744
  %add153 = add nsw i64 %and151, %sub123
  store i64 %add153, i64* %out, align 8, !tbaa !6
  %and154 = and i64 %sub150, 1
  %sub156 = sub nsw i64 %sub126, %and154
  %sub159 = ashr i64 %sub156, 63
  %and160 = and i64 %sub159, 288230376151711744
  %add162 = add nsw i64 %and160, %sub156
  store i64 %add162, i64* %arrayidx3.i, align 8, !tbaa !6
  %and163 = and i64 %sub159, 1
  %sub165 = sub nsw i64 %sub129, %and163
  %sub168 = ashr i64 %sub165, 63
  %and169 = and i64 %sub168, 288230376151711744
  %add171 = add nsw i64 %and169, %sub165
  store i64 %add171, i64* %arrayidx5.i, align 8, !tbaa !6
  %and172 = and i64 %sub168, 1
  %sub174 = sub nsw i64 %sub132, %and172
  %sub177 = ashr i64 %sub174, 63
  %and178 = and i64 %sub177, 288230376151711744
  %add180 = add nsw i64 %and178, %sub174
  store i64 %add180, i64* %arrayidx7.i, align 8, !tbaa !6
  %and181 = and i64 %sub177, 1
  %sub183 = sub nsw i64 %sub135, %and181
  %sub186 = ashr i64 %sub183, 63
  %and187 = and i64 %sub186, 288230376151711744
  %add189 = add nsw i64 %and187, %sub183
  store i64 %add189, i64* %arrayidx9.i, align 8, !tbaa !6
  %and190 = and i64 %sub186, 1
  %sub192 = sub nsw i64 %sub138, %and190
  %sub195 = ashr i64 %add153, 63
  %and196 = and i64 %sub195, 288230376151711744
  %add198 = add nsw i64 %sub192, %and196
  %and199 = and i64 %sub195, 1
  %sub201 = sub nsw i64 %sub141, %and199
  %sub204 = ashr i64 %sub201, 63
  %and205 = and i64 %sub204, 288230376151711744
  %add207 = add nsw i64 %and205, %sub201
  %and208 = and i64 %sub204, 1
  %sub210 = sub nsw i64 %sub144, %and208
  %sub213 = ashr i64 %sub210, 63
  %and214 = and i64 %sub213, 288230376151711744
  %add216 = add nsw i64 %and214, %sub210
  %and217 = and i64 %sub213, 1
  %sub219 = sub nsw i64 %sub147, %and217
  %sub222 = ashr i64 %add198, 63
  %and223 = and i64 %sub222, 288230376151711744
  %add225 = add nsw i64 %and223, %add198
  store i64 %add225, i64* %arrayidx11.i, align 8, !tbaa !6
  %and226 = and i64 %sub222, 1
  %sub228 = sub nsw i64 %add207, %and226
  %sub231 = ashr i64 %sub228, 63
  %and232 = and i64 %sub231, 288230376151711744
  %add234 = add nsw i64 %and232, %sub228
  store i64 %add234, i64* %arrayidx13.i, align 8, !tbaa !6
  %and235 = and i64 %sub231, 1
  %sub237 = sub nsw i64 %add216, %and235
  %sub240 = ashr i64 %sub237, 63
  %and241 = and i64 %sub240, 288230376151711744
  %add243 = add nsw i64 %and241, %sub237
  store i64 %add243, i64* %arrayidx15.i, align 8, !tbaa !6
  %and244 = and i64 %sub240, 1
  %sub246 = sub nsw i64 %sub219, %and244
  store i64 %sub246, i64* %arrayidx17.i, align 8, !tbaa !6
  ret void
}

declare %struct.ec_point_st* @EC_POINT_new(%struct.ec_group_st*) #3

declare i32 @EC_POINT_set_Jprojective_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @EC_POINT_cmp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.ec_point_st*, %struct.bignum_ctx*) #3

declare i8* @CRYPTO_zalloc(i64, i8*, i32) #3

declare i8* @CRYPTO_malloc(i64, i8*, i32) #3

declare %struct.ec_point_st* @EC_GROUP_get0_generator(%struct.ec_group_st*) #3

declare i32 @BN_num_bits(%struct.bignum_st*) #3

declare i32 @BN_is_negative(%struct.bignum_st*) #3

declare i32 @BN_nnmod(%struct.bignum_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare i32 @BN_bn2bin(%struct.bignum_st*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @point_add(i64* nocapture %x3, i64* nocapture %y3, i64* nocapture %z3, i64* nocapture readonly %x1, i64* %y1, i64* %z1, i32 %mixed, i64* nocapture readonly %x2, i64* nocapture readonly %y2, i64* %z2) #0 {
entry:
  %ftmp = alloca [9 x i64], align 16
  %ftmp2 = alloca [9 x i64], align 16
  %ftmp3 = alloca [9 x i64], align 16
  %ftmp4 = alloca [9 x i64], align 16
  %ftmp5 = alloca [9 x i64], align 16
  %ftmp6 = alloca [9 x i64], align 16
  %tmp = alloca [9 x i128], align 16
  %tmp2 = alloca [9 x i128], align 16
  %0 = bitcast [9 x i64]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %1 = bitcast [9 x i64]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  %2 = bitcast [9 x i64]* %ftmp3 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %ftmp4 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i64]* %ftmp5 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [9 x i64]* %ftmp6 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %6) #1
  %7 = bitcast [9 x i128]* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %7) #1
  %8 = load i64, i64* %z1, align 8, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds i64, i64* %z1, i64 1
  %9 = load i64, i64* %arrayidx2.i.i, align 8, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds i64, i64* %z1, i64 2
  %10 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !6
  %arrayidx6.i.i = getelementptr inbounds i64, i64* %z1, i64 3
  %11 = load i64, i64* %arrayidx6.i.i, align 8, !tbaa !6
  %arrayidx8.i.i = getelementptr inbounds i64, i64* %z1, i64 4
  %12 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %arrayidx10.i.i = getelementptr inbounds i64, i64* %z1, i64 5
  %13 = load i64, i64* %arrayidx10.i.i, align 8, !tbaa !6
  %arrayidx12.i.i = getelementptr inbounds i64, i64* %z1, i64 6
  %14 = load i64, i64* %arrayidx12.i.i, align 8, !tbaa !6
  %arrayidx14.i.i = getelementptr inbounds i64, i64* %z1, i64 7
  %15 = load i64, i64* %arrayidx14.i.i, align 8, !tbaa !6
  %arrayidx16.i.i = getelementptr inbounds i64, i64* %z1, i64 8
  %16 = load i64, i64* %arrayidx16.i.i, align 8, !tbaa !6
  %shr.i = lshr i64 %16, 57
  %add.i = add i64 %shr.i, %8
  %shr4.i = lshr i64 %add.i, 58
  %add6.i = add i64 %shr4.i, %9
  %and8.i = and i64 %add.i, 288230376151711743
  %shr10.i = lshr i64 %add6.i, 58
  %add12.i = add i64 %shr10.i, %10
  %and14.i = and i64 %add6.i, 288230376151711743
  %shr16.i = lshr i64 %add12.i, 58
  %17 = load i64, i64* %z2, align 8, !tbaa !6
  %arrayidx2.i.i.455 = getelementptr inbounds i64, i64* %z2, i64 1
  %18 = load i64, i64* %arrayidx2.i.i.455, align 8, !tbaa !6
  %arrayidx4.i.i.456 = getelementptr inbounds i64, i64* %z2, i64 2
  %19 = load i64, i64* %arrayidx4.i.i.456, align 8, !tbaa !6
  %arrayidx6.i.i.457 = getelementptr inbounds i64, i64* %z2, i64 3
  %20 = load i64, i64* %arrayidx6.i.i.457, align 8, !tbaa !6
  %arrayidx8.i.i.458 = getelementptr inbounds i64, i64* %z2, i64 4
  %21 = load i64, i64* %arrayidx8.i.i.458, align 8, !tbaa !6
  %arrayidx10.i.i.459 = getelementptr inbounds i64, i64* %z2, i64 5
  %22 = load i64, i64* %arrayidx10.i.i.459, align 8, !tbaa !6
  %arrayidx12.i.i.460 = getelementptr inbounds i64, i64* %z2, i64 6
  %23 = load i64, i64* %arrayidx12.i.i.460, align 8, !tbaa !6
  %arrayidx14.i.i.461 = getelementptr inbounds i64, i64* %z2, i64 7
  %24 = load i64, i64* %arrayidx14.i.i.461, align 8, !tbaa !6
  %arrayidx16.i.i.462 = getelementptr inbounds i64, i64* %z2, i64 8
  %25 = load i64, i64* %arrayidx16.i.i.462, align 8, !tbaa !6
  %shr.i.463 = lshr i64 %25, 57
  %add.i.464 = add i64 %shr.i.463, %17
  %26 = insertelement <2 x i64> undef, i64 %25, i32 0
  %27 = insertelement <2 x i64> %26, i64 %16, i32 1
  %28 = and <2 x i64> %27, <i64 144115188075855871, i64 144115188075855871>
  %shr4.i.466 = lshr i64 %add.i.464, 58
  %add6.i.467 = add i64 %shr4.i.466, %18
  %and8.i.468 = and i64 %add.i.464, 288230376151711743
  %shr10.i.469 = lshr i64 %add6.i.467, 58
  %add12.i.470 = add i64 %shr10.i.469, %19
  %and14.i.471 = and i64 %add6.i.467, 288230376151711743
  %shr16.i.472 = lshr i64 %add12.i.470, 58
  %29 = insertelement <2 x i64> undef, i64 %shr16.i.472, i32 0
  %30 = insertelement <2 x i64> %29, i64 %shr16.i, i32 1
  %31 = insertelement <2 x i64> undef, i64 %20, i32 0
  %32 = insertelement <2 x i64> %31, i64 %11, i32 1
  %33 = add <2 x i64> %30, %32
  %34 = insertelement <2 x i64> undef, i64 %add12.i.470, i32 0
  %35 = insertelement <2 x i64> %34, i64 %add12.i, i32 1
  %36 = and <2 x i64> %35, <i64 288230376151711743, i64 288230376151711743>
  %37 = lshr <2 x i64> %33, <i64 58, i64 58>
  %38 = insertelement <2 x i64> undef, i64 %21, i32 0
  %39 = insertelement <2 x i64> %38, i64 %12, i32 1
  %40 = add <2 x i64> %37, %39
  %41 = and <2 x i64> %33, <i64 288230376151711743, i64 288230376151711743>
  %42 = lshr <2 x i64> %40, <i64 58, i64 58>
  %43 = insertelement <2 x i64> undef, i64 %22, i32 0
  %44 = insertelement <2 x i64> %43, i64 %13, i32 1
  %45 = add <2 x i64> %42, %44
  %46 = and <2 x i64> %40, <i64 288230376151711743, i64 288230376151711743>
  %47 = lshr <2 x i64> %45, <i64 58, i64 58>
  %48 = insertelement <2 x i64> undef, i64 %23, i32 0
  %49 = insertelement <2 x i64> %48, i64 %14, i32 1
  %50 = add <2 x i64> %47, %49
  %51 = and <2 x i64> %45, <i64 288230376151711743, i64 288230376151711743>
  %52 = lshr <2 x i64> %50, <i64 58, i64 58>
  %53 = insertelement <2 x i64> undef, i64 %24, i32 0
  %54 = insertelement <2 x i64> %53, i64 %15, i32 1
  %55 = add <2 x i64> %52, %54
  %56 = and <2 x i64> %50, <i64 288230376151711743, i64 288230376151711743>
  %57 = lshr <2 x i64> %55, <i64 58, i64 58>
  %58 = add nuw nsw <2 x i64> %57, %28
  %59 = and <2 x i64> %55, <i64 288230376151711743, i64 288230376151711743>
  %60 = insertelement <2 x i64> undef, i64 %and14.i.471, i32 0
  %61 = insertelement <2 x i64> %60, i64 %and14.i, i32 1
  %62 = insertelement <2 x i64> undef, i64 %and8.i.468, i32 0
  %63 = insertelement <2 x i64> %62, i64 %and8.i, i32 1
  %64 = or <2 x i64> %61, %63
  %65 = or <2 x i64> %64, %36
  %66 = or <2 x i64> %65, %41
  %67 = or <2 x i64> %66, %46
  %68 = or <2 x i64> %67, %51
  %69 = or <2 x i64> %68, %56
  %70 = or <2 x i64> %69, %59
  %71 = or <2 x i64> %70, %58
  %72 = add <2 x i64> %71, <i64 -1, i64 -1>
  %73 = xor <2 x i64> %63, <i64 288230376151711743, i64 288230376151711743>
  %74 = xor <2 x i64> %61, <i64 288230376151711743, i64 288230376151711743>
  %75 = or <2 x i64> %74, %73
  %76 = xor <2 x i64> %36, <i64 288230376151711743, i64 288230376151711743>
  %77 = or <2 x i64> %75, %76
  %78 = xor <2 x i64> %41, <i64 288230376151711743, i64 288230376151711743>
  %79 = or <2 x i64> %77, %78
  %80 = xor <2 x i64> %46, <i64 288230376151711743, i64 288230376151711743>
  %81 = or <2 x i64> %79, %80
  %82 = xor <2 x i64> %51, <i64 288230376151711743, i64 288230376151711743>
  %83 = or <2 x i64> %81, %82
  %84 = xor <2 x i64> %56, <i64 288230376151711743, i64 288230376151711743>
  %85 = or <2 x i64> %83, %84
  %86 = xor <2 x i64> %59, <i64 288230376151711743, i64 288230376151711743>
  %87 = or <2 x i64> %85, %86
  %88 = xor <2 x i64> %58, <i64 144115188075855871, i64 144115188075855871>
  %89 = or <2 x i64> %87, %88
  %90 = add <2 x i64> %89, <i64 -1, i64 -1>
  %91 = or <2 x i64> %90, %72
  %92 = ashr <2 x i64> %91, <i64 63, i64 63>
  %arraydecay = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay, i64* %z1)
  %arraydecay8 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 0
  %93 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.519 = trunc i128 %93 to i64
  %and.i.520 = and i64 %conv.i.519, 288230376151711743
  store i64 %and.i.520, i64* %arraydecay8, align 16, !tbaa !6
  %arrayidx2.i.521 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 1
  %94 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.522 = trunc i128 %94 to i64
  %and4.i.523 = and i64 %conv3.i.522, 288230376151711743
  %arrayidx5.i.524 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 1
  %arrayidx6.i.525 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 2
  %95 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.526 = trunc i128 %95 to i64
  %and8.i.527 = and i64 %conv7.i.526, 288230376151711743
  %arrayidx9.i.528 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 2
  %arrayidx10.i.529 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 3
  %96 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.530 = trunc i128 %96 to i64
  %and12.i.531 = and i64 %conv11.i.530, 288230376151711743
  %arrayidx13.i.532 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 3
  %arrayidx14.i.533 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 4
  %97 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.534 = trunc i128 %97 to i64
  %and16.i.535 = and i64 %conv15.i.534, 288230376151711743
  %arrayidx17.i.536 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 4
  %arrayidx18.i.537 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 5
  %98 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.538 = trunc i128 %98 to i64
  %and20.i.539 = and i64 %conv19.i.538, 288230376151711743
  %arrayidx21.i.540 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 5
  %arrayidx22.i.541 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 6
  %99 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.542 = trunc i128 %99 to i64
  %and24.i.543 = and i64 %conv23.i.542, 288230376151711743
  %arrayidx25.i.544 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 6
  %arrayidx26.i.545 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 7
  %100 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.546 = trunc i128 %100 to i64
  %and28.i.547 = and i64 %conv27.i.546, 288230376151711743
  %arrayidx29.i.548 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 7
  %arrayidx30.i.549 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 8
  %101 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.550 = trunc i128 %101 to i64
  %and32.i.551 = and i64 %conv31.i.550, 288230376151711743
  %arrayidx33.i.552 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 8
  %shr.i.553 = lshr i64 %conv.i.519, 58
  %add.i.554 = add nuw nsw i64 %and4.i.523, %shr.i.553
  %102 = lshr i128 %93, 58
  %and40.i.555 = trunc i128 %102 to i64
  %shl.i.556 = and i64 %and40.i.555, 288230376151711680
  %add42.i.557 = add nuw nsw i64 %add.i.554, %shl.i.556
  %shr44.i.558 = lshr i128 %93, 116
  %shr46.i.559 = trunc i128 %shr44.i.558 to i64
  %shr51.i.561 = lshr i64 %conv3.i.522, 58
  %103 = lshr i128 %94, 58
  %and57.i.563 = trunc i128 %103 to i64
  %shl58.i.564 = and i64 %and57.i.563, 288230376151711680
  %add48.i.560 = add nuw nsw i64 %shr51.i.561, %shr46.i.559
  %add53.i.562 = add nuw nsw i64 %add48.i.560, %and8.i.527
  %add60.i.565 = add nuw nsw i64 %add53.i.562, %shl58.i.564
  store i64 %add60.i.565, i64* %arrayidx9.i.528, align 16, !tbaa !6
  %shr62.i.566 = lshr i128 %94, 116
  %shr64.i.567 = trunc i128 %shr62.i.566 to i64
  %shr69.i.569 = lshr i64 %conv7.i.526, 58
  %104 = lshr i128 %95, 58
  %and75.i.571 = trunc i128 %104 to i64
  %shl76.i.572 = and i64 %and75.i.571, 288230376151711680
  %add66.i.568 = add nuw nsw i64 %shr69.i.569, %shr64.i.567
  %add71.i.570 = add nuw nsw i64 %add66.i.568, %and12.i.531
  %add78.i.573 = add nuw nsw i64 %add71.i.570, %shl76.i.572
  store i64 %add78.i.573, i64* %arrayidx13.i.532, align 8, !tbaa !6
  %shr80.i.574 = lshr i128 %95, 116
  %shr82.i.575 = trunc i128 %shr80.i.574 to i64
  %shr87.i.577 = lshr i64 %conv11.i.530, 58
  %105 = lshr i128 %96, 58
  %and93.i.579 = trunc i128 %105 to i64
  %shl94.i.580 = and i64 %and93.i.579, 288230376151711680
  %add84.i.576 = add nuw nsw i64 %shr87.i.577, %shr82.i.575
  %add89.i.578 = add nuw nsw i64 %add84.i.576, %and16.i.535
  %add96.i.581 = add nuw nsw i64 %add89.i.578, %shl94.i.580
  store i64 %add96.i.581, i64* %arrayidx17.i.536, align 16, !tbaa !6
  %shr98.i.582 = lshr i128 %96, 116
  %shr100.i.583 = trunc i128 %shr98.i.582 to i64
  %shr105.i.585 = lshr i64 %conv15.i.534, 58
  %106 = lshr i128 %97, 58
  %and111.i.587 = trunc i128 %106 to i64
  %shl112.i.588 = and i64 %and111.i.587, 288230376151711680
  %add102.i.584 = add nuw nsw i64 %shr105.i.585, %shr100.i.583
  %add107.i.586 = add nuw nsw i64 %add102.i.584, %and20.i.539
  %add114.i.589 = add nuw nsw i64 %add107.i.586, %shl112.i.588
  store i64 %add114.i.589, i64* %arrayidx21.i.540, align 8, !tbaa !6
  %shr116.i.590 = lshr i128 %97, 116
  %shr118.i.591 = trunc i128 %shr116.i.590 to i64
  %shr123.i.593 = lshr i64 %conv19.i.538, 58
  %107 = lshr i128 %98, 58
  %and129.i.595 = trunc i128 %107 to i64
  %shl130.i.596 = and i64 %and129.i.595, 288230376151711680
  %add120.i.592 = add nuw nsw i64 %shr123.i.593, %shr118.i.591
  %add125.i.594 = add nuw nsw i64 %add120.i.592, %and24.i.543
  %add132.i.597 = add nuw nsw i64 %add125.i.594, %shl130.i.596
  store i64 %add132.i.597, i64* %arrayidx25.i.544, align 16, !tbaa !6
  %shr134.i.598 = lshr i128 %98, 116
  %shr136.i.599 = trunc i128 %shr134.i.598 to i64
  %shr141.i.601 = lshr i64 %conv23.i.542, 58
  %108 = lshr i128 %99, 58
  %and147.i.603 = trunc i128 %108 to i64
  %shl148.i.604 = and i64 %and147.i.603, 288230376151711680
  %add138.i.600 = add nuw nsw i64 %shr141.i.601, %shr136.i.599
  %add143.i.602 = add nuw nsw i64 %add138.i.600, %and28.i.547
  %add150.i.605 = add nuw nsw i64 %add143.i.602, %shl148.i.604
  store i64 %add150.i.605, i64* %arrayidx29.i.548, align 8, !tbaa !6
  %shr152.i.606 = lshr i128 %99, 116
  %shr154.i.607 = trunc i128 %shr152.i.606 to i64
  %shr159.i.609 = lshr i64 %conv27.i.546, 58
  %109 = lshr i128 %100, 58
  %and165.i.611 = trunc i128 %109 to i64
  %shl166.i.612 = and i64 %and165.i.611, 288230376151711680
  %add156.i.608 = add nuw nsw i64 %shr159.i.609, %shr154.i.607
  %add161.i.610 = add nuw nsw i64 %add156.i.608, %and32.i.551
  %add168.i.613 = add nuw nsw i64 %add161.i.610, %shl166.i.612
  store i64 %add168.i.613, i64* %arrayidx33.i.552, align 16, !tbaa !6
  %shr170.i.614 = lshr i128 %100, 116
  %shr172.i.615 = trunc i128 %shr170.i.614 to i64
  %shr175.i.617 = lshr i64 %conv31.i.550, 58
  %add176.i.618 = add nuw nsw i64 %shr175.i.617, %shr172.i.615
  %110 = lshr i128 %101, 58
  %and180.i.619 = trunc i128 %110 to i64
  %shl181.i.620 = and i64 %and180.i.619, 288230376151711680
  %add182.i.621 = add nuw nsw i64 %add176.i.618, %shl181.i.620
  %shl187.i.622 = shl nuw nsw i64 %add182.i.621, 1
  %111 = lshr i128 %101, 115
  %.tr.i.623 = trunc i128 %111 to i64
  %shl188.i.624 = and i64 %.tr.i.623, 8190
  %112 = load i64, i64* %arraydecay8, align 16, !tbaa !6
  %add190.i.625 = add i64 %shl187.i.622, %112
  %add192.i.626 = add nuw nsw i64 %shl188.i.624, %add42.i.557
  %shr194.i.627 = lshr i64 %add190.i.625, 58
  %add196.i.628 = add nuw nsw i64 %add192.i.626, %shr194.i.627
  store i64 %add196.i.628, i64* %arrayidx5.i.524, align 8, !tbaa !6
  %and198.i.629 = and i64 %add190.i.625, 288230376151711743
  store i64 %and198.i.629, i64* %arraydecay8, align 16, !tbaa !6
  %tobool = icmp eq i32 %mixed, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call fastcc void @felem_square(i128* %arraydecay, i64* %z2)
  %arraydecay11 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 0
  %113 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.865 = trunc i128 %113 to i64
  %and.i.866 = and i64 %conv.i.865, 288230376151711743
  store i64 %and.i.866, i64* %arraydecay11, align 16, !tbaa !6
  %114 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.868 = trunc i128 %114 to i64
  %and4.i.869 = and i64 %conv3.i.868, 288230376151711743
  %arrayidx5.i.870 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 1
  %115 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.872 = trunc i128 %115 to i64
  %and8.i.873 = and i64 %conv7.i.872, 288230376151711743
  %arrayidx9.i.874 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 2
  %116 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.876 = trunc i128 %116 to i64
  %and12.i.877 = and i64 %conv11.i.876, 288230376151711743
  %arrayidx13.i.878 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 3
  %117 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.880 = trunc i128 %117 to i64
  %and16.i.881 = and i64 %conv15.i.880, 288230376151711743
  %arrayidx17.i.882 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 4
  %118 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.884 = trunc i128 %118 to i64
  %and20.i.885 = and i64 %conv19.i.884, 288230376151711743
  %arrayidx21.i.886 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 5
  %119 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.888 = trunc i128 %119 to i64
  %and24.i.889 = and i64 %conv23.i.888, 288230376151711743
  %arrayidx25.i.890 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 6
  %120 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.892 = trunc i128 %120 to i64
  %and28.i.893 = and i64 %conv27.i.892, 288230376151711743
  %arrayidx29.i.894 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 7
  %121 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.896 = trunc i128 %121 to i64
  %and32.i.897 = and i64 %conv31.i.896, 288230376151711743
  %arrayidx33.i.898 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 8
  %shr.i.899 = lshr i64 %conv.i.865, 58
  %add.i.900 = add nuw nsw i64 %and4.i.869, %shr.i.899
  %122 = lshr i128 %113, 58
  %and40.i.901 = trunc i128 %122 to i64
  %shl.i.902 = and i64 %and40.i.901, 288230376151711680
  %add42.i.903 = add nuw nsw i64 %add.i.900, %shl.i.902
  %shr44.i.904 = lshr i128 %113, 116
  %shr46.i.905 = trunc i128 %shr44.i.904 to i64
  %shr51.i.907 = lshr i64 %conv3.i.868, 58
  %123 = lshr i128 %114, 58
  %and57.i.909 = trunc i128 %123 to i64
  %shl58.i.910 = and i64 %and57.i.909, 288230376151711680
  %add48.i.906 = add nuw nsw i64 %shr51.i.907, %shr46.i.905
  %add53.i.908 = add nuw nsw i64 %add48.i.906, %and8.i.873
  %add60.i.911 = add nuw nsw i64 %add53.i.908, %shl58.i.910
  store i64 %add60.i.911, i64* %arrayidx9.i.874, align 16, !tbaa !6
  %shr62.i.912 = lshr i128 %114, 116
  %shr64.i.913 = trunc i128 %shr62.i.912 to i64
  %shr69.i.915 = lshr i64 %conv7.i.872, 58
  %124 = lshr i128 %115, 58
  %and75.i.917 = trunc i128 %124 to i64
  %shl76.i.918 = and i64 %and75.i.917, 288230376151711680
  %add66.i.914 = add nuw nsw i64 %shr69.i.915, %shr64.i.913
  %add71.i.916 = add nuw nsw i64 %add66.i.914, %and12.i.877
  %add78.i.919 = add nuw nsw i64 %add71.i.916, %shl76.i.918
  store i64 %add78.i.919, i64* %arrayidx13.i.878, align 8, !tbaa !6
  %shr80.i.920 = lshr i128 %115, 116
  %shr82.i.921 = trunc i128 %shr80.i.920 to i64
  %shr87.i.923 = lshr i64 %conv11.i.876, 58
  %125 = lshr i128 %116, 58
  %and93.i.925 = trunc i128 %125 to i64
  %shl94.i.926 = and i64 %and93.i.925, 288230376151711680
  %add84.i.922 = add nuw nsw i64 %shr87.i.923, %shr82.i.921
  %add89.i.924 = add nuw nsw i64 %add84.i.922, %and16.i.881
  %add96.i.927 = add nuw nsw i64 %add89.i.924, %shl94.i.926
  store i64 %add96.i.927, i64* %arrayidx17.i.882, align 16, !tbaa !6
  %shr98.i.928 = lshr i128 %116, 116
  %shr100.i.929 = trunc i128 %shr98.i.928 to i64
  %shr105.i.931 = lshr i64 %conv15.i.880, 58
  %126 = lshr i128 %117, 58
  %and111.i.933 = trunc i128 %126 to i64
  %shl112.i.934 = and i64 %and111.i.933, 288230376151711680
  %add102.i.930 = add nuw nsw i64 %shr105.i.931, %shr100.i.929
  %add107.i.932 = add nuw nsw i64 %add102.i.930, %and20.i.885
  %add114.i.935 = add nuw nsw i64 %add107.i.932, %shl112.i.934
  store i64 %add114.i.935, i64* %arrayidx21.i.886, align 8, !tbaa !6
  %shr116.i.936 = lshr i128 %117, 116
  %shr118.i.937 = trunc i128 %shr116.i.936 to i64
  %shr123.i.939 = lshr i64 %conv19.i.884, 58
  %127 = lshr i128 %118, 58
  %and129.i.941 = trunc i128 %127 to i64
  %shl130.i.942 = and i64 %and129.i.941, 288230376151711680
  %add120.i.938 = add nuw nsw i64 %shr123.i.939, %shr118.i.937
  %add125.i.940 = add nuw nsw i64 %add120.i.938, %and24.i.889
  %add132.i.943 = add nuw nsw i64 %add125.i.940, %shl130.i.942
  store i64 %add132.i.943, i64* %arrayidx25.i.890, align 16, !tbaa !6
  %shr134.i.944 = lshr i128 %118, 116
  %shr136.i.945 = trunc i128 %shr134.i.944 to i64
  %shr141.i.947 = lshr i64 %conv23.i.888, 58
  %128 = lshr i128 %119, 58
  %and147.i.949 = trunc i128 %128 to i64
  %shl148.i.950 = and i64 %and147.i.949, 288230376151711680
  %add138.i.946 = add nuw nsw i64 %shr141.i.947, %shr136.i.945
  %add143.i.948 = add nuw nsw i64 %add138.i.946, %and28.i.893
  %add150.i.951 = add nuw nsw i64 %add143.i.948, %shl148.i.950
  store i64 %add150.i.951, i64* %arrayidx29.i.894, align 8, !tbaa !6
  %shr152.i.952 = lshr i128 %119, 116
  %shr154.i.953 = trunc i128 %shr152.i.952 to i64
  %shr159.i.955 = lshr i64 %conv27.i.892, 58
  %129 = lshr i128 %120, 58
  %and165.i.957 = trunc i128 %129 to i64
  %shl166.i.958 = and i64 %and165.i.957, 288230376151711680
  %add156.i.954 = add nuw nsw i64 %shr159.i.955, %shr154.i.953
  %add161.i.956 = add nuw nsw i64 %add156.i.954, %and32.i.897
  %add168.i.959 = add nuw nsw i64 %add161.i.956, %shl166.i.958
  store i64 %add168.i.959, i64* %arrayidx33.i.898, align 16, !tbaa !6
  %shr170.i.960 = lshr i128 %120, 116
  %shr172.i.961 = trunc i128 %shr170.i.960 to i64
  %shr175.i.963 = lshr i64 %conv31.i.896, 58
  %add176.i.964 = add nuw nsw i64 %shr175.i.963, %shr172.i.961
  %130 = lshr i128 %121, 58
  %and180.i.965 = trunc i128 %130 to i64
  %shl181.i.966 = and i64 %and180.i.965, 288230376151711680
  %add182.i.967 = add nuw nsw i64 %add176.i.964, %shl181.i.966
  %shl187.i.968 = shl nuw nsw i64 %add182.i.967, 1
  %131 = lshr i128 %121, 115
  %.tr.i.969 = trunc i128 %131 to i64
  %shl188.i.970 = and i64 %.tr.i.969, 8190
  %132 = load i64, i64* %arraydecay11, align 16, !tbaa !6
  %add190.i.971 = add i64 %shl187.i.968, %132
  %add192.i.972 = add nuw nsw i64 %shl188.i.970, %add42.i.903
  %shr194.i.973 = lshr i64 %add190.i.971, 58
  %add196.i.974 = add nuw nsw i64 %add192.i.972, %shr194.i.973
  store i64 %add196.i.974, i64* %arrayidx5.i.870, align 8, !tbaa !6
  %and198.i.975 = and i64 %add190.i.971, 288230376151711743
  store i64 %and198.i.975, i64* %arraydecay11, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %x1, i64* %arraydecay11)
  %arraydecay15 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 0
  %133 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1087 = trunc i128 %133 to i64
  %and.i.1088 = and i64 %conv.i.1087, 288230376151711743
  store i64 %and.i.1088, i64* %arraydecay15, align 16, !tbaa !6
  %134 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.1090 = trunc i128 %134 to i64
  %and4.i.1091 = and i64 %conv3.i.1090, 288230376151711743
  %arrayidx5.i.1092 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 1
  %135 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.1094 = trunc i128 %135 to i64
  %and8.i.1095 = and i64 %conv7.i.1094, 288230376151711743
  %arrayidx9.i.1096 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 2
  %136 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.1098 = trunc i128 %136 to i64
  %and12.i.1099 = and i64 %conv11.i.1098, 288230376151711743
  %arrayidx13.i.1100 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 3
  %137 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.1102 = trunc i128 %137 to i64
  %and16.i.1103 = and i64 %conv15.i.1102, 288230376151711743
  %arrayidx17.i.1104 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 4
  %138 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.1106 = trunc i128 %138 to i64
  %and20.i.1107 = and i64 %conv19.i.1106, 288230376151711743
  %arrayidx21.i.1108 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 5
  %139 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.1110 = trunc i128 %139 to i64
  %and24.i.1111 = and i64 %conv23.i.1110, 288230376151711743
  %arrayidx25.i.1112 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 6
  %140 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.1114 = trunc i128 %140 to i64
  %and28.i.1115 = and i64 %conv27.i.1114, 288230376151711743
  %arrayidx29.i.1116 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 7
  %141 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.1118 = trunc i128 %141 to i64
  %and32.i.1119 = and i64 %conv31.i.1118, 288230376151711743
  %arrayidx33.i.1120 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 8
  %shr.i.1121 = lshr i64 %conv.i.1087, 58
  %add.i.1122 = add nuw nsw i64 %and4.i.1091, %shr.i.1121
  %142 = lshr i128 %133, 58
  %and40.i.1123 = trunc i128 %142 to i64
  %shl.i.1124 = and i64 %and40.i.1123, 288230376151711680
  %add42.i.1125 = add nuw nsw i64 %add.i.1122, %shl.i.1124
  %shr44.i.1126 = lshr i128 %133, 116
  %shr46.i.1127 = trunc i128 %shr44.i.1126 to i64
  %shr51.i.1129 = lshr i64 %conv3.i.1090, 58
  %143 = lshr i128 %134, 58
  %and57.i.1131 = trunc i128 %143 to i64
  %shl58.i.1132 = and i64 %and57.i.1131, 288230376151711680
  %add48.i.1128 = add nuw nsw i64 %shr51.i.1129, %shr46.i.1127
  %add53.i.1130 = add nuw nsw i64 %add48.i.1128, %and8.i.1095
  %add60.i.1133 = add nuw nsw i64 %add53.i.1130, %shl58.i.1132
  store i64 %add60.i.1133, i64* %arrayidx9.i.1096, align 16, !tbaa !6
  %shr62.i.1134 = lshr i128 %134, 116
  %shr64.i.1135 = trunc i128 %shr62.i.1134 to i64
  %shr69.i.1137 = lshr i64 %conv7.i.1094, 58
  %144 = lshr i128 %135, 58
  %and75.i.1139 = trunc i128 %144 to i64
  %shl76.i.1140 = and i64 %and75.i.1139, 288230376151711680
  %add66.i.1136 = add nuw nsw i64 %shr69.i.1137, %shr64.i.1135
  %add71.i.1138 = add nuw nsw i64 %add66.i.1136, %and12.i.1099
  %add78.i.1141 = add nuw nsw i64 %add71.i.1138, %shl76.i.1140
  store i64 %add78.i.1141, i64* %arrayidx13.i.1100, align 8, !tbaa !6
  %shr80.i.1142 = lshr i128 %135, 116
  %shr82.i.1143 = trunc i128 %shr80.i.1142 to i64
  %shr87.i.1145 = lshr i64 %conv11.i.1098, 58
  %145 = lshr i128 %136, 58
  %and93.i.1147 = trunc i128 %145 to i64
  %shl94.i.1148 = and i64 %and93.i.1147, 288230376151711680
  %add84.i.1144 = add nuw nsw i64 %shr87.i.1145, %shr82.i.1143
  %add89.i.1146 = add nuw nsw i64 %add84.i.1144, %and16.i.1103
  %add96.i.1149 = add nuw nsw i64 %add89.i.1146, %shl94.i.1148
  store i64 %add96.i.1149, i64* %arrayidx17.i.1104, align 16, !tbaa !6
  %shr98.i.1150 = lshr i128 %136, 116
  %shr100.i.1151 = trunc i128 %shr98.i.1150 to i64
  %shr105.i.1153 = lshr i64 %conv15.i.1102, 58
  %146 = lshr i128 %137, 58
  %and111.i.1155 = trunc i128 %146 to i64
  %shl112.i.1156 = and i64 %and111.i.1155, 288230376151711680
  %add102.i.1152 = add nuw nsw i64 %shr105.i.1153, %shr100.i.1151
  %add107.i.1154 = add nuw nsw i64 %add102.i.1152, %and20.i.1107
  %add114.i.1157 = add nuw nsw i64 %add107.i.1154, %shl112.i.1156
  store i64 %add114.i.1157, i64* %arrayidx21.i.1108, align 8, !tbaa !6
  %shr116.i.1158 = lshr i128 %137, 116
  %shr118.i.1159 = trunc i128 %shr116.i.1158 to i64
  %shr123.i.1161 = lshr i64 %conv19.i.1106, 58
  %147 = lshr i128 %138, 58
  %and129.i.1163 = trunc i128 %147 to i64
  %shl130.i.1164 = and i64 %and129.i.1163, 288230376151711680
  %add120.i.1160 = add nuw nsw i64 %shr123.i.1161, %shr118.i.1159
  %add125.i.1162 = add nuw nsw i64 %add120.i.1160, %and24.i.1111
  %add132.i.1165 = add nuw nsw i64 %add125.i.1162, %shl130.i.1164
  store i64 %add132.i.1165, i64* %arrayidx25.i.1112, align 16, !tbaa !6
  %shr134.i.1166 = lshr i128 %138, 116
  %shr136.i.1167 = trunc i128 %shr134.i.1166 to i64
  %shr141.i.1169 = lshr i64 %conv23.i.1110, 58
  %148 = lshr i128 %139, 58
  %and147.i.1171 = trunc i128 %148 to i64
  %shl148.i.1172 = and i64 %and147.i.1171, 288230376151711680
  %add138.i.1168 = add nuw nsw i64 %shr141.i.1169, %shr136.i.1167
  %add143.i.1170 = add nuw nsw i64 %add138.i.1168, %and28.i.1115
  %add150.i.1173 = add nuw nsw i64 %add143.i.1170, %shl148.i.1172
  store i64 %add150.i.1173, i64* %arrayidx29.i.1116, align 8, !tbaa !6
  %shr152.i.1174 = lshr i128 %139, 116
  %shr154.i.1175 = trunc i128 %shr152.i.1174 to i64
  %shr159.i.1177 = lshr i64 %conv27.i.1114, 58
  %149 = lshr i128 %140, 58
  %and165.i.1179 = trunc i128 %149 to i64
  %shl166.i.1180 = and i64 %and165.i.1179, 288230376151711680
  %add156.i.1176 = add nuw nsw i64 %shr159.i.1177, %shr154.i.1175
  %add161.i.1178 = add nuw nsw i64 %add156.i.1176, %and32.i.1119
  %add168.i.1181 = add nuw nsw i64 %add161.i.1178, %shl166.i.1180
  store i64 %add168.i.1181, i64* %arrayidx33.i.1120, align 16, !tbaa !6
  %shr170.i.1182 = lshr i128 %140, 116
  %shr172.i.1183 = trunc i128 %shr170.i.1182 to i64
  %shr175.i.1185 = lshr i64 %conv31.i.1118, 58
  %add176.i.1186 = add nuw nsw i64 %shr175.i.1185, %shr172.i.1183
  %150 = lshr i128 %141, 58
  %and180.i.1187 = trunc i128 %150 to i64
  %shl181.i.1188 = and i64 %and180.i.1187, 288230376151711680
  %add182.i.1189 = add nuw nsw i64 %add176.i.1186, %shl181.i.1188
  %shl187.i.1190 = shl nuw nsw i64 %add182.i.1189, 1
  %151 = lshr i128 %141, 115
  %.tr.i.1191 = trunc i128 %151 to i64
  %shl188.i.1192 = and i64 %.tr.i.1191, 8190
  %152 = load i64, i64* %arraydecay15, align 16, !tbaa !6
  %add190.i.1193 = add i64 %shl187.i.1190, %152
  %add192.i.1194 = add nuw nsw i64 %shl188.i.1192, %add42.i.1125
  %shr194.i.1195 = lshr i64 %add190.i.1193, 58
  %add196.i.1196 = add nuw nsw i64 %add192.i.1194, %shr194.i.1195
  store i64 %add196.i.1196, i64* %arrayidx5.i.1092, align 8, !tbaa !6
  %and198.i.1197 = and i64 %add190.i.1193, 288230376151711743
  store i64 %and198.i.1197, i64* %arraydecay15, align 16, !tbaa !6
  %arraydecay17 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 0
  %153 = bitcast i64* %z1 to <2 x i64>*
  %154 = load <2 x i64>, <2 x i64>* %153, align 8, !tbaa !6
  %arrayidx3.i.1310 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 1
  %155 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !6
  %arrayidx5.i.1312 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 2
  %156 = load i64, i64* %arrayidx6.i.i, align 8, !tbaa !6
  %arrayidx7.i.1314 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 3
  %157 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %arrayidx9.i.1316 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 4
  %158 = load i64, i64* %arrayidx10.i.i, align 8, !tbaa !6
  %arrayidx11.i.1318 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 5
  %159 = load i64, i64* %arrayidx12.i.i, align 8, !tbaa !6
  %arrayidx13.i.1320 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 6
  %160 = load i64, i64* %arrayidx14.i.i, align 8, !tbaa !6
  %arrayidx15.i.1322 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 7
  %161 = load i64, i64* %arrayidx16.i.i, align 8, !tbaa !6
  %arrayidx17.i.1324 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 8
  %162 = bitcast i64* %z2 to <2 x i64>*
  %163 = load <2 x i64>, <2 x i64>* %162, align 8, !tbaa !6
  %164 = add <2 x i64> %154, %163
  %165 = bitcast [9 x i64]* %ftmp5 to <2 x i64>*
  store <2 x i64> %164, <2 x i64>* %165, align 16, !tbaa !6
  %166 = load i64, i64* %arrayidx4.i.i.456, align 8, !tbaa !6
  %add7.i = add i64 %155, %166
  store i64 %add7.i, i64* %arrayidx5.i.1312, align 16, !tbaa !6
  %167 = load i64, i64* %arrayidx6.i.i.457, align 8, !tbaa !6
  %add10.i = add i64 %156, %167
  store i64 %add10.i, i64* %arrayidx7.i.1314, align 8, !tbaa !6
  %168 = load i64, i64* %arrayidx8.i.i.458, align 8, !tbaa !6
  %add13.i.1445 = add i64 %157, %168
  store i64 %add13.i.1445, i64* %arrayidx9.i.1316, align 16, !tbaa !6
  %169 = load i64, i64* %arrayidx10.i.i.459, align 8, !tbaa !6
  %add16.i.1448 = add i64 %158, %169
  store i64 %add16.i.1448, i64* %arrayidx11.i.1318, align 8, !tbaa !6
  %170 = load i64, i64* %arrayidx12.i.i.460, align 8, !tbaa !6
  %add19.i = add i64 %159, %170
  store i64 %add19.i, i64* %arrayidx13.i.1320, align 16, !tbaa !6
  %171 = load i64, i64* %arrayidx14.i.i.461, align 8, !tbaa !6
  %add22.i = add i64 %160, %171
  store i64 %add22.i, i64* %arrayidx15.i.1322, align 8, !tbaa !6
  %172 = load i64, i64* %arrayidx16.i.i.462, align 8, !tbaa !6
  %add25.i.1455 = add i64 %161, %172
  store i64 %add25.i.1455, i64* %arrayidx17.i.1324, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay17)
  %173 = load i64, i64* %arraydecay8, align 16, !tbaa !6
  %sub.i.1489 = sub i64 4611686018427387872, %173
  %conv.i.1490 = zext i64 %sub.i.1489 to i128
  %174 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1491 = add i128 %conv.i.1490, %174
  %175 = load i64, i64* %arrayidx5.i.524, align 8, !tbaa !6
  %sub3.i.1493 = sub i64 4611686018427387888, %175
  %conv4.i.1494 = zext i64 %sub3.i.1493 to i128
  %176 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %add6.i.1496 = add i128 %conv4.i.1494, %176
  %177 = load i64, i64* %arrayidx9.i.528, align 16, !tbaa !6
  %sub8.i.1498 = sub i64 4611686018427387888, %177
  %conv9.i.1499 = zext i64 %sub8.i.1498 to i128
  %178 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %add11.i.1501 = add i128 %conv9.i.1499, %178
  %179 = load i64, i64* %arrayidx13.i.532, align 8, !tbaa !6
  %sub13.i.1503 = sub i64 4611686018427387888, %179
  %conv14.i.1504 = zext i64 %sub13.i.1503 to i128
  %180 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %add16.i.1506 = add i128 %conv14.i.1504, %180
  %181 = load i64, i64* %arrayidx17.i.536, align 16, !tbaa !6
  %sub18.i.1508 = sub i64 4611686018427387888, %181
  %conv19.i.1509 = zext i64 %sub18.i.1508 to i128
  %182 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %add21.i.1511 = add i128 %conv19.i.1509, %182
  %183 = load i64, i64* %arrayidx21.i.540, align 8, !tbaa !6
  %sub23.i.1513 = sub i64 4611686018427387888, %183
  %conv24.i.1514 = zext i64 %sub23.i.1513 to i128
  %184 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %add26.i.1516 = add i128 %conv24.i.1514, %184
  %185 = load i64, i64* %arrayidx25.i.544, align 16, !tbaa !6
  %sub28.i.1518 = sub i64 4611686018427387888, %185
  %conv29.i.1519 = zext i64 %sub28.i.1518 to i128
  %186 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %add31.i.1521 = add i128 %conv29.i.1519, %186
  %187 = load i64, i64* %arrayidx29.i.548, align 8, !tbaa !6
  %sub33.i.1523 = sub i64 4611686018427387888, %187
  %conv34.i.1524 = zext i64 %sub33.i.1523 to i128
  %188 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %add36.i.1526 = add i128 %conv34.i.1524, %188
  %189 = load i64, i64* %arrayidx33.i.552, align 16, !tbaa !6
  %sub38.i.1528 = sub i64 4611686018427387888, %189
  %conv39.i.1529 = zext i64 %sub38.i.1528 to i128
  %190 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %add41.i.1531 = add i128 %conv39.i.1529, %190
  %191 = load i64, i64* %arraydecay11, align 16, !tbaa !6
  %sub.i.1767 = sub i64 4611686018427387872, %191
  %conv.i.1768 = zext i64 %sub.i.1767 to i128
  %add.i.1769 = add i128 %conv.i.1768, %add.i.1491
  store i128 %add.i.1769, i128* %arraydecay, align 16, !tbaa !2
  %192 = load i64, i64* %arrayidx5.i.870, align 8, !tbaa !6
  %sub3.i.1771 = sub i64 4611686018427387888, %192
  %conv4.i.1772 = zext i64 %sub3.i.1771 to i128
  %add6.i.1774 = add i128 %conv4.i.1772, %add6.i.1496
  store i128 %add6.i.1774, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %193 = load i64, i64* %arrayidx9.i.874, align 16, !tbaa !6
  %sub8.i.1776 = sub i64 4611686018427387888, %193
  %conv9.i.1777 = zext i64 %sub8.i.1776 to i128
  %add11.i.1779 = add i128 %conv9.i.1777, %add11.i.1501
  store i128 %add11.i.1779, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %194 = load i64, i64* %arrayidx13.i.878, align 8, !tbaa !6
  %sub13.i.1781 = sub i64 4611686018427387888, %194
  %conv14.i.1782 = zext i64 %sub13.i.1781 to i128
  %add16.i.1784 = add i128 %conv14.i.1782, %add16.i.1506
  store i128 %add16.i.1784, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %195 = load i64, i64* %arrayidx17.i.882, align 16, !tbaa !6
  %sub18.i.1786 = sub i64 4611686018427387888, %195
  %conv19.i.1787 = zext i64 %sub18.i.1786 to i128
  %add21.i.1789 = add i128 %conv19.i.1787, %add21.i.1511
  store i128 %add21.i.1789, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %196 = load i64, i64* %arrayidx21.i.886, align 8, !tbaa !6
  %sub23.i.1791 = sub i64 4611686018427387888, %196
  %conv24.i.1792 = zext i64 %sub23.i.1791 to i128
  %add26.i.1794 = add i128 %conv24.i.1792, %add26.i.1516
  store i128 %add26.i.1794, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %197 = load i64, i64* %arrayidx25.i.890, align 16, !tbaa !6
  %sub28.i.1796 = sub i64 4611686018427387888, %197
  %conv29.i.1797 = zext i64 %sub28.i.1796 to i128
  %add31.i.1799 = add i128 %conv29.i.1797, %add31.i.1521
  store i128 %add31.i.1799, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %198 = load i64, i64* %arrayidx29.i.894, align 8, !tbaa !6
  %sub33.i.1801 = sub i64 4611686018427387888, %198
  %conv34.i.1802 = zext i64 %sub33.i.1801 to i128
  %add36.i.1804 = add i128 %conv34.i.1802, %add36.i.1526
  store i128 %add36.i.1804, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %199 = load i64, i64* %arrayidx33.i.898, align 16, !tbaa !6
  %sub38.i.1806 = sub i64 4611686018427387888, %199
  %conv39.i.1807 = zext i64 %sub38.i.1806 to i128
  %add41.i.1809 = add i128 %conv39.i.1807, %add41.i.1531
  store i128 %add41.i.1809, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv.i.1921 = trunc i128 %add.i.1769 to i64
  %and.i.1922 = and i64 %conv.i.1921, 288230376151711743
  store i64 %and.i.1922, i64* %arraydecay17, align 16, !tbaa !6
  %conv3.i.1924 = trunc i128 %add6.i.1774 to i64
  %and4.i.1925 = and i64 %conv3.i.1924, 288230376151711743
  %conv7.i.1928 = trunc i128 %add11.i.1779 to i64
  %and8.i.1929 = and i64 %conv7.i.1928, 288230376151711743
  %conv11.i.1932 = trunc i128 %add16.i.1784 to i64
  %and12.i.1933 = and i64 %conv11.i.1932, 288230376151711743
  %conv15.i.1936 = trunc i128 %add21.i.1789 to i64
  %and16.i.1937 = and i64 %conv15.i.1936, 288230376151711743
  %conv19.i.1940 = trunc i128 %add26.i.1794 to i64
  %and20.i.1941 = and i64 %conv19.i.1940, 288230376151711743
  %conv23.i.1944 = trunc i128 %add31.i.1799 to i64
  %and24.i.1945 = and i64 %conv23.i.1944, 288230376151711743
  %conv27.i.1948 = trunc i128 %add36.i.1804 to i64
  %and28.i.1949 = and i64 %conv27.i.1948, 288230376151711743
  %conv31.i.1952 = trunc i128 %add41.i.1809 to i64
  %and32.i.1953 = and i64 %conv31.i.1952, 288230376151711743
  %shr.i.1955 = lshr i64 %conv.i.1921, 58
  %add.i.1956 = add nuw nsw i64 %and4.i.1925, %shr.i.1955
  %200 = lshr i128 %add.i.1769, 58
  %and40.i.1957 = trunc i128 %200 to i64
  %shl.i.1958 = and i64 %and40.i.1957, 288230376151711680
  %add42.i.1959 = add nuw nsw i64 %add.i.1956, %shl.i.1958
  %shr44.i.1960 = lshr i128 %add.i.1769, 116
  %shr46.i.1961 = trunc i128 %shr44.i.1960 to i64
  %shr51.i.1963 = lshr i64 %conv3.i.1924, 58
  %201 = lshr i128 %add6.i.1774, 58
  %and57.i.1965 = trunc i128 %201 to i64
  %shl58.i.1966 = and i64 %and57.i.1965, 288230376151711680
  %add48.i.1962 = add nuw nsw i64 %shr51.i.1963, %shr46.i.1961
  %add53.i.1964 = add nuw nsw i64 %add48.i.1962, %and8.i.1929
  %add60.i.1967 = add nuw nsw i64 %add53.i.1964, %shl58.i.1966
  store i64 %add60.i.1967, i64* %arrayidx5.i.1312, align 16, !tbaa !6
  %shr62.i.1968 = lshr i128 %add6.i.1774, 116
  %shr64.i.1969 = trunc i128 %shr62.i.1968 to i64
  %shr69.i.1971 = lshr i64 %conv7.i.1928, 58
  %202 = lshr i128 %add11.i.1779, 58
  %and75.i.1973 = trunc i128 %202 to i64
  %shl76.i.1974 = and i64 %and75.i.1973, 288230376151711680
  %add66.i.1970 = add nuw nsw i64 %shr69.i.1971, %shr64.i.1969
  %add71.i.1972 = add nuw nsw i64 %add66.i.1970, %and12.i.1933
  %add78.i.1975 = add nuw nsw i64 %add71.i.1972, %shl76.i.1974
  store i64 %add78.i.1975, i64* %arrayidx7.i.1314, align 8, !tbaa !6
  %shr80.i.1976 = lshr i128 %add11.i.1779, 116
  %shr82.i.1977 = trunc i128 %shr80.i.1976 to i64
  %shr87.i.1979 = lshr i64 %conv11.i.1932, 58
  %203 = lshr i128 %add16.i.1784, 58
  %and93.i.1981 = trunc i128 %203 to i64
  %shl94.i.1982 = and i64 %and93.i.1981, 288230376151711680
  %add84.i.1978 = add nuw nsw i64 %shr87.i.1979, %shr82.i.1977
  %add89.i.1980 = add nuw nsw i64 %add84.i.1978, %and16.i.1937
  %add96.i.1983 = add nuw nsw i64 %add89.i.1980, %shl94.i.1982
  store i64 %add96.i.1983, i64* %arrayidx9.i.1316, align 16, !tbaa !6
  %shr98.i.1984 = lshr i128 %add16.i.1784, 116
  %shr100.i.1985 = trunc i128 %shr98.i.1984 to i64
  %shr105.i.1987 = lshr i64 %conv15.i.1936, 58
  %204 = lshr i128 %add21.i.1789, 58
  %and111.i.1989 = trunc i128 %204 to i64
  %shl112.i.1990 = and i64 %and111.i.1989, 288230376151711680
  %add102.i.1986 = add nuw nsw i64 %shr105.i.1987, %shr100.i.1985
  %add107.i.1988 = add nuw nsw i64 %add102.i.1986, %and20.i.1941
  %add114.i.1991 = add nuw nsw i64 %add107.i.1988, %shl112.i.1990
  store i64 %add114.i.1991, i64* %arrayidx11.i.1318, align 8, !tbaa !6
  %shr116.i.1992 = lshr i128 %add21.i.1789, 116
  %shr118.i.1993 = trunc i128 %shr116.i.1992 to i64
  %shr123.i.1995 = lshr i64 %conv19.i.1940, 58
  %205 = lshr i128 %add26.i.1794, 58
  %and129.i.1997 = trunc i128 %205 to i64
  %shl130.i.1998 = and i64 %and129.i.1997, 288230376151711680
  %add120.i.1994 = add nuw nsw i64 %shr123.i.1995, %shr118.i.1993
  %add125.i.1996 = add nuw nsw i64 %add120.i.1994, %and24.i.1945
  %add132.i.1999 = add nuw nsw i64 %add125.i.1996, %shl130.i.1998
  store i64 %add132.i.1999, i64* %arrayidx13.i.1320, align 16, !tbaa !6
  %shr134.i.2000 = lshr i128 %add26.i.1794, 116
  %shr136.i.2001 = trunc i128 %shr134.i.2000 to i64
  %shr141.i.2003 = lshr i64 %conv23.i.1944, 58
  %206 = lshr i128 %add31.i.1799, 58
  %and147.i.2005 = trunc i128 %206 to i64
  %shl148.i.2006 = and i64 %and147.i.2005, 288230376151711680
  %add138.i.2002 = add nuw nsw i64 %shr141.i.2003, %shr136.i.2001
  %add143.i.2004 = add nuw nsw i64 %add138.i.2002, %and28.i.1949
  %add150.i.2007 = add nuw nsw i64 %add143.i.2004, %shl148.i.2006
  store i64 %add150.i.2007, i64* %arrayidx15.i.1322, align 8, !tbaa !6
  %shr152.i.2008 = lshr i128 %add31.i.1799, 116
  %shr154.i.2009 = trunc i128 %shr152.i.2008 to i64
  %shr159.i.2011 = lshr i64 %conv27.i.1948, 58
  %207 = lshr i128 %add36.i.1804, 58
  %and165.i.2013 = trunc i128 %207 to i64
  %shl166.i.2014 = and i64 %and165.i.2013, 288230376151711680
  %add156.i.2010 = add nuw nsw i64 %shr159.i.2011, %shr154.i.2009
  %add161.i.2012 = add nuw nsw i64 %add156.i.2010, %and32.i.1953
  %add168.i.2015 = add nuw nsw i64 %add161.i.2012, %shl166.i.2014
  store i64 %add168.i.2015, i64* %arrayidx17.i.1324, align 16, !tbaa !6
  %208 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %shr170.i.2016 = lshr i128 %208, 116
  %shr172.i.2017 = trunc i128 %shr170.i.2016 to i64
  %209 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv174.i.2018 = trunc i128 %209 to i64
  %shr175.i.2019 = lshr i64 %conv174.i.2018, 58
  %add176.i.2020 = add nuw nsw i64 %shr175.i.2019, %shr172.i.2017
  %210 = lshr i128 %209, 58
  %and180.i.2021 = trunc i128 %210 to i64
  %shl181.i.2022 = and i64 %and180.i.2021, 288230376151711680
  %add182.i.2023 = add nuw nsw i64 %add176.i.2020, %shl181.i.2022
  %shl187.i.2024 = shl nuw nsw i64 %add182.i.2023, 1
  %211 = lshr i128 %209, 115
  %.tr.i.2025 = trunc i128 %211 to i64
  %shl188.i.2026 = and i64 %.tr.i.2025, 8190
  %212 = load i64, i64* %arraydecay17, align 16, !tbaa !6
  %add190.i.2027 = add i64 %shl187.i.2024, %212
  %add192.i.2028 = add nuw nsw i64 %shl188.i.2026, %add42.i.1959
  %shr194.i.2029 = lshr i64 %add190.i.2027, 58
  %add196.i.2030 = add nuw nsw i64 %add192.i.2028, %shr194.i.2029
  store i64 %add196.i.2030, i64* %arrayidx3.i.1310, align 8, !tbaa !6
  %and198.i.2031 = and i64 %add190.i.2027, 288230376151711743
  store i64 %and198.i.2031, i64* %arraydecay17, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay11, i64* %z2)
  %213 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2143 = trunc i128 %213 to i64
  %and.i.2144 = and i64 %conv.i.2143, 288230376151711743
  store i64 %and.i.2144, i64* %arraydecay11, align 16, !tbaa !6
  %214 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.2146 = trunc i128 %214 to i64
  %and4.i.2147 = and i64 %conv3.i.2146, 288230376151711743
  %215 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.2150 = trunc i128 %215 to i64
  %and8.i.2151 = and i64 %conv7.i.2150, 288230376151711743
  %216 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.2154 = trunc i128 %216 to i64
  %and12.i.2155 = and i64 %conv11.i.2154, 288230376151711743
  %217 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.2158 = trunc i128 %217 to i64
  %and16.i.2159 = and i64 %conv15.i.2158, 288230376151711743
  %218 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.2162 = trunc i128 %218 to i64
  %and20.i.2163 = and i64 %conv19.i.2162, 288230376151711743
  %219 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.2166 = trunc i128 %219 to i64
  %and24.i.2167 = and i64 %conv23.i.2166, 288230376151711743
  %220 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.2170 = trunc i128 %220 to i64
  %and28.i.2171 = and i64 %conv27.i.2170, 288230376151711743
  %221 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.2174 = trunc i128 %221 to i64
  %and32.i.2175 = and i64 %conv31.i.2174, 288230376151711743
  %shr.i.2177 = lshr i64 %conv.i.2143, 58
  %add.i.2178 = add nuw nsw i64 %and4.i.2147, %shr.i.2177
  %222 = lshr i128 %213, 58
  %and40.i.2179 = trunc i128 %222 to i64
  %shl.i.2180 = and i64 %and40.i.2179, 288230376151711680
  %add42.i.2181 = add nuw nsw i64 %add.i.2178, %shl.i.2180
  %shr44.i.2182 = lshr i128 %213, 116
  %shr46.i.2183 = trunc i128 %shr44.i.2182 to i64
  %shr51.i.2185 = lshr i64 %conv3.i.2146, 58
  %223 = lshr i128 %214, 58
  %and57.i.2187 = trunc i128 %223 to i64
  %shl58.i.2188 = and i64 %and57.i.2187, 288230376151711680
  %add48.i.2184 = add nuw nsw i64 %shr51.i.2185, %shr46.i.2183
  %add53.i.2186 = add nuw nsw i64 %add48.i.2184, %and8.i.2151
  %add60.i.2189 = add nuw nsw i64 %add53.i.2186, %shl58.i.2188
  store i64 %add60.i.2189, i64* %arrayidx9.i.874, align 16, !tbaa !6
  %shr62.i.2190 = lshr i128 %214, 116
  %shr64.i.2191 = trunc i128 %shr62.i.2190 to i64
  %shr69.i.2193 = lshr i64 %conv7.i.2150, 58
  %224 = lshr i128 %215, 58
  %and75.i.2195 = trunc i128 %224 to i64
  %shl76.i.2196 = and i64 %and75.i.2195, 288230376151711680
  %add66.i.2192 = add nuw nsw i64 %shr69.i.2193, %shr64.i.2191
  %add71.i.2194 = add nuw nsw i64 %add66.i.2192, %and12.i.2155
  %add78.i.2197 = add nuw nsw i64 %add71.i.2194, %shl76.i.2196
  store i64 %add78.i.2197, i64* %arrayidx13.i.878, align 8, !tbaa !6
  %shr80.i.2198 = lshr i128 %215, 116
  %shr82.i.2199 = trunc i128 %shr80.i.2198 to i64
  %shr87.i.2201 = lshr i64 %conv11.i.2154, 58
  %225 = lshr i128 %216, 58
  %and93.i.2203 = trunc i128 %225 to i64
  %shl94.i.2204 = and i64 %and93.i.2203, 288230376151711680
  %add84.i.2200 = add nuw nsw i64 %shr87.i.2201, %shr82.i.2199
  %add89.i.2202 = add nuw nsw i64 %add84.i.2200, %and16.i.2159
  %add96.i.2205 = add nuw nsw i64 %add89.i.2202, %shl94.i.2204
  store i64 %add96.i.2205, i64* %arrayidx17.i.882, align 16, !tbaa !6
  %shr98.i.2206 = lshr i128 %216, 116
  %shr100.i.2207 = trunc i128 %shr98.i.2206 to i64
  %shr105.i.2209 = lshr i64 %conv15.i.2158, 58
  %226 = lshr i128 %217, 58
  %and111.i.2211 = trunc i128 %226 to i64
  %shl112.i.2212 = and i64 %and111.i.2211, 288230376151711680
  %add102.i.2208 = add nuw nsw i64 %shr105.i.2209, %shr100.i.2207
  %add107.i.2210 = add nuw nsw i64 %add102.i.2208, %and20.i.2163
  %add114.i.2213 = add nuw nsw i64 %add107.i.2210, %shl112.i.2212
  store i64 %add114.i.2213, i64* %arrayidx21.i.886, align 8, !tbaa !6
  %shr116.i.2214 = lshr i128 %217, 116
  %shr118.i.2215 = trunc i128 %shr116.i.2214 to i64
  %shr123.i.2217 = lshr i64 %conv19.i.2162, 58
  %227 = lshr i128 %218, 58
  %and129.i.2219 = trunc i128 %227 to i64
  %shl130.i.2220 = and i64 %and129.i.2219, 288230376151711680
  %add120.i.2216 = add nuw nsw i64 %shr123.i.2217, %shr118.i.2215
  %add125.i.2218 = add nuw nsw i64 %add120.i.2216, %and24.i.2167
  %add132.i.2221 = add nuw nsw i64 %add125.i.2218, %shl130.i.2220
  store i64 %add132.i.2221, i64* %arrayidx25.i.890, align 16, !tbaa !6
  %shr134.i.2222 = lshr i128 %218, 116
  %shr136.i.2223 = trunc i128 %shr134.i.2222 to i64
  %shr141.i.2225 = lshr i64 %conv23.i.2166, 58
  %228 = lshr i128 %219, 58
  %and147.i.2227 = trunc i128 %228 to i64
  %shl148.i.2228 = and i64 %and147.i.2227, 288230376151711680
  %add138.i.2224 = add nuw nsw i64 %shr141.i.2225, %shr136.i.2223
  %add143.i.2226 = add nuw nsw i64 %add138.i.2224, %and28.i.2171
  %add150.i.2229 = add nuw nsw i64 %add143.i.2226, %shl148.i.2228
  store i64 %add150.i.2229, i64* %arrayidx29.i.894, align 8, !tbaa !6
  %shr152.i.2230 = lshr i128 %219, 116
  %shr154.i.2231 = trunc i128 %shr152.i.2230 to i64
  %shr159.i.2233 = lshr i64 %conv27.i.2170, 58
  %229 = lshr i128 %220, 58
  %and165.i.2235 = trunc i128 %229 to i64
  %shl166.i.2236 = and i64 %and165.i.2235, 288230376151711680
  %add156.i.2232 = add nuw nsw i64 %shr159.i.2233, %shr154.i.2231
  %add161.i.2234 = add nuw nsw i64 %add156.i.2232, %and32.i.2175
  %add168.i.2237 = add nuw nsw i64 %add161.i.2234, %shl166.i.2236
  store i64 %add168.i.2237, i64* %arrayidx33.i.898, align 16, !tbaa !6
  %shr170.i.2238 = lshr i128 %220, 116
  %shr172.i.2239 = trunc i128 %shr170.i.2238 to i64
  %shr175.i.2241 = lshr i64 %conv31.i.2174, 58
  %add176.i.2242 = add nuw nsw i64 %shr175.i.2241, %shr172.i.2239
  %230 = lshr i128 %221, 58
  %and180.i.2243 = trunc i128 %230 to i64
  %shl181.i.2244 = and i64 %and180.i.2243, 288230376151711680
  %add182.i.2245 = add nuw nsw i64 %add176.i.2242, %shl181.i.2244
  %shl187.i.2246 = shl nuw nsw i64 %add182.i.2245, 1
  %231 = lshr i128 %221, 115
  %.tr.i.2247 = trunc i128 %231 to i64
  %shl188.i.2248 = and i64 %.tr.i.2247, 8190
  %232 = load i64, i64* %arraydecay11, align 16, !tbaa !6
  %add190.i.2249 = add i64 %shl187.i.2246, %232
  %add192.i.2250 = add nuw nsw i64 %shl188.i.2248, %add42.i.2181
  %shr194.i.2251 = lshr i64 %add190.i.2249, 58
  %add196.i.2252 = add nuw nsw i64 %add192.i.2250, %shr194.i.2251
  store i64 %add196.i.2252, i64* %arrayidx5.i.870, align 8, !tbaa !6
  %and198.i.2253 = and i64 %add190.i.2249, 288230376151711743
  store i64 %and198.i.2253, i64* %arraydecay11, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %y1, i64* %arraydecay11)
  %arraydecay33 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 0
  %233 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2472 = trunc i128 %233 to i64
  %and.i.2473 = and i64 %conv.i.2472, 288230376151711743
  store i64 %and.i.2473, i64* %arraydecay33, align 16, !tbaa !6
  %234 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.2475 = trunc i128 %234 to i64
  %and4.i.2476 = and i64 %conv3.i.2475, 288230376151711743
  %arrayidx5.i.2477 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 1
  %235 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.2479 = trunc i128 %235 to i64
  %and8.i.2480 = and i64 %conv7.i.2479, 288230376151711743
  %arrayidx9.i.2481 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 2
  %236 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.2483 = trunc i128 %236 to i64
  %and12.i.2484 = and i64 %conv11.i.2483, 288230376151711743
  %arrayidx13.i.2485 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 3
  %237 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.2487 = trunc i128 %237 to i64
  %and16.i.2488 = and i64 %conv15.i.2487, 288230376151711743
  %arrayidx17.i.2489 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 4
  %238 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.2491 = trunc i128 %238 to i64
  %and20.i.2492 = and i64 %conv19.i.2491, 288230376151711743
  %arrayidx21.i.2493 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 5
  %239 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.2495 = trunc i128 %239 to i64
  %and24.i.2496 = and i64 %conv23.i.2495, 288230376151711743
  %arrayidx25.i.2497 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 6
  %240 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.2499 = trunc i128 %240 to i64
  %and28.i.2500 = and i64 %conv27.i.2499, 288230376151711743
  %arrayidx29.i.2501 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 7
  %241 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.2503 = trunc i128 %241 to i64
  %and32.i.2504 = and i64 %conv31.i.2503, 288230376151711743
  %arrayidx33.i.2505 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 8
  %shr.i.2506 = lshr i64 %conv.i.2472, 58
  %add.i.2507 = add nuw nsw i64 %and4.i.2476, %shr.i.2506
  %242 = lshr i128 %233, 58
  %and40.i.2508 = trunc i128 %242 to i64
  %shl.i.2509 = and i64 %and40.i.2508, 288230376151711680
  %add42.i.2510 = add nuw nsw i64 %add.i.2507, %shl.i.2509
  %shr44.i.2511 = lshr i128 %233, 116
  %shr46.i.2512 = trunc i128 %shr44.i.2511 to i64
  %shr51.i.2514 = lshr i64 %conv3.i.2475, 58
  %243 = lshr i128 %234, 58
  %and57.i.2516 = trunc i128 %243 to i64
  %shl58.i.2517 = and i64 %and57.i.2516, 288230376151711680
  %add48.i.2513 = add nuw nsw i64 %shr51.i.2514, %shr46.i.2512
  %add53.i.2515 = add nuw nsw i64 %add48.i.2513, %and8.i.2480
  %add60.i.2518 = add nuw nsw i64 %add53.i.2515, %shl58.i.2517
  store i64 %add60.i.2518, i64* %arrayidx9.i.2481, align 16, !tbaa !6
  %shr62.i.2519 = lshr i128 %234, 116
  %shr64.i.2520 = trunc i128 %shr62.i.2519 to i64
  %shr69.i.2522 = lshr i64 %conv7.i.2479, 58
  %244 = lshr i128 %235, 58
  %and75.i.2524 = trunc i128 %244 to i64
  %shl76.i.2525 = and i64 %and75.i.2524, 288230376151711680
  %add66.i.2521 = add nuw nsw i64 %shr69.i.2522, %shr64.i.2520
  %add71.i.2523 = add nuw nsw i64 %add66.i.2521, %and12.i.2484
  %add78.i.2526 = add nuw nsw i64 %add71.i.2523, %shl76.i.2525
  store i64 %add78.i.2526, i64* %arrayidx13.i.2485, align 8, !tbaa !6
  %shr80.i.2527 = lshr i128 %235, 116
  %shr82.i.2528 = trunc i128 %shr80.i.2527 to i64
  %shr87.i.2530 = lshr i64 %conv11.i.2483, 58
  %245 = lshr i128 %236, 58
  %and93.i.2532 = trunc i128 %245 to i64
  %shl94.i.2533 = and i64 %and93.i.2532, 288230376151711680
  %add84.i.2529 = add nuw nsw i64 %shr87.i.2530, %shr82.i.2528
  %add89.i.2531 = add nuw nsw i64 %add84.i.2529, %and16.i.2488
  %add96.i.2534 = add nuw nsw i64 %add89.i.2531, %shl94.i.2533
  store i64 %add96.i.2534, i64* %arrayidx17.i.2489, align 16, !tbaa !6
  %shr98.i.2535 = lshr i128 %236, 116
  %shr100.i.2536 = trunc i128 %shr98.i.2535 to i64
  %shr105.i.2538 = lshr i64 %conv15.i.2487, 58
  %246 = lshr i128 %237, 58
  %and111.i.2540 = trunc i128 %246 to i64
  %shl112.i.2541 = and i64 %and111.i.2540, 288230376151711680
  %add102.i.2537 = add nuw nsw i64 %shr105.i.2538, %shr100.i.2536
  %add107.i.2539 = add nuw nsw i64 %add102.i.2537, %and20.i.2492
  %add114.i.2542 = add nuw nsw i64 %add107.i.2539, %shl112.i.2541
  store i64 %add114.i.2542, i64* %arrayidx21.i.2493, align 8, !tbaa !6
  %shr116.i.2543 = lshr i128 %237, 116
  %shr118.i.2544 = trunc i128 %shr116.i.2543 to i64
  %shr123.i.2546 = lshr i64 %conv19.i.2491, 58
  %247 = lshr i128 %238, 58
  %and129.i.2548 = trunc i128 %247 to i64
  %shl130.i.2549 = and i64 %and129.i.2548, 288230376151711680
  %add120.i.2545 = add nuw nsw i64 %shr123.i.2546, %shr118.i.2544
  %add125.i.2547 = add nuw nsw i64 %add120.i.2545, %and24.i.2496
  %add132.i.2550 = add nuw nsw i64 %add125.i.2547, %shl130.i.2549
  store i64 %add132.i.2550, i64* %arrayidx25.i.2497, align 16, !tbaa !6
  %shr134.i.2551 = lshr i128 %238, 116
  %shr136.i.2552 = trunc i128 %shr134.i.2551 to i64
  %shr141.i.2554 = lshr i64 %conv23.i.2495, 58
  %248 = lshr i128 %239, 58
  %and147.i.2556 = trunc i128 %248 to i64
  %shl148.i.2557 = and i64 %and147.i.2556, 288230376151711680
  %add138.i.2553 = add nuw nsw i64 %shr141.i.2554, %shr136.i.2552
  %add143.i.2555 = add nuw nsw i64 %add138.i.2553, %and28.i.2500
  %add150.i.2558 = add nuw nsw i64 %add143.i.2555, %shl148.i.2557
  store i64 %add150.i.2558, i64* %arrayidx29.i.2501, align 8, !tbaa !6
  %shr152.i.2559 = lshr i128 %239, 116
  %shr154.i.2560 = trunc i128 %shr152.i.2559 to i64
  %shr159.i.2562 = lshr i64 %conv27.i.2499, 58
  %249 = lshr i128 %240, 58
  %and165.i.2564 = trunc i128 %249 to i64
  %shl166.i.2565 = and i64 %and165.i.2564, 288230376151711680
  %add156.i.2561 = add nuw nsw i64 %shr159.i.2562, %shr154.i.2560
  %add161.i.2563 = add nuw nsw i64 %add156.i.2561, %and32.i.2504
  %add168.i.2566 = add nuw nsw i64 %add161.i.2563, %shl166.i.2565
  store i64 %add168.i.2566, i64* %arrayidx33.i.2505, align 16, !tbaa !6
  %shr170.i.2567 = lshr i128 %240, 116
  %shr172.i.2568 = trunc i128 %shr170.i.2567 to i64
  %shr175.i.2570 = lshr i64 %conv31.i.2503, 58
  %add176.i.2571 = add nuw nsw i64 %shr175.i.2570, %shr172.i.2568
  %250 = lshr i128 %241, 58
  %and180.i.2572 = trunc i128 %250 to i64
  %shl181.i.2573 = and i64 %and180.i.2572, 288230376151711680
  %add182.i.2574 = add nuw nsw i64 %add176.i.2571, %shl181.i.2573
  %shl187.i.2575 = shl nuw nsw i64 %add182.i.2574, 1
  %251 = lshr i128 %241, 115
  %.tr.i.2576 = trunc i128 %251 to i64
  %shl188.i.2577 = and i64 %.tr.i.2576, 8190
  %252 = load i64, i64* %arraydecay33, align 16, !tbaa !6
  %add190.i.2578 = add i64 %shl187.i.2575, %252
  %add192.i.2579 = add nuw nsw i64 %shl188.i.2577, %add42.i.2510
  %shr194.i.2580 = lshr i64 %add190.i.2578, 58
  %add196.i.2581 = add nuw nsw i64 %add192.i.2579, %shr194.i.2580
  store i64 %add196.i.2581, i64* %arrayidx5.i.2477, align 8, !tbaa !6
  %and198.i.2582 = and i64 %add190.i.2578, 288230376151711743
  store i64 %and198.i.2582, i64* %arraydecay33, align 16, !tbaa !6
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay35 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 0
  %253 = bitcast i64* %x1 to <2 x i64>*
  %254 = load <2 x i64>, <2 x i64>* %253, align 8, !tbaa !6
  %arrayidx3.i.2624 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 1
  %255 = bitcast [9 x i64]* %ftmp3 to <2 x i64>*
  store <2 x i64> %254, <2 x i64>* %255, align 16, !tbaa !6
  %arrayidx4.i.2625 = getelementptr inbounds i64, i64* %x1, i64 2
  %arrayidx5.i.2626 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 2
  %256 = bitcast i64* %arrayidx4.i.2625 to <2 x i64>*
  %257 = load <2 x i64>, <2 x i64>* %256, align 8, !tbaa !6
  %arrayidx7.i.2628 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 3
  %258 = bitcast i64* %arrayidx5.i.2626 to <2 x i64>*
  store <2 x i64> %257, <2 x i64>* %258, align 16, !tbaa !6
  %arrayidx8.i.2629 = getelementptr inbounds i64, i64* %x1, i64 4
  %arrayidx9.i.2630 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 4
  %259 = bitcast i64* %arrayidx8.i.2629 to <2 x i64>*
  %260 = load <2 x i64>, <2 x i64>* %259, align 8, !tbaa !6
  %arrayidx11.i.2632 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 5
  %261 = bitcast i64* %arrayidx9.i.2630 to <2 x i64>*
  store <2 x i64> %260, <2 x i64>* %261, align 16, !tbaa !6
  %arrayidx12.i.2633 = getelementptr inbounds i64, i64* %x1, i64 6
  %arrayidx13.i.2634 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 6
  %262 = bitcast i64* %arrayidx12.i.2633 to <2 x i64>*
  %263 = load <2 x i64>, <2 x i64>* %262, align 8, !tbaa !6
  %arrayidx15.i.2636 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 7
  %264 = bitcast i64* %arrayidx13.i.2634 to <2 x i64>*
  store <2 x i64> %263, <2 x i64>* %264, align 16, !tbaa !6
  %arrayidx16.i.2637 = getelementptr inbounds i64, i64* %x1, i64 8
  %265 = load i64, i64* %arrayidx16.i.2637, align 8, !tbaa !6
  %arrayidx17.i.2638 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp3, i64 0, i64 8
  store i64 %265, i64* %arrayidx17.i.2638, align 16, !tbaa !6
  %arraydecay36 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 0
  %266 = bitcast i64* %z1 to <2 x i64>*
  %267 = load <2 x i64>, <2 x i64>* %266, align 8, !tbaa !6
  %268 = shl <2 x i64> %267, <i64 1, i64 1>
  %arrayidx4.i.2602 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 1
  %269 = bitcast [9 x i64]* %ftmp5 to <2 x i64>*
  store <2 x i64> %268, <2 x i64>* %269, align 16, !tbaa !6
  %arrayidx7.i.2605 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 2
  %270 = bitcast i64* %arrayidx4.i.i to <2 x i64>*
  %271 = load <2 x i64>, <2 x i64>* %270, align 8, !tbaa !6
  %272 = shl <2 x i64> %271, <i64 1, i64 1>
  %arrayidx10.i.2608 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 3
  %273 = bitcast i64* %arrayidx7.i.2605 to <2 x i64>*
  store <2 x i64> %272, <2 x i64>* %273, align 16, !tbaa !6
  %arrayidx13.i.2611 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 4
  %274 = bitcast i64* %arrayidx8.i.i to <2 x i64>*
  %275 = load <2 x i64>, <2 x i64>* %274, align 8, !tbaa !6
  %276 = shl <2 x i64> %275, <i64 1, i64 1>
  %arrayidx16.i.2614 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 5
  %277 = bitcast i64* %arrayidx13.i.2611 to <2 x i64>*
  store <2 x i64> %276, <2 x i64>* %277, align 16, !tbaa !6
  %arrayidx19.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 6
  %278 = bitcast i64* %arrayidx12.i.i to <2 x i64>*
  %279 = load <2 x i64>, <2 x i64>* %278, align 8, !tbaa !6
  %280 = shl <2 x i64> %279, <i64 1, i64 1>
  %arrayidx22.i.2619 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 7
  %281 = bitcast i64* %arrayidx19.i to <2 x i64>*
  store <2 x i64> %280, <2 x i64>* %281, align 16, !tbaa !6
  %282 = load i64, i64* %arrayidx16.i.i, align 8, !tbaa !6
  %mul24.i.2621 = shl i64 %282, 1
  %arrayidx25.i.2622 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp5, i64 0, i64 8
  store i64 %mul24.i.2621, i64* %arrayidx25.i.2622, align 16, !tbaa !6
  %arraydecay37 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 0
  %283 = bitcast i64* %y1 to <2 x i64>*
  %284 = load <2 x i64>, <2 x i64>* %283, align 8, !tbaa !6
  %arrayidx3.i.2584 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 1
  %285 = bitcast [9 x i64]* %ftmp6 to <2 x i64>*
  store <2 x i64> %284, <2 x i64>* %285, align 16, !tbaa !6
  %arrayidx4.i.2585 = getelementptr inbounds i64, i64* %y1, i64 2
  %arrayidx5.i.2586 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 2
  %286 = bitcast i64* %arrayidx4.i.2585 to <2 x i64>*
  %287 = load <2 x i64>, <2 x i64>* %286, align 8, !tbaa !6
  %arrayidx7.i.2588 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 3
  %288 = bitcast i64* %arrayidx5.i.2586 to <2 x i64>*
  store <2 x i64> %287, <2 x i64>* %288, align 16, !tbaa !6
  %arrayidx8.i.2589 = getelementptr inbounds i64, i64* %y1, i64 4
  %arrayidx9.i.2590 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 4
  %289 = bitcast i64* %arrayidx8.i.2589 to <2 x i64>*
  %290 = load <2 x i64>, <2 x i64>* %289, align 8, !tbaa !6
  %arrayidx11.i.2592 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 5
  %291 = bitcast i64* %arrayidx9.i.2590 to <2 x i64>*
  store <2 x i64> %290, <2 x i64>* %291, align 16, !tbaa !6
  %arrayidx12.i.2593 = getelementptr inbounds i64, i64* %y1, i64 6
  %arrayidx13.i.2594 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 6
  %292 = bitcast i64* %arrayidx12.i.2593 to <2 x i64>*
  %293 = load <2 x i64>, <2 x i64>* %292, align 8, !tbaa !6
  %arrayidx15.i.2596 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 7
  %294 = bitcast i64* %arrayidx13.i.2594 to <2 x i64>*
  store <2 x i64> %293, <2 x i64>* %294, align 16, !tbaa !6
  %arrayidx16.i.2597 = getelementptr inbounds i64, i64* %y1, i64 8
  %295 = load i64, i64* %arrayidx16.i.2597, align 8, !tbaa !6
  %arrayidx17.i.2598 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp6, i64 0, i64 8
  store i64 %295, i64* %arrayidx17.i.2598, align 16, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx33.i.1646.pre-phi = phi i64* [ %arrayidx25.i.2622, %if.else ], [ %arrayidx17.i.1324, %if.then ]
  %arrayidx29.i.1642.pre-phi = phi i64* [ %arrayidx22.i.2619, %if.else ], [ %arrayidx15.i.1322, %if.then ]
  %arrayidx25.i.1638.pre-phi = phi i64* [ %arrayidx19.i, %if.else ], [ %arrayidx13.i.1320, %if.then ]
  %arrayidx21.i.1634.pre-phi = phi i64* [ %arrayidx16.i.2614, %if.else ], [ %arrayidx11.i.1318, %if.then ]
  %arrayidx17.i.1630.pre-phi = phi i64* [ %arrayidx13.i.2611, %if.else ], [ %arrayidx9.i.1316, %if.then ]
  %arrayidx13.i.1626.pre-phi = phi i64* [ %arrayidx10.i.2608, %if.else ], [ %arrayidx7.i.1314, %if.then ]
  %arrayidx9.i.1622.pre-phi = phi i64* [ %arrayidx7.i.2605, %if.else ], [ %arrayidx5.i.1312, %if.then ]
  %arrayidx5.i.1618.pre-phi = phi i64* [ %arrayidx4.i.2602, %if.else ], [ %arrayidx3.i.1310, %if.then ]
  %arrayidx37.i.1762.pre-phi = phi i64* [ %arrayidx17.i.2598, %if.else ], [ %arrayidx33.i.2505, %if.then ]
  %arrayidx32.i.1757.pre-phi = phi i64* [ %arrayidx15.i.2596, %if.else ], [ %arrayidx29.i.2501, %if.then ]
  %arrayidx27.i.1752.pre-phi = phi i64* [ %arrayidx13.i.2594, %if.else ], [ %arrayidx25.i.2497, %if.then ]
  %arrayidx22.i.1747.pre-phi = phi i64* [ %arrayidx11.i.2592, %if.else ], [ %arrayidx21.i.2493, %if.then ]
  %arrayidx17.i.1742.pre-phi = phi i64* [ %arrayidx9.i.2590, %if.else ], [ %arrayidx17.i.2489, %if.then ]
  %arrayidx12.i.1737.pre-phi = phi i64* [ %arrayidx7.i.2588, %if.else ], [ %arrayidx13.i.2485, %if.then ]
  %arrayidx7.i.1732.pre-phi = phi i64* [ %arrayidx5.i.2586, %if.else ], [ %arrayidx9.i.2481, %if.then ]
  %arrayidx2.i.1727.pre-phi = phi i64* [ %arrayidx3.i.2584, %if.else ], [ %arrayidx5.i.2477, %if.then ]
  %arraydecay58.pre-phi = phi i64* [ %arraydecay37, %if.else ], [ %arraydecay33, %if.then ]
  %arraydecay47.pre-phi = phi i64* [ %arraydecay36, %if.else ], [ %arraydecay17, %if.then ]
  %arrayidx37.i.2467.pre-phi = phi i64* [ %arrayidx17.i.2638, %if.else ], [ %arrayidx33.i.1120, %if.then ]
  %arrayidx32.i.2462.pre-phi = phi i64* [ %arrayidx15.i.2636, %if.else ], [ %arrayidx29.i.1116, %if.then ]
  %arrayidx27.i.2457.pre-phi = phi i64* [ %arrayidx13.i.2634, %if.else ], [ %arrayidx25.i.1112, %if.then ]
  %arrayidx22.i.2452.pre-phi = phi i64* [ %arrayidx11.i.2632, %if.else ], [ %arrayidx21.i.1108, %if.then ]
  %arrayidx17.i.2447.pre-phi = phi i64* [ %arrayidx9.i.2630, %if.else ], [ %arrayidx17.i.1104, %if.then ]
  %arrayidx12.i.2442.pre-phi = phi i64* [ %arrayidx7.i.2628, %if.else ], [ %arrayidx13.i.1100, %if.then ]
  %arrayidx7.i.2437.pre-phi = phi i64* [ %arrayidx5.i.2626, %if.else ], [ %arrayidx9.i.1096, %if.then ]
  %arrayidx2.i.2432.pre-phi = phi i64* [ %arrayidx3.i.2624, %if.else ], [ %arrayidx5.i.1092, %if.then ]
  %arraydecay41.pre-phi = phi i64* [ %arraydecay35, %if.else ], [ %arraydecay15, %if.then ]
  call fastcc void @felem_mul(i128* %arraydecay, i64* %x2, i64* %arraydecay8)
  %296 = load i64, i64* %arraydecay41.pre-phi, align 16, !tbaa !6
  %sub.i.2429 = sub i64 4611686018427387872, %296
  %conv.i.2430 = zext i64 %sub.i.2429 to i128
  %297 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.2431 = add i128 %conv.i.2430, %297
  store i128 %add.i.2431, i128* %arraydecay, align 16, !tbaa !2
  %298 = load i64, i64* %arrayidx2.i.2432.pre-phi, align 8, !tbaa !6
  %sub3.i.2433 = sub i64 4611686018427387888, %298
  %conv4.i.2434 = zext i64 %sub3.i.2433 to i128
  %299 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %add6.i.2436 = add i128 %conv4.i.2434, %299
  store i128 %add6.i.2436, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %300 = load i64, i64* %arrayidx7.i.2437.pre-phi, align 16, !tbaa !6
  %sub8.i.2438 = sub i64 4611686018427387888, %300
  %conv9.i.2439 = zext i64 %sub8.i.2438 to i128
  %301 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %add11.i.2441 = add i128 %conv9.i.2439, %301
  store i128 %add11.i.2441, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %302 = load i64, i64* %arrayidx12.i.2442.pre-phi, align 8, !tbaa !6
  %sub13.i.2443 = sub i64 4611686018427387888, %302
  %conv14.i.2444 = zext i64 %sub13.i.2443 to i128
  %303 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %add16.i.2446 = add i128 %conv14.i.2444, %303
  store i128 %add16.i.2446, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %304 = load i64, i64* %arrayidx17.i.2447.pre-phi, align 16, !tbaa !6
  %sub18.i.2448 = sub i64 4611686018427387888, %304
  %conv19.i.2449 = zext i64 %sub18.i.2448 to i128
  %305 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %add21.i.2451 = add i128 %conv19.i.2449, %305
  store i128 %add21.i.2451, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %306 = load i64, i64* %arrayidx22.i.2452.pre-phi, align 8, !tbaa !6
  %sub23.i.2453 = sub i64 4611686018427387888, %306
  %conv24.i.2454 = zext i64 %sub23.i.2453 to i128
  %307 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %add26.i.2456 = add i128 %conv24.i.2454, %307
  store i128 %add26.i.2456, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %308 = load i64, i64* %arrayidx27.i.2457.pre-phi, align 16, !tbaa !6
  %sub28.i.2458 = sub i64 4611686018427387888, %308
  %conv29.i.2459 = zext i64 %sub28.i.2458 to i128
  %309 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %add31.i.2461 = add i128 %conv29.i.2459, %309
  store i128 %add31.i.2461, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %310 = load i64, i64* %arrayidx32.i.2462.pre-phi, align 8, !tbaa !6
  %sub33.i.2463 = sub i64 4611686018427387888, %310
  %conv34.i.2464 = zext i64 %sub33.i.2463 to i128
  %311 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %add36.i.2466 = add i128 %conv34.i.2464, %311
  store i128 %add36.i.2466, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %312 = load i64, i64* %arrayidx37.i.2467.pre-phi, align 16, !tbaa !6
  %sub38.i.2468 = sub i64 4611686018427387888, %312
  %conv39.i.2469 = zext i64 %sub38.i.2468 to i128
  %313 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %add41.i.2471 = add i128 %conv39.i.2469, %313
  store i128 %add41.i.2471, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %arraydecay42 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 0
  %conv.i.2318 = trunc i128 %add.i.2431 to i64
  %and.i.2319 = and i64 %conv.i.2318, 288230376151711743
  store i64 %and.i.2319, i64* %arraydecay42, align 16, !tbaa !6
  %conv3.i.2321 = trunc i128 %add6.i.2436 to i64
  %and4.i.2322 = and i64 %conv3.i.2321, 288230376151711743
  %arrayidx5.i.2323 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 1
  %conv7.i.2325 = trunc i128 %add11.i.2441 to i64
  %and8.i.2326 = and i64 %conv7.i.2325, 288230376151711743
  %arrayidx9.i.2327 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 2
  %conv11.i.2329 = trunc i128 %add16.i.2446 to i64
  %and12.i.2330 = and i64 %conv11.i.2329, 288230376151711743
  %arrayidx13.i.2331 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 3
  %conv15.i.2333 = trunc i128 %add21.i.2451 to i64
  %and16.i.2334 = and i64 %conv15.i.2333, 288230376151711743
  %arrayidx17.i.2335 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 4
  %conv19.i.2337 = trunc i128 %add26.i.2456 to i64
  %and20.i.2338 = and i64 %conv19.i.2337, 288230376151711743
  %arrayidx21.i.2339 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 5
  %conv23.i.2341 = trunc i128 %add31.i.2461 to i64
  %and24.i.2342 = and i64 %conv23.i.2341, 288230376151711743
  %arrayidx25.i.2343 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 6
  %conv27.i.2345 = trunc i128 %add36.i.2466 to i64
  %and28.i.2346 = and i64 %conv27.i.2345, 288230376151711743
  %arrayidx29.i.2347 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 7
  %conv31.i.2349 = trunc i128 %add41.i.2471 to i64
  %and32.i.2350 = and i64 %conv31.i.2349, 288230376151711743
  %arrayidx33.i.2351 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp4, i64 0, i64 8
  %shr.i.2352 = lshr i64 %conv.i.2318, 58
  %add.i.2353 = add nuw nsw i64 %and4.i.2322, %shr.i.2352
  %314 = lshr i128 %add.i.2431, 58
  %and40.i.2354 = trunc i128 %314 to i64
  %shl.i.2355 = and i64 %and40.i.2354, 288230376151711680
  %add42.i.2356 = add nuw nsw i64 %add.i.2353, %shl.i.2355
  %shr44.i.2357 = lshr i128 %add.i.2431, 116
  %shr46.i.2358 = trunc i128 %shr44.i.2357 to i64
  %shr51.i.2360 = lshr i64 %conv3.i.2321, 58
  %315 = lshr i128 %add6.i.2436, 58
  %and57.i.2362 = trunc i128 %315 to i64
  %shl58.i.2363 = and i64 %and57.i.2362, 288230376151711680
  %add48.i.2359 = add nuw nsw i64 %shr51.i.2360, %shr46.i.2358
  %add53.i.2361 = add nuw nsw i64 %add48.i.2359, %and8.i.2326
  %add60.i.2364 = add nuw nsw i64 %add53.i.2361, %shl58.i.2363
  store i64 %add60.i.2364, i64* %arrayidx9.i.2327, align 16, !tbaa !6
  %shr62.i.2365 = lshr i128 %add6.i.2436, 116
  %shr64.i.2366 = trunc i128 %shr62.i.2365 to i64
  %shr69.i.2368 = lshr i64 %conv7.i.2325, 58
  %316 = lshr i128 %add11.i.2441, 58
  %and75.i.2370 = trunc i128 %316 to i64
  %shl76.i.2371 = and i64 %and75.i.2370, 288230376151711680
  %add66.i.2367 = add nuw nsw i64 %shr69.i.2368, %shr64.i.2366
  %add71.i.2369 = add nuw nsw i64 %add66.i.2367, %and12.i.2330
  %add78.i.2372 = add nuw nsw i64 %add71.i.2369, %shl76.i.2371
  store i64 %add78.i.2372, i64* %arrayidx13.i.2331, align 8, !tbaa !6
  %shr80.i.2373 = lshr i128 %add11.i.2441, 116
  %shr82.i.2374 = trunc i128 %shr80.i.2373 to i64
  %shr87.i.2376 = lshr i64 %conv11.i.2329, 58
  %317 = lshr i128 %add16.i.2446, 58
  %and93.i.2378 = trunc i128 %317 to i64
  %shl94.i.2379 = and i64 %and93.i.2378, 288230376151711680
  %add84.i.2375 = add nuw nsw i64 %shr87.i.2376, %shr82.i.2374
  %add89.i.2377 = add nuw nsw i64 %add84.i.2375, %and16.i.2334
  %add96.i.2380 = add nuw nsw i64 %add89.i.2377, %shl94.i.2379
  store i64 %add96.i.2380, i64* %arrayidx17.i.2335, align 16, !tbaa !6
  %shr98.i.2381 = lshr i128 %add16.i.2446, 116
  %shr100.i.2382 = trunc i128 %shr98.i.2381 to i64
  %shr105.i.2384 = lshr i64 %conv15.i.2333, 58
  %318 = lshr i128 %add21.i.2451, 58
  %and111.i.2386 = trunc i128 %318 to i64
  %shl112.i.2387 = and i64 %and111.i.2386, 288230376151711680
  %add102.i.2383 = add nuw nsw i64 %shr105.i.2384, %shr100.i.2382
  %add107.i.2385 = add nuw nsw i64 %add102.i.2383, %and20.i.2338
  %add114.i.2388 = add nuw nsw i64 %add107.i.2385, %shl112.i.2387
  store i64 %add114.i.2388, i64* %arrayidx21.i.2339, align 8, !tbaa !6
  %shr116.i.2389 = lshr i128 %add21.i.2451, 116
  %shr118.i.2390 = trunc i128 %shr116.i.2389 to i64
  %shr123.i.2392 = lshr i64 %conv19.i.2337, 58
  %319 = lshr i128 %add26.i.2456, 58
  %and129.i.2394 = trunc i128 %319 to i64
  %shl130.i.2395 = and i64 %and129.i.2394, 288230376151711680
  %add120.i.2391 = add nuw nsw i64 %shr123.i.2392, %shr118.i.2390
  %add125.i.2393 = add nuw nsw i64 %add120.i.2391, %and24.i.2342
  %add132.i.2396 = add nuw nsw i64 %add125.i.2393, %shl130.i.2395
  store i64 %add132.i.2396, i64* %arrayidx25.i.2343, align 16, !tbaa !6
  %shr134.i.2397 = lshr i128 %add26.i.2456, 116
  %shr136.i.2398 = trunc i128 %shr134.i.2397 to i64
  %shr141.i.2400 = lshr i64 %conv23.i.2341, 58
  %320 = lshr i128 %add31.i.2461, 58
  %and147.i.2402 = trunc i128 %320 to i64
  %shl148.i.2403 = and i64 %and147.i.2402, 288230376151711680
  %add138.i.2399 = add nuw nsw i64 %shr141.i.2400, %shr136.i.2398
  %add143.i.2401 = add nuw nsw i64 %add138.i.2399, %and28.i.2346
  %add150.i.2404 = add nuw nsw i64 %add143.i.2401, %shl148.i.2403
  store i64 %add150.i.2404, i64* %arrayidx29.i.2347, align 8, !tbaa !6
  %shr152.i.2405 = lshr i128 %add31.i.2461, 116
  %shr154.i.2406 = trunc i128 %shr152.i.2405 to i64
  %shr159.i.2408 = lshr i64 %conv27.i.2345, 58
  %321 = lshr i128 %add36.i.2466, 58
  %and165.i.2410 = trunc i128 %321 to i64
  %shl166.i.2411 = and i64 %and165.i.2410, 288230376151711680
  %add156.i.2407 = add nuw nsw i64 %shr159.i.2408, %shr154.i.2406
  %add161.i.2409 = add nuw nsw i64 %add156.i.2407, %and32.i.2350
  %add168.i.2412 = add nuw nsw i64 %add161.i.2409, %shl166.i.2411
  store i64 %add168.i.2412, i64* %arrayidx33.i.2351, align 16, !tbaa !6
  %322 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %shr170.i.2413 = lshr i128 %322, 116
  %shr172.i.2414 = trunc i128 %shr170.i.2413 to i64
  %323 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv174.i.2415 = trunc i128 %323 to i64
  %shr175.i.2416 = lshr i64 %conv174.i.2415, 58
  %add176.i.2417 = add nuw nsw i64 %shr175.i.2416, %shr172.i.2414
  %324 = lshr i128 %323, 58
  %and180.i.2418 = trunc i128 %324 to i64
  %shl181.i.2419 = and i64 %and180.i.2418, 288230376151711680
  %add182.i.2420 = add nuw nsw i64 %add176.i.2417, %shl181.i.2419
  %shl187.i.2421 = shl nuw nsw i64 %add182.i.2420, 1
  %325 = lshr i128 %323, 115
  %.tr.i.2422 = trunc i128 %325 to i64
  %shl188.i.2423 = and i64 %.tr.i.2422, 8190
  %326 = load i64, i64* %arraydecay42, align 16, !tbaa !6
  %add190.i.2424 = add i64 %shl187.i.2421, %326
  %add192.i.2425 = add nuw nsw i64 %shl188.i.2423, %add42.i.2356
  %shr194.i.2426 = lshr i64 %add190.i.2424, 58
  %add196.i.2427 = add nuw nsw i64 %add192.i.2425, %shr194.i.2426
  store i64 %add196.i.2427, i64* %arrayidx5.i.2323, align 8, !tbaa !6
  %and198.i.2428 = and i64 %add190.i.2424, 288230376151711743
  store i64 %and198.i.2428, i64* %arraydecay42, align 16, !tbaa !6
  %shr.i.2262 = lshr i64 %add168.i.2412, 57
  %add.i.2263 = add nuw nsw i64 %shr.i.2262, %and198.i.2428
  %shr4.i.2265 = lshr i64 %add.i.2263, 58
  %add6.i.2266 = add nuw nsw i64 %shr4.i.2265, %add196.i.2427
  %fold = add i64 %shr.i.2262, %add190.i.2424
  %shr10.i.2268 = lshr i64 %add6.i.2266, 58
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay47.pre-phi, i64* %arraydecay42)
  %327 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.2032 = trunc i128 %327 to i64
  %328 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.2035 = trunc i128 %328 to i64
  %329 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.2039 = trunc i128 %329 to i64
  %and8.i.2040 = and i64 %conv7.i.2039, 288230376151711743
  %330 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.2043 = trunc i128 %330 to i64
  %and12.i.2044 = and i64 %conv11.i.2043, 288230376151711743
  %331 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.2047 = trunc i128 %331 to i64
  %and16.i.2048 = and i64 %conv15.i.2047, 288230376151711743
  %332 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.2051 = trunc i128 %332 to i64
  %and20.i.2052 = and i64 %conv19.i.2051, 288230376151711743
  %333 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.2055 = trunc i128 %333 to i64
  %and24.i.2056 = and i64 %conv23.i.2055, 288230376151711743
  %334 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.2059 = trunc i128 %334 to i64
  %and28.i.2060 = and i64 %conv27.i.2059, 288230376151711743
  %335 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.2063 = trunc i128 %335 to i64
  %and32.i.2064 = and i64 %conv31.i.2063, 288230376151711743
  %shr44.i.2071 = lshr i128 %327, 116
  %shr46.i.2072 = trunc i128 %shr44.i.2071 to i64
  %shr51.i.2074 = lshr i64 %conv3.i.2035, 58
  %336 = lshr i128 %328, 58
  %and57.i.2076 = trunc i128 %336 to i64
  %shl58.i.2077 = and i64 %and57.i.2076, 288230376151711680
  %add48.i.2073 = add nuw nsw i64 %shr51.i.2074, %shr46.i.2072
  %add53.i.2075 = add nuw nsw i64 %add48.i.2073, %and8.i.2040
  %add60.i.2078 = add nuw nsw i64 %add53.i.2075, %shl58.i.2077
  %shr62.i.2079 = lshr i128 %328, 116
  %shr64.i.2080 = trunc i128 %shr62.i.2079 to i64
  %shr69.i.2082 = lshr i64 %conv7.i.2039, 58
  %337 = lshr i128 %329, 58
  %and75.i.2084 = trunc i128 %337 to i64
  %shl76.i.2085 = and i64 %and75.i.2084, 288230376151711680
  %add66.i.2081 = add nuw nsw i64 %shr69.i.2082, %shr64.i.2080
  %add71.i.2083 = add nuw nsw i64 %add66.i.2081, %and12.i.2044
  %add78.i.2086 = add nuw nsw i64 %add71.i.2083, %shl76.i.2085
  %shr80.i.2087 = lshr i128 %329, 116
  %shr82.i.2088 = trunc i128 %shr80.i.2087 to i64
  %shr87.i.2090 = lshr i64 %conv11.i.2043, 58
  %338 = lshr i128 %330, 58
  %and93.i.2092 = trunc i128 %338 to i64
  %shl94.i.2093 = and i64 %and93.i.2092, 288230376151711680
  %add84.i.2089 = add nuw nsw i64 %shr87.i.2090, %shr82.i.2088
  %add89.i.2091 = add nuw nsw i64 %add84.i.2089, %and16.i.2048
  %add96.i.2094 = add nuw nsw i64 %add89.i.2091, %shl94.i.2093
  %shr98.i.2095 = lshr i128 %330, 116
  %shr100.i.2096 = trunc i128 %shr98.i.2095 to i64
  %shr105.i.2098 = lshr i64 %conv15.i.2047, 58
  %339 = lshr i128 %331, 58
  %and111.i.2100 = trunc i128 %339 to i64
  %shl112.i.2101 = and i64 %and111.i.2100, 288230376151711680
  %add102.i.2097 = add nuw nsw i64 %shr105.i.2098, %shr100.i.2096
  %add107.i.2099 = add nuw nsw i64 %add102.i.2097, %and20.i.2052
  %add114.i.2102 = add nuw nsw i64 %add107.i.2099, %shl112.i.2101
  %shr116.i.2103 = lshr i128 %331, 116
  %shr118.i.2104 = trunc i128 %shr116.i.2103 to i64
  %shr123.i.2106 = lshr i64 %conv19.i.2051, 58
  %340 = lshr i128 %332, 58
  %and129.i.2108 = trunc i128 %340 to i64
  %shl130.i.2109 = and i64 %and129.i.2108, 288230376151711680
  %add120.i.2105 = add nuw nsw i64 %shr123.i.2106, %shr118.i.2104
  %add125.i.2107 = add nuw nsw i64 %add120.i.2105, %and24.i.2056
  %add132.i.2110 = add nuw nsw i64 %add125.i.2107, %shl130.i.2109
  %shr134.i.2111 = lshr i128 %332, 116
  %shr136.i.2112 = trunc i128 %shr134.i.2111 to i64
  %shr141.i.2114 = lshr i64 %conv23.i.2055, 58
  %341 = lshr i128 %333, 58
  %and147.i.2116 = trunc i128 %341 to i64
  %shl148.i.2117 = and i64 %and147.i.2116, 288230376151711680
  %add138.i.2113 = add nuw nsw i64 %shr141.i.2114, %shr136.i.2112
  %add143.i.2115 = add nuw nsw i64 %add138.i.2113, %and28.i.2060
  %add150.i.2118 = add nuw nsw i64 %add143.i.2115, %shl148.i.2117
  %shr152.i.2119 = lshr i128 %333, 116
  %shr154.i.2120 = trunc i128 %shr152.i.2119 to i64
  %shr159.i.2122 = lshr i64 %conv27.i.2059, 58
  %342 = lshr i128 %334, 58
  %and165.i.2124 = trunc i128 %342 to i64
  %shl166.i.2125 = and i64 %and165.i.2124, 288230376151711680
  %add156.i.2121 = add nuw nsw i64 %shr159.i.2122, %shr154.i.2120
  %add161.i.2123 = add nuw nsw i64 %add156.i.2121, %and32.i.2064
  %add168.i.2126 = add nuw nsw i64 %add161.i.2123, %shl166.i.2125
  %shr170.i.2127 = lshr i128 %334, 116
  %shr172.i.2128 = trunc i128 %shr170.i.2127 to i64
  %shr175.i.2130 = lshr i64 %conv31.i.2063, 58
  %add176.i.2131 = add nuw nsw i64 %shr175.i.2130, %shr172.i.2128
  %343 = lshr i128 %335, 58
  %and180.i.2132 = trunc i128 %343 to i64
  %shl181.i.2133 = and i64 %and180.i.2132, 288230376151711680
  %add182.i.2134 = add nuw nsw i64 %add176.i.2131, %shl181.i.2133
  %shl187.i.2135 = shl nuw nsw i64 %add182.i.2134, 1
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay8, i64* %z1)
  %344 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1810 = trunc i128 %344 to i64
  %and.i.1811 = and i64 %conv.i.1810, 288230376151711743
  store i64 %and.i.1811, i64* %arraydecay8, align 16, !tbaa !6
  %345 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.1813 = trunc i128 %345 to i64
  %and4.i.1814 = and i64 %conv3.i.1813, 288230376151711743
  %346 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.1817 = trunc i128 %346 to i64
  %and8.i.1818 = and i64 %conv7.i.1817, 288230376151711743
  %347 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.1821 = trunc i128 %347 to i64
  %and12.i.1822 = and i64 %conv11.i.1821, 288230376151711743
  %348 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.1825 = trunc i128 %348 to i64
  %and16.i.1826 = and i64 %conv15.i.1825, 288230376151711743
  %349 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.1829 = trunc i128 %349 to i64
  %and20.i.1830 = and i64 %conv19.i.1829, 288230376151711743
  %350 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.1833 = trunc i128 %350 to i64
  %and24.i.1834 = and i64 %conv23.i.1833, 288230376151711743
  %351 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.1837 = trunc i128 %351 to i64
  %and28.i.1838 = and i64 %conv27.i.1837, 288230376151711743
  %352 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.1841 = trunc i128 %352 to i64
  %and32.i.1842 = and i64 %conv31.i.1841, 288230376151711743
  %shr.i.1844 = lshr i64 %conv.i.1810, 58
  %add.i.1845 = add nuw nsw i64 %and4.i.1814, %shr.i.1844
  %353 = lshr i128 %344, 58
  %and40.i.1846 = trunc i128 %353 to i64
  %shl.i.1847 = and i64 %and40.i.1846, 288230376151711680
  %add42.i.1848 = add nuw nsw i64 %add.i.1845, %shl.i.1847
  %shr44.i.1849 = lshr i128 %344, 116
  %shr46.i.1850 = trunc i128 %shr44.i.1849 to i64
  %shr51.i.1852 = lshr i64 %conv3.i.1813, 58
  %354 = lshr i128 %345, 58
  %and57.i.1854 = trunc i128 %354 to i64
  %shl58.i.1855 = and i64 %and57.i.1854, 288230376151711680
  %add48.i.1851 = add nuw nsw i64 %shr51.i.1852, %shr46.i.1850
  %add53.i.1853 = add nuw nsw i64 %add48.i.1851, %and8.i.1818
  %add60.i.1856 = add nuw nsw i64 %add53.i.1853, %shl58.i.1855
  store i64 %add60.i.1856, i64* %arrayidx9.i.528, align 16, !tbaa !6
  %shr62.i.1857 = lshr i128 %345, 116
  %shr64.i.1858 = trunc i128 %shr62.i.1857 to i64
  %shr69.i.1860 = lshr i64 %conv7.i.1817, 58
  %355 = lshr i128 %346, 58
  %and75.i.1862 = trunc i128 %355 to i64
  %shl76.i.1863 = and i64 %and75.i.1862, 288230376151711680
  %add66.i.1859 = add nuw nsw i64 %shr69.i.1860, %shr64.i.1858
  %add71.i.1861 = add nuw nsw i64 %add66.i.1859, %and12.i.1822
  %add78.i.1864 = add nuw nsw i64 %add71.i.1861, %shl76.i.1863
  store i64 %add78.i.1864, i64* %arrayidx13.i.532, align 8, !tbaa !6
  %shr80.i.1865 = lshr i128 %346, 116
  %shr82.i.1866 = trunc i128 %shr80.i.1865 to i64
  %shr87.i.1868 = lshr i64 %conv11.i.1821, 58
  %356 = lshr i128 %347, 58
  %and93.i.1870 = trunc i128 %356 to i64
  %shl94.i.1871 = and i64 %and93.i.1870, 288230376151711680
  %add84.i.1867 = add nuw nsw i64 %shr87.i.1868, %shr82.i.1866
  %add89.i.1869 = add nuw nsw i64 %add84.i.1867, %and16.i.1826
  %add96.i.1872 = add nuw nsw i64 %add89.i.1869, %shl94.i.1871
  store i64 %add96.i.1872, i64* %arrayidx17.i.536, align 16, !tbaa !6
  %shr98.i.1873 = lshr i128 %347, 116
  %shr100.i.1874 = trunc i128 %shr98.i.1873 to i64
  %shr105.i.1876 = lshr i64 %conv15.i.1825, 58
  %357 = lshr i128 %348, 58
  %and111.i.1878 = trunc i128 %357 to i64
  %shl112.i.1879 = and i64 %and111.i.1878, 288230376151711680
  %add102.i.1875 = add nuw nsw i64 %shr105.i.1876, %shr100.i.1874
  %add107.i.1877 = add nuw nsw i64 %add102.i.1875, %and20.i.1830
  %add114.i.1880 = add nuw nsw i64 %add107.i.1877, %shl112.i.1879
  store i64 %add114.i.1880, i64* %arrayidx21.i.540, align 8, !tbaa !6
  %shr116.i.1881 = lshr i128 %348, 116
  %shr118.i.1882 = trunc i128 %shr116.i.1881 to i64
  %shr123.i.1884 = lshr i64 %conv19.i.1829, 58
  %358 = lshr i128 %349, 58
  %and129.i.1886 = trunc i128 %358 to i64
  %shl130.i.1887 = and i64 %and129.i.1886, 288230376151711680
  %add120.i.1883 = add nuw nsw i64 %shr123.i.1884, %shr118.i.1882
  %add125.i.1885 = add nuw nsw i64 %add120.i.1883, %and24.i.1834
  %add132.i.1888 = add nuw nsw i64 %add125.i.1885, %shl130.i.1887
  store i64 %add132.i.1888, i64* %arrayidx25.i.544, align 16, !tbaa !6
  %shr134.i.1889 = lshr i128 %349, 116
  %shr136.i.1890 = trunc i128 %shr134.i.1889 to i64
  %shr141.i.1892 = lshr i64 %conv23.i.1833, 58
  %359 = lshr i128 %350, 58
  %and147.i.1894 = trunc i128 %359 to i64
  %shl148.i.1895 = and i64 %and147.i.1894, 288230376151711680
  %add138.i.1891 = add nuw nsw i64 %shr141.i.1892, %shr136.i.1890
  %add143.i.1893 = add nuw nsw i64 %add138.i.1891, %and28.i.1838
  %add150.i.1896 = add nuw nsw i64 %add143.i.1893, %shl148.i.1895
  store i64 %add150.i.1896, i64* %arrayidx29.i.548, align 8, !tbaa !6
  %shr152.i.1897 = lshr i128 %350, 116
  %shr154.i.1898 = trunc i128 %shr152.i.1897 to i64
  %shr159.i.1900 = lshr i64 %conv27.i.1837, 58
  %360 = lshr i128 %351, 58
  %and165.i.1902 = trunc i128 %360 to i64
  %shl166.i.1903 = and i64 %and165.i.1902, 288230376151711680
  %add156.i.1899 = add nuw nsw i64 %shr159.i.1900, %shr154.i.1898
  %add161.i.1901 = add nuw nsw i64 %add156.i.1899, %and32.i.1842
  %add168.i.1904 = add nuw nsw i64 %add161.i.1901, %shl166.i.1903
  store i64 %add168.i.1904, i64* %arrayidx33.i.552, align 16, !tbaa !6
  %shr170.i.1905 = lshr i128 %351, 116
  %shr172.i.1906 = trunc i128 %shr170.i.1905 to i64
  %shr175.i.1908 = lshr i64 %conv31.i.1841, 58
  %add176.i.1909 = add nuw nsw i64 %shr175.i.1908, %shr172.i.1906
  %361 = lshr i128 %352, 58
  %and180.i.1910 = trunc i128 %361 to i64
  %shl181.i.1911 = and i64 %and180.i.1910, 288230376151711680
  %add182.i.1912 = add nuw nsw i64 %add176.i.1909, %shl181.i.1911
  %shl187.i.1913 = shl nuw nsw i64 %add182.i.1912, 1
  %362 = lshr i128 %352, 115
  %.tr.i.1914 = trunc i128 %362 to i64
  %shl188.i.1915 = and i64 %.tr.i.1914, 8190
  %363 = load i64, i64* %arraydecay8, align 16, !tbaa !6
  %add190.i.1916 = add i64 %shl187.i.1913, %363
  %add192.i.1917 = add nuw nsw i64 %shl188.i.1915, %add42.i.1848
  %shr194.i.1918 = lshr i64 %add190.i.1916, 58
  %add196.i.1919 = add nuw nsw i64 %add192.i.1917, %shr194.i.1918
  store i64 %add196.i.1919, i64* %arrayidx5.i.524, align 8, !tbaa !6
  %and198.i.1920 = and i64 %add190.i.1916, 288230376151711743
  store i64 %and198.i.1920, i64* %arraydecay8, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %y2, i64* %arraydecay8)
  %364 = load i64, i64* %arraydecay58.pre-phi, align 16, !tbaa !6
  %sub.i.1724 = sub i64 4611686018427387872, %364
  %conv.i.1725 = zext i64 %sub.i.1724 to i128
  %365 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.1726 = add i128 %conv.i.1725, %365
  store i128 %add.i.1726, i128* %arraydecay, align 16, !tbaa !2
  %366 = load i64, i64* %arrayidx2.i.1727.pre-phi, align 8, !tbaa !6
  %sub3.i.1728 = sub i64 4611686018427387888, %366
  %conv4.i.1729 = zext i64 %sub3.i.1728 to i128
  %367 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %add6.i.1731 = add i128 %conv4.i.1729, %367
  store i128 %add6.i.1731, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %368 = load i64, i64* %arrayidx7.i.1732.pre-phi, align 16, !tbaa !6
  %sub8.i.1733 = sub i64 4611686018427387888, %368
  %conv9.i.1734 = zext i64 %sub8.i.1733 to i128
  %369 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %add11.i.1736 = add i128 %conv9.i.1734, %369
  store i128 %add11.i.1736, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %370 = load i64, i64* %arrayidx12.i.1737.pre-phi, align 8, !tbaa !6
  %sub13.i.1738 = sub i64 4611686018427387888, %370
  %conv14.i.1739 = zext i64 %sub13.i.1738 to i128
  %371 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %add16.i.1741 = add i128 %conv14.i.1739, %371
  store i128 %add16.i.1741, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %372 = load i64, i64* %arrayidx17.i.1742.pre-phi, align 16, !tbaa !6
  %sub18.i.1743 = sub i64 4611686018427387888, %372
  %conv19.i.1744 = zext i64 %sub18.i.1743 to i128
  %373 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %add21.i.1746 = add i128 %conv19.i.1744, %373
  store i128 %add21.i.1746, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %374 = load i64, i64* %arrayidx22.i.1747.pre-phi, align 8, !tbaa !6
  %sub23.i.1748 = sub i64 4611686018427387888, %374
  %conv24.i.1749 = zext i64 %sub23.i.1748 to i128
  %375 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %add26.i.1751 = add i128 %conv24.i.1749, %375
  store i128 %add26.i.1751, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %376 = load i64, i64* %arrayidx27.i.1752.pre-phi, align 16, !tbaa !6
  %sub28.i.1753 = sub i64 4611686018427387888, %376
  %conv29.i.1754 = zext i64 %sub28.i.1753 to i128
  %377 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %add31.i.1756 = add i128 %conv29.i.1754, %377
  store i128 %add31.i.1756, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %378 = load i64, i64* %arrayidx32.i.1757.pre-phi, align 8, !tbaa !6
  %sub33.i.1758 = sub i64 4611686018427387888, %378
  %conv34.i.1759 = zext i64 %sub33.i.1758 to i128
  %379 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %add36.i.1761 = add i128 %conv34.i.1759, %379
  store i128 %add36.i.1761, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %380 = load i64, i64* %arrayidx37.i.1762.pre-phi, align 16, !tbaa !6
  %sub38.i.1763 = sub i64 4611686018427387888, %380
  %conv39.i.1764 = zext i64 %sub38.i.1763 to i128
  %381 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %add41.i.1766 = add i128 %conv39.i.1764, %381
  store i128 %add41.i.1766, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv.i.1613 = trunc i128 %add.i.1726 to i64
  %and.i.1614 = and i64 %conv.i.1613, 288230376151711743
  store i64 %and.i.1614, i64* %arraydecay47.pre-phi, align 16, !tbaa !6
  %conv3.i.1616 = trunc i128 %add6.i.1731 to i64
  %and4.i.1617 = and i64 %conv3.i.1616, 288230376151711743
  %conv7.i.1620 = trunc i128 %add11.i.1736 to i64
  %and8.i.1621 = and i64 %conv7.i.1620, 288230376151711743
  %conv11.i.1624 = trunc i128 %add16.i.1741 to i64
  %and12.i.1625 = and i64 %conv11.i.1624, 288230376151711743
  %conv15.i.1628 = trunc i128 %add21.i.1746 to i64
  %and16.i.1629 = and i64 %conv15.i.1628, 288230376151711743
  %conv19.i.1632 = trunc i128 %add26.i.1751 to i64
  %and20.i.1633 = and i64 %conv19.i.1632, 288230376151711743
  %conv23.i.1636 = trunc i128 %add31.i.1756 to i64
  %and24.i.1637 = and i64 %conv23.i.1636, 288230376151711743
  %conv27.i.1640 = trunc i128 %add36.i.1761 to i64
  %and28.i.1641 = and i64 %conv27.i.1640, 288230376151711743
  %conv31.i.1644 = trunc i128 %add41.i.1766 to i64
  %and32.i.1645 = and i64 %conv31.i.1644, 288230376151711743
  %shr.i.1647 = lshr i64 %conv.i.1613, 58
  %add.i.1648 = add nuw nsw i64 %and4.i.1617, %shr.i.1647
  %382 = lshr i128 %add.i.1726, 58
  %and40.i.1649 = trunc i128 %382 to i64
  %shl.i.1650 = and i64 %and40.i.1649, 288230376151711680
  %add42.i.1651 = add nuw nsw i64 %add.i.1648, %shl.i.1650
  %shr44.i.1652 = lshr i128 %add.i.1726, 116
  %shr46.i.1653 = trunc i128 %shr44.i.1652 to i64
  %shr51.i.1655 = lshr i64 %conv3.i.1616, 58
  %383 = lshr i128 %add6.i.1731, 58
  %and57.i.1657 = trunc i128 %383 to i64
  %shl58.i.1658 = and i64 %and57.i.1657, 288230376151711680
  %add48.i.1654 = add nuw nsw i64 %shr51.i.1655, %shr46.i.1653
  %add53.i.1656 = add nuw nsw i64 %add48.i.1654, %and8.i.1621
  %add60.i.1659 = add nuw nsw i64 %add53.i.1656, %shl58.i.1658
  store i64 %add60.i.1659, i64* %arrayidx9.i.1622.pre-phi, align 16, !tbaa !6
  %shr62.i.1660 = lshr i128 %add6.i.1731, 116
  %shr64.i.1661 = trunc i128 %shr62.i.1660 to i64
  %shr69.i.1663 = lshr i64 %conv7.i.1620, 58
  %384 = lshr i128 %add11.i.1736, 58
  %and75.i.1665 = trunc i128 %384 to i64
  %shl76.i.1666 = and i64 %and75.i.1665, 288230376151711680
  %add66.i.1662 = add nuw nsw i64 %shr69.i.1663, %shr64.i.1661
  %add71.i.1664 = add nuw nsw i64 %add66.i.1662, %and12.i.1625
  %add78.i.1667 = add nuw nsw i64 %add71.i.1664, %shl76.i.1666
  store i64 %add78.i.1667, i64* %arrayidx13.i.1626.pre-phi, align 8, !tbaa !6
  %shr80.i.1668 = lshr i128 %add11.i.1736, 116
  %shr82.i.1669 = trunc i128 %shr80.i.1668 to i64
  %shr87.i.1671 = lshr i64 %conv11.i.1624, 58
  %385 = lshr i128 %add16.i.1741, 58
  %and93.i.1673 = trunc i128 %385 to i64
  %shl94.i.1674 = and i64 %and93.i.1673, 288230376151711680
  %add84.i.1670 = add nuw nsw i64 %shr87.i.1671, %shr82.i.1669
  %add89.i.1672 = add nuw nsw i64 %add84.i.1670, %and16.i.1629
  %add96.i.1675 = add nuw nsw i64 %add89.i.1672, %shl94.i.1674
  store i64 %add96.i.1675, i64* %arrayidx17.i.1630.pre-phi, align 16, !tbaa !6
  %shr98.i.1676 = lshr i128 %add16.i.1741, 116
  %shr100.i.1677 = trunc i128 %shr98.i.1676 to i64
  %shr105.i.1679 = lshr i64 %conv15.i.1628, 58
  %386 = lshr i128 %add21.i.1746, 58
  %and111.i.1681 = trunc i128 %386 to i64
  %shl112.i.1682 = and i64 %and111.i.1681, 288230376151711680
  %add102.i.1678 = add nuw nsw i64 %shr105.i.1679, %shr100.i.1677
  %add107.i.1680 = add nuw nsw i64 %add102.i.1678, %and20.i.1633
  %add114.i.1683 = add nuw nsw i64 %add107.i.1680, %shl112.i.1682
  store i64 %add114.i.1683, i64* %arrayidx21.i.1634.pre-phi, align 8, !tbaa !6
  %shr116.i.1684 = lshr i128 %add21.i.1746, 116
  %shr118.i.1685 = trunc i128 %shr116.i.1684 to i64
  %shr123.i.1687 = lshr i64 %conv19.i.1632, 58
  %387 = lshr i128 %add26.i.1751, 58
  %and129.i.1689 = trunc i128 %387 to i64
  %shl130.i.1690 = and i64 %and129.i.1689, 288230376151711680
  %add120.i.1686 = add nuw nsw i64 %shr123.i.1687, %shr118.i.1685
  %add125.i.1688 = add nuw nsw i64 %add120.i.1686, %and24.i.1637
  %add132.i.1691 = add nuw nsw i64 %add125.i.1688, %shl130.i.1690
  store i64 %add132.i.1691, i64* %arrayidx25.i.1638.pre-phi, align 16, !tbaa !6
  %shr134.i.1692 = lshr i128 %add26.i.1751, 116
  %shr136.i.1693 = trunc i128 %shr134.i.1692 to i64
  %shr141.i.1695 = lshr i64 %conv23.i.1636, 58
  %388 = lshr i128 %add31.i.1756, 58
  %and147.i.1697 = trunc i128 %388 to i64
  %shl148.i.1698 = and i64 %and147.i.1697, 288230376151711680
  %add138.i.1694 = add nuw nsw i64 %shr141.i.1695, %shr136.i.1693
  %add143.i.1696 = add nuw nsw i64 %add138.i.1694, %and28.i.1641
  %add150.i.1699 = add nuw nsw i64 %add143.i.1696, %shl148.i.1698
  store i64 %add150.i.1699, i64* %arrayidx29.i.1642.pre-phi, align 8, !tbaa !6
  %shr152.i.1700 = lshr i128 %add31.i.1756, 116
  %shr154.i.1701 = trunc i128 %shr152.i.1700 to i64
  %shr159.i.1703 = lshr i64 %conv27.i.1640, 58
  %389 = lshr i128 %add36.i.1761, 58
  %and165.i.1705 = trunc i128 %389 to i64
  %shl166.i.1706 = and i64 %and165.i.1705, 288230376151711680
  %add156.i.1702 = add nuw nsw i64 %shr159.i.1703, %shr154.i.1701
  %add161.i.1704 = add nuw nsw i64 %add156.i.1702, %and32.i.1645
  %add168.i.1707 = add nuw nsw i64 %add161.i.1704, %shl166.i.1706
  store i64 %add168.i.1707, i64* %arrayidx33.i.1646.pre-phi, align 16, !tbaa !6
  %390 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %shr170.i.1708 = lshr i128 %390, 116
  %shr172.i.1709 = trunc i128 %shr170.i.1708 to i64
  %391 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv174.i.1710 = trunc i128 %391 to i64
  %shr175.i.1711 = lshr i64 %conv174.i.1710, 58
  %add176.i.1712 = add nuw nsw i64 %shr175.i.1711, %shr172.i.1709
  %392 = lshr i128 %391, 58
  %and180.i.1713 = trunc i128 %392 to i64
  %shl181.i.1714 = and i64 %and180.i.1713, 288230376151711680
  %add182.i.1715 = add nuw nsw i64 %add176.i.1712, %shl181.i.1714
  %shl187.i.1716 = shl nuw nsw i64 %add182.i.1715, 1
  %393 = lshr i128 %391, 115
  %.tr.i.1717 = trunc i128 %393 to i64
  %shl188.i.1718 = and i64 %.tr.i.1717, 8190
  %394 = load i64, i64* %arraydecay47.pre-phi, align 16, !tbaa !6
  %add190.i.1719 = add i64 %shl187.i.1716, %394
  %add192.i.1720 = add nuw nsw i64 %shl188.i.1718, %add42.i.1651
  %shr194.i.1721 = lshr i64 %add190.i.1719, 58
  %add196.i.1722 = add nuw nsw i64 %add192.i.1720, %shr194.i.1721
  %and198.i.1723 = and i64 %add190.i.1719, 288230376151711743
  %shr.i.1557 = lshr i64 %add168.i.1707, 57
  %add.i.1558 = add nuw nsw i64 %shr.i.1557, %and198.i.1723
  %395 = insertelement <2 x i64> undef, i64 %add168.i.1707, i32 0
  %396 = insertelement <2 x i64> %395, i64 %add168.i.2412, i32 1
  %397 = and <2 x i64> %396, <i64 144115188075855871, i64 144115188075855871>
  %shr4.i.1560 = lshr i64 %add.i.1558, 58
  %add6.i.1561 = add nuw nsw i64 %shr4.i.1560, %add196.i.1722
  %fold2736 = add i64 %shr.i.1557, %add190.i.1719
  %398 = insertelement <2 x i64> undef, i64 %fold2736, i32 0
  %399 = insertelement <2 x i64> %398, i64 %fold, i32 1
  %400 = and <2 x i64> %399, <i64 288230376151711743, i64 288230376151711743>
  %shr10.i.1563 = lshr i64 %add6.i.1561, 58
  %401 = insertelement <2 x i64> undef, i64 %shr10.i.1563, i32 0
  %402 = insertelement <2 x i64> %401, i64 %shr10.i.2268, i32 1
  %403 = insertelement <2 x i64> undef, i64 %add60.i.1659, i32 0
  %404 = insertelement <2 x i64> %403, i64 %add60.i.2364, i32 1
  %405 = add nuw nsw <2 x i64> %402, %404
  %406 = insertelement <2 x i64> undef, i64 %add6.i.1561, i32 0
  %407 = insertelement <2 x i64> %406, i64 %add6.i.2266, i32 1
  %408 = and <2 x i64> %407, <i64 288230376151711743, i64 288230376151711743>
  %409 = lshr <2 x i64> %405, <i64 58, i64 58>
  %410 = insertelement <2 x i64> undef, i64 %add78.i.1667, i32 0
  %411 = insertelement <2 x i64> %410, i64 %add78.i.2372, i32 1
  %412 = add nuw nsw <2 x i64> %409, %411
  %413 = and <2 x i64> %405, <i64 288230376151711743, i64 288230376151711743>
  %414 = lshr <2 x i64> %412, <i64 58, i64 58>
  %415 = insertelement <2 x i64> undef, i64 %add96.i.1675, i32 0
  %416 = insertelement <2 x i64> %415, i64 %add96.i.2380, i32 1
  %417 = add nuw nsw <2 x i64> %414, %416
  %418 = and <2 x i64> %412, <i64 288230376151711743, i64 288230376151711743>
  %419 = lshr <2 x i64> %417, <i64 58, i64 58>
  %420 = insertelement <2 x i64> undef, i64 %add114.i.1683, i32 0
  %421 = insertelement <2 x i64> %420, i64 %add114.i.2388, i32 1
  %422 = add nuw nsw <2 x i64> %419, %421
  %423 = and <2 x i64> %417, <i64 288230376151711743, i64 288230376151711743>
  %424 = lshr <2 x i64> %422, <i64 58, i64 58>
  %425 = insertelement <2 x i64> undef, i64 %add132.i.1691, i32 0
  %426 = insertelement <2 x i64> %425, i64 %add132.i.2396, i32 1
  %427 = add nuw nsw <2 x i64> %424, %426
  %428 = and <2 x i64> %422, <i64 288230376151711743, i64 288230376151711743>
  %429 = lshr <2 x i64> %427, <i64 58, i64 58>
  %430 = insertelement <2 x i64> undef, i64 %add150.i.1699, i32 0
  %431 = insertelement <2 x i64> %430, i64 %add150.i.2404, i32 1
  %432 = add nuw nsw <2 x i64> %429, %431
  %433 = and <2 x i64> %427, <i64 288230376151711743, i64 288230376151711743>
  %434 = lshr <2 x i64> %432, <i64 58, i64 58>
  %435 = add nuw nsw <2 x i64> %434, %397
  %436 = and <2 x i64> %432, <i64 288230376151711743, i64 288230376151711743>
  %437 = or <2 x i64> %408, %400
  %438 = or <2 x i64> %437, %413
  %439 = or <2 x i64> %438, %418
  %440 = or <2 x i64> %439, %423
  %441 = or <2 x i64> %440, %428
  %442 = or <2 x i64> %441, %433
  %443 = or <2 x i64> %442, %436
  %444 = or <2 x i64> %443, %435
  %445 = add <2 x i64> %444, <i64 -1, i64 -1>
  %446 = xor <2 x i64> %400, <i64 288230376151711743, i64 288230376151711743>
  %447 = xor <2 x i64> %408, <i64 288230376151711743, i64 288230376151711743>
  %448 = or <2 x i64> %447, %446
  %449 = xor <2 x i64> %413, <i64 288230376151711743, i64 288230376151711743>
  %450 = or <2 x i64> %448, %449
  %451 = xor <2 x i64> %418, <i64 288230376151711743, i64 288230376151711743>
  %452 = or <2 x i64> %450, %451
  %453 = xor <2 x i64> %423, <i64 288230376151711743, i64 288230376151711743>
  %454 = or <2 x i64> %452, %453
  %455 = xor <2 x i64> %428, <i64 288230376151711743, i64 288230376151711743>
  %456 = or <2 x i64> %454, %455
  %457 = xor <2 x i64> %433, <i64 288230376151711743, i64 288230376151711743>
  %458 = or <2 x i64> %456, %457
  %459 = xor <2 x i64> %436, <i64 288230376151711743, i64 288230376151711743>
  %460 = or <2 x i64> %458, %459
  %461 = xor <2 x i64> %435, <i64 144115188075855871, i64 144115188075855871>
  %462 = or <2 x i64> %460, %461
  %463 = add <2 x i64> %462, <i64 -1, i64 -1>
  %464 = or <2 x i64> %463, %445
  %mul.i.1532 = shl nuw nsw i64 %and198.i.1723, 1
  store i64 %mul.i.1532, i64* %arraydecay47.pre-phi, align 16, !tbaa !6
  %mul2.i.1534 = shl nuw nsw i64 %add196.i.1722, 1
  store i64 %mul2.i.1534, i64* %arrayidx5.i.1618.pre-phi, align 8, !tbaa !6
  %465 = load i64, i64* %arrayidx9.i.1622.pre-phi, align 16, !tbaa !6
  %mul4.i.1536 = shl i64 %465, 1
  store i64 %mul4.i.1536, i64* %arrayidx9.i.1622.pre-phi, align 16, !tbaa !6
  %466 = load i64, i64* %arrayidx13.i.1626.pre-phi, align 8, !tbaa !6
  %mul6.i.1538 = shl i64 %466, 1
  store i64 %mul6.i.1538, i64* %arrayidx13.i.1626.pre-phi, align 8, !tbaa !6
  %467 = load i64, i64* %arrayidx17.i.1630.pre-phi, align 16, !tbaa !6
  %mul8.i.1540 = shl i64 %467, 1
  store i64 %mul8.i.1540, i64* %arrayidx17.i.1630.pre-phi, align 16, !tbaa !6
  %468 = load i64, i64* %arrayidx21.i.1634.pre-phi, align 8, !tbaa !6
  %mul10.i.1542 = shl i64 %468, 1
  store i64 %mul10.i.1542, i64* %arrayidx21.i.1634.pre-phi, align 8, !tbaa !6
  %469 = load i64, i64* %arrayidx25.i.1638.pre-phi, align 16, !tbaa !6
  %mul12.i.1544 = shl i64 %469, 1
  store i64 %mul12.i.1544, i64* %arrayidx25.i.1638.pre-phi, align 16, !tbaa !6
  %470 = load i64, i64* %arrayidx29.i.1642.pre-phi, align 8, !tbaa !6
  %mul14.i.1546 = shl i64 %470, 1
  store i64 %mul14.i.1546, i64* %arrayidx29.i.1642.pre-phi, align 8, !tbaa !6
  %471 = load i64, i64* %arrayidx33.i.1646.pre-phi, align 16, !tbaa !6
  %mul16.i.1548 = shl i64 %471, 1
  store i64 %mul16.i.1548, i64* %arrayidx33.i.1646.pre-phi, align 16, !tbaa !6
  %472 = extractelement <2 x i64> %464, i32 0
  %473 = extractelement <2 x i64> %464, i32 1
  %474 = and i64 %472, %473
  %475 = icmp sgt i64 %474, -1
  %476 = extractelement <2 x i64> %92, i32 0
  %477 = extractelement <2 x i64> %92, i32 1
  %478 = or i64 %476, %477
  %479 = icmp ne i64 %478, 0
  %480 = or i1 %479, %475
  br i1 %480, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end
  call fastcc void @point_double(i64* %x3, i64* %y3, i64* %z3, i64* %x1, i64* %y1, i64* %z1)
  br label %cleanup

if.end.71:                                        ; preds = %if.end
  %fold2735 = add i64 %shl187.i.2135, %conv.i.2032
  %and198.i.2142 = and i64 %fold2735, 288230376151711743
  %and4.i.2036 = and i64 %conv3.i.2035, 288230376151711743
  %shr.i.2066 = lshr i64 %conv.i.2032, 58
  %add.i.2067 = add nuw nsw i64 %and4.i.2036, %shr.i.2066
  %481 = lshr i128 %327, 58
  %and40.i.2068 = trunc i128 %481 to i64
  %shl.i.2069 = and i64 %and40.i.2068, 288230376151711680
  %add42.i.2070 = add nuw nsw i64 %add.i.2067, %shl.i.2069
  %482 = lshr i128 %335, 115
  %.tr.i.2136 = trunc i128 %482 to i64
  %shl188.i.2137 = and i64 %.tr.i.2136, 8190
  %add192.i.2139 = add nuw nsw i64 %add42.i.2070, %shl188.i.2137
  %and.i.2033 = and i64 %conv.i.2032, 288230376151711743
  %add190.i.2138 = add nuw nsw i64 %shl187.i.2135, %and.i.2033
  %shr194.i.2140 = lshr i64 %add190.i.2138, 58
  %add196.i.2141 = add nuw nsw i64 %add192.i.2139, %shr194.i.2140
  %483 = bitcast [9 x i64]* %ftmp4 to <2 x i64>*
  %484 = load <2 x i64>, <2 x i64>* %483, align 16, !tbaa !6
  %485 = load i64, i64* %arrayidx9.i.2327, align 16, !tbaa !6
  %486 = load i64, i64* %arrayidx13.i.2331, align 8, !tbaa !6
  %487 = load i64, i64* %arrayidx17.i.2335, align 16, !tbaa !6
  %488 = load i64, i64* %arrayidx21.i.2339, align 8, !tbaa !6
  %489 = load i64, i64* %arrayidx25.i.2343, align 16, !tbaa !6
  %490 = load i64, i64* %arrayidx29.i.2347, align 8, !tbaa !6
  %491 = load i64, i64* %arrayidx33.i.2351, align 16, !tbaa !6
  %492 = shl <2 x i64> %484, <i64 1, i64 1>
  %493 = bitcast [9 x i64]* %ftmp to <2 x i64>*
  store <2 x i64> %492, <2 x i64>* %493, align 16, !tbaa !6
  %mul4.i.1460 = shl i64 %485, 1
  store i64 %mul4.i.1460, i64* %arrayidx9.i.528, align 16, !tbaa !6
  %mul6.i.1462 = shl i64 %486, 1
  store i64 %mul6.i.1462, i64* %arrayidx13.i.532, align 8, !tbaa !6
  %mul8.i.1464 = shl i64 %487, 1
  store i64 %mul8.i.1464, i64* %arrayidx17.i.536, align 16, !tbaa !6
  %mul10.i.1466 = shl i64 %488, 1
  store i64 %mul10.i.1466, i64* %arrayidx21.i.540, align 8, !tbaa !6
  %mul12.i.1468 = shl i64 %489, 1
  store i64 %mul12.i.1468, i64* %arrayidx25.i.544, align 16, !tbaa !6
  %mul14.i.1470 = shl i64 %490, 1
  store i64 %mul14.i.1470, i64* %arrayidx29.i.548, align 8, !tbaa !6
  %mul16.i.1472 = shl i64 %491, 1
  store i64 %mul16.i.1472, i64* %arrayidx33.i.552, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay8)
  %494 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1325 = trunc i128 %494 to i64
  %and.i.1326 = and i64 %conv.i.1325, 288230376151711743
  store i64 %and.i.1326, i64* %arraydecay8, align 16, !tbaa !6
  %495 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.1328 = trunc i128 %495 to i64
  %and4.i.1329 = and i64 %conv3.i.1328, 288230376151711743
  %496 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.1332 = trunc i128 %496 to i64
  %and8.i.1333 = and i64 %conv7.i.1332, 288230376151711743
  %497 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.1336 = trunc i128 %497 to i64
  %and12.i.1337 = and i64 %conv11.i.1336, 288230376151711743
  %498 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.1340 = trunc i128 %498 to i64
  %and16.i.1341 = and i64 %conv15.i.1340, 288230376151711743
  %499 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.1344 = trunc i128 %499 to i64
  %and20.i.1345 = and i64 %conv19.i.1344, 288230376151711743
  %500 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.1348 = trunc i128 %500 to i64
  %and24.i.1349 = and i64 %conv23.i.1348, 288230376151711743
  %501 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.1352 = trunc i128 %501 to i64
  %and28.i.1353 = and i64 %conv27.i.1352, 288230376151711743
  %502 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.1356 = trunc i128 %502 to i64
  %and32.i.1357 = and i64 %conv31.i.1356, 288230376151711743
  %shr.i.1359 = lshr i64 %conv.i.1325, 58
  %add.i.1360 = add nuw nsw i64 %and4.i.1329, %shr.i.1359
  %503 = lshr i128 %494, 58
  %and40.i.1361 = trunc i128 %503 to i64
  %shl.i.1362 = and i64 %and40.i.1361, 288230376151711680
  %add42.i.1363 = add nuw nsw i64 %add.i.1360, %shl.i.1362
  %shr44.i.1364 = lshr i128 %494, 116
  %shr46.i.1365 = trunc i128 %shr44.i.1364 to i64
  %shr51.i.1367 = lshr i64 %conv3.i.1328, 58
  %504 = lshr i128 %495, 58
  %and57.i.1369 = trunc i128 %504 to i64
  %shl58.i.1370 = and i64 %and57.i.1369, 288230376151711680
  %add48.i.1366 = add nuw nsw i64 %shr51.i.1367, %shr46.i.1365
  %add53.i.1368 = add nuw nsw i64 %add48.i.1366, %and8.i.1333
  %add60.i.1371 = add nuw nsw i64 %add53.i.1368, %shl58.i.1370
  store i64 %add60.i.1371, i64* %arrayidx9.i.528, align 16, !tbaa !6
  %shr62.i.1372 = lshr i128 %495, 116
  %shr64.i.1373 = trunc i128 %shr62.i.1372 to i64
  %shr69.i.1375 = lshr i64 %conv7.i.1332, 58
  %505 = lshr i128 %496, 58
  %and75.i.1377 = trunc i128 %505 to i64
  %shl76.i.1378 = and i64 %and75.i.1377, 288230376151711680
  %add66.i.1374 = add nuw nsw i64 %shr69.i.1375, %shr64.i.1373
  %add71.i.1376 = add nuw nsw i64 %add66.i.1374, %and12.i.1337
  %add78.i.1379 = add nuw nsw i64 %add71.i.1376, %shl76.i.1378
  store i64 %add78.i.1379, i64* %arrayidx13.i.532, align 8, !tbaa !6
  %shr80.i.1380 = lshr i128 %496, 116
  %shr82.i.1381 = trunc i128 %shr80.i.1380 to i64
  %shr87.i.1383 = lshr i64 %conv11.i.1336, 58
  %506 = lshr i128 %497, 58
  %and93.i.1385 = trunc i128 %506 to i64
  %shl94.i.1386 = and i64 %and93.i.1385, 288230376151711680
  %add84.i.1382 = add nuw nsw i64 %shr87.i.1383, %shr82.i.1381
  %add89.i.1384 = add nuw nsw i64 %add84.i.1382, %and16.i.1341
  %add96.i.1387 = add nuw nsw i64 %add89.i.1384, %shl94.i.1386
  store i64 %add96.i.1387, i64* %arrayidx17.i.536, align 16, !tbaa !6
  %shr98.i.1388 = lshr i128 %497, 116
  %shr100.i.1389 = trunc i128 %shr98.i.1388 to i64
  %shr105.i.1391 = lshr i64 %conv15.i.1340, 58
  %507 = lshr i128 %498, 58
  %and111.i.1393 = trunc i128 %507 to i64
  %shl112.i.1394 = and i64 %and111.i.1393, 288230376151711680
  %add102.i.1390 = add nuw nsw i64 %shr105.i.1391, %shr100.i.1389
  %add107.i.1392 = add nuw nsw i64 %add102.i.1390, %and20.i.1345
  %add114.i.1395 = add nuw nsw i64 %add107.i.1392, %shl112.i.1394
  store i64 %add114.i.1395, i64* %arrayidx21.i.540, align 8, !tbaa !6
  %shr116.i.1396 = lshr i128 %498, 116
  %shr118.i.1397 = trunc i128 %shr116.i.1396 to i64
  %shr123.i.1399 = lshr i64 %conv19.i.1344, 58
  %508 = lshr i128 %499, 58
  %and129.i.1401 = trunc i128 %508 to i64
  %shl130.i.1402 = and i64 %and129.i.1401, 288230376151711680
  %add120.i.1398 = add nuw nsw i64 %shr123.i.1399, %shr118.i.1397
  %add125.i.1400 = add nuw nsw i64 %add120.i.1398, %and24.i.1349
  %add132.i.1403 = add nuw nsw i64 %add125.i.1400, %shl130.i.1402
  store i64 %add132.i.1403, i64* %arrayidx25.i.544, align 16, !tbaa !6
  %shr134.i.1404 = lshr i128 %499, 116
  %shr136.i.1405 = trunc i128 %shr134.i.1404 to i64
  %shr141.i.1407 = lshr i64 %conv23.i.1348, 58
  %509 = lshr i128 %500, 58
  %and147.i.1409 = trunc i128 %509 to i64
  %shl148.i.1410 = and i64 %and147.i.1409, 288230376151711680
  %add138.i.1406 = add nuw nsw i64 %shr141.i.1407, %shr136.i.1405
  %add143.i.1408 = add nuw nsw i64 %add138.i.1406, %and28.i.1353
  %add150.i.1411 = add nuw nsw i64 %add143.i.1408, %shl148.i.1410
  store i64 %add150.i.1411, i64* %arrayidx29.i.548, align 8, !tbaa !6
  %shr152.i.1412 = lshr i128 %500, 116
  %shr154.i.1413 = trunc i128 %shr152.i.1412 to i64
  %shr159.i.1415 = lshr i64 %conv27.i.1352, 58
  %510 = lshr i128 %501, 58
  %and165.i.1417 = trunc i128 %510 to i64
  %shl166.i.1418 = and i64 %and165.i.1417, 288230376151711680
  %add156.i.1414 = add nuw nsw i64 %shr159.i.1415, %shr154.i.1413
  %add161.i.1416 = add nuw nsw i64 %add156.i.1414, %and32.i.1357
  %add168.i.1419 = add nuw nsw i64 %add161.i.1416, %shl166.i.1418
  store i64 %add168.i.1419, i64* %arrayidx33.i.552, align 16, !tbaa !6
  %shr170.i.1420 = lshr i128 %501, 116
  %shr172.i.1421 = trunc i128 %shr170.i.1420 to i64
  %shr175.i.1423 = lshr i64 %conv31.i.1356, 58
  %add176.i.1424 = add nuw nsw i64 %shr175.i.1423, %shr172.i.1421
  %511 = lshr i128 %502, 58
  %and180.i.1425 = trunc i128 %511 to i64
  %shl181.i.1426 = and i64 %and180.i.1425, 288230376151711680
  %add182.i.1427 = add nuw nsw i64 %add176.i.1424, %shl181.i.1426
  %shl187.i.1428 = shl nuw nsw i64 %add182.i.1427, 1
  %512 = lshr i128 %502, 115
  %.tr.i.1429 = trunc i128 %512 to i64
  %shl188.i.1430 = and i64 %.tr.i.1429, 8190
  %513 = load i64, i64* %arraydecay8, align 16, !tbaa !6
  %add190.i.1431 = add i64 %shl187.i.1428, %513
  %add192.i.1432 = add nuw nsw i64 %shl188.i.1430, %add42.i.1363
  %shr194.i.1433 = lshr i64 %add190.i.1431, 58
  %add196.i.1434 = add nuw nsw i64 %add192.i.1432, %shr194.i.1433
  store i64 %add196.i.1434, i64* %arrayidx5.i.524, align 8, !tbaa !6
  %and198.i.1435 = and i64 %add190.i.1431, 288230376151711743
  store i64 %and198.i.1435, i64* %arraydecay8, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay42, i64* %arraydecay8)
  %arraydecay82 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 0
  %514 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.1198 = trunc i128 %514 to i64
  %and.i.1199 = and i64 %conv.i.1198, 288230376151711743
  store i64 %and.i.1199, i64* %arraydecay82, align 16, !tbaa !6
  %515 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.1201 = trunc i128 %515 to i64
  %and4.i.1202 = and i64 %conv3.i.1201, 288230376151711743
  %arrayidx5.i.1203 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 1
  %516 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.1205 = trunc i128 %516 to i64
  %and8.i.1206 = and i64 %conv7.i.1205, 288230376151711743
  %arrayidx9.i.1207 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 2
  %517 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.1209 = trunc i128 %517 to i64
  %and12.i.1210 = and i64 %conv11.i.1209, 288230376151711743
  %arrayidx13.i.1211 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 3
  %518 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.1213 = trunc i128 %518 to i64
  %and16.i.1214 = and i64 %conv15.i.1213, 288230376151711743
  %arrayidx17.i.1215 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 4
  %519 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.1217 = trunc i128 %519 to i64
  %and20.i.1218 = and i64 %conv19.i.1217, 288230376151711743
  %arrayidx21.i.1219 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 5
  %520 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.1221 = trunc i128 %520 to i64
  %and24.i.1222 = and i64 %conv23.i.1221, 288230376151711743
  %arrayidx25.i.1223 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 6
  %521 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.1225 = trunc i128 %521 to i64
  %and28.i.1226 = and i64 %conv27.i.1225, 288230376151711743
  %arrayidx29.i.1227 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 7
  %522 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.1229 = trunc i128 %522 to i64
  %and32.i.1230 = and i64 %conv31.i.1229, 288230376151711743
  %arrayidx33.i.1231 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 8
  %shr.i.1232 = lshr i64 %conv.i.1198, 58
  %add.i.1233 = add nuw nsw i64 %and4.i.1202, %shr.i.1232
  %523 = lshr i128 %514, 58
  %and40.i.1234 = trunc i128 %523 to i64
  %shl.i.1235 = and i64 %and40.i.1234, 288230376151711680
  %add42.i.1236 = add nuw nsw i64 %add.i.1233, %shl.i.1235
  %shr44.i.1237 = lshr i128 %514, 116
  %shr46.i.1238 = trunc i128 %shr44.i.1237 to i64
  %shr51.i.1240 = lshr i64 %conv3.i.1201, 58
  %524 = lshr i128 %515, 58
  %and57.i.1242 = trunc i128 %524 to i64
  %shl58.i.1243 = and i64 %and57.i.1242, 288230376151711680
  %add48.i.1239 = add nuw nsw i64 %shr51.i.1240, %shr46.i.1238
  %add53.i.1241 = add nuw nsw i64 %add48.i.1239, %and8.i.1206
  %add60.i.1244 = add nuw nsw i64 %add53.i.1241, %shl58.i.1243
  store i64 %add60.i.1244, i64* %arrayidx9.i.1207, align 16, !tbaa !6
  %shr62.i.1245 = lshr i128 %515, 116
  %shr64.i.1246 = trunc i128 %shr62.i.1245 to i64
  %shr69.i.1248 = lshr i64 %conv7.i.1205, 58
  %525 = lshr i128 %516, 58
  %and75.i.1250 = trunc i128 %525 to i64
  %shl76.i.1251 = and i64 %and75.i.1250, 288230376151711680
  %add66.i.1247 = add nuw nsw i64 %shr69.i.1248, %shr64.i.1246
  %add71.i.1249 = add nuw nsw i64 %add66.i.1247, %and12.i.1210
  %add78.i.1252 = add nuw nsw i64 %add71.i.1249, %shl76.i.1251
  store i64 %add78.i.1252, i64* %arrayidx13.i.1211, align 8, !tbaa !6
  %shr80.i.1253 = lshr i128 %516, 116
  %shr82.i.1254 = trunc i128 %shr80.i.1253 to i64
  %shr87.i.1256 = lshr i64 %conv11.i.1209, 58
  %526 = lshr i128 %517, 58
  %and93.i.1258 = trunc i128 %526 to i64
  %shl94.i.1259 = and i64 %and93.i.1258, 288230376151711680
  %add84.i.1255 = add nuw nsw i64 %shr87.i.1256, %shr82.i.1254
  %add89.i.1257 = add nuw nsw i64 %add84.i.1255, %and16.i.1214
  %add96.i.1260 = add nuw nsw i64 %add89.i.1257, %shl94.i.1259
  store i64 %add96.i.1260, i64* %arrayidx17.i.1215, align 16, !tbaa !6
  %shr98.i.1261 = lshr i128 %517, 116
  %shr100.i.1262 = trunc i128 %shr98.i.1261 to i64
  %shr105.i.1264 = lshr i64 %conv15.i.1213, 58
  %527 = lshr i128 %518, 58
  %and111.i.1266 = trunc i128 %527 to i64
  %shl112.i.1267 = and i64 %and111.i.1266, 288230376151711680
  %add102.i.1263 = add nuw nsw i64 %shr105.i.1264, %shr100.i.1262
  %add107.i.1265 = add nuw nsw i64 %add102.i.1263, %and20.i.1218
  %add114.i.1268 = add nuw nsw i64 %add107.i.1265, %shl112.i.1267
  store i64 %add114.i.1268, i64* %arrayidx21.i.1219, align 8, !tbaa !6
  %shr116.i.1269 = lshr i128 %518, 116
  %shr118.i.1270 = trunc i128 %shr116.i.1269 to i64
  %shr123.i.1272 = lshr i64 %conv19.i.1217, 58
  %528 = lshr i128 %519, 58
  %and129.i.1274 = trunc i128 %528 to i64
  %shl130.i.1275 = and i64 %and129.i.1274, 288230376151711680
  %add120.i.1271 = add nuw nsw i64 %shr123.i.1272, %shr118.i.1270
  %add125.i.1273 = add nuw nsw i64 %add120.i.1271, %and24.i.1222
  %add132.i.1276 = add nuw nsw i64 %add125.i.1273, %shl130.i.1275
  store i64 %add132.i.1276, i64* %arrayidx25.i.1223, align 16, !tbaa !6
  %shr134.i.1277 = lshr i128 %519, 116
  %shr136.i.1278 = trunc i128 %shr134.i.1277 to i64
  %shr141.i.1280 = lshr i64 %conv23.i.1221, 58
  %529 = lshr i128 %520, 58
  %and147.i.1282 = trunc i128 %529 to i64
  %shl148.i.1283 = and i64 %and147.i.1282, 288230376151711680
  %add138.i.1279 = add nuw nsw i64 %shr141.i.1280, %shr136.i.1278
  %add143.i.1281 = add nuw nsw i64 %add138.i.1279, %and28.i.1226
  %add150.i.1284 = add nuw nsw i64 %add143.i.1281, %shl148.i.1283
  store i64 %add150.i.1284, i64* %arrayidx29.i.1227, align 8, !tbaa !6
  %shr152.i.1285 = lshr i128 %520, 116
  %shr154.i.1286 = trunc i128 %shr152.i.1285 to i64
  %shr159.i.1288 = lshr i64 %conv27.i.1225, 58
  %530 = lshr i128 %521, 58
  %and165.i.1290 = trunc i128 %530 to i64
  %shl166.i.1291 = and i64 %and165.i.1290, 288230376151711680
  %add156.i.1287 = add nuw nsw i64 %shr159.i.1288, %shr154.i.1286
  %add161.i.1289 = add nuw nsw i64 %add156.i.1287, %and32.i.1230
  %add168.i.1292 = add nuw nsw i64 %add161.i.1289, %shl166.i.1291
  store i64 %add168.i.1292, i64* %arrayidx33.i.1231, align 16, !tbaa !6
  %shr170.i.1293 = lshr i128 %521, 116
  %shr172.i.1294 = trunc i128 %shr170.i.1293 to i64
  %shr175.i.1296 = lshr i64 %conv31.i.1229, 58
  %add176.i.1297 = add nuw nsw i64 %shr175.i.1296, %shr172.i.1294
  %531 = lshr i128 %522, 58
  %and180.i.1298 = trunc i128 %531 to i64
  %shl181.i.1299 = and i64 %and180.i.1298, 288230376151711680
  %add182.i.1300 = add nuw nsw i64 %add176.i.1297, %shl181.i.1299
  %shl187.i.1301 = shl nuw nsw i64 %add182.i.1300, 1
  %532 = lshr i128 %522, 115
  %.tr.i.1302 = trunc i128 %532 to i64
  %shl188.i.1303 = and i64 %.tr.i.1302, 8190
  %533 = load i64, i64* %arraydecay82, align 16, !tbaa !6
  %add190.i.1304 = add i64 %shl187.i.1301, %533
  %add192.i.1305 = add nuw nsw i64 %shl188.i.1303, %add42.i.1236
  %shr194.i.1306 = lshr i64 %add190.i.1304, 58
  %add196.i.1307 = add nuw nsw i64 %add192.i.1305, %shr194.i.1306
  store i64 %add196.i.1307, i64* %arrayidx5.i.1203, align 8, !tbaa !6
  %and198.i.1308 = and i64 %add190.i.1304, 288230376151711743
  store i64 %and198.i.1308, i64* %arraydecay82, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay41.pre-phi, i64* %arraydecay8)
  %534 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %conv.i.976 = trunc i128 %534 to i64
  %and.i.977 = and i64 %conv.i.976, 288230376151711743
  store i64 %and.i.977, i64* %arraydecay42, align 16, !tbaa !6
  %535 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %conv3.i.979 = trunc i128 %535 to i64
  %and4.i.980 = and i64 %conv3.i.979, 288230376151711743
  %536 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %conv7.i.983 = trunc i128 %536 to i64
  %and8.i.984 = and i64 %conv7.i.983, 288230376151711743
  %537 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %conv11.i.987 = trunc i128 %537 to i64
  %and12.i.988 = and i64 %conv11.i.987, 288230376151711743
  %538 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %conv15.i.991 = trunc i128 %538 to i64
  %and16.i.992 = and i64 %conv15.i.991, 288230376151711743
  %539 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %conv19.i.995 = trunc i128 %539 to i64
  %and20.i.996 = and i64 %conv19.i.995, 288230376151711743
  %540 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %conv23.i.999 = trunc i128 %540 to i64
  %and24.i.1000 = and i64 %conv23.i.999, 288230376151711743
  %541 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %conv27.i.1003 = trunc i128 %541 to i64
  %and28.i.1004 = and i64 %conv27.i.1003, 288230376151711743
  %542 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv31.i.1007 = trunc i128 %542 to i64
  %and32.i.1008 = and i64 %conv31.i.1007, 288230376151711743
  %shr.i.1010 = lshr i64 %conv.i.976, 58
  %add.i.1011 = add nuw nsw i64 %and4.i.980, %shr.i.1010
  %543 = lshr i128 %534, 58
  %and40.i.1012 = trunc i128 %543 to i64
  %shl.i.1013 = and i64 %and40.i.1012, 288230376151711680
  %add42.i.1014 = add nuw nsw i64 %add.i.1011, %shl.i.1013
  %shr44.i.1015 = lshr i128 %534, 116
  %shr46.i.1016 = trunc i128 %shr44.i.1015 to i64
  %shr51.i.1018 = lshr i64 %conv3.i.979, 58
  %544 = lshr i128 %535, 58
  %and57.i.1020 = trunc i128 %544 to i64
  %shl58.i.1021 = and i64 %and57.i.1020, 288230376151711680
  %add48.i.1017 = add nuw nsw i64 %shr51.i.1018, %shr46.i.1016
  %add53.i.1019 = add nuw nsw i64 %add48.i.1017, %and8.i.984
  %add60.i.1022 = add nuw nsw i64 %add53.i.1019, %shl58.i.1021
  store i64 %add60.i.1022, i64* %arrayidx9.i.2327, align 16, !tbaa !6
  %shr62.i.1023 = lshr i128 %535, 116
  %shr64.i.1024 = trunc i128 %shr62.i.1023 to i64
  %shr69.i.1026 = lshr i64 %conv7.i.983, 58
  %545 = lshr i128 %536, 58
  %and75.i.1028 = trunc i128 %545 to i64
  %shl76.i.1029 = and i64 %and75.i.1028, 288230376151711680
  %add66.i.1025 = add nuw nsw i64 %shr69.i.1026, %shr64.i.1024
  %add71.i.1027 = add nuw nsw i64 %add66.i.1025, %and12.i.988
  %add78.i.1030 = add nuw nsw i64 %add71.i.1027, %shl76.i.1029
  store i64 %add78.i.1030, i64* %arrayidx13.i.2331, align 8, !tbaa !6
  %shr80.i.1031 = lshr i128 %536, 116
  %shr82.i.1032 = trunc i128 %shr80.i.1031 to i64
  %shr87.i.1034 = lshr i64 %conv11.i.987, 58
  %546 = lshr i128 %537, 58
  %and93.i.1036 = trunc i128 %546 to i64
  %shl94.i.1037 = and i64 %and93.i.1036, 288230376151711680
  %add84.i.1033 = add nuw nsw i64 %shr87.i.1034, %shr82.i.1032
  %add89.i.1035 = add nuw nsw i64 %add84.i.1033, %and16.i.992
  %add96.i.1038 = add nuw nsw i64 %add89.i.1035, %shl94.i.1037
  store i64 %add96.i.1038, i64* %arrayidx17.i.2335, align 16, !tbaa !6
  %shr98.i.1039 = lshr i128 %537, 116
  %shr100.i.1040 = trunc i128 %shr98.i.1039 to i64
  %shr105.i.1042 = lshr i64 %conv15.i.991, 58
  %547 = lshr i128 %538, 58
  %and111.i.1044 = trunc i128 %547 to i64
  %shl112.i.1045 = and i64 %and111.i.1044, 288230376151711680
  %add102.i.1041 = add nuw nsw i64 %shr105.i.1042, %shr100.i.1040
  %add107.i.1043 = add nuw nsw i64 %add102.i.1041, %and20.i.996
  %add114.i.1046 = add nuw nsw i64 %add107.i.1043, %shl112.i.1045
  store i64 %add114.i.1046, i64* %arrayidx21.i.2339, align 8, !tbaa !6
  %shr116.i.1047 = lshr i128 %538, 116
  %shr118.i.1048 = trunc i128 %shr116.i.1047 to i64
  %shr123.i.1050 = lshr i64 %conv19.i.995, 58
  %548 = lshr i128 %539, 58
  %and129.i.1052 = trunc i128 %548 to i64
  %shl130.i.1053 = and i64 %and129.i.1052, 288230376151711680
  %add120.i.1049 = add nuw nsw i64 %shr123.i.1050, %shr118.i.1048
  %add125.i.1051 = add nuw nsw i64 %add120.i.1049, %and24.i.1000
  %add132.i.1054 = add nuw nsw i64 %add125.i.1051, %shl130.i.1053
  store i64 %add132.i.1054, i64* %arrayidx25.i.2343, align 16, !tbaa !6
  %shr134.i.1055 = lshr i128 %539, 116
  %shr136.i.1056 = trunc i128 %shr134.i.1055 to i64
  %shr141.i.1058 = lshr i64 %conv23.i.999, 58
  %549 = lshr i128 %540, 58
  %and147.i.1060 = trunc i128 %549 to i64
  %shl148.i.1061 = and i64 %and147.i.1060, 288230376151711680
  %add138.i.1057 = add nuw nsw i64 %shr141.i.1058, %shr136.i.1056
  %add143.i.1059 = add nuw nsw i64 %add138.i.1057, %and28.i.1004
  %add150.i.1062 = add nuw nsw i64 %add143.i.1059, %shl148.i.1061
  store i64 %add150.i.1062, i64* %arrayidx29.i.2347, align 8, !tbaa !6
  %shr152.i.1063 = lshr i128 %540, 116
  %shr154.i.1064 = trunc i128 %shr152.i.1063 to i64
  %shr159.i.1066 = lshr i64 %conv27.i.1003, 58
  %550 = lshr i128 %541, 58
  %and165.i.1068 = trunc i128 %550 to i64
  %shl166.i.1069 = and i64 %and165.i.1068, 288230376151711680
  %add156.i.1065 = add nuw nsw i64 %shr159.i.1066, %shr154.i.1064
  %add161.i.1067 = add nuw nsw i64 %add156.i.1065, %and32.i.1008
  %add168.i.1070 = add nuw nsw i64 %add161.i.1067, %shl166.i.1069
  store i64 %add168.i.1070, i64* %arrayidx33.i.2351, align 16, !tbaa !6
  %shr170.i.1071 = lshr i128 %541, 116
  %shr172.i.1072 = trunc i128 %shr170.i.1071 to i64
  %shr175.i.1074 = lshr i64 %conv31.i.1007, 58
  %add176.i.1075 = add nuw nsw i64 %shr175.i.1074, %shr172.i.1072
  %551 = lshr i128 %542, 58
  %and180.i.1076 = trunc i128 %551 to i64
  %shl181.i.1077 = and i64 %and180.i.1076, 288230376151711680
  %add182.i.1078 = add nuw nsw i64 %add176.i.1075, %shl181.i.1077
  %shl187.i.1079 = shl nuw nsw i64 %add182.i.1078, 1
  %552 = lshr i128 %542, 115
  %.tr.i.1080 = trunc i128 %552 to i64
  %shl188.i.1081 = and i64 %.tr.i.1080, 8190
  %553 = load i64, i64* %arraydecay42, align 16, !tbaa !6
  %add190.i.1082 = add i64 %shl187.i.1079, %553
  %add192.i.1083 = add nuw nsw i64 %shl188.i.1081, %add42.i.1014
  %shr194.i.1084 = lshr i64 %add190.i.1082, 58
  %add196.i.1085 = add nuw nsw i64 %add192.i.1083, %shr194.i.1084
  store i64 %add196.i.1085, i64* %arrayidx5.i.2323, align 8, !tbaa !6
  %and198.i.1086 = and i64 %add190.i.1082, 288230376151711743
  store i64 %and198.i.1086, i64* %arraydecay42, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay, i64* %arraydecay47.pre-phi)
  %554 = load i64, i64* %arraydecay82, align 16, !tbaa !6
  %sub.i.822 = sub i64 4611686018427387872, %554
  %conv.i.823 = zext i64 %sub.i.822 to i128
  %555 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.824 = add i128 %conv.i.823, %555
  %556 = load i64, i64* %arrayidx5.i.1203, align 8, !tbaa !6
  %sub3.i.826 = sub i64 4611686018427387888, %556
  %conv4.i.827 = zext i64 %sub3.i.826 to i128
  %557 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %add6.i.829 = add i128 %conv4.i.827, %557
  %558 = load i64, i64* %arrayidx9.i.1207, align 16, !tbaa !6
  %sub8.i.831 = sub i64 4611686018427387888, %558
  %conv9.i.832 = zext i64 %sub8.i.831 to i128
  %559 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %add11.i.834 = add i128 %conv9.i.832, %559
  %560 = load i64, i64* %arrayidx13.i.1211, align 8, !tbaa !6
  %sub13.i.836 = sub i64 4611686018427387888, %560
  %conv14.i.837 = zext i64 %sub13.i.836 to i128
  %561 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %add16.i.839 = add i128 %conv14.i.837, %561
  %562 = load i64, i64* %arrayidx17.i.1215, align 16, !tbaa !6
  %sub18.i.841 = sub i64 4611686018427387888, %562
  %conv19.i.842 = zext i64 %sub18.i.841 to i128
  %563 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %add21.i.844 = add i128 %conv19.i.842, %563
  %564 = load i64, i64* %arrayidx21.i.1219, align 8, !tbaa !6
  %sub23.i.846 = sub i64 4611686018427387888, %564
  %conv24.i.847 = zext i64 %sub23.i.846 to i128
  %565 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %add26.i.849 = add i128 %conv24.i.847, %565
  %566 = load i64, i64* %arrayidx25.i.1223, align 16, !tbaa !6
  %sub28.i.851 = sub i64 4611686018427387888, %566
  %conv29.i.852 = zext i64 %sub28.i.851 to i128
  %567 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %add31.i.854 = add i128 %conv29.i.852, %567
  %568 = load i64, i64* %arrayidx29.i.1227, align 8, !tbaa !6
  %sub33.i.856 = sub i64 4611686018427387888, %568
  %conv34.i.857 = zext i64 %sub33.i.856 to i128
  %569 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %add36.i.859 = add i128 %conv34.i.857, %569
  %570 = load i64, i64* %arrayidx33.i.1231, align 16, !tbaa !6
  %sub38.i.861 = sub i64 4611686018427387888, %570
  %conv39.i.862 = zext i64 %sub38.i.861 to i128
  %571 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %add41.i.864 = add i128 %conv39.i.862, %571
  %572 = load i64, i64* %arraydecay42, align 16, !tbaa !6
  store i64 %572, i64* %arraydecay41.pre-phi, align 16, !tbaa !6
  %573 = load i64, i64* %arrayidx5.i.2323, align 8, !tbaa !6
  store i64 %573, i64* %arrayidx2.i.2432.pre-phi, align 8, !tbaa !6
  %574 = load i64, i64* %arrayidx9.i.2327, align 16, !tbaa !6
  store i64 %574, i64* %arrayidx7.i.2437.pre-phi, align 16, !tbaa !6
  %575 = load i64, i64* %arrayidx13.i.2331, align 8, !tbaa !6
  store i64 %575, i64* %arrayidx12.i.2442.pre-phi, align 8, !tbaa !6
  %576 = load i64, i64* %arrayidx17.i.2335, align 16, !tbaa !6
  store i64 %576, i64* %arrayidx17.i.2447.pre-phi, align 16, !tbaa !6
  %577 = load i64, i64* %arrayidx21.i.2339, align 8, !tbaa !6
  store i64 %577, i64* %arrayidx22.i.2452.pre-phi, align 8, !tbaa !6
  %578 = load i64, i64* %arrayidx25.i.2343, align 16, !tbaa !6
  store i64 %578, i64* %arrayidx27.i.2457.pre-phi, align 16, !tbaa !6
  %579 = load i64, i64* %arrayidx29.i.2347, align 8, !tbaa !6
  store i64 %579, i64* %arrayidx32.i.2462.pre-phi, align 8, !tbaa !6
  %580 = load i64, i64* %arrayidx33.i.2351, align 16, !tbaa !6
  store i64 %580, i64* %arrayidx37.i.2467.pre-phi, align 16, !tbaa !6
  %mul.i.796 = shl i64 %572, 1
  store i64 %mul.i.796, i64* %arraydecay42, align 16, !tbaa !6
  %mul2.i = shl i64 %573, 1
  store i64 %mul2.i, i64* %arrayidx5.i.2323, align 8, !tbaa !6
  %mul4.i = shl i64 %574, 1
  store i64 %mul4.i, i64* %arrayidx9.i.2327, align 16, !tbaa !6
  %mul6.i.799 = shl i64 %575, 1
  store i64 %mul6.i.799, i64* %arrayidx13.i.2331, align 8, !tbaa !6
  %mul8.i = shl i64 %576, 1
  store i64 %mul8.i, i64* %arrayidx17.i.2335, align 16, !tbaa !6
  %mul10.i = shl i64 %577, 1
  store i64 %mul10.i, i64* %arrayidx21.i.2339, align 8, !tbaa !6
  %mul12.i.803 = shl i64 %578, 1
  store i64 %mul12.i.803, i64* %arrayidx25.i.2343, align 16, !tbaa !6
  %mul14.i = shl i64 %579, 1
  store i64 %mul14.i, i64* %arrayidx29.i.2347, align 8, !tbaa !6
  %mul16.i = shl i64 %580, 1
  store i64 %mul16.i, i64* %arrayidx33.i.2351, align 16, !tbaa !6
  %sub.i.775 = sub i64 4611686018427387872, %mul.i.796
  %conv.i.776 = zext i64 %sub.i.775 to i128
  %add.i.777 = add i128 %conv.i.776, %add.i.824
  store i128 %add.i.777, i128* %arraydecay, align 16, !tbaa !2
  %sub3.i.779 = sub i64 4611686018427387888, %mul2.i
  %conv4.i = zext i64 %sub3.i.779 to i128
  %add6.i.781 = add i128 %conv4.i, %add6.i.829
  store i128 %add6.i.781, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %sub8.i = sub i64 4611686018427387888, %mul4.i
  %conv9.i = zext i64 %sub8.i to i128
  %add11.i = add i128 %conv9.i, %add11.i.834
  store i128 %add11.i, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %sub13.i = sub i64 4611686018427387888, %mul6.i.799
  %conv14.i = zext i64 %sub13.i to i128
  %add16.i = add i128 %conv14.i, %add16.i.839
  store i128 %add16.i, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %sub18.i = sub i64 4611686018427387888, %mul8.i
  %conv19.i.787 = zext i64 %sub18.i to i128
  %add21.i.789 = add i128 %conv19.i.787, %add21.i.844
  store i128 %add21.i.789, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %sub23.i.791 = sub i64 4611686018427387888, %mul10.i
  %conv24.i = zext i64 %sub23.i.791 to i128
  %add26.i = add i128 %conv24.i, %add26.i.849
  store i128 %add26.i, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %sub28.i = sub i64 4611686018427387888, %mul12.i.803
  %conv29.i = zext i64 %sub28.i to i128
  %add31.i = add i128 %conv29.i, %add31.i.854
  store i128 %add31.i, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %sub33.i = sub i64 4611686018427387888, %mul14.i
  %conv34.i = zext i64 %sub33.i to i128
  %add36.i.795 = add i128 %conv34.i, %add36.i.859
  store i128 %add36.i.795, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %sub38.i = sub i64 4611686018427387888, %mul16.i
  %conv39.i = zext i64 %sub38.i to i128
  %add41.i = add i128 %conv39.i, %add41.i.864
  store i128 %add41.i, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv.i.664 = trunc i128 %add.i.777 to i64
  %and.i.665 = and i64 %conv.i.664, 288230376151711743
  %conv3.i.667 = trunc i128 %add6.i.781 to i64
  %and4.i.668 = and i64 %conv3.i.667, 288230376151711743
  %conv7.i.671 = trunc i128 %add11.i to i64
  %and8.i.672 = and i64 %conv7.i.671, 288230376151711743
  %conv11.i.675 = trunc i128 %add16.i to i64
  %and12.i.676 = and i64 %conv11.i.675, 288230376151711743
  %conv15.i.679 = trunc i128 %add21.i.789 to i64
  %and16.i.680 = and i64 %conv15.i.679, 288230376151711743
  %conv19.i.683 = trunc i128 %add26.i to i64
  %and20.i.684 = and i64 %conv19.i.683, 288230376151711743
  %conv23.i.687 = trunc i128 %add31.i to i64
  %and24.i.688 = and i64 %conv23.i.687, 288230376151711743
  %conv27.i.691 = trunc i128 %add36.i.795 to i64
  %and28.i.692 = and i64 %conv27.i.691, 288230376151711743
  %conv31.i.695 = trunc i128 %add41.i to i64
  %and32.i.696 = and i64 %conv31.i.695, 288230376151711743
  %shr.i.698 = lshr i64 %conv.i.664, 58
  %add.i.699 = add nuw nsw i64 %and4.i.668, %shr.i.698
  %581 = lshr i128 %add.i.777, 58
  %and40.i.700 = trunc i128 %581 to i64
  %shl.i.701 = and i64 %and40.i.700, 288230376151711680
  %add42.i.702 = add nuw nsw i64 %add.i.699, %shl.i.701
  %shr44.i.703 = lshr i128 %add.i.777, 116
  %shr46.i.704 = trunc i128 %shr44.i.703 to i64
  %shr51.i.706 = lshr i64 %conv3.i.667, 58
  %582 = lshr i128 %add6.i.781, 58
  %and57.i.708 = trunc i128 %582 to i64
  %shl58.i.709 = and i64 %and57.i.708, 288230376151711680
  %add48.i.705 = add nuw nsw i64 %shr51.i.706, %shr46.i.704
  %add53.i.707 = add nuw nsw i64 %add48.i.705, %and8.i.672
  %add60.i.710 = add nuw nsw i64 %add53.i.707, %shl58.i.709
  %shr62.i.711 = lshr i128 %add6.i.781, 116
  %shr64.i.712 = trunc i128 %shr62.i.711 to i64
  %shr69.i.714 = lshr i64 %conv7.i.671, 58
  %583 = lshr i128 %add11.i, 58
  %and75.i.716 = trunc i128 %583 to i64
  %shl76.i.717 = and i64 %and75.i.716, 288230376151711680
  %add66.i.713 = add nuw nsw i64 %shr69.i.714, %shr64.i.712
  %add71.i.715 = add nuw nsw i64 %add66.i.713, %and12.i.676
  %add78.i.718 = add nuw nsw i64 %add71.i.715, %shl76.i.717
  %shr80.i.719 = lshr i128 %add11.i, 116
  %shr82.i.720 = trunc i128 %shr80.i.719 to i64
  %shr87.i.722 = lshr i64 %conv11.i.675, 58
  %584 = lshr i128 %add16.i, 58
  %and93.i.724 = trunc i128 %584 to i64
  %shl94.i.725 = and i64 %and93.i.724, 288230376151711680
  %add84.i.721 = add nuw nsw i64 %shr87.i.722, %shr82.i.720
  %add89.i.723 = add nuw nsw i64 %add84.i.721, %and16.i.680
  %add96.i.726 = add nuw nsw i64 %add89.i.723, %shl94.i.725
  %shr98.i.727 = lshr i128 %add16.i, 116
  %shr100.i.728 = trunc i128 %shr98.i.727 to i64
  %shr105.i.730 = lshr i64 %conv15.i.679, 58
  %585 = lshr i128 %add21.i.789, 58
  %and111.i.732 = trunc i128 %585 to i64
  %shl112.i.733 = and i64 %and111.i.732, 288230376151711680
  %add102.i.729 = add nuw nsw i64 %shr105.i.730, %shr100.i.728
  %add107.i.731 = add nuw nsw i64 %add102.i.729, %and20.i.684
  %add114.i.734 = add nuw nsw i64 %add107.i.731, %shl112.i.733
  %shr116.i.735 = lshr i128 %add21.i.789, 116
  %shr118.i.736 = trunc i128 %shr116.i.735 to i64
  %shr123.i.738 = lshr i64 %conv19.i.683, 58
  %586 = lshr i128 %add26.i, 58
  %and129.i.740 = trunc i128 %586 to i64
  %shl130.i.741 = and i64 %and129.i.740, 288230376151711680
  %add120.i.737 = add nuw nsw i64 %shr123.i.738, %shr118.i.736
  %add125.i.739 = add nuw nsw i64 %add120.i.737, %and24.i.688
  %add132.i.742 = add nuw nsw i64 %add125.i.739, %shl130.i.741
  %shr134.i.743 = lshr i128 %add26.i, 116
  %shr136.i.744 = trunc i128 %shr134.i.743 to i64
  %shr141.i.746 = lshr i64 %conv23.i.687, 58
  %587 = lshr i128 %add31.i, 58
  %and147.i.748 = trunc i128 %587 to i64
  %shl148.i.749 = and i64 %and147.i.748, 288230376151711680
  %add138.i.745 = add nuw nsw i64 %shr141.i.746, %shr136.i.744
  %add143.i.747 = add nuw nsw i64 %add138.i.745, %and28.i.692
  %add150.i.750 = add nuw nsw i64 %add143.i.747, %shl148.i.749
  %shr152.i.751 = lshr i128 %add31.i, 116
  %shr154.i.752 = trunc i128 %shr152.i.751 to i64
  %add156.i.753 = add nuw nsw i64 %shr154.i.752, %and32.i.696
  %shr159.i.754 = lshr i64 %conv27.i.691, 58
  %add161.i.755 = add nuw nsw i64 %add156.i.753, %shr159.i.754
  %588 = lshr i128 %add36.i.795, 58
  %and165.i.756 = trunc i128 %588 to i64
  %shl166.i.757 = and i64 %and165.i.756, 288230376151711680
  %add168.i.758 = add nuw nsw i64 %add161.i.755, %shl166.i.757
  %shr170.i.759 = lshr i128 %add36.i.795, 116
  %shr172.i.760 = trunc i128 %shr170.i.759 to i64
  %shr175.i.762 = lshr i64 %conv31.i.695, 58
  %589 = lshr i128 %add41.i, 58
  %and180.i.764 = trunc i128 %589 to i64
  %shl181.i.765 = and i64 %and180.i.764, 288230376151711680
  %add176.i.763 = or i64 %shl181.i.765, %shr175.i.762
  %add182.i.766 = add nuw nsw i64 %add176.i.763, %shr172.i.760
  %shl187.i.767 = shl nuw nsw i64 %add182.i.766, 1
  %590 = lshr i128 %add41.i, 115
  %.tr.i.768 = trunc i128 %590 to i64
  %shl188.i.769 = and i64 %.tr.i.768, 8190
  %add190.i.770 = add nuw nsw i64 %shl187.i.767, %and.i.665
  %add192.i.771 = add nuw nsw i64 %add42.i.702, %shl188.i.769
  %shr194.i.772 = lshr i64 %add190.i.770, 58
  %add196.i.773 = add nuw nsw i64 %add192.i.771, %shr194.i.772
  %fold2737 = add i64 %shl187.i.767, %conv.i.664
  %and198.i.774 = and i64 %fold2737, 288230376151711743
  %591 = load i64, i64* %arraydecay41.pre-phi, align 16, !tbaa !6
  %sub.i.630 = add i64 %591, 4611686018427387872
  %add.i.631 = sub i64 %sub.i.630, %and198.i.774
  store i64 %add.i.631, i64* %arraydecay41.pre-phi, align 16, !tbaa !6
  %592 = load i64, i64* %arrayidx2.i.2432.pre-phi, align 8, !tbaa !6
  %sub3.i.633 = add i64 %592, 4611686018427387888
  %add5.i.635 = sub i64 %sub3.i.633, %add196.i.773
  store i64 %add5.i.635, i64* %arrayidx2.i.2432.pre-phi, align 8, !tbaa !6
  %sub7.i.637 = sub nsw i64 4611686018427387888, %add60.i.710
  %593 = load i64, i64* %arrayidx7.i.2437.pre-phi, align 16, !tbaa !6
  %add9.i.639 = add i64 %sub7.i.637, %593
  store i64 %add9.i.639, i64* %arrayidx7.i.2437.pre-phi, align 16, !tbaa !6
  %sub11.i.641 = sub nsw i64 4611686018427387888, %add78.i.718
  %594 = load i64, i64* %arrayidx12.i.2442.pre-phi, align 8, !tbaa !6
  %add13.i.643 = add i64 %sub11.i.641, %594
  store i64 %add13.i.643, i64* %arrayidx12.i.2442.pre-phi, align 8, !tbaa !6
  %sub15.i.645 = sub nsw i64 4611686018427387888, %add96.i.726
  %595 = load i64, i64* %arrayidx17.i.2447.pre-phi, align 16, !tbaa !6
  %add17.i.647 = add i64 %sub15.i.645, %595
  store i64 %add17.i.647, i64* %arrayidx17.i.2447.pre-phi, align 16, !tbaa !6
  %sub19.i.649 = sub nsw i64 4611686018427387888, %add114.i.734
  %596 = load i64, i64* %arrayidx22.i.2452.pre-phi, align 8, !tbaa !6
  %add21.i.651 = add i64 %sub19.i.649, %596
  store i64 %add21.i.651, i64* %arrayidx22.i.2452.pre-phi, align 8, !tbaa !6
  %sub23.i.653 = sub nsw i64 4611686018427387888, %add132.i.742
  %597 = load i64, i64* %arrayidx27.i.2457.pre-phi, align 16, !tbaa !6
  %add25.i.655 = add i64 %sub23.i.653, %597
  store i64 %add25.i.655, i64* %arrayidx27.i.2457.pre-phi, align 16, !tbaa !6
  %sub27.i.657 = sub nsw i64 4611686018427387888, %add150.i.750
  %598 = load i64, i64* %arrayidx32.i.2462.pre-phi, align 8, !tbaa !6
  %add29.i.659 = add i64 %sub27.i.657, %598
  store i64 %add29.i.659, i64* %arrayidx32.i.2462.pre-phi, align 8, !tbaa !6
  %sub31.i.661 = sub nsw i64 4611686018427387888, %add168.i.758
  %599 = load i64, i64* %arrayidx37.i.2467.pre-phi, align 16, !tbaa !6
  %add33.i.663 = add i64 %sub31.i.661, %599
  store i64 %add33.i.663, i64* %arrayidx37.i.2467.pre-phi, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay, i64* %arraydecay47.pre-phi, i64* %arraydecay41.pre-phi)
  %arraydecay105 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 0
  call fastcc void @felem_mul(i128* %arraydecay105, i64* %arraydecay58.pre-phi, i64* %arraydecay82)
  %600 = load i128, i128* %arraydecay105, align 16, !tbaa !2
  %mul.i = shl i128 %600, 1
  store i128 %mul.i, i128* %arraydecay105, align 16, !tbaa !2
  %arrayidx2.i.448 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 1
  %601 = load i128, i128* %arrayidx2.i.448, align 16, !tbaa !2
  %mul3.i = shl i128 %601, 1
  store i128 %mul3.i, i128* %arrayidx2.i.448, align 16, !tbaa !2
  %arrayidx5.i.449 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 2
  %602 = load i128, i128* %arrayidx5.i.449, align 16, !tbaa !2
  %mul6.i = shl i128 %602, 1
  store i128 %mul6.i, i128* %arrayidx5.i.449, align 16, !tbaa !2
  %arrayidx8.i.450 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 3
  %603 = load i128, i128* %arrayidx8.i.450, align 16, !tbaa !2
  %mul9.i = shl i128 %603, 1
  store i128 %mul9.i, i128* %arrayidx8.i.450, align 16, !tbaa !2
  %arrayidx11.i.451 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 4
  %604 = load i128, i128* %arrayidx11.i.451, align 16, !tbaa !2
  %mul12.i = shl i128 %604, 1
  store i128 %mul12.i, i128* %arrayidx11.i.451, align 16, !tbaa !2
  %arrayidx14.i.452 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 5
  %605 = load i128, i128* %arrayidx14.i.452, align 16, !tbaa !2
  %mul15.i = shl i128 %605, 1
  store i128 %mul15.i, i128* %arrayidx14.i.452, align 16, !tbaa !2
  %arrayidx17.i.453 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 6
  %606 = load i128, i128* %arrayidx17.i.453, align 16, !tbaa !2
  %mul18.i = shl i128 %606, 1
  store i128 %mul18.i, i128* %arrayidx17.i.453, align 16, !tbaa !2
  %arrayidx20.i.454 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 7
  %607 = load i128, i128* %arrayidx20.i.454, align 16, !tbaa !2
  %mul21.i = shl i128 %607, 1
  store i128 %mul21.i, i128* %arrayidx20.i.454, align 16, !tbaa !2
  %arrayidx23.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 8
  %608 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %mul24.i = shl i128 %608, 1
  store i128 %mul24.i, i128* %arrayidx23.i, align 16, !tbaa !2
  %sub.i = sub i128 170141183460469230551095682998472802304, %mul.i
  %609 = load i128, i128* %arraydecay, align 16, !tbaa !2
  %add.i.435 = add i128 %sub.i, %609
  store i128 %add.i.435, i128* %arraydecay, align 16, !tbaa !2
  %sub3.i = sub i128 170141183460469231141391493357178454016, %mul3.i
  %610 = load i128, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %add5.i = add i128 %sub3.i, %610
  store i128 %add5.i, i128* %arrayidx2.i.521, align 16, !tbaa !2
  %sub7.i = sub i128 170141183460469231141391493357178454016, %mul6.i
  %611 = load i128, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %add9.i = add i128 %sub7.i, %611
  store i128 %add9.i, i128* %arrayidx6.i.525, align 16, !tbaa !2
  %sub11.i = sub i128 170141183460469231141391493357178454016, %mul9.i
  %612 = load i128, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %add13.i = add i128 %sub11.i, %612
  store i128 %add13.i, i128* %arrayidx10.i.529, align 16, !tbaa !2
  %sub15.i = sub i128 170141183460469231141391493357178454016, %mul12.i
  %613 = load i128, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %add17.i = add i128 %sub15.i, %613
  store i128 %add17.i, i128* %arrayidx14.i.533, align 16, !tbaa !2
  %sub19.i = sub i128 170141183460469231141391493357178454016, %mul15.i
  %614 = load i128, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %add21.i = add i128 %sub19.i, %614
  store i128 %add21.i, i128* %arrayidx18.i.537, align 16, !tbaa !2
  %sub23.i = sub i128 170141183460469231141391493357178454016, %mul18.i
  %615 = load i128, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %add25.i = add i128 %sub23.i, %615
  store i128 %add25.i, i128* %arrayidx22.i.541, align 16, !tbaa !2
  %sub27.i = sub i128 170141183460469231141391493357178454016, %mul21.i
  %616 = load i128, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %add29.i = add i128 %sub27.i, %616
  store i128 %add29.i, i128* %arrayidx26.i.545, align 16, !tbaa !2
  %sub31.i = sub i128 170141183460469231141391493357178454016, %mul24.i
  %617 = load i128, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %add33.i = add i128 %sub31.i, %617
  store i128 %add33.i, i128* %arrayidx30.i.549, align 16, !tbaa !2
  %conv.i = trunc i128 %add.i.435 to i64
  %and.i.418 = and i64 %conv.i, 288230376151711743
  %conv3.i = trunc i128 %add5.i to i64
  %and4.i = and i64 %conv3.i, 288230376151711743
  %conv7.i = trunc i128 %add9.i to i64
  %and8.i.422 = and i64 %conv7.i, 288230376151711743
  %conv11.i = trunc i128 %add13.i to i64
  %and12.i = and i64 %conv11.i, 288230376151711743
  %conv15.i = trunc i128 %add17.i to i64
  %and16.i = and i64 %conv15.i, 288230376151711743
  %conv19.i = trunc i128 %add21.i to i64
  %and20.i.428 = and i64 %conv19.i, 288230376151711743
  %conv23.i = trunc i128 %add25.i to i64
  %and24.i = and i64 %conv23.i, 288230376151711743
  %conv27.i = trunc i128 %add29.i to i64
  %and28.i = and i64 %conv27.i, 288230376151711743
  %conv31.i = trunc i128 %add33.i to i64
  %and32.i.429 = and i64 %conv31.i, 288230376151711743
  %shr.i.430 = lshr i64 %conv.i, 58
  %add.i.431 = add nuw nsw i64 %and4.i, %shr.i.430
  %618 = lshr i128 %add.i.435, 58
  %and40.i = trunc i128 %618 to i64
  %shl.i = and i64 %and40.i, 288230376151711680
  %add42.i.432 = add nuw nsw i64 %add.i.431, %shl.i
  %shr44.i = lshr i128 %add.i.435, 116
  %shr46.i.433 = trunc i128 %shr44.i to i64
  %shr51.i = lshr i64 %conv3.i, 58
  %619 = lshr i128 %add5.i, 58
  %and57.i = trunc i128 %619 to i64
  %shl58.i = and i64 %and57.i, 288230376151711680
  %add48.i.434 = add nuw nsw i64 %shr51.i, %shr46.i.433
  %add53.i = add nuw nsw i64 %add48.i.434, %and8.i.422
  %add60.i = add nuw nsw i64 %add53.i, %shl58.i
  %shr62.i = lshr i128 %add5.i, 116
  %shr64.i = trunc i128 %shr62.i to i64
  %shr69.i = lshr i64 %conv7.i, 58
  %620 = lshr i128 %add9.i, 58
  %and75.i = trunc i128 %620 to i64
  %shl76.i = and i64 %and75.i, 288230376151711680
  %add66.i = add nuw nsw i64 %shr69.i, %shr64.i
  %add71.i = add nuw nsw i64 %add66.i, %and12.i
  %add78.i = add nuw nsw i64 %add71.i, %shl76.i
  %shr80.i = lshr i128 %add9.i, 116
  %shr82.i = trunc i128 %shr80.i to i64
  %shr87.i = lshr i64 %conv11.i, 58
  %621 = lshr i128 %add13.i, 58
  %and93.i = trunc i128 %621 to i64
  %shl94.i = and i64 %and93.i, 288230376151711680
  %add84.i = add nuw nsw i64 %shr87.i, %shr82.i
  %add89.i = add nuw nsw i64 %add84.i, %and16.i
  %add96.i = add nuw nsw i64 %add89.i, %shl94.i
  %shr98.i = lshr i128 %add13.i, 116
  %shr100.i = trunc i128 %shr98.i to i64
  %shr105.i = lshr i64 %conv15.i, 58
  %622 = lshr i128 %add17.i, 58
  %and111.i = trunc i128 %622 to i64
  %shl112.i = and i64 %and111.i, 288230376151711680
  %add102.i = add nuw nsw i64 %shr105.i, %shr100.i
  %add107.i = add nuw nsw i64 %add102.i, %and20.i.428
  %add114.i = add nuw nsw i64 %add107.i, %shl112.i
  %shr116.i = lshr i128 %add17.i, 116
  %shr118.i = trunc i128 %shr116.i to i64
  %shr123.i = lshr i64 %conv19.i, 58
  %623 = lshr i128 %add21.i, 58
  %and129.i = trunc i128 %623 to i64
  %shl130.i = and i64 %and129.i, 288230376151711680
  %add120.i = add nuw nsw i64 %shr123.i, %shr118.i
  %add125.i = add nuw nsw i64 %add120.i, %and24.i
  %add132.i = add nuw nsw i64 %add125.i, %shl130.i
  %shr134.i = lshr i128 %add21.i, 116
  %shr136.i = trunc i128 %shr134.i to i64
  %shr141.i = lshr i64 %conv23.i, 58
  %624 = lshr i128 %add25.i, 58
  %and147.i = trunc i128 %624 to i64
  %shl148.i = and i64 %and147.i, 288230376151711680
  %add138.i = add nuw nsw i64 %shr141.i, %shr136.i
  %add143.i = add nuw nsw i64 %add138.i, %and28.i
  %add150.i = add nuw nsw i64 %add143.i, %shl148.i
  %shr152.i = lshr i128 %add25.i, 116
  %shr154.i = trunc i128 %shr152.i to i64
  %add156.i = add nuw nsw i64 %shr154.i, %and32.i.429
  %shr159.i = lshr i64 %conv27.i, 58
  %add161.i = add nuw nsw i64 %add156.i, %shr159.i
  %625 = lshr i128 %add29.i, 58
  %and165.i = trunc i128 %625 to i64
  %shl166.i = and i64 %and165.i, 288230376151711680
  %add168.i = add nuw nsw i64 %add161.i, %shl166.i
  %shr170.i = lshr i128 %add29.i, 116
  %shr172.i = trunc i128 %shr170.i to i64
  %shr175.i = lshr i64 %conv31.i, 58
  %626 = lshr i128 %add33.i, 58
  %and180.i = trunc i128 %626 to i64
  %shl181.i = and i64 %and180.i, 288230376151711680
  %add176.i = or i64 %shl181.i, %shr175.i
  %add182.i = add nuw nsw i64 %add176.i, %shr172.i
  %shl187.i = shl nuw nsw i64 %add182.i, 1
  %627 = lshr i128 %add33.i, 115
  %.tr.i = trunc i128 %627 to i64
  %shl188.i = and i64 %.tr.i, 8190
  %add190.i = add nuw nsw i64 %shl187.i, %and.i.418
  %add192.i = add nuw nsw i64 %add42.i.432, %shl188.i
  %shr194.i = lshr i64 %add190.i, 58
  %add196.i = add nuw nsw i64 %add192.i, %shr194.i
  %fold2738 = add i64 %shl187.i, %conv.i
  %and198.i = and i64 %fold2738, 288230376151711743
  %628 = bitcast i64* %x2 to <2 x i64>*
  %629 = load <2 x i64>, <2 x i64>* %628, align 8, !tbaa !6
  %630 = insertelement <2 x i64> undef, i64 %and198.i.774, i32 0
  %631 = insertelement <2 x i64> %630, i64 %add196.i.773, i32 1
  %632 = xor <2 x i64> %629, %631
  %633 = shufflevector <2 x i64> %92, <2 x i64> undef, <2 x i32> <i32 1, i32 1>
  %634 = and <2 x i64> %633, %632
  %635 = xor <2 x i64> %634, %631
  %arrayidx.2.i.383 = getelementptr inbounds i64, i64* %x2, i64 2
  %636 = load i64, i64* %arrayidx.2.i.383, align 8, !tbaa !6
  %xor.2.i.385 = xor i64 %636, %add60.i.710
  %and.2.i.386 = and i64 %xor.2.i.385, %477
  %xor5.2.i.387 = xor i64 %and.2.i.386, %add60.i.710
  %arrayidx.3.i.388 = getelementptr inbounds i64, i64* %x2, i64 3
  %637 = load i64, i64* %arrayidx.3.i.388, align 8, !tbaa !6
  %xor.3.i.390 = xor i64 %637, %add78.i.718
  %and.3.i.391 = and i64 %xor.3.i.390, %477
  %xor5.3.i.392 = xor i64 %and.3.i.391, %add78.i.718
  %arrayidx.4.i.393 = getelementptr inbounds i64, i64* %x2, i64 4
  %638 = load i64, i64* %arrayidx.4.i.393, align 8, !tbaa !6
  %xor.4.i.395 = xor i64 %638, %add96.i.726
  %and.4.i.396 = and i64 %xor.4.i.395, %477
  %xor5.4.i.397 = xor i64 %and.4.i.396, %add96.i.726
  %arrayidx.5.i.398 = getelementptr inbounds i64, i64* %x2, i64 5
  %639 = load i64, i64* %arrayidx.5.i.398, align 8, !tbaa !6
  %xor.5.i.400 = xor i64 %639, %add114.i.734
  %and.5.i.401 = and i64 %xor.5.i.400, %477
  %xor5.5.i.402 = xor i64 %and.5.i.401, %add114.i.734
  %arrayidx.6.i.403 = getelementptr inbounds i64, i64* %x2, i64 6
  %640 = load i64, i64* %arrayidx.6.i.403, align 8, !tbaa !6
  %xor.6.i.405 = xor i64 %640, %add132.i.742
  %and.6.i.406 = and i64 %xor.6.i.405, %477
  %xor5.6.i.407 = xor i64 %and.6.i.406, %add132.i.742
  %arrayidx.7.i.408 = getelementptr inbounds i64, i64* %x2, i64 7
  %641 = load i64, i64* %arrayidx.7.i.408, align 8, !tbaa !6
  %xor.7.i.410 = xor i64 %641, %add150.i.750
  %and.7.i.411 = and i64 %xor.7.i.410, %477
  %xor5.7.i.412 = xor i64 %and.7.i.411, %add150.i.750
  %arrayidx.8.i.413 = getelementptr inbounds i64, i64* %x2, i64 8
  %642 = load i64, i64* %arrayidx.8.i.413, align 8, !tbaa !6
  %xor.8.i.415 = xor i64 %642, %add168.i.758
  %and.8.i.416 = and i64 %xor.8.i.415, %477
  %xor5.8.i.417 = xor i64 %and.8.i.416, %add168.i.758
  %643 = bitcast i64* %x1 to <2 x i64>*
  %644 = load <2 x i64>, <2 x i64>* %643, align 8, !tbaa !6
  %645 = xor <2 x i64> %644, %635
  %646 = shufflevector <2 x i64> %92, <2 x i64> undef, <2 x i32> zeroinitializer
  %647 = and <2 x i64> %646, %645
  %648 = xor <2 x i64> %647, %635
  %arrayidx.2.i.340 = getelementptr inbounds i64, i64* %x1, i64 2
  %649 = load i64, i64* %arrayidx.2.i.340, align 8, !tbaa !6
  %xor.2.i.342 = xor i64 %649, %xor5.2.i.387
  %and.2.i.343 = and i64 %xor.2.i.342, %476
  %xor5.2.i.344 = xor i64 %and.2.i.343, %xor5.2.i.387
  %arrayidx.3.i.345 = getelementptr inbounds i64, i64* %x1, i64 3
  %650 = load i64, i64* %arrayidx.3.i.345, align 8, !tbaa !6
  %xor.3.i.347 = xor i64 %650, %xor5.3.i.392
  %and.3.i.348 = and i64 %xor.3.i.347, %476
  %xor5.3.i.349 = xor i64 %and.3.i.348, %xor5.3.i.392
  %arrayidx.4.i.350 = getelementptr inbounds i64, i64* %x1, i64 4
  %651 = load i64, i64* %arrayidx.4.i.350, align 8, !tbaa !6
  %xor.4.i.352 = xor i64 %651, %xor5.4.i.397
  %and.4.i.353 = and i64 %xor.4.i.352, %476
  %xor5.4.i.354 = xor i64 %and.4.i.353, %xor5.4.i.397
  %arrayidx.5.i.355 = getelementptr inbounds i64, i64* %x1, i64 5
  %652 = load i64, i64* %arrayidx.5.i.355, align 8, !tbaa !6
  %xor.5.i.357 = xor i64 %652, %xor5.5.i.402
  %and.5.i.358 = and i64 %xor.5.i.357, %476
  %xor5.5.i.359 = xor i64 %and.5.i.358, %xor5.5.i.402
  %arrayidx.6.i.360 = getelementptr inbounds i64, i64* %x1, i64 6
  %653 = load i64, i64* %arrayidx.6.i.360, align 8, !tbaa !6
  %xor.6.i.362 = xor i64 %653, %xor5.6.i.407
  %and.6.i.363 = and i64 %xor.6.i.362, %476
  %xor5.6.i.364 = xor i64 %and.6.i.363, %xor5.6.i.407
  %arrayidx.7.i.365 = getelementptr inbounds i64, i64* %x1, i64 7
  %654 = load i64, i64* %arrayidx.7.i.365, align 8, !tbaa !6
  %xor.7.i.367 = xor i64 %654, %xor5.7.i.412
  %and.7.i.368 = and i64 %xor.7.i.367, %476
  %xor5.7.i.369 = xor i64 %and.7.i.368, %xor5.7.i.412
  %arrayidx.8.i.370 = getelementptr inbounds i64, i64* %x1, i64 8
  %655 = load i64, i64* %arrayidx.8.i.370, align 8, !tbaa !6
  %xor.8.i.372 = xor i64 %655, %xor5.8.i.417
  %and.8.i.373 = and i64 %xor.8.i.372, %476
  %xor5.8.i.374 = xor i64 %and.8.i.373, %xor5.8.i.417
  %656 = bitcast i64* %y2 to <2 x i64>*
  %657 = load <2 x i64>, <2 x i64>* %656, align 8, !tbaa !6
  %658 = insertelement <2 x i64> undef, i64 %and198.i, i32 0
  %659 = insertelement <2 x i64> %658, i64 %add196.i, i32 1
  %660 = xor <2 x i64> %657, %659
  %661 = and <2 x i64> %633, %660
  %662 = xor <2 x i64> %661, %659
  %arrayidx.2.i.297 = getelementptr inbounds i64, i64* %y2, i64 2
  %663 = load i64, i64* %arrayidx.2.i.297, align 8, !tbaa !6
  %xor.2.i.299 = xor i64 %663, %add60.i
  %and.2.i.300 = and i64 %xor.2.i.299, %477
  %xor5.2.i.301 = xor i64 %and.2.i.300, %add60.i
  %arrayidx.3.i.302 = getelementptr inbounds i64, i64* %y2, i64 3
  %664 = load i64, i64* %arrayidx.3.i.302, align 8, !tbaa !6
  %xor.3.i.304 = xor i64 %664, %add78.i
  %and.3.i.305 = and i64 %xor.3.i.304, %477
  %xor5.3.i.306 = xor i64 %and.3.i.305, %add78.i
  %arrayidx.4.i.307 = getelementptr inbounds i64, i64* %y2, i64 4
  %665 = load i64, i64* %arrayidx.4.i.307, align 8, !tbaa !6
  %xor.4.i.309 = xor i64 %665, %add96.i
  %and.4.i.310 = and i64 %xor.4.i.309, %477
  %xor5.4.i.311 = xor i64 %and.4.i.310, %add96.i
  %arrayidx.5.i.312 = getelementptr inbounds i64, i64* %y2, i64 5
  %666 = load i64, i64* %arrayidx.5.i.312, align 8, !tbaa !6
  %xor.5.i.314 = xor i64 %666, %add114.i
  %and.5.i.315 = and i64 %xor.5.i.314, %477
  %xor5.5.i.316 = xor i64 %and.5.i.315, %add114.i
  %arrayidx.6.i.317 = getelementptr inbounds i64, i64* %y2, i64 6
  %667 = load i64, i64* %arrayidx.6.i.317, align 8, !tbaa !6
  %xor.6.i.319 = xor i64 %667, %add132.i
  %and.6.i.320 = and i64 %xor.6.i.319, %477
  %xor5.6.i.321 = xor i64 %and.6.i.320, %add132.i
  %arrayidx.7.i.322 = getelementptr inbounds i64, i64* %y2, i64 7
  %668 = load i64, i64* %arrayidx.7.i.322, align 8, !tbaa !6
  %xor.7.i.324 = xor i64 %668, %add150.i
  %and.7.i.325 = and i64 %xor.7.i.324, %477
  %xor5.7.i.326 = xor i64 %and.7.i.325, %add150.i
  %arrayidx.8.i.327 = getelementptr inbounds i64, i64* %y2, i64 8
  %669 = load i64, i64* %arrayidx.8.i.327, align 8, !tbaa !6
  %xor.8.i.329 = xor i64 %669, %add168.i
  %and.8.i.330 = and i64 %xor.8.i.329, %477
  %xor5.8.i.331 = xor i64 %and.8.i.330, %add168.i
  %670 = bitcast i64* %y1 to <2 x i64>*
  %671 = load <2 x i64>, <2 x i64>* %670, align 8, !tbaa !6
  %672 = xor <2 x i64> %671, %662
  %673 = and <2 x i64> %646, %672
  %674 = xor <2 x i64> %673, %662
  %arrayidx.2.i.254 = getelementptr inbounds i64, i64* %y1, i64 2
  %675 = load i64, i64* %arrayidx.2.i.254, align 8, !tbaa !6
  %xor.2.i.256 = xor i64 %675, %xor5.2.i.301
  %and.2.i.257 = and i64 %xor.2.i.256, %476
  %xor5.2.i.258 = xor i64 %and.2.i.257, %xor5.2.i.301
  %arrayidx.3.i.259 = getelementptr inbounds i64, i64* %y1, i64 3
  %676 = load i64, i64* %arrayidx.3.i.259, align 8, !tbaa !6
  %xor.3.i.261 = xor i64 %676, %xor5.3.i.306
  %and.3.i.262 = and i64 %xor.3.i.261, %476
  %xor5.3.i.263 = xor i64 %and.3.i.262, %xor5.3.i.306
  %arrayidx.4.i.264 = getelementptr inbounds i64, i64* %y1, i64 4
  %677 = load i64, i64* %arrayidx.4.i.264, align 8, !tbaa !6
  %xor.4.i.266 = xor i64 %677, %xor5.4.i.311
  %and.4.i.267 = and i64 %xor.4.i.266, %476
  %xor5.4.i.268 = xor i64 %and.4.i.267, %xor5.4.i.311
  %arrayidx.5.i.269 = getelementptr inbounds i64, i64* %y1, i64 5
  %678 = load i64, i64* %arrayidx.5.i.269, align 8, !tbaa !6
  %xor.5.i.271 = xor i64 %678, %xor5.5.i.316
  %and.5.i.272 = and i64 %xor.5.i.271, %476
  %xor5.5.i.273 = xor i64 %and.5.i.272, %xor5.5.i.316
  %arrayidx.6.i.274 = getelementptr inbounds i64, i64* %y1, i64 6
  %679 = load i64, i64* %arrayidx.6.i.274, align 8, !tbaa !6
  %xor.6.i.276 = xor i64 %679, %xor5.6.i.321
  %and.6.i.277 = and i64 %xor.6.i.276, %476
  %xor5.6.i.278 = xor i64 %and.6.i.277, %xor5.6.i.321
  %arrayidx.7.i.279 = getelementptr inbounds i64, i64* %y1, i64 7
  %680 = load i64, i64* %arrayidx.7.i.279, align 8, !tbaa !6
  %xor.7.i.281 = xor i64 %680, %xor5.7.i.326
  %and.7.i.282 = and i64 %xor.7.i.281, %476
  %xor5.7.i.283 = xor i64 %and.7.i.282, %xor5.7.i.326
  %arrayidx.8.i.284 = getelementptr inbounds i64, i64* %y1, i64 8
  %681 = load i64, i64* %arrayidx.8.i.284, align 8, !tbaa !6
  %xor.8.i.286 = xor i64 %681, %xor5.8.i.331
  %and.8.i.287 = and i64 %xor.8.i.286, %476
  %xor5.8.i.288 = xor i64 %and.8.i.287, %xor5.8.i.331
  %682 = bitcast i64* %z2 to <2 x i64>*
  %683 = load <2 x i64>, <2 x i64>* %682, align 8, !tbaa !6
  %684 = insertelement <2 x i64> undef, i64 %and198.i.2142, i32 0
  %685 = insertelement <2 x i64> %684, i64 %add196.i.2141, i32 1
  %686 = xor <2 x i64> %683, %685
  %687 = and <2 x i64> %633, %686
  %688 = xor <2 x i64> %687, %685
  %689 = load i64, i64* %arrayidx4.i.i.456, align 8, !tbaa !6
  %xor.2.i.213 = xor i64 %689, %add60.i.2078
  %and.2.i.214 = and i64 %xor.2.i.213, %477
  %xor5.2.i.215 = xor i64 %and.2.i.214, %add60.i.2078
  %690 = load i64, i64* %arrayidx6.i.i.457, align 8, !tbaa !6
  %xor.3.i.218 = xor i64 %690, %add78.i.2086
  %and.3.i.219 = and i64 %xor.3.i.218, %477
  %xor5.3.i.220 = xor i64 %and.3.i.219, %add78.i.2086
  %691 = load i64, i64* %arrayidx8.i.i.458, align 8, !tbaa !6
  %xor.4.i.223 = xor i64 %691, %add96.i.2094
  %and.4.i.224 = and i64 %xor.4.i.223, %477
  %xor5.4.i.225 = xor i64 %and.4.i.224, %add96.i.2094
  %692 = load i64, i64* %arrayidx10.i.i.459, align 8, !tbaa !6
  %xor.5.i.228 = xor i64 %692, %add114.i.2102
  %and.5.i.229 = and i64 %xor.5.i.228, %477
  %xor5.5.i.230 = xor i64 %and.5.i.229, %add114.i.2102
  %693 = load i64, i64* %arrayidx12.i.i.460, align 8, !tbaa !6
  %xor.6.i.233 = xor i64 %693, %add132.i.2110
  %and.6.i.234 = and i64 %xor.6.i.233, %477
  %xor5.6.i.235 = xor i64 %and.6.i.234, %add132.i.2110
  %694 = load i64, i64* %arrayidx14.i.i.461, align 8, !tbaa !6
  %xor.7.i.238 = xor i64 %694, %add150.i.2118
  %and.7.i.239 = and i64 %xor.7.i.238, %477
  %xor5.7.i.240 = xor i64 %and.7.i.239, %add150.i.2118
  %695 = load i64, i64* %arrayidx16.i.i.462, align 8, !tbaa !6
  %xor.8.i.243 = xor i64 %695, %add168.i.2126
  %and.8.i.244 = and i64 %xor.8.i.243, %477
  %xor5.8.i.245 = xor i64 %and.8.i.244, %add168.i.2126
  %696 = bitcast i64* %z1 to <2 x i64>*
  %697 = load <2 x i64>, <2 x i64>* %696, align 8, !tbaa !6
  %698 = xor <2 x i64> %697, %688
  %699 = and <2 x i64> %646, %698
  %700 = xor <2 x i64> %699, %688
  %701 = load i64, i64* %arrayidx4.i.i, align 8, !tbaa !6
  %xor.2.i = xor i64 %701, %xor5.2.i.215
  %and.2.i = and i64 %xor.2.i, %476
  %xor5.2.i = xor i64 %and.2.i, %xor5.2.i.215
  %702 = load i64, i64* %arrayidx6.i.i, align 8, !tbaa !6
  %xor.3.i = xor i64 %702, %xor5.3.i.220
  %and.3.i = and i64 %xor.3.i, %476
  %xor5.3.i = xor i64 %and.3.i, %xor5.3.i.220
  %703 = load i64, i64* %arrayidx8.i.i, align 8, !tbaa !6
  %xor.4.i = xor i64 %703, %xor5.4.i.225
  %and.4.i = and i64 %xor.4.i, %476
  %xor5.4.i = xor i64 %and.4.i, %xor5.4.i.225
  %704 = load i64, i64* %arrayidx10.i.i, align 8, !tbaa !6
  %xor.5.i = xor i64 %704, %xor5.5.i.230
  %and.5.i = and i64 %xor.5.i, %476
  %xor5.5.i = xor i64 %and.5.i, %xor5.5.i.230
  %705 = load i64, i64* %arrayidx12.i.i, align 8, !tbaa !6
  %xor.6.i = xor i64 %705, %xor5.6.i.235
  %and.6.i = and i64 %xor.6.i, %476
  %xor5.6.i = xor i64 %and.6.i, %xor5.6.i.235
  %706 = load i64, i64* %arrayidx14.i.i, align 8, !tbaa !6
  %xor.7.i = xor i64 %706, %xor5.7.i.240
  %and.7.i = and i64 %xor.7.i, %476
  %xor5.7.i = xor i64 %and.7.i, %xor5.7.i.240
  %707 = load i64, i64* %arrayidx16.i.i, align 8, !tbaa !6
  %xor.8.i = xor i64 %707, %xor5.8.i.245
  %and.8.i = and i64 %xor.8.i, %476
  %xor5.8.i = xor i64 %and.8.i, %xor5.8.i.245
  %708 = bitcast i64* %x3 to <2 x i64>*
  store <2 x i64> %648, <2 x i64>* %708, align 8, !tbaa !6
  %arrayidx5.i.188 = getelementptr inbounds i64, i64* %x3, i64 2
  store i64 %xor5.2.i.344, i64* %arrayidx5.i.188, align 8, !tbaa !6
  %arrayidx7.i.190 = getelementptr inbounds i64, i64* %x3, i64 3
  store i64 %xor5.3.i.349, i64* %arrayidx7.i.190, align 8, !tbaa !6
  %arrayidx9.i.192 = getelementptr inbounds i64, i64* %x3, i64 4
  store i64 %xor5.4.i.354, i64* %arrayidx9.i.192, align 8, !tbaa !6
  %arrayidx11.i.194 = getelementptr inbounds i64, i64* %x3, i64 5
  store i64 %xor5.5.i.359, i64* %arrayidx11.i.194, align 8, !tbaa !6
  %arrayidx13.i.196 = getelementptr inbounds i64, i64* %x3, i64 6
  store i64 %xor5.6.i.364, i64* %arrayidx13.i.196, align 8, !tbaa !6
  %arrayidx15.i.198 = getelementptr inbounds i64, i64* %x3, i64 7
  store i64 %xor5.7.i.369, i64* %arrayidx15.i.198, align 8, !tbaa !6
  %arrayidx17.i.200 = getelementptr inbounds i64, i64* %x3, i64 8
  store i64 %xor5.8.i.374, i64* %arrayidx17.i.200, align 8, !tbaa !6
  %709 = bitcast i64* %y3 to <2 x i64>*
  store <2 x i64> %674, <2 x i64>* %709, align 8, !tbaa !6
  %arrayidx5.i.172 = getelementptr inbounds i64, i64* %y3, i64 2
  store i64 %xor5.2.i.258, i64* %arrayidx5.i.172, align 8, !tbaa !6
  %arrayidx7.i.174 = getelementptr inbounds i64, i64* %y3, i64 3
  store i64 %xor5.3.i.263, i64* %arrayidx7.i.174, align 8, !tbaa !6
  %arrayidx9.i.176 = getelementptr inbounds i64, i64* %y3, i64 4
  store i64 %xor5.4.i.268, i64* %arrayidx9.i.176, align 8, !tbaa !6
  %arrayidx11.i.178 = getelementptr inbounds i64, i64* %y3, i64 5
  store i64 %xor5.5.i.273, i64* %arrayidx11.i.178, align 8, !tbaa !6
  %arrayidx13.i.180 = getelementptr inbounds i64, i64* %y3, i64 6
  store i64 %xor5.6.i.278, i64* %arrayidx13.i.180, align 8, !tbaa !6
  %arrayidx15.i.182 = getelementptr inbounds i64, i64* %y3, i64 7
  store i64 %xor5.7.i.283, i64* %arrayidx15.i.182, align 8, !tbaa !6
  %arrayidx17.i.184 = getelementptr inbounds i64, i64* %y3, i64 8
  store i64 %xor5.8.i.288, i64* %arrayidx17.i.184, align 8, !tbaa !6
  %710 = bitcast i64* %z3 to <2 x i64>*
  store <2 x i64> %700, <2 x i64>* %710, align 8, !tbaa !6
  %arrayidx5.i = getelementptr inbounds i64, i64* %z3, i64 2
  store i64 %xor5.2.i, i64* %arrayidx5.i, align 8, !tbaa !6
  %arrayidx7.i = getelementptr inbounds i64, i64* %z3, i64 3
  store i64 %xor5.3.i, i64* %arrayidx7.i, align 8, !tbaa !6
  %arrayidx9.i = getelementptr inbounds i64, i64* %z3, i64 4
  store i64 %xor5.4.i, i64* %arrayidx9.i, align 8, !tbaa !6
  %arrayidx11.i = getelementptr inbounds i64, i64* %z3, i64 5
  store i64 %xor5.5.i, i64* %arrayidx11.i, align 8, !tbaa !6
  %arrayidx13.i = getelementptr inbounds i64, i64* %z3, i64 6
  store i64 %xor5.6.i, i64* %arrayidx13.i, align 8, !tbaa !6
  %arrayidx15.i = getelementptr inbounds i64, i64* %z3, i64 7
  store i64 %xor5.7.i, i64* %arrayidx15.i, align 8, !tbaa !6
  %arrayidx17.i = getelementptr inbounds i64, i64* %z3, i64 8
  store i64 %xor5.8.i, i64* %arrayidx17.i, align 8, !tbaa !6
  br label %cleanup

cleanup:                                          ; preds = %if.end.71, %if.then.70
  call void @llvm.lifetime.end(i64 144, i8* %7) #1
  call void @llvm.lifetime.end(i64 144, i8* %6) #1
  call void @llvm.lifetime.end(i64 72, i8* %5) #1
  call void @llvm.lifetime.end(i64 72, i8* %4) #1
  call void @llvm.lifetime.end(i64 72, i8* %3) #1
  call void @llvm.lifetime.end(i64 72, i8* %2) #1
  call void @llvm.lifetime.end(i64 72, i8* %1) #1
  call void @llvm.lifetime.end(i64 72, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @point_double(i64* nocapture %x_out, i64* nocapture %y_out, i64* nocapture %z_out, i64* nocapture readonly %x_in, i64* %y_in, i64* %z_in) #0 {
entry:
  %tmp = alloca [9 x i128], align 16
  %tmp2 = alloca [9 x i128], align 16
  %gamma = alloca [9 x i64], align 16
  %beta = alloca [9 x i64], align 16
  %alpha = alloca [9 x i64], align 16
  %ftmp = alloca [9 x i64], align 16
  %ftmp2 = alloca [9 x i64], align 16
  %0 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast [9 x i128]* %tmp2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* %1) #1
  %2 = bitcast [9 x i64]* %gamma to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #1
  %3 = bitcast [9 x i64]* %beta to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast [9 x i64]* %alpha to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast [9 x i64]* %ftmp to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #1
  %6 = bitcast [9 x i64]* %ftmp2 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #1
  %arraydecay = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 0
  %7 = load i64, i64* %x_in, align 8, !tbaa !6
  store i64 %7, i64* %arraydecay, align 16, !tbaa !6
  %arrayidx2.i = getelementptr inbounds i64, i64* %x_in, i64 1
  %8 = load i64, i64* %arrayidx2.i, align 8, !tbaa !6
  %arrayidx3.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 1
  store i64 %8, i64* %arrayidx3.i, align 8, !tbaa !6
  %arrayidx4.i = getelementptr inbounds i64, i64* %x_in, i64 2
  %9 = load i64, i64* %arrayidx4.i, align 8, !tbaa !6
  %arrayidx5.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 2
  store i64 %9, i64* %arrayidx5.i, align 16, !tbaa !6
  %arrayidx6.i = getelementptr inbounds i64, i64* %x_in, i64 3
  %10 = load i64, i64* %arrayidx6.i, align 8, !tbaa !6
  %arrayidx7.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 3
  store i64 %10, i64* %arrayidx7.i, align 8, !tbaa !6
  %arrayidx8.i = getelementptr inbounds i64, i64* %x_in, i64 4
  %11 = load i64, i64* %arrayidx8.i, align 8, !tbaa !6
  %arrayidx9.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 4
  store i64 %11, i64* %arrayidx9.i, align 16, !tbaa !6
  %arrayidx10.i = getelementptr inbounds i64, i64* %x_in, i64 5
  %12 = load i64, i64* %arrayidx10.i, align 8, !tbaa !6
  %arrayidx11.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 5
  store i64 %12, i64* %arrayidx11.i, align 8, !tbaa !6
  %arrayidx12.i = getelementptr inbounds i64, i64* %x_in, i64 6
  %13 = load i64, i64* %arrayidx12.i, align 8, !tbaa !6
  %arrayidx13.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 6
  store i64 %13, i64* %arrayidx13.i, align 16, !tbaa !6
  %arrayidx14.i = getelementptr inbounds i64, i64* %x_in, i64 7
  %14 = load i64, i64* %arrayidx14.i, align 8, !tbaa !6
  %arrayidx15.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 7
  store i64 %14, i64* %arrayidx15.i, align 8, !tbaa !6
  %arrayidx16.i = getelementptr inbounds i64, i64* %x_in, i64 8
  %15 = load i64, i64* %arrayidx16.i, align 8, !tbaa !6
  %arrayidx17.i = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp, i64 0, i64 8
  store i64 %15, i64* %arrayidx17.i, align 16, !tbaa !6
  %arraydecay9 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 0
  store i64 %7, i64* %arraydecay9, align 16, !tbaa !6
  %arrayidx3.i.64 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 1
  store i64 %8, i64* %arrayidx3.i.64, align 8, !tbaa !6
  %arrayidx5.i.66 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 2
  store i64 %9, i64* %arrayidx5.i.66, align 16, !tbaa !6
  %arrayidx7.i.68 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 3
  store i64 %10, i64* %arrayidx7.i.68, align 8, !tbaa !6
  %arrayidx9.i.70 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 4
  store i64 %11, i64* %arrayidx9.i.70, align 16, !tbaa !6
  %arrayidx11.i.72 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 5
  store i64 %12, i64* %arrayidx11.i.72, align 8, !tbaa !6
  %arrayidx13.i.74 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 6
  store i64 %13, i64* %arrayidx13.i.74, align 16, !tbaa !6
  %arrayidx15.i.76 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 7
  store i64 %14, i64* %arrayidx15.i.76, align 8, !tbaa !6
  %arrayidx17.i.78 = getelementptr inbounds [9 x i64], [9 x i64]* %ftmp2, i64 0, i64 8
  store i64 %15, i64* %arrayidx17.i.78, align 16, !tbaa !6
  %arraydecay10 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay10, i64* %z_in)
  %16 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %conv.i = trunc i128 %16 to i64
  %and.i = and i64 %conv.i, 288230376151711743
  %arrayidx2.i.94 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 1
  %17 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %conv3.i = trunc i128 %17 to i64
  %and4.i = and i64 %conv3.i, 288230376151711743
  %arrayidx6.i.96 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 2
  %18 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %conv7.i = trunc i128 %18 to i64
  %and8.i = and i64 %conv7.i, 288230376151711743
  %arrayidx10.i.98 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 3
  %19 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %conv11.i = trunc i128 %19 to i64
  %and12.i = and i64 %conv11.i, 288230376151711743
  %arrayidx14.i.100 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 4
  %20 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %conv15.i = trunc i128 %20 to i64
  %and16.i = and i64 %conv15.i, 288230376151711743
  %arrayidx18.i.102 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 5
  %21 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %conv19.i = trunc i128 %21 to i64
  %and20.i = and i64 %conv19.i, 288230376151711743
  %arrayidx22.i.103 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 6
  %22 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %conv23.i = trunc i128 %22 to i64
  %and24.i = and i64 %conv23.i, 288230376151711743
  %arrayidx26.i.104 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 7
  %23 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %conv27.i = trunc i128 %23 to i64
  %and28.i = and i64 %conv27.i, 288230376151711743
  %arrayidx30.i.105 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 8
  %24 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %conv31.i = trunc i128 %24 to i64
  %and32.i = and i64 %conv31.i, 288230376151711743
  %shr.i = lshr i64 %conv.i, 58
  %add.i.106 = add nuw nsw i64 %and4.i, %shr.i
  %25 = lshr i128 %16, 58
  %and40.i = trunc i128 %25 to i64
  %shl.i = and i64 %and40.i, 288230376151711680
  %add42.i = add nuw nsw i64 %add.i.106, %shl.i
  %shr44.i = lshr i128 %16, 116
  %shr46.i = trunc i128 %shr44.i to i64
  %shr51.i = lshr i64 %conv3.i, 58
  %26 = lshr i128 %17, 58
  %and57.i = trunc i128 %26 to i64
  %shl58.i = and i64 %and57.i, 288230376151711680
  %add48.i = add nuw nsw i64 %shr51.i, %shr46.i
  %add53.i = add nuw nsw i64 %add48.i, %and8.i
  %add60.i = add nuw nsw i64 %add53.i, %shl58.i
  %shr62.i = lshr i128 %17, 116
  %shr64.i = trunc i128 %shr62.i to i64
  %shr69.i = lshr i64 %conv7.i, 58
  %27 = lshr i128 %18, 58
  %and75.i = trunc i128 %27 to i64
  %shl76.i = and i64 %and75.i, 288230376151711680
  %add66.i = add nuw nsw i64 %shr69.i, %shr64.i
  %add71.i = add nuw nsw i64 %add66.i, %and12.i
  %add78.i = add nuw nsw i64 %add71.i, %shl76.i
  %shr80.i = lshr i128 %18, 116
  %shr82.i = trunc i128 %shr80.i to i64
  %shr87.i = lshr i64 %conv11.i, 58
  %28 = lshr i128 %19, 58
  %and93.i = trunc i128 %28 to i64
  %shl94.i = and i64 %and93.i, 288230376151711680
  %add84.i = add nuw nsw i64 %shr87.i, %shr82.i
  %add89.i = add nuw nsw i64 %add84.i, %and16.i
  %add96.i = add nuw nsw i64 %add89.i, %shl94.i
  %shr98.i = lshr i128 %19, 116
  %shr100.i = trunc i128 %shr98.i to i64
  %shr105.i = lshr i64 %conv15.i, 58
  %29 = lshr i128 %20, 58
  %and111.i = trunc i128 %29 to i64
  %shl112.i = and i64 %and111.i, 288230376151711680
  %add102.i = add nuw nsw i64 %shr105.i, %shr100.i
  %add107.i = add nuw nsw i64 %add102.i, %and20.i
  %add114.i = add nuw nsw i64 %add107.i, %shl112.i
  %shr116.i = lshr i128 %20, 116
  %shr118.i = trunc i128 %shr116.i to i64
  %shr123.i = lshr i64 %conv19.i, 58
  %30 = lshr i128 %21, 58
  %and129.i = trunc i128 %30 to i64
  %shl130.i = and i64 %and129.i, 288230376151711680
  %add120.i = add nuw nsw i64 %shr123.i, %shr118.i
  %add125.i = add nuw nsw i64 %add120.i, %and24.i
  %add132.i = add nuw nsw i64 %add125.i, %shl130.i
  %shr134.i = lshr i128 %21, 116
  %shr136.i = trunc i128 %shr134.i to i64
  %shr141.i = lshr i64 %conv23.i, 58
  %31 = lshr i128 %22, 58
  %and147.i = trunc i128 %31 to i64
  %shl148.i = and i64 %and147.i, 288230376151711680
  %add138.i = add nuw nsw i64 %shr141.i, %shr136.i
  %add143.i = add nuw nsw i64 %add138.i, %and28.i
  %add150.i = add nuw nsw i64 %add143.i, %shl148.i
  %shr152.i = lshr i128 %22, 116
  %shr154.i = trunc i128 %shr152.i to i64
  %shr159.i = lshr i64 %conv27.i, 58
  %32 = lshr i128 %23, 58
  %and165.i = trunc i128 %32 to i64
  %shl166.i = and i64 %and165.i, 288230376151711680
  %add156.i = add nuw nsw i64 %shr159.i, %shr154.i
  %add161.i = add nuw nsw i64 %add156.i, %and32.i
  %add168.i = add nuw nsw i64 %add161.i, %shl166.i
  %shr170.i = lshr i128 %23, 116
  %shr172.i = trunc i128 %shr170.i to i64
  %shr175.i = lshr i64 %conv31.i, 58
  %add176.i = add nuw nsw i64 %shr175.i, %shr172.i
  %33 = lshr i128 %24, 58
  %and180.i = trunc i128 %33 to i64
  %shl181.i = and i64 %and180.i, 288230376151711680
  %add182.i = add nuw nsw i64 %add176.i, %shl181.i
  %shl187.i = shl nuw nsw i64 %add182.i, 1
  %34 = lshr i128 %24, 115
  %.tr.i = trunc i128 %34 to i64
  %shl188.i = and i64 %.tr.i, 8190
  %add190.i = add nuw nsw i64 %shl187.i, %and.i
  %add192.i = add nuw nsw i64 %add42.i, %shl188.i
  %shr194.i = lshr i64 %add190.i, 58
  %add196.i = add nuw nsw i64 %add192.i, %shr194.i
  %fold = add i64 %shl187.i, %conv.i
  %and198.i = and i64 %fold, 288230376151711743
  call fastcc void @felem_square(i128* %arraydecay10, i64* %y_in)
  %arraydecay14 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 0
  %35 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %conv.i.107 = trunc i128 %35 to i64
  %and.i.108 = and i64 %conv.i.107, 288230376151711743
  store i64 %and.i.108, i64* %arraydecay14, align 16, !tbaa !6
  %36 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %conv3.i.110 = trunc i128 %36 to i64
  %and4.i.111 = and i64 %conv3.i.110, 288230376151711743
  %arrayidx5.i.112 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 1
  %37 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %conv7.i.114 = trunc i128 %37 to i64
  %and8.i.115 = and i64 %conv7.i.114, 288230376151711743
  %arrayidx9.i.116 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 2
  %38 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %conv11.i.118 = trunc i128 %38 to i64
  %and12.i.119 = and i64 %conv11.i.118, 288230376151711743
  %arrayidx13.i.120 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 3
  %39 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %conv15.i.122 = trunc i128 %39 to i64
  %and16.i.123 = and i64 %conv15.i.122, 288230376151711743
  %arrayidx17.i.124 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 4
  %40 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %conv19.i.126 = trunc i128 %40 to i64
  %and20.i.127 = and i64 %conv19.i.126, 288230376151711743
  %arrayidx21.i.128 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 5
  %41 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %conv23.i.130 = trunc i128 %41 to i64
  %and24.i.131 = and i64 %conv23.i.130, 288230376151711743
  %arrayidx25.i.132 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 6
  %42 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %conv27.i.134 = trunc i128 %42 to i64
  %and28.i.135 = and i64 %conv27.i.134, 288230376151711743
  %arrayidx29.i.136 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 7
  %43 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %conv31.i.138 = trunc i128 %43 to i64
  %and32.i.139 = and i64 %conv31.i.138, 288230376151711743
  %arrayidx33.i.140 = getelementptr inbounds [9 x i64], [9 x i64]* %gamma, i64 0, i64 8
  %shr.i.141 = lshr i64 %conv.i.107, 58
  %add.i.142 = add nuw nsw i64 %and4.i.111, %shr.i.141
  %44 = lshr i128 %35, 58
  %and40.i.143 = trunc i128 %44 to i64
  %shl.i.144 = and i64 %and40.i.143, 288230376151711680
  %add42.i.145 = add nuw nsw i64 %add.i.142, %shl.i.144
  %shr44.i.146 = lshr i128 %35, 116
  %shr46.i.147 = trunc i128 %shr44.i.146 to i64
  %shr51.i.149 = lshr i64 %conv3.i.110, 58
  %45 = lshr i128 %36, 58
  %and57.i.151 = trunc i128 %45 to i64
  %shl58.i.152 = and i64 %and57.i.151, 288230376151711680
  %add48.i.148 = add nuw nsw i64 %shr51.i.149, %shr46.i.147
  %add53.i.150 = add nuw nsw i64 %add48.i.148, %and8.i.115
  %add60.i.153 = add nuw nsw i64 %add53.i.150, %shl58.i.152
  store i64 %add60.i.153, i64* %arrayidx9.i.116, align 16, !tbaa !6
  %shr62.i.154 = lshr i128 %36, 116
  %shr64.i.155 = trunc i128 %shr62.i.154 to i64
  %shr69.i.157 = lshr i64 %conv7.i.114, 58
  %46 = lshr i128 %37, 58
  %and75.i.159 = trunc i128 %46 to i64
  %shl76.i.160 = and i64 %and75.i.159, 288230376151711680
  %add66.i.156 = add nuw nsw i64 %shr69.i.157, %shr64.i.155
  %add71.i.158 = add nuw nsw i64 %add66.i.156, %and12.i.119
  %add78.i.161 = add nuw nsw i64 %add71.i.158, %shl76.i.160
  store i64 %add78.i.161, i64* %arrayidx13.i.120, align 8, !tbaa !6
  %shr80.i.162 = lshr i128 %37, 116
  %shr82.i.163 = trunc i128 %shr80.i.162 to i64
  %shr87.i.165 = lshr i64 %conv11.i.118, 58
  %47 = lshr i128 %38, 58
  %and93.i.167 = trunc i128 %47 to i64
  %shl94.i.168 = and i64 %and93.i.167, 288230376151711680
  %add84.i.164 = add nuw nsw i64 %shr87.i.165, %shr82.i.163
  %add89.i.166 = add nuw nsw i64 %add84.i.164, %and16.i.123
  %add96.i.169 = add nuw nsw i64 %add89.i.166, %shl94.i.168
  store i64 %add96.i.169, i64* %arrayidx17.i.124, align 16, !tbaa !6
  %shr98.i.170 = lshr i128 %38, 116
  %shr100.i.171 = trunc i128 %shr98.i.170 to i64
  %shr105.i.173 = lshr i64 %conv15.i.122, 58
  %48 = lshr i128 %39, 58
  %and111.i.175 = trunc i128 %48 to i64
  %shl112.i.176 = and i64 %and111.i.175, 288230376151711680
  %add102.i.172 = add nuw nsw i64 %shr105.i.173, %shr100.i.171
  %add107.i.174 = add nuw nsw i64 %add102.i.172, %and20.i.127
  %add114.i.177 = add nuw nsw i64 %add107.i.174, %shl112.i.176
  store i64 %add114.i.177, i64* %arrayidx21.i.128, align 8, !tbaa !6
  %shr116.i.178 = lshr i128 %39, 116
  %shr118.i.179 = trunc i128 %shr116.i.178 to i64
  %shr123.i.181 = lshr i64 %conv19.i.126, 58
  %49 = lshr i128 %40, 58
  %and129.i.183 = trunc i128 %49 to i64
  %shl130.i.184 = and i64 %and129.i.183, 288230376151711680
  %add120.i.180 = add nuw nsw i64 %shr123.i.181, %shr118.i.179
  %add125.i.182 = add nuw nsw i64 %add120.i.180, %and24.i.131
  %add132.i.185 = add nuw nsw i64 %add125.i.182, %shl130.i.184
  store i64 %add132.i.185, i64* %arrayidx25.i.132, align 16, !tbaa !6
  %shr134.i.186 = lshr i128 %40, 116
  %shr136.i.187 = trunc i128 %shr134.i.186 to i64
  %shr141.i.189 = lshr i64 %conv23.i.130, 58
  %50 = lshr i128 %41, 58
  %and147.i.191 = trunc i128 %50 to i64
  %shl148.i.192 = and i64 %and147.i.191, 288230376151711680
  %add138.i.188 = add nuw nsw i64 %shr141.i.189, %shr136.i.187
  %add143.i.190 = add nuw nsw i64 %add138.i.188, %and28.i.135
  %add150.i.193 = add nuw nsw i64 %add143.i.190, %shl148.i.192
  store i64 %add150.i.193, i64* %arrayidx29.i.136, align 8, !tbaa !6
  %shr152.i.194 = lshr i128 %41, 116
  %shr154.i.195 = trunc i128 %shr152.i.194 to i64
  %shr159.i.197 = lshr i64 %conv27.i.134, 58
  %51 = lshr i128 %42, 58
  %and165.i.199 = trunc i128 %51 to i64
  %shl166.i.200 = and i64 %and165.i.199, 288230376151711680
  %add156.i.196 = add nuw nsw i64 %shr159.i.197, %shr154.i.195
  %add161.i.198 = add nuw nsw i64 %add156.i.196, %and32.i.139
  %add168.i.201 = add nuw nsw i64 %add161.i.198, %shl166.i.200
  store i64 %add168.i.201, i64* %arrayidx33.i.140, align 16, !tbaa !6
  %shr170.i.202 = lshr i128 %42, 116
  %shr172.i.203 = trunc i128 %shr170.i.202 to i64
  %shr175.i.205 = lshr i64 %conv31.i.138, 58
  %add176.i.206 = add nuw nsw i64 %shr175.i.205, %shr172.i.203
  %52 = lshr i128 %43, 58
  %and180.i.207 = trunc i128 %52 to i64
  %shl181.i.208 = and i64 %and180.i.207, 288230376151711680
  %add182.i.209 = add nuw nsw i64 %add176.i.206, %shl181.i.208
  %shl187.i.210 = shl nuw nsw i64 %add182.i.209, 1
  %53 = lshr i128 %43, 115
  %.tr.i.211 = trunc i128 %53 to i64
  %shl188.i.212 = and i64 %.tr.i.211, 8190
  %54 = load i64, i64* %arraydecay14, align 16, !tbaa !6
  %add190.i.213 = add i64 %shl187.i.210, %54
  %add192.i.214 = add nuw nsw i64 %shl188.i.212, %add42.i.145
  %shr194.i.215 = lshr i64 %add190.i.213, 58
  %add196.i.216 = add nuw nsw i64 %add192.i.214, %shr194.i.215
  store i64 %add196.i.216, i64* %arrayidx5.i.112, align 8, !tbaa !6
  %and198.i.217 = and i64 %add190.i.213, 288230376151711743
  store i64 %and198.i.217, i64* %arraydecay14, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay10, i64* %x_in, i64* %arraydecay14)
  %arraydecay18 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 0
  %55 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %conv.i.262 = trunc i128 %55 to i64
  %and.i.263 = and i64 %conv.i.262, 288230376151711743
  store i64 %and.i.263, i64* %arraydecay18, align 16, !tbaa !6
  %56 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %conv3.i.265 = trunc i128 %56 to i64
  %and4.i.266 = and i64 %conv3.i.265, 288230376151711743
  %arrayidx5.i.267 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 1
  %57 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %conv7.i.269 = trunc i128 %57 to i64
  %and8.i.270 = and i64 %conv7.i.269, 288230376151711743
  %arrayidx9.i.271 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 2
  %58 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %conv11.i.273 = trunc i128 %58 to i64
  %and12.i.274 = and i64 %conv11.i.273, 288230376151711743
  %arrayidx13.i.275 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 3
  %59 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %conv15.i.277 = trunc i128 %59 to i64
  %and16.i.278 = and i64 %conv15.i.277, 288230376151711743
  %arrayidx17.i.279 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 4
  %60 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %conv19.i.281 = trunc i128 %60 to i64
  %and20.i.282 = and i64 %conv19.i.281, 288230376151711743
  %arrayidx21.i.283 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 5
  %61 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %conv23.i.285 = trunc i128 %61 to i64
  %and24.i.286 = and i64 %conv23.i.285, 288230376151711743
  %arrayidx25.i.287 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 6
  %62 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %conv27.i.289 = trunc i128 %62 to i64
  %and28.i.290 = and i64 %conv27.i.289, 288230376151711743
  %arrayidx29.i.291 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 7
  %63 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %conv31.i.293 = trunc i128 %63 to i64
  %and32.i.294 = and i64 %conv31.i.293, 288230376151711743
  %arrayidx33.i.295 = getelementptr inbounds [9 x i64], [9 x i64]* %beta, i64 0, i64 8
  %shr.i.296 = lshr i64 %conv.i.262, 58
  %add.i.297 = add nuw nsw i64 %and4.i.266, %shr.i.296
  %64 = lshr i128 %55, 58
  %and40.i.298 = trunc i128 %64 to i64
  %shl.i.299 = and i64 %and40.i.298, 288230376151711680
  %add42.i.300 = add nuw nsw i64 %add.i.297, %shl.i.299
  %shr44.i.301 = lshr i128 %55, 116
  %shr46.i.302 = trunc i128 %shr44.i.301 to i64
  %shr51.i.304 = lshr i64 %conv3.i.265, 58
  %65 = lshr i128 %56, 58
  %and57.i.306 = trunc i128 %65 to i64
  %shl58.i.307 = and i64 %and57.i.306, 288230376151711680
  %add48.i.303 = add nuw nsw i64 %shr51.i.304, %shr46.i.302
  %add53.i.305 = add nuw nsw i64 %add48.i.303, %and8.i.270
  %add60.i.308 = add nuw nsw i64 %add53.i.305, %shl58.i.307
  store i64 %add60.i.308, i64* %arrayidx9.i.271, align 16, !tbaa !6
  %shr62.i.309 = lshr i128 %56, 116
  %shr64.i.310 = trunc i128 %shr62.i.309 to i64
  %shr69.i.312 = lshr i64 %conv7.i.269, 58
  %66 = lshr i128 %57, 58
  %and75.i.314 = trunc i128 %66 to i64
  %shl76.i.315 = and i64 %and75.i.314, 288230376151711680
  %add66.i.311 = add nuw nsw i64 %shr69.i.312, %shr64.i.310
  %add71.i.313 = add nuw nsw i64 %add66.i.311, %and12.i.274
  %add78.i.316 = add nuw nsw i64 %add71.i.313, %shl76.i.315
  store i64 %add78.i.316, i64* %arrayidx13.i.275, align 8, !tbaa !6
  %shr80.i.317 = lshr i128 %57, 116
  %shr82.i.318 = trunc i128 %shr80.i.317 to i64
  %shr87.i.320 = lshr i64 %conv11.i.273, 58
  %67 = lshr i128 %58, 58
  %and93.i.322 = trunc i128 %67 to i64
  %shl94.i.323 = and i64 %and93.i.322, 288230376151711680
  %add84.i.319 = add nuw nsw i64 %shr87.i.320, %shr82.i.318
  %add89.i.321 = add nuw nsw i64 %add84.i.319, %and16.i.278
  %add96.i.324 = add nuw nsw i64 %add89.i.321, %shl94.i.323
  store i64 %add96.i.324, i64* %arrayidx17.i.279, align 16, !tbaa !6
  %shr98.i.325 = lshr i128 %58, 116
  %shr100.i.326 = trunc i128 %shr98.i.325 to i64
  %shr105.i.328 = lshr i64 %conv15.i.277, 58
  %68 = lshr i128 %59, 58
  %and111.i.330 = trunc i128 %68 to i64
  %shl112.i.331 = and i64 %and111.i.330, 288230376151711680
  %add102.i.327 = add nuw nsw i64 %shr105.i.328, %shr100.i.326
  %add107.i.329 = add nuw nsw i64 %add102.i.327, %and20.i.282
  %add114.i.332 = add nuw nsw i64 %add107.i.329, %shl112.i.331
  store i64 %add114.i.332, i64* %arrayidx21.i.283, align 8, !tbaa !6
  %shr116.i.333 = lshr i128 %59, 116
  %shr118.i.334 = trunc i128 %shr116.i.333 to i64
  %shr123.i.336 = lshr i64 %conv19.i.281, 58
  %69 = lshr i128 %60, 58
  %and129.i.338 = trunc i128 %69 to i64
  %shl130.i.339 = and i64 %and129.i.338, 288230376151711680
  %add120.i.335 = add nuw nsw i64 %shr123.i.336, %shr118.i.334
  %add125.i.337 = add nuw nsw i64 %add120.i.335, %and24.i.286
  %add132.i.340 = add nuw nsw i64 %add125.i.337, %shl130.i.339
  store i64 %add132.i.340, i64* %arrayidx25.i.287, align 16, !tbaa !6
  %shr134.i.341 = lshr i128 %60, 116
  %shr136.i.342 = trunc i128 %shr134.i.341 to i64
  %shr141.i.344 = lshr i64 %conv23.i.285, 58
  %70 = lshr i128 %61, 58
  %and147.i.346 = trunc i128 %70 to i64
  %shl148.i.347 = and i64 %and147.i.346, 288230376151711680
  %add138.i.343 = add nuw nsw i64 %shr141.i.344, %shr136.i.342
  %add143.i.345 = add nuw nsw i64 %add138.i.343, %and28.i.290
  %add150.i.348 = add nuw nsw i64 %add143.i.345, %shl148.i.347
  store i64 %add150.i.348, i64* %arrayidx29.i.291, align 8, !tbaa !6
  %shr152.i.349 = lshr i128 %61, 116
  %shr154.i.350 = trunc i128 %shr152.i.349 to i64
  %shr159.i.352 = lshr i64 %conv27.i.289, 58
  %71 = lshr i128 %62, 58
  %and165.i.354 = trunc i128 %71 to i64
  %shl166.i.355 = and i64 %and165.i.354, 288230376151711680
  %add156.i.351 = add nuw nsw i64 %shr159.i.352, %shr154.i.350
  %add161.i.353 = add nuw nsw i64 %add156.i.351, %and32.i.294
  %add168.i.356 = add nuw nsw i64 %add161.i.353, %shl166.i.355
  store i64 %add168.i.356, i64* %arrayidx33.i.295, align 16, !tbaa !6
  %shr170.i.357 = lshr i128 %62, 116
  %shr172.i.358 = trunc i128 %shr170.i.357 to i64
  %shr175.i.360 = lshr i64 %conv31.i.293, 58
  %add176.i.361 = add nuw nsw i64 %shr175.i.360, %shr172.i.358
  %72 = lshr i128 %63, 58
  %and180.i.362 = trunc i128 %72 to i64
  %shl181.i.363 = and i64 %and180.i.362, 288230376151711680
  %add182.i.364 = add nuw nsw i64 %add176.i.361, %shl181.i.363
  %shl187.i.365 = shl nuw nsw i64 %add182.i.364, 1
  %73 = lshr i128 %63, 115
  %.tr.i.366 = trunc i128 %73 to i64
  %shl188.i.367 = and i64 %.tr.i.366, 8190
  %74 = load i64, i64* %arraydecay18, align 16, !tbaa !6
  %add190.i.368 = add i64 %shl187.i.365, %74
  %add192.i.369 = add nuw nsw i64 %shl188.i.367, %add42.i.300
  %shr194.i.370 = lshr i64 %add190.i.368, 58
  %add196.i.371 = add nuw nsw i64 %add192.i.369, %shr194.i.370
  store i64 %add196.i.371, i64* %arrayidx5.i.267, align 8, !tbaa !6
  %and198.i.372 = and i64 %add190.i.368, 288230376151711743
  store i64 %and198.i.372, i64* %arraydecay18, align 16, !tbaa !6
  %sub.i.392 = sub nsw i64 4611686018427387872, %and198.i
  %75 = load i64, i64* %arraydecay, align 16, !tbaa !6
  %add.i.393 = add i64 %sub.i.392, %75
  store i64 %add.i.393, i64* %arraydecay, align 16, !tbaa !6
  %sub3.i.395 = sub nsw i64 4611686018427387888, %add196.i
  %76 = load i64, i64* %arrayidx3.i, align 8, !tbaa !6
  %add5.i.397 = add i64 %sub3.i.395, %76
  store i64 %add5.i.397, i64* %arrayidx3.i, align 8, !tbaa !6
  %sub7.i.399 = sub nsw i64 4611686018427387888, %add60.i
  %77 = load i64, i64* %arrayidx5.i, align 16, !tbaa !6
  %add9.i.401 = add i64 %sub7.i.399, %77
  store i64 %add9.i.401, i64* %arrayidx5.i, align 16, !tbaa !6
  %sub11.i.403 = sub nsw i64 4611686018427387888, %add78.i
  %78 = load i64, i64* %arrayidx7.i, align 8, !tbaa !6
  %add13.i.405 = add i64 %sub11.i.403, %78
  store i64 %add13.i.405, i64* %arrayidx7.i, align 8, !tbaa !6
  %sub15.i.407 = sub nsw i64 4611686018427387888, %add96.i
  %79 = load i64, i64* %arrayidx9.i, align 16, !tbaa !6
  %add17.i.409 = add i64 %sub15.i.407, %79
  store i64 %add17.i.409, i64* %arrayidx9.i, align 16, !tbaa !6
  %sub19.i.411 = sub nsw i64 4611686018427387888, %add114.i
  %80 = load i64, i64* %arrayidx11.i, align 8, !tbaa !6
  %add21.i.413 = add i64 %sub19.i.411, %80
  store i64 %add21.i.413, i64* %arrayidx11.i, align 8, !tbaa !6
  %sub23.i.415 = sub nsw i64 4611686018427387888, %add132.i
  %81 = load i64, i64* %arrayidx13.i, align 16, !tbaa !6
  %add25.i.417 = add i64 %sub23.i.415, %81
  store i64 %add25.i.417, i64* %arrayidx13.i, align 16, !tbaa !6
  %sub27.i.419 = sub nsw i64 4611686018427387888, %add150.i
  %82 = load i64, i64* %arrayidx15.i, align 8, !tbaa !6
  %add29.i.421 = add i64 %sub27.i.419, %82
  store i64 %add29.i.421, i64* %arrayidx15.i, align 8, !tbaa !6
  %sub31.i.423 = sub nsw i64 4611686018427387888, %add168.i
  %83 = load i64, i64* %arrayidx17.i, align 16, !tbaa !6
  %add33.i.425 = add i64 %sub31.i.423, %83
  store i64 %add33.i.425, i64* %arrayidx17.i, align 16, !tbaa !6
  %84 = load i64, i64* %arraydecay9, align 16, !tbaa !6
  %add.i.487 = add i64 %84, %and198.i
  %85 = load i64, i64* %arrayidx3.i.64, align 8, !tbaa !6
  %add4.i.490 = add i64 %85, %add196.i
  %86 = load i64, i64* %arrayidx5.i.66, align 16, !tbaa !6
  %add7.i.493 = add i64 %86, %add60.i
  %87 = load i64, i64* %arrayidx7.i.68, align 8, !tbaa !6
  %add10.i.496 = add i64 %87, %add78.i
  %88 = load i64, i64* %arrayidx9.i.70, align 16, !tbaa !6
  %add13.i.499 = add i64 %88, %add96.i
  %89 = load i64, i64* %arrayidx11.i.72, align 8, !tbaa !6
  %add16.i.502 = add i64 %89, %add114.i
  %90 = load i64, i64* %arrayidx13.i.74, align 16, !tbaa !6
  %add19.i.505 = add i64 %90, %add132.i
  %91 = load i64, i64* %arrayidx15.i.76, align 8, !tbaa !6
  %add22.i.508 = add i64 %91, %add150.i
  %92 = load i64, i64* %arrayidx17.i.78, align 16, !tbaa !6
  %add25.i.511 = add i64 %92, %add168.i
  %mul.i.588 = mul i64 %add.i.487, 3
  store i64 %mul.i.588, i64* %arraydecay9, align 16, !tbaa !6
  %mul2.i.590 = mul i64 %add4.i.490, 3
  store i64 %mul2.i.590, i64* %arrayidx3.i.64, align 8, !tbaa !6
  %mul4.i.592 = mul i64 %add7.i.493, 3
  store i64 %mul4.i.592, i64* %arrayidx5.i.66, align 16, !tbaa !6
  %mul6.i.594 = mul i64 %add10.i.496, 3
  store i64 %mul6.i.594, i64* %arrayidx7.i.68, align 8, !tbaa !6
  %mul8.i.596 = mul i64 %add13.i.499, 3
  store i64 %mul8.i.596, i64* %arrayidx9.i.70, align 16, !tbaa !6
  %mul10.i.598 = mul i64 %add16.i.502, 3
  store i64 %mul10.i.598, i64* %arrayidx11.i.72, align 8, !tbaa !6
  %mul12.i.600 = mul i64 %add19.i.505, 3
  store i64 %mul12.i.600, i64* %arrayidx13.i.74, align 16, !tbaa !6
  %mul14.i.602 = mul i64 %add22.i.508, 3
  store i64 %mul14.i.602, i64* %arrayidx15.i.76, align 8, !tbaa !6
  %mul16.i.604 = mul i64 %add25.i.511, 3
  store i64 %mul16.i.604, i64* %arrayidx17.i.78, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay10, i64* %arraydecay, i64* %arraydecay9)
  %arraydecay28 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 0
  %93 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %conv.i.605 = trunc i128 %93 to i64
  %and.i.606 = and i64 %conv.i.605, 288230376151711743
  store i64 %and.i.606, i64* %arraydecay28, align 16, !tbaa !6
  %94 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %conv3.i.608 = trunc i128 %94 to i64
  %and4.i.609 = and i64 %conv3.i.608, 288230376151711743
  %arrayidx5.i.610 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 1
  %95 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %conv7.i.612 = trunc i128 %95 to i64
  %and8.i.613 = and i64 %conv7.i.612, 288230376151711743
  %arrayidx9.i.614 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 2
  %96 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %conv11.i.616 = trunc i128 %96 to i64
  %and12.i.617 = and i64 %conv11.i.616, 288230376151711743
  %arrayidx13.i.618 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 3
  %97 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %conv15.i.620 = trunc i128 %97 to i64
  %and16.i.621 = and i64 %conv15.i.620, 288230376151711743
  %arrayidx17.i.622 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 4
  %98 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %conv19.i.624 = trunc i128 %98 to i64
  %and20.i.625 = and i64 %conv19.i.624, 288230376151711743
  %arrayidx21.i.626 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 5
  %99 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %conv23.i.628 = trunc i128 %99 to i64
  %and24.i.629 = and i64 %conv23.i.628, 288230376151711743
  %arrayidx25.i.630 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 6
  %100 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %conv27.i.632 = trunc i128 %100 to i64
  %and28.i.633 = and i64 %conv27.i.632, 288230376151711743
  %arrayidx29.i.634 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 7
  %101 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %conv31.i.636 = trunc i128 %101 to i64
  %and32.i.637 = and i64 %conv31.i.636, 288230376151711743
  %arrayidx33.i.638 = getelementptr inbounds [9 x i64], [9 x i64]* %alpha, i64 0, i64 8
  %shr.i.639 = lshr i64 %conv.i.605, 58
  %add.i.640 = add nuw nsw i64 %and4.i.609, %shr.i.639
  %102 = lshr i128 %93, 58
  %and40.i.641 = trunc i128 %102 to i64
  %shl.i.642 = and i64 %and40.i.641, 288230376151711680
  %add42.i.643 = add nuw nsw i64 %add.i.640, %shl.i.642
  %shr44.i.644 = lshr i128 %93, 116
  %shr46.i.645 = trunc i128 %shr44.i.644 to i64
  %shr51.i.647 = lshr i64 %conv3.i.608, 58
  %103 = lshr i128 %94, 58
  %and57.i.649 = trunc i128 %103 to i64
  %shl58.i.650 = and i64 %and57.i.649, 288230376151711680
  %add48.i.646 = add nuw nsw i64 %shr51.i.647, %shr46.i.645
  %add53.i.648 = add nuw nsw i64 %add48.i.646, %and8.i.613
  %add60.i.651 = add nuw nsw i64 %add53.i.648, %shl58.i.650
  store i64 %add60.i.651, i64* %arrayidx9.i.614, align 16, !tbaa !6
  %shr62.i.652 = lshr i128 %94, 116
  %shr64.i.653 = trunc i128 %shr62.i.652 to i64
  %shr69.i.655 = lshr i64 %conv7.i.612, 58
  %104 = lshr i128 %95, 58
  %and75.i.657 = trunc i128 %104 to i64
  %shl76.i.658 = and i64 %and75.i.657, 288230376151711680
  %add66.i.654 = add nuw nsw i64 %shr69.i.655, %shr64.i.653
  %add71.i.656 = add nuw nsw i64 %add66.i.654, %and12.i.617
  %add78.i.659 = add nuw nsw i64 %add71.i.656, %shl76.i.658
  store i64 %add78.i.659, i64* %arrayidx13.i.618, align 8, !tbaa !6
  %shr80.i.660 = lshr i128 %95, 116
  %shr82.i.661 = trunc i128 %shr80.i.660 to i64
  %shr87.i.663 = lshr i64 %conv11.i.616, 58
  %105 = lshr i128 %96, 58
  %and93.i.665 = trunc i128 %105 to i64
  %shl94.i.666 = and i64 %and93.i.665, 288230376151711680
  %add84.i.662 = add nuw nsw i64 %shr87.i.663, %shr82.i.661
  %add89.i.664 = add nuw nsw i64 %add84.i.662, %and16.i.621
  %add96.i.667 = add nuw nsw i64 %add89.i.664, %shl94.i.666
  store i64 %add96.i.667, i64* %arrayidx17.i.622, align 16, !tbaa !6
  %shr98.i.668 = lshr i128 %96, 116
  %shr100.i.669 = trunc i128 %shr98.i.668 to i64
  %shr105.i.671 = lshr i64 %conv15.i.620, 58
  %106 = lshr i128 %97, 58
  %and111.i.673 = trunc i128 %106 to i64
  %shl112.i.674 = and i64 %and111.i.673, 288230376151711680
  %add102.i.670 = add nuw nsw i64 %shr105.i.671, %shr100.i.669
  %add107.i.672 = add nuw nsw i64 %add102.i.670, %and20.i.625
  %add114.i.675 = add nuw nsw i64 %add107.i.672, %shl112.i.674
  store i64 %add114.i.675, i64* %arrayidx21.i.626, align 8, !tbaa !6
  %shr116.i.676 = lshr i128 %97, 116
  %shr118.i.677 = trunc i128 %shr116.i.676 to i64
  %shr123.i.679 = lshr i64 %conv19.i.624, 58
  %107 = lshr i128 %98, 58
  %and129.i.681 = trunc i128 %107 to i64
  %shl130.i.682 = and i64 %and129.i.681, 288230376151711680
  %add120.i.678 = add nuw nsw i64 %shr123.i.679, %shr118.i.677
  %add125.i.680 = add nuw nsw i64 %add120.i.678, %and24.i.629
  %add132.i.683 = add nuw nsw i64 %add125.i.680, %shl130.i.682
  store i64 %add132.i.683, i64* %arrayidx25.i.630, align 16, !tbaa !6
  %shr134.i.684 = lshr i128 %98, 116
  %shr136.i.685 = trunc i128 %shr134.i.684 to i64
  %shr141.i.687 = lshr i64 %conv23.i.628, 58
  %108 = lshr i128 %99, 58
  %and147.i.689 = trunc i128 %108 to i64
  %shl148.i.690 = and i64 %and147.i.689, 288230376151711680
  %add138.i.686 = add nuw nsw i64 %shr141.i.687, %shr136.i.685
  %add143.i.688 = add nuw nsw i64 %add138.i.686, %and28.i.633
  %add150.i.691 = add nuw nsw i64 %add143.i.688, %shl148.i.690
  store i64 %add150.i.691, i64* %arrayidx29.i.634, align 8, !tbaa !6
  %shr152.i.692 = lshr i128 %99, 116
  %shr154.i.693 = trunc i128 %shr152.i.692 to i64
  %shr159.i.695 = lshr i64 %conv27.i.632, 58
  %109 = lshr i128 %100, 58
  %and165.i.697 = trunc i128 %109 to i64
  %shl166.i.698 = and i64 %and165.i.697, 288230376151711680
  %add156.i.694 = add nuw nsw i64 %shr159.i.695, %shr154.i.693
  %add161.i.696 = add nuw nsw i64 %add156.i.694, %and32.i.637
  %add168.i.699 = add nuw nsw i64 %add161.i.696, %shl166.i.698
  store i64 %add168.i.699, i64* %arrayidx33.i.638, align 16, !tbaa !6
  %shr170.i.700 = lshr i128 %100, 116
  %shr172.i.701 = trunc i128 %shr170.i.700 to i64
  %shr175.i.703 = lshr i64 %conv31.i.636, 58
  %add176.i.704 = add nuw nsw i64 %shr175.i.703, %shr172.i.701
  %110 = lshr i128 %101, 58
  %and180.i.705 = trunc i128 %110 to i64
  %shl181.i.706 = and i64 %and180.i.705, 288230376151711680
  %add182.i.707 = add nuw nsw i64 %add176.i.704, %shl181.i.706
  %shl187.i.708 = shl nuw nsw i64 %add182.i.707, 1
  %111 = lshr i128 %101, 115
  %.tr.i.709 = trunc i128 %111 to i64
  %shl188.i.710 = and i64 %.tr.i.709, 8190
  %112 = load i64, i64* %arraydecay28, align 16, !tbaa !6
  %add190.i.711 = add i64 %shl187.i.708, %112
  %add192.i.712 = add nuw nsw i64 %shl188.i.710, %add42.i.643
  %shr194.i.713 = lshr i64 %add190.i.711, 58
  %add196.i.714 = add nuw nsw i64 %add192.i.712, %shr194.i.713
  store i64 %add196.i.714, i64* %arrayidx5.i.610, align 8, !tbaa !6
  %and198.i.715 = and i64 %add190.i.711, 288230376151711743
  store i64 %and198.i.715, i64* %arraydecay28, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay10, i64* %arraydecay28)
  %113 = load i64, i64* %arraydecay18, align 16, !tbaa !6
  %114 = load i64, i64* %arrayidx5.i.267, align 8, !tbaa !6
  %115 = load i64, i64* %arrayidx9.i.271, align 16, !tbaa !6
  %116 = load i64, i64* %arrayidx13.i.275, align 8, !tbaa !6
  %117 = load i64, i64* %arrayidx17.i.279, align 16, !tbaa !6
  %118 = load i64, i64* %arrayidx21.i.283, align 8, !tbaa !6
  %119 = load i64, i64* %arrayidx25.i.287, align 16, !tbaa !6
  %120 = load i64, i64* %arrayidx29.i.291, align 8, !tbaa !6
  %121 = load i64, i64* %arrayidx33.i.295, align 16, !tbaa !6
  %mul.i.555 = shl i64 %113, 3
  %mul2.i.557 = shl i64 %114, 3
  %mul4.i.559 = shl i64 %115, 3
  %mul6.i.561 = shl i64 %116, 3
  %mul8.i.563 = shl i64 %117, 3
  %mul10.i.565 = shl i64 %118, 3
  %mul12.i.567 = shl i64 %119, 3
  %mul14.i.569 = shl i64 %120, 3
  %mul16.i.571 = shl i64 %121, 3
  %sub.i.512 = sub i64 4611686018427387872, %mul.i.555
  %conv.i.513 = zext i64 %sub.i.512 to i128
  %122 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %add.i.514 = add i128 %conv.i.513, %122
  store i128 %add.i.514, i128* %arraydecay10, align 16, !tbaa !2
  %sub3.i.516 = sub i64 4611686018427387888, %mul2.i.557
  %conv4.i.517 = zext i64 %sub3.i.516 to i128
  %123 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %add6.i.519 = add i128 %conv4.i.517, %123
  store i128 %add6.i.519, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %sub8.i.521 = sub i64 4611686018427387888, %mul4.i.559
  %conv9.i.522 = zext i64 %sub8.i.521 to i128
  %124 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %add11.i.524 = add i128 %conv9.i.522, %124
  store i128 %add11.i.524, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %sub13.i.526 = sub i64 4611686018427387888, %mul6.i.561
  %conv14.i.527 = zext i64 %sub13.i.526 to i128
  %125 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %add16.i.529 = add i128 %conv14.i.527, %125
  store i128 %add16.i.529, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %sub18.i.531 = sub i64 4611686018427387888, %mul8.i.563
  %conv19.i.532 = zext i64 %sub18.i.531 to i128
  %126 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %add21.i.534 = add i128 %conv19.i.532, %126
  store i128 %add21.i.534, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %sub23.i.536 = sub i64 4611686018427387888, %mul10.i.565
  %conv24.i.537 = zext i64 %sub23.i.536 to i128
  %127 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %add26.i.539 = add i128 %conv24.i.537, %127
  store i128 %add26.i.539, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %sub28.i.541 = sub i64 4611686018427387888, %mul12.i.567
  %conv29.i.542 = zext i64 %sub28.i.541 to i128
  %128 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %add31.i.544 = add i128 %conv29.i.542, %128
  store i128 %add31.i.544, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %sub33.i.546 = sub i64 4611686018427387888, %mul14.i.569
  %conv34.i.547 = zext i64 %sub33.i.546 to i128
  %129 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %add36.i.549 = add i128 %conv34.i.547, %129
  store i128 %add36.i.549, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %sub38.i.551 = sub i64 4611686018427387888, %mul16.i.571
  %conv39.i.552 = zext i64 %sub38.i.551 to i128
  %130 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %add41.i.554 = add i128 %conv39.i.552, %130
  store i128 %add41.i.554, i128* %arrayidx30.i.105, align 16, !tbaa !2
  call fastcc void @felem_reduce(i64* %x_out, i128* %arraydecay10)
  %131 = load i64, i64* %arraydecay14, align 16, !tbaa !6
  %132 = load i64, i64* %arrayidx5.i.112, align 8, !tbaa !6
  %133 = load i64, i64* %arrayidx9.i.116, align 16, !tbaa !6
  %134 = load i64, i64* %arrayidx13.i.120, align 8, !tbaa !6
  %135 = load i64, i64* %arrayidx17.i.124, align 16, !tbaa !6
  %136 = load i64, i64* %arrayidx21.i.128, align 8, !tbaa !6
  %137 = load i64, i64* %arrayidx25.i.132, align 16, !tbaa !6
  %138 = load i64, i64* %arrayidx29.i.136, align 8, !tbaa !6
  %139 = load i64, i64* %arrayidx33.i.140, align 16, !tbaa !6
  %140 = bitcast i64* %y_in to <2 x i64>*
  %141 = load <2 x i64>, <2 x i64>* %140, align 8, !tbaa !6
  %arrayidx4.i.448 = getelementptr inbounds i64, i64* %y_in, i64 2
  %142 = bitcast i64* %arrayidx4.i.448 to <2 x i64>*
  %143 = load <2 x i64>, <2 x i64>* %142, align 8, !tbaa !6
  %arrayidx8.i.452 = getelementptr inbounds i64, i64* %y_in, i64 4
  %144 = bitcast i64* %arrayidx8.i.452 to <2 x i64>*
  %145 = load <2 x i64>, <2 x i64>* %144, align 8, !tbaa !6
  %arrayidx12.i.456 = getelementptr inbounds i64, i64* %y_in, i64 6
  %146 = bitcast i64* %arrayidx12.i.456 to <2 x i64>*
  %147 = load <2 x i64>, <2 x i64>* %146, align 8, !tbaa !6
  %arrayidx16.i.460 = getelementptr inbounds i64, i64* %y_in, i64 8
  %148 = load i64, i64* %arrayidx16.i.460, align 8, !tbaa !6
  %149 = bitcast i64* %z_in to <2 x i64>*
  %150 = load <2 x i64>, <2 x i64>* %149, align 8, !tbaa !6
  %151 = add <2 x i64> %141, %150
  %152 = bitcast [9 x i64]* %ftmp to <2 x i64>*
  store <2 x i64> %151, <2 x i64>* %152, align 16, !tbaa !6
  %arrayidx5.i.429 = getelementptr inbounds i64, i64* %z_in, i64 2
  %153 = bitcast i64* %arrayidx5.i.429 to <2 x i64>*
  %154 = load <2 x i64>, <2 x i64>* %153, align 8, !tbaa !6
  %155 = add <2 x i64> %143, %154
  %156 = bitcast i64* %arrayidx5.i to <2 x i64>*
  store <2 x i64> %155, <2 x i64>* %156, align 16, !tbaa !6
  %arrayidx11.i.433 = getelementptr inbounds i64, i64* %z_in, i64 4
  %157 = bitcast i64* %arrayidx11.i.433 to <2 x i64>*
  %158 = load <2 x i64>, <2 x i64>* %157, align 8, !tbaa !6
  %159 = add <2 x i64> %145, %158
  %160 = bitcast i64* %arrayidx9.i to <2 x i64>*
  store <2 x i64> %159, <2 x i64>* %160, align 16, !tbaa !6
  %arrayidx17.i.439 = getelementptr inbounds i64, i64* %z_in, i64 6
  %161 = bitcast i64* %arrayidx17.i.439 to <2 x i64>*
  %162 = load <2 x i64>, <2 x i64>* %161, align 8, !tbaa !6
  %163 = add <2 x i64> %147, %162
  %164 = bitcast i64* %arrayidx13.i to <2 x i64>*
  store <2 x i64> %163, <2 x i64>* %164, align 16, !tbaa !6
  %arrayidx23.i.443 = getelementptr inbounds i64, i64* %z_in, i64 8
  %165 = load i64, i64* %arrayidx23.i.443, align 8, !tbaa !6
  %add25.i.445 = add i64 %148, %165
  store i64 %add25.i.445, i64* %arrayidx17.i, align 16, !tbaa !6
  call fastcc void @felem_square(i128* %arraydecay10, i64* %arraydecay)
  %sub.i.373 = sub i64 %sub.i.392, %131
  %conv.i.374 = zext i64 %sub.i.373 to i128
  %166 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %add.i.375 = add i128 %166, %conv.i.374
  store i128 %add.i.375, i128* %arraydecay10, align 16, !tbaa !2
  %sub3.i.377 = sub i64 %sub3.i.395, %132
  %conv4.i = zext i64 %sub3.i.377 to i128
  %167 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %add6.i = add i128 %167, %conv4.i
  store i128 %add6.i, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %sub8.i = sub i64 %sub7.i.399, %133
  %conv9.i = zext i64 %sub8.i to i128
  %168 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %add11.i = add i128 %168, %conv9.i
  store i128 %add11.i, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %sub13.i = sub i64 %sub11.i.403, %134
  %conv14.i = zext i64 %sub13.i to i128
  %169 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %add16.i = add i128 %169, %conv14.i
  store i128 %add16.i, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %sub18.i = sub i64 %sub15.i.407, %135
  %conv19.i.384 = zext i64 %sub18.i to i128
  %170 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %add21.i.386 = add i128 %170, %conv19.i.384
  store i128 %add21.i.386, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %sub23.i.388 = sub i64 %sub19.i.411, %136
  %conv24.i = zext i64 %sub23.i.388 to i128
  %171 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %add26.i = add i128 %171, %conv24.i
  store i128 %add26.i, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %sub28.i = sub i64 %sub23.i.415, %137
  %conv29.i = zext i64 %sub28.i to i128
  %172 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %add31.i = add i128 %172, %conv29.i
  store i128 %add31.i, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %sub33.i = sub i64 %sub27.i.419, %138
  %conv34.i = zext i64 %sub33.i to i128
  %173 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %add36.i = add i128 %173, %conv34.i
  store i128 %add36.i, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %sub38.i = sub i64 %sub31.i.423, %139
  %conv39.i = zext i64 %sub38.i to i128
  %174 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %add41.i = add i128 %174, %conv39.i
  store i128 %add41.i, i128* %arrayidx30.i.105, align 16, !tbaa !2
  call fastcc void @felem_reduce(i64* %z_out, i128* %arraydecay10)
  %175 = load i64, i64* %arraydecay18, align 16, !tbaa !6
  %mul.i.252 = shl i64 %175, 2
  %176 = bitcast i64* %arrayidx5.i.267 to <2 x i64>*
  %177 = load <2 x i64>, <2 x i64>* %176, align 8, !tbaa !6
  %178 = shl <2 x i64> %177, <i64 2, i64 2>
  %179 = bitcast i64* %arrayidx13.i.275 to <2 x i64>*
  %180 = load <2 x i64>, <2 x i64>* %179, align 8, !tbaa !6
  %181 = shl <2 x i64> %180, <i64 2, i64 2>
  %182 = load i64, i64* %arrayidx21.i.283, align 8, !tbaa !6
  %mul10.i = shl i64 %182, 2
  %183 = bitcast i64* %arrayidx25.i.287 to <2 x i64>*
  %184 = load <2 x i64>, <2 x i64>* %183, align 16, !tbaa !6
  %185 = shl <2 x i64> %184, <i64 2, i64 2>
  %186 = load i64, i64* %arrayidx33.i.295, align 16, !tbaa !6
  %mul16.i = shl i64 %186, 2
  %187 = load i64, i64* %x_out, align 8, !tbaa !6
  %sub.i.218 = sub i64 4611686018427387872, %187
  %add.i.219 = add i64 %sub.i.218, %mul.i.252
  store i64 %add.i.219, i64* %arraydecay18, align 16, !tbaa !6
  %arrayidx2.i.220 = getelementptr inbounds i64, i64* %x_out, i64 1
  %188 = bitcast i64* %arrayidx2.i.220 to <2 x i64>*
  %189 = load <2 x i64>, <2 x i64>* %188, align 8, !tbaa !6
  %190 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %189
  %191 = add <2 x i64> %190, %178
  %192 = bitcast i64* %arrayidx5.i.267 to <2 x i64>*
  store <2 x i64> %191, <2 x i64>* %192, align 8, !tbaa !6
  %arrayidx10.i.228 = getelementptr inbounds i64, i64* %x_out, i64 3
  %193 = bitcast i64* %arrayidx10.i.228 to <2 x i64>*
  %194 = load <2 x i64>, <2 x i64>* %193, align 8, !tbaa !6
  %195 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %194
  %196 = add <2 x i64> %195, %181
  %197 = bitcast i64* %arrayidx13.i.275 to <2 x i64>*
  store <2 x i64> %196, <2 x i64>* %197, align 8, !tbaa !6
  %arrayidx18.i.236 = getelementptr inbounds i64, i64* %x_out, i64 5
  %198 = load i64, i64* %arrayidx18.i.236, align 8, !tbaa !6
  %sub19.i.237 = sub i64 4611686018427387888, %198
  %add21.i.239 = add i64 %sub19.i.237, %mul10.i
  store i64 %add21.i.239, i64* %arrayidx21.i.283, align 8, !tbaa !6
  %arrayidx22.i.240 = getelementptr inbounds i64, i64* %x_out, i64 6
  %199 = bitcast i64* %arrayidx22.i.240 to <2 x i64>*
  %200 = load <2 x i64>, <2 x i64>* %199, align 8, !tbaa !6
  %201 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %200
  %202 = add <2 x i64> %201, %185
  %203 = bitcast i64* %arrayidx25.i.287 to <2 x i64>*
  store <2 x i64> %202, <2 x i64>* %203, align 16, !tbaa !6
  %arrayidx30.i.248 = getelementptr inbounds i64, i64* %x_out, i64 8
  %204 = load i64, i64* %arrayidx30.i.248, align 8, !tbaa !6
  %sub31.i.249 = sub i64 4611686018427387888, %204
  %add33.i.251 = add i64 %sub31.i.249, %mul16.i
  store i64 %add33.i.251, i64* %arrayidx33.i.295, align 16, !tbaa !6
  call fastcc void @felem_mul(i128* %arraydecay10, i64* %arraydecay28, i64* %arraydecay18)
  %arraydecay52 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay52, i64* %arraydecay14)
  %205 = load i128, i128* %arraydecay52, align 16, !tbaa !2
  %mul.i = shl i128 %205, 3
  store i128 %mul.i, i128* %arraydecay52, align 16, !tbaa !2
  %arrayidx2.i.87 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 1
  %206 = load i128, i128* %arrayidx2.i.87, align 16, !tbaa !2
  %mul3.i = shl i128 %206, 3
  store i128 %mul3.i, i128* %arrayidx2.i.87, align 16, !tbaa !2
  %arrayidx5.i.88 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 2
  %207 = load i128, i128* %arrayidx5.i.88, align 16, !tbaa !2
  %mul6.i = shl i128 %207, 3
  store i128 %mul6.i, i128* %arrayidx5.i.88, align 16, !tbaa !2
  %arrayidx8.i.89 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 3
  %208 = load i128, i128* %arrayidx8.i.89, align 16, !tbaa !2
  %mul9.i = shl i128 %208, 3
  store i128 %mul9.i, i128* %arrayidx8.i.89, align 16, !tbaa !2
  %arrayidx11.i.90 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 4
  %209 = load i128, i128* %arrayidx11.i.90, align 16, !tbaa !2
  %mul12.i = shl i128 %209, 3
  store i128 %mul12.i, i128* %arrayidx11.i.90, align 16, !tbaa !2
  %arrayidx14.i.91 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 5
  %210 = load i128, i128* %arrayidx14.i.91, align 16, !tbaa !2
  %mul15.i = shl i128 %210, 3
  store i128 %mul15.i, i128* %arrayidx14.i.91, align 16, !tbaa !2
  %arrayidx17.i.92 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 6
  %211 = load i128, i128* %arrayidx17.i.92, align 16, !tbaa !2
  %mul18.i = shl i128 %211, 3
  store i128 %mul18.i, i128* %arrayidx17.i.92, align 16, !tbaa !2
  %arrayidx20.i.93 = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 7
  %212 = load i128, i128* %arrayidx20.i.93, align 16, !tbaa !2
  %mul21.i = shl i128 %212, 3
  store i128 %mul21.i, i128* %arrayidx20.i.93, align 16, !tbaa !2
  %arrayidx23.i = getelementptr inbounds [9 x i128], [9 x i128]* %tmp2, i64 0, i64 8
  %213 = load i128, i128* %arrayidx23.i, align 16, !tbaa !2
  %mul24.i = shl i128 %213, 3
  %sub.i = sub i128 170141183460469230551095682998472802304, %mul.i
  %214 = load i128, i128* %arraydecay10, align 16, !tbaa !2
  %add.i = add i128 %sub.i, %214
  store i128 %add.i, i128* %arraydecay10, align 16, !tbaa !2
  %sub3.i = sub i128 170141183460469231141391493357178454016, %mul3.i
  %215 = load i128, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %add5.i = add i128 %sub3.i, %215
  store i128 %add5.i, i128* %arrayidx2.i.94, align 16, !tbaa !2
  %sub7.i = sub i128 170141183460469231141391493357178454016, %mul6.i
  %216 = load i128, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %add9.i = add i128 %sub7.i, %216
  store i128 %add9.i, i128* %arrayidx6.i.96, align 16, !tbaa !2
  %sub11.i = sub i128 170141183460469231141391493357178454016, %mul9.i
  %217 = load i128, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %add13.i = add i128 %sub11.i, %217
  store i128 %add13.i, i128* %arrayidx10.i.98, align 16, !tbaa !2
  %sub15.i = sub i128 170141183460469231141391493357178454016, %mul12.i
  %218 = load i128, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %add17.i = add i128 %sub15.i, %218
  store i128 %add17.i, i128* %arrayidx14.i.100, align 16, !tbaa !2
  %sub19.i = sub i128 170141183460469231141391493357178454016, %mul15.i
  %219 = load i128, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %add21.i = add i128 %sub19.i, %219
  store i128 %add21.i, i128* %arrayidx18.i.102, align 16, !tbaa !2
  %sub23.i = sub i128 170141183460469231141391493357178454016, %mul18.i
  %220 = load i128, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %add25.i = add i128 %sub23.i, %220
  store i128 %add25.i, i128* %arrayidx22.i.103, align 16, !tbaa !2
  %sub27.i = sub i128 170141183460469231141391493357178454016, %mul21.i
  %221 = load i128, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %add29.i = add i128 %sub27.i, %221
  store i128 %add29.i, i128* %arrayidx26.i.104, align 16, !tbaa !2
  %sub31.i = sub i128 170141183460469231141391493357178454016, %mul24.i
  %222 = load i128, i128* %arrayidx30.i.105, align 16, !tbaa !2
  %add33.i = add i128 %sub31.i, %222
  store i128 %add33.i, i128* %arrayidx30.i.105, align 16, !tbaa !2
  call fastcc void @felem_reduce(i64* %y_out, i128* %arraydecay10)
  call void @llvm.lifetime.end(i64 72, i8* %6) #1
  call void @llvm.lifetime.end(i64 72, i8* %5) #1
  call void @llvm.lifetime.end(i64 72, i8* %4) #1
  call void @llvm.lifetime.end(i64 72, i8* %3) #1
  call void @llvm.lifetime.end(i64 72, i8* %2) #1
  call void @llvm.lifetime.end(i64 144, i8* %1) #1
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @batch_mul(i64* nocapture %x_out, i64* nocapture %y_out, i64* nocapture %z_out, [66 x i8]* nocapture readonly %scalars, i32 %num_points, i8* readonly %g_scalar, i32 %mixed, [17 x [3 x [9 x i64]]]* nocapture readonly %pre_comp, [3 x [9 x i64]]* nocapture readonly %g_pre_comp) #0 {
entry:
  %nq = alloca [3 x [9 x i64]], align 16
  %tmp = alloca [4 x [9 x i64]], align 16
  %sign = alloca i8, align 1
  %digit = alloca i8, align 1
  %cmp = icmp ne i8* %g_scalar, null
  %0 = bitcast [3 x [9 x i64]]* %nq to i8*
  call void @llvm.lifetime.start(i64 216, i8* %0) #1
  %1 = bitcast [4 x [9 x i64]]* %tmp to i8*
  call void @llvm.lifetime.start(i64 288, i8* %1) #1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %sign) #1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %digit) #1
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 216, i32 16, i1 false)
  %tobool = icmp ne i32 %num_points, 0
  %cond = select i1 %tobool, i32 520, i32 130
  %arraydecay45 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 1, i64 0
  %arraydecay49 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 2, i64 0
  %arraydecay57 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 0
  %arraydecay59 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 1, i64 0
  %arraydecay61 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 2, i64 0
  %arraydecay128 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 0
  %arrayidx4.i.272 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 1
  %arrayidx5.i.273 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 1, i64 2
  %arrayidx7.i.274 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 2
  %arrayidx10.i.276 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 3
  %arrayidx11.i.277 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 1, i64 4
  %arrayidx13.i.278 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 4
  %arrayidx16.i.280 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 5
  %arrayidx17.i.281 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 1, i64 6
  %arrayidx19.i = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 6
  %arrayidx20.i = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 1, i64 7
  %arrayidx22.i = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 7
  %arrayidx25.i = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 3, i64 8
  %2 = bitcast [4 x [9 x i64]]* %tmp to <2 x i64>*
  %3 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 2
  %4 = bitcast i64* %3 to <2 x i64>*
  %5 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 4
  %6 = bitcast i64* %5 to <2 x i64>*
  %7 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 6
  %8 = bitcast i64* %7 to <2 x i64>*
  %9 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 8
  %10 = bitcast i64* %9 to <2 x i64>*
  %11 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 10
  %12 = bitcast i64* %11 to <2 x i64>*
  %13 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 12
  %14 = bitcast i64* %13 to <2 x i64>*
  %15 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 14
  %16 = bitcast i64* %15 to <2 x i64>*
  %17 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 16
  %18 = bitcast i64* %17 to <2 x i64>*
  %19 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 18
  %20 = bitcast i64* %19 to <2 x i64>*
  %21 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 20
  %22 = bitcast i64* %21 to <2 x i64>*
  %23 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 22
  %24 = bitcast i64* %23 to <2 x i64>*
  %25 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 24
  %26 = bitcast i64* %25 to <2 x i64>*
  %arrayidx17.i.385 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 26
  %27 = bitcast [4 x [9 x i64]]* %tmp to <2 x i64>*
  %28 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 2
  %29 = bitcast i64* %28 to <2 x i64>*
  %30 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 4
  %31 = bitcast i64* %30 to <2 x i64>*
  %32 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 6
  %33 = bitcast i64* %32 to <2 x i64>*
  %34 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 8
  %35 = bitcast i64* %34 to <2 x i64>*
  %36 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 10
  %37 = bitcast i64* %36 to <2 x i64>*
  %38 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 12
  %39 = bitcast i64* %38 to <2 x i64>*
  %40 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 14
  %41 = bitcast i64* %40 to <2 x i64>*
  %42 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 16
  %43 = bitcast i64* %42 to <2 x i64>*
  %44 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 18
  %45 = bitcast i64* %44 to <2 x i64>*
  %46 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 20
  %47 = bitcast i64* %46 to <2 x i64>*
  %48 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 22
  %49 = bitcast i64* %48 to <2 x i64>*
  %50 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 24
  %51 = bitcast i64* %50 to <2 x i64>*
  %arrayidx17.i.286 = getelementptr inbounds [4 x [9 x i64]], [4 x [9 x i64]]* %tmp, i64 0, i64 0, i64 26
  %52 = bitcast i64* %arraydecay59 to <2 x i64>*
  %53 = bitcast i64* %arrayidx5.i.273 to <2 x i64>*
  %54 = bitcast i64* %arrayidx11.i.277 to <2 x i64>*
  %55 = bitcast i64* %arrayidx20.i to <2 x i64>*
  %56 = bitcast i64* %arraydecay59 to <2 x i64>*
  %57 = bitcast i64* %arrayidx5.i.273 to <2 x i64>*
  %58 = bitcast i64* %arrayidx11.i.277 to <2 x i64>*
  %59 = bitcast i64* %arrayidx20.i to <2 x i64>*
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc.160
  %i.0417 = phi i32 [ %cond, %entry ], [ %dec, %for.inc.160 ]
  %skip.0416 = phi i32 [ 1, %entry ], [ %skip.4, %for.inc.160 ]
  %tobool6 = icmp ne i32 %skip.0416, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call fastcc void @point_double(i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49, i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %cmp18 = icmp slt i32 %i.0417, 131
  %or.cond = and i1 %cmp, %cmp18
  br i1 %or.cond, label %if.then.20, label %if.end.63

if.then.20:                                       ; preds = %if.end
  %add = add nsw i32 %i.0417, 390
  %cmp.i = icmp slt i32 %i.0417, -390
  br i1 %cmp.i, label %get_bit.exit370.thread, label %get_bit.exit

get_bit.exit:                                     ; preds = %if.then.20
  %shr.i = ashr i32 %add, 3
  %idxprom.i = sext i32 %shr.i to i64
  %arrayidx.i = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i
  %60 = load i8, i8* %arrayidx.i, align 1, !tbaa !17
  %conv.i = zext i8 %60 to i32
  %and.i = and i32 %add, 7
  %shr1.i = lshr i32 %conv.i, %and.i
  %conv3.i = shl i32 %shr1.i, 3
  %shl = and i32 %conv3.i, 8
  %conv22.408 = zext i32 %shl to i64
  %cmp23 = icmp slt i32 %i.0417, 130
  br i1 %cmp23, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %get_bit.exit
  %add26 = add nsw i32 %i.0417, 260
  %cmp.i.258 = icmp slt i32 %i.0417, -260
  br i1 %cmp.i.258, label %get_bit.exit370.thread, label %get_bit.exit269

get_bit.exit269:                                  ; preds = %if.then.25
  %shr.i.259 = ashr i32 %add26, 3
  %idxprom.i.260 = sext i32 %shr.i.259 to i64
  %arrayidx.i.261 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.260
  %61 = load i8, i8* %arrayidx.i.261, align 1, !tbaa !17
  %conv.i.262 = zext i8 %61 to i32
  %and.i.263 = and i32 %add26, 7
  %shr1.i.264 = lshr i32 %conv.i.262, %and.i.263
  %conv3.i.266 = shl i32 %shr1.i.264, 2
  %shl29 = and i32 %conv3.i.266, 4
  %or223 = or i32 %shl29, %shl
  %add31 = add nsw i32 %i.0417, 130
  %cmp.i.359 = icmp slt i32 %i.0417, -130
  br i1 %cmp.i.359, label %get_bit.exit370.thread, label %get_bit.exit370

get_bit.exit370.thread:                           ; preds = %get_bit.exit269, %if.then.25, %if.then.20
  %or223433.ph = phi i32 [ %or223, %get_bit.exit269 ], [ %shl, %if.then.25 ], [ 0, %if.then.20 ]
  %or36.411.436 = zext i32 %or223433.ph to i64
  br label %get_bit.exit406

get_bit.exit370:                                  ; preds = %get_bit.exit269
  %shr.i.360 = ashr i32 %add31, 3
  %idxprom.i.361 = sext i32 %shr.i.360 to i64
  %arrayidx.i.362 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.361
  %62 = load i8, i8* %arrayidx.i.362, align 1, !tbaa !17
  %conv.i.363 = zext i8 %62 to i32
  %and.i.364 = and i32 %add31, 7
  %shr1.i.365 = lshr i32 %conv.i.363, %and.i.364
  %conv3.i.367 = shl i32 %shr1.i.365, 1
  %shl34 = and i32 %conv3.i.367, 2
  %or36224 = or i32 %or223, %shl34
  %or36.411 = zext i32 %or36224 to i64
  %cmp.i.395 = icmp slt i32 %i.0417, 0
  br i1 %cmp.i.395, label %get_bit.exit406, label %if.end.i.404

if.end.i.404:                                     ; preds = %get_bit.exit370
  %shr.i.396 = ashr i32 %i.0417, 3
  %idxprom.i.397 = sext i32 %shr.i.396 to i64
  %arrayidx.i.398 = getelementptr inbounds i8, i8* %g_scalar, i64 %idxprom.i.397
  %63 = load i8, i8* %arrayidx.i.398, align 1, !tbaa !17
  %conv.i.399 = zext i8 %63 to i32
  %and.i.400 = and i32 %i.0417, 7
  %shr1.i.401 = lshr i32 %conv.i.399, %and.i.400
  %shr1.tr.i.402 = zext i32 %shr1.i.401 to i64
  %conv3.i.403 = and i64 %shr1.tr.i.402, 1
  br label %get_bit.exit406

get_bit.exit406:                                  ; preds = %get_bit.exit370.thread, %get_bit.exit370, %if.end.i.404
  %or36.411438 = phi i64 [ %or36.411, %if.end.i.404 ], [ %or36.411, %get_bit.exit370 ], [ %or36.411.436, %get_bit.exit370.thread ]
  %retval.0.i.405 = phi i64 [ %conv3.i.403, %if.end.i.404 ], [ 0, %get_bit.exit370 ], [ 0, %get_bit.exit370.thread ]
  %or39 = or i64 %retval.0.i.405, %or36.411438
  br label %if.end.40

if.end.40:                                        ; preds = %get_bit.exit406, %get_bit.exit
  %bits.0 = phi i64 [ %or39, %get_bit.exit406 ], [ %conv22.408, %get_bit.exit ]
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 216, i32 16, i1 false) #1
  %.promoted = load <2 x i64>, <2 x i64>* %2, align 16, !tbaa !6
  %.promoted463 = load <2 x i64>, <2 x i64>* %4, align 16, !tbaa !6
  %.promoted466 = load <2 x i64>, <2 x i64>* %6, align 16, !tbaa !6
  %.promoted469 = load <2 x i64>, <2 x i64>* %8, align 16, !tbaa !6
  %.promoted472 = load <2 x i64>, <2 x i64>* %10, align 16, !tbaa !6
  %.promoted475 = load <2 x i64>, <2 x i64>* %12, align 16, !tbaa !6
  %.promoted478 = load <2 x i64>, <2 x i64>* %14, align 16, !tbaa !6
  %.promoted481 = load <2 x i64>, <2 x i64>* %16, align 16, !tbaa !6
  %.promoted484 = load <2 x i64>, <2 x i64>* %18, align 16, !tbaa !6
  %.promoted487 = load <2 x i64>, <2 x i64>* %20, align 16, !tbaa !6
  %.promoted490 = load <2 x i64>, <2 x i64>* %22, align 16, !tbaa !6
  %.promoted493 = load <2 x i64>, <2 x i64>* %24, align 16, !tbaa !6
  %.promoted496 = load <2 x i64>, <2 x i64>* %26, align 16, !tbaa !6
  %arrayidx17.i.385.promoted = load i64, i64* %arrayidx17.i.385, align 16, !tbaa !6
  br label %for.body.i.381

for.body.i.381:                                   ; preds = %for.body.12.i.389, %if.end.40
  %64 = phi i64 [ %or18.i.386, %for.body.12.i.389 ], [ %arrayidx17.i.385.promoted, %if.end.40 ]
  %wide.load461.12497 = phi <2 x i64> [ %116, %for.body.12.i.389 ], [ %.promoted496, %if.end.40 ]
  %wide.load461.11494 = phi <2 x i64> [ %112, %for.body.12.i.389 ], [ %.promoted493, %if.end.40 ]
  %wide.load461.10491 = phi <2 x i64> [ %108, %for.body.12.i.389 ], [ %.promoted490, %if.end.40 ]
  %wide.load461.9488 = phi <2 x i64> [ %104, %for.body.12.i.389 ], [ %.promoted487, %if.end.40 ]
  %wide.load461.8485 = phi <2 x i64> [ %100, %for.body.12.i.389 ], [ %.promoted484, %if.end.40 ]
  %wide.load461.7482 = phi <2 x i64> [ %96, %for.body.12.i.389 ], [ %.promoted481, %if.end.40 ]
  %wide.load461.6479 = phi <2 x i64> [ %92, %for.body.12.i.389 ], [ %.promoted478, %if.end.40 ]
  %wide.load461.5476 = phi <2 x i64> [ %88, %for.body.12.i.389 ], [ %.promoted475, %if.end.40 ]
  %wide.load461.4473 = phi <2 x i64> [ %84, %for.body.12.i.389 ], [ %.promoted472, %if.end.40 ]
  %wide.load461.3470 = phi <2 x i64> [ %80, %for.body.12.i.389 ], [ %.promoted469, %if.end.40 ]
  %wide.load461.2467 = phi <2 x i64> [ %76, %for.body.12.i.389 ], [ %.promoted466, %if.end.40 ]
  %wide.load461.1464 = phi <2 x i64> [ %72, %for.body.12.i.389 ], [ %.promoted463, %if.end.40 ]
  %wide.load461462 = phi <2 x i64> [ %68, %for.body.12.i.389 ], [ %.promoted, %if.end.40 ]
  %indvars.iv45.i.371 = phi i64 [ %indvars.iv.next46.i.390, %for.body.12.i.389 ], [ 0, %if.end.40 ]
  %xor.i.372 = xor i64 %indvars.iv45.i.371, %bits.0
  %shr.i.373 = lshr i64 %xor.i.372, 4
  %or.i.374 = or i64 %shr.i.373, %xor.i.372
  %shr5.i.375 = lshr i64 %or.i.374, 2
  %or6.i.376 = or i64 %shr5.i.375, %or.i.374
  %shr7.i.377 = lshr i64 %or6.i.376, 1
  %or8.i.378 = or i64 %shr7.i.377, %or6.i.376
  %and.i.379 = and i64 %or8.i.378, 1
  %dec.i.380 = add nsw i64 %and.i.379, -1
  %broadcast.splatinsert459 = insertelement <2 x i64> undef, i64 %dec.i.380, i32 0
  %broadcast.splat460 = shufflevector <2 x i64> %broadcast.splatinsert459, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %vector.body443

vector.body443:                                   ; preds = %for.body.i.381
  %65 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 0
  %66 = bitcast i64* %65 to <2 x i64>*
  %wide.load458 = load <2 x i64>, <2 x i64>* %66, align 8, !tbaa !6
  %67 = and <2 x i64> %wide.load458, %broadcast.splat460
  %68 = or <2 x i64> %wide.load461462, %67
  %69 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 2
  %70 = bitcast i64* %69 to <2 x i64>*
  %wide.load458.1 = load <2 x i64>, <2 x i64>* %70, align 8, !tbaa !6
  %71 = and <2 x i64> %wide.load458.1, %broadcast.splat460
  %72 = or <2 x i64> %wide.load461.1464, %71
  %73 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 4
  %74 = bitcast i64* %73 to <2 x i64>*
  %wide.load458.2 = load <2 x i64>, <2 x i64>* %74, align 8, !tbaa !6
  %75 = and <2 x i64> %wide.load458.2, %broadcast.splat460
  %76 = or <2 x i64> %wide.load461.2467, %75
  %77 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 6
  %78 = bitcast i64* %77 to <2 x i64>*
  %wide.load458.3 = load <2 x i64>, <2 x i64>* %78, align 8, !tbaa !6
  %79 = and <2 x i64> %wide.load458.3, %broadcast.splat460
  %80 = or <2 x i64> %wide.load461.3470, %79
  %81 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 8
  %82 = bitcast i64* %81 to <2 x i64>*
  %wide.load458.4 = load <2 x i64>, <2 x i64>* %82, align 8, !tbaa !6
  %83 = and <2 x i64> %wide.load458.4, %broadcast.splat460
  %84 = or <2 x i64> %wide.load461.4473, %83
  %85 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 10
  %86 = bitcast i64* %85 to <2 x i64>*
  %wide.load458.5 = load <2 x i64>, <2 x i64>* %86, align 8, !tbaa !6
  %87 = and <2 x i64> %wide.load458.5, %broadcast.splat460
  %88 = or <2 x i64> %wide.load461.5476, %87
  %89 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 12
  %90 = bitcast i64* %89 to <2 x i64>*
  %wide.load458.6 = load <2 x i64>, <2 x i64>* %90, align 8, !tbaa !6
  %91 = and <2 x i64> %wide.load458.6, %broadcast.splat460
  %92 = or <2 x i64> %wide.load461.6479, %91
  %93 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 14
  %94 = bitcast i64* %93 to <2 x i64>*
  %wide.load458.7 = load <2 x i64>, <2 x i64>* %94, align 8, !tbaa !6
  %95 = and <2 x i64> %wide.load458.7, %broadcast.splat460
  %96 = or <2 x i64> %wide.load461.7482, %95
  %97 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 16
  %98 = bitcast i64* %97 to <2 x i64>*
  %wide.load458.8 = load <2 x i64>, <2 x i64>* %98, align 8, !tbaa !6
  %99 = and <2 x i64> %wide.load458.8, %broadcast.splat460
  %100 = or <2 x i64> %wide.load461.8485, %99
  %101 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 18
  %102 = bitcast i64* %101 to <2 x i64>*
  %wide.load458.9 = load <2 x i64>, <2 x i64>* %102, align 8, !tbaa !6
  %103 = and <2 x i64> %wide.load458.9, %broadcast.splat460
  %104 = or <2 x i64> %wide.load461.9488, %103
  %105 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 20
  %106 = bitcast i64* %105 to <2 x i64>*
  %wide.load458.10 = load <2 x i64>, <2 x i64>* %106, align 8, !tbaa !6
  %107 = and <2 x i64> %wide.load458.10, %broadcast.splat460
  %108 = or <2 x i64> %wide.load461.10491, %107
  %109 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 22
  %110 = bitcast i64* %109 to <2 x i64>*
  %wide.load458.11 = load <2 x i64>, <2 x i64>* %110, align 8, !tbaa !6
  %111 = and <2 x i64> %wide.load458.11, %broadcast.splat460
  %112 = or <2 x i64> %wide.load461.11494, %111
  %113 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 24
  %114 = bitcast i64* %113 to <2 x i64>*
  %wide.load458.12 = load <2 x i64>, <2 x i64>* %114, align 8, !tbaa !6
  %115 = and <2 x i64> %wide.load458.12, %broadcast.splat460
  %116 = or <2 x i64> %wide.load461.12497, %115
  br label %for.body.12.i.389

for.body.12.i.389:                                ; preds = %vector.body443
  %arrayidx14.i.383 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %g_pre_comp, i64 %indvars.iv45.i.371, i64 0, i64 26
  %117 = load i64, i64* %arrayidx14.i.383, align 8, !tbaa !6
  %and15.i.384 = and i64 %117, %dec.i.380
  %or18.i.386 = or i64 %64, %and15.i.384
  %indvars.iv.next46.i.390 = add nuw nsw i64 %indvars.iv45.i.371, 1
  %exitcond = icmp eq i64 %indvars.iv.next46.i.390, 16
  br i1 %exitcond, label %select_point.exit394, label %for.body.i.381

select_point.exit394:                             ; preds = %for.body.12.i.389
  %or18.i.386.lcssa = phi i64 [ %or18.i.386, %for.body.12.i.389 ]
  %.lcssa498 = phi <2 x i64> [ %116, %for.body.12.i.389 ]
  %.lcssa495 = phi <2 x i64> [ %112, %for.body.12.i.389 ]
  %.lcssa492 = phi <2 x i64> [ %108, %for.body.12.i.389 ]
  %.lcssa489 = phi <2 x i64> [ %104, %for.body.12.i.389 ]
  %.lcssa486 = phi <2 x i64> [ %100, %for.body.12.i.389 ]
  %.lcssa483 = phi <2 x i64> [ %96, %for.body.12.i.389 ]
  %.lcssa480 = phi <2 x i64> [ %92, %for.body.12.i.389 ]
  %.lcssa477 = phi <2 x i64> [ %88, %for.body.12.i.389 ]
  %.lcssa474 = phi <2 x i64> [ %84, %for.body.12.i.389 ]
  %.lcssa471 = phi <2 x i64> [ %80, %for.body.12.i.389 ]
  %.lcssa468 = phi <2 x i64> [ %76, %for.body.12.i.389 ]
  %.lcssa465 = phi <2 x i64> [ %72, %for.body.12.i.389 ]
  %.lcssa = phi <2 x i64> [ %68, %for.body.12.i.389 ]
  store <2 x i64> %.lcssa, <2 x i64>* %2, align 16, !tbaa !6
  store <2 x i64> %.lcssa465, <2 x i64>* %4, align 16, !tbaa !6
  store <2 x i64> %.lcssa468, <2 x i64>* %6, align 16, !tbaa !6
  store <2 x i64> %.lcssa471, <2 x i64>* %8, align 16, !tbaa !6
  store <2 x i64> %.lcssa474, <2 x i64>* %10, align 16, !tbaa !6
  store <2 x i64> %.lcssa477, <2 x i64>* %12, align 16, !tbaa !6
  store <2 x i64> %.lcssa480, <2 x i64>* %14, align 16, !tbaa !6
  store <2 x i64> %.lcssa483, <2 x i64>* %16, align 16, !tbaa !6
  store <2 x i64> %.lcssa486, <2 x i64>* %18, align 16, !tbaa !6
  store <2 x i64> %.lcssa489, <2 x i64>* %20, align 16, !tbaa !6
  store <2 x i64> %.lcssa492, <2 x i64>* %22, align 16, !tbaa !6
  store <2 x i64> %.lcssa495, <2 x i64>* %24, align 16, !tbaa !6
  store <2 x i64> %.lcssa498, <2 x i64>* %26, align 16, !tbaa !6
  store i64 %or18.i.386.lcssa, i64* %arrayidx17.i.385, align 16, !tbaa !6
  br i1 %tobool6, label %if.else, label %if.then.43

if.then.43:                                       ; preds = %select_point.exit394
  call fastcc void @point_add(i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49, i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49, i32 1, i64* %arraydecay57, i64* %arraydecay59, i64* %arraydecay61)
  br label %if.end.63

if.else:                                          ; preds = %select_point.exit394
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 216, i32 16, i1 false)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.43, %if.else, %if.end
  %skip.1 = phi i32 [ 0, %if.else ], [ 0, %if.then.43 ], [ %skip.0416, %if.end ]
  %rem = srem i32 %i.0417, 5
  %cmp66 = icmp eq i32 %rem, 0
  %or.cond225 = and i1 %tobool, %cmp66
  br i1 %or.cond225, label %for.body.72.lr.ph, label %for.inc.160

for.body.72.lr.ph:                                ; preds = %if.end.63
  %add75 = add nsw i32 %i.0417, 4
  %cmp.i.347 = icmp slt i32 %i.0417, -4
  %add83 = add nsw i32 %i.0417, 3
  %cmp.i.335 = icmp slt i32 %i.0417, -3
  %add92 = add nsw i32 %i.0417, 2
  %cmp.i.323 = icmp slt i32 %i.0417, -2
  %add101 = add nsw i32 %i.0417, 1
  %cmp.i.311 = icmp slt i32 %i.0417, -1
  %cmp.i.299 = icmp slt i32 %i.0417, 0
  %sub = add nsw i32 %i.0417, -1
  %cmp.i.287 = icmp slt i32 %i.0417, 1
  %shr.i.288 = ashr i32 %sub, 3
  %idxprom.i.289 = sext i32 %shr.i.288 to i64
  %and.i.292 = and i32 %sub, 7
  %shr.i.300 = ashr i32 %i.0417, 3
  %idxprom.i.301 = sext i32 %shr.i.300 to i64
  %and.i.304 = and i32 %i.0417, 7
  %shr.i.312 = ashr i32 %add101, 3
  %idxprom.i.313 = sext i32 %shr.i.312 to i64
  %and.i.316 = and i32 %add101, 7
  %shr.i.324 = ashr i32 %add92, 3
  %idxprom.i.325 = sext i32 %shr.i.324 to i64
  %and.i.328 = and i32 %add92, 7
  %shr.i.336 = ashr i32 %add83, 3
  %idxprom.i.337 = sext i32 %shr.i.336 to i64
  %and.i.340 = and i32 %add83, 7
  %shr.i.348 = ashr i32 %add75, 3
  %idxprom.i.349 = sext i32 %shr.i.348 to i64
  %and.i.352 = and i32 %add75, 7
  br label %for.body.72

for.body.72:                                      ; preds = %for.inc, %for.body.72.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.72.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %skip.2414 = phi i32 [ %skip.1, %for.body.72.lr.ph ], [ 0, %for.inc ]
  br i1 %cmp.i.347, label %get_bit.exit358, label %if.end.i.356

if.end.i.356:                                     ; preds = %for.body.72
  %arrayidx.i.350 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.349
  %118 = load i8, i8* %arrayidx.i.350, align 1, !tbaa !17
  %conv.i.351 = zext i8 %118 to i32
  %shr1.i.353 = lshr i32 %conv.i.351, %and.i.352
  %shr1.tr.i.354 = trunc i32 %shr1.i.353 to i8
  %conv3.i.355 = and i8 %shr1.tr.i.354, 1
  br label %get_bit.exit358

get_bit.exit358:                                  ; preds = %for.body.72, %if.end.i.356
  %retval.0.i.357 = phi i8 [ %conv3.i.355, %if.end.i.356 ], [ 0, %for.body.72 ]
  %shl78 = shl nuw nsw i8 %retval.0.i.357, 5
  br i1 %cmp.i.335, label %get_bit.exit346, label %if.end.i.344

if.end.i.344:                                     ; preds = %get_bit.exit358
  %arrayidx.i.338 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.337
  %119 = load i8, i8* %arrayidx.i.338, align 1, !tbaa !17
  %conv.i.339 = zext i8 %119 to i32
  %shr1.i.341 = lshr i32 %conv.i.339, %and.i.340
  %shr1.tr.i.342 = trunc i32 %shr1.i.341 to i8
  %conv3.i.343 = and i8 %shr1.tr.i.342, 1
  br label %get_bit.exit346

get_bit.exit346:                                  ; preds = %get_bit.exit358, %if.end.i.344
  %retval.0.i.345 = phi i8 [ %conv3.i.343, %if.end.i.344 ], [ 0, %get_bit.exit358 ]
  %shl86 = shl nuw nsw i8 %retval.0.i.345, 4
  %or88217 = or i8 %shl86, %shl78
  br i1 %cmp.i.323, label %get_bit.exit334, label %if.end.i.332

if.end.i.332:                                     ; preds = %get_bit.exit346
  %arrayidx.i.326 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.325
  %120 = load i8, i8* %arrayidx.i.326, align 1, !tbaa !17
  %conv.i.327 = zext i8 %120 to i32
  %shr1.i.329 = lshr i32 %conv.i.327, %and.i.328
  %shr1.tr.i.330 = trunc i32 %shr1.i.329 to i8
  %conv3.i.331 = and i8 %shr1.tr.i.330, 1
  br label %get_bit.exit334

get_bit.exit334:                                  ; preds = %get_bit.exit346, %if.end.i.332
  %retval.0.i.333 = phi i8 [ %conv3.i.331, %if.end.i.332 ], [ 0, %get_bit.exit346 ]
  %shl95 = shl nuw nsw i8 %retval.0.i.333, 3
  %or97218 = or i8 %or88217, %shl95
  br i1 %cmp.i.311, label %get_bit.exit322, label %if.end.i.320

if.end.i.320:                                     ; preds = %get_bit.exit334
  %arrayidx.i.314 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.313
  %121 = load i8, i8* %arrayidx.i.314, align 1, !tbaa !17
  %conv.i.315 = zext i8 %121 to i32
  %shr1.i.317 = lshr i32 %conv.i.315, %and.i.316
  %shr1.tr.i.318 = trunc i32 %shr1.i.317 to i8
  %conv3.i.319 = and i8 %shr1.tr.i.318, 1
  br label %get_bit.exit322

get_bit.exit322:                                  ; preds = %get_bit.exit334, %if.end.i.320
  %retval.0.i.321 = phi i8 [ %conv3.i.319, %if.end.i.320 ], [ 0, %get_bit.exit334 ]
  %shl104 = shl nuw nsw i8 %retval.0.i.321, 2
  %or106219 = or i8 %or97218, %shl104
  br i1 %cmp.i.299, label %get_bit.exit310, label %if.end.i.308

if.end.i.308:                                     ; preds = %get_bit.exit322
  %arrayidx.i.302 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.301
  %122 = load i8, i8* %arrayidx.i.302, align 1, !tbaa !17
  %conv.i.303 = zext i8 %122 to i32
  %shr1.i.305 = lshr i32 %conv.i.303, %and.i.304
  %shr1.tr.i.306 = trunc i32 %shr1.i.305 to i8
  %conv3.i.307 = and i8 %shr1.tr.i.306, 1
  br label %get_bit.exit310

get_bit.exit310:                                  ; preds = %get_bit.exit322, %if.end.i.308
  %retval.0.i.309 = phi i8 [ %conv3.i.307, %if.end.i.308 ], [ 0, %get_bit.exit322 ]
  %shl112 = shl nuw nsw i8 %retval.0.i.309, 1
  %or114220 = or i8 %or106219, %shl112
  br i1 %cmp.i.287, label %get_bit.exit298, label %if.end.i.296

if.end.i.296:                                     ; preds = %get_bit.exit310
  %arrayidx.i.290 = getelementptr inbounds [66 x i8], [66 x i8]* %scalars, i64 %indvars.iv, i64 %idxprom.i.289
  %123 = load i8, i8* %arrayidx.i.290, align 1, !tbaa !17
  %conv.i.291 = zext i8 %123 to i32
  %shr1.i.293 = lshr i32 %conv.i.291, %and.i.292
  %shr1.tr.i.294 = trunc i32 %shr1.i.293 to i8
  %conv3.i.295 = and i8 %shr1.tr.i.294, 1
  br label %get_bit.exit298

get_bit.exit298:                                  ; preds = %get_bit.exit310, %if.end.i.296
  %retval.0.i.297 = phi i8 [ %conv3.i.295, %if.end.i.296 ], [ 0, %get_bit.exit310 ]
  %or120 = or i8 %or114220, %retval.0.i.297
  call void @ec_GFp_nistp_recode_scalar_bits(i8* nonnull %sign, i8* nonnull %digit, i8 zeroext %or120) #1
  %124 = load i8, i8* %digit, align 1, !tbaa !17
  %conv122 = zext i8 %124 to i64
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 216, i32 16, i1 false) #1
  %.promoted499 = load <2 x i64>, <2 x i64>* %27, align 16, !tbaa !6
  %.promoted502 = load <2 x i64>, <2 x i64>* %29, align 16, !tbaa !6
  %.promoted505 = load <2 x i64>, <2 x i64>* %31, align 16, !tbaa !6
  %.promoted508 = load <2 x i64>, <2 x i64>* %33, align 16, !tbaa !6
  %.promoted511 = load <2 x i64>, <2 x i64>* %35, align 16, !tbaa !6
  %.promoted514 = load <2 x i64>, <2 x i64>* %37, align 16, !tbaa !6
  %.promoted517 = load <2 x i64>, <2 x i64>* %39, align 16, !tbaa !6
  %.promoted520 = load <2 x i64>, <2 x i64>* %41, align 16, !tbaa !6
  %.promoted523 = load <2 x i64>, <2 x i64>* %43, align 16, !tbaa !6
  %.promoted526 = load <2 x i64>, <2 x i64>* %45, align 16, !tbaa !6
  %.promoted529 = load <2 x i64>, <2 x i64>* %47, align 16, !tbaa !6
  %.promoted532 = load <2 x i64>, <2 x i64>* %49, align 16, !tbaa !6
  %.promoted535 = load <2 x i64>, <2 x i64>* %51, align 16, !tbaa !6
  %arrayidx17.i.286.promoted = load i64, i64* %arrayidx17.i.286, align 16, !tbaa !6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.12.i, %get_bit.exit298
  %125 = phi i64 [ %or18.i, %for.body.12.i ], [ %arrayidx17.i.286.promoted, %get_bit.exit298 ]
  %wide.load441.12536 = phi <2 x i64> [ %177, %for.body.12.i ], [ %.promoted535, %get_bit.exit298 ]
  %wide.load441.11533 = phi <2 x i64> [ %173, %for.body.12.i ], [ %.promoted532, %get_bit.exit298 ]
  %wide.load441.10530 = phi <2 x i64> [ %169, %for.body.12.i ], [ %.promoted529, %get_bit.exit298 ]
  %wide.load441.9527 = phi <2 x i64> [ %165, %for.body.12.i ], [ %.promoted526, %get_bit.exit298 ]
  %wide.load441.8524 = phi <2 x i64> [ %161, %for.body.12.i ], [ %.promoted523, %get_bit.exit298 ]
  %wide.load441.7521 = phi <2 x i64> [ %157, %for.body.12.i ], [ %.promoted520, %get_bit.exit298 ]
  %wide.load441.6518 = phi <2 x i64> [ %153, %for.body.12.i ], [ %.promoted517, %get_bit.exit298 ]
  %wide.load441.5515 = phi <2 x i64> [ %149, %for.body.12.i ], [ %.promoted514, %get_bit.exit298 ]
  %wide.load441.4512 = phi <2 x i64> [ %145, %for.body.12.i ], [ %.promoted511, %get_bit.exit298 ]
  %wide.load441.3509 = phi <2 x i64> [ %141, %for.body.12.i ], [ %.promoted508, %get_bit.exit298 ]
  %wide.load441.2506 = phi <2 x i64> [ %137, %for.body.12.i ], [ %.promoted505, %get_bit.exit298 ]
  %wide.load441.1503 = phi <2 x i64> [ %133, %for.body.12.i ], [ %.promoted502, %get_bit.exit298 ]
  %wide.load441500 = phi <2 x i64> [ %129, %for.body.12.i ], [ %.promoted499, %get_bit.exit298 ]
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.body.12.i ], [ 0, %get_bit.exit298 ]
  %xor.i.282 = xor i64 %indvars.iv45.i, %conv122
  %shr.i.283 = lshr i64 %xor.i.282, 4
  %or.i = or i64 %shr.i.283, %xor.i.282
  %shr5.i = lshr i64 %or.i, 2
  %or6.i = or i64 %shr5.i, %or.i
  %shr7.i = lshr i64 %or6.i, 1
  %or8.i = or i64 %shr7.i, %or6.i
  %and.i.284 = and i64 %or8.i, 1
  %dec.i = add nsw i64 %and.i.284, -1
  %broadcast.splatinsert439 = insertelement <2 x i64> undef, i64 %dec.i, i32 0
  %broadcast.splat440 = shufflevector <2 x i64> %broadcast.splatinsert439, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %for.body.i
  %126 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 0
  %127 = bitcast i64* %126 to <2 x i64>*
  %wide.load = load <2 x i64>, <2 x i64>* %127, align 8, !tbaa !6
  %128 = and <2 x i64> %wide.load, %broadcast.splat440
  %129 = or <2 x i64> %wide.load441500, %128
  %130 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 2
  %131 = bitcast i64* %130 to <2 x i64>*
  %wide.load.1 = load <2 x i64>, <2 x i64>* %131, align 8, !tbaa !6
  %132 = and <2 x i64> %wide.load.1, %broadcast.splat440
  %133 = or <2 x i64> %wide.load441.1503, %132
  %134 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 4
  %135 = bitcast i64* %134 to <2 x i64>*
  %wide.load.2 = load <2 x i64>, <2 x i64>* %135, align 8, !tbaa !6
  %136 = and <2 x i64> %wide.load.2, %broadcast.splat440
  %137 = or <2 x i64> %wide.load441.2506, %136
  %138 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 6
  %139 = bitcast i64* %138 to <2 x i64>*
  %wide.load.3 = load <2 x i64>, <2 x i64>* %139, align 8, !tbaa !6
  %140 = and <2 x i64> %wide.load.3, %broadcast.splat440
  %141 = or <2 x i64> %wide.load441.3509, %140
  %142 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 8
  %143 = bitcast i64* %142 to <2 x i64>*
  %wide.load.4 = load <2 x i64>, <2 x i64>* %143, align 8, !tbaa !6
  %144 = and <2 x i64> %wide.load.4, %broadcast.splat440
  %145 = or <2 x i64> %wide.load441.4512, %144
  %146 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 10
  %147 = bitcast i64* %146 to <2 x i64>*
  %wide.load.5 = load <2 x i64>, <2 x i64>* %147, align 8, !tbaa !6
  %148 = and <2 x i64> %wide.load.5, %broadcast.splat440
  %149 = or <2 x i64> %wide.load441.5515, %148
  %150 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 12
  %151 = bitcast i64* %150 to <2 x i64>*
  %wide.load.6 = load <2 x i64>, <2 x i64>* %151, align 8, !tbaa !6
  %152 = and <2 x i64> %wide.load.6, %broadcast.splat440
  %153 = or <2 x i64> %wide.load441.6518, %152
  %154 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 14
  %155 = bitcast i64* %154 to <2 x i64>*
  %wide.load.7 = load <2 x i64>, <2 x i64>* %155, align 8, !tbaa !6
  %156 = and <2 x i64> %wide.load.7, %broadcast.splat440
  %157 = or <2 x i64> %wide.load441.7521, %156
  %158 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 16
  %159 = bitcast i64* %158 to <2 x i64>*
  %wide.load.8 = load <2 x i64>, <2 x i64>* %159, align 8, !tbaa !6
  %160 = and <2 x i64> %wide.load.8, %broadcast.splat440
  %161 = or <2 x i64> %wide.load441.8524, %160
  %162 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 18
  %163 = bitcast i64* %162 to <2 x i64>*
  %wide.load.9 = load <2 x i64>, <2 x i64>* %163, align 8, !tbaa !6
  %164 = and <2 x i64> %wide.load.9, %broadcast.splat440
  %165 = or <2 x i64> %wide.load441.9527, %164
  %166 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 20
  %167 = bitcast i64* %166 to <2 x i64>*
  %wide.load.10 = load <2 x i64>, <2 x i64>* %167, align 8, !tbaa !6
  %168 = and <2 x i64> %wide.load.10, %broadcast.splat440
  %169 = or <2 x i64> %wide.load441.10530, %168
  %170 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 22
  %171 = bitcast i64* %170 to <2 x i64>*
  %wide.load.11 = load <2 x i64>, <2 x i64>* %171, align 8, !tbaa !6
  %172 = and <2 x i64> %wide.load.11, %broadcast.splat440
  %173 = or <2 x i64> %wide.load441.11533, %172
  %174 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 24
  %175 = bitcast i64* %174 to <2 x i64>*
  %wide.load.12 = load <2 x i64>, <2 x i64>* %175, align 8, !tbaa !6
  %176 = and <2 x i64> %wide.load.12, %broadcast.splat440
  %177 = or <2 x i64> %wide.load441.12536, %176
  br label %for.body.12.i

for.body.12.i:                                    ; preds = %vector.body
  %arrayidx14.i.285 = getelementptr inbounds [17 x [3 x [9 x i64]]], [17 x [3 x [9 x i64]]]* %pre_comp, i64 %indvars.iv, i64 %indvars.iv45.i, i64 0, i64 26
  %178 = load i64, i64* %arrayidx14.i.285, align 8, !tbaa !6
  %and15.i = and i64 %178, %dec.i
  %or18.i = or i64 %125, %and15.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %exitcond420 = icmp eq i64 %indvars.iv.next46.i, 17
  br i1 %exitcond420, label %select_point.exit, label %for.body.i

select_point.exit:                                ; preds = %for.body.12.i
  %or18.i.lcssa = phi i64 [ %or18.i, %for.body.12.i ]
  %.lcssa537 = phi <2 x i64> [ %177, %for.body.12.i ]
  %.lcssa534 = phi <2 x i64> [ %173, %for.body.12.i ]
  %.lcssa531 = phi <2 x i64> [ %169, %for.body.12.i ]
  %.lcssa528 = phi <2 x i64> [ %165, %for.body.12.i ]
  %.lcssa525 = phi <2 x i64> [ %161, %for.body.12.i ]
  %.lcssa522 = phi <2 x i64> [ %157, %for.body.12.i ]
  %.lcssa519 = phi <2 x i64> [ %153, %for.body.12.i ]
  %.lcssa516 = phi <2 x i64> [ %149, %for.body.12.i ]
  %.lcssa513 = phi <2 x i64> [ %145, %for.body.12.i ]
  %.lcssa510 = phi <2 x i64> [ %141, %for.body.12.i ]
  %.lcssa507 = phi <2 x i64> [ %137, %for.body.12.i ]
  %.lcssa504 = phi <2 x i64> [ %133, %for.body.12.i ]
  %.lcssa501 = phi <2 x i64> [ %129, %for.body.12.i ]
  store <2 x i64> %.lcssa501, <2 x i64>* %27, align 16, !tbaa !6
  store <2 x i64> %.lcssa504, <2 x i64>* %29, align 16, !tbaa !6
  store <2 x i64> %.lcssa507, <2 x i64>* %31, align 16, !tbaa !6
  store <2 x i64> %.lcssa510, <2 x i64>* %33, align 16, !tbaa !6
  store <2 x i64> %.lcssa513, <2 x i64>* %35, align 16, !tbaa !6
  store <2 x i64> %.lcssa516, <2 x i64>* %37, align 16, !tbaa !6
  store <2 x i64> %.lcssa519, <2 x i64>* %39, align 16, !tbaa !6
  store <2 x i64> %.lcssa522, <2 x i64>* %41, align 16, !tbaa !6
  store <2 x i64> %.lcssa525, <2 x i64>* %43, align 16, !tbaa !6
  store <2 x i64> %.lcssa528, <2 x i64>* %45, align 16, !tbaa !6
  store <2 x i64> %.lcssa531, <2 x i64>* %47, align 16, !tbaa !6
  store <2 x i64> %.lcssa534, <2 x i64>* %49, align 16, !tbaa !6
  store <2 x i64> %.lcssa537, <2 x i64>* %51, align 16, !tbaa !6
  store i64 %or18.i.lcssa, i64* %arrayidx17.i.286, align 16, !tbaa !6
  %179 = load <2 x i64>, <2 x i64>* %52, align 8, !tbaa !6
  %180 = sub <2 x i64> <i64 4611686018427387872, i64 4611686018427387888>, %179
  %181 = extractelement <2 x i64> %180, i32 0
  store i64 %181, i64* %arraydecay128, align 8, !tbaa !6
  %182 = extractelement <2 x i64> %180, i32 1
  store i64 %182, i64* %arrayidx4.i.272, align 8, !tbaa !6
  %183 = load <2 x i64>, <2 x i64>* %53, align 8, !tbaa !6
  %184 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %183
  %185 = extractelement <2 x i64> %184, i32 0
  store i64 %185, i64* %arrayidx7.i.274, align 8, !tbaa !6
  %186 = extractelement <2 x i64> %184, i32 1
  store i64 %186, i64* %arrayidx10.i.276, align 8, !tbaa !6
  %187 = load <2 x i64>, <2 x i64>* %54, align 8, !tbaa !6
  %188 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %187
  %189 = extractelement <2 x i64> %188, i32 0
  store i64 %189, i64* %arrayidx13.i.278, align 8, !tbaa !6
  %190 = extractelement <2 x i64> %188, i32 1
  store i64 %190, i64* %arrayidx16.i.280, align 8, !tbaa !6
  %191 = load i64, i64* %arrayidx17.i.281, align 8, !tbaa !6
  %sub18.i = sub i64 4611686018427387888, %191
  store i64 %sub18.i, i64* %arrayidx19.i, align 8, !tbaa !6
  %192 = load <2 x i64>, <2 x i64>* %55, align 8, !tbaa !6
  %193 = sub <2 x i64> <i64 4611686018427387888, i64 4611686018427387888>, %192
  %194 = extractelement <2 x i64> %193, i32 0
  store i64 %194, i64* %arrayidx22.i, align 8, !tbaa !6
  %195 = extractelement <2 x i64> %193, i32 1
  store i64 %195, i64* %arrayidx25.i, align 8, !tbaa !6
  %196 = load i8, i8* %sign, align 1, !tbaa !17
  %conv135 = zext i8 %196 to i64
  %sub136 = sub nsw i64 0, %conv135
  %197 = xor <2 x i64> %179, %180
  %198 = insertelement <2 x i64> undef, i64 %sub136, i32 0
  %199 = insertelement <2 x i64> %198, i64 %sub136, i32 1
  %200 = and <2 x i64> %199, %197
  %201 = xor <2 x i64> %200, %179
  store <2 x i64> %201, <2 x i64>* %56, align 8, !tbaa !6
  %202 = xor <2 x i64> %183, %184
  %203 = and <2 x i64> %199, %202
  %204 = xor <2 x i64> %203, %183
  store <2 x i64> %204, <2 x i64>* %57, align 8, !tbaa !6
  %205 = xor <2 x i64> %187, %188
  %206 = and <2 x i64> %199, %205
  %207 = xor <2 x i64> %206, %187
  store <2 x i64> %207, <2 x i64>* %58, align 8, !tbaa !6
  %xor.6.i = xor i64 %191, %sub18.i
  %and.6.i = and i64 %xor.6.i, %sub136
  %xor5.6.i = xor i64 %and.6.i, %191
  store i64 %xor5.6.i, i64* %arrayidx17.i.281, align 8, !tbaa !6
  %208 = xor <2 x i64> %192, %193
  %209 = and <2 x i64> %199, %208
  %210 = xor <2 x i64> %209, %192
  store <2 x i64> %210, <2 x i64>* %59, align 8, !tbaa !6
  %tobool137 = icmp eq i32 %skip.2414, 0
  br i1 %tobool137, label %if.then.138, label %if.else.157

if.then.138:                                      ; preds = %select_point.exit
  call fastcc void @point_add(i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49, i64* %arraydecay45, i64* %arraydecay47, i64* %arraydecay49, i32 %mixed, i64* %arraydecay57, i64* %arraydecay59, i64* %arraydecay61)
  br label %for.inc

if.else.157:                                      ; preds = %select_point.exit
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 216, i32 16, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.then.138, %if.else.157
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond421 = icmp eq i32 %lftr.wideiv, %num_points
  br i1 %exitcond421, label %for.inc.160.loopexit, label %for.body.72

for.inc.160.loopexit:                             ; preds = %for.inc
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.inc.160.loopexit, %if.end.63
  %skip.4 = phi i32 [ %skip.1, %if.end.63 ], [ 0, %for.inc.160.loopexit ]
  %dec = add nsw i32 %i.0417, -1
  %cmp4 = icmp sgt i32 %i.0417, 0
  br i1 %cmp4, label %for.body, label %for.end.161

for.end.161:                                      ; preds = %for.inc.160
  %211 = bitcast [3 x [9 x i64]]* %nq to <2 x i64>*
  %212 = load <2 x i64>, <2 x i64>* %211, align 16, !tbaa !6
  %213 = bitcast i64* %x_out to <2 x i64>*
  store <2 x i64> %212, <2 x i64>* %213, align 8, !tbaa !6
  %arrayidx4.i.244 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 0, i64 2
  %arrayidx5.i.245 = getelementptr inbounds i64, i64* %x_out, i64 2
  %214 = bitcast i64* %arrayidx4.i.244 to <2 x i64>*
  %215 = load <2 x i64>, <2 x i64>* %214, align 16, !tbaa !6
  %216 = bitcast i64* %arrayidx5.i.245 to <2 x i64>*
  store <2 x i64> %215, <2 x i64>* %216, align 8, !tbaa !6
  %arrayidx8.i.248 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 0, i64 4
  %arrayidx9.i.249 = getelementptr inbounds i64, i64* %x_out, i64 4
  %217 = bitcast i64* %arrayidx8.i.248 to <2 x i64>*
  %218 = load <2 x i64>, <2 x i64>* %217, align 16, !tbaa !6
  %219 = bitcast i64* %arrayidx9.i.249 to <2 x i64>*
  store <2 x i64> %218, <2 x i64>* %219, align 8, !tbaa !6
  %arrayidx12.i.252 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 0, i64 6
  %arrayidx13.i.253 = getelementptr inbounds i64, i64* %x_out, i64 6
  %220 = bitcast i64* %arrayidx12.i.252 to <2 x i64>*
  %221 = load <2 x i64>, <2 x i64>* %220, align 16, !tbaa !6
  %222 = bitcast i64* %arrayidx13.i.253 to <2 x i64>*
  store <2 x i64> %221, <2 x i64>* %222, align 8, !tbaa !6
  %arrayidx16.i.256 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 0, i64 8
  %223 = load i64, i64* %arrayidx16.i.256, align 16, !tbaa !6
  %arrayidx17.i.257 = getelementptr inbounds i64, i64* %x_out, i64 8
  store i64 %223, i64* %arrayidx17.i.257, align 8, !tbaa !6
  %224 = bitcast i64* %arraydecay47 to <2 x i64>*
  %225 = load <2 x i64>, <2 x i64>* %224, align 8, !tbaa !6
  %226 = bitcast i64* %y_out to <2 x i64>*
  store <2 x i64> %225, <2 x i64>* %226, align 8, !tbaa !6
  %arrayidx4.i.228 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 1, i64 2
  %arrayidx5.i.229 = getelementptr inbounds i64, i64* %y_out, i64 2
  %227 = bitcast i64* %arrayidx4.i.228 to <2 x i64>*
  %228 = load <2 x i64>, <2 x i64>* %227, align 8, !tbaa !6
  %229 = bitcast i64* %arrayidx5.i.229 to <2 x i64>*
  store <2 x i64> %228, <2 x i64>* %229, align 8, !tbaa !6
  %arrayidx8.i.232 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 1, i64 4
  %arrayidx9.i.233 = getelementptr inbounds i64, i64* %y_out, i64 4
  %230 = bitcast i64* %arrayidx8.i.232 to <2 x i64>*
  %231 = load <2 x i64>, <2 x i64>* %230, align 8, !tbaa !6
  %232 = bitcast i64* %arrayidx9.i.233 to <2 x i64>*
  store <2 x i64> %231, <2 x i64>* %232, align 8, !tbaa !6
  %arrayidx12.i.236 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 1, i64 6
  %arrayidx13.i.237 = getelementptr inbounds i64, i64* %y_out, i64 6
  %233 = bitcast i64* %arrayidx12.i.236 to <2 x i64>*
  %234 = load <2 x i64>, <2 x i64>* %233, align 8, !tbaa !6
  %235 = bitcast i64* %arrayidx13.i.237 to <2 x i64>*
  store <2 x i64> %234, <2 x i64>* %235, align 8, !tbaa !6
  %arrayidx16.i.240 = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 1, i64 8
  %236 = load i64, i64* %arrayidx16.i.240, align 8, !tbaa !6
  %arrayidx17.i.241 = getelementptr inbounds i64, i64* %y_out, i64 8
  store i64 %236, i64* %arrayidx17.i.241, align 8, !tbaa !6
  %237 = bitcast i64* %arraydecay49 to <2 x i64>*
  %238 = load <2 x i64>, <2 x i64>* %237, align 16, !tbaa !6
  %239 = bitcast i64* %z_out to <2 x i64>*
  store <2 x i64> %238, <2 x i64>* %239, align 8, !tbaa !6
  %arrayidx4.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 2, i64 2
  %arrayidx5.i = getelementptr inbounds i64, i64* %z_out, i64 2
  %240 = bitcast i64* %arrayidx4.i to <2 x i64>*
  %241 = load <2 x i64>, <2 x i64>* %240, align 16, !tbaa !6
  %242 = bitcast i64* %arrayidx5.i to <2 x i64>*
  store <2 x i64> %241, <2 x i64>* %242, align 8, !tbaa !6
  %arrayidx8.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 2, i64 4
  %arrayidx9.i = getelementptr inbounds i64, i64* %z_out, i64 4
  %243 = bitcast i64* %arrayidx8.i to <2 x i64>*
  %244 = load <2 x i64>, <2 x i64>* %243, align 16, !tbaa !6
  %245 = bitcast i64* %arrayidx9.i to <2 x i64>*
  store <2 x i64> %244, <2 x i64>* %245, align 8, !tbaa !6
  %arrayidx12.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 2, i64 6
  %arrayidx13.i = getelementptr inbounds i64, i64* %z_out, i64 6
  %246 = bitcast i64* %arrayidx12.i to <2 x i64>*
  %247 = load <2 x i64>, <2 x i64>* %246, align 16, !tbaa !6
  %248 = bitcast i64* %arrayidx13.i to <2 x i64>*
  store <2 x i64> %247, <2 x i64>* %248, align 8, !tbaa !6
  %arrayidx16.i = getelementptr inbounds [3 x [9 x i64]], [3 x [9 x i64]]* %nq, i64 0, i64 2, i64 8
  %249 = load i64, i64* %arrayidx16.i, align 16, !tbaa !6
  %arrayidx17.i = getelementptr inbounds i64, i64* %z_out, i64 8
  store i64 %249, i64* %arrayidx17.i, align 8, !tbaa !6
  call void @llvm.lifetime.end(i64 1, i8* nonnull %digit) #1
  call void @llvm.lifetime.end(i64 1, i8* nonnull %sign) #1
  call void @llvm.lifetime.end(i64 288, i8* %1) #1
  call void @llvm.lifetime.end(i64 216, i8* %0) #1
  ret void
}

declare void @EC_POINT_free(%struct.ec_point_st*) #3

declare void @EC_pre_comp_free(%struct.ec_group_st*) #3

declare i32 @EC_POINT_set_affine_coordinates_GFp(%struct.ec_group_st*, %struct.ec_point_st*, %struct.bignum_st*, %struct.bignum_st*, %struct.bignum_ctx*) #3

declare void @ec_GFp_nistp_points_make_affine_internal(i64, i8*, i64, i8*, void (i8*)*, i32 (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal void @felem_one(i64* nocapture %out) #0 {
entry:
  store i64 1, i64* %out, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i64, i64* %out, i64 1
  %0 = bitcast i64* %arrayidx1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @felem_is_zero_int(i8* nocapture readonly %in) #4 {
entry:
  %0 = bitcast i8* %in to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !6
  %arrayidx2.i.i = getelementptr inbounds i8, i8* %in, i64 8
  %2 = bitcast i8* %arrayidx2.i.i to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !6
  %arrayidx4.i.i = getelementptr inbounds i8, i8* %in, i64 16
  %4 = bitcast i8* %arrayidx4.i.i to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !6
  %arrayidx6.i.i = getelementptr inbounds i8, i8* %in, i64 24
  %6 = bitcast i8* %arrayidx6.i.i to i64*
  %7 = load i64, i64* %6, align 8, !tbaa !6
  %arrayidx8.i.i = getelementptr inbounds i8, i8* %in, i64 32
  %8 = bitcast i8* %arrayidx8.i.i to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !6
  %arrayidx10.i.i = getelementptr inbounds i8, i8* %in, i64 40
  %10 = bitcast i8* %arrayidx10.i.i to i64*
  %11 = load i64, i64* %10, align 8, !tbaa !6
  %arrayidx12.i.i = getelementptr inbounds i8, i8* %in, i64 48
  %12 = bitcast i8* %arrayidx12.i.i to i64*
  %13 = load i64, i64* %12, align 8, !tbaa !6
  %arrayidx14.i.i = getelementptr inbounds i8, i8* %in, i64 56
  %14 = bitcast i8* %arrayidx14.i.i to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !6
  %arrayidx16.i.i = getelementptr inbounds i8, i8* %in, i64 64
  %16 = bitcast i8* %arrayidx16.i.i to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !6
  %shr.i = lshr i64 %17, 57
  %add.i = add i64 %shr.i, %1
  %and.i = and i64 %17, 144115188075855871
  %shr4.i = lshr i64 %add.i, 58
  %add6.i = add i64 %shr4.i, %3
  %and8.i = and i64 %add.i, 288230376151711743
  %shr10.i = lshr i64 %add6.i, 58
  %add12.i = add i64 %shr10.i, %5
  %and14.i = and i64 %add6.i, 288230376151711743
  %shr16.i = lshr i64 %add12.i, 58
  %add18.i = add i64 %shr16.i, %7
  %and20.i = and i64 %add12.i, 288230376151711743
  %shr22.i = lshr i64 %add18.i, 58
  %add24.i = add i64 %shr22.i, %9
  %and26.i = and i64 %add18.i, 288230376151711743
  %shr28.i = lshr i64 %add24.i, 58
  %add30.i = add i64 %shr28.i, %11
  %and32.i = and i64 %add24.i, 288230376151711743
  %shr34.i = lshr i64 %add30.i, 58
  %add36.i = add i64 %shr34.i, %13
  %and38.i = and i64 %add30.i, 288230376151711743
  %shr40.i = lshr i64 %add36.i, 58
  %add42.i = add i64 %shr40.i, %15
  %and44.i = and i64 %add36.i, 288230376151711743
  %shr46.i = lshr i64 %add42.i, 58
  %add48.i = add nuw nsw i64 %shr46.i, %and.i
  %and50.i = and i64 %add42.i, 288230376151711743
  %or53.i = or i64 %and14.i, %and8.i
  %or55.i = or i64 %or53.i, %and20.i
  %or57.i = or i64 %or55.i, %and26.i
  %or59.i = or i64 %or57.i, %and32.i
  %or61.i = or i64 %or59.i, %and38.i
  %or63.i = or i64 %or61.i, %and44.i
  %or65.i = or i64 %or63.i, %and50.i
  %or67.i = or i64 %or65.i, %add48.i
  %dec.i = add i64 %or67.i, -1
  %xor.i = xor i64 %and8.i, 288230376151711743
  %xor71.i = xor i64 %and14.i, 288230376151711743
  %or72.i = or i64 %xor71.i, %xor.i
  %xor74.i = xor i64 %and20.i, 288230376151711743
  %or75.i = or i64 %or72.i, %xor74.i
  %xor77.i = xor i64 %and26.i, 288230376151711743
  %or78.i = or i64 %or75.i, %xor77.i
  %xor80.i = xor i64 %and32.i, 288230376151711743
  %or81.i = or i64 %or78.i, %xor80.i
  %xor83.i = xor i64 %and38.i, 288230376151711743
  %or84.i = or i64 %or81.i, %xor83.i
  %xor86.i = xor i64 %and44.i, 288230376151711743
  %or87.i = or i64 %or84.i, %xor86.i
  %xor89.i = xor i64 %and50.i, 288230376151711743
  %or90.i = or i64 %or87.i, %xor89.i
  %xor92.i = xor i64 %add48.i, 144115188075855871
  %or93.i = or i64 %or90.i, %xor92.i
  %dec94.i = add i64 %or93.i, -1
  %sub122.i = or i64 %dec94.i, %dec.i
  %or97.i.1 = lshr i64 %sub122.i, 63
  %call.tr = trunc i64 %or97.i.1 to i32
  ret i32 %call.tr
}

; Function Attrs: nounwind uwtable
define internal void @felem_square_reduce(i64* nocapture %out, i64* %in) #0 {
entry:
  %tmp = alloca [9 x i128], align 16
  %0 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %arraydecay = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_square(i128* %arraydecay, i64* %in)
  call fastcc void @felem_reduce(i64* %out, i128* %arraydecay)
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @felem_mul_reduce(i64* nocapture %out, i64* nocapture readonly %in1, i64* %in2) #0 {
entry:
  %tmp = alloca [9 x i128], align 16
  %0 = bitcast [9 x i128]* %tmp to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %arraydecay = getelementptr inbounds [9 x i128], [9 x i128]* %tmp, i64 0, i64 0
  call fastcc void @felem_mul(i128* %arraydecay, i64* %in1, i64* %in2)
  call fastcc void @felem_reduce(i64* %out, i128* %arraydecay)
  call void @llvm.lifetime.end(i64 144, i8* %0) #1
  ret void
}

declare void @ec_GFp_nistp_recode_scalar_bits(i8*, i8*, i8 zeroext) #3

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
!24 = !{!25, !11, i64 3456}
!25 = !{!"nistp521_pre_comp_st", !4, i64 0, !11, i64 3456, !10, i64 3464}
!26 = !{!25, !10, i64 3464}
!27 = !{!9, !4, i64 152}
!28 = distinct !{!28, !22}
