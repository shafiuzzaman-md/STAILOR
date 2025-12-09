; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/286_xzlib.c_238_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/286_xzlib.c_238_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/zero\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/286_xzlib.c_238_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  %8 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !29
  store i8* %8, i8** %2, align 8, !dbg !30
  %9 = load i8*, i8** %2, align 8, !dbg !31
  %10 = icmp ne i8* %9, null, !dbg !31
  br i1 %10, label %12, label %11, !dbg !33

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !34
  br label %51, !dbg !34

12:                                               ; preds = %0
  %13 = bitcast i32* %3 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !36
  %14 = load i32, i32* %3, align 4, !dbg !37
  %15 = icmp sge i32 %14, 0, !dbg !38
  %16 = zext i1 %15 to i32, !dbg !38
  %17 = sext i32 %16 to i64, !dbg !37
  call void @klee_assume(i64 noundef %17), !dbg !39
  %18 = load i32, i32* %3, align 4, !dbg !40
  %19 = icmp slt i32 %18, 1024, !dbg !41
  %20 = zext i1 %19 to i32, !dbg !41
  %21 = sext i32 %20 to i64, !dbg !40
  call void @klee_assume(i64 noundef %21), !dbg !42
  %22 = call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 noundef 0), !dbg !43
  store i32 %22, i32* %4, align 4, !dbg !44
  %23 = load i32, i32* %4, align 4, !dbg !45
  %24 = icmp slt i32 %23, 0, !dbg !47
  br i1 %24, label %25, label %26, !dbg !48

25:                                               ; preds = %12
  store i32 1, i32* %1, align 4, !dbg !49
  br label %51, !dbg !49

26:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %6, metadata !50, metadata !DIExpression()), !dbg !52
  %27 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !53
  store i8* %27, i8** %6, align 8, !dbg !52
  %28 = load i8*, i8** %6, align 8, !dbg !54
  %29 = icmp ne i8* %28, null, !dbg !54
  br i1 %29, label %34, label %30, !dbg !56

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4, !dbg !57
  %32 = call i32 @close(i32 noundef %31), !dbg !59
  %33 = load i8*, i8** %2, align 8, !dbg !60
  call void @free(i8* noundef %33) #7, !dbg !61
  store i32 1, i32* %1, align 4, !dbg !62
  br label %51, !dbg !62

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8, !dbg !63
  %36 = call i8* @memset(i8* %35, i32 0, i64 256), !dbg !64
  call void @llvm.dbg.declare(metadata i32** %7, metadata !65, metadata !DIExpression()), !dbg !66
  %37 = load i8*, i8** %6, align 8, !dbg !67
  %38 = getelementptr inbounds i8, i8* %37, i64 8, !dbg !68
  %39 = bitcast i8* %38 to i32*, !dbg !69
  store i32* %39, i32** %7, align 8, !dbg !66
  %40 = load i32, i32* %4, align 4, !dbg !70
  %41 = load i32*, i32** %7, align 8, !dbg !71
  store i32 %40, i32* %41, align 4, !dbg !72
  %42 = load i8*, i8** %6, align 8, !dbg !73
  %43 = load i8*, i8** %2, align 8, !dbg !74
  %44 = load i32, i32* %3, align 4, !dbg !75
  %45 = call i32 @__libxml2_xzread(i8* noundef %42, i8* noundef %43, i32 noundef %44), !dbg !76
  store i32 %45, i32* %5, align 4, !dbg !77
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !78
  %47 = load i32, i32* %4, align 4, !dbg !79
  %48 = call i32 @close(i32 noundef %47), !dbg !80
  %49 = load i8*, i8** %6, align 8, !dbg !81
  call void @free(i8* noundef %49) #7, !dbg !82
  %50 = load i8*, i8** %2, align 8, !dbg !83
  call void @free(i8* noundef %50) #7, !dbg !84
  store i32 0, i32* %1, align 4, !dbg !85
  br label %51, !dbg !85

51:                                               ; preds = %34, %30, %25, %11
  %52 = load i32, i32* %1, align 4, !dbg !86
  ret i32 %52, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @open(i8* noundef, i32 noundef, ...) #3

