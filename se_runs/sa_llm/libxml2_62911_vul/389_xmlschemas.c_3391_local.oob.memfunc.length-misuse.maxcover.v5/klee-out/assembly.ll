; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque
%struct._xmlSchema = type opaque

@.str = private unnamed_addr constant [59 x i8] c"<schema xmlns='http://www.w3.org/2001/XMLSchema'></schema>\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %3 = alloca %struct._xmlSchema*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct._xmlSchema** %3, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %4, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i64* %5, metadata !35, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %6, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %6, align 4, !dbg !41
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8** %4, align 8, !dbg !42
  %7 = load i8*, i8** %4, align 8, !dbg !43
  %8 = call i64 @strlen(i8* noundef %7) #5, !dbg !44
  store i64 %8, i64* %5, align 8, !dbg !45
  %9 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef null), !dbg !46
  store %struct._xmlSchemaParserCtxt* %9, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !47
  %10 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !48
  %11 = icmp eq %struct._xmlSchemaParserCtxt* %10, null, !dbg !50
  br i1 %11, label %12, label %13, !dbg !51

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !52
  br label %25, !dbg !52

13:                                               ; preds = %0
  %14 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !54
  call void @xmlSchemaSetParserErrors(%struct._xmlSchemaParserCtxt* noundef %14, void (i8*, i8*, ...)* noundef null, void (i8*, i8*, ...)* noundef null, i8* noundef null), !dbg !55
  %15 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !56
  %16 = call %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef %15), !dbg !57
  store %struct._xmlSchema* %16, %struct._xmlSchema** %3, align 8, !dbg !58
  %17 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !59
  %18 = icmp eq %struct._xmlSchema* %17, null, !dbg !61
  br i1 %18, label %19, label %21, !dbg !62

19:                                               ; preds = %13
  %20 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !63
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %20), !dbg !65
  store i32 0, i32* %1, align 4, !dbg !66
  br label %25, !dbg !66

21:                                               ; preds = %13
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !67
  %23 = load %struct._xmlSchema*, %struct._xmlSchema** %3, align 8, !dbg !68
  call void @xmlSchemaFree(%struct._xmlSchema* noundef %23), !dbg !69
  %24 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !70
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %24), !dbg !71
  store i32 0, i32* %1, align 4, !dbg !72
  br label %25, !dbg !72

25:                                               ; preds = %21, %19, %12
  %26 = load i32, i32* %1, align 4, !dbg !73
  ret i32 %26, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #3

declare void @xmlSchemaSetParserErrors(%struct._xmlSchemaParserCtxt* noundef, void (i8*, i8*, ...)* noundef, void (i8*, i8*, ...)* noundef, i8* noundef) #3

declare %struct._xmlSchema* @xmlSchemaParse(%struct._xmlSchemaParserCtxt* noundef) #3

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlSchemaFree(%struct._xmlSchema* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/389_xmlschemas.c_3391_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "4286339c295451d78e510621500802c8")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 11, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !19, line: 113, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !19, line: 112, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !19, line: 112, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 11, column: 28, scope: !12)
!24 = !DILocalVariable(name: "schema", scope: !12, file: !1, line: 12, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaPtr", file: !19, line: 85, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchema", file: !19, line: 84, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchema", file: !19, line: 84, flags: DIFlagFwdDecl)
!29 = !DILocation(line: 12, column: 18, scope: !12)
!30 = !DILocalVariable(name: "xmlData", scope: !12, file: !1, line: 13, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DILocation(line: 13, column: 17, scope: !12)
!35 = !DILocalVariable(name: "xmlSize", scope: !12, file: !1, line: 14, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 14, column: 12, scope: !12)
!40 = !DILocalVariable(name: "parseOptions", scope: !12, file: !1, line: 15, type: !15)
!41 = !DILocation(line: 15, column: 9, scope: !12)
!42 = !DILocation(line: 17, column: 13, scope: !12)
!43 = !DILocation(line: 18, column: 22, scope: !12)
!44 = !DILocation(line: 18, column: 15, scope: !12)
!45 = !DILocation(line: 18, column: 13, scope: !12)
!46 = !DILocation(line: 20, column: 12, scope: !12)
!47 = !DILocation(line: 20, column: 10, scope: !12)
!48 = !DILocation(line: 21, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !12, file: !1, line: 21, column: 9)
!50 = !DILocation(line: 21, column: 14, scope: !49)
!51 = !DILocation(line: 21, column: 9, scope: !12)
!52 = !DILocation(line: 22, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 21, column: 23)
!54 = !DILocation(line: 25, column: 30, scope: !12)
!55 = !DILocation(line: 25, column: 5, scope: !12)
!56 = !DILocation(line: 27, column: 29, scope: !12)
!57 = !DILocation(line: 27, column: 14, scope: !12)
!58 = !DILocation(line: 27, column: 12, scope: !12)
!59 = !DILocation(line: 28, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !12, file: !1, line: 28, column: 9)
!61 = !DILocation(line: 28, column: 16, scope: !60)
!62 = !DILocation(line: 28, column: 9, scope: !12)
!63 = !DILocation(line: 29, column: 33, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 28, column: 25)
!65 = !DILocation(line: 29, column: 9, scope: !64)
!66 = !DILocation(line: 30, column: 9, scope: !64)
!67 = !DILocation(line: 33, column: 5, scope: !12)
!68 = !DILocation(line: 35, column: 19, scope: !12)
!69 = !DILocation(line: 35, column: 5, scope: !12)
!70 = !DILocation(line: 36, column: 29, scope: !12)
!71 = !DILocation(line: 36, column: 5, scope: !12)
!72 = !DILocation(line: 37, column: 5, scope: !12)
!73 = !DILocation(line: 38, column: 1, scope: !12)
