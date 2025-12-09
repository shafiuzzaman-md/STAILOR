; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/053_buf.c_357_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/053_buf.c_357_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"initial_size\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"initial_content\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_62911_vul/053_buf.c_357_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !33, metadata !DIExpression()), !dbg !45
  %6 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !46
  store %struct._xmlBuffer* %6, %struct._xmlBuffer** %2, align 8, !dbg !45
  %7 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !47
  %8 = icmp ne %struct._xmlBuffer* %7, null, !dbg !47
  br i1 %8, label %10, label %9, !dbg !49

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !50
  br label %53, !dbg !50

10:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !51, metadata !DIExpression()), !dbg !52
  %11 = bitcast i32* %3 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %12 = load i32, i32* %3, align 4, !dbg !55
  %13 = icmp ugt i32 %12, 0, !dbg !56
  br i1 %13, label %14, label %17, !dbg !57

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4, !dbg !58
  %16 = icmp ult i32 %15, 1024, !dbg !59
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i1 [ false, %10 ], [ %16, %14 ], !dbg !60
  %19 = zext i1 %18 to i32, !dbg !57
  %20 = sext i32 %19 to i64, !dbg !55
  call void @klee_assume(i64 noundef %20), !dbg !61
  call void @llvm.dbg.declare(metadata i8** %4, metadata !62, metadata !DIExpression()), !dbg !63
  %21 = load i32, i32* %3, align 4, !dbg !64
  %22 = zext i32 %21 to i64, !dbg !64
  %23 = call noalias i8* @malloc(i64 noundef %22) #5, !dbg !65
  store i8* %23, i8** %4, align 8, !dbg !63
  %24 = load i8*, i8** %4, align 8, !dbg !66
  %25 = load i32, i32* %3, align 4, !dbg !67
  %26 = zext i32 %25 to i64, !dbg !67
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef %26, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !68
  %27 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !69
  %28 = load i8*, i8** %4, align 8, !dbg !70
  %29 = load i32, i32* %3, align 4, !dbg !71
  %30 = call i32 @xmlBufferAdd(%struct._xmlBuffer* noundef %27, i8* noundef %28, i32 noundef %29), !dbg !72
  %31 = load i8*, i8** %4, align 8, !dbg !73
  call void @free(i8* noundef %31) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %5, metadata !75, metadata !DIExpression()), !dbg !76
  %32 = bitcast i32* %5 to i8*, !dbg !77
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !78
  %33 = load i32, i32* %5, align 4, !dbg !79
  %34 = icmp uge i32 %33, 0, !dbg !80
  %35 = zext i1 %34 to i32, !dbg !80
  %36 = sext i32 %35 to i64, !dbg !79
  call void @klee_assume(i64 noundef %36), !dbg !81
  %37 = load i32, i32* %5, align 4, !dbg !82
  %38 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !83
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %38, i32 0, i32 1, !dbg !84
  %40 = load i32, i32* %39, align 8, !dbg !84
  %41 = icmp ule i32 %37, %40, !dbg !85
  %42 = zext i1 %41 to i32, !dbg !85
  %43 = sext i32 %42 to i64, !dbg !82
  call void @klee_assume(i64 noundef %43), !dbg !86
  %44 = load i32, i32* %5, align 4, !dbg !87
  %45 = icmp ugt i32 %44, 0, !dbg !89
  br i1 %45, label %46, label %51, !dbg !90

46:                                               ; preds = %17
  %47 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !91
  %48 = load i32, i32* %5, align 4, !dbg !93
  %49 = call i32 @xmlBufferShrink(%struct._xmlBuffer* noundef %47, i32 noundef %48), !dbg !94
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.4, i64 0, i64 0), i32 noundef 27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !95
  br label %51, !dbg !96

51:                                               ; preds = %46, %17
  %52 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !97
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %52), !dbg !98
  store i32 0, i32* %1, align 4, !dbg !99
  br label %53, !dbg !99

