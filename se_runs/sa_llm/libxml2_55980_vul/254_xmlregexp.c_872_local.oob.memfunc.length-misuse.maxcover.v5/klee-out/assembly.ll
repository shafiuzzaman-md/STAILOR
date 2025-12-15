; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/254_xmlregexp.c_872_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/254_xmlregexp.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegParserCtxt = type opaque
%struct._xmlRegAtom = type { i32, i32, i32, i32, i32, %struct._xmlRegRange**, i8*, i8*, i32, i32 }
%struct._xmlRegRange = type opaque

@.str = private unnamed_addr constant [13 x i8] c"copying atom\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/254_xmlregexp.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegCopyAtom = private unnamed_addr constant [65 x i8] c"xmlRegAtomPtr xmlRegCopyAtom(xmlRegParserCtxtPtr, xmlRegAtomPtr)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"atom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !35 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i64, i64* %2, align 8, !dbg !44
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !45
  ret i8* %4, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !47 {
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !57, metadata !DIExpression()), !dbg !58
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !59, metadata !DIExpression()), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegCopyAtom(%struct._xmlRegParserCtxt* noundef %0, %struct._xmlRegAtom* noundef %1) #0 !dbg !62 {
  %3 = alloca %struct._xmlRegAtom*, align 8
  %4 = alloca %struct._xmlRegParserCtxt*, align 8
  %5 = alloca %struct._xmlRegAtom*, align 8
  %6 = alloca %struct._xmlRegAtom*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct._xmlRegAtom* %1, %struct._xmlRegAtom** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %5, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !69, metadata !DIExpression()), !dbg !70
  %8 = call i8* @xmlMalloc(i64 noundef 56), !dbg !71
  %9 = bitcast i8* %8 to %struct._xmlRegAtom*, !dbg !72
  store %struct._xmlRegAtom* %9, %struct._xmlRegAtom** %6, align 8, !dbg !73
  %10 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !74
  %11 = icmp eq %struct._xmlRegAtom* %10, null, !dbg !76
  br i1 %11, label %12, label %14, !dbg !77

12:                                               ; preds = %2
  %13 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %4, align 8, !dbg !78
  call void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %13, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !80
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !81
  br label %55, !dbg !81

14:                                               ; preds = %2
  %15 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !82
  %16 = bitcast %struct._xmlRegAtom* %15 to i8*, !dbg !83
  %17 = call i8* @memset(i8* %16, i32 0, i64 56), !dbg !83
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @__PRETTY_FUNCTION__.xmlRegCopyAtom, i64 0, i64 0)), !dbg !84
  %19 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !85
  %20 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %19, i32 0, i32 0, !dbg !86
  %21 = load i32, i32* %20, align 8, !dbg !86
  %22 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !87
  %23 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %22, i32 0, i32 0, !dbg !88
  store i32 %21, i32* %23, align 8, !dbg !89
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !90
  %25 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %24, i32 0, i32 1, !dbg !91
  %26 = load i32, i32* %25, align 4, !dbg !91
  %27 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !92
  %28 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %27, i32 0, i32 1, !dbg !93
  store i32 %26, i32* %28, align 4, !dbg !94
  %29 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !95
  %30 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %29, i32 0, i32 2, !dbg !96
  %31 = load i32, i32* %30, align 8, !dbg !96
  %32 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !97
  %33 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %32, i32 0, i32 2, !dbg !98
  store i32 %31, i32* %33, align 8, !dbg !99
  %34 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !100
  %35 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %34, i32 0, i32 3, !dbg !101
  %36 = load i32, i32* %35, align 4, !dbg !101
  %37 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !102
  %38 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %37, i32 0, i32 3, !dbg !103
  store i32 %36, i32* %38, align 4, !dbg !104
  %39 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !105
  %40 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %39, i32 0, i32 4, !dbg !107
  %41 = load i32, i32* %40, align 8, !dbg !107
  %42 = icmp sgt i32 %41, 0, !dbg !108
  br i1 %42, label %43, label %53, !dbg !109

43:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %7, metadata !110, metadata !DIExpression()), !dbg !112
  %44 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !113
  %45 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %44, i32 0, i32 4, !dbg !114
  %46 = load i32, i32* %45, align 8, !dbg !114
  %47 = sext i32 %46 to i64, !dbg !113
  %48 = mul i64 8, %47, !dbg !115
  %49 = call i8* @xmlMalloc(i64 noundef %48), !dbg !116
  %50 = bitcast i8* %49 to %struct._xmlRegRange**, !dbg !117
  %51 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !118
  %52 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %51, i32 0, i32 5, !dbg !119
  store %struct._xmlRegRange** %50, %struct._xmlRegRange*** %52, align 8, !dbg !120
  br label %53, !dbg !121

