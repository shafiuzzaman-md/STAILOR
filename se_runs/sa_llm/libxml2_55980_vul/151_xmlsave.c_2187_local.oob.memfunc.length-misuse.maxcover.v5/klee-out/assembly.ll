; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/151_xmlsave.c_2187_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/151_xmlsave.c_2187_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type opaque
%struct._xmlOutputBuffer = type { %struct._xmlBuf*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/151_xmlsave.c_2187_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [30 x i8] c"int target_function(xmlBuf *)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %4 = load i64, i64* %2, align 8, !dbg !40
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !41
  store i8* %5, i8** %3, align 8, !dbg !39
  %6 = load i8*, i8** %3, align 8, !dbg !42
  ret i8* %6, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveErrMemory(i8* noundef %0) #0 !dbg !44 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlBufUse(%struct._xmlBuf* noundef %0) #0 !dbg !53 {
  %2 = alloca %struct._xmlBuf*, align 8
  %3 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  %4 = bitcast i32* %3 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !61
  %5 = load i32, i32* %3, align 4, !dbg !62
  %6 = icmp sge i32 %5, 0, !dbg !63
  %7 = zext i1 %6 to i32, !dbg !63
  %8 = sext i32 %7 to i64, !dbg !62
  call void @klee_assume(i64 noundef %8), !dbg !64
  %9 = load i32, i32* %3, align 4, !dbg !65
  ret i32 %9, !dbg !66
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlBuf* noundef %0) #0 !dbg !67 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca %struct._xmlOutputBuffer*, align 8
  %5 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %4, metadata !70, metadata !DIExpression()), !dbg !71
  %6 = call i8* @xmlMalloc(i64 noundef 48), !dbg !72
  %7 = bitcast i8* %6 to %struct._xmlOutputBuffer*, !dbg !73
  store %struct._xmlOutputBuffer* %7, %struct._xmlOutputBuffer** %4, align 8, !dbg !74
  %8 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !75
  %9 = icmp eq %struct._xmlOutputBuffer* %8, null, !dbg !77
  br i1 %9, label %10, label %11, !dbg !78

10:                                               ; preds = %1
  call void @xmlSaveErrMemory(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  store i32 -1, i32* %2, align 4, !dbg !81
  br label %33, !dbg !81

11:                                               ; preds = %1
  %12 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !82
  %13 = bitcast %struct._xmlOutputBuffer* %12 to i8*, !dbg !83
  %14 = call i8* @memset(i8* %13, i32 0, i64 48), !dbg !83
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !84
  %16 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !85
  %17 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !86
  %18 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %17, i32 0, i32 0, !dbg !87
  store %struct._xmlBuf* %16, %struct._xmlBuf** %18, align 8, !dbg !88
  %19 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !89
  %20 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %19, i32 0, i32 1, !dbg !90
  store i8* null, i8** %20, align 8, !dbg !91
  %21 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !92
  %22 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %21, i32 0, i32 2, !dbg !93
  store i8* null, i8** %22, align 8, !dbg !94
  %23 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !95
  %24 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %23, i32 0, i32 3, !dbg !96
  store i8* null, i8** %24, align 8, !dbg !97
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !98
  %26 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %25, i32 0, i32 4, !dbg !99
  store i8* null, i8** %26, align 8, !dbg !100
  %27 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !101
  %28 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %27, i32 0, i32 5, !dbg !102
  store i32 0, i32* %28, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %5, metadata !104, metadata !DIExpression()), !dbg !105
  %29 = load %struct._xmlBuf*, %struct._xmlBuf** %3, align 8, !dbg !106
  %30 = call i32 @xmlBufUse(%struct._xmlBuf* noundef %29), !dbg !107
  store i32 %30, i32* %5, align 4, !dbg !105
  %31 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %4, align 8, !dbg !108
  %32 = bitcast %struct._xmlOutputBuffer* %31 to i8*, !dbg !108
  call void @free(i8* noundef %32) #7, !dbg !109
  store i32 0, i32* %2, align 4, !dbg !110
  br label %33, !dbg !110

