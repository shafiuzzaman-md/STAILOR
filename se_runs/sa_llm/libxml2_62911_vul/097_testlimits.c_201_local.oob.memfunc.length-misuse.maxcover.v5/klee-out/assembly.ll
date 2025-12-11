; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/097_testlimits.c_201_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/097_testlimits.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/097_testlimits.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %7, metadata !32, metadata !DIExpression()), !dbg !33
  %8 = bitcast i32* %4 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !35
  %9 = bitcast i32* %5 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !37
  %10 = bitcast i32* %6 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !39
  %11 = bitcast i32* %7 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !41
  %12 = call noalias i8* @malloc(i64 noundef 2048) #5, !dbg !42
  store i8* %12, i8** %3, align 8, !dbg !43
  %13 = load i8*, i8** %3, align 8, !dbg !44
  %14 = icmp ne i8* %13, null, !dbg !45
  %15 = zext i1 %14 to i32, !dbg !45
  %16 = sext i32 %15 to i64, !dbg !44
  call void @klee_assume(i64 noundef %16), !dbg !46
  %17 = load i32, i32* %4, align 4, !dbg !47
  %18 = icmp eq i32 %17, 1, !dbg !48
  %19 = zext i1 %18 to i32, !dbg !48
  %20 = sext i32 %19 to i64, !dbg !47
  call void @klee_assume(i64 noundef %20), !dbg !49
  %21 = load i32, i32* %7, align 4, !dbg !50
  %22 = icmp sge i32 %21, 0, !dbg !51
  %23 = zext i1 %22 to i32, !dbg !51
  %24 = sext i32 %23 to i64, !dbg !50
  call void @klee_assume(i64 noundef %24), !dbg !52
  %25 = load i32, i32* %5, align 4, !dbg !53
  %26 = icmp sge i32 %25, 0, !dbg !54
  %27 = zext i1 %26 to i32, !dbg !54
  %28 = sext i32 %27 to i64, !dbg !53
  call void @klee_assume(i64 noundef %28), !dbg !55
  %29 = load i32, i32* %6, align 4, !dbg !56
  %30 = icmp sge i32 %29, 0, !dbg !57
  %31 = zext i1 %30 to i32, !dbg !57
  %32 = sext i32 %31 to i64, !dbg !56
  call void @klee_assume(i64 noundef %32), !dbg !58
  %33 = load i32, i32* %4, align 4, !dbg !59
  %34 = icmp eq i32 %33, 1, !dbg !61
  br i1 %34, label %35, label %48, !dbg !62

35:                                               ; preds = %0
  %36 = load i32, i32* %7, align 4, !dbg !63
  %37 = icmp sgt i32 %36, 1024, !dbg !66
  br i1 %37, label %38, label %39, !dbg !67

38:                                               ; preds = %35
  store i32 1024, i32* %7, align 4, !dbg !68
  br label %39, !dbg !69

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %7, align 4, !dbg !70
  %41 = icmp sle i32 %40, 1024, !dbg !70
  br i1 %41, label %42, label %44, !dbg !70

42:                                               ; preds = %39
  br i1 true, label %43, label %44, !dbg !70

43:                                               ; preds = %42
  br label %46, !dbg !70

44:                                               ; preds = %42, %39
  %45 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  br label %46, !dbg !70

46:                                               ; preds = %44, %43
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !71
  br label %48, !dbg !72

48:                                               ; preds = %46, %0
  %49 = load i8*, i8** %3, align 8, !dbg !73
  call void @free(i8* noundef %49) #5, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/097_testlimits.c_201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f58ead25abe3431155e481ee2df6b7de")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !13, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "buffer", scope: !12, file: !1, line: 12, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 1024)
!22 = !DILocation(line: 12, column: 10, scope: !12)
!23 = !DILocalVariable(name: "current", scope: !12, file: !1, line: 13, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!25 = !DILocation(line: 13, column: 11, scope: !12)
!26 = !DILocalVariable(name: "instate", scope: !12, file: !1, line: 14, type: !15)
!27 = !DILocation(line: 14, column: 9, scope: !12)
!28 = !DILocalVariable(name: "curlen", scope: !12, file: !1, line: 15, type: !15)
!29 = !DILocation(line: 15, column: 9, scope: !12)
!30 = !DILocalVariable(name: "rlen", scope: !12, file: !1, line: 16, type: !15)
!31 = !DILocation(line: 16, column: 9, scope: !12)
!32 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 17, type: !15)
!33 = !DILocation(line: 17, column: 9, scope: !12)
!34 = !DILocation(line: 19, column: 24, scope: !12)
!35 = !DILocation(line: 19, column: 5, scope: !12)
!36 = !DILocation(line: 20, column: 24, scope: !12)
!37 = !DILocation(line: 20, column: 5, scope: !12)
!38 = !DILocation(line: 21, column: 24, scope: !12)
!39 = !DILocation(line: 21, column: 5, scope: !12)
!40 = !DILocation(line: 22, column: 24, scope: !12)
!41 = !DILocation(line: 22, column: 5, scope: !12)
!42 = !DILocation(line: 23, column: 15, scope: !12)
!43 = !DILocation(line: 23, column: 13, scope: !12)
!44 = !DILocation(line: 24, column: 17, scope: !12)
!45 = !DILocation(line: 24, column: 25, scope: !12)
!46 = !DILocation(line: 24, column: 5, scope: !12)
!47 = !DILocation(line: 26, column: 17, scope: !12)
!48 = !DILocation(line: 26, column: 25, scope: !12)
!49 = !DILocation(line: 26, column: 5, scope: !12)
!50 = !DILocation(line: 27, column: 17, scope: !12)
!51 = !DILocation(line: 27, column: 21, scope: !12)
!52 = !DILocation(line: 27, column: 5, scope: !12)
!53 = !DILocation(line: 28, column: 17, scope: !12)
!54 = !DILocation(line: 28, column: 24, scope: !12)
!55 = !DILocation(line: 28, column: 5, scope: !12)
!56 = !DILocation(line: 29, column: 17, scope: !12)
!57 = !DILocation(line: 29, column: 22, scope: !12)
!58 = !DILocation(line: 29, column: 5, scope: !12)
!59 = !DILocation(line: 31, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !12, file: !1, line: 31, column: 9)
!61 = !DILocation(line: 31, column: 17, scope: !60)
!62 = !DILocation(line: 31, column: 9, scope: !12)
!63 = !DILocation(line: 32, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 32, column: 13)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 31, column: 23)
!66 = !DILocation(line: 32, column: 17, scope: !64)
!67 = !DILocation(line: 32, column: 13, scope: !65)
!68 = !DILocation(line: 32, column: 30, scope: !64)
!69 = !DILocation(line: 32, column: 26, scope: !64)
!70 = !DILocation(line: 33, column: 9, scope: !65)
!71 = !DILocation(line: 34, column: 9, scope: !65)
!72 = !DILocation(line: 35, column: 5, scope: !65)
!73 = !DILocation(line: 37, column: 10, scope: !12)
!74 = !DILocation(line: 37, column: 5, scope: !12)
!75 = !DILocation(line: 38, column: 5, scope: !12)
