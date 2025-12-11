; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(len < 1000) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [1000 x i8], align 16
  %3 = alloca [1000 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1000 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [1000 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [500 x i8]* %4, metadata !25, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %5, metadata !30, metadata !DIExpression()), !dbg !31
  %6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i64 0, i64 0, !dbg !32
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1000, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !33
  %7 = bitcast i32* %5 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !35
  %8 = load i32, i32* %5, align 4, !dbg !36
  %9 = icmp sge i32 %8, 0, !dbg !37
  %10 = zext i1 %9 to i32, !dbg !37
  %11 = sext i32 %10 to i64, !dbg !36
  call void @klee_assume(i64 noundef %11), !dbg !38
  %12 = load i32, i32* %5, align 4, !dbg !39
  %13 = icmp slt i32 %12, 1000, !dbg !40
  %14 = zext i1 %13 to i32, !dbg !40
  %15 = sext i32 %14 to i64, !dbg !39
  call void @klee_assume(i64 noundef %15), !dbg !41
  %16 = load i32, i32* %5, align 4, !dbg !42
  %17 = sub nsw i32 %16, 1, !dbg !43
  %18 = sext i32 %17 to i64, !dbg !44
  %19 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i64 0, i64 %18, !dbg !44
  %20 = load i8, i8* %19, align 1, !dbg !44
  %21 = sext i8 %20 to i32, !dbg !44
  %22 = icmp eq i32 %21, 0, !dbg !45
  %23 = zext i1 %22 to i32, !dbg !45
  %24 = sext i32 %23 to i64, !dbg !44
  call void @klee_assume(i64 noundef %24), !dbg !46
  %25 = load i32, i32* %5, align 4, !dbg !47
  %26 = icmp sgt i32 %25, 0, !dbg !49
  br i1 %26, label %27, label %38, !dbg !50

27:                                               ; preds = %0
  %28 = load i32, i32* %5, align 4, !dbg !51
  %29 = sub nsw i32 %28, 1, !dbg !52
  %30 = sext i32 %29 to i64, !dbg !53
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i64 0, i64 %30, !dbg !53
  %32 = load i8, i8* %31, align 1, !dbg !53
  %33 = sext i8 %32 to i32, !dbg !53
  %34 = icmp eq i32 %33, 116, !dbg !54
  br i1 %34, label %35, label %38, !dbg !55

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4, !dbg !56
  %37 = sub nsw i32 %36, 2, !dbg !56
  store i32 %37, i32* %5, align 4, !dbg !56
  br label %38, !dbg !58

38:                                               ; preds = %35, %27, %0
  %39 = load i32, i32* %5, align 4, !dbg !59
  %40 = icmp sgt i32 %39, 0, !dbg !61
  br i1 %40, label %41, label %52, !dbg !62

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4, !dbg !63
  %43 = sub nsw i32 %42, 2, !dbg !64
  %44 = sext i32 %43 to i64, !dbg !65
  %45 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i64 0, i64 %44, !dbg !65
  %46 = load i8, i8* %45, align 1, !dbg !65
  %47 = sext i8 %46 to i32, !dbg !65
  %48 = icmp eq i32 %47, 95, !dbg !66
  br i1 %48, label %49, label %52, !dbg !67

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4, !dbg !68
  %51 = sub nsw i32 %50, 2, !dbg !68
  store i32 %51, i32* %5, align 4, !dbg !68
  br label %52, !dbg !70

52:                                               ; preds = %49, %41, %38
  %53 = load i32, i32* %5, align 4, !dbg !71
  %54 = icmp slt i32 %53, 1000, !dbg !71
  br i1 %54, label %55, label %57, !dbg !71

55:                                               ; preds = %52
  br i1 true, label %56, label %57, !dbg !71

56:                                               ; preds = %55
  br label %59, !dbg !71

57:                                               ; preds = %55, %52
  %58 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 33, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !71
  br label %59, !dbg !71

59:                                               ; preds = %57, %56
  %60 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0, !dbg !72
  %61 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i64 0, i64 0, !dbg !72
  %62 = load i32, i32* %5, align 4, !dbg !73
  %63 = sext i32 %62 to i64, !dbg !73
  %64 = call i8* @memcpy(i8* %60, i8* %61, i64 %63), !dbg !72
  %65 = load i32, i32* %5, align 4, !dbg !74
  %66 = sext i32 %65 to i64, !dbg !75
  %67 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 %66, !dbg !75
  store i8 0, i8* %67, align 1, !dbg !76
  %68 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !79 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !DIExpression()), !dbg !92
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i8** %7, metadata !95, metadata !DIExpression()), !dbg !97
  %9 = load i8*, i8** %4, align 8, !dbg !98
  store i8* %9, i8** %7, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i8** %8, metadata !99, metadata !DIExpression()), !dbg !102
  %10 = load i8*, i8** %5, align 8, !dbg !103
  store i8* %10, i8** %8, align 8, !dbg !102
  br label %11, !dbg !104

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !105
  %13 = add i64 %12, -1, !dbg !105
  store i64 %13, i64* %6, align 8, !dbg !105
  %14 = icmp ugt i64 %12, 0, !dbg !106
  br i1 %14, label %15, label %21, !dbg !104

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !107
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !107
  store i8* %17, i8** %8, align 8, !dbg !107
  %18 = load i8, i8* %16, align 1, !dbg !108
  %19 = load i8*, i8** %7, align 8, !dbg !109
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !109
  store i8* %20, i8** %7, align 8, !dbg !109
  store i8 %18, i8* %19, align 1, !dbg !110
  br label %11, !dbg !104, !llvm.loop !111

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !113
  ret i8* %22, !dbg !114
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/096_runtest.c_3531_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "858db152ee0dc9616c1a7116914598b3")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "base", scope: !12, file: !1, line: 13, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8000, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 1000)
!22 = !DILocation(line: 13, column: 10, scope: !12)
!23 = !DILocalVariable(name: "prefix", scope: !12, file: !1, line: 14, type: !18)
!24 = !DILocation(line: 14, column: 10, scope: !12)
!25 = !DILocalVariable(name: "pattern", scope: !12, file: !1, line: 15, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4000, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 500)
!29 = !DILocation(line: 15, column: 10, scope: !12)
!30 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 16, type: !15)
!31 = !DILocation(line: 16, column: 9, scope: !12)
!32 = !DILocation(line: 18, column: 24, scope: !12)
!33 = !DILocation(line: 18, column: 5, scope: !12)
!34 = !DILocation(line: 19, column: 24, scope: !12)
!35 = !DILocation(line: 19, column: 5, scope: !12)
!36 = !DILocation(line: 21, column: 17, scope: !12)
!37 = !DILocation(line: 21, column: 21, scope: !12)
!38 = !DILocation(line: 21, column: 5, scope: !12)
!39 = !DILocation(line: 22, column: 17, scope: !12)
!40 = !DILocation(line: 22, column: 21, scope: !12)
!41 = !DILocation(line: 22, column: 5, scope: !12)
!42 = !DILocation(line: 23, column: 22, scope: !12)
!43 = !DILocation(line: 23, column: 26, scope: !12)
!44 = !DILocation(line: 23, column: 17, scope: !12)
!45 = !DILocation(line: 23, column: 31, scope: !12)
!46 = !DILocation(line: 23, column: 5, scope: !12)
!47 = !DILocation(line: 25, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !12, file: !1, line: 25, column: 9)
!49 = !DILocation(line: 25, column: 13, scope: !48)
!50 = !DILocation(line: 25, column: 17, scope: !48)
!51 = !DILocation(line: 25, column: 25, scope: !48)
!52 = !DILocation(line: 25, column: 29, scope: !48)
!53 = !DILocation(line: 25, column: 20, scope: !48)
!54 = !DILocation(line: 25, column: 34, scope: !48)
!55 = !DILocation(line: 25, column: 9, scope: !12)
!56 = !DILocation(line: 26, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 42)
!58 = !DILocation(line: 27, column: 5, scope: !57)
!59 = !DILocation(line: 29, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !12, file: !1, line: 29, column: 9)
!61 = !DILocation(line: 29, column: 13, scope: !60)
!62 = !DILocation(line: 29, column: 17, scope: !60)
!63 = !DILocation(line: 29, column: 25, scope: !60)
!64 = !DILocation(line: 29, column: 29, scope: !60)
!65 = !DILocation(line: 29, column: 20, scope: !60)
!66 = !DILocation(line: 29, column: 34, scope: !60)
!67 = !DILocation(line: 29, column: 9, scope: !12)
!68 = !DILocation(line: 30, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 29, column: 42)
!70 = !DILocation(line: 31, column: 5, scope: !69)
!71 = !DILocation(line: 33, column: 5, scope: !12)
!72 = !DILocation(line: 35, column: 5, scope: !12)
!73 = !DILocation(line: 35, column: 26, scope: !12)
!74 = !DILocation(line: 36, column: 12, scope: !12)
!75 = !DILocation(line: 36, column: 5, scope: !12)
!76 = !DILocation(line: 36, column: 17, scope: !12)
!77 = !DILocation(line: 38, column: 5, scope: !12)
!78 = !DILocation(line: 40, column: 5, scope: !12)
!79 = distinct !DISubprogram(name: "memcpy", scope: !80, file: !80, line: 12, type: !81, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!80 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !83, !84, !86}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 46, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DILocalVariable(name: "destaddr", arg: 1, scope: !79, file: !80, line: 12, type: !83)
!90 = !DILocation(line: 12, column: 20, scope: !79)
!91 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !79, file: !80, line: 12, type: !84)
!92 = !DILocation(line: 12, column: 42, scope: !79)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !79, file: !80, line: 12, type: !86)
!94 = !DILocation(line: 12, column: 58, scope: !79)
!95 = !DILocalVariable(name: "dest", scope: !79, file: !80, line: 13, type: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!97 = !DILocation(line: 13, column: 9, scope: !79)
!98 = !DILocation(line: 13, column: 16, scope: !79)
!99 = !DILocalVariable(name: "src", scope: !79, file: !80, line: 14, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!102 = !DILocation(line: 14, column: 15, scope: !79)
!103 = !DILocation(line: 14, column: 21, scope: !79)
!104 = !DILocation(line: 16, column: 3, scope: !79)
!105 = !DILocation(line: 16, column: 13, scope: !79)
!106 = !DILocation(line: 16, column: 16, scope: !79)
!107 = !DILocation(line: 17, column: 19, scope: !79)
!108 = !DILocation(line: 17, column: 15, scope: !79)
!109 = !DILocation(line: 17, column: 10, scope: !79)
!110 = !DILocation(line: 17, column: 13, scope: !79)
!111 = distinct !{!111, !104, !107, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !DILocation(line: 18, column: 10, scope: !79)
!114 = !DILocation(line: 18, column: 3, scope: !79)
