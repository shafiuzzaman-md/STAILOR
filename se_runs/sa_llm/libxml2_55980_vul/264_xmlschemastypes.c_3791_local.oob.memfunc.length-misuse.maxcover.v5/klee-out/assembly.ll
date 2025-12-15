; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/264_xmlschemastypes.c_3791_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/264_xmlschemastypes.c_3791_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type { i32, %struct._xmlSchemaVal*, [256 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"v_type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"v_data\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"(ret != ((void*)0) && v != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/264_xmlschemastypes.c_3791_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaDupVal = private unnamed_addr constant [49 x i8] c"xmlSchemaValPtr xmlSchemaDupVal(xmlSchemaValPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %0) #0 !dbg !29 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = call noalias i8* @malloc(i64 noundef 272) #8, !dbg !37
  %5 = bitcast i8* %4 to %struct._xmlSchemaVal*, !dbg !38
  store %struct._xmlSchemaVal* %5, %struct._xmlSchemaVal** %3, align 8, !dbg !36
  %6 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !39
  %7 = icmp ne %struct._xmlSchemaVal* %6, null, !dbg !39
  br i1 %7, label %8, label %18, !dbg !41

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !42
  %10 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !44
  %11 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %10, i32 0, i32 0, !dbg !45
  store i32 %9, i32* %11, align 8, !dbg !46
  %12 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !47
  %13 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %12, i32 0, i32 1, !dbg !48
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %13, align 8, !dbg !49
  %14 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !50
  %15 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %14, i32 0, i32 2, !dbg !51
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0, !dbg !52
  %17 = call i8* @memset(i8* %16, i32 0, i64 256), !dbg !52
  br label %18, !dbg !53

18:                                               ; preds = %8, %1
  %19 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !54
  ret %struct._xmlSchemaVal* %19, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !56 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaVal, align 8
  %3 = alloca %struct._xmlSchemaVal*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal* %2, metadata !59, metadata !DIExpression()), !dbg !60
  %4 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 0, !dbg !61
  %5 = bitcast i32* %4 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !63
  %6 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 0, !dbg !64
  %7 = load i32, i32* %6, align 8, !dbg !64
  %8 = icmp sge i32 %7, 0, !dbg !65
  %9 = zext i1 %8 to i32, !dbg !65
  %10 = sext i32 %9 to i64, !dbg !66
  call void @klee_assume(i64 noundef %10), !dbg !67
  %11 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 1, !dbg !68
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %11, align 8, !dbg !69
  %12 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 2, !dbg !70
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0, !dbg !71
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !73, metadata !DIExpression()), !dbg !74
  %14 = call %struct._xmlSchemaVal* @xmlSchemaDupVal(%struct._xmlSchemaVal* noundef %2), !dbg !75
  store %struct._xmlSchemaVal* %14, %struct._xmlSchemaVal** %3, align 8, !dbg !74
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !76
  %16 = icmp ne %struct._xmlSchemaVal* %15, null, !dbg !76
  br i1 %16, label %17, label %20, !dbg !78

17:                                               ; preds = %0
  %18 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !79
  %19 = bitcast %struct._xmlSchemaVal* %18 to i8*, !dbg !79
  call void @free(i8* noundef %19) #8, !dbg !81
  br label %20, !dbg !82

20:                                               ; preds = %17, %0
  ret i32 0, !dbg !83
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaVal* @xmlSchemaDupVal(%struct._xmlSchemaVal* noundef %0) #0 !dbg !84 {
  %2 = alloca %struct._xmlSchemaVal*, align 8
  %3 = alloca %struct._xmlSchemaVal*, align 8
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store %struct._xmlSchemaVal* %0, %struct._xmlSchemaVal** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !89, metadata !DIExpression()), !dbg !90
  %5 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !91
  %6 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %5, i32 0, i32 0, !dbg !92
  %7 = load i32, i32* %6, align 8, !dbg !92
  %8 = call %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %7), !dbg !93
  store %struct._xmlSchemaVal* %8, %struct._xmlSchemaVal** %4, align 8, !dbg !90
  %9 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !94
  %10 = icmp eq %struct._xmlSchemaVal* %9, null, !dbg !96
  br i1 %10, label %11, label %12, !dbg !97

