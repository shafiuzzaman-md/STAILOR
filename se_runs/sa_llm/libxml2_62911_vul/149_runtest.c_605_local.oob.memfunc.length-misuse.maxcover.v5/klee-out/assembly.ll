; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"(strlen(suffix) < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %5, metadata !28, metadata !DIExpression()), !dbg !29
  %6 = call noalias i8* @malloc(i64 noundef 500) #6, !dbg !30
  store i8* %6, i8** %3, align 8, !dbg !31
  %7 = call noalias i8* @malloc(i64 noundef 500) #6, !dbg !32
  store i8* %7, i8** %5, align 8, !dbg !33
  %8 = load i8*, i8** %3, align 8, !dbg !34
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 500, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %9 = load i8*, i8** %5, align 8, !dbg !36
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 500, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %10 = load i8*, i8** %3, align 8, !dbg !38
  %11 = getelementptr inbounds i8, i8* %10, i64 499, !dbg !38
  %12 = load i8, i8* %11, align 1, !dbg !38
  %13 = sext i8 %12 to i32, !dbg !38
  %14 = icmp eq i32 %13, 0, !dbg !39
  %15 = zext i1 %14 to i32, !dbg !39
  %16 = sext i32 %15 to i64, !dbg !38
  call void @klee_assume(i64 noundef %16), !dbg !40
  %17 = load i8*, i8** %5, align 8, !dbg !41
  %18 = getelementptr inbounds i8, i8* %17, i64 499, !dbg !41
  %19 = load i8, i8* %18, align 1, !dbg !41
  %20 = sext i8 %19 to i32, !dbg !41
  %21 = icmp eq i32 %20, 0, !dbg !42
  %22 = zext i1 %21 to i32, !dbg !42
  %23 = sext i32 %22 to i64, !dbg !41
  call void @klee_assume(i64 noundef %23), !dbg !43
  store i8* null, i8** %4, align 8, !dbg !44
  %24 = load i8*, i8** %3, align 8, !dbg !45
  %25 = icmp eq i8* %24, null, !dbg !47
  br i1 %25, label %26, label %27, !dbg !48

26:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8, !dbg !49
  br label %27, !dbg !50

27:                                               ; preds = %26, %0
  %28 = load i8*, i8** %4, align 8, !dbg !51
  %29 = icmp eq i8* %28, null, !dbg !53
  br i1 %29, label %30, label %31, !dbg !54

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8, !dbg !55
  br label %31, !dbg !56

31:                                               ; preds = %30, %27
  %32 = load i8*, i8** %3, align 8, !dbg !57
  %33 = call i64 @strlen(i8* noundef %32) #7, !dbg !57
  %34 = icmp ult i64 %33, 500, !dbg !57
  br i1 %34, label %35, label %37, !dbg !57

35:                                               ; preds = %31
  br i1 true, label %36, label %37, !dbg !57

36:                                               ; preds = %35
  br label %39, !dbg !57

37:                                               ; preds = %35, %31
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !57
  br label %39, !dbg !57

39:                                               ; preds = %37, %36
  %40 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !58
  %41 = load i8*, i8** %3, align 8, !dbg !59
  %42 = call i8* @strncpy(i8* noundef %40, i8* noundef %41, i64 noundef 499) #6, !dbg !60
  %43 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !61
  %44 = load i8*, i8** %3, align 8, !dbg !62
  call void @free(i8* noundef %44) #6, !dbg !63
  %45 = load i8*, i8** %5, align 8, !dbg !64
  call void @free(i8* noundef %45) #6, !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/149_runtest.c_605_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "195bc503405e52eaf9db3af5c17d29d3")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "suffixbuff", scope: !14, file: !1, line: 10, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4000, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 500)
!23 = !DILocation(line: 10, column: 10, scope: !14)
!24 = !DILocalVariable(name: "suffix", scope: !14, file: !1, line: 11, type: !3)
!25 = !DILocation(line: 11, column: 11, scope: !14)
!26 = !DILocalVariable(name: "out", scope: !14, file: !1, line: 12, type: !3)
!27 = !DILocation(line: 12, column: 11, scope: !14)
!28 = !DILocalVariable(name: "base", scope: !14, file: !1, line: 13, type: !3)
!29 = !DILocation(line: 13, column: 11, scope: !14)
!30 = !DILocation(line: 15, column: 21, scope: !14)
!31 = !DILocation(line: 15, column: 12, scope: !14)
!32 = !DILocation(line: 16, column: 19, scope: !14)
!33 = !DILocation(line: 16, column: 10, scope: !14)
!34 = !DILocation(line: 18, column: 24, scope: !14)
!35 = !DILocation(line: 18, column: 5, scope: !14)
!36 = !DILocation(line: 19, column: 24, scope: !14)
!37 = !DILocation(line: 19, column: 5, scope: !14)
!38 = !DILocation(line: 21, column: 17, scope: !14)
!39 = !DILocation(line: 21, column: 29, scope: !14)
!40 = !DILocation(line: 21, column: 5, scope: !14)
!41 = !DILocation(line: 22, column: 17, scope: !14)
!42 = !DILocation(line: 22, column: 27, scope: !14)
!43 = !DILocation(line: 22, column: 5, scope: !14)
!44 = !DILocation(line: 24, column: 9, scope: !14)
!45 = !DILocation(line: 26, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !14, file: !1, line: 26, column: 9)
!47 = !DILocation(line: 26, column: 16, scope: !46)
!48 = !DILocation(line: 26, column: 9, scope: !14)
!49 = !DILocation(line: 27, column: 16, scope: !46)
!50 = !DILocation(line: 27, column: 9, scope: !46)
!51 = !DILocation(line: 28, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !14, file: !1, line: 28, column: 9)
!53 = !DILocation(line: 28, column: 13, scope: !52)
!54 = !DILocation(line: 28, column: 9, scope: !14)
!55 = !DILocation(line: 29, column: 13, scope: !52)
!56 = !DILocation(line: 29, column: 9, scope: !52)
!57 = !DILocation(line: 31, column: 5, scope: !14)
!58 = !DILocation(line: 33, column: 13, scope: !14)
!59 = !DILocation(line: 33, column: 25, scope: !14)
!60 = !DILocation(line: 33, column: 5, scope: !14)
!61 = !DILocation(line: 39, column: 5, scope: !14)
!62 = !DILocation(line: 41, column: 10, scope: !14)
!63 = !DILocation(line: 41, column: 5, scope: !14)
!64 = !DILocation(line: 42, column: 10, scope: !14)
!65 = !DILocation(line: 42, column: 5, scope: !14)
!66 = !DILocation(line: 43, column: 5, scope: !14)
