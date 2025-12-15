; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/016_HTMLtree.c_418_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/016_HTMLtree.c_418_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i32, i32 }
%struct._xmlOutputBuffer = type { %struct._xmlBuf*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocating HTML output buffer\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/016_HTMLtree.c_418_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlCreateOutputBuffer = private unnamed_addr constant [37 x i8] c"int htmlCreateOutputBuffer(xmlBuf *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"buf\00", align 1

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
define dso_local void @htmlSaveErrMemory(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !52, metadata !DIExpression()), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufUse(%struct._xmlBuf* noundef %0) #0 !dbg !55 {
  %2 = alloca %struct._xmlBuf*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !58, metadata !DIExpression()), !dbg !59
  %3 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !60
  %4 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %3, i32 0, i32 1, !dbg !61
  %5 = load i32, i32* %4, align 8, !dbg !61
  ret i32 %5, !dbg !62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htmlCreateOutputBuffer(%struct._xmlBuf* noundef %0) #0 !dbg !63 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %4, metadata !66, metadata !DIExpression()), !dbg !67
  %6 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !68
  %7 = icmp eq %struct._xmlBuf* %6, null, !dbg !70
  br i1 %7, label %8, label %9, !dbg !71

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !72
  br label %37, !dbg !72

9:                                                ; preds = %1
  %10 = call i8* @xmlMalloc(i64 noundef 48), !dbg !74
  %11 = bitcast i8* %10 to %struct._xmlOutputBuffer*, !dbg !75
  store %struct._xmlOutputBuffer* %11, %struct._xmlOutputBuffer** %4, align 8, !dbg !76
  %12 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !77
  %13 = icmp eq %struct._xmlOutputBuffer* %12, null, !dbg !79
  br i1 %13, label %14, label %15, !dbg !80

14:                                               ; preds = %9
  call void @htmlSaveErrMemory(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !81
  store i32 -1, i32* %2, align 4, !dbg !83
  br label %37, !dbg !83

15:                                               ; preds = %9
  %16 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !84
  %17 = bitcast %struct._xmlOutputBuffer* %16 to i8*, !dbg !85
  %18 = call i8* @memset(i8* %17, i32 0, i64 48), !dbg !85
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.htmlCreateOutputBuffer, i64 0, i64 0)), !dbg !86
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !87
  %21 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !88
  %22 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %21, i32 0, i32 0, !dbg !89
  store %struct._xmlBuf* %20, %struct._xmlBuf** %22, align 8, !dbg !90
  %23 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !91
  %24 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %23, i32 0, i32 1, !dbg !92
  store i8* null, i8** %24, align 8, !dbg !93
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !94
  %26 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %25, i32 0, i32 2, !dbg !95
  store i8* null, i8** %26, align 8, !dbg !96
  %27 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !97
  %28 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %27, i32 0, i32 3, !dbg !98
  store i8* null, i8** %28, align 8, !dbg !99
  %29 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !100
  %30 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %29, i32 0, i32 4, !dbg !101
  store i8* null, i8** %30, align 8, !dbg !102
  %31 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !103
  %32 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %31, i32 0, i32 5, !dbg !104
  store i32 0, i32* %32, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %5, metadata !106, metadata !DIExpression()), !dbg !107
  %33 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !108
  %34 = call i32 @xmlBufUse(%struct._xmlBuf* noundef %33), !dbg !109
  store i32 %34, i32* %5, align 4, !dbg !107
  %35 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !110
  %36 = bitcast %struct._xmlOutputBuffer* %35 to i8*, !dbg !110
  call void @free(i8* noundef %36) #7, !dbg !111
  store i32 0, i32* %2, align 4, !dbg !112
  br label %37, !dbg !112

37:                                               ; preds = %15, %14, %8
  %38 = load i32, i32* %2, align 4, !dbg !113
  ret i32 %38, !dbg !113
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !117, metadata !DIExpression()), !dbg !118
  %4 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !119
  %5 = bitcast i8* %4 to %struct._xmlBuf*, !dbg !120
  store %struct._xmlBuf* %5, %struct._xmlBuf** %2, align 8, !dbg !118
  %6 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !121
  %7 = icmp eq %struct._xmlBuf* %6, null, !dbg !123
  br i1 %7, label %8, label %9, !dbg !124

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !125
  br label %44, !dbg !125

