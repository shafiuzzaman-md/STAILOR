; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNodeSet = type { i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ns1_nodeNr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ns2_nodeNr\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"No integer overflow\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"(alloc_size / sizeof(xmlChar *) == ns1.nodeNr && \22No integer overflow\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !10 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !18, metadata !DIExpression()), !dbg !19
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !20, metadata !DIExpression()), !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  call void @free(i8* noundef %3) #5, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !31 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i64, i64* %2, align 8, !dbg !39
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !40
  ret i8* %4, !dbg !41
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNodeSet, align 8
  %3 = alloca %struct._xmlNodeSet, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet* %2, metadata !46, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %6 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !55
  %7 = bitcast i32* %6 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !57
  %8 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !58
  %9 = bitcast i32* %8 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  %10 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !61
  %11 = load i32, i32* %10, align 8, !dbg !61
  %12 = icmp sge i32 %11, 0, !dbg !62
  %13 = zext i1 %12 to i32, !dbg !62
  %14 = sext i32 %13 to i64, !dbg !63
  call void @klee_assume(i64 noundef %14), !dbg !64
  %15 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !65
  %16 = load i32, i32* %15, align 8, !dbg !65
  %17 = icmp sge i32 %16, 0, !dbg !66
  %18 = zext i1 %17 to i32, !dbg !66
  %19 = sext i32 %18 to i64, !dbg !67
  call void @klee_assume(i64 noundef %19), !dbg !68
  %20 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !69
  %21 = load i32, i32* %20, align 8, !dbg !69
  %22 = icmp sgt i32 %21, 0, !dbg !70
  br i1 %22, label %23, label %26, !dbg !71

23:                                               ; preds = %0
  %24 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !72
  %25 = load i32, i32* %24, align 8, !dbg !72
  br label %27, !dbg !71

26:                                               ; preds = %0
  br label %27, !dbg !71

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 1, %26 ], !dbg !71
  %29 = sext i32 %28 to i64, !dbg !73
  %30 = mul i64 8, %29, !dbg !74
  %31 = call noalias i8* @malloc(i64 noundef %30) #5, !dbg !75
  %32 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 1, !dbg !76
  store i8* %31, i8** %32, align 8, !dbg !77
  %33 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !78
  %34 = load i32, i32* %33, align 8, !dbg !78
  %35 = icmp sgt i32 %34, 0, !dbg !79
  br i1 %35, label %36, label %39, !dbg !80

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !81
  %38 = load i32, i32* %37, align 8, !dbg !81
  br label %40, !dbg !80

39:                                               ; preds = %27
  br label %40, !dbg !80

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 1, %39 ], !dbg !80
  %42 = sext i32 %41 to i64, !dbg !82
  %43 = mul i64 8, %42, !dbg !83
  %44 = call noalias i8* @malloc(i64 noundef %43) #5, !dbg !84
  %45 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 1, !dbg !85
  store i8* %44, i8** %45, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %4, metadata !87, metadata !DIExpression()), !dbg !88
  %46 = call i32 @xmlXPathCmpNodesExt(%struct._xmlNodeSet* noundef %2, %struct._xmlNodeSet* noundef %3), !dbg !89
  store i32 %46, i32* %4, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i64* %5, metadata !90, metadata !DIExpression()), !dbg !91
  %47 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !92
  %48 = load i32, i32* %47, align 8, !dbg !92
  %49 = sext i32 %48 to i64, !dbg !93
  %50 = mul i64 %49, 8, !dbg !94
  store i64 %50, i64* %5, align 8, !dbg !91
  %51 = load i64, i64* %5, align 8, !dbg !95
  %52 = udiv i64 %51, 8, !dbg !95
  %53 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !95
  %54 = load i32, i32* %53, align 8, !dbg !95
  %55 = sext i32 %54 to i64, !dbg !95
  %56 = icmp eq i64 %52, %55, !dbg !95
  br i1 %56, label %57, label %60, !dbg !95

57:                                               ; preds = %40
  br i1 true, label %58, label %60, !dbg !95

58:                                               ; preds = %57
  br i1 true, label %59, label %60, !dbg !95

59:                                               ; preds = %58
  br label %62, !dbg !95

