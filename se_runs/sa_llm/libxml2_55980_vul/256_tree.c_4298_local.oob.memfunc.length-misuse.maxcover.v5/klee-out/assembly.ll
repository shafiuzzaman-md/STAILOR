; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/256_tree.c_4298_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/256_tree.c_4298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, i8*, i8*, i8* }
%struct._xmlDoc = type {}

@.str = private unnamed_addr constant [14 x i8] c"xmlStringText\00", align 1
@xmlStringText = dso_local global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@.str.1 = private unnamed_addr constant [19 x i8] c"xmlStringTextNoenc\00", align 1
@xmlStringTextNoenc = dso_local global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), align 8, !dbg !20
@.str.2 = private unnamed_addr constant [10 x i8] c"node_type\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"node_name\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"copying node\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"(ret != ((void*)0) && sizeof(xmlNode) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/256_tree.c_4298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCopyNode = private unnamed_addr constant [58 x i8] c"xmlNodePtr xmlCopyNode(xmlNodePtr, xmlDocPtr, xmlNodePtr)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !32 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !39 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load i64, i64* %2, align 8, !dbg !47
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !48
  ret i8* %4, !dbg !49
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca %struct._xmlDoc, align 1
  %4 = alloca %struct._xmlNode, align 8
  %5 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !55, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %4, metadata !59, metadata !DIExpression()), !dbg !60
  %6 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !61
  %7 = bitcast i32* %6 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !63
  %8 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 3, !dbg !64
  %9 = bitcast i8** %8 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !66
  %10 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 3, !dbg !67
  %11 = load i8*, i8** %10, align 8, !dbg !67
  %12 = load i8*, i8** @xmlStringText, align 8, !dbg !68
  %13 = icmp eq i8* %11, %12, !dbg !69
  br i1 %13, label %23, label %14, !dbg !70

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 3, !dbg !71
  %16 = load i8*, i8** %15, align 8, !dbg !71
  %17 = load i8*, i8** @xmlStringTextNoenc, align 8, !dbg !72
  %18 = icmp eq i8* %16, %17, !dbg !73
  br i1 %18, label %23, label %19, !dbg !74

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 3, !dbg !75
  %21 = load i8*, i8** %20, align 8, !dbg !75
  %22 = icmp eq i8* %21, null, !dbg !76
  br label %23, !dbg !74

23:                                               ; preds = %19, %14, %0
  %24 = phi i1 [ true, %14 ], [ true, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !74
  %26 = sext i32 %25 to i64, !dbg !77
  call void @klee_assume(i64 noundef %26), !dbg !78
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !79, metadata !DIExpression()), !dbg !80
  %27 = call %struct._xmlNode* @xmlCopyNode(%struct._xmlNode* noundef %2, %struct._xmlDoc* noundef %3, %struct._xmlNode* noundef %4), !dbg !81
  store %struct._xmlNode* %27, %struct._xmlNode** %5, align 8, !dbg !80
  %28 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !82
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !84
  br i1 %29, label %30, label %33, !dbg !85

30:                                               ; preds = %23
  %31 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !86
  %32 = bitcast %struct._xmlNode* %31 to i8*, !dbg !86
  call void @free(i8* noundef %32) #7, !dbg !88
  br label %33, !dbg !89

33:                                               ; preds = %30, %23
  ret i32 0, !dbg !90
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlNode* @xmlCopyNode(%struct._xmlNode* noundef %0, %struct._xmlDoc* noundef %1, %struct._xmlNode* noundef %2) #0 !dbg !91 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !96, metadata !DIExpression()), !dbg !97
  store %struct._xmlDoc* %1, %struct._xmlDoc** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !98, metadata !DIExpression()), !dbg !99
  store %struct._xmlNode* %2, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !102, metadata !DIExpression()), !dbg !103
  %9 = call i8* @xmlMalloc(i64 noundef 32), !dbg !104
  %10 = bitcast i8* %9 to %struct._xmlNode*, !dbg !105
  store %struct._xmlNode* %10, %struct._xmlNode** %8, align 8, !dbg !106
  %11 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !107
  %12 = icmp eq %struct._xmlNode* %11, null, !dbg !109
  br i1 %12, label %13, label %14, !dbg !110

13:                                               ; preds = %3
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !111
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !113
  br label %61, !dbg !113

