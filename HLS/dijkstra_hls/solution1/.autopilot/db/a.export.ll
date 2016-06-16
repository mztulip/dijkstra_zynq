; ModuleID = 'C:/Users/buleks/Desktop/sdwup/projekt/HLS/dijkstra_hls/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@matrix = internal global [64 x i8] zeroinitializer
@p_str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"input_copy_o\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"input_copy_i\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"main_loop\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"max_values_o\00", align 1
@p_str5 = private unnamed_addr constant [13 x i8] c"max_values_i\00", align 1
@p_str6 = private unnamed_addr constant [6 x i8] c"min_o\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"min_i\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"substract_o\00", align 1
@p_str9 = private unnamed_addr constant [12 x i8] c"substract_i\00", align 1
@p_str10 = private unnamed_addr constant [14 x i8] c"mark_vertex_o\00", align 1
@p_str11 = private unnamed_addr constant [14 x i8] c"mark_vertex_i\00", align 1
@p_str12 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@p_str13 = private unnamed_addr constant [12 x i8] c"send_result\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"dijkstra\00"
@vector = internal unnamed_addr global [8 x i1] zeroinitializer
@result = internal unnamed_addr global [8 x i4] zeroinitializer

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define void @dijkstra([64 x i8]* %in_data_V, [64 x i1]* %in_last_V, i8 %start_point_V, [8 x i8]* %out_data_V, [8 x i1]* %out_last_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i8]* %in_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i1]* %in_last_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %start_point_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap([8 x i8]* %out_data_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap([8 x i1]* %out_last_V), !map !29
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %start_point_V_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %start_point_V)
  %tmp = zext i8 %start_point_V_read to i64
  %vector_addr = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp
  store i1 true, i1* %vector_addr, align 1
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_8, %2 ]
  %exitcond1 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_8 = add i4 %i, 1
  br i1 %exitcond1, label %.preheader55, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str) nounwind
  %tmp_1 = zext i4 %i to i64
  %vector_addr_1 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_1
  store i1 false, i1* %vector_addr_1, align 1
  br label %1

.preheader55:                                     ; preds = %1, %6
  %i_1 = phi i4 [ %i_9, %6 ], [ 0, %1 ]
  %exitcond2 = icmp eq i4 %i_1, -8
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_9 = add i4 %i_1, 1
  br i1 %exitcond2, label %.preheader54, label %3

; <label>:3                                       ; preds = %.preheader55
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str1) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str1)
  %tmp_5 = trunc i4 %i_1 to i3
  %tmp_4 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_5, i3 0)
  %tmp_12 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1, i3 0)
  %matrix_addr9_cast = zext i7 %tmp_12 to i8
  br label %4

; <label>:4                                       ; preds = %5, %3
  %e = phi i4 [ 0, %3 ], [ %e_5, %5 ]
  %exitcond3 = icmp eq i4 %e, -8
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %e_5 = add i4 %e, 1
  br i1 %exitcond3, label %6, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind
  %tmp_7_cast = zext i4 %e to i6
  %tmp_8 = add i6 %tmp_4, %tmp_7_cast
  %tmp_9 = zext i6 %tmp_8 to i64
  %in_data_V_addr = getelementptr [64 x i8]* %in_data_V, i64 0, i64 %tmp_9
  %in_data_V_load = load i8* %in_data_V_addr, align 1
  %tmp_trn_cast = zext i4 %e to i8
  %matrix_addr1 = add i8 %matrix_addr9_cast, %tmp_trn_cast
  %tmp_15 = zext i8 %matrix_addr1 to i64
  %matrix_addr = getelementptr [64 x i8]* @matrix, i64 0, i64 %tmp_15
  store i8 %in_data_V_load, i8* %matrix_addr, align 1
  br label %4

; <label>:6                                       ; preds = %4
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str1, i32 %tmp_6)
  br label %.preheader55

.preheader54:                                     ; preds = %.preheader55, %18
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str3) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str3)
  br label %7

; <label>:7                                       ; preds = %.loopexit53, %.preheader54
  %i_2 = phi i4 [ 0, %.preheader54 ], [ %i_14, %.loopexit53 ]
  %exitcond4 = icmp eq i4 %i_2, -8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_14 = add i4 %i_2, 1
  br i1 %exitcond4, label %.preheader51, label %8

; <label>:8                                       ; preds = %7
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str4) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str4)
  %tmp_2 = zext i4 %i_2 to i64
  %vector_addr_2 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_2
  %vector_load = load i1* %vector_addr_2, align 1
  br i1 %vector_load, label %.preheader52.preheader, label %.loopexit53

.preheader52.preheader:                           ; preds = %8
  %tmp_2_trn_cast = zext i4 %i_2 to i8
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %9
  %e_1 = phi i4 [ %e_6, %9 ], [ 0, %.preheader52.preheader ]
  %exitcond6 = icmp eq i4 %e_1, -8
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %e_6 = add i4 %e_1, 1
  br i1 %exitcond6, label %.loopexit53, label %9

