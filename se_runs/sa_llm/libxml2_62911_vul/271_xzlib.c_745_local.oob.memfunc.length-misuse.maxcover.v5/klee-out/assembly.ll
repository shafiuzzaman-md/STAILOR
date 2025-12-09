; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  %6 = bitcast i8** %2 to i8*, !dbg !26
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !27
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !28
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !29
  %8 = bitcast i32* %4 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !31
  %9 = load i32, i32* %4, align 4, !dbg !32
  %10 = icmp sge i32 %9, 0, !dbg !33
  %11 = zext i1 %10 to i32, !dbg !33
  %12 = sext i32 %11 to i64, !dbg !32
  call void @klee_assume(i64 noundef %12), !dbg !34
  %13 = load i32, i32* %4, align 4, !dbg !35
  %14 = icmp slt i32 %13, 1024, !dbg !36
  %15 = zext i1 %14 to i32, !dbg !36
  %16 = sext i32 %15 to i64, !dbg !35
  call void @klee_assume(i64 noundef %16), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %5, metadata !38, metadata !DIExpression()), !dbg !39
  %17 = load i8*, i8** %2, align 8, !dbg !40
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !41
  %19 = load i32, i32* %4, align 4, !dbg !42
  %20 = call i32 @__libxml2_xzread(i8* noundef %17, i8* noundef %18, i32 noundef %19), !dbg !43
  store i32 %20, i32* %5, align 4, !dbg !39
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @__libxml2_xzread(i8* noundef, i8* noundef, i32 noundef) #2

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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/271_xzlib.c_745_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "7f9a16a926d4cc4e3afa90a6ad66e63c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !11, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "state", scope: !10, file: !1, line: 10, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DILocation(line: 10, column: 11, scope: !10)
!18 = !DILocalVariable(name: "buf", scope: !10, file: !1, line: 11, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22}
!22 = !DISubrange(count: 1024)
!23 = !DILocation(line: 11, column: 10, scope: !10)
!24 = !DILocalVariable(name: "len", scope: !10, file: !1, line: 12, type: !13)
!25 = !DILocation(line: 12, column: 9, scope: !10)
!26 = !DILocation(line: 14, column: 24, scope: !10)
!27 = !DILocation(line: 14, column: 5, scope: !10)
!28 = !DILocation(line: 15, column: 24, scope: !10)
!29 = !DILocation(line: 15, column: 5, scope: !10)
!30 = !DILocation(line: 16, column: 24, scope: !10)
!31 = !DILocation(line: 16, column: 5, scope: !10)
!32 = !DILocation(line: 18, column: 17, scope: !10)
!33 = !DILocation(line: 18, column: 21, scope: !10)
!34 = !DILocation(line: 18, column: 5, scope: !10)
!35 = !DILocation(line: 19, column: 17, scope: !10)
!36 = !DILocation(line: 19, column: 21, scope: !10)
!37 = !DILocation(line: 19, column: 5, scope: !10)
!38 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 21, type: !13)
!39 = !DILocation(line: 21, column: 9, scope: !10)
!40 = !DILocation(line: 21, column: 35, scope: !10)
!41 = !DILocation(line: 21, column: 42, scope: !10)
!42 = !DILocation(line: 21, column: 47, scope: !10)
!43 = !DILocation(line: 21, column: 18, scope: !10)
!44 = !DILocation(line: 23, column: 5, scope: !10)
!45 = !DILocation(line: 24, column: 5, scope: !10)
