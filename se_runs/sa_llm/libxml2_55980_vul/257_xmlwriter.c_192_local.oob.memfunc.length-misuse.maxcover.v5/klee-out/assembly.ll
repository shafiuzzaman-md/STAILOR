; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/257_xmlwriter.c_192_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/257_xmlwriter.c_192_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlTextWriter = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"list_ptr\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"xmlNewTextWriter : out of memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/257_xmlwriter.c_192_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlWriterErrMsg(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !25 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !40 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i64, i64* %2, align 8, !dbg !48
  %4 = call i8* @malloc(i64 noundef %3), !dbg !49
  ret i8* %4, !dbg !50
}

declare i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = load i8*, i8** %2, align 8, !dbg !56
  call void @free(i8* noundef %3), !dbg !57
  ret void, !dbg !58
}

declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlListCreate(i8* noundef %0, i8* noundef %1) #0 !dbg !59 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %5, metadata !66, metadata !DIExpression()), !dbg !67
  %6 = bitcast i8** %5 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %7 = load i8*, i8** %5, align 8, !dbg !70
  %8 = icmp eq i8* %7, null, !dbg !71
  br i1 %8, label %12, label %9, !dbg !72

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8, !dbg !73
  %11 = icmp ne i8* %10, null, !dbg !74
  br label %12, !dbg !72

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !72
  %15 = sext i32 %14 to i64, !dbg !70
  call void @klee_assume(i64 noundef %15), !dbg !75
  %16 = load i8*, i8** %5, align 8, !dbg !76
  ret i8* %16, !dbg !77
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlTextWriter* @xmlNewTextWriter() #0 !dbg !78 {
  %1 = alloca %struct.xmlTextWriter*, align 8
  %2 = alloca %struct.xmlTextWriter*, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlTextWriter** %2, metadata !81, metadata !DIExpression()), !dbg !82
  %3 = call i8* @xmlMalloc(i64 noundef 8), !dbg !83
  %4 = bitcast i8* %3 to %struct.xmlTextWriter*, !dbg !84
  store %struct.xmlTextWriter* %4, %struct.xmlTextWriter** %2, align 8, !dbg !85
  %5 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !86
  %6 = icmp eq %struct.xmlTextWriter* %5, null, !dbg !88
  br i1 %6, label %7, label %8, !dbg !89

7:                                                ; preds = %0
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  store %struct.xmlTextWriter* null, %struct.xmlTextWriter** %1, align 8, !dbg !92
  br label %24, !dbg !92

8:                                                ; preds = %0
  %9 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !93
  %10 = bitcast %struct.xmlTextWriter* %9 to i8*, !dbg !94
  %11 = call i8* @memset(i8* %10, i32 0, i64 8), !dbg !94
  %12 = call i8* @xmlListCreate(i8* noundef null, i8* noundef null), !dbg !95
  %13 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !96
  %14 = getelementptr inbounds %struct.xmlTextWriter, %struct.xmlTextWriter* %13, i32 0, i32 0, !dbg !97
  store i8* %12, i8** %14, align 8, !dbg !98
  %15 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !99
  %16 = getelementptr inbounds %struct.xmlTextWriter, %struct.xmlTextWriter* %15, i32 0, i32 0, !dbg !101
  %17 = load i8*, i8** %16, align 8, !dbg !101
  %18 = icmp eq i8* %17, null, !dbg !102
  br i1 %18, label %19, label %22, !dbg !103

19:                                               ; preds = %8
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  %20 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !106
  %21 = bitcast %struct.xmlTextWriter* %20 to i8*, !dbg !106
  call void @xmlFree(i8* noundef %21), !dbg !107
  store %struct.xmlTextWriter* null, %struct.xmlTextWriter** %1, align 8, !dbg !108
  br label %24, !dbg !108

22:                                               ; preds = %8
  %23 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !109
  store %struct.xmlTextWriter* %23, %struct.xmlTextWriter** %1, align 8, !dbg !110
  br label %24, !dbg !110

