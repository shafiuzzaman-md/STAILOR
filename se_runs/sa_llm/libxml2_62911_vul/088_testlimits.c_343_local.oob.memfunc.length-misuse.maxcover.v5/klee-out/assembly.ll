; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlTextReader = type opaque

@.str = private unnamed_addr constant [18 x i8] c"<root>test</root>\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlTextReader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct._xmlTextReader** %4, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %5, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata [1024 x i8]* %6, metadata !35, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %7, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %8, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %9, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %10, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %11, metadata !48, metadata !DIExpression()), !dbg !50
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8, !dbg !51
  %12 = load i8*, i8** %2, align 8, !dbg !52
  %13 = call i64 @strlen(i8* noundef %12) #7, !dbg !53
  %14 = trunc i64 %13 to i32, !dbg !53
  store i32 %14, i32* %3, align 4, !dbg !54
  %15 = load i8*, i8** %2, align 8, !dbg !55
  %16 = load i32, i32* %3, align 4, !dbg !56
  %17 = call %struct._xmlTextReader* @xmlReaderForMemory(i8* noundef %15, i32 noundef %16, i8* noundef null, i8* noundef null, i32 noundef 0), !dbg !57
  store %struct._xmlTextReader* %17, %struct._xmlTextReader** %4, align 8, !dbg !58
  %18 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !59
  %19 = icmp eq %struct._xmlTextReader* %18, null, !dbg !61
  br i1 %19, label %20, label %21, !dbg !62

20:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !63
  br label %78, !dbg !63

21:                                               ; preds = %0
  %22 = bitcast i32* %7 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  %23 = bitcast i32* %8 to i8*, !dbg !67
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !68
  %24 = bitcast i32* %9 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !70
  %25 = bitcast i32* %10 to i8*, !dbg !71
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !72
  %26 = bitcast i8** %11 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !74
  %27 = load i32, i32* %7, align 4, !dbg !75
  %28 = icmp eq i32 %27, 2, !dbg !76
  %29 = zext i1 %28 to i32, !dbg !76
  %30 = sext i32 %29 to i64, !dbg !75
  call void @klee_assume(i64 noundef %30), !dbg !77
  %31 = load i32, i32* %9, align 4, !dbg !78
  %32 = icmp sge i32 %31, 0, !dbg !79
  %33 = zext i1 %32 to i32, !dbg !79
  %34 = sext i32 %33 to i64, !dbg !78
  call void @klee_assume(i64 noundef %34), !dbg !80
  %35 = load i32, i32* %10, align 4, !dbg !81
  %36 = icmp sge i32 %35, 0, !dbg !82
  %37 = zext i1 %36 to i32, !dbg !82
  %38 = sext i32 %37 to i64, !dbg !81
  call void @klee_assume(i64 noundef %38), !dbg !83
  %39 = load i32, i32* %8, align 4, !dbg !84
  %40 = icmp sge i32 %39, 0, !dbg !85
  %41 = zext i1 %40 to i32, !dbg !85
  %42 = sext i32 %41 to i64, !dbg !84
  call void @klee_assume(i64 noundef %42), !dbg !86
  %43 = load i32, i32* %9, align 4, !dbg !87
  %44 = load i32, i32* %10, align 4, !dbg !88
  %45 = icmp sge i32 %43, %44, !dbg !89
  %46 = zext i1 %45 to i32, !dbg !89
  %47 = sext i32 %46 to i64, !dbg !87
  call void @klee_assume(i64 noundef %47), !dbg !90
  %48 = load i32, i32* %7, align 4, !dbg !91
  %49 = icmp eq i32 %48, 2, !dbg !93
  br i1 %49, label %50, label %76, !dbg !94

50:                                               ; preds = %21
  %51 = load i32, i32* %9, align 4, !dbg !95
  %52 = load i32, i32* %10, align 4, !dbg !98
  %53 = icmp sge i32 %51, %52, !dbg !99
  br i1 %53, label %54, label %62, !dbg !100