53:                                               ; preds = %43, %14
  %54 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !122
  store %struct._xmlRegAtom* %54, %struct._xmlRegAtom** %3, align 8, !dbg !123
  br label %55, !dbg !123

55:                                               ; preds = %53, %12
  %56 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !124
  ret %struct._xmlRegAtom* %56, !dbg !124
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegParserCtxt*, align 8
  %3 = alloca %struct._xmlRegAtom, align 8
  %4 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %2, metadata !128, metadata !DIExpression()), !dbg !129
  store %struct._xmlRegParserCtxt* null, %struct._xmlRegParserCtxt** %2, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom* %3, metadata !130, metadata !DIExpression()), !dbg !131
  %5 = bitcast %struct._xmlRegAtom* %3 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 56, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !133
  %6 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 4, !dbg !134
  %7 = load i32, i32* %6, align 8, !dbg !134
  %8 = icmp sge i32 %7, 0, !dbg !135
  %9 = zext i1 %8 to i32, !dbg !135
  %10 = sext i32 %9 to i64, !dbg !136
  call void @klee_assume(i64 noundef %10), !dbg !137
  %11 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 4, !dbg !138
  %12 = load i32, i32* %11, align 8, !dbg !138
  %13 = icmp slt i32 %12, 100, !dbg !139
  %14 = zext i1 %13 to i32, !dbg !139
  %15 = sext i32 %14 to i64, !dbg !140
  call void @klee_assume(i64 noundef %15), !dbg !141
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %4, metadata !142, metadata !DIExpression()), !dbg !143
  %16 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %2, align 8, !dbg !144
  %17 = call %struct._xmlRegAtom* @xmlRegCopyAtom(%struct._xmlRegParserCtxt* noundef %16, %struct._xmlRegAtom* noundef %3), !dbg !145
  store %struct._xmlRegAtom* %17, %struct._xmlRegAtom** %4, align 8, !dbg !143
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !146
  %19 = icmp ne %struct._xmlRegAtom* %18, null, !dbg !148
  br i1 %19, label %20, label %33, !dbg !149

20:                                               ; preds = %0
  %21 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !150
  %22 = bitcast %struct._xmlRegAtom* %21 to i8*, !dbg !150
  call void @free(i8* noundef %22) #7, !dbg !152
  %23 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !153
  %24 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %23, i32 0, i32 5, !dbg !155
  %25 = load %struct._xmlRegRange**, %struct._xmlRegRange*** %24, align 8, !dbg !155
  %26 = icmp ne %struct._xmlRegRange** %25, null, !dbg !156
  br i1 %26, label %27, label %32, !dbg !157

27:                                               ; preds = %20
  %28 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !158
  %29 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %28, i32 0, i32 5, !dbg !160
  %30 = load %struct._xmlRegRange**, %struct._xmlRegRange*** %29, align 8, !dbg !160
  %31 = bitcast %struct._xmlRegRange** %30 to i8*, !dbg !158
  call void @free(i8* noundef %31) #7, !dbg !161
  br label %32, !dbg !162

32:                                               ; preds = %27, %20
  br label %33, !dbg !163

