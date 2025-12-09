; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca [10 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !22, metadata !DIExpression()), !dbg !28
  %7 = call %struct._xmlHashTable* @xmlHashCreate(i32 noundef 8), !dbg !29
  store %struct._xmlHashTable* %7, %struct._xmlHashTable** %2, align 8, !dbg !28
  %8 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !30
  %9 = icmp ne %struct._xmlHashTable* %8, null, !dbg !30
  br i1 %9, label %11, label %10, !dbg !32

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !33
  br label %31, !dbg !33

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata [10 x i8]* %3, metadata !34, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [10 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !43
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !44
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !45
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !46
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  %14 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !48
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !49
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 9, !dbg !50
  store i8 0, i8* %15, align 1, !dbg !51
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 9, !dbg !52
  store i8 0, i8* %16, align 1, !dbg !53
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 9, !dbg !54
  store i8 0, i8* %17, align 1, !dbg !55
  call void @llvm.dbg.declare(metadata i8** %6, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* inttoptr (i64 4660 to i8*), i8** %6, align 8, !dbg !57
  %18 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !58
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !59
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !60
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !61
  %22 = load i8*, i8** %6, align 8, !dbg !62
  %23 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %18, i8* noundef %19, i8* noundef %20, i8* noundef %21, i8* noundef %22), !dbg !63
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  %25 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !65
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0, !dbg !66
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !67
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !68
  %29 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %25, i8* noundef %26, i8* noundef %27, i8* noundef %28, void (i8*, i8*)* noundef null), !dbg !69
  %30 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !70
  call void @xmlHashFree(%struct._xmlHashTable* noundef %30, void (i8*, i8*)* noundef null), !dbg !71
  store i32 0, i32* %1, align 4, !dbg !72
  br label %31, !dbg !72

31:                                               ; preds = %11, %10
  %32 = load i32, i32* %1, align 4, !dbg !73
  ret i32 %32, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlHashTable* @xmlHashCreate(i32 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef, i8* noundef, i8* noundef, i8* noundef, void (i8*, i8*)* noundef) #2

declare void @xmlHashFree(%struct._xmlHashTable* noundef, void (i8*, i8*)* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/032_hash.c_1134_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "40531f03e2e740d7b05772a4a24af1b5")
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
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !18, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "hash", scope: !17, file: !1, line: 7, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !24, line: 22, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !24, line: 21, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !24, line: 21, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 7, column: 21, scope: !17)
!29 = !DILocation(line: 7, column: 28, scope: !17)
!30 = !DILocation(line: 8, column: 10, scope: !31)
!31 = distinct !DILexicalBlock(scope: !17, file: !1, line: 8, column: 9)
!32 = !DILocation(line: 8, column: 9, scope: !17)
!33 = !DILocation(line: 8, column: 16, scope: !31)
!34 = !DILocalVariable(name: "key1", scope: !17, file: !1, line: 10, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 80, elements: !37)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{!38}
!38 = !DISubrange(count: 10)
!39 = !DILocation(line: 10, column: 10, scope: !17)
!40 = !DILocalVariable(name: "key2", scope: !17, file: !1, line: 10, type: !35)
!41 = !DILocation(line: 10, column: 20, scope: !17)
!42 = !DILocalVariable(name: "key3", scope: !17, file: !1, line: 10, type: !35)
!43 = !DILocation(line: 10, column: 30, scope: !17)
!44 = !DILocation(line: 11, column: 24, scope: !17)
!45 = !DILocation(line: 11, column: 5, scope: !17)
!46 = !DILocation(line: 12, column: 24, scope: !17)
!47 = !DILocation(line: 12, column: 5, scope: !17)
!48 = !DILocation(line: 13, column: 24, scope: !17)
!49 = !DILocation(line: 13, column: 5, scope: !17)
!50 = !DILocation(line: 14, column: 5, scope: !17)
!51 = !DILocation(line: 14, column: 26, scope: !17)
!52 = !DILocation(line: 15, column: 5, scope: !17)
!53 = !DILocation(line: 15, column: 26, scope: !17)
!54 = !DILocation(line: 16, column: 5, scope: !17)
!55 = !DILocation(line: 16, column: 26, scope: !17)
!56 = !DILocalVariable(name: "data", scope: !17, file: !1, line: 18, type: !3)
!57 = !DILocation(line: 18, column: 11, scope: !17)
!58 = !DILocation(line: 20, column: 22, scope: !17)
!59 = !DILocation(line: 20, column: 44, scope: !17)
!60 = !DILocation(line: 20, column: 66, scope: !17)
!61 = !DILocation(line: 20, column: 88, scope: !17)
!62 = !DILocation(line: 20, column: 94, scope: !17)
!63 = !DILocation(line: 20, column: 5, scope: !17)
!64 = !DILocation(line: 22, column: 5, scope: !17)
!65 = !DILocation(line: 23, column: 25, scope: !17)
!66 = !DILocation(line: 23, column: 47, scope: !17)
!67 = !DILocation(line: 23, column: 69, scope: !17)
!68 = !DILocation(line: 23, column: 91, scope: !17)
!69 = !DILocation(line: 23, column: 5, scope: !17)
!70 = !DILocation(line: 25, column: 17, scope: !17)
!71 = !DILocation(line: 25, column: 5, scope: !17)
!72 = !DILocation(line: 26, column: 5, scope: !17)
!73 = !DILocation(line: 27, column: 1, scope: !17)
