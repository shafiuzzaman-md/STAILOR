; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/348_xpath.c_4004_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/348_xpath.c_4004_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, %struct._xmlNode**, i32, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [17 x i8] c"merging nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"merging nodeset hit limit\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"alloc_result\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/348_xpath.c_4004_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !19 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !28, metadata !DIExpression()), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !31 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i64, i64* %2, align 8, !dbg !39
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !40
  ret i8* %4, !dbg !41
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathNodeSetMerge(%struct._xmlXPathObject* noundef %0, %struct._xmlXPathObject* noundef %1) #0 !dbg !42 {
  %3 = alloca %struct._xmlXPathObject*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlXPathObject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode**, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !55, metadata !DIExpression()), !dbg !56
  store %struct._xmlXPathObject* %1, %struct._xmlXPathObject** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %6, metadata !59, metadata !DIExpression()), !dbg !60
  %8 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !61
  %9 = icmp eq %struct._xmlXPathObject* %8, null, !dbg !63
  br i1 %9, label %13, label %10, !dbg !64

10:                                               ; preds = %2
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !65
  %12 = icmp eq %struct._xmlXPathObject* %11, null, !dbg !66
  br i1 %12, label %13, label %14, !dbg !67

13:                                               ; preds = %10, %2
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %3, align 8, !dbg !68
  br label %62, !dbg !68

14:                                               ; preds = %10
  %15 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !69
  %16 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %15, i32 0, i32 2, !dbg !71
  %17 = load i32, i32* %16, align 8, !dbg !71
  %18 = icmp eq i32 %17, 0, !dbg !72
  br i1 %18, label %19, label %21, !dbg !73

19:                                               ; preds = %14
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !74
  store %struct._xmlXPathObject* %20, %struct._xmlXPathObject** %3, align 8, !dbg !75
  br label %62, !dbg !75

21:                                               ; preds = %14
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !76
  %23 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %22, i32 0, i32 3, !dbg !78
  %24 = load i32, i32* %23, align 4, !dbg !78
  %25 = icmp eq i32 %24, 0, !dbg !79
  br i1 %25, label %26, label %44, !dbg !80

26:                                               ; preds = %21
  %27 = call i8* @xmlMalloc(i64 noundef 80), !dbg !81
  %28 = bitcast i8* %27 to %struct._xmlNode**, !dbg !83
  %29 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !84
  %30 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %29, i32 0, i32 1, !dbg !85
  store %struct._xmlNode** %28, %struct._xmlNode*** %30, align 8, !dbg !86
  %31 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !87
  %32 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %31, i32 0, i32 1, !dbg !89
  %33 = load %struct._xmlNode**, %struct._xmlNode*** %32, align 8, !dbg !89
  %34 = icmp eq %struct._xmlNode** %33, null, !dbg !90
  br i1 %34, label %35, label %36, !dbg !91

35:                                               ; preds = %26
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !92
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %3, align 8, !dbg !94
  br label %62, !dbg !94

36:                                               ; preds = %26
  %37 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !95
  %38 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %37, i32 0, i32 1, !dbg !96
  %39 = load %struct._xmlNode**, %struct._xmlNode*** %38, align 8, !dbg !96
  %40 = bitcast %struct._xmlNode** %39 to i8*, !dbg !97
  %41 = call i8* @memset(i8* %40, i32 0, i64 80), !dbg !97
  %42 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !98
  %43 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %42, i32 0, i32 3, !dbg !99
  store i32 10, i32* %43, align 4, !dbg !100
  br label %60, !dbg !101

44:                                               ; preds = %21
  %45 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !102
  %46 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %45, i32 0, i32 2, !dbg !104
  %47 = load i32, i32* %46, align 8, !dbg !104
  %48 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !105
  %49 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %48, i32 0, i32 3, !dbg !106
  %50 = load i32, i32* %49, align 4, !dbg !106
  %51 = icmp sge i32 %47, %50, !dbg !107
  br i1 %51, label %52, label %59, !dbg !108

52:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %7, metadata !109, metadata !DIExpression()), !dbg !111
  %53 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !112
  %54 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %53, i32 0, i32 3, !dbg !114
  %55 = load i32, i32* %54, align 4, !dbg !114
  %56 = icmp sge i32 %55, 1000000, !dbg !115
  br i1 %56, label %57, label %58, !dbg !116

57:                                               ; preds = %52
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)), !dbg !117
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %3, align 8, !dbg !119
  br label %62, !dbg !119

