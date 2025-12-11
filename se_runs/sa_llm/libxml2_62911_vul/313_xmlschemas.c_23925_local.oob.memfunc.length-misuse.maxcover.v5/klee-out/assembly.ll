; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/313_xmlschemas.c_23925_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/313_xmlschemas.c_23925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidationCtxt = type { %struct._xmlSchemaAttrInfo**, i32, i32 }
%struct._xmlSchemaAttrInfo = type { i32 }
%struct._xmlSchemaParserCtxt = type opaque

@.str = private unnamed_addr constant [28 x i8] c"creating new attribute info\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"attrInfosSize\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"initial_nbAttrInfos\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"(initial_nbAttrInfos < attrInfosSize) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/313_xmlschemas.c_23925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(%struct._xmlSchemaValidationCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !26 {
  %4 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !46, metadata !DIExpression()), !dbg !47
  %7 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %4, align 8, !dbg !48
  %8 = load i8*, i8** %5, align 8, !dbg !49
  %9 = load i8*, i8** %6, align 8, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !52 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !58, metadata !DIExpression()), !dbg !59
  %3 = load i64, i64* %2, align 8, !dbg !60
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !61
  ret i8* %4, !dbg !62
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaAttrInfo* @xmlSchemaNewAttrInfo(%struct._xmlSchemaValidationCtxt* noundef %0) #0 !dbg !63 {
  %2 = alloca %struct._xmlSchemaAttrInfo*, align 8
  %3 = alloca %struct._xmlSchemaValidationCtxt*, align 8
  %4 = alloca %struct._xmlSchemaAttrInfo*, align 8
  store %struct._xmlSchemaValidationCtxt* %0, %struct._xmlSchemaValidationCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt** %3, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttrInfo** %4, metadata !68, metadata !DIExpression()), !dbg !69
  %5 = call i8* @xmlMalloc(i64 noundef 4), !dbg !70
  %6 = bitcast i8* %5 to %struct._xmlSchemaAttrInfo*, !dbg !71
  store %struct._xmlSchemaAttrInfo* %6, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !72
  %7 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !73
  %8 = icmp eq %struct._xmlSchemaAttrInfo* %7, null, !dbg !75
  br i1 %8, label %9, label %11, !dbg !76

