; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/134_testchar.c_821_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/134_testchar.c_821_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._xmlParserCtxt = type { %struct._xmlDoc* }
%struct._xmlDoc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"<?xml version=\221.0\22?>\0A<d>\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\B1</d>\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed UTF-8 chunk test 2-1\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"(i < outSize) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/134_testchar.c_821_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseChunk(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !17 {
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !40, metadata !DIExpression()), !dbg !41
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !42
  %10 = load i8*, i8** %6, align 8, !dbg !43
  %11 = load i32, i32* %7, align 4, !dbg !44
  %12 = load i32, i32* %8, align 4, !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDocDumpMemory(%struct._xmlDoc* noundef %0, i8** noundef %1, i32* noundef %2) #0 !dbg !47 {
  %4 = alloca %struct._xmlDoc*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !52, metadata !DIExpression()), !dbg !53
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !56, metadata !DIExpression()), !dbg !57
  %7 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !58
  %8 = icmp ne %struct._xmlDoc* %7, null, !dbg !58
  br i1 %8, label %9, label %30, !dbg !60

9:                                                ; preds = %3
  %10 = load i8**, i8*** %5, align 8, !dbg !61
  %11 = icmp ne i8** %10, null, !dbg !61
  br i1 %11, label %12, label %30, !dbg !62

12:                                               ; preds = %9
  %13 = load i32*, i32** %6, align 8, !dbg !63
  %14 = icmp ne i32* %13, null, !dbg !63
  br i1 %14, label %15, label %30, !dbg !64

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8, !dbg !65
  store i32 7032, i32* %16, align 4, !dbg !67
  %17 = load i32*, i32** %6, align 8, !dbg !68
  %18 = load i32, i32* %17, align 4, !dbg !69
  %19 = sext i32 %18 to i64, !dbg !69
  %20 = call noalias i8* @malloc(i64 noundef %19) #8, !dbg !70
  %21 = load i8**, i8*** %5, align 8, !dbg !71
  store i8* %20, i8** %21, align 8, !dbg !72
  %22 = load i8**, i8*** %5, align 8, !dbg !73
  %23 = load i8*, i8** %22, align 8, !dbg !75
  %24 = icmp ne i8* %23, null, !dbg !75
  br i1 %24, label %25, label %29, !dbg !76

25:                                               ; preds = %15
  %26 = load i8**, i8*** %5, align 8, !dbg !77
  %27 = load i8*, i8** %26, align 8, !dbg !79
  %28 = call i8* @memcpy(i8* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25), !dbg !80
  br label %29, !dbg !81

29:                                               ; preds = %25, %15
  br label %30, !dbg !82

30:                                               ; preds = %29, %12, %9, %3
  ret void, !dbg !83
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !84 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlDoc, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i8** %4, metadata !91, metadata !DIExpression()), !dbg !92
  store i8* null, i8** %4, align 8, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %5, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 0, i32* %5, align 4, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %6, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %7, metadata !97, metadata !DIExpression()), !dbg !98
  store i32 0, i32* %7, align 4, !dbg !98
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !99
  store %struct._xmlDoc* %3, %struct._xmlDoc** %8, align 8, !dbg !100
  call void @xmlParseChunk(%struct._xmlParserCtxt* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 4, i32 noundef 0), !dbg !101
  call void @xmlParseChunk(%struct._xmlParserCtxt* noundef %2, i8* noundef null, i32 noundef 0, i32 noundef 0), !dbg !102
  %9 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !103
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %9, align 8, !dbg !103
  call void @xmlDocDumpMemory(%struct._xmlDoc* noundef %10, i8** noundef %4, i32* noundef %5), !dbg !104
  %11 = load i8*, i8** %4, align 8, !dbg !105
  %12 = call i32 @strncmp(i8* noundef %11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 noundef 25) #9, !dbg !107
  %13 = icmp ne i32 %12, 0, !dbg !108
  br i1 %13, label %14, label %19, !dbg !109

