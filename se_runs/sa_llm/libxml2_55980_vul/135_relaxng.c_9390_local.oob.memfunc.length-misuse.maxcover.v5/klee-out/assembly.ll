; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/135_relaxng.c_9390_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/135_relaxng.c_9390_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { %struct._xmlRelaxNGValidState* }
%struct._xmlRelaxNGValidState = type { %struct._xmlNode* }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"validating\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"(nbgroups >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/135_relaxng.c_9390_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [48 x i8] c"int target_function(xmlRelaxNGValidCtxt *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nbgroups\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i64, i64* %2, align 8, !dbg !31
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !32
  ret i8* %4, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !34 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !52, metadata !DIExpression()), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlRelaxNGSkipIgnored(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !55 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlNode* %1, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !60, metadata !DIExpression()), !dbg !61
  %5 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !62
  ret %struct._xmlNode* %5, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlRelaxNGValidCtxt* noundef %0, i32 noundef %1) #0 !dbg !64 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode**, align 8
  %7 = alloca %struct._xmlNode**, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca %struct._xmlNode*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !67, metadata !DIExpression()), !dbg !68
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %6, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %7, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %9, metadata !77, metadata !DIExpression()), !dbg !78
  %10 = load i32, i32* %5, align 4, !dbg !79
  %11 = sext i32 %10 to i64, !dbg !79
  %12 = mul i64 %11, 8, !dbg !80
  %13 = call noalias i8* @malloc(i64 noundef %12) #7, !dbg !81
  %14 = bitcast i8* %13 to %struct._xmlNode**, !dbg !82
  store %struct._xmlNode** %14, %struct._xmlNode*** %6, align 8, !dbg !83
  %15 = load %struct._xmlNode**, %struct._xmlNode*** %6, align 8, !dbg !84
  %16 = icmp eq %struct._xmlNode** %15, null, !dbg !86
  br i1 %16, label %17, label %18, !dbg !87

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !88
  br label %55, !dbg !88

18:                                               ; preds = %2
  %19 = load %struct._xmlNode**, %struct._xmlNode*** %6, align 8, !dbg !90
  %20 = bitcast %struct._xmlNode** %19 to i8*, !dbg !91
  %21 = load i32, i32* %5, align 4, !dbg !92
  %22 = sext i32 %21 to i64, !dbg !92
  %23 = mul i64 %22, 8, !dbg !93
  %24 = call i8* @memset(i8* %20, i32 0, i64 %23), !dbg !91
  %25 = load i32, i32* %5, align 4, !dbg !94
  %26 = sext i32 %25 to i64, !dbg !94
  %27 = mul i64 %26, 8, !dbg !95
  %28 = call i8* @xmlMalloc(i64 noundef %27), !dbg !96
  %29 = bitcast i8* %28 to %struct._xmlNode**, !dbg !97
  store %struct._xmlNode** %29, %struct._xmlNode*** %7, align 8, !dbg !98
  %30 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !99
  %31 = icmp eq %struct._xmlNode** %30, null, !dbg !101
  br i1 %31, label %32, label %36, !dbg !102

32:                                               ; preds = %18
  %33 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !103
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !105
  %34 = load %struct._xmlNode**, %struct._xmlNode*** %6, align 8, !dbg !106
  %35 = bitcast %struct._xmlNode** %34 to i8*, !dbg !106
  call void @free(i8* noundef %35) #7, !dbg !107
  store i32 -1, i32* %3, align 4, !dbg !108
  br label %55, !dbg !108

36:                                               ; preds = %18
  %37 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !109
  %38 = bitcast %struct._xmlNode** %37 to i8*, !dbg !110
  %39 = load i32, i32* %5, align 4, !dbg !111
  %40 = sext i32 %39 to i64, !dbg !111
  %41 = mul i64 %40, 8, !dbg !112
  %42 = call i8* @memset(i8* %38, i32 0, i64 %41), !dbg !110
  %43 = load i32, i32* %5, align 4, !dbg !113
  %44 = icmp sge i32 %43, 0, !dbg !113
  br i1 %44, label %45, label %47, !dbg !113

