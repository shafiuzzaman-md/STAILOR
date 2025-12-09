; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"initial_use\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"initial_content\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !32, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @xmlInitParser(), !dbg !49
  %7 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !50
  store %struct._xmlBuffer* %7, %struct._xmlBuffer** %2, align 8, !dbg !51
  %8 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !52
  %9 = icmp eq %struct._xmlBuffer* %8, null, !dbg !54
  br i1 %9, label %10, label %11, !dbg !55

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !56
  br label %89, !dbg !56

11:                                               ; preds = %0
  %12 = bitcast i32* %4 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %13 = load i32, i32* %4, align 4, !dbg !60
  %14 = icmp sge i32 %13, 0, !dbg !61
  %15 = zext i1 %14 to i32, !dbg !61
  %16 = sext i32 %15 to i64, !dbg !60
  call void @klee_assume(i64 noundef %16), !dbg !62
  %17 = load i32, i32* %4, align 4, !dbg !63
  %18 = icmp slt i32 %17, 1024, !dbg !64
  %19 = zext i1 %18 to i32, !dbg !64
  %20 = sext i32 %19 to i64, !dbg !63
  call void @klee_assume(i64 noundef %20), !dbg !65
  %21 = load i32, i32* %4, align 4, !dbg !66
  %22 = add nsw i32 %21, 1, !dbg !67
  %23 = sext i32 %22 to i64, !dbg !68
  %24 = mul i64 %23, 1, !dbg !69
  %25 = call noalias i8* @malloc(i64 noundef %24) #5, !dbg !70
  store i8* %25, i8** %3, align 8, !dbg !71
  %26 = load i8*, i8** %3, align 8, !dbg !72
  %27 = icmp eq i8* %26, null, !dbg !74
  br i1 %27, label %28, label %30, !dbg !75

28:                                               ; preds = %11
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !76
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %29), !dbg !78
  store i32 1, i32* %1, align 4, !dbg !79
  br label %89, !dbg !79

30:                                               ; preds = %11
  %31 = load i8*, i8** %3, align 8, !dbg !80
  %32 = load i32, i32* %4, align 4, !dbg !81
  %33 = add nsw i32 %32, 1, !dbg !82
  %34 = sext i32 %33 to i64, !dbg !83
  %35 = mul i64 %34, 1, !dbg !84
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  %36 = load i8*, i8** %3, align 8, !dbg !86
  %37 = load i32, i32* %4, align 4, !dbg !87
  %38 = sext i32 %37 to i64, !dbg !86
  %39 = getelementptr inbounds i8, i8* %36, i64 %38, !dbg !86
  store i8 0, i8* %39, align 1, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %5, metadata !89, metadata !DIExpression()), !dbg !90
  %40 = bitcast i32* %5 to i8*, !dbg !91
  call void @klee_make_symbolic(i8* noundef %40, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !92
  %41 = load i32, i32* %5, align 4, !dbg !93
  %42 = icmp sge i32 %41, 0, !dbg !94
  %43 = zext i1 %42 to i32, !dbg !94
  %44 = sext i32 %43 to i64, !dbg !93
  call void @klee_assume(i64 noundef %44), !dbg !95
  %45 = load i32, i32* %5, align 4, !dbg !96
  %46 = icmp slt i32 %45, 1024, !dbg !97
  %47 = zext i1 %46 to i32, !dbg !97
  %48 = sext i32 %47 to i64, !dbg !96
  call void @klee_assume(i64 noundef %48), !dbg !98
  %49 = load i32, i32* %5, align 4, !dbg !99
  %50 = icmp sgt i32 %49, 0, !dbg !101
  br i1 %50, label %51, label %77, !dbg !102

51:                                               ; preds = %30
  %52 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !103
  %53 = load i32, i32* %5, align 4, !dbg !106
  %54 = add nsw i32 %53, 1, !dbg !107
  %55 = call i32 @xmlBufferResize(%struct._xmlBuffer* noundef %52, i32 noundef %54), !dbg !108
  %56 = icmp eq i32 %55, 0, !dbg !109
  br i1 %56, label %57, label %60, !dbg !110

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8, !dbg !111
  call void @free(i8* noundef %58) #5, !dbg !113
  %59 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !114
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %59), !dbg !115
  store i32 1, i32* %1, align 4, !dbg !116
  br label %89, !dbg !116

