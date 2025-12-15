; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStackState = type { [64 x i8] }
%struct._xmlC14NCtx = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"checking for relative namespaces\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [39 x i8] c"int target_function(xmlC14NCtx *, int)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ns_rendered\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"parent_is_doc\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"visible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NVisibleNsStackSave(i8* noundef %0, %struct._xmlC14NVisibleNsStackState* noundef %1) #0 !dbg !14 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlC14NVisibleNsStackState*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  store %struct._xmlC14NVisibleNsStackState* %1, %struct._xmlC14NVisibleNsStackState** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState** %4, metadata !29, metadata !DIExpression()), !dbg !30
  %5 = load i8*, i8** %3, align 8, !dbg !31
  %6 = load %struct._xmlC14NVisibleNsStackState*, %struct._xmlC14NVisibleNsStackState** %4, align 8, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrInternal(i8* noundef %0) #0 !dbg !34 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i8*, i8** %2, align 8, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlC14NCtx* noundef %0, i32 noundef %1) #0 !dbg !43 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlC14NCtx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlC14NVisibleNsStackState, align 1
  %7 = alloca i32, align 4
  store %struct._xmlC14NCtx* %0, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStackState* %6, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %7, align 4, !dbg !61
  %8 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !62
  %9 = icmp eq %struct._xmlC14NCtx* %8, null, !dbg !64
  br i1 %9, label %10, label %11, !dbg !65

10:                                               ; preds = %2
  call void @xmlC14NErrInternal(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !66
  store i32 -1, i32* %3, align 4, !dbg !68
  br label %35, !dbg !68

11:                                               ; preds = %2
  %12 = bitcast %struct._xmlC14NVisibleNsStackState* %6 to i8*, !dbg !69
  %13 = call i8* @memset(i8* %12, i32 0, i64 64), !dbg !69
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !70
  %15 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !71
  %16 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %15, i32 0, i32 0, !dbg !72
  %17 = load i8*, i8** %16, align 8, !dbg !72
  call void @xmlC14NVisibleNsStackSave(i8* noundef %17, %struct._xmlC14NVisibleNsStackState* noundef %6), !dbg !73
  %18 = load i32, i32* %5, align 4, !dbg !74
  %19 = icmp ne i32 %18, 0, !dbg !74
  br i1 %19, label %20, label %34, !dbg !76

20:                                               ; preds = %11
  %21 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !77
  %22 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %21, i32 0, i32 1, !dbg !80
  %23 = load i32, i32* %22, align 8, !dbg !80
  %24 = icmp ne i32 %23, 0, !dbg !77
  br i1 %24, label %25, label %33, !dbg !81

25:                                               ; preds = %20
  %26 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !82
  %27 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %26, i32 0, i32 1, !dbg !84
  %28 = load i32, i32* %27, align 8, !dbg !84
  store i32 %28, i32* %7, align 4, !dbg !85
  %29 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !86
  %30 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %29, i32 0, i32 1, !dbg !87
  store i32 0, i32* %30, align 8, !dbg !88
  %31 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %4, align 8, !dbg !89
  %32 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %31, i32 0, i32 2, !dbg !90
  store i32 1, i32* %32, align 4, !dbg !91
  br label %33, !dbg !92

33:                                               ; preds = %25, %20
  br label %34, !dbg !93

34:                                               ; preds = %33, %11
  store i32 0, i32* %3, align 4, !dbg !94
  br label %35, !dbg !94

35:                                               ; preds = %34, %10
  %36 = load i32, i32* %3, align 4, !dbg !95
  ret i32 %36, !dbg !95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !96 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %2, metadata !99, metadata !DIExpression()), !dbg !100
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !101
  %6 = bitcast i8* %5 to %struct._xmlC14NCtx*, !dbg !101
  store %struct._xmlC14NCtx* %6, %struct._xmlC14NCtx** %2, align 8, !dbg !100
  %7 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !102
  %8 = icmp eq %struct._xmlC14NCtx* %7, null, !dbg !104
  br i1 %8, label %9, label %10, !dbg !105

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !106
  br label %53, !dbg !106

