; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/102_testlimits.c_267_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/102_testlimits.c_267_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(strlen(URI) >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/102_testlimits.c_267_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9, !dbg !25
  %6 = load i8, i8* %5, align 1, !dbg !25
  %7 = sext i8 %6 to i32, !dbg !25
  %8 = icmp eq i32 %7, 0, !dbg !26
  %9 = zext i1 %8 to i32, !dbg !26
  %10 = sext i32 %9 to i64, !dbg !25
  call void @klee_assume(i64 noundef %10), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %3, metadata !28, metadata !DIExpression()), !dbg !29
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !30
  %12 = call i32 @crazyMatch(i8* noundef %11), !dbg !31
  store i32 %12, i32* %3, align 4, !dbg !29
  %13 = load i32, i32* %3, align 4, !dbg !32
  %14 = icmp eq i32 %13, 1, !dbg !34
  br i1 %14, label %15, label %25, !dbg !35

15:                                               ; preds = %0
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !36
  %17 = call i64 @strlen(i8* noundef %16), !dbg !36
  %18 = icmp uge i64 %17, 6, !dbg !36
  br i1 %18, label %19, label %21, !dbg !36

19:                                               ; preds = %15
  br i1 true, label %20, label %21, !dbg !36

20:                                               ; preds = %19
  br label %23, !dbg !36

21:                                               ; preds = %19, %15
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !36
  br label %23, !dbg !36

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !38
  br label %25, !dbg !39

25:                                               ; preds = %23, %0
  ret i32 0, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crazyMatch(i8* noundef %0) #0 !dbg !41 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  %4 = load i8*, i8** %3, align 8, !dbg !48
  %5 = icmp ne i8* %4, null, !dbg !50
  br i1 %5, label %6, label %11, !dbg !51

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !52
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 noundef 6), !dbg !53
  %9 = icmp ne i32 %8, 0, !dbg !53
  br i1 %9, label %11, label %10, !dbg !54

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !55
  br label %12, !dbg !55

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4, !dbg !56
  br label %12, !dbg !56

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4, !dbg !57
  ret i32 %13, !dbg !57
}

declare i64 @strlen(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/102_testlimits.c_267_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e861e46608d13991594d018315d20402")
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
!17 = !DILocalVariable(name: "URI", scope: !12, file: !1, line: 14, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 80, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DILocation(line: 14, column: 10, scope: !12)
!23 = !DILocation(line: 15, column: 24, scope: !12)
!24 = !DILocation(line: 15, column: 5, scope: !12)
!25 = !DILocation(line: 16, column: 17, scope: !12)
!26 = !DILocation(line: 16, column: 24, scope: !12)
!27 = !DILocation(line: 16, column: 5, scope: !12)
!28 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 18, type: !15)
!29 = !DILocation(line: 18, column: 9, scope: !12)
!30 = !DILocation(line: 18, column: 29, scope: !12)
!31 = !DILocation(line: 18, column: 18, scope: !12)
!32 = !DILocation(line: 20, column: 24, scope: !33)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 20, column: 9)
!34 = !DILocation(line: 20, column: 31, scope: !33)
!35 = !DILocation(line: 20, column: 9, scope: !12)
!36 = !DILocation(line: 21, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 20, column: 37)
!38 = !DILocation(line: 22, column: 9, scope: !37)
!39 = !DILocation(line: 23, column: 5, scope: !37)
!40 = !DILocation(line: 25, column: 5, scope: !12)
!41 = distinct !DISubprogram(name: "crazyMatch", scope: !1, file: !1, line: 7, type: !42, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!42 = !DISubroutineType(types: !43)
!43 = !{!15, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!46 = !DILocalVariable(name: "URI", arg: 1, scope: !41, file: !1, line: 7, type: !44)
!47 = !DILocation(line: 7, column: 35, scope: !41)
!48 = !DILocation(line: 8, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !41, file: !1, line: 8, column: 9)
!50 = !DILocation(line: 8, column: 14, scope: !49)
!51 = !DILocation(line: 8, column: 23, scope: !49)
!52 = !DILocation(line: 8, column: 36, scope: !49)
!53 = !DILocation(line: 8, column: 28, scope: !49)
!54 = !DILocation(line: 8, column: 9, scope: !41)
!55 = !DILocation(line: 9, column: 9, scope: !49)
!56 = !DILocation(line: 10, column: 5, scope: !41)
!57 = !DILocation(line: 11, column: 1, scope: !41)
