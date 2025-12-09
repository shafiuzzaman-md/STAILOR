; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !19, metadata !DIExpression()), !dbg !26
  %5 = bitcast i32* %2 to i8*, !dbg !27
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 100, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !30
  %7 = load i32, i32* %2, align 4, !dbg !31
  %8 = icmp slt i32 %7, 0, !dbg !33
  br i1 %8, label %9, label %10, !dbg !34

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !35
  br label %21, !dbg !35

10:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !39
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !40
  %12 = load i32, i32* %2, align 4, !dbg !41
  %13 = call i8* @xmlStrndup(i8* noundef %11, i32 noundef %12), !dbg !42
  store i8* %13, i8** %4, align 8, !dbg !39
  %14 = load i8*, i8** %4, align 8, !dbg !43
  %15 = icmp ne i8* %14, null, !dbg !45
  br i1 %15, label %16, label %20, !dbg !46

16:                                               ; preds = %10
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  %18 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !49
  %19 = load i8*, i8** %4, align 8, !dbg !50
  call void %18(i8* noundef %19), !dbg !49
  br label %20, !dbg !51

20:                                               ; preds = %16, %10
  store i32 0, i32* %1, align 4, !dbg !52
  br label %21, !dbg !52

21:                                               ; preds = %20, %9
  %22 = load i32, i32* %1, align 4, !dbg !53
  ret i32 %22, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @xmlStrndup(i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/216_xmlstring.c_53_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "4f8fcb6cd102174aa3180bb5757b317a")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 7, type: !15)
!18 = !DILocation(line: 7, column: 9, scope: !12)
!19 = !DILocalVariable(name: "cur", scope: !12, file: !1, line: 8, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !24)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !22, line: 28, baseType: !23)
!22 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 8, column: 13, scope: !12)
!27 = !DILocation(line: 10, column: 24, scope: !12)
!28 = !DILocation(line: 10, column: 5, scope: !12)
!29 = !DILocation(line: 11, column: 24, scope: !12)
!30 = !DILocation(line: 11, column: 5, scope: !12)
!31 = !DILocation(line: 13, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !12, file: !1, line: 13, column: 9)
!33 = !DILocation(line: 13, column: 13, scope: !32)
!34 = !DILocation(line: 13, column: 9, scope: !12)
!35 = !DILocation(line: 14, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 13, column: 18)
!37 = !DILocalVariable(name: "result", scope: !12, file: !1, line: 17, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!39 = !DILocation(line: 17, column: 14, scope: !12)
!40 = !DILocation(line: 17, column: 34, scope: !12)
!41 = !DILocation(line: 17, column: 39, scope: !12)
!42 = !DILocation(line: 17, column: 23, scope: !12)
!43 = !DILocation(line: 18, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !12, file: !1, line: 18, column: 9)
!45 = !DILocation(line: 18, column: 16, scope: !44)
!46 = !DILocation(line: 18, column: 9, scope: !12)
!47 = !DILocation(line: 19, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 18, column: 25)
!49 = !DILocation(line: 20, column: 9, scope: !48)
!50 = !DILocation(line: 20, column: 17, scope: !48)
!51 = !DILocation(line: 21, column: 5, scope: !48)
!52 = !DILocation(line: 23, column: 5, scope: !12)
!53 = !DILocation(line: 24, column: 1, scope: !12)
