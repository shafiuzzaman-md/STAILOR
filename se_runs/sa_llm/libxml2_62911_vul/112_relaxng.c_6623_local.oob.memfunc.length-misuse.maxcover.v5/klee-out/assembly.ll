; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/112_relaxng.c_6623_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/112_relaxng.c_6623_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type opaque

@.str = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/112_relaxng.c_6623_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !25
  store i8 0, i8* %5, align 1, !dbg !26
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %3, metadata !27, metadata !DIExpression()), !dbg !33
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !34
  %7 = call %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef %6), !dbg !35
  store %struct._xmlRelaxNGParserCtxt* %7, %struct._xmlRelaxNGParserCtxt** %3, align 8, !dbg !33
  %8 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %3, align 8, !dbg !36
  %9 = icmp ne %struct._xmlRelaxNGParserCtxt* %8, null, !dbg !38
  br i1 %9, label %10, label %13, !dbg !39

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 18, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !40
  %12 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %3, align 8, !dbg !42
  call void @xmlRelaxNGFreeParserCtxt(%struct._xmlRelaxNGParserCtxt* noundef %12), !dbg !43
  br label %13, !dbg !44

13:                                               ; preds = %10, %0
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlRelaxNGParserCtxt* @xmlRelaxNGNewParserCtxt(i8* noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/112_relaxng.c_6623_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b001ade26020d2ff77d6605078e87f65")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "URL", scope: !12, file: !1, line: 7, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 7, column: 10, scope: !12)
!23 = !DILocation(line: 8, column: 24, scope: !12)
!24 = !DILocation(line: 8, column: 5, scope: !12)
!25 = !DILocation(line: 10, column: 5, scope: !12)
!26 = !DILocation(line: 10, column: 14, scope: !12)
!27 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 13, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxtPtr", file: !29, line: 55, baseType: !30)
!29 = !DIFile(filename: "/usr/include/libxml2/libxml/relaxng.h", directory: "", checksumkind: CSK_MD5, checksum: "348c151f5b45a3543862c0e280f9fbba")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !29, line: 54, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !29, line: 54, flags: DIFlagFwdDecl)
!33 = !DILocation(line: 13, column: 29, scope: !12)
!34 = !DILocation(line: 13, column: 60, scope: !12)
!35 = !DILocation(line: 13, column: 36, scope: !12)
!36 = !DILocation(line: 16, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !12, file: !1, line: 16, column: 9)
!38 = !DILocation(line: 16, column: 14, scope: !37)
!39 = !DILocation(line: 16, column: 9, scope: !12)
!40 = !DILocation(line: 18, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 16, column: 23)
!42 = !DILocation(line: 20, column: 34, scope: !41)
!43 = !DILocation(line: 20, column: 9, scope: !41)
!44 = !DILocation(line: 21, column: 5, scope: !41)
!45 = !DILocation(line: 23, column: 5, scope: !12)
