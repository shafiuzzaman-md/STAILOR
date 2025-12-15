; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/265_libxml.c_3566_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/265_libxml.c_3566_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@PyBytes_AsString.dummy = internal global i8 97, align 1, !dbg !0
@PyTuple_GET_ITEM.dummy = internal global i8 0, align 1, !dbg !20
@PyList_GET_ITEM.dummy = internal global i8 0, align 1, !dbg !25
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"is_tuple\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"py_strings\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"(count >= 0 && count <= 1000000) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/265_libxml.c_3566_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PyErr_SetString(i8* noundef %0, i8* noundef %1) #0 !dbg !49 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !56, metadata !DIExpression()), !dbg !57
  %5 = load i8*, i8** %3, align 8, !dbg !58
  %6 = load i8*, i8** %4, align 8, !dbg !59
  ret void, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyBytes_AsString(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !61, metadata !DIExpression()), !dbg !62
  %3 = load i8*, i8** %2, align 8, !dbg !63
  ret i8* @PyBytes_AsString.dummy, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyTuple_GET_ITEM(i8* noundef %0, i32 noundef %1) #0 !dbg !22 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = load i8*, i8** %3, align 8, !dbg !69
  %6 = load i32, i32* %4, align 4, !dbg !70
  ret i8* @PyTuple_GET_ITEM.dummy, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyList_GET_ITEM(i8* noundef %0, i32 noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !74, metadata !DIExpression()), !dbg !75
  %5 = load i8*, i8** %3, align 8, !dbg !76
  %6 = load i32, i32* %4, align 4, !dbg !77
  ret i8* @PyList_GET_ITEM.dummy, !dbg !78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !14 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !79, metadata !DIExpression()), !dbg !80
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !81, metadata !DIExpression()), !dbg !82
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !85, metadata !DIExpression()), !dbg !86
  %11 = load i32, i32* %5, align 4, !dbg !87
  %12 = sext i32 %11 to i64, !dbg !87
  %13 = mul i64 8, %12, !dbg !88
  %14 = call i8* @xmlMalloc(i64 noundef %13), !dbg !89
  %15 = bitcast i8* %14 to i8**, !dbg !90
  store i8** %15, i8*** %8, align 8, !dbg !91
  %16 = load i8**, i8*** %8, align 8, !dbg !92
  %17 = icmp eq i8** %16, null, !dbg !94
  br i1 %17, label %18, label %19, !dbg !95

18:                                               ; preds = %3
  call void @PyErr_SetString(i8* noundef null, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)), !dbg !96
  store i32 -1, i32* %4, align 4, !dbg !98
  br label %51, !dbg !98

19:                                               ; preds = %3
  %20 = load i8**, i8*** %8, align 8, !dbg !99
  %21 = bitcast i8** %20 to i8*, !dbg !100
  %22 = load i32, i32* %5, align 4, !dbg !101
  %23 = sext i32 %22 to i64, !dbg !101
  %24 = mul i64 8, %23, !dbg !102
  %25 = call i8* @memset(i8* %21, i32 0, i64 %24), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %9, metadata !103, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %9, align 4, !dbg !106
  br label %26, !dbg !108

26:                                               ; preds = %45, %19
  %27 = load i32, i32* %9, align 4, !dbg !109
  %28 = load i32, i32* %5, align 4, !dbg !111
  %29 = icmp slt i32 %27, %28, !dbg !112
  br i1 %29, label %30, label %48, !dbg !113

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %10, metadata !114, metadata !DIExpression()), !dbg !116
  %31 = load i32, i32* %6, align 4, !dbg !117
  %32 = icmp ne i32 %31, 0, !dbg !117
  br i1 %32, label %33, label %37, !dbg !117

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8, !dbg !118
  %35 = load i32, i32* %9, align 4, !dbg !119
  %36 = call i8* @PyTuple_GET_ITEM(i8* noundef %34, i32 noundef %35), !dbg !120
  br label %41, !dbg !117

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8, !dbg !121
  %39 = load i32, i32* %9, align 4, !dbg !122
  %40 = call i8* @PyList_GET_ITEM(i8* noundef %38, i32 noundef %39), !dbg !123
  br label %41, !dbg !117

