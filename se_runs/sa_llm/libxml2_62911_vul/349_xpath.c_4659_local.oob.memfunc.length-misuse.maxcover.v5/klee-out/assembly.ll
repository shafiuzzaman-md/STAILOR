; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/349_xpath.c_4659_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/349_xpath.c_4659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"creating string object\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"val_buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"(obj != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/349_xpath.c_4659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i8*, i8** %2, align 8, !dbg !44
  %4 = icmp ne i8* %3, null, !dbg !44
  br i1 %4, label %5, label %7, !dbg !46

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !47
  call void @free(i8* noundef %6) #7, !dbg !48
  br label %7, !dbg !48

7:                                                ; preds = %5, %1
  ret void, !dbg !49
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathNewString(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlXPathObject*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %4, metadata !55, metadata !DIExpression()), !dbg !56
  %5 = load i8*, i8** %3, align 8, !dbg !57
  %6 = icmp eq i8* %5, null, !dbg !59
  br i1 %6, label %7, label %8, !dbg !60

7:                                                ; preds = %1
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !61
  br label %25, !dbg !61

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !63
  %10 = bitcast i8* %9 to %struct._xmlXPathObject*, !dbg !64
  store %struct._xmlXPathObject* %10, %struct._xmlXPathObject** %4, align 8, !dbg !65
  %11 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !66
  %12 = icmp eq %struct._xmlXPathObject* %11, null, !dbg !68
  br i1 %12, label %13, label %15, !dbg !69

13:                                               ; preds = %8
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %14 = load i8*, i8** %3, align 8, !dbg !72
  call void @xmlFree(i8* noundef %14), !dbg !73
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !74
  br label %25, !dbg !74

15:                                               ; preds = %8
  %16 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !75
  %17 = bitcast %struct._xmlXPathObject* %16 to i8*, !dbg !76
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !76
  %19 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !77
  %20 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %19, i32 0, i32 0, !dbg !78
  store i32 1, i32* %20, align 8, !dbg !79
  %21 = load i8*, i8** %3, align 8, !dbg !80
  %22 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !81
  %23 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %22, i32 0, i32 1, !dbg !82
  store i8* %21, i8** %23, align 8, !dbg !83
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %4, align 8, !dbg !84
  store %struct._xmlXPathObject* %24, %struct._xmlXPathObject** %2, align 8, !dbg !85
  br label %25, !dbg !85

25:                                               ; preds = %15, %13, %7
  %26 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !86
  ret %struct._xmlXPathObject* %26, !dbg !86
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathObject* @xmlXPathCmpNodesExt() #0 !dbg !87 {
  %1 = alloca %struct._xmlXPathObject*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlXPathObject*, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !92, metadata !DIExpression()), !dbg !93
  %4 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !94
  store i8* %4, i8** %2, align 8, !dbg !95
  %5 = load i8*, i8** %2, align 8, !dbg !96
  %6 = icmp ne i8* %5, null, !dbg !96
  br i1 %6, label %8, label %7, !dbg !98

7:                                                ; preds = %0
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %1, align 8, !dbg !99
  br label %13, !dbg !99

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8, !dbg !100
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !101
  %10 = load i8*, i8** %2, align 8, !dbg !102
  %11 = call %struct._xmlXPathObject* @xmlXPathNewString(i8* noundef %10), !dbg !103
  store %struct._xmlXPathObject* %11, %struct._xmlXPathObject** %3, align 8, !dbg !104
  %12 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !105
  store %struct._xmlXPathObject* %12, %struct._xmlXPathObject** %1, align 8, !dbg !106
  br label %13, !dbg !106

13:                                               ; preds = %8, %7
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %1, align 8, !dbg !107
  ret %struct._xmlXPathObject* %14, !dbg !107
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !108 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %2, metadata !112, metadata !DIExpression()), !dbg !113
  %3 = call %struct._xmlXPathObject* @xmlXPathCmpNodesExt(), !dbg !114
  store %struct._xmlXPathObject* %3, %struct._xmlXPathObject** %2, align 8, !dbg !115
  %4 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !116
  %5 = icmp ne %struct._xmlXPathObject* %4, null, !dbg !118
  br i1 %5, label %6, label %26, !dbg !119

6:                                                ; preds = %0
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !120
  %8 = icmp ne %struct._xmlXPathObject* %7, null, !dbg !120
  br i1 %8, label %9, label %11, !dbg !120

9:                                                ; preds = %6
  br i1 true, label %10, label %11, !dbg !120

10:                                               ; preds = %9
  br label %13, !dbg !120

11:                                               ; preds = %9, %6
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !120
  br label %13, !dbg !120

