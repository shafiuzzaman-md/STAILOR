; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/099_tree.c_9552_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/099_tree.c_9552_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type opaque
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc* }

@.str = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/099_tree.c_9552_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"xmlDOMWrapCloneNode(): allocating a node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
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
define dso_local i32 @main() #0 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !56, metadata !DIExpression()), !dbg !59
  store %struct._xmlDoc* null, %struct._xmlDoc** %2, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store %struct._xmlDoc* null, %struct._xmlDoc** %4, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !64, metadata !DIExpression()), !dbg !65
  store %struct._xmlNode* null, %struct._xmlNode** %5, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %6, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = bitcast i32* %6 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %9 = load i32, i32* %6, align 4, !dbg !70
  %10 = icmp sge i32 %9, 0, !dbg !71
  %11 = zext i1 %10 to i32, !dbg !71
  %12 = sext i32 %11 to i64, !dbg !70
  call void @klee_assume(i64 noundef %12), !dbg !72
  %13 = load i32, i32* %6, align 4, !dbg !73
  %14 = icmp sle i32 %13, 1024, !dbg !74
  %15 = zext i1 %14 to i32, !dbg !74
  %16 = sext i32 %15 to i64, !dbg !73
  call void @klee_assume(i64 noundef %16), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %7, metadata !76, metadata !DIExpression()), !dbg !77
  %17 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !78
  %18 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !79
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !80
  %20 = load i32, i32* %6, align 4, !dbg !81
  %21 = call i32 @xmlDOMWrapCloneNode(%struct._xmlDoc* noundef %17, %struct._xmlNode* noundef %18, %struct._xmlDoc* noundef %19, %struct._xmlNode** noundef %5, i32 noundef %20), !dbg !82
  store i32 %21, i32* %7, align 4, !dbg !77
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !83
  %23 = load i32, i32* %7, align 4, !dbg !84
  ret i32 %23, !dbg !85
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDOMWrapCloneNode(%struct._xmlDoc* noundef %0, %struct._xmlNode* noundef %1, %struct._xmlDoc* noundef %2, %struct._xmlNode** noundef %3, i32 noundef %4) #0 !dbg !86 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlDoc*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca %struct._xmlDoc*, align 8
  %10 = alloca %struct._xmlNode**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._xmlNode*, align 8
  %13 = alloca %struct._xmlNode*, align 8
  %14 = alloca %struct._xmlNode*, align 8
  %15 = alloca %struct._xmlNode*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %7, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct._xmlNode* %1, %struct._xmlNode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct._xmlDoc* %2, %struct._xmlDoc** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %9, metadata !94, metadata !DIExpression()), !dbg !95
  store %struct._xmlNode** %3, %struct._xmlNode*** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %10, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %12, metadata !100, metadata !DIExpression()), !dbg !101
  store %struct._xmlNode* null, %struct._xmlNode** %12, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %13, metadata !102, metadata !DIExpression()), !dbg !103
  store %struct._xmlNode* null, %struct._xmlNode** %13, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %14, metadata !104, metadata !DIExpression()), !dbg !105
  store %struct._xmlNode* null, %struct._xmlNode** %14, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %15, metadata !106, metadata !DIExpression()), !dbg !107
  %16 = load %struct._xmlNode**, %struct._xmlNode*** %10, align 8, !dbg !108
  %17 = load %struct._xmlNode*, %struct._xmlNode** %16, align 8, !dbg !109
  store %struct._xmlNode* %17, %struct._xmlNode** %15, align 8, !dbg !107
  %18 = call i8* @xmlMalloc(i64 noundef 72), !dbg !110
  %19 = bitcast i8* %18 to %struct._xmlNode*, !dbg !111
  store %struct._xmlNode* %19, %struct._xmlNode** %12, align 8, !dbg !112
  %20 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !113
  %21 = icmp eq %struct._xmlNode* %20, null, !dbg !115
  br i1 %21, label %22, label %23, !dbg !116

22:                                               ; preds = %5
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0)), !dbg !117
  br label %44, !dbg !119

