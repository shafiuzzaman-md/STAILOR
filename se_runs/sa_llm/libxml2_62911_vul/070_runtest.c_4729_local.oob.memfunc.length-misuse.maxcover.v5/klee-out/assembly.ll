; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/070_runtest.c_4729_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/070_runtest.c_4729_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"(len >= 0 && len < 4500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/070_runtest.c_4729_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [4500 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4500 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %3, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %4, metadata !23, metadata !DIExpression()), !dbg !24
  %5 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4500, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !26
  %6 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !27
  %7 = load i8, i8* %6, align 16, !dbg !27
  %8 = sext i8 %7 to i32, !dbg !27
  %9 = icmp ne i32 %8, 35, !dbg !28
  %10 = zext i1 %9 to i32, !dbg !28
  %11 = sext i32 %10 to i64, !dbg !27
  call void @klee_assume(i64 noundef %11), !dbg !29
  %12 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !30
  %13 = call i64 @strlen(i8* noundef %12) #5, !dbg !31
  %14 = trunc i64 %13 to i32, !dbg !31
  store i32 %14, i32* %3, align 4, !dbg !32
  %15 = load i32, i32* %3, align 4, !dbg !33
  %16 = icmp sge i32 %15, 0, !dbg !34
  %17 = zext i1 %16 to i32, !dbg !34
  %18 = sext i32 %17 to i64, !dbg !33
  call void @klee_assume(i64 noundef %18), !dbg !35
  %19 = load i32, i32* %3, align 4, !dbg !36
  %20 = add nsw i32 %19, -1, !dbg !36
  store i32 %20, i32* %3, align 4, !dbg !36
  br label %21, !dbg !37

21:                                               ; preds = %42, %0
  %22 = load i32, i32* %3, align 4, !dbg !38
  %23 = icmp sge i32 %22, 0, !dbg !39
  br i1 %23, label %24, label %40, !dbg !40

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4, !dbg !41
  %26 = sext i32 %25 to i64, !dbg !42
  %27 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %26, !dbg !42
  %28 = load i8, i8* %27, align 1, !dbg !42
  %29 = sext i8 %28 to i32, !dbg !42
  %30 = icmp eq i32 %29, 10, !dbg !43
  br i1 %30, label %38, label %31, !dbg !44

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4, !dbg !45
  %33 = sext i32 %32 to i64, !dbg !46
  %34 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %33, !dbg !46
  %35 = load i8, i8* %34, align 1, !dbg !46
  %36 = sext i8 %35 to i32, !dbg !46
  %37 = icmp eq i32 %36, 13, !dbg !47
  br label %38, !dbg !44

38:                                               ; preds = %31, %24
  %39 = phi i1 [ true, %24 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %38, %21
  %41 = phi i1 [ false, %21 ], [ %39, %38 ], !dbg !48
  br i1 %41, label %42, label %48, !dbg !37

42:                                               ; preds = %40
  %43 = load i32, i32* %3, align 4, !dbg !49
  %44 = sext i32 %43 to i64, !dbg !51
  %45 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %44, !dbg !51
  store i8 0, i8* %45, align 1, !dbg !52
  %46 = load i32, i32* %3, align 4, !dbg !53
  %47 = add nsw i32 %46, -1, !dbg !53
  store i32 %47, i32* %3, align 4, !dbg !53
  br label %21, !dbg !37, !llvm.loop !54

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4, !dbg !57
  %50 = icmp sge i32 %49, 0, !dbg !57
  br i1 %50, label %51, label %56, !dbg !57

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4, !dbg !57
  %53 = icmp slt i32 %52, 4500, !dbg !57
  br i1 %53, label %54, label %56, !dbg !57

54:                                               ; preds = %51
  br i1 true, label %55, label %56, !dbg !57

55:                                               ; preds = %54
  br label %58, !dbg !57

56:                                               ; preds = %54, %51, %48
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !57
  br label %58, !dbg !57

58:                                               ; preds = %56, %55
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/070_runtest.c_4729_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "70646cf1a6f5b5ab1a6757725a061b0c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !11, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "expr", scope: !10, file: !1, line: 13, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 36000, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 4500)
!20 = !DILocation(line: 13, column: 10, scope: !10)
!21 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 14, type: !13)
!22 = !DILocation(line: 14, column: 9, scope: !10)
!23 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 15, type: !13)
!24 = !DILocation(line: 15, column: 9, scope: !10)
!25 = !DILocation(line: 17, column: 24, scope: !10)
!26 = !DILocation(line: 17, column: 5, scope: !10)
!27 = !DILocation(line: 19, column: 17, scope: !10)
!28 = !DILocation(line: 19, column: 25, scope: !10)
!29 = !DILocation(line: 19, column: 5, scope: !10)
!30 = !DILocation(line: 21, column: 18, scope: !10)
!31 = !DILocation(line: 21, column: 11, scope: !10)
!32 = !DILocation(line: 21, column: 9, scope: !10)
!33 = !DILocation(line: 22, column: 17, scope: !10)
!34 = !DILocation(line: 22, column: 21, scope: !10)
!35 = !DILocation(line: 22, column: 5, scope: !10)
!36 = !DILocation(line: 24, column: 8, scope: !10)
!37 = !DILocation(line: 26, column: 5, scope: !10)
!38 = !DILocation(line: 26, column: 13, scope: !10)
!39 = !DILocation(line: 26, column: 17, scope: !10)
!40 = !DILocation(line: 26, column: 23, scope: !10)
!41 = !DILocation(line: 26, column: 32, scope: !10)
!42 = !DILocation(line: 26, column: 27, scope: !10)
!43 = !DILocation(line: 26, column: 37, scope: !10)
!44 = !DILocation(line: 26, column: 45, scope: !10)
!45 = !DILocation(line: 26, column: 53, scope: !10)
!46 = !DILocation(line: 26, column: 48, scope: !10)
!47 = !DILocation(line: 26, column: 58, scope: !10)
!48 = !DILocation(line: 0, scope: !10)
!49 = !DILocation(line: 27, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 26, column: 68)
!51 = !DILocation(line: 27, column: 9, scope: !50)
!52 = !DILocation(line: 27, column: 19, scope: !50)
!53 = !DILocation(line: 28, column: 12, scope: !50)
!54 = distinct !{!54, !37, !55, !56}
!55 = !DILocation(line: 29, column: 5, scope: !10)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !DILocation(line: 31, column: 5, scope: !10)
!58 = !DILocation(line: 32, column: 5, scope: !10)
!59 = !DILocation(line: 34, column: 5, scope: !10)
