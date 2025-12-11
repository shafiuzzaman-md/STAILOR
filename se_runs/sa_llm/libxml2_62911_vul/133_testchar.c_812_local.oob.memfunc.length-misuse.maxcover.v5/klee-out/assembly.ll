; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/133_testchar.c_812_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/133_testchar.c_812_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"XML_PARSER_BIG_BUFFER_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"than\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"(i + 2 <= 2001) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/133_testchar.c_812_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\CE\B1\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\B1</d>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !14 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !21, metadata !DIExpression()), !dbg !22
  %3 = load i64, i64* %2, align 8, !dbg !23
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !24
  ret i8* %4, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !26 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i8*, i8** %2, align 8, !dbg !31
  call void @free(i8* noundef %3) #7, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseChunk(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !34 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !58
  %8 = bitcast i32* %2 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !60
  %9 = bitcast i32* %3 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)), !dbg !62
  %10 = bitcast i32* %4 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !64
  %11 = load i32, i32* %2, align 4, !dbg !65
  %12 = icmp sge i32 %11, 0, !dbg !66
  %13 = zext i1 %12 to i32, !dbg !66
  %14 = sext i32 %13 to i64, !dbg !65
  call void @klee_assume(i64 noundef %14), !dbg !67
  %15 = load i32, i32* %3, align 4, !dbg !68
  %16 = icmp sge i32 %15, 0, !dbg !69
  %17 = zext i1 %16 to i32, !dbg !69
  %18 = sext i32 %17 to i64, !dbg !68
  call void @klee_assume(i64 noundef %18), !dbg !70
  %19 = load i32, i32* %4, align 4, !dbg !71
  %20 = icmp sge i32 %19, 0, !dbg !72
  %21 = zext i1 %20 to i32, !dbg !72
  %22 = sext i32 %21 to i64, !dbg !71
  call void @klee_assume(i64 noundef %22), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %5, metadata !74, metadata !DIExpression()), !dbg !75
  store i8* inttoptr (i64 4096 to i8*), i8** %5, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %6, metadata !76, metadata !DIExpression()), !dbg !78
  %23 = call i8* @xmlMalloc(i64 noundef 2001), !dbg !79
  store i8* %23, i8** %6, align 8, !dbg !78
  %24 = load i8*, i8** %6, align 8, !dbg !80
  %25 = icmp ne i8* %24, null, !dbg !80
  br i1 %25, label %27, label %26, !dbg !82

26:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !83
  br label %58, !dbg !83

27:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %7, metadata !85, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %7, align 4, !dbg !87
  br label %28, !dbg !89

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %7, align 4, !dbg !90
  %30 = icmp slt i32 %29, 2000, !dbg !92
  br i1 %30, label %31, label %48, !dbg !93

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4, !dbg !94
  %33 = add nsw i32 %32, 2, !dbg !94
  %34 = icmp sle i32 %33, 2001, !dbg !94
  br i1 %34, label %35, label %37, !dbg !94

35:                                               ; preds = %31
  br i1 true, label %36, label %37, !dbg !94

36:                                               ; preds = %35
  br label %39, !dbg !94

37:                                               ; preds = %35, %31
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !94
  br label %39, !dbg !94

39:                                               ; preds = %37, %36
  %40 = load i8*, i8** %6, align 8, !dbg !96
  %41 = load i32, i32* %7, align 4, !dbg !97
  %42 = sext i32 %41 to i64, !dbg !98
  %43 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !98
  %44 = call i8* @memcpy(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2), !dbg !99
  br label %45, !dbg !100

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4, !dbg !101
  %47 = add nsw i32 %46, 2, !dbg !101
  store i32 %47, i32* %7, align 4, !dbg !101
  br label %28, !dbg !102, !llvm.loop !103

48:                                               ; preds = %28
  %49 = load i8*, i8** %6, align 8, !dbg !106
  %50 = load i32, i32* %7, align 4, !dbg !107
  %51 = sext i32 %50 to i64, !dbg !106
  %52 = getelementptr inbounds i8, i8* %49, i64 %51, !dbg !106
  store i8 -50, i8* %52, align 1, !dbg !108
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !109
  %54 = load i8*, i8** %5, align 8, !dbg !110
  %55 = load i8*, i8** %6, align 8, !dbg !111
  call void @xmlParseChunk(i8* noundef %54, i8* noundef %55, i32 noundef 2001, i32 noundef 0), !dbg !112
  %56 = load i8*, i8** %6, align 8, !dbg !113
  call void @xmlFree(i8* noundef %56), !dbg !114
  %57 = load i8*, i8** %5, align 8, !dbg !115
  call void @xmlParseChunk(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4, i32 noundef 0), !dbg !116
  store i32 0, i32* %1, align 4, !dbg !117
  br label %58, !dbg !117

