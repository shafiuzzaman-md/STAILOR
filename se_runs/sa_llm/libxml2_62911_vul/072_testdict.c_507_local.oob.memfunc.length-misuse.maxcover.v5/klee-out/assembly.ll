; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDictStrings = type { i32, i32, i32, i32, i32, i8** }

@.str = private unnamed_addr constant [12 x i8] c"num_entries\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"num_keys\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"(num_strings >= 0 && num_strings <= 1000000) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

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
define dso_local %struct._xmlDictStrings* @create_dict_strings(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !26 {
  %4 = alloca %struct._xmlDictStrings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlDictStrings*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %8, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %9, metadata !51, metadata !DIExpression()), !dbg !52
  %10 = call i8* @xmlMalloc(i64 noundef 32), !dbg !53
  %11 = bitcast i8* %10 to %struct._xmlDictStrings*, !dbg !53
  store %struct._xmlDictStrings* %11, %struct._xmlDictStrings** %8, align 8, !dbg !54
  %12 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !55
  %13 = icmp eq %struct._xmlDictStrings* %12, null, !dbg !57
  br i1 %13, label %14, label %15, !dbg !58

14:                                               ; preds = %3
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %4, align 8, !dbg !59
  br label %49, !dbg !59

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4, !dbg !60
  %17 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !61
  %18 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %17, i32 0, i32 0, !dbg !62
  store i32 %16, i32* %18, align 8, !dbg !63
  %19 = load i32, i32* %6, align 4, !dbg !64
  %20 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !65
  %21 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %20, i32 0, i32 1, !dbg !66
  store i32 %19, i32* %21, align 4, !dbg !67
  %22 = load i32, i32* %5, align 4, !dbg !68
  %23 = load i32, i32* %6, align 4, !dbg !69
  %24 = mul nsw i32 %22, %23, !dbg !70
  store i32 %24, i32* %9, align 4, !dbg !71
  %25 = load i32, i32* %9, align 4, !dbg !72
  %26 = sext i32 %25 to i64, !dbg !72
  %27 = mul i64 %26, 8, !dbg !73
  %28 = call i8* @xmlMalloc(i64 noundef %27), !dbg !74
  %29 = bitcast i8* %28 to i8**, !dbg !74
  %30 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !75
  %31 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %30, i32 0, i32 5, !dbg !76
  store i8** %29, i8*** %31, align 8, !dbg !77
  %32 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !78
  %33 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %32, i32 0, i32 5, !dbg !79
  %34 = load i8**, i8*** %33, align 8, !dbg !79
  %35 = bitcast i8** %34 to i8*, !dbg !80
  %36 = load i32, i32* %9, align 4, !dbg !81
  %37 = sext i32 %36 to i64, !dbg !81
  %38 = mul i64 %37, 8, !dbg !82
  %39 = call i8* @memset(i8* %35, i32 0, i64 %38), !dbg !80
  %40 = load i32, i32* %9, align 4, !dbg !83
  %41 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !84
  %42 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %41, i32 0, i32 2, !dbg !85
  store i32 %40, i32* %42, align 8, !dbg !86
  %43 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !87
  %44 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %43, i32 0, i32 3, !dbg !88
  store i32 0, i32* %44, align 4, !dbg !89
  %45 = load i32, i32* %7, align 4, !dbg !90
  %46 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !91
  %47 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %46, i32 0, i32 4, !dbg !92
  store i32 %45, i32* %47, align 8, !dbg !93
  %48 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %8, align 8, !dbg !94
  store %struct._xmlDictStrings* %48, %struct._xmlDictStrings** %4, align 8, !dbg !95
  br label %49, !dbg !95

49:                                               ; preds = %15, %14
  %50 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !96
  ret %struct._xmlDictStrings* %50, !dbg !96
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlDictStrings*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %4, metadata !104, metadata !DIExpression()), !dbg !105
  %7 = bitcast i32* %2 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !107
  %8 = bitcast i32* %3 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !109
  %9 = bitcast i32* %4 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  %10 = load i32, i32* %2, align 4, !dbg !112
  %11 = icmp sge i32 %10, 0, !dbg !113
  %12 = zext i1 %11 to i32, !dbg !113
  %13 = sext i32 %12 to i64, !dbg !112
  call void @klee_assume(i64 noundef %13), !dbg !114
  %14 = load i32, i32* %2, align 4, !dbg !115
  %15 = icmp sle i32 %14, 1000, !dbg !116
  %16 = zext i1 %15 to i32, !dbg !116
  %17 = sext i32 %16 to i64, !dbg !115
  call void @klee_assume(i64 noundef %17), !dbg !117
  %18 = load i32, i32* %3, align 4, !dbg !118
  %19 = icmp sge i32 %18, 0, !dbg !119
  %20 = zext i1 %19 to i32, !dbg !119
  %21 = sext i32 %20 to i64, !dbg !118
  call void @klee_assume(i64 noundef %21), !dbg !120
  %22 = load i32, i32* %3, align 4, !dbg !121
  %23 = icmp sle i32 %22, 1000, !dbg !122
  %24 = zext i1 %23 to i32, !dbg !122
  %25 = sext i32 %24 to i64, !dbg !121
  call void @klee_assume(i64 noundef %25), !dbg !123
  call void @llvm.dbg.declare(metadata i32* %5, metadata !124, metadata !DIExpression()), !dbg !125
  %26 = load i32, i32* %2, align 4, !dbg !126
  %27 = load i32, i32* %3, align 4, !dbg !127
  %28 = mul nsw i32 %26, %27, !dbg !128
  store i32 %28, i32* %5, align 4, !dbg !125
  %29 = load i32, i32* %5, align 4, !dbg !129
  %30 = icmp sge i32 %29, 0, !dbg !129
  br i1 %30, label %31, label %36, !dbg !129

