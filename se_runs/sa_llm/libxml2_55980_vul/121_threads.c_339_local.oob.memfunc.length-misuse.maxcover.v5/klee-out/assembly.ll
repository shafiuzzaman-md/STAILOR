; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/121_threads.c_339_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/121_threads.c_339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct._xmlRMutex = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32, i32, i64 }

@libxml_is_threaded = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [19 x i8] c"libxml_is_threaded\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tok_held\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"tok_waiters\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"(tid_offset + tid_size <= struct_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/121_threads.c_339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef nonnull %0) #0 !dbg !93 {
  %2 = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %0, %union.pthread_mutex_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_mutex_t** %2, metadata !98, metadata !DIExpression()), !dbg !99
  ret i32 0, !dbg !100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef nonnull %0) #0 !dbg !101 {
  %2 = alloca %union.pthread_mutex_t*, align 8
  store %union.pthread_mutex_t* %0, %union.pthread_mutex_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_mutex_t** %2, metadata !102, metadata !DIExpression()), !dbg !103
  ret i32 0, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_signal(%union.pthread_cond_t* noundef nonnull %0) #0 !dbg !105 {
  %2 = alloca %union.pthread_cond_t*, align 8
  store %union.pthread_cond_t* %0, %union.pthread_cond_t** %2, align 8
  call void @llvm.dbg.declare(metadata %union.pthread_cond_t** %2, metadata !109, metadata !DIExpression()), !dbg !110
  ret i32 0, !dbg !111
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRMutex*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef bitcast (i32* @libxml_is_threaded to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !115
  %6 = load i32, i32* @libxml_is_threaded, align 4, !dbg !116
  %7 = icmp eq i32 %6, 0, !dbg !117
  br i1 %7, label %11, label %8, !dbg !118

8:                                                ; preds = %0
  %9 = load i32, i32* @libxml_is_threaded, align 4, !dbg !119
  %10 = icmp eq i32 %9, 1, !dbg !120
  br label %11, !dbg !118

11:                                               ; preds = %8, %0
  %12 = phi i1 [ true, %0 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32, !dbg !118
  %14 = sext i32 %13 to i64, !dbg !116
  call void @klee_assume(i64 noundef %14), !dbg !121
  call void @llvm.dbg.declare(metadata %struct._xmlRMutex** %2, metadata !122, metadata !DIExpression()), !dbg !123
  %15 = call i8* @malloc(i64 noundef 104), !dbg !124
  %16 = bitcast i8* %15 to %struct._xmlRMutex*, !dbg !125
  store %struct._xmlRMutex* %16, %struct._xmlRMutex** %2, align 8, !dbg !123
  %17 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !126
  %18 = icmp ne %struct._xmlRMutex* %17, null, !dbg !126
  br i1 %18, label %20, label %19, !dbg !128

19:                                               ; preds = %11
  store i32 0, i32* %1, align 4, !dbg !129
  br label %60, !dbg !129

20:                                               ; preds = %11
  %21 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !130
  %22 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %21, i32 0, i32 2, !dbg !131
  %23 = bitcast i32* %22 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !133
  %24 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !134
  %25 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %24, i32 0, i32 3, !dbg !135
  %26 = bitcast i32* %25 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  %27 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !138
  %28 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %27, i32 0, i32 2, !dbg !139
  %29 = load i32, i32* %28, align 8, !dbg !139
  %30 = icmp uge i32 %29, 0, !dbg !140
  br i1 %30, label %31, label %36, !dbg !141

31:                                               ; preds = %20
  %32 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !142
  %33 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %32, i32 0, i32 2, !dbg !143
  %34 = load i32, i32* %33, align 8, !dbg !143
  %35 = icmp ule i32 %34, 10, !dbg !144
  br label %36

36:                                               ; preds = %31, %20
  %37 = phi i1 [ false, %20 ], [ %35, %31 ], !dbg !145
  %38 = zext i1 %37 to i32, !dbg !141
  %39 = sext i32 %38 to i64, !dbg !138
  call void @klee_assume(i64 noundef %39), !dbg !146
  %40 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !147
  %41 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %40, i32 0, i32 2, !dbg !148
  %42 = load i32, i32* %41, align 8, !dbg !148
  %43 = icmp eq i32 %42, 1, !dbg !149
  %44 = zext i1 %43 to i32, !dbg !149
  %45 = sext i32 %44 to i64, !dbg !147
  call void @klee_assume(i64 noundef %45), !dbg !150
  %46 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !151
  call void @xmlRMutexUnlock(%struct._xmlRMutex* noundef %46), !dbg !152
  call void @llvm.dbg.declare(metadata i64* %3, metadata !153, metadata !DIExpression()), !dbg !156
  store i64 96, i64* %3, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i64* %4, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 8, i64* %4, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i64* %5, metadata !159, metadata !DIExpression()), !dbg !160
  store i64 104, i64* %5, align 8, !dbg !160
  %47 = load i64, i64* %3, align 8, !dbg !161
  %48 = load i64, i64* %4, align 8, !dbg !161
  %49 = add i64 %47, %48, !dbg !161
  %50 = load i64, i64* %5, align 8, !dbg !161
  %51 = icmp ule i64 %49, %50, !dbg !161
  br i1 %51, label %52, label %54, !dbg !161

52:                                               ; preds = %36
  br i1 true, label %53, label %54, !dbg !161

53:                                               ; preds = %52
  br label %56, !dbg !161

54:                                               ; preds = %52, %36
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !161
  br label %56, !dbg !161

56:                                               ; preds = %54, %53
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !162
  %58 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !163
  %59 = bitcast %struct._xmlRMutex* %58 to i8*, !dbg !163
  call void @free(i8* noundef %59), !dbg !164
  store i32 0, i32* %1, align 4, !dbg !165
  br label %60, !dbg !165

60:                                               ; preds = %56, %19
  %61 = load i32, i32* %1, align 4, !dbg !166
  ret i32 %61, !dbg !166
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRMutexUnlock(%struct._xmlRMutex* noundef %0) #0 !dbg !167 {
  %2 = alloca %struct._xmlRMutex*, align 8
  store %struct._xmlRMutex* %0, %struct._xmlRMutex** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRMutex** %2, metadata !170, metadata !DIExpression()), !dbg !171
  %3 = load i32, i32* @libxml_is_threaded, align 4, !dbg !172
  %4 = icmp eq i32 %3, 0, !dbg !174
  br i1 %4, label %5, label %6, !dbg !175

