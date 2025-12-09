; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegexp = type opaque
%struct._xmlRegExecCtxt = type opaque

@.str = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %2, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !29, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !35, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !41, metadata !DIExpression()), !dbg !42
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !43
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 100, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !45
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 100, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 99, !dbg !47
  store i8 0, i8* %9, align 1, !dbg !48
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 99, !dbg !49
  store i8 0, i8* %10, align 1, !dbg !50
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !51
  %12 = call %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef %11), !dbg !52
  store %struct._xmlRegexp* %12, %struct._xmlRegexp** %2, align 8, !dbg !53
  %13 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !54
  %14 = icmp eq %struct._xmlRegexp* %13, null, !dbg !56
  br i1 %14, label %15, label %16, !dbg !57

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !58
  br label %49, !dbg !58

16:                                               ; preds = %0
  %17 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !60
  %18 = call %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %17, void (%struct._xmlRegExecCtxt*, i8*, i8*, i8*)* noundef null, i8* noundef null), !dbg !61
  store %struct._xmlRegExecCtxt* %18, %struct._xmlRegExecCtxt** %3, align 8, !dbg !62
  %19 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !63
  %20 = icmp eq %struct._xmlRegExecCtxt* %19, null, !dbg !65
  br i1 %20, label %21, label %23, !dbg !66

21:                                               ; preds = %16
  %22 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !67
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %22), !dbg !69
  store i32 0, i32* %1, align 4, !dbg !70
  br label %49, !dbg !70

23:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %6, metadata !71, metadata !DIExpression()), !dbg !72
  %24 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !73
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !74
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !75
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !76
  %28 = call i64 @strlen(i8* noundef %27) #5, !dbg !77
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !78
  %30 = call i32 @xmlRegExecPushString2(%struct._xmlRegExecCtxt* noundef %24, i8* noundef %25, i8* noundef %29, i8* noundef null), !dbg !79
  store i32 %30, i32* %6, align 4, !dbg !72
  %31 = load i32, i32* %6, align 4, !dbg !80
  %32 = icmp ne i32 %31, 0, !dbg !82
  br i1 %32, label %33, label %36, !dbg !83

33:                                               ; preds = %23
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !84
  call void @xmlRegFreeExecCtxt(%struct._xmlRegExecCtxt* noundef %34), !dbg !86
  %35 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !87
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %35), !dbg !88
  store i32 0, i32* %1, align 4, !dbg !89
  br label %49, !dbg !89

36:                                               ; preds = %23
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !90
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !91
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !92
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !93
  %41 = call i64 @strlen(i8* noundef %40) #5, !dbg !94
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !95
  %43 = call i32 @xmlRegExecPushString2(%struct._xmlRegExecCtxt* noundef %37, i8* noundef %38, i8* noundef %42, i8* noundef null), !dbg !96
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !97
  %45 = call i32 (%struct._xmlRegExecCtxt*, ...) bitcast (i32 (...)* @xmlRegExecRollBack to i32 (%struct._xmlRegExecCtxt*, ...)*)(%struct._xmlRegExecCtxt* noundef %44), !dbg !98
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !99
  %47 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !100
  call void @xmlRegFreeExecCtxt(%struct._xmlRegExecCtxt* noundef %47), !dbg !101
  %48 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !102
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %48), !dbg !103
  store i32 0, i32* %1, align 4, !dbg !104
  br label %49, !dbg !104

49:                                               ; preds = %36, %33, %21, %15
  %50 = load i32, i32* %1, align 4, !dbg !105
  ret i32 %50, !dbg !105
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef) #2

declare %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef, void (%struct._xmlRegExecCtxt*, i8*, i8*, i8*)* noundef, i8* noundef) #2

declare void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef) #2

