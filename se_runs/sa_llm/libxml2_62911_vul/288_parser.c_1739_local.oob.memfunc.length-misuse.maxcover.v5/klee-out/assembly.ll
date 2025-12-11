; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/288_parser.c_1739_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/288_parser.c_1739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlNsDB* }
%struct._xmlNsDB = type { i32, %struct._xmlHashTable* }
%struct._xmlHashTable = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"hashSize\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"(result != -1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/288_parser.c_1739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !10 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load i64, i64* %2, align 8, !dbg !47
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !48
  ret i8* %4, !dbg !49
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNsDB, align 8
  %4 = alloca [10 x %struct._xmlHashTable], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlNsDB* %3, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [10 x %struct._xmlHashTable]* %4, metadata !58, metadata !DIExpression()), !dbg !62
  %6 = getelementptr inbounds %struct._xmlNsDB, %struct._xmlNsDB* %3, i32 0, i32 0, !dbg !63
  %7 = bitcast i32* %6 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %8 = getelementptr inbounds %struct._xmlNsDB, %struct._xmlNsDB* %3, i32 0, i32 0, !dbg !66
  %9 = load i32, i32* %8, align 8, !dbg !66
  %10 = icmp sge i32 %9, 0, !dbg !67
  %11 = zext i1 %10 to i32, !dbg !67
  %12 = sext i32 %11 to i64, !dbg !68
  call void @klee_assume(i64 noundef %12), !dbg !69
  %13 = getelementptr inbounds %struct._xmlNsDB, %struct._xmlNsDB* %3, i32 0, i32 0, !dbg !70
  %14 = load i32, i32* %13, align 8, !dbg !70
  %15 = icmp sle i32 %14, 10, !dbg !71
  %16 = zext i1 %15 to i32, !dbg !71
  %17 = sext i32 %16 to i64, !dbg !72
  call void @klee_assume(i64 noundef %17), !dbg !73
  %18 = getelementptr inbounds [10 x %struct._xmlHashTable], [10 x %struct._xmlHashTable]* %4, i64 0, i64 0, !dbg !74
  %19 = getelementptr inbounds %struct._xmlNsDB, %struct._xmlNsDB* %3, i32 0, i32 1, !dbg !75
  store %struct._xmlHashTable* %18, %struct._xmlHashTable** %19, align 8, !dbg !76
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !77
  store %struct._xmlNsDB* %3, %struct._xmlNsDB** %20, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %5, metadata !79, metadata !DIExpression()), !dbg !80
  %21 = call i32 @xmlParserEntityCheck(%struct._xmlParserCtxt* noundef %2), !dbg !81
  store i32 %21, i32* %5, align 4, !dbg !80
  %22 = load i32, i32* %5, align 4, !dbg !82
  %23 = icmp ne i32 %22, -1, !dbg !82
  br i1 %23, label %24, label %26, !dbg !82

24:                                               ; preds = %0
  br i1 true, label %25, label %26, !dbg !82

25:                                               ; preds = %24
  br label %28, !dbg !82

26:                                               ; preds = %24, %0
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !82
  br label %28, !dbg !82

28:                                               ; preds = %26, %25
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !83
  ret i32 0, !dbg !84
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @xmlParserEntityCheck(%struct._xmlParserCtxt* noundef) #3

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/288_parser.c_1739_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "248a75f76344f8a7a3b93c9d8cbcb40c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 27, type: !11, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !29}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 23, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nsdb", scope: !15, file: !1, line: 24, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNsDB", file: !1, line: 18, size: 128, elements: !20)
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "hashSize", scope: !19, file: !1, line: 19, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !19, file: !1, line: 20, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 14, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "hashValue", scope: !25, file: !1, line: 15, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !10, file: !1, line: 27, type: !13)
!34 = !DILocation(line: 27, column: 34, scope: !10)
!35 = !DILocalVariable(name: "extra", arg: 2, scope: !10, file: !1, line: 27, type: !29)
!36 = !DILocation(line: 27, column: 52, scope: !10)
!37 = !DILocation(line: 29, column: 1, scope: !10)
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 31, type: !42)
!46 = !DILocation(line: 31, column: 24, scope: !38)
!47 = !DILocation(line: 32, column: 19, scope: !38)
!48 = !DILocation(line: 32, column: 12, scope: !38)
!49 = !DILocation(line: 32, column: 5, scope: !38)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !51, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!51 = !DISubroutineType(types: !52)
!52 = !{!22}
!53 = !DILocalVariable(name: "ctxt", scope: !50, file: !1, line: 40, type: !14)
!54 = !DILocation(line: 40, column: 19, scope: !50)
!55 = !DILocalVariable(name: "nsdb", scope: !50, file: !1, line: 41, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsDB", file: !1, line: 12, baseType: !19)
!57 = !DILocation(line: 41, column: 13, scope: !50)
!58 = !DILocalVariable(name: "hashArray", scope: !50, file: !1, line: 42, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 320, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DILocation(line: 42, column: 26, scope: !50)
!63 = !DILocation(line: 45, column: 30, scope: !50)
!64 = !DILocation(line: 45, column: 24, scope: !50)
!65 = !DILocation(line: 45, column: 5, scope: !50)
!66 = !DILocation(line: 47, column: 22, scope: !50)
!67 = !DILocation(line: 47, column: 31, scope: !50)
!68 = !DILocation(line: 47, column: 17, scope: !50)
!69 = !DILocation(line: 47, column: 5, scope: !50)
!70 = !DILocation(line: 49, column: 22, scope: !50)
!71 = !DILocation(line: 49, column: 31, scope: !50)
!72 = !DILocation(line: 49, column: 17, scope: !50)
!73 = !DILocation(line: 49, column: 5, scope: !50)
!74 = !DILocation(line: 52, column: 17, scope: !50)
!75 = !DILocation(line: 52, column: 10, scope: !50)
!76 = !DILocation(line: 52, column: 15, scope: !50)
!77 = !DILocation(line: 53, column: 10, scope: !50)
!78 = !DILocation(line: 53, column: 15, scope: !50)
!79 = !DILocalVariable(name: "result", scope: !50, file: !1, line: 56, type: !22)
!80 = !DILocation(line: 56, column: 9, scope: !50)
!81 = !DILocation(line: 56, column: 18, scope: !50)
!82 = !DILocation(line: 67, column: 5, scope: !50)
!83 = !DILocation(line: 70, column: 5, scope: !50)
!84 = !DILocation(line: 72, column: 5, scope: !50)