5:                                                ; preds = %1
  br label %36, !dbg !176

6:                                                ; preds = %1
  %7 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !177
  %8 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %7, i32 0, i32 0, !dbg !178
  %9 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* noundef %8) #6, !dbg !179
  %10 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !180
  %11 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %10, i32 0, i32 2, !dbg !181
  %12 = load i32, i32* %11, align 8, !dbg !182
  %13 = add i32 %12, -1, !dbg !182
  store i32 %13, i32* %11, align 8, !dbg !182
  %14 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !183
  %15 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %14, i32 0, i32 2, !dbg !185
  %16 = load i32, i32* %15, align 8, !dbg !185
  %17 = icmp eq i32 %16, 0, !dbg !186
  br i1 %17, label %18, label %32, !dbg !187

18:                                               ; preds = %6
  %19 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !188
  %20 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %19, i32 0, i32 3, !dbg !191
  %21 = load i32, i32* %20, align 4, !dbg !191
  %22 = icmp ne i32 %21, 0, !dbg !188
  br i1 %22, label %23, label %27, !dbg !192

23:                                               ; preds = %18
  %24 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !193
  %25 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %24, i32 0, i32 1, !dbg !194
  %26 = call i32 @pthread_cond_signal(%union.pthread_cond_t* noundef %25) #6, !dbg !195
  br label %27, !dbg !195

27:                                               ; preds = %23, %18
  %28 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !196
  %29 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %28, i32 0, i32 4, !dbg !197
  %30 = bitcast i64* %29 to i8*, !dbg !198
  %31 = call i8* @memset(i8* %30, i32 0, i64 8), !dbg !198
  br label %32, !dbg !199

32:                                               ; preds = %27, %6
  %33 = load %struct._xmlRMutex*, %struct._xmlRMutex** %2, align 8, !dbg !200
  %34 = getelementptr inbounds %struct._xmlRMutex, %struct._xmlRMutex* %33, i32 0, i32 0, !dbg !201
  %35 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* noundef %34) #6, !dbg !202
  br label %36, !dbg !203

