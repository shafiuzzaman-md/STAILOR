; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/239_xmlreader.c_2007_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/239_xmlreader.c_2007_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i32 }
%struct._xmlTextReader = type { i8*, i8*, i32, i32, i8*, %struct._xmlBuf* }
%struct._xmlParserInput = type { i32 }

@xmlGenericErrorContext = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"xmlNewTextReader : malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"(ret != ((void*)0) && sizeof(xmlTextReader) > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/239_xmlreader.c_2007_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewTextReader = private unnamed_addr constant [50 x i8] c"xmlTextReader *xmlNewTextReader(xmlParserInput *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlBuf* @xmlBufCreateSize(i32 noundef %0) #0 !dbg !33 {
  %2 = alloca %struct._xmlBuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuf*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !37, metadata !DIExpression()), !dbg !38
  %5 = load i32, i32* %3, align 4, !dbg !39
  %6 = icmp sle i32 %5, 0, !dbg !41
  br i1 %6, label %7, label %8, !dbg !42

7:                                                ; preds = %1
  store %struct._xmlBuf* null, %struct._xmlBuf** %2, align 8, !dbg !43
  br label %18, !dbg !43

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !44, metadata !DIExpression()), !dbg !45
  %9 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !46
  %10 = bitcast i8* %9 to %struct._xmlBuf*, !dbg !47
  store %struct._xmlBuf* %10, %struct._xmlBuf** %4, align 8, !dbg !45
  %11 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !48
  %12 = icmp ne %struct._xmlBuf* %11, null, !dbg !48
  br i1 %12, label %13, label %16, !dbg !50

13:                                               ; preds = %8
  %14 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !51
  %15 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %14, i32 0, i32 0, !dbg !53
  store i32 0, i32* %15, align 4, !dbg !54
  br label %16, !dbg !55

16:                                               ; preds = %13, %8
  %17 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !56
  store %struct._xmlBuf* %17, %struct._xmlBuf** %2, align 8, !dbg !57
  br label %18, !dbg !57

18:                                               ; preds = %16, %7
  %19 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !58
  ret %struct._xmlBuf* %19, !dbg !58
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1) #0 !dbg !59 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !67, metadata !DIExpression()), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !70 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !73, metadata !DIExpression()), !dbg !74
  %3 = load i8*, i8** %2, align 8, !dbg !75
  call void @free(i8* noundef %3) #7, !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !78 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !84, metadata !DIExpression()), !dbg !85
  %3 = load i64, i64* %2, align 8, !dbg !86
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !87
  ret i8* %4, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlTextReader* @xmlNewTextReader(%struct._xmlParserInput* noundef %0) #0 !dbg !89 {
  %2 = alloca %struct._xmlTextReader*, align 8
  %3 = alloca %struct._xmlParserInput*, align 8
  %4 = alloca %struct._xmlTextReader*, align 8
  store %struct._xmlParserInput* %0, %struct._xmlParserInput** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %3, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlTextReader** %4, metadata !99, metadata !DIExpression()), !dbg !100
  %5 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !101
  %6 = icmp eq %struct._xmlParserInput* %5, null, !dbg !103
  br i1 %6, label %7, label %8, !dbg !104

7:                                                ; preds = %1
  store %struct._xmlTextReader* null, %struct._xmlTextReader** %2, align 8, !dbg !105
  br label %51, !dbg !105

8:                                                ; preds = %1
  %9 = call i8* @xmlMalloc(i64 noundef 40), !dbg !106
  %10 = bitcast i8* %9 to %struct._xmlTextReader*, !dbg !107
  store %struct._xmlTextReader* %10, %struct._xmlTextReader** %4, align 8, !dbg !108
  %11 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !109
  %12 = icmp eq %struct._xmlTextReader* %11, null, !dbg !111
  br i1 %12, label %13, label %15, !dbg !112

13:                                               ; preds = %8
  %14 = load i8*, i8** @xmlGenericErrorContext, align 8, !dbg !113
  call void @xmlGenericError(i8* noundef %14, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)), !dbg !115
  store %struct._xmlTextReader* null, %struct._xmlTextReader** %2, align 8, !dbg !116
  br label %51, !dbg !116