23:                                               ; preds = %5
  %24 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !120
  %25 = bitcast %struct._xmlNode* %24 to i8*, !dbg !121
  %26 = call i8* @memset(i8* %25, i32 0, i64 72), !dbg !121
  %27 = load %struct._xmlNode*, %struct._xmlNode** %15, align 8, !dbg !122
  %28 = icmp ne %struct._xmlNode* %27, null, !dbg !124
  br i1 %28, label %29, label %43, !dbg !125

29:                                               ; preds = %23
  %30 = load %struct._xmlNode*, %struct._xmlNode** %13, align 8, !dbg !126
  %31 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !128
  %32 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %31, i32 0, i32 5, !dbg !129
  store %struct._xmlNode* %30, %struct._xmlNode** %32, align 8, !dbg !130
  %33 = load %struct._xmlNode*, %struct._xmlNode** %14, align 8, !dbg !131
  %34 = icmp ne %struct._xmlNode* %33, null, !dbg !131
  br i1 %34, label %35, label %42, !dbg !133

35:                                               ; preds = %29
  %36 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !134
  %37 = load %struct._xmlNode*, %struct._xmlNode** %14, align 8, !dbg !136
  %38 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %37, i32 0, i32 6, !dbg !137
  store %struct._xmlNode* %36, %struct._xmlNode** %38, align 8, !dbg !138
  %39 = load %struct._xmlNode*, %struct._xmlNode** %14, align 8, !dbg !139
  %40 = load %struct._xmlNode*, %struct._xmlNode** %12, align 8, !dbg !140
  %41 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %40, i32 0, i32 7, !dbg !141
  store %struct._xmlNode* %39, %struct._xmlNode** %41, align 8, !dbg !142
  br label %42, !dbg !143

42:                                               ; preds = %35, %29
  br label %43, !dbg !144

43:                                               ; preds = %42, %23
  store i32 0, i32* %6, align 4, !dbg !145
  br label %45, !dbg !145

