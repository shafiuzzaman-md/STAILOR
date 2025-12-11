; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/384_xmlschemas.c_5201_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/384_xmlschemas.c_5201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaParserCtxt = type { %struct.anon }
%struct.anon = type { %struct.xmlSchemaRedef* }
%struct.xmlSchemaRedef = type { i8*, i32, i8*, i8*, %struct.xmlSchemaRedef* }

@.str = private unnamed_addr constant [29 x i8] c"allocating redefinition info\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"(ret != ((void*)0) && sizeof(xmlSchemaRedef) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/384_xmlschemas.c_5201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [84 x i8] c"xmlSchemaRedef *target_function(xmlSchemaParserCtxt *, void *, int, char *, char *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"targetBucket\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"refName\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"refTargetNs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct.xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !27 {
  %4 = alloca %struct.xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.xmlSchemaParserCtxt* %0, %struct.xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaParserCtxt** %4, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !45, metadata !DIExpression()), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlSchemaRedef* @target_function(%struct.xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i8* noundef %4) #0 !dbg !48 {
  %6 = alloca %struct.xmlSchemaRedef*, align 8
  %7 = alloca %struct.xmlSchemaParserCtxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.xmlSchemaRedef*, align 8
  store %struct.xmlSchemaParserCtxt* %0, %struct.xmlSchemaParserCtxt** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaParserCtxt** %7, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !53, metadata !DIExpression()), !dbg !54
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaRedef** %12, metadata !61, metadata !DIExpression()), !dbg !62
  %13 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !63
  %14 = bitcast i8* %13 to %struct.xmlSchemaRedef*, !dbg !64
  store %struct.xmlSchemaRedef* %14, %struct.xmlSchemaRedef** %12, align 8, !dbg !65
  %15 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !66
  %16 = icmp eq %struct.xmlSchemaRedef* %15, null, !dbg !68
  br i1 %16, label %17, label %19, !dbg !69