9:                                                ; preds = %1
  %10 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %3, align 8, !dbg !77
  call void @xmlSchemaVErrMemory(%struct._xmlSchemaValidationCtxt* noundef %10, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !79
  store %struct._xmlSchemaAttrInfo* null, %struct._xmlSchemaAttrInfo** %2, align 8, !dbg !80
  br label %28, !dbg !80

11:                                               ; preds = %1
  %12 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !81
  %13 = bitcast %struct._xmlSchemaAttrInfo* %12 to i8*, !dbg !82
  %14 = call i8* @memset(i8* %13, i32 0, i64 4), !dbg !82
  %15 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !83
  %16 = getelementptr inbounds %struct._xmlSchemaAttrInfo, %struct._xmlSchemaAttrInfo* %15, i32 0, i32 0, !dbg !84
  store i32 2, i32* %16, align 4, !dbg !85
  %17 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !86
  %18 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %3, align 8, !dbg !87
  %19 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %18, i32 0, i32 0, !dbg !88
  %20 = load %struct._xmlSchemaAttrInfo**, %struct._xmlSchemaAttrInfo*** %19, align 8, !dbg !88
  %21 = load %struct._xmlSchemaValidationCtxt*, %struct._xmlSchemaValidationCtxt** %3, align 8, !dbg !89
  %22 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %21, i32 0, i32 1, !dbg !90
  %23 = load i32, i32* %22, align 8, !dbg !91
  %24 = add nsw i32 %23, 1, !dbg !91
  store i32 %24, i32* %22, align 8, !dbg !91
  %25 = sext i32 %23 to i64, !dbg !87
  %26 = getelementptr inbounds %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %20, i64 %25, !dbg !87
  store %struct._xmlSchemaAttrInfo* %17, %struct._xmlSchemaAttrInfo** %26, align 8, !dbg !92
  %27 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %4, align 8, !dbg !93
  store %struct._xmlSchemaAttrInfo* %27, %struct._xmlSchemaAttrInfo** %2, align 8, !dbg !94
  br label %28, !dbg !94

28:                                               ; preds = %11, %9
  %29 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %2, align 8, !dbg !95
  ret %struct._xmlSchemaAttrInfo* %29, !dbg !95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaAttrInfo* @xmlSchemaParseInclude(%struct._xmlSchemaParserCtxt* noundef %0) #0 !dbg !96 {
  %2 = alloca %struct._xmlSchemaParserCtxt*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %2, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %2, align 8, !dbg !105
  ret %struct._xmlSchemaAttrInfo* null, !dbg !106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidationCtxt, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlSchemaAttrInfo*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidationCtxt* %2, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %3, metadata !112, metadata !DIExpression()), !dbg !113
  %6 = bitcast i32* %3 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !115
  %7 = load i32, i32* %3, align 4, !dbg !116
  %8 = icmp sge i32 %7, 0, !dbg !117
  br i1 %8, label %9, label %12, !dbg !118

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4, !dbg !119
  %11 = icmp sle i32 %10, 1024, !dbg !120
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ], !dbg !121
  %14 = zext i1 %13 to i32, !dbg !118
  %15 = sext i32 %14 to i64, !dbg !116
  call void @klee_assume(i64 noundef %15), !dbg !122
  %16 = load i32, i32* %3, align 4, !dbg !123
  %17 = sext i32 %16 to i64, !dbg !123
  %18 = mul i64 %17, 8, !dbg !124
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !125
  %20 = bitcast i8* %19 to %struct._xmlSchemaAttrInfo**, !dbg !126
  %21 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 0, !dbg !127
  store %struct._xmlSchemaAttrInfo** %20, %struct._xmlSchemaAttrInfo*** %21, align 8, !dbg !128
  %22 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !129
  store i32 0, i32* %22, align 8, !dbg !130
  %23 = load i32, i32* %3, align 4, !dbg !131
  %24 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 2, !dbg !132
  store i32 %23, i32* %24, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %4, metadata !134, metadata !DIExpression()), !dbg !135
  %25 = bitcast i32* %4 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  %26 = load i32, i32* %4, align 4, !dbg !138
  %27 = icmp sge i32 %26, 0, !dbg !139
  br i1 %27, label %28, label %32, !dbg !140

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4, !dbg !141
  %30 = load i32, i32* %3, align 4, !dbg !142
  %31 = icmp slt i32 %29, %30, !dbg !143
  br label %32

32:                                               ; preds = %28, %12
  %33 = phi i1 [ false, %12 ], [ %31, %28 ], !dbg !121
  %34 = zext i1 %33 to i32, !dbg !140
  %35 = sext i32 %34 to i64, !dbg !138
  call void @klee_assume(i64 noundef %35), !dbg !144
  %36 = load i32, i32* %4, align 4, !dbg !145
  %37 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 1, !dbg !146
  store i32 %36, i32* %37, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttrInfo** %5, metadata !148, metadata !DIExpression()), !dbg !149
  %38 = call %struct._xmlSchemaAttrInfo* @xmlSchemaNewAttrInfo(%struct._xmlSchemaValidationCtxt* noundef %2), !dbg !150
  store %struct._xmlSchemaAttrInfo* %38, %struct._xmlSchemaAttrInfo** %5, align 8, !dbg !149
  %39 = load %struct._xmlSchemaAttrInfo*, %struct._xmlSchemaAttrInfo** %5, align 8, !dbg !151
  %40 = icmp ne %struct._xmlSchemaAttrInfo* %39, null, !dbg !153
  br i1 %40, label %41, label %51, !dbg !154

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4, !dbg !155
  %43 = load i32, i32* %3, align 4, !dbg !155
  %44 = icmp slt i32 %42, %43, !dbg !155
  br i1 %44, label %45, label %47, !dbg !155

45:                                               ; preds = %41
  br i1 true, label %46, label %47, !dbg !155

46:                                               ; preds = %45
  br label %49, !dbg !155

