; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/027_c14n.c_306_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/027_c14n.c_306_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNode**, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"(cur->nodeTab != ((void*)0) && cur->nsMax >= 0 && cur->nsMax <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/027_c14n.c_306_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis = private unnamed_addr constant [35 x i8] c"void xmlC14NProcessAttrsAxis(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !24 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !28, metadata !DIExpression()), !dbg !29
  %3 = load i8*, i8** %2, align 8, !dbg !30
  call void @free(i8* noundef %3) #5, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis() #0 !dbg !33 {
  %1 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %1, metadata !36, metadata !DIExpression()), !dbg !37
  %2 = call noalias i8* @malloc(i64 noundef 16) #5, !dbg !38
  %3 = bitcast i8* %2 to %struct._xmlC14NVisibleNsStack*, !dbg !39
  store %struct._xmlC14NVisibleNsStack* %3, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !37
  %4 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !40
  %5 = icmp eq %struct._xmlC14NVisibleNsStack* %4, null, !dbg !42
  br i1 %5, label %6, label %7, !dbg !43

6:                                                ; preds = %0
  br label %81, !dbg !44

7:                                                ; preds = %0
  %8 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !45
  %9 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %8, i32 0, i32 1, !dbg !46
  %10 = bitcast i32* %9 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %11 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !49
  %12 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %11, i32 0, i32 1, !dbg !50
  %13 = load i32, i32* %12, align 8, !dbg !50
  %14 = icmp sge i32 %13, 0, !dbg !51
  %15 = zext i1 %14 to i32, !dbg !51
  %16 = sext i32 %15 to i64, !dbg !49
  call void @klee_assume(i64 noundef %16), !dbg !52
  %17 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !53
  %18 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %17, i32 0, i32 1, !dbg !55
  %19 = load i32, i32* %18, align 8, !dbg !55
  %20 = icmp sgt i32 %19, 0, !dbg !56
  br i1 %20, label %21, label %39, !dbg !57

21:                                               ; preds = %7
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !58
  %23 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %22, i32 0, i32 1, !dbg !60
  %24 = load i32, i32* %23, align 8, !dbg !60
  %25 = sext i32 %24 to i64, !dbg !58
  %26 = mul i64 %25, 8, !dbg !61
  %27 = call noalias i8* @malloc(i64 noundef %26) #5, !dbg !62
  %28 = bitcast i8* %27 to %struct._xmlNode**, !dbg !63
  %29 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !64
  %30 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %29, i32 0, i32 0, !dbg !65
  store %struct._xmlNode** %28, %struct._xmlNode*** %30, align 8, !dbg !66
  %31 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !67
  %32 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %31, i32 0, i32 0, !dbg !69
  %33 = load %struct._xmlNode**, %struct._xmlNode*** %32, align 8, !dbg !69
  %34 = icmp eq %struct._xmlNode** %33, null, !dbg !70
  br i1 %34, label %35, label %38, !dbg !71

35:                                               ; preds = %21
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !72
  %37 = bitcast %struct._xmlC14NVisibleNsStack* %36 to i8*, !dbg !72
  call void @free(i8* noundef %37) #5, !dbg !74
  br label %81, !dbg !75

38:                                               ; preds = %21
  br label %42, !dbg !76

39:                                               ; preds = %7
  %40 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !77
  %41 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %40, i32 0, i32 0, !dbg !79
  store %struct._xmlNode** null, %struct._xmlNode*** %41, align 8, !dbg !80
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !81
  %44 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %43, i32 0, i32 0, !dbg !83
  %45 = load %struct._xmlNode**, %struct._xmlNode*** %44, align 8, !dbg !83
  %46 = icmp ne %struct._xmlNode** %45, null, !dbg !84
  br i1 %46, label %47, label %68, !dbg !85

47:                                               ; preds = %42
  %48 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !86
  %49 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %48, i32 0, i32 0, !dbg !86
  %50 = load %struct._xmlNode**, %struct._xmlNode*** %49, align 8, !dbg !86
  %51 = icmp ne %struct._xmlNode** %50, null, !dbg !86
  br i1 %51, label %52, label %64, !dbg !86

52:                                               ; preds = %47
  %53 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !86
  %54 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %53, i32 0, i32 1, !dbg !86
  %55 = load i32, i32* %54, align 8, !dbg !86
  %56 = icmp sge i32 %55, 0, !dbg !86
  br i1 %56, label %57, label %64, !dbg !86

57:                                               ; preds = %52
  %58 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !86
  %59 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %58, i32 0, i32 1, !dbg !86
  %60 = load i32, i32* %59, align 8, !dbg !86
  %61 = icmp sle i32 %60, 1024, !dbg !86
  br i1 %61, label %62, label %64, !dbg !86

62:                                               ; preds = %57
  br i1 true, label %63, label %64, !dbg !86

63:                                               ; preds = %62
  br label %66, !dbg !86

64:                                               ; preds = %62, %57, %52, %47
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !86
  br label %66, !dbg !86

66:                                               ; preds = %64, %63
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.xmlC14NProcessAttrsAxis, i64 0, i64 0)), !dbg !88
  br label %68, !dbg !89

68:                                               ; preds = %66, %42
  %69 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !90
  %70 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %69, i32 0, i32 0, !dbg !92
  %71 = load %struct._xmlNode**, %struct._xmlNode*** %70, align 8, !dbg !92
  %72 = icmp ne %struct._xmlNode** %71, null, !dbg !93
  br i1 %72, label %73, label %78, !dbg !94

