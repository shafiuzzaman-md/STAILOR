; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaItemList = type {}
%struct._xmlSchemaConstructionCtxt = type { %struct._xmlSchemaItemList* }

@.str = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"allocating schema construction context\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"allocating list of schema buckets\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"(ret != ((void*)0) && sizeof(xmlSchemaConstructionCtxt) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewConstructionCtxt = private unnamed_addr constant [62 x i8] c"xmlSchemaConstructionCtxt *xmlSchemaNewConstructionCtxt(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !23 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !33, metadata !DIExpression()), !dbg !34
  ret void, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaItemList* @xmlSchemaItemListCreate() #0 !dbg !36 {
  %1 = alloca %struct._xmlSchemaItemList*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaItemList** %1, metadata !39, metadata !DIExpression()), !dbg !40
  %2 = bitcast %struct._xmlSchemaItemList** %1 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !42
  %3 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %1, align 8, !dbg !43
  %4 = icmp eq %struct._xmlSchemaItemList* %3, null, !dbg !44
  br i1 %4, label %8, label %5, !dbg !45

5:                                                ; preds = %0
  %6 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %1, align 8, !dbg !46
  %7 = icmp ne %struct._xmlSchemaItemList* %6, null, !dbg !47
  br label %8, !dbg !45

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !45
  %11 = sext i32 %10 to i64, !dbg !43
  call void @klee_assume(i64 noundef %11), !dbg !48
  %12 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %1, align 8, !dbg !49
  ret %struct._xmlSchemaItemList* %12, !dbg !50
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaConstructionCtxt* @xmlSchemaNewConstructionCtxt() #0 !dbg !51 {
  %1 = alloca %struct._xmlSchemaConstructionCtxt*, align 8
  %2 = alloca %struct._xmlSchemaConstructionCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaConstructionCtxt** %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !56
  %4 = bitcast i8* %3 to %struct._xmlSchemaConstructionCtxt*, !dbg !57
  store %struct._xmlSchemaConstructionCtxt* %4, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !58
  %5 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !59
  %6 = icmp eq %struct._xmlSchemaConstructionCtxt* %5, null, !dbg !61
  br i1 %6, label %7, label %8, !dbg !62

7:                                                ; preds = %0
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !63
  store %struct._xmlSchemaConstructionCtxt* null, %struct._xmlSchemaConstructionCtxt** %1, align 8, !dbg !65
  br label %30, !dbg !65

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !66
  %10 = bitcast %struct._xmlSchemaConstructionCtxt* %9 to i8*, !dbg !67
  %11 = call i8* @memset(i8* %10, i32 0, i64 8), !dbg !67
  %12 = call %struct._xmlSchemaItemList* @xmlSchemaItemListCreate(), !dbg !68
  %13 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !69
  %14 = getelementptr inbounds %struct._xmlSchemaConstructionCtxt, %struct._xmlSchemaConstructionCtxt* %13, i32 0, i32 0, !dbg !70
  store %struct._xmlSchemaItemList* %12, %struct._xmlSchemaItemList** %14, align 8, !dbg !71
  %15 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !72
  %16 = getelementptr inbounds %struct._xmlSchemaConstructionCtxt, %struct._xmlSchemaConstructionCtxt* %15, i32 0, i32 0, !dbg !74
  %17 = load %struct._xmlSchemaItemList*, %struct._xmlSchemaItemList** %16, align 8, !dbg !74
  %18 = icmp eq %struct._xmlSchemaItemList* %17, null, !dbg !75
  br i1 %18, label %19, label %20, !dbg !76

19:                                               ; preds = %8
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* noundef null), !dbg !77
  br label %20, !dbg !79

20:                                               ; preds = %19, %8
  %21 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !80
  %22 = icmp ne %struct._xmlSchemaConstructionCtxt* %21, null, !dbg !80
  br i1 %22, label %23, label %25, !dbg !80

23:                                               ; preds = %20
  br i1 true, label %24, label %25, !dbg !80

24:                                               ; preds = %23
  br label %27, !dbg !80

25:                                               ; preds = %23, %20
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewConstructionCtxt, i64 0, i64 0)), !dbg !80
  br label %27, !dbg !80

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewConstructionCtxt, i64 0, i64 0)), !dbg !81
  %29 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %2, align 8, !dbg !82
  store %struct._xmlSchemaConstructionCtxt* %29, %struct._xmlSchemaConstructionCtxt** %1, align 8, !dbg !83
  br label %30, !dbg !83

