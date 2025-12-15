; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/274_tree.c_2638_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/274_tree.c_2638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i32, %struct._xmlDoc* }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [19 x i8] c"building reference\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/274_tree.c_2638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewReference = private unnamed_addr constant [52 x i8] c"xmlNodePtr xmlNewReference(xmlDocPtr, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"doc\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = load i64, i64* %2, align 8, !dbg !38
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !39
  store i8* %5, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %3, align 8, !dbg !40
  ret i8* %6, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !42 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = load i8*, i8** %3, align 8, !dbg !50
  %6 = icmp eq i8* %5, null, !dbg !52
  br i1 %6, label %7, label %8, !dbg !53

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !54
  br label %22, !dbg !54

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %4, align 4, !dbg !56
  br label %9, !dbg !57

9:                                                ; preds = %17, %8
  %10 = load i8*, i8** %3, align 8, !dbg !58
  %11 = load i32, i32* %4, align 4, !dbg !59
  %12 = sext i32 %11 to i64, !dbg !58
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !58
  %14 = load i8, i8* %13, align 1, !dbg !58
  %15 = sext i8 %14 to i32, !dbg !58
  %16 = icmp ne i32 %15, 0, !dbg !60
  br i1 %16, label %17, label %20, !dbg !57

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !61
  %19 = add nsw i32 %18, 1, !dbg !61
  store i32 %19, i32* %4, align 4, !dbg !61
  br label %9, !dbg !57, !llvm.loop !63

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4, !dbg !66
  store i32 %21, i32* %2, align 4, !dbg !67
  br label %22, !dbg !67

22:                                               ; preds = %20, %7
  %23 = load i32, i32* %2, align 4, !dbg !68
  ret i32 %23, !dbg !68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !69 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !72, metadata !DIExpression()), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewReference(%struct._xmlDoc* noundef %0, i8* noundef %1) #0 !dbg !75 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlDoc* %0, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !82, metadata !DIExpression()), !dbg !83
  %8 = call i8* @xmlMalloc(i64 noundef 16), !dbg !84
  %9 = bitcast i8* %8 to %struct._xmlNode*, !dbg !85
  store %struct._xmlNode* %9, %struct._xmlNode** %6, align 8, !dbg !86
  %10 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !87
  %11 = icmp eq %struct._xmlNode* %10, null, !dbg !89
  br i1 %11, label %12, label %13, !dbg !90

12:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !91
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !93
  br label %45, !dbg !93

13:                                               ; preds = %2
  %14 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !94
  %15 = bitcast %struct._xmlNode* %14 to i8*, !dbg !95
  %16 = call i8* @memset(i8* %15, i32 0, i64 16), !dbg !95
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.xmlNewReference, i64 0, i64 0)), !dbg !96
  %18 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !97
  %19 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %18, i32 0, i32 0, !dbg !98
  store i32 1, i32* %19, align 8, !dbg !99
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !100
  %21 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !101
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %21, i32 0, i32 1, !dbg !102
  store %struct._xmlDoc* %20, %struct._xmlDoc** %22, align 8, !dbg !103
  %23 = load i8*, i8** %5, align 8, !dbg !104
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !104
  %25 = load i8, i8* %24, align 1, !dbg !104
  %26 = sext i8 %25 to i32, !dbg !104
  %27 = icmp eq i32 %26, 38, !dbg !106
  br i1 %27, label %28, label %43, !dbg !107

28:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata i32* %7, metadata !108, metadata !DIExpression()), !dbg !110
  %29 = load i8*, i8** %5, align 8, !dbg !111
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !111
  store i8* %30, i8** %5, align 8, !dbg !111
  %31 = load i8*, i8** %5, align 8, !dbg !112
  %32 = call i32 @xmlStrlen(i8* noundef %31), !dbg !113
  store i32 %32, i32* %7, align 4, !dbg !114
  %33 = load i8*, i8** %5, align 8, !dbg !115
  %34 = load i32, i32* %7, align 4, !dbg !117
  %35 = sub nsw i32 %34, 1, !dbg !118
  %36 = sext i32 %35 to i64, !dbg !115
  %37 = getelementptr inbounds i8, i8* %33, i64 %36, !dbg !115
  %38 = load i8, i8* %37, align 1, !dbg !115
  %39 = sext i8 %38 to i32, !dbg !115
  %40 = icmp eq i32 %39, 59, !dbg !119
  br i1 %40, label %41, label %42, !dbg !120