41:                                               ; preds = %37, %33
  %42 = phi i8* [ %36, %33 ], [ %40, %37 ], !dbg !117
  %43 = call i8* @PyBytes_AsString(i8* noundef %42), !dbg !124
  store i8* %43, i8** %10, align 8, !dbg !116
  %44 = load i8*, i8** %10, align 8, !dbg !125
  br label %45, !dbg !126

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4, !dbg !127
  %47 = add nsw i32 %46, 1, !dbg !127
  store i32 %47, i32* %9, align 4, !dbg !127
  br label %26, !dbg !128, !llvm.loop !129

48:                                               ; preds = %26
  %49 = load i8**, i8*** %8, align 8, !dbg !132
  %50 = bitcast i8** %49 to i8*, !dbg !132
  call void @free(i8* noundef %50) #7, !dbg !133
  store i32 0, i32* %4, align 4, !dbg !134
  br label %51, !dbg !134

51:                                               ; preds = %48, %18
  %52 = load i32, i32* %4, align 4, !dbg !135
  ret i32 %52, !dbg !135
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !136 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %3, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %4, metadata !143, metadata !DIExpression()), !dbg !144
  %6 = bitcast i32* %2 to i8*, !dbg !145
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !146
  %7 = bitcast i32* %3 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !148
  %8 = bitcast i8** %4 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !150
  %9 = load i32, i32* %2, align 4, !dbg !151
  %10 = icmp sgt i32 %9, 0, !dbg !152
  %11 = zext i1 %10 to i32, !dbg !152
  %12 = sext i32 %11 to i64, !dbg !151
  call void @klee_assume(i64 noundef %12), !dbg !153
  %13 = load i32, i32* %3, align 4, !dbg !154
  %14 = icmp eq i32 %13, 0, !dbg !155
  br i1 %14, label %18, label %15, !dbg !156

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4, !dbg !157
  %17 = icmp eq i32 %16, 1, !dbg !158
  br label %18, !dbg !156

18:                                               ; preds = %15, %0
  %19 = phi i1 [ true, %0 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32, !dbg !156
  %21 = sext i32 %20 to i64, !dbg !154
  call void @klee_assume(i64 noundef %21), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !DIExpression()), !dbg !161
  %22 = load i32, i32* %2, align 4, !dbg !162
  %23 = load i32, i32* %3, align 4, !dbg !163
  %24 = load i8*, i8** %4, align 8, !dbg !164
  %25 = call i32 @target_function(i32 noundef %22, i32 noundef %23, i8* noundef %24), !dbg !165
  store i32 %25, i32* %5, align 4, !dbg !161
  %26 = load i32, i32* %2, align 4, !dbg !166
  %27 = icmp sge i32 %26, 0, !dbg !166
  br i1 %27, label %28, label %33, !dbg !166

28:                                               ; preds = %18
  %29 = load i32, i32* %2, align 4, !dbg !166
  %30 = icmp sle i32 %29, 1000000, !dbg !166
  br i1 %30, label %31, label %33, !dbg !166

31:                                               ; preds = %28
  br i1 true, label %32, label %33, !dbg !166

32:                                               ; preds = %31
  br label %35, !dbg !166