13:                                               ; preds = %11, %10
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !122
  %15 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !123
  %16 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %15, i32 0, i32 1, !dbg !125
  %17 = load i8*, i8** %16, align 8, !dbg !125
  %18 = icmp ne i8* %17, null, !dbg !123
  br i1 %18, label %19, label %23, !dbg !126

19:                                               ; preds = %13
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !127
  %21 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %20, i32 0, i32 1, !dbg !128
  %22 = load i8*, i8** %21, align 8, !dbg !128
  call void @free(i8* noundef %22) #7, !dbg !129
  br label %23, !dbg !129

23:                                               ; preds = %19, %13
  %24 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !130
  %25 = bitcast %struct._xmlXPathObject* %24 to i8*, !dbg !130
  call void @free(i8* noundef %25) #7, !dbg !131
  br label %26, !dbg !132

26:                                               ; preds = %23, %0
  ret i32 0, !dbg !133
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !134 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !141, metadata !DIExpression()), !dbg !142
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !143, metadata !DIExpression()), !dbg !144
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i8** %7, metadata !147, metadata !DIExpression()), !dbg !148
  %8 = load i8*, i8** %4, align 8, !dbg !149
  store i8* %8, i8** %7, align 8, !dbg !148
  br label %9, !dbg !150

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !151
  %11 = add i64 %10, -1, !dbg !151
  store i64 %11, i64* %6, align 8, !dbg !151
  %12 = icmp ugt i64 %10, 0, !dbg !152
  br i1 %12, label %13, label %18, !dbg !150

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !153
  %15 = trunc i32 %14 to i8, !dbg !153
  %16 = load i8*, i8** %7, align 8, !dbg !154
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !154
  store i8* %17, i8** %7, align 8, !dbg !154
  store i8 %15, i8* %16, align 1, !dbg !155
  br label %9, !dbg !150, !llvm.loop !156

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !158
  ret i8* %19, !dbg !159
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/349_xpath.c_4659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bd8487011ab40bb0ca1e51176e034495")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 10, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XPATH_STRING", value: 1)
!7 = !{!8, !9, !16}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 17, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 14, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 15, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObjectType", file: !1, line: 12, baseType: !3)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "stringval", scope: !11, file: !1, line: 16, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 20, type: !29, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !8, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !28, file: !1, line: 20, type: !8)
!35 = !DILocation(line: 20, column: 30, scope: !28)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !1, line: 20, type: !31)
!37 = !DILocation(line: 20, column: 48, scope: !28)
!38 = !DILocation(line: 22, column: 1, scope: !28)
!39 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 24, type: !40, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !8}
!42 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !1, line: 24, type: !8)
!43 = !DILocation(line: 24, column: 20, scope: !39)
!44 = !DILocation(line: 25, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 9)
!46 = !DILocation(line: 25, column: 9, scope: !39)
!47 = !DILocation(line: 25, column: 19, scope: !45)
!48 = !DILocation(line: 25, column: 14, scope: !45)
!49 = !DILocation(line: 26, column: 1, scope: !39)
!50 = distinct !DISubprogram(name: "xmlXPathNewString", scope: !1, file: !1, line: 29, type: !51, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{!9, !16}
!53 = !DILocalVariable(name: "val", arg: 1, scope: !50, file: !1, line: 29, type: !16)
!54 = !DILocation(line: 29, column: 41, scope: !50)
!55 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 30, type: !9)
!56 = !DILocation(line: 30, column: 21, scope: !50)
!57 = !DILocation(line: 32, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 9)
!59 = !DILocation(line: 32, column: 13, scope: !58)
!60 = !DILocation(line: 32, column: 9, scope: !50)
!61 = !DILocation(line: 33, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 32, column: 22)
!63 = !DILocation(line: 36, column: 28, scope: !50)
!64 = !DILocation(line: 36, column: 11, scope: !50)
!65 = !DILocation(line: 36, column: 9, scope: !50)
!66 = !DILocation(line: 37, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !50, file: !1, line: 37, column: 9)
!68 = !DILocation(line: 37, column: 13, scope: !67)
!69 = !DILocation(line: 37, column: 9, scope: !50)
!70 = !DILocation(line: 38, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 37, column: 22)
!72 = !DILocation(line: 39, column: 17, scope: !71)
!73 = !DILocation(line: 39, column: 9, scope: !71)
!74 = !DILocation(line: 40, column: 9, scope: !71)
!75 = !DILocation(line: 44, column: 12, scope: !50)
!76 = !DILocation(line: 44, column: 5, scope: !50)
!77 = !DILocation(line: 46, column: 5, scope: !50)
!78 = !DILocation(line: 46, column: 10, scope: !50)
!79 = !DILocation(line: 46, column: 15, scope: !50)
!80 = !DILocation(line: 47, column: 22, scope: !50)
!81 = !DILocation(line: 47, column: 5, scope: !50)
!82 = !DILocation(line: 47, column: 10, scope: !50)
!83 = !DILocation(line: 47, column: 20, scope: !50)
!84 = !DILocation(line: 48, column: 12, scope: !50)
!85 = !DILocation(line: 48, column: 5, scope: !50)
!86 = !DILocation(line: 49, column: 1, scope: !50)
!87 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 52, type: !88, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!88 = !DISubroutineType(types: !89)
!89 = !{!9}
!90 = !DILocalVariable(name: "val", scope: !87, file: !1, line: 55, type: !16)
!91 = !DILocation(line: 55, column: 11, scope: !87)
!92 = !DILocalVariable(name: "result", scope: !87, file: !1, line: 56, type: !9)
!93 = !DILocation(line: 56, column: 21, scope: !87)
!94 = !DILocation(line: 59, column: 18, scope: !87)
!95 = !DILocation(line: 59, column: 9, scope: !87)
!96 = !DILocation(line: 60, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !87, file: !1, line: 60, column: 9)
!98 = !DILocation(line: 60, column: 9, scope: !87)
!99 = !DILocation(line: 60, column: 15, scope: !97)
!100 = !DILocation(line: 62, column: 24, scope: !87)
!101 = !DILocation(line: 62, column: 5, scope: !87)
!102 = !DILocation(line: 65, column: 32, scope: !87)
!103 = !DILocation(line: 65, column: 14, scope: !87)
!104 = !DILocation(line: 65, column: 12, scope: !87)
!105 = !DILocation(line: 67, column: 12, scope: !87)
!106 = !DILocation(line: 67, column: 5, scope: !87)
!107 = !DILocation(line: 68, column: 1, scope: !87)
!108 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !109, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!109 = !DISubroutineType(types: !110)
!110 = !{!111}
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !DILocalVariable(name: "obj", scope: !108, file: !1, line: 71, type: !9)
!113 = !DILocation(line: 71, column: 21, scope: !108)
!114 = !DILocation(line: 74, column: 11, scope: !108)
!115 = !DILocation(line: 74, column: 9, scope: !108)
!116 = !DILocation(line: 77, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !1, line: 77, column: 9)
!118 = !DILocation(line: 77, column: 13, scope: !117)
!119 = !DILocation(line: 77, column: 9, scope: !108)
!120 = !DILocation(line: 86, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 77, column: 22)
!122 = !DILocation(line: 89, column: 9, scope: !121)
!123 = !DILocation(line: 92, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 92, column: 13)
!125 = !DILocation(line: 92, column: 18, scope: !124)
!126 = !DILocation(line: 92, column: 13, scope: !121)
!127 = !DILocation(line: 92, column: 34, scope: !124)
!128 = !DILocation(line: 92, column: 39, scope: !124)
!129 = !DILocation(line: 92, column: 29, scope: !124)
!130 = !DILocation(line: 93, column: 14, scope: !121)
!131 = !DILocation(line: 93, column: 9, scope: !121)
!132 = !DILocation(line: 94, column: 5, scope: !121)
!133 = !DILocation(line: 96, column: 5, scope: !108)
!134 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 12, type: !136, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !33)
!135 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!136 = !DISubroutineType(types: !137)
!137 = !{!8, !8, !111, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !135, line: 12, type: !8)
!142 = !DILocation(line: 12, column: 20, scope: !134)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !134, file: !135, line: 12, type: !111)
!144 = !DILocation(line: 12, column: 29, scope: !134)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !135, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 39, scope: !134)
!147 = !DILocalVariable(name: "a", scope: !134, file: !135, line: 13, type: !16)
!148 = !DILocation(line: 13, column: 9, scope: !134)
!149 = !DILocation(line: 13, column: 13, scope: !134)
!150 = !DILocation(line: 14, column: 3, scope: !134)
!151 = !DILocation(line: 14, column: 15, scope: !134)
!152 = !DILocation(line: 14, column: 18, scope: !134)
!153 = !DILocation(line: 15, column: 12, scope: !134)
!154 = !DILocation(line: 15, column: 7, scope: !134)
!155 = !DILocation(line: 15, column: 10, scope: !134)
!156 = distinct !{!156, !150, !153, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 16, column: 10, scope: !134)
!159 = !DILocation(line: 16, column: 3, scope: !134)
