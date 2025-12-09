; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"lengths\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i8*)*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8** %3, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %7, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [3 x i32]* %8, metadata !43, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %9, metadata !48, metadata !DIExpression()), !dbg !49
  %11 = call %struct._xmlHashTable* @xmlHashCreate(i32 noundef 8), !dbg !50
  store %struct._xmlHashTable* %11, %struct._xmlHashTable** %2, align 8, !dbg !51
  %12 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !52
  %13 = icmp eq %struct._xmlHashTable* %12, null, !dbg !54
  br i1 %13, label %14, label %15, !dbg !55

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !56
  br label %61, !dbg !56

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8, !dbg !57
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8, !dbg !58
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8, !dbg !59
  store i8* null, i8** %6, align 8, !dbg !60
  store void (i8*, i8*)* null, void (i8*, i8*)** %7, align 8, !dbg !61
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0, !dbg !62
  %17 = bitcast i32* %16 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %10, metadata !64, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %10, align 4, !dbg !66
  br label %18, !dbg !67

18:                                               ; preds = %36, %15
  %19 = load i32, i32* %10, align 4, !dbg !68
  %20 = icmp slt i32 %19, 3, !dbg !70
  br i1 %20, label %21, label %39, !dbg !71

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4, !dbg !72
  %23 = sext i32 %22 to i64, !dbg !74
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %23, !dbg !74
  %25 = load i32, i32* %24, align 4, !dbg !74
  %26 = icmp sge i32 %25, 0, !dbg !75
  %27 = zext i1 %26 to i32, !dbg !75
  %28 = sext i32 %27 to i64, !dbg !74
  call void @klee_assume(i64 noundef %28), !dbg !76
  %29 = load i32, i32* %10, align 4, !dbg !77
  %30 = sext i32 %29 to i64, !dbg !78
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %30, !dbg !78
  %32 = load i32, i32* %31, align 4, !dbg !78
  %33 = icmp slt i32 %32, 1024, !dbg !79
  %34 = zext i1 %33 to i32, !dbg !79
  %35 = sext i32 %34 to i64, !dbg !78
  call void @klee_assume(i64 noundef %35), !dbg !80
  br label %36, !dbg !81

36:                                               ; preds = %21
  %37 = load i32, i32* %10, align 4, !dbg !82
  %38 = add nsw i32 %37, 1, !dbg !82
  store i32 %38, i32* %10, align 4, !dbg !82
  br label %18, !dbg !83, !llvm.loop !84

39:                                               ; preds = %18
  %40 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !87
  %41 = load i8*, i8** %3, align 8, !dbg !88
  %42 = load i8*, i8** %4, align 8, !dbg !89
  %43 = load i8*, i8** %5, align 8, !dbg !90
  %44 = load i8*, i8** %6, align 8, !dbg !91
  %45 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %40, i8* noundef %41, i8* noundef %42, i8* noundef %43, i8* noundef %44), !dbg !92
  store i32 %45, i32* %9, align 4, !dbg !93
  %46 = load i32, i32* %9, align 4, !dbg !94
  %47 = icmp ne i32 %46, 0, !dbg !96
  br i1 %47, label %48, label %51, !dbg !97

48:                                               ; preds = %39
  %49 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !98
  %50 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !100
  call void @xmlHashFree(%struct._xmlHashTable* noundef %49, void (i8*, i8*)* noundef %50), !dbg !101
  store i32 0, i32* %1, align 4, !dbg !102
  br label %61, !dbg !102

51:                                               ; preds = %39
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  %53 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !104
  %54 = load i8*, i8** %3, align 8, !dbg !105
  %55 = load i8*, i8** %4, align 8, !dbg !106
  %56 = load i8*, i8** %5, align 8, !dbg !107
  %57 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !108
  %58 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %53, i8* noundef %54, i8* noundef %55, i8* noundef %56, void (i8*, i8*)* noundef %57), !dbg !109
  store i32 %58, i32* %9, align 4, !dbg !110
  %59 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !111
  %60 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !112
  call void @xmlHashFree(%struct._xmlHashTable* noundef %59, void (i8*, i8*)* noundef %60), !dbg !113
  store i32 0, i32* %1, align 4, !dbg !114
  br label %61, !dbg !114