58:                                               ; preds = %52
  br label %59, !dbg !120

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %36
  %61 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !121
  store %struct._xmlXPathObject* %61, %struct._xmlXPathObject** %3, align 8, !dbg !122
  br label %62, !dbg !122

62:                                               ; preds = %60, %57, %35, %19, %13
  %63 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !123
  ret %struct._xmlXPathObject* %63, !dbg !123
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !124 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject, align 8
  %3 = alloca %struct._xmlXPathObject, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %2, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %3, metadata !129, metadata !DIExpression()), !dbg !130
  %6 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !131
  store i32 0, i32* %6, align 4, !dbg !132
  %7 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 2, !dbg !133
  store i32 0, i32* %7, align 8, !dbg !134
  %8 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !135
  store %struct._xmlNode** null, %struct._xmlNode*** %8, align 8, !dbg !136
  %9 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %3, i32 0, i32 2, !dbg !137
  store i32 1, i32* %9, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %4, metadata !139, metadata !DIExpression()), !dbg !140
  %10 = bitcast i8** %4 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !142
  %11 = load i8*, i8** %4, align 8, !dbg !143
  %12 = icmp ne i8* %11, null, !dbg !144
  %13 = zext i1 %12 to i32, !dbg !144
  %14 = sext i32 %13 to i64, !dbg !143
  call void @klee_assume(i64 noundef %14), !dbg !145
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !146, metadata !DIExpression()), !dbg !147
  %15 = call %struct._xmlXPathObject* @xmlXPathNodeSetMerge(%struct._xmlXPathObject* noundef %2, %struct._xmlXPathObject* noundef %3), !dbg !148
  store %struct._xmlXPathObject* %15, %struct._xmlXPathObject** %5, align 8, !dbg !147
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !149
  %17 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !150
  %18 = load %struct._xmlNode**, %struct._xmlNode*** %17, align 8, !dbg !150
  %19 = icmp ne %struct._xmlNode** %18, null, !dbg !152
  br i1 %19, label %20, label %24, !dbg !153

20:                                               ; preds = %0
  %21 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !154
  %22 = load %struct._xmlNode**, %struct._xmlNode*** %21, align 8, !dbg !154
  %23 = bitcast %struct._xmlNode** %22 to i8*, !dbg !156
  call void @free(i8* noundef %23) #7, !dbg !157
  br label %24, !dbg !158

