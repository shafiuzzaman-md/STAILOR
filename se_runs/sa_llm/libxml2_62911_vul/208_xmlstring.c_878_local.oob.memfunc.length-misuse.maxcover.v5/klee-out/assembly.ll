; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/208_xmlstring.c_878_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/208_xmlstring.c_878_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@xmlMallocAtomic = external global i8* (i64)*, align 8
@.str = private unnamed_addr constant [4 x i8] c"utf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/208_xmlstring.c_878_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !DIExpression()), !dbg !28
  %6 = load i8* (i64)*, i8* (i64)** @xmlMallocAtomic, align 8, !dbg !29
  %7 = call i8* %6(i64 noundef 1024), !dbg !29
  store i8* %7, i8** %2, align 8, !dbg !30
  %8 = load i8*, i8** %2, align 8, !dbg !31
  %9 = icmp eq i8* %8, null, !dbg !33
  br i1 %9, label %10, label %11, !dbg !34

10:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !35
  br label %30, !dbg !35

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8, !dbg !36
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %13 = bitcast i32* %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %14 = load i32, i32* %3, align 4, !dbg !40
  %15 = icmp sge i32 %14, 0, !dbg !41
  %16 = zext i1 %15 to i32, !dbg !41
  %17 = sext i32 %16 to i64, !dbg !40
  call void @klee_assume(i64 noundef %17), !dbg !42
  %18 = load i8*, i8** %2, align 8, !dbg !43
  %19 = load i32, i32* %3, align 4, !dbg !44
  %20 = call i8* @xmlUTF8Strndup(i8* noundef %18, i32 noundef %19), !dbg !45
  store i8* %20, i8** %5, align 8, !dbg !46
  %21 = load i8*, i8** %5, align 8, !dbg !47
  %22 = icmp ne i8* %21, null, !dbg !49
  br i1 %22, label %23, label %27, !dbg !50

23:                                               ; preds = %11
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !51
  %25 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !53
  %26 = load i8*, i8** %5, align 8, !dbg !54
  call void %25(i8* noundef %26), !dbg !53
  br label %27, !dbg !55

27:                                               ; preds = %23, %11
  %28 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !56
  %29 = load i8*, i8** %2, align 8, !dbg !57
  call void %28(i8* noundef %29), !dbg !56
  store i32 0, i32* %1, align 4, !dbg !58
  br label %30, !dbg !58

30:                                               ; preds = %27, %10
  %31 = load i32, i32* %1, align 4, !dbg !59
  ret i32 %31, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare i8* @xmlUTF8Strndup(i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/208_xmlstring.c_878_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "88a5fc673e39ecd770cfbec282efbe97")
!2 = !{!3, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !17, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "utf", scope: !16, file: !1, line: 6, type: !3)
!22 = !DILocation(line: 6, column: 14, scope: !16)
!23 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 7, type: !19)
!24 = !DILocation(line: 7, column: 9, scope: !16)
!25 = !DILocalVariable(name: "size", scope: !16, file: !1, line: 8, type: !19)
!26 = !DILocation(line: 8, column: 9, scope: !16)
!27 = !DILocalVariable(name: "ret", scope: !16, file: !1, line: 9, type: !3)
!28 = !DILocation(line: 9, column: 14, scope: !16)
!29 = !DILocation(line: 15, column: 22, scope: !16)
!30 = !DILocation(line: 15, column: 9, scope: !16)
!31 = !DILocation(line: 16, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !16, file: !1, line: 16, column: 9)
!33 = !DILocation(line: 16, column: 13, scope: !32)
!34 = !DILocation(line: 16, column: 9, scope: !16)
!35 = !DILocation(line: 16, column: 22, scope: !32)
!36 = !DILocation(line: 17, column: 24, scope: !16)
!37 = !DILocation(line: 17, column: 5, scope: !16)
!38 = !DILocation(line: 20, column: 24, scope: !16)
!39 = !DILocation(line: 20, column: 5, scope: !16)
!40 = !DILocation(line: 23, column: 17, scope: !16)
!41 = !DILocation(line: 23, column: 21, scope: !16)
!42 = !DILocation(line: 23, column: 5, scope: !16)
!43 = !DILocation(line: 26, column: 26, scope: !16)
!44 = !DILocation(line: 26, column: 31, scope: !16)
!45 = !DILocation(line: 26, column: 11, scope: !16)
!46 = !DILocation(line: 26, column: 9, scope: !16)
!47 = !DILocation(line: 37, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !16, file: !1, line: 37, column: 9)
!49 = !DILocation(line: 37, column: 13, scope: !48)
!50 = !DILocation(line: 37, column: 9, scope: !16)
!51 = !DILocation(line: 38, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 37, column: 22)
!53 = !DILocation(line: 41, column: 9, scope: !52)
!54 = !DILocation(line: 41, column: 17, scope: !52)
!55 = !DILocation(line: 42, column: 5, scope: !52)
!56 = !DILocation(line: 44, column: 5, scope: !16)
!57 = !DILocation(line: 44, column: 13, scope: !16)
!58 = !DILocation(line: 45, column: 5, scope: !16)
!59 = !DILocation(line: 46, column: 1, scope: !16)
