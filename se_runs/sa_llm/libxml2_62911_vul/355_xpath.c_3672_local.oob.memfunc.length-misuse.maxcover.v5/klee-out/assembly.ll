; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/355_xpath.c_3672_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/355_xpath.c_3672_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8* }
%struct._xmlXPathObject = type { i32, i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"creating nodeset\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"node1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"node2\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/355_xpath.c_3672_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !30 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !42 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !48, metadata !DIExpression()), !dbg !49
  %3 = load i64, i64* %2, align 8, !dbg !50
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !51
  ret i8* %4, !dbg !52
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode** @xmlXPathNodeSetCreate(%struct._xmlNode* noundef %0) #0 !dbg !53 {
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNode**, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %3, metadata !58, metadata !DIExpression()), !dbg !59
  %4 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !60
  %5 = bitcast i8* %4 to %struct._xmlNode**, !dbg !61
  store %struct._xmlNode** %5, %struct._xmlNode*** %3, align 8, !dbg !59
  %6 = load %struct._xmlNode**, %struct._xmlNode*** %3, align 8, !dbg !62
  %7 = icmp ne %struct._xmlNode** %6, null, !dbg !62
  br i1 %7, label %8, label %11, !dbg !64

8:                                                ; preds = %1
  %9 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !65
  %10 = load %struct._xmlNode**, %struct._xmlNode*** %3, align 8, !dbg !67
  store %struct._xmlNode* %9, %struct._xmlNode** %10, align 8, !dbg !68
  br label %11, !dbg !69

11:                                               ; preds = %8, %1
  %12 = load %struct._xmlNode**, %struct._xmlNode*** %3, align 8, !dbg !70
  ret %struct._xmlNode** %12, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2) #0 !dbg !72 {
  %4 = alloca %struct._xmlXPathObject*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlXPathObject*, align 8
  %9 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !75, metadata !DIExpression()), !dbg !76
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !77, metadata !DIExpression()), !dbg !78
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %8, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %9, metadata !83, metadata !DIExpression()), !dbg !84
  %10 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !85
  store %struct._xmlNode* %10, %struct._xmlNode** %9, align 8, !dbg !84
  %11 = call i8* @xmlMalloc(i64 noundef 16), !dbg !86
  %12 = bitcast i8* %11 to %struct._xmlXPathObject*, !dbg !87
  store %struct._xmlXPathObject* %12, %struct._xmlXPathObject** %8, align 8, !dbg !88
  %13 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !89
  %14 = icmp eq %struct._xmlXPathObject* %13, null, !dbg !91
  br i1 %14, label %15, label %16, !dbg !92

15:                                               ; preds = %3
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !93
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %4, align 8, !dbg !95
  br label %30, !dbg !95

16:                                               ; preds = %3
  %17 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !96
  %18 = bitcast %struct._xmlXPathObject* %17 to i8*, !dbg !97
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !97
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !98
  %21 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %20, i32 0, i32 0, !dbg !99
  store i32 1, i32* %21, align 8, !dbg !100
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !101
  %23 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %22, i32 0, i32 1, !dbg !102
  store i32 0, i32* %23, align 4, !dbg !103
  %24 = load %struct._xmlNode*, %struct._xmlNode** %9, align 8, !dbg !104
  %25 = call %struct._xmlNode** @xmlXPathNodeSetCreate(%struct._xmlNode* noundef %24), !dbg !105
  %26 = bitcast %struct._xmlNode** %25 to i8*, !dbg !105
  %27 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !106
  %28 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %27, i32 0, i32 2, !dbg !107
  store i8* %26, i8** %28, align 8, !dbg !108
  %29 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %8, align 8, !dbg !109
  store %struct._xmlXPathObject* %29, %struct._xmlXPathObject** %4, align 8, !dbg !110
  br label %30, !dbg !110