73:                                               ; preds = %68
  %74 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !95
  %75 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %74, i32 0, i32 0, !dbg !97
  %76 = load %struct._xmlNode**, %struct._xmlNode*** %75, align 8, !dbg !97
  %77 = bitcast %struct._xmlNode** %76 to i8*, !dbg !95
  call void @free(i8* noundef %77) #5, !dbg !98
  br label %78, !dbg !99

78:                                               ; preds = %73, %68
  %79 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !100
  %80 = bitcast %struct._xmlC14NVisibleNsStack* %79 to i8*, !dbg !100
  call void @free(i8* noundef %80) #5, !dbg !101
  br label %81, !dbg !102

81:                                               ; preds = %78, %35, %6
  ret void, !dbg !102
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !103 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @xmlC14NProcessAttrsAxis(), !dbg !106
  ret i32 0, !dbg !107
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/027_c14n.c_306_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dcfc17fe3ce12e2897f0f92a1ed5e5c0")
!2 = !{!3, !15, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !1, line: 16, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 13, size: 128, elements: !6)
!6 = !{!7, !13}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !5, file: !1, line: 15, baseType: !14, size: 32, offset: 64)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 19, type: !25, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !15}
!27 = !{}
!28 = !DILocalVariable(name: "ptr", arg: 1, scope: !24, file: !1, line: 19, type: !15)
!29 = !DILocation(line: 19, column: 20, scope: !24)
!30 = !DILocation(line: 20, column: 10, scope: !24)
!31 = !DILocation(line: 20, column: 5, scope: !24)
!32 = !DILocation(line: 21, column: 1, scope: !24)
!33 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!34 = !DISubroutineType(types: !35)
!35 = !{null}
!36 = !DILocalVariable(name: "cur", scope: !33, file: !1, line: 26, type: !3)
!37 = !DILocation(line: 26, column: 28, scope: !33)
!38 = !DILocation(line: 26, column: 59, scope: !33)
!39 = !DILocation(line: 26, column: 34, scope: !33)
!40 = !DILocation(line: 27, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !33, file: !1, line: 27, column: 9)
!42 = !DILocation(line: 27, column: 13, scope: !41)
!43 = !DILocation(line: 27, column: 9, scope: !33)
!44 = !DILocation(line: 27, column: 22, scope: !41)
!45 = !DILocation(line: 30, column: 25, scope: !33)
!46 = !DILocation(line: 30, column: 30, scope: !33)
!47 = !DILocation(line: 30, column: 24, scope: !33)
!48 = !DILocation(line: 30, column: 5, scope: !33)
!49 = !DILocation(line: 33, column: 17, scope: !33)
!50 = !DILocation(line: 33, column: 22, scope: !33)
!51 = !DILocation(line: 33, column: 28, scope: !33)
!52 = !DILocation(line: 33, column: 5, scope: !33)
!53 = !DILocation(line: 36, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !33, file: !1, line: 36, column: 9)
!55 = !DILocation(line: 36, column: 14, scope: !54)
!56 = !DILocation(line: 36, column: 20, scope: !54)
!57 = !DILocation(line: 36, column: 9, scope: !33)
!58 = !DILocation(line: 37, column: 45, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 36, column: 25)
!60 = !DILocation(line: 37, column: 50, scope: !59)
!61 = !DILocation(line: 37, column: 56, scope: !59)
!62 = !DILocation(line: 37, column: 38, scope: !59)
!63 = !DILocation(line: 37, column: 24, scope: !59)
!64 = !DILocation(line: 37, column: 9, scope: !59)
!65 = !DILocation(line: 37, column: 14, scope: !59)
!66 = !DILocation(line: 37, column: 22, scope: !59)
!67 = !DILocation(line: 38, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 38, column: 13)
!69 = !DILocation(line: 38, column: 18, scope: !68)
!70 = !DILocation(line: 38, column: 26, scope: !68)
!71 = !DILocation(line: 38, column: 13, scope: !59)
!72 = !DILocation(line: 39, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 38, column: 35)
!74 = !DILocation(line: 39, column: 13, scope: !73)
!75 = !DILocation(line: 40, column: 13, scope: !73)
!76 = !DILocation(line: 42, column: 5, scope: !59)
!77 = !DILocation(line: 43, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !54, file: !1, line: 42, column: 12)
!79 = !DILocation(line: 43, column: 14, scope: !78)
!80 = !DILocation(line: 43, column: 22, scope: !78)
!81 = !DILocation(line: 47, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !33, file: !1, line: 47, column: 9)
!83 = !DILocation(line: 47, column: 14, scope: !82)
!84 = !DILocation(line: 47, column: 22, scope: !82)
!85 = !DILocation(line: 47, column: 9, scope: !33)
!86 = !DILocation(line: 56, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 47, column: 31)
!88 = !DILocation(line: 59, column: 9, scope: !87)
!89 = !DILocation(line: 64, column: 5, scope: !87)
!90 = !DILocation(line: 67, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !33, file: !1, line: 67, column: 9)
!92 = !DILocation(line: 67, column: 14, scope: !91)
!93 = !DILocation(line: 67, column: 22, scope: !91)
!94 = !DILocation(line: 67, column: 9, scope: !33)
!95 = !DILocation(line: 68, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 67, column: 31)
!97 = !DILocation(line: 68, column: 19, scope: !96)
!98 = !DILocation(line: 68, column: 9, scope: !96)
!99 = !DILocation(line: 69, column: 5, scope: !96)
!100 = !DILocation(line: 70, column: 10, scope: !33)
!101 = !DILocation(line: 70, column: 5, scope: !33)
!102 = !DILocation(line: 71, column: 1, scope: !33)
!103 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !104, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!104 = !DISubroutineType(types: !105)
!105 = !{!14}
!106 = !DILocation(line: 75, column: 5, scope: !103)
!107 = !DILocation(line: 76, column: 5, scope: !103)
