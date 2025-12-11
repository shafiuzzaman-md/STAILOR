; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@xmlDictLookup.buffer = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"NB_STRINGS_MIN\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Out of memory while creating sub-dictionary\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"(sizeof(test2) >= NB_STRINGS_MIN * sizeof(char*)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictCreate() #0 !dbg !30 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = call noalias i8* @malloc(i64 noundef 1024) #9, !dbg !34
  store i8* %3, i8** %2, align 8, !dbg !33
  %4 = load i8*, i8** %2, align 8, !dbg !35
  %5 = icmp eq i8* %4, null, !dbg !37
  br i1 %5, label %6, label %7, !dbg !38

6:                                                ; preds = %0
  store i8* null, i8** %1, align 8, !dbg !39
  br label %9, !dbg !39

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8, !dbg !41
  store i8* %8, i8** %1, align 8, !dbg !42
  br label %9, !dbg !42

9:                                                ; preds = %7, %6
  %10 = load i8*, i8** %1, align 8, !dbg !43
  ret i8* %10, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictFree(i8* noundef %0) #0 !dbg !44 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i8*, i8** %2, align 8, !dbg !49
  call void @free(i8* noundef %3) #9, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !56, metadata !DIExpression()), !dbg !57
  %8 = load i32, i32* %7, align 4, !dbg !58
  %9 = icmp slt i32 %8, 256, !dbg !60
  br i1 %9, label %10, label %18, !dbg !61

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8, !dbg !62
  %12 = load i32, i32* %7, align 4, !dbg !64
  %13 = sext i32 %12 to i64, !dbg !64
  %14 = call i8* @memcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlDictLookup.buffer, i64 0, i64 0), i8* %11, i64 %13), !dbg !65
  %15 = load i32, i32* %7, align 4, !dbg !66
  %16 = sext i32 %15 to i64, !dbg !67
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* @xmlDictLookup.buffer, i64 0, i64 %16, !dbg !67
  store i8 0, i8* %17, align 1, !dbg !68
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlDictLookup.buffer, i64 0, i64 0), i8** %4, align 8, !dbg !69
  br label %19, !dbg !69

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8, !dbg !70
  br label %19, !dbg !70

19:                                               ; preds = %18, %10
  %20 = load i8*, i8** %4, align 8, !dbg !71
  ret i8* %20, !dbg !71
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !72 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca [100 x i8*], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %3, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata [100 x i8]* %5, metadata !81, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [100 x i8*]* %6, metadata !86, metadata !DIExpression()), !dbg !88
  %7 = bitcast i32* %3 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !90
  %8 = load i32, i32* %3, align 4, !dbg !91
  %9 = icmp sge i32 %8, 0, !dbg !92
  %10 = zext i1 %9 to i32, !dbg !92
  %11 = sext i32 %10 to i64, !dbg !91
  call void @klee_assume(i64 noundef %11), !dbg !93
  %12 = load i32, i32* %3, align 4, !dbg !94
  %13 = icmp slt i32 %12, 100, !dbg !95
  %14 = zext i1 %13 to i32, !dbg !95
  %15 = sext i32 %14 to i64, !dbg !94
  call void @klee_assume(i64 noundef %15), !dbg !96
  %16 = call i8* @xmlDictCreate(), !dbg !97
  store i8* %16, i8** %2, align 8, !dbg !98
  %17 = load i8*, i8** %2, align 8, !dbg !99
  %18 = icmp eq i8* %17, null, !dbg !101
  br i1 %18, label %19, label %22, !dbg !102

19:                                               ; preds = %0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !103
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  call void @exit(i32 noundef 1) #10, !dbg !106
  unreachable, !dbg !106

22:                                               ; preds = %0
  %23 = load i32, i32* %3, align 4, !dbg !107
  %24 = sext i32 %23 to i64, !dbg !107
  %25 = mul i64 %24, 8, !dbg !107
  %26 = icmp uge i64 100, %25, !dbg !107
  br i1 %26, label %27, label %29, !dbg !107