declare i32 @close(i32 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @__libxml2_xzread(i8* noundef, i8* noundef, i32 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !87 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !94, metadata !DIExpression()), !dbg !95
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !96, metadata !DIExpression()), !dbg !97
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %7, metadata !100, metadata !DIExpression()), !dbg !101
  %8 = load i8*, i8** %4, align 8, !dbg !102
  store i8* %8, i8** %7, align 8, !dbg !101
  br label %9, !dbg !103

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !104
  %11 = add i64 %10, -1, !dbg !104
  store i64 %11, i64* %6, align 8, !dbg !104
  %12 = icmp ugt i64 %10, 0, !dbg !105
  br i1 %12, label %13, label %18, !dbg !103

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !106
  %15 = trunc i32 %14 to i8, !dbg !106
  %16 = load i8*, i8** %7, align 8, !dbg !107
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !107
  store i8* %17, i8** %7, align 8, !dbg !107
  store i8 %15, i8* %16, align 1, !dbg !108
  br label %9, !dbg !103, !llvm.loop !109

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !111
  ret i8* %19, !dbg !112
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/286_xzlib.c_238_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2c2eb7033d274bbace4858f36f8498f1")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !18, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!4}
!20 = !{}
!21 = !DILocalVariable(name: "buffer", scope: !17, file: !1, line: 14, type: !5)
!22 = !DILocation(line: 14, column: 11, scope: !17)
!23 = !DILocalVariable(name: "len", scope: !17, file: !1, line: 15, type: !4)
!24 = !DILocation(line: 15, column: 9, scope: !17)
!25 = !DILocalVariable(name: "fd", scope: !17, file: !1, line: 16, type: !4)
!26 = !DILocation(line: 16, column: 9, scope: !17)
!27 = !DILocalVariable(name: "ret", scope: !17, file: !1, line: 17, type: !4)
!28 = !DILocation(line: 17, column: 9, scope: !17)
!29 = !DILocation(line: 19, column: 14, scope: !17)
!30 = !DILocation(line: 19, column: 12, scope: !17)
!31 = !DILocation(line: 20, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !17, file: !1, line: 20, column: 9)
!33 = !DILocation(line: 20, column: 9, scope: !17)
!34 = !DILocation(line: 20, column: 18, scope: !32)
!35 = !DILocation(line: 22, column: 24, scope: !17)
!36 = !DILocation(line: 22, column: 5, scope: !17)
!37 = !DILocation(line: 23, column: 17, scope: !17)
!38 = !DILocation(line: 23, column: 21, scope: !17)
!39 = !DILocation(line: 23, column: 5, scope: !17)
!40 = !DILocation(line: 24, column: 17, scope: !17)
!41 = !DILocation(line: 24, column: 21, scope: !17)
!42 = !DILocation(line: 24, column: 5, scope: !17)
!43 = !DILocation(line: 26, column: 10, scope: !17)
!44 = !DILocation(line: 26, column: 8, scope: !17)
!45 = !DILocation(line: 27, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !17, file: !1, line: 27, column: 9)
!47 = !DILocation(line: 27, column: 12, scope: !46)
!48 = !DILocation(line: 27, column: 9, scope: !17)
!49 = !DILocation(line: 27, column: 17, scope: !46)
!50 = !DILocalVariable(name: "state", scope: !17, file: !1, line: 29, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DILocation(line: 29, column: 11, scope: !17)
!53 = !DILocation(line: 29, column: 19, scope: !17)
!54 = !DILocation(line: 30, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !17, file: !1, line: 30, column: 9)
!56 = !DILocation(line: 30, column: 9, scope: !17)
!57 = !DILocation(line: 31, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 30, column: 17)
!59 = !DILocation(line: 31, column: 9, scope: !58)
!60 = !DILocation(line: 32, column: 14, scope: !58)
!61 = !DILocation(line: 32, column: 9, scope: !58)
!62 = !DILocation(line: 33, column: 9, scope: !58)
!63 = !DILocation(line: 35, column: 12, scope: !17)
!64 = !DILocation(line: 35, column: 5, scope: !17)
!65 = !DILocalVariable(name: "fd_ptr", scope: !17, file: !1, line: 36, type: !3)
!66 = !DILocation(line: 36, column: 10, scope: !17)
!67 = !DILocation(line: 36, column: 33, scope: !17)
!68 = !DILocation(line: 36, column: 39, scope: !17)
!69 = !DILocation(line: 36, column: 19, scope: !17)
!70 = !DILocation(line: 37, column: 15, scope: !17)
!71 = !DILocation(line: 37, column: 6, scope: !17)
!72 = !DILocation(line: 37, column: 13, scope: !17)
!73 = !DILocation(line: 39, column: 28, scope: !17)
!74 = !DILocation(line: 39, column: 35, scope: !17)
!75 = !DILocation(line: 39, column: 43, scope: !17)
!76 = !DILocation(line: 39, column: 11, scope: !17)
!77 = !DILocation(line: 39, column: 9, scope: !17)
!78 = !DILocation(line: 41, column: 5, scope: !17)
!79 = !DILocation(line: 43, column: 11, scope: !17)
!80 = !DILocation(line: 43, column: 5, scope: !17)
!81 = !DILocation(line: 44, column: 10, scope: !17)
!82 = !DILocation(line: 44, column: 5, scope: !17)
!83 = !DILocation(line: 45, column: 10, scope: !17)
!84 = !DILocation(line: 45, column: 5, scope: !17)
!85 = !DILocation(line: 46, column: 5, scope: !17)
!86 = !DILocation(line: 47, column: 1, scope: !17)
!87 = distinct !DISubprogram(name: "memset", scope: !88, file: !88, line: 12, type: !89, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !20)
!88 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!89 = !DISubroutineType(types: !90)
!90 = !{!51, !51, !4, !91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DILocalVariable(name: "dst", arg: 1, scope: !87, file: !88, line: 12, type: !51)
!95 = !DILocation(line: 12, column: 20, scope: !87)
!96 = !DILocalVariable(name: "s", arg: 2, scope: !87, file: !88, line: 12, type: !4)
!97 = !DILocation(line: 12, column: 29, scope: !87)
!98 = !DILocalVariable(name: "count", arg: 3, scope: !87, file: !88, line: 12, type: !91)
!99 = !DILocation(line: 12, column: 39, scope: !87)
!100 = !DILocalVariable(name: "a", scope: !87, file: !88, line: 13, type: !5)
!101 = !DILocation(line: 13, column: 9, scope: !87)
!102 = !DILocation(line: 13, column: 13, scope: !87)
!103 = !DILocation(line: 14, column: 3, scope: !87)
!104 = !DILocation(line: 14, column: 15, scope: !87)
!105 = !DILocation(line: 14, column: 18, scope: !87)
!106 = !DILocation(line: 15, column: 12, scope: !87)
!107 = !DILocation(line: 15, column: 7, scope: !87)
!108 = !DILocation(line: 15, column: 10, scope: !87)
!109 = distinct !{!109, !103, !106, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 16, column: 10, scope: !87)
!112 = !DILocation(line: 16, column: 3, scope: !87)