41:                                               ; preds = %28
  br label %42, !dbg !121

42:                                               ; preds = %41, %28
  br label %43, !dbg !123

43:                                               ; preds = %42, %13
  %44 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !124
  store %struct._xmlNode* %44, %struct._xmlNode** %3, align 8, !dbg !125
  br label %45, !dbg !125

45:                                               ; preds = %43, %12
  %46 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !126
  ret %struct._xmlNode* %46, !dbg !126
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !132, metadata !DIExpression()), !dbg !136
  %5 = bitcast %struct._xmlDoc** %2 to i8*, !dbg !137
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !138
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !139
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !140
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !141
  %8 = load i8, i8* %7, align 1, !dbg !141
  %9 = sext i8 %8 to i32, !dbg !141
  %10 = icmp eq i32 %9, 0, !dbg !142
  %11 = zext i1 %10 to i32, !dbg !142
  %12 = sext i32 %11 to i64, !dbg !141
  call void @klee_assume(i64 noundef %12), !dbg !143
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !144
  %14 = load i8, i8* %13, align 16, !dbg !144
  %15 = sext i8 %14 to i32, !dbg !144
  %16 = icmp eq i32 %15, 38, !dbg !145
  %17 = zext i1 %16 to i32, !dbg !145
  %18 = sext i32 %17 to i64, !dbg !144
  call void @klee_assume(i64 noundef %18), !dbg !146
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 1, !dbg !147
  %20 = load i8, i8* %19, align 1, !dbg !147
  %21 = sext i8 %20 to i32, !dbg !147
  %22 = icmp ne i32 %21, 0, !dbg !148
  %23 = zext i1 %22 to i32, !dbg !148
  %24 = sext i32 %23 to i64, !dbg !147
  call void @klee_assume(i64 noundef %24), !dbg !149
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !150, metadata !DIExpression()), !dbg !151
  %25 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !152
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !153
  %27 = call %struct._xmlNode* @xmlNewReference(%struct._xmlDoc* noundef %25, i8* noundef %26), !dbg !154
  store %struct._xmlNode* %27, %struct._xmlNode** %4, align 8, !dbg !151
  %28 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !155
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !157
  br i1 %29, label %30, label %33, !dbg !158

30:                                               ; preds = %0
  %31 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !159
  %32 = bitcast %struct._xmlNode* %31 to i8*, !dbg !159
  call void @free(i8* noundef %32) #7, !dbg !161
  br label %33, !dbg !162