33:                                               ; preds = %11, %10
  %34 = load i32, i32* %2, align 4, !dbg !111
  ret i32 %34, !dbg !111
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !115, metadata !DIExpression()), !dbg !116
  %3 = bitcast %struct._xmlBuf** %2 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !118
  %4 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !119
  %5 = icmp ne %struct._xmlBuf* %4, null, !dbg !120
  %6 = zext i1 %5 to i32, !dbg !120
  %7 = sext i32 %6 to i64, !dbg !119
  call void @klee_assume(i64 noundef %7), !dbg !121
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !122
  %9 = call i32 @target_function(%struct._xmlBuf* noundef %8), !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !125 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !131, metadata !DIExpression()), !dbg !132
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %7, metadata !135, metadata !DIExpression()), !dbg !137
  %8 = load i8*, i8** %4, align 8, !dbg !138
  store i8* %8, i8** %7, align 8, !dbg !137
  br label %9, !dbg !139

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !140
  %11 = add i64 %10, -1, !dbg !140
  store i64 %11, i64* %6, align 8, !dbg !140
  %12 = icmp ugt i64 %10, 0, !dbg !141
  br i1 %12, label %13, label %18, !dbg !139

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !142
  %15 = trunc i32 %14 to i8, !dbg !142
  %16 = load i8*, i8** %7, align 8, !dbg !143
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !143
  store i8* %17, i8** %7, align 8, !dbg !143
  store i8 %15, i8* %16, align 1, !dbg !144
  br label %9, !dbg !139, !llvm.loop !145

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !147
  ret i8* %19, !dbg !148
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/151_xmlsave.c_2187_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d5be66f8e3e8debe88f102d75b49ba1d")
!2 = !{!3, !13, !19}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBufferPtr", file: !1, line: 12, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 14, size: 384, elements: !7)
!7 = !{!8, !12, !14, !15, !16, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6, file: !1, line: 15, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 10, flags: DIFlagFwdDecl)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !6, file: !1, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "writecallback", scope: !6, file: !1, line: 17, baseType: !13, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "closecallback", scope: !6, file: !1, line: 18, baseType: !13, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6, file: !1, line: 19, baseType: !13, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !6, file: !1, line: 20, baseType: !18, size: 32, offset: 320)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !33, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!13, !19}
!35 = !{}
!36 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 24, type: !19)
!37 = !DILocation(line: 24, column: 24, scope: !32)
!38 = !DILocalVariable(name: "ptr", scope: !32, file: !1, line: 25, type: !13)
!39 = !DILocation(line: 25, column: 11, scope: !32)
!40 = !DILocation(line: 25, column: 24, scope: !32)
!41 = !DILocation(line: 25, column: 17, scope: !32)
!42 = !DILocation(line: 26, column: 12, scope: !32)
!43 = !DILocation(line: 26, column: 5, scope: !32)
!44 = distinct !DISubprogram(name: "xmlSaveErrMemory", scope: !1, file: !1, line: 30, type: !45, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DILocalVariable(name: "msg", arg: 1, scope: !44, file: !1, line: 30, type: !47)
!51 = !DILocation(line: 30, column: 35, scope: !44)
!52 = !DILocation(line: 32, column: 1, scope: !44)
!53 = distinct !DISubprogram(name: "xmlBufUse", scope: !1, file: !1, line: 35, type: !54, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!54 = !DISubroutineType(types: !55)
!55 = !{!18, !9}
!56 = !DILocalVariable(name: "buf", arg: 1, scope: !53, file: !1, line: 35, type: !9)
!57 = !DILocation(line: 35, column: 23, scope: !53)
!58 = !DILocalVariable(name: "use", scope: !53, file: !1, line: 36, type: !18)
!59 = !DILocation(line: 36, column: 9, scope: !53)
!60 = !DILocation(line: 37, column: 24, scope: !53)
!61 = !DILocation(line: 37, column: 5, scope: !53)
!62 = !DILocation(line: 38, column: 17, scope: !53)
!63 = !DILocation(line: 38, column: 21, scope: !53)
!64 = !DILocation(line: 38, column: 5, scope: !53)
!65 = !DILocation(line: 39, column: 12, scope: !53)
!66 = !DILocation(line: 39, column: 5, scope: !53)
!67 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 43, type: !54, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!68 = !DILocalVariable(name: "buf", arg: 1, scope: !67, file: !1, line: 43, type: !9)
!69 = !DILocation(line: 43, column: 29, scope: !67)
!70 = !DILocalVariable(name: "outbuf", scope: !67, file: !1, line: 44, type: !3)
!71 = !DILocation(line: 44, column: 24, scope: !67)
!72 = !DILocation(line: 46, column: 35, scope: !67)
!73 = !DILocation(line: 46, column: 14, scope: !67)
!74 = !DILocation(line: 46, column: 12, scope: !67)
!75 = !DILocation(line: 47, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !67, file: !1, line: 47, column: 9)
!77 = !DILocation(line: 47, column: 16, scope: !76)
!78 = !DILocation(line: 47, column: 9, scope: !67)
!79 = !DILocation(line: 48, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 47, column: 25)
!81 = !DILocation(line: 49, column: 9, scope: !80)
!82 = !DILocation(line: 53, column: 12, scope: !67)
!83 = !DILocation(line: 53, column: 5, scope: !67)
!84 = !DILocation(line: 59, column: 5, scope: !67)
!85 = !DILocation(line: 61, column: 22, scope: !67)
!86 = !DILocation(line: 61, column: 5, scope: !67)
!87 = !DILocation(line: 61, column: 13, scope: !67)
!88 = !DILocation(line: 61, column: 20, scope: !67)
!89 = !DILocation(line: 62, column: 5, scope: !67)
!90 = !DILocation(line: 62, column: 13, scope: !67)
!91 = !DILocation(line: 62, column: 21, scope: !67)
!92 = !DILocation(line: 63, column: 5, scope: !67)
!93 = !DILocation(line: 63, column: 13, scope: !67)
!94 = !DILocation(line: 63, column: 27, scope: !67)
!95 = !DILocation(line: 64, column: 5, scope: !67)
!96 = !DILocation(line: 64, column: 13, scope: !67)
!97 = !DILocation(line: 64, column: 27, scope: !67)
!98 = !DILocation(line: 65, column: 5, scope: !67)
!99 = !DILocation(line: 65, column: 13, scope: !67)
!100 = !DILocation(line: 65, column: 21, scope: !67)
!101 = !DILocation(line: 66, column: 5, scope: !67)
!102 = !DILocation(line: 66, column: 13, scope: !67)
!103 = !DILocation(line: 66, column: 21, scope: !67)
!104 = !DILocalVariable(name: "use", scope: !67, file: !1, line: 68, type: !18)
!105 = !DILocation(line: 68, column: 9, scope: !67)
!106 = !DILocation(line: 68, column: 25, scope: !67)
!107 = !DILocation(line: 68, column: 15, scope: !67)
!108 = !DILocation(line: 70, column: 10, scope: !67)
!109 = !DILocation(line: 70, column: 5, scope: !67)
!110 = !DILocation(line: 71, column: 5, scope: !67)
!111 = !DILocation(line: 72, column: 1, scope: !67)
!112 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !113, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!113 = !DISubroutineType(types: !114)
!114 = !{!18}
!115 = !DILocalVariable(name: "buf", scope: !112, file: !1, line: 76, type: !9)
!116 = !DILocation(line: 76, column: 13, scope: !112)
!117 = !DILocation(line: 77, column: 24, scope: !112)
!118 = !DILocation(line: 77, column: 5, scope: !112)
!119 = !DILocation(line: 80, column: 17, scope: !112)
!120 = !DILocation(line: 80, column: 21, scope: !112)
!121 = !DILocation(line: 80, column: 5, scope: !112)
!122 = !DILocation(line: 83, column: 21, scope: !112)
!123 = !DILocation(line: 83, column: 5, scope: !112)
!124 = !DILocation(line: 85, column: 5, scope: !112)
!125 = distinct !DISubprogram(name: "memset", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !35)
!126 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!127 = !DISubroutineType(types: !128)
!128 = !{!13, !13, !18, !19}
!129 = !DILocalVariable(name: "dst", arg: 1, scope: !125, file: !126, line: 12, type: !13)
!130 = !DILocation(line: 12, column: 20, scope: !125)
!131 = !DILocalVariable(name: "s", arg: 2, scope: !125, file: !126, line: 12, type: !18)
!132 = !DILocation(line: 12, column: 29, scope: !125)
!133 = !DILocalVariable(name: "count", arg: 3, scope: !125, file: !126, line: 12, type: !19)
!134 = !DILocation(line: 12, column: 39, scope: !125)
!135 = !DILocalVariable(name: "a", scope: !125, file: !126, line: 13, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!137 = !DILocation(line: 13, column: 9, scope: !125)
!138 = !DILocation(line: 13, column: 13, scope: !125)
!139 = !DILocation(line: 14, column: 3, scope: !125)
!140 = !DILocation(line: 14, column: 15, scope: !125)
!141 = !DILocation(line: 14, column: 18, scope: !125)
!142 = !DILocation(line: 15, column: 12, scope: !125)
!143 = !DILocation(line: 15, column: 7, scope: !125)
!144 = !DILocation(line: 15, column: 10, scope: !125)
!145 = distinct !{!145, !139, !142, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 16, column: 10, scope: !125)
!148 = !DILocation(line: 16, column: 3, scope: !125)
