; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, i8*, i32 }
%struct._xmlSAXHandler = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sax\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(sax != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlInitParserCtxt = private unnamed_addr constant [39 x i8] c"int xmlInitParserCtxt(xmlParserCtxt *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %0) #0 !dbg !12 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlSAXHandler*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %3, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %4, metadata !34, metadata !DIExpression()), !dbg !35
  %5 = bitcast %struct._xmlSAXHandler** %3 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %6 = bitcast i8** %4 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %7 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !40
  %8 = icmp ne %struct._xmlSAXHandler* %7, null, !dbg !41
  %9 = zext i1 %8 to i32, !dbg !41
  %10 = sext i32 %9 to i64, !dbg !40
  call void @klee_assume(i64 noundef %10), !dbg !42
  %11 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !43
  %12 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %11, i32 0, i32 0, !dbg !44
  %13 = load i32, i32* %12, align 4, !dbg !44
  %14 = icmp eq i32 %13, -554844497, !dbg !45
  %15 = zext i1 %14 to i32, !dbg !45
  %16 = sext i32 %15 to i64, !dbg !43
  call void @klee_assume(i64 noundef %16), !dbg !46
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %3, align 8, !dbg !47
  %18 = icmp ne %struct._xmlSAXHandler* %17, null, !dbg !47
  br i1 %18, label %19, label %21, !dbg !47

19:                                               ; preds = %1
  br i1 true, label %20, label %21, !dbg !47

20:                                               ; preds = %19
  br label %23, !dbg !47

21:                                               ; preds = %19, %1
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlInitParserCtxt, i64 0, i64 0)), !dbg !47
  br label %23, !dbg !47

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.xmlInitParserCtxt, i64 0, i64 0)), !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlSAXHandler, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler* %3, metadata !55, metadata !DIExpression()), !dbg !56
  %4 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !57
  store %struct._xmlSAXHandler* %3, %struct._xmlSAXHandler** %4, align 8, !dbg !58
  %5 = call i32 @xmlInitParserCtxt(%struct._xmlParserCtxt* noundef %2), !dbg !59
  ret i32 0, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/013_parserInternals.c_1492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "337f22814d8db82eaf898268b6f1092a")
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
!12 = distinct !DISubprogram(name: "xmlInitParserCtxt", scope: !1, file: !1, line: 36, type: !13, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 25, size: 192, elements: !19)
!19 = !{!20, !27, !28}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !18, file: !1, line: 26, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 10, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 15, size: 32, elements: !24)
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !23, file: !1, line: 16, baseType: !26, size: 32)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !18, file: !1, line: 27, baseType: !3, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxatts", scope: !18, file: !1, line: 28, baseType: !15, size: 32, offset: 128)
!29 = !{}
!30 = !DILocalVariable(name: "ctxt", arg: 1, scope: !12, file: !1, line: 36, type: !16)
!31 = !DILocation(line: 36, column: 38, scope: !12)
!32 = !DILocalVariable(name: "sax", scope: !12, file: !1, line: 38, type: !21)
!33 = !DILocation(line: 38, column: 20, scope: !12)
!34 = !DILocalVariable(name: "userData", scope: !12, file: !1, line: 39, type: !3)
!35 = !DILocation(line: 39, column: 11, scope: !12)
!36 = !DILocation(line: 42, column: 24, scope: !12)
!37 = !DILocation(line: 42, column: 5, scope: !12)
!38 = !DILocation(line: 43, column: 24, scope: !12)
!39 = !DILocation(line: 43, column: 5, scope: !12)
!40 = !DILocation(line: 46, column: 17, scope: !12)
!41 = !DILocation(line: 46, column: 21, scope: !12)
!42 = !DILocation(line: 46, column: 5, scope: !12)
!43 = !DILocation(line: 51, column: 17, scope: !12)
!44 = !DILocation(line: 51, column: 22, scope: !12)
!45 = !DILocation(line: 51, column: 34, scope: !12)
!46 = !DILocation(line: 51, column: 5, scope: !12)
!47 = !DILocation(line: 58, column: 5, scope: !12)
!48 = !DILocation(line: 61, column: 5, scope: !12)
!49 = !DILocation(line: 66, column: 5, scope: !12)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !51, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!51 = !DISubroutineType(types: !52)
!52 = !{!15}
!53 = !DILocalVariable(name: "ctxt", scope: !50, file: !1, line: 70, type: !17)
!54 = !DILocation(line: 70, column: 19, scope: !50)
!55 = !DILocalVariable(name: "sax_handler", scope: !50, file: !1, line: 71, type: !22)
!56 = !DILocation(line: 71, column: 19, scope: !50)
!57 = !DILocation(line: 74, column: 10, scope: !50)
!58 = !DILocation(line: 74, column: 14, scope: !50)
!59 = !DILocation(line: 77, column: 5, scope: !50)
!60 = !DILocation(line: 79, column: 5, scope: !50)