47:                                               ; preds = %45, %41
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !155
  br label %49, !dbg !155

49:                                               ; preds = %47, %46
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.5, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !157
  br label %51, !dbg !158

51:                                               ; preds = %49, %32
  %52 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 0, !dbg !159
  %53 = load %struct._xmlSchemaAttrInfo**, %struct._xmlSchemaAttrInfo*** %52, align 8, !dbg !159
  %54 = icmp ne %struct._xmlSchemaAttrInfo** %53, null, !dbg !161
  br i1 %54, label %55, label %59, !dbg !162

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._xmlSchemaValidationCtxt, %struct._xmlSchemaValidationCtxt* %2, i32 0, i32 0, !dbg !163
  %57 = load %struct._xmlSchemaAttrInfo**, %struct._xmlSchemaAttrInfo*** %56, align 8, !dbg !163
  %58 = bitcast %struct._xmlSchemaAttrInfo** %57 to i8*, !dbg !165
  call void @free(i8* noundef %58) #7, !dbg !166
  br label %59, !dbg !167

59:                                               ; preds = %55, %51
  ret i32 0, !dbg !168
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !169 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !175, metadata !DIExpression()), !dbg !176
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !DIExpression()), !dbg !181
  %8 = load i8*, i8** %4, align 8, !dbg !182
  store i8* %8, i8** %7, align 8, !dbg !181
  br label %9, !dbg !183

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !184
  %11 = add i64 %10, -1, !dbg !184
  store i64 %11, i64* %6, align 8, !dbg !184
  %12 = icmp ugt i64 %10, 0, !dbg !185
  br i1 %12, label %13, label %18, !dbg !183

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !186
  %15 = trunc i32 %14 to i8, !dbg !186
  %16 = load i8*, i8** %7, align 8, !dbg !187
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !187
  store i8* %17, i8** %7, align 8, !dbg !187
  store i8 %15, i8* %16, align 1, !dbg !188
  br label %9, !dbg !183, !llvm.loop !189

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %19, !dbg !192
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/313_xmlschemas.c_23925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a2eccc50ccfa5103cf0af878e27b6cee")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 24, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!7 = !{!8, !14, !15}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttrInfo", file: !1, line: 16, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttrInfo", file: !1, line: 28, size: 32, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nodeType", scope: !10, file: !1, line: 29, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 26, baseType: !3)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 32, type: !27, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !38, !38}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidationCtxtPtr", file: !1, line: 14, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidationCtxt", file: !1, line: 13, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidationCtxt", file: !1, line: 18, size: 128, elements: !33)
!33 = !{!34, !35, !37}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "attrInfos", scope: !32, file: !1, line: 19, baseType: !15, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrInfos", scope: !32, file: !1, line: 20, baseType: !36, size: 32, offset: 64)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "attrInfosSize", scope: !32, file: !1, line: 21, baseType: !36, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{}
!42 = !DILocalVariable(name: "vctxt", arg: 1, scope: !26, file: !1, line: 32, type: !29)
!43 = !DILocation(line: 32, column: 53, scope: !26)
!44 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !1, line: 32, type: !38)
!45 = !DILocation(line: 32, column: 72, scope: !26)
!46 = !DILocalVariable(name: "extra", arg: 3, scope: !26, file: !1, line: 32, type: !38)
!47 = !DILocation(line: 32, column: 89, scope: !26)
!48 = !DILocation(line: 33, column: 11, scope: !26)
!49 = !DILocation(line: 33, column: 24, scope: !26)
!50 = !DILocation(line: 33, column: 35, scope: !26)
!51 = !DILocation(line: 34, column: 1, scope: !26)
!52 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 36, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!53 = !DISubroutineType(types: !54)
!54 = !{!14, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocalVariable(name: "size", arg: 1, scope: !52, file: !1, line: 36, type: !55)
!59 = !DILocation(line: 36, column: 24, scope: !52)
!60 = !DILocation(line: 37, column: 19, scope: !52)
!61 = !DILocation(line: 37, column: 12, scope: !52)
!62 = !DILocation(line: 37, column: 5, scope: !52)
!63 = distinct !DISubprogram(name: "xmlSchemaNewAttrInfo", scope: !1, file: !1, line: 44, type: !64, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !29}
!66 = !DILocalVariable(name: "vctxt", arg: 1, scope: !63, file: !1, line: 44, type: !29)
!67 = !DILocation(line: 44, column: 68, scope: !63)
!68 = !DILocalVariable(name: "iattr", scope: !63, file: !1, line: 45, type: !8)
!69 = !DILocation(line: 45, column: 24, scope: !63)
!70 = !DILocation(line: 47, column: 34, scope: !63)
!71 = !DILocation(line: 47, column: 13, scope: !63)
!72 = !DILocation(line: 47, column: 11, scope: !63)
!73 = !DILocation(line: 48, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 9)
!75 = !DILocation(line: 48, column: 15, scope: !74)
!76 = !DILocation(line: 48, column: 9, scope: !63)
!77 = !DILocation(line: 49, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 48, column: 24)
!79 = !DILocation(line: 49, column: 9, scope: !78)
!80 = !DILocation(line: 50, column: 9, scope: !78)
!81 = !DILocation(line: 52, column: 12, scope: !63)
!82 = !DILocation(line: 52, column: 5, scope: !63)
!83 = !DILocation(line: 53, column: 5, scope: !63)
!84 = !DILocation(line: 53, column: 12, scope: !63)
!85 = !DILocation(line: 53, column: 21, scope: !63)
!86 = !DILocation(line: 56, column: 46, scope: !63)
!87 = !DILocation(line: 56, column: 5, scope: !63)
!88 = !DILocation(line: 56, column: 12, scope: !63)
!89 = !DILocation(line: 56, column: 22, scope: !63)
!90 = !DILocation(line: 56, column: 29, scope: !63)
!91 = !DILocation(line: 56, column: 40, scope: !63)
!92 = !DILocation(line: 56, column: 44, scope: !63)
!93 = !DILocation(line: 58, column: 13, scope: !63)
!94 = !DILocation(line: 58, column: 5, scope: !63)
!95 = !DILocation(line: 59, column: 1, scope: !63)
!96 = distinct !DISubprogram(name: "xmlSchemaParseInclude", scope: !1, file: !1, line: 62, type: !97, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!97 = !DISubroutineType(types: !98)
!98 = !{!8, !99}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxtPtr", file: !1, line: 11, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !1, line: 10, baseType: !102)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!103 = !DILocalVariable(name: "ctxt", arg: 1, scope: !96, file: !1, line: 62, type: !99)
!104 = !DILocation(line: 62, column: 65, scope: !96)
!105 = !DILocation(line: 63, column: 11, scope: !96)
!106 = !DILocation(line: 64, column: 5, scope: !96)
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !108, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!108 = !DISubroutineType(types: !109)
!109 = !{!36}
!110 = !DILocalVariable(name: "vctxt", scope: !107, file: !1, line: 68, type: !31)
!111 = !DILocation(line: 68, column: 29, scope: !107)
!112 = !DILocalVariable(name: "attrInfosSize", scope: !107, file: !1, line: 69, type: !36)
!113 = !DILocation(line: 69, column: 9, scope: !107)
!114 = !DILocation(line: 72, column: 24, scope: !107)
!115 = !DILocation(line: 72, column: 5, scope: !107)
!116 = !DILocation(line: 74, column: 17, scope: !107)
!117 = !DILocation(line: 74, column: 31, scope: !107)
!118 = !DILocation(line: 74, column: 36, scope: !107)
!119 = !DILocation(line: 74, column: 39, scope: !107)
!120 = !DILocation(line: 74, column: 53, scope: !107)
!121 = !DILocation(line: 0, scope: !107)
!122 = !DILocation(line: 74, column: 5, scope: !107)
!123 = !DILocation(line: 77, column: 52, scope: !107)
!124 = !DILocation(line: 77, column: 66, scope: !107)
!125 = !DILocation(line: 77, column: 45, scope: !107)
!126 = !DILocation(line: 77, column: 23, scope: !107)
!127 = !DILocation(line: 77, column: 11, scope: !107)
!128 = !DILocation(line: 77, column: 21, scope: !107)
!129 = !DILocation(line: 78, column: 11, scope: !107)
!130 = !DILocation(line: 78, column: 23, scope: !107)
!131 = !DILocation(line: 79, column: 27, scope: !107)
!132 = !DILocation(line: 79, column: 11, scope: !107)
!133 = !DILocation(line: 79, column: 25, scope: !107)
!134 = !DILocalVariable(name: "initial_nbAttrInfos", scope: !107, file: !1, line: 82, type: !36)
!135 = !DILocation(line: 82, column: 9, scope: !107)
!136 = !DILocation(line: 83, column: 24, scope: !107)
!137 = !DILocation(line: 83, column: 5, scope: !107)
!138 = !DILocation(line: 85, column: 17, scope: !107)
!139 = !DILocation(line: 85, column: 37, scope: !107)
!140 = !DILocation(line: 85, column: 42, scope: !107)
!141 = !DILocation(line: 85, column: 45, scope: !107)
!142 = !DILocation(line: 85, column: 67, scope: !107)
!143 = !DILocation(line: 85, column: 65, scope: !107)
!144 = !DILocation(line: 85, column: 5, scope: !107)
!145 = !DILocation(line: 87, column: 25, scope: !107)
!146 = !DILocation(line: 87, column: 11, scope: !107)
!147 = !DILocation(line: 87, column: 23, scope: !107)
!148 = !DILocalVariable(name: "result", scope: !107, file: !1, line: 90, type: !8)
!149 = !DILocation(line: 90, column: 24, scope: !107)
!150 = !DILocation(line: 90, column: 33, scope: !107)
!151 = !DILocation(line: 97, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !107, file: !1, line: 97, column: 9)
!153 = !DILocation(line: 97, column: 16, scope: !152)
!154 = !DILocation(line: 97, column: 9, scope: !107)
!155 = !DILocation(line: 101, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 97, column: 25)
!157 = !DILocation(line: 104, column: 9, scope: !156)
!158 = !DILocation(line: 105, column: 5, scope: !156)
!159 = !DILocation(line: 108, column: 15, scope: !160)
!160 = distinct !DILexicalBlock(scope: !107, file: !1, line: 108, column: 9)
!161 = !DILocation(line: 108, column: 25, scope: !160)
!162 = !DILocation(line: 108, column: 9, scope: !107)
!163 = !DILocation(line: 109, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 108, column: 34)
!165 = !DILocation(line: 109, column: 14, scope: !164)
!166 = !DILocation(line: 109, column: 9, scope: !164)
!167 = !DILocation(line: 110, column: 5, scope: !164)
!168 = !DILocation(line: 112, column: 5, scope: !107)
!169 = distinct !DISubprogram(name: "memset", scope: !170, file: !170, line: 12, type: !171, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !41)
!170 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !14, !36, !55}
!173 = !DILocalVariable(name: "dst", arg: 1, scope: !169, file: !170, line: 12, type: !14)
!174 = !DILocation(line: 12, column: 20, scope: !169)
!175 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !170, line: 12, type: !36)
!176 = !DILocation(line: 12, column: 29, scope: !169)
!177 = !DILocalVariable(name: "count", arg: 3, scope: !169, file: !170, line: 12, type: !55)
!178 = !DILocation(line: 12, column: 39, scope: !169)
!179 = !DILocalVariable(name: "a", scope: !169, file: !170, line: 13, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!181 = !DILocation(line: 13, column: 9, scope: !169)
!182 = !DILocation(line: 13, column: 13, scope: !169)
!183 = !DILocation(line: 14, column: 3, scope: !169)
!184 = !DILocation(line: 14, column: 15, scope: !169)
!185 = !DILocation(line: 14, column: 18, scope: !169)
!186 = !DILocation(line: 15, column: 12, scope: !169)
!187 = !DILocation(line: 15, column: 7, scope: !169)
!188 = !DILocation(line: 15, column: 10, scope: !169)
!189 = distinct !{!189, !183, !186, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 16, column: 10, scope: !169)
!192 = !DILocation(line: 16, column: 3, scope: !169)