; <label>:9                                       ; preds = %.preheader52
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind
  %tmp_27 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %e_1, i3 0)
  %matrix_addr7_cast = zext i7 %tmp_27 to i8
  %matrix_addr8 = add i8 %matrix_addr7_cast, %tmp_2_trn_cast
  %tmp_28 = zext i8 %matrix_addr8 to i64
  %matrix_addr_1 = getelementptr [64 x i8]* @matrix, i64 0, i64 %tmp_28
  store i8 -1, i8* %matrix_addr_1, align 1
  br label %.preheader52

.loopexit53:                                      ; preds = %.preheader52, %8
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str4, i32 %tmp_7)
  br label %7

.preheader51:                                     ; preds = %7, %.loopexit50
  %i_3 = phi i4 [ %i_10, %.loopexit50 ], [ 0, %7 ]
  %min = phi i8 [ %min_3, %.loopexit50 ], [ -1, %7 ]
  %exitcond5 = icmp eq i4 %i_3, -8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_10 = add i4 %i_3, 1
  br i1 %exitcond5, label %.preheader48, label %10

; <label>:10                                      ; preds = %.preheader51
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str6) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str6)
  %tmp_10 = zext i4 %i_3 to i64
  %vector_addr_3 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_10
  %vector_load_1 = load i1* %vector_addr_3, align 1
  br i1 %vector_load_1, label %.preheader49.preheader, label %.loopexit50

.preheader49.preheader:                           ; preds = %10
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3, i3 0)
  %matrix_addr5_cast = zext i7 %tmp_18 to i8
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.preheader, %._crit_edge
  %e_2 = phi i4 [ %e_7, %._crit_edge ], [ 0, %.preheader49.preheader ]
  %min_1 = phi i8 [ %min_4_min_1, %._crit_edge ], [ %min, %.preheader49.preheader ]
  %exitcond8 = icmp eq i4 %e_2, -8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %e_7 = add i4 %e_2, 1
  br i1 %exitcond8, label %.loopexit50, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader49
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str7) nounwind
  %tmp_15_trn_cast = zext i4 %e_2 to i8
  %matrix_addr6 = add i8 %matrix_addr5_cast, %tmp_15_trn_cast
  %tmp_30 = zext i8 %matrix_addr6 to i64
  %matrix_addr_2 = getelementptr [64 x i8]* @matrix, i64 0, i64 %tmp_30
  %min_2 = load i8* %matrix_addr_2, align 1
  %tmp_14 = icmp ult i8 %min_2, %min_1
  %min_4_min_1 = select i1 %tmp_14, i8 %min_2, i8 %min_1
  br label %.preheader49

.loopexit50:                                      ; preds = %.preheader49, %10
  %min_3 = phi i8 [ %min, %10 ], [ %min_1, %.preheader49 ]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str6, i32 %tmp_s)
  br label %.preheader51

.preheader48:                                     ; preds = %.preheader51, %.loopexit47
  %i_4 = phi i4 [ %i_11, %.loopexit47 ], [ 0, %.preheader51 ]
  %exitcond7 = icmp eq i4 %i_4, -8
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_11 = add i4 %i_4, 1
  br i1 %exitcond7, label %.preheader45, label %11

; <label>:11                                      ; preds = %.preheader48
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  %tmp_13 = zext i4 %i_4 to i64
  %vector_addr_4 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_13
  %vector_load_2 = load i1* %vector_addr_4, align 1
  br i1 %vector_load_2, label %.preheader46.preheader, label %.loopexit47

.preheader46.preheader:                           ; preds = %11
  %tmp_26 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_4, i3 0)
  %matrix_addr3_cast = zext i7 %tmp_26 to i8
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.preheader, %12
  %e_3 = phi i4 [ %e_8, %12 ], [ 0, %.preheader46.preheader ]
  %exitcond10 = icmp eq i4 %e_3, -8
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %e_8 = add i4 %e_3, 1
  br i1 %exitcond10, label %.loopexit47, label %12

; <label>:12                                      ; preds = %.preheader46
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind
  %tmp_20_trn_cast = zext i4 %e_3 to i8
  %matrix_addr4 = add i8 %matrix_addr3_cast, %tmp_20_trn_cast
  %tmp_31 = zext i8 %matrix_addr4 to i64
  %matrix_addr_3 = getelementptr [64 x i8]* @matrix, i64 0, i64 %tmp_31
  %matrix_load = load i8* %matrix_addr_3, align 1
  %tmp_19 = sub i8 %matrix_load, %min
  store i8 %tmp_19, i8* %matrix_addr_3, align 1
  br label %.preheader46

.loopexit47:                                      ; preds = %.preheader46, %11
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_11)
  br label %.preheader48

.preheader45:                                     ; preds = %.preheader48, %.loopexit44
  %i_5 = phi i4 [ %i_12, %.loopexit44 ], [ 0, %.preheader48 ]
  %exitcond9 = icmp eq i4 %i_5, -8
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_12 = add i4 %i_5, 1
  br i1 %exitcond9, label %.preheader42, label %13

