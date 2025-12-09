; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/179_tree.c_7492_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/179_tree.c_7492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"initial_use\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/179_tree.c_7492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !34, metadata !DIExpression()), !dbg !47
  %7 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !48
  store %struct._xmlBuffer* %7, %struct._xmlBuffer** %2, align 8, !dbg !47
  %8 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !49
  %9 = icmp ne %struct._xmlBuffer* %8, null, !dbg !49
  br i1 %9, label %11, label %10, !dbg !51

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !52
  br label %52, !dbg !52

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %12 = bitcast i32* %3 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !58
  %13 = bitcast i32* %4 to i8*, !dbg !59
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  %14 = load i32, i32* %4, align 4, !dbg !61
  %15 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !62
  %16 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %15, i32 0, i32 2, !dbg !63
  %17 = load i32, i32* %16, align 4, !dbg !63
  %18 = icmp ult i32 %14, %17, !dbg !64
  %19 = zext i1 %18 to i32, !dbg !64
  %20 = sext i32 %19 to i64, !dbg !61
  call void @klee_assume(i64 noundef %20), !dbg !65
  %21 = load i32, i32* %4, align 4, !dbg !66
  %22 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !67
  %23 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %22, i32 0, i32 1, !dbg !68
  store i32 %21, i32* %23, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %5, metadata !70, metadata !DIExpression()), !dbg !71
  %24 = load i32, i32* %3, align 4, !dbg !72
  %25 = add i32 %24, 1, !dbg !73
  %26 = zext i32 %25 to i64, !dbg !72
  %27 = call noalias i8* @malloc(i64 noundef %26) #5, !dbg !74
  store i8* %27, i8** %5, align 8, !dbg !71
  %28 = load i8*, i8** %5, align 8, !dbg !75
  %29 = icmp ne i8* %28, null, !dbg !75
  br i1 %29, label %32, label %30, !dbg !77

30:                                               ; preds = %11
  %31 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !78
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %31), !dbg !80
  store i32 1, i32* %1, align 4, !dbg !81
  br label %52, !dbg !81

32:                                               ; preds = %11
  %33 = load i8*, i8** %5, align 8, !dbg !82
  %34 = load i32, i32* %3, align 4, !dbg !83
  %35 = add i32 %34, 1, !dbg !84
  %36 = zext i32 %35 to i64, !dbg !83
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !85
  %37 = load i8*, i8** %5, align 8, !dbg !86
  %38 = load i32, i32* %3, align 4, !dbg !87
  %39 = zext i32 %38 to i64, !dbg !86
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !86
  store i8 0, i8* %40, align 1, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %6, metadata !89, metadata !DIExpression()), !dbg !90
  %41 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !91
  %42 = load i8*, i8** %5, align 8, !dbg !92
  %43 = load i32, i32* %3, align 4, !dbg !93
  %44 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %41, i8* noundef %42, i32 noundef %43), !dbg !94
  store i32 %44, i32* %6, align 4, !dbg !90
  %45 = load i32, i32* %6, align 4, !dbg !95
  %46 = icmp eq i32 %45, 0, !dbg !97
  br i1 %46, label %47, label %49, !dbg !98

47:                                               ; preds = %32
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !99
  br label %49, !dbg !101

49:                                               ; preds = %47, %32
  %50 = load i8*, i8** %5, align 8, !dbg !102
  call void @free(i8* noundef %50) #5, !dbg !103
  %51 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !104
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %51), !dbg !105
  store i32 0, i32* %1, align 4, !dbg !106
  br label %52, !dbg !106

52:                                               ; preds = %49, %30, %10
  %53 = load i32, i32* %1, align 4, !dbg !107
  ret i32 %53, !dbg !107
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