60:                                               ; preds = %51
  %61 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !117
  %62 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %61, i32 0, i32 0, !dbg !118
  %63 = load i8*, i8** %62, align 8, !dbg !118
  %64 = load i32, i32* %5, align 4, !dbg !119
  %65 = add nsw i32 %64, 1, !dbg !120
  %66 = sext i32 %65 to i64, !dbg !121
  %67 = mul i64 %66, 1, !dbg !122
  call void @klee_make_symbolic(i8* noundef %63, i64 noundef %67, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !123
  %68 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !124
  %69 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %68, i32 0, i32 0, !dbg !125
  %70 = load i8*, i8** %69, align 8, !dbg !125
  %71 = load i32, i32* %5, align 4, !dbg !126
  %72 = sext i32 %71 to i64, !dbg !124
  %73 = getelementptr inbounds i8, i8* %70, i64 %72, !dbg !124
  store i8 0, i8* %73, align 1, !dbg !127
  %74 = load i32, i32* %5, align 4, !dbg !128
  %75 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !129
  %76 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %75, i32 0, i32 1, !dbg !130
  store i32 %74, i32* %76, align 8, !dbg !131
  br label %77, !dbg !132

77:                                               ; preds = %60, %30
  call void @llvm.dbg.declare(metadata i32* %6, metadata !133, metadata !DIExpression()), !dbg !134
  %78 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !135
  %79 = load i8*, i8** %3, align 8, !dbg !136
  %80 = load i32, i32* %4, align 4, !dbg !137
  %81 = call i32 @xmlBufferAddHead(%struct._xmlBuffer* noundef %78, i8* noundef %79, i32 noundef %80), !dbg !138
  store i32 %81, i32* %6, align 4, !dbg !134
  %82 = load i32, i32* %6, align 4, !dbg !139
  %83 = icmp eq i32 %82, 0, !dbg !141
  br i1 %83, label %84, label %86, !dbg !142

84:                                               ; preds = %77
  %85 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !143
  br label %86, !dbg !145

86:                                               ; preds = %84, %77
  %87 = load i8*, i8** %3, align 8, !dbg !146
  call void @free(i8* noundef %87) #5, !dbg !147
  %88 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !148
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %88), !dbg !149
  call void @xmlCleanupParser(), !dbg !150
  store i32 0, i32* %1, align 4, !dbg !151
  br label %89, !dbg !151