declare i32 @xmlRegExecPushString2(%struct._xmlRegExecCtxt* noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @xmlRegFreeExecCtxt(%struct._xmlRegExecCtxt* noundef) #2

declare i32 @xmlRegExecRollBack(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/248_xmlregexp.c_3125_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "01731c9b951e904bf42829ca14b2bc50")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !6, line: 28, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "comp", scope: !17, file: !1, line: 7, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !24, line: 29, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !24, line: 28, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !24, line: 28, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 7, column: 18, scope: !17)
!29 = !DILocalVariable(name: "exec", scope: !17, file: !1, line: 8, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !24, line: 37, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !24, line: 36, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !24, line: 36, flags: DIFlagFwdDecl)
!34 = !DILocation(line: 8, column: 23, scope: !17)
!35 = !DILocalVariable(name: "pattern", scope: !17, file: !1, line: 11, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 800, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 100)
!40 = !DILocation(line: 11, column: 10, scope: !17)
!41 = !DILocalVariable(name: "input", scope: !17, file: !1, line: 12, type: !36)
!42 = !DILocation(line: 12, column: 10, scope: !17)
!43 = !DILocation(line: 13, column: 24, scope: !17)
!44 = !DILocation(line: 13, column: 5, scope: !17)
!45 = !DILocation(line: 14, column: 24, scope: !17)
!46 = !DILocation(line: 14, column: 5, scope: !17)
!47 = !DILocation(line: 17, column: 5, scope: !17)
!48 = !DILocation(line: 17, column: 17, scope: !17)
!49 = !DILocation(line: 18, column: 5, scope: !17)
!50 = !DILocation(line: 18, column: 15, scope: !17)
!51 = !DILocation(line: 21, column: 46, scope: !17)
!52 = !DILocation(line: 21, column: 12, scope: !17)
!53 = !DILocation(line: 21, column: 10, scope: !17)
!54 = !DILocation(line: 22, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !17, file: !1, line: 22, column: 9)
!56 = !DILocation(line: 22, column: 14, scope: !55)
!57 = !DILocation(line: 22, column: 9, scope: !17)
!58 = !DILocation(line: 23, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 22, column: 23)
!60 = !DILocation(line: 27, column: 30, scope: !17)
!61 = !DILocation(line: 27, column: 12, scope: !17)
!62 = !DILocation(line: 27, column: 10, scope: !17)
!63 = !DILocation(line: 28, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !17, file: !1, line: 28, column: 9)
!65 = !DILocation(line: 28, column: 14, scope: !64)
!66 = !DILocation(line: 28, column: 9, scope: !17)
!67 = !DILocation(line: 29, column: 26, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 28, column: 23)
!69 = !DILocation(line: 29, column: 9, scope: !68)
!70 = !DILocation(line: 30, column: 9, scope: !68)
!71 = !DILocalVariable(name: "ret", scope: !17, file: !1, line: 37, type: !20)
!72 = !DILocation(line: 37, column: 9, scope: !17)
!73 = !DILocation(line: 37, column: 37, scope: !17)
!74 = !DILocation(line: 37, column: 60, scope: !17)
!75 = !DILocation(line: 37, column: 84, scope: !17)
!76 = !DILocation(line: 37, column: 99, scope: !17)
!77 = !DILocation(line: 37, column: 92, scope: !17)
!78 = !DILocation(line: 37, column: 90, scope: !17)
!79 = !DILocation(line: 37, column: 15, scope: !17)
!80 = !DILocation(line: 38, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !17, file: !1, line: 38, column: 9)
!82 = !DILocation(line: 38, column: 13, scope: !81)
!83 = !DILocation(line: 38, column: 9, scope: !17)
!84 = !DILocation(line: 40, column: 28, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 38, column: 19)
!86 = !DILocation(line: 40, column: 9, scope: !85)
!87 = !DILocation(line: 41, column: 26, scope: !85)
!88 = !DILocation(line: 41, column: 9, scope: !85)
!89 = !DILocation(line: 42, column: 9, scope: !85)
!90 = !DILocation(line: 47, column: 27, scope: !17)
!91 = !DILocation(line: 47, column: 50, scope: !17)
!92 = !DILocation(line: 47, column: 74, scope: !17)
!93 = !DILocation(line: 47, column: 89, scope: !17)
!94 = !DILocation(line: 47, column: 82, scope: !17)
!95 = !DILocation(line: 47, column: 80, scope: !17)
!96 = !DILocation(line: 47, column: 5, scope: !17)
!97 = !DILocation(line: 48, column: 24, scope: !17)
!98 = !DILocation(line: 48, column: 5, scope: !17)
!99 = !DILocation(line: 59, column: 5, scope: !17)
!100 = !DILocation(line: 62, column: 24, scope: !17)
!101 = !DILocation(line: 62, column: 5, scope: !17)
!102 = !DILocation(line: 63, column: 22, scope: !17)
!103 = !DILocation(line: 63, column: 5, scope: !17)
!104 = !DILocation(line: 64, column: 5, scope: !17)
!105 = !DILocation(line: 65, column: 1, scope: !17)