45:                                               ; preds = %36
  br i1 true, label %46, label %47, !dbg !113

46:                                               ; preds = %45
  br label %49, !dbg !113

47:                                               ; preds = %45, %36
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !113
  br label %49, !dbg !113

49:                                               ; preds = %47, %46
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !114
  %51 = load %struct._xmlNode**, %struct._xmlNode*** %6, align 8, !dbg !115
  %52 = bitcast %struct._xmlNode** %51 to i8*, !dbg !115
  call void @free(i8* noundef %52) #7, !dbg !116
  %53 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !117
  %54 = bitcast %struct._xmlNode** %53 to i8*, !dbg !117
  call void @free(i8* noundef %54) #7, !dbg !118
  store i32 0, i32* %3, align 4, !dbg !119
  br label %55, !dbg !119

55:                                               ; preds = %49, %32, %17
  %56 = load i32, i32* %3, align 4, !dbg !120
  ret i32 %56, !dbg !120
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !121 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 8
  %3 = alloca %struct._xmlRelaxNGValidState, align 8
  %4 = alloca %struct._xmlNode, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState* %3, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %4, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %5, metadata !130, metadata !DIExpression()), !dbg !131
  %6 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 0, !dbg !132
  store %struct._xmlRelaxNGValidState* %3, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !133
  %7 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %3, i32 0, i32 0, !dbg !134
  store %struct._xmlNode* %4, %struct._xmlNode** %7, align 8, !dbg !135
  %8 = bitcast i32* %5 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !137
  %9 = load i32, i32* %5, align 4, !dbg !138
  %10 = icmp sge i32 %9, 0, !dbg !139
  %11 = zext i1 %10 to i32, !dbg !139
  %12 = sext i32 %11 to i64, !dbg !138
  call void @klee_assume(i64 noundef %12), !dbg !140
  %13 = load i32, i32* %5, align 4, !dbg !141
  %14 = icmp sle i32 %13, 1000, !dbg !142
  %15 = zext i1 %14 to i32, !dbg !142
  %16 = sext i32 %15 to i64, !dbg !141
  call void @klee_assume(i64 noundef %16), !dbg !143
  %17 = load i32, i32* %5, align 4, !dbg !144
  %18 = call i32 @target_function(%struct._xmlRelaxNGValidCtxt* noundef %2, i32 noundef %17), !dbg !145
  ret i32 0, !dbg !146
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !147 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %7, metadata !157, metadata !DIExpression()), !dbg !159
  %8 = load i8*, i8** %4, align 8, !dbg !160
  store i8* %8, i8** %7, align 8, !dbg !159
  br label %9, !dbg !161

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !162
  %11 = add i64 %10, -1, !dbg !162
  store i64 %11, i64* %6, align 8, !dbg !162
  %12 = icmp ugt i64 %10, 0, !dbg !163
  br i1 %12, label %13, label %18, !dbg !161

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !164
  %15 = trunc i32 %14 to i8, !dbg !164
  %16 = load i8*, i8** %7, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %7, align 8, !dbg !165
  store i8 %15, i8* %16, align 1, !dbg !166
  br label %9, !dbg !161, !llvm.loop !167

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !169
  ret i8* %19, !dbg !170
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/135_relaxng.c_9390_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "82db25d97e645ac68c2472c27f25ed4d")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 24, size: 32, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !7, file: !1, line: 25, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 29, type: !23, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !1, line: 29, type: !25)
!30 = !DILocation(line: 29, column: 24, scope: !22)
!31 = !DILocation(line: 30, column: 19, scope: !22)
!32 = !DILocation(line: 30, column: 12, scope: !22)
!33 = !DILocation(line: 30, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 33, type: !35, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !47}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 10, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 16, size: 64, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !39, file: !1, line: 17, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 11, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 20, size: 64, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !44, file: !1, line: 21, baseType: !4, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DILocalVariable(name: "ctxt", arg: 1, scope: !34, file: !1, line: 33, type: !37)
!51 = !DILocation(line: 33, column: 44, scope: !34)
!52 = !DILocalVariable(name: "msg", arg: 2, scope: !34, file: !1, line: 33, type: !47)
!53 = !DILocation(line: 33, column: 62, scope: !34)
!54 = !DILocation(line: 35, column: 1, scope: !34)
!55 = distinct !DISubprogram(name: "xmlRelaxNGSkipIgnored", scope: !1, file: !1, line: 37, type: !56, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!56 = !DISubroutineType(types: !57)
!57 = !{!4, !37, !4}
!58 = !DILocalVariable(name: "ctxt", arg: 1, scope: !55, file: !1, line: 37, type: !37)
!59 = !DILocation(line: 37, column: 55, scope: !55)
!60 = !DILocalVariable(name: "cur", arg: 2, scope: !55, file: !1, line: 37, type: !4)
!61 = !DILocation(line: 37, column: 72, scope: !55)
!62 = !DILocation(line: 39, column: 12, scope: !55)
!63 = !DILocation(line: 39, column: 5, scope: !55)
!64 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 43, type: !65, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!65 = !DISubroutineType(types: !66)
!66 = !{!10, !37, !10}
!67 = !DILocalVariable(name: "ctxt", arg: 1, scope: !64, file: !1, line: 43, type: !37)
!68 = !DILocation(line: 43, column: 42, scope: !64)
!69 = !DILocalVariable(name: "nbgroups", arg: 2, scope: !64, file: !1, line: 43, type: !10)
!70 = !DILocation(line: 43, column: 52, scope: !64)
!71 = !DILocalVariable(name: "list", scope: !64, file: !1, line: 44, type: !3)
!72 = !DILocation(line: 44, column: 17, scope: !64)
!73 = !DILocalVariable(name: "lasts", scope: !64, file: !1, line: 45, type: !3)
!74 = !DILocation(line: 45, column: 17, scope: !64)
!75 = !DILocalVariable(name: "cur", scope: !64, file: !1, line: 46, type: !4)
!76 = !DILocation(line: 46, column: 16, scope: !64)
!77 = !DILocalVariable(name: "start", scope: !64, file: !1, line: 46, type: !4)
!78 = !DILocation(line: 46, column: 21, scope: !64)
!79 = !DILocation(line: 49, column: 32, scope: !64)
!80 = !DILocation(line: 49, column: 41, scope: !64)
!81 = !DILocation(line: 49, column: 25, scope: !64)
!82 = !DILocation(line: 49, column: 12, scope: !64)
!83 = !DILocation(line: 49, column: 10, scope: !64)
!84 = !DILocation(line: 50, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !64, file: !1, line: 50, column: 9)
!86 = !DILocation(line: 50, column: 14, scope: !85)
!87 = !DILocation(line: 50, column: 9, scope: !64)
!88 = !DILocation(line: 51, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 50, column: 23)
!90 = !DILocation(line: 53, column: 12, scope: !64)
!91 = !DILocation(line: 53, column: 5, scope: !64)
!92 = !DILocation(line: 53, column: 21, scope: !64)
!93 = !DILocation(line: 53, column: 30, scope: !64)
!94 = !DILocation(line: 56, column: 36, scope: !64)
!95 = !DILocation(line: 56, column: 45, scope: !64)
!96 = !DILocation(line: 56, column: 26, scope: !64)
!97 = !DILocation(line: 56, column: 13, scope: !64)
!98 = !DILocation(line: 56, column: 11, scope: !64)
!99 = !DILocation(line: 57, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !64, file: !1, line: 57, column: 9)
!101 = !DILocation(line: 57, column: 15, scope: !100)
!102 = !DILocation(line: 57, column: 9, scope: !64)
!103 = !DILocation(line: 58, column: 26, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 57, column: 24)
!105 = !DILocation(line: 58, column: 9, scope: !104)
!106 = !DILocation(line: 59, column: 14, scope: !104)
!107 = !DILocation(line: 59, column: 9, scope: !104)
!108 = !DILocation(line: 60, column: 9, scope: !104)
!109 = !DILocation(line: 64, column: 12, scope: !64)
!110 = !DILocation(line: 64, column: 5, scope: !64)
!111 = !DILocation(line: 64, column: 22, scope: !64)
!112 = !DILocation(line: 64, column: 31, scope: !64)
!113 = !DILocation(line: 67, column: 5, scope: !64)
!114 = !DILocation(line: 70, column: 5, scope: !64)
!115 = !DILocation(line: 73, column: 10, scope: !64)
!116 = !DILocation(line: 73, column: 5, scope: !64)
!117 = !DILocation(line: 74, column: 10, scope: !64)
!118 = !DILocation(line: 74, column: 5, scope: !64)
!119 = !DILocation(line: 75, column: 5, scope: !64)
!120 = !DILocation(line: 76, column: 1, scope: !64)
!121 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 78, type: !122, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!122 = !DISubroutineType(types: !123)
!123 = !{!10}
!124 = !DILocalVariable(name: "ctxt", scope: !121, file: !1, line: 79, type: !38)
!125 = !DILocation(line: 79, column: 25, scope: !121)
!126 = !DILocalVariable(name: "state", scope: !121, file: !1, line: 80, type: !43)
!127 = !DILocation(line: 80, column: 26, scope: !121)
!128 = !DILocalVariable(name: "node", scope: !121, file: !1, line: 81, type: !6)
!129 = !DILocation(line: 81, column: 13, scope: !121)
!130 = !DILocalVariable(name: "nbgroups", scope: !121, file: !1, line: 82, type: !10)
!131 = !DILocation(line: 82, column: 9, scope: !121)
!132 = !DILocation(line: 85, column: 10, scope: !121)
!133 = !DILocation(line: 85, column: 16, scope: !121)
!134 = !DILocation(line: 86, column: 11, scope: !121)
!135 = !DILocation(line: 86, column: 15, scope: !121)
!136 = !DILocation(line: 89, column: 24, scope: !121)
!137 = !DILocation(line: 89, column: 5, scope: !121)
!138 = !DILocation(line: 92, column: 17, scope: !121)
!139 = !DILocation(line: 92, column: 26, scope: !121)
!140 = !DILocation(line: 92, column: 5, scope: !121)
!141 = !DILocation(line: 93, column: 17, scope: !121)
!142 = !DILocation(line: 93, column: 26, scope: !121)
!143 = !DILocation(line: 93, column: 5, scope: !121)
!144 = !DILocation(line: 96, column: 28, scope: !121)
!145 = !DILocation(line: 96, column: 5, scope: !121)
!146 = !DILocation(line: 98, column: 5, scope: !121)
!147 = distinct !DISubprogram(name: "memset", scope: !148, file: !148, line: 12, type: !149, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!148 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!149 = !DISubroutineType(types: !150)
!150 = !{!11, !11, !10, !25}
!151 = !DILocalVariable(name: "dst", arg: 1, scope: !147, file: !148, line: 12, type: !11)
!152 = !DILocation(line: 12, column: 20, scope: !147)
!153 = !DILocalVariable(name: "s", arg: 2, scope: !147, file: !148, line: 12, type: !10)
!154 = !DILocation(line: 12, column: 29, scope: !147)
!155 = !DILocalVariable(name: "count", arg: 3, scope: !147, file: !148, line: 12, type: !25)
!156 = !DILocation(line: 12, column: 39, scope: !147)
!157 = !DILocalVariable(name: "a", scope: !147, file: !148, line: 13, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!159 = !DILocation(line: 13, column: 9, scope: !147)
!160 = !DILocation(line: 13, column: 13, scope: !147)
!161 = !DILocation(line: 14, column: 3, scope: !147)
!162 = !DILocation(line: 14, column: 15, scope: !147)
!163 = !DILocation(line: 14, column: 18, scope: !147)
!164 = !DILocation(line: 15, column: 12, scope: !147)
!165 = !DILocation(line: 15, column: 7, scope: !147)
!166 = !DILocation(line: 15, column: 10, scope: !147)
!167 = distinct !{!167, !161, !164, !168}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 16, column: 10, scope: !147)
!170 = !DILocation(line: 16, column: 3, scope: !147)
