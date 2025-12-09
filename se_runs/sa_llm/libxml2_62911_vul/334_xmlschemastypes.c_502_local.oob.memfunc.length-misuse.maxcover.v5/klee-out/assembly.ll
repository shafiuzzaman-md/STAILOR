; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type opaque

@.str = private unnamed_addr constant [9 x i8] c"test.xsd\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @xmlInitParser(), !dbg !15
  call void @xmlCheckVersion(i32 noundef 20914), !dbg !16
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !17, metadata !DIExpression()), !dbg !23
  %3 = call %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !24
  store %struct._xmlSchemaParserCtxt* %3, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !23
  %4 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !25
  %5 = icmp ne %struct._xmlSchemaParserCtxt* %4, null, !dbg !25
  br i1 %5, label %6, label %9, !dbg !27

6:                                                ; preds = %0
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !28
  %8 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !30
  call void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef %8), !dbg !31
  br label %9, !dbg !32

9:                                                ; preds = %6, %0
  call void @xmlCleanupParser(), !dbg !33
  ret i32 0, !dbg !34
}

declare void @xmlInitParser() #1

declare void @xmlCheckVersion(i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._xmlSchemaParserCtxt* @xmlSchemaNewParserCtxt(i8* noundef) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchemaFreeParserCtxt(%struct._xmlSchemaParserCtxt* noundef) #1

declare void @xmlCleanupParser() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/334_xmlschemastypes.c_502_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "bcd7ee5fee1a95324da2cd07fd99fbd0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocation(line: 7, column: 5, scope: !10)
!16 = !DILocation(line: 8, column: 5, scope: !10)
!17 = !DILocalVariable(name: "ctxt", scope: !10, file: !1, line: 14, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !19, line: 113, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlschemas.h", directory: "", checksumkind: CSK_MD5, checksum: "c087d0e891d6909b14966bccde02fcfc")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !19, line: 112, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !19, line: 112, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 14, column: 28, scope: !10)
!24 = !DILocation(line: 14, column: 35, scope: !10)
!25 = !DILocation(line: 15, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 15, column: 9)
!27 = !DILocation(line: 15, column: 9, scope: !10)
!28 = !DILocation(line: 18, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 15, column: 15)
!30 = !DILocation(line: 19, column: 33, scope: !29)
!31 = !DILocation(line: 19, column: 9, scope: !29)
!32 = !DILocation(line: 20, column: 5, scope: !29)
!33 = !DILocation(line: 22, column: 5, scope: !10)
!34 = !DILocation(line: 23, column: 5, scope: !10)
