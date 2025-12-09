; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type opaque

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !64 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaVal*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !69, metadata !DIExpression()), !dbg !71
  %4 = bitcast i32* %2 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !74, metadata !DIExpression()), !dbg !79
  %5 = load i32, i32* %2, align 4, !dbg !80
  %6 = call i32 (i32, ...) bitcast (i32 (...)* @xmlSchemaNewValue to i32 (i32, ...)*)(i32 noundef %5), !dbg !81
  %7 = sext i32 %6 to i64, !dbg !81
  %8 = inttoptr i64 %7 to %struct._xmlSchemaVal*, !dbg !81
  store %struct._xmlSchemaVal* %8, %struct._xmlSchemaVal** %3, align 8, !dbg !79
  %9 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !82
  %10 = icmp ne %struct._xmlSchemaVal* %9, null, !dbg !84
  br i1 %10, label %11, label %16, !dbg !85

11:                                               ; preds = %0
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 noundef 12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !86
  %13 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !88
  %14 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !89
  %15 = bitcast %struct._xmlSchemaVal* %14 to i8*, !dbg !89
  call void %13(i8* noundef %15), !dbg !88
  br label %16, !dbg !90

16:                                               ; preds = %11, %0
  ret i32 0, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlSchemaNewValue(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !54, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "93a40a8317a83e0ef87d37499d41e94f")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 29, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/schemasInternals.h", directory: "", checksumkind: CSK_MD5, checksum: "5072dee68b3423ac6f13185b984cc325")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!7 = !DIEnumerator(name: "XML_SCHEMAS_UNKNOWN", value: 0)
!8 = !DIEnumerator(name: "XML_SCHEMAS_STRING", value: 1)
!9 = !DIEnumerator(name: "XML_SCHEMAS_NORMSTRING", value: 2)
!10 = !DIEnumerator(name: "XML_SCHEMAS_DECIMAL", value: 3)
!11 = !DIEnumerator(name: "XML_SCHEMAS_TIME", value: 4)
!12 = !DIEnumerator(name: "XML_SCHEMAS_GDAY", value: 5)
!13 = !DIEnumerator(name: "XML_SCHEMAS_GMONTH", value: 6)
!14 = !DIEnumerator(name: "XML_SCHEMAS_GMONTHDAY", value: 7)
!15 = !DIEnumerator(name: "XML_SCHEMAS_GYEAR", value: 8)
!16 = !DIEnumerator(name: "XML_SCHEMAS_GYEARMONTH", value: 9)
!17 = !DIEnumerator(name: "XML_SCHEMAS_DATE", value: 10)
!18 = !DIEnumerator(name: "XML_SCHEMAS_DATETIME", value: 11)
!19 = !DIEnumerator(name: "XML_SCHEMAS_DURATION", value: 12)
!20 = !DIEnumerator(name: "XML_SCHEMAS_FLOAT", value: 13)
!21 = !DIEnumerator(name: "XML_SCHEMAS_DOUBLE", value: 14)
!22 = !DIEnumerator(name: "XML_SCHEMAS_BOOLEAN", value: 15)
!23 = !DIEnumerator(name: "XML_SCHEMAS_TOKEN", value: 16)
!24 = !DIEnumerator(name: "XML_SCHEMAS_LANGUAGE", value: 17)
!25 = !DIEnumerator(name: "XML_SCHEMAS_NMTOKEN", value: 18)
!26 = !DIEnumerator(name: "XML_SCHEMAS_NMTOKENS", value: 19)
!27 = !DIEnumerator(name: "XML_SCHEMAS_NAME", value: 20)
!28 = !DIEnumerator(name: "XML_SCHEMAS_QNAME", value: 21)
!29 = !DIEnumerator(name: "XML_SCHEMAS_NCNAME", value: 22)
!30 = !DIEnumerator(name: "XML_SCHEMAS_ID", value: 23)
!31 = !DIEnumerator(name: "XML_SCHEMAS_IDREF", value: 24)
!32 = !DIEnumerator(name: "XML_SCHEMAS_IDREFS", value: 25)
!33 = !DIEnumerator(name: "XML_SCHEMAS_ENTITY", value: 26)
!34 = !DIEnumerator(name: "XML_SCHEMAS_ENTITIES", value: 27)
!35 = !DIEnumerator(name: "XML_SCHEMAS_NOTATION", value: 28)
!36 = !DIEnumerator(name: "XML_SCHEMAS_ANYURI", value: 29)
!37 = !DIEnumerator(name: "XML_SCHEMAS_INTEGER", value: 30)
!38 = !DIEnumerator(name: "XML_SCHEMAS_NPINTEGER", value: 31)
!39 = !DIEnumerator(name: "XML_SCHEMAS_NINTEGER", value: 32)
!40 = !DIEnumerator(name: "XML_SCHEMAS_NNINTEGER", value: 33)
!41 = !DIEnumerator(name: "XML_SCHEMAS_PINTEGER", value: 34)
!42 = !DIEnumerator(name: "XML_SCHEMAS_INT", value: 35)
!43 = !DIEnumerator(name: "XML_SCHEMAS_UINT", value: 36)
!44 = !DIEnumerator(name: "XML_SCHEMAS_LONG", value: 37)
!45 = !DIEnumerator(name: "XML_SCHEMAS_ULONG", value: 38)
!46 = !DIEnumerator(name: "XML_SCHEMAS_SHORT", value: 39)
!47 = !DIEnumerator(name: "XML_SCHEMAS_USHORT", value: 40)
!48 = !DIEnumerator(name: "XML_SCHEMAS_BYTE", value: 41)
!49 = !DIEnumerator(name: "XML_SCHEMAS_UBYTE", value: 42)
!50 = !DIEnumerator(name: "XML_SCHEMAS_HEXBINARY", value: 43)
!51 = !DIEnumerator(name: "XML_SCHEMAS_BASE64BINARY", value: 44)
!52 = !DIEnumerator(name: "XML_SCHEMAS_ANYTYPE", value: 45)
!53 = !DIEnumerator(name: "XML_SCHEMAS_ANYSIMPLETYPE", value: 46)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"Ubuntu clang version 14.0.6"}
!64 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !65, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{!67}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{}
!69 = !DILocalVariable(name: "type", scope: !64, file: !1, line: 7, type: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValType", file: !4, line: 77, baseType: !3)
!71 = !DILocation(line: 7, column: 22, scope: !64)
!72 = !DILocation(line: 8, column: 24, scope: !64)
!73 = !DILocation(line: 8, column: 5, scope: !64)
!74 = !DILocalVariable(name: "value", scope: !64, file: !1, line: 10, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !4, line: 137, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !4, line: 136, baseType: !78)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !4, line: 136, flags: DIFlagFwdDecl)
!79 = !DILocation(line: 10, column: 21, scope: !64)
!80 = !DILocation(line: 10, column: 47, scope: !64)
!81 = !DILocation(line: 10, column: 29, scope: !64)
!82 = !DILocation(line: 11, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !64, file: !1, line: 11, column: 9)
!84 = !DILocation(line: 11, column: 15, scope: !83)
!85 = !DILocation(line: 11, column: 9, scope: !64)
!86 = !DILocation(line: 12, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 11, column: 24)
!88 = !DILocation(line: 13, column: 9, scope: !87)
!89 = !DILocation(line: 13, column: 17, scope: !87)
!90 = !DILocation(line: 14, column: 5, scope: !87)
!91 = !DILocation(line: 16, column: 5, scope: !64)