15:                                               ; preds = %8
  %16 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !117
  %17 = bitcast %struct._xmlTextReader* %16 to i8*, !dbg !118
  %18 = call i8* @memset(i8* %17, i32 0, i64 40), !dbg !118
  %19 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !119
  %20 = icmp ne %struct._xmlTextReader* %19, null, !dbg !119
  br i1 %20, label %21, label %23, !dbg !119

21:                                               ; preds = %15
  br i1 true, label %22, label %23, !dbg !119

22:                                               ; preds = %21
  br label %25, !dbg !119

23:                                               ; preds = %21, %15
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 77, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlNewTextReader, i64 0, i64 0)), !dbg !119
  br label %25, !dbg !119

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.xmlNewTextReader, i64 0, i64 0)), !dbg !120
  %27 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !121
  %28 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %27, i32 0, i32 0, !dbg !122
  store i8* null, i8** %28, align 8, !dbg !123
  %29 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !124
  %30 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %29, i32 0, i32 1, !dbg !125
  store i8* null, i8** %30, align 8, !dbg !126
  %31 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !127
  %32 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %31, i32 0, i32 2, !dbg !128
  store i32 0, i32* %32, align 8, !dbg !129
  %33 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !130
  %34 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %33, i32 0, i32 3, !dbg !131
  store i32 0, i32* %34, align 4, !dbg !132
  %35 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !133
  %36 = bitcast %struct._xmlParserInput* %35 to i8*, !dbg !133
  %37 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !134
  %38 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %37, i32 0, i32 4, !dbg !135
  store i8* %36, i8** %38, align 8, !dbg !136
  %39 = call %struct._xmlBuf* @xmlBufCreateSize(i32 noundef 100), !dbg !137
  %40 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !138
  %41 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %40, i32 0, i32 5, !dbg !139
  store %struct._xmlBuf* %39, %struct._xmlBuf** %41, align 8, !dbg !140
  %42 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !141
  %43 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %42, i32 0, i32 5, !dbg !143
  %44 = load %struct._xmlBuf*, %struct._xmlBuf** %43, align 8, !dbg !143
  %45 = icmp eq %struct._xmlBuf* %44, null, !dbg !144
  br i1 %45, label %46, label %49, !dbg !145

46:                                               ; preds = %25
  %47 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !146
  %48 = bitcast %struct._xmlTextReader* %47 to i8*, !dbg !146
  call void @xmlFree(i8* noundef %48), !dbg !148
  store %struct._xmlTextReader* null, %struct._xmlTextReader** %2, align 8, !dbg !149
  br label %51, !dbg !149

49:                                               ; preds = %25
  %50 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !150
  store %struct._xmlTextReader* %50, %struct._xmlTextReader** %2, align 8, !dbg !151
  br label %51, !dbg !151

51:                                               ; preds = %49, %46, %13, %7
  %52 = load %struct._xmlTextReader*, %struct._xmlTextReader** %2, align 8, !dbg !152
  ret %struct._xmlTextReader* %52, !dbg !152
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !153 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserInput, align 4
  %3 = alloca %struct._xmlTextReader*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput* %2, metadata !156, metadata !DIExpression()), !dbg !157
  %4 = bitcast %struct._xmlParserInput* %2 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !159
  call void @llvm.dbg.declare(metadata %struct._xmlTextReader** %3, metadata !160, metadata !DIExpression()), !dbg !161
  %5 = call %struct._xmlTextReader* @xmlNewTextReader(%struct._xmlParserInput* noundef %2), !dbg !162
  store %struct._xmlTextReader* %5, %struct._xmlTextReader** %3, align 8, !dbg !161
  %6 = load %struct._xmlTextReader*, %struct._xmlTextReader** %3, align 8, !dbg !163
  %7 = icmp ne %struct._xmlTextReader* %6, null, !dbg !165
  br i1 %7, label %8, label %21, !dbg !166

8:                                                ; preds = %0
  %9 = load %struct._xmlTextReader*, %struct._xmlTextReader** %3, align 8, !dbg !167
  %10 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %9, i32 0, i32 5, !dbg !170
  %11 = load %struct._xmlBuf*, %struct._xmlBuf** %10, align 8, !dbg !170
  %12 = icmp ne %struct._xmlBuf* %11, null, !dbg !171
  br i1 %12, label %13, label %18, !dbg !172

