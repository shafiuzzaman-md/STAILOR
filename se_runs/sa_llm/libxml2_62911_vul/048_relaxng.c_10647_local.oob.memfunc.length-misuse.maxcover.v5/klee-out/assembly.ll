; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/048_relaxng.c_10647_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/048_relaxng.c_10647_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type opaque
%struct._xmlRelaxNG = type opaque
%struct._xmlRelaxNGValidCtxt = type opaque

@.str = private unnamed_addr constant [11 x i8] c"xml_buffer\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/048_relaxng.c_10647_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %3 = alloca %struct._xmlRelaxNG*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNG** %3, metadata !24, metadata !DIExpression()), !dbg !29
  store %struct._xmlRelaxNG* null, %struct._xmlRelaxNG** %3, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !30, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !36, metadata !DIExpression()), !dbg !41
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !42
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !43
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 1023, !dbg !44
  store i8 0, i8* %7, align 1, !dbg !45
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !46
  %9 = call %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewMemParserCtxt(i8* noundef %8, i32 noundef 1023), !dbg !47
  store %struct._xmlRelaxNGParserCtxt* %9, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !48
  %10 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !49
  %11 = icmp eq %struct._xmlRelaxNGParserCtxt* %10, null, !dbg !51
  br i1 %11, label %12, label %13, !dbg !52

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !53
  br label %30, !dbg !53

13:                                               ; preds = %0
  %14 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !55
  %15 = call %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef %14), !dbg !56
  store %struct._xmlRelaxNG* %15, %struct._xmlRelaxNG** %3, align 8, !dbg !57
  %16 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %2, align 8, !dbg !58
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %16), !dbg !59
  %17 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !60
  %18 = call %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef %17), !dbg !61
  store %struct._xmlRelaxNGValidCtxt* %18, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !62
  %19 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !63
  %20 = icmp ne %struct._xmlRelaxNGValidCtxt* %19, null, !dbg !65
  br i1 %20, label %21, label %24, !dbg !66

21:                                               ; preds = %13
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !67
  %23 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !69
  call void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef %23), !dbg !70
  br label %24, !dbg !71

24:                                               ; preds = %21, %13
  %25 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !72
  %26 = icmp ne %struct._xmlRelaxNG* %25, null, !dbg !74
  br i1 %26, label %27, label %29, !dbg !75

27:                                               ; preds = %24
  %28 = load %struct._xmlRelaxNG*, %struct._xmlRelaxNG** %3, align 8, !dbg !76
  call void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef %28), !dbg !78
  br label %29, !dbg !79

29:                                               ; preds = %27, %24
  store i32 0, i32* %1, align 4, !dbg !80
  br label %30, !dbg !80

30:                                               ; preds = %29, %12
  %31 = load i32, i32* %1, align 4, !dbg !81
  ret i32 %31, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewMemParserCtxt(i8* noundef, i32 noundef) #2

declare %struct._xmlRelaxNG* @xmlRelaxNGParse(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef) #2

declare %struct._xmlRelaxNGValidCtxt* @xmlRelaxNGNewValidCtxt(%struct._xmlRelaxNG* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlRelaxNGFreeValidCtxt(%struct._xmlRelaxNGValidCtxt* noundef) #2

declare void @xmlRelaxNGFree(%struct._xmlRelaxNG* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/048_relaxng.c_10647_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cd14b4c882dc2371a0021353a71c6c5c")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "parserCtxt", scope: !12, file: !1, line: 7, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxtPtr", file: !19, line: 55, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !19, line: 54, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !19, line: 54, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 7, column: 29, scope: !12)
!24 = !DILocalVariable(name: "schema", scope: !12, file: !1, line: 8, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGPtr", file: !19, line: 24, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNG", file: !19, line: 23, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNG", file: !19, line: 23, flags: DIFlagFwdDecl)
!29 = !DILocation(line: 8, column: 19, scope: !12)
!30 = !DILocalVariable(name: "validCtxt", scope: !12, file: !1, line: 9, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !19, line: 58, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !19, line: 57, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !19, line: 57, flags: DIFlagFwdDecl)
!35 = !DILocation(line: 9, column: 28, scope: !12)
!36 = !DILocalVariable(name: "xml_buffer", scope: !12, file: !1, line: 12, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8192, elements: !39)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{!40}
!40 = !DISubrange(count: 1024)
!41 = !DILocation(line: 12, column: 10, scope: !12)
!42 = !DILocation(line: 13, column: 24, scope: !12)
!43 = !DILocation(line: 13, column: 5, scope: !12)
!44 = !DILocation(line: 15, column: 5, scope: !12)
!45 = !DILocation(line: 15, column: 38, scope: !12)
!46 = !DILocation(line: 17, column: 45, scope: !12)
!47 = !DILocation(line: 17, column: 18, scope: !12)
!48 = !DILocation(line: 17, column: 16, scope: !12)
!49 = !DILocation(line: 18, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 9)
!51 = !DILocation(line: 18, column: 20, scope: !50)
!52 = !DILocation(line: 18, column: 9, scope: !12)
!53 = !DILocation(line: 19, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 18, column: 29)
!55 = !DILocation(line: 23, column: 30, scope: !12)
!56 = !DILocation(line: 23, column: 14, scope: !12)
!57 = !DILocation(line: 23, column: 12, scope: !12)
!58 = !DILocation(line: 24, column: 30, scope: !12)
!59 = !DILocation(line: 24, column: 5, scope: !12)
!60 = !DILocation(line: 27, column: 40, scope: !12)
!61 = !DILocation(line: 27, column: 17, scope: !12)
!62 = !DILocation(line: 27, column: 15, scope: !12)
!63 = !DILocation(line: 30, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !12, file: !1, line: 30, column: 9)
!65 = !DILocation(line: 30, column: 19, scope: !64)
!66 = !DILocation(line: 30, column: 9, scope: !12)
!67 = !DILocation(line: 31, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 28)
!69 = !DILocation(line: 33, column: 33, scope: !68)
!70 = !DILocation(line: 33, column: 9, scope: !68)
!71 = !DILocation(line: 34, column: 5, scope: !68)
!72 = !DILocation(line: 36, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !12, file: !1, line: 36, column: 9)
!74 = !DILocation(line: 36, column: 16, scope: !73)
!75 = !DILocation(line: 36, column: 9, scope: !12)
!76 = !DILocation(line: 37, column: 24, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 25)
!78 = !DILocation(line: 37, column: 9, scope: !77)
!79 = !DILocation(line: 38, column: 5, scope: !77)
!80 = !DILocation(line: 40, column: 5, scope: !12)
!81 = !DILocation(line: 41, column: 1, scope: !12)
