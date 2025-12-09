; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/069_schematron.c_688_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/069_schematron.c_688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type opaque

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/069_schematron.c_688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchematronParserCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %3, metadata !21, metadata !DIExpression()), !dbg !22
  %5 = bitcast i32* %3 to i8*, !dbg !23
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !24
  %6 = load i32, i32* %3, align 4, !dbg !25
  %7 = icmp sge i32 %6, 0, !dbg !26
  %8 = zext i1 %7 to i32, !dbg !26
  %9 = sext i32 %8 to i64, !dbg !25
  call void @klee_assume(i64 noundef %9), !dbg !27
  %10 = load i32, i32* %3, align 4, !dbg !28
  %11 = icmp slt i32 %10, 1024, !dbg !29
  %12 = zext i1 %11 to i32, !dbg !29
  %13 = sext i32 %12 to i64, !dbg !28
  call void @klee_assume(i64 noundef %13), !dbg !30
  %14 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !31
  %15 = load i32, i32* %3, align 4, !dbg !32
  %16 = add nsw i32 %15, 1, !dbg !33
  %17 = sext i32 %16 to i64, !dbg !32
  %18 = call i8* %14(i64 noundef %17), !dbg !31
  store i8* %18, i8** %2, align 8, !dbg !34
  %19 = load i8*, i8** %2, align 8, !dbg !35
  %20 = icmp eq i8* %19, null, !dbg !37
  br i1 %20, label %21, label %22, !dbg !38

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !39
  br label %46, !dbg !39

22:                                               ; preds = %0
  %23 = load i8*, i8** %2, align 8, !dbg !41
  %24 = load i32, i32* %3, align 4, !dbg !42
  %25 = add nsw i32 %24, 1, !dbg !43
  %26 = sext i32 %25 to i64, !dbg !42
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !44
  %27 = load i8*, i8** %2, align 8, !dbg !45
  %28 = load i32, i32* %3, align 4, !dbg !46
  %29 = sext i32 %28 to i64, !dbg !45
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !45
  store i8 0, i8* %30, align 1, !dbg !47
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %4, metadata !48, metadata !DIExpression()), !dbg !54
  %31 = load i8*, i8** %2, align 8, !dbg !55
  %32 = load i32, i32* %3, align 4, !dbg !56
  %33 = call %struct._xmlSchematronParserCtxt* @xmlSchematronNewMemParserCtxt(i8* noundef %31, i32 noundef %32), !dbg !57
  store %struct._xmlSchematronParserCtxt* %33, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !54
  %34 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !58
  %35 = icmp ne %struct._xmlSchematronParserCtxt* %34, null, !dbg !60
  br i1 %35, label %36, label %39, !dbg !61

36:                                               ; preds = %22
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 23, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !62
  %38 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %4, align 8, !dbg !64
  call void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef %38), !dbg !65
  br label %39, !dbg !66

39:                                               ; preds = %36, %22
  %40 = load i8*, i8** %2, align 8, !dbg !67
  %41 = icmp ne i8* %40, null, !dbg !69
  br i1 %41, label %42, label %45, !dbg !70

42:                                               ; preds = %39
  %43 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !71
  %44 = load i8*, i8** %2, align 8, !dbg !73
  call void %43(i8* noundef %44), !dbg !71
  br label %45, !dbg !74

45:                                               ; preds = %42, %39
  store i32 0, i32* %1, align 4, !dbg !75
  br label %46, !dbg !75

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %1, align 4, !dbg !76
  ret i32 %47, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare %struct._xmlSchematronParserCtxt* @xmlSchematronNewMemParserCtxt(i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlSchematronFreeParserCtxt(%struct._xmlSchematronParserCtxt* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/069_schematron.c_688_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ee3055faed3f213d7aaaae8f3a54a543")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "buffer", scope: !14, file: !1, line: 7, type: !3)
!20 = !DILocation(line: 7, column: 11, scope: !14)
!21 = !DILocalVariable(name: "size", scope: !14, file: !1, line: 8, type: !17)
!22 = !DILocation(line: 8, column: 9, scope: !14)
!23 = !DILocation(line: 10, column: 24, scope: !14)
!24 = !DILocation(line: 10, column: 5, scope: !14)
!25 = !DILocation(line: 11, column: 17, scope: !14)
!26 = !DILocation(line: 11, column: 22, scope: !14)
!27 = !DILocation(line: 11, column: 5, scope: !14)
!28 = !DILocation(line: 12, column: 17, scope: !14)
!29 = !DILocation(line: 12, column: 22, scope: !14)
!30 = !DILocation(line: 12, column: 5, scope: !14)
!31 = !DILocation(line: 14, column: 21, scope: !14)
!32 = !DILocation(line: 14, column: 31, scope: !14)
!33 = !DILocation(line: 14, column: 36, scope: !14)
!34 = !DILocation(line: 14, column: 12, scope: !14)
!35 = !DILocation(line: 15, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 9)
!37 = !DILocation(line: 15, column: 16, scope: !36)
!38 = !DILocation(line: 15, column: 9, scope: !14)
!39 = !DILocation(line: 16, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 25)
!41 = !DILocation(line: 18, column: 24, scope: !14)
!42 = !DILocation(line: 18, column: 32, scope: !14)
!43 = !DILocation(line: 18, column: 37, scope: !14)
!44 = !DILocation(line: 18, column: 5, scope: !14)
!45 = !DILocation(line: 19, column: 5, scope: !14)
!46 = !DILocation(line: 19, column: 12, scope: !14)
!47 = !DILocation(line: 19, column: 18, scope: !14)
!48 = !DILocalVariable(name: "ctxt", scope: !14, file: !1, line: 21, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxtPtr", file: !50, line: 64, baseType: !51)
!50 = !DIFile(filename: "/usr/include/libxml2/libxml/schematron.h", directory: "", checksumkind: CSK_MD5, checksum: "96d9e0c083c4949e246ce02cf31de483")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !50, line: 63, baseType: !53)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !50, line: 63, flags: DIFlagFwdDecl)
!54 = !DILocation(line: 21, column: 32, scope: !14)
!55 = !DILocation(line: 21, column: 69, scope: !14)
!56 = !DILocation(line: 21, column: 77, scope: !14)
!57 = !DILocation(line: 21, column: 39, scope: !14)
!58 = !DILocation(line: 22, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !14, file: !1, line: 22, column: 9)
!60 = !DILocation(line: 22, column: 14, scope: !59)
!61 = !DILocation(line: 22, column: 9, scope: !14)
!62 = !DILocation(line: 23, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 22, column: 23)
!64 = !DILocation(line: 24, column: 37, scope: !63)
!65 = !DILocation(line: 24, column: 9, scope: !63)
!66 = !DILocation(line: 25, column: 5, scope: !63)
!67 = !DILocation(line: 27, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !14, file: !1, line: 27, column: 9)
!69 = !DILocation(line: 27, column: 16, scope: !68)
!70 = !DILocation(line: 27, column: 9, scope: !14)
!71 = !DILocation(line: 28, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 27, column: 25)
!73 = !DILocation(line: 28, column: 17, scope: !72)
!74 = !DILocation(line: 29, column: 5, scope: !72)
!75 = !DILocation(line: 31, column: 5, scope: !14)
!76 = !DILocation(line: 32, column: 1, scope: !14)