declare i32 @xmlBufferAdd(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

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
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/179_tree.c_7492_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "55654f575a12d2670ae799cee9175d84")
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
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !19, line: 28, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocalVariable(name: "buf", scope: !29, file: !1, line: 6, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !39)
!39 = !{!40, !42, !43, !44, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !38, file: !4, line: 92, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !38, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !38, file: !4, line: 95, baseType: !45, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !38, file: !4, line: 96, baseType: !41, size: 64, offset: 192)
!47 = !DILocation(line: 6, column: 18, scope: !29)
!48 = !DILocation(line: 6, column: 24, scope: !29)
!49 = !DILocation(line: 7, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !29, file: !1, line: 7, column: 9)
!51 = !DILocation(line: 7, column: 9, scope: !29)
!52 = !DILocation(line: 7, column: 15, scope: !50)
!53 = !DILocalVariable(name: "len", scope: !29, file: !1, line: 9, type: !5)
!54 = !DILocation(line: 9, column: 18, scope: !29)
!55 = !DILocation(line: 10, column: 24, scope: !29)
!56 = !DILocation(line: 10, column: 5, scope: !29)
!57 = !DILocalVariable(name: "initial_use", scope: !29, file: !1, line: 12, type: !5)
!58 = !DILocation(line: 12, column: 18, scope: !29)
!59 = !DILocation(line: 13, column: 24, scope: !29)
!60 = !DILocation(line: 13, column: 5, scope: !29)
!61 = !DILocation(line: 14, column: 17, scope: !29)
!62 = !DILocation(line: 14, column: 31, scope: !29)
!63 = !DILocation(line: 14, column: 36, scope: !29)
!64 = !DILocation(line: 14, column: 29, scope: !29)
!65 = !DILocation(line: 14, column: 5, scope: !29)
!66 = !DILocation(line: 16, column: 16, scope: !29)
!67 = !DILocation(line: 16, column: 5, scope: !29)
!68 = !DILocation(line: 16, column: 10, scope: !29)
!69 = !DILocation(line: 16, column: 14, scope: !29)
!70 = !DILocalVariable(name: "str", scope: !29, file: !1, line: 18, type: !14)
!71 = !DILocation(line: 18, column: 11, scope: !29)
!72 = !DILocation(line: 18, column: 32, scope: !29)
!73 = !DILocation(line: 18, column: 36, scope: !29)
!74 = !DILocation(line: 18, column: 25, scope: !29)
!75 = !DILocation(line: 19, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !29, file: !1, line: 19, column: 9)
!77 = !DILocation(line: 19, column: 9, scope: !29)
!78 = !DILocation(line: 20, column: 23, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 19, column: 15)
!80 = !DILocation(line: 20, column: 9, scope: !79)
!81 = !DILocation(line: 21, column: 9, scope: !79)
!82 = !DILocation(line: 23, column: 24, scope: !29)
!83 = !DILocation(line: 23, column: 29, scope: !29)
!84 = !DILocation(line: 23, column: 33, scope: !29)
!85 = !DILocation(line: 23, column: 5, scope: !29)
!86 = !DILocation(line: 24, column: 5, scope: !29)
!87 = !DILocation(line: 24, column: 9, scope: !29)
!88 = !DILocation(line: 24, column: 14, scope: !29)
!89 = !DILocalVariable(name: "result", scope: !29, file: !1, line: 26, type: !32)
!90 = !DILocation(line: 26, column: 9, scope: !29)
!91 = !DILocation(line: 26, column: 31, scope: !29)
!92 = !DILocation(line: 26, column: 53, scope: !29)
!93 = !DILocation(line: 26, column: 58, scope: !29)
!94 = !DILocation(line: 26, column: 18, scope: !29)
!95 = !DILocation(line: 28, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !29, file: !1, line: 28, column: 9)
!97 = !DILocation(line: 28, column: 16, scope: !96)
!98 = !DILocation(line: 28, column: 9, scope: !29)
!99 = !DILocation(line: 29, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 28, column: 22)
!101 = !DILocation(line: 30, column: 5, scope: !100)
!102 = !DILocation(line: 32, column: 10, scope: !29)
!103 = !DILocation(line: 32, column: 5, scope: !29)
!104 = !DILocation(line: 33, column: 19, scope: !29)
!105 = !DILocation(line: 33, column: 5, scope: !29)
!106 = !DILocation(line: 34, column: 5, scope: !29)
!107 = !DILocation(line: 35, column: 1, scope: !29)
