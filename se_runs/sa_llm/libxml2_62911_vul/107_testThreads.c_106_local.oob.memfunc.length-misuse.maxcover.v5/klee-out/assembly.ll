; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"catalog\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"(sizeof(pthread_t) * num_threads <= sizeof(pthread_t) * num_threads) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlLoadCatalog(i8* noundef %0) #0 !dbg !19 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_specific_data(i8* noundef %0) #0 !dbg !30 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i8*, i8** %2, align 8, !dbg !35
  ret i8* null, !dbg !36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i64** %3, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !51, metadata !DIExpression()), !dbg !55
  %8 = bitcast i32* %2 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !57
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !58
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !59
  %10 = load i32, i32* %2, align 4, !dbg !60
  %11 = icmp sge i32 %10, 0, !dbg !61
  %12 = zext i1 %11 to i32, !dbg !61
  %13 = sext i32 %12 to i64, !dbg !60
  call void @klee_assume(i64 noundef %13), !dbg !62
  %14 = load i32, i32* %2, align 4, !dbg !63
  %15 = icmp sle i32 %14, 100, !dbg !64
  %16 = zext i1 %15 to i32, !dbg !64
  %17 = sext i32 %16 to i64, !dbg !63
  call void @klee_assume(i64 noundef %17), !dbg !65
  %18 = load i32, i32* %2, align 4, !dbg !66
  %19 = sext i32 %18 to i64, !dbg !66
  %20 = mul i64 8, %19, !dbg !67
  %21 = call noalias i8* @malloc(i64 noundef %20) #7, !dbg !68
  %22 = bitcast i8* %21 to i64*, !dbg !69
  store i64* %22, i64** %3, align 8, !dbg !70
  %23 = load i64*, i64** %3, align 8, !dbg !71
  %24 = icmp eq i64* %23, null, !dbg !73
  br i1 %24, label %25, label %26, !dbg !74

25:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !75
  br label %75, !dbg !75

26:                                               ; preds = %0
  %27 = load i32, i32* %2, align 4, !dbg !77
  %28 = sext i32 %27 to i64, !dbg !77
  %29 = mul i64 8, %28, !dbg !78
  %30 = call noalias i8* @malloc(i64 noundef %29) #7, !dbg !79
  %31 = bitcast i8* %30 to i8**, !dbg !80
  store i8** %31, i8*** %4, align 8, !dbg !81
  %32 = load i8**, i8*** %4, align 8, !dbg !82
  %33 = icmp eq i8** %32, null, !dbg !84
  br i1 %33, label %34, label %37, !dbg !85

34:                                               ; preds = %26
  %35 = load i64*, i64** %3, align 8, !dbg !86
  %36 = bitcast i64* %35 to i8*, !dbg !86
  call void @free(i8* noundef %36) #7, !dbg !88
  store i32 1, i32* %1, align 4, !dbg !89
  br label %75, !dbg !89

37:                                               ; preds = %26
  store i32 0, i32* %5, align 4, !dbg !90
  br label %38, !dbg !92

38:                                               ; preds = %47, %37
  %39 = load i32, i32* %5, align 4, !dbg !93
  %40 = load i32, i32* %2, align 4, !dbg !95
  %41 = icmp slt i32 %39, %40, !dbg !96
  br i1 %41, label %42, label %50, !dbg !97

42:                                               ; preds = %38
  %43 = load i8**, i8*** %4, align 8, !dbg !98
  %44 = load i32, i32* %5, align 4, !dbg !100
  %45 = sext i32 %44 to i64, !dbg !98
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45, !dbg !98
  store i8* null, i8** %46, align 8, !dbg !101
  br label %47, !dbg !102

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4, !dbg !103
  %49 = add nsw i32 %48, 1, !dbg !103
  store i32 %49, i32* %5, align 4, !dbg !103
  br label %38, !dbg !104, !llvm.loop !105

50:                                               ; preds = %38
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !108
  call void @xmlLoadCatalog(i8* noundef %51), !dbg !109
  %52 = load i32, i32* %2, align 4, !dbg !110
  %53 = sext i32 %52 to i64, !dbg !110
  %54 = mul i64 8, %53, !dbg !110
  %55 = load i32, i32* %2, align 4, !dbg !110
  %56 = sext i32 %55 to i64, !dbg !110
  %57 = mul i64 8, %56, !dbg !110
  %58 = icmp ule i64 %54, %57, !dbg !110
  br i1 %58, label %59, label %61, !dbg !110

59:                                               ; preds = %50
  br i1 true, label %60, label %61, !dbg !110

60:                                               ; preds = %59
  br label %63, !dbg !110

61:                                               ; preds = %59, %50
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !110
  br label %63, !dbg !110

