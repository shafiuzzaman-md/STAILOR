; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/349_xpath.c_3918_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/349_xpath.c_3918_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathObject = type { i32, %struct._xmlNode**, i32, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [8 x i8] c"nodeMax\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/349_xpath.c_3918_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"merging nodeset\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"merging nodeset hit limit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !19 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i64, i64* %2, align 8, !dbg !28
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !29
  ret i8* %4, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !31 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject, align 8
  %3 = alloca %struct._xmlXPathObject*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject* %2, metadata !46, metadata !DIExpression()), !dbg !54
  %4 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !55
  %5 = bitcast i32* %4 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !57
  %6 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 3, !dbg !58
  %7 = load i32, i32* %6, align 4, !dbg !58
  %8 = icmp eq i32 %7, 0, !dbg !59
  %9 = zext i1 %8 to i32, !dbg !59
  %10 = sext i32 %9 to i64, !dbg !60
  call void @klee_assume(i64 noundef %10), !dbg !61
  %11 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 1, !dbg !62
  store %struct._xmlNode** null, %struct._xmlNode*** %11, align 8, !dbg !63
  %12 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %2, i32 0, i32 2, !dbg !64
  store i32 0, i32* %12, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !66, metadata !DIExpression()), !dbg !68
  %13 = call %struct._xmlXPathObject* @target_function(%struct._xmlXPathObject* noundef %2), !dbg !69
  store %struct._xmlXPathObject* %13, %struct._xmlXPathObject** %3, align 8, !dbg !68
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !70
  %15 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !71
  %16 = icmp ne %struct._xmlXPathObject* %15, null, !dbg !71
  br i1 %16, label %17, label %27, !dbg !73

17:                                               ; preds = %0
  %18 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !74
  %19 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %18, i32 0, i32 1, !dbg !75
  %20 = load %struct._xmlNode**, %struct._xmlNode*** %19, align 8, !dbg !75
  %21 = icmp ne %struct._xmlNode** %20, null, !dbg !74
  br i1 %21, label %22, label %27, !dbg !76

22:                                               ; preds = %17
  %23 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !77
  %24 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %23, i32 0, i32 1, !dbg !79
  %25 = load %struct._xmlNode**, %struct._xmlNode*** %24, align 8, !dbg !79
  %26 = bitcast %struct._xmlNode** %25 to i8*, !dbg !77
  call void @free(i8* noundef %26) #7, !dbg !80
  br label %27, !dbg !81

27:                                               ; preds = %22, %17, %0
  ret i32 0, !dbg !82
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlXPathObject* @target_function(%struct._xmlXPathObject* noundef %0) #0 !dbg !83 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca %struct._xmlXPathObject*, align 8
  %4 = alloca %struct._xmlNode**, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !86, metadata !DIExpression()), !dbg !87
  %5 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !88
  %6 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %5, i32 0, i32 3, !dbg !90
  %7 = load i32, i32* %6, align 4, !dbg !90
  %8 = icmp eq i32 %7, 0, !dbg !91
  br i1 %8, label %9, label %27, !dbg !92

9:                                                ; preds = %1
  %10 = call i8* @xmlMalloc(i64 noundef 80), !dbg !93
  %11 = bitcast i8* %10 to %struct._xmlNode**, !dbg !95
  %12 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !96
  %13 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %12, i32 0, i32 1, !dbg !97
  store %struct._xmlNode** %11, %struct._xmlNode*** %13, align 8, !dbg !98
  %14 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !99
  %15 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %14, i32 0, i32 1, !dbg !101
  %16 = load %struct._xmlNode**, %struct._xmlNode*** %15, align 8, !dbg !101
  %17 = icmp eq %struct._xmlNode** %16, null, !dbg !102
  br i1 %17, label %18, label %19, !dbg !103

18:                                               ; preds = %9
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)), !dbg !104
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !106
  br label %45, !dbg !106

19:                                               ; preds = %9
  %20 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !107
  %21 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %20, i32 0, i32 1, !dbg !108
  %22 = load %struct._xmlNode**, %struct._xmlNode*** %21, align 8, !dbg !108
  %23 = bitcast %struct._xmlNode** %22 to i8*, !dbg !109
  %24 = call i8* @memset(i8* %23, i32 0, i64 80), !dbg !109
  %25 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !110
  %26 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %25, i32 0, i32 3, !dbg !111
  store i32 10, i32* %26, align 4, !dbg !112
  br label %43, !dbg !113