24:                                               ; preds = %20, %0
  ret i32 0, !dbg !159
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !160 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !DIExpression()), !dbg !165
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !166, metadata !DIExpression()), !dbg !167
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %7, metadata !170, metadata !DIExpression()), !dbg !172
  %8 = load i8*, i8** %4, align 8, !dbg !173
  store i8* %8, i8** %7, align 8, !dbg !172
  br label %9, !dbg !174

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !175
  %11 = add i64 %10, -1, !dbg !175
  store i64 %11, i64* %6, align 8, !dbg !175
  %12 = icmp ugt i64 %10, 0, !dbg !176
  br i1 %12, label %13, label %18, !dbg !174

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !177
  %15 = trunc i32 %14 to i8, !dbg !177
  %16 = load i8*, i8** %7, align 8, !dbg !178
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !178
  store i8* %17, i8** %7, align 8, !dbg !178
  store i8 %15, i8* %16, align 1, !dbg !179
  br label %9, !dbg !174, !llvm.loop !180

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !182
  ret i8* %19, !dbg !183
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/348_xpath.c_4004_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "584c75ce08104ca3d992f432f7792aea")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
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
!19 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 28, type: !20, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !3, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{}
!26 = !DILocalVariable(name: "ctxt", arg: 1, scope: !19, file: !1, line: 28, type: !3)
!27 = !DILocation(line: 28, column: 30, scope: !19)
!28 = !DILocalVariable(name: "msg", arg: 2, scope: !19, file: !1, line: 28, type: !22)
!29 = !DILocation(line: 28, column: 48, scope: !19)
!30 = !DILocation(line: 30, column: 1, scope: !19)
!31 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 32, type: !32, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!32 = !DISubroutineType(types: !33)
!33 = !{!3, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocalVariable(name: "size", arg: 1, scope: !31, file: !1, line: 32, type: !34)
!38 = !DILocation(line: 32, column: 24, scope: !31)
!39 = !DILocation(line: 33, column: 19, scope: !31)
!40 = !DILocation(line: 33, column: 12, scope: !31)
!41 = !DILocation(line: 33, column: 5, scope: !31)
!42 = distinct !DISubprogram(name: "xmlXPathNodeSetMerge", scope: !1, file: !1, line: 37, type: !43, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, !45}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 13, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 12, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 20, size: 192, elements: !49)
!49 = !{!50, !52, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !1, line: 21, baseType: !51, size: 32)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !48, file: !1, line: 22, baseType: !4, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !48, file: !1, line: 23, baseType: !51, size: 32, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !48, file: !1, line: 24, baseType: !51, size: 32, offset: 160)
!55 = !DILocalVariable(name: "set1", arg: 1, scope: !42, file: !1, line: 37, type: !45)
!56 = !DILocation(line: 37, column: 58, scope: !42)
!57 = !DILocalVariable(name: "set2", arg: 2, scope: !42, file: !1, line: 37, type: !45)
!58 = !DILocation(line: 37, column: 82, scope: !42)
!59 = !DILocalVariable(name: "i", scope: !42, file: !1, line: 38, type: !51)
!60 = !DILocation(line: 38, column: 9, scope: !42)
!61 = !DILocation(line: 40, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !1, line: 40, column: 9)
!63 = !DILocation(line: 40, column: 14, scope: !62)
!64 = !DILocation(line: 40, column: 22, scope: !62)
!65 = !DILocation(line: 40, column: 25, scope: !62)
!66 = !DILocation(line: 40, column: 30, scope: !62)
!67 = !DILocation(line: 40, column: 9, scope: !42)
!68 = !DILocation(line: 41, column: 9, scope: !62)
!69 = !DILocation(line: 43, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !42, file: !1, line: 43, column: 9)
!71 = !DILocation(line: 43, column: 15, scope: !70)
!72 = !DILocation(line: 43, column: 22, scope: !70)
!73 = !DILocation(line: 43, column: 9, scope: !42)
!74 = !DILocation(line: 44, column: 16, scope: !70)
!75 = !DILocation(line: 44, column: 9, scope: !70)
!76 = !DILocation(line: 46, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !42, file: !1, line: 46, column: 9)
!78 = !DILocation(line: 46, column: 15, scope: !77)
!79 = !DILocation(line: 46, column: 23, scope: !77)
!80 = !DILocation(line: 46, column: 9, scope: !42)
!81 = !DILocation(line: 47, column: 40, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 46, column: 29)
!83 = !DILocation(line: 47, column: 25, scope: !82)
!84 = !DILocation(line: 47, column: 9, scope: !82)
!85 = !DILocation(line: 47, column: 15, scope: !82)
!86 = !DILocation(line: 47, column: 23, scope: !82)
!87 = !DILocation(line: 49, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !82, file: !1, line: 49, column: 13)
!89 = !DILocation(line: 49, column: 19, scope: !88)
!90 = !DILocation(line: 49, column: 27, scope: !88)
!91 = !DILocation(line: 49, column: 13, scope: !82)
!92 = !DILocation(line: 50, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 49, column: 36)
!94 = !DILocation(line: 51, column: 13, scope: !93)
!95 = !DILocation(line: 54, column: 16, scope: !82)
!96 = !DILocation(line: 54, column: 22, scope: !82)
!97 = !DILocation(line: 54, column: 9, scope: !82)
!98 = !DILocation(line: 56, column: 9, scope: !82)
!99 = !DILocation(line: 56, column: 15, scope: !82)
!100 = !DILocation(line: 56, column: 23, scope: !82)
!101 = !DILocation(line: 57, column: 5, scope: !82)
!102 = !DILocation(line: 57, column: 16, scope: !103)
!103 = distinct !DILexicalBlock(scope: !77, file: !1, line: 57, column: 16)
!104 = !DILocation(line: 57, column: 22, scope: !103)
!105 = !DILocation(line: 57, column: 32, scope: !103)
!106 = !DILocation(line: 57, column: 38, scope: !103)
!107 = !DILocation(line: 57, column: 29, scope: !103)
!108 = !DILocation(line: 57, column: 16, scope: !77)
!109 = !DILocalVariable(name: "temp", scope: !110, file: !1, line: 58, type: !4)
!110 = distinct !DILexicalBlock(scope: !103, file: !1, line: 57, column: 47)
!111 = !DILocation(line: 58, column: 21, scope: !110)
!112 = !DILocation(line: 60, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 60, column: 13)
!114 = !DILocation(line: 60, column: 19, scope: !113)
!115 = !DILocation(line: 60, column: 27, scope: !113)
!116 = !DILocation(line: 60, column: 13, scope: !110)
!117 = !DILocation(line: 61, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !1, line: 60, column: 56)
!119 = !DILocation(line: 62, column: 13, scope: !118)
!120 = !DILocation(line: 65, column: 5, scope: !110)
!121 = !DILocation(line: 68, column: 12, scope: !42)
!122 = !DILocation(line: 68, column: 5, scope: !42)
!123 = !DILocation(line: 69, column: 1, scope: !42)
!124 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !125, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!125 = !DISubroutineType(types: !126)
!126 = !{!51}
!127 = !DILocalVariable(name: "set1", scope: !124, file: !1, line: 73, type: !47)
!128 = !DILocation(line: 73, column: 20, scope: !124)
!129 = !DILocalVariable(name: "set2", scope: !124, file: !1, line: 73, type: !47)
!130 = !DILocation(line: 73, column: 26, scope: !124)
!131 = !DILocation(line: 76, column: 10, scope: !124)
!132 = !DILocation(line: 76, column: 18, scope: !124)
!133 = !DILocation(line: 77, column: 10, scope: !124)
!134 = !DILocation(line: 77, column: 17, scope: !124)
!135 = !DILocation(line: 78, column: 10, scope: !124)
!136 = !DILocation(line: 78, column: 18, scope: !124)
!137 = !DILocation(line: 81, column: 10, scope: !124)
!138 = !DILocation(line: 81, column: 17, scope: !124)
!139 = !DILocalVariable(name: "alloc_result", scope: !124, file: !1, line: 84, type: !3)
!140 = !DILocation(line: 84, column: 11, scope: !124)
!141 = !DILocation(line: 85, column: 24, scope: !124)
!142 = !DILocation(line: 85, column: 5, scope: !124)
!143 = !DILocation(line: 89, column: 17, scope: !124)
!144 = !DILocation(line: 89, column: 30, scope: !124)
!145 = !DILocation(line: 89, column: 5, scope: !124)
!146 = !DILocalVariable(name: "result", scope: !124, file: !1, line: 92, type: !45)
!147 = !DILocation(line: 92, column: 23, scope: !124)
!148 = !DILocation(line: 92, column: 32, scope: !124)
!149 = !DILocation(line: 100, column: 5, scope: !124)
!150 = !DILocation(line: 103, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !124, file: !1, line: 103, column: 9)
!152 = !DILocation(line: 103, column: 9, scope: !151)
!153 = !DILocation(line: 103, column: 9, scope: !124)
!154 = !DILocation(line: 104, column: 19, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 103, column: 23)
!156 = !DILocation(line: 104, column: 14, scope: !155)
!157 = !DILocation(line: 104, column: 9, scope: !155)
!158 = !DILocation(line: 105, column: 5, scope: !155)
!159 = !DILocation(line: 107, column: 5, scope: !124)
!160 = distinct !DISubprogram(name: "memset", scope: !161, file: !161, line: 12, type: !162, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!161 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!162 = !DISubroutineType(types: !163)
!163 = !{!3, !3, !51, !34}
!164 = !DILocalVariable(name: "dst", arg: 1, scope: !160, file: !161, line: 12, type: !3)
!165 = !DILocation(line: 12, column: 20, scope: !160)
!166 = !DILocalVariable(name: "s", arg: 2, scope: !160, file: !161, line: 12, type: !51)
!167 = !DILocation(line: 12, column: 29, scope: !160)
!168 = !DILocalVariable(name: "count", arg: 3, scope: !160, file: !161, line: 12, type: !34)
!169 = !DILocation(line: 12, column: 39, scope: !160)
!170 = !DILocalVariable(name: "a", scope: !160, file: !161, line: 13, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!172 = !DILocation(line: 13, column: 9, scope: !160)
!173 = !DILocation(line: 13, column: 13, scope: !160)
!174 = !DILocation(line: 14, column: 3, scope: !160)
!175 = !DILocation(line: 14, column: 15, scope: !160)
!176 = !DILocation(line: 14, column: 18, scope: !160)
!177 = !DILocation(line: 15, column: 12, scope: !160)
!178 = !DILocation(line: 15, column: 7, scope: !160)
!179 = !DILocation(line: 15, column: 10, scope: !160)
!180 = distinct !{!180, !174, !177, !181}
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 16, column: 10, scope: !160)
!183 = !DILocation(line: 16, column: 3, scope: !160)