10:                                               ; preds = %0
  %11 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !107
  %12 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %11, i32 0, i32 0, !dbg !108
  %13 = bitcast i8** %12 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !110
  %14 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !111
  %15 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %14, i32 0, i32 1, !dbg !112
  %16 = bitcast i32* %15 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)), !dbg !114
  %17 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !115
  %18 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %17, i32 0, i32 2, !dbg !116
  %19 = bitcast i32* %18 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %3, metadata !119, metadata !DIExpression()), !dbg !120
  %20 = bitcast i32* %3 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !122
  %21 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !123
  %22 = icmp ne %struct._xmlC14NCtx* %21, null, !dbg !124
  %23 = zext i1 %22 to i32, !dbg !124
  %24 = sext i32 %23 to i64, !dbg !123
  call void @klee_assume(i64 noundef %24), !dbg !125
  %25 = load i32, i32* %3, align 4, !dbg !126
  %26 = icmp eq i32 %25, 0, !dbg !127
  br i1 %26, label %30, label %27, !dbg !128

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4, !dbg !129
  %29 = icmp eq i32 %28, 1, !dbg !130
  br label %30, !dbg !128

30:                                               ; preds = %27, %10
  %31 = phi i1 [ true, %10 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32, !dbg !128
  %33 = sext i32 %32 to i64, !dbg !126
  call void @klee_assume(i64 noundef %33), !dbg !131
  %34 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !132
  %35 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %34, i32 0, i32 1, !dbg !133
  %36 = load i32, i32* %35, align 8, !dbg !133
  %37 = icmp eq i32 %36, 0, !dbg !134
  br i1 %37, label %43, label %38, !dbg !135

38:                                               ; preds = %30
  %39 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !136
  %40 = getelementptr inbounds %struct._xmlC14NCtx, %struct._xmlC14NCtx* %39, i32 0, i32 1, !dbg !137
  %41 = load i32, i32* %40, align 8, !dbg !137
  %42 = icmp eq i32 %41, 1, !dbg !138
  br label %43, !dbg !135

43:                                               ; preds = %38, %30
  %44 = phi i1 [ true, %30 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32, !dbg !135
  %46 = sext i32 %45 to i64, !dbg !132
  call void @klee_assume(i64 noundef %46), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %4, metadata !140, metadata !DIExpression()), !dbg !141
  %47 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !142
  %48 = load i32, i32* %3, align 4, !dbg !143
  %49 = call i32 @target_function(%struct._xmlC14NCtx* noundef %47, i32 noundef %48), !dbg !144
  store i32 %49, i32* %4, align 4, !dbg !141
  %50 = load %struct._xmlC14NCtx*, %struct._xmlC14NCtx** %2, align 8, !dbg !145
  %51 = bitcast %struct._xmlC14NCtx* %50 to i8*, !dbg !145
  call void @free(i8* noundef %51) #7, !dbg !146
  %52 = load i32, i32* %4, align 4, !dbg !147
  store i32 %52, i32* %1, align 4, !dbg !148
  br label %53, !dbg !148

53:                                               ; preds = %43, %9
  %54 = load i32, i32* %1, align 4, !dbg !149
  ret i32 %54, !dbg !149
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !150 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !159, metadata !DIExpression()), !dbg !160
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i8** %7, metadata !163, metadata !DIExpression()), !dbg !165
  %8 = load i8*, i8** %4, align 8, !dbg !166
  store i8* %8, i8** %7, align 8, !dbg !165
  br label %9, !dbg !167

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !168
  %11 = add i64 %10, -1, !dbg !168
  store i64 %11, i64* %6, align 8, !dbg !168
  %12 = icmp ugt i64 %10, 0, !dbg !169
  br i1 %12, label %13, label %18, !dbg !167

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !170
  %15 = trunc i32 %14 to i8, !dbg !170
  %16 = load i8*, i8** %7, align 8, !dbg !171
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !171
  store i8* %17, i8** %7, align 8, !dbg !171
  store i8 %15, i8* %16, align 1, !dbg !172
  br label %9, !dbg !167, !llvm.loop !173

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !175
  ret i8* %19, !dbg !176
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/006_c14n.c_1444_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "903999d63f668dd481aeae82971a3024")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackSave", scope: !1, file: !1, line: 25, type: !15, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackState", file: !1, line: 11, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStackState", file: !1, line: 19, size: 512, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !19, file: !1, line: 21, baseType: !22, size: 512)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !{!25}
!25 = !DISubrange(count: 64)
!26 = !{}
!27 = !DILocalVariable(name: "stack", arg: 1, scope: !14, file: !1, line: 25, type: !3)
!28 = !DILocation(line: 25, column: 38, scope: !14)
!29 = !DILocalVariable(name: "state", arg: 2, scope: !14, file: !1, line: 25, type: !17)
!30 = !DILocation(line: 25, column: 73, scope: !14)
!31 = !DILocation(line: 27, column: 11, scope: !14)
!32 = !DILocation(line: 28, column: 11, scope: !14)
!33 = !DILocation(line: 29, column: 1, scope: !14)
!34 = distinct !DISubprogram(name: "xmlC14NErrInternal", scope: !1, file: !1, line: 32, type: !35, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!39 = !DILocalVariable(name: "msg", arg: 1, scope: !34, file: !1, line: 32, type: !37)
!40 = !DILocation(line: 32, column: 37, scope: !34)
!41 = !DILocation(line: 33, column: 11, scope: !34)
!42 = !DILocation(line: 34, column: 1, scope: !34)
!43 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !44, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !46}
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !1, line: 10, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !1, line: 13, size: 128, elements: !50)
!50 = !{!51, !52, !53}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !49, file: !1, line: 14, baseType: !3, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "parent_is_doc", scope: !49, file: !1, line: 15, baseType: !46, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !49, file: !1, line: 16, baseType: !46, size: 32, offset: 96)
!54 = !DILocalVariable(name: "ctx", arg: 1, scope: !43, file: !1, line: 37, type: !47)
!55 = !DILocation(line: 37, column: 33, scope: !43)
!56 = !DILocalVariable(name: "visible", arg: 2, scope: !43, file: !1, line: 37, type: !46)
!57 = !DILocation(line: 37, column: 42, scope: !43)
!58 = !DILocalVariable(name: "state", scope: !43, file: !1, line: 38, type: !18)
!59 = !DILocation(line: 38, column: 32, scope: !43)
!60 = !DILocalVariable(name: "parent_is_doc", scope: !43, file: !1, line: 39, type: !46)
!61 = !DILocation(line: 39, column: 9, scope: !43)
!62 = !DILocation(line: 42, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !43, file: !1, line: 42, column: 9)
!64 = !DILocation(line: 42, column: 13, scope: !63)
!65 = !DILocation(line: 42, column: 9, scope: !43)
!66 = !DILocation(line: 43, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 42, column: 22)
!68 = !DILocation(line: 44, column: 9, scope: !67)
!69 = !DILocation(line: 50, column: 5, scope: !43)
!70 = !DILocation(line: 53, column: 5, scope: !43)
!71 = !DILocation(line: 55, column: 31, scope: !43)
!72 = !DILocation(line: 55, column: 36, scope: !43)
!73 = !DILocation(line: 55, column: 5, scope: !43)
!74 = !DILocation(line: 57, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 57, column: 9)
!76 = !DILocation(line: 57, column: 9, scope: !43)
!77 = !DILocation(line: 58, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 58, column: 13)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 57, column: 18)
!80 = !DILocation(line: 58, column: 18, scope: !78)
!81 = !DILocation(line: 58, column: 13, scope: !79)
!82 = !DILocation(line: 60, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 58, column: 33)
!84 = !DILocation(line: 60, column: 34, scope: !83)
!85 = !DILocation(line: 60, column: 27, scope: !83)
!86 = !DILocation(line: 61, column: 13, scope: !83)
!87 = !DILocation(line: 61, column: 18, scope: !83)
!88 = !DILocation(line: 61, column: 32, scope: !83)
!89 = !DILocation(line: 62, column: 13, scope: !83)
!90 = !DILocation(line: 62, column: 18, scope: !83)
!91 = !DILocation(line: 62, column: 22, scope: !83)
!92 = !DILocation(line: 63, column: 9, scope: !83)
!93 = !DILocation(line: 64, column: 5, scope: !79)
!94 = !DILocation(line: 66, column: 5, scope: !43)
!95 = !DILocation(line: 67, column: 1, scope: !43)
!96 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !97, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!97 = !DISubroutineType(types: !98)
!98 = !{!46}
!99 = !DILocalVariable(name: "ctx", scope: !96, file: !1, line: 71, type: !47)
!100 = !DILocation(line: 71, column: 17, scope: !96)
!101 = !DILocation(line: 71, column: 23, scope: !96)
!102 = !DILocation(line: 72, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 72, column: 9)
!104 = !DILocation(line: 72, column: 13, scope: !103)
!105 = !DILocation(line: 72, column: 9, scope: !96)
!106 = !DILocation(line: 72, column: 22, scope: !103)
!107 = !DILocation(line: 75, column: 25, scope: !96)
!108 = !DILocation(line: 75, column: 30, scope: !96)
!109 = !DILocation(line: 75, column: 24, scope: !96)
!110 = !DILocation(line: 75, column: 5, scope: !96)
!111 = !DILocation(line: 76, column: 25, scope: !96)
!112 = !DILocation(line: 76, column: 30, scope: !96)
!113 = !DILocation(line: 76, column: 24, scope: !96)
!114 = !DILocation(line: 76, column: 5, scope: !96)
!115 = !DILocation(line: 77, column: 25, scope: !96)
!116 = !DILocation(line: 77, column: 30, scope: !96)
!117 = !DILocation(line: 77, column: 24, scope: !96)
!118 = !DILocation(line: 77, column: 5, scope: !96)
!119 = !DILocalVariable(name: "visible", scope: !96, file: !1, line: 80, type: !46)
!120 = !DILocation(line: 80, column: 9, scope: !96)
!121 = !DILocation(line: 81, column: 24, scope: !96)
!122 = !DILocation(line: 81, column: 5, scope: !96)
!123 = !DILocation(line: 84, column: 17, scope: !96)
!124 = !DILocation(line: 84, column: 21, scope: !96)
!125 = !DILocation(line: 84, column: 5, scope: !96)
!126 = !DILocation(line: 85, column: 17, scope: !96)
!127 = !DILocation(line: 85, column: 25, scope: !96)
!128 = !DILocation(line: 85, column: 30, scope: !96)
!129 = !DILocation(line: 85, column: 33, scope: !96)
!130 = !DILocation(line: 85, column: 41, scope: !96)
!131 = !DILocation(line: 85, column: 5, scope: !96)
!132 = !DILocation(line: 86, column: 17, scope: !96)
!133 = !DILocation(line: 86, column: 22, scope: !96)
!134 = !DILocation(line: 86, column: 36, scope: !96)
!135 = !DILocation(line: 86, column: 41, scope: !96)
!136 = !DILocation(line: 86, column: 44, scope: !96)
!137 = !DILocation(line: 86, column: 49, scope: !96)
!138 = !DILocation(line: 86, column: 63, scope: !96)
!139 = !DILocation(line: 86, column: 5, scope: !96)
!140 = !DILocalVariable(name: "result", scope: !96, file: !1, line: 89, type: !46)
!141 = !DILocation(line: 89, column: 9, scope: !96)
!142 = !DILocation(line: 89, column: 34, scope: !96)
!143 = !DILocation(line: 89, column: 39, scope: !96)
!144 = !DILocation(line: 89, column: 18, scope: !96)
!145 = !DILocation(line: 91, column: 10, scope: !96)
!146 = !DILocation(line: 91, column: 5, scope: !96)
!147 = !DILocation(line: 92, column: 12, scope: !96)
!148 = !DILocation(line: 92, column: 5, scope: !96)
!149 = !DILocation(line: 93, column: 1, scope: !96)
!150 = distinct !DISubprogram(name: "memset", scope: !151, file: !151, line: 12, type: !152, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !26)
!151 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!152 = !DISubroutineType(types: !153)
!153 = !{!3, !3, !46, !154}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 46, baseType: !156)
!155 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!156 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DILocalVariable(name: "dst", arg: 1, scope: !150, file: !151, line: 12, type: !3)
!158 = !DILocation(line: 12, column: 20, scope: !150)
!159 = !DILocalVariable(name: "s", arg: 2, scope: !150, file: !151, line: 12, type: !46)
!160 = !DILocation(line: 12, column: 29, scope: !150)
!161 = !DILocalVariable(name: "count", arg: 3, scope: !150, file: !151, line: 12, type: !154)
!162 = !DILocation(line: 12, column: 39, scope: !150)
!163 = !DILocalVariable(name: "a", scope: !150, file: !151, line: 13, type: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!165 = !DILocation(line: 13, column: 9, scope: !150)
!166 = !DILocation(line: 13, column: 13, scope: !150)
!167 = !DILocation(line: 14, column: 3, scope: !150)
!168 = !DILocation(line: 14, column: 15, scope: !150)
!169 = !DILocation(line: 14, column: 18, scope: !150)
!170 = !DILocation(line: 15, column: 12, scope: !150)
!171 = !DILocation(line: 15, column: 7, scope: !150)
!172 = !DILocation(line: 15, column: 10, scope: !150)
!173 = distinct !{!173, !167, !170, !174}
!174 = !{!"llvm.loop.mustprogress"}
!175 = !DILocation(line: 16, column: 10, scope: !150)
!176 = !DILocation(line: 16, column: 3, scope: !150)
