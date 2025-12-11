; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/042_hash.c_510_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/042_hash.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [8 x i8] c"lengths\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(lengths[2] + 1 <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/042_hash.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlHashRemoveEntry3 = private unnamed_addr constant [143 x i8] c"int xmlHashRemoveEntry3(xmlHashTablePtr, const char *, const char *, const char *, void (*)(void *, const char *, const char *, const char *))\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, void (i8*, i8*, i8*, i8*)* noundef %4) #0 !dbg !16 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca void (i8*, i8*, i8*, i8*)*, align 8
  %12 = alloca [3 x i32], align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %7, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !32, metadata !DIExpression()), !dbg !33
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !36, metadata !DIExpression()), !dbg !37
  store void (i8*, i8*, i8*, i8*)* %4, void (i8*, i8*, i8*, i8*)** %11, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*)** %11, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [3 x i32]* %12, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %13, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8** %14, metadata !47, metadata !DIExpression()), !dbg !48
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0, !dbg !49
  %16 = bitcast i32* %15 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0, !dbg !51
  %18 = load i32, i32* %17, align 4, !dbg !51
  %19 = icmp sge i32 %18, 0, !dbg !52
  %20 = zext i1 %19 to i32, !dbg !52
  %21 = sext i32 %20 to i64, !dbg !51
  call void @klee_assume(i64 noundef %21), !dbg !53
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 1, !dbg !54
  %23 = load i32, i32* %22, align 4, !dbg !54
  %24 = icmp sge i32 %23, 0, !dbg !55
  %25 = zext i1 %24 to i32, !dbg !55
  %26 = sext i32 %25 to i64, !dbg !54
  call void @klee_assume(i64 noundef %26), !dbg !56
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2, !dbg !57
  %28 = load i32, i32* %27, align 4, !dbg !57
  %29 = icmp sge i32 %28, 0, !dbg !58
  %30 = zext i1 %29 to i32, !dbg !58
  %31 = sext i32 %30 to i64, !dbg !57
  call void @klee_assume(i64 noundef %31), !dbg !59
  %32 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !60
  store i8* %32, i8** %13, align 8, !dbg !61
  %33 = load i8*, i8** %13, align 8, !dbg !62
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2, !dbg !64
  %35 = load i32, i32* %34, align 4, !dbg !64
  %36 = icmp sge i32 %35, 0, !dbg !66
  br i1 %36, label %37, label %66, !dbg !67

37:                                               ; preds = %5
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2, !dbg !68
  %39 = load i32, i32* %38, align 4, !dbg !68
  %40 = add nsw i32 %39, 1, !dbg !70
  %41 = sext i32 %40 to i64, !dbg !68
  %42 = call i8* @xmlMalloc(i64 noundef %41), !dbg !71
  store i8* %42, i8** %14, align 8, !dbg !72
  %43 = load i8*, i8** %14, align 8, !dbg !73
  %44 = icmp eq i8* %43, null, !dbg !75
  br i1 %44, label %45, label %47, !dbg !76

45:                                               ; preds = %37
  %46 = load i8*, i8** %13, align 8, !dbg !77
  call void @free(i8* noundef %46) #7, !dbg !79
  store i32 -1, i32* %6, align 4, !dbg !80
  br label %69, !dbg !80

47:                                               ; preds = %37
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2, !dbg !81
  %49 = load i32, i32* %48, align 4, !dbg !81
  %50 = add nsw i32 %49, 1, !dbg !81
  %51 = icmp sle i32 %50, 256, !dbg !81
  br i1 %51, label %52, label %54, !dbg !81

52:                                               ; preds = %47
  br i1 true, label %53, label %54, !dbg !81

53:                                               ; preds = %52
  br label %56, !dbg !81

54:                                               ; preds = %52, %47
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry3, i64 0, i64 0)), !dbg !81
  br label %56, !dbg !81

56:                                               ; preds = %54, %53
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @__PRETTY_FUNCTION__.xmlHashRemoveEntry3, i64 0, i64 0)), !dbg !82
  %58 = load i8*, i8** %14, align 8, !dbg !83
  %59 = load i8*, i8** %13, align 8, !dbg !84
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 2, !dbg !85
  %61 = load i32, i32* %60, align 4, !dbg !85
  %62 = add nsw i32 %61, 1, !dbg !86
  %63 = sext i32 %62 to i64, !dbg !85
  %64 = call i8* @memcpy(i8* %58, i8* %59, i64 %63), !dbg !87
  %65 = load i8*, i8** %14, align 8, !dbg !88
  call void @xmlFree(i8* noundef %65), !dbg !89
  br label %67, !dbg !90

66:                                               ; preds = %5
  store i8* null, i8** %14, align 8, !dbg !91
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i8*, i8** %13, align 8, !dbg !93
  call void @free(i8* noundef %68) #7, !dbg !94
  store i32 0, i32* %6, align 4, !dbg !95
  br label %69, !dbg !95

