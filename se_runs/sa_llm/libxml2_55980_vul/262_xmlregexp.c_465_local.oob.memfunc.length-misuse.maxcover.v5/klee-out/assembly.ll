; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/262_xmlregexp.c_465_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/262_xmlregexp.c_465_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegParserCtxt = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }
%struct._xmlRegexp = type { i8*, i32, i8*, i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"compiling regexp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"(ret != ((void*)0) && \22SAILR_VULN_ASSERT\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/262_xmlregexp.c_465_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegEpxFromParse = private unnamed_addr constant [53 x i8] c"xmlRegexpPtr xmlRegEpxFromParse(xmlRegParserCtxtPtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i8** %3, metadata !39, metadata !DIExpression()), !dbg !40
  %4 = load i64, i64* %2, align 8, !dbg !41
  %5 = call noalias i8* @malloc(i64 noundef %4) #6, !dbg !42
  store i8* %5, i8** %3, align 8, !dbg !40
  %6 = load i8*, i8** %3, align 8, !dbg !43
  ret i8* %6, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !45 {
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !DIExpression()), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegexp* @xmlRegEpxFromParse(%struct._xmlRegParserCtxt* noundef %0) #0 !dbg !68 {
  %2 = alloca %struct._xmlRegexp*, align 8
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca %struct._xmlRegexp*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %4, metadata !73, metadata !DIExpression()), !dbg !74
  %5 = call i8* @xmlMalloc(i64 noundef 64), !dbg !75
  %6 = bitcast i8* %5 to %struct._xmlRegexp*, !dbg !76
  store %struct._xmlRegexp* %6, %struct._xmlRegexp** %4, align 8, !dbg !77
  %7 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !78
  %8 = icmp eq %struct._xmlRegexp* %7, null, !dbg !80
  br i1 %8, label %9, label %11, !dbg !81

9:                                                ; preds = %1
  %10 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !82
  call void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !84
  store %struct._xmlRegexp* null, %struct._xmlRegexp** %2, align 8, !dbg !85
  br label %65, !dbg !85

11:                                               ; preds = %1
  %12 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !86
  %13 = icmp ne %struct._xmlRegexp* %12, null, !dbg !86
  br i1 %13, label %14, label %17, !dbg !86

14:                                               ; preds = %11
  br i1 true, label %15, label %17, !dbg !86

15:                                               ; preds = %14
  br i1 true, label %16, label %17, !dbg !86

16:                                               ; preds = %15
  br label %19, !dbg !86

17:                                               ; preds = %15, %14, %11
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlRegEpxFromParse, i64 0, i64 0)), !dbg !86
  br label %19, !dbg !86

