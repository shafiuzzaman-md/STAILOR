; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"(len <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %3, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  %8 = bitcast i32* %4 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !33
  %9 = bitcast i32* %5 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !35
  %10 = bitcast i32* %6 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !37
  %11 = bitcast i32* %7 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !39
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !40
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !41
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !42
  store i8* %13, i8** %3, align 8, !dbg !43
  %14 = load i32, i32* %4, align 4, !dbg !44
  %15 = icmp eq i32 %14, 1, !dbg !45
  %16 = zext i1 %15 to i32, !dbg !45
  %17 = sext i32 %16 to i64, !dbg !44
  call void @klee_assume(i64 noundef %17), !dbg !46
  %18 = load i32, i32* %7, align 4, !dbg !47
  %19 = icmp sge i32 %18, 0, !dbg !48
  %20 = zext i1 %19 to i32, !dbg !48
  %21 = sext i32 %20 to i64, !dbg !47
  call void @klee_assume(i64 noundef %21), !dbg !49
  %22 = load i32, i32* %5, align 4, !dbg !50
  %23 = icmp sge i32 %22, 0, !dbg !51
  %24 = zext i1 %23 to i32, !dbg !51
  %25 = sext i32 %24 to i64, !dbg !50
  call void @klee_assume(i64 noundef %25), !dbg !52
  %26 = load i32, i32* %6, align 4, !dbg !53
  %27 = icmp sge i32 %26, 0, !dbg !54
  %28 = zext i1 %27 to i32, !dbg !54
  %29 = sext i32 %28 to i64, !dbg !53
  call void @klee_assume(i64 noundef %29), !dbg !55
  %30 = load i32, i32* %4, align 4, !dbg !56
  %31 = icmp eq i32 %30, 1, !dbg !58
  br i1 %31, label %32, label %45, !dbg !59

32:                                               ; preds = %0
  %33 = load i32, i32* %7, align 4, !dbg !60
  %34 = icmp sgt i32 %33, 4096, !dbg !63
  br i1 %34, label %35, label %36, !dbg !64

35:                                               ; preds = %32
  store i32 4096, i32* %7, align 4, !dbg !65
  br label %36, !dbg !66

36:                                               ; preds = %35, %32
  %37 = load i32, i32* %7, align 4, !dbg !67
  %38 = icmp sle i32 %37, 4096, !dbg !67
  br i1 %38, label %39, label %41, !dbg !67

39:                                               ; preds = %36
  br i1 true, label %40, label %41, !dbg !67

40:                                               ; preds = %39
  br label %43, !dbg !67

41:                                               ; preds = %39, %36
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !67
  br label %43, !dbg !67

43:                                               ; preds = %41, %40
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !68
  br label %45, !dbg !69

45:                                               ; preds = %43, %0
  ret i32 0, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c3f1bc26e4c97bb71519610e6a4368ff")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 10, type: !11, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "buffer", scope: !10, file: !1, line: 11, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32768, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 4096)
!20 = !DILocation(line: 11, column: 10, scope: !10)
!21 = !DILocalVariable(name: "current", scope: !10, file: !1, line: 12, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!23 = !DILocation(line: 12, column: 11, scope: !10)
!24 = !DILocalVariable(name: "instate", scope: !10, file: !1, line: 13, type: !13)
!25 = !DILocation(line: 13, column: 9, scope: !10)
!26 = !DILocalVariable(name: "curlen", scope: !10, file: !1, line: 14, type: !13)
!27 = !DILocation(line: 14, column: 9, scope: !10)
!28 = !DILocalVariable(name: "rlen", scope: !10, file: !1, line: 15, type: !13)
!29 = !DILocation(line: 15, column: 9, scope: !10)
!30 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 16, type: !13)
!31 = !DILocation(line: 16, column: 9, scope: !10)
!32 = !DILocation(line: 18, column: 24, scope: !10)
!33 = !DILocation(line: 18, column: 5, scope: !10)
!34 = !DILocation(line: 19, column: 24, scope: !10)
!35 = !DILocation(line: 19, column: 5, scope: !10)
!36 = !DILocation(line: 20, column: 24, scope: !10)
!37 = !DILocation(line: 20, column: 5, scope: !10)
!38 = !DILocation(line: 21, column: 24, scope: !10)
!39 = !DILocation(line: 21, column: 5, scope: !10)
!40 = !DILocation(line: 22, column: 24, scope: !10)
!41 = !DILocation(line: 22, column: 5, scope: !10)
!42 = !DILocation(line: 23, column: 15, scope: !10)
!43 = !DILocation(line: 23, column: 13, scope: !10)
!44 = !DILocation(line: 25, column: 17, scope: !10)
!45 = !DILocation(line: 25, column: 25, scope: !10)
!46 = !DILocation(line: 25, column: 5, scope: !10)
!47 = !DILocation(line: 26, column: 17, scope: !10)
!48 = !DILocation(line: 26, column: 21, scope: !10)
!49 = !DILocation(line: 26, column: 5, scope: !10)
!50 = !DILocation(line: 27, column: 17, scope: !10)
!51 = !DILocation(line: 27, column: 24, scope: !10)
!52 = !DILocation(line: 27, column: 5, scope: !10)
!53 = !DILocation(line: 28, column: 17, scope: !10)
!54 = !DILocation(line: 28, column: 22, scope: !10)
!55 = !DILocation(line: 28, column: 5, scope: !10)
!56 = !DILocation(line: 30, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 9)
!58 = !DILocation(line: 30, column: 17, scope: !57)
!59 = !DILocation(line: 30, column: 9, scope: !10)
!60 = !DILocation(line: 31, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 31, column: 13)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 30, column: 23)
!63 = !DILocation(line: 31, column: 17, scope: !61)
!64 = !DILocation(line: 31, column: 13, scope: !62)
!65 = !DILocation(line: 31, column: 30, scope: !61)
!66 = !DILocation(line: 31, column: 26, scope: !61)
!67 = !DILocation(line: 32, column: 9, scope: !62)
!68 = !DILocation(line: 33, column: 9, scope: !62)
!69 = !DILocation(line: 34, column: 5, scope: !62)
!70 = !DILocation(line: 36, column: 5, scope: !10)
