; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/033_hash.c_1140_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/033_hash.c_1140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlHashTable = type opaque

@.str = private unnamed_addr constant [5 x i8] c"key1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"key2\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"key3\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/033_hash.c_1140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlHashTable*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlHashTable** %2, metadata !21, metadata !DIExpression()), !dbg !27
  %8 = call %struct._xmlHashTable* @xmlHashCreate(i32 noundef 8), !dbg !28
  store %struct._xmlHashTable* %8, %struct._xmlHashTable** %2, align 8, !dbg !27
  %9 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !29
  %10 = icmp ne %struct._xmlHashTable* %9, null, !dbg !29
  br i1 %10, label %12, label %11, !dbg !31

11:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !32
  br label %42, !dbg !32

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !37
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i8** %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8, !dbg !43
  %13 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !44
  %14 = load i8*, i8** %3, align 8, !dbg !45
  %15 = load i8*, i8** %3, align 8, !dbg !46
  %16 = load i8*, i8** %3, align 8, !dbg !47
  %17 = load i8*, i8** %6, align 8, !dbg !48
  %18 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %13, i8* noundef %14, i8* noundef %15, i8* noundef %16, i8* noundef %17), !dbg !49
  %19 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !50
  %20 = load i8*, i8** %4, align 8, !dbg !51
  %21 = load i8*, i8** %4, align 8, !dbg !52
  %22 = load i8*, i8** %4, align 8, !dbg !53
  %23 = load i8*, i8** %6, align 8, !dbg !54
  %24 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %19, i8* noundef %20, i8* noundef %21, i8* noundef %22, i8* noundef %23), !dbg !55
  %25 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !56
  %26 = load i8*, i8** %5, align 8, !dbg !57
  %27 = load i8*, i8** %5, align 8, !dbg !58
  %28 = load i8*, i8** %5, align 8, !dbg !59
  %29 = load i8*, i8** %6, align 8, !dbg !60
  %30 = call i32 @xmlHashAddEntry3(%struct._xmlHashTable* noundef %25, i8* noundef %26, i8* noundef %27, i8* noundef %28, i8* noundef %29), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  %31 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !64
  %32 = load i8*, i8** %4, align 8, !dbg !65
  %33 = load i8*, i8** %4, align 8, !dbg !66
  %34 = load i8*, i8** %4, align 8, !dbg !67
  %35 = call i32 @xmlHashRemoveEntry3(%struct._xmlHashTable* noundef %31, i8* noundef %32, i8* noundef %33, i8* noundef %34, void (i8*, i8*)* noundef null), !dbg !68
  store i32 %35, i32* %7, align 4, !dbg !63
  %36 = load i32, i32* %7, align 4, !dbg !69
  %37 = icmp eq i32 %36, 0, !dbg !71
  br i1 %37, label %38, label %40, !dbg !72

38:                                               ; preds = %12
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !73
  br label %40, !dbg !75

40:                                               ; preds = %38, %12
  %41 = load %struct._xmlHashTable*, %struct._xmlHashTable** %2, align 8, !dbg !76
  call void @xmlHashFree(%struct._xmlHashTable* noundef %41, void (i8*, i8*)* noundef null), !dbg !77
  store i32 0, i32* %1, align 4, !dbg !78
  br label %42, !dbg !78

42:                                               ; preds = %40, %11
  %43 = load i32, i32* %1, align 4, !dbg !79
  ret i32 %43, !dbg !79
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlHashTable* @xmlHashCreate(i32 noundef) #2

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
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/033_hash.c_1140_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f69bc3200192c0dfb3e3fbec62b2acb6")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !6, line: 28, baseType: !7)
!6 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !17, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "hash", scope: !16, file: !1, line: 8, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTablePtr", file: !23, line: 22, baseType: !24)
!23 = !DIFile(filename: "/usr/include/libxml2/libxml/hash.h", directory: "", checksumkind: CSK_MD5, checksum: "af6927d60ab5a971b68a65626d903bb2")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlHashTable", file: !23, line: 21, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlHashTable", file: !23, line: 21, flags: DIFlagFwdDecl)
!27 = !DILocation(line: 8, column: 21, scope: !16)
!28 = !DILocation(line: 8, column: 28, scope: !16)
!29 = !DILocation(line: 9, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !16, file: !1, line: 9, column: 9)
!31 = !DILocation(line: 9, column: 9, scope: !16)
!32 = !DILocation(line: 9, column: 16, scope: !30)
!33 = !DILocalVariable(name: "key1", scope: !16, file: !1, line: 11, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DILocation(line: 11, column: 17, scope: !16)
!38 = !DILocalVariable(name: "key2", scope: !16, file: !1, line: 12, type: !34)
!39 = !DILocation(line: 12, column: 17, scope: !16)
!40 = !DILocalVariable(name: "key3", scope: !16, file: !1, line: 13, type: !34)
!41 = !DILocation(line: 13, column: 17, scope: !16)
!42 = !DILocalVariable(name: "payload", scope: !16, file: !1, line: 14, type: !3)
!43 = !DILocation(line: 14, column: 11, scope: !16)
!44 = !DILocation(line: 16, column: 22, scope: !16)
!45 = !DILocation(line: 16, column: 39, scope: !16)
!46 = !DILocation(line: 16, column: 56, scope: !16)
!47 = !DILocation(line: 16, column: 73, scope: !16)
!48 = !DILocation(line: 16, column: 79, scope: !16)
!49 = !DILocation(line: 16, column: 5, scope: !16)
!50 = !DILocation(line: 17, column: 22, scope: !16)
!51 = !DILocation(line: 17, column: 39, scope: !16)
!52 = !DILocation(line: 17, column: 56, scope: !16)
!53 = !DILocation(line: 17, column: 73, scope: !16)
!54 = !DILocation(line: 17, column: 79, scope: !16)
!55 = !DILocation(line: 17, column: 5, scope: !16)
!56 = !DILocation(line: 18, column: 22, scope: !16)
!57 = !DILocation(line: 18, column: 39, scope: !16)
!58 = !DILocation(line: 18, column: 56, scope: !16)
!59 = !DILocation(line: 18, column: 73, scope: !16)
!60 = !DILocation(line: 18, column: 79, scope: !16)
!61 = !DILocation(line: 18, column: 5, scope: !16)
!62 = !DILocalVariable(name: "removeResult", scope: !16, file: !1, line: 20, type: !19)
!63 = !DILocation(line: 20, column: 9, scope: !16)
!64 = !DILocation(line: 20, column: 44, scope: !16)
!65 = !DILocation(line: 20, column: 61, scope: !16)
!66 = !DILocation(line: 20, column: 78, scope: !16)
!67 = !DILocation(line: 20, column: 95, scope: !16)
!68 = !DILocation(line: 20, column: 24, scope: !16)
!69 = !DILocation(line: 21, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !16, file: !1, line: 21, column: 9)
!71 = !DILocation(line: 21, column: 22, scope: !70)
!72 = !DILocation(line: 21, column: 9, scope: !16)
!73 = !DILocation(line: 22, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 21, column: 28)
!75 = !DILocation(line: 23, column: 5, scope: !74)
!76 = !DILocation(line: 25, column: 17, scope: !16)
!77 = !DILocation(line: 25, column: 5, scope: !16)
!78 = !DILocation(line: 26, column: 5, scope: !16)
!79 = !DILocation(line: 27, column: 1, scope: !16)
