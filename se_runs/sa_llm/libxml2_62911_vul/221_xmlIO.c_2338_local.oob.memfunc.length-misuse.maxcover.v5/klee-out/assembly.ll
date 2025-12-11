; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/221_xmlIO.c_2338_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/221_xmlIO.c_2338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type opaque
%struct._xmlOutputBuffer = type { %struct._xmlBuf* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"allocated_size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"(allocated_size >= sizeof(xmlOutputBuffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/221_xmlIO.c_2338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFileOpen = private unnamed_addr constant [59 x i8] c"xmlOutputBufferPtr xmlFileOpen(const char *, const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !24 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %2, align 8, !dbg !33
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !34
  ret i8* %4, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !36 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
  %3 = load i8*, i8** %2, align 8, !dbg !41
  call void @free(i8* noundef %3) #7, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlBuf* @xmlBufCreate() #0 !dbg !44 {
  %1 = alloca %struct._xmlBuf*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %1, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = bitcast %struct._xmlBuf** %1 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %3 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !51
  %4 = icmp eq %struct._xmlBuf* %3, null, !dbg !52
  br i1 %4, label %8, label %5, !dbg !53

5:                                                ; preds = %0
  %6 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !54
  %7 = icmp ne %struct._xmlBuf* %6, null, !dbg !55
  br label %8, !dbg !53

8:                                                ; preds = %5, %0
  %9 = phi i1 [ true, %0 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !53
  %11 = sext i32 %10 to i64, !dbg !51
  call void @klee_assume(i64 noundef %11), !dbg !56
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %1, align 8, !dbg !57
  ret %struct._xmlBuf* %12, !dbg !58
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlOutputBuffer* @xmlFileOpen(i8* noundef %0, i8* noundef %1) #0 !dbg !59 {
  %3 = alloca %struct._xmlOutputBuffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlOutputBuffer*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %6, metadata !69, metadata !DIExpression()), !dbg !70
  %8 = call i8* @xmlMalloc(i64 noundef 8), !dbg !71
  %9 = bitcast i8* %8 to %struct._xmlOutputBuffer*, !dbg !72
  store %struct._xmlOutputBuffer* %9, %struct._xmlOutputBuffer** %6, align 8, !dbg !73
  %10 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !74
  %11 = icmp eq %struct._xmlOutputBuffer* %10, null, !dbg !76
  br i1 %11, label %12, label %13, !dbg !77

12:                                               ; preds = %2
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %3, align 8, !dbg !78
  br label %42, !dbg !78

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %7, metadata !80, metadata !DIExpression()), !dbg !81
  %14 = bitcast i64* %7 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !83
  %15 = load i64, i64* %7, align 8, !dbg !84
  %16 = icmp uge i64 %15, 0, !dbg !85
  %17 = zext i1 %16 to i32, !dbg !85
  %18 = sext i32 %17 to i64, !dbg !84
  call void @klee_assume(i64 noundef %18), !dbg !86
  %19 = load i64, i64* %7, align 8, !dbg !87
  %20 = icmp uge i64 %19, 8, !dbg !87
  br i1 %20, label %21, label %23, !dbg !87

21:                                               ; preds = %13
  br i1 true, label %22, label %23, !dbg !87

22:                                               ; preds = %21
  br label %25, !dbg !87

23:                                               ; preds = %21, %13
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlFileOpen, i64 0, i64 0)), !dbg !87
  br label %25, !dbg !87

25:                                               ; preds = %23, %22
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlFileOpen, i64 0, i64 0)), !dbg !88
  %27 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !89
  %28 = bitcast %struct._xmlOutputBuffer* %27 to i8*, !dbg !90
  %29 = call i8* @memset(i8* %28, i32 0, i64 8), !dbg !90
  %30 = call %struct._xmlBuf* @xmlBufCreate(), !dbg !91
  %31 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !92
  %32 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %31, i32 0, i32 0, !dbg !93
  store %struct._xmlBuf* %30, %struct._xmlBuf** %32, align 8, !dbg !94
  %33 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !95
  %34 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %33, i32 0, i32 0, !dbg !97
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %34, align 8, !dbg !97
  %36 = icmp eq %struct._xmlBuf* %35, null, !dbg !98
  br i1 %36, label %37, label %40, !dbg !99

