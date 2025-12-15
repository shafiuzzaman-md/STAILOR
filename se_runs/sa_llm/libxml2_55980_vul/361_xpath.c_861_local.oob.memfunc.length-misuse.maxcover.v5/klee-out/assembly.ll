; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/361_xpath.c_861_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/361_xpath.c_861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPointerList = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"xmlPointerListCreate: allocating item\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"(ret != ((void*)0) && sizeof(xmlPointerList) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/361_xpath.c_861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlPointerListCreate = private unnamed_addr constant [44 x i8] c"xmlPointerListPtr xmlPointerListCreate(int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"initialSize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !14 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = load i64, i64* %2, align 8, !dbg !25
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !26
  store i8* %5, i8** %3, align 8, !dbg !24
  %6 = load i8*, i8** %3, align 8, !dbg !27
  ret i8* %6, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !29 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlPointerListAddSize(%struct._xmlPointerList* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !40 {
  %4 = alloca %struct._xmlPointerList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlPointerList* %0, %struct._xmlPointerList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %4, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !57, metadata !DIExpression()), !dbg !58
  %7 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !59
  %8 = icmp ne %struct._xmlPointerList* %7, null, !dbg !59
  br i1 %8, label %9, label %29, !dbg !61

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4, !dbg !62
  %11 = icmp sgt i32 %10, 0, !dbg !63
  br i1 %11, label %12, label %29, !dbg !64

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4, !dbg !65
  %14 = sext i32 %13 to i64, !dbg !65
  %15 = mul i64 %14, 8, !dbg !67
  %16 = call noalias i8* @malloc(i64 noundef %15) #7, !dbg !68
  %17 = bitcast i8* %16 to i8**, !dbg !68
  %18 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !69
  %19 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %18, i32 0, i32 0, !dbg !70
  store i8** %17, i8*** %19, align 8, !dbg !71
  %20 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !72
  %21 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %20, i32 0, i32 0, !dbg !74
  %22 = load i8**, i8*** %21, align 8, !dbg !74
  %23 = icmp ne i8** %22, null, !dbg !72
  br i1 %23, label %24, label %28, !dbg !75

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4, !dbg !76
  %26 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !78
  %27 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %26, i32 0, i32 2, !dbg !79
  store i32 %25, i32* %27, align 4, !dbg !80
  br label %28, !dbg !81

28:                                               ; preds = %24, %12
  br label %29, !dbg !82

29:                                               ; preds = %28, %9, %3
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlPointerList* @xmlPointerListCreate(i32 noundef %0) #0 !dbg !84 {
  %2 = alloca %struct._xmlPointerList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlPointerList*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %4, metadata !89, metadata !DIExpression()), !dbg !90
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !91
  %6 = bitcast i8* %5 to %struct._xmlPointerList*, !dbg !91
  store %struct._xmlPointerList* %6, %struct._xmlPointerList** %4, align 8, !dbg !92
  %7 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !93
  %8 = icmp eq %struct._xmlPointerList* %7, null, !dbg !95
  br i1 %8, label %9, label %10, !dbg !96

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)), !dbg !97
  store %struct._xmlPointerList* null, %struct._xmlPointerList** %2, align 8, !dbg !99
  br label %31, !dbg !99

10:                                               ; preds = %1
  %11 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !100
  %12 = bitcast %struct._xmlPointerList* %11 to i8*, !dbg !101
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !101
  %14 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !102
  %15 = icmp ne %struct._xmlPointerList* %14, null, !dbg !102
  br i1 %15, label %16, label %18, !dbg !102

16:                                               ; preds = %10
  br i1 true, label %17, label %18, !dbg !102

17:                                               ; preds = %16
  br label %20, !dbg !102

18:                                               ; preds = %16, %10
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.xmlPointerListCreate, i64 0, i64 0)), !dbg !102
  br label %20, !dbg !102

20:                                               ; preds = %18, %17
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.xmlPointerListCreate, i64 0, i64 0)), !dbg !103
  %22 = load i32, i32* %3, align 4, !dbg !104
  %23 = icmp sgt i32 %22, 0, !dbg !106
  br i1 %23, label %24, label %29, !dbg !107