33:                                               ; preds = %31, %28, %18
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !166
  br label %35, !dbg !166

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.6, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !167
  %37 = load i32, i32* %5, align 4, !dbg !168
  ret i32 %37, !dbg !169
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !170 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !181
  %8 = load i8*, i8** %4, align 8, !dbg !182
  store i8* %8, i8** %7, align 8, !dbg !181
  br label %9, !dbg !183

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !184
  %11 = add i64 %10, -1, !dbg !184
  store i64 %11, i64* %6, align 8, !dbg !184
  %12 = icmp ugt i64 %10, 0, !dbg !185
  br i1 %12, label %13, label %18, !dbg !183

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !186
  %15 = trunc i32 %14 to i8, !dbg !186
  %16 = load i8*, i8** %7, align 8, !dbg !187
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !187
  store i8* %17, i8** %7, align 8, !dbg !187
  store i8 %15, i8* %16, align 1, !dbg !188
  br label %9, !dbg !183, !llvm.loop !189

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !190
  ret i8* %19, !dbg !191
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!9, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy", scope: !2, file: !3, line: 23, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "PyBytes_AsString", scope: !3, file: !3, line: 21, type: !4, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/265_libxml.c_3566_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "00766bfc66fe6925c12590f9ad716da8")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !19, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !8}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", scope: !14, file: !3, line: 45, baseType: !7)
!14 = distinct !DISubprogram(name: "target_function", scope: !3, file: !3, line: 44, type: !15, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !17, !8}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !{!0, !20, !25}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "dummy", scope: !22, file: !3, line: 31, type: !7, isLocal: true, isDefinition: true)
!22 = distinct !DISubprogram(name: "PyTuple_GET_ITEM", scope: !3, file: !3, line: 28, type: !23, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!23 = !DISubroutineType(types: !24)
!24 = !{!8, !8, !17}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "dummy", scope: !27, file: !3, line: 39, type: !7, isLocal: true, isDefinition: true)
!27 = distinct !DISubprogram(name: "PyList_GET_ITEM", scope: !3, file: !3, line: 36, type: !23, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 10, type: !39, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!39 = !DISubroutineType(types: !40)
!40 = !{!8, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !3, line: 10, type: !41)
!45 = !DILocation(line: 10, column: 24, scope: !38)
!46 = !DILocation(line: 11, column: 19, scope: !38)
!47 = !DILocation(line: 11, column: 12, scope: !38)
!48 = !DILocation(line: 11, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "PyErr_SetString", scope: !3, file: !3, line: 15, type: !50, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !8, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!54 = !DILocalVariable(name: "exc", arg: 1, scope: !49, file: !3, line: 15, type: !8)
!55 = !DILocation(line: 15, column: 28, scope: !49)
!56 = !DILocalVariable(name: "msg", arg: 2, scope: !49, file: !3, line: 15, type: !52)
!57 = !DILocation(line: 15, column: 45, scope: !49)
!58 = !DILocation(line: 16, column: 11, scope: !49)
!59 = !DILocation(line: 17, column: 11, scope: !49)
!60 = !DILocation(line: 18, column: 1, scope: !49)
!61 = !DILocalVariable(name: "obj", arg: 1, scope: !2, file: !3, line: 21, type: !8)
!62 = !DILocation(line: 21, column: 30, scope: !2)
!63 = !DILocation(line: 22, column: 11, scope: !2)
!64 = !DILocation(line: 24, column: 5, scope: !2)
!65 = !DILocalVariable(name: "tuple", arg: 1, scope: !22, file: !3, line: 28, type: !8)
!66 = !DILocation(line: 28, column: 30, scope: !22)
!67 = !DILocalVariable(name: "idx", arg: 2, scope: !22, file: !3, line: 28, type: !17)
!68 = !DILocation(line: 28, column: 41, scope: !22)
!69 = !DILocation(line: 29, column: 11, scope: !22)
!70 = !DILocation(line: 30, column: 11, scope: !22)
!71 = !DILocation(line: 32, column: 5, scope: !22)
!72 = !DILocalVariable(name: "list", arg: 1, scope: !27, file: !3, line: 36, type: !8)
!73 = !DILocation(line: 36, column: 29, scope: !27)
!74 = !DILocalVariable(name: "idx", arg: 2, scope: !27, file: !3, line: 36, type: !17)
!75 = !DILocation(line: 36, column: 39, scope: !27)
!76 = !DILocation(line: 37, column: 11, scope: !27)
!77 = !DILocation(line: 38, column: 11, scope: !27)
!78 = !DILocation(line: 40, column: 5, scope: !27)
!79 = !DILocalVariable(name: "count", arg: 1, scope: !14, file: !3, line: 44, type: !17)
!80 = !DILocation(line: 44, column: 25, scope: !14)
!81 = !DILocalVariable(name: "is_tuple", arg: 2, scope: !14, file: !3, line: 44, type: !17)
!82 = !DILocation(line: 44, column: 36, scope: !14)
!83 = !DILocalVariable(name: "py_strings", arg: 3, scope: !14, file: !3, line: 44, type: !8)
!84 = !DILocation(line: 44, column: 52, scope: !14)
!85 = !DILocalVariable(name: "strings", scope: !14, file: !3, line: 46, type: !11)
!86 = !DILocation(line: 46, column: 15, scope: !14)
!87 = !DILocation(line: 48, column: 58, scope: !14)
!88 = !DILocation(line: 48, column: 56, scope: !14)
!89 = !DILocation(line: 48, column: 28, scope: !14)
!90 = !DILocation(line: 48, column: 15, scope: !14)
!91 = !DILocation(line: 48, column: 13, scope: !14)
!92 = !DILocation(line: 50, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !14, file: !3, line: 50, column: 9)
!94 = !DILocation(line: 50, column: 17, scope: !93)
!95 = !DILocation(line: 50, column: 9, scope: !14)
!96 = !DILocation(line: 51, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 50, column: 26)
!98 = !DILocation(line: 52, column: 9, scope: !97)
!99 = !DILocation(line: 56, column: 12, scope: !14)
!100 = !DILocation(line: 56, column: 5, scope: !14)
!101 = !DILocation(line: 56, column: 45, scope: !14)
!102 = !DILocation(line: 56, column: 43, scope: !14)
!103 = !DILocalVariable(name: "idx", scope: !104, file: !3, line: 59, type: !17)
!104 = distinct !DILexicalBlock(scope: !14, file: !3, line: 58, column: 5)
!105 = !DILocation(line: 59, column: 13, scope: !104)
!106 = !DILocation(line: 60, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 60, column: 9)
!108 = !DILocation(line: 60, column: 14, scope: !107)
!109 = !DILocation(line: 60, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 60, column: 9)
!111 = !DILocation(line: 60, column: 27, scope: !110)
!112 = !DILocation(line: 60, column: 25, scope: !110)
!113 = !DILocation(line: 60, column: 9, scope: !107)
!114 = !DILocalVariable(name: "s", scope: !115, file: !3, line: 61, type: !6)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 60, column: 41)
!116 = !DILocation(line: 61, column: 19, scope: !115)
!117 = !DILocation(line: 62, column: 18, scope: !115)
!118 = !DILocation(line: 63, column: 37, scope: !115)
!119 = !DILocation(line: 63, column: 49, scope: !115)
!120 = !DILocation(line: 63, column: 20, scope: !115)
!121 = !DILocation(line: 64, column: 36, scope: !115)
!122 = !DILocation(line: 64, column: 48, scope: !115)
!123 = !DILocation(line: 64, column: 20, scope: !115)
!124 = !DILocation(line: 61, column: 23, scope: !115)
!125 = !DILocation(line: 65, column: 19, scope: !115)
!126 = !DILocation(line: 66, column: 9, scope: !115)
!127 = !DILocation(line: 60, column: 34, scope: !110)
!128 = !DILocation(line: 60, column: 9, scope: !110)
!129 = distinct !{!129, !113, !130, !131}
!130 = !DILocation(line: 66, column: 9, scope: !107)
!131 = !{!"llvm.loop.mustprogress"}
!132 = !DILocation(line: 69, column: 10, scope: !14)
!133 = !DILocation(line: 69, column: 5, scope: !14)
!134 = !DILocation(line: 70, column: 5, scope: !14)
!135 = !DILocation(line: 71, column: 1, scope: !14)
!136 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 73, type: !137, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !18)
!137 = !DISubroutineType(types: !138)
!138 = !{!17}
!139 = !DILocalVariable(name: "count", scope: !136, file: !3, line: 74, type: !17)
!140 = !DILocation(line: 74, column: 9, scope: !136)
!141 = !DILocalVariable(name: "is_tuple", scope: !136, file: !3, line: 75, type: !17)
!142 = !DILocation(line: 75, column: 9, scope: !136)
!143 = !DILocalVariable(name: "py_strings", scope: !136, file: !3, line: 76, type: !8)
!144 = !DILocation(line: 76, column: 11, scope: !136)
!145 = !DILocation(line: 79, column: 24, scope: !136)
!146 = !DILocation(line: 79, column: 5, scope: !136)
!147 = !DILocation(line: 80, column: 24, scope: !136)
!148 = !DILocation(line: 80, column: 5, scope: !136)
!149 = !DILocation(line: 81, column: 24, scope: !136)
!150 = !DILocation(line: 81, column: 5, scope: !136)
!151 = !DILocation(line: 84, column: 17, scope: !136)
!152 = !DILocation(line: 84, column: 23, scope: !136)
!153 = !DILocation(line: 84, column: 5, scope: !136)
!154 = !DILocation(line: 85, column: 17, scope: !136)
!155 = !DILocation(line: 85, column: 26, scope: !136)
!156 = !DILocation(line: 85, column: 31, scope: !136)
!157 = !DILocation(line: 85, column: 34, scope: !136)
!158 = !DILocation(line: 85, column: 43, scope: !136)
!159 = !DILocation(line: 85, column: 5, scope: !136)
!160 = !DILocalVariable(name: "result", scope: !136, file: !3, line: 88, type: !17)
!161 = !DILocation(line: 88, column: 9, scope: !136)
!162 = !DILocation(line: 88, column: 34, scope: !136)
!163 = !DILocation(line: 88, column: 41, scope: !136)
!164 = !DILocation(line: 88, column: 51, scope: !136)
!165 = !DILocation(line: 88, column: 18, scope: !136)
!166 = !DILocation(line: 92, column: 5, scope: !136)
!167 = !DILocation(line: 95, column: 5, scope: !136)
!168 = !DILocation(line: 97, column: 12, scope: !136)
!169 = !DILocation(line: 97, column: 5, scope: !136)
!170 = distinct !DISubprogram(name: "memset", scope: !171, file: !171, line: 12, type: !172, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !18)
!171 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!172 = !DISubroutineType(types: !173)
!173 = !{!8, !8, !17, !41}
!174 = !DILocalVariable(name: "dst", arg: 1, scope: !170, file: !171, line: 12, type: !8)
!175 = !DILocation(line: 12, column: 20, scope: !170)
!176 = !DILocalVariable(name: "s", arg: 2, scope: !170, file: !171, line: 12, type: !17)
!177 = !DILocation(line: 12, column: 29, scope: !170)
!178 = !DILocalVariable(name: "count", arg: 3, scope: !170, file: !171, line: 12, type: !41)
!179 = !DILocation(line: 12, column: 39, scope: !170)
!180 = !DILocalVariable(name: "a", scope: !170, file: !171, line: 13, type: !6)
!181 = !DILocation(line: 13, column: 9, scope: !170)
!182 = !DILocation(line: 13, column: 13, scope: !170)
!183 = !DILocation(line: 14, column: 3, scope: !170)
!184 = !DILocation(line: 14, column: 15, scope: !170)
!185 = !DILocation(line: 14, column: 18, scope: !170)
!186 = !DILocation(line: 15, column: 12, scope: !170)
!187 = !DILocation(line: 15, column: 7, scope: !170)
!188 = !DILocation(line: 15, column: 10, scope: !170)
!189 = distinct !{!189, !183, !186, !131}
!190 = !DILocation(line: 16, column: 10, scope: !170)
!191 = !DILocation(line: 16, column: 3, scope: !170)
