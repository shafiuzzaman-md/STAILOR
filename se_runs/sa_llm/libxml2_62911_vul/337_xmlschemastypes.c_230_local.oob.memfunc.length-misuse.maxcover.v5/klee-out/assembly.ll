; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"alloc_success\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"alloc_size\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"(allocated_size >= sizeof(xmlSchemaVal)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !22 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %3, metadata !31, metadata !DIExpression()), !dbg !32
  %4 = load i64, i64* %2, align 8, !dbg !33
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !34
  store i8* %5, i8** %3, align 8, !dbg !32
  %6 = load i8*, i8** %3, align 8, !dbg !35
  %7 = icmp ne i8* %6, null, !dbg !35
  br i1 %7, label %8, label %11, !dbg !37

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !38
  %10 = load i64, i64* %2, align 8, !dbg !40
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !41
  br label %11, !dbg !42

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !43
  ret i8* %12, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !45 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !48, metadata !DIExpression()), !dbg !49
  %2 = bitcast i32* %1 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %2, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !51
  %3 = load i32, i32* %1, align 4, !dbg !52
  %4 = call %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %3), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %0) #0 !dbg !55 {
  %2 = alloca %struct._xmlSchemaVal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !60, metadata !DIExpression()), !dbg !61
  %5 = call i8* @xmlMalloc(i64 noundef 4), !dbg !62
  %6 = bitcast i8* %5 to %struct._xmlSchemaVal*, !dbg !63
  store %struct._xmlSchemaVal* %6, %struct._xmlSchemaVal** %4, align 8, !dbg !64
  %7 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !65
  %8 = icmp eq %struct._xmlSchemaVal* %7, null, !dbg !67
  br i1 %8, label %9, label %10, !dbg !68

9:                                                ; preds = %1
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %2, align 8, !dbg !69
  br label %18, !dbg !69

10:                                               ; preds = %1
  %11 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !71
  %12 = bitcast %struct._xmlSchemaVal* %11 to i8*, !dbg !72
  %13 = call i8* @memset(i8* %12, i32 0, i64 4), !dbg !72
  %14 = load i32, i32* %3, align 4, !dbg !73
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !74
  %16 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %15, i32 0, i32 0, !dbg !75
  store i32 %14, i32* %16, align 4, !dbg !76
  %17 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !77
  store %struct._xmlSchemaVal* %17, %struct._xmlSchemaVal** %2, align 8, !dbg !78
  br label %18, !dbg !78

18:                                               ; preds = %10, %9
  %19 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %2, align 8, !dbg !79
  ret %struct._xmlSchemaVal* %19, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !83, metadata !DIExpression()), !dbg !84
  %5 = bitcast i32* %2 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !86
  %6 = load i32, i32* %2, align 4, !dbg !87
  %7 = icmp sge i32 %6, 0, !dbg !88
  %8 = zext i1 %7 to i32, !dbg !88
  %9 = sext i32 %8 to i64, !dbg !87
  call void @klee_assume(i64 noundef %9), !dbg !89
  call void @xmlSchemaInitTypes(), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %3, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i64* %4, metadata !93, metadata !DIExpression()), !dbg !94
  %10 = bitcast i32* %3 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !dbg !96
  %11 = bitcast i64* %4 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !98
  %12 = load i32, i32* %3, align 4, !dbg !99
  %13 = icmp eq i32 %12, 0, !dbg !100
  br i1 %13, label %17, label %14, !dbg !101

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4, !dbg !102
  %16 = icmp eq i32 %15, 1, !dbg !103
  br label %17, !dbg !101

