; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/092_testlimits.c_262_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/092_testlimits.c_262_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"URI\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"(uri_len >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/092_testlimits.c_262_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"crazy:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [64 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 64, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 63, !dbg !25
  store i8 0, i8* %6, align 1, !dbg !26
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !27
  %8 = icmp ne i8* %7, null, !dbg !28
  %9 = zext i1 %8 to i32, !dbg !28
  %10 = sext i32 %9 to i64, !dbg !27
  call void @klee_assume(i64 noundef %10), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !DIExpression()), !dbg !31
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !32
  %12 = call i32 @crazyMatch(i8* noundef %11), !dbg !33
  store i32 %12, i32* %3, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !35
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !36
  %14 = call i64 @strlen(i8* noundef %13) #5, !dbg !37
  %15 = trunc i64 %14 to i32, !dbg !37
  store i32 %15, i32* %4, align 4, !dbg !35
  %16 = load i32, i32* %4, align 4, !dbg !38
  %17 = icmp sge i32 %16, 6, !dbg !38
  br i1 %17, label %18, label %20, !dbg !38

18:                                               ; preds = %0
  br i1 true, label %19, label %20, !dbg !38

19:                                               ; preds = %18
  br label %22, !dbg !38

20:                                               ; preds = %18, %0
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !38
  br label %22, !dbg !38

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !39
  %24 = load i32, i32* %3, align 4, !dbg !40
  ret i32 %24, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crazyMatch(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = load i8*, i8** %3, align 8, !dbg !49
  %5 = icmp ne i8* %4, null, !dbg !51
  br i1 %5, label %6, label %11, !dbg !52

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !53
  %8 = call i32 @strncmp(i8* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 noundef 6) #5, !dbg !54
  %9 = icmp ne i32 %8, 0, !dbg !54
  br i1 %9, label %11, label %10, !dbg !55

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4, !dbg !56
  br label %12, !dbg !56

11:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4, !dbg !57
  br label %12, !dbg !57

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4, !dbg !58
  ret i32 %13, !dbg !58
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/092_testlimits.c_262_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9292ff2bde288d5fffd64c9861cc896d")
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
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 64)
!22 = !DILocation(line: 15, column: 10, scope: !12)
!23 = !DILocation(line: 16, column: 24, scope: !12)
!24 = !DILocation(line: 16, column: 5, scope: !12)
!25 = !DILocation(line: 19, column: 5, scope: !12)
!26 = !DILocation(line: 19, column: 13, scope: !12)
!27 = !DILocation(line: 22, column: 17, scope: !12)
!28 = !DILocation(line: 22, column: 21, scope: !12)
!29 = !DILocation(line: 22, column: 5, scope: !12)
!30 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 25, type: !15)
!31 = !DILocation(line: 25, column: 9, scope: !12)
!32 = !DILocation(line: 25, column: 29, scope: !12)
!33 = !DILocation(line: 25, column: 18, scope: !12)
!34 = !DILocalVariable(name: "uri_len", scope: !12, file: !1, line: 30, type: !15)
!35 = !DILocation(line: 30, column: 9, scope: !12)
!36 = !DILocation(line: 30, column: 26, scope: !12)
!37 = !DILocation(line: 30, column: 19, scope: !12)
!38 = !DILocation(line: 31, column: 5, scope: !12)
!39 = !DILocation(line: 34, column: 5, scope: !12)
!40 = !DILocation(line: 36, column: 12, scope: !12)
!41 = !DILocation(line: 36, column: 5, scope: !12)
!42 = distinct !DISubprogram(name: "crazyMatch", scope: !1, file: !1, line: 40, type: !43, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!43 = !DISubroutineType(types: !44)
!44 = !{!15, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!47 = !DILocalVariable(name: "URI", arg: 1, scope: !42, file: !1, line: 40, type: !45)
!48 = !DILocation(line: 40, column: 35, scope: !42)
!49 = !DILocation(line: 41, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 9)
!51 = !DILocation(line: 41, column: 14, scope: !50)
!52 = !DILocation(line: 41, column: 23, scope: !50)
!53 = !DILocation(line: 41, column: 36, scope: !50)
!54 = !DILocation(line: 41, column: 28, scope: !50)
!55 = !DILocation(line: 41, column: 9, scope: !42)
!56 = !DILocation(line: 42, column: 9, scope: !50)
!57 = !DILocation(line: 43, column: 5, scope: !42)
!58 = !DILocation(line: 44, column: 1, scope: !42)