53:                                               ; preds = %51, %9
  %54 = load i32, i32* %1, align 4, !dbg !100
  ret i32 %54, !dbg !100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare i32 @xmlBufferAdd(%struct._xmlBuffer* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i32 @xmlBufferShrink(%struct._xmlBuffer* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/053_buf.c_357_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "d2326eeb18327e7dfdd540c81ef20606")
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
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !18, line: 28, baseType: !19)
!18 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !29, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{}
!33 = !DILocalVariable(name: "buf", scope: !28, file: !1, line: 8, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !38)
!38 = !{!39, !40, !41, !42, !44}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !37, file: !4, line: 92, baseType: !16, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !37, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !37, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !37, file: !4, line: 95, baseType: !43, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !37, file: !4, line: 96, baseType: !16, size: 64, offset: 192)
!45 = !DILocation(line: 8, column: 18, scope: !28)
!46 = !DILocation(line: 8, column: 24, scope: !28)
!47 = !DILocation(line: 9, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 9)
!49 = !DILocation(line: 9, column: 9, scope: !28)
!50 = !DILocation(line: 9, column: 15, scope: !48)
!51 = !DILocalVariable(name: "initial_size", scope: !28, file: !1, line: 11, type: !5)
!52 = !DILocation(line: 11, column: 18, scope: !28)
!53 = !DILocation(line: 12, column: 24, scope: !28)
!54 = !DILocation(line: 12, column: 5, scope: !28)
!55 = !DILocation(line: 13, column: 17, scope: !28)
!56 = !DILocation(line: 13, column: 30, scope: !28)
!57 = !DILocation(line: 13, column: 34, scope: !28)
!58 = !DILocation(line: 13, column: 37, scope: !28)
!59 = !DILocation(line: 13, column: 50, scope: !28)
!60 = !DILocation(line: 0, scope: !28)
!61 = !DILocation(line: 13, column: 5, scope: !28)
!62 = !DILocalVariable(name: "initial_content", scope: !28, file: !1, line: 15, type: !14)
!63 = !DILocation(line: 15, column: 11, scope: !28)
!64 = !DILocation(line: 15, column: 43, scope: !28)
!65 = !DILocation(line: 15, column: 36, scope: !28)
!66 = !DILocation(line: 16, column: 24, scope: !28)
!67 = !DILocation(line: 16, column: 41, scope: !28)
!68 = !DILocation(line: 16, column: 5, scope: !28)
!69 = !DILocation(line: 17, column: 18, scope: !28)
!70 = !DILocation(line: 17, column: 33, scope: !28)
!71 = !DILocation(line: 17, column: 50, scope: !28)
!72 = !DILocation(line: 17, column: 5, scope: !28)
!73 = !DILocation(line: 18, column: 10, scope: !28)
!74 = !DILocation(line: 18, column: 5, scope: !28)
!75 = !DILocalVariable(name: "len", scope: !28, file: !1, line: 20, type: !5)
!76 = !DILocation(line: 20, column: 18, scope: !28)
!77 = !DILocation(line: 21, column: 24, scope: !28)
!78 = !DILocation(line: 21, column: 5, scope: !28)
!79 = !DILocation(line: 22, column: 17, scope: !28)
!80 = !DILocation(line: 22, column: 21, scope: !28)
!81 = !DILocation(line: 22, column: 5, scope: !28)
!82 = !DILocation(line: 23, column: 17, scope: !28)
!83 = !DILocation(line: 23, column: 24, scope: !28)
!84 = !DILocation(line: 23, column: 29, scope: !28)
!85 = !DILocation(line: 23, column: 21, scope: !28)
!86 = !DILocation(line: 23, column: 5, scope: !28)
!87 = !DILocation(line: 25, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !28, file: !1, line: 25, column: 9)
!89 = !DILocation(line: 25, column: 13, scope: !88)
!90 = !DILocation(line: 25, column: 9, scope: !28)
!91 = !DILocation(line: 26, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 25, column: 18)
!93 = !DILocation(line: 26, column: 30, scope: !92)
!94 = !DILocation(line: 26, column: 9, scope: !92)
!95 = !DILocation(line: 27, column: 9, scope: !92)
!96 = !DILocation(line: 28, column: 5, scope: !92)
!97 = !DILocation(line: 30, column: 19, scope: !28)
!98 = !DILocation(line: 30, column: 5, scope: !28)
!99 = !DILocation(line: 31, column: 5, scope: !28)
!100 = !DILocation(line: 32, column: 1, scope: !28)
