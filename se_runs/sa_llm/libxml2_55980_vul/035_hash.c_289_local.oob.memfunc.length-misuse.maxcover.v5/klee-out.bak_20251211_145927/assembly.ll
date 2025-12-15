; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type { %struct._xmlHashEntry*, i32, i32 }
%struct._xmlHashEntry = type { i8*, i8*, i8*, i8*, i32, %struct._xmlHashEntry* }

@.str = private unnamed_addr constant [11 x i8] c"table_size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"(key >= 0 && key < table.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i8*, i8** %2, align 8, !dbg !29
  call void @free(i8* noundef %3) #5, !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !32 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable, align 8
  %3 = alloca %struct._xmlHashEntry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable* %2, metadata !35, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata %struct._xmlHashEntry** %3, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %5, metadata !47, metadata !DIExpression()), !dbg !48
  %6 = bitcast i32* %4 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %7 = load i32, i32* %4, align 4, !dbg !51
  %8 = icmp sgt i32 %7, 0, !dbg !52
  %9 = zext i1 %8 to i32, !dbg !52
  %10 = sext i32 %9 to i64, !dbg !51
  call void @klee_assume(i64 noundef %10), !dbg !53
  %11 = load i32, i32* %4, align 4, !dbg !54
  %12 = icmp slt i32 %11, 1000, !dbg !55
  %13 = zext i1 %12 to i32, !dbg !55
  %14 = sext i32 %13 to i64, !dbg !54
  call void @klee_assume(i64 noundef %14), !dbg !56
  %15 = load i32, i32* %4, align 4, !dbg !57
  %16 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !58
  store i32 %15, i32* %16, align 8, !dbg !59
  %17 = load i32, i32* %4, align 4, !dbg !60
  %18 = sext i32 %17 to i64, !dbg !60
  %19 = call noalias i8* @calloc(i64 noundef %18, i64 noundef 48) #5, !dbg !61
  %20 = bitcast i8* %19 to %struct._xmlHashEntry*, !dbg !62
  %21 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !63
  store %struct._xmlHashEntry* %20, %struct._xmlHashEntry** %21, align 8, !dbg !64
  %22 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 2, !dbg !65
  store i32 0, i32* %22, align 4, !dbg !66
  %23 = call noalias i8* @malloc(i64 noundef 48) #5, !dbg !67
  %24 = bitcast i8* %23 to %struct._xmlHashEntry*, !dbg !68
  store %struct._xmlHashEntry* %24, %struct._xmlHashEntry** %3, align 8, !dbg !69
  %25 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !70
  %26 = bitcast %struct._xmlHashEntry* %25 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !71
  %27 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !72
  %28 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %27, i32 0, i32 0, !dbg !73
  store i8* null, i8** %28, align 8, !dbg !74
  %29 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !75
  %30 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %29, i32 0, i32 1, !dbg !76
  store i8* null, i8** %30, align 8, !dbg !77
  %31 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !78
  %32 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %31, i32 0, i32 2, !dbg !79
  store i8* null, i8** %32, align 8, !dbg !80
  %33 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !81
  %34 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %33, i32 0, i32 3, !dbg !82
  store i8* null, i8** %34, align 8, !dbg !83
  %35 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !84
  %36 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %35, i32 0, i32 4, !dbg !85
  store i32 1, i32* %36, align 8, !dbg !86
  %37 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !87
  %38 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %37, i32 0, i32 5, !dbg !88
  store %struct._xmlHashEntry* null, %struct._xmlHashEntry** %38, align 8, !dbg !89
  %39 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !90
  %40 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %39, i32 0, i32 0, !dbg !91
  %41 = load i8*, i8** %40, align 8, !dbg !91
  %42 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !92
  %43 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %42, i32 0, i32 1, !dbg !93
  %44 = load i8*, i8** %43, align 8, !dbg !93
  %45 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !94
  %46 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %45, i32 0, i32 2, !dbg !95
  %47 = load i8*, i8** %46, align 8, !dbg !95
  %48 = call i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %2, i8* noundef %41, i8* noundef %44, i8* noundef %47), !dbg !96
  store i32 %48, i32* %5, align 4, !dbg !97
  %49 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !98
  %50 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %49, align 8, !dbg !98
  %51 = load i32, i32* %5, align 4, !dbg !99
  %52 = sext i32 %51 to i64, !dbg !100
  %53 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %50, i64 %52, !dbg !100
  %54 = getelementptr inbounds %struct._xmlHashEntry, %struct._xmlHashEntry* %53, i32 0, i32 4, !dbg !101
  store i32 0, i32* %54, align 8, !dbg !102
  %55 = load i32, i32* %5, align 4, !dbg !103
  %56 = icmp sge i32 %55, 0, !dbg !103
  br i1 %56, label %57, label %64, !dbg !103