33:                                               ; preds = %32, %0
  ret i32 0, !dbg !164
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !171, metadata !DIExpression()), !dbg !172
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i8** %7, metadata !175, metadata !DIExpression()), !dbg !177
  %8 = load i8*, i8** %4, align 8, !dbg !178
  store i8* %8, i8** %7, align 8, !dbg !177
  br label %9, !dbg !179

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !180
  %11 = add i64 %10, -1, !dbg !180
  store i64 %11, i64* %6, align 8, !dbg !180
  %12 = icmp ugt i64 %10, 0, !dbg !181
  br i1 %12, label %13, label %18, !dbg !179

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !182
  %15 = trunc i32 %14 to i8, !dbg !182
  %16 = load i8*, i8** %7, align 8, !dbg !183
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !183
  store i8* %17, i8** %7, align 8, !dbg !183
  store i8 %15, i8* %16, align 1, !dbg !184
  br label %9, !dbg !179, !llvm.loop !185

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !187
  ret i8* %19, !dbg !188
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34, !34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/254_xmlregexp.c_872_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b47ea19b1ef13c96a311667b7b42c152")
!2 = !{!3, !21, !15}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtomPtr", file: !1, line: 14, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 13, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 19, size: 448, elements: !7)
!7 = !{!8, !10, !11, !12, !13, !14, !20, !22, !23, !24}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 20, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "quant", scope: !6, file: !1, line: 21, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !6, file: !1, line: 23, baseType: !9, size: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nbRanges", scope: !6, file: !1, line: 24, baseType: !9, size: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !6, file: !1, line: 25, baseType: !15, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegRangePtr", file: !1, line: 17, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegRange", file: !1, line: 16, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegRange", file: !1, line: 16, flags: DIFlagFwdDecl)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !6, file: !1, line: 26, baseType: !21, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "valuep2", scope: !6, file: !1, line: 27, baseType: !21, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "neg", scope: !6, file: !1, line: 28, baseType: !9, size: 32, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "codepoint", scope: !6, file: !1, line: 29, baseType: !9, size: 32, offset: 416)
!25 = distinct !DICompileUnit(language: DW_LANG_C99, file: !26, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!26 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"Ubuntu clang version 14.0.6"}
!35 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 33, type: !36, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{!21, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{}
!42 = !DILocalVariable(name: "size", arg: 1, scope: !35, file: !1, line: 33, type: !38)
!43 = !DILocation(line: 33, column: 24, scope: !35)
!44 = !DILocation(line: 34, column: 19, scope: !35)
!45 = !DILocation(line: 34, column: 12, scope: !35)
!46 = !DILocation(line: 34, column: 5, scope: !35)
!47 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 37, type: !48, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !54}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxtPtr", file: !1, line: 11, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxt", file: !1, line: 10, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegParserCtxt", file: !1, line: 10, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !47, file: !1, line: 37, type: !50)
!58 = !DILocation(line: 37, column: 45, scope: !47)
!59 = !DILocalVariable(name: "msg", arg: 2, scope: !47, file: !1, line: 37, type: !54)
!60 = !DILocation(line: 37, column: 63, scope: !47)
!61 = !DILocation(line: 39, column: 1, scope: !47)
!62 = distinct !DISubprogram(name: "xmlRegCopyAtom", scope: !1, file: !1, line: 42, type: !63, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!63 = !DISubroutineType(types: !64)
!64 = !{!3, !50, !3}
!65 = !DILocalVariable(name: "ctxt", arg: 1, scope: !62, file: !1, line: 42, type: !50)
!66 = !DILocation(line: 42, column: 50, scope: !62)
!67 = !DILocalVariable(name: "atom", arg: 2, scope: !62, file: !1, line: 42, type: !3)
!68 = !DILocation(line: 42, column: 70, scope: !62)
!69 = !DILocalVariable(name: "ret", scope: !62, file: !1, line: 43, type: !3)
!70 = !DILocation(line: 43, column: 19, scope: !62)
!71 = !DILocation(line: 45, column: 27, scope: !62)
!72 = !DILocation(line: 45, column: 11, scope: !62)
!73 = !DILocation(line: 45, column: 9, scope: !62)
!74 = !DILocation(line: 46, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !62, file: !1, line: 46, column: 9)
!76 = !DILocation(line: 46, column: 13, scope: !75)
!77 = !DILocation(line: 46, column: 9, scope: !62)
!78 = !DILocation(line: 47, column: 28, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 46, column: 22)
!80 = !DILocation(line: 47, column: 9, scope: !79)
!81 = !DILocation(line: 48, column: 9, scope: !79)
!82 = !DILocation(line: 51, column: 12, scope: !62)
!83 = !DILocation(line: 51, column: 5, scope: !62)
!84 = !DILocation(line: 57, column: 5, scope: !62)
!85 = !DILocation(line: 59, column: 17, scope: !62)
!86 = !DILocation(line: 59, column: 23, scope: !62)
!87 = !DILocation(line: 59, column: 5, scope: !62)
!88 = !DILocation(line: 59, column: 10, scope: !62)
!89 = !DILocation(line: 59, column: 15, scope: !62)
!90 = !DILocation(line: 60, column: 18, scope: !62)
!91 = !DILocation(line: 60, column: 24, scope: !62)
!92 = !DILocation(line: 60, column: 5, scope: !62)
!93 = !DILocation(line: 60, column: 10, scope: !62)
!94 = !DILocation(line: 60, column: 16, scope: !62)
!95 = !DILocation(line: 61, column: 16, scope: !62)
!96 = !DILocation(line: 61, column: 22, scope: !62)
!97 = !DILocation(line: 61, column: 5, scope: !62)
!98 = !DILocation(line: 61, column: 10, scope: !62)
!99 = !DILocation(line: 61, column: 14, scope: !62)
!100 = !DILocation(line: 62, column: 16, scope: !62)
!101 = !DILocation(line: 62, column: 22, scope: !62)
!102 = !DILocation(line: 62, column: 5, scope: !62)
!103 = !DILocation(line: 62, column: 10, scope: !62)
!104 = !DILocation(line: 62, column: 14, scope: !62)
!105 = !DILocation(line: 63, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !62, file: !1, line: 63, column: 9)
!107 = !DILocation(line: 63, column: 15, scope: !106)
!108 = !DILocation(line: 63, column: 24, scope: !106)
!109 = !DILocation(line: 63, column: 9, scope: !62)
!110 = !DILocalVariable(name: "i", scope: !111, file: !1, line: 64, type: !9)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 63, column: 29)
!112 = !DILocation(line: 64, column: 13, scope: !111)
!113 = !DILocation(line: 65, column: 77, scope: !111)
!114 = !DILocation(line: 65, column: 83, scope: !111)
!115 = !DILocation(line: 65, column: 75, scope: !111)
!116 = !DILocation(line: 65, column: 42, scope: !111)
!117 = !DILocation(line: 65, column: 23, scope: !111)
!118 = !DILocation(line: 65, column: 9, scope: !111)
!119 = !DILocation(line: 65, column: 14, scope: !111)
!120 = !DILocation(line: 65, column: 21, scope: !111)
!121 = !DILocation(line: 67, column: 5, scope: !111)
!122 = !DILocation(line: 68, column: 12, scope: !62)
!123 = !DILocation(line: 68, column: 5, scope: !62)
!124 = !DILocation(line: 69, column: 1, scope: !62)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !126, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!126 = !DISubroutineType(types: !127)
!127 = !{!9}
!128 = !DILocalVariable(name: "ctxt", scope: !125, file: !1, line: 73, type: !50)
!129 = !DILocation(line: 73, column: 25, scope: !125)
!130 = !DILocalVariable(name: "atom", scope: !125, file: !1, line: 74, type: !5)
!131 = !DILocation(line: 74, column: 16, scope: !125)
!132 = !DILocation(line: 77, column: 24, scope: !125)
!133 = !DILocation(line: 77, column: 5, scope: !125)
!134 = !DILocation(line: 80, column: 22, scope: !125)
!135 = !DILocation(line: 80, column: 31, scope: !125)
!136 = !DILocation(line: 80, column: 17, scope: !125)
!137 = !DILocation(line: 80, column: 5, scope: !125)
!138 = !DILocation(line: 81, column: 22, scope: !125)
!139 = !DILocation(line: 81, column: 31, scope: !125)
!140 = !DILocation(line: 81, column: 17, scope: !125)
!141 = !DILocation(line: 81, column: 5, scope: !125)
!142 = !DILocalVariable(name: "result", scope: !125, file: !1, line: 84, type: !3)
!143 = !DILocation(line: 84, column: 19, scope: !125)
!144 = !DILocation(line: 84, column: 43, scope: !125)
!145 = !DILocation(line: 84, column: 28, scope: !125)
!146 = !DILocation(line: 87, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !125, file: !1, line: 87, column: 9)
!148 = !DILocation(line: 87, column: 16, scope: !147)
!149 = !DILocation(line: 87, column: 9, scope: !125)
!150 = !DILocation(line: 88, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 87, column: 25)
!152 = !DILocation(line: 88, column: 9, scope: !151)
!153 = !DILocation(line: 89, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 89, column: 13)
!155 = !DILocation(line: 89, column: 21, scope: !154)
!156 = !DILocation(line: 89, column: 28, scope: !154)
!157 = !DILocation(line: 89, column: 13, scope: !151)
!158 = !DILocation(line: 90, column: 18, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 89, column: 37)
!160 = !DILocation(line: 90, column: 26, scope: !159)
!161 = !DILocation(line: 90, column: 13, scope: !159)
!162 = !DILocation(line: 91, column: 9, scope: !159)
!163 = !DILocation(line: 92, column: 5, scope: !151)
!164 = !DILocation(line: 94, column: 5, scope: !125)
!165 = distinct !DISubprogram(name: "memset", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !41)
!166 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!167 = !DISubroutineType(types: !168)
!168 = !{!21, !21, !9, !38}
!169 = !DILocalVariable(name: "dst", arg: 1, scope: !165, file: !166, line: 12, type: !21)
!170 = !DILocation(line: 12, column: 20, scope: !165)
!171 = !DILocalVariable(name: "s", arg: 2, scope: !165, file: !166, line: 12, type: !9)
!172 = !DILocation(line: 12, column: 29, scope: !165)
!173 = !DILocalVariable(name: "count", arg: 3, scope: !165, file: !166, line: 12, type: !38)
!174 = !DILocation(line: 12, column: 39, scope: !165)
!175 = !DILocalVariable(name: "a", scope: !165, file: !166, line: 13, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!177 = !DILocation(line: 13, column: 9, scope: !165)
!178 = !DILocation(line: 13, column: 13, scope: !165)
!179 = !DILocation(line: 14, column: 3, scope: !165)
!180 = !DILocation(line: 14, column: 15, scope: !165)
!181 = !DILocation(line: 14, column: 18, scope: !165)
!182 = !DILocation(line: 15, column: 12, scope: !165)
!183 = !DILocation(line: 15, column: 7, scope: !165)
!184 = !DILocation(line: 15, column: 10, scope: !165)
!185 = distinct !{!185, !179, !182, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 16, column: 10, scope: !165)
!188 = !DILocation(line: 16, column: 3, scope: !165)