17:                                               ; preds = %14, %0
  %18 = phi i1 [ true, %0 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32, !dbg !101
  %20 = sext i32 %19 to i64, !dbg !99
  call void @klee_assume(i64 noundef %20), !dbg !104
  %21 = load i32, i32* %3, align 4, !dbg !105
  %22 = icmp ne i32 %21, 0, !dbg !105
  br i1 %22, label %23, label %36, !dbg !107

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8, !dbg !108
  %25 = icmp uge i64 %24, 4, !dbg !110
  %26 = zext i1 %25 to i32, !dbg !110
  %27 = sext i32 %26 to i64, !dbg !108
  call void @klee_assume(i64 noundef %27), !dbg !111
  %28 = load i64, i64* %4, align 8, !dbg !112
  %29 = icmp uge i64 %28, 4, !dbg !112
  br i1 %29, label %30, label %32, !dbg !112

30:                                               ; preds = %23
  br i1 true, label %31, label %32, !dbg !112

31:                                               ; preds = %30
  br label %34, !dbg !112

32:                                               ; preds = %30, %23
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !112
  br label %34, !dbg !112

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  br label %36, !dbg !114

36:                                               ; preds = %34, %17
  ret i32 0, !dbg !115
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !116 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !122, metadata !DIExpression()), !dbg !123
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %7, metadata !126, metadata !DIExpression()), !dbg !129
  %8 = load i8*, i8** %4, align 8, !dbg !130
  store i8* %8, i8** %7, align 8, !dbg !129
  br label %9, !dbg !131

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !132
  %11 = add i64 %10, -1, !dbg !132
  store i64 %11, i64* %6, align 8, !dbg !132
  %12 = icmp ugt i64 %10, 0, !dbg !133
  br i1 %12, label %13, label %18, !dbg !131

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !134
  %15 = trunc i32 %14 to i8, !dbg !134
  %16 = load i8*, i8** %7, align 8, !dbg !135
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !135
  store i8* %17, i8** %7, align 8, !dbg !135
  store i8 %15, i8* %16, align 1, !dbg !136
  br label %9, !dbg !131, !llvm.loop !137

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !139
  ret i8* %19, !dbg !140
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/337_xmlschemastypes.c_230_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "075b4ea94e2cbd115ac4fe4c67fc0418")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !1, line: 14, size: 32, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValType", file: !1, line: 12, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !23, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!23 = !DISubroutineType(types: !24)
!24 = !{!11, !25}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 46, baseType: !27)
!26 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{}
!29 = !DILocalVariable(name: "size", arg: 1, scope: !22, file: !1, line: 20, type: !25)
!30 = !DILocation(line: 20, column: 24, scope: !22)
!31 = !DILocalVariable(name: "ptr", scope: !22, file: !1, line: 21, type: !11)
!32 = !DILocation(line: 21, column: 11, scope: !22)
!33 = !DILocation(line: 21, column: 24, scope: !22)
!34 = !DILocation(line: 21, column: 17, scope: !22)
!35 = !DILocation(line: 22, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !22, file: !1, line: 22, column: 9)
!37 = !DILocation(line: 22, column: 9, scope: !22)
!38 = !DILocation(line: 23, column: 28, scope: !39)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 22, column: 14)
!40 = !DILocation(line: 23, column: 33, scope: !39)
!41 = !DILocation(line: 23, column: 9, scope: !39)
!42 = !DILocation(line: 24, column: 5, scope: !39)
!43 = !DILocation(line: 25, column: 12, scope: !22)
!44 = !DILocation(line: 25, column: 5, scope: !22)
!45 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !1, file: !1, line: 45, type: !46, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{null}
!48 = !DILocalVariable(name: "type", scope: !45, file: !1, line: 48, type: !9)
!49 = !DILocation(line: 48, column: 22, scope: !45)
!50 = !DILocation(line: 49, column: 24, scope: !45)
!51 = !DILocation(line: 49, column: 5, scope: !45)
!52 = !DILocation(line: 50, column: 23, scope: !45)
!53 = !DILocation(line: 50, column: 5, scope: !45)
!54 = !DILocation(line: 51, column: 1, scope: !45)
!55 = distinct !DISubprogram(name: "xmlSchemaNewValue", scope: !1, file: !1, line: 29, type: !56, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !28)
!56 = !DISubroutineType(types: !57)
!57 = !{!3, !9}
!58 = !DILocalVariable(name: "type", arg: 1, scope: !55, file: !1, line: 29, type: !9)
!59 = !DILocation(line: 29, column: 59, scope: !55)
!60 = !DILocalVariable(name: "value", scope: !55, file: !1, line: 30, type: !3)
!61 = !DILocation(line: 30, column: 21, scope: !55)
!62 = !DILocation(line: 32, column: 31, scope: !55)
!63 = !DILocation(line: 32, column: 13, scope: !55)
!64 = !DILocation(line: 32, column: 11, scope: !55)
!65 = !DILocation(line: 33, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !55, file: !1, line: 33, column: 9)
!67 = !DILocation(line: 33, column: 15, scope: !66)
!68 = !DILocation(line: 33, column: 9, scope: !55)
!69 = !DILocation(line: 34, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 33, column: 24)
!71 = !DILocation(line: 38, column: 12, scope: !55)
!72 = !DILocation(line: 38, column: 5, scope: !55)
!73 = !DILocation(line: 40, column: 19, scope: !55)
!74 = !DILocation(line: 40, column: 5, scope: !55)
!75 = !DILocation(line: 40, column: 12, scope: !55)
!76 = !DILocation(line: 40, column: 17, scope: !55)
!77 = !DILocation(line: 41, column: 12, scope: !55)
!78 = !DILocation(line: 41, column: 5, scope: !55)
!79 = !DILocation(line: 42, column: 1, scope: !55)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !81, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!81 = !DISubroutineType(types: !82)
!82 = !{!10}
!83 = !DILocalVariable(name: "symbolic_choice", scope: !80, file: !1, line: 55, type: !10)
!84 = !DILocation(line: 55, column: 9, scope: !80)
!85 = !DILocation(line: 56, column: 24, scope: !80)
!86 = !DILocation(line: 56, column: 5, scope: !80)
!87 = !DILocation(line: 59, column: 17, scope: !80)
!88 = !DILocation(line: 59, column: 33, scope: !80)
!89 = !DILocation(line: 59, column: 5, scope: !80)
!90 = !DILocation(line: 62, column: 5, scope: !80)
!91 = !DILocalVariable(name: "allocation_success", scope: !80, file: !1, line: 71, type: !10)
!92 = !DILocation(line: 71, column: 9, scope: !80)
!93 = !DILocalVariable(name: "allocated_size", scope: !80, file: !1, line: 72, type: !25)
!94 = !DILocation(line: 72, column: 12, scope: !80)
!95 = !DILocation(line: 74, column: 24, scope: !80)
!96 = !DILocation(line: 74, column: 5, scope: !80)
!97 = !DILocation(line: 75, column: 24, scope: !80)
!98 = !DILocation(line: 75, column: 5, scope: !80)
!99 = !DILocation(line: 78, column: 17, scope: !80)
!100 = !DILocation(line: 78, column: 36, scope: !80)
!101 = !DILocation(line: 78, column: 41, scope: !80)
!102 = !DILocation(line: 78, column: 44, scope: !80)
!103 = !DILocation(line: 78, column: 63, scope: !80)
!104 = !DILocation(line: 78, column: 5, scope: !80)
!105 = !DILocation(line: 81, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !80, file: !1, line: 81, column: 9)
!107 = !DILocation(line: 81, column: 9, scope: !80)
!108 = !DILocation(line: 82, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 81, column: 29)
!110 = !DILocation(line: 82, column: 36, scope: !109)
!111 = !DILocation(line: 82, column: 9, scope: !109)
!112 = !DILocation(line: 86, column: 9, scope: !109)
!113 = !DILocation(line: 89, column: 9, scope: !109)
!114 = !DILocation(line: 90, column: 5, scope: !109)
!115 = !DILocation(line: 92, column: 5, scope: !80)
!116 = distinct !DISubprogram(name: "memset", scope: !117, file: !117, line: 12, type: !118, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!117 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!118 = !DISubroutineType(types: !119)
!119 = !{!11, !11, !10, !25}
!120 = !DILocalVariable(name: "dst", arg: 1, scope: !116, file: !117, line: 12, type: !11)
!121 = !DILocation(line: 12, column: 20, scope: !116)
!122 = !DILocalVariable(name: "s", arg: 2, scope: !116, file: !117, line: 12, type: !10)
!123 = !DILocation(line: 12, column: 29, scope: !116)
!124 = !DILocalVariable(name: "count", arg: 3, scope: !116, file: !117, line: 12, type: !25)
!125 = !DILocation(line: 12, column: 39, scope: !116)
!126 = !DILocalVariable(name: "a", scope: !116, file: !117, line: 13, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DILocation(line: 13, column: 9, scope: !116)
!130 = !DILocation(line: 13, column: 13, scope: !116)
!131 = !DILocation(line: 14, column: 3, scope: !116)
!132 = !DILocation(line: 14, column: 15, scope: !116)
!133 = !DILocation(line: 14, column: 18, scope: !116)
!134 = !DILocation(line: 15, column: 12, scope: !116)
!135 = !DILocation(line: 15, column: 7, scope: !116)
!136 = !DILocation(line: 15, column: 10, scope: !116)
!137 = distinct !{!137, !131, !134, !138}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !DILocation(line: 16, column: 10, scope: !116)
!140 = !DILocation(line: 16, column: 3, scope: !116)
