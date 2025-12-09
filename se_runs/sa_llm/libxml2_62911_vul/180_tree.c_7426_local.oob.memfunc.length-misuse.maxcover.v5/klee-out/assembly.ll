; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/180_tree.c_7426_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/180_tree.c_7426_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/180_tree.c_7426_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !30 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !35, metadata !DIExpression()), !dbg !48
  %6 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !49
  store %struct._xmlBuffer* %6, %struct._xmlBuffer** %2, align 8, !dbg !48
  %7 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !50
  %8 = icmp eq %struct._xmlBuffer* %7, null, !dbg !52
  br i1 %8, label %9, label %10, !dbg !53

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !54
  br label %71, !dbg !54

10:                                               ; preds = %0
  %11 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !56
  %12 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %11, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %3, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = bitcast i32* %3 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !61
  %14 = load i32, i32* %3, align 4, !dbg !62
  %15 = icmp sge i32 %14, 0, !dbg !63
  %16 = zext i1 %15 to i32, !dbg !63
  %17 = sext i32 %16 to i64, !dbg !62
  call void @klee_assume(i64 noundef %17), !dbg !64
  %18 = load i32, i32* %3, align 4, !dbg !65
  %19 = icmp slt i32 %18, 1024, !dbg !66
  %20 = zext i1 %19 to i32, !dbg !66
  %21 = sext i32 %20 to i64, !dbg !65
  call void @klee_assume(i64 noundef %21), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  %22 = load i32, i32* %3, align 4, !dbg !70
  %23 = add nsw i32 %22, 1, !dbg !71
  %24 = sext i32 %23 to i64, !dbg !70
  %25 = call noalias i8* @malloc(i64 noundef %24) #5, !dbg !72
  store i8* %25, i8** %4, align 8, !dbg !69
  %26 = load i8*, i8** %4, align 8, !dbg !73
  %27 = icmp eq i8* %26, null, !dbg !75
  br i1 %27, label %28, label %30, !dbg !76

28:                                               ; preds = %10
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !77
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %29), !dbg !79
  store i32 1, i32* %1, align 4, !dbg !80
  br label %71, !dbg !80

30:                                               ; preds = %10
  %31 = load i8*, i8** %4, align 8, !dbg !81
  %32 = load i32, i32* %3, align 4, !dbg !82
  %33 = add nsw i32 %32, 1, !dbg !83
  %34 = sext i32 %33 to i64, !dbg !82
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef %34, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !84
  %35 = load i8*, i8** %4, align 8, !dbg !85
  %36 = load i32, i32* %3, align 4, !dbg !86
  %37 = sext i32 %36 to i64, !dbg !85
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !85
  store i8 0, i8* %38, align 1, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %5, metadata !88, metadata !DIExpression()), !dbg !89
  %39 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !90
  %40 = load i8*, i8** %4, align 8, !dbg !91
  %41 = load i32, i32* %3, align 4, !dbg !92
  %42 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %39, i8* noundef %40, i32 noundef %41), !dbg !93
  store i32 %42, i32* %5, align 4, !dbg !89
  %43 = load i32, i32* %3, align 4, !dbg !94
  %44 = icmp sge i32 %43, 0, !dbg !95
  br i1 %44, label %45, label %60, !dbg !96

45:                                               ; preds = %30
  %46 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !97
  %47 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %46, i32 0, i32 1, !dbg !98
  %48 = load i32, i32* %47, align 8, !dbg !98
  %49 = icmp uge i32 %48, 0, !dbg !99
  br i1 %49, label %50, label %60, !dbg !100

50:                                               ; preds = %45
  %51 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !101
  %52 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %51, i32 0, i32 1, !dbg !102
  %53 = load i32, i32* %52, align 8, !dbg !102
  %54 = load i32, i32* %3, align 4, !dbg !103
  %55 = add i32 %53, %54, !dbg !104
  %56 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !105
  %57 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %56, i32 0, i32 2, !dbg !106
  %58 = load i32, i32* %57, align 4, !dbg !106
  %59 = icmp ule i32 %55, %58, !dbg !107
  br label %60

60:                                               ; preds = %50, %45, %30
  %61 = phi i1 [ false, %45 ], [ false, %30 ], [ %59, %50 ], !dbg !108
  %62 = zext i1 %61 to i32, !dbg !100
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @SAILR_ASSERT to i32 (i32, ...)*)(i32 noundef %62), !dbg !109
  %64 = load i32, i32* %5, align 4, !dbg !110
  %65 = icmp eq i32 %64, 0, !dbg !112
  br i1 %65, label %66, label %68, !dbg !113

66:                                               ; preds = %60
  %67 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %68, !dbg !116

68:                                               ; preds = %66, %60
  %69 = load i8*, i8** %4, align 8, !dbg !117
  call void @free(i8* noundef %69) #5, !dbg !118
  %70 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !119
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %70), !dbg !120
  store i32 0, i32* %1, align 4, !dbg !121
  br label %71, !dbg !121

