; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/100_testlimits.c_99_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/100_testlimits.c_99_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 5) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/100_testlimits.c_99_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"huge:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !25
  store i8 0, i8* %5, align 1, !dbg !26
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !27
  %7 = icmp ne i8* %6, null, !dbg !28
  %8 = zext i1 %7 to i32, !dbg !28
  %9 = sext i32 %8 to i64, !dbg !27
  call void @klee_assume(i64 noundef %9), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !DIExpression()), !dbg !31
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !32
  %11 = call i32 @hugeMatch(i8* noundef %10), !dbg !33
  store i32 %11, i32* %3, align 4, !dbg !31
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !34
  %13 = call i64 @strlen(i8* noundef %12) #5, !dbg !34
  %14 = icmp uge i64 %13, 5, !dbg !34
  br i1 %14, label %15, label %17, !dbg !34

15:                                               ; preds = %0
  br i1 true, label %16, label %17, !dbg !34

16:                                               ; preds = %15
  br label %19, !dbg !34

17:                                               ; preds = %15, %0
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 30, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !34
  br label %19, !dbg !34

19:                                               ; preds = %17, %16
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugeMatch(i8* noundef %0) #0 !dbg !37 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !42, metadata !DIExpression()), !dbg !43
  %4 = load i8*, i8** %3, align 8, !dbg !44
  %5 = icmp ne i8* %4, null, !dbg !46
  br i1 %5, label %6, label %11, !dbg !47

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !48
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 noundef 5) #5, !dbg !49
  %9 = icmp ne i32 %8, 0, !dbg !49
  br i1 %9, label %11, label %10, !dbg !50

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !51
  br label %12, !dbg !51

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4, !dbg !52
  br label %12, !dbg !52

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4, !dbg !53
  ret i32 %13, !dbg !53
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/100_testlimits.c_99_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ff09f77aebadb3b2231689b557c74c78")
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
!17 = !DILocalVariable(name: "URI", scope: !12, file: !1, line: 15, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 15, column: 10, scope: !12)
!23 = !DILocation(line: 16, column: 24, scope: !12)
!24 = !DILocation(line: 16, column: 5, scope: !12)
!25 = !DILocation(line: 19, column: 5, scope: !12)
!26 = !DILocation(line: 19, column: 14, scope: !12)
!27 = !DILocation(line: 22, column: 17, scope: !12)
!28 = !DILocation(line: 22, column: 21, scope: !12)
!29 = !DILocation(line: 22, column: 5, scope: !12)
!30 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 25, type: !15)
!31 = !DILocation(line: 25, column: 9, scope: !12)
!32 = !DILocation(line: 25, column: 28, scope: !12)
!33 = !DILocation(line: 25, column: 18, scope: !12)
!34 = !DILocation(line: 30, column: 5, scope: !12)
!35 = !DILocation(line: 33, column: 5, scope: !12)
!36 = !DILocation(line: 35, column: 5, scope: !12)
!37 = distinct !DISubprogram(name: "hugeMatch", scope: !1, file: !1, line: 39, type: !38, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!38 = !DISubroutineType(types: !39)
!39 = !{!15, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!42 = !DILocalVariable(name: "URI", arg: 1, scope: !37, file: !1, line: 39, type: !40)
!43 = !DILocation(line: 39, column: 34, scope: !37)
!44 = !DILocation(line: 40, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 40, column: 9)
!46 = !DILocation(line: 40, column: 14, scope: !45)
!47 = !DILocation(line: 40, column: 23, scope: !45)
!48 = !DILocation(line: 40, column: 36, scope: !45)
!49 = !DILocation(line: 40, column: 28, scope: !45)
!50 = !DILocation(line: 40, column: 9, scope: !37)
!51 = !DILocation(line: 41, column: 9, scope: !45)
!52 = !DILocation(line: 42, column: 5, scope: !37)
!53 = !DILocation(line: 43, column: 1, scope: !37)