27:                                               ; preds = %22
  br i1 true, label %28, label %29, !dbg !107

28:                                               ; preds = %27
  br label %31, !dbg !107

29:                                               ; preds = %27, %22
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  br label %31, !dbg !107

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0, !dbg !109
  %34 = call i8* @memset(i8* %33, i32 0, i64 100), !dbg !109
  %35 = load i8*, i8** %2, align 8, !dbg !110
  call void @xmlDictFree(i8* noundef %35), !dbg !111
  ret i32 0, !dbg !112
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !113 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !122, metadata !DIExpression()), !dbg !123
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !124, metadata !DIExpression()), !dbg !125
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %7, metadata !128, metadata !DIExpression()), !dbg !130
  %9 = load i8*, i8** %4, align 8, !dbg !131
  store i8* %9, i8** %7, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i8** %8, metadata !132, metadata !DIExpression()), !dbg !133
  %10 = load i8*, i8** %5, align 8, !dbg !134
  store i8* %10, i8** %8, align 8, !dbg !133
  br label %11, !dbg !135

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !136
  %13 = add i64 %12, -1, !dbg !136
  store i64 %13, i64* %6, align 8, !dbg !136
  %14 = icmp ugt i64 %12, 0, !dbg !137
  br i1 %14, label %15, label %21, !dbg !135

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !138
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !138
  store i8* %17, i8** %8, align 8, !dbg !138
  %18 = load i8, i8* %16, align 1, !dbg !139
  %19 = load i8*, i8** %7, align 8, !dbg !140
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !140
  store i8* %20, i8** %7, align 8, !dbg !140
  store i8 %18, i8* %19, align 1, !dbg !141
  br label %11, !dbg !135, !llvm.loop !142

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !144
  ret i8* %22, !dbg !145
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !146 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %7, metadata !156, metadata !DIExpression()), !dbg !157
  %8 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %8, i8** %7, align 8, !dbg !157
  br label %9, !dbg !159

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !160
  %11 = add i64 %10, -1, !dbg !160
  store i64 %11, i64* %6, align 8, !dbg !160
  %12 = icmp ugt i64 %10, 0, !dbg !161
  br i1 %12, label %13, label %18, !dbg !159

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !162
  %15 = trunc i32 %14 to i8, !dbg !162
  %16 = load i8*, i8** %7, align 8, !dbg !163
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !163
  store i8* %17, i8** %7, align 8, !dbg !163
  store i8 %15, i8* %16, align 1, !dbg !164
  br label %9, !dbg !159, !llvm.loop !165

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !166
  ret i8* %19, !dbg !167
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.dbg.cu = !{!11, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29, !29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 26, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlDictLookup", scope: !3, file: !3, line: 25, type: !4, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c4490b860600d9429311cd6dd1b1724b")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !6, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !12, globals: !13, splitDebugInlining: false, nameTableKind: None)
!12 = !{!9}
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlDictCreate", scope: !3, file: !3, line: 11, type: !31, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !14)
!31 = !DISubroutineType(types: !12)
!32 = !DILocalVariable(name: "dict", scope: !30, file: !3, line: 12, type: !9)
!33 = !DILocation(line: 12, column: 11, scope: !30)
!34 = !DILocation(line: 12, column: 18, scope: !30)
!35 = !DILocation(line: 13, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !30, file: !3, line: 13, column: 9)
!37 = !DILocation(line: 13, column: 14, scope: !36)
!38 = !DILocation(line: 13, column: 9, scope: !30)
!39 = !DILocation(line: 14, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 13, column: 23)
!41 = !DILocation(line: 16, column: 12, scope: !30)
!42 = !DILocation(line: 16, column: 5, scope: !30)
!43 = !DILocation(line: 17, column: 1, scope: !30)
!44 = distinct !DISubprogram(name: "xmlDictFree", scope: !3, file: !3, line: 20, type: !45, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !14)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !9}
!47 = !DILocalVariable(name: "dict", arg: 1, scope: !44, file: !3, line: 20, type: !9)
!48 = !DILocation(line: 20, column: 24, scope: !44)
!49 = !DILocation(line: 21, column: 10, scope: !44)
!50 = !DILocation(line: 21, column: 5, scope: !44)
!51 = !DILocation(line: 22, column: 1, scope: !44)
!52 = !DILocalVariable(name: "dict", arg: 1, scope: !2, file: !3, line: 25, type: !9)
!53 = !DILocation(line: 25, column: 33, scope: !2)
!54 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 25, type: !6)
!55 = !DILocation(line: 25, column: 51, scope: !2)
!56 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 25, type: !10)
!57 = !DILocation(line: 25, column: 61, scope: !2)
!58 = !DILocation(line: 27, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !2, file: !3, line: 27, column: 9)
!60 = !DILocation(line: 27, column: 13, scope: !59)
!61 = !DILocation(line: 27, column: 9, scope: !2)
!62 = !DILocation(line: 28, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !3, line: 27, column: 20)
!64 = !DILocation(line: 28, column: 30, scope: !63)
!65 = !DILocation(line: 28, column: 9, scope: !63)
!66 = !DILocation(line: 29, column: 16, scope: !63)
!67 = !DILocation(line: 29, column: 9, scope: !63)
!68 = !DILocation(line: 29, column: 21, scope: !63)
!69 = !DILocation(line: 30, column: 9, scope: !63)
!70 = !DILocation(line: 32, column: 5, scope: !2)
!71 = !DILocation(line: 33, column: 1, scope: !2)
!72 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 35, type: !73, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !14)
!73 = !DISubroutineType(types: !74)
!74 = !{!10}
!75 = !DILocalVariable(name: "dict", scope: !72, file: !3, line: 36, type: !9)
!76 = !DILocation(line: 36, column: 11, scope: !72)
!77 = !DILocalVariable(name: "NB_STRINGS_MIN", scope: !72, file: !3, line: 37, type: !10)
!78 = !DILocation(line: 37, column: 9, scope: !72)
!79 = !DILocalVariable(name: "i", scope: !72, file: !3, line: 38, type: !10)
!80 = !DILocation(line: 38, column: 9, scope: !72)
!81 = !DILocalVariable(name: "test2", scope: !72, file: !3, line: 39, type: !82)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 800, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 100)
!85 = !DILocation(line: 39, column: 10, scope: !72)
!86 = !DILocalVariable(name: "strings", scope: !72, file: !3, line: 40, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 6400, elements: !83)
!88 = !DILocation(line: 40, column: 17, scope: !72)
!89 = !DILocation(line: 43, column: 24, scope: !72)
!90 = !DILocation(line: 43, column: 5, scope: !72)
!91 = !DILocation(line: 46, column: 17, scope: !72)
!92 = !DILocation(line: 46, column: 32, scope: !72)
!93 = !DILocation(line: 46, column: 5, scope: !72)
!94 = !DILocation(line: 47, column: 17, scope: !72)
!95 = !DILocation(line: 47, column: 32, scope: !72)
!96 = !DILocation(line: 47, column: 5, scope: !72)
!97 = !DILocation(line: 49, column: 12, scope: !72)
!98 = !DILocation(line: 49, column: 10, scope: !72)
!99 = !DILocation(line: 50, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !72, file: !3, line: 50, column: 9)
!101 = !DILocation(line: 50, column: 14, scope: !100)
!102 = !DILocation(line: 50, column: 9, scope: !72)
!103 = !DILocation(line: 51, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 50, column: 23)
!105 = !DILocation(line: 51, column: 9, scope: !104)
!106 = !DILocation(line: 52, column: 9, scope: !104)
!107 = !DILocation(line: 56, column: 5, scope: !72)
!108 = !DILocation(line: 59, column: 5, scope: !72)
!109 = !DILocation(line: 62, column: 5, scope: !72)
!110 = !DILocation(line: 71, column: 17, scope: !72)
!111 = !DILocation(line: 71, column: 5, scope: !72)
!112 = !DILocation(line: 73, column: 5, scope: !72)
!113 = distinct !DISubprogram(name: "memcpy", scope: !114, file: !114, line: 12, type: !115, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !14)
!114 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!115 = !DISubroutineType(types: !116)
!116 = !{!9, !9, !117, !119}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocalVariable(name: "destaddr", arg: 1, scope: !113, file: !114, line: 12, type: !9)
!123 = !DILocation(line: 12, column: 20, scope: !113)
!124 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !113, file: !114, line: 12, type: !117)
!125 = !DILocation(line: 12, column: 42, scope: !113)
!126 = !DILocalVariable(name: "len", arg: 3, scope: !113, file: !114, line: 12, type: !119)
!127 = !DILocation(line: 12, column: 58, scope: !113)
!128 = !DILocalVariable(name: "dest", scope: !113, file: !114, line: 13, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!130 = !DILocation(line: 13, column: 9, scope: !113)
!131 = !DILocation(line: 13, column: 16, scope: !113)
!132 = !DILocalVariable(name: "src", scope: !113, file: !114, line: 14, type: !6)
!133 = !DILocation(line: 14, column: 15, scope: !113)
!134 = !DILocation(line: 14, column: 21, scope: !113)
!135 = !DILocation(line: 16, column: 3, scope: !113)
!136 = !DILocation(line: 16, column: 13, scope: !113)
!137 = !DILocation(line: 16, column: 16, scope: !113)
!138 = !DILocation(line: 17, column: 19, scope: !113)
!139 = !DILocation(line: 17, column: 15, scope: !113)
!140 = !DILocation(line: 17, column: 10, scope: !113)
!141 = !DILocation(line: 17, column: 13, scope: !113)
!142 = distinct !{!142, !135, !138, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !DILocation(line: 18, column: 10, scope: !113)
!145 = !DILocation(line: 18, column: 3, scope: !113)
!146 = distinct !DISubprogram(name: "memset", scope: !147, file: !147, line: 12, type: !148, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !14)
!147 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!148 = !DISubroutineType(types: !149)
!149 = !{!9, !9, !10, !119}
!150 = !DILocalVariable(name: "dst", arg: 1, scope: !146, file: !147, line: 12, type: !9)
!151 = !DILocation(line: 12, column: 20, scope: !146)
!152 = !DILocalVariable(name: "s", arg: 2, scope: !146, file: !147, line: 12, type: !10)
!153 = !DILocation(line: 12, column: 29, scope: !146)
!154 = !DILocalVariable(name: "count", arg: 3, scope: !146, file: !147, line: 12, type: !119)
!155 = !DILocation(line: 12, column: 39, scope: !146)
!156 = !DILocalVariable(name: "a", scope: !146, file: !147, line: 13, type: !129)
!157 = !DILocation(line: 13, column: 9, scope: !146)
!158 = !DILocation(line: 13, column: 13, scope: !146)
!159 = !DILocation(line: 14, column: 3, scope: !146)
!160 = !DILocation(line: 14, column: 15, scope: !146)
!161 = !DILocation(line: 14, column: 18, scope: !146)
!162 = !DILocation(line: 15, column: 12, scope: !146)
!163 = !DILocation(line: 15, column: 7, scope: !146)
!164 = !DILocation(line: 15, column: 10, scope: !146)
!165 = distinct !{!165, !159, !162, !143}
!166 = !DILocation(line: 16, column: 10, scope: !146)
!167 = !DILocation(line: 16, column: 3, scope: !146)
