; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/182_tree.c_7367_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/182_tree.c_7367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"newSize\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@xmlMallocAtomic = external global i8* (i64)*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/182_tree.c_7367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !34, metadata !DIExpression()), !dbg !46
  %6 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !47
  store %struct._xmlBuffer* %6, %struct._xmlBuffer** %2, align 8, !dbg !46
  %7 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !48
  %8 = icmp eq %struct._xmlBuffer* %7, null, !dbg !50
  br i1 %8, label %9, label %10, !dbg !51

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !52
  br label %98, !dbg !52

10:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !53, metadata !DIExpression()), !dbg !54
  %11 = bitcast i32* %3 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %12 = load i32, i32* %3, align 4, !dbg !57
  %13 = icmp ugt i32 %12, 0, !dbg !58
  %14 = zext i1 %13 to i32, !dbg !58
  %15 = sext i32 %14 to i64, !dbg !57
  call void @klee_assume(i64 noundef %15), !dbg !59
  %16 = load i32, i32* %3, align 4, !dbg !60
  %17 = icmp ule i32 %16, 1024, !dbg !61
  %18 = zext i1 %17 to i32, !dbg !61
  %19 = sext i32 %18 to i64, !dbg !60
  call void @klee_assume(i64 noundef %19), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %4, metadata !63, metadata !DIExpression()), !dbg !64
  %20 = bitcast i32* %4 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  %21 = load i32, i32* %4, align 4, !dbg !67
  %22 = icmp uge i32 %21, 0, !dbg !68
  %23 = zext i1 %22 to i32, !dbg !68
  %24 = sext i32 %23 to i64, !dbg !67
  call void @klee_assume(i64 noundef %24), !dbg !69
  %25 = load i32, i32* %4, align 4, !dbg !70
  %26 = load i32, i32* %3, align 4, !dbg !71
  %27 = icmp ult i32 %25, %26, !dbg !72
  %28 = zext i1 %27 to i32, !dbg !72
  %29 = sext i32 %28 to i64, !dbg !70
  call void @klee_assume(i64 noundef %29), !dbg !73
  %30 = load i32, i32* %4, align 4, !dbg !74
  %31 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !75
  %32 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %31, i32 0, i32 1, !dbg !76
  store i32 %30, i32* %32, align 8, !dbg !77
  %33 = load i32, i32* %4, align 4, !dbg !78
  %34 = add i32 %33, 1, !dbg !79
  %35 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !80
  %36 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %35, i32 0, i32 2, !dbg !81
  store i32 %34, i32* %36, align 4, !dbg !82
  %37 = load i8* (i64)*, i8* (i64)** @xmlMallocAtomic, align 8, !dbg !83
  %38 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !84
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %38, i32 0, i32 2, !dbg !85
  %40 = load i32, i32* %39, align 4, !dbg !85
  %41 = zext i32 %40 to i64, !dbg !84
  %42 = call i8* %37(i64 noundef %41), !dbg !83
  %43 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !86
  %44 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %43, i32 0, i32 0, !dbg !87
  store i8* %42, i8** %44, align 8, !dbg !88
  %45 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !89
  %46 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %45, i32 0, i32 0, !dbg !91
  %47 = load i8*, i8** %46, align 8, !dbg !91
  %48 = icmp eq i8* %47, null, !dbg !92
  br i1 %48, label %49, label %51, !dbg !93

49:                                               ; preds = %10
  %50 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !94
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %50), !dbg !96
  store i32 0, i32* %1, align 4, !dbg !97
  br label %98, !dbg !97

51:                                               ; preds = %10
  %52 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !98
  %53 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %52, i32 0, i32 0, !dbg !99
  %54 = load i8*, i8** %53, align 8, !dbg !99
  %55 = load i32, i32* %4, align 4, !dbg !100
  %56 = zext i32 %55 to i64, !dbg !98
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !98
  store i8 0, i8* %57, align 1, !dbg !101
  call void @llvm.dbg.declare(metadata i8** %5, metadata !102, metadata !DIExpression()), !dbg !103
  %58 = load i8* (i64)*, i8* (i64)** @xmlMallocAtomic, align 8, !dbg !104
  %59 = load i32, i32* %3, align 4, !dbg !105
  %60 = zext i32 %59 to i64, !dbg !105
  %61 = call i8* %58(i64 noundef %60), !dbg !104
  store i8* %61, i8** %5, align 8, !dbg !103
  %62 = load i8*, i8** %5, align 8, !dbg !106
  %63 = icmp ne i8* %62, null, !dbg !108
  br i1 %63, label %64, label %85, !dbg !109

