; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/046_hash.c_365_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/046_hash.c_365_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"name2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"name3\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/046_hash.c_365_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i8*)*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata void (i8*, i8*)** %7, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %8, metadata !43, metadata !DIExpression()), !dbg !44
  %9 = call %struct._xmlHashTable* @xmlHashCreate(i32 noundef 0), !dbg !45
  store %struct._xmlHashTable* %9, %struct._xmlHashTable** %2, align 8, !dbg !46
  %10 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !47
  %11 = icmp eq %struct._xmlHashTable* %10, null, !dbg !49
  br i1 %11, label %12, label %13, !dbg !50

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !51
  br label %35, !dbg !51

13:                                               ; preds = %0
  %14 = bitcast i8** %3 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %15 = bitcast i8** %4 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !55
  %16 = bitcast i8** %5 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !57
  %17 = bitcast i8** %6 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !59
  %18 = bitcast void (i8*, i8*)** %7 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)), !dbg !61
  %19 = bitcast i32* %8 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !63
  %20 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !64
  %21 = load i8*, i8** %3, align 8, !dbg !65
  %22 = load i8*, i8** %4, align 8, !dbg !66
  %23 = load i8*, i8** %5, align 8, !dbg !67
  %24 = load i8*, i8** %6, align 8, !dbg !68
  %25 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %20, i8* noundef %21, i8* noundef %22, i8* noundef %23, i8* noundef %24), !dbg !69
  %26 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !70
  %27 = load i8*, i8** %3, align 8, !dbg !71
  %28 = load i8*, i8** %4, align 8, !dbg !72
  %29 = load i8*, i8** %5, align 8, !dbg !73
  %30 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !74
  %31 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29, void (i8*, i8*)* noundef %30), !dbg !75
  store i32 %31, i32* %8, align 4, !dbg !76
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  %33 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !78
  %34 = load void (i8*, i8*)*, void (i8*, i8*)** %7, align 8, !dbg !79
  call void @xmlHashFree(%struct._xmlHashTable* noundef %33, void (i8*, i8*)* noundef %34), !dbg !80
  store i32 0, i32* %1, align 4, !dbg !81
  br label %35, !dbg !81

35:                                               ; preds = %13, %12
  %36 = load i32, i32* %1, align 4, !dbg !82
  ret i32 %36, !dbg !82
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlHashTable* @xmlHashCreate(i32 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #2

declare i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, void (i8*, i8*)* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlHashFree(%struct._xmlHashTable* noundef, void (i8*, i8*)* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/046_hash.c_365_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "1e708a82996c7c2066497ab5f370a8df")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "hash", scope: !12, file: !1, line: 6, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !19, line: 22, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !19, line: 21, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !19, line: 21, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 6, column: 21, scope: !12)
!24 = !DILocalVariable(name: "name", scope: !12, file: !1, line: 7, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !28, line: 28, baseType: !29)
!28 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DILocation(line: 7, column: 20, scope: !12)
!31 = !DILocalVariable(name: "name2", scope: !12, file: !1, line: 7, type: !25)
!32 = !DILocation(line: 7, column: 27, scope: !12)
!33 = !DILocalVariable(name: "name3", scope: !12, file: !1, line: 7, type: !25)
!34 = !DILocation(line: 7, column: 35, scope: !12)
!35 = !DILocalVariable(name: "userdata", scope: !12, file: !1, line: 8, type: !3)
!36 = !DILocation(line: 8, column: 11, scope: !12)
!37 = !DILocalVariable(name: "f", scope: !12, file: !1, line: 9, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashDeallocator", file: !19, line: 69, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3, !25}
!42 = !DILocation(line: 9, column: 24, scope: !12)
!43 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 10, type: !15)
!44 = !DILocation(line: 10, column: 9, scope: !12)
!45 = !DILocation(line: 13, column: 12, scope: !12)
!46 = !DILocation(line: 13, column: 10, scope: !12)
!47 = !DILocation(line: 14, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !12, file: !1, line: 14, column: 9)
!49 = !DILocation(line: 14, column: 14, scope: !48)
!50 = !DILocation(line: 14, column: 9, scope: !12)
!51 = !DILocation(line: 14, column: 23, scope: !48)
!52 = !DILocation(line: 16, column: 24, scope: !12)
!53 = !DILocation(line: 16, column: 5, scope: !12)
!54 = !DILocation(line: 17, column: 24, scope: !12)
!55 = !DILocation(line: 17, column: 5, scope: !12)
!56 = !DILocation(line: 18, column: 24, scope: !12)
!57 = !DILocation(line: 18, column: 5, scope: !12)
!58 = !DILocation(line: 19, column: 24, scope: !12)
!59 = !DILocation(line: 19, column: 5, scope: !12)
!60 = !DILocation(line: 20, column: 24, scope: !12)
!61 = !DILocation(line: 20, column: 5, scope: !12)
!62 = !DILocation(line: 21, column: 24, scope: !12)
!63 = !DILocation(line: 21, column: 5, scope: !12)
!64 = !DILocation(line: 24, column: 22, scope: !12)
!65 = !DILocation(line: 24, column: 28, scope: !12)
!66 = !DILocation(line: 24, column: 34, scope: !12)
!67 = !DILocation(line: 24, column: 41, scope: !12)
!68 = !DILocation(line: 24, column: 48, scope: !12)
!69 = !DILocation(line: 24, column: 5, scope: !12)
!70 = !DILocation(line: 28, column: 31, scope: !12)
!71 = !DILocation(line: 28, column: 37, scope: !12)
!72 = !DILocation(line: 28, column: 43, scope: !12)
!73 = !DILocation(line: 28, column: 50, scope: !12)
!74 = !DILocation(line: 28, column: 57, scope: !12)
!75 = !DILocation(line: 28, column: 11, scope: !12)
!76 = !DILocation(line: 28, column: 9, scope: !12)
!77 = !DILocation(line: 31, column: 5, scope: !12)
!78 = !DILocation(line: 33, column: 17, scope: !12)
!79 = !DILocation(line: 33, column: 23, scope: !12)
!80 = !DILocation(line: 33, column: 5, scope: !12)
!81 = !DILocation(line: 34, column: 5, scope: !12)
!82 = !DILocation(line: 35, column: 1, scope: !12)