57:                                               ; preds = %0
  %58 = load i32, i32* %5, align 4, !dbg !103
  %59 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 1, !dbg !103
  %60 = load i32, i32* %59, align 8, !dbg !103
  %61 = icmp slt i32 %58, %60, !dbg !103
  br i1 %61, label %62, label %64, !dbg !103

62:                                               ; preds = %57
  br i1 true, label %63, label %64, !dbg !103

63:                                               ; preds = %62
  br label %66, !dbg !103

64:                                               ; preds = %62, %57, %0
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !103
  br label %66, !dbg !103

66:                                               ; preds = %64, %63
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !104
  %68 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %2, i32 0, i32 0, !dbg !105
  %69 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %68, align 8, !dbg !105
  %70 = bitcast %struct._xmlHashEntry* %69 to i8*, !dbg !106
  call void @free(i8* noundef %70) #5, !dbg !107
  %71 = load %struct._xmlHashEntry*, %struct._xmlHashEntry** %3, align 8, !dbg !108
  %72 = bitcast %struct._xmlHashEntry* %71 to i8*, !dbg !108
  call void @free(i8* noundef %72) #5, !dbg !109
  ret i32 0, !dbg !110
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmlHashComputeKey(%struct._xmlHashTable* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !111 {
  %5 = alloca %struct._xmlHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._xmlHashTable* %0, %struct._xmlHashTable** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %5, metadata !115, metadata !DIExpression()), !dbg !116
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !117, metadata !DIExpression()), !dbg !118
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %9, metadata !123, metadata !DIExpression()), !dbg !124
  %10 = bitcast i32* %9 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !126
  %11 = load i32, i32* %9, align 4, !dbg !127
  %12 = icmp sge i32 %11, 0, !dbg !128
  %13 = zext i1 %12 to i32, !dbg !128
  %14 = sext i32 %13 to i64, !dbg !127
  call void @klee_assume(i64 noundef %14), !dbg !129
  %15 = load i32, i32* %9, align 4, !dbg !130
  %16 = load %struct._xmlHashTable*, %struct._xmlHashTable** %5, align 8, !dbg !131
  %17 = getelementptr inbounds %struct._xmlHashTable, %struct._xmlHashTable* %16, i32 0, i32 1, !dbg !132
  %18 = load i32, i32* %17, align 8, !dbg !132
  %19 = icmp slt i32 %15, %18, !dbg !133
  %20 = zext i1 %19 to i32, !dbg !133
  %21 = sext i32 %20 to i64, !dbg !130
  call void @klee_assume(i64 noundef %21), !dbg !134
  %22 = load i32, i32* %9, align 4, !dbg !135
  ret i32 %22, !dbg !136
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/035_hash.c_289_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "29a5703e2992d94207a348c2b11cf201")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashEntry", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashEntry", file: !1, line: 13, size: 384, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name2", scope: !5, file: !1, line: 15, baseType: !8, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name3", scope: !5, file: !1, line: 16, baseType: !8, size: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !5, file: !1, line: 17, baseType: !8, size: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5, file: !1, line: 18, baseType: !13, size: 32, offset: 256)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 19, baseType: !3, size: 64, offset: 320)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 38, type: !24, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !8}
!26 = !{}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 38, type: !8)
!28 = !DILocation(line: 38, column: 20, scope: !23)
!29 = !DILocation(line: 39, column: 10, scope: !23)
!30 = !DILocation(line: 39, column: 5, scope: !23)
!31 = !DILocation(line: 40, column: 1, scope: !23)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 43, type: !33, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{!13}
!35 = !DILocalVariable(name: "table", scope: !32, file: !1, line: 44, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !1, line: 11, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !1, line: 22, size: 128, elements: !38)
!38 = !{!39, !40, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !37, file: !1, line: 23, baseType: !3, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !37, file: !1, line: 24, baseType: !13, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "nbElems", scope: !37, file: !1, line: 25, baseType: !13, size: 32, offset: 96)
!42 = !DILocation(line: 44, column: 18, scope: !32)
!43 = !DILocalVariable(name: "iter", scope: !32, file: !1, line: 45, type: !3)
!44 = !DILocation(line: 45, column: 19, scope: !32)
!45 = !DILocalVariable(name: "table_size", scope: !32, file: !1, line: 46, type: !13)
!46 = !DILocation(line: 46, column: 9, scope: !32)
!47 = !DILocalVariable(name: "key", scope: !32, file: !1, line: 47, type: !13)
!48 = !DILocation(line: 47, column: 9, scope: !32)
!49 = !DILocation(line: 50, column: 24, scope: !32)
!50 = !DILocation(line: 50, column: 5, scope: !32)
!51 = !DILocation(line: 51, column: 17, scope: !32)
!52 = !DILocation(line: 51, column: 28, scope: !32)
!53 = !DILocation(line: 51, column: 5, scope: !32)
!54 = !DILocation(line: 52, column: 17, scope: !32)
!55 = !DILocation(line: 52, column: 28, scope: !32)
!56 = !DILocation(line: 52, column: 5, scope: !32)
!57 = !DILocation(line: 55, column: 18, scope: !32)
!58 = !DILocation(line: 55, column: 11, scope: !32)
!59 = !DILocation(line: 55, column: 16, scope: !32)
!60 = !DILocation(line: 56, column: 42, scope: !32)
!61 = !DILocation(line: 56, column: 35, scope: !32)
!62 = !DILocation(line: 56, column: 19, scope: !32)
!63 = !DILocation(line: 56, column: 11, scope: !32)
!64 = !DILocation(line: 56, column: 17, scope: !32)
!65 = !DILocation(line: 57, column: 11, scope: !32)
!66 = !DILocation(line: 57, column: 19, scope: !32)
!67 = !DILocation(line: 60, column: 28, scope: !32)
!68 = !DILocation(line: 60, column: 12, scope: !32)
!69 = !DILocation(line: 60, column: 10, scope: !32)
!70 = !DILocation(line: 61, column: 24, scope: !32)
!71 = !DILocation(line: 61, column: 5, scope: !32)
!72 = !DILocation(line: 62, column: 5, scope: !32)
!73 = !DILocation(line: 62, column: 11, scope: !32)
!74 = !DILocation(line: 62, column: 16, scope: !32)
!75 = !DILocation(line: 63, column: 5, scope: !32)
!76 = !DILocation(line: 63, column: 11, scope: !32)
!77 = !DILocation(line: 63, column: 17, scope: !32)
!78 = !DILocation(line: 64, column: 5, scope: !32)
!79 = !DILocation(line: 64, column: 11, scope: !32)
!80 = !DILocation(line: 64, column: 17, scope: !32)
!81 = !DILocation(line: 65, column: 5, scope: !32)
!82 = !DILocation(line: 65, column: 11, scope: !32)
!83 = !DILocation(line: 65, column: 19, scope: !32)
!84 = !DILocation(line: 66, column: 5, scope: !32)
!85 = !DILocation(line: 66, column: 11, scope: !32)
!86 = !DILocation(line: 66, column: 17, scope: !32)
!87 = !DILocation(line: 67, column: 5, scope: !32)
!88 = !DILocation(line: 67, column: 11, scope: !32)
!89 = !DILocation(line: 67, column: 16, scope: !32)
!90 = !DILocation(line: 70, column: 37, scope: !32)
!91 = !DILocation(line: 70, column: 43, scope: !32)
!92 = !DILocation(line: 70, column: 49, scope: !32)
!93 = !DILocation(line: 70, column: 55, scope: !32)
!94 = !DILocation(line: 70, column: 62, scope: !32)
!95 = !DILocation(line: 70, column: 68, scope: !32)
!96 = !DILocation(line: 70, column: 11, scope: !32)
!97 = !DILocation(line: 70, column: 9, scope: !32)
!98 = !DILocation(line: 73, column: 11, scope: !32)
!99 = !DILocation(line: 73, column: 17, scope: !32)
!100 = !DILocation(line: 73, column: 5, scope: !32)
!101 = !DILocation(line: 73, column: 22, scope: !32)
!102 = !DILocation(line: 73, column: 28, scope: !32)
!103 = !DILocation(line: 76, column: 5, scope: !32)
!104 = !DILocation(line: 79, column: 5, scope: !32)
!105 = !DILocation(line: 82, column: 16, scope: !32)
!106 = !DILocation(line: 82, column: 10, scope: !32)
!107 = !DILocation(line: 82, column: 5, scope: !32)
!108 = !DILocation(line: 83, column: 10, scope: !32)
!109 = !DILocation(line: 83, column: 5, scope: !32)
!110 = !DILocation(line: 85, column: 5, scope: !32)
!111 = distinct !DISubprogram(name: "xmlHashComputeKey", scope: !1, file: !1, line: 29, type: !112, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!112 = !DISubroutineType(types: !113)
!113 = !{!13, !114, !8, !8, !8}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!115 = !DILocalVariable(name: "table", arg: 1, scope: !111, file: !1, line: 29, type: !114)
!116 = !DILocation(line: 29, column: 44, scope: !111)
!117 = !DILocalVariable(name: "name", arg: 2, scope: !111, file: !1, line: 29, type: !8)
!118 = !DILocation(line: 29, column: 57, scope: !111)
!119 = !DILocalVariable(name: "name2", arg: 3, scope: !111, file: !1, line: 29, type: !8)
!120 = !DILocation(line: 29, column: 69, scope: !111)
!121 = !DILocalVariable(name: "name3", arg: 4, scope: !111, file: !1, line: 29, type: !8)
!122 = !DILocation(line: 29, column: 82, scope: !111)
!123 = !DILocalVariable(name: "key", scope: !111, file: !1, line: 30, type: !13)
!124 = !DILocation(line: 30, column: 9, scope: !111)
!125 = !DILocation(line: 31, column: 24, scope: !111)
!126 = !DILocation(line: 31, column: 5, scope: !111)
!127 = !DILocation(line: 32, column: 17, scope: !111)
!128 = !DILocation(line: 32, column: 21, scope: !111)
!129 = !DILocation(line: 32, column: 5, scope: !111)
!130 = !DILocation(line: 33, column: 17, scope: !111)
!131 = !DILocation(line: 33, column: 23, scope: !111)
!132 = !DILocation(line: 33, column: 30, scope: !111)
!133 = !DILocation(line: 33, column: 21, scope: !111)
!134 = !DILocation(line: 33, column: 5, scope: !111)
!135 = !DILocation(line: 34, column: 12, scope: !111)
!136 = !DILocation(line: 34, column: 5, scope: !111)
