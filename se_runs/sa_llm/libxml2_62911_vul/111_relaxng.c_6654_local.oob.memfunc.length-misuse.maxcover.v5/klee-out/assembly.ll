; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/111_relaxng.c_6654_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/111_relaxng.c_6654_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type opaque

@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/111_relaxng.c_6654_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %6 = bitcast i32* %3 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  %7 = load i32, i32* %3, align 4, !dbg !29
  %8 = icmp sge i32 %7, 0, !dbg !30
  %9 = zext i1 %8 to i32, !dbg !30
  %10 = sext i32 %9 to i64, !dbg !29
  call void @klee_assume(i64 noundef %10), !dbg !31
  %11 = load i32, i32* %3, align 4, !dbg !32
  %12 = sext i32 %11 to i64, !dbg !32
  %13 = icmp ult i64 %12, 1024, !dbg !33
  %14 = zext i1 %13 to i32, !dbg !33
  %15 = sext i32 %14 to i64, !dbg !32
  call void @klee_assume(i64 noundef %15), !dbg !34
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %4, metadata !35, metadata !DIExpression()), !dbg !41
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !42
  %17 = load i32, i32* %3, align 4, !dbg !43
  %18 = call %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewMemParserCtxt(i8* noundef %16, i32 noundef %17), !dbg !44
  store %struct._xmlRelaxNGParserCtxt* %18, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !41
  %19 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !45
  %20 = icmp ne %struct._xmlRelaxNGParserCtxt* %19, null, !dbg !47
  br i1 %20, label %21, label %24, !dbg !48

21:                                               ; preds = %0
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !49
  %23 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %4, align 8, !dbg !51
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %23), !dbg !52
  br label %24, !dbg !53

24:                                               ; preds = %21, %0
  ret i32 0, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewMemParserCtxt(i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/111_relaxng.c_6654_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "7b0a9a9af51485350aa415b4edee0e19")
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
!17 = !DILocalVariable(name: "buffer", scope: !12, file: !1, line: 8, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 1024)
!22 = !DILocation(line: 8, column: 10, scope: !12)
!23 = !DILocalVariable(name: "size", scope: !12, file: !1, line: 9, type: !15)
!24 = !DILocation(line: 9, column: 9, scope: !12)
!25 = !DILocation(line: 10, column: 24, scope: !12)
!26 = !DILocation(line: 10, column: 5, scope: !12)
!27 = !DILocation(line: 11, column: 24, scope: !12)
!28 = !DILocation(line: 11, column: 5, scope: !12)
!29 = !DILocation(line: 13, column: 17, scope: !12)
!30 = !DILocation(line: 13, column: 22, scope: !12)
!31 = !DILocation(line: 13, column: 5, scope: !12)
!32 = !DILocation(line: 14, column: 17, scope: !12)
!33 = !DILocation(line: 14, column: 22, scope: !12)
!34 = !DILocation(line: 14, column: 5, scope: !12)
!35 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 17, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxtPtr", file: !37, line: 55, baseType: !38)
!37 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !37, line: 54, baseType: !40)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !37, line: 54, flags: DIFlagFwdDecl)
!41 = !DILocation(line: 17, column: 29, scope: !12)
!42 = !DILocation(line: 17, column: 63, scope: !12)
!43 = !DILocation(line: 17, column: 71, scope: !12)
!44 = !DILocation(line: 17, column: 36, scope: !12)
!45 = !DILocation(line: 18, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 9)
!47 = !DILocation(line: 18, column: 14, scope: !46)
!48 = !DILocation(line: 18, column: 9, scope: !12)
!49 = !DILocation(line: 21, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 18, column: 23)
!51 = !DILocation(line: 23, column: 34, scope: !50)
!52 = !DILocation(line: 23, column: 9, scope: !50)
!53 = !DILocation(line: 24, column: 5, scope: !50)
!54 = !DILocation(line: 26, column: 5, scope: !12)