30:                                               ; preds = %27, %7
  %31 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %1, align 8, !dbg !84
  ret %struct._xmlSchemaConstructionCtxt* %31, !dbg !84
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1) #0 !dbg !85 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlSchemaConstructionCtxt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaConstructionCtxt** %5, metadata !93, metadata !DIExpression()), !dbg !94
  %6 = call %struct._xmlSchemaConstructionCtxt* @xmlSchemaNewConstructionCtxt(), !dbg !95
  store %struct._xmlSchemaConstructionCtxt* %6, %struct._xmlSchemaConstructionCtxt** %5, align 8, !dbg !94
  %7 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %5, align 8, !dbg !96
  %8 = icmp ne %struct._xmlSchemaConstructionCtxt* %7, null, !dbg !96
  br i1 %8, label %9, label %12, !dbg !98

9:                                                ; preds = %2
  %10 = load %struct._xmlSchemaConstructionCtxt*, %struct._xmlSchemaConstructionCtxt** %5, align 8, !dbg !99
  %11 = bitcast %struct._xmlSchemaConstructionCtxt* %10 to i8*, !dbg !99
  call void @free(i8* noundef %11) #7, !dbg !101
  br label %12, !dbg !102

12:                                               ; preds = %9, %2
  ret i8* null, !dbg !103
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !104 {
  %1 = alloca i32, align 4
  %2 = alloca [10 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [10 x i8]* %2, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !113, metadata !DIExpression()), !dbg !114
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !115
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !116
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !117
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !118
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 9, !dbg !119
  store i8 0, i8* %7, align 1, !dbg !120
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9, !dbg !121
  store i8 0, i8* %8, align 1, !dbg !122
  call void @llvm.dbg.declare(metadata i8** %4, metadata !123, metadata !DIExpression()), !dbg !124
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %2, i64 0, i64 0, !dbg !125
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !126
  %11 = call i8* @xmlSchemaFormatQName(i8* noundef %9, i8* noundef %10), !dbg !127
  store i8* %11, i8** %4, align 8, !dbg !124
  %12 = load i8*, i8** %4, align 8, !dbg !128
  %13 = icmp ne i8* %12, null, !dbg !128
  br i1 %13, label %14, label %15, !dbg !130

14:                                               ; preds = %0
  br label %15, !dbg !131

15:                                               ; preds = %14, %0
  ret i32 0, !dbg !133
}

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
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/368_xmlschemas.c_9895_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "51803659a3634eaeea23a531f22b7748")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaConstructionCtxt", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaConstructionCtxt", file: !1, line: 13, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemList", file: !1, line: 11, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaItemList", file: !1, line: 18, elements: !11)
!11 = !{}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !12, !26, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !DILocalVariable(name: "ctxt", arg: 1, scope: !23, file: !1, line: 23, type: !12)
!30 = !DILocation(line: 23, column: 32, scope: !23)
!31 = !DILocalVariable(name: "msg", arg: 2, scope: !23, file: !1, line: 23, type: !26)
!32 = !DILocation(line: 23, column: 50, scope: !23)
!33 = !DILocalVariable(name: "extra", arg: 3, scope: !23, file: !1, line: 23, type: !26)
!34 = !DILocation(line: 23, column: 67, scope: !23)
!35 = !DILocation(line: 25, column: 1, scope: !23)
!36 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 27, type: !37, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!37 = !DISubroutineType(types: !38)
!38 = !{!8}
!39 = !DILocalVariable(name: "list", scope: !36, file: !1, line: 29, type: !8)
!40 = !DILocation(line: 29, column: 24, scope: !36)
!41 = !DILocation(line: 30, column: 24, scope: !36)
!42 = !DILocation(line: 30, column: 5, scope: !36)
!43 = !DILocation(line: 31, column: 17, scope: !36)
!44 = !DILocation(line: 31, column: 22, scope: !36)
!45 = !DILocation(line: 31, column: 27, scope: !36)
!46 = !DILocation(line: 31, column: 30, scope: !36)
!47 = !DILocation(line: 31, column: 35, scope: !36)
!48 = !DILocation(line: 31, column: 5, scope: !36)
!49 = !DILocation(line: 32, column: 12, scope: !36)
!50 = !DILocation(line: 32, column: 5, scope: !36)
!51 = distinct !DISubprogram(name: "xmlSchemaNewConstructionCtxt", scope: !1, file: !1, line: 36, type: !52, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!52 = !DISubroutineType(types: !53)
!53 = !{!3}
!54 = !DILocalVariable(name: "ret", scope: !51, file: !1, line: 37, type: !3)
!55 = !DILocation(line: 37, column: 32, scope: !51)
!56 = !DILocation(line: 40, column: 39, scope: !51)
!57 = !DILocation(line: 40, column: 11, scope: !51)
!58 = !DILocation(line: 40, column: 9, scope: !51)
!59 = !DILocation(line: 41, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !1, line: 41, column: 9)
!61 = !DILocation(line: 41, column: 13, scope: !60)
!62 = !DILocation(line: 41, column: 9, scope: !51)
!63 = !DILocation(line: 42, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 22)
!65 = !DILocation(line: 43, column: 9, scope: !64)
!66 = !DILocation(line: 48, column: 12, scope: !51)
!67 = !DILocation(line: 48, column: 5, scope: !51)
!68 = !DILocation(line: 50, column: 20, scope: !51)
!69 = !DILocation(line: 50, column: 5, scope: !51)
!70 = !DILocation(line: 50, column: 10, scope: !51)
!71 = !DILocation(line: 50, column: 18, scope: !51)
!72 = !DILocation(line: 51, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !51, file: !1, line: 51, column: 9)
!74 = !DILocation(line: 51, column: 14, scope: !73)
!75 = !DILocation(line: 51, column: 22, scope: !73)
!76 = !DILocation(line: 51, column: 9, scope: !51)
!77 = !DILocation(line: 52, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 51, column: 31)
!79 = !DILocation(line: 54, column: 5, scope: !78)
!80 = !DILocation(line: 65, column: 5, scope: !51)
!81 = !DILocation(line: 68, column: 5, scope: !51)
!82 = !DILocation(line: 70, column: 12, scope: !51)
!83 = !DILocation(line: 70, column: 5, scope: !51)
!84 = !DILocation(line: 71, column: 1, scope: !51)
!85 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !1, file: !1, line: 74, type: !86, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !26, !26}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!89 = !DILocalVariable(name: "prefix", arg: 1, scope: !85, file: !1, line: 74, type: !26)
!90 = !DILocation(line: 74, column: 40, scope: !85)
!91 = !DILocalVariable(name: "name", arg: 2, scope: !85, file: !1, line: 74, type: !26)
!92 = !DILocation(line: 74, column: 60, scope: !85)
!93 = !DILocalVariable(name: "ctxt", scope: !85, file: !1, line: 76, type: !3)
!94 = !DILocation(line: 76, column: 32, scope: !85)
!95 = !DILocation(line: 76, column: 39, scope: !85)
!96 = !DILocation(line: 77, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !1, line: 77, column: 9)
!98 = !DILocation(line: 77, column: 9, scope: !85)
!99 = !DILocation(line: 78, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 77, column: 15)
!101 = !DILocation(line: 78, column: 9, scope: !100)
!102 = !DILocation(line: 79, column: 5, scope: !100)
!103 = !DILocation(line: 80, column: 5, scope: !85)
!104 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 83, type: !105, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !11)
!105 = !DISubroutineType(types: !106)
!106 = !{!107}
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !DILocalVariable(name: "prefix", scope: !104, file: !1, line: 85, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 80, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 10)
!112 = !DILocation(line: 85, column: 10, scope: !104)
!113 = !DILocalVariable(name: "name", scope: !104, file: !1, line: 86, type: !109)
!114 = !DILocation(line: 86, column: 10, scope: !104)
!115 = !DILocation(line: 88, column: 24, scope: !104)
!116 = !DILocation(line: 88, column: 5, scope: !104)
!117 = !DILocation(line: 89, column: 24, scope: !104)
!118 = !DILocation(line: 89, column: 5, scope: !104)
!119 = !DILocation(line: 92, column: 5, scope: !104)
!120 = !DILocation(line: 92, column: 15, scope: !104)
!121 = !DILocation(line: 93, column: 5, scope: !104)
!122 = !DILocation(line: 93, column: 13, scope: !104)
!123 = !DILocalVariable(name: "result", scope: !104, file: !1, line: 96, type: !88)
!124 = !DILocation(line: 96, column: 11, scope: !104)
!125 = !DILocation(line: 96, column: 41, scope: !104)
!126 = !DILocation(line: 96, column: 49, scope: !104)
!127 = !DILocation(line: 96, column: 20, scope: !104)
!128 = !DILocation(line: 99, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !104, file: !1, line: 99, column: 9)
!130 = !DILocation(line: 99, column: 9, scope: !104)
!131 = !DILocation(line: 101, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 99, column: 17)
!133 = !DILocation(line: 103, column: 5, scope: !104)
!134 = distinct !DISubprogram(name: "memset", scope: !135, file: !135, line: 12, type: !136, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !11)
!135 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!136 = !DISubroutineType(types: !137)
!137 = !{!12, !12, !107, !138}
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!140 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!141 = !DILocalVariable(name: "dst", arg: 1, scope: !134, file: !135, line: 12, type: !12)
!142 = !DILocation(line: 12, column: 20, scope: !134)
!143 = !DILocalVariable(name: "s", arg: 2, scope: !134, file: !135, line: 12, type: !107)
!144 = !DILocation(line: 12, column: 29, scope: !134)
!145 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !135, line: 12, type: !138)
!146 = !DILocation(line: 12, column: 39, scope: !134)
!147 = !DILocalVariable(name: "a", scope: !134, file: !135, line: 13, type: !88)
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