61:                                               ; preds = %51, %48, %14
  %62 = load i32, i32* %1, align 4, !dbg !115
  ret i32 %62, !dbg !115
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlHashTable* @xmlHashCreate(i32 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare void @xmlHashFree(%struct._xmlHashTable* noundef, void (i8*, i8*)* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, void (i8*, i8*)* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/039_hash.c_490_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "8dd2484a2f1846fb177e2d45993d4f57")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !7, line: 28, baseType: !8)
!7 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !18, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "hash", scope: !17, file: !1, line: 8, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !24, line: 22, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !24, line: 21, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !24, line: 21, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 8, column: 21, scope: !17)
!29 = !DILocalVariable(name: "key", scope: !17, file: !1, line: 9, type: !4)
!30 = !DILocation(line: 9, column: 20, scope: !17)
!31 = !DILocalVariable(name: "key2", scope: !17, file: !1, line: 9, type: !4)
!32 = !DILocation(line: 9, column: 26, scope: !17)
!33 = !DILocalVariable(name: "key3", scope: !17, file: !1, line: 9, type: !4)
!34 = !DILocation(line: 9, column: 33, scope: !17)
!35 = !DILocalVariable(name: "userdata", scope: !17, file: !1, line: 10, type: !3)
!36 = !DILocation(line: 10, column: 11, scope: !17)
!37 = !DILocalVariable(name: "f", scope: !17, file: !1, line: 11, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashDeallocator", file: !24, line: 69, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3, !4}
!42 = !DILocation(line: 11, column: 24, scope: !17)
!43 = !DILocalVariable(name: "lengths", scope: !17, file: !1, line: 12, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 96, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DILocation(line: 12, column: 9, scope: !17)
!48 = !DILocalVariable(name: "ret", scope: !17, file: !1, line: 13, type: !20)
!49 = !DILocation(line: 13, column: 9, scope: !17)
!50 = !DILocation(line: 15, column: 12, scope: !17)
!51 = !DILocation(line: 15, column: 10, scope: !17)
!52 = !DILocation(line: 16, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !17, file: !1, line: 16, column: 9)
!54 = !DILocation(line: 16, column: 14, scope: !53)
!55 = !DILocation(line: 16, column: 9, scope: !17)
!56 = !DILocation(line: 16, column: 23, scope: !53)
!57 = !DILocation(line: 18, column: 9, scope: !17)
!58 = !DILocation(line: 19, column: 10, scope: !17)
!59 = !DILocation(line: 20, column: 10, scope: !17)
!60 = !DILocation(line: 21, column: 14, scope: !17)
!61 = !DILocation(line: 22, column: 7, scope: !17)
!62 = !DILocation(line: 24, column: 24, scope: !17)
!63 = !DILocation(line: 24, column: 5, scope: !17)
!64 = !DILocalVariable(name: "i", scope: !65, file: !1, line: 25, type: !20)
!65 = distinct !DILexicalBlock(scope: !17, file: !1, line: 25, column: 5)
!66 = !DILocation(line: 25, column: 14, scope: !65)
!67 = !DILocation(line: 25, column: 10, scope: !65)
!68 = !DILocation(line: 25, column: 21, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 25, column: 5)
!70 = !DILocation(line: 25, column: 23, scope: !69)
!71 = !DILocation(line: 25, column: 5, scope: !65)
!72 = !DILocation(line: 26, column: 29, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 25, column: 33)
!74 = !DILocation(line: 26, column: 21, scope: !73)
!75 = !DILocation(line: 26, column: 32, scope: !73)
!76 = !DILocation(line: 26, column: 9, scope: !73)
!77 = !DILocation(line: 27, column: 29, scope: !73)
!78 = !DILocation(line: 27, column: 21, scope: !73)
!79 = !DILocation(line: 27, column: 32, scope: !73)
!80 = !DILocation(line: 27, column: 9, scope: !73)
!81 = !DILocation(line: 28, column: 5, scope: !73)
!82 = !DILocation(line: 25, column: 29, scope: !69)
!83 = !DILocation(line: 25, column: 5, scope: !69)
!84 = distinct !{!84, !71, !85, !86}
!85 = !DILocation(line: 28, column: 5, scope: !65)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 30, column: 28, scope: !17)
!88 = !DILocation(line: 30, column: 34, scope: !17)
!89 = !DILocation(line: 30, column: 39, scope: !17)
!90 = !DILocation(line: 30, column: 45, scope: !17)
!91 = !DILocation(line: 30, column: 51, scope: !17)
!92 = !DILocation(line: 30, column: 11, scope: !17)
!93 = !DILocation(line: 30, column: 9, scope: !17)
!94 = !DILocation(line: 31, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !17, file: !1, line: 31, column: 9)
!96 = !DILocation(line: 31, column: 13, scope: !95)
!97 = !DILocation(line: 31, column: 9, scope: !17)
!98 = !DILocation(line: 32, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 31, column: 19)
!100 = !DILocation(line: 32, column: 27, scope: !99)
!101 = !DILocation(line: 32, column: 9, scope: !99)
!102 = !DILocation(line: 33, column: 9, scope: !99)
!103 = !DILocation(line: 36, column: 5, scope: !17)
!104 = !DILocation(line: 37, column: 31, scope: !17)
!105 = !DILocation(line: 37, column: 37, scope: !17)
!106 = !DILocation(line: 37, column: 42, scope: !17)
!107 = !DILocation(line: 37, column: 48, scope: !17)
!108 = !DILocation(line: 37, column: 54, scope: !17)
!109 = !DILocation(line: 37, column: 11, scope: !17)
!110 = !DILocation(line: 37, column: 9, scope: !17)
!111 = !DILocation(line: 39, column: 17, scope: !17)
!112 = !DILocation(line: 39, column: 23, scope: !17)
!113 = !DILocation(line: 39, column: 5, scope: !17)
!114 = !DILocation(line: 40, column: 5, scope: !17)
!115 = !DILocation(line: 41, column: 1, scope: !17)