60:                                               ; preds = %58, %57, %40
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !95
  br label %62, !dbg !95

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !96
  %64 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 1, !dbg !97
  %65 = load i8*, i8** %64, align 8, !dbg !97
  call void @free(i8* noundef %65) #5, !dbg !98
  %66 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 1, !dbg !99
  %67 = load i8*, i8** %66, align 8, !dbg !99
  call void @free(i8* noundef %67) #5, !dbg !100
  %68 = load i32, i32* %4, align 4, !dbg !101
  ret i32 %68, !dbg !102
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @xmlXPathCmpNodesExt(%struct._xmlNodeSet* noundef, %struct._xmlNodeSet* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/340_xpath.c_6225_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1bec899db7f9c439888fa0804bd2803e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 17, type: !11, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{}
!18 = !DILocalVariable(name: "ctxt", arg: 1, scope: !10, file: !1, line: 17, type: !13)
!19 = !DILocation(line: 17, column: 30, scope: !10)
!20 = !DILocalVariable(name: "msg", arg: 2, scope: !10, file: !1, line: 17, type: !14)
!21 = !DILocation(line: 17, column: 48, scope: !10)
!22 = !DILocation(line: 19, column: 1, scope: !10)
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 21, type: !24, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !13}
!26 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 21, type: !13)
!27 = !DILocation(line: 21, column: 20, scope: !23)
!28 = !DILocation(line: 22, column: 10, scope: !23)
!29 = !DILocation(line: 22, column: 5, scope: !23)
!30 = !DILocation(line: 23, column: 1, scope: !23)
!31 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 25, type: !32, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!32 = !DISubroutineType(types: !33)
!33 = !{!13, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocalVariable(name: "size", arg: 1, scope: !31, file: !1, line: 25, type: !34)
!38 = !DILocation(line: 25, column: 24, scope: !31)
!39 = !DILocation(line: 26, column: 19, scope: !31)
!40 = !DILocation(line: 26, column: 12, scope: !31)
!41 = !DILocation(line: 26, column: 5, scope: !31)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 33, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!43 = !DISubroutineType(types: !44)
!44 = !{!45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "ns1", scope: !42, file: !1, line: 35, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 14, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 11, size: 128, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !48, file: !1, line: 12, baseType: !45, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !48, file: !1, line: 13, baseType: !13, size: 64, offset: 64)
!52 = !DILocation(line: 35, column: 16, scope: !42)
!53 = !DILocalVariable(name: "ns2", scope: !42, file: !1, line: 35, type: !47)
!54 = !DILocation(line: 35, column: 21, scope: !42)
!55 = !DILocation(line: 38, column: 29, scope: !42)
!56 = !DILocation(line: 38, column: 24, scope: !42)
!57 = !DILocation(line: 38, column: 5, scope: !42)
!58 = !DILocation(line: 39, column: 29, scope: !42)
!59 = !DILocation(line: 39, column: 24, scope: !42)
!60 = !DILocation(line: 39, column: 5, scope: !42)
!61 = !DILocation(line: 42, column: 21, scope: !42)
!62 = !DILocation(line: 42, column: 28, scope: !42)
!63 = !DILocation(line: 42, column: 17, scope: !42)
!64 = !DILocation(line: 42, column: 5, scope: !42)
!65 = !DILocation(line: 43, column: 21, scope: !42)
!66 = !DILocation(line: 43, column: 28, scope: !42)
!67 = !DILocation(line: 43, column: 17, scope: !42)
!68 = !DILocation(line: 43, column: 5, scope: !42)
!69 = !DILocation(line: 46, column: 47, scope: !42)
!70 = !DILocation(line: 46, column: 54, scope: !42)
!71 = !DILocation(line: 46, column: 43, scope: !42)
!72 = !DILocation(line: 46, column: 64, scope: !42)
!73 = !DILocation(line: 46, column: 42, scope: !42)
!74 = !DILocation(line: 46, column: 40, scope: !42)
!75 = !DILocation(line: 46, column: 19, scope: !42)
!76 = !DILocation(line: 46, column: 9, scope: !42)
!77 = !DILocation(line: 46, column: 17, scope: !42)
!78 = !DILocation(line: 47, column: 47, scope: !42)
!79 = !DILocation(line: 47, column: 54, scope: !42)
!80 = !DILocation(line: 47, column: 43, scope: !42)
!81 = !DILocation(line: 47, column: 64, scope: !42)
!82 = !DILocation(line: 47, column: 42, scope: !42)
!83 = !DILocation(line: 47, column: 40, scope: !42)
!84 = !DILocation(line: 47, column: 19, scope: !42)
!85 = !DILocation(line: 47, column: 9, scope: !42)
!86 = !DILocation(line: 47, column: 17, scope: !42)
!87 = !DILocalVariable(name: "result", scope: !42, file: !1, line: 50, type: !45)
!88 = !DILocation(line: 50, column: 9, scope: !42)
!89 = !DILocation(line: 50, column: 18, scope: !42)
!90 = !DILocalVariable(name: "alloc_size", scope: !42, file: !1, line: 62, type: !34)
!91 = !DILocation(line: 62, column: 12, scope: !42)
!92 = !DILocation(line: 62, column: 29, scope: !42)
!93 = !DILocation(line: 62, column: 25, scope: !42)
!94 = !DILocation(line: 62, column: 36, scope: !42)
!95 = !DILocation(line: 63, column: 5, scope: !42)
!96 = !DILocation(line: 66, column: 5, scope: !42)
!97 = !DILocation(line: 69, column: 14, scope: !42)
!98 = !DILocation(line: 69, column: 5, scope: !42)
!99 = !DILocation(line: 70, column: 14, scope: !42)
!100 = !DILocation(line: 70, column: 5, scope: !42)
!101 = !DILocation(line: 72, column: 12, scope: !42)
!102 = !DILocation(line: 72, column: 5, scope: !42)