11:                                               ; preds = %1
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %2, align 8, !dbg !98
  br label %32, !dbg !98

12:                                               ; preds = %1
  %13 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !99
  %14 = bitcast %struct._xmlSchemaVal* %13 to i8*, !dbg !100
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !101
  %16 = bitcast %struct._xmlSchemaVal* %15 to i8*, !dbg !100
  %17 = call i8* @memcpy(i8* %14, i8* %16, i64 272), !dbg !100
  %18 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !102
  %19 = icmp ne %struct._xmlSchemaVal* %18, null, !dbg !102
  br i1 %19, label %20, label %25, !dbg !102

20:                                               ; preds = %12
  %21 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !102
  %22 = icmp ne %struct._xmlSchemaVal* %21, null, !dbg !102
  br i1 %22, label %23, label %25, !dbg !102

23:                                               ; preds = %20
  br i1 true, label %24, label %25, !dbg !102

24:                                               ; preds = %23
  br label %27, !dbg !102

25:                                               ; preds = %23, %20, %12
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlSchemaDupVal, i64 0, i64 0)), !dbg !102
  br label %27, !dbg !102

27:                                               ; preds = %25, %24
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlSchemaDupVal, i64 0, i64 0)), !dbg !103
  %29 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !104
  %30 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %29, i32 0, i32 1, !dbg !105
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %30, align 8, !dbg !106
  %31 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !107
  store %struct._xmlSchemaVal* %31, %struct._xmlSchemaVal** %2, align 8, !dbg !108
  br label %32, !dbg !108