24:                                               ; preds = %22, %19, %7
  %25 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %1, align 8, !dbg !111
  ret %struct.xmlTextWriter* %25, !dbg !111
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !112 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlTextWriter*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlTextWriter** %2, metadata !116, metadata !DIExpression()), !dbg !117
  %3 = call %struct.xmlTextWriter* @xmlNewTextWriter(), !dbg !118
  store %struct.xmlTextWriter* %3, %struct.xmlTextWriter** %2, align 8, !dbg !117
  %4 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !119
  %5 = icmp ne %struct.xmlTextWriter* %4, null, !dbg !121
  br i1 %5, label %6, label %8, !dbg !122

6:                                                ; preds = %0
  %7 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !123
  br label %8, !dbg !125

8:                                                ; preds = %6, %0
  %9 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !126
  %10 = icmp ne %struct.xmlTextWriter* %9, null, !dbg !128
  br i1 %10, label %11, label %23, !dbg !129

11:                                               ; preds = %8
  %12 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !130
  %13 = getelementptr inbounds %struct.xmlTextWriter, %struct.xmlTextWriter* %12, i32 0, i32 0, !dbg !133
  %14 = load i8*, i8** %13, align 8, !dbg !133
  %15 = icmp ne i8* %14, null, !dbg !134
  br i1 %15, label %16, label %20, !dbg !135

16:                                               ; preds = %11
  %17 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !136
  %18 = getelementptr inbounds %struct.xmlTextWriter, %struct.xmlTextWriter* %17, i32 0, i32 0, !dbg !138
  %19 = load i8*, i8** %18, align 8, !dbg !138
  call void @free(i8* noundef %19), !dbg !139
  br label %20, !dbg !140

20:                                               ; preds = %16, %11
  %21 = load %struct.xmlTextWriter*, %struct.xmlTextWriter** %2, align 8, !dbg !141
  %22 = bitcast %struct.xmlTextWriter* %21 to i8*, !dbg !141
  call void @free(i8* noundef %22), !dbg !142
  br label %23, !dbg !143

