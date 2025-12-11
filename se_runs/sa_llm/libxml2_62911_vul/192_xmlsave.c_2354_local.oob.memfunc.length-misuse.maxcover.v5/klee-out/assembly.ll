; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/192_xmlsave.c_2354_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/192_xmlsave.c_2354_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSaveCtxt = type { i8*, i32, i32, i8* }
%struct._xmlCharEncodingHandler = type opaque

@.str = private unnamed_addr constant [12 x i8] c"return_size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creating buffer\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"(sizeof(ctxt) <= return_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/192_xmlsave.c_2354_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal = private unnamed_addr constant [53 x i8] c"void xmlNodeDumpOutputInternal(int, const xmlChar *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"txt_encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNodeDumpOutputInternal(i32 noundef %0, i8* noundef %1) #0 !dbg !18 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xmlSaveCtxt, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata %struct.xmlSaveCtxt* %5, metadata !27, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %7, metadata !38, metadata !DIExpression()), !dbg !39
  %8 = bitcast i32* %7 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !41
  %9 = load i32, i32* %7, align 4, !dbg !42
  %10 = icmp sge i32 %9, 0, !dbg !43
  %11 = zext i1 %10 to i32, !dbg !43
  %12 = sext i32 %11 to i64, !dbg !42
  call void @klee_assume(i64 noundef %12), !dbg !44
  %13 = load i32, i32* %7, align 4, !dbg !45
  %14 = sext i32 %13 to i64, !dbg !45
  %15 = call noalias i8* @malloc(i64 noundef %14) #7, !dbg !46
  store i8* %15, i8** %6, align 8, !dbg !47
  %16 = load i8*, i8** %6, align 8, !dbg !48
  %17 = icmp eq i8* %16, null, !dbg !50
  br i1 %17, label %18, label %20, !dbg !51

18:                                               ; preds = %2
  call void @xmlSaveErrMemory(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !52
  %19 = call %struct._xmlCharEncodingHandler* @xmlCharEncCloseFunc(%struct._xmlCharEncodingHandler* noundef null), !dbg !54
  br label %44, !dbg !55

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4, !dbg !56
  %22 = sext i32 %21 to i64, !dbg !56
  %23 = icmp ule i64 24, %22, !dbg !56
  br i1 %23, label %24, label %26, !dbg !56

24:                                               ; preds = %20
  br i1 true, label %25, label %26, !dbg !56

25:                                               ; preds = %24
  br label %28, !dbg !56

26:                                               ; preds = %24, %20
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !56
  br label %28, !dbg !56

28:                                               ; preds = %26, %25
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !57
  %30 = bitcast %struct.xmlSaveCtxt* %5 to i8*, !dbg !58
  %31 = call i8* @memset(i8* %30, i32 0, i64 24), !dbg !58
  %32 = load i8*, i8** %6, align 8, !dbg !59
  %33 = getelementptr inbounds %struct.xmlSaveCtxt, %struct.xmlSaveCtxt* %5, i32 0, i32 0, !dbg !60
  store i8* %32, i8** %33, align 8, !dbg !61
  %34 = getelementptr inbounds %struct.xmlSaveCtxt, %struct.xmlSaveCtxt* %5, i32 0, i32 1, !dbg !62
  store i32 0, i32* %34, align 8, !dbg !63
  %35 = load i32, i32* %3, align 4, !dbg !64
  %36 = icmp ne i32 %35, 0, !dbg !64
  %37 = zext i1 %36 to i64, !dbg !64
  %38 = select i1 %36, i32 1, i32 0, !dbg !64
  %39 = getelementptr inbounds %struct.xmlSaveCtxt, %struct.xmlSaveCtxt* %5, i32 0, i32 2, !dbg !65
  store i32 %38, i32* %39, align 4, !dbg !66
  %40 = load i8*, i8** %4, align 8, !dbg !67
  %41 = getelementptr inbounds %struct.xmlSaveCtxt, %struct.xmlSaveCtxt* %5, i32 0, i32 3, !dbg !68
  store i8* %40, i8** %41, align 8, !dbg !69
  %42 = bitcast %struct.xmlSaveCtxt* %5 to i8*, !dbg !70
  call void @xmlSaveCtxtInit(i8* noundef %42), !dbg !71
  %43 = load i8*, i8** %6, align 8, !dbg !72
  call void @free(i8* noundef %43) #7, !dbg !73
  br label %44, !dbg !74

44:                                               ; preds = %28, %18
  ret void, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveErrMemory(i8* noundef %0) #0 !dbg !75 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !81, metadata !DIExpression()), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlCharEncodingHandler* @xmlCharEncCloseFunc(%struct._xmlCharEncodingHandler* noundef %0) #0 !dbg !84 {
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  store %struct._xmlCharEncodingHandler* %0, %struct._xmlCharEncodingHandler** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !91, metadata !DIExpression()), !dbg !92
  %3 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !93
  ret %struct._xmlCharEncodingHandler* %3, !dbg !94
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(i8* noundef %0) #0 !dbg !95 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !98, metadata !DIExpression()), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %3, metadata !106, metadata !DIExpression()), !dbg !107
  %4 = bitcast i32* %2 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !109
  %5 = bitcast i8** %3 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)), !dbg !111
  %6 = load i32, i32* %2, align 4, !dbg !112
  %7 = load i8*, i8** %3, align 8, !dbg !113
  call void @xmlNodeDumpOutputInternal(i32 noundef %6, i8* noundef %7), !dbg !114
  ret i32 0, !dbg !115
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !116 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !123, metadata !DIExpression()), !dbg !124
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !125, metadata !DIExpression()), !dbg !126
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i8** %7, metadata !129, metadata !DIExpression()), !dbg !131
  %8 = load i8*, i8** %4, align 8, !dbg !132
  store i8* %8, i8** %7, align 8, !dbg !131
  br label %9, !dbg !133

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !134
  %11 = add i64 %10, -1, !dbg !134
  store i64 %11, i64* %6, align 8, !dbg !134
  %12 = icmp ugt i64 %10, 0, !dbg !135
  br i1 %12, label %13, label %18, !dbg !133

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !136
  %15 = trunc i32 %14 to i8, !dbg !136
  %16 = load i8*, i8** %7, align 8, !dbg !137
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !137
  store i8* %17, i8** %7, align 8, !dbg !137
  store i8 %15, i8* %16, align 1, !dbg !138
  br label %9, !dbg !133, !llvm.loop !139

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !141
  ret i8* %19, !dbg !142
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/192_xmlsave.c_2354_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dde28d082e0b6c026c04bc9805f588b3")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 12, baseType: !7)
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
!18 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 27, type: !19, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !4}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "format", arg: 1, scope: !18, file: !1, line: 27, type: !21)
!24 = !DILocation(line: 27, column: 36, scope: !18)
!25 = !DILocalVariable(name: "txt_encoding", arg: 2, scope: !18, file: !1, line: 27, type: !4)
!26 = !DILocation(line: 27, column: 59, scope: !18)
!27 = !DILocalVariable(name: "ctxt", scope: !18, file: !1, line: 28, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 24, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 19, size: 192, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !29, file: !1, line: 20, baseType: !3, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !29, file: !1, line: 21, baseType: !21, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !29, file: !1, line: 22, baseType: !21, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !29, file: !1, line: 23, baseType: !4, size: 64, offset: 128)
!35 = !DILocation(line: 28, column: 17, scope: !18)
!36 = !DILocalVariable(name: "out_buff", scope: !18, file: !1, line: 29, type: !3)
!37 = !DILocation(line: 29, column: 11, scope: !18)
!38 = !DILocalVariable(name: "return_size", scope: !18, file: !1, line: 30, type: !21)
!39 = !DILocation(line: 30, column: 9, scope: !18)
!40 = !DILocation(line: 33, column: 24, scope: !18)
!41 = !DILocation(line: 33, column: 5, scope: !18)
!42 = !DILocation(line: 34, column: 17, scope: !18)
!43 = !DILocation(line: 34, column: 29, scope: !18)
!44 = !DILocation(line: 34, column: 5, scope: !18)
!45 = !DILocation(line: 36, column: 23, scope: !18)
!46 = !DILocation(line: 36, column: 16, scope: !18)
!47 = !DILocation(line: 36, column: 14, scope: !18)
!48 = !DILocation(line: 37, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 9)
!50 = !DILocation(line: 37, column: 18, scope: !49)
!51 = !DILocation(line: 37, column: 9, scope: !18)
!52 = !DILocation(line: 38, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 27)
!54 = !DILocation(line: 39, column: 9, scope: !53)
!55 = !DILocation(line: 40, column: 9, scope: !53)
!56 = !DILocation(line: 45, column: 5, scope: !18)
!57 = !DILocation(line: 48, column: 5, scope: !18)
!58 = !DILocation(line: 50, column: 5, scope: !18)
!59 = !DILocation(line: 51, column: 16, scope: !18)
!60 = !DILocation(line: 51, column: 10, scope: !18)
!61 = !DILocation(line: 51, column: 14, scope: !18)
!62 = !DILocation(line: 52, column: 10, scope: !18)
!63 = !DILocation(line: 52, column: 16, scope: !18)
!64 = !DILocation(line: 53, column: 19, scope: !18)
!65 = !DILocation(line: 53, column: 10, scope: !18)
!66 = !DILocation(line: 53, column: 17, scope: !18)
!67 = !DILocation(line: 54, column: 39, scope: !18)
!68 = !DILocation(line: 54, column: 10, scope: !18)
!69 = !DILocation(line: 54, column: 19, scope: !18)
!70 = !DILocation(line: 55, column: 21, scope: !18)
!71 = !DILocation(line: 55, column: 5, scope: !18)
!72 = !DILocation(line: 57, column: 10, scope: !18)
!73 = !DILocation(line: 57, column: 5, scope: !18)
!74 = !DILocation(line: 58, column: 1, scope: !18)
!75 = distinct !DISubprogram(name: "xmlSaveErrMemory", scope: !1, file: !1, line: 61, type: !76, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DILocalVariable(name: "msg", arg: 1, scope: !75, file: !1, line: 61, type: !78)
!82 = !DILocation(line: 61, column: 35, scope: !75)
!83 = !DILocation(line: 63, column: 1, scope: !75)
!84 = distinct !DISubprogram(name: "xmlCharEncCloseFunc", scope: !1, file: !1, line: 65, type: !85, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !87}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandlerPtr", file: !1, line: 11, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !1, line: 10, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !1, line: 10, flags: DIFlagFwdDecl)
!91 = !DILocalVariable(name: "handler", arg: 1, scope: !84, file: !1, line: 65, type: !87)
!92 = !DILocation(line: 65, column: 73, scope: !84)
!93 = !DILocation(line: 66, column: 12, scope: !84)
!94 = !DILocation(line: 66, column: 5, scope: !84)
!95 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 69, type: !96, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !3}
!98 = !DILocalVariable(name: "ctxt", arg: 1, scope: !95, file: !1, line: 69, type: !3)
!99 = !DILocation(line: 69, column: 28, scope: !95)
!100 = !DILocation(line: 71, column: 1, scope: !95)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !102, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!102 = !DISubroutineType(types: !103)
!103 = !{!21}
!104 = !DILocalVariable(name: "format", scope: !101, file: !1, line: 74, type: !21)
!105 = !DILocation(line: 74, column: 9, scope: !101)
!106 = !DILocalVariable(name: "txt_encoding", scope: !101, file: !1, line: 75, type: !4)
!107 = !DILocation(line: 75, column: 20, scope: !101)
!108 = !DILocation(line: 78, column: 24, scope: !101)
!109 = !DILocation(line: 78, column: 5, scope: !101)
!110 = !DILocation(line: 79, column: 24, scope: !101)
!111 = !DILocation(line: 79, column: 5, scope: !101)
!112 = !DILocation(line: 82, column: 31, scope: !101)
!113 = !DILocation(line: 82, column: 39, scope: !101)
!114 = !DILocation(line: 82, column: 5, scope: !101)
!115 = !DILocation(line: 84, column: 5, scope: !101)
!116 = distinct !DISubprogram(name: "memset", scope: !117, file: !117, line: 12, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !22)
!117 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!118 = !DISubroutineType(types: !119)
!119 = !{!3, !3, !21, !120}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !121, line: 46, baseType: !122)
!121 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!122 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!123 = !DILocalVariable(name: "dst", arg: 1, scope: !116, file: !117, line: 12, type: !3)
!124 = !DILocation(line: 12, column: 20, scope: !116)
!125 = !DILocalVariable(name: "s", arg: 2, scope: !116, file: !117, line: 12, type: !21)
!126 = !DILocation(line: 12, column: 29, scope: !116)
!127 = !DILocalVariable(name: "count", arg: 3, scope: !116, file: !117, line: 12, type: !120)
!128 = !DILocation(line: 12, column: 39, scope: !116)
!129 = !DILocalVariable(name: "a", scope: !116, file: !117, line: 13, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!131 = !DILocation(line: 13, column: 9, scope: !116)
!132 = !DILocation(line: 13, column: 13, scope: !116)
!133 = !DILocation(line: 14, column: 3, scope: !116)
!134 = !DILocation(line: 14, column: 15, scope: !116)
!135 = !DILocation(line: 14, column: 18, scope: !116)
!136 = !DILocation(line: 15, column: 12, scope: !116)
!137 = !DILocation(line: 15, column: 7, scope: !116)
!138 = !DILocation(line: 15, column: 10, scope: !116)
!139 = distinct !{!139, !133, !136, !140}
!140 = !{!"llvm.loop.mustprogress"}
!141 = !DILocation(line: 16, column: 10, scope: !116)
!142 = !DILocation(line: 16, column: 3, scope: !116)
