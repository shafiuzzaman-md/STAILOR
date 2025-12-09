; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/045_hash.c_577_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/045_hash.c_577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"key1_len\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"key2_len\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"key3_len\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/045_hash.c_577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !19 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %8, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %9, metadata !43, metadata !DIExpression()), !dbg !44
  call void @xmlInitParser(), !dbg !45
  %10 = call %struct._xmlHashTable* @xmlHashCreate(i32 noundef 10), !dbg !46
  store %struct._xmlHashTable* %10, %struct._xmlHashTable** %2, align 8, !dbg !47
  %11 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !48
  %12 = icmp eq %struct._xmlHashTable* %11, null, !dbg !50
  br i1 %12, label %13, label %14, !dbg !51

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !52
  br label %73, !dbg !52

14:                                               ; preds = %0
  store i32 10, i32* %7, align 4, !dbg !54
  store i32 10, i32* %8, align 4, !dbg !55
  store i32 10, i32* %9, align 4, !dbg !56
  %15 = load i32, i32* %7, align 4, !dbg !57
  %16 = add nsw i32 %15, 1, !dbg !58
  %17 = sext i32 %16 to i64, !dbg !57
  %18 = call noalias i8* @malloc(i64 noundef %17) #5, !dbg !59
  store i8* %18, i8** %3, align 8, !dbg !60
  %19 = load i32, i32* %8, align 4, !dbg !61
  %20 = add nsw i32 %19, 1, !dbg !62
  %21 = sext i32 %20 to i64, !dbg !61
  %22 = call noalias i8* @malloc(i64 noundef %21) #5, !dbg !63
  store i8* %22, i8** %4, align 8, !dbg !64
  %23 = load i32, i32* %9, align 4, !dbg !65
  %24 = add nsw i32 %23, 1, !dbg !66
  %25 = sext i32 %24 to i64, !dbg !65
  %26 = call noalias i8* @malloc(i64 noundef %25) #5, !dbg !67
  store i8* %26, i8** %5, align 8, !dbg !68
  %27 = call noalias i8* @malloc(i64 noundef 1) #5, !dbg !69
  store i8* %27, i8** %6, align 8, !dbg !70
  %28 = load i8*, i8** %3, align 8, !dbg !71
  %29 = load i32, i32* %7, align 4, !dbg !72
  %30 = add nsw i32 %29, 1, !dbg !73
  %31 = sext i32 %30 to i64, !dbg !72
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef %31, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %32 = load i8*, i8** %4, align 8, !dbg !75
  %33 = load i32, i32* %8, align 4, !dbg !76
  %34 = add nsw i32 %33, 1, !dbg !77
  %35 = sext i32 %34 to i64, !dbg !76
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef %35, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !78
  %36 = load i8*, i8** %5, align 8, !dbg !79
  %37 = load i32, i32* %9, align 4, !dbg !80
  %38 = add nsw i32 %37, 1, !dbg !81
  %39 = sext i32 %38 to i64, !dbg !80
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef %39, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !82
  %40 = bitcast i32* %7 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %40, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !84
  %41 = bitcast i32* %8 to i8*, !dbg !85
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !86
  %42 = bitcast i32* %9 to i8*, !dbg !87
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !88
  %43 = load i8*, i8** %3, align 8, !dbg !89
  %44 = load i32, i32* %7, align 4, !dbg !90
  %45 = sext i32 %44 to i64, !dbg !91
  %46 = getelementptr inbounds i8, i8* %43, i64 %45, !dbg !91
  store i8 0, i8* %46, align 1, !dbg !92
  %47 = load i8*, i8** %4, align 8, !dbg !93
  %48 = load i32, i32* %8, align 4, !dbg !94
  %49 = sext i32 %48 to i64, !dbg !95
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !95
  store i8 0, i8* %50, align 1, !dbg !96
  %51 = load i8*, i8** %5, align 8, !dbg !97
  %52 = load i32, i32* %9, align 4, !dbg !98
  %53 = sext i32 %52 to i64, !dbg !99
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !99
  store i8 0, i8* %54, align 1, !dbg !100
  %55 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !101
  %56 = load i8*, i8** %3, align 8, !dbg !102
  %57 = load i8*, i8** %4, align 8, !dbg !103
  %58 = load i8*, i8** %5, align 8, !dbg !104
  %59 = load i8*, i8** %6, align 8, !dbg !105
  %60 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %55, i8* noundef %56, i8* noundef %57, i8* noundef %58, i8* noundef %59), !dbg !106
  %61 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !107
  %62 = load i8*, i8** %3, align 8, !dbg !108
  %63 = load i8*, i8** %4, align 8, !dbg !109
  %64 = load i8*, i8** %5, align 8, !dbg !110
  %65 = load i8*, i8** %6, align 8, !dbg !111
  %66 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %61, i8* noundef %62, i8* noundef %63, i8* noundef %64, i8* noundef %65), !dbg !112
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  %68 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !114
  call void @xmlHashFree(%struct._xmlHashTable* noundef %68, void (i8*, i8*)* noundef null), !dbg !115
  %69 = load i8*, i8** %3, align 8, !dbg !116
  call void @free(i8* noundef %69) #5, !dbg !117
  %70 = load i8*, i8** %4, align 8, !dbg !118
  call void @free(i8* noundef %70) #5, !dbg !119
  %71 = load i8*, i8** %5, align 8, !dbg !120
  call void @free(i8* noundef %71) #5, !dbg !121
  %72 = load i8*, i8** %6, align 8, !dbg !122
  call void @free(i8* noundef %72) #5, !dbg !123
  call void @xmlCleanupParser(), !dbg !124
  store i32 0, i32* %1, align 4, !dbg !125
  br label %73, !dbg !125