19:                                               ; preds = %17, %16
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlRegEpxFromParse, i64 0, i64 0)), !dbg !87
  %21 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !88
  %22 = bitcast %struct._xmlRegexp* %21 to i8*, !dbg !89
  %23 = call i8* @memset(i8* %22, i32 0, i64 64), !dbg !89
  %24 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !90
  %25 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %24, i32 0, i32 0, !dbg !91
  %26 = load i8*, i8** %25, align 8, !dbg !91
  %27 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !92
  %28 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %27, i32 0, i32 0, !dbg !93
  store i8* %26, i8** %28, align 8, !dbg !94
  %29 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !95
  %30 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %29, i32 0, i32 1, !dbg !96
  %31 = load i32, i32* %30, align 8, !dbg !96
  %32 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !97
  %33 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %32, i32 0, i32 1, !dbg !98
  store i32 %31, i32* %33, align 8, !dbg !99
  %34 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !100
  %35 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %34, i32 0, i32 2, !dbg !101
  %36 = load i8*, i8** %35, align 8, !dbg !101
  %37 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !102
  %38 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %37, i32 0, i32 2, !dbg !103
  store i8* %36, i8** %38, align 8, !dbg !104
  %39 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !105
  %40 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %39, i32 0, i32 3, !dbg !106
  %41 = load i32, i32* %40, align 8, !dbg !106
  %42 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !107
  %43 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %42, i32 0, i32 3, !dbg !108
  store i32 %41, i32* %43, align 8, !dbg !109
  %44 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !110
  %45 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %44, i32 0, i32 4, !dbg !111
  %46 = load i8*, i8** %45, align 8, !dbg !111
  %47 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !112
  %48 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %47, i32 0, i32 4, !dbg !113
  store i8* %46, i8** %48, align 8, !dbg !114
  %49 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !115
  %50 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %49, i32 0, i32 5, !dbg !116
  %51 = load i32, i32* %50, align 8, !dbg !116
  %52 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !117
  %53 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %52, i32 0, i32 5, !dbg !118
  store i32 %51, i32* %53, align 8, !dbg !119
  %54 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !120
  %55 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %54, i32 0, i32 6, !dbg !121
  %56 = load i8*, i8** %55, align 8, !dbg !121
  %57 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !122
  %58 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %57, i32 0, i32 6, !dbg !123
  store i8* %56, i8** %58, align 8, !dbg !124
  %59 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !125
  %60 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %59, i32 0, i32 7, !dbg !126
  %61 = load i32, i32* %60, align 8, !dbg !126
  %62 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !127
  %63 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %62, i32 0, i32 7, !dbg !128
  store i32 %61, i32* %63, align 8, !dbg !129
  %64 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !130
  store %struct._xmlRegexp* %64, %struct._xmlRegexp** %2, align 8, !dbg !131
  br label %65, !dbg !131

65:                                               ; preds = %19, %9
  %66 = load %struct._xmlRegexp*, %struct._xmlRegexp** %2, align 8, !dbg !132
  ret %struct._xmlRegexp* %66, !dbg !132
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !133 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegParserCtxt, align 8
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca %struct._xmlRegexp*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt* %2, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !138, metadata !DIExpression()), !dbg !139
  store %struct._xmlRegParserCtxt* %2, %struct._xmlRegParserCtxt** %3, align 8, !dbg !139
  %5 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 0, !dbg !140
  store i8* null, i8** %5, align 8, !dbg !141
  %6 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 1, !dbg !142
  store i32 0, i32* %6, align 8, !dbg !143
  %7 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 2, !dbg !144
  store i8* null, i8** %7, align 8, !dbg !145
  %8 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 3, !dbg !146
  store i32 0, i32* %8, align 8, !dbg !147
  %9 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 4, !dbg !148
  store i8* null, i8** %9, align 8, !dbg !149
  %10 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 5, !dbg !150
  store i32 0, i32* %10, align 8, !dbg !151
  %11 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 6, !dbg !152
  store i8* null, i8** %11, align 8, !dbg !153
  %12 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 7, !dbg !154
  store i32 0, i32* %12, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %4, metadata !156, metadata !DIExpression()), !dbg !157
  %13 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %3, align 8, !dbg !158
  %14 = call %struct._xmlRegexp* @xmlRegEpxFromParse(%struct._xmlRegParserCtxt* noundef %13), !dbg !159
  store %struct._xmlRegexp* %14, %struct._xmlRegexp** %4, align 8, !dbg !157
  %15 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !160
  %16 = icmp ne %struct._xmlRegexp* %15, null, !dbg !162
  br i1 %16, label %17, label %20, !dbg !163

17:                                               ; preds = %0
  %18 = load %struct._xmlRegexp*, %struct._xmlRegexp** %4, align 8, !dbg !164
  %19 = bitcast %struct._xmlRegexp* %18 to i8*, !dbg !164
  call void @free(i8* noundef %19) #6, !dbg !166
  br label %20, !dbg !167