32:                                               ; preds = %27, %11
  %33 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %2, align 8, !dbg !109
  ret %struct._xmlSchemaVal* %33, !dbg !109
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !110 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !121, metadata !DIExpression()), !dbg !122
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i8** %7, metadata !125, metadata !DIExpression()), !dbg !127
  %9 = load i8*, i8** %4, align 8, !dbg !128
  store i8* %9, i8** %7, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i8** %8, metadata !129, metadata !DIExpression()), !dbg !132
  %10 = load i8*, i8** %5, align 8, !dbg !133
  store i8* %10, i8** %8, align 8, !dbg !132
  br label %11, !dbg !134

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !135
  %13 = add i64 %12, -1, !dbg !135
  store i64 %13, i64* %6, align 8, !dbg !135
  %14 = icmp ugt i64 %12, 0, !dbg !136
  br i1 %14, label %15, label %21, !dbg !134

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !137
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !137
  store i8* %17, i8** %8, align 8, !dbg !137
  %18 = load i8, i8* %16, align 1, !dbg !138
  %19 = load i8*, i8** %7, align 8, !dbg !139
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !139
  store i8* %20, i8** %7, align 8, !dbg !139
  store i8 %18, i8* %19, align 1, !dbg !140
  br label %11, !dbg !134, !llvm.loop !141

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !143
  ret i8* %22, !dbg !144
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !155, metadata !DIExpression()), !dbg !156
  %8 = load i8*, i8** %4, align 8, !dbg !157
  store i8* %8, i8** %7, align 8, !dbg !156
  br label %9, !dbg !158

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !159
  %11 = add i64 %10, -1, !dbg !159
  store i64 %11, i64* %6, align 8, !dbg !159
  %12 = icmp ugt i64 %10, 0, !dbg !160
  br i1 %12, label %13, label %18, !dbg !158

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !161
  %15 = trunc i32 %14 to i8, !dbg !161
  %16 = load i8*, i8** %7, align 8, !dbg !162
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !162
  store i8* %17, i8** %7, align 8, !dbg !162
  store i8 %15, i8* %16, align 1, !dbg !163
  br label %9, !dbg !158, !llvm.loop !164

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !165
  ret i8* %19, !dbg !166
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/264_xmlschemastypes.c_3791_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d6d3503834eb8d73940b9a2e92273cc0")
!2 = !{!3, !16}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !1, line: 13, size: 2176, elements: !7)
!7 = !{!8, !10, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 15, baseType: !3, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6, file: !1, line: 17, baseType: !12, size: 2048, offset: 128)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 256)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlSchemaNewValue", scope: !1, file: !1, line: 21, type: !30, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!3, !9}
!32 = !{}
!33 = !DILocalVariable(name: "type", arg: 1, scope: !29, file: !1, line: 21, type: !9)
!34 = !DILocation(line: 21, column: 39, scope: !29)
!35 = !DILocalVariable(name: "ret", scope: !29, file: !1, line: 22, type: !3)
!36 = !DILocation(line: 22, column: 21, scope: !29)
!37 = !DILocation(line: 22, column: 44, scope: !29)
!38 = !DILocation(line: 22, column: 27, scope: !29)
!39 = !DILocation(line: 23, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 23, column: 9)
!41 = !DILocation(line: 23, column: 9, scope: !29)
!42 = !DILocation(line: 24, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 23, column: 14)
!44 = !DILocation(line: 24, column: 9, scope: !43)
!45 = !DILocation(line: 24, column: 14, scope: !43)
!46 = !DILocation(line: 24, column: 19, scope: !43)
!47 = !DILocation(line: 25, column: 9, scope: !43)
!48 = !DILocation(line: 25, column: 14, scope: !43)
!49 = !DILocation(line: 25, column: 19, scope: !43)
!50 = !DILocation(line: 26, column: 16, scope: !43)
!51 = !DILocation(line: 26, column: 21, scope: !43)
!52 = !DILocation(line: 26, column: 9, scope: !43)
!53 = !DILocation(line: 27, column: 5, scope: !43)
!54 = !DILocation(line: 28, column: 12, scope: !29)
!55 = !DILocation(line: 28, column: 5, scope: !29)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !57, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!57 = !DISubroutineType(types: !58)
!58 = !{!9}
!59 = !DILocalVariable(name: "v", scope: !56, file: !1, line: 52, type: !5)
!60 = !DILocation(line: 52, column: 18, scope: !56)
!61 = !DILocation(line: 55, column: 27, scope: !56)
!62 = !DILocation(line: 55, column: 24, scope: !56)
!63 = !DILocation(line: 55, column: 5, scope: !56)
!64 = !DILocation(line: 57, column: 19, scope: !56)
!65 = !DILocation(line: 57, column: 24, scope: !56)
!66 = !DILocation(line: 57, column: 17, scope: !56)
!67 = !DILocation(line: 57, column: 5, scope: !56)
!68 = !DILocation(line: 60, column: 7, scope: !56)
!69 = !DILocation(line: 60, column: 12, scope: !56)
!70 = !DILocation(line: 63, column: 26, scope: !56)
!71 = !DILocation(line: 63, column: 24, scope: !56)
!72 = !DILocation(line: 63, column: 5, scope: !56)
!73 = !DILocalVariable(name: "dup", scope: !56, file: !1, line: 66, type: !3)
!74 = !DILocation(line: 66, column: 21, scope: !56)
!75 = !DILocation(line: 66, column: 27, scope: !56)
!76 = !DILocation(line: 69, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !56, file: !1, line: 69, column: 9)
!78 = !DILocation(line: 69, column: 9, scope: !56)
!79 = !DILocation(line: 70, column: 14, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 69, column: 14)
!81 = !DILocation(line: 70, column: 9, scope: !80)
!82 = !DILocation(line: 71, column: 5, scope: !80)
!83 = !DILocation(line: 73, column: 5, scope: !56)
!84 = distinct !DISubprogram(name: "xmlSchemaDupVal", scope: !1, file: !1, line: 32, type: !85, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !32)
!85 = !DISubroutineType(types: !86)
!86 = !{!3, !3}
!87 = !DILocalVariable(name: "v", arg: 1, scope: !84, file: !1, line: 32, type: !3)
!88 = !DILocation(line: 32, column: 56, scope: !84)
!89 = !DILocalVariable(name: "ret", scope: !84, file: !1, line: 33, type: !3)
!90 = !DILocation(line: 33, column: 21, scope: !84)
!91 = !DILocation(line: 33, column: 45, scope: !84)
!92 = !DILocation(line: 33, column: 48, scope: !84)
!93 = !DILocation(line: 33, column: 27, scope: !84)
!94 = !DILocation(line: 34, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !84, file: !1, line: 34, column: 9)
!96 = !DILocation(line: 34, column: 13, scope: !95)
!97 = !DILocation(line: 34, column: 9, scope: !84)
!98 = !DILocation(line: 35, column: 9, scope: !95)
!99 = !DILocation(line: 38, column: 12, scope: !84)
!100 = !DILocation(line: 38, column: 5, scope: !84)
!101 = !DILocation(line: 38, column: 17, scope: !84)
!102 = !DILocation(line: 41, column: 5, scope: !84)
!103 = !DILocation(line: 44, column: 5, scope: !84)
!104 = !DILocation(line: 46, column: 5, scope: !84)
!105 = !DILocation(line: 46, column: 10, scope: !84)
!106 = !DILocation(line: 46, column: 15, scope: !84)
!107 = !DILocation(line: 47, column: 12, scope: !84)
!108 = !DILocation(line: 47, column: 5, scope: !84)
!109 = !DILocation(line: 48, column: 1, scope: !84)
!110 = distinct !DISubprogram(name: "memcpy", scope: !111, file: !111, line: 12, type: !112, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !32)
!111 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!112 = !DISubroutineType(types: !113)
!113 = !{!16, !16, !114, !116}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DILocalVariable(name: "destaddr", arg: 1, scope: !110, file: !111, line: 12, type: !16)
!120 = !DILocation(line: 12, column: 20, scope: !110)
!121 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !110, file: !111, line: 12, type: !114)
!122 = !DILocation(line: 12, column: 42, scope: !110)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !110, file: !111, line: 12, type: !116)
!124 = !DILocation(line: 12, column: 58, scope: !110)
!125 = !DILocalVariable(name: "dest", scope: !110, file: !111, line: 13, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!127 = !DILocation(line: 13, column: 9, scope: !110)
!128 = !DILocation(line: 13, column: 16, scope: !110)
!129 = !DILocalVariable(name: "src", scope: !110, file: !111, line: 14, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!132 = !DILocation(line: 14, column: 15, scope: !110)
!133 = !DILocation(line: 14, column: 21, scope: !110)
!134 = !DILocation(line: 16, column: 3, scope: !110)
!135 = !DILocation(line: 16, column: 13, scope: !110)
!136 = !DILocation(line: 16, column: 16, scope: !110)
!137 = !DILocation(line: 17, column: 19, scope: !110)
!138 = !DILocation(line: 17, column: 15, scope: !110)
!139 = !DILocation(line: 17, column: 10, scope: !110)
!140 = !DILocation(line: 17, column: 13, scope: !110)
!141 = distinct !{!141, !134, !137, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 18, column: 10, scope: !110)
!144 = !DILocation(line: 18, column: 3, scope: !110)
!145 = distinct !DISubprogram(name: "memset", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!146 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!147 = !DISubroutineType(types: !148)
!148 = !{!16, !16, !9, !116}
!149 = !DILocalVariable(name: "dst", arg: 1, scope: !145, file: !146, line: 12, type: !16)
!150 = !DILocation(line: 12, column: 20, scope: !145)
!151 = !DILocalVariable(name: "s", arg: 2, scope: !145, file: !146, line: 12, type: !9)
!152 = !DILocation(line: 12, column: 29, scope: !145)
!153 = !DILocalVariable(name: "count", arg: 3, scope: !145, file: !146, line: 12, type: !116)
!154 = !DILocation(line: 12, column: 39, scope: !145)
!155 = !DILocalVariable(name: "a", scope: !145, file: !146, line: 13, type: !126)
!156 = !DILocation(line: 13, column: 9, scope: !145)
!157 = !DILocation(line: 13, column: 13, scope: !145)
!158 = !DILocation(line: 14, column: 3, scope: !145)
!159 = !DILocation(line: 14, column: 15, scope: !145)
!160 = !DILocation(line: 14, column: 18, scope: !145)
!161 = !DILocation(line: 15, column: 12, scope: !145)
!162 = !DILocation(line: 15, column: 7, scope: !145)
!163 = !DILocation(line: 15, column: 10, scope: !145)
!164 = distinct !{!164, !158, !161, !142}
!165 = !DILocation(line: 16, column: 10, scope: !145)
!166 = !DILocation(line: 16, column: 3, scope: !145)