30:                                               ; preds = %16, %15
  %31 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !111
  ret %struct._xmlXPathObject* %31, !dbg !111
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %4, metadata !119, metadata !DIExpression()), !dbg !120
  %6 = bitcast %struct._xmlNode* %2 to i8*, !dbg !121
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  %7 = bitcast %struct._xmlNode* %3 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = bitcast i32* %4 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !126
  %9 = load i32, i32* %4, align 4, !dbg !127
  %10 = icmp sge i32 %9, 0, !dbg !128
  %11 = zext i1 %10 to i32, !dbg !128
  %12 = sext i32 %11 to i64, !dbg !127
  call void @klee_assume(i64 noundef %12), !dbg !129
  %13 = load i32, i32* %4, align 4, !dbg !130
  %14 = icmp sle i32 %13, 100, !dbg !131
  %15 = zext i1 %14 to i32, !dbg !131
  %16 = sext i32 %15 to i64, !dbg !130
  call void @klee_assume(i64 noundef %16), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %5, metadata !133, metadata !DIExpression()), !dbg !134
  %17 = load i32, i32* %4, align 4, !dbg !135
  %18 = call %struct._xmlXPathObject* @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %2, %struct._xmlNode* noundef %3, i32 noundef %17), !dbg !136
  store %struct._xmlXPathObject* %18, %struct._xmlXPathObject** %5, align 8, !dbg !134
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !137
  %20 = icmp ne %struct._xmlXPathObject* %19, null, !dbg !139
  br i1 %20, label %21, label %23, !dbg !140

21:                                               ; preds = %0
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !141
  br label %23, !dbg !143

23:                                               ; preds = %21, %0
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !144
  %25 = icmp ne %struct._xmlXPathObject* %24, null, !dbg !144
  br i1 %25, label %26, label %38, !dbg !146

26:                                               ; preds = %23
  %27 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !147
  %28 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %27, i32 0, i32 2, !dbg !150
  %29 = load i8*, i8** %28, align 8, !dbg !150
  %30 = icmp ne i8* %29, null, !dbg !147
  br i1 %30, label %31, label %35, !dbg !151

31:                                               ; preds = %26
  %32 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !152
  %33 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %32, i32 0, i32 2, !dbg !154
  %34 = load i8*, i8** %33, align 8, !dbg !154
  call void @free(i8* noundef %34) #7, !dbg !155
  br label %35, !dbg !156

35:                                               ; preds = %31, %26
  %36 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %5, align 8, !dbg !157
  %37 = bitcast %struct._xmlXPathObject* %36 to i8*, !dbg !157
  call void @free(i8* noundef %37) #7, !dbg !158
  br label %38, !dbg !159

38:                                               ; preds = %35, %23
  ret i32 0, !dbg !160
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !173
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