14:                                               ; preds = %3
  %15 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !114
  %16 = bitcast %struct._xmlNode* %15 to i8*, !dbg !115
  %17 = call i8* @memset(i8* %16, i32 0, i64 32), !dbg !115
  %18 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !116
  %19 = icmp ne %struct._xmlNode* %18, null, !dbg !116
  br i1 %19, label %20, label %22, !dbg !116

20:                                               ; preds = %14
  br i1 true, label %21, label %22, !dbg !116

21:                                               ; preds = %20
  br label %24, !dbg !116

22:                                               ; preds = %20, %14
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlCopyNode, i64 0, i64 0)), !dbg !116
  br label %24, !dbg !116

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlCopyNode, i64 0, i64 0)), !dbg !117
  %26 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !118
  %27 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %26, i32 0, i32 0, !dbg !119
  %28 = load i32, i32* %27, align 8, !dbg !119
  %29 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !120
  %30 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %29, i32 0, i32 0, !dbg !121
  store i32 %28, i32* %30, align 8, !dbg !122
  %31 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !123
  %32 = bitcast %struct._xmlDoc* %31 to i8*, !dbg !123
  %33 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !124
  %34 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %33, i32 0, i32 1, !dbg !125
  store i8* %32, i8** %34, align 8, !dbg !126
  %35 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !127
  %36 = bitcast %struct._xmlNode* %35 to i8*, !dbg !127
  %37 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !128
  %38 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %37, i32 0, i32 2, !dbg !129
  store i8* %36, i8** %38, align 8, !dbg !130
  %39 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !131
  %40 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %39, i32 0, i32 3, !dbg !133
  %41 = load i8*, i8** %40, align 8, !dbg !133
  %42 = load i8*, i8** @xmlStringText, align 8, !dbg !134
  %43 = icmp eq i8* %41, %42, !dbg !135
  br i1 %43, label %44, label %48, !dbg !136

44:                                               ; preds = %24
  %45 = load i8*, i8** @xmlStringText, align 8, !dbg !137
  %46 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !138
  %47 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %46, i32 0, i32 3, !dbg !139
  store i8* %45, i8** %47, align 8, !dbg !140
  br label %59, !dbg !138

48:                                               ; preds = %24
  %49 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !141
  %50 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %49, i32 0, i32 3, !dbg !143
  %51 = load i8*, i8** %50, align 8, !dbg !143
  %52 = load i8*, i8** @xmlStringTextNoenc, align 8, !dbg !144
  %53 = icmp eq i8* %51, %52, !dbg !145
  br i1 %53, label %54, label %58, !dbg !146

54:                                               ; preds = %48
  %55 = load i8*, i8** @xmlStringTextNoenc, align 8, !dbg !147
  %56 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !148
  %57 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %56, i32 0, i32 3, !dbg !149
  store i8* %55, i8** %57, align 8, !dbg !150
  br label %58, !dbg !148

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !151
  store %struct._xmlNode* %60, %struct._xmlNode** %4, align 8, !dbg !152
  br label %61, !dbg !152