37:                                               ; preds = %25
  %38 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !100
  %39 = bitcast %struct._xmlOutputBuffer* %38 to i8*, !dbg !100
  call void @xmlFree(i8* noundef %39), !dbg !102
  store %struct._xmlOutputBuffer* null, %struct._xmlOutputBuffer** %3, align 8, !dbg !103
  br label %42, !dbg !103

40:                                               ; preds = %25
  %41 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %6, align 8, !dbg !104
  store %struct._xmlOutputBuffer* %41, %struct._xmlOutputBuffer** %3, align 8, !dbg !105
  br label %42, !dbg !105

42:                                               ; preds = %40, %37, %12
  %43 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !106
  ret %struct._xmlOutputBuffer* %43, !dbg !106
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !116, metadata !DIExpression()), !dbg !117
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !119
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !120
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)), !dbg !121
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !122
  store i8 0, i8* %7, align 1, !dbg !123
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !124
  store i8 0, i8* %8, align 1, !dbg !125
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %4, metadata !126, metadata !DIExpression()), !dbg !127
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !128
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !129
  %11 = call %struct._xmlOutputBuffer* @xmlFileOpen(i8* noundef %9, i8* noundef %10), !dbg !130
  store %struct._xmlOutputBuffer* %11, %struct._xmlOutputBuffer** %4, align 8, !dbg !127
  %12 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !131
  %13 = icmp ne %struct._xmlOutputBuffer* %12, null, !dbg !133
  br i1 %13, label %14, label %27, !dbg !134

14:                                               ; preds = %0
  %15 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !135
  %16 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %15, i32 0, i32 0, !dbg !138
  %17 = load %struct._xmlBuf*, %struct._xmlBuf** %16, align 8, !dbg !138
  %18 = icmp ne %struct._xmlBuf* %17, null, !dbg !139
  br i1 %18, label %19, label %24, !dbg !140

19:                                               ; preds = %14
  %20 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !141
  %21 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %20, i32 0, i32 0, !dbg !143
  %22 = load %struct._xmlBuf*, %struct._xmlBuf** %21, align 8, !dbg !143
  %23 = bitcast %struct._xmlBuf* %22 to i8*, !dbg !141
  call void @free(i8* noundef %23) #7, !dbg !144
  br label %24, !dbg !145

24:                                               ; preds = %19, %14
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !146
  %26 = bitcast %struct._xmlOutputBuffer* %25 to i8*, !dbg !146
  call void @free(i8* noundef %26) #7, !dbg !147
  br label %27, !dbg !148