31:                                               ; preds = %0
  %32 = load i32, i32* %5, align 4, !dbg !129
  %33 = icmp sle i32 %32, 1000000, !dbg !129
  br i1 %33, label %34, label %36, !dbg !129

34:                                               ; preds = %31
  br i1 true, label %35, label %36, !dbg !129

35:                                               ; preds = %34
  br label %38, !dbg !129

36:                                               ; preds = %34, %31, %0
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !129
  br label %38, !dbg !129

38:                                               ; preds = %36, %35
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %6, metadata !130, metadata !DIExpression()), !dbg !131
  %39 = load i32, i32* %2, align 4, !dbg !132
  %40 = load i32, i32* %3, align 4, !dbg !133
  %41 = load i32, i32* %4, align 4, !dbg !134
  %42 = call %struct._xmlDictStrings* @create_dict_strings(i32 noundef %39, i32 noundef %40, i32 noundef %41), !dbg !135
  store %struct._xmlDictStrings* %42, %struct._xmlDictStrings** %6, align 8, !dbg !131
  %43 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %6, align 8, !dbg !136
  %44 = icmp ne %struct._xmlDictStrings* %43, null, !dbg !138
  br i1 %44, label %45, label %47, !dbg !139

45:                                               ; preds = %38
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !140
  br label %47, !dbg !142

47:                                               ; preds = %45, %38
  %48 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %6, align 8, !dbg !143
  %49 = icmp ne %struct._xmlDictStrings* %48, null, !dbg !145
  br i1 %49, label %50, label %63, !dbg !146

50:                                               ; preds = %47
  %51 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %6, align 8, !dbg !147
  %52 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %51, i32 0, i32 5, !dbg !150
  %53 = load i8**, i8*** %52, align 8, !dbg !150
  %54 = icmp ne i8** %53, null, !dbg !151
  br i1 %54, label %55, label %60, !dbg !152

