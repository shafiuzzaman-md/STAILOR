; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"chartab\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"inttab\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"longtab\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"  chartab\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !20, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [256 x i32]* %3, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [256 x i64]* %4, metadata !29, metadata !DIExpression()), !dbg !32
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !33
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !34
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0, !dbg !35
  %9 = bitcast i32* %8 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %10 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0, !dbg !37
  %11 = bitcast i64* %10 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 2048, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %5, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  %12 = bitcast i32* %5 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !44
  %13 = bitcast i32* %6 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !46
  %14 = load i32, i32* %5, align 4, !dbg !47
  %15 = icmp slt i32 %14, 0, !dbg !49
  br i1 %15, label %16, label %17, !dbg !50

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !51
  br label %34, !dbg !51

17:                                               ; preds = %0
  %18 = load i32, i32* %6, align 4, !dbg !52
  %19 = icmp slt i32 %18, 0, !dbg !54
  br i1 %19, label %20, label %21, !dbg !55

20:                                               ; preds = %17
  store i32 0, i32* %1, align 4, !dbg !56
  br label %34, !dbg !56

21:                                               ; preds = %17
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !57
  %23 = call i8* @memset(i8* %22, i32 0, i64 256), !dbg !57
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 26, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !58
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !59
  %26 = call i8* @strncpy(i8* noundef %25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 noundef 20) #7, !dbg !60
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0, !dbg !61
  %28 = bitcast i32* %27 to i8*, !dbg !61
  %29 = call i8* @memset(i8* %28, i32 0, i64 1024), !dbg !61
  %30 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 0, !dbg !62
  %31 = bitcast i64* %30 to i8*, !dbg !62
  %32 = call i8* @memset(i8* %31, i32 0, i64 2048), !dbg !62
  call void @xmlInitParser(), !dbg !63
  %33 = call i32 (...) @xmlInitializeCatalog(), !dbg !64
  call void @xmlCleanupParser(), !dbg !65
  store i32 0, i32* %1, align 4, !dbg !66
  br label %34, !dbg !66

34:                                               ; preds = %21, %20, %16
  %35 = load i32, i32* %1, align 4, !dbg !67
  ret i32 %35, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #5

declare void @xmlInitParser() #2

declare i32 @xmlInitializeCatalog(...) #2

declare void @xmlCleanupParser() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !68 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !78, metadata !DIExpression()), !dbg !79
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i8** %7, metadata !82, metadata !DIExpression()), !dbg !83
  %8 = load i8*, i8** %4, align 8, !dbg !84
  store i8* %8, i8** %7, align 8, !dbg !83
  br label %9, !dbg !85

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !86
  %11 = add i64 %10, -1, !dbg !86
  store i64 %11, i64* %6, align 8, !dbg !86
  %12 = icmp ugt i64 %10, 0, !dbg !87
  br i1 %12, label %13, label %18, !dbg !85

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !88
  %15 = trunc i32 %14 to i8, !dbg !88
  %16 = load i8*, i8** %7, align 8, !dbg !89
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !89
  store i8* %17, i8** %7, align 8, !dbg !89
  store i8 %15, i8* %16, align 1, !dbg !90
  br label %9, !dbg !85, !llvm.loop !91

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !93
  ret i8* %19, !dbg !94
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/393_testapi.c_135_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c7908b95142f6908576e8155f7e09e25")
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
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !16, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "chartab", scope: !15, file: !1, line: 9, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !23)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 256)
!25 = !DILocation(line: 9, column: 19, scope: !15)
!26 = !DILocalVariable(name: "inttab", scope: !15, file: !1, line: 10, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !23)
!28 = !DILocation(line: 10, column: 9, scope: !15)
!29 = !DILocalVariable(name: "longtab", scope: !15, file: !1, line: 11, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 16384, elements: !23)
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DILocation(line: 11, column: 10, scope: !15)
!33 = !DILocation(line: 13, column: 24, scope: !15)
!34 = !DILocation(line: 13, column: 5, scope: !15)
!35 = !DILocation(line: 14, column: 24, scope: !15)
!36 = !DILocation(line: 14, column: 5, scope: !15)
!37 = !DILocation(line: 15, column: 24, scope: !15)
!38 = !DILocation(line: 15, column: 5, scope: !15)
!39 = !DILocalVariable(name: "on", scope: !15, file: !1, line: 17, type: !18)
!40 = !DILocation(line: 17, column: 9, scope: !15)
!41 = !DILocalVariable(name: "ret", scope: !15, file: !1, line: 18, type: !18)
!42 = !DILocation(line: 18, column: 9, scope: !15)
!43 = !DILocation(line: 19, column: 24, scope: !15)
!44 = !DILocation(line: 19, column: 5, scope: !15)
!45 = !DILocation(line: 20, column: 24, scope: !15)
!46 = !DILocation(line: 20, column: 5, scope: !15)
!47 = !DILocation(line: 22, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !15, file: !1, line: 22, column: 9)
!49 = !DILocation(line: 22, column: 12, scope: !48)
!50 = !DILocation(line: 22, column: 9, scope: !15)
!51 = !DILocation(line: 22, column: 17, scope: !48)
!52 = !DILocation(line: 23, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !15, file: !1, line: 23, column: 9)
!54 = !DILocation(line: 23, column: 13, scope: !53)
!55 = !DILocation(line: 23, column: 9, scope: !15)
!56 = !DILocation(line: 23, column: 18, scope: !53)
!57 = !DILocation(line: 25, column: 5, scope: !15)
!58 = !DILocation(line: 26, column: 5, scope: !15)
!59 = !DILocation(line: 27, column: 22, scope: !15)
!60 = !DILocation(line: 27, column: 5, scope: !15)
!61 = !DILocation(line: 28, column: 5, scope: !15)
!62 = !DILocation(line: 29, column: 5, scope: !15)
!63 = !DILocation(line: 31, column: 5, scope: !15)
!64 = !DILocation(line: 33, column: 5, scope: !15)
!65 = !DILocation(line: 36, column: 5, scope: !15)
!66 = !DILocation(line: 37, column: 5, scope: !15)
!67 = !DILocation(line: 38, column: 1, scope: !15)
!68 = distinct !DISubprogram(name: "memset", scope: !69, file: !69, line: 12, type: !70, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!69 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !72, !18, !73}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!75 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocalVariable(name: "dst", arg: 1, scope: !68, file: !69, line: 12, type: !72)
!77 = !DILocation(line: 12, column: 20, scope: !68)
!78 = !DILocalVariable(name: "s", arg: 2, scope: !68, file: !69, line: 12, type: !18)
!79 = !DILocation(line: 12, column: 29, scope: !68)
!80 = !DILocalVariable(name: "count", arg: 3, scope: !68, file: !69, line: 12, type: !73)
!81 = !DILocation(line: 12, column: 39, scope: !68)
!82 = !DILocalVariable(name: "a", scope: !68, file: !69, line: 13, type: !3)
!83 = !DILocation(line: 13, column: 9, scope: !68)
!84 = !DILocation(line: 13, column: 13, scope: !68)
!85 = !DILocation(line: 14, column: 3, scope: !68)
!86 = !DILocation(line: 14, column: 15, scope: !68)
!87 = !DILocation(line: 14, column: 18, scope: !68)
!88 = !DILocation(line: 15, column: 12, scope: !68)
!89 = !DILocation(line: 15, column: 7, scope: !68)
!90 = !DILocation(line: 15, column: 10, scope: !68)
!91 = distinct !{!91, !85, !88, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 16, column: 10, scope: !68)
!94 = !DILocation(line: 16, column: 3, scope: !68)