27:                                               ; preds = %1
  %28 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !114
  %29 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %28, i32 0, i32 2, !dbg !116
  %30 = load i32, i32* %29, align 8, !dbg !116
  %31 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !117
  %32 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %31, i32 0, i32 3, !dbg !118
  %33 = load i32, i32* %32, align 4, !dbg !118
  %34 = icmp eq i32 %30, %33, !dbg !119
  br i1 %34, label %35, label %42, !dbg !120

35:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %4, metadata !121, metadata !DIExpression()), !dbg !123
  %36 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !124
  %37 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %36, i32 0, i32 3, !dbg !126
  %38 = load i32, i32* %37, align 4, !dbg !126
  %39 = icmp sge i32 %38, 1000000, !dbg !127
  br i1 %39, label %40, label %41, !dbg !128

40:                                               ; preds = %35
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)), !dbg !129
  store %struct._xmlXPathObject* null, %struct._xmlXPathObject** %2, align 8, !dbg !131
  br label %45, !dbg !131

41:                                               ; preds = %35
  br label %42, !dbg !132

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !133
  store %struct._xmlXPathObject* %44, %struct._xmlXPathObject** %2, align 8, !dbg !134
  br label %45, !dbg !134

45:                                               ; preds = %43, %40, %18
  %46 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !135
  ret %struct._xmlXPathObject* %46, !dbg !135
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !136 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !148
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
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/349_xpath.c_3918_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "31f81d35de45a68f8447557b021e419f")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !7)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!19 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 27, type: !20, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!8, !22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{}
!26 = !DILocalVariable(name: "size", arg: 1, scope: !19, file: !1, line: 27, type: !22)
!27 = !DILocation(line: 27, column: 24, scope: !19)
!28 = !DILocation(line: 28, column: 19, scope: !19)
!29 = !DILocation(line: 28, column: 12, scope: !19)
!30 = !DILocation(line: 28, column: 5, scope: !19)
!31 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 32, type: !32, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !8, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DILocalVariable(name: "ctxt", arg: 1, scope: !31, file: !1, line: 32, type: !8)
!38 = !DILocation(line: 32, column: 30, scope: !31)
!39 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 32, type: !34)
!40 = !DILocation(line: 32, column: 48, scope: !31)
!41 = !DILocation(line: 34, column: 1, scope: !31)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !43, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{!45}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DILocalVariable(name: "val1", scope: !42, file: !1, line: 63, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 12, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 19, size: 192, elements: !49)
!49 = !{!50, !51, !52, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !1, line: 20, baseType: !45, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !48, file: !1, line: 21, baseType: !3, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !48, file: !1, line: 22, baseType: !45, size: 32, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !48, file: !1, line: 23, baseType: !45, size: 32, offset: 160)
!54 = !DILocation(line: 63, column: 20, scope: !42)
!55 = !DILocation(line: 66, column: 30, scope: !42)
!56 = !DILocation(line: 66, column: 24, scope: !42)
!57 = !DILocation(line: 66, column: 5, scope: !42)
!58 = !DILocation(line: 69, column: 22, scope: !42)
!59 = !DILocation(line: 69, column: 30, scope: !42)
!60 = !DILocation(line: 69, column: 17, scope: !42)
!61 = !DILocation(line: 69, column: 5, scope: !42)
!62 = !DILocation(line: 72, column: 10, scope: !42)
!63 = !DILocation(line: 72, column: 18, scope: !42)
!64 = !DILocation(line: 73, column: 10, scope: !42)
!65 = !DILocation(line: 73, column: 17, scope: !42)
!66 = !DILocalVariable(name: "result", scope: !42, file: !1, line: 76, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!68 = !DILocation(line: 76, column: 21, scope: !42)
!69 = !DILocation(line: 76, column: 30, scope: !42)
!70 = !DILocation(line: 84, column: 5, scope: !42)
!71 = !DILocation(line: 87, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !42, file: !1, line: 87, column: 9)
!73 = !DILocation(line: 87, column: 16, scope: !72)
!74 = !DILocation(line: 87, column: 19, scope: !72)
!75 = !DILocation(line: 87, column: 27, scope: !72)
!76 = !DILocation(line: 87, column: 9, scope: !42)
!77 = !DILocation(line: 88, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 87, column: 36)
!79 = !DILocation(line: 88, column: 22, scope: !78)
!80 = !DILocation(line: 88, column: 9, scope: !78)
!81 = !DILocation(line: 89, column: 5, scope: !78)
!82 = !DILocation(line: 91, column: 5, scope: !42)
!83 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !84, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !25)
!84 = !DISubroutineType(types: !85)
!85 = !{!67, !67}
!86 = !DILocalVariable(name: "val1", arg: 1, scope: !83, file: !1, line: 37, type: !67)
!87 = !DILocation(line: 37, column: 56, scope: !83)
!88 = !DILocation(line: 38, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 38, column: 9)
!90 = !DILocation(line: 38, column: 15, scope: !89)
!91 = !DILocation(line: 38, column: 23, scope: !89)
!92 = !DILocation(line: 38, column: 9, scope: !83)
!93 = !DILocation(line: 39, column: 40, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 38, column: 29)
!95 = !DILocation(line: 39, column: 25, scope: !94)
!96 = !DILocation(line: 39, column: 9, scope: !94)
!97 = !DILocation(line: 39, column: 15, scope: !94)
!98 = !DILocation(line: 39, column: 23, scope: !94)
!99 = !DILocation(line: 41, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !94, file: !1, line: 41, column: 13)
!101 = !DILocation(line: 41, column: 19, scope: !100)
!102 = !DILocation(line: 41, column: 27, scope: !100)
!103 = !DILocation(line: 41, column: 13, scope: !94)
!104 = !DILocation(line: 42, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 41, column: 36)
!106 = !DILocation(line: 43, column: 13, scope: !105)
!107 = !DILocation(line: 46, column: 16, scope: !94)
!108 = !DILocation(line: 46, column: 22, scope: !94)
!109 = !DILocation(line: 46, column: 9, scope: !94)
!110 = !DILocation(line: 48, column: 9, scope: !94)
!111 = !DILocation(line: 48, column: 15, scope: !94)
!112 = !DILocation(line: 48, column: 23, scope: !94)
!113 = !DILocation(line: 49, column: 5, scope: !94)
!114 = !DILocation(line: 49, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !89, file: !1, line: 49, column: 16)
!116 = !DILocation(line: 49, column: 22, scope: !115)
!117 = !DILocation(line: 49, column: 32, scope: !115)
!118 = !DILocation(line: 49, column: 38, scope: !115)
!119 = !DILocation(line: 49, column: 29, scope: !115)
!120 = !DILocation(line: 49, column: 16, scope: !89)
!121 = !DILocalVariable(name: "temp", scope: !122, file: !1, line: 50, type: !3)
!122 = distinct !DILexicalBlock(scope: !115, file: !1, line: 49, column: 47)
!123 = !DILocation(line: 50, column: 21, scope: !122)
!124 = !DILocation(line: 52, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 52, column: 13)
!126 = !DILocation(line: 52, column: 19, scope: !125)
!127 = !DILocation(line: 52, column: 27, scope: !125)
!128 = !DILocation(line: 52, column: 13, scope: !122)
!129 = !DILocation(line: 53, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 52, column: 56)
!131 = !DILocation(line: 54, column: 13, scope: !130)
!132 = !DILocation(line: 57, column: 5, scope: !122)
!133 = !DILocation(line: 58, column: 12, scope: !83)
!134 = !DILocation(line: 58, column: 5, scope: !83)
!135 = !DILocation(line: 59, column: 1, scope: !83)
!136 = distinct !DISubprogram(name: "memset", scope: !137, file: !137, line: 12, type: !138, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!137 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!138 = !DISubroutineType(types: !139)
!139 = !{!8, !8, !45, !22}
!140 = !DILocalVariable(name: "dst", arg: 1, scope: !136, file: !137, line: 12, type: !8)
!141 = !DILocation(line: 12, column: 20, scope: !136)
!142 = !DILocalVariable(name: "s", arg: 2, scope: !136, file: !137, line: 12, type: !45)
!143 = !DILocation(line: 12, column: 29, scope: !136)
!144 = !DILocalVariable(name: "count", arg: 3, scope: !136, file: !137, line: 12, type: !22)
!145 = !DILocation(line: 12, column: 39, scope: !136)
!146 = !DILocalVariable(name: "a", scope: !136, file: !137, line: 13, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!148 = !DILocation(line: 13, column: 9, scope: !136)
!149 = !DILocation(line: 13, column: 13, scope: !136)
!150 = !DILocation(line: 14, column: 3, scope: !136)
!151 = !DILocation(line: 14, column: 15, scope: !136)
!152 = !DILocation(line: 14, column: 18, scope: !136)
!153 = !DILocation(line: 15, column: 12, scope: !136)
!154 = !DILocation(line: 15, column: 7, scope: !136)
!155 = !DILocation(line: 15, column: 10, scope: !136)
!156 = distinct !{!156, !150, !153, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 16, column: 10, scope: !136)
!159 = !DILocation(line: 16, column: 3, scope: !136)