55:                                               ; preds = %50
  %56 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %6, align 8, !dbg !153
  %57 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %56, i32 0, i32 5, !dbg !155
  %58 = load i8**, i8*** %57, align 8, !dbg !155
  %59 = bitcast i8** %58 to i8*, !dbg !153
  call void @free(i8* noundef %59) #7, !dbg !156
  br label %60, !dbg !157

60:                                               ; preds = %55, %50
  %61 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %6, align 8, !dbg !158
  %62 = bitcast %struct._xmlDictStrings* %61 to i8*, !dbg !158
  call void @free(i8* noundef %62) #7, !dbg !159
  br label %63, !dbg !160

63:                                               ; preds = %60, %47
  ret i32 0, !dbg !161
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !162 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !166, metadata !DIExpression()), !dbg !167
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !168, metadata !DIExpression()), !dbg !169
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i8** %7, metadata !172, metadata !DIExpression()), !dbg !173
  %8 = load i8*, i8** %4, align 8, !dbg !174
  store i8* %8, i8** %7, align 8, !dbg !173
  br label %9, !dbg !175

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !176
  %11 = add i64 %10, -1, !dbg !176
  store i64 %11, i64* %6, align 8, !dbg !176
  %12 = icmp ugt i64 %10, 0, !dbg !177
  br i1 %12, label %13, label %18, !dbg !175

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !178
  %15 = trunc i32 %14 to i8, !dbg !178
  %16 = load i8*, i8** %7, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %7, align 8, !dbg !179
  store i8 %15, i8* %16, align 1, !dbg !180
  br label %9, !dbg !175, !llvm.loop !181

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !183
  ret i8* %19, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1c8ed964569cec8e9b42ee6e935a18d1")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
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
!26 = distinct !DISubprogram(name: "create_dict_strings", scope: !1, file: !1, line: 25, type: !27, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !34, !34, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictStrings", file: !1, line: 22, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictStrings", file: !1, line: 15, size: 256, elements: !32)
!32 = !{!33, !35, !36, !37, !38, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !31, file: !1, line: 16, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "num_keys", scope: !31, file: !1, line: 17, baseType: !34, size: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "num_strings", scope: !31, file: !1, line: 18, baseType: !34, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !31, file: !1, line: 19, baseType: !34, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !31, file: !1, line: 20, baseType: !34, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !31, file: !1, line: 21, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "num_entries", arg: 1, scope: !26, file: !1, line: 25, type: !34)
!44 = !DILocation(line: 25, column: 41, scope: !26)
!45 = !DILocalVariable(name: "num_keys", arg: 2, scope: !26, file: !1, line: 25, type: !34)
!46 = !DILocation(line: 25, column: 58, scope: !26)
!47 = !DILocalVariable(name: "id", arg: 3, scope: !26, file: !1, line: 25, type: !34)
!48 = !DILocation(line: 25, column: 72, scope: !26)
!49 = !DILocalVariable(name: "ret", scope: !26, file: !1, line: 26, type: !29)
!50 = !DILocation(line: 26, column: 21, scope: !26)
!51 = !DILocalVariable(name: "num_strings", scope: !26, file: !1, line: 27, type: !34)
!52 = !DILocation(line: 27, column: 9, scope: !26)
!53 = !DILocation(line: 29, column: 11, scope: !26)
!54 = !DILocation(line: 29, column: 9, scope: !26)
!55 = !DILocation(line: 30, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !26, file: !1, line: 30, column: 9)
!57 = !DILocation(line: 30, column: 13, scope: !56)
!58 = !DILocation(line: 30, column: 9, scope: !26)
!59 = !DILocation(line: 30, column: 22, scope: !56)
!60 = !DILocation(line: 32, column: 24, scope: !26)
!61 = !DILocation(line: 32, column: 5, scope: !26)
!62 = !DILocation(line: 32, column: 10, scope: !26)
!63 = !DILocation(line: 32, column: 22, scope: !26)
!64 = !DILocation(line: 33, column: 21, scope: !26)
!65 = !DILocation(line: 33, column: 5, scope: !26)
!66 = !DILocation(line: 33, column: 10, scope: !26)
!67 = !DILocation(line: 33, column: 19, scope: !26)
!68 = !DILocation(line: 34, column: 19, scope: !26)
!69 = !DILocation(line: 34, column: 33, scope: !26)
!70 = !DILocation(line: 34, column: 31, scope: !26)
!71 = !DILocation(line: 34, column: 17, scope: !26)
!72 = !DILocation(line: 35, column: 30, scope: !26)
!73 = !DILocation(line: 35, column: 42, scope: !26)
!74 = !DILocation(line: 35, column: 20, scope: !26)
!75 = !DILocation(line: 35, column: 5, scope: !26)
!76 = !DILocation(line: 35, column: 10, scope: !26)
!77 = !DILocation(line: 35, column: 18, scope: !26)
!78 = !DILocation(line: 38, column: 12, scope: !26)
!79 = !DILocation(line: 38, column: 17, scope: !26)
!80 = !DILocation(line: 38, column: 5, scope: !26)
!81 = !DILocation(line: 38, column: 29, scope: !26)
!82 = !DILocation(line: 38, column: 41, scope: !26)
!83 = !DILocation(line: 40, column: 24, scope: !26)
!84 = !DILocation(line: 40, column: 5, scope: !26)
!85 = !DILocation(line: 40, column: 10, scope: !26)
!86 = !DILocation(line: 40, column: 22, scope: !26)
!87 = !DILocation(line: 41, column: 5, scope: !26)
!88 = !DILocation(line: 41, column: 10, scope: !26)
!89 = !DILocation(line: 41, column: 16, scope: !26)
!90 = !DILocation(line: 42, column: 15, scope: !26)
!91 = !DILocation(line: 42, column: 5, scope: !26)
!92 = !DILocation(line: 42, column: 10, scope: !26)
!93 = !DILocation(line: 42, column: 13, scope: !26)
!94 = !DILocation(line: 44, column: 12, scope: !26)
!95 = !DILocation(line: 44, column: 5, scope: !26)
!96 = !DILocation(line: 45, column: 1, scope: !26)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !98, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!98 = !DISubroutineType(types: !99)
!99 = !{!34}
!100 = !DILocalVariable(name: "num_entries", scope: !97, file: !1, line: 48, type: !34)
!101 = !DILocation(line: 48, column: 9, scope: !97)
!102 = !DILocalVariable(name: "num_keys", scope: !97, file: !1, line: 48, type: !34)
!103 = !DILocation(line: 48, column: 22, scope: !97)
!104 = !DILocalVariable(name: "id", scope: !97, file: !1, line: 48, type: !34)
!105 = !DILocation(line: 48, column: 32, scope: !97)
!106 = !DILocation(line: 51, column: 24, scope: !97)
!107 = !DILocation(line: 51, column: 5, scope: !97)
!108 = !DILocation(line: 52, column: 24, scope: !97)
!109 = !DILocation(line: 52, column: 5, scope: !97)
!110 = !DILocation(line: 53, column: 24, scope: !97)
!111 = !DILocation(line: 53, column: 5, scope: !97)
!112 = !DILocation(line: 56, column: 17, scope: !97)
!113 = !DILocation(line: 56, column: 29, scope: !97)
!114 = !DILocation(line: 56, column: 5, scope: !97)
!115 = !DILocation(line: 57, column: 17, scope: !97)
!116 = !DILocation(line: 57, column: 29, scope: !97)
!117 = !DILocation(line: 57, column: 5, scope: !97)
!118 = !DILocation(line: 58, column: 17, scope: !97)
!119 = !DILocation(line: 58, column: 26, scope: !97)
!120 = !DILocation(line: 58, column: 5, scope: !97)
!121 = !DILocation(line: 59, column: 17, scope: !97)
!122 = !DILocation(line: 59, column: 26, scope: !97)
!123 = !DILocation(line: 59, column: 5, scope: !97)
!124 = !DILocalVariable(name: "num_strings", scope: !97, file: !1, line: 62, type: !34)
!125 = !DILocation(line: 62, column: 9, scope: !97)
!126 = !DILocation(line: 62, column: 23, scope: !97)
!127 = !DILocation(line: 62, column: 37, scope: !97)
!128 = !DILocation(line: 62, column: 35, scope: !97)
!129 = !DILocation(line: 63, column: 5, scope: !97)
!130 = !DILocalVariable(name: "dict", scope: !97, file: !1, line: 66, type: !29)
!131 = !DILocation(line: 66, column: 21, scope: !97)
!132 = !DILocation(line: 66, column: 48, scope: !97)
!133 = !DILocation(line: 66, column: 61, scope: !97)
!134 = !DILocation(line: 66, column: 71, scope: !97)
!135 = !DILocation(line: 66, column: 28, scope: !97)
!136 = !DILocation(line: 69, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !97, file: !1, line: 69, column: 9)
!138 = !DILocation(line: 69, column: 14, scope: !137)
!139 = !DILocation(line: 69, column: 9, scope: !97)
!140 = !DILocation(line: 70, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 69, column: 23)
!142 = !DILocation(line: 71, column: 5, scope: !141)
!143 = !DILocation(line: 74, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !97, file: !1, line: 74, column: 9)
!145 = !DILocation(line: 74, column: 14, scope: !144)
!146 = !DILocation(line: 74, column: 9, scope: !97)
!147 = !DILocation(line: 75, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 75, column: 13)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 74, column: 23)
!150 = !DILocation(line: 75, column: 19, scope: !148)
!151 = !DILocation(line: 75, column: 27, scope: !148)
!152 = !DILocation(line: 75, column: 13, scope: !149)
!153 = !DILocation(line: 76, column: 18, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 75, column: 36)
!155 = !DILocation(line: 76, column: 24, scope: !154)
!156 = !DILocation(line: 76, column: 13, scope: !154)
!157 = !DILocation(line: 77, column: 9, scope: !154)
!158 = !DILocation(line: 78, column: 14, scope: !149)
!159 = !DILocation(line: 78, column: 9, scope: !149)
!160 = !DILocation(line: 79, column: 5, scope: !149)
!161 = !DILocation(line: 81, column: 5, scope: !97)
!162 = distinct !DISubprogram(name: "memset", scope: !163, file: !163, line: 12, type: !164, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!163 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!164 = !DISubroutineType(types: !165)
!165 = !{!3, !3, !34, !17}
!166 = !DILocalVariable(name: "dst", arg: 1, scope: !162, file: !163, line: 12, type: !3)
!167 = !DILocation(line: 12, column: 20, scope: !162)
!168 = !DILocalVariable(name: "s", arg: 2, scope: !162, file: !163, line: 12, type: !34)
!169 = !DILocation(line: 12, column: 29, scope: !162)
!170 = !DILocalVariable(name: "count", arg: 3, scope: !162, file: !163, line: 12, type: !17)
!171 = !DILocation(line: 12, column: 39, scope: !162)
!172 = !DILocalVariable(name: "a", scope: !162, file: !163, line: 13, type: !41)
!173 = !DILocation(line: 13, column: 9, scope: !162)
!174 = !DILocation(line: 13, column: 13, scope: !162)
!175 = !DILocation(line: 14, column: 3, scope: !162)
!176 = !DILocation(line: 14, column: 15, scope: !162)
!177 = !DILocation(line: 14, column: 18, scope: !162)
!178 = !DILocation(line: 15, column: 12, scope: !162)
!179 = !DILocation(line: 15, column: 7, scope: !162)
!180 = !DILocation(line: 15, column: 10, scope: !162)
!181 = distinct !{!181, !175, !178, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !DILocation(line: 16, column: 10, scope: !162)
!184 = !DILocation(line: 16, column: 3, scope: !162)