14:                                               ; preds = %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !110
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)), !dbg !112
  %17 = load i32, i32* %7, align 4, !dbg !113
  %18 = add nsw i32 %17, 1, !dbg !113
  store i32 %18, i32* %7, align 4, !dbg !113
  br label %37, !dbg !114

19:                                               ; preds = %0
  store i32 25, i32* %6, align 4, !dbg !115
  br label %20, !dbg !117

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %6, align 4, !dbg !118
  %22 = icmp slt i32 %21, 7032, !dbg !120
  br i1 %22, label %23, label %36, !dbg !121

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4, !dbg !122
  %25 = load i32, i32* %5, align 4, !dbg !122
  %26 = icmp slt i32 %24, %25, !dbg !122
  br i1 %26, label %27, label %29, !dbg !122

27:                                               ; preds = %23
  br i1 true, label %28, label %29, !dbg !122

28:                                               ; preds = %27
  br label %31, !dbg !122

29:                                               ; preds = %27, %23
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !122
  br label %31, !dbg !122

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !124
  br label %33, !dbg !125

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4, !dbg !126
  %35 = add nsw i32 %34, 7, !dbg !126
  store i32 %35, i32* %6, align 4, !dbg !126
  br label %20, !dbg !127, !llvm.loop !128

36:                                               ; preds = %20
  br label %37, !dbg !129