89:                                               ; preds = %86, %57, %28, %10
  %90 = load i32, i32* %1, align 4, !dbg !152
  ret i32 %90, !dbg !152
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @xmlInitParser() #2

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare i32 @xmlBufferResize(%struct._xmlBuffer* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i32 @xmlBufferAddHead(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "58573906231490f655d835c440e9f33f")
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
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !17, line: 28, baseType: !18)
!17 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !28, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{!30}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{}
!32 = !DILocalVariable(name: "buf", scope: !27, file: !1, line: 6, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !37)
!37 = !{!38, !39, !40, !41, !43}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !36, file: !4, line: 92, baseType: !15, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !36, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !36, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !36, file: !4, line: 95, baseType: !42, size: 32, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !36, file: !4, line: 96, baseType: !15, size: 64, offset: 192)
!44 = !DILocation(line: 6, column: 18, scope: !27)
!45 = !DILocalVariable(name: "str", scope: !27, file: !1, line: 7, type: !15)
!46 = !DILocation(line: 7, column: 14, scope: !27)
!47 = !DILocalVariable(name: "len", scope: !27, file: !1, line: 8, type: !30)
!48 = !DILocation(line: 8, column: 9, scope: !27)
!49 = !DILocation(line: 11, column: 5, scope: !27)
!50 = !DILocation(line: 14, column: 11, scope: !27)
!51 = !DILocation(line: 14, column: 9, scope: !27)
!52 = !DILocation(line: 15, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !27, file: !1, line: 15, column: 9)
!54 = !DILocation(line: 15, column: 13, scope: !53)
!55 = !DILocation(line: 15, column: 9, scope: !27)
!56 = !DILocation(line: 16, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 15, column: 22)
!58 = !DILocation(line: 20, column: 24, scope: !27)
!59 = !DILocation(line: 20, column: 5, scope: !27)
!60 = !DILocation(line: 22, column: 17, scope: !27)
!61 = !DILocation(line: 22, column: 21, scope: !27)
!62 = !DILocation(line: 22, column: 5, scope: !27)
!63 = !DILocation(line: 23, column: 17, scope: !27)
!64 = !DILocation(line: 23, column: 21, scope: !27)
!65 = !DILocation(line: 23, column: 5, scope: !27)
!66 = !DILocation(line: 26, column: 30, scope: !27)
!67 = !DILocation(line: 26, column: 34, scope: !27)
!68 = !DILocation(line: 26, column: 29, scope: !27)
!69 = !DILocation(line: 26, column: 39, scope: !27)
!70 = !DILocation(line: 26, column: 22, scope: !27)
!71 = !DILocation(line: 26, column: 9, scope: !27)
!72 = !DILocation(line: 27, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !27, file: !1, line: 27, column: 9)
!74 = !DILocation(line: 27, column: 13, scope: !73)
!75 = !DILocation(line: 27, column: 9, scope: !27)
!76 = !DILocation(line: 28, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 27, column: 22)
!78 = !DILocation(line: 28, column: 9, scope: !77)
!79 = !DILocation(line: 29, column: 9, scope: !77)
!80 = !DILocation(line: 31, column: 24, scope: !27)
!81 = !DILocation(line: 31, column: 30, scope: !27)
!82 = !DILocation(line: 31, column: 34, scope: !27)
!83 = !DILocation(line: 31, column: 29, scope: !27)
!84 = !DILocation(line: 31, column: 39, scope: !27)
!85 = !DILocation(line: 31, column: 5, scope: !27)
!86 = !DILocation(line: 33, column: 5, scope: !27)
!87 = !DILocation(line: 33, column: 9, scope: !27)
!88 = !DILocation(line: 33, column: 14, scope: !27)
!89 = !DILocalVariable(name: "initial_use", scope: !27, file: !1, line: 37, type: !30)
!90 = !DILocation(line: 37, column: 9, scope: !27)
!91 = !DILocation(line: 38, column: 24, scope: !27)
!92 = !DILocation(line: 38, column: 5, scope: !27)
!93 = !DILocation(line: 39, column: 17, scope: !27)
!94 = !DILocation(line: 39, column: 29, scope: !27)
!95 = !DILocation(line: 39, column: 5, scope: !27)
!96 = !DILocation(line: 40, column: 17, scope: !27)
!97 = !DILocation(line: 40, column: 29, scope: !27)
!98 = !DILocation(line: 40, column: 5, scope: !27)
!99 = !DILocation(line: 41, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !27, file: !1, line: 41, column: 9)
!101 = !DILocation(line: 41, column: 21, scope: !100)
!102 = !DILocation(line: 41, column: 9, scope: !27)
!103 = !DILocation(line: 42, column: 29, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 42, column: 13)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 41, column: 26)
!106 = !DILocation(line: 42, column: 34, scope: !104)
!107 = !DILocation(line: 42, column: 46, scope: !104)
!108 = !DILocation(line: 42, column: 13, scope: !104)
!109 = !DILocation(line: 42, column: 51, scope: !104)
!110 = !DILocation(line: 42, column: 13, scope: !105)
!111 = !DILocation(line: 43, column: 18, scope: !112)
!112 = distinct !DILexicalBlock(scope: !104, file: !1, line: 42, column: 57)
!113 = !DILocation(line: 43, column: 13, scope: !112)
!114 = !DILocation(line: 44, column: 27, scope: !112)
!115 = !DILocation(line: 44, column: 13, scope: !112)
!116 = !DILocation(line: 45, column: 13, scope: !112)
!117 = !DILocation(line: 47, column: 28, scope: !105)
!118 = !DILocation(line: 47, column: 33, scope: !105)
!119 = !DILocation(line: 47, column: 43, scope: !105)
!120 = !DILocation(line: 47, column: 55, scope: !105)
!121 = !DILocation(line: 47, column: 42, scope: !105)
!122 = !DILocation(line: 47, column: 60, scope: !105)
!123 = !DILocation(line: 47, column: 9, scope: !105)
!124 = !DILocation(line: 48, column: 9, scope: !105)
!125 = !DILocation(line: 48, column: 14, scope: !105)
!126 = !DILocation(line: 48, column: 22, scope: !105)
!127 = !DILocation(line: 48, column: 35, scope: !105)
!128 = !DILocation(line: 49, column: 20, scope: !105)
!129 = !DILocation(line: 49, column: 9, scope: !105)
!130 = !DILocation(line: 49, column: 14, scope: !105)
!131 = !DILocation(line: 49, column: 18, scope: !105)
!132 = !DILocation(line: 50, column: 5, scope: !105)
!133 = !DILocalVariable(name: "ret", scope: !27, file: !1, line: 57, type: !30)
!134 = !DILocation(line: 57, column: 9, scope: !27)
!135 = !DILocation(line: 57, column: 32, scope: !27)
!136 = !DILocation(line: 57, column: 37, scope: !27)
!137 = !DILocation(line: 57, column: 42, scope: !27)
!138 = !DILocation(line: 57, column: 15, scope: !27)
!139 = !DILocation(line: 62, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !27, file: !1, line: 62, column: 9)
!141 = !DILocation(line: 62, column: 13, scope: !140)
!142 = !DILocation(line: 62, column: 9, scope: !27)
!143 = !DILocation(line: 64, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 62, column: 19)
!145 = !DILocation(line: 65, column: 5, scope: !144)
!146 = !DILocation(line: 68, column: 10, scope: !27)
!147 = !DILocation(line: 68, column: 5, scope: !27)
!148 = !DILocation(line: 69, column: 19, scope: !27)
!149 = !DILocation(line: 69, column: 5, scope: !27)
!150 = !DILocation(line: 70, column: 5, scope: !27)
!151 = !DILocation(line: 71, column: 5, scope: !27)
!152 = !DILocation(line: 72, column: 1, scope: !27)