54:                                               ; preds = %50
  %55 = load i32, i32* %10, align 4, !dbg !101
  store i32 %55, i32* %9, align 4, !dbg !103
  store i32 0, i32* %10, align 4, !dbg !104
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !105
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !106
  %58 = load i8*, i8** %11, align 8, !dbg !107
  %59 = load i32, i32* %9, align 4, !dbg !108
  %60 = sext i32 %59 to i64, !dbg !108
  %61 = call i8* @memcpy(i8* %57, i8* %58, i64 %60), !dbg !106
  store i32 3, i32* %7, align 4, !dbg !109
  store i32 0, i32* %8, align 4, !dbg !110
  br label %75, !dbg !111

62:                                               ; preds = %50
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0, !dbg !112
  %64 = load i8*, i8** %11, align 8, !dbg !114
  %65 = load i32, i32* %9, align 4, !dbg !115
  %66 = sext i32 %65 to i64, !dbg !115
  %67 = call i8* @memcpy(i8* %63, i8* %64, i64 %66), !dbg !112
  %68 = load i32, i32* %9, align 4, !dbg !116
  %69 = load i32, i32* %10, align 4, !dbg !117
  %70 = sub nsw i32 %69, %68, !dbg !117
  store i32 %70, i32* %10, align 4, !dbg !117
  %71 = load i32, i32* %9, align 4, !dbg !118
  %72 = load i8*, i8** %11, align 8, !dbg !119
  %73 = sext i32 %71 to i64, !dbg !119
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !119
  store i8* %74, i8** %11, align 8, !dbg !119
  br label %75

75:                                               ; preds = %62, %54
  br label %76, !dbg !120

76:                                               ; preds = %75, %21
  %77 = load %struct._xmlTextReader*, %struct._xmlTextReader** %4, align 8, !dbg !121
  call void @xmlFreeTextReader(%struct._xmlTextReader* noundef %77), !dbg !122
  call void @xmlCleanupParser(), !dbg !123
  store i32 0, i32* %1, align 4, !dbg !124
  br label %78, !dbg !124

78:                                               ; preds = %76, %20
  %79 = load i32, i32* %1, align 4, !dbg !125
  ret i32 %79, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

declare %struct._xmlTextReader* @xmlReaderForMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @xmlFreeTextReader(%struct._xmlTextReader* noundef) #3

