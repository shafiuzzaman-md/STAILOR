; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [15 x i8] c"NB_STRINGS_MIN\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"string%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca %struct._xmlDict*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8*], align 16
  %7 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata [100 x i8*]* %6, metadata !37, metadata !DIExpression()), !dbg !41
  %8 = call %struct._xmlDict* @xmlDictCreate(), !dbg !42
  store %struct._xmlDict* %8, %struct._xmlDict** %2, align 8, !dbg !43
  %9 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !44
  %10 = icmp eq %struct._xmlDict* %9, null, !dbg !46
  br i1 %10, label %11, label %12, !dbg !47

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !48
  br label %50, !dbg !48

12:                                               ; preds = %0
  %13 = bitcast i32* %4 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !51
  %14 = load i32, i32* %4, align 4, !dbg !52
  %15 = icmp sge i32 %14, 0, !dbg !53
  %16 = zext i1 %15 to i32, !dbg !53
  %17 = sext i32 %16 to i64, !dbg !52
  call void @klee_assume(i64 noundef %17), !dbg !54
  %18 = load i32, i32* %4, align 4, !dbg !55
  %19 = icmp sle i32 %18, 200, !dbg !56
  %20 = zext i1 %19 to i32, !dbg !56
  %21 = sext i32 %20 to i64, !dbg !55
  call void @klee_assume(i64 noundef %21), !dbg !57
  %22 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !58
  %23 = call %struct._xmlDict* @xmlDictCreateSub(%struct._xmlDict* noundef %22), !dbg !59
  store %struct._xmlDict* %23, %struct._xmlDict** %3, align 8, !dbg !60
  %24 = load %struct._xmlDict*, %struct._xmlDict** %3, align 8, !dbg !61
  %25 = icmp eq %struct._xmlDict* %24, null, !dbg !63
  br i1 %25, label %26, label %28, !dbg !64

26:                                               ; preds = %12
  %27 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !65
  call void @xmlDictFree(%struct._xmlDict* noundef %27), !dbg !67
  store i32 1, i32* %1, align 4, !dbg !68
  br label %50, !dbg !68

28:                                               ; preds = %12
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !69
  %30 = getelementptr inbounds [100 x i8*], [100 x i8*]* %6, i64 0, i64 0, !dbg !70
  %31 = bitcast i8** %30 to i8*, !dbg !70
  %32 = call i8* @memset(i8* %31, i32 0, i64 800), !dbg !70
  store i32 0, i32* %5, align 4, !dbg !71
  br label %33, !dbg !73

33:                                               ; preds = %44, %28
  %34 = load i32, i32* %5, align 4, !dbg !74
  %35 = load i32, i32* %4, align 4, !dbg !76
  %36 = icmp slt i32 %34, %35, !dbg !77
  br i1 %36, label %37, label %47, !dbg !78

37:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !79, metadata !DIExpression()), !dbg !85
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !86
  %39 = load i32, i32* %5, align 4, !dbg !87
  %40 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %38, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef %39) #7, !dbg !88
  %41 = load %struct._xmlDict*, %struct._xmlDict** %3, align 8, !dbg !89
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !90
  %43 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %41, i8* noundef %42, i32 noundef -1), !dbg !91
  br label %44, !dbg !92

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4, !dbg !93
  %46 = add nsw i32 %45, 1, !dbg !93
  store i32 %46, i32* %5, align 4, !dbg !93
  br label %33, !dbg !94, !llvm.loop !95

47:                                               ; preds = %33
  %48 = load %struct._xmlDict*, %struct._xmlDict** %3, align 8, !dbg !98
  call void @xmlDictFree(%struct._xmlDict* noundef %48), !dbg !99
  %49 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !100
  call void @xmlDictFree(%struct._xmlDict* noundef %49), !dbg !101
  store i32 0, i32* %1, align 4, !dbg !102
  br label %50, !dbg !102

50:                                               ; preds = %47, %26, %11
  %51 = load i32, i32* %1, align 4, !dbg !103
  ret i32 %51, !dbg !103
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlDict* @xmlDictCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlDict* @xmlDictCreateSub(%struct._xmlDict* noundef) #2

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8* noundef, i8* noundef, ...) #5

declare i8* @xmlDictLookup(%struct._xmlDict* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !104 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !111, metadata !DIExpression()), !dbg !112
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !113, metadata !DIExpression()), !dbg !114
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !DIExpression()), !dbg !119
  %8 = load i8*, i8** %4, align 8, !dbg !120
  store i8* %8, i8** %7, align 8, !dbg !119
  br label %9, !dbg !121

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !122
  %11 = add i64 %10, -1, !dbg !122
  store i64 %11, i64* %6, align 8, !dbg !122
  %12 = icmp ugt i64 %10, 0, !dbg !123
  br i1 %12, label %13, label %18, !dbg !121

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !124
  %15 = trunc i32 %14 to i8, !dbg !124
  %16 = load i8*, i8** %7, align 8, !dbg !125
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !125
  store i8* %17, i8** %7, align 8, !dbg !125
  store i8 %15, i8* %16, align 1, !dbg !126
  br label %9, !dbg !121, !llvm.loop !127

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !128
  ret i8* %19, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/084_testdict.c_140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "97d5113b905dd998ba597979b899c662")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !20, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DILocalVariable(name: "parent", scope: !19, file: !1, line: 7, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !26, line: 25, baseType: !27)