20:                                               ; preds = %17, %0
  ret i32 0, !dbg !168
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !169 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !DIExpression()), !dbg !180
  %8 = load i8*, i8** %4, align 8, !dbg !181
  store i8* %8, i8** %7, align 8, !dbg !180
  br label %9, !dbg !182

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !183
  %11 = add i64 %10, -1, !dbg !183
  store i64 %11, i64* %6, align 8, !dbg !183
  %12 = icmp ugt i64 %10, 0, !dbg !184
  br i1 %12, label %13, label %18, !dbg !182

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !185
  %15 = trunc i32 %14 to i8, !dbg !185
  %16 = load i8*, i8** %7, align 8, !dbg !186
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !186
  store i8* %17, i8** %7, align 8, !dbg !186
  store i8 %15, i8* %16, align 1, !dbg !187
  br label %9, !dbg !182, !llvm.loop !188

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !190
  ret i8* %19, !dbg !191
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/262_xmlregexp.c_465_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ae9f965bf539fa31fa9ed8dba9a07082")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 14, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 13, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 16, size: 512, elements: !7)
!7 = !{!8, !11, !13, !15, !16, !17, !18, !19}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !6, file: !1, line: 17, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nbStates", scope: !6, file: !1, line: 18, baseType: !12, size: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6, file: !1, line: 19, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nbAtoms", scope: !6, file: !1, line: 20, baseType: !12, size: 32, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !6, file: !1, line: 21, baseType: !14, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !6, file: !1, line: 22, baseType: !12, size: 32, offset: 320)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !6, file: !1, line: 23, baseType: !14, size: 64, offset: 384)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "determinist", scope: !6, file: !1, line: 24, baseType: !12, size: 32, offset: 448)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 41, type: !31, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!31 = !DISubroutineType(types: !32)
!32 = !{!14, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !{}
!37 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !1, line: 41, type: !33)
!38 = !DILocation(line: 41, column: 24, scope: !30)
!39 = !DILocalVariable(name: "ptr", scope: !30, file: !1, line: 42, type: !14)
!40 = !DILocation(line: 42, column: 11, scope: !30)
!41 = !DILocation(line: 42, column: 24, scope: !30)
!42 = !DILocation(line: 42, column: 17, scope: !30)
!43 = !DILocation(line: 43, column: 12, scope: !30)
!44 = !DILocation(line: 43, column: 5, scope: !30)
!45 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 47, type: !46, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !61}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxtPtr", file: !1, line: 11, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxt", file: !1, line: 10, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegParserCtxt", file: !1, line: 28, size: 512, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !51, file: !1, line: 29, baseType: !9, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "nbStates", scope: !51, file: !1, line: 30, baseType: !12, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !51, file: !1, line: 31, baseType: !14, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nbAtoms", scope: !51, file: !1, line: 32, baseType: !12, size: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !51, file: !1, line: 33, baseType: !14, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !51, file: !1, line: 34, baseType: !12, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !51, file: !1, line: 35, baseType: !14, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "determinist", scope: !51, file: !1, line: 36, baseType: !12, size: 32, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!63 = !DILocalVariable(name: "ctxt", arg: 1, scope: !45, file: !1, line: 47, type: !48)
!64 = !DILocation(line: 47, column: 45, scope: !45)
!65 = !DILocalVariable(name: "msg", arg: 2, scope: !45, file: !1, line: 47, type: !61)
!66 = !DILocation(line: 47, column: 63, scope: !45)
!67 = !DILocation(line: 49, column: 1, scope: !45)
!68 = distinct !DISubprogram(name: "xmlRegEpxFromParse", scope: !1, file: !1, line: 52, type: !69, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!69 = !DISubroutineType(types: !70)
!70 = !{!3, !48}
!71 = !DILocalVariable(name: "ctxt", arg: 1, scope: !68, file: !1, line: 52, type: !48)
!72 = !DILocation(line: 52, column: 53, scope: !68)
!73 = !DILocalVariable(name: "ret", scope: !68, file: !1, line: 53, type: !3)
!74 = !DILocation(line: 53, column: 18, scope: !68)
!75 = !DILocation(line: 55, column: 26, scope: !68)
!76 = !DILocation(line: 55, column: 11, scope: !68)
!77 = !DILocation(line: 55, column: 9, scope: !68)
!78 = !DILocation(line: 56, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !68, file: !1, line: 56, column: 9)
!80 = !DILocation(line: 56, column: 13, scope: !79)
!81 = !DILocation(line: 56, column: 9, scope: !68)
!82 = !DILocation(line: 57, column: 28, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 56, column: 22)
!84 = !DILocation(line: 57, column: 9, scope: !83)
!85 = !DILocation(line: 58, column: 9, scope: !83)
!86 = !DILocation(line: 63, column: 5, scope: !68)
!87 = !DILocation(line: 66, column: 5, scope: !68)
!88 = !DILocation(line: 68, column: 12, scope: !68)
!89 = !DILocation(line: 68, column: 5, scope: !68)
!90 = !DILocation(line: 69, column: 19, scope: !68)
!91 = !DILocation(line: 69, column: 25, scope: !68)
!92 = !DILocation(line: 69, column: 5, scope: !68)
!93 = !DILocation(line: 69, column: 10, scope: !68)
!94 = !DILocation(line: 69, column: 17, scope: !68)
!95 = !DILocation(line: 70, column: 21, scope: !68)
!96 = !DILocation(line: 70, column: 27, scope: !68)
!97 = !DILocation(line: 70, column: 5, scope: !68)
!98 = !DILocation(line: 70, column: 10, scope: !68)
!99 = !DILocation(line: 70, column: 19, scope: !68)
!100 = !DILocation(line: 71, column: 19, scope: !68)
!101 = !DILocation(line: 71, column: 25, scope: !68)
!102 = !DILocation(line: 71, column: 5, scope: !68)
!103 = !DILocation(line: 71, column: 10, scope: !68)
!104 = !DILocation(line: 71, column: 17, scope: !68)
!105 = !DILocation(line: 72, column: 20, scope: !68)
!106 = !DILocation(line: 72, column: 26, scope: !68)
!107 = !DILocation(line: 72, column: 5, scope: !68)
!108 = !DILocation(line: 72, column: 10, scope: !68)
!109 = !DILocation(line: 72, column: 18, scope: !68)
!110 = !DILocation(line: 73, column: 18, scope: !68)
!111 = !DILocation(line: 73, column: 24, scope: !68)
!112 = !DILocation(line: 73, column: 5, scope: !68)
!113 = !DILocation(line: 73, column: 10, scope: !68)
!114 = !DILocation(line: 73, column: 16, scope: !68)
!115 = !DILocation(line: 74, column: 23, scope: !68)
!116 = !DILocation(line: 74, column: 29, scope: !68)
!117 = !DILocation(line: 74, column: 5, scope: !68)
!118 = !DILocation(line: 74, column: 10, scope: !68)
!119 = !DILocation(line: 74, column: 21, scope: !68)
!120 = !DILocation(line: 75, column: 21, scope: !68)
!121 = !DILocation(line: 75, column: 27, scope: !68)
!122 = !DILocation(line: 75, column: 5, scope: !68)
!123 = !DILocation(line: 75, column: 10, scope: !68)
!124 = !DILocation(line: 75, column: 19, scope: !68)
!125 = !DILocation(line: 76, column: 24, scope: !68)
!126 = !DILocation(line: 76, column: 30, scope: !68)
!127 = !DILocation(line: 76, column: 5, scope: !68)
!128 = !DILocation(line: 76, column: 10, scope: !68)
!129 = !DILocation(line: 76, column: 22, scope: !68)
!130 = !DILocation(line: 78, column: 12, scope: !68)
!131 = !DILocation(line: 78, column: 5, scope: !68)
!132 = !DILocation(line: 79, column: 1, scope: !68)
!133 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !134, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!134 = !DISubroutineType(types: !135)
!135 = !{!12}
!136 = !DILocalVariable(name: "ctxt", scope: !133, file: !1, line: 83, type: !50)
!137 = !DILocation(line: 83, column: 22, scope: !133)
!138 = !DILocalVariable(name: "ctxt_ptr", scope: !133, file: !1, line: 84, type: !48)
!139 = !DILocation(line: 84, column: 25, scope: !133)
!140 = !DILocation(line: 87, column: 10, scope: !133)
!141 = !DILocation(line: 87, column: 17, scope: !133)
!142 = !DILocation(line: 88, column: 10, scope: !133)
!143 = !DILocation(line: 88, column: 19, scope: !133)
!144 = !DILocation(line: 89, column: 10, scope: !133)
!145 = !DILocation(line: 89, column: 17, scope: !133)
!146 = !DILocation(line: 90, column: 10, scope: !133)
!147 = !DILocation(line: 90, column: 18, scope: !133)
!148 = !DILocation(line: 91, column: 10, scope: !133)
!149 = !DILocation(line: 91, column: 16, scope: !133)
!150 = !DILocation(line: 92, column: 10, scope: !133)
!151 = !DILocation(line: 92, column: 21, scope: !133)
!152 = !DILocation(line: 93, column: 10, scope: !133)
!153 = !DILocation(line: 93, column: 19, scope: !133)
!154 = !DILocation(line: 94, column: 10, scope: !133)
!155 = !DILocation(line: 94, column: 22, scope: !133)
!156 = !DILocalVariable(name: "result", scope: !133, file: !1, line: 97, type: !3)
!157 = !DILocation(line: 97, column: 18, scope: !133)
!158 = !DILocation(line: 97, column: 46, scope: !133)
!159 = !DILocation(line: 97, column: 27, scope: !133)
!160 = !DILocation(line: 100, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !133, file: !1, line: 100, column: 9)
!162 = !DILocation(line: 100, column: 16, scope: !161)
!163 = !DILocation(line: 100, column: 9, scope: !133)
!164 = !DILocation(line: 101, column: 14, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 100, column: 25)
!166 = !DILocation(line: 101, column: 9, scope: !165)
!167 = !DILocation(line: 102, column: 5, scope: !165)
!168 = !DILocation(line: 104, column: 5, scope: !133)
!169 = distinct !DISubprogram(name: "memset", scope: !170, file: !170, line: 12, type: !171, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !36)
!170 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!171 = !DISubroutineType(types: !172)
!172 = !{!14, !14, !12, !33}
!173 = !DILocalVariable(name: "dst", arg: 1, scope: !169, file: !170, line: 12, type: !14)
!174 = !DILocation(line: 12, column: 20, scope: !169)
!175 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !170, line: 12, type: !12)
!176 = !DILocation(line: 12, column: 29, scope: !169)
!177 = !DILocalVariable(name: "count", arg: 3, scope: !169, file: !170, line: 12, type: !33)
!178 = !DILocation(line: 12, column: 39, scope: !169)
!179 = !DILocalVariable(name: "a", scope: !169, file: !170, line: 13, type: !9)
!180 = !DILocation(line: 13, column: 9, scope: !169)
!181 = !DILocation(line: 13, column: 13, scope: !169)
!182 = !DILocation(line: 14, column: 3, scope: !169)
!183 = !DILocation(line: 14, column: 15, scope: !169)
!184 = !DILocation(line: 14, column: 18, scope: !169)
!185 = !DILocation(line: 15, column: 12, scope: !169)
!186 = !DILocation(line: 15, column: 7, scope: !169)
!187 = !DILocation(line: 15, column: 10, scope: !169)
!188 = distinct !{!188, !182, !185, !189}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 16, column: 10, scope: !169)
!191 = !DILocation(line: 16, column: 3, scope: !169)