17:                                               ; preds = %5
  %18 = load %struct.xmlSchemaParserCtxt*, %struct.xmlSchemaParserCtxt** %7, align 8, !dbg !70
  call void @xmlSchemaPErrMemory(%struct.xmlSchemaParserCtxt* noundef %18, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !72
  store %struct.xmlSchemaRedef* null, %struct.xmlSchemaRedef** %6, align 8, !dbg !73
  br label %51, !dbg !73

19:                                               ; preds = %5
  %20 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !74
  %21 = bitcast %struct.xmlSchemaRedef* %20 to i8*, !dbg !75
  %22 = call i8* @memset(i8* %21, i32 0, i64 40), !dbg !75
  %23 = load i8*, i8** %8, align 8, !dbg !76
  %24 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !77
  %25 = getelementptr inbounds %struct.xmlSchemaRedef, %struct.xmlSchemaRedef* %24, i32 0, i32 0, !dbg !78
  store i8* %23, i8** %25, align 8, !dbg !79
  %26 = load i32, i32* %9, align 4, !dbg !80
  %27 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !81
  %28 = getelementptr inbounds %struct.xmlSchemaRedef, %struct.xmlSchemaRedef* %27, i32 0, i32 1, !dbg !82
  store i32 %26, i32* %28, align 8, !dbg !83
  %29 = load i8*, i8** %10, align 8, !dbg !84
  %30 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !85
  %31 = getelementptr inbounds %struct.xmlSchemaRedef, %struct.xmlSchemaRedef* %30, i32 0, i32 2, !dbg !86
  store i8* %29, i8** %31, align 8, !dbg !87
  %32 = load i8*, i8** %11, align 8, !dbg !88
  %33 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !89
  %34 = getelementptr inbounds %struct.xmlSchemaRedef, %struct.xmlSchemaRedef* %33, i32 0, i32 3, !dbg !90
  store i8* %32, i8** %34, align 8, !dbg !91
  %35 = load %struct.xmlSchemaParserCtxt*, %struct.xmlSchemaParserCtxt** %7, align 8, !dbg !92
  %36 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %35, i32 0, i32 0, !dbg !92
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0, !dbg !94
  %38 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %37, align 8, !dbg !94
  %39 = icmp eq %struct.xmlSchemaRedef* %38, null, !dbg !95
  br i1 %39, label %40, label %49, !dbg !96

40:                                               ; preds = %19
  %41 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !97
  %42 = icmp ne %struct.xmlSchemaRedef* %41, null, !dbg !97
  br i1 %42, label %43, label %45, !dbg !97

43:                                               ; preds = %40
  br i1 true, label %44, label %45, !dbg !97

44:                                               ; preds = %43
  br label %47, !dbg !97

45:                                               ; preds = %43, %40
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !97
  br label %47, !dbg !97

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !99
  br label %49, !dbg !100

49:                                               ; preds = %47, %19
  %50 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %12, align 8, !dbg !101
  store %struct.xmlSchemaRedef* %50, %struct.xmlSchemaRedef** %6, align 8, !dbg !102
  br label %51, !dbg !102

51:                                               ; preds = %49, %17
  %52 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %6, align 8, !dbg !103
  ret %struct.xmlSchemaRedef* %52, !dbg !103
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !104 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlSchemaParserCtxt, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.xmlSchemaRedef*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaParserCtxt* %2, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %3, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %4, metadata !111, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !113, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !118, metadata !DIExpression()), !dbg !119
  %8 = bitcast %struct.xmlSchemaParserCtxt* %2 to i8*, !dbg !120
  %9 = call i8* @memset(i8* %8, i32 0, i64 8), !dbg !120
  %10 = getelementptr inbounds %struct.xmlSchemaParserCtxt, %struct.xmlSchemaParserCtxt* %2, i32 0, i32 0, !dbg !121
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !122
  store %struct.xmlSchemaRedef* null, %struct.xmlSchemaRedef** %11, align 8, !dbg !123
  %12 = bitcast i8** %3 to i8*, !dbg !124
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !125
  %13 = bitcast i32* %4 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !127
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !128
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !129
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !130
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !dbg !131
  %16 = load i32, i32* %4, align 4, !dbg !132
  %17 = icmp sge i32 %16, 0, !dbg !133
  %18 = zext i1 %17 to i32, !dbg !133
  %19 = sext i32 %18 to i64, !dbg !132
  call void @klee_assume(i64 noundef %19), !dbg !134
  %20 = load i32, i32* %4, align 4, !dbg !135
  %21 = icmp slt i32 %20, 100, !dbg !136
  %22 = zext i1 %21 to i32, !dbg !136
  %23 = sext i32 %22 to i64, !dbg !135
  call void @klee_assume(i64 noundef %23), !dbg !137
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaRedef** %7, metadata !138, metadata !DIExpression()), !dbg !139
  %24 = load i8*, i8** %3, align 8, !dbg !140
  %25 = load i32, i32* %4, align 4, !dbg !141
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !142
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !143
  %28 = call %struct.xmlSchemaRedef* @target_function(%struct.xmlSchemaParserCtxt* noundef %2, i8* noundef %24, i32 noundef %25, i8* noundef %26, i8* noundef %27), !dbg !144
  store %struct.xmlSchemaRedef* %28, %struct.xmlSchemaRedef** %7, align 8, !dbg !139
  %29 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %7, align 8, !dbg !145
  %30 = icmp ne %struct.xmlSchemaRedef* %29, null, !dbg !147
  br i1 %30, label %31, label %34, !dbg !148

31:                                               ; preds = %0
  %32 = load %struct.xmlSchemaRedef*, %struct.xmlSchemaRedef** %7, align 8, !dbg !149
  %33 = bitcast %struct.xmlSchemaRedef* %32 to i8*, !dbg !149
  call void @free(i8* noundef %33) #7, !dbg !151
  br label %34, !dbg !152