24:                                               ; preds = %20
  %25 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !108
  %26 = load i32, i32* %3, align 4, !dbg !110
  call void @xmlPointerListAddSize(%struct._xmlPointerList* noundef %25, i8* noundef null, i32 noundef %26), !dbg !111
  %27 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !112
  %28 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %27, i32 0, i32 1, !dbg !113
  store i32 0, i32* %28, align 8, !dbg !114
  br label %29, !dbg !115

29:                                               ; preds = %24, %20
  %30 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !116
  store %struct._xmlPointerList* %30, %struct._xmlPointerList** %2, align 8, !dbg !117
  br label %31, !dbg !117

31:                                               ; preds = %29, %9
  %32 = load %struct._xmlPointerList*, %struct._xmlPointerList** %2, align 8, !dbg !118
  ret %struct._xmlPointerList* %32, !dbg !118
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !119 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlPointerList*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !122, metadata !DIExpression()), !dbg !123
  %4 = bitcast i32* %2 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !125
  %5 = load i32, i32* %2, align 4, !dbg !126
  %6 = icmp sge i32 %5, -10, !dbg !127
  br i1 %6, label %7, label %10, !dbg !128

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4, !dbg !129
  %9 = icmp sle i32 %8, 100, !dbg !130
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ], !dbg !131
  %12 = zext i1 %11 to i32, !dbg !128
  %13 = sext i32 %12 to i64, !dbg !126
  call void @klee_assume(i64 noundef %13), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %3, metadata !133, metadata !DIExpression()), !dbg !134
  %14 = load i32, i32* %2, align 4, !dbg !135
  %15 = call %struct._xmlPointerList* @xmlPointerListCreate(i32 noundef %14), !dbg !136
  store %struct._xmlPointerList* %15, %struct._xmlPointerList** %3, align 8, !dbg !134
  %16 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !137
  %17 = icmp ne %struct._xmlPointerList* %16, null, !dbg !137
  br i1 %17, label %18, label %31, !dbg !139

18:                                               ; preds = %10
  %19 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !140
  %20 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %19, i32 0, i32 0, !dbg !143
  %21 = load i8**, i8*** %20, align 8, !dbg !143
  %22 = icmp ne i8** %21, null, !dbg !140
  br i1 %22, label %23, label %28, !dbg !144

23:                                               ; preds = %18
  %24 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !145
  %25 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %24, i32 0, i32 0, !dbg !147
  %26 = load i8**, i8*** %25, align 8, !dbg !147
  %27 = bitcast i8** %26 to i8*, !dbg !145
  call void @free(i8* noundef %27) #7, !dbg !148
  br label %28, !dbg !149

28:                                               ; preds = %23, %18
  %29 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !150
  %30 = bitcast %struct._xmlPointerList* %29 to i8*, !dbg !150
  call void @free(i8* noundef %30) #7, !dbg !151
  br label %31, !dbg !152

