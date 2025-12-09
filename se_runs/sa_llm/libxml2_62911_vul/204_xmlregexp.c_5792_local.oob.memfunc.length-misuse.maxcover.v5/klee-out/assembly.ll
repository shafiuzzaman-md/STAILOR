; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegexp = type opaque
%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"pattern_buf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlError, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %2, metadata !33, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i8** %3, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata %struct._xmlError* %4, metadata !42, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [200 x i8]* %5, metadata !61, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !66, metadata !DIExpression()), !dbg !70
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !71
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255, !dbg !73
  store i8 0, i8* %12, align 1, !dbg !74
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !75
  store i8* %13, i8** %3, align 8, !dbg !76
  call void @xmlSetGenericErrorFunc(i8* noundef null, void (i8*, i8*, ...)* noundef null), !dbg !77
  %14 = load i8*, i8** %3, align 8, !dbg !78
  %15 = call %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef %14), !dbg !79
  store %struct._xmlRegexp* %15, %struct._xmlRegexp** %2, align 8, !dbg !80
  %16 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !81
  %17 = icmp eq %struct._xmlRegexp* %16, null, !dbg !83
  br i1 %17, label %18, label %30, !dbg !84

18:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [100 x i8]* %7, metadata !85, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [100 x i8]* %8, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %9, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %10, metadata !95, metadata !DIExpression()), !dbg !96
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !97
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 100, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !99
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !100
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 99, !dbg !101
  store i8 0, i8* %21, align 1, !dbg !102
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 99, !dbg !103
  store i8 0, i8* %22, align 1, !dbg !104
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !105
  %24 = call i64 @strlen(i8* noundef %23) #5, !dbg !106
  %25 = trunc i64 %24 to i32, !dbg !106
  store i32 %25, i32* %9, align 4, !dbg !107
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !108
  %27 = call i64 @strlen(i8* noundef %26) #5, !dbg !109
  %28 = trunc i64 %27 to i32, !dbg !109
  store i32 %28, i32* %10, align 4, !dbg !110
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  br label %30, !dbg !112

30:                                               ; preds = %18, %0
  %31 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !113
  %32 = icmp ne %struct._xmlRegexp* %31, null, !dbg !115
  br i1 %32, label %33, label %35, !dbg !116

33:                                               ; preds = %30
  %34 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !117
  call void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef %34), !dbg !119
  br label %35, !dbg !120

35:                                               ; preds = %33, %30
  ret i32 0, !dbg !121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @xmlSetGenericErrorFunc(i8* noundef, void (i8*, i8*, ...)* noundef) #2