9:                                                ; preds = %0
  %10 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !126
  %11 = bitcast %struct._xmlBuf* %10 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !127
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !128
  %13 = icmp ne %struct._xmlBuf* %12, null, !dbg !129
  %14 = zext i1 %13 to i32, !dbg !129
  %15 = sext i32 %14 to i64, !dbg !128
  call void @klee_assume(i64 noundef %15), !dbg !130
  %16 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !131
  %17 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %16, i32 0, i32 1, !dbg !132
  %18 = load i32, i32* %17, align 8, !dbg !132
  %19 = icmp sge i32 %18, 0, !dbg !133
  %20 = zext i1 %19 to i32, !dbg !133
  %21 = sext i32 %20 to i64, !dbg !131
  call void @klee_assume(i64 noundef %21), !dbg !134
  %22 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !135
  %23 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %22, i32 0, i32 1, !dbg !136
  %24 = load i32, i32* %23, align 8, !dbg !136
  %25 = icmp slt i32 %24, 1024, !dbg !137
  %26 = zext i1 %25 to i32, !dbg !137
  %27 = sext i32 %26 to i64, !dbg !135
  call void @klee_assume(i64 noundef %27), !dbg !138
  %28 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !139
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %28, i32 0, i32 2, !dbg !140
  %30 = load i32, i32* %29, align 4, !dbg !140
  %31 = icmp sge i32 %30, 0, !dbg !141
  %32 = zext i1 %31 to i32, !dbg !141
  %33 = sext i32 %32 to i64, !dbg !139
  call void @klee_assume(i64 noundef %33), !dbg !142
  %34 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !143
  %35 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %34, i32 0, i32 2, !dbg !144
  %36 = load i32, i32* %35, align 4, !dbg !144
  %37 = icmp slt i32 %36, 1024, !dbg !145
  %38 = zext i1 %37 to i32, !dbg !145
  %39 = sext i32 %38 to i64, !dbg !143
  call void @klee_assume(i64 noundef %39), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %3, metadata !147, metadata !DIExpression()), !dbg !148
  %40 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !149
  %41 = call i32 @htmlCreateOutputBuffer(%struct._xmlBuf* noundef %40), !dbg !150
  store i32 %41, i32* %3, align 4, !dbg !148
  %42 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !151
  %43 = bitcast %struct._xmlBuf* %42 to i8*, !dbg !151
  call void @free(i8* noundef %43) #7, !dbg !152
  store i32 0, i32* %1, align 4, !dbg !153
  br label %44, !dbg !153