64:                                               ; preds = %51
  %65 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !110
  %66 = load i8*, i8** %5, align 8, !dbg !112
  %67 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !113
  %68 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %67, i32 0, i32 0, !dbg !114
  %69 = load i8*, i8** %68, align 8, !dbg !114
  %70 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !115
  %71 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %70, i32 0, i32 1, !dbg !116
  %72 = load i32, i32* %71, align 8, !dbg !116
  %73 = zext i32 %72 to i64, !dbg !115
  %74 = call i8* @memcpy(i8* %66, i8* %69, i64 %73), !dbg !117
  %75 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !118
  %76 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !119
  %77 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %76, i32 0, i32 0, !dbg !120
  %78 = load i8*, i8** %77, align 8, !dbg !120
  call void %75(i8* noundef %78), !dbg !118
  %79 = load i8*, i8** %5, align 8, !dbg !121
  %80 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !122
  %81 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %80, i32 0, i32 1, !dbg !123
  %82 = load i32, i32* %81, align 8, !dbg !123
  %83 = zext i32 %82 to i64, !dbg !121
  %84 = getelementptr inbounds i8, i8* %79, i64 %83, !dbg !121
  store i8 0, i8* %84, align 1, !dbg !124
  br label %85, !dbg !125

85:                                               ; preds = %64, %51
  %86 = load i8*, i8** %5, align 8, !dbg !126
  %87 = icmp eq i8* %86, null, !dbg !128
  br i1 %87, label %88, label %90, !dbg !129

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) bitcast (i32 (...)* @xmlTreeErrMemory to i32 (i8*, ...)*)(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !130
  br label %90, !dbg !132

90:                                               ; preds = %88, %85
  %91 = load i8*, i8** %5, align 8, !dbg !133
  %92 = icmp ne i8* %91, null, !dbg !133
  br i1 %92, label %93, label %96, !dbg !135

93:                                               ; preds = %90
  %94 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !136
  %95 = load i8*, i8** %5, align 8, !dbg !137
  call void %94(i8* noundef %95), !dbg !136
  br label %96, !dbg !136

96:                                               ; preds = %93, %90
  %97 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !138
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %97), !dbg !139
  store i32 0, i32* %1, align 4, !dbg !140
  br label %98, !dbg !140