61:                                               ; preds = %59, %13
  %62 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !153
  ret %struct._xmlNode* %62, !dbg !153
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !DIExpression()), !dbg !161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i8** %7, metadata !164, metadata !DIExpression()), !dbg !166
  %8 = load i8*, i8** %4, align 8, !dbg !167
  store i8* %8, i8** %7, align 8, !dbg !166
  br label %9, !dbg !168

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !169
  %11 = add i64 %10, -1, !dbg !169
  store i64 %11, i64* %6, align 8, !dbg !169
  %12 = icmp ugt i64 %10, 0, !dbg !170
  br i1 %12, label %13, label %18, !dbg !168

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !171
  %15 = trunc i32 %14 to i8, !dbg !171
  %16 = load i8*, i8** %7, align 8, !dbg !172
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !172
  store i8* %17, i8** %7, align 8, !dbg !172
  store i8 %15, i8* %16, align 1, !dbg !173
  br label %9, !dbg !168, !llvm.loop !174

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %19, !dbg !177
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlStringText", scope: !2, file: !3, line: 37, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/256_tree.c_4298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ce1037907086f1994935163d0754934a")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 15, size: 256, elements: !10)
!10 = !{!11, !13, !14, !15}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !3, line: 16, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !9, file: !3, line: 17, baseType: !5, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !9, file: !3, line: 18, baseType: !5, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !3, line: 19, baseType: !16, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!0, !20}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "xmlStringTextNoenc", scope: !2, file: !3, line: 38, type: !16, isLocal: false, isDefinition: true)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 28, type: !33, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !16}
!35 = !{}
!36 = !DILocalVariable(name: "msg", arg: 1, scope: !32, file: !3, line: 28, type: !16)
!37 = !DILocation(line: 28, column: 35, scope: !32)
!38 = !DILocation(line: 30, column: 1, scope: !32)
!39 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 32, type: !40, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!40 = !DISubroutineType(types: !41)
!41 = !{!5, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !3, line: 32, type: !42)
!46 = !DILocation(line: 32, column: 24, scope: !39)
!47 = !DILocation(line: 33, column: 19, scope: !39)
!48 = !DILocation(line: 33, column: 12, scope: !39)
!49 = !DILocation(line: 33, column: 5, scope: !39)
!50 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 74, type: !51, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !35)
!51 = !DISubroutineType(types: !52)
!52 = !{!12}
!53 = !DILocalVariable(name: "node", scope: !50, file: !3, line: 76, type: !8)
!54 = !DILocation(line: 76, column: 13, scope: !50)
!55 = !DILocalVariable(name: "doc", scope: !50, file: !3, line: 77, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !3, line: 12, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 23, elements: !35)
!58 = !DILocation(line: 77, column: 12, scope: !50)
!59 = !DILocalVariable(name: "parent", scope: !50, file: !3, line: 78, type: !8)
!60 = !DILocation(line: 78, column: 13, scope: !50)
!61 = !DILocation(line: 81, column: 30, scope: !50)
!62 = !DILocation(line: 81, column: 24, scope: !50)
!63 = !DILocation(line: 81, column: 5, scope: !50)
!64 = !DILocation(line: 82, column: 30, scope: !50)
!65 = !DILocation(line: 82, column: 24, scope: !50)
!66 = !DILocation(line: 82, column: 5, scope: !50)
!67 = !DILocation(line: 85, column: 22, scope: !50)
!68 = !DILocation(line: 85, column: 30, scope: !50)
!69 = !DILocation(line: 85, column: 27, scope: !50)
!70 = !DILocation(line: 85, column: 44, scope: !50)
!71 = !DILocation(line: 86, column: 22, scope: !50)
!72 = !DILocation(line: 86, column: 30, scope: !50)
!73 = !DILocation(line: 86, column: 27, scope: !50)
!74 = !DILocation(line: 86, column: 49, scope: !50)
!75 = !DILocation(line: 87, column: 22, scope: !50)
!76 = !DILocation(line: 87, column: 27, scope: !50)
!77 = !DILocation(line: 85, column: 17, scope: !50)
!78 = !DILocation(line: 85, column: 5, scope: !50)
!79 = !DILocalVariable(name: "result", scope: !50, file: !3, line: 90, type: !6)
!80 = !DILocation(line: 90, column: 16, scope: !50)
!81 = !DILocation(line: 90, column: 25, scope: !50)
!82 = !DILocation(line: 93, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !50, file: !3, line: 93, column: 9)
!84 = !DILocation(line: 93, column: 16, scope: !83)
!85 = !DILocation(line: 93, column: 9, scope: !50)
!86 = !DILocation(line: 94, column: 14, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 93, column: 25)
!88 = !DILocation(line: 94, column: 9, scope: !87)
!89 = !DILocation(line: 95, column: 5, scope: !87)
!90 = !DILocation(line: 97, column: 5, scope: !50)
!91 = distinct !DISubprogram(name: "xmlCopyNode", scope: !3, file: !3, line: 41, type: !92, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !35)
!92 = !DISubroutineType(types: !93)
!93 = !{!6, !6, !94, !6}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !3, line: 13, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!96 = !DILocalVariable(name: "node", arg: 1, scope: !91, file: !3, line: 41, type: !6)
!97 = !DILocation(line: 41, column: 42, scope: !91)
!98 = !DILocalVariable(name: "doc", arg: 2, scope: !91, file: !3, line: 41, type: !94)
!99 = !DILocation(line: 41, column: 58, scope: !91)
!100 = !DILocalVariable(name: "parent", arg: 3, scope: !91, file: !3, line: 41, type: !6)
!101 = !DILocation(line: 41, column: 74, scope: !91)
!102 = !DILocalVariable(name: "ret", scope: !91, file: !3, line: 42, type: !6)
!103 = !DILocation(line: 42, column: 16, scope: !91)
!104 = !DILocation(line: 47, column: 24, scope: !91)
!105 = !DILocation(line: 47, column: 11, scope: !91)
!106 = !DILocation(line: 47, column: 9, scope: !91)
!107 = !DILocation(line: 48, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !91, file: !3, line: 48, column: 9)
!109 = !DILocation(line: 48, column: 13, scope: !108)
!110 = !DILocation(line: 48, column: 9, scope: !91)
!111 = !DILocation(line: 49, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !3, line: 48, column: 22)
!113 = !DILocation(line: 50, column: 9, scope: !112)
!114 = !DILocation(line: 54, column: 12, scope: !91)
!115 = !DILocation(line: 54, column: 5, scope: !91)
!116 = !DILocation(line: 57, column: 5, scope: !91)
!117 = !DILocation(line: 60, column: 5, scope: !91)
!118 = !DILocation(line: 62, column: 17, scope: !91)
!119 = !DILocation(line: 62, column: 23, scope: !91)
!120 = !DILocation(line: 62, column: 5, scope: !91)
!121 = !DILocation(line: 62, column: 10, scope: !91)
!122 = !DILocation(line: 62, column: 15, scope: !91)
!123 = !DILocation(line: 63, column: 16, scope: !91)
!124 = !DILocation(line: 63, column: 5, scope: !91)
!125 = !DILocation(line: 63, column: 10, scope: !91)
!126 = !DILocation(line: 63, column: 14, scope: !91)
!127 = !DILocation(line: 64, column: 19, scope: !91)
!128 = !DILocation(line: 64, column: 5, scope: !91)
!129 = !DILocation(line: 64, column: 10, scope: !91)
!130 = !DILocation(line: 64, column: 17, scope: !91)
!131 = !DILocation(line: 66, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !91, file: !3, line: 66, column: 9)
!133 = !DILocation(line: 66, column: 15, scope: !132)
!134 = !DILocation(line: 66, column: 23, scope: !132)
!135 = !DILocation(line: 66, column: 20, scope: !132)
!136 = !DILocation(line: 66, column: 9, scope: !91)
!137 = !DILocation(line: 67, column: 21, scope: !132)
!138 = !DILocation(line: 67, column: 9, scope: !132)
!139 = !DILocation(line: 67, column: 14, scope: !132)
!140 = !DILocation(line: 67, column: 19, scope: !132)
!141 = !DILocation(line: 68, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !132, file: !3, line: 68, column: 14)
!143 = !DILocation(line: 68, column: 20, scope: !142)
!144 = !DILocation(line: 68, column: 28, scope: !142)
!145 = !DILocation(line: 68, column: 25, scope: !142)
!146 = !DILocation(line: 68, column: 14, scope: !132)
!147 = !DILocation(line: 69, column: 21, scope: !142)
!148 = !DILocation(line: 69, column: 9, scope: !142)
!149 = !DILocation(line: 69, column: 14, scope: !142)
!150 = !DILocation(line: 69, column: 19, scope: !142)
!151 = !DILocation(line: 71, column: 12, scope: !91)
!152 = !DILocation(line: 71, column: 5, scope: !91)
!153 = !DILocation(line: 72, column: 1, scope: !91)
!154 = distinct !DISubprogram(name: "memset", scope: !155, file: !155, line: 12, type: !156, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !35)
!155 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!156 = !DISubroutineType(types: !157)
!157 = !{!5, !5, !12, !42}
!158 = !DILocalVariable(name: "dst", arg: 1, scope: !154, file: !155, line: 12, type: !5)
!159 = !DILocation(line: 12, column: 20, scope: !154)
!160 = !DILocalVariable(name: "s", arg: 2, scope: !154, file: !155, line: 12, type: !12)
!161 = !DILocation(line: 12, column: 29, scope: !154)
!162 = !DILocalVariable(name: "count", arg: 3, scope: !154, file: !155, line: 12, type: !42)
!163 = !DILocation(line: 12, column: 39, scope: !154)
!164 = !DILocalVariable(name: "a", scope: !154, file: !155, line: 13, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!166 = !DILocation(line: 13, column: 9, scope: !154)
!167 = !DILocation(line: 13, column: 13, scope: !154)
!168 = !DILocation(line: 14, column: 3, scope: !154)
!169 = !DILocation(line: 14, column: 15, scope: !154)
!170 = !DILocation(line: 14, column: 18, scope: !154)
!171 = !DILocation(line: 15, column: 12, scope: !154)
!172 = !DILocation(line: 15, column: 7, scope: !154)
!173 = !DILocation(line: 15, column: 10, scope: !154)
!174 = distinct !{!174, !168, !171, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 16, column: 10, scope: !154)
!177 = !DILocation(line: 16, column: 3, scope: !154)
