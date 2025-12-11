; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/275_tree.c_2525_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/275_tree.c_2525_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type {}
%struct._xmlNode = type { i32, %struct._xmlDoc* }

@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"(len <= sizeof(xmlNode)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/275_tree.c_2525_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"building character reference\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i64, i64* %2, align 8, !dbg !35
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !36
  ret i8* %4, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !47 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc, align 1
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %2, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlDoc* %2, %struct._xmlDoc** %3, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !54, metadata !DIExpression()), !dbg !58
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !59
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !60
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !61
  store i8 0, i8* %8, align 1, !dbg !62
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !63, metadata !DIExpression()), !dbg !64
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !65
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !66
  %11 = call %struct._xmlNode* @xmlStringGetNodeList(%struct._xmlDoc* noundef %9, i8* noundef %10), !dbg !67
  store %struct._xmlNode* %11, %struct._xmlNode** %5, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %6, metadata !68, metadata !DIExpression()), !dbg !69
  %12 = bitcast i32* %6 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !71
  %13 = load i32, i32* %6, align 4, !dbg !72
  %14 = icmp sge i32 %13, 0, !dbg !73
  %15 = zext i1 %14 to i32, !dbg !73
  %16 = sext i32 %15 to i64, !dbg !72
  call void @klee_assume(i64 noundef %16), !dbg !74
  %17 = load i32, i32* %6, align 4, !dbg !75
  %18 = sext i32 %17 to i64, !dbg !75
  %19 = icmp ule i64 %18, 16, !dbg !75
  br i1 %19, label %20, label %22, !dbg !75

20:                                               ; preds = %0
  br i1 true, label %21, label %22, !dbg !75

21:                                               ; preds = %20
  br label %24, !dbg !75

22:                                               ; preds = %20, %0
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !75
  br label %24, !dbg !75

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !76
  %26 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !77
  %27 = icmp ne %struct._xmlNode* %26, null, !dbg !77
  br i1 %27, label %28, label %31, !dbg !79

28:                                               ; preds = %24
  %29 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !80
  %30 = bitcast %struct._xmlNode* %29 to i8*, !dbg !80
  call void @free(i8* noundef %30) #8, !dbg !82
  br label %31, !dbg !83

31:                                               ; preds = %28, %24
  ret i32 0, !dbg !84
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlStringGetNodeList(%struct._xmlDoc* noundef %0, i8* noundef %1) #0 !dbg !85 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlDoc* %0, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !90, metadata !DIExpression()), !dbg !91
  %8 = load i8*, i8** %5, align 8, !dbg !92
  %9 = icmp ne i8* %8, null, !dbg !92
  br i1 %9, label %10, label %14, !dbg !94

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !95
  %12 = load i8, i8* %11, align 1, !dbg !96
  %13 = icmp ne i8 %12, 0, !dbg !96
  br i1 %13, label %15, label %14, !dbg !97

14:                                               ; preds = %10, %2
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !98
  br label %41, !dbg !98

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8, !dbg !100
  %17 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !100
  %18 = load i8, i8* %17, align 1, !dbg !100
  %19 = sext i8 %18 to i32, !dbg !100
  %20 = icmp eq i32 %19, 38, !dbg !102
  br i1 %20, label %21, label %40, !dbg !103

21:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !104, metadata !DIExpression()), !dbg !106
  %22 = call i8* @xmlMalloc(i64 noundef 16), !dbg !107
  %23 = bitcast i8* %22 to %struct._xmlNode*, !dbg !108
  store %struct._xmlNode* %23, %struct._xmlNode** %6, align 8, !dbg !106
  %24 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !109
  %25 = icmp eq %struct._xmlNode* %24, null, !dbg !111
  br i1 %25, label %26, label %27, !dbg !112

26:                                               ; preds = %21
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0)), !dbg !113
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !115
  br label %41, !dbg !115

27:                                               ; preds = %21
  %28 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !116
  %29 = bitcast %struct._xmlNode* %28 to i8*, !dbg !117
  %30 = call i8* @memset(i8* %29, i32 0, i64 16), !dbg !117
  %31 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !118
  %32 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %31, i32 0, i32 0, !dbg !119
  store i32 1, i32* %32, align 8, !dbg !120
  %33 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !121
  %34 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !122
  %35 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %34, i32 0, i32 1, !dbg !123
  store %struct._xmlDoc* %33, %struct._xmlDoc** %35, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i32* %7, metadata !125, metadata !DIExpression()), !dbg !126
  %36 = load i8*, i8** %5, align 8, !dbg !127
  %37 = call i64 @strlen(i8* noundef %36) #9, !dbg !128
  %38 = trunc i64 %37 to i32, !dbg !128
  store i32 %38, i32* %7, align 4, !dbg !126
  %39 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !129
  store %struct._xmlNode* %39, %struct._xmlNode** %3, align 8, !dbg !130
  br label %41, !dbg !130