36:                                               ; preds = %32, %5
  ret void, !dbg !203
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !204 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !209, metadata !DIExpression()), !dbg !210
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !211, metadata !DIExpression()), !dbg !212
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i8** %7, metadata !215, metadata !DIExpression()), !dbg !217
  %8 = load i8*, i8** %4, align 8, !dbg !218
  store i8* %8, i8** %7, align 8, !dbg !217
  br label %9, !dbg !219

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !220
  %11 = add i64 %10, -1, !dbg !220
  store i64 %11, i64* %6, align 8, !dbg !220
  %12 = icmp ugt i64 %10, 0, !dbg !221
  br i1 %12, label %13, label %18, !dbg !219

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !222
  %15 = trunc i32 %14 to i8, !dbg !222
  %16 = load i8*, i8** %7, align 8, !dbg !223
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !223
  store i8* %17, i8** %7, align 8, !dbg !223
  store i8 %15, i8* %16, align 1, !dbg !224
  br label %9, !dbg !219, !llvm.loop !225

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %19, !dbg !228
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92, !92}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "libxml_is_threaded", scope: !2, file: !3, line: 20, type: !19, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !82, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/121_threads.c_339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e763d2adbf269aabbeec755f177f3e1f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRMutex", file: !3, line: 17, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRMutex", file: !3, line: 11, size: 832, elements: !8)
!8 = !{!9, !43, !77, !78, !79}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !7, file: !3, line: 12, baseType: !10, size: 320)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !11, line: 72, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!12 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 67, size: 320, elements: !13)
!13 = !{!14, !36, !41}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !12, file: !11, line: 69, baseType: !15, size: 320)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !16, line: 22, size: 320, elements: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "6b075eca9ab0e2d761b2afc4ecfab776")
!17 = !{!18, !20, !22, !23, !24, !25, !27, !28}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !15, file: !16, line: 24, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !15, file: !16, line: 25, baseType: !21, size: 32, offset: 32)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !15, file: !16, line: 26, baseType: !19, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !15, file: !16, line: 28, baseType: !21, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !15, file: !16, line: 32, baseType: !19, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !15, file: !16, line: 34, baseType: !26, size: 16, offset: 160)
!26 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !15, file: !16, line: 35, baseType: !26, size: 16, offset: 176)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !15, file: !16, line: 36, baseType: !29, size: 128, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !30, line: 55, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "b9a7199822bce372686baacd32a9f4f3")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !30, line: 51, size: 128, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !31, file: !30, line: 53, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !31, file: !30, line: 54, baseType: !34, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !12, file: !11, line: 70, baseType: !37, size: 320)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 320, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 40)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !12, file: !11, line: 71, baseType: !42, size: 64)
!42 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !7, file: !3, line: 13, baseType: !44, size: 384, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !11, line: 80, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !11, line: 75, size: 384, elements: !46)
!46 = !{!47, !71, !75}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !45, file: !11, line: 77, baseType: !48, size: 384)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !30, line: 94, size: 384, elements: !49)
!49 = !{!50, !62, !63, !67, !68, !69, !70}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !48, file: !30, line: 96, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !52, line: 33, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "d1ec99b0f6e36c0a42ac284d459cbd38")
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !52, line: 25, size: 64, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !53, file: !52, line: 27, baseType: !56, size: 64)
!56 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !53, file: !52, line: 32, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !52, line: 28, size: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !58, file: !52, line: 30, baseType: !21, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !58, file: !52, line: 31, baseType: !21, size: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !48, file: !30, line: 97, baseType: !51, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !48, file: !30, line: 98, baseType: !64, size: 64, offset: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 2)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !48, file: !30, line: 99, baseType: !64, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !48, file: !30, line: 100, baseType: !21, size: 32, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !48, file: !30, line: 101, baseType: !21, size: 32, offset: 288)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !48, file: !30, line: 102, baseType: !64, size: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !45, file: !11, line: 78, baseType: !72, size: 384)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 384, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 48)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !45, file: !11, line: 79, baseType: !76, size: 64)
!76 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "held", scope: !7, file: !3, line: 14, baseType: !21, size: 32, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !7, file: !3, line: 15, baseType: !21, size: 32, offset: 736)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !7, file: !3, line: 16, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !11, line: 27, baseType: !81)
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !{!0}
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!85 = !{i32 7, !"Dwarf Version", i32 5}
!86 = !{i32 2, !"Debug Info Version", i32 3}
!87 = !{i32 1, !"wchar_size", i32 4}
!88 = !{i32 7, !"PIC Level", i32 2}
!89 = !{i32 7, !"PIE Level", i32 2}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"Ubuntu clang version 14.0.6"}
!93 = distinct !DISubprogram(name: "pthread_mutex_lock", scope: !3, file: !3, line: 26, type: !94, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!94 = !DISubroutineType(types: !95)
!95 = !{!19, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!97 = !{}
!98 = !DILocalVariable(name: "mutex", arg: 1, scope: !93, file: !3, line: 26, type: !96)
!99 = !DILocation(line: 26, column: 41, scope: !93)
!100 = !DILocation(line: 27, column: 5, scope: !93)
!101 = distinct !DISubprogram(name: "pthread_mutex_unlock", scope: !3, file: !3, line: 31, type: !94, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!102 = !DILocalVariable(name: "mutex", arg: 1, scope: !101, file: !3, line: 31, type: !96)
!103 = !DILocation(line: 31, column: 43, scope: !101)
!104 = !DILocation(line: 32, column: 5, scope: !101)
!105 = distinct !DISubprogram(name: "pthread_cond_signal", scope: !3, file: !3, line: 36, type: !106, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!106 = !DISubroutineType(types: !107)
!107 = !{!19, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!109 = !DILocalVariable(name: "cond", arg: 1, scope: !105, file: !3, line: 36, type: !108)
!110 = !DILocation(line: 36, column: 41, scope: !105)
!111 = !DILocation(line: 37, column: 5, scope: !105)
!112 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 40, type: !113, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!113 = !DISubroutineType(types: !114)
!114 = !{!19}
!115 = !DILocation(line: 42, column: 5, scope: !112)
!116 = !DILocation(line: 43, column: 17, scope: !112)
!117 = !DILocation(line: 43, column: 36, scope: !112)
!118 = !DILocation(line: 43, column: 41, scope: !112)
!119 = !DILocation(line: 43, column: 44, scope: !112)
!120 = !DILocation(line: 43, column: 63, scope: !112)
!121 = !DILocation(line: 43, column: 5, scope: !112)
!122 = !DILocalVariable(name: "tok", scope: !112, file: !3, line: 46, type: !5)
!123 = !DILocation(line: 46, column: 16, scope: !112)
!124 = !DILocation(line: 46, column: 35, scope: !112)
!125 = !DILocation(line: 46, column: 22, scope: !112)
!126 = !DILocation(line: 47, column: 10, scope: !127)
!127 = distinct !DILexicalBlock(scope: !112, file: !3, line: 47, column: 9)
!128 = !DILocation(line: 47, column: 9, scope: !112)
!129 = !DILocation(line: 47, column: 15, scope: !127)
!130 = !DILocation(line: 50, column: 25, scope: !112)
!131 = !DILocation(line: 50, column: 30, scope: !112)
!132 = !DILocation(line: 50, column: 24, scope: !112)
!133 = !DILocation(line: 50, column: 5, scope: !112)
!134 = !DILocation(line: 51, column: 25, scope: !112)
!135 = !DILocation(line: 51, column: 30, scope: !112)
!136 = !DILocation(line: 51, column: 24, scope: !112)
!137 = !DILocation(line: 51, column: 5, scope: !112)
!138 = !DILocation(line: 54, column: 17, scope: !112)
!139 = !DILocation(line: 54, column: 22, scope: !112)
!140 = !DILocation(line: 54, column: 27, scope: !112)
!141 = !DILocation(line: 54, column: 32, scope: !112)
!142 = !DILocation(line: 54, column: 35, scope: !112)
!143 = !DILocation(line: 54, column: 40, scope: !112)
!144 = !DILocation(line: 54, column: 45, scope: !112)
!145 = !DILocation(line: 0, scope: !112)
!146 = !DILocation(line: 54, column: 5, scope: !112)
!147 = !DILocation(line: 57, column: 17, scope: !112)
!148 = !DILocation(line: 57, column: 22, scope: !112)
!149 = !DILocation(line: 57, column: 27, scope: !112)
!150 = !DILocation(line: 57, column: 5, scope: !112)
!151 = !DILocation(line: 60, column: 21, scope: !112)
!152 = !DILocation(line: 60, column: 5, scope: !112)
!153 = !DILocalVariable(name: "tid_offset", scope: !112, file: !3, line: 69, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 46, baseType: !81)
!155 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!156 = !DILocation(line: 69, column: 12, scope: !112)
!157 = !DILocalVariable(name: "tid_size", scope: !112, file: !3, line: 70, type: !154)
!158 = !DILocation(line: 70, column: 12, scope: !112)
!159 = !DILocalVariable(name: "struct_size", scope: !112, file: !3, line: 71, type: !154)
!160 = !DILocation(line: 71, column: 12, scope: !112)
!161 = !DILocation(line: 73, column: 5, scope: !112)
!162 = !DILocation(line: 76, column: 5, scope: !112)
!163 = !DILocation(line: 78, column: 10, scope: !112)
!164 = !DILocation(line: 78, column: 5, scope: !112)
!165 = !DILocation(line: 79, column: 5, scope: !112)
!166 = !DILocation(line: 80, column: 1, scope: !112)
!167 = distinct !DISubprogram(name: "xmlRMutexUnlock", scope: !3, file: !3, line: 83, type: !168, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !5}
!170 = !DILocalVariable(name: "tok", arg: 1, scope: !167, file: !3, line: 83, type: !5)
!171 = !DILocation(line: 83, column: 33, scope: !167)
!172 = !DILocation(line: 84, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !167, file: !3, line: 84, column: 9)
!174 = !DILocation(line: 84, column: 28, scope: !173)
!175 = !DILocation(line: 84, column: 9, scope: !167)
!176 = !DILocation(line: 85, column: 9, scope: !173)
!177 = !DILocation(line: 87, column: 25, scope: !167)
!178 = !DILocation(line: 87, column: 30, scope: !167)
!179 = !DILocation(line: 87, column: 5, scope: !167)
!180 = !DILocation(line: 88, column: 5, scope: !167)
!181 = !DILocation(line: 88, column: 10, scope: !167)
!182 = !DILocation(line: 88, column: 14, scope: !167)
!183 = !DILocation(line: 89, column: 9, scope: !184)
!184 = distinct !DILexicalBlock(scope: !167, file: !3, line: 89, column: 9)
!185 = !DILocation(line: 89, column: 14, scope: !184)
!186 = !DILocation(line: 89, column: 19, scope: !184)
!187 = !DILocation(line: 89, column: 9, scope: !167)
!188 = !DILocation(line: 90, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !3, line: 90, column: 13)
!190 = distinct !DILexicalBlock(scope: !184, file: !3, line: 89, column: 25)
!191 = !DILocation(line: 90, column: 18, scope: !189)
!192 = !DILocation(line: 90, column: 13, scope: !190)
!193 = !DILocation(line: 91, column: 34, scope: !189)
!194 = !DILocation(line: 91, column: 39, scope: !189)
!195 = !DILocation(line: 91, column: 13, scope: !189)
!196 = !DILocation(line: 92, column: 17, scope: !190)
!197 = !DILocation(line: 92, column: 22, scope: !190)
!198 = !DILocation(line: 92, column: 9, scope: !190)
!199 = !DILocation(line: 93, column: 5, scope: !190)
!200 = !DILocation(line: 94, column: 27, scope: !167)
!201 = !DILocation(line: 94, column: 32, scope: !167)
!202 = !DILocation(line: 94, column: 5, scope: !167)
!203 = !DILocation(line: 95, column: 1, scope: !167)
!204 = distinct !DISubprogram(name: "memset", scope: !205, file: !205, line: 12, type: !206, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !97)
!205 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !208, !19, !154}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!209 = !DILocalVariable(name: "dst", arg: 1, scope: !204, file: !205, line: 12, type: !208)
!210 = !DILocation(line: 12, column: 20, scope: !204)
!211 = !DILocalVariable(name: "s", arg: 2, scope: !204, file: !205, line: 12, type: !19)
!212 = !DILocation(line: 12, column: 29, scope: !204)
!213 = !DILocalVariable(name: "count", arg: 3, scope: !204, file: !205, line: 12, type: !154)
!214 = !DILocation(line: 12, column: 39, scope: !204)
!215 = !DILocalVariable(name: "a", scope: !204, file: !205, line: 13, type: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!217 = !DILocation(line: 13, column: 9, scope: !204)
!218 = !DILocation(line: 13, column: 13, scope: !204)
!219 = !DILocation(line: 14, column: 3, scope: !204)
!220 = !DILocation(line: 14, column: 15, scope: !204)
!221 = !DILocation(line: 14, column: 18, scope: !204)
!222 = !DILocation(line: 15, column: 12, scope: !204)
!223 = !DILocation(line: 15, column: 7, scope: !204)
!224 = !DILocation(line: 15, column: 10, scope: !204)
!225 = distinct !{!225, !219, !222, !226}
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 16, column: 10, scope: !204)
!228 = !DILocation(line: 16, column: 3, scope: !204)
