; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type opaque
%struct._xmlSaveCtxt = type { %struct._xmlOutputBuffer*, i32, i32, i8* }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal = private unnamed_addr constant [84 x i8] c"int xmlNodeDumpOutputInternal(xmlOutputBuffer *, xmlNode *, int, int, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sym_buf\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sym_cur\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"sym_level\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"sym_format\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"sym_encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlOutputBuffer* @xmlOutputBufferCreateBuffer(i8* noundef %0, i8* noundef %1) #0 !dbg !18 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlOutputBuffer*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !25, metadata !DIExpression()), !dbg !26
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %5, metadata !29, metadata !DIExpression()), !dbg !30
  %6 = bitcast %struct._xmlOutputBuffer** %5 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %7 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !33
  %8 = icmp ne %struct._xmlOutputBuffer* %7, null, !dbg !34
  %9 = zext i1 %8 to i32, !dbg !34
  %10 = sext i32 %9 to i64, !dbg !33
  call void @klee_assume(i64 noundef %10), !dbg !35
  %11 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !36
  ret %struct._xmlOutputBuffer* %11, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %0) #0 !dbg !38 {
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %2, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !44 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !55, metadata !DIExpression()), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %0, %struct._xmlNode* noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4) #0 !dbg !58 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlOutputBuffer*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct._xmlSaveCtxt, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %7, metadata !67, metadata !DIExpression()), !dbg !68
  store %struct._xmlNode* %1, %struct._xmlNode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %12, metadata !77, metadata !DIExpression()), !dbg !78
  %13 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !79
  %14 = icmp eq %struct._xmlOutputBuffer* %13, null, !dbg !81
  br i1 %14, label %15, label %16, !dbg !82

15:                                               ; preds = %5
  store i32 -1, i32* %6, align 4, !dbg !83
  br label %33, !dbg !83

16:                                               ; preds = %5
  %17 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !84
  %18 = icmp eq %struct._xmlNode* %17, null, !dbg !86
  br i1 %18, label %19, label %21, !dbg !87

19:                                               ; preds = %16
  %20 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !88
  call void @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %20), !dbg !90
  store i32 -1, i32* %6, align 4, !dbg !91
  br label %33, !dbg !91

21:                                               ; preds = %16
  %22 = bitcast %struct._xmlSaveCtxt* %12 to i8*, !dbg !92
  %23 = call i8* @memset(i8* %22, i32 0, i64 24), !dbg !92
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !93
  %25 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %7, align 8, !dbg !94
  %26 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 0, !dbg !95
  store %struct._xmlOutputBuffer* %25, %struct._xmlOutputBuffer** %26, align 8, !dbg !96
  %27 = load i32, i32* %9, align 4, !dbg !97
  %28 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 1, !dbg !98
  store i32 %27, i32* %28, align 8, !dbg !99
  %29 = load i32, i32* %10, align 4, !dbg !100
  %30 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 2, !dbg !101
  store i32 %29, i32* %30, align 4, !dbg !102
  %31 = load i8*, i8** %11, align 8, !dbg !103
  %32 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %12, i32 0, i32 3, !dbg !104
  store i8* %31, i8** %32, align 8, !dbg !105
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %12), !dbg !106
  store i32 0, i32* %6, align 4, !dbg !107
  br label %33, !dbg !107

