; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/041_parserInternals.c_1584_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/041_parserInternals.c_1584_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32 }
%struct._xmlParserInput = type { i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [38 x i8] c"couldn't allocate a new input stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/041_parserInternals.c_1584_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDetectEncoding = private unnamed_addr constant [73 x i8] c"xmlParserInputPtr xmlDetectEncoding(xmlParserCtxtPtr, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !42, metadata !DIExpression()), !dbg !43
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !44
  %6 = load i8*, i8** %4, align 8, !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !47 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i64, i64* %2, align 8, !dbg !52
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !53
  ret i8* %4, !dbg !54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserInput* @xmlDetectEncoding(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !55 {
  %4 = alloca %struct._xmlParserInput*, align 8
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlParserInput*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !58, metadata !DIExpression()), !dbg !59
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %8, metadata !64, metadata !DIExpression()), !dbg !65
  %9 = call i8* @xmlMalloc(i64 noundef 24), !dbg !66
  %10 = bitcast i8* %9 to %struct._xmlParserInput*, !dbg !67
  store %struct._xmlParserInput* %10, %struct._xmlParserInput** %8, align 8, !dbg !68
  %11 = load %struct._xmlParserInput*, %struct._xmlParserInput** %8, align 8, !dbg !69
  %12 = icmp eq %struct._xmlParserInput* %11, null, !dbg !71
  br i1 %12, label %13, label %15, !dbg !72

13:                                               ; preds = %3
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !73
  call void @xmlErrMemory(%struct._xmlParserCtxt* noundef %14, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0)), !dbg !75
  store %struct._xmlParserInput* null, %struct._xmlParserInput** %4, align 8, !dbg !76
  br label %25, !dbg !76

15:                                               ; preds = %3
  %16 = load %struct._xmlParserInput*, %struct._xmlParserInput** %8, align 8, !dbg !77
  %17 = bitcast %struct._xmlParserInput* %16 to i8*, !dbg !78
  %18 = call i8* @memset(i8* %17, i32 0, i64 24), !dbg !78
  %19 = load %struct._xmlParserInput*, %struct._xmlParserInput** %8, align 8, !dbg !79
  %20 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %19, i32 0, i32 0, !dbg !80
  store i32 1, i32* %20, align 8, !dbg !81
  %21 = load %struct._xmlParserInput*, %struct._xmlParserInput** %8, align 8, !dbg !82
  %22 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %21, i32 0, i32 1, !dbg !83
  store i32 1, i32* %22, align 4, !dbg !84
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlDetectEncoding, i64 0, i64 0)), !dbg !85
  %24 = load %struct._xmlParserInput*, %struct._xmlParserInput** %8, align 8, !dbg !86
  store %struct._xmlParserInput* %24, %struct._xmlParserInput** %4, align 8, !dbg !87
  br label %25, !dbg !87

25:                                               ; preds = %15, %13
  %26 = load %struct._xmlParserInput*, %struct._xmlParserInput** %4, align 8, !dbg !88
  ret %struct._xmlParserInput* %26, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlParserInput*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !94, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %4, metadata !99, metadata !DIExpression()), !dbg !100
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !101
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !102
  %7 = bitcast i32* %4 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !104
  %8 = load i32, i32* %4, align 4, !dbg !105
  %9 = icmp sge i32 %8, 0, !dbg !106
  %10 = zext i1 %9 to i32, !dbg !106
  %11 = sext i32 %10 to i64, !dbg !105
  call void @klee_assume(i64 noundef %11), !dbg !107
  %12 = load i32, i32* %4, align 4, !dbg !108
  %13 = icmp sle i32 %12, 1024, !dbg !109
  %14 = zext i1 %13 to i32, !dbg !109
  %15 = sext i32 %14 to i64, !dbg !108
  call void @klee_assume(i64 noundef %15), !dbg !110
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %5, metadata !111, metadata !DIExpression()), !dbg !112
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !113
  %17 = load i32, i32* %4, align 4, !dbg !114
  %18 = call %struct._xmlParserInput* @xmlDetectEncoding(%struct._xmlParserCtxt* noundef %2, i8* noundef %16, i32 noundef %17), !dbg !115
  store %struct._xmlParserInput* %18, %struct._xmlParserInput** %5, align 8, !dbg !112
  %19 = load %struct._xmlParserInput*, %struct._xmlParserInput** %5, align 8, !dbg !116
  %20 = icmp ne %struct._xmlParserInput* %19, null, !dbg !118
  br i1 %20, label %21, label %24, !dbg !119

