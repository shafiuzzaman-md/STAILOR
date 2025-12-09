; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"runtest\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [4 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !21, metadata !DIExpression()), !dbg !22
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !23
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !25
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !26
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !27
  store i8 0, i8* %9, align 1, !dbg !28
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !29
  store i8 0, i8* %10, align 1, !dbg !30
  call void @llvm.dbg.declare(metadata [4 x i8*]* %4, metadata !31, metadata !DIExpression()), !dbg !36
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0, !dbg !37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8, !dbg !37
  %12 = getelementptr inbounds i8*, i8** %11, i64 1, !dbg !37
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !38
  store i8* %13, i8** %12, align 8, !dbg !37
  %14 = getelementptr inbounds i8*, i8** %12, i64 1, !dbg !37
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !39
  store i8* %15, i8** %14, align 8, !dbg !37
  %16 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !37
  store i8* null, i8** %16, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 3, i32* %5, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !DIExpression()), !dbg !43
  %17 = load i32, i32* %5, align 4, !dbg !44
  %18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %4, i64 0, i64 0, !dbg !45
  %19 = call i32 @runtest(i32 noundef %17, i8** noundef %18), !dbg !46
  store i32 %19, i32* %6, align 4, !dbg !43
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  %21 = load i32, i32* %6, align 4, !dbg !48
  ret i32 %21, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @runtest(i32 noundef, i8** noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/146_runtest.c_670_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "630a853d54b00bba3ebb277eb5f1f0af")
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
!15 = !DILocalVariable(name: "r1", scope: !10, file: !1, line: 13, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DILocation(line: 13, column: 10, scope: !10)
!21 = !DILocalVariable(name: "r2", scope: !10, file: !1, line: 14, type: !16)
!22 = !DILocation(line: 14, column: 10, scope: !10)
!23 = !DILocation(line: 15, column: 24, scope: !10)
!24 = !DILocation(line: 15, column: 5, scope: !10)
!25 = !DILocation(line: 16, column: 24, scope: !10)
!26 = !DILocation(line: 16, column: 5, scope: !10)
!27 = !DILocation(line: 17, column: 5, scope: !10)
!28 = !DILocation(line: 17, column: 22, scope: !10)
!29 = !DILocation(line: 18, column: 5, scope: !10)
!30 = !DILocation(line: 18, column: 22, scope: !10)
!31 = !DILocalVariable(name: "argv", scope: !10, file: !1, line: 20, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !34)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!34 = !{!35}
!35 = !DISubrange(count: 4)
!36 = !DILocation(line: 20, column: 11, scope: !10)
!37 = !DILocation(line: 20, column: 20, scope: !10)
!38 = !DILocation(line: 20, column: 33, scope: !10)
!39 = !DILocation(line: 20, column: 37, scope: !10)
!40 = !DILocalVariable(name: "argc", scope: !10, file: !1, line: 21, type: !13)
!41 = !DILocation(line: 21, column: 9, scope: !10)
!42 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 23, type: !13)
!43 = !DILocation(line: 23, column: 9, scope: !10)
!44 = !DILocation(line: 23, column: 26, scope: !10)
!45 = !DILocation(line: 23, column: 32, scope: !10)
!46 = !DILocation(line: 23, column: 18, scope: !10)
!47 = !DILocation(line: 24, column: 5, scope: !10)
!48 = !DILocation(line: 25, column: 12, scope: !10)
!49 = !DILocation(line: 25, column: 5, scope: !10)