; <label>:13                                      ; preds = %.preheader45
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str10) nounwind
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str10)
  %tmp_17 = zext i4 %i_5 to i64
  %vector_addr_5 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_17
  %vector_load_3 = load i1* %vector_addr_5, align 1
  br i1 %vector_load_3, label %.preheader43.preheader, label %.loopexit44

.preheader43.preheader:                           ; preds = %13
  %tmp_29 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_5, i3 0)
  %matrix_addr1_cast = zext i7 %tmp_29 to i8
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.preheader, %._crit_edge56
  %e_4 = phi i4 [ %e_9, %._crit_edge56 ], [ 0, %.preheader43.preheader ]
  %exitcond11 = icmp eq i4 %e_4, -8
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %e_9 = add i4 %e_4, 1
  br i1 %exitcond11, label %.loopexit44, label %14

; <label>:14                                      ; preds = %.preheader43
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str11) nounwind
  %tmp_23 = zext i4 %e_4 to i64
  %tmp_24_trn_cast = zext i4 %e_4 to i8
  %matrix_addr2 = add i8 %matrix_addr1_cast, %tmp_24_trn_cast
  %tmp_32 = zext i8 %matrix_addr2 to i64
  %matrix_addr_4 = getelementptr [64 x i8]* @matrix, i64 0, i64 %tmp_32
  %matrix_load_1 = load i8* %matrix_addr_4, align 1
  %tmp_24 = icmp eq i8 %matrix_load_1, 0
  br i1 %tmp_24, label %15, label %._crit_edge56

; <label>:15                                      ; preds = %14
  %vector_addr_7 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_23
  store i1 true, i1* %vector_addr_7, align 1
  %result_addr_1 = getelementptr [8 x i4]* @result, i64 0, i64 %tmp_23
  store i4 %i_5, i4* %result_addr_1, align 1
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %15, %14
  br label %.preheader43

.loopexit44:                                      ; preds = %.preheader43, %13
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str10, i32 %tmp_16)
  br label %.preheader45

.preheader42:                                     ; preds = %.preheader45, %17
  %i_6 = phi i4 [ %i_16, %17 ], [ 1, %.preheader45 ]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i4.i32(i4 %i_6, i32 3)
  br i1 %tmp_20, label %.loopexit, label %16

; <label>:16                                      ; preds = %.preheader42
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str12) nounwind
  %tmp_21 = zext i4 %i_6 to i64
  %vector_addr_6 = getelementptr [8 x i1]* @vector, i64 0, i64 %tmp_21
  %vector_load_4 = load i1* %vector_addr_6, align 1
  br i1 %vector_load_4, label %17, label %.loopexit

; <label>:17                                      ; preds = %16
  %i_16 = add i4 %i_6, 1
  br label %.preheader42

.loopexit:                                        ; preds = %.preheader42, %16
  %tmp_22 = icmp ugt i4 %i_6, 6
  br i1 %tmp_22, label %.preheader, label %18

; <label>:18                                      ; preds = %.loopexit
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str3, i32 %tmp_3)
  br label %.preheader54

.preheader:                                       ; preds = %.loopexit, %19
  %i_7 = phi i4 [ %i_17, %19 ], [ 0, %.loopexit ]
  %exitcond = icmp eq i4 %i_7, -8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_17 = add i4 %i_7, 1
  br i1 %exitcond, label %20, label %19

; <label>:19                                      ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str13) nounwind
  %tmp_25 = zext i4 %i_7 to i64
  %result_addr = getelementptr [8 x i4]* @result, i64 0, i64 %tmp_25
  %result_load = load i4* %result_addr, align 1
  %val_assign = zext i4 %result_load to i8
  %out_data_V_addr = getelementptr [8 x i8]* %out_data_V, i64 0, i64 %tmp_25
  store i8 %val_assign, i8* %out_data_V_addr, align 1
  %out_last_V_addr = getelementptr [8 x i1]* %out_last_V, i64 0, i64 %tmp_25
  %not_tmp_s = icmp ugt i4 %i_7, 6
  store i1 %not_tmp_s, i1* %out_last_V_addr, align 1
  br label %.preheader

; <label>:20                                      ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_19 = zext i3 %1 to i6
  %empty_20 = shl i6 %empty, 3
  %empty_21 = or i6 %empty_20, %empty_19
  ret i6 %empty_21
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_22 = zext i3 %1 to i7
  %empty_23 = shl i7 %empty, 3
  %empty_24 = or i7 %empty_23, %empty_22
  ret i7 %empty_24
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i4.i32(i4, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i4
  %empty_25 = shl i4 1, %empty
  %empty_26 = and i4 %0, %empty_25
  %empty_27 = icmp ne i4 %empty_26, 0
  ret i1 %empty_27
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"in.data.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"in.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"start_point.V", metadata !21, metadata !"uint8", i32 0, i32 7}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, i32 0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 7, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"out.data.V", metadata !27, metadata !"uint8", i32 0, i32 7}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 7, i32 1}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"out.last.V", metadata !27, metadata !"uint1", i32 0, i32 0}
