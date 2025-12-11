; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"lengths\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"(lengths[0] + 1 <= sizeof(key)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !12 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !19, metadata !DIExpression()), !dbg !20
  %3 = load i64, i64* %2, align 8, !dbg !21
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !22
  ret i8* %4, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !24 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i8*, i8** %2, align 8, !dbg !29
  call void @free(i8* noundef %3) #5, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !38, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %6, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [2 x i32]* %7, metadata !50, metadata !DIExpression()), !dbg !54
  %9 = bitcast i8** %2 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !57
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !59
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !60
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !61
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !62
  %13 = bitcast i8** %6 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !64
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !65
  %15 = bitcast i32* %14 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !66
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !67
  %17 = icmp ne i8* %16, null, !dbg !68
  %18 = zext i1 %17 to i32, !dbg !68
  %19 = sext i32 %18 to i64, !dbg !67
  call void @klee_assume(i64 noundef %19), !dbg !69
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !70
  %21 = load i32, i32* %20, align 4, !dbg !70
  %22 = icmp sge i32 %21, 0, !dbg !71
  %23 = zext i1 %22 to i32, !dbg !71
  %24 = sext i32 %23 to i64, !dbg !70
  call void @klee_assume(i64 noundef %24), !dbg !72
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !73
  %26 = load i32, i32* %25, align 4, !dbg !73
  %27 = icmp slt i32 %26, 256, !dbg !74
  %28 = zext i1 %27 to i32, !dbg !74
  %29 = sext i32 %28 to i64, !dbg !73
  call void @klee_assume(i64 noundef %29), !dbg !75
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1, !dbg !76
  %31 = load i32, i32* %30, align 4, !dbg !76
  %32 = icmp sge i32 %31, 0, !dbg !77
  %33 = zext i1 %32 to i32, !dbg !77
  %34 = sext i32 %33 to i64, !dbg !76
  call void @klee_assume(i64 noundef %34), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !DIExpression()), !dbg !80
  %35 = load i8*, i8** %2, align 8, !dbg !81
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !82
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !83
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !84
  %39 = load i8*, i8** %6, align 8, !dbg !85
  %40 = call i32 @xmlHashRemoveEntry3(i8* noundef %35, i8* noundef %36, i8* noundef %37, i8* noundef %38, void (i8*, i8*)* noundef null, i8* noundef %39), !dbg !86
  store i32 %40, i32* %8, align 4, !dbg !80
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0, !dbg !87
  %42 = load i32, i32* %41, align 4, !dbg !87
  %43 = add nsw i32 %42, 1, !dbg !87
  %44 = sext i32 %43 to i64, !dbg !87
  %45 = icmp ule i64 %44, 256, !dbg !87
  br i1 %45, label %46, label %48, !dbg !87

46:                                               ; preds = %0
  br i1 true, label %47, label %48, !dbg !87

47:                                               ; preds = %46
  br label %50, !dbg !87

48:                                               ; preds = %46, %0
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !87
  br label %50, !dbg !87

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !88
  ret i32 0, !dbg !89
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i32 @xmlHashRemoveEntry3(i8* noundef, i8* noundef, i8* noundef, i8* noundef, void (i8*, i8*)* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "466beca31063410114b928d732fecd50")
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
!12 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!13 = !DISubroutineType(types: !14)
!14 = !{!3, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !{}
!19 = !DILocalVariable(name: "size", arg: 1, scope: !12, file: !1, line: 10, type: !15)
!20 = !DILocation(line: 10, column: 24, scope: !12)
!21 = !DILocation(line: 11, column: 19, scope: !12)
!22 = !DILocation(line: 11, column: 12, scope: !12)
!23 = !DILocation(line: 11, column: 5, scope: !12)
!24 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 14, type: !25, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !3}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !24, file: !1, line: 14, type: !3)
!28 = !DILocation(line: 14, column: 20, scope: !24)
!29 = !DILocation(line: 15, column: 10, scope: !24)
!30 = !DILocation(line: 15, column: 5, scope: !24)
!31 = !DILocation(line: 16, column: 1, scope: !24)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !33, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!33 = !DISubroutineType(types: !34)
!34 = !{!35}
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(name: "table", scope: !32, file: !1, line: 25, type: !3)
!37 = !DILocation(line: 25, column: 11, scope: !32)
!38 = !DILocalVariable(name: "key", scope: !32, file: !1, line: 26, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{!42}
!42 = !DISubrange(count: 256)
!43 = !DILocation(line: 26, column: 10, scope: !32)
!44 = !DILocalVariable(name: "key2", scope: !32, file: !1, line: 27, type: !39)
!45 = !DILocation(line: 27, column: 10, scope: !32)
!46 = !DILocalVariable(name: "key3", scope: !32, file: !1, line: 28, type: !39)
!47 = !DILocation(line: 28, column: 10, scope: !32)
!48 = !DILocalVariable(name: "data", scope: !32, file: !1, line: 29, type: !3)
!49 = !DILocation(line: 29, column: 11, scope: !32)
!50 = !DILocalVariable(name: "lengths", scope: !32, file: !1, line: 32, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 2)
!54 = !DILocation(line: 32, column: 9, scope: !32)
!55 = !DILocation(line: 35, column: 24, scope: !32)
!56 = !DILocation(line: 35, column: 5, scope: !32)
!57 = !DILocation(line: 36, column: 24, scope: !32)
!58 = !DILocation(line: 36, column: 5, scope: !32)
!59 = !DILocation(line: 37, column: 24, scope: !32)
!60 = !DILocation(line: 37, column: 5, scope: !32)
!61 = !DILocation(line: 38, column: 24, scope: !32)
!62 = !DILocation(line: 38, column: 5, scope: !32)
!63 = !DILocation(line: 39, column: 24, scope: !32)
!64 = !DILocation(line: 39, column: 5, scope: !32)
!65 = !DILocation(line: 40, column: 24, scope: !32)
!66 = !DILocation(line: 40, column: 5, scope: !32)
!67 = !DILocation(line: 44, column: 17, scope: !32)
!68 = !DILocation(line: 44, column: 22, scope: !32)
!69 = !DILocation(line: 44, column: 5, scope: !32)
!70 = !DILocation(line: 45, column: 17, scope: !32)
!71 = !DILocation(line: 45, column: 28, scope: !32)
!72 = !DILocation(line: 45, column: 5, scope: !32)
!73 = !DILocation(line: 46, column: 17, scope: !32)
!74 = !DILocation(line: 46, column: 28, scope: !32)
!75 = !DILocation(line: 46, column: 5, scope: !32)
!76 = !DILocation(line: 47, column: 17, scope: !32)
!77 = !DILocation(line: 47, column: 28, scope: !32)
!78 = !DILocation(line: 47, column: 5, scope: !32)
!79 = !DILocalVariable(name: "result", scope: !32, file: !1, line: 55, type: !35)
!80 = !DILocation(line: 55, column: 9, scope: !32)
!81 = !DILocation(line: 55, column: 38, scope: !32)
!82 = !DILocation(line: 55, column: 45, scope: !32)
!83 = !DILocation(line: 55, column: 50, scope: !32)
!84 = !DILocation(line: 55, column: 56, scope: !32)
!85 = !DILocation(line: 55, column: 68, scope: !32)
!86 = !DILocation(line: 55, column: 18, scope: !32)
!87 = !DILocation(line: 60, column: 5, scope: !32)
!88 = !DILocation(line: 63, column: 5, scope: !32)
!89 = !DILocation(line: 65, column: 5, scope: !32)