63:                                               ; preds = %61, %60
  %64 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  %65 = load i64*, i64** %3, align 8, !dbg !112
  %66 = bitcast i64* %65 to i8*, !dbg !113
  %67 = load i32, i32* %2, align 4, !dbg !114
  %68 = sext i32 %67 to i64, !dbg !114
  %69 = mul i64 8, %68, !dbg !115
  %70 = call i8* @memset(i8* %66, i32 255, i64 %69), !dbg !113
  %71 = load i64*, i64** %3, align 8, !dbg !116
  %72 = bitcast i64* %71 to i8*, !dbg !116
  call void @free(i8* noundef %72) #7, !dbg !117
  %73 = load i8**, i8*** %4, align 8, !dbg !118
  %74 = bitcast i8** %73 to i8*, !dbg !118
  call void @free(i8* noundef %74) #7, !dbg !119
  store i32 0, i32* %1, align 4, !dbg !120
  br label %75, !dbg !120

75:                                               ; preds = %63, %34, %25
  %76 = load i32, i32* %1, align 4, !dbg !121
  ret i32 %76, !dbg !121
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !122 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !128, metadata !DIExpression()), !dbg !129
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !130, metadata !DIExpression()), !dbg !131
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i8** %7, metadata !134, metadata !DIExpression()), !dbg !136
  %8 = load i8*, i8** %4, align 8, !dbg !137
  store i8* %8, i8** %7, align 8, !dbg !136
  br label %9, !dbg !138

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !139
  %11 = add i64 %10, -1, !dbg !139
  store i64 %11, i64* %6, align 8, !dbg !139
  %12 = icmp ugt i64 %10, 0, !dbg !140
  br i1 %12, label %13, label %18, !dbg !138

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !141
  %15 = trunc i32 %14 to i8, !dbg !141
  %16 = load i8*, i8** %7, align 8, !dbg !142
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !142
  store i8* %17, i8** %7, align 8, !dbg !142
  store i8 %15, i8* %16, align 1, !dbg !143
  br label %9, !dbg !138, !llvm.loop !144

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !145
  ret i8* %19, !dbg !146
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "59529a2fd6d114ca33f44f44e1f4341b")
!2 = !{!3, !4, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlLoadCatalog", scope: !1, file: !1, line: 11, type: !20, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{}
!26 = !DILocalVariable(name: "catalog", arg: 1, scope: !19, file: !1, line: 11, type: !22)
!27 = !DILocation(line: 11, column: 33, scope: !19)
!28 = !DILocation(line: 13, column: 11, scope: !19)
!29 = !DILocation(line: 14, column: 1, scope: !19)
!30 = distinct !DISubprogram(name: "thread_specific_data", scope: !1, file: !1, line: 17, type: !31, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!31 = !DISubroutineType(types: !32)
!32 = !{!3, !3}
!33 = !DILocalVariable(name: "arg", arg: 1, scope: !30, file: !1, line: 17, type: !3)
!34 = !DILocation(line: 17, column: 34, scope: !30)
!35 = !DILocation(line: 19, column: 11, scope: !30)
!36 = !DILocation(line: 20, column: 5, scope: !30)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !38, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(name: "num_threads", scope: !37, file: !1, line: 25, type: !40)
!42 = !DILocation(line: 25, column: 9, scope: !37)
!43 = !DILocalVariable(name: "tid", scope: !37, file: !1, line: 26, type: !4)
!44 = !DILocation(line: 26, column: 16, scope: !37)
!45 = !DILocalVariable(name: "threadParams", scope: !37, file: !1, line: 27, type: !8)
!46 = !DILocation(line: 27, column: 12, scope: !37)
!47 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 28, type: !40)
!48 = !DILocation(line: 28, column: 9, scope: !37)
!49 = !DILocalVariable(name: "ret", scope: !37, file: !1, line: 29, type: !40)
!50 = !DILocation(line: 29, column: 9, scope: !37)
!51 = !DILocalVariable(name: "catalog", scope: !37, file: !1, line: 30, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 256)
!55 = !DILocation(line: 30, column: 10, scope: !37)
!56 = !DILocation(line: 33, column: 24, scope: !37)
!57 = !DILocation(line: 33, column: 5, scope: !37)
!58 = !DILocation(line: 34, column: 24, scope: !37)
!59 = !DILocation(line: 34, column: 5, scope: !37)
!60 = !DILocation(line: 37, column: 17, scope: !37)
!61 = !DILocation(line: 37, column: 29, scope: !37)
!62 = !DILocation(line: 37, column: 5, scope: !37)
!63 = !DILocation(line: 38, column: 17, scope: !37)
!64 = !DILocation(line: 38, column: 29, scope: !37)
!65 = !DILocation(line: 38, column: 5, scope: !37)
!66 = !DILocation(line: 41, column: 50, scope: !37)
!67 = !DILocation(line: 41, column: 48, scope: !37)
!68 = !DILocation(line: 41, column: 23, scope: !37)
!69 = !DILocation(line: 41, column: 11, scope: !37)
!70 = !DILocation(line: 41, column: 9, scope: !37)
!71 = !DILocation(line: 42, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !37, file: !1, line: 42, column: 9)
!73 = !DILocation(line: 42, column: 13, scope: !72)
!74 = !DILocation(line: 42, column: 9, scope: !37)
!75 = !DILocation(line: 43, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 42, column: 22)
!77 = !DILocation(line: 47, column: 51, scope: !37)
!78 = !DILocation(line: 47, column: 49, scope: !37)
!79 = !DILocation(line: 47, column: 28, scope: !37)
!80 = !DILocation(line: 47, column: 20, scope: !37)
!81 = !DILocation(line: 47, column: 18, scope: !37)
!82 = !DILocation(line: 48, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !37, file: !1, line: 48, column: 9)
!84 = !DILocation(line: 48, column: 22, scope: !83)
!85 = !DILocation(line: 48, column: 9, scope: !37)
!86 = !DILocation(line: 49, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 48, column: 31)
!88 = !DILocation(line: 49, column: 9, scope: !87)
!89 = !DILocation(line: 50, column: 9, scope: !87)
!90 = !DILocation(line: 54, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !37, file: !1, line: 54, column: 5)
!92 = !DILocation(line: 54, column: 10, scope: !91)
!93 = !DILocation(line: 54, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 54, column: 5)
!95 = !DILocation(line: 54, column: 21, scope: !94)
!96 = !DILocation(line: 54, column: 19, scope: !94)
!97 = !DILocation(line: 54, column: 5, scope: !91)
!98 = !DILocation(line: 55, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 54, column: 39)
!100 = !DILocation(line: 55, column: 22, scope: !99)
!101 = !DILocation(line: 55, column: 25, scope: !99)
!102 = !DILocation(line: 56, column: 5, scope: !99)
!103 = !DILocation(line: 54, column: 35, scope: !94)
!104 = !DILocation(line: 54, column: 5, scope: !94)
!105 = distinct !{!105, !97, !106, !107}
!106 = !DILocation(line: 56, column: 5, scope: !91)
!107 = !{!"llvm.loop.mustprogress"}
!108 = !DILocation(line: 59, column: 20, scope: !37)
!109 = !DILocation(line: 59, column: 5, scope: !37)
!110 = !DILocation(line: 64, column: 5, scope: !37)
!111 = !DILocation(line: 67, column: 5, scope: !37)
!112 = !DILocation(line: 70, column: 12, scope: !37)
!113 = !DILocation(line: 70, column: 5, scope: !37)
!114 = !DILocation(line: 70, column: 38, scope: !37)
!115 = !DILocation(line: 70, column: 36, scope: !37)
!116 = !DILocation(line: 73, column: 10, scope: !37)
!117 = !DILocation(line: 73, column: 5, scope: !37)
!118 = !DILocation(line: 74, column: 10, scope: !37)
!119 = !DILocation(line: 74, column: 5, scope: !37)
!120 = !DILocation(line: 76, column: 5, scope: !37)
!121 = !DILocation(line: 77, column: 1, scope: !37)
!122 = distinct !DISubprogram(name: "memset", scope: !123, file: !123, line: 12, type: !124, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!123 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!124 = !DISubroutineType(types: !125)
!125 = !{!3, !3, !40, !126}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !7)
!127 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!128 = !DILocalVariable(name: "dst", arg: 1, scope: !122, file: !123, line: 12, type: !3)
!129 = !DILocation(line: 12, column: 20, scope: !122)
!130 = !DILocalVariable(name: "s", arg: 2, scope: !122, file: !123, line: 12, type: !40)
!131 = !DILocation(line: 12, column: 29, scope: !122)
!132 = !DILocalVariable(name: "count", arg: 3, scope: !122, file: !123, line: 12, type: !126)
!133 = !DILocation(line: 12, column: 39, scope: !122)
!134 = !DILocalVariable(name: "a", scope: !122, file: !123, line: 13, type: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!136 = !DILocation(line: 13, column: 9, scope: !122)
!137 = !DILocation(line: 13, column: 13, scope: !122)
!138 = !DILocation(line: 14, column: 3, scope: !122)
!139 = !DILocation(line: 14, column: 15, scope: !122)
!140 = !DILocation(line: 14, column: 18, scope: !122)
!141 = !DILocation(line: 15, column: 12, scope: !122)
!142 = !DILocation(line: 15, column: 7, scope: !122)
!143 = !DILocation(line: 15, column: 10, scope: !122)
!144 = distinct !{!144, !138, !141, !107}
!145 = !DILocation(line: 16, column: 10, scope: !122)
!146 = !DILocation(line: 16, column: 3, scope: !122)
