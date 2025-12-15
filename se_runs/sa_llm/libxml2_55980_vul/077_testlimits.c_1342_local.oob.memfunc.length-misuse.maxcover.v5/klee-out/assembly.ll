; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/077_testlimits.c_1342_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/077_testlimits.c_1342_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"(filename_len >= 6) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/077_testlimits.c_1342_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i64* %3, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !26, metadata !DIExpression()), !dbg !28
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !29
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !30
  %8 = bitcast i64* %3 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %9 = bitcast i32* %4 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !34
  %10 = bitcast i32* %5 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !36
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !37
  store i8 0, i8* %11, align 1, !dbg !38
  %12 = load i32, i32* %4, align 4, !dbg !39
  %13 = icmp eq i32 %12, 1, !dbg !40
  %14 = zext i1 %13 to i32, !dbg !40
  %15 = sext i32 %14 to i64, !dbg !39
  call void @klee_assume(i64 noundef %15), !dbg !41
  call void @llvm.dbg.declare(metadata i64* %6, metadata !42, metadata !DIExpression()), !dbg !45
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  %17 = call i64 @strlen(i8* noundef %16) #5, !dbg !47
  store i64 %17, i64* %6, align 8, !dbg !45
  %18 = load i64, i64* %6, align 8, !dbg !48
  %19 = icmp uge i64 %18, 6, !dbg !48
  br i1 %19, label %20, label %22, !dbg !48

20:                                               ; preds = %0
  br i1 true, label %21, label %22, !dbg !48

21:                                               ; preds = %20
  br label %24, !dbg !48

22:                                               ; preds = %20, %0
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !48
  br label %24, !dbg !48

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !49
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !50
  %27 = load i64, i64* %3, align 8, !dbg !51
  %28 = load i32, i32* %4, align 4, !dbg !52
  %29 = load i32, i32* %5, align 4, !dbg !53
  %30 = call i32 @testlimits(i8* noundef %26, i64 noundef %27, i32 noundef %28, i32 noundef %29), !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @testlimits(i8* noundef, i64 noundef, i32 noundef, i32 noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/077_testlimits.c_1342_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5ab45f21047946a0954b43b49d6851f8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !11, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "filename", scope: !10, file: !1, line: 15, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DILocation(line: 15, column: 10, scope: !10)
!21 = !DILocalVariable(name: "limit", scope: !10, file: !1, line: 16, type: !22)
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocation(line: 16, column: 19, scope: !10)
!24 = !DILocalVariable(name: "fail", scope: !10, file: !1, line: 17, type: !13)
!25 = !DILocation(line: 17, column: 9, scope: !10)
!26 = !DILocalVariable(name: "crazy_indx", scope: !10, file: !1, line: 18, type: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 18, column: 18, scope: !10)
!29 = !DILocation(line: 21, column: 24, scope: !10)
!30 = !DILocation(line: 21, column: 5, scope: !10)
!31 = !DILocation(line: 22, column: 24, scope: !10)
!32 = !DILocation(line: 22, column: 5, scope: !10)
!33 = !DILocation(line: 23, column: 24, scope: !10)
!34 = !DILocation(line: 23, column: 5, scope: !10)
!35 = !DILocation(line: 24, column: 24, scope: !10)
!36 = !DILocation(line: 24, column: 5, scope: !10)
!37 = !DILocation(line: 27, column: 5, scope: !10)
!38 = !DILocation(line: 27, column: 19, scope: !10)
!39 = !DILocation(line: 32, column: 17, scope: !10)
!40 = !DILocation(line: 32, column: 22, scope: !10)
!41 = !DILocation(line: 32, column: 5, scope: !10)
!42 = !DILocalVariable(name: "filename_len", scope: !10, file: !1, line: 39, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !22)
!44 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!45 = !DILocation(line: 39, column: 12, scope: !10)
!46 = !DILocation(line: 39, column: 34, scope: !10)
!47 = !DILocation(line: 39, column: 27, scope: !10)
!48 = !DILocation(line: 43, column: 5, scope: !10)
!49 = !DILocation(line: 46, column: 5, scope: !10)
!50 = !DILocation(line: 49, column: 16, scope: !10)
!51 = !DILocation(line: 49, column: 26, scope: !10)
!52 = !DILocation(line: 49, column: 33, scope: !10)
!53 = !DILocation(line: 49, column: 39, scope: !10)
!54 = !DILocation(line: 49, column: 5, scope: !10)
!55 = !DILocation(line: 51, column: 5, scope: !10)
