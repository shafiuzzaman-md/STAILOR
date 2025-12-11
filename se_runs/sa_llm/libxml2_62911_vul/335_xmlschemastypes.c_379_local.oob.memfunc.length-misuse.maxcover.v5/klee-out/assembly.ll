; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParticle = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"allocating particle component\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"malloc_succeeds\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

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
define dso_local %struct._xmlSchemaParticle* @xmlSchemaNewParticle() #0 !dbg !45 {
  %1 = alloca %struct._xmlSchemaParticle*, align 8
  %2 = alloca %struct._xmlSchemaParticle*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParticle** %2, metadata !48, metadata !DIExpression()), !dbg !49
  %3 = call i8* @xmlMalloc(i64 noundef 12), !dbg !50
  %4 = bitcast i8* %3 to %struct._xmlSchemaParticle*, !dbg !51
  store %struct._xmlSchemaParticle* %4, %struct._xmlSchemaParticle** %2, align 8, !dbg !52
  %5 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !53
  %6 = icmp eq %struct._xmlSchemaParticle* %5, null, !dbg !55
  br i1 %6, label %7, label %8, !dbg !56

7:                                                ; preds = %0
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  store %struct._xmlSchemaParticle* null, %struct._xmlSchemaParticle** %1, align 8, !dbg !59
  br label %19, !dbg !59

8:                                                ; preds = %0
  %9 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !60
  %10 = bitcast %struct._xmlSchemaParticle* %9 to i8*, !dbg !61
  %11 = call i8* @memset(i8* %10, i32 0, i64 12), !dbg !61
  %12 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !62
  %13 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %12, i32 0, i32 0, !dbg !63
  store i32 1, i32* %13, align 4, !dbg !64
  %14 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !65
  %15 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %14, i32 0, i32 1, !dbg !66
  store i32 1, i32* %15, align 4, !dbg !67
  %16 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !68
  %17 = getelementptr inbounds %struct._xmlSchemaParticle, %struct._xmlSchemaParticle* %16, i32 0, i32 2, !dbg !69
  store i32 1, i32* %17, align 4, !dbg !70
  %18 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %2, align 8, !dbg !71
  store %struct._xmlSchemaParticle* %18, %struct._xmlSchemaParticle** %1, align 8, !dbg !72
  br label %19, !dbg !72

19:                                               ; preds = %8, %7
  %20 = load %struct._xmlSchemaParticle*, %struct._xmlSchemaParticle** %1, align 8, !dbg !73
  ret %struct._xmlSchemaParticle* %20, !dbg !73
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !74 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !80, metadata !DIExpression()), !dbg !81
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !82, metadata !DIExpression()), !dbg !83
  ret void, !dbg !84
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !85 {
  %1 = call %struct._xmlSchemaParticle* @xmlSchemaNewParticle(), !dbg !88
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !93, metadata !DIExpression()), !dbg !94
  %3 = bitcast i32* %2 to i8*, !dbg !95
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !96
  %4 = load i32, i32* %2, align 4, !dbg !97
  %5 = icmp eq i32 %4, 0, !dbg !98
  br i1 %5, label %9, label %6, !dbg !99

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4, !dbg !100
  %8 = icmp eq i32 %7, 1, !dbg !101
  br label %9, !dbg !99

9:                                                ; preds = %6, %0
  %10 = phi i1 [ true, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32, !dbg !99
  %12 = sext i32 %11 to i64, !dbg !97
  call void @klee_assume(i64 noundef %12), !dbg !102
  %13 = load i32, i32* %2, align 4, !dbg !103
  %14 = icmp ne i32 %13, 0, !dbg !103
  br i1 %14, label %15, label %17, !dbg !105

15:                                               ; preds = %9
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !106
  br label %17, !dbg !108

17:                                               ; preds = %15, %9
  call void @xmlSchemaInitTypes(), !dbg !109
  ret i32 0, !dbg !110
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !111 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !115, metadata !DIExpression()), !dbg !116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !117, metadata !DIExpression()), !dbg !118
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i8** %7, metadata !121, metadata !DIExpression()), !dbg !123
  %8 = load i8*, i8** %4, align 8, !dbg !124
  store i8* %8, i8** %7, align 8, !dbg !123
  br label %9, !dbg !125

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !126
  %11 = add i64 %10, -1, !dbg !126
  store i64 %11, i64* %6, align 8, !dbg !126
  %12 = icmp ugt i64 %10, 0, !dbg !127
  br i1 %12, label %13, label %18, !dbg !125

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !128
  %15 = trunc i32 %14 to i8, !dbg !128
  %16 = load i8*, i8** %7, align 8, !dbg !129
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !129
  store i8* %17, i8** %7, align 8, !dbg !129
  store i8 %15, i8* %16, align 1, !dbg !130
  br label %9, !dbg !125, !llvm.loop !131

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !133
  ret i8* %19, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/335_xmlschemastypes.c_379_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d20b62b626f1e1d715e31e7ecdbc2ca2")