73:                                               ; preds = %14, %13
  %74 = load i32, i32* %1, align 4, !dbg !126
  ret i32 %74, !dbg !126
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlHashTable* @xmlHashCreate(i32 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlHashFree(%struct._xmlHashTable* noundef, void (i8*, i8*)* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/045_hash.c_577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2668be3b141dc98ba154437cb1cf6372")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !20, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{}
!24 = !DILocalVariable(name: "hash", scope: !19, file: !1, line: 9, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !26, line: 22, baseType: !27)
!26 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !26, line: 21, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !26, line: 21, flags: DIFlagFwdDecl)
!30 = !DILocation(line: 9, column: 21, scope: !19)
!31 = !DILocalVariable(name: "key1", scope: !19, file: !1, line: 10, type: !4)
!32 = !DILocation(line: 10, column: 20, scope: !19)
!33 = !DILocalVariable(name: "key2", scope: !19, file: !1, line: 10, type: !4)
!34 = !DILocation(line: 10, column: 27, scope: !19)
!35 = !DILocalVariable(name: "key3", scope: !19, file: !1, line: 10, type: !4)
!36 = !DILocation(line: 10, column: 34, scope: !19)
!37 = !DILocalVariable(name: "payload", scope: !19, file: !1, line: 11, type: !3)
!38 = !DILocation(line: 11, column: 11, scope: !19)
!39 = !DILocalVariable(name: "key1_len", scope: !19, file: !1, line: 12, type: !22)
!40 = !DILocation(line: 12, column: 9, scope: !19)
!41 = !DILocalVariable(name: "key2_len", scope: !19, file: !1, line: 12, type: !22)
!42 = !DILocation(line: 12, column: 19, scope: !19)
!43 = !DILocalVariable(name: "key3_len", scope: !19, file: !1, line: 12, type: !22)
!44 = !DILocation(line: 12, column: 29, scope: !19)
!45 = !DILocation(line: 15, column: 5, scope: !19)
!46 = !DILocation(line: 18, column: 12, scope: !19)
!47 = !DILocation(line: 18, column: 10, scope: !19)
!48 = !DILocation(line: 19, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !19, file: !1, line: 19, column: 9)
!50 = !DILocation(line: 19, column: 14, scope: !49)
!51 = !DILocation(line: 19, column: 9, scope: !19)
!52 = !DILocation(line: 20, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 19, column: 23)
!54 = !DILocation(line: 24, column: 14, scope: !19)
!55 = !DILocation(line: 25, column: 14, scope: !19)
!56 = !DILocation(line: 26, column: 14, scope: !19)
!57 = !DILocation(line: 27, column: 36, scope: !19)
!58 = !DILocation(line: 27, column: 45, scope: !19)
!59 = !DILocation(line: 27, column: 29, scope: !19)
!60 = !DILocation(line: 27, column: 10, scope: !19)
!61 = !DILocation(line: 28, column: 36, scope: !19)
!62 = !DILocation(line: 28, column: 45, scope: !19)
!63 = !DILocation(line: 28, column: 29, scope: !19)
!64 = !DILocation(line: 28, column: 10, scope: !19)
!65 = !DILocation(line: 29, column: 36, scope: !19)
!66 = !DILocation(line: 29, column: 45, scope: !19)
!67 = !DILocation(line: 29, column: 29, scope: !19)
!68 = !DILocation(line: 29, column: 10, scope: !19)
!69 = !DILocation(line: 30, column: 15, scope: !19)
!70 = !DILocation(line: 30, column: 13, scope: !19)
!71 = !DILocation(line: 32, column: 32, scope: !19)
!72 = !DILocation(line: 32, column: 38, scope: !19)
!73 = !DILocation(line: 32, column: 47, scope: !19)
!74 = !DILocation(line: 32, column: 5, scope: !19)
!75 = !DILocation(line: 33, column: 32, scope: !19)
!76 = !DILocation(line: 33, column: 38, scope: !19)
!77 = !DILocation(line: 33, column: 47, scope: !19)
!78 = !DILocation(line: 33, column: 5, scope: !19)
!79 = !DILocation(line: 34, column: 32, scope: !19)
!80 = !DILocation(line: 34, column: 38, scope: !19)
!81 = !DILocation(line: 34, column: 47, scope: !19)
!82 = !DILocation(line: 34, column: 5, scope: !19)
!83 = !DILocation(line: 35, column: 24, scope: !19)
!84 = !DILocation(line: 35, column: 5, scope: !19)
!85 = !DILocation(line: 36, column: 24, scope: !19)
!86 = !DILocation(line: 36, column: 5, scope: !19)
!87 = !DILocation(line: 37, column: 24, scope: !19)
!88 = !DILocation(line: 37, column: 5, scope: !19)
!89 = !DILocation(line: 40, column: 14, scope: !19)
!90 = !DILocation(line: 40, column: 20, scope: !19)
!91 = !DILocation(line: 40, column: 5, scope: !19)
!92 = !DILocation(line: 40, column: 30, scope: !19)
!93 = !DILocation(line: 41, column: 14, scope: !19)
!94 = !DILocation(line: 41, column: 20, scope: !19)
!95 = !DILocation(line: 41, column: 5, scope: !19)
!96 = !DILocation(line: 41, column: 30, scope: !19)
!97 = !DILocation(line: 42, column: 14, scope: !19)
!98 = !DILocation(line: 42, column: 20, scope: !19)
!99 = !DILocation(line: 42, column: 5, scope: !19)
!100 = !DILocation(line: 42, column: 30, scope: !19)
!101 = !DILocation(line: 45, column: 22, scope: !19)
!102 = !DILocation(line: 45, column: 28, scope: !19)
!103 = !DILocation(line: 45, column: 34, scope: !19)
!104 = !DILocation(line: 45, column: 40, scope: !19)
!105 = !DILocation(line: 45, column: 46, scope: !19)
!106 = !DILocation(line: 45, column: 5, scope: !19)
!107 = !DILocation(line: 49, column: 22, scope: !19)
!108 = !DILocation(line: 49, column: 28, scope: !19)
!109 = !DILocation(line: 49, column: 34, scope: !19)
!110 = !DILocation(line: 49, column: 40, scope: !19)
!111 = !DILocation(line: 49, column: 46, scope: !19)
!112 = !DILocation(line: 49, column: 5, scope: !19)
!113 = !DILocation(line: 52, column: 5, scope: !19)
!114 = !DILocation(line: 55, column: 17, scope: !19)
!115 = !DILocation(line: 55, column: 5, scope: !19)
!116 = !DILocation(line: 56, column: 18, scope: !19)
!117 = !DILocation(line: 56, column: 5, scope: !19)
!118 = !DILocation(line: 57, column: 18, scope: !19)
!119 = !DILocation(line: 57, column: 5, scope: !19)
!120 = !DILocation(line: 58, column: 18, scope: !19)
!121 = !DILocation(line: 58, column: 5, scope: !19)
!122 = !DILocation(line: 59, column: 10, scope: !19)
!123 = !DILocation(line: 59, column: 5, scope: !19)
!124 = !DILocation(line: 60, column: 5, scope: !19)
!125 = !DILocation(line: 62, column: 5, scope: !19)
!126 = !DILocation(line: 63, column: 1, scope: !19)