21:                                               ; preds = %0
  %22 = load %struct._xmlParserInput*, %struct._xmlParserInput** %5, align 8, !dbg !120
  %23 = bitcast %struct._xmlParserInput* %22 to i8*, !dbg !120
  call void @free(i8* noundef %23) #7, !dbg !122
  br label %24, !dbg !123

24:                                               ; preds = %21, %0
  ret i32 0, !dbg !124
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

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
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/041_parserInternals.c_1584_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "957b0620d39c650d2e5f36728fb8a4fe")
!2 = !{!3, !12}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputPtr", file: !1, line: 13, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 12, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 20, size: 192, elements: !7)
!7 = !{!8, !10, !11, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !6, file: !1, line: 21, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6, file: !1, line: 23, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6, file: !1, line: 24, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
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
!27 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 28, type: !28, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !36}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 11, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 16, size: 32, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !33, file: !1, line: 17, baseType: !9, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{}
!40 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 28, type: !30)
!41 = !DILocation(line: 28, column: 36, scope: !27)
!42 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 28, type: !36)
!43 = !DILocation(line: 28, column: 54, scope: !27)
!44 = !DILocation(line: 30, column: 11, scope: !27)
!45 = !DILocation(line: 31, column: 11, scope: !27)
!46 = !DILocation(line: 32, column: 1, scope: !27)
!47 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !48, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!48 = !DISubroutineType(types: !49)
!49 = !{!12, !14}
!50 = !DILocalVariable(name: "size", arg: 1, scope: !47, file: !1, line: 34, type: !14)
!51 = !DILocation(line: 34, column: 24, scope: !47)
!52 = !DILocation(line: 35, column: 19, scope: !47)
!53 = !DILocation(line: 35, column: 12, scope: !47)
!54 = !DILocation(line: 35, column: 5, scope: !47)
!55 = distinct !DISubprogram(name: "xmlDetectEncoding", scope: !1, file: !1, line: 39, type: !56, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!56 = !DISubroutineType(types: !57)
!57 = !{!3, !30, !36, !9}
!58 = !DILocalVariable(name: "ctxt", arg: 1, scope: !55, file: !1, line: 39, type: !30)
!59 = !DILocation(line: 39, column: 54, scope: !55)
!60 = !DILocalVariable(name: "bytes", arg: 2, scope: !55, file: !1, line: 39, type: !36)
!61 = !DILocation(line: 39, column: 72, scope: !55)
!62 = !DILocalVariable(name: "len", arg: 3, scope: !55, file: !1, line: 39, type: !9)
!63 = !DILocation(line: 39, column: 83, scope: !55)
!64 = !DILocalVariable(name: "input", scope: !55, file: !1, line: 40, type: !3)
!65 = !DILocation(line: 40, column: 23, scope: !55)
!66 = !DILocation(line: 43, column: 33, scope: !55)
!67 = !DILocation(line: 43, column: 13, scope: !55)
!68 = !DILocation(line: 43, column: 11, scope: !55)
!69 = !DILocation(line: 44, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !55, file: !1, line: 44, column: 9)
!71 = !DILocation(line: 44, column: 15, scope: !70)
!72 = !DILocation(line: 44, column: 9, scope: !55)
!73 = !DILocation(line: 45, column: 22, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 44, column: 24)
!75 = !DILocation(line: 45, column: 9, scope: !74)
!76 = !DILocation(line: 46, column: 9, scope: !74)
!77 = !DILocation(line: 52, column: 12, scope: !55)
!78 = !DILocation(line: 52, column: 5, scope: !55)
!79 = !DILocation(line: 55, column: 5, scope: !55)
!80 = !DILocation(line: 55, column: 12, scope: !55)
!81 = !DILocation(line: 55, column: 17, scope: !55)
!82 = !DILocation(line: 56, column: 5, scope: !55)
!83 = !DILocation(line: 56, column: 12, scope: !55)
!84 = !DILocation(line: 56, column: 16, scope: !55)
!85 = !DILocation(line: 63, column: 5, scope: !55)
!86 = !DILocation(line: 65, column: 12, scope: !55)
!87 = !DILocation(line: 65, column: 5, scope: !55)
!88 = !DILocation(line: 66, column: 1, scope: !55)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !90, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!90 = !DISubroutineType(types: !91)
!91 = !{!9}
!92 = !DILocalVariable(name: "ctxt", scope: !89, file: !1, line: 69, type: !32)
!93 = !DILocation(line: 69, column: 19, scope: !89)
!94 = !DILocalVariable(name: "bytes", scope: !89, file: !1, line: 70, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8192, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1024)
!98 = !DILocation(line: 70, column: 10, scope: !89)
!99 = !DILocalVariable(name: "len", scope: !89, file: !1, line: 71, type: !9)
!100 = !DILocation(line: 71, column: 9, scope: !89)
!101 = !DILocation(line: 74, column: 24, scope: !89)
!102 = !DILocation(line: 74, column: 5, scope: !89)
!103 = !DILocation(line: 75, column: 24, scope: !89)
!104 = !DILocation(line: 75, column: 5, scope: !89)
!105 = !DILocation(line: 78, column: 17, scope: !89)
!106 = !DILocation(line: 78, column: 21, scope: !89)
!107 = !DILocation(line: 78, column: 5, scope: !89)
!108 = !DILocation(line: 79, column: 17, scope: !89)
!109 = !DILocation(line: 79, column: 21, scope: !89)
!110 = !DILocation(line: 79, column: 5, scope: !89)
!111 = !DILocalVariable(name: "result", scope: !89, file: !1, line: 82, type: !3)
!112 = !DILocation(line: 82, column: 23, scope: !89)
!113 = !DILocation(line: 82, column: 57, scope: !89)
!114 = !DILocation(line: 82, column: 64, scope: !89)
!115 = !DILocation(line: 82, column: 32, scope: !89)
!116 = !DILocation(line: 85, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !89, file: !1, line: 85, column: 9)
!118 = !DILocation(line: 85, column: 16, scope: !117)
!119 = !DILocation(line: 85, column: 9, scope: !89)
!120 = !DILocation(line: 86, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 85, column: 25)
!122 = !DILocation(line: 86, column: 9, scope: !121)
!123 = !DILocation(line: 87, column: 5, scope: !121)
!124 = !DILocation(line: 89, column: 5, scope: !89)
!125 = distinct !DISubprogram(name: "memset", scope: !126, file: !126, line: 12, type: !127, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !39)
!126 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!127 = !DISubroutineType(types: !128)
!128 = !{!12, !12, !9, !14}
!129 = !DILocalVariable(name: "dst", arg: 1, scope: !125, file: !126, line: 12, type: !12)
!130 = !DILocation(line: 12, column: 20, scope: !125)
!131 = !DILocalVariable(name: "s", arg: 2, scope: !125, file: !126, line: 12, type: !9)
!132 = !DILocation(line: 12, column: 29, scope: !125)
!133 = !DILocalVariable(name: "count", arg: 3, scope: !125, file: !126, line: 12, type: !14)
!134 = !DILocation(line: 12, column: 39, scope: !125)
!135 = !DILocalVariable(name: "a", scope: !125, file: !126, line: 13, type: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
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