!llvm.dbg.cu = !{!0, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/355_xpath.c_3672_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "411e5375c0c0f74b32f0e00850838e96")
!2 = !{!3, !11, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 22, size: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !1, line: 23, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectPtr", file: !1, line: 11, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 16, size: 128, elements: !15)
!15 = !{!16, !18, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !1, line: 17, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "boolval", scope: !14, file: !1, line: 18, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !14, file: !1, line: 19, baseType: !10, size: 64, offset: 64)
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
!30 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 27, type: !31, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !10, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{}
!37 = !DILocalVariable(name: "ctxt", arg: 1, scope: !30, file: !1, line: 27, type: !10)
!38 = !DILocation(line: 27, column: 30, scope: !30)
!39 = !DILocalVariable(name: "msg", arg: 2, scope: !30, file: !1, line: 27, type: !33)
!40 = !DILocation(line: 27, column: 48, scope: !30)
!41 = !DILocation(line: 29, column: 1, scope: !30)
!42 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !43, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!43 = !DISubroutineType(types: !44)
!44 = !{!10, !45}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !42, file: !1, line: 31, type: !45)
!49 = !DILocation(line: 31, column: 24, scope: !42)
!50 = !DILocation(line: 32, column: 19, scope: !42)
!51 = !DILocation(line: 32, column: 12, scope: !42)
!52 = !DILocation(line: 32, column: 5, scope: !42)
!53 = distinct !DISubprogram(name: "xmlXPathNodeSetCreate", scope: !1, file: !1, line: 35, type: !54, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!54 = !DISubroutineType(types: !55)
!55 = !{!3, !4}
!56 = !DILocalVariable(name: "val", arg: 1, scope: !53, file: !1, line: 35, type: !4)
!57 = !DILocation(line: 35, column: 46, scope: !53)
!58 = !DILocalVariable(name: "nodeset", scope: !53, file: !1, line: 36, type: !3)
!59 = !DILocation(line: 36, column: 17, scope: !53)
!60 = !DILocation(line: 36, column: 40, scope: !53)
!61 = !DILocation(line: 36, column: 27, scope: !53)
!62 = !DILocation(line: 37, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !53, file: !1, line: 37, column: 9)
!64 = !DILocation(line: 37, column: 9, scope: !53)
!65 = !DILocation(line: 38, column: 20, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 37, column: 18)
!67 = !DILocation(line: 38, column: 10, scope: !66)
!68 = !DILocation(line: 38, column: 18, scope: !66)
!69 = !DILocation(line: 39, column: 5, scope: !66)
!70 = !DILocation(line: 40, column: 12, scope: !53)
!71 = !DILocation(line: 40, column: 5, scope: !53)
!72 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 44, type: !73, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!73 = !DISubroutineType(types: !74)
!74 = !{!11, !4, !4, !17}
!75 = !DILocalVariable(name: "node1", arg: 1, scope: !72, file: !1, line: 44, type: !4)
!76 = !DILocation(line: 44, column: 50, scope: !72)
!77 = !DILocalVariable(name: "node2", arg: 2, scope: !72, file: !1, line: 44, type: !4)
!78 = !DILocation(line: 44, column: 68, scope: !72)
!79 = !DILocalVariable(name: "context", arg: 3, scope: !72, file: !1, line: 44, type: !17)
!80 = !DILocation(line: 44, column: 79, scope: !72)
!81 = !DILocalVariable(name: "ret", scope: !72, file: !1, line: 45, type: !11)
!82 = !DILocation(line: 45, column: 23, scope: !72)
!83 = !DILocalVariable(name: "val", scope: !72, file: !1, line: 46, type: !4)
!84 = !DILocation(line: 46, column: 16, scope: !72)
!85 = !DILocation(line: 46, column: 22, scope: !72)
!86 = !DILocation(line: 48, column: 31, scope: !72)
!87 = !DILocation(line: 48, column: 11, scope: !72)
!88 = !DILocation(line: 48, column: 9, scope: !72)
!89 = !DILocation(line: 49, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !72, file: !1, line: 49, column: 9)
!91 = !DILocation(line: 49, column: 13, scope: !90)
!92 = !DILocation(line: 49, column: 9, scope: !72)
!93 = !DILocation(line: 50, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 49, column: 22)
!95 = !DILocation(line: 51, column: 9, scope: !94)
!96 = !DILocation(line: 53, column: 12, scope: !72)
!97 = !DILocation(line: 53, column: 5, scope: !72)
!98 = !DILocation(line: 54, column: 5, scope: !72)
!99 = !DILocation(line: 54, column: 10, scope: !72)
!100 = !DILocation(line: 54, column: 15, scope: !72)
!101 = !DILocation(line: 55, column: 5, scope: !72)
!102 = !DILocation(line: 55, column: 10, scope: !72)
!103 = !DILocation(line: 55, column: 18, scope: !72)
!104 = !DILocation(line: 57, column: 45, scope: !72)
!105 = !DILocation(line: 57, column: 23, scope: !72)
!106 = !DILocation(line: 57, column: 5, scope: !72)
!107 = !DILocation(line: 57, column: 10, scope: !72)
!108 = !DILocation(line: 57, column: 21, scope: !72)
!109 = !DILocation(line: 60, column: 12, scope: !72)
!110 = !DILocation(line: 60, column: 5, scope: !72)
!111 = !DILocation(line: 61, column: 1, scope: !72)
!112 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !113, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!113 = !DISubroutineType(types: !114)
!114 = !{!17}
!115 = !DILocalVariable(name: "node1", scope: !112, file: !1, line: 65, type: !6)
!116 = !DILocation(line: 65, column: 13, scope: !112)
!117 = !DILocalVariable(name: "node2", scope: !112, file: !1, line: 65, type: !6)
!118 = !DILocation(line: 65, column: 20, scope: !112)
!119 = !DILocalVariable(name: "context", scope: !112, file: !1, line: 66, type: !17)
!120 = !DILocation(line: 66, column: 9, scope: !112)
!121 = !DILocation(line: 69, column: 24, scope: !112)
!122 = !DILocation(line: 69, column: 5, scope: !112)
!123 = !DILocation(line: 70, column: 24, scope: !112)
!124 = !DILocation(line: 70, column: 5, scope: !112)
!125 = !DILocation(line: 71, column: 24, scope: !112)
!126 = !DILocation(line: 71, column: 5, scope: !112)
!127 = !DILocation(line: 74, column: 17, scope: !112)
!128 = !DILocation(line: 74, column: 25, scope: !112)
!129 = !DILocation(line: 74, column: 5, scope: !112)
!130 = !DILocation(line: 75, column: 17, scope: !112)
!131 = !DILocation(line: 75, column: 25, scope: !112)
!132 = !DILocation(line: 75, column: 5, scope: !112)
!133 = !DILocalVariable(name: "result", scope: !112, file: !1, line: 78, type: !11)
!134 = !DILocation(line: 78, column: 23, scope: !112)
!135 = !DILocation(line: 78, column: 68, scope: !112)
!136 = !DILocation(line: 78, column: 32, scope: !112)
!137 = !DILocation(line: 82, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 82, column: 9)
!139 = !DILocation(line: 82, column: 16, scope: !138)
!140 = !DILocation(line: 82, column: 9, scope: !112)
!141 = !DILocation(line: 91, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 82, column: 25)
!143 = !DILocation(line: 92, column: 5, scope: !142)
!144 = !DILocation(line: 95, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !112, file: !1, line: 95, column: 9)
!146 = !DILocation(line: 95, column: 9, scope: !112)
!147 = !DILocation(line: 96, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 96, column: 13)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 95, column: 17)
!150 = !DILocation(line: 96, column: 21, scope: !148)
!151 = !DILocation(line: 96, column: 13, scope: !149)
!152 = !DILocation(line: 97, column: 18, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !1, line: 96, column: 33)
!154 = !DILocation(line: 97, column: 26, scope: !153)
!155 = !DILocation(line: 97, column: 13, scope: !153)
!156 = !DILocation(line: 98, column: 9, scope: !153)
!157 = !DILocation(line: 99, column: 14, scope: !149)
!158 = !DILocation(line: 99, column: 9, scope: !149)
!159 = !DILocation(line: 100, column: 5, scope: !149)
!160 = !DILocation(line: 102, column: 5, scope: !112)
!161 = distinct !DISubprogram(name: "memset", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !36)
!162 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!163 = !DISubroutineType(types: !164)
!164 = !{!10, !10, !17, !45}
!165 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !162, line: 12, type: !10)
!166 = !DILocation(line: 12, column: 20, scope: !161)
!167 = !DILocalVariable(name: "s", arg: 2, scope: !161, file: !162, line: 12, type: !17)
!168 = !DILocation(line: 12, column: 29, scope: !161)
!169 = !DILocalVariable(name: "count", arg: 3, scope: !161, file: !162, line: 12, type: !45)
!170 = !DILocation(line: 12, column: 39, scope: !161)
!171 = !DILocalVariable(name: "a", scope: !161, file: !162, line: 13, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!173 = !DILocation(line: 13, column: 9, scope: !161)
!174 = !DILocation(line: 13, column: 13, scope: !161)
!175 = !DILocation(line: 14, column: 3, scope: !161)
!176 = !DILocation(line: 14, column: 15, scope: !161)
!177 = !DILocation(line: 14, column: 18, scope: !161)
!178 = !DILocation(line: 15, column: 12, scope: !161)
!179 = !DILocation(line: 15, column: 7, scope: !161)
!180 = !DILocation(line: 15, column: 10, scope: !161)
!181 = distinct !{!181, !175, !178, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !DILocation(line: 16, column: 10, scope: !161)
!184 = !DILocation(line: 16, column: 3, scope: !161)
