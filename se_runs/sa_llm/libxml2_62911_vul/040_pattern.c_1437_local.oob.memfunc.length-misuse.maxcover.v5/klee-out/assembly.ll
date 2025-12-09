; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/040_pattern.c_1437_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/040_pattern.c_1437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPattern = type opaque
%struct._xmlStreamCtxt = type opaque
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [9 x i8] c"data_len\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/040_pattern.c_1437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlPattern*, align 8
  %3 = alloca %struct._xmlStreamCtxt*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata %struct._xmlStreamCtxt** %3, metadata !29, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  %6 = bitcast i32* %5 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %7 = load i32, i32* %5, align 4, !dbg !41
  %8 = icmp sge i32 %7, 0, !dbg !42
  %9 = zext i1 %8 to i32, !dbg !42
  %10 = sext i32 %9 to i64, !dbg !41
  call void @klee_assume(i64 noundef %10), !dbg !43
  %11 = load i32, i32* %5, align 4, !dbg !44
  %12 = icmp slt i32 %11, 1024, !dbg !45
  %13 = zext i1 %12 to i32, !dbg !45
  %14 = sext i32 %13 to i64, !dbg !44
  call void @klee_assume(i64 noundef %14), !dbg !46
  %15 = load i32, i32* %5, align 4, !dbg !47
  %16 = add nsw i32 %15, 1, !dbg !48
  %17 = sext i32 %16 to i64, !dbg !47
  %18 = call noalias i8* @malloc(i64 noundef %17) #5, !dbg !49
  store i8* %18, i8** %4, align 8, !dbg !50
  %19 = load i8*, i8** %4, align 8, !dbg !51
  %20 = icmp ne i8* %19, null, !dbg !51
  br i1 %20, label %21, label %30, !dbg !53

21:                                               ; preds = %0
  %22 = load i8*, i8** %4, align 8, !dbg !54
  %23 = load i32, i32* %5, align 4, !dbg !56
  %24 = add nsw i32 %23, 1, !dbg !57
  %25 = sext i32 %24 to i64, !dbg !56
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef %25, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  %26 = load i8*, i8** %4, align 8, !dbg !59
  %27 = load i32, i32* %5, align 4, !dbg !60
  %28 = sext i32 %27 to i64, !dbg !59
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !59
  store i8 0, i8* %29, align 1, !dbg !61
  br label %30, !dbg !62

30:                                               ; preds = %21, %0
  call void @xmlInitParser(), !dbg !63
  %31 = load i8*, i8** %4, align 8, !dbg !64
  %32 = call %struct._xmlPattern* @xmlPatterncompile(i8* noundef %31, %struct._xmlDict* noundef null, i32 noundef 0, i8** noundef null), !dbg !65
  store %struct._xmlPattern* %32, %struct._xmlPattern** %2, align 8, !dbg !66
  %33 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !67
  %34 = icmp ne %struct._xmlPattern* %33, null, !dbg !67
  br i1 %34, label %35, label %44, !dbg !69

35:                                               ; preds = %30
  %36 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !70
  %37 = call %struct._xmlStreamCtxt* @xmlPatternGetStreamCtxt(%struct._xmlPattern* noundef %36), !dbg !72
  store %struct._xmlStreamCtxt* %37, %struct._xmlStreamCtxt** %3, align 8, !dbg !73
  %38 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %3, align 8, !dbg !74
  %39 = icmp ne %struct._xmlStreamCtxt* %38, null, !dbg !74
  br i1 %39, label %40, label %42, !dbg !76

40:                                               ; preds = %35
  %41 = load %struct._xmlStreamCtxt*, %struct._xmlStreamCtxt** %3, align 8, !dbg !77
  call void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef %41), !dbg !79
  br label %42, !dbg !80

42:                                               ; preds = %40, %35
  %43 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !81
  call void @xmlFreePattern(%struct._xmlPattern* noundef %43), !dbg !82
  br label %44, !dbg !83

44:                                               ; preds = %42, %30
  %45 = load i8*, i8** %4, align 8, !dbg !84
  %46 = icmp ne i8* %45, null, !dbg !84
  br i1 %46, label %47, label %49, !dbg !86

47:                                               ; preds = %44
  %48 = load i8*, i8** %4, align 8, !dbg !87
  call void @free(i8* noundef %48) #5, !dbg !88
  br label %49, !dbg !88

49:                                               ; preds = %47, %44
  call void @xmlCleanupParser(), !dbg !89
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !90
  ret i32 0, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlInitParser() #2

declare %struct._xmlPattern* @xmlPatterncompile(i8* noundef, %struct._xmlDict* noundef, i32 noundef, i8** noundef) #2

declare %struct._xmlStreamCtxt* @xmlPatternGetStreamCtxt(%struct._xmlPattern* noundef) #2