33:                                               ; preds = %21, %19, %15
  %34 = load i32, i32* %6, align 4, !dbg !108
  ret i32 %34, !dbg !108
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %2, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %4, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %5, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !120, metadata !DIExpression()), !dbg !124
  %7 = bitcast %struct._xmlOutputBuffer** %2 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !126
  %8 = bitcast %struct._xmlNode** %3 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !128
  %9 = bitcast i32* %4 to i8*, !dbg !129
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !130
  %10 = bitcast i32* %5 to i8*, !dbg !131
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !132
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !133
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 32, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)), !dbg !134
  %12 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !135
  %13 = icmp ne %struct._xmlOutputBuffer* %12, null, !dbg !136
  %14 = zext i1 %13 to i32, !dbg !136
  %15 = sext i32 %14 to i64, !dbg !135
  call void @klee_assume(i64 noundef %15), !dbg !137
  %16 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !138
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !139
  %18 = zext i1 %17 to i32, !dbg !139
  %19 = sext i32 %18 to i64, !dbg !138
  call void @klee_assume(i64 noundef %19), !dbg !140
  %20 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !141
  %21 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !142
  %22 = load i32, i32* %4, align 4, !dbg !143
  %23 = load i32, i32* %5, align 4, !dbg !144
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !145
  %25 = call i32 @xmlNodeDumpOutputInternal(%struct._xmlOutputBuffer* noundef %20, %struct._xmlNode* noundef %21, i32 noundef %22, i32 noundef %23, i8* noundef %24), !dbg !146
  ret i32 0, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !148 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i8** %7, metadata !161, metadata !DIExpression()), !dbg !163
  %8 = load i8*, i8** %4, align 8, !dbg !164
  store i8* %8, i8** %7, align 8, !dbg !163
  br label %9, !dbg !165

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !166
  %11 = add i64 %10, -1, !dbg !166
  store i64 %11, i64* %6, align 8, !dbg !166
  %12 = icmp ugt i64 %10, 0, !dbg !167
  br i1 %12, label %13, label %18, !dbg !165

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !168
  %15 = trunc i32 %14 to i8, !dbg !168
  %16 = load i8*, i8** %7, align 8, !dbg !169
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !169
  store i8* %17, i8** %7, align 8, !dbg !169
  store i8 %15, i8* %16, align 1, !dbg !170
  br label %9, !dbg !165, !llvm.loop !171

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !173
  ret i8* %19, !dbg !174
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/189_xmlsave.c_2517_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6f0a97fa33389573de18594560428466")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 13, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlOutputBufferCreateBuffer", scope: !1, file: !1, line: 24, type: !19, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !3, !3}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 10, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 10, flags: DIFlagFwdDecl)
!24 = !{}
!25 = !DILocalVariable(name: "buffer", arg: 1, scope: !18, file: !1, line: 24, type: !3)
!26 = !DILocation(line: 24, column: 52, scope: !18)
!27 = !DILocalVariable(name: "encoder", arg: 2, scope: !18, file: !1, line: 24, type: !3)
!28 = !DILocation(line: 24, column: 66, scope: !18)
!29 = !DILocalVariable(name: "buf", scope: !18, file: !1, line: 25, type: !21)
!30 = !DILocation(line: 25, column: 22, scope: !18)
!31 = !DILocation(line: 26, column: 24, scope: !18)
!32 = !DILocation(line: 26, column: 5, scope: !18)
!33 = !DILocation(line: 27, column: 17, scope: !18)
!34 = !DILocation(line: 27, column: 21, scope: !18)
!35 = !DILocation(line: 27, column: 5, scope: !18)
!36 = !DILocation(line: 28, column: 12, scope: !18)
!37 = !DILocation(line: 28, column: 5, scope: !18)
!38 = distinct !DISubprogram(name: "xmlOutputBufferClose", scope: !1, file: !1, line: 32, type: !39, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !21}
!41 = !DILocalVariable(name: "buf", arg: 1, scope: !38, file: !1, line: 32, type: !21)
!42 = !DILocation(line: 32, column: 44, scope: !38)
!43 = !DILocation(line: 34, column: 1, scope: !38)
!44 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 37, type: !45, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 16, size: 192, elements: !49)
!49 = !{!50, !51, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !48, file: !1, line: 17, baseType: !21, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !48, file: !1, line: 18, baseType: !52, size: 32, offset: 64)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !48, file: !1, line: 19, baseType: !52, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !48, file: !1, line: 20, baseType: !4, size: 64, offset: 128)
!55 = !DILocalVariable(name: "ctxt", arg: 1, scope: !44, file: !1, line: 37, type: !47)
!56 = !DILocation(line: 37, column: 43, scope: !44)
!57 = !DILocation(line: 39, column: 1, scope: !44)
!58 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 42, type: !59, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!59 = !DISubroutineType(types: !60)
!60 = !{!52, !21, !61, !52, !52, !64}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DILocalVariable(name: "buf", arg: 1, scope: !58, file: !1, line: 42, type: !21)
!68 = !DILocation(line: 42, column: 48, scope: !58)
!69 = !DILocalVariable(name: "cur", arg: 2, scope: !58, file: !1, line: 42, type: !61)
!70 = !DILocation(line: 42, column: 62, scope: !58)
!71 = !DILocalVariable(name: "level", arg: 3, scope: !58, file: !1, line: 42, type: !52)
!72 = !DILocation(line: 42, column: 71, scope: !58)
!73 = !DILocalVariable(name: "format", arg: 4, scope: !58, file: !1, line: 43, type: !52)
!74 = !DILocation(line: 43, column: 35, scope: !58)
!75 = !DILocalVariable(name: "encoding", arg: 5, scope: !58, file: !1, line: 43, type: !64)
!76 = !DILocation(line: 43, column: 55, scope: !58)
!77 = !DILocalVariable(name: "ctxt", scope: !58, file: !1, line: 44, type: !48)
!78 = !DILocation(line: 44, column: 25, scope: !58)
!79 = !DILocation(line: 46, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !58, file: !1, line: 46, column: 9)
!81 = !DILocation(line: 46, column: 13, scope: !80)
!82 = !DILocation(line: 46, column: 9, scope: !58)
!83 = !DILocation(line: 46, column: 22, scope: !80)
!84 = !DILocation(line: 47, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !58, file: !1, line: 47, column: 9)
!86 = !DILocation(line: 47, column: 13, scope: !85)
!87 = !DILocation(line: 47, column: 9, scope: !58)
!88 = !DILocation(line: 48, column: 30, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 47, column: 22)
!90 = !DILocation(line: 48, column: 9, scope: !89)
!91 = !DILocation(line: 49, column: 9, scope: !89)
!92 = !DILocation(line: 53, column: 5, scope: !58)
!93 = !DILocation(line: 61, column: 5, scope: !58)
!94 = !DILocation(line: 63, column: 16, scope: !58)
!95 = !DILocation(line: 63, column: 10, scope: !58)
!96 = !DILocation(line: 63, column: 14, scope: !58)
!97 = !DILocation(line: 64, column: 18, scope: !58)
!98 = !DILocation(line: 64, column: 10, scope: !58)
!99 = !DILocation(line: 64, column: 16, scope: !58)
!100 = !DILocation(line: 65, column: 19, scope: !58)
!101 = !DILocation(line: 65, column: 10, scope: !58)
!102 = !DILocation(line: 65, column: 17, scope: !58)
!103 = !DILocation(line: 66, column: 38, scope: !58)
!104 = !DILocation(line: 66, column: 10, scope: !58)
!105 = !DILocation(line: 66, column: 19, scope: !58)
!106 = !DILocation(line: 67, column: 5, scope: !58)
!107 = !DILocation(line: 69, column: 5, scope: !58)
!108 = !DILocation(line: 70, column: 1, scope: !58)
!109 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !110, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!110 = !DISubroutineType(types: !111)
!111 = !{!52}
!112 = !DILocalVariable(name: "buf", scope: !109, file: !1, line: 75, type: !21)
!113 = !DILocation(line: 75, column: 22, scope: !109)
!114 = !DILocalVariable(name: "cur", scope: !109, file: !1, line: 76, type: !61)
!115 = !DILocation(line: 76, column: 14, scope: !109)
!116 = !DILocalVariable(name: "level", scope: !109, file: !1, line: 77, type: !52)
!117 = !DILocation(line: 77, column: 9, scope: !109)
!118 = !DILocalVariable(name: "format", scope: !109, file: !1, line: 78, type: !52)
!119 = !DILocation(line: 78, column: 9, scope: !109)
!120 = !DILocalVariable(name: "encoding", scope: !109, file: !1, line: 79, type: !121)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 256, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 32)
!124 = !DILocation(line: 79, column: 10, scope: !109)
!125 = !DILocation(line: 81, column: 24, scope: !109)
!126 = !DILocation(line: 81, column: 5, scope: !109)
!127 = !DILocation(line: 82, column: 24, scope: !109)
!128 = !DILocation(line: 82, column: 5, scope: !109)
!129 = !DILocation(line: 83, column: 24, scope: !109)
!130 = !DILocation(line: 83, column: 5, scope: !109)
!131 = !DILocation(line: 84, column: 24, scope: !109)
!132 = !DILocation(line: 84, column: 5, scope: !109)
!133 = !DILocation(line: 85, column: 24, scope: !109)
!134 = !DILocation(line: 85, column: 5, scope: !109)
!135 = !DILocation(line: 88, column: 17, scope: !109)
!136 = !DILocation(line: 88, column: 21, scope: !109)
!137 = !DILocation(line: 88, column: 5, scope: !109)
!138 = !DILocation(line: 89, column: 17, scope: !109)
!139 = !DILocation(line: 89, column: 21, scope: !109)
!140 = !DILocation(line: 89, column: 5, scope: !109)
!141 = !DILocation(line: 92, column: 31, scope: !109)
!142 = !DILocation(line: 92, column: 36, scope: !109)
!143 = !DILocation(line: 92, column: 41, scope: !109)
!144 = !DILocation(line: 92, column: 48, scope: !109)
!145 = !DILocation(line: 92, column: 56, scope: !109)
!146 = !DILocation(line: 92, column: 5, scope: !109)
!147 = !DILocation(line: 94, column: 5, scope: !109)
!148 = distinct !DISubprogram(name: "memset", scope: !149, file: !149, line: 12, type: !150, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !24)
!149 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!150 = !DISubroutineType(types: !151)
!151 = !{!3, !3, !52, !152}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DILocalVariable(name: "dst", arg: 1, scope: !148, file: !149, line: 12, type: !3)
!156 = !DILocation(line: 12, column: 20, scope: !148)
!157 = !DILocalVariable(name: "s", arg: 2, scope: !148, file: !149, line: 12, type: !52)
!158 = !DILocation(line: 12, column: 29, scope: !148)
!159 = !DILocalVariable(name: "count", arg: 3, scope: !148, file: !149, line: 12, type: !152)
!160 = !DILocation(line: 12, column: 39, scope: !148)
!161 = !DILocalVariable(name: "a", scope: !148, file: !149, line: 13, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!163 = !DILocation(line: 13, column: 9, scope: !148)
!164 = !DILocation(line: 13, column: 13, scope: !148)
!165 = !DILocation(line: 14, column: 3, scope: !148)
!166 = !DILocation(line: 14, column: 15, scope: !148)
!167 = !DILocation(line: 14, column: 18, scope: !148)
!168 = !DILocation(line: 15, column: 12, scope: !148)
!169 = !DILocation(line: 15, column: 7, scope: !148)
!170 = !DILocation(line: 15, column: 10, scope: !148)
!171 = distinct !{!171, !165, !168, !172}
!172 = !{!"llvm.loop.mustprogress"}
!173 = !DILocation(line: 16, column: 10, scope: !148)
!174 = !DILocation(line: 16, column: 3, scope: !148)