!26 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !26, line: 24, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !26, line: 24, flags: DIFlagFwdDecl)
!30 = !DILocation(line: 7, column: 16, scope: !19)
!31 = !DILocalVariable(name: "dict", scope: !19, file: !1, line: 7, type: !25)
!32 = !DILocation(line: 7, column: 24, scope: !19)
!33 = !DILocalVariable(name: "NB_STRINGS_MIN", scope: !19, file: !1, line: 8, type: !22)
!34 = !DILocation(line: 8, column: 9, scope: !19)
!35 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 9, type: !22)
!36 = !DILocation(line: 9, column: 9, scope: !19)
!37 = !DILocalVariable(name: "test2", scope: !19, file: !1, line: 10, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 6400, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 100)
!41 = !DILocation(line: 10, column: 20, scope: !19)
!42 = !DILocation(line: 13, column: 14, scope: !19)
!43 = !DILocation(line: 13, column: 12, scope: !19)
!44 = !DILocation(line: 14, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !19, file: !1, line: 14, column: 9)
!46 = !DILocation(line: 14, column: 16, scope: !45)
!47 = !DILocation(line: 14, column: 9, scope: !19)
!48 = !DILocation(line: 15, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 14, column: 25)
!50 = !DILocation(line: 19, column: 24, scope: !19)
!51 = !DILocation(line: 19, column: 5, scope: !19)
!52 = !DILocation(line: 21, column: 17, scope: !19)
!53 = !DILocation(line: 21, column: 32, scope: !19)
!54 = !DILocation(line: 21, column: 5, scope: !19)
!55 = !DILocation(line: 22, column: 17, scope: !19)
!56 = !DILocation(line: 22, column: 32, scope: !19)
!57 = !DILocation(line: 22, column: 5, scope: !19)
!58 = !DILocation(line: 24, column: 29, scope: !19)
!59 = !DILocation(line: 24, column: 12, scope: !19)
!60 = !DILocation(line: 24, column: 10, scope: !19)
!61 = !DILocation(line: 25, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !19, file: !1, line: 25, column: 9)
!63 = !DILocation(line: 25, column: 14, scope: !62)
!64 = !DILocation(line: 25, column: 9, scope: !19)
!65 = !DILocation(line: 26, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 25, column: 23)
!67 = !DILocation(line: 26, column: 9, scope: !66)
!68 = !DILocation(line: 27, column: 9, scope: !66)
!69 = !DILocation(line: 31, column: 5, scope: !19)
!70 = !DILocation(line: 34, column: 5, scope: !19)
!71 = !DILocation(line: 40, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !19, file: !1, line: 40, column: 5)
!73 = !DILocation(line: 40, column: 10, scope: !72)
!74 = !DILocation(line: 40, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 40, column: 5)
!76 = !DILocation(line: 40, column: 21, scope: !75)
!77 = !DILocation(line: 40, column: 19, scope: !75)
!78 = !DILocation(line: 40, column: 5, scope: !72)
!79 = !DILocalVariable(name: "buf", scope: !80, file: !1, line: 42, type: !81)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 40, column: 42)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !83)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !{!84}
!84 = !DISubrange(count: 32)
!85 = !DILocation(line: 42, column: 14, scope: !80)
!86 = !DILocation(line: 43, column: 17, scope: !80)
!87 = !DILocation(line: 43, column: 34, scope: !80)
!88 = !DILocation(line: 43, column: 9, scope: !80)
!89 = !DILocation(line: 44, column: 23, scope: !80)
!90 = !DILocation(line: 44, column: 46, scope: !80)
!91 = !DILocation(line: 44, column: 9, scope: !80)
!92 = !DILocation(line: 45, column: 5, scope: !80)
!93 = !DILocation(line: 40, column: 38, scope: !75)
!94 = !DILocation(line: 40, column: 5, scope: !75)
!95 = distinct !{!95, !78, !96, !97}
!96 = !DILocation(line: 45, column: 5, scope: !72)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 48, column: 17, scope: !19)
!99 = !DILocation(line: 48, column: 5, scope: !19)
!100 = !DILocation(line: 49, column: 17, scope: !19)
!101 = !DILocation(line: 49, column: 5, scope: !19)
!102 = !DILocation(line: 51, column: 5, scope: !19)
!103 = !DILocation(line: 52, column: 1, scope: !19)
!104 = distinct !DISubprogram(name: "memset", scope: !105, file: !105, line: 12, type: !106, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !23)
!105 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!106 = !DISubroutineType(types: !107)
!107 = !{!3, !3, !22, !108}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DILocalVariable(name: "dst", arg: 1, scope: !104, file: !105, line: 12, type: !3)
!112 = !DILocation(line: 12, column: 20, scope: !104)
!113 = !DILocalVariable(name: "s", arg: 2, scope: !104, file: !105, line: 12, type: !22)
!114 = !DILocation(line: 12, column: 29, scope: !104)
!115 = !DILocalVariable(name: "count", arg: 3, scope: !104, file: !105, line: 12, type: !108)
!116 = !DILocation(line: 12, column: 39, scope: !104)
!117 = !DILocalVariable(name: "a", scope: !104, file: !105, line: 13, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!119 = !DILocation(line: 13, column: 9, scope: !104)
!120 = !DILocation(line: 13, column: 13, scope: !104)
!121 = !DILocation(line: 14, column: 3, scope: !104)
!122 = !DILocation(line: 14, column: 15, scope: !104)
!123 = !DILocation(line: 14, column: 18, scope: !104)
!124 = !DILocation(line: 15, column: 12, scope: !104)
!125 = !DILocation(line: 15, column: 7, scope: !104)
!126 = !DILocation(line: 15, column: 10, scope: !104)
!127 = distinct !{!127, !121, !124, !97}
!128 = !DILocation(line: 16, column: 10, scope: !104)
!129 = !DILocation(line: 16, column: 3, scope: !104)