98:                                               ; preds = %96, %49, %9
  %99 = load i32, i32* %1, align 4, !dbg !141
  ret i32 %99, !dbg !141
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @xmlTreeErrMemory(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !142 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %7, metadata !157, metadata !DIExpression()), !dbg !160
  %9 = load i8*, i8** %4, align 8, !dbg !161
  store i8* %9, i8** %7, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i8** %8, metadata !162, metadata !DIExpression()), !dbg !165
  %10 = load i8*, i8** %5, align 8, !dbg !166
  store i8* %10, i8** %8, align 8, !dbg !165
  br label %11, !dbg !167

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !168
  %13 = add i64 %12, -1, !dbg !168
  store i64 %13, i64* %6, align 8, !dbg !168
  %14 = icmp ugt i64 %12, 0, !dbg !169
  br i1 %14, label %15, label %21, !dbg !167

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !170
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !170
  store i8* %17, i8** %8, align 8, !dbg !170
  %18 = load i8, i8* %16, align 1, !dbg !171
  %19 = load i8*, i8** %7, align 8, !dbg !172
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !172
  store i8* %20, i8** %7, align 8, !dbg !172
  store i8 %18, i8* %19, align 1, !dbg !173
  br label %11, !dbg !167, !llvm.loop !174

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !176
  ret i8* %22, !dbg !177
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/182_tree.c_7367_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9368d7b39010ce0feb9c5d96a1cca427")
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
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !30, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocalVariable(name: "buf", scope: !29, file: !1, line: 7, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !39)
!39 = !{!40, !41, !42, !43, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !38, file: !4, line: 92, baseType: !15, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !38, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !38, file: !4, line: 95, baseType: !44, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !38, file: !4, line: 96, baseType: !15, size: 64, offset: 192)
!46 = !DILocation(line: 7, column: 18, scope: !29)
!47 = !DILocation(line: 7, column: 24, scope: !29)
!48 = !DILocation(line: 8, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 9)
!50 = !DILocation(line: 8, column: 13, scope: !49)
!51 = !DILocation(line: 8, column: 9, scope: !29)
!52 = !DILocation(line: 8, column: 22, scope: !49)
!53 = !DILocalVariable(name: "newSize", scope: !29, file: !1, line: 10, type: !5)
!54 = !DILocation(line: 10, column: 18, scope: !29)
!55 = !DILocation(line: 11, column: 24, scope: !29)
!56 = !DILocation(line: 11, column: 5, scope: !29)
!57 = !DILocation(line: 12, column: 17, scope: !29)
!58 = !DILocation(line: 12, column: 25, scope: !29)
!59 = !DILocation(line: 12, column: 5, scope: !29)
!60 = !DILocation(line: 13, column: 17, scope: !29)
!61 = !DILocation(line: 13, column: 25, scope: !29)
!62 = !DILocation(line: 13, column: 5, scope: !29)
!63 = !DILocalVariable(name: "use", scope: !29, file: !1, line: 15, type: !5)
!64 = !DILocation(line: 15, column: 18, scope: !29)
!65 = !DILocation(line: 16, column: 24, scope: !29)
!66 = !DILocation(line: 16, column: 5, scope: !29)
!67 = !DILocation(line: 17, column: 17, scope: !29)
!68 = !DILocation(line: 17, column: 21, scope: !29)
!69 = !DILocation(line: 17, column: 5, scope: !29)
!70 = !DILocation(line: 18, column: 17, scope: !29)
!71 = !DILocation(line: 18, column: 23, scope: !29)
!72 = !DILocation(line: 18, column: 21, scope: !29)
!73 = !DILocation(line: 18, column: 5, scope: !29)
!74 = !DILocation(line: 20, column: 16, scope: !29)
!75 = !DILocation(line: 20, column: 5, scope: !29)
!76 = !DILocation(line: 20, column: 10, scope: !29)
!77 = !DILocation(line: 20, column: 14, scope: !29)
!78 = !DILocation(line: 21, column: 17, scope: !29)
!79 = !DILocation(line: 21, column: 21, scope: !29)
!80 = !DILocation(line: 21, column: 5, scope: !29)
!81 = !DILocation(line: 21, column: 10, scope: !29)
!82 = !DILocation(line: 21, column: 15, scope: !29)
!83 = !DILocation(line: 22, column: 31, scope: !29)
!84 = !DILocation(line: 22, column: 47, scope: !29)
!85 = !DILocation(line: 22, column: 52, scope: !29)
!86 = !DILocation(line: 22, column: 5, scope: !29)
!87 = !DILocation(line: 22, column: 10, scope: !29)
!88 = !DILocation(line: 22, column: 18, scope: !29)
!89 = !DILocation(line: 23, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !29, file: !1, line: 23, column: 9)
!91 = !DILocation(line: 23, column: 14, scope: !90)
!92 = !DILocation(line: 23, column: 22, scope: !90)
!93 = !DILocation(line: 23, column: 9, scope: !29)
!94 = !DILocation(line: 24, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 23, column: 31)
!96 = !DILocation(line: 24, column: 9, scope: !95)
!97 = !DILocation(line: 25, column: 9, scope: !95)
!98 = !DILocation(line: 27, column: 5, scope: !29)
!99 = !DILocation(line: 27, column: 10, scope: !29)
!100 = !DILocation(line: 27, column: 18, scope: !29)
!101 = !DILocation(line: 27, column: 23, scope: !29)
!102 = !DILocalVariable(name: "rebuf", scope: !29, file: !1, line: 29, type: !15)
!103 = !DILocation(line: 29, column: 14, scope: !29)
!104 = !DILocation(line: 29, column: 33, scope: !29)
!105 = !DILocation(line: 29, column: 49, scope: !29)
!106 = !DILocation(line: 30, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !29, file: !1, line: 30, column: 9)
!108 = !DILocation(line: 30, column: 15, scope: !107)
!109 = !DILocation(line: 30, column: 9, scope: !29)
!110 = !DILocation(line: 31, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 30, column: 24)
!112 = !DILocation(line: 32, column: 16, scope: !111)
!113 = !DILocation(line: 32, column: 23, scope: !111)
!114 = !DILocation(line: 32, column: 28, scope: !111)
!115 = !DILocation(line: 32, column: 37, scope: !111)
!116 = !DILocation(line: 32, column: 42, scope: !111)
!117 = !DILocation(line: 32, column: 9, scope: !111)
!118 = !DILocation(line: 33, column: 9, scope: !111)
!119 = !DILocation(line: 33, column: 17, scope: !111)
!120 = !DILocation(line: 33, column: 22, scope: !111)
!121 = !DILocation(line: 34, column: 9, scope: !111)
!122 = !DILocation(line: 34, column: 15, scope: !111)
!123 = !DILocation(line: 34, column: 20, scope: !111)
!124 = !DILocation(line: 34, column: 25, scope: !111)
!125 = !DILocation(line: 35, column: 5, scope: !111)
!126 = !DILocation(line: 37, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !29, file: !1, line: 37, column: 9)
!128 = !DILocation(line: 37, column: 15, scope: !127)
!129 = !DILocation(line: 37, column: 9, scope: !29)
!130 = !DILocation(line: 38, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 37, column: 24)
!132 = !DILocation(line: 39, column: 5, scope: !131)
!133 = !DILocation(line: 41, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 9)
!135 = !DILocation(line: 41, column: 9, scope: !29)
!136 = !DILocation(line: 41, column: 16, scope: !134)
!137 = !DILocation(line: 41, column: 24, scope: !134)
!138 = !DILocation(line: 42, column: 19, scope: !29)
!139 = !DILocation(line: 42, column: 5, scope: !29)
!140 = !DILocation(line: 43, column: 5, scope: !29)
!141 = !DILocation(line: 44, column: 1, scope: !29)
!142 = distinct !DISubprogram(name: "memcpy", scope: !143, file: !143, line: 12, type: !144, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !33)
!143 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!144 = !DISubroutineType(types: !145)
!145 = !{!14, !14, !146, !148}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 46, baseType: !150)
!149 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!150 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!151 = !DILocalVariable(name: "destaddr", arg: 1, scope: !142, file: !143, line: 12, type: !14)
!152 = !DILocation(line: 12, column: 20, scope: !142)
!153 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !142, file: !143, line: 12, type: !146)
!154 = !DILocation(line: 12, column: 42, scope: !142)
!155 = !DILocalVariable(name: "len", arg: 3, scope: !142, file: !143, line: 12, type: !148)
!156 = !DILocation(line: 12, column: 58, scope: !142)
!157 = !DILocalVariable(name: "dest", scope: !142, file: !143, line: 13, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DILocation(line: 13, column: 9, scope: !142)
!161 = !DILocation(line: 13, column: 16, scope: !142)
!162 = !DILocalVariable(name: "src", scope: !142, file: !143, line: 14, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!165 = !DILocation(line: 14, column: 15, scope: !142)
!166 = !DILocation(line: 14, column: 21, scope: !142)
!167 = !DILocation(line: 16, column: 3, scope: !142)
!168 = !DILocation(line: 16, column: 13, scope: !142)
!169 = !DILocation(line: 16, column: 16, scope: !142)
!170 = !DILocation(line: 17, column: 19, scope: !142)
!171 = !DILocation(line: 17, column: 15, scope: !142)
!172 = !DILocation(line: 17, column: 10, scope: !142)
!173 = !DILocation(line: 17, column: 13, scope: !142)
!174 = distinct !{!174, !167, !170, !175}
!175 = !{!"llvm.loop.mustprogress"}
!176 = !DILocation(line: 18, column: 10, scope: !142)
!177 = !DILocation(line: 18, column: 3, scope: !142)
