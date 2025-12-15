; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/116_xmlcatalog.c_145_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/116_xmlcatalog.c_145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/116_xmlcatalog.c_145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [100 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8*]* %3, metadata !21, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %6, metadata !31, metadata !DIExpression()), !dbg !32
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !33
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !35
  %9 = load i8, i8* %8, align 1, !dbg !35
  %10 = sext i8 %9 to i32, !dbg !35
  %11 = icmp eq i32 %10, 0, !dbg !36
  %12 = zext i1 %11 to i32, !dbg !36
  %13 = sext i32 %12 to i64, !dbg !35
  call void @klee_assume(i64 noundef %13), !dbg !37
  store i32 0, i32* %4, align 4, !dbg !38
  store i32 0, i32* %5, align 4, !dbg !39
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !40
  store i8* %14, i8** %6, align 8, !dbg !41
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !42
  ret i32 0, !dbg !43
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/116_xmlcatalog.c_145_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "66005f7c0abc4d6ff657df6f232e8982")
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
!15 = !DILocalVariable(name: "arg", scope: !10, file: !1, line: 13, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8192, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 1024)
!20 = !DILocation(line: 13, column: 10, scope: !10)
!21 = !DILocalVariable(name: "argv", scope: !10, file: !1, line: 14, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 6400, elements: !24)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 14, column: 11, scope: !10)
!27 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 15, type: !13)
!28 = !DILocation(line: 15, column: 9, scope: !10)
!29 = !DILocalVariable(name: "nbargs", scope: !10, file: !1, line: 15, type: !13)
!30 = !DILocation(line: 15, column: 12, scope: !10)
!31 = !DILocalVariable(name: "cur", scope: !10, file: !1, line: 16, type: !23)
!32 = !DILocation(line: 16, column: 11, scope: !10)
!33 = !DILocation(line: 18, column: 24, scope: !10)
!34 = !DILocation(line: 18, column: 5, scope: !10)
!35 = !DILocation(line: 20, column: 17, scope: !10)
!36 = !DILocation(line: 20, column: 38, scope: !10)
!37 = !DILocation(line: 20, column: 5, scope: !10)
!38 = !DILocation(line: 22, column: 7, scope: !10)
!39 = !DILocation(line: 23, column: 12, scope: !10)
!40 = !DILocation(line: 24, column: 11, scope: !10)
!41 = !DILocation(line: 24, column: 9, scope: !10)
!42 = !DILocation(line: 28, column: 5, scope: !10)
!43 = !DILocation(line: 30, column: 5, scope: !10)