13:                                               ; preds = %8
  %14 = load %struct._xmlTextReader*, %struct._xmlTextReader** %3, align 8, !dbg !173
  %15 = getelementptr inbounds %struct._xmlTextReader, %struct._xmlTextReader* %14, i32 0, i32 5, !dbg !175
  %16 = load %struct._xmlBuf*, %struct._xmlBuf** %15, align 8, !dbg !175
  %17 = bitcast %struct._xmlBuf* %16 to i8*, !dbg !173
  call void @free(i8* noundef %17) #7, !dbg !176
  br label %18, !dbg !177

18:                                               ; preds = %13, %8
  %19 = load %struct._xmlTextReader*, %struct._xmlTextReader** %3, align 8, !dbg !178
  %20 = bitcast %struct._xmlTextReader* %19 to i8*, !dbg !178
  call void @free(i8* noundef %20) #7, !dbg !179
  br label %21, !dbg !180

21:                                               ; preds = %18, %0
  ret i32 0, !dbg !181
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !194
  %8 = load i8*, i8** %4, align 8, !dbg !195
  store i8* %8, i8** %7, align 8, !dbg !194
  br label %9, !dbg !196

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !197
  %11 = add i64 %10, -1, !dbg !197
  store i64 %11, i64* %6, align 8, !dbg !197
  %12 = icmp ugt i64 %10, 0, !dbg !198
  br i1 %12, label %13, label %18, !dbg !196

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !199
  %15 = trunc i32 %14 to i8, !dbg !199
  %16 = load i8*, i8** %7, align 8, !dbg !200
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !200
  store i8* %17, i8** %7, align 8, !dbg !200
  store i8 %15, i8* %16, align 1, !dbg !201
  br label %9, !dbg !196, !llvm.loop !202

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !204
  ret i8* %19, !dbg !205
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlGenericErrorContext", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/239_xmlreader.c_2007_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b32f5e025dbad77987415cf755110c88")
!4 = !{!5, !11, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !3, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !3, line: 11, size: 32, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !7, file: !3, line: 12, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextReader", file: !3, line: 40, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextReader", file: !3, line: 41, size: 320, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !14, file: !3, line: 42, baseType: !11, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "entTab", scope: !14, file: !3, line: 43, baseType: !11, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "entMax", scope: !14, file: !3, line: 44, baseType: !10, size: 32, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "entNr", scope: !14, file: !3, line: 45, baseType: !10, size: 32, offset: 160)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !14, file: !3, line: 46, baseType: !11, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !14, file: !3, line: 47, baseType: !5, size: 64, offset: 256)
!22 = !{!0}
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlBufCreateSize", scope: !3, file: !3, line: 15, type: !34, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !10}
!36 = !{}
!37 = !DILocalVariable(name: "size", arg: 1, scope: !33, file: !3, line: 15, type: !10)
!38 = !DILocation(line: 15, column: 30, scope: !33)
!39 = !DILocation(line: 16, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !33, file: !3, line: 16, column: 9)
!41 = !DILocation(line: 16, column: 14, scope: !40)
!42 = !DILocation(line: 16, column: 9, scope: !33)
!43 = !DILocation(line: 16, column: 20, scope: !40)
!44 = !DILocalVariable(name: "buf", scope: !33, file: !3, line: 17, type: !5)
!45 = !DILocation(line: 17, column: 13, scope: !33)
!46 = !DILocation(line: 17, column: 28, scope: !33)
!47 = !DILocation(line: 17, column: 19, scope: !33)
!48 = !DILocation(line: 18, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !33, file: !3, line: 18, column: 9)
!50 = !DILocation(line: 18, column: 9, scope: !33)
!51 = !DILocation(line: 19, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !3, line: 18, column: 14)
!53 = !DILocation(line: 19, column: 14, scope: !52)
!54 = !DILocation(line: 19, column: 20, scope: !52)
!55 = !DILocation(line: 20, column: 5, scope: !52)
!56 = !DILocation(line: 21, column: 12, scope: !33)
!57 = !DILocation(line: 21, column: 5, scope: !33)
!58 = !DILocation(line: 22, column: 1, scope: !33)
!59 = distinct !DISubprogram(name: "xmlGenericError", scope: !3, file: !3, line: 25, type: !60, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !11, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DILocalVariable(name: "ctx", arg: 1, scope: !59, file: !3, line: 25, type: !11)
!66 = !DILocation(line: 25, column: 28, scope: !59)
!67 = !DILocalVariable(name: "msg", arg: 2, scope: !59, file: !3, line: 25, type: !62)
!68 = !DILocation(line: 25, column: 45, scope: !59)
!69 = !DILocation(line: 27, column: 1, scope: !59)
!70 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 30, type: !71, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !11}
!73 = !DILocalVariable(name: "ptr", arg: 1, scope: !70, file: !3, line: 30, type: !11)
!74 = !DILocation(line: 30, column: 20, scope: !70)
!75 = !DILocation(line: 31, column: 10, scope: !70)
!76 = !DILocation(line: 31, column: 5, scope: !70)
!77 = !DILocation(line: 32, column: 1, scope: !70)
!78 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 35, type: !79, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!79 = !DISubroutineType(types: !80)
!80 = !{!11, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 46, baseType: !83)
!82 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!83 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!84 = !DILocalVariable(name: "size", arg: 1, scope: !78, file: !3, line: 35, type: !81)
!85 = !DILocation(line: 35, column: 24, scope: !78)
!86 = !DILocation(line: 36, column: 19, scope: !78)
!87 = !DILocation(line: 36, column: 12, scope: !78)
!88 = !DILocation(line: 36, column: 5, scope: !78)
!89 = distinct !DISubprogram(name: "xmlNewTextReader", scope: !3, file: !3, line: 60, type: !90, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!90 = !DISubroutineType(types: !91)
!91 = !{!12, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !3, line: 51, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !3, line: 52, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !94, file: !3, line: 53, baseType: !10, size: 32)
!97 = !DILocalVariable(name: "input", arg: 1, scope: !89, file: !3, line: 60, type: !92)
!98 = !DILocation(line: 60, column: 49, scope: !89)
!99 = !DILocalVariable(name: "ret", scope: !89, file: !3, line: 61, type: !12)
!100 = !DILocation(line: 61, column: 20, scope: !89)
!101 = !DILocation(line: 63, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !89, file: !3, line: 63, column: 9)
!103 = !DILocation(line: 63, column: 15, scope: !102)
!104 = !DILocation(line: 63, column: 9, scope: !89)
!105 = !DILocation(line: 64, column: 9, scope: !102)
!106 = !DILocation(line: 66, column: 27, scope: !89)
!107 = !DILocation(line: 66, column: 11, scope: !89)
!108 = !DILocation(line: 66, column: 9, scope: !89)
!109 = !DILocation(line: 67, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !89, file: !3, line: 67, column: 9)
!111 = !DILocation(line: 67, column: 13, scope: !110)
!112 = !DILocation(line: 67, column: 9, scope: !89)
!113 = !DILocation(line: 68, column: 25, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 67, column: 22)
!115 = !DILocation(line: 68, column: 9, scope: !114)
!116 = !DILocation(line: 70, column: 9, scope: !114)
!117 = !DILocation(line: 74, column: 12, scope: !89)
!118 = !DILocation(line: 74, column: 5, scope: !89)
!119 = !DILocation(line: 77, column: 5, scope: !89)
!120 = !DILocation(line: 80, column: 5, scope: !89)
!121 = !DILocation(line: 82, column: 5, scope: !89)
!122 = !DILocation(line: 82, column: 10, scope: !89)
!123 = !DILocation(line: 82, column: 14, scope: !89)
!124 = !DILocation(line: 83, column: 5, scope: !89)
!125 = !DILocation(line: 83, column: 10, scope: !89)
!126 = !DILocation(line: 83, column: 17, scope: !89)
!127 = !DILocation(line: 84, column: 5, scope: !89)
!128 = !DILocation(line: 84, column: 10, scope: !89)
!129 = !DILocation(line: 84, column: 17, scope: !89)
!130 = !DILocation(line: 85, column: 5, scope: !89)
!131 = !DILocation(line: 85, column: 10, scope: !89)
!132 = !DILocation(line: 85, column: 16, scope: !89)
!133 = !DILocation(line: 86, column: 18, scope: !89)
!134 = !DILocation(line: 86, column: 5, scope: !89)
!135 = !DILocation(line: 86, column: 10, scope: !89)
!136 = !DILocation(line: 86, column: 16, scope: !89)
!137 = !DILocation(line: 87, column: 19, scope: !89)
!138 = !DILocation(line: 87, column: 5, scope: !89)
!139 = !DILocation(line: 87, column: 10, scope: !89)
!140 = !DILocation(line: 87, column: 17, scope: !89)
!141 = !DILocation(line: 88, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !89, file: !3, line: 88, column: 9)
!143 = !DILocation(line: 88, column: 14, scope: !142)
!144 = !DILocation(line: 88, column: 21, scope: !142)
!145 = !DILocation(line: 88, column: 9, scope: !89)
!146 = !DILocation(line: 89, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !3, line: 88, column: 30)
!148 = !DILocation(line: 89, column: 9, scope: !147)
!149 = !DILocation(line: 90, column: 9, scope: !147)
!150 = !DILocation(line: 93, column: 12, scope: !89)
!151 = !DILocation(line: 93, column: 5, scope: !89)
!152 = !DILocation(line: 94, column: 1, scope: !89)
!153 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 96, type: !154, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!154 = !DISubroutineType(types: !155)
!155 = !{!10}
!156 = !DILocalVariable(name: "input", scope: !153, file: !3, line: 98, type: !93)
!157 = !DILocation(line: 98, column: 20, scope: !153)
!158 = !DILocation(line: 99, column: 24, scope: !153)
!159 = !DILocation(line: 99, column: 5, scope: !153)
!160 = !DILocalVariable(name: "reader", scope: !153, file: !3, line: 102, type: !12)
!161 = !DILocation(line: 102, column: 20, scope: !153)
!162 = !DILocation(line: 102, column: 29, scope: !153)
!163 = !DILocation(line: 105, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !153, file: !3, line: 105, column: 9)
!165 = !DILocation(line: 105, column: 16, scope: !164)
!166 = !DILocation(line: 105, column: 9, scope: !153)
!167 = !DILocation(line: 106, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 106, column: 13)
!169 = distinct !DILexicalBlock(scope: !164, file: !3, line: 105, column: 25)
!170 = !DILocation(line: 106, column: 21, scope: !168)
!171 = !DILocation(line: 106, column: 28, scope: !168)
!172 = !DILocation(line: 106, column: 13, scope: !169)
!173 = !DILocation(line: 107, column: 18, scope: !174)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 106, column: 37)
!175 = !DILocation(line: 107, column: 26, scope: !174)
!176 = !DILocation(line: 107, column: 13, scope: !174)
!177 = !DILocation(line: 108, column: 9, scope: !174)
!178 = !DILocation(line: 109, column: 14, scope: !169)
!179 = !DILocation(line: 109, column: 9, scope: !169)
!180 = !DILocation(line: 110, column: 5, scope: !169)
!181 = !DILocation(line: 112, column: 5, scope: !153)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !36)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!11, !11, !10, !81}
!186 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !11)
!187 = !DILocation(line: 12, column: 20, scope: !182)
!188 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !10)
!189 = !DILocation(line: 12, column: 29, scope: !182)
!190 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !81)
!191 = !DILocation(line: 12, column: 39, scope: !182)
!192 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!194 = !DILocation(line: 13, column: 9, scope: !182)
!195 = !DILocation(line: 13, column: 13, scope: !182)
!196 = !DILocation(line: 14, column: 3, scope: !182)
!197 = !DILocation(line: 14, column: 15, scope: !182)
!198 = !DILocation(line: 14, column: 18, scope: !182)
!199 = !DILocation(line: 15, column: 12, scope: !182)
!200 = !DILocation(line: 15, column: 7, scope: !182)
!201 = !DILocation(line: 15, column: 10, scope: !182)
!202 = distinct !{!202, !196, !199, !203}
!203 = !{!"llvm.loop.mustprogress"}
!204 = !DILocation(line: 16, column: 10, scope: !182)
!205 = !DILocation(line: 16, column: 3, scope: !182)