declare void @xmlCleanupParser() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !126 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i8** %7, metadata !141, metadata !DIExpression()), !dbg !142
  %9 = load i8*, i8** %4, align 8, !dbg !143
  store i8* %9, i8** %7, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i8** %8, metadata !144, metadata !DIExpression()), !dbg !145
  %10 = load i8*, i8** %5, align 8, !dbg !146
  store i8* %10, i8** %8, align 8, !dbg !145
  br label %11, !dbg !147

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !148
  %13 = add i64 %12, -1, !dbg !148
  store i64 %13, i64* %6, align 8, !dbg !148
  %14 = icmp ugt i64 %12, 0, !dbg !149
  br i1 %14, label %15, label %21, !dbg !147

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !150
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !150
  store i8* %17, i8** %8, align 8, !dbg !150
  %18 = load i8, i8* %16, align 1, !dbg !151
  %19 = load i8*, i8** %7, align 8, !dbg !152
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !152
  store i8* %20, i8** %7, align 8, !dbg !152
  store i8 %18, i8* %19, align 1, !dbg !153
  br label %11, !dbg !147, !llvm.loop !154

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !156
  ret i8* %22, !dbg !157
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "460f328ead7324092c6f3dd0e775f1bb")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "xml_data", scope: !14, file: !1, line: 8, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DILocation(line: 8, column: 17, scope: !14)
!24 = !DILocalVariable(name: "xml_size", scope: !14, file: !1, line: 9, type: !17)
!25 = !DILocation(line: 9, column: 9, scope: !14)
!26 = !DILocalVariable(name: "reader", scope: !14, file: !1, line: 10, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextReaderPtr", file: !28, line: 106, baseType: !29)
!28 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlreader.h", directory: "", checksumkind: CSK_MD5, checksum: "f4e1ae61cb2ac0d3ded93985fed902db")
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextReader", file: !28, line: 99, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextReader", file: !28, line: 99, flags: DIFlagFwdDecl)
!32 = !DILocation(line: 10, column: 22, scope: !14)
!33 = !DILocalVariable(name: "ret", scope: !14, file: !1, line: 11, type: !17)
!34 = !DILocation(line: 11, column: 9, scope: !14)
!35 = !DILocalVariable(name: "buffer", scope: !14, file: !1, line: 12, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8192, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 1024)
!39 = !DILocation(line: 12, column: 10, scope: !14)
!40 = !DILocalVariable(name: "instate", scope: !14, file: !1, line: 13, type: !17)
!41 = !DILocation(line: 13, column: 9, scope: !14)
!42 = !DILocalVariable(name: "curlen", scope: !14, file: !1, line: 14, type: !17)
!43 = !DILocation(line: 14, column: 9, scope: !14)
!44 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 15, type: !17)
!45 = !DILocation(line: 15, column: 9, scope: !14)
!46 = !DILocalVariable(name: "rlen", scope: !14, file: !1, line: 16, type: !17)
!47 = !DILocation(line: 16, column: 9, scope: !14)
!48 = !DILocalVariable(name: "current", scope: !14, file: !1, line: 17, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!50 = !DILocation(line: 17, column: 11, scope: !14)
!51 = !DILocation(line: 19, column: 14, scope: !14)
!52 = !DILocation(line: 20, column: 23, scope: !14)
!53 = !DILocation(line: 20, column: 16, scope: !14)
!54 = !DILocation(line: 20, column: 14, scope: !14)
!55 = !DILocation(line: 22, column: 33, scope: !14)
!56 = !DILocation(line: 22, column: 43, scope: !14)
!57 = !DILocation(line: 22, column: 14, scope: !14)
!58 = !DILocation(line: 22, column: 12, scope: !14)
!59 = !DILocation(line: 23, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !14, file: !1, line: 23, column: 9)
!61 = !DILocation(line: 23, column: 16, scope: !60)
!62 = !DILocation(line: 23, column: 9, scope: !14)
!63 = !DILocation(line: 24, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 25)
!65 = !DILocation(line: 27, column: 24, scope: !14)
!66 = !DILocation(line: 27, column: 5, scope: !14)
!67 = !DILocation(line: 28, column: 24, scope: !14)
!68 = !DILocation(line: 28, column: 5, scope: !14)
!69 = !DILocation(line: 29, column: 24, scope: !14)
!70 = !DILocation(line: 29, column: 5, scope: !14)
!71 = !DILocation(line: 30, column: 24, scope: !14)
!72 = !DILocation(line: 30, column: 5, scope: !14)
!73 = !DILocation(line: 31, column: 24, scope: !14)
!74 = !DILocation(line: 31, column: 5, scope: !14)
!75 = !DILocation(line: 33, column: 17, scope: !14)
!76 = !DILocation(line: 33, column: 25, scope: !14)
!77 = !DILocation(line: 33, column: 5, scope: !14)
!78 = !DILocation(line: 34, column: 17, scope: !14)
!79 = !DILocation(line: 34, column: 21, scope: !14)
!80 = !DILocation(line: 34, column: 5, scope: !14)
!81 = !DILocation(line: 35, column: 17, scope: !14)
!82 = !DILocation(line: 35, column: 22, scope: !14)
!83 = !DILocation(line: 35, column: 5, scope: !14)
!84 = !DILocation(line: 36, column: 17, scope: !14)
!85 = !DILocation(line: 36, column: 24, scope: !14)
!86 = !DILocation(line: 36, column: 5, scope: !14)
!87 = !DILocation(line: 37, column: 17, scope: !14)
!88 = !DILocation(line: 37, column: 24, scope: !14)
!89 = !DILocation(line: 37, column: 21, scope: !14)
!90 = !DILocation(line: 37, column: 5, scope: !14)
!91 = !DILocation(line: 39, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !14, file: !1, line: 39, column: 9)
!93 = !DILocation(line: 39, column: 17, scope: !92)
!94 = !DILocation(line: 39, column: 9, scope: !14)
!95 = !DILocation(line: 40, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 40, column: 13)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 39, column: 23)
!98 = !DILocation(line: 40, column: 20, scope: !96)
!99 = !DILocation(line: 40, column: 17, scope: !96)
!100 = !DILocation(line: 40, column: 13, scope: !97)
!101 = !DILocation(line: 41, column: 19, scope: !102)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 40, column: 26)
!103 = !DILocation(line: 41, column: 17, scope: !102)
!104 = !DILocation(line: 42, column: 18, scope: !102)
!105 = !DILocation(line: 43, column: 13, scope: !102)
!106 = !DILocation(line: 44, column: 13, scope: !102)
!107 = !DILocation(line: 44, column: 28, scope: !102)
!108 = !DILocation(line: 44, column: 37, scope: !102)
!109 = !DILocation(line: 45, column: 21, scope: !102)
!110 = !DILocation(line: 46, column: 20, scope: !102)
!111 = !DILocation(line: 47, column: 9, scope: !102)
!112 = !DILocation(line: 48, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !96, file: !1, line: 47, column: 16)
!114 = !DILocation(line: 48, column: 28, scope: !113)
!115 = !DILocation(line: 48, column: 37, scope: !113)
!116 = !DILocation(line: 49, column: 21, scope: !113)
!117 = !DILocation(line: 49, column: 18, scope: !113)
!118 = !DILocation(line: 50, column: 24, scope: !113)
!119 = !DILocation(line: 50, column: 21, scope: !113)
!120 = !DILocation(line: 52, column: 5, scope: !97)
!121 = !DILocation(line: 54, column: 23, scope: !14)
!122 = !DILocation(line: 54, column: 5, scope: !14)
!123 = !DILocation(line: 55, column: 5, scope: !14)
!124 = !DILocation(line: 56, column: 5, scope: !14)
!125 = !DILocation(line: 57, column: 1, scope: !14)
!126 = distinct !DISubprogram(name: "memcpy", scope: !127, file: !127, line: 12, type: !128, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!127 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!128 = !DISubroutineType(types: !129)
!129 = !{!3, !3, !130, !132}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 46, baseType: !134)
!133 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DILocalVariable(name: "destaddr", arg: 1, scope: !126, file: !127, line: 12, type: !3)
!136 = !DILocation(line: 12, column: 20, scope: !126)
!137 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !126, file: !127, line: 12, type: !130)
!138 = !DILocation(line: 12, column: 42, scope: !126)
!139 = !DILocalVariable(name: "len", arg: 3, scope: !126, file: !127, line: 12, type: !132)
!140 = !DILocation(line: 12, column: 58, scope: !126)
!141 = !DILocalVariable(name: "dest", scope: !126, file: !127, line: 13, type: !49)
!142 = !DILocation(line: 13, column: 9, scope: !126)
!143 = !DILocation(line: 13, column: 16, scope: !126)
!144 = !DILocalVariable(name: "src", scope: !126, file: !127, line: 14, type: !20)
!145 = !DILocation(line: 14, column: 15, scope: !126)
!146 = !DILocation(line: 14, column: 21, scope: !126)
!147 = !DILocation(line: 16, column: 3, scope: !126)
!148 = !DILocation(line: 16, column: 13, scope: !126)
!149 = !DILocation(line: 16, column: 16, scope: !126)
!150 = !DILocation(line: 17, column: 19, scope: !126)
!151 = !DILocation(line: 17, column: 15, scope: !126)
!152 = !DILocation(line: 17, column: 10, scope: !126)
!153 = !DILocation(line: 17, column: 13, scope: !126)
!154 = distinct !{!154, !147, !150, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 18, column: 10, scope: !126)
!157 = !DILocation(line: 18, column: 3, scope: !126)