23:                                               ; preds = %20, %8
  ret i32 0, !dbg !144
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %7, metadata !155, metadata !DIExpression()), !dbg !157
  %8 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %8, i8** %7, align 8, !dbg !157
  br label %9, !dbg !159

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !160
  %11 = add i64 %10, -1, !dbg !160
  store i64 %11, i64* %6, align 8, !dbg !160
  %12 = icmp ugt i64 %10, 0, !dbg !161
  br i1 %12, label %13, label %18, !dbg !159

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !162
  %15 = trunc i32 %14 to i8, !dbg !162
  %16 = load i8*, i8** %7, align 8, !dbg !163
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !163
  store i8* %17, i8** %7, align 8, !dbg !163
  store i8 %15, i8* %16, align 1, !dbg !164
  br label %9, !dbg !159, !llvm.loop !165

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !167
  ret i8* %19, !dbg !168
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/257_xmlwriter.c_192_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "661791dcb70256b77bf05accf9f727ed")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 14, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ERR_NO_MEMORY", value: 0)
!7 = !{!8, !14}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriterPtr", file: !1, line: 12, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriter", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlTextWriter", file: !1, line: 8, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !11, file: !1, line: 9, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlWriterErrMsg", scope: !1, file: !1, line: 18, type: !26, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !14, !28, !29}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlError", file: !1, line: 16, baseType: !3)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{}
!33 = !DILocalVariable(name: "ctx", arg: 1, scope: !25, file: !1, line: 18, type: !14)
!34 = !DILocation(line: 18, column: 28, scope: !25)
!35 = !DILocalVariable(name: "error", arg: 2, scope: !25, file: !1, line: 18, type: !28)
!36 = !DILocation(line: 18, column: 42, scope: !25)
!37 = !DILocalVariable(name: "msg", arg: 3, scope: !25, file: !1, line: 18, type: !29)
!38 = !DILocation(line: 18, column: 61, scope: !25)
!39 = !DILocation(line: 20, column: 1, scope: !25)
!40 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !41, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!41 = !DISubroutineType(types: !42)
!42 = !{!14, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocalVariable(name: "size", arg: 1, scope: !40, file: !1, line: 22, type: !43)
!47 = !DILocation(line: 22, column: 24, scope: !40)
!48 = !DILocation(line: 23, column: 19, scope: !40)
!49 = !DILocation(line: 23, column: 12, scope: !40)
!50 = !DILocation(line: 23, column: 5, scope: !40)
!51 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !52, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !14}
!54 = !DILocalVariable(name: "ptr", arg: 1, scope: !51, file: !1, line: 26, type: !14)
!55 = !DILocation(line: 26, column: 20, scope: !51)
!56 = !DILocation(line: 27, column: 10, scope: !51)
!57 = !DILocation(line: 27, column: 5, scope: !51)
!58 = !DILocation(line: 28, column: 1, scope: !51)
!59 = distinct !DISubprogram(name: "xmlListCreate", scope: !1, file: !1, line: 30, type: !60, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!60 = !DISubroutineType(types: !61)
!61 = !{!14, !14, !14}
!62 = !DILocalVariable(name: "data1", arg: 1, scope: !59, file: !1, line: 30, type: !14)
!63 = !DILocation(line: 30, column: 27, scope: !59)
!64 = !DILocalVariable(name: "data2", arg: 2, scope: !59, file: !1, line: 30, type: !14)
!65 = !DILocation(line: 30, column: 40, scope: !59)
!66 = !DILocalVariable(name: "ptr", scope: !59, file: !1, line: 32, type: !14)
!67 = !DILocation(line: 32, column: 11, scope: !59)
!68 = !DILocation(line: 33, column: 24, scope: !59)
!69 = !DILocation(line: 33, column: 5, scope: !59)
!70 = !DILocation(line: 34, column: 17, scope: !59)
!71 = !DILocation(line: 34, column: 21, scope: !59)
!72 = !DILocation(line: 34, column: 26, scope: !59)
!73 = !DILocation(line: 34, column: 29, scope: !59)
!74 = !DILocation(line: 34, column: 33, scope: !59)
!75 = !DILocation(line: 34, column: 5, scope: !59)
!76 = !DILocation(line: 35, column: 12, scope: !59)
!77 = !DILocation(line: 35, column: 5, scope: !59)
!78 = distinct !DISubprogram(name: "xmlNewTextWriter", scope: !1, file: !1, line: 39, type: !79, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!79 = !DISubroutineType(types: !80)
!80 = !{!8}
!81 = !DILocalVariable(name: "ret", scope: !78, file: !1, line: 40, type: !8)
!82 = !DILocation(line: 40, column: 22, scope: !78)
!83 = !DILocation(line: 42, column: 30, scope: !78)
!84 = !DILocation(line: 42, column: 11, scope: !78)
!85 = !DILocation(line: 42, column: 9, scope: !78)
!86 = !DILocation(line: 43, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 43, column: 9)
!88 = !DILocation(line: 43, column: 13, scope: !87)
!89 = !DILocation(line: 43, column: 9, scope: !78)
!90 = !DILocation(line: 44, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 43, column: 22)
!92 = !DILocation(line: 46, column: 9, scope: !91)
!93 = !DILocation(line: 49, column: 12, scope: !78)
!94 = !DILocation(line: 49, column: 5, scope: !78)
!95 = !DILocation(line: 51, column: 18, scope: !78)
!96 = !DILocation(line: 51, column: 5, scope: !78)
!97 = !DILocation(line: 51, column: 10, scope: !78)
!98 = !DILocation(line: 51, column: 16, scope: !78)
!99 = !DILocation(line: 52, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !78, file: !1, line: 52, column: 9)
!101 = !DILocation(line: 52, column: 14, scope: !100)
!102 = !DILocation(line: 52, column: 20, scope: !100)
!103 = !DILocation(line: 52, column: 9, scope: !78)
!104 = !DILocation(line: 53, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 52, column: 29)
!106 = !DILocation(line: 55, column: 17, scope: !105)
!107 = !DILocation(line: 55, column: 9, scope: !105)
!108 = !DILocation(line: 56, column: 9, scope: !105)
!109 = !DILocation(line: 58, column: 12, scope: !78)
!110 = !DILocation(line: 58, column: 5, scope: !78)
!111 = !DILocation(line: 59, column: 1, scope: !78)
!112 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !113, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!113 = !DISubroutineType(types: !114)
!114 = !{!115}
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !DILocalVariable(name: "writer", scope: !112, file: !1, line: 63, type: !8)
!117 = !DILocation(line: 63, column: 22, scope: !112)
!118 = !DILocation(line: 63, column: 31, scope: !112)
!119 = !DILocation(line: 67, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !112, file: !1, line: 67, column: 9)
!121 = !DILocation(line: 67, column: 16, scope: !120)
!122 = !DILocation(line: 67, column: 9, scope: !112)
!123 = !DILocation(line: 79, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 67, column: 25)
!125 = !DILocation(line: 80, column: 5, scope: !124)
!126 = !DILocation(line: 83, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !112, file: !1, line: 83, column: 9)
!128 = !DILocation(line: 83, column: 16, scope: !127)
!129 = !DILocation(line: 83, column: 9, scope: !112)
!130 = !DILocation(line: 84, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 84, column: 13)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 83, column: 25)
!133 = !DILocation(line: 84, column: 21, scope: !131)
!134 = !DILocation(line: 84, column: 27, scope: !131)
!135 = !DILocation(line: 84, column: 13, scope: !132)
!136 = !DILocation(line: 85, column: 18, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 84, column: 36)
!138 = !DILocation(line: 85, column: 26, scope: !137)
!139 = !DILocation(line: 85, column: 13, scope: !137)
!140 = !DILocation(line: 86, column: 9, scope: !137)
!141 = !DILocation(line: 87, column: 14, scope: !132)
!142 = !DILocation(line: 87, column: 9, scope: !132)
!143 = !DILocation(line: 88, column: 5, scope: !132)
!144 = !DILocation(line: 90, column: 5, scope: !112)
!145 = distinct !DISubprogram(name: "memset", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !32)
!146 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!147 = !DISubroutineType(types: !148)
!148 = !{!14, !14, !115, !43}
!149 = !DILocalVariable(name: "dst", arg: 1, scope: !145, file: !146, line: 12, type: !14)
!150 = !DILocation(line: 12, column: 20, scope: !145)
!151 = !DILocalVariable(name: "s", arg: 2, scope: !145, file: !146, line: 12, type: !115)
!152 = !DILocation(line: 12, column: 29, scope: !145)
!153 = !DILocalVariable(name: "count", arg: 3, scope: !145, file: !146, line: 12, type: !43)
!154 = !DILocation(line: 12, column: 39, scope: !145)
!155 = !DILocalVariable(name: "a", scope: !145, file: !146, line: 13, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!157 = !DILocation(line: 13, column: 9, scope: !145)
!158 = !DILocation(line: 13, column: 13, scope: !145)
!159 = !DILocation(line: 14, column: 3, scope: !145)
!160 = !DILocation(line: 14, column: 15, scope: !145)
!161 = !DILocation(line: 14, column: 18, scope: !145)
!162 = !DILocation(line: 15, column: 12, scope: !145)
!163 = !DILocation(line: 15, column: 7, scope: !145)
!164 = !DILocation(line: 15, column: 10, scope: !145)
!165 = distinct !{!165, !159, !162, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !DILocation(line: 16, column: 10, scope: !145)
!168 = !DILocation(line: 16, column: 3, scope: !145)