44:                                               ; preds = %22
  call void @llvm.dbg.label(metadata !146), !dbg !147
  store i32 -1, i32* %6, align 4, !dbg !148
  br label %45, !dbg !148

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %6, align 4, !dbg !149
  ret i32 %46, !dbg !149
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !150 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !156, metadata !DIExpression()), !dbg !157
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !160, metadata !DIExpression()), !dbg !162
  %8 = load i8*, i8** %4, align 8, !dbg !163
  store i8* %8, i8** %7, align 8, !dbg !162
  br label %9, !dbg !164

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !165
  %11 = add i64 %10, -1, !dbg !165
  store i64 %11, i64* %6, align 8, !dbg !165
  %12 = icmp ugt i64 %10, 0, !dbg !166
  br i1 %12, label %13, label %18, !dbg !164

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !167
  %15 = trunc i32 %14 to i8, !dbg !167
  %16 = load i8*, i8** %7, align 8, !dbg !168
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !168
  store i8* %17, i8** %7, align 8, !dbg !168
  store i8 %15, i8* %16, align 1, !dbg !169
  br label %9, !dbg !164, !llvm.loop !170

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !172
  ret i8* %19, !dbg !173
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/099_tree.c_9552_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9fa3a807d14c8038355a97f063620425")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 13, size: 576, elements: !7)
!7 = !{!8, !10, !12, !16, !18, !19, !20, !21, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 16, baseType: !13, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !6, file: !1, line: 17, baseType: !17, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !6, file: !1, line: 18, baseType: !17, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6, file: !1, line: 19, baseType: !17, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 20, baseType: !17, size: 64, offset: 384)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !6, file: !1, line: 21, baseType: !17, size: 64, offset: 448)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6, file: !1, line: 22, baseType: !23, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, flags: DIFlagFwdDecl)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 29, type: !36, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !13}
!38 = !{}
!39 = !DILocalVariable(name: "msg", arg: 1, scope: !35, file: !1, line: 29, type: !13)
!40 = !DILocation(line: 29, column: 35, scope: !35)
!41 = !DILocation(line: 31, column: 1, scope: !35)
!42 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 33, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!43 = !DISubroutineType(types: !44)
!44 = !{!9, !45}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !42, file: !1, line: 33, type: !45)
!49 = !DILocation(line: 33, column: 24, scope: !42)
!50 = !DILocation(line: 34, column: 19, scope: !42)
!51 = !DILocation(line: 34, column: 12, scope: !42)
!52 = !DILocation(line: 34, column: 5, scope: !42)
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 43, type: !54, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!54 = !DISubroutineType(types: !55)
!55 = !{!11}
!56 = !DILocalVariable(name: "sourceDoc", scope: !53, file: !1, line: 45, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 26, baseType: !24)
!59 = !DILocation(line: 45, column: 13, scope: !53)
!60 = !DILocalVariable(name: "node", scope: !53, file: !1, line: 46, type: !3)
!61 = !DILocation(line: 46, column: 16, scope: !53)
!62 = !DILocalVariable(name: "targetDoc", scope: !53, file: !1, line: 47, type: !57)
!63 = !DILocation(line: 47, column: 13, scope: !53)
!64 = !DILocalVariable(name: "resultNode", scope: !53, file: !1, line: 48, type: !3)
!65 = !DILocation(line: 48, column: 16, scope: !53)
!66 = !DILocalVariable(name: "options", scope: !53, file: !1, line: 49, type: !11)
!67 = !DILocation(line: 49, column: 9, scope: !53)
!68 = !DILocation(line: 52, column: 24, scope: !53)
!69 = !DILocation(line: 52, column: 5, scope: !53)
!70 = !DILocation(line: 55, column: 17, scope: !53)
!71 = !DILocation(line: 55, column: 25, scope: !53)
!72 = !DILocation(line: 55, column: 5, scope: !53)
!73 = !DILocation(line: 56, column: 17, scope: !53)
!74 = !DILocation(line: 56, column: 25, scope: !53)
!75 = !DILocation(line: 56, column: 5, scope: !53)
!76 = !DILocalVariable(name: "ret", scope: !53, file: !1, line: 60, type: !11)
!77 = !DILocation(line: 60, column: 9, scope: !53)
!78 = !DILocation(line: 60, column: 35, scope: !53)
!79 = !DILocation(line: 60, column: 46, scope: !53)
!80 = !DILocation(line: 60, column: 52, scope: !53)
!81 = !DILocation(line: 60, column: 76, scope: !53)
!82 = !DILocation(line: 60, column: 15, scope: !53)
!83 = !DILocation(line: 69, column: 5, scope: !53)
!84 = !DILocation(line: 71, column: 12, scope: !53)
!85 = !DILocation(line: 71, column: 5, scope: !53)
!86 = distinct !DISubprogram(name: "xmlDOMWrapCloneNode", scope: !1, file: !1, line: 75, type: !87, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!87 = !DISubroutineType(types: !88)
!88 = !{!11, !57, !3, !57, !89, !11}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!90 = !DILocalVariable(name: "sourceDoc", arg: 1, scope: !86, file: !1, line: 75, type: !57)
!91 = !DILocation(line: 75, column: 33, scope: !86)
!92 = !DILocalVariable(name: "node", arg: 2, scope: !86, file: !1, line: 75, type: !3)
!93 = !DILocation(line: 75, column: 55, scope: !86)
!94 = !DILocalVariable(name: "targetDoc", arg: 3, scope: !86, file: !1, line: 76, type: !57)
!95 = !DILocation(line: 76, column: 33, scope: !86)
!96 = !DILocalVariable(name: "resultNode", arg: 4, scope: !86, file: !1, line: 76, type: !89)
!97 = !DILocation(line: 76, column: 56, scope: !86)
!98 = !DILocalVariable(name: "options", arg: 5, scope: !86, file: !1, line: 77, type: !11)
!99 = !DILocation(line: 77, column: 29, scope: !86)
!100 = !DILocalVariable(name: "clone", scope: !86, file: !1, line: 78, type: !3)
!101 = !DILocation(line: 78, column: 16, scope: !86)
!102 = !DILocalVariable(name: "parentClone", scope: !86, file: !1, line: 79, type: !3)
!103 = !DILocation(line: 79, column: 16, scope: !86)
!104 = !DILocalVariable(name: "prevClone", scope: !86, file: !1, line: 80, type: !3)
!105 = !DILocation(line: 80, column: 16, scope: !86)
!106 = !DILocalVariable(name: "resultClone", scope: !86, file: !1, line: 81, type: !3)
!107 = !DILocation(line: 81, column: 16, scope: !86)
!108 = !DILocation(line: 81, column: 31, scope: !86)
!109 = !DILocation(line: 81, column: 30, scope: !86)
!110 = !DILocation(line: 84, column: 26, scope: !86)
!111 = !DILocation(line: 84, column: 13, scope: !86)
!112 = !DILocation(line: 84, column: 11, scope: !86)
!113 = !DILocation(line: 85, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !86, file: !1, line: 85, column: 9)
!115 = !DILocation(line: 85, column: 15, scope: !114)
!116 = !DILocation(line: 85, column: 9, scope: !86)
!117 = !DILocation(line: 86, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 85, column: 24)
!119 = !DILocation(line: 87, column: 9, scope: !118)
!120 = !DILocation(line: 91, column: 12, scope: !86)
!121 = !DILocation(line: 91, column: 5, scope: !86)
!122 = !DILocation(line: 96, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !86, file: !1, line: 96, column: 9)
!124 = !DILocation(line: 96, column: 21, scope: !123)
!125 = !DILocation(line: 96, column: 9, scope: !86)
!126 = !DILocation(line: 97, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 96, column: 30)
!128 = !DILocation(line: 97, column: 9, scope: !127)
!129 = !DILocation(line: 97, column: 16, scope: !127)
!130 = !DILocation(line: 97, column: 23, scope: !127)
!131 = !DILocation(line: 98, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 98, column: 13)
!133 = !DILocation(line: 98, column: 13, scope: !127)
!134 = !DILocation(line: 99, column: 31, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 98, column: 24)
!136 = !DILocation(line: 99, column: 13, scope: !135)
!137 = !DILocation(line: 99, column: 24, scope: !135)
!138 = !DILocation(line: 99, column: 29, scope: !135)
!139 = !DILocation(line: 100, column: 27, scope: !135)
!140 = !DILocation(line: 100, column: 13, scope: !135)
!141 = !DILocation(line: 100, column: 20, scope: !135)
!142 = !DILocation(line: 100, column: 25, scope: !135)
!143 = !DILocation(line: 101, column: 9, scope: !135)
!144 = !DILocation(line: 102, column: 5, scope: !127)
!145 = !DILocation(line: 105, column: 5, scope: !86)
!146 = !DILabel(scope: !86, name: "internal_error", file: !1, line: 107)
!147 = !DILocation(line: 107, column: 1, scope: !86)
!148 = !DILocation(line: 108, column: 5, scope: !86)
!149 = !DILocation(line: 109, column: 1, scope: !86)
!150 = distinct !DISubprogram(name: "memset", scope: !151, file: !151, line: 12, type: !152, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !38)
!151 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!152 = !DISubroutineType(types: !153)
!153 = !{!9, !9, !11, !45}
!154 = !DILocalVariable(name: "dst", arg: 1, scope: !150, file: !151, line: 12, type: !9)
!155 = !DILocation(line: 12, column: 20, scope: !150)
!156 = !DILocalVariable(name: "s", arg: 2, scope: !150, file: !151, line: 12, type: !11)
!157 = !DILocation(line: 12, column: 29, scope: !150)
!158 = !DILocalVariable(name: "count", arg: 3, scope: !150, file: !151, line: 12, type: !45)
!159 = !DILocation(line: 12, column: 39, scope: !150)
!160 = !DILocalVariable(name: "a", scope: !150, file: !151, line: 13, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!162 = !DILocation(line: 13, column: 9, scope: !150)
!163 = !DILocation(line: 13, column: 13, scope: !150)
!164 = !DILocation(line: 14, column: 3, scope: !150)
!165 = !DILocation(line: 14, column: 15, scope: !150)
!166 = !DILocation(line: 14, column: 18, scope: !150)
!167 = !DILocation(line: 15, column: 12, scope: !150)
!168 = !DILocation(line: 15, column: 7, scope: !150)
!169 = !DILocation(line: 15, column: 10, scope: !150)
!170 = distinct !{!170, !164, !167, !171}
!171 = !{!"llvm.loop.mustprogress"}
!172 = !DILocation(line: 16, column: 10, scope: !150)
!173 = !DILocation(line: 16, column: 3, scope: !150)