71:                                               ; preds = %68, %28, %9
  %72 = load i32, i32* %1, align 4, !dbg !122
  ret i32 %72, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare i32 @xmlBufferAdd(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare i32 @SAILR_ASSERT(...) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/180_tree.c_7426_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c224b8f9dca611526d2346f8886d0d6d")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 74, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "XML_BUFFER_ALLOC_DOUBLEIT", value: 0)
!8 = !DIEnumerator(name: "XML_BUFFER_ALLOC_EXACT", value: 1)
!9 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IMMUTABLE", value: 2)
!10 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 3)
!11 = !DIEnumerator(name: "XML_BUFFER_ALLOC_HYBRID", value: 4)
!12 = !DIEnumerator(name: "XML_BUFFER_ALLOC_BOUNDED", value: 5)
!13 = !{!14, !15, !20}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !18, line: 28, baseType: !19)
!18 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !31, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!31 = !DISubroutineType(types: !32)
!32 = !{!33}
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{}
!35 = !DILocalVariable(name: "buf", scope: !30, file: !1, line: 6, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !40)
!40 = !{!41, !43, !44, !45, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !39, file: !4, line: 92, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !39, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !39, file: !4, line: 95, baseType: !46, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !39, file: !4, line: 96, baseType: !42, size: 64, offset: 192)
!48 = !DILocation(line: 6, column: 18, scope: !30)
!49 = !DILocation(line: 6, column: 24, scope: !30)
!50 = !DILocation(line: 7, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 9)
!52 = !DILocation(line: 7, column: 13, scope: !51)
!53 = !DILocation(line: 7, column: 9, scope: !30)
!54 = !DILocation(line: 8, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 7, column: 22)
!56 = !DILocation(line: 12, column: 18, scope: !30)
!57 = !DILocation(line: 12, column: 5, scope: !30)
!58 = !DILocalVariable(name: "len", scope: !30, file: !1, line: 15, type: !33)
!59 = !DILocation(line: 15, column: 9, scope: !30)
!60 = !DILocation(line: 16, column: 24, scope: !30)
!61 = !DILocation(line: 16, column: 5, scope: !30)
!62 = !DILocation(line: 18, column: 17, scope: !30)
!63 = !DILocation(line: 18, column: 21, scope: !30)
!64 = !DILocation(line: 18, column: 5, scope: !30)
!65 = !DILocation(line: 19, column: 17, scope: !30)
!66 = !DILocation(line: 19, column: 21, scope: !30)
!67 = !DILocation(line: 19, column: 5, scope: !30)
!68 = !DILocalVariable(name: "str", scope: !30, file: !1, line: 22, type: !20)
!69 = !DILocation(line: 22, column: 11, scope: !30)
!70 = !DILocation(line: 22, column: 31, scope: !30)
!71 = !DILocation(line: 22, column: 35, scope: !30)
!72 = !DILocation(line: 22, column: 24, scope: !30)
!73 = !DILocation(line: 23, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !30, file: !1, line: 23, column: 9)
!75 = !DILocation(line: 23, column: 13, scope: !74)
!76 = !DILocation(line: 23, column: 9, scope: !30)
!77 = !DILocation(line: 24, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 23, column: 22)
!79 = !DILocation(line: 24, column: 9, scope: !78)
!80 = !DILocation(line: 25, column: 9, scope: !78)
!81 = !DILocation(line: 27, column: 24, scope: !30)
!82 = !DILocation(line: 27, column: 29, scope: !30)
!83 = !DILocation(line: 27, column: 33, scope: !30)
!84 = !DILocation(line: 27, column: 5, scope: !30)
!85 = !DILocation(line: 28, column: 5, scope: !30)
!86 = !DILocation(line: 28, column: 9, scope: !30)
!87 = !DILocation(line: 28, column: 14, scope: !30)
!88 = !DILocalVariable(name: "result", scope: !30, file: !1, line: 31, type: !33)
!89 = !DILocation(line: 31, column: 9, scope: !30)
!90 = !DILocation(line: 31, column: 31, scope: !30)
!91 = !DILocation(line: 31, column: 52, scope: !30)
!92 = !DILocation(line: 31, column: 57, scope: !30)
!93 = !DILocation(line: 31, column: 18, scope: !30)
!94 = !DILocation(line: 38, column: 18, scope: !30)
!95 = !DILocation(line: 38, column: 22, scope: !30)
!96 = !DILocation(line: 38, column: 27, scope: !30)
!97 = !DILocation(line: 38, column: 30, scope: !30)
!98 = !DILocation(line: 38, column: 35, scope: !30)
!99 = !DILocation(line: 38, column: 39, scope: !30)
!100 = !DILocation(line: 38, column: 44, scope: !30)
!101 = !DILocation(line: 38, column: 47, scope: !30)
!102 = !DILocation(line: 38, column: 52, scope: !30)
!103 = !DILocation(line: 38, column: 58, scope: !30)
!104 = !DILocation(line: 38, column: 56, scope: !30)
!105 = !DILocation(line: 38, column: 65, scope: !30)
!106 = !DILocation(line: 38, column: 70, scope: !30)
!107 = !DILocation(line: 38, column: 62, scope: !30)
!108 = !DILocation(line: 0, scope: !30)
!109 = !DILocation(line: 38, column: 5, scope: !30)
!110 = !DILocation(line: 41, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !30, file: !1, line: 41, column: 9)
!112 = !DILocation(line: 41, column: 16, scope: !111)
!113 = !DILocation(line: 41, column: 9, scope: !30)
!114 = !DILocation(line: 42, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 41, column: 22)
!116 = !DILocation(line: 43, column: 5, scope: !115)
!117 = !DILocation(line: 45, column: 10, scope: !30)
!118 = !DILocation(line: 45, column: 5, scope: !30)
!119 = !DILocation(line: 46, column: 19, scope: !30)
!120 = !DILocation(line: 46, column: 5, scope: !30)
!121 = !DILocation(line: 47, column: 5, scope: !30)
!122 = !DILocation(line: 48, column: 1, scope: !30)