31:                                               ; preds = %28, %10
  ret i32 0, !dbg !153
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %7, metadata !164, metadata !DIExpression()), !dbg !166
  %8 = load i8*, i8** %4, align 8, !dbg !167
  store i8* %8, i8** %7, align 8, !dbg !166
  br label %9, !dbg !168

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !169
  %11 = add i64 %10, -1, !dbg !169
  store i64 %11, i64* %6, align 8, !dbg !169
  %12 = icmp ugt i64 %10, 0, !dbg !170
  br i1 %12, label %13, label %18, !dbg !168

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !171
  %15 = trunc i32 %14 to i8, !dbg !171
  %16 = load i8*, i8** %7, align 8, !dbg !172
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !172
  store i8* %17, i8** %7, align 8, !dbg !172
  store i8 %15, i8* %16, align 1, !dbg !173
  br label %9, !dbg !168, !llvm.loop !174

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %19, !dbg !177
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/361_xpath.c_861_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c2676150c6b2d6d8f40f153c04516edd")
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
!14 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !15, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "size", arg: 1, scope: !14, file: !1, line: 20, type: !17)
!22 = !DILocation(line: 20, column: 24, scope: !14)
!23 = !DILocalVariable(name: "ptr", scope: !14, file: !1, line: 21, type: !3)
!24 = !DILocation(line: 21, column: 11, scope: !14)
!25 = !DILocation(line: 21, column: 24, scope: !14)
!26 = !DILocation(line: 21, column: 17, scope: !14)
!27 = !DILocation(line: 22, column: 12, scope: !14)
!28 = !DILocation(line: 22, column: 5, scope: !14)
!29 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 26, type: !30, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !3, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 26, type: !3)
!36 = !DILocation(line: 26, column: 30, scope: !29)
!37 = !DILocalVariable(name: "msg", arg: 2, scope: !29, file: !1, line: 26, type: !32)
!38 = !DILocation(line: 26, column: 48, scope: !29)
!39 = !DILocation(line: 28, column: 1, scope: !29)
!40 = distinct !DISubprogram(name: "xmlPointerListAddSize", scope: !1, file: !1, line: 31, type: !41, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !3, !51}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPointerListPtr", file: !1, line: 11, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPointerList", file: !1, line: 10, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPointerList", file: !1, line: 13, size: 128, elements: !47)
!47 = !{!48, !50, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !46, file: !1, line: 14, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !46, file: !1, line: 15, baseType: !51, size: 32, offset: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !46, file: !1, line: 16, baseType: !51, size: 32, offset: 96)
!53 = !DILocalVariable(name: "list", arg: 1, scope: !40, file: !1, line: 31, type: !43)
!54 = !DILocation(line: 31, column: 46, scope: !40)
!55 = !DILocalVariable(name: "item", arg: 2, scope: !40, file: !1, line: 31, type: !3)
!56 = !DILocation(line: 31, column: 58, scope: !40)
!57 = !DILocalVariable(name: "size", arg: 3, scope: !40, file: !1, line: 31, type: !51)
!58 = !DILocation(line: 31, column: 68, scope: !40)
!59 = !DILocation(line: 32, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !40, file: !1, line: 32, column: 9)
!61 = !DILocation(line: 32, column: 14, scope: !60)
!62 = !DILocation(line: 32, column: 17, scope: !60)
!63 = !DILocation(line: 32, column: 22, scope: !60)
!64 = !DILocation(line: 32, column: 9, scope: !40)
!65 = !DILocation(line: 33, column: 30, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 32, column: 27)
!67 = !DILocation(line: 33, column: 35, scope: !66)
!68 = !DILocation(line: 33, column: 23, scope: !66)
!69 = !DILocation(line: 33, column: 9, scope: !66)
!70 = !DILocation(line: 33, column: 15, scope: !66)
!71 = !DILocation(line: 33, column: 21, scope: !66)
!72 = !DILocation(line: 34, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 34, column: 13)
!74 = !DILocation(line: 34, column: 19, scope: !73)
!75 = !DILocation(line: 34, column: 13, scope: !66)
!76 = !DILocation(line: 35, column: 26, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 34, column: 26)
!78 = !DILocation(line: 35, column: 13, scope: !77)
!79 = !DILocation(line: 35, column: 19, scope: !77)
!80 = !DILocation(line: 35, column: 24, scope: !77)
!81 = !DILocation(line: 36, column: 9, scope: !77)
!82 = !DILocation(line: 37, column: 5, scope: !66)
!83 = !DILocation(line: 38, column: 1, scope: !40)
!84 = distinct !DISubprogram(name: "xmlPointerListCreate", scope: !1, file: !1, line: 41, type: !85, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!85 = !DISubroutineType(types: !86)
!86 = !{!43, !51}
!87 = !DILocalVariable(name: "initialSize", arg: 1, scope: !84, file: !1, line: 41, type: !51)
!88 = !DILocation(line: 41, column: 44, scope: !84)
!89 = !DILocalVariable(name: "ret", scope: !84, file: !1, line: 42, type: !43)
!90 = !DILocation(line: 42, column: 23, scope: !84)
!91 = !DILocation(line: 44, column: 11, scope: !84)
!92 = !DILocation(line: 44, column: 9, scope: !84)
!93 = !DILocation(line: 45, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 45, column: 9)
!95 = !DILocation(line: 45, column: 13, scope: !94)
!96 = !DILocation(line: 45, column: 9, scope: !84)
!97 = !DILocation(line: 46, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 45, column: 22)
!99 = !DILocation(line: 48, column: 9, scope: !98)
!100 = !DILocation(line: 52, column: 12, scope: !84)
!101 = !DILocation(line: 52, column: 5, scope: !84)
!102 = !DILocation(line: 55, column: 5, scope: !84)
!103 = !DILocation(line: 58, column: 5, scope: !84)
!104 = !DILocation(line: 60, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !84, file: !1, line: 60, column: 9)
!106 = !DILocation(line: 60, column: 21, scope: !105)
!107 = !DILocation(line: 60, column: 9, scope: !84)
!108 = !DILocation(line: 61, column: 31, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 60, column: 26)
!110 = !DILocation(line: 61, column: 42, scope: !109)
!111 = !DILocation(line: 61, column: 9, scope: !109)
!112 = !DILocation(line: 62, column: 9, scope: !109)
!113 = !DILocation(line: 62, column: 14, scope: !109)
!114 = !DILocation(line: 62, column: 21, scope: !109)
!115 = !DILocation(line: 63, column: 5, scope: !109)
!116 = !DILocation(line: 64, column: 13, scope: !84)
!117 = !DILocation(line: 64, column: 5, scope: !84)
!118 = !DILocation(line: 65, column: 1, scope: !84)
!119 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !120, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!120 = !DISubroutineType(types: !121)
!121 = !{!51}
!122 = !DILocalVariable(name: "initialSize", scope: !119, file: !1, line: 68, type: !51)
!123 = !DILocation(line: 68, column: 9, scope: !119)
!124 = !DILocation(line: 71, column: 24, scope: !119)
!125 = !DILocation(line: 71, column: 5, scope: !119)
!126 = !DILocation(line: 74, column: 17, scope: !119)
!127 = !DILocation(line: 74, column: 29, scope: !119)
!128 = !DILocation(line: 74, column: 36, scope: !119)
!129 = !DILocation(line: 74, column: 39, scope: !119)
!130 = !DILocation(line: 74, column: 51, scope: !119)
!131 = !DILocation(line: 0, scope: !119)
!132 = !DILocation(line: 74, column: 5, scope: !119)
!133 = !DILocalVariable(name: "result", scope: !119, file: !1, line: 77, type: !43)
!134 = !DILocation(line: 77, column: 23, scope: !119)
!135 = !DILocation(line: 77, column: 53, scope: !119)
!136 = !DILocation(line: 77, column: 32, scope: !119)
!137 = !DILocation(line: 80, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !119, file: !1, line: 80, column: 9)
!139 = !DILocation(line: 80, column: 9, scope: !119)
!140 = !DILocation(line: 81, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 81, column: 13)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 80, column: 17)
!143 = !DILocation(line: 81, column: 21, scope: !141)
!144 = !DILocation(line: 81, column: 13, scope: !142)
!145 = !DILocation(line: 82, column: 18, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 81, column: 28)
!147 = !DILocation(line: 82, column: 26, scope: !146)
!148 = !DILocation(line: 82, column: 13, scope: !146)
!149 = !DILocation(line: 83, column: 9, scope: !146)
!150 = !DILocation(line: 84, column: 14, scope: !142)
!151 = !DILocation(line: 84, column: 9, scope: !142)
!152 = !DILocation(line: 85, column: 5, scope: !142)
!153 = !DILocation(line: 87, column: 5, scope: !119)
!154 = distinct !DISubprogram(name: "memset", scope: !155, file: !155, line: 12, type: !156, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!155 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!156 = !DISubroutineType(types: !157)
!157 = !{!3, !3, !51, !17}
!158 = !DILocalVariable(name: "dst", arg: 1, scope: !154, file: !155, line: 12, type: !3)
!159 = !DILocation(line: 12, column: 20, scope: !154)
!160 = !DILocalVariable(name: "s", arg: 2, scope: !154, file: !155, line: 12, type: !51)
!161 = !DILocation(line: 12, column: 29, scope: !154)
!162 = !DILocalVariable(name: "count", arg: 3, scope: !154, file: !155, line: 12, type: !17)
!163 = !DILocation(line: 12, column: 39, scope: !154)
!164 = !DILocalVariable(name: "a", scope: !154, file: !155, line: 13, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!166 = !DILocation(line: 13, column: 9, scope: !154)
!167 = !DILocation(line: 13, column: 13, scope: !154)
!168 = !DILocation(line: 14, column: 3, scope: !154)
!169 = !DILocation(line: 14, column: 15, scope: !154)
!170 = !DILocation(line: 14, column: 18, scope: !154)
!171 = !DILocation(line: 15, column: 12, scope: !154)
!172 = !DILocation(line: 15, column: 7, scope: !154)
!173 = !DILocation(line: 15, column: 10, scope: !154)
!174 = distinct !{!174, !168, !171, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 16, column: 10, scope: !154)
!177 = !DILocation(line: 16, column: 3, scope: !154)