58:                                               ; preds = %48, %26
  %59 = load i32, i32* %1, align 4, !dbg !118
  ret i32 %59, !dbg !118
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !119 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %7, metadata !131, metadata !DIExpression()), !dbg !132
  %9 = load i8*, i8** %4, align 8, !dbg !133
  store i8* %9, i8** %7, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i8** %8, metadata !134, metadata !DIExpression()), !dbg !135
  %10 = load i8*, i8** %5, align 8, !dbg !136
  store i8* %10, i8** %8, align 8, !dbg !135
  br label %11, !dbg !137

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !138
  %13 = add i64 %12, -1, !dbg !138
  store i64 %13, i64* %6, align 8, !dbg !138
  %14 = icmp ugt i64 %12, 0, !dbg !139
  br i1 %14, label %15, label %21, !dbg !137

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !140
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !140
  store i8* %17, i8** %8, align 8, !dbg !140
  %18 = load i8, i8* %16, align 1, !dbg !141
  %19 = load i8*, i8** %7, align 8, !dbg !142
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !142
  store i8* %20, i8** %7, align 8, !dbg !142
  store i8 %18, i8* %19, align 1, !dbg !143
  br label %11, !dbg !137, !llvm.loop !144

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !145
  ret i8* %22, !dbg !146
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/133_testchar.c_812_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "70120f0f9fc4f09be8bcfd58e650bff9")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 10, type: !15, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{!3, !17}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 46, baseType: !19)
!18 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{}
!21 = !DILocalVariable(name: "size", arg: 1, scope: !14, file: !1, line: 10, type: !17)
!22 = !DILocation(line: 10, column: 24, scope: !14)
!23 = !DILocation(line: 11, column: 19, scope: !14)
!24 = !DILocation(line: 11, column: 12, scope: !14)
!25 = !DILocation(line: 11, column: 5, scope: !14)
!26 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 15, type: !27, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !3}
!29 = !DILocalVariable(name: "ptr", arg: 1, scope: !26, file: !1, line: 15, type: !3)
!30 = !DILocation(line: 15, column: 20, scope: !26)
!31 = !DILocation(line: 16, column: 10, scope: !26)
!32 = !DILocation(line: 16, column: 5, scope: !26)
!33 = !DILocation(line: 17, column: 1, scope: !26)
!34 = distinct !DISubprogram(name: "xmlParseChunk", scope: !1, file: !1, line: 20, type: !35, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3, !37, !40, !40}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(name: "ctxt", arg: 1, scope: !34, file: !1, line: 20, type: !3)
!42 = !DILocation(line: 20, column: 26, scope: !34)
!43 = !DILocalVariable(name: "buf", arg: 2, scope: !34, file: !1, line: 20, type: !37)
!44 = !DILocation(line: 20, column: 44, scope: !34)
!45 = !DILocalVariable(name: "size", arg: 3, scope: !34, file: !1, line: 20, type: !40)
!46 = !DILocation(line: 20, column: 53, scope: !34)
!47 = !DILocalVariable(name: "terminate", arg: 4, scope: !34, file: !1, line: 20, type: !40)
!48 = !DILocation(line: 20, column: 63, scope: !34)
!49 = !DILocation(line: 22, column: 1, scope: !34)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !51, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!51 = !DISubroutineType(types: !52)
!52 = !{!40}
!53 = !DILocalVariable(name: "XML_PARSER_BIG_BUFFER_SIZE", scope: !50, file: !1, line: 27, type: !40)
!54 = !DILocation(line: 27, column: 9, scope: !50)
!55 = !DILocalVariable(name: "an", scope: !50, file: !1, line: 28, type: !40)
!56 = !DILocation(line: 28, column: 9, scope: !50)
!57 = !DILocalVariable(name: "than", scope: !50, file: !1, line: 29, type: !40)
!58 = !DILocation(line: 29, column: 9, scope: !50)
!59 = !DILocation(line: 32, column: 24, scope: !50)
!60 = !DILocation(line: 32, column: 5, scope: !50)
!61 = !DILocation(line: 33, column: 24, scope: !50)
!62 = !DILocation(line: 33, column: 5, scope: !50)
!63 = !DILocation(line: 34, column: 24, scope: !50)
!64 = !DILocation(line: 34, column: 5, scope: !50)
!65 = !DILocation(line: 37, column: 17, scope: !50)
!66 = !DILocation(line: 37, column: 44, scope: !50)
!67 = !DILocation(line: 37, column: 5, scope: !50)
!68 = !DILocation(line: 38, column: 17, scope: !50)
!69 = !DILocation(line: 38, column: 20, scope: !50)
!70 = !DILocation(line: 38, column: 5, scope: !50)
!71 = !DILocation(line: 39, column: 17, scope: !50)
!72 = !DILocation(line: 39, column: 22, scope: !50)
!73 = !DILocation(line: 39, column: 5, scope: !50)
!74 = !DILocalVariable(name: "ctxt", scope: !50, file: !1, line: 42, type: !3)
!75 = !DILocation(line: 42, column: 11, scope: !50)
!76 = !DILocalVariable(name: "buf", scope: !50, file: !1, line: 45, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!78 = !DILocation(line: 45, column: 11, scope: !50)
!79 = !DILocation(line: 45, column: 17, scope: !50)
!80 = !DILocation(line: 46, column: 10, scope: !81)
!81 = distinct !DILexicalBlock(scope: !50, file: !1, line: 46, column: 9)
!82 = !DILocation(line: 46, column: 9, scope: !50)
!83 = !DILocation(line: 47, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 15)
!85 = !DILocalVariable(name: "i", scope: !50, file: !1, line: 51, type: !40)
!86 = !DILocation(line: 51, column: 9, scope: !50)
!87 = !DILocation(line: 52, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !50, file: !1, line: 52, column: 5)
!89 = !DILocation(line: 52, column: 10, scope: !88)
!90 = !DILocation(line: 52, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 52, column: 5)
!92 = !DILocation(line: 52, column: 19, scope: !91)
!93 = !DILocation(line: 52, column: 5, scope: !88)
!94 = !DILocation(line: 55, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 52, column: 35)
!96 = !DILocation(line: 57, column: 16, scope: !95)
!97 = !DILocation(line: 57, column: 22, scope: !95)
!98 = !DILocation(line: 57, column: 20, scope: !95)
!99 = !DILocation(line: 57, column: 9, scope: !95)
!100 = !DILocation(line: 58, column: 5, scope: !95)
!101 = !DILocation(line: 52, column: 29, scope: !91)
!102 = !DILocation(line: 52, column: 5, scope: !91)
!103 = distinct !{!103, !93, !104, !105}
!104 = !DILocation(line: 58, column: 5, scope: !88)
!105 = !{!"llvm.loop.mustprogress"}
!106 = !DILocation(line: 61, column: 5, scope: !50)
!107 = !DILocation(line: 61, column: 9, scope: !50)
!108 = !DILocation(line: 61, column: 12, scope: !50)
!109 = !DILocation(line: 68, column: 5, scope: !50)
!110 = !DILocation(line: 70, column: 19, scope: !50)
!111 = !DILocation(line: 70, column: 25, scope: !50)
!112 = !DILocation(line: 70, column: 5, scope: !50)
!113 = !DILocation(line: 71, column: 13, scope: !50)
!114 = !DILocation(line: 71, column: 5, scope: !50)
!115 = !DILocation(line: 74, column: 19, scope: !50)
!116 = !DILocation(line: 74, column: 5, scope: !50)
!117 = !DILocation(line: 76, column: 5, scope: !50)
!118 = !DILocation(line: 77, column: 1, scope: !50)
!119 = distinct !DISubprogram(name: "memcpy", scope: !120, file: !120, line: 12, type: !121, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!120 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!121 = !DISubroutineType(types: !122)
!122 = !{!3, !3, !123, !17}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!125 = !DILocalVariable(name: "destaddr", arg: 1, scope: !119, file: !120, line: 12, type: !3)
!126 = !DILocation(line: 12, column: 20, scope: !119)
!127 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !119, file: !120, line: 12, type: !123)
!128 = !DILocation(line: 12, column: 42, scope: !119)
!129 = !DILocalVariable(name: "len", arg: 3, scope: !119, file: !120, line: 12, type: !17)
!130 = !DILocation(line: 12, column: 58, scope: !119)
!131 = !DILocalVariable(name: "dest", scope: !119, file: !120, line: 13, type: !77)
!132 = !DILocation(line: 13, column: 9, scope: !119)
!133 = !DILocation(line: 13, column: 16, scope: !119)
!134 = !DILocalVariable(name: "src", scope: !119, file: !120, line: 14, type: !37)
!135 = !DILocation(line: 14, column: 15, scope: !119)
!136 = !DILocation(line: 14, column: 21, scope: !119)
!137 = !DILocation(line: 16, column: 3, scope: !119)
!138 = !DILocation(line: 16, column: 13, scope: !119)
!139 = !DILocation(line: 16, column: 16, scope: !119)
!140 = !DILocation(line: 17, column: 19, scope: !119)
!141 = !DILocation(line: 17, column: 15, scope: !119)
!142 = !DILocation(line: 17, column: 10, scope: !119)
!143 = !DILocation(line: 17, column: 13, scope: !119)
!144 = distinct !{!144, !137, !140, !105}
!145 = !DILocation(line: 18, column: 10, scope: !119)
!146 = !DILocation(line: 18, column: 3, scope: !119)
