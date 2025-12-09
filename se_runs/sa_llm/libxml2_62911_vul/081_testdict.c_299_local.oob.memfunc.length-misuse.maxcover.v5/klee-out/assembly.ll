; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [19 x i8] c"NB_STRINGS_MIN_sym\00", align 1
@NB_STRINGS_MIN = external global i32, align 4
@test1 = external global [0 x i8*], align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = bitcast i32* %3 to i8*, !dbg !25
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %5 = load i32, i32* %3, align 4, !dbg !27
  %6 = icmp sge i32 %5, 0, !dbg !28
  %7 = zext i1 %6 to i32, !dbg !28
  %8 = sext i32 %7 to i64, !dbg !27
  call void @klee_assume(i64 noundef %8), !dbg !29
  %9 = load i32, i32* %3, align 4, !dbg !30
  %10 = icmp slt i32 %9, 1000, !dbg !31
  %11 = zext i1 %10 to i32, !dbg !31
  %12 = sext i32 %11 to i64, !dbg !30
  call void @klee_assume(i64 noundef %12), !dbg !32
  %13 = load i32, i32* %3, align 4, !dbg !33
  store i32 %13, i32* @NB_STRINGS_MIN, align 4, !dbg !34
  call void @xmlInitParser(), !dbg !35
  %14 = call %struct._xmlDict* @xmlDictCreate(), !dbg !36
  store %struct._xmlDict* %14, %struct._xmlDict** %2, align 8, !dbg !37
  %15 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !38
  %16 = icmp eq %struct._xmlDict* %15, null, !dbg !40
  br i1 %16, label %17, label %18, !dbg !41

17:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !42
  br label %23, !dbg !42

18:                                               ; preds = %0
  call void @klee_assume(i64 noundef 1), !dbg !44
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !45
  %20 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !46
  %21 = call i32 @test_dict(%struct._xmlDict* noundef %20), !dbg !47
  %22 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !48
  call void @xmlDictFree(%struct._xmlDict* noundef %22), !dbg !49
  call void @xmlCleanupParser(), !dbg !50
  store i32 0, i32* %1, align 4, !dbg !51
  br label %23, !dbg !51

23:                                               ; preds = %18, %17
  %24 = load i32, i32* %1, align 4, !dbg !52
  ret i32 %24, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare void @xmlInitParser() #2

declare %struct._xmlDict* @xmlDictCreate() #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @test_dict(%struct._xmlDict* noundef) #2

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/081_testdict.c_299_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "0b68b376725e4153e4adee6ec7ebd628")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "dict", scope: !12, file: !1, line: 14, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !20, line: 24, baseType: !21)
!20 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !20, line: 24, flags: DIFlagFwdDecl)
!22 = !DILocation(line: 14, column: 14, scope: !12)
!23 = !DILocalVariable(name: "NB_STRINGS_MIN_sym", scope: !12, file: !1, line: 15, type: !15)
!24 = !DILocation(line: 15, column: 9, scope: !12)
!25 = !DILocation(line: 18, column: 24, scope: !12)
!26 = !DILocation(line: 18, column: 5, scope: !12)
!27 = !DILocation(line: 20, column: 17, scope: !12)
!28 = !DILocation(line: 20, column: 36, scope: !12)
!29 = !DILocation(line: 20, column: 5, scope: !12)
!30 = !DILocation(line: 21, column: 17, scope: !12)
!31 = !DILocation(line: 21, column: 36, scope: !12)
!32 = !DILocation(line: 21, column: 5, scope: !12)
!33 = !DILocation(line: 24, column: 22, scope: !12)
!34 = !DILocation(line: 24, column: 20, scope: !12)
!35 = !DILocation(line: 27, column: 5, scope: !12)
!36 = !DILocation(line: 30, column: 12, scope: !12)
!37 = !DILocation(line: 30, column: 10, scope: !12)
!38 = !DILocation(line: 31, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 31, column: 9)
!40 = !DILocation(line: 31, column: 14, scope: !39)
!41 = !DILocation(line: 31, column: 9, scope: !12)
!42 = !DILocation(line: 32, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 31, column: 23)
!44 = !DILocation(line: 36, column: 5, scope: !12)
!45 = !DILocation(line: 39, column: 5, scope: !12)
!46 = !DILocation(line: 42, column: 15, scope: !12)
!47 = !DILocation(line: 42, column: 5, scope: !12)
!48 = !DILocation(line: 45, column: 17, scope: !12)
!49 = !DILocation(line: 45, column: 5, scope: !12)
!50 = !DILocation(line: 46, column: 5, scope: !12)
!51 = !DILocation(line: 47, column: 5, scope: !12)
!52 = !DILocation(line: 48, column: 1, scope: !12)