34:                                               ; preds = %31, %0
  ret i32 0, !dbg !153
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !154 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !168
  %8 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %8, i8** %7, align 8, !dbg !168
  br label %9, !dbg !170

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !171
  %11 = add i64 %10, -1, !dbg !171
  store i64 %11, i64* %6, align 8, !dbg !171
  %12 = icmp ugt i64 %10, 0, !dbg !172
  br i1 %12, label %13, label %18, !dbg !170

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !173
  %15 = trunc i32 %14 to i8, !dbg !173
  %16 = load i8*, i8** %7, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %7, align 8, !dbg !174
  store i8 %15, i8* %16, align 1, !dbg !175
  br label %9, !dbg !170, !llvm.loop !176

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !178
  ret i8* %19, !dbg !179
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/384_xmlschemas.c_5201_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1c558f2e5ffd6b40f8d1dee317b2120a")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaRedef", file: !1, line: 16, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaRedef", file: !1, line: 10, size: 320, elements: !6)
!6 = !{!7, !9, !11, !14, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "targetBucket", scope: !5, file: !1, line: 12, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "refName", scope: !5, file: !1, line: 13, baseType: !12, size: 64, offset: 128)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "refTargetNs", scope: !5, file: !1, line: 14, baseType: !12, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 15, baseType: !16, size: 64, offset: 256)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
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
!27 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 25, type: !28, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !38, !8}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 22, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaParserCtxt", file: !1, line: 18, size: 64, elements: !33)
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !32, file: !1, line: 21, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !1, line: 19, size: 64, elements: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "redefs", scope: !35, file: !1, line: 20, baseType: !3, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!40 = !{}
!41 = !DILocalVariable(name: "pctxt", arg: 1, scope: !27, file: !1, line: 25, type: !30)
!42 = !DILocation(line: 25, column: 47, scope: !27)
!43 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 25, type: !38)
!44 = !DILocation(line: 25, column: 66, scope: !27)
!45 = !DILocalVariable(name: "unused", arg: 3, scope: !27, file: !1, line: 25, type: !8)
!46 = !DILocation(line: 25, column: 77, scope: !27)
!47 = !DILocation(line: 27, column: 1, scope: !27)
!48 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 33, type: !49, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!49 = !DISubroutineType(types: !50)
!50 = !{!3, !30, !8, !10, !12, !12}
!51 = !DILocalVariable(name: "pctxt", arg: 1, scope: !48, file: !1, line: 33, type: !30)
!52 = !DILocation(line: 33, column: 54, scope: !48)
!53 = !DILocalVariable(name: "item", arg: 2, scope: !48, file: !1, line: 33, type: !8)
!54 = !DILocation(line: 33, column: 67, scope: !48)
!55 = !DILocalVariable(name: "targetBucket", arg: 3, scope: !48, file: !1, line: 33, type: !10)
!56 = !DILocation(line: 33, column: 77, scope: !48)
!57 = !DILocalVariable(name: "refName", arg: 4, scope: !48, file: !1, line: 34, type: !12)
!58 = !DILocation(line: 34, column: 39, scope: !48)
!59 = !DILocalVariable(name: "refTargetNs", arg: 5, scope: !48, file: !1, line: 34, type: !12)
!60 = !DILocation(line: 34, column: 54, scope: !48)
!61 = !DILocalVariable(name: "ret", scope: !48, file: !1, line: 35, type: !3)
!62 = !DILocation(line: 35, column: 21, scope: !48)
!63 = !DILocation(line: 37, column: 28, scope: !48)
!64 = !DILocation(line: 37, column: 11, scope: !48)
!65 = !DILocation(line: 37, column: 9, scope: !48)
!66 = !DILocation(line: 38, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !48, file: !1, line: 38, column: 9)
!68 = !DILocation(line: 38, column: 13, scope: !67)
!69 = !DILocation(line: 38, column: 9, scope: !48)
!70 = !DILocation(line: 39, column: 29, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 22)
!72 = !DILocation(line: 39, column: 9, scope: !71)
!73 = !DILocation(line: 40, column: 9, scope: !71)
!74 = !DILocation(line: 44, column: 12, scope: !48)
!75 = !DILocation(line: 44, column: 5, scope: !48)
!76 = !DILocation(line: 46, column: 17, scope: !48)
!77 = !DILocation(line: 46, column: 5, scope: !48)
!78 = !DILocation(line: 46, column: 10, scope: !48)
!79 = !DILocation(line: 46, column: 15, scope: !48)
!80 = !DILocation(line: 47, column: 25, scope: !48)
!81 = !DILocation(line: 47, column: 5, scope: !48)
!82 = !DILocation(line: 47, column: 10, scope: !48)
!83 = !DILocation(line: 47, column: 23, scope: !48)
!84 = !DILocation(line: 48, column: 20, scope: !48)
!85 = !DILocation(line: 48, column: 5, scope: !48)
!86 = !DILocation(line: 48, column: 10, scope: !48)
!87 = !DILocation(line: 48, column: 18, scope: !48)
!88 = !DILocation(line: 49, column: 24, scope: !48)
!89 = !DILocation(line: 49, column: 5, scope: !48)
!90 = !DILocation(line: 49, column: 10, scope: !48)
!91 = !DILocation(line: 49, column: 22, scope: !48)
!92 = !DILocation(line: 52, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !48, file: !1, line: 52, column: 9)
!94 = !DILocation(line: 52, column: 33, scope: !93)
!95 = !DILocation(line: 52, column: 40, scope: !93)
!96 = !DILocation(line: 52, column: 9, scope: !48)
!97 = !DILocation(line: 55, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 52, column: 49)
!99 = !DILocation(line: 58, column: 9, scope: !98)
!100 = !DILocation(line: 59, column: 5, scope: !98)
!101 = !DILocation(line: 61, column: 12, scope: !48)
!102 = !DILocation(line: 61, column: 5, scope: !48)
!103 = !DILocation(line: 62, column: 1, scope: !48)
!104 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !105, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!105 = !DISubroutineType(types: !106)
!106 = !{!10}
!107 = !DILocalVariable(name: "pctxt", scope: !104, file: !1, line: 66, type: !31)
!108 = !DILocation(line: 66, column: 25, scope: !104)
!109 = !DILocalVariable(name: "item", scope: !104, file: !1, line: 67, type: !8)
!110 = !DILocation(line: 67, column: 11, scope: !104)
!111 = !DILocalVariable(name: "targetBucket", scope: !104, file: !1, line: 68, type: !10)
!112 = !DILocation(line: 68, column: 9, scope: !104)
!113 = !DILocalVariable(name: "refName", scope: !104, file: !1, line: 69, type: !114)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 32)
!117 = !DILocation(line: 69, column: 10, scope: !104)
!118 = !DILocalVariable(name: "refTargetNs", scope: !104, file: !1, line: 70, type: !114)
!119 = !DILocation(line: 70, column: 10, scope: !104)
!120 = !DILocation(line: 73, column: 5, scope: !104)
!121 = !DILocation(line: 74, column: 11, scope: !104)
!122 = !DILocation(line: 74, column: 23, scope: !104)
!123 = !DILocation(line: 74, column: 30, scope: !104)
!124 = !DILocation(line: 77, column: 24, scope: !104)
!125 = !DILocation(line: 77, column: 5, scope: !104)
!126 = !DILocation(line: 78, column: 24, scope: !104)
!127 = !DILocation(line: 78, column: 5, scope: !104)
!128 = !DILocation(line: 79, column: 24, scope: !104)
!129 = !DILocation(line: 79, column: 5, scope: !104)
!130 = !DILocation(line: 80, column: 24, scope: !104)
!131 = !DILocation(line: 80, column: 5, scope: !104)
!132 = !DILocation(line: 83, column: 17, scope: !104)
!133 = !DILocation(line: 83, column: 30, scope: !104)
!134 = !DILocation(line: 83, column: 5, scope: !104)
!135 = !DILocation(line: 84, column: 17, scope: !104)
!136 = !DILocation(line: 84, column: 30, scope: !104)
!137 = !DILocation(line: 84, column: 5, scope: !104)
!138 = !DILocalVariable(name: "result", scope: !104, file: !1, line: 87, type: !3)
!139 = !DILocation(line: 87, column: 21, scope: !104)
!140 = !DILocation(line: 87, column: 54, scope: !104)
!141 = !DILocation(line: 87, column: 60, scope: !104)
!142 = !DILocation(line: 87, column: 74, scope: !104)
!143 = !DILocation(line: 87, column: 83, scope: !104)
!144 = !DILocation(line: 87, column: 30, scope: !104)
!145 = !DILocation(line: 90, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !104, file: !1, line: 90, column: 9)
!147 = !DILocation(line: 90, column: 16, scope: !146)
!148 = !DILocation(line: 90, column: 9, scope: !104)
!149 = !DILocation(line: 91, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 90, column: 25)
!151 = !DILocation(line: 91, column: 9, scope: !150)
!152 = !DILocation(line: 92, column: 5, scope: !150)
!153 = !DILocation(line: 94, column: 5, scope: !104)
!154 = distinct !DISubprogram(name: "memset", scope: !155, file: !155, line: 12, type: !156, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !40)
!155 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!156 = !DISubroutineType(types: !157)
!157 = !{!8, !8, !10, !158}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !160)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!161 = !DILocalVariable(name: "dst", arg: 1, scope: !154, file: !155, line: 12, type: !8)
!162 = !DILocation(line: 12, column: 20, scope: !154)
!163 = !DILocalVariable(name: "s", arg: 2, scope: !154, file: !155, line: 12, type: !10)
!164 = !DILocation(line: 12, column: 29, scope: !154)
!165 = !DILocalVariable(name: "count", arg: 3, scope: !154, file: !155, line: 12, type: !158)
!166 = !DILocation(line: 12, column: 39, scope: !154)
!167 = !DILocalVariable(name: "a", scope: !154, file: !155, line: 13, type: !12)
!168 = !DILocation(line: 13, column: 9, scope: !154)
!169 = !DILocation(line: 13, column: 13, scope: !154)
!170 = !DILocation(line: 14, column: 3, scope: !154)
!171 = !DILocation(line: 14, column: 15, scope: !154)
!172 = !DILocation(line: 14, column: 18, scope: !154)
!173 = !DILocation(line: 15, column: 12, scope: !154)
!174 = !DILocation(line: 15, column: 7, scope: !154)
!175 = !DILocation(line: 15, column: 10, scope: !154)
!176 = distinct !{!176, !170, !173, !177}
!177 = !{!"llvm.loop.mustprogress"}
!178 = !DILocation(line: 16, column: 10, scope: !154)
!179 = !DILocation(line: 16, column: 3, scope: !154)
