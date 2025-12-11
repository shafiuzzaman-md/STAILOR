; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/072_schematron.c_590_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/072_schematron.c_590_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type { %struct._xmlDict* }
%struct._xmlDict = type opaque
%struct._xmlSchematron = type { %struct._xmlDict* }

@.str = private unnamed_addr constant [18 x i8] c"allocating schema\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ctxt_dict\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/072_schematron.c_590_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !22 {
  %4 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %4, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !36, metadata !DIExpression()), !dbg !37
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !38, metadata !DIExpression()), !dbg !39
  %7 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !40
  %8 = load i8*, i8** %5, align 8, !dbg !41
  %9 = load i8*, i8** %6, align 8, !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictReference(%struct._xmlDict* noundef %0) #0 !dbg !44 {
  %2 = alloca %struct._xmlDict*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchematron* @xmlSchematronNewParserCtxt(%struct._xmlSchematronParserCtxt* noundef %0) #0 !dbg !51 {
  %2 = alloca %struct._xmlSchematron*, align 8
  %3 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %4 = alloca %struct._xmlSchematron*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %4, metadata !56, metadata !DIExpression()), !dbg !57
  %5 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !58
  %6 = bitcast i8* %5 to %struct._xmlSchematron*, !dbg !59
  store %struct._xmlSchematron* %6, %struct._xmlSchematron** %4, align 8, !dbg !60
  %7 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !61
  %8 = icmp eq %struct._xmlSchematron* %7, null, !dbg !63
  br i1 %8, label %9, label %11, !dbg !64

9:                                                ; preds = %1
  %10 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %3, align 8, !dbg !65
  call void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %10, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !67
  store %struct._xmlSchematron* null, %struct._xmlSchematron** %2, align 8, !dbg !68
  br label %24, !dbg !68

11:                                               ; preds = %1
  %12 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !69
  %13 = bitcast %struct._xmlSchematron* %12 to i8*, !dbg !70
  %14 = call i8* @memset(i8* %13, i32 0, i64 8), !dbg !70
  %15 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %3, align 8, !dbg !71
  %16 = getelementptr inbounds %struct._xmlSchematronParserCtxt, %struct._xmlSchematronParserCtxt* %15, i32 0, i32 0, !dbg !72
  %17 = load %struct._xmlDict*, %struct._xmlDict** %16, align 8, !dbg !72
  %18 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !73
  %19 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %18, i32 0, i32 0, !dbg !74
  store %struct._xmlDict* %17, %struct._xmlDict** %19, align 8, !dbg !75
  %20 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !76
  %21 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %20, i32 0, i32 0, !dbg !77
  %22 = load %struct._xmlDict*, %struct._xmlDict** %21, align 8, !dbg !77
  call void @xmlDictReference(%struct._xmlDict* noundef %22), !dbg !78
  %23 = load %struct._xmlSchematron*, %struct._xmlSchematron** %4, align 8, !dbg !79
  store %struct._xmlSchematron* %23, %struct._xmlSchematron** %2, align 8, !dbg !80
  br label %24, !dbg !80

24:                                               ; preds = %11, %9
  %25 = load %struct._xmlSchematron*, %struct._xmlSchematron** %2, align 8, !dbg !81
  ret %struct._xmlSchematron* %25, !dbg !81
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchematron* @xmlSchematronParse(%struct._xmlSchematronParserCtxt* noundef %0) #0 !dbg !82 {
  %2 = alloca %struct._xmlSchematronParserCtxt*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %2, metadata !83, metadata !DIExpression()), !dbg !84
  %3 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %2, align 8, !dbg !85
  %4 = call %struct._xmlSchematron* @xmlSchematronNewParserCtxt(%struct._xmlSchematronParserCtxt* noundef %3), !dbg !86
  ret %struct._xmlSchematron* %4, !dbg !87
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !88 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchematronParserCtxt, align 8
  %3 = alloca %struct._xmlSchematron*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt* %2, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %3, metadata !94, metadata !DIExpression()), !dbg !95
  %4 = getelementptr inbounds %struct._xmlSchematronParserCtxt, %struct._xmlSchematronParserCtxt* %2, i32 0, i32 0, !dbg !96
  %5 = bitcast %struct._xmlDict** %4 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !98
  %6 = getelementptr inbounds %struct._xmlSchematronParserCtxt, %struct._xmlSchematronParserCtxt* %2, i32 0, i32 0, !dbg !99
  %7 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !99
  %8 = icmp eq %struct._xmlDict* %7, null, !dbg !100
  br i1 %8, label %13, label %9, !dbg !101

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct._xmlSchematronParserCtxt, %struct._xmlSchematronParserCtxt* %2, i32 0, i32 0, !dbg !102
  %11 = load %struct._xmlDict*, %struct._xmlDict** %10, align 8, !dbg !102
  %12 = icmp ne %struct._xmlDict* %11, null, !dbg !103
  br label %13, !dbg !101