declare %struct._xmlRegexp* @xmlRegexpCompile(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlRegFreeRegexp(%struct._xmlRegexp* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/204_xmlregexp.c_5792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "4729fde5d48826fab7a6c682c4c692a7")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 24, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlerror.h", directory: "", checksumkind: CSK_MD5, checksum: "28cd85987165565f9306b9b66a2b4e88")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "XML_ERR_NONE", value: 0)
!8 = !DIEnumerator(name: "XML_ERR_WARNING", value: 1)
!9 = !DIEnumerator(name: "XML_ERR_ERROR", value: 2)
!10 = !DIEnumerator(name: "XML_ERR_FATAL", value: 3)
!11 = !{!12, !17, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !15, line: 28, baseType: !16)
!15 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !29, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{}
!33 = !DILocalVariable(name: "regexp", scope: !28, file: !1, line: 7, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !35, line: 29, baseType: !36)
!35 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlregexp.h", directory: "", checksumkind: CSK_MD5, checksum: "fea3110c96e8cd9013900e1c8e5b6c0b")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !35, line: 28, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !35, line: 28, flags: DIFlagFwdDecl)
!39 = !DILocation(line: 7, column: 18, scope: !28)
!40 = !DILocalVariable(name: "pattern", scope: !28, file: !1, line: 8, type: !12)
!41 = !DILocation(line: 8, column: 20, scope: !28)
!42 = !DILocalVariable(name: "error", scope: !28, file: !1, line: 9, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !4, line: 76, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !4, line: 78, size: 704, elements: !45)
!45 = !{!46, !47, !48, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !44, file: !4, line: 79, baseType: !31, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !44, file: !4, line: 80, baseType: !31, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !44, file: !4, line: 81, baseType: !18, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !44, file: !4, line: 82, baseType: !50, size: 32, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlErrorLevel", file: !4, line: 29, baseType: !3)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !44, file: !4, line: 83, baseType: !18, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !44, file: !4, line: 84, baseType: !31, size: 32, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !44, file: !4, line: 85, baseType: !18, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !44, file: !4, line: 86, baseType: !18, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !44, file: !4, line: 87, baseType: !18, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !44, file: !4, line: 88, baseType: !31, size: 32, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !44, file: !4, line: 89, baseType: !31, size: 32, offset: 544)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !44, file: !4, line: 90, baseType: !17, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !44, file: !4, line: 91, baseType: !17, size: 64, offset: 640)
!60 = !DILocation(line: 9, column: 14, scope: !28)
!61 = !DILocalVariable(name: "err_msg", scope: !28, file: !1, line: 10, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1600, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 200)
!65 = !DILocation(line: 10, column: 13, scope: !28)
!66 = !DILocalVariable(name: "pattern_buf", scope: !28, file: !1, line: 13, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 256)
!70 = !DILocation(line: 13, column: 10, scope: !28)
!71 = !DILocation(line: 14, column: 24, scope: !28)
!72 = !DILocation(line: 14, column: 5, scope: !28)
!73 = !DILocation(line: 15, column: 5, scope: !28)
!74 = !DILocation(line: 15, column: 40, scope: !28)
!75 = !DILocation(line: 16, column: 31, scope: !28)
!76 = !DILocation(line: 16, column: 13, scope: !28)
!77 = !DILocation(line: 19, column: 5, scope: !28)
!78 = !DILocation(line: 22, column: 31, scope: !28)
!79 = !DILocation(line: 22, column: 14, scope: !28)
!80 = !DILocation(line: 22, column: 12, scope: !28)
!81 = !DILocation(line: 23, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !28, file: !1, line: 23, column: 9)
!83 = !DILocation(line: 23, column: 16, scope: !82)
!84 = !DILocation(line: 23, column: 9, scope: !28)
!85 = !DILocalVariable(name: "token", scope: !86, file: !1, line: 31, type: !87)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 23, column: 25)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 100)
!90 = !DILocation(line: 31, column: 17, scope: !86)
!91 = !DILocalVariable(name: "token2", scope: !86, file: !1, line: 32, type: !87)
!92 = !DILocation(line: 32, column: 17, scope: !86)
!93 = !DILocalVariable(name: "lenn", scope: !86, file: !1, line: 33, type: !31)
!94 = !DILocation(line: 33, column: 13, scope: !86)
!95 = !DILocalVariable(name: "lenp", scope: !86, file: !1, line: 33, type: !31)
!96 = !DILocation(line: 33, column: 19, scope: !86)
!97 = !DILocation(line: 35, column: 28, scope: !86)
!98 = !DILocation(line: 35, column: 9, scope: !86)
!99 = !DILocation(line: 36, column: 28, scope: !86)
!100 = !DILocation(line: 36, column: 9, scope: !86)
!101 = !DILocation(line: 39, column: 9, scope: !86)
!102 = !DILocation(line: 39, column: 32, scope: !86)
!103 = !DILocation(line: 40, column: 9, scope: !86)
!104 = !DILocation(line: 40, column: 34, scope: !86)
!105 = !DILocation(line: 43, column: 30, scope: !86)
!106 = !DILocation(line: 43, column: 16, scope: !86)
!107 = !DILocation(line: 43, column: 14, scope: !86)
!108 = !DILocation(line: 44, column: 30, scope: !86)
!109 = !DILocation(line: 44, column: 16, scope: !86)
!110 = !DILocation(line: 44, column: 14, scope: !86)
!111 = !DILocation(line: 51, column: 9, scope: !86)
!112 = !DILocation(line: 55, column: 5, scope: !86)
!113 = !DILocation(line: 58, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !28, file: !1, line: 58, column: 9)
!115 = !DILocation(line: 58, column: 16, scope: !114)
!116 = !DILocation(line: 58, column: 9, scope: !28)
!117 = !DILocation(line: 59, column: 26, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 58, column: 25)
!119 = !DILocation(line: 59, column: 9, scope: !118)
!120 = !DILocation(line: 60, column: 5, scope: !118)
!121 = !DILocation(line: 62, column: 5, scope: !28)