37:                                               ; preds = %36, %14
  call void @llvm.dbg.label(metadata !131), !dbg !132
  %38 = load i8*, i8** %4, align 8, !dbg !133
  %39 = icmp ne i8* %38, null, !dbg !133
  br i1 %39, label %40, label %42, !dbg !135

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8, !dbg !136
  call void @free(i8* noundef %41) #8, !dbg !137
  br label %42, !dbg !137

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %7, align 4, !dbg !138
  ret i32 %43, !dbg !139
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !140 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %7, metadata !156, metadata !DIExpression()), !dbg !157
  %9 = load i8*, i8** %4, align 8, !dbg !158
  store i8* %9, i8** %7, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i8** %8, metadata !159, metadata !DIExpression()), !dbg !160
  %10 = load i8*, i8** %5, align 8, !dbg !161
  store i8* %10, i8** %8, align 8, !dbg !160
  br label %11, !dbg !162

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !163
  %13 = add i64 %12, -1, !dbg !163
  store i64 %13, i64* %6, align 8, !dbg !163
  %14 = icmp ugt i64 %12, 0, !dbg !164
  br i1 %14, label %15, label %21, !dbg !162

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %8, align 8, !dbg !165
  %18 = load i8, i8* %16, align 1, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !167
  store i8* %20, i8** %7, align 8, !dbg !167
  store i8 %18, i8* %19, align 1, !dbg !168
  br label %11, !dbg !162, !llvm.loop !169

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !170
  ret i8* %22, !dbg !171
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/134_testchar.c_821_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "68b7d9a03c4c1881d81d31b43c493045")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlParseChunk", scope: !1, file: !1, line: 22, type: !18, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !31, !30, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 14, size: 64, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !22, file: !1, line: 15, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 18, size: 32, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !27, file: !1, line: 19, baseType: !30, size: 32)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!33 = !{}
!34 = !DILocalVariable(name: "ctxt", arg: 1, scope: !17, file: !1, line: 22, type: !20)
!35 = !DILocation(line: 22, column: 35, scope: !17)
!36 = !DILocalVariable(name: "chunk", arg: 2, scope: !17, file: !1, line: 22, type: !31)
!37 = !DILocation(line: 22, column: 53, scope: !17)
!38 = !DILocalVariable(name: "size", arg: 3, scope: !17, file: !1, line: 22, type: !30)
!39 = !DILocation(line: 22, column: 64, scope: !17)
!40 = !DILocalVariable(name: "terminate", arg: 4, scope: !17, file: !1, line: 22, type: !30)
!41 = !DILocation(line: 22, column: 74, scope: !17)
!42 = !DILocation(line: 23, column: 11, scope: !17)
!43 = !DILocation(line: 23, column: 23, scope: !17)
!44 = !DILocation(line: 23, column: 36, scope: !17)
!45 = !DILocation(line: 23, column: 48, scope: !17)
!46 = !DILocation(line: 24, column: 1, scope: !17)
!47 = distinct !DISubprogram(name: "xmlDocDumpMemory", scope: !1, file: !1, line: 26, type: !48, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !25, !50, !51}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!52 = !DILocalVariable(name: "doc", arg: 1, scope: !47, file: !1, line: 26, type: !25)
!53 = !DILocation(line: 26, column: 31, scope: !47)
!54 = !DILocalVariable(name: "out", arg: 2, scope: !47, file: !1, line: 26, type: !50)
!55 = !DILocation(line: 26, column: 52, scope: !47)
!56 = !DILocalVariable(name: "outSize", arg: 3, scope: !47, file: !1, line: 26, type: !51)
!57 = !DILocation(line: 26, column: 62, scope: !47)
!58 = !DILocation(line: 27, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 9)
!60 = !DILocation(line: 27, column: 13, scope: !59)
!61 = !DILocation(line: 27, column: 16, scope: !59)
!62 = !DILocation(line: 27, column: 20, scope: !59)
!63 = !DILocation(line: 27, column: 23, scope: !59)
!64 = !DILocation(line: 27, column: 9, scope: !47)
!65 = !DILocation(line: 28, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 27, column: 32)
!67 = !DILocation(line: 28, column: 18, scope: !66)
!68 = !DILocation(line: 29, column: 40, scope: !66)
!69 = !DILocation(line: 29, column: 39, scope: !66)
!70 = !DILocation(line: 29, column: 32, scope: !66)
!71 = !DILocation(line: 29, column: 10, scope: !66)
!72 = !DILocation(line: 29, column: 14, scope: !66)
!73 = !DILocation(line: 30, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !1, line: 30, column: 13)
!75 = !DILocation(line: 30, column: 13, scope: !74)
!76 = !DILocation(line: 30, column: 13, scope: !66)
!77 = !DILocation(line: 31, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 30, column: 19)
!79 = !DILocation(line: 31, column: 20, scope: !78)
!80 = !DILocation(line: 31, column: 13, scope: !78)
!81 = !DILocation(line: 32, column: 9, scope: !78)
!82 = !DILocation(line: 33, column: 5, scope: !66)
!83 = !DILocation(line: 34, column: 1, scope: !47)
!84 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !85, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!85 = !DISubroutineType(types: !86)
!86 = !{!30}
!87 = !DILocalVariable(name: "ctxt", scope: !84, file: !1, line: 37, type: !21)
!88 = !DILocation(line: 37, column: 19, scope: !84)
!89 = !DILocalVariable(name: "doc", scope: !84, file: !1, line: 38, type: !26)
!90 = !DILocation(line: 38, column: 12, scope: !84)
!91 = !DILocalVariable(name: "out", scope: !84, file: !1, line: 39, type: !3)
!92 = !DILocation(line: 39, column: 20, scope: !84)
!93 = !DILocalVariable(name: "outSize", scope: !84, file: !1, line: 40, type: !30)
!94 = !DILocation(line: 40, column: 9, scope: !84)
!95 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 41, type: !30)
!96 = !DILocation(line: 41, column: 9, scope: !84)
!97 = !DILocalVariable(name: "ret", scope: !84, file: !1, line: 42, type: !30)
!98 = !DILocation(line: 42, column: 9, scope: !84)
!99 = !DILocation(line: 44, column: 10, scope: !84)
!100 = !DILocation(line: 44, column: 16, scope: !84)
!101 = !DILocation(line: 46, column: 5, scope: !84)
!102 = !DILocation(line: 47, column: 5, scope: !84)
!103 = !DILocation(line: 49, column: 27, scope: !84)
!104 = !DILocation(line: 49, column: 5, scope: !84)
!105 = !DILocation(line: 51, column: 24, scope: !106)
!106 = distinct !DILexicalBlock(scope: !84, file: !1, line: 51, column: 9)
!107 = !DILocation(line: 51, column: 9, scope: !106)
!108 = !DILocation(line: 51, column: 65, scope: !106)
!109 = !DILocation(line: 51, column: 9, scope: !84)
!110 = !DILocation(line: 52, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 51, column: 71)
!112 = !DILocation(line: 52, column: 9, scope: !111)
!113 = !DILocation(line: 53, column: 13, scope: !111)
!114 = !DILocation(line: 54, column: 9, scope: !111)
!115 = !DILocation(line: 57, column: 12, scope: !116)
!116 = distinct !DILexicalBlock(scope: !84, file: !1, line: 57, column: 5)
!117 = !DILocation(line: 57, column: 10, scope: !116)
!118 = !DILocation(line: 57, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 57, column: 5)
!120 = !DILocation(line: 57, column: 20, scope: !119)
!121 = !DILocation(line: 57, column: 5, scope: !116)
!122 = !DILocation(line: 59, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 57, column: 45)
!124 = !DILocation(line: 61, column: 9, scope: !123)
!125 = !DILocation(line: 62, column: 5, scope: !123)
!126 = !DILocation(line: 57, column: 39, scope: !119)
!127 = !DILocation(line: 57, column: 5, scope: !119)
!128 = distinct !{!128, !121, !129, !130}
!129 = !DILocation(line: 62, column: 5, scope: !116)
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILabel(scope: !84, name: "error", file: !1, line: 64)
!132 = !DILocation(line: 64, column: 1, scope: !84)
!133 = !DILocation(line: 65, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !84, file: !1, line: 65, column: 9)
!135 = !DILocation(line: 65, column: 9, scope: !84)
!136 = !DILocation(line: 65, column: 19, scope: !134)
!137 = !DILocation(line: 65, column: 14, scope: !134)
!138 = !DILocation(line: 66, column: 12, scope: !84)
!139 = !DILocation(line: 66, column: 5, scope: !84)
!140 = distinct !DISubprogram(name: "memcpy", scope: !141, file: !141, line: 12, type: !142, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !33)
!141 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!142 = !DISubroutineType(types: !143)
!143 = !{!144, !144, !145, !147}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 46, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!149 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!150 = !DILocalVariable(name: "destaddr", arg: 1, scope: !140, file: !141, line: 12, type: !144)
!151 = !DILocation(line: 12, column: 20, scope: !140)
!152 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !140, file: !141, line: 12, type: !145)
!153 = !DILocation(line: 12, column: 42, scope: !140)
!154 = !DILocalVariable(name: "len", arg: 3, scope: !140, file: !141, line: 12, type: !147)
!155 = !DILocation(line: 12, column: 58, scope: !140)
!156 = !DILocalVariable(name: "dest", scope: !140, file: !141, line: 13, type: !5)
!157 = !DILocation(line: 13, column: 9, scope: !140)
!158 = !DILocation(line: 13, column: 16, scope: !140)
!159 = !DILocalVariable(name: "src", scope: !140, file: !141, line: 14, type: !31)
!160 = !DILocation(line: 14, column: 15, scope: !140)
!161 = !DILocation(line: 14, column: 21, scope: !140)
!162 = !DILocation(line: 16, column: 3, scope: !140)
!163 = !DILocation(line: 16, column: 13, scope: !140)
!164 = !DILocation(line: 16, column: 16, scope: !140)
!165 = !DILocation(line: 17, column: 19, scope: !140)
!166 = !DILocation(line: 17, column: 15, scope: !140)
!167 = !DILocation(line: 17, column: 10, scope: !140)
!168 = !DILocation(line: 17, column: 13, scope: !140)
!169 = distinct !{!169, !162, !165, !130}
!170 = !DILocation(line: 18, column: 10, scope: !140)
!171 = !DILocation(line: 18, column: 3, scope: !140)