33:                                               ; preds = %30, %0
  ret i32 0, !dbg !163
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !164 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !168, metadata !DIExpression()), !dbg !169
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i8** %7, metadata !174, metadata !DIExpression()), !dbg !176
  %8 = load i8*, i8** %4, align 8, !dbg !177
  store i8* %8, i8** %7, align 8, !dbg !176
  br label %9, !dbg !178

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !179
  %11 = add i64 %10, -1, !dbg !179
  store i64 %11, i64* %6, align 8, !dbg !179
  %12 = icmp ugt i64 %10, 0, !dbg !180
  br i1 %12, label %13, label %18, !dbg !178

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !181
  %15 = trunc i32 %14 to i8, !dbg !181
  %16 = load i8*, i8** %7, align 8, !dbg !182
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !182
  store i8* %17, i8** %7, align 8, !dbg !182
  store i8 %15, i8* %16, align 1, !dbg !183
  br label %9, !dbg !178, !llvm.loop !184

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %19, !dbg !186
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/274_tree.c_2638_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a3db3d2e2b5e670150905e809f1f25e1")
!2 = !{!3, !4, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, size: 128, elements: !8)
!8 = !{!9, !11}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 16, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !7, file: !1, line: 17, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 13, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 12, flags: DIFlagFwdDecl)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !14)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !28, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!3, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 22, type: !30)
!35 = !DILocation(line: 22, column: 24, scope: !27)
!36 = !DILocalVariable(name: "ptr", scope: !27, file: !1, line: 23, type: !3)
!37 = !DILocation(line: 23, column: 11, scope: !27)
!38 = !DILocation(line: 23, column: 24, scope: !27)
!39 = !DILocation(line: 23, column: 17, scope: !27)
!40 = !DILocation(line: 24, column: 12, scope: !27)
!41 = !DILocation(line: 24, column: 5, scope: !27)
!42 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 28, type: !43, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!43 = !DISubroutineType(types: !44)
!44 = !{!10, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DILocalVariable(name: "str", arg: 1, scope: !42, file: !1, line: 28, type: !45)
!49 = !DILocation(line: 28, column: 27, scope: !42)
!50 = !DILocation(line: 29, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 29, column: 9)
!52 = !DILocation(line: 29, column: 13, scope: !51)
!53 = !DILocation(line: 29, column: 9, scope: !42)
!54 = !DILocation(line: 29, column: 22, scope: !51)
!55 = !DILocalVariable(name: "len", scope: !42, file: !1, line: 30, type: !10)
!56 = !DILocation(line: 30, column: 9, scope: !42)
!57 = !DILocation(line: 31, column: 5, scope: !42)
!58 = !DILocation(line: 31, column: 12, scope: !42)
!59 = !DILocation(line: 31, column: 16, scope: !42)
!60 = !DILocation(line: 31, column: 21, scope: !42)
!61 = !DILocation(line: 32, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !42, file: !1, line: 31, column: 30)
!63 = distinct !{!63, !57, !64, !65}
!64 = !DILocation(line: 33, column: 5, scope: !42)
!65 = !{!"llvm.loop.mustprogress"}
!66 = !DILocation(line: 34, column: 12, scope: !42)
!67 = !DILocation(line: 34, column: 5, scope: !42)
!68 = !DILocation(line: 35, column: 1, scope: !42)
!69 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 38, type: !70, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !45}
!72 = !DILocalVariable(name: "msg", arg: 1, scope: !69, file: !1, line: 38, type: !45)
!73 = !DILocation(line: 38, column: 35, scope: !69)
!74 = !DILocation(line: 40, column: 1, scope: !69)
!75 = distinct !DISubprogram(name: "xmlNewReference", scope: !1, file: !1, line: 43, type: !76, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!76 = !DISubroutineType(types: !77)
!77 = !{!4, !12, !45}
!78 = !DILocalVariable(name: "doc", arg: 1, scope: !75, file: !1, line: 43, type: !12)
!79 = !DILocation(line: 43, column: 38, scope: !75)
!80 = !DILocalVariable(name: "name", arg: 2, scope: !75, file: !1, line: 43, type: !45)
!81 = !DILocation(line: 43, column: 55, scope: !75)
!82 = !DILocalVariable(name: "cur", scope: !75, file: !1, line: 44, type: !4)
!83 = !DILocation(line: 44, column: 16, scope: !75)
!84 = !DILocation(line: 46, column: 24, scope: !75)
!85 = !DILocation(line: 46, column: 11, scope: !75)
!86 = !DILocation(line: 46, column: 9, scope: !75)
!87 = !DILocation(line: 47, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !75, file: !1, line: 47, column: 9)
!89 = !DILocation(line: 47, column: 13, scope: !88)
!90 = !DILocation(line: 47, column: 9, scope: !75)
!91 = !DILocation(line: 48, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 47, column: 22)
!93 = !DILocation(line: 49, column: 9, scope: !92)
!94 = !DILocation(line: 53, column: 12, scope: !75)
!95 = !DILocation(line: 53, column: 5, scope: !75)
!96 = !DILocation(line: 59, column: 5, scope: !75)
!97 = !DILocation(line: 61, column: 5, scope: !75)
!98 = !DILocation(line: 61, column: 10, scope: !75)
!99 = !DILocation(line: 61, column: 15, scope: !75)
!100 = !DILocation(line: 62, column: 26, scope: !75)
!101 = !DILocation(line: 62, column: 5, scope: !75)
!102 = !DILocation(line: 62, column: 10, scope: !75)
!103 = !DILocation(line: 62, column: 14, scope: !75)
!104 = !DILocation(line: 64, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !75, file: !1, line: 64, column: 9)
!106 = !DILocation(line: 64, column: 17, scope: !105)
!107 = !DILocation(line: 64, column: 9, scope: !75)
!108 = !DILocalVariable(name: "len", scope: !109, file: !1, line: 65, type: !10)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 64, column: 25)
!110 = !DILocation(line: 65, column: 13, scope: !109)
!111 = !DILocation(line: 66, column: 13, scope: !109)
!112 = !DILocation(line: 67, column: 25, scope: !109)
!113 = !DILocation(line: 67, column: 15, scope: !109)
!114 = !DILocation(line: 67, column: 13, scope: !109)
!115 = !DILocation(line: 68, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !1, line: 68, column: 13)
!117 = !DILocation(line: 68, column: 18, scope: !116)
!118 = !DILocation(line: 68, column: 22, scope: !116)
!119 = !DILocation(line: 68, column: 27, scope: !116)
!120 = !DILocation(line: 68, column: 13, scope: !109)
!121 = !DILocation(line: 70, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !116, file: !1, line: 68, column: 35)
!123 = !DILocation(line: 71, column: 5, scope: !109)
!124 = !DILocation(line: 73, column: 12, scope: !75)
!125 = !DILocation(line: 73, column: 5, scope: !75)
!126 = !DILocation(line: 74, column: 1, scope: !75)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 76, type: !128, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!128 = !DISubroutineType(types: !129)
!129 = !{!10}
!130 = !DILocalVariable(name: "doc", scope: !127, file: !1, line: 77, type: !12)
!131 = !DILocation(line: 77, column: 15, scope: !127)
!132 = !DILocalVariable(name: "name", scope: !127, file: !1, line: 78, type: !133)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 256)
!136 = !DILocation(line: 78, column: 10, scope: !127)
!137 = !DILocation(line: 81, column: 24, scope: !127)
!138 = !DILocation(line: 81, column: 5, scope: !127)
!139 = !DILocation(line: 84, column: 24, scope: !127)
!140 = !DILocation(line: 84, column: 5, scope: !127)
!141 = !DILocation(line: 87, column: 17, scope: !127)
!142 = !DILocation(line: 87, column: 27, scope: !127)
!143 = !DILocation(line: 87, column: 5, scope: !127)
!144 = !DILocation(line: 90, column: 17, scope: !127)
!145 = !DILocation(line: 90, column: 25, scope: !127)
!146 = !DILocation(line: 90, column: 5, scope: !127)
!147 = !DILocation(line: 93, column: 17, scope: !127)
!148 = !DILocation(line: 93, column: 25, scope: !127)
!149 = !DILocation(line: 93, column: 5, scope: !127)
!150 = !DILocalVariable(name: "result", scope: !127, file: !1, line: 96, type: !4)
!151 = !DILocation(line: 96, column: 16, scope: !127)
!152 = !DILocation(line: 96, column: 41, scope: !127)
!153 = !DILocation(line: 96, column: 46, scope: !127)
!154 = !DILocation(line: 96, column: 25, scope: !127)
!155 = !DILocation(line: 99, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !127, file: !1, line: 99, column: 9)
!157 = !DILocation(line: 99, column: 16, scope: !156)
!158 = !DILocation(line: 99, column: 9, scope: !127)
!159 = !DILocation(line: 100, column: 14, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 99, column: 25)
!161 = !DILocation(line: 100, column: 9, scope: !160)
!162 = !DILocation(line: 101, column: 5, scope: !160)
!163 = !DILocation(line: 103, column: 5, scope: !127)
!164 = distinct !DISubprogram(name: "memset", scope: !165, file: !165, line: 12, type: !166, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!165 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!166 = !DISubroutineType(types: !167)
!167 = !{!3, !3, !10, !30}
!168 = !DILocalVariable(name: "dst", arg: 1, scope: !164, file: !165, line: 12, type: !3)
!169 = !DILocation(line: 12, column: 20, scope: !164)
!170 = !DILocalVariable(name: "s", arg: 2, scope: !164, file: !165, line: 12, type: !10)
!171 = !DILocation(line: 12, column: 29, scope: !164)
!172 = !DILocalVariable(name: "count", arg: 3, scope: !164, file: !165, line: 12, type: !30)
!173 = !DILocation(line: 12, column: 39, scope: !164)
!174 = !DILocalVariable(name: "a", scope: !164, file: !165, line: 13, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!176 = !DILocation(line: 13, column: 9, scope: !164)
!177 = !DILocation(line: 13, column: 13, scope: !164)
!178 = !DILocation(line: 14, column: 3, scope: !164)
!179 = !DILocation(line: 14, column: 15, scope: !164)
!180 = !DILocation(line: 14, column: 18, scope: !164)
!181 = !DILocation(line: 15, column: 12, scope: !164)
!182 = !DILocation(line: 15, column: 7, scope: !164)
!183 = !DILocation(line: 15, column: 10, scope: !164)
!184 = distinct !{!184, !178, !181, !65}
!185 = !DILocation(line: 16, column: 10, scope: !164)
!186 = !DILocation(line: 16, column: 3, scope: !164)