declare void @xmlFreeStreamCtxt(%struct._xmlStreamCtxt* noundef) #2

declare void @xmlFreePattern(%struct._xmlPattern* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare void @xmlCleanupParser() #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/040_pattern.c_1437_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "139f383af6c68db8eee5ea31ad56e170")
!2 = !{!3, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
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
!22 = !DILocalVariable(name: "pattern", scope: !17, file: !1, line: 7, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPatternPtr", file: !24, line: 30, baseType: !25)
!24 = !DIFile(filename: "/usr/include/libxml2/libxml/pattern.h", directory: "", checksumkind: CSK_MD5, checksum: "db123ed3ecc27ab31b3f808e96edb492")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPattern", file: !24, line: 29, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPattern", file: !24, line: 29, flags: DIFlagFwdDecl)
!28 = !DILocation(line: 7, column: 19, scope: !17)
!29 = !DILocalVariable(name: "streamCtxt", scope: !17, file: !1, line: 8, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxtPtr", file: !24, line: 63, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlStreamCtxt", file: !24, line: 62, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlStreamCtxt", file: !24, line: 62, flags: DIFlagFwdDecl)
!34 = !DILocation(line: 8, column: 22, scope: !17)
!35 = !DILocalVariable(name: "data", scope: !17, file: !1, line: 9, type: !3)
!36 = !DILocation(line: 9, column: 14, scope: !17)
!37 = !DILocalVariable(name: "data_len", scope: !17, file: !1, line: 10, type: !20)
!38 = !DILocation(line: 10, column: 9, scope: !17)
!39 = !DILocation(line: 12, column: 24, scope: !17)
!40 = !DILocation(line: 12, column: 5, scope: !17)
!41 = !DILocation(line: 13, column: 17, scope: !17)
!42 = !DILocation(line: 13, column: 26, scope: !17)
!43 = !DILocation(line: 13, column: 5, scope: !17)
!44 = !DILocation(line: 14, column: 17, scope: !17)
!45 = !DILocation(line: 14, column: 26, scope: !17)
!46 = !DILocation(line: 14, column: 5, scope: !17)
!47 = !DILocation(line: 16, column: 30, scope: !17)
!48 = !DILocation(line: 16, column: 39, scope: !17)
!49 = !DILocation(line: 16, column: 23, scope: !17)
!50 = !DILocation(line: 16, column: 10, scope: !17)
!51 = !DILocation(line: 17, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !17, file: !1, line: 17, column: 9)
!53 = !DILocation(line: 17, column: 9, scope: !17)
!54 = !DILocation(line: 18, column: 28, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 17, column: 15)
!56 = !DILocation(line: 18, column: 34, scope: !55)
!57 = !DILocation(line: 18, column: 43, scope: !55)
!58 = !DILocation(line: 18, column: 9, scope: !55)
!59 = !DILocation(line: 19, column: 9, scope: !55)
!60 = !DILocation(line: 19, column: 14, scope: !55)
!61 = !DILocation(line: 19, column: 24, scope: !55)
!62 = !DILocation(line: 20, column: 5, scope: !55)
!63 = !DILocation(line: 22, column: 5, scope: !17)
!64 = !DILocation(line: 24, column: 50, scope: !17)
!65 = !DILocation(line: 24, column: 15, scope: !17)
!66 = !DILocation(line: 24, column: 13, scope: !17)
!67 = !DILocation(line: 25, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !17, file: !1, line: 25, column: 9)
!69 = !DILocation(line: 25, column: 9, scope: !17)
!70 = !DILocation(line: 26, column: 46, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 25, column: 18)
!72 = !DILocation(line: 26, column: 22, scope: !71)
!73 = !DILocation(line: 26, column: 20, scope: !71)
!74 = !DILocation(line: 27, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 27, column: 13)
!76 = !DILocation(line: 27, column: 13, scope: !71)
!77 = !DILocation(line: 29, column: 31, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 27, column: 25)
!79 = !DILocation(line: 29, column: 13, scope: !78)
!80 = !DILocation(line: 30, column: 9, scope: !78)
!81 = !DILocation(line: 31, column: 24, scope: !71)
!82 = !DILocation(line: 31, column: 9, scope: !71)
!83 = !DILocation(line: 32, column: 5, scope: !71)
!84 = !DILocation(line: 34, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !17, file: !1, line: 34, column: 9)
!86 = !DILocation(line: 34, column: 9, scope: !17)
!87 = !DILocation(line: 34, column: 20, scope: !85)
!88 = !DILocation(line: 34, column: 15, scope: !85)
!89 = !DILocation(line: 35, column: 5, scope: !17)
!90 = !DILocation(line: 38, column: 5, scope: !17)
!91 = !DILocation(line: 39, column: 5, scope: !17)