40:                                               ; preds = %15
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !131
  br label %41, !dbg !131

41:                                               ; preds = %40, %27, %26, %14
  %42 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !132
  ret %struct._xmlNode* %42, !dbg !132
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %7, metadata !143, metadata !DIExpression()), !dbg !145
  %8 = load i8*, i8** %4, align 8, !dbg !146
  store i8* %8, i8** %7, align 8, !dbg !145
  br label %9, !dbg !147

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !148
  %11 = add i64 %10, -1, !dbg !148
  store i64 %11, i64* %6, align 8, !dbg !148
  %12 = icmp ugt i64 %10, 0, !dbg !149
  br i1 %12, label %13, label %18, !dbg !147

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !150
  %15 = trunc i32 %14 to i8, !dbg !150
  %16 = load i8*, i8** %7, align 8, !dbg !151
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !151
  store i8* %17, i8** %7, align 8, !dbg !151
  store i8 %15, i8* %16, align 1, !dbg !152
  br label %9, !dbg !147, !llvm.loop !153

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !155
  ret i8* %19, !dbg !156
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/275_tree.c_2525_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "90d64c4888546d7ffe9463b187960501")
!2 = !{!3, !16}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 16, size: 128, elements: !7)
!7 = !{!8, !10}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 17, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6, file: !1, line: 18, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 13, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!27 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !28, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!28 = !DISubroutineType(types: !29)
!29 = !{!16, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 27, type: !30)
!34 = !DILocation(line: 27, column: 24, scope: !27)
!35 = !DILocation(line: 28, column: 19, scope: !27)
!36 = !DILocation(line: 28, column: 12, scope: !27)
!37 = !DILocation(line: 28, column: 5, scope: !27)
!38 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DILocalVariable(name: "msg", arg: 1, scope: !38, file: !1, line: 31, type: !41)
!45 = !DILocation(line: 31, column: 35, scope: !38)
!46 = !DILocation(line: 33, column: 1, scope: !38)
!47 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !48, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!48 = !DISubroutineType(types: !49)
!49 = !{!9}
!50 = !DILocalVariable(name: "doc_stub", scope: !47, file: !1, line: 41, type: !13)
!51 = !DILocation(line: 41, column: 12, scope: !47)
!52 = !DILocalVariable(name: "doc", scope: !47, file: !1, line: 42, type: !11)
!53 = !DILocation(line: 42, column: 15, scope: !47)
!54 = !DILocalVariable(name: "value", scope: !47, file: !1, line: 45, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 256)
!58 = !DILocation(line: 45, column: 10, scope: !47)
!59 = !DILocation(line: 46, column: 24, scope: !47)
!60 = !DILocation(line: 46, column: 5, scope: !47)
!61 = !DILocation(line: 49, column: 5, scope: !47)
!62 = !DILocation(line: 49, column: 16, scope: !47)
!63 = !DILocalVariable(name: "result", scope: !47, file: !1, line: 63, type: !3)
!64 = !DILocation(line: 63, column: 16, scope: !47)
!65 = !DILocation(line: 63, column: 46, scope: !47)
!66 = !DILocation(line: 63, column: 51, scope: !47)
!67 = !DILocation(line: 63, column: 25, scope: !47)
!68 = !DILocalVariable(name: "len", scope: !47, file: !1, line: 75, type: !9)
!69 = !DILocation(line: 75, column: 9, scope: !47)
!70 = !DILocation(line: 76, column: 24, scope: !47)
!71 = !DILocation(line: 76, column: 5, scope: !47)
!72 = !DILocation(line: 79, column: 17, scope: !47)
!73 = !DILocation(line: 79, column: 21, scope: !47)
!74 = !DILocation(line: 79, column: 5, scope: !47)
!75 = !DILocation(line: 83, column: 5, scope: !47)
!76 = !DILocation(line: 86, column: 5, scope: !47)
!77 = !DILocation(line: 89, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !47, file: !1, line: 89, column: 9)
!79 = !DILocation(line: 89, column: 9, scope: !47)
!80 = !DILocation(line: 90, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 89, column: 17)
!82 = !DILocation(line: 90, column: 9, scope: !81)
!83 = !DILocation(line: 91, column: 5, scope: !81)
!84 = !DILocation(line: 93, column: 5, scope: !47)
!85 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 97, type: !86, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!86 = !DISubroutineType(types: !87)
!87 = !{!3, !11, !41}
!88 = !DILocalVariable(name: "doc", arg: 1, scope: !85, file: !1, line: 97, type: !11)
!89 = !DILocation(line: 97, column: 43, scope: !85)
!90 = !DILocalVariable(name: "value", arg: 2, scope: !85, file: !1, line: 97, type: !41)
!91 = !DILocation(line: 97, column: 60, scope: !85)
!92 = !DILocation(line: 99, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 99, column: 9)
!94 = !DILocation(line: 99, column: 16, scope: !93)
!95 = !DILocation(line: 99, column: 21, scope: !93)
!96 = !DILocation(line: 99, column: 20, scope: !93)
!97 = !DILocation(line: 99, column: 9, scope: !85)
!98 = !DILocation(line: 100, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 99, column: 28)
!100 = !DILocation(line: 104, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !85, file: !1, line: 104, column: 9)
!102 = !DILocation(line: 104, column: 18, scope: !101)
!103 = !DILocation(line: 104, column: 9, scope: !85)
!104 = !DILocalVariable(name: "cur", scope: !105, file: !1, line: 106, type: !3)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 104, column: 26)
!106 = !DILocation(line: 106, column: 20, scope: !105)
!107 = !DILocation(line: 106, column: 39, scope: !105)
!108 = !DILocation(line: 106, column: 26, scope: !105)
!109 = !DILocation(line: 107, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 107, column: 13)
!111 = !DILocation(line: 107, column: 17, scope: !110)
!112 = !DILocation(line: 107, column: 13, scope: !105)
!113 = !DILocation(line: 108, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 107, column: 26)
!115 = !DILocation(line: 109, column: 13, scope: !114)
!116 = !DILocation(line: 113, column: 16, scope: !105)
!117 = !DILocation(line: 113, column: 9, scope: !105)
!118 = !DILocation(line: 115, column: 9, scope: !105)
!119 = !DILocation(line: 115, column: 14, scope: !105)
!120 = !DILocation(line: 115, column: 19, scope: !105)
!121 = !DILocation(line: 116, column: 20, scope: !105)
!122 = !DILocation(line: 116, column: 9, scope: !105)
!123 = !DILocation(line: 116, column: 14, scope: !105)
!124 = !DILocation(line: 116, column: 18, scope: !105)
!125 = !DILocalVariable(name: "len", scope: !105, file: !1, line: 119, type: !9)
!126 = !DILocation(line: 119, column: 13, scope: !105)
!127 = !DILocation(line: 119, column: 26, scope: !105)
!128 = !DILocation(line: 119, column: 19, scope: !105)
!129 = !DILocation(line: 122, column: 16, scope: !105)
!130 = !DILocation(line: 122, column: 9, scope: !105)
!131 = !DILocation(line: 125, column: 5, scope: !85)
!132 = !DILocation(line: 126, column: 1, scope: !85)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !15)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!16, !16, !9, !30}
!137 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !16)
!138 = !DILocation(line: 12, column: 20, scope: !133)
!139 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !9)
!140 = !DILocation(line: 12, column: 29, scope: !133)
!141 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !30)
!142 = !DILocation(line: 12, column: 39, scope: !133)
!143 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!145 = !DILocation(line: 13, column: 9, scope: !133)
!146 = !DILocation(line: 13, column: 13, scope: !133)
!147 = !DILocation(line: 14, column: 3, scope: !133)
!148 = !DILocation(line: 14, column: 15, scope: !133)
!149 = !DILocation(line: 14, column: 18, scope: !133)
!150 = !DILocation(line: 15, column: 12, scope: !133)
!151 = !DILocation(line: 15, column: 7, scope: !133)
!152 = !DILocation(line: 15, column: 10, scope: !133)
!153 = distinct !{!153, !147, !150, !154}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !DILocation(line: 16, column: 10, scope: !133)
!156 = !DILocation(line: 16, column: 3, scope: !133)