69:                                               ; preds = %67, %45
  %70 = load i32, i32* %6, align 4, !dbg !96
  ret i32 %70, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !97 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load i64, i64* %2, align 8, !dbg !105
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !106
  ret i8* %4, !dbg !107
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !108 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !111, metadata !DIExpression()), !dbg !112
  %3 = load i8*, i8** %2, align 8, !dbg !113
  call void @free(i8* noundef %3) #7, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !116 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !119, metadata !DIExpression()), !dbg !120
  store %struct._xmlHashTable* null, %struct._xmlHashTable** %2, align 8, !dbg !120
  %3 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !121
  %4 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %3, i8* noundef null, i8* noundef null, i8* noundef null, void (i8*, i8*, i8*, i8*)* noundef null), !dbg !122
  ret i32 0, !dbg !123
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !124 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !132, metadata !DIExpression()), !dbg !133
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %7, metadata !136, metadata !DIExpression()), !dbg !137
  %9 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %9, i8** %7, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %8, metadata !139, metadata !DIExpression()), !dbg !140
  %10 = load i8*, i8** %5, align 8, !dbg !141
  store i8* %10, i8** %8, align 8, !dbg !140
  br label %11, !dbg !142

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !143
  %13 = add i64 %12, -1, !dbg !143
  store i64 %13, i64* %6, align 8, !dbg !143
  %14 = icmp ugt i64 %12, 0, !dbg !144
  br i1 %14, label %15, label %21, !dbg !142

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !145
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !145
  store i8* %17, i8** %8, align 8, !dbg !145
  %18 = load i8, i8* %16, align 1, !dbg !146
  %19 = load i8*, i8** %7, align 8, !dbg !147
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !147
  store i8* %20, i8** %7, align 8, !dbg !147
  store i8 %18, i8* %19, align 1, !dbg !148
  br label %11, !dbg !142, !llvm.loop !149

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !151
  ret i8* %22, !dbg !152
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/042_hash.c_510_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "01ae3b01b5022bb320508f6413f90365")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlHashRemoveEntry3", scope: !1, file: !1, line: 17, type: !17, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !24, !24, !24, !26}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !1, line: 11, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 10, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 10, flags: DIFlagFwdDecl)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !5, !24, !24, !24}
!29 = !{}
!30 = !DILocalVariable(name: "table", arg: 1, scope: !16, file: !1, line: 17, type: !20)
!31 = !DILocation(line: 17, column: 41, scope: !16)
!32 = !DILocalVariable(name: "name", arg: 2, scope: !16, file: !1, line: 17, type: !24)
!33 = !DILocation(line: 17, column: 60, scope: !16)
!34 = !DILocalVariable(name: "name2", arg: 3, scope: !16, file: !1, line: 18, type: !24)
!35 = !DILocation(line: 18, column: 36, scope: !16)
!36 = !DILocalVariable(name: "name3", arg: 4, scope: !16, file: !1, line: 18, type: !24)
!37 = !DILocation(line: 18, column: 55, scope: !16)
!38 = !DILocalVariable(name: "f", arg: 5, scope: !16, file: !1, line: 19, type: !26)
!39 = !DILocation(line: 19, column: 31, scope: !16)
!40 = !DILocalVariable(name: "lengths", scope: !16, file: !1, line: 22, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 3)
!44 = !DILocation(line: 22, column: 9, scope: !16)
!45 = !DILocalVariable(name: "key3", scope: !16, file: !1, line: 23, type: !3)
!46 = !DILocation(line: 23, column: 11, scope: !16)
!47 = !DILocalVariable(name: "copy3", scope: !16, file: !1, line: 24, type: !3)
!48 = !DILocation(line: 24, column: 11, scope: !16)
!49 = !DILocation(line: 27, column: 24, scope: !16)
!50 = !DILocation(line: 27, column: 5, scope: !16)
!51 = !DILocation(line: 30, column: 17, scope: !16)
!52 = !DILocation(line: 30, column: 28, scope: !16)
!53 = !DILocation(line: 30, column: 5, scope: !16)
!54 = !DILocation(line: 31, column: 17, scope: !16)
!55 = !DILocation(line: 31, column: 28, scope: !16)
!56 = !DILocation(line: 31, column: 5, scope: !16)
!57 = !DILocation(line: 32, column: 17, scope: !16)
!58 = !DILocation(line: 32, column: 28, scope: !16)
!59 = !DILocation(line: 32, column: 5, scope: !16)
!60 = !DILocation(line: 35, column: 20, scope: !16)
!61 = !DILocation(line: 35, column: 10, scope: !16)
!62 = !DILocation(line: 36, column: 24, scope: !16)
!63 = !DILocation(line: 36, column: 5, scope: !16)
!64 = !DILocation(line: 39, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !16, file: !1, line: 39, column: 9)
!66 = !DILocation(line: 39, column: 20, scope: !65)
!67 = !DILocation(line: 39, column: 9, scope: !16)
!68 = !DILocation(line: 40, column: 35, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 39, column: 26)
!70 = !DILocation(line: 40, column: 46, scope: !69)
!71 = !DILocation(line: 40, column: 25, scope: !69)
!72 = !DILocation(line: 40, column: 15, scope: !69)
!73 = !DILocation(line: 41, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 41, column: 13)
!75 = !DILocation(line: 41, column: 19, scope: !74)
!76 = !DILocation(line: 41, column: 13, scope: !69)
!77 = !DILocation(line: 43, column: 18, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 41, column: 28)
!79 = !DILocation(line: 43, column: 13, scope: !78)
!80 = !DILocation(line: 44, column: 13, scope: !78)
!81 = !DILocation(line: 50, column: 9, scope: !69)
!82 = !DILocation(line: 53, column: 9, scope: !69)
!83 = !DILocation(line: 56, column: 16, scope: !69)
!84 = !DILocation(line: 56, column: 23, scope: !69)
!85 = !DILocation(line: 56, column: 29, scope: !69)
!86 = !DILocation(line: 56, column: 40, scope: !69)
!87 = !DILocation(line: 56, column: 9, scope: !69)
!88 = !DILocation(line: 58, column: 17, scope: !69)
!89 = !DILocation(line: 58, column: 9, scope: !69)
!90 = !DILocation(line: 59, column: 5, scope: !69)
!91 = !DILocation(line: 60, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !65, file: !1, line: 59, column: 12)
!93 = !DILocation(line: 63, column: 10, scope: !16)
!94 = !DILocation(line: 63, column: 5, scope: !16)
!95 = !DILocation(line: 64, column: 5, scope: !16)
!96 = !DILocation(line: 65, column: 1, scope: !16)
!97 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 72, type: !98, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!98 = !DISubroutineType(types: !99)
!99 = !{!5, !100}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DILocalVariable(name: "size", arg: 1, scope: !97, file: !1, line: 72, type: !100)
!104 = !DILocation(line: 72, column: 24, scope: !97)
!105 = !DILocation(line: 73, column: 19, scope: !97)
!106 = !DILocation(line: 73, column: 12, scope: !97)
!107 = !DILocation(line: 73, column: 5, scope: !97)
!108 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 68, type: !109, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !5}
!111 = !DILocalVariable(name: "ptr", arg: 1, scope: !108, file: !1, line: 68, type: !5)
!112 = !DILocation(line: 68, column: 20, scope: !108)
!113 = !DILocation(line: 69, column: 10, scope: !108)
!114 = !DILocation(line: 69, column: 5, scope: !108)
!115 = !DILocation(line: 70, column: 1, scope: !108)
!116 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !117, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!117 = !DISubroutineType(types: !118)
!118 = !{!19}
!119 = !DILocalVariable(name: "table", scope: !116, file: !1, line: 78, type: !20)
!120 = !DILocation(line: 78, column: 21, scope: !116)
!121 = !DILocation(line: 81, column: 25, scope: !116)
!122 = !DILocation(line: 81, column: 5, scope: !116)
!123 = !DILocation(line: 83, column: 5, scope: !116)
!124 = distinct !DISubprogram(name: "memcpy", scope: !125, file: !125, line: 12, type: !126, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !29)
!125 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !128, !100}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DILocalVariable(name: "destaddr", arg: 1, scope: !124, file: !125, line: 12, type: !5)
!131 = !DILocation(line: 12, column: 20, scope: !124)
!132 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !124, file: !125, line: 12, type: !128)
!133 = !DILocation(line: 12, column: 42, scope: !124)
!134 = !DILocalVariable(name: "len", arg: 3, scope: !124, file: !125, line: 12, type: !100)
!135 = !DILocation(line: 12, column: 58, scope: !124)
!136 = !DILocalVariable(name: "dest", scope: !124, file: !125, line: 13, type: !3)
!137 = !DILocation(line: 13, column: 9, scope: !124)
!138 = !DILocation(line: 13, column: 16, scope: !124)
!139 = !DILocalVariable(name: "src", scope: !124, file: !125, line: 14, type: !24)
!140 = !DILocation(line: 14, column: 15, scope: !124)
!141 = !DILocation(line: 14, column: 21, scope: !124)
!142 = !DILocation(line: 16, column: 3, scope: !124)
!143 = !DILocation(line: 16, column: 13, scope: !124)
!144 = !DILocation(line: 16, column: 16, scope: !124)
!145 = !DILocation(line: 17, column: 19, scope: !124)
!146 = !DILocation(line: 17, column: 15, scope: !124)
!147 = !DILocation(line: 17, column: 10, scope: !124)
!148 = !DILocation(line: 17, column: 13, scope: !124)
!149 = distinct !{!149, !142, !145, !150}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !DILocation(line: 18, column: 10, scope: !124)
!152 = !DILocation(line: 18, column: 3, scope: !124)