!2 = !{!3, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParticle", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParticle", file: !1, line: 11, size: 96, elements: !6)
!6 = !{!7, !9, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 12, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "minOccurs", scope: !5, file: !1, line: 13, baseType: !8, size: 32, offset: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxOccurs", scope: !5, file: !1, line: 14, baseType: !8, size: 32, offset: 64)
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
!45 = distinct !DISubprogram(name: "xmlSchemaNewParticle", scope: !1, file: !1, line: 29, type: !46, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!46 = !DISubroutineType(types: !47)
!47 = !{!3}
!48 = !DILocalVariable(name: "ret", scope: !45, file: !1, line: 30, type: !3)
!49 = !DILocation(line: 30, column: 24, scope: !45)
!50 = !DILocation(line: 32, column: 31, scope: !45)
!51 = !DILocation(line: 32, column: 11, scope: !45)
!52 = !DILocation(line: 32, column: 9, scope: !45)
!53 = !DILocation(line: 33, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !45, file: !1, line: 33, column: 9)
!55 = !DILocation(line: 33, column: 13, scope: !54)
!56 = !DILocation(line: 33, column: 9, scope: !45)
!57 = !DILocation(line: 34, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 33, column: 22)
!59 = !DILocation(line: 35, column: 9, scope: !58)
!60 = !DILocation(line: 39, column: 12, scope: !45)
!61 = !DILocation(line: 39, column: 5, scope: !45)
!62 = !DILocation(line: 41, column: 5, scope: !45)
!63 = !DILocation(line: 41, column: 10, scope: !45)
!64 = !DILocation(line: 41, column: 15, scope: !45)
!65 = !DILocation(line: 42, column: 5, scope: !45)
!66 = !DILocation(line: 42, column: 10, scope: !45)
!67 = !DILocation(line: 42, column: 20, scope: !45)
!68 = !DILocation(line: 43, column: 5, scope: !45)
!69 = !DILocation(line: 43, column: 10, scope: !45)
!70 = !DILocation(line: 43, column: 20, scope: !45)
!71 = !DILocation(line: 44, column: 13, scope: !45)
!72 = !DILocation(line: 44, column: 5, scope: !45)
!73 = !DILocation(line: 45, column: 1, scope: !45)
!74 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !1, file: !1, line: 48, type: !75, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !11, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DILocalVariable(name: "ctxt", arg: 1, scope: !74, file: !1, line: 48, type: !11)
!81 = !DILocation(line: 48, column: 35, scope: !74)
!82 = !DILocalVariable(name: "msg", arg: 2, scope: !74, file: !1, line: 48, type: !77)
!83 = !DILocation(line: 48, column: 53, scope: !74)
!84 = !DILocation(line: 50, column: 1, scope: !74)
!85 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !1, file: !1, line: 53, type: !86, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!86 = !DISubroutineType(types: !87)
!87 = !{null}
!88 = !DILocation(line: 57, column: 5, scope: !85)
!89 = !DILocation(line: 58, column: 1, scope: !85)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !91, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!91 = !DISubroutineType(types: !92)
!92 = !{!8}
!93 = !DILocalVariable(name: "malloc_succeeds", scope: !90, file: !1, line: 62, type: !8)
!94 = !DILocation(line: 62, column: 9, scope: !90)
!95 = !DILocation(line: 63, column: 24, scope: !90)
!96 = !DILocation(line: 63, column: 5, scope: !90)
!97 = !DILocation(line: 64, column: 17, scope: !90)
!98 = !DILocation(line: 64, column: 33, scope: !90)
!99 = !DILocation(line: 64, column: 38, scope: !90)
!100 = !DILocation(line: 64, column: 41, scope: !90)
!101 = !DILocation(line: 64, column: 57, scope: !90)
!102 = !DILocation(line: 64, column: 5, scope: !90)
!103 = !DILocation(line: 67, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 67, column: 9)
!105 = !DILocation(line: 67, column: 9, scope: !90)
!106 = !DILocation(line: 79, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 67, column: 26)
!108 = !DILocation(line: 80, column: 5, scope: !107)
!109 = !DILocation(line: 83, column: 5, scope: !90)
!110 = !DILocation(line: 85, column: 5, scope: !90)
!111 = distinct !DISubprogram(name: "memset", scope: !112, file: !112, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!112 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!113 = !DISubroutineType(types: !114)
!114 = !{!11, !11, !8, !25}
!115 = !DILocalVariable(name: "dst", arg: 1, scope: !111, file: !112, line: 12, type: !11)
!116 = !DILocation(line: 12, column: 20, scope: !111)
!117 = !DILocalVariable(name: "s", arg: 2, scope: !111, file: !112, line: 12, type: !8)
!118 = !DILocation(line: 12, column: 29, scope: !111)
!119 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !112, line: 12, type: !25)
!120 = !DILocation(line: 12, column: 39, scope: !111)
!121 = !DILocalVariable(name: "a", scope: !111, file: !112, line: 13, type: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!123 = !DILocation(line: 13, column: 9, scope: !111)
!124 = !DILocation(line: 13, column: 13, scope: !111)
!125 = !DILocation(line: 14, column: 3, scope: !111)
!126 = !DILocation(line: 14, column: 15, scope: !111)
!127 = !DILocation(line: 14, column: 18, scope: !111)
!128 = !DILocation(line: 15, column: 12, scope: !111)
!129 = !DILocation(line: 15, column: 7, scope: !111)
!130 = !DILocation(line: 15, column: 10, scope: !111)
!131 = distinct !{!131, !125, !128, !132}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 16, column: 10, scope: !111)
!134 = !DILocation(line: 16, column: 3, scope: !111)