13:                                               ; preds = %9, %0
  %14 = phi i1 [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32, !dbg !101
  %16 = sext i32 %15 to i64, !dbg !104
  call void @klee_assume(i64 noundef %16), !dbg !105
  %17 = call %struct._xmlSchematron* @xmlSchematronParse(%struct._xmlSchematronParserCtxt* noundef %2), !dbg !106
  store %struct._xmlSchematron* %17, %struct._xmlSchematron** %3, align 8, !dbg !107
  %18 = load %struct._xmlSchematron*, %struct._xmlSchematron** %3, align 8, !dbg !108
  %19 = icmp ne %struct._xmlSchematron* %18, null, !dbg !110
  br i1 %19, label %20, label %24, !dbg !111

20:                                               ; preds = %13
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !112
  %22 = load %struct._xmlSchematron*, %struct._xmlSchematron** %3, align 8, !dbg !114
  %23 = bitcast %struct._xmlSchematron* %22 to i8*, !dbg !114
  call void @free(i8* noundef %23) #7, !dbg !115
  br label %24, !dbg !116

24:                                               ; preds = %20, %13
  ret i32 0, !dbg !117
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !118 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !125, metadata !DIExpression()), !dbg !126
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !127, metadata !DIExpression()), !dbg !128
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i8** %7, metadata !131, metadata !DIExpression()), !dbg !133
  %8 = load i8*, i8** %4, align 8, !dbg !134
  store i8* %8, i8** %7, align 8, !dbg !133
  br label %9, !dbg !135

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !136
  %11 = add i64 %10, -1, !dbg !136
  store i64 %11, i64* %6, align 8, !dbg !136
  %12 = icmp ugt i64 %10, 0, !dbg !137
  br i1 %12, label %13, label %18, !dbg !135

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !138
  %15 = trunc i32 %14 to i8, !dbg !138
  %16 = load i8*, i8** %7, align 8, !dbg !139
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !139
  store i8* %17, i8** %7, align 8, !dbg !139
  store i8 %15, i8* %16, align 1, !dbg !140
  br label %9, !dbg !135, !llvm.loop !141

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !143
  ret i8* %19, !dbg !144
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/072_schematron.c_590_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "461693566693fa459700052e3d71c845")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematron", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematron", file: !1, line: 18, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !5, file: !1, line: 19, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !10)
!10 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 10, flags: DIFlagFwdDecl)
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
!22 = distinct !DISubprogram(name: "xmlSchematronPErrMemory", scope: !1, file: !1, line: 23, type: !23, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !30, !11}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !1, line: 12, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !1, line: 14, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !27, file: !1, line: 15, baseType: !8, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !22, file: !1, line: 23, type: !25)
!35 = !DILocation(line: 23, column: 55, scope: !22)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !22, file: !1, line: 23, type: !30)
!37 = !DILocation(line: 23, column: 73, scope: !22)
!38 = !DILocalVariable(name: "extra", arg: 3, scope: !22, file: !1, line: 23, type: !11)
!39 = !DILocation(line: 23, column: 84, scope: !22)
!40 = !DILocation(line: 24, column: 11, scope: !22)
!41 = !DILocation(line: 24, column: 23, scope: !22)
!42 = !DILocation(line: 24, column: 34, scope: !22)
!43 = !DILocation(line: 25, column: 1, scope: !22)
!44 = distinct !DISubprogram(name: "xmlDictReference", scope: !1, file: !1, line: 27, type: !45, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !8}
!47 = !DILocalVariable(name: "dict", arg: 1, scope: !44, file: !1, line: 27, type: !8)
!48 = !DILocation(line: 27, column: 32, scope: !44)
!49 = !DILocation(line: 28, column: 11, scope: !44)
!50 = !DILocation(line: 29, column: 1, scope: !44)
!51 = distinct !DISubprogram(name: "xmlSchematronNewParserCtxt", scope: !1, file: !1, line: 32, type: !52, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !25}
!54 = !DILocalVariable(name: "ctxt", arg: 1, scope: !51, file: !1, line: 32, type: !25)
!55 = !DILocation(line: 32, column: 68, scope: !51)
!56 = !DILocalVariable(name: "ret", scope: !51, file: !1, line: 33, type: !3)
!57 = !DILocation(line: 33, column: 20, scope: !51)
!58 = !DILocation(line: 35, column: 27, scope: !51)
!59 = !DILocation(line: 35, column: 11, scope: !51)
!60 = !DILocation(line: 35, column: 9, scope: !51)
!61 = !DILocation(line: 36, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !51, file: !1, line: 36, column: 9)
!63 = !DILocation(line: 36, column: 13, scope: !62)
!64 = !DILocation(line: 36, column: 9, scope: !51)
!65 = !DILocation(line: 37, column: 33, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 36, column: 22)
!67 = !DILocation(line: 37, column: 9, scope: !66)
!68 = !DILocation(line: 38, column: 9, scope: !66)
!69 = !DILocation(line: 42, column: 12, scope: !51)
!70 = !DILocation(line: 42, column: 5, scope: !51)
!71 = !DILocation(line: 44, column: 17, scope: !51)
!72 = !DILocation(line: 44, column: 23, scope: !51)
!73 = !DILocation(line: 44, column: 5, scope: !51)
!74 = !DILocation(line: 44, column: 10, scope: !51)
!75 = !DILocation(line: 44, column: 15, scope: !51)
!76 = !DILocation(line: 45, column: 22, scope: !51)
!77 = !DILocation(line: 45, column: 27, scope: !51)
!78 = !DILocation(line: 45, column: 5, scope: !51)
!79 = !DILocation(line: 47, column: 13, scope: !51)
!80 = !DILocation(line: 47, column: 5, scope: !51)
!81 = !DILocation(line: 48, column: 1, scope: !51)
!82 = distinct !DISubprogram(name: "xmlSchematronParse", scope: !1, file: !1, line: 51, type: !52, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!83 = !DILocalVariable(name: "ctxt", arg: 1, scope: !82, file: !1, line: 51, type: !25)
!84 = !DILocation(line: 51, column: 60, scope: !82)
!85 = !DILocation(line: 52, column: 39, scope: !82)
!86 = !DILocation(line: 52, column: 12, scope: !82)
!87 = !DILocation(line: 52, column: 5, scope: !82)
!88 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !89, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DILocalVariable(name: "ctxt", scope: !88, file: !1, line: 56, type: !26)
!93 = !DILocation(line: 56, column: 29, scope: !88)
!94 = !DILocalVariable(name: "result", scope: !88, file: !1, line: 57, type: !3)
!95 = !DILocation(line: 57, column: 20, scope: !88)
!96 = !DILocation(line: 60, column: 30, scope: !88)
!97 = !DILocation(line: 60, column: 24, scope: !88)
!98 = !DILocation(line: 60, column: 5, scope: !88)
!99 = !DILocation(line: 63, column: 22, scope: !88)
!100 = !DILocation(line: 63, column: 27, scope: !88)
!101 = !DILocation(line: 63, column: 32, scope: !88)
!102 = !DILocation(line: 63, column: 40, scope: !88)
!103 = !DILocation(line: 63, column: 45, scope: !88)
!104 = !DILocation(line: 63, column: 17, scope: !88)
!105 = !DILocation(line: 63, column: 5, scope: !88)
!106 = !DILocation(line: 66, column: 14, scope: !88)
!107 = !DILocation(line: 66, column: 12, scope: !88)
!108 = !DILocation(line: 68, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !88, file: !1, line: 68, column: 9)
!110 = !DILocation(line: 68, column: 16, scope: !109)
!111 = !DILocation(line: 68, column: 9, scope: !88)
!112 = !DILocation(line: 74, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 68, column: 25)
!114 = !DILocation(line: 77, column: 14, scope: !113)
!115 = !DILocation(line: 77, column: 9, scope: !113)
!116 = !DILocation(line: 78, column: 5, scope: !113)
!117 = !DILocation(line: 80, column: 5, scope: !88)
!118 = distinct !DISubprogram(name: "memset", scope: !119, file: !119, line: 12, type: !120, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !33)
!119 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!120 = !DISubroutineType(types: !121)
!121 = !{!11, !11, !91, !122}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 46, baseType: !124)
!123 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !DILocalVariable(name: "dst", arg: 1, scope: !118, file: !119, line: 12, type: !11)
!126 = !DILocation(line: 12, column: 20, scope: !118)
!127 = !DILocalVariable(name: "s", arg: 2, scope: !118, file: !119, line: 12, type: !91)
!128 = !DILocation(line: 12, column: 29, scope: !118)
!129 = !DILocalVariable(name: "count", arg: 3, scope: !118, file: !119, line: 12, type: !122)
!130 = !DILocation(line: 12, column: 39, scope: !118)
!131 = !DILocalVariable(name: "a", scope: !118, file: !119, line: 13, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!133 = !DILocation(line: 13, column: 9, scope: !118)
!134 = !DILocation(line: 13, column: 13, scope: !118)
!135 = !DILocation(line: 14, column: 3, scope: !118)
!136 = !DILocation(line: 14, column: 15, scope: !118)
!137 = !DILocation(line: 14, column: 18, scope: !118)
!138 = !DILocation(line: 15, column: 12, scope: !118)
!139 = !DILocation(line: 15, column: 7, scope: !118)
!140 = !DILocation(line: 15, column: 10, scope: !118)
!141 = distinct !{!141, !135, !138, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !DILocation(line: 16, column: 10, scope: !118)
!144 = !DILocation(line: 16, column: 3, scope: !118)
