; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(on <= sizeof(chartab)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlInitParser() #0 !dbg !15 {
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %4, metadata !31, metadata !DIExpression()), !dbg !32
  %5 = bitcast i32* %3 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %6 = bitcast i32* %4 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %7 = load i32, i32* %3, align 4, !dbg !37
  %8 = icmp sge i32 %7, 0, !dbg !38
  %9 = zext i1 %8 to i32, !dbg !38
  %10 = sext i32 %9 to i64, !dbg !37
  call void @klee_assume(i64 noundef %10), !dbg !39
  %11 = load i32, i32* %4, align 4, !dbg !40
  %12 = icmp sge i32 %11, 0, !dbg !41
  %13 = zext i1 %12 to i32, !dbg !41
  %14 = sext i32 %13 to i64, !dbg !40
  call void @klee_assume(i64 noundef %14), !dbg !42
  %15 = load i32, i32* %3, align 4, !dbg !43
  %16 = sext i32 %15 to i64, !dbg !43
  %17 = icmp ule i64 %16, 256, !dbg !43
  br i1 %17, label %18, label %20, !dbg !43

18:                                               ; preds = %0
  br i1 true, label %19, label %20, !dbg !43

19:                                               ; preds = %18
  br label %22, !dbg !43

20:                                               ; preds = %18, %0
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !43
  br label %22, !dbg !43

22:                                               ; preds = %20, %19
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !44
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !45
  %25 = call i8* @memset(i8* %24, i32 0, i64 256), !dbg !45
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  %27 = call i8* @strncpy(i8* noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 noundef 20) #7, !dbg !47
  call void @xmlInitParser(), !dbg !48
  ret i32 0, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !50 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !60, metadata !DIExpression()), !dbg !61
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i8** %7, metadata !64, metadata !DIExpression()), !dbg !65
  %8 = load i8*, i8** %4, align 8, !dbg !66
  store i8* %8, i8** %7, align 8, !dbg !65
  br label %9, !dbg !67

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !68
  %11 = add i64 %10, -1, !dbg !68
  store i64 %11, i64* %6, align 8, !dbg !68
  %12 = icmp ugt i64 %10, 0, !dbg !69
  br i1 %12, label %13, label %18, !dbg !67

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !70
  %15 = trunc i32 %14 to i8, !dbg !70
  %16 = load i8*, i8** %7, align 8, !dbg !71
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !71
  store i8* %17, i8** %7, align 8, !dbg !71
  store i8 %15, i8* %16, align 1, !dbg !72
  br label %9, !dbg !67, !llvm.loop !73

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !75
  ret i8* %19, !dbg !76
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "cc4abe96777b9364d853a0a0bc3a673d")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "xmlInitParser", scope: !1, file: !1, line: 10, type: !16, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !{}
!19 = !DILocation(line: 12, column: 1, scope: !15)
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 15, type: !21, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "chartab", scope: !20, file: !1, line: 38, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 256)
!28 = !DILocation(line: 38, column: 10, scope: !20)
!29 = !DILocalVariable(name: "on", scope: !20, file: !1, line: 39, type: !23)
!30 = !DILocation(line: 39, column: 9, scope: !20)
!31 = !DILocalVariable(name: "ret", scope: !20, file: !1, line: 40, type: !23)
!32 = !DILocation(line: 40, column: 9, scope: !20)
!33 = !DILocation(line: 43, column: 24, scope: !20)
!34 = !DILocation(line: 43, column: 5, scope: !20)
!35 = !DILocation(line: 44, column: 24, scope: !20)
!36 = !DILocation(line: 44, column: 5, scope: !20)
!37 = !DILocation(line: 47, column: 17, scope: !20)
!38 = !DILocation(line: 47, column: 20, scope: !20)
!39 = !DILocation(line: 47, column: 5, scope: !20)
!40 = !DILocation(line: 48, column: 17, scope: !20)
!41 = !DILocation(line: 48, column: 21, scope: !20)
!42 = !DILocation(line: 48, column: 5, scope: !20)
!43 = !DILocation(line: 62, column: 5, scope: !20)
!44 = !DILocation(line: 65, column: 5, scope: !20)
!45 = !DILocation(line: 68, column: 5, scope: !20)
!46 = !DILocation(line: 69, column: 22, scope: !20)
!47 = !DILocation(line: 69, column: 5, scope: !20)
!48 = !DILocation(line: 76, column: 5, scope: !20)
!49 = !DILocation(line: 78, column: 5, scope: !20)
!50 = distinct !DISubprogram(name: "memset", scope: !51, file: !51, line: 12, type: !52, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !18)
!51 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !54, !23, !55}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocalVariable(name: "dst", arg: 1, scope: !50, file: !51, line: 12, type: !54)
!59 = !DILocation(line: 12, column: 20, scope: !50)
!60 = !DILocalVariable(name: "s", arg: 2, scope: !50, file: !51, line: 12, type: !23)
!61 = !DILocation(line: 12, column: 29, scope: !50)
!62 = !DILocalVariable(name: "count", arg: 3, scope: !50, file: !51, line: 12, type: !55)
!63 = !DILocation(line: 12, column: 39, scope: !50)
!64 = !DILocalVariable(name: "a", scope: !50, file: !51, line: 13, type: !3)
!65 = !DILocation(line: 13, column: 9, scope: !50)
!66 = !DILocation(line: 13, column: 13, scope: !50)
!67 = !DILocation(line: 14, column: 3, scope: !50)
!68 = !DILocation(line: 14, column: 15, scope: !50)
!69 = !DILocation(line: 14, column: 18, scope: !50)
!70 = !DILocation(line: 15, column: 12, scope: !50)
!71 = !DILocation(line: 15, column: 7, scope: !50)
!72 = !DILocation(line: 15, column: 10, scope: !50)
!73 = distinct !{!73, !67, !70, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !DILocation(line: 16, column: 10, scope: !50)
!76 = !DILocation(line: 16, column: 3, scope: !50)