44:                                               ; preds = %9, %8
  %45 = load i32, i32* %1, align 4, !dbg !154
  ret i32 %45, !dbg !154
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !161, metadata !DIExpression()), !dbg !162
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %7, metadata !165, metadata !DIExpression()), !dbg !166
  %8 = load i8*, i8** %4, align 8, !dbg !167
  store i8* %8, i8** %7, align 8, !dbg !166
  br label %9, !dbg !168

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !169
  %11 = add i64 %10, -1, !dbg !169
  store i64 %11, i64* %6, align 8, !dbg !169
  %12 = icmp ugt i64 %10, 0, !dbg !170
  br i1 %12, label %13, label %18, !dbg !168

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !171
  %15 = trunc i32 %14 to i8, !dbg !171
  %16 = load i8*, i8** %7, align 8, !dbg !172
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !172
  store i8* %17, i8** %7, align 8, !dbg !172
  store i8 %15, i8* %16, align 1, !dbg !173
  br label %9, !dbg !168, !llvm.loop !174

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %19, !dbg !177
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/016_HTMLtree.c_418_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "688c2d6992d54ff0e24d1bc234184251")
!2 = !{!3, !4, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !1, line: 27, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 25, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 18, size: 384, elements: !8)
!8 = !{!9, !20, !21, !22, !23, !24}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !7, file: !1, line: 19, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 15, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 128, elements: !13)
!13 = !{!14, !17, !19}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !12, file: !1, line: 12, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !12, file: !1, line: 13, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !12, file: !1, line: 14, baseType: !18, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !7, file: !1, line: 20, baseType: !3, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !7, file: !1, line: 21, baseType: !3, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !7, file: !1, line: 22, baseType: !3, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !7, file: !1, line: 23, baseType: !3, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !7, file: !1, line: 24, baseType: !18, size: 32, offset: 320)
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
!35 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{!3, !38}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{}
!42 = !DILocalVariable(name: "size", arg: 1, scope: !35, file: !1, line: 30, type: !38)
!43 = !DILocation(line: 30, column: 24, scope: !35)
!44 = !DILocation(line: 31, column: 19, scope: !35)
!45 = !DILocation(line: 31, column: 12, scope: !35)
!46 = !DILocation(line: 31, column: 5, scope: !35)
!47 = distinct !DISubprogram(name: "htmlSaveErrMemory", scope: !1, file: !1, line: 34, type: !48, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!52 = !DILocalVariable(name: "msg", arg: 1, scope: !47, file: !1, line: 34, type: !50)
!53 = !DILocation(line: 34, column: 36, scope: !47)
!54 = !DILocation(line: 36, column: 1, scope: !47)
!55 = distinct !DISubprogram(name: "xmlBufUse", scope: !1, file: !1, line: 38, type: !56, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!56 = !DISubroutineType(types: !57)
!57 = !{!18, !10}
!58 = !DILocalVariable(name: "buf", arg: 1, scope: !55, file: !1, line: 38, type: !10)
!59 = !DILocation(line: 38, column: 23, scope: !55)
!60 = !DILocation(line: 39, column: 12, scope: !55)
!61 = !DILocation(line: 39, column: 17, scope: !55)
!62 = !DILocation(line: 39, column: 5, scope: !55)
!63 = distinct !DISubprogram(name: "htmlCreateOutputBuffer", scope: !1, file: !1, line: 43, type: !56, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!64 = !DILocalVariable(name: "buf", arg: 1, scope: !63, file: !1, line: 43, type: !10)
!65 = !DILocation(line: 43, column: 36, scope: !63)
!66 = !DILocalVariable(name: "outbuf", scope: !63, file: !1, line: 44, type: !4)
!67 = !DILocation(line: 44, column: 24, scope: !63)
!68 = !DILocation(line: 46, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !63, file: !1, line: 46, column: 9)
!70 = !DILocation(line: 46, column: 13, scope: !69)
!71 = !DILocation(line: 46, column: 9, scope: !63)
!72 = !DILocation(line: 47, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 46, column: 22)
!74 = !DILocation(line: 50, column: 35, scope: !63)
!75 = !DILocation(line: 50, column: 14, scope: !63)
!76 = !DILocation(line: 50, column: 12, scope: !63)
!77 = !DILocation(line: 51, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !63, file: !1, line: 51, column: 9)
!79 = !DILocation(line: 51, column: 16, scope: !78)
!80 = !DILocation(line: 51, column: 9, scope: !63)
!81 = !DILocation(line: 52, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 51, column: 25)
!83 = !DILocation(line: 53, column: 9, scope: !82)
!84 = !DILocation(line: 57, column: 12, scope: !63)
!85 = !DILocation(line: 57, column: 5, scope: !63)
!86 = !DILocation(line: 63, column: 5, scope: !63)
!87 = !DILocation(line: 65, column: 22, scope: !63)
!88 = !DILocation(line: 65, column: 5, scope: !63)
!89 = !DILocation(line: 65, column: 13, scope: !63)
!90 = !DILocation(line: 65, column: 20, scope: !63)
!91 = !DILocation(line: 66, column: 5, scope: !63)
!92 = !DILocation(line: 66, column: 13, scope: !63)
!93 = !DILocation(line: 66, column: 21, scope: !63)
!94 = !DILocation(line: 67, column: 5, scope: !63)
!95 = !DILocation(line: 67, column: 13, scope: !63)
!96 = !DILocation(line: 67, column: 27, scope: !63)
!97 = !DILocation(line: 68, column: 5, scope: !63)
!98 = !DILocation(line: 68, column: 13, scope: !63)
!99 = !DILocation(line: 68, column: 27, scope: !63)
!100 = !DILocation(line: 69, column: 5, scope: !63)
!101 = !DILocation(line: 69, column: 13, scope: !63)
!102 = !DILocation(line: 69, column: 21, scope: !63)
!103 = !DILocation(line: 70, column: 5, scope: !63)
!104 = !DILocation(line: 70, column: 13, scope: !63)
!105 = !DILocation(line: 70, column: 21, scope: !63)
!106 = !DILocalVariable(name: "use", scope: !63, file: !1, line: 72, type: !18)
!107 = !DILocation(line: 72, column: 9, scope: !63)
!108 = !DILocation(line: 72, column: 25, scope: !63)
!109 = !DILocation(line: 72, column: 15, scope: !63)
!110 = !DILocation(line: 74, column: 10, scope: !63)
!111 = !DILocation(line: 74, column: 5, scope: !63)
!112 = !DILocation(line: 75, column: 5, scope: !63)
!113 = !DILocation(line: 76, column: 1, scope: !63)
!114 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 78, type: !115, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!115 = !DISubroutineType(types: !116)
!116 = !{!18}
!117 = !DILocalVariable(name: "buf", scope: !114, file: !1, line: 80, type: !10)
!118 = !DILocation(line: 80, column: 13, scope: !114)
!119 = !DILocation(line: 80, column: 28, scope: !114)
!120 = !DILocation(line: 80, column: 19, scope: !114)
!121 = !DILocation(line: 81, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !1, line: 81, column: 9)
!123 = !DILocation(line: 81, column: 13, scope: !122)
!124 = !DILocation(line: 81, column: 9, scope: !114)
!125 = !DILocation(line: 81, column: 22, scope: !122)
!126 = !DILocation(line: 84, column: 24, scope: !114)
!127 = !DILocation(line: 84, column: 5, scope: !114)
!128 = !DILocation(line: 87, column: 17, scope: !114)
!129 = !DILocation(line: 87, column: 21, scope: !114)
!130 = !DILocation(line: 87, column: 5, scope: !114)
!131 = !DILocation(line: 90, column: 17, scope: !114)
!132 = !DILocation(line: 90, column: 22, scope: !114)
!133 = !DILocation(line: 90, column: 26, scope: !114)
!134 = !DILocation(line: 90, column: 5, scope: !114)
!135 = !DILocation(line: 91, column: 17, scope: !114)
!136 = !DILocation(line: 91, column: 22, scope: !114)
!137 = !DILocation(line: 91, column: 26, scope: !114)
!138 = !DILocation(line: 91, column: 5, scope: !114)
!139 = !DILocation(line: 92, column: 17, scope: !114)
!140 = !DILocation(line: 92, column: 22, scope: !114)
!141 = !DILocation(line: 92, column: 27, scope: !114)
!142 = !DILocation(line: 92, column: 5, scope: !114)
!143 = !DILocation(line: 93, column: 17, scope: !114)
!144 = !DILocation(line: 93, column: 22, scope: !114)
!145 = !DILocation(line: 93, column: 27, scope: !114)
!146 = !DILocation(line: 93, column: 5, scope: !114)
!147 = !DILocalVariable(name: "result", scope: !114, file: !1, line: 96, type: !18)
!148 = !DILocation(line: 96, column: 9, scope: !114)
!149 = !DILocation(line: 96, column: 41, scope: !114)
!150 = !DILocation(line: 96, column: 18, scope: !114)
!151 = !DILocation(line: 98, column: 10, scope: !114)
!152 = !DILocation(line: 98, column: 5, scope: !114)
!153 = !DILocation(line: 99, column: 5, scope: !114)
!154 = !DILocation(line: 100, column: 1, scope: !114)
!155 = distinct !DISubprogram(name: "memset", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !25, retainedNodes: !41)
!156 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!157 = !DISubroutineType(types: !158)
!158 = !{!3, !3, !18, !38}
!159 = !DILocalVariable(name: "dst", arg: 1, scope: !155, file: !156, line: 12, type: !3)
!160 = !DILocation(line: 12, column: 20, scope: !155)
!161 = !DILocalVariable(name: "s", arg: 2, scope: !155, file: !156, line: 12, type: !18)
!162 = !DILocation(line: 12, column: 29, scope: !155)
!163 = !DILocalVariable(name: "count", arg: 3, scope: !155, file: !156, line: 12, type: !38)
!164 = !DILocation(line: 12, column: 39, scope: !155)
!165 = !DILocalVariable(name: "a", scope: !155, file: !156, line: 13, type: !15)
!166 = !DILocation(line: 13, column: 9, scope: !155)
!167 = !DILocation(line: 13, column: 13, scope: !155)
!168 = !DILocation(line: 14, column: 3, scope: !155)
!169 = !DILocation(line: 14, column: 15, scope: !155)
!170 = !DILocation(line: 14, column: 18, scope: !155)
!171 = !DILocation(line: 15, column: 12, scope: !155)
!172 = !DILocation(line: 15, column: 7, scope: !155)
!173 = !DILocation(line: 15, column: 10, scope: !155)
!174 = distinct !{!174, !168, !171, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 16, column: 10, scope: !155)
!177 = !DILocation(line: 16, column: 3, scope: !155)