27:                                               ; preds = %24, %0
  ret i32 0, !dbg !149
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !150 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !156, metadata !DIExpression()), !dbg !157
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !160, metadata !DIExpression()), !dbg !162
  %8 = load i8*, i8** %4, align 8, !dbg !163
  store i8* %8, i8** %7, align 8, !dbg !162
  br label %9, !dbg !164

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !165
  %11 = add i64 %10, -1, !dbg !165
  store i64 %11, i64* %6, align 8, !dbg !165
  %12 = icmp ugt i64 %10, 0, !dbg !166
  br i1 %12, label %13, label %18, !dbg !164

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !167
  %15 = trunc i32 %14 to i8, !dbg !167
  %16 = load i8*, i8** %7, align 8, !dbg !168
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !168
  store i8* %17, i8** %7, align 8, !dbg !168
  store i8 %15, i8* %16, align 1, !dbg !169
  br label %9, !dbg !164, !llvm.loop !170

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !172
  ret i8* %19, !dbg !173
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/221_xmlIO.c_2338_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "fbdec6f5aa8ad51ff5669326c2644f49")
!2 = !{!3, !13}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !1, line: 18, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 16, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 13, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 21, type: !25, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{}
!31 = !DILocalVariable(name: "size", arg: 1, scope: !24, file: !1, line: 21, type: !27)
!32 = !DILocation(line: 21, column: 24, scope: !24)
!33 = !DILocation(line: 22, column: 19, scope: !24)
!34 = !DILocation(line: 22, column: 12, scope: !24)
!35 = !DILocation(line: 22, column: 5, scope: !24)
!36 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 25, type: !37, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !13}
!39 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 25, type: !13)
!40 = !DILocation(line: 25, column: 20, scope: !36)
!41 = !DILocation(line: 26, column: 10, scope: !36)
!42 = !DILocation(line: 26, column: 5, scope: !36)
!43 = !DILocation(line: 27, column: 1, scope: !36)
!44 = distinct !DISubprogram(name: "xmlBufCreate", scope: !1, file: !1, line: 29, type: !45, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!45 = !DISubroutineType(types: !46)
!46 = !{!9}
!47 = !DILocalVariable(name: "buf", scope: !44, file: !1, line: 31, type: !9)
!48 = !DILocation(line: 31, column: 15, scope: !44)
!49 = !DILocation(line: 32, column: 24, scope: !44)
!50 = !DILocation(line: 32, column: 5, scope: !44)
!51 = !DILocation(line: 33, column: 17, scope: !44)
!52 = !DILocation(line: 33, column: 21, scope: !44)
!53 = !DILocation(line: 33, column: 26, scope: !44)
!54 = !DILocation(line: 33, column: 29, scope: !44)
!55 = !DILocation(line: 33, column: 33, scope: !44)
!56 = !DILocation(line: 33, column: 5, scope: !44)
!57 = !DILocation(line: 34, column: 12, scope: !44)
!58 = !DILocation(line: 34, column: 5, scope: !44)
!59 = distinct !DISubprogram(name: "xmlFileOpen", scope: !1, file: !1, line: 38, type: !60, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!60 = !DISubroutineType(types: !61)
!61 = !{!3, !62, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DILocalVariable(name: "filename", arg: 1, scope: !59, file: !1, line: 38, type: !62)
!66 = !DILocation(line: 38, column: 44, scope: !59)
!67 = !DILocalVariable(name: "encoding", arg: 2, scope: !59, file: !1, line: 38, type: !62)
!68 = !DILocation(line: 38, column: 66, scope: !59)
!69 = !DILocalVariable(name: "ret", scope: !59, file: !1, line: 39, type: !3)
!70 = !DILocation(line: 39, column: 24, scope: !59)
!71 = !DILocation(line: 42, column: 32, scope: !59)
!72 = !DILocation(line: 42, column: 11, scope: !59)
!73 = !DILocation(line: 42, column: 9, scope: !59)
!74 = !DILocation(line: 43, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !59, file: !1, line: 43, column: 9)
!76 = !DILocation(line: 43, column: 13, scope: !75)
!77 = !DILocation(line: 43, column: 9, scope: !59)
!78 = !DILocation(line: 44, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 43, column: 22)
!80 = !DILocalVariable(name: "allocated_size", scope: !59, file: !1, line: 54, type: !29)
!81 = !DILocation(line: 54, column: 19, scope: !59)
!82 = !DILocation(line: 55, column: 24, scope: !59)
!83 = !DILocation(line: 55, column: 5, scope: !59)
!84 = !DILocation(line: 58, column: 17, scope: !59)
!85 = !DILocation(line: 58, column: 32, scope: !59)
!86 = !DILocation(line: 58, column: 5, scope: !59)
!87 = !DILocation(line: 61, column: 5, scope: !59)
!88 = !DILocation(line: 64, column: 5, scope: !59)
!89 = !DILocation(line: 66, column: 12, scope: !59)
!90 = !DILocation(line: 66, column: 5, scope: !59)
!91 = !DILocation(line: 68, column: 19, scope: !59)
!92 = !DILocation(line: 68, column: 5, scope: !59)
!93 = !DILocation(line: 68, column: 10, scope: !59)
!94 = !DILocation(line: 68, column: 17, scope: !59)
!95 = !DILocation(line: 69, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !59, file: !1, line: 69, column: 9)
!97 = !DILocation(line: 69, column: 14, scope: !96)
!98 = !DILocation(line: 69, column: 21, scope: !96)
!99 = !DILocation(line: 69, column: 9, scope: !59)
!100 = !DILocation(line: 70, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 69, column: 30)
!102 = !DILocation(line: 70, column: 9, scope: !101)
!103 = !DILocation(line: 71, column: 9, scope: !101)
!104 = !DILocation(line: 74, column: 12, scope: !59)
!105 = !DILocation(line: 74, column: 5, scope: !59)
!106 = !DILocation(line: 75, column: 1, scope: !59)
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !108, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!108 = !DISubroutineType(types: !109)
!109 = !{!110}
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DILocalVariable(name: "filename", scope: !107, file: !1, line: 79, type: !112)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 256)
!115 = !DILocation(line: 79, column: 10, scope: !107)
!116 = !DILocalVariable(name: "encoding", scope: !107, file: !1, line: 80, type: !112)
!117 = !DILocation(line: 80, column: 10, scope: !107)
!118 = !DILocation(line: 82, column: 24, scope: !107)
!119 = !DILocation(line: 82, column: 5, scope: !107)
!120 = !DILocation(line: 83, column: 24, scope: !107)
!121 = !DILocation(line: 83, column: 5, scope: !107)
!122 = !DILocation(line: 86, column: 5, scope: !107)
!123 = !DILocation(line: 86, column: 19, scope: !107)
!124 = !DILocation(line: 87, column: 5, scope: !107)
!125 = !DILocation(line: 87, column: 19, scope: !107)
!126 = !DILocalVariable(name: "result", scope: !107, file: !1, line: 90, type: !3)
!127 = !DILocation(line: 90, column: 24, scope: !107)
!128 = !DILocation(line: 90, column: 45, scope: !107)
!129 = !DILocation(line: 90, column: 55, scope: !107)
!130 = !DILocation(line: 90, column: 33, scope: !107)
!131 = !DILocation(line: 93, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !107, file: !1, line: 93, column: 9)
!133 = !DILocation(line: 93, column: 16, scope: !132)
!134 = !DILocation(line: 93, column: 9, scope: !107)
!135 = !DILocation(line: 94, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 94, column: 13)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 93, column: 25)
!138 = !DILocation(line: 94, column: 21, scope: !136)
!139 = !DILocation(line: 94, column: 28, scope: !136)
!140 = !DILocation(line: 94, column: 13, scope: !137)
!141 = !DILocation(line: 96, column: 18, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 94, column: 37)
!143 = !DILocation(line: 96, column: 26, scope: !142)
!144 = !DILocation(line: 96, column: 13, scope: !142)
!145 = !DILocation(line: 97, column: 9, scope: !142)
!146 = !DILocation(line: 98, column: 14, scope: !137)
!147 = !DILocation(line: 98, column: 9, scope: !137)
!148 = !DILocation(line: 99, column: 5, scope: !137)
!149 = !DILocation(line: 101, column: 5, scope: !107)
!150 = distinct !DISubprogram(name: "memset", scope: !151, file: !151, line: 12, type: !152, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!151 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!152 = !DISubroutineType(types: !153)
!153 = !{!13, !13, !110, !27}
!154 = !DILocalVariable(name: "dst", arg: 1, scope: !150, file: !151, line: 12, type: !13)
!155 = !DILocation(line: 12, column: 20, scope: !150)
!156 = !DILocalVariable(name: "s", arg: 2, scope: !150, file: !151, line: 12, type: !110)
!157 = !DILocation(line: 12, column: 29, scope: !150)
!158 = !DILocalVariable(name: "count", arg: 3, scope: !150, file: !151, line: 12, type: !27)
!159 = !DILocation(line: 12, column: 39, scope: !150)
!160 = !DILocalVariable(name: "a", scope: !150, file: !151, line: 13, type: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!162 = !DILocation(line: 13, column: 9, scope: !150)
!163 = !DILocation(line: 13, column: 13, scope: !150)
!164 = !DILocation(line: 14, column: 3, scope: !150)
!165 = !DILocation(line: 14, column: 15, scope: !150)
!166 = !DILocation(line: 14, column: 18, scope: !150)
!167 = !DILocation(line: 15, column: 12, scope: !150)
!168 = !DILocation(line: 15, column: 7, scope: !150)
!169 = !DILocation(line: 15, column: 10, scope: !150)
!170 = distinct !{!170, !164, !167, !171}
!171 = !{!"llvm.loop.mustprogress"}
!172 = !DILocation(line: 16, column: 10, scope: !150)
!173 = !DILocation(line: 16, column: 3, scope: !150)
