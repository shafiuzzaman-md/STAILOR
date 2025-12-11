; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/061_pattern.c_305_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/061_pattern.c_305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPatParserContext = type { %struct._xmlDict*, i8*, i8*, %struct._xmlNs**, i32 }
%struct._xmlDict = type opaque
%struct._xmlNs = type opaque

@.str = private unnamed_addr constant [40 x i8] c"xmlNewPatParserContext : malloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"pattern_len\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pattern_buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/061_pattern.c_305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ERROR(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !34 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !44, metadata !DIExpression()), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlPatParserContext* @xmlNewPatParserContext(i8* noundef %0, %struct._xmlDict* noundef %1, %struct._xmlNs** noundef %2) #0 !dbg !47 {
  %4 = alloca %struct._xmlPatParserContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlDict*, align 8
  %7 = alloca %struct._xmlNs**, align 8
  %8 = alloca %struct._xmlPatParserContext*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !50, metadata !DIExpression()), !dbg !51
  store %struct._xmlDict* %1, %struct._xmlDict** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %6, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlNs** %2, %struct._xmlNs*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs*** %7, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata %struct._xmlPatParserContext** %8, metadata !56, metadata !DIExpression()), !dbg !57
  %10 = load i8*, i8** %5, align 8, !dbg !58
  %11 = icmp eq i8* %10, null, !dbg !60
  br i1 %11, label %12, label %13, !dbg !61

12:                                               ; preds = %3
  store %struct._xmlPatParserContext* null, %struct._xmlPatParserContext** %4, align 8, !dbg !62
  br label %47, !dbg !62

13:                                               ; preds = %3
  %14 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !63
  %15 = bitcast i8* %14 to %struct._xmlPatParserContext*, !dbg !64
  store %struct._xmlPatParserContext* %15, %struct._xmlPatParserContext** %8, align 8, !dbg !65
  %16 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !66
  %17 = icmp eq %struct._xmlPatParserContext* %16, null, !dbg !68
  br i1 %17, label %18, label %19, !dbg !69

18:                                               ; preds = %13
  call void @ERROR(i8* noundef null, i8* noundef null, i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)), !dbg !70
  store %struct._xmlPatParserContext* null, %struct._xmlPatParserContext** %4, align 8, !dbg !72
  br label %47, !dbg !72

19:                                               ; preds = %13
  %20 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !73
  %21 = bitcast %struct._xmlPatParserContext* %20 to i8*, !dbg !74
  %22 = call i8* @memset(i8* %21, i32 0, i64 40), !dbg !74
  %23 = load %struct._xmlDict*, %struct._xmlDict** %6, align 8, !dbg !75
  %24 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !76
  %25 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %24, i32 0, i32 0, !dbg !77
  store %struct._xmlDict* %23, %struct._xmlDict** %25, align 8, !dbg !78
  %26 = load i8*, i8** %5, align 8, !dbg !79
  %27 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !80
  %28 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %27, i32 0, i32 1, !dbg !81
  store i8* %26, i8** %28, align 8, !dbg !82
  %29 = load i8*, i8** %5, align 8, !dbg !83
  %30 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !84
  %31 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %30, i32 0, i32 2, !dbg !85
  store i8* %29, i8** %31, align 8, !dbg !86
  %32 = load %struct._xmlNs**, %struct._xmlNs*** %7, align 8, !dbg !87
  %33 = icmp ne %struct._xmlNs** %32, null, !dbg !89
  br i1 %33, label %34, label %40, !dbg !90

34:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i32* %9, metadata !91, metadata !DIExpression()), !dbg !93
  %35 = load %struct._xmlNs**, %struct._xmlNs*** %7, align 8, !dbg !94
  %36 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !95
  %37 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %36, i32 0, i32 3, !dbg !96
  store %struct._xmlNs** %35, %struct._xmlNs*** %37, align 8, !dbg !97
  %38 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !98
  %39 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %38, i32 0, i32 4, !dbg !99
  store i32 0, i32* %39, align 8, !dbg !100
  br label %45, !dbg !101

40:                                               ; preds = %19
  %41 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !102
  %42 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %41, i32 0, i32 3, !dbg !104
  store %struct._xmlNs** null, %struct._xmlNs*** %42, align 8, !dbg !105
  %43 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !106
  %44 = getelementptr inbounds %struct._xmlPatParserContext, %struct._xmlPatParserContext* %43, i32 0, i32 4, !dbg !107
  store i32 0, i32* %44, align 8, !dbg !108
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %8, align 8, !dbg !109
  store %struct._xmlPatParserContext* %46, %struct._xmlPatParserContext** %4, align 8, !dbg !110
  br label %47, !dbg !110

47:                                               ; preds = %45, %18, %12
  %48 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %4, align 8, !dbg !111
  ret %struct._xmlPatParserContext* %48, !dbg !111
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreePattern(i8* noundef %0) #0 !dbg !112 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !115, metadata !DIExpression()), !dbg !116
  %3 = load i8*, i8** %2, align 8, !dbg !117
  %4 = icmp ne i8* %3, null, !dbg !117
  br i1 %4, label %5, label %7, !dbg !119

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !120
  call void @free(i8* noundef %6) #7, !dbg !121
  br label %7, !dbg !121

7:                                                ; preds = %5, %1
  ret void, !dbg !122
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !123 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca %struct._xmlNs**, align 8
  %6 = alloca %struct._xmlPatParserContext*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !126, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %3, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store %struct._xmlDict* null, %struct._xmlDict** %4, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata %struct._xmlNs*** %5, metadata !135, metadata !DIExpression()), !dbg !136
  store %struct._xmlNs** null, %struct._xmlNs*** %5, align 8, !dbg !136
  %7 = bitcast i32* %3 to i8*, !dbg !137
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  %8 = load i32, i32* %3, align 4, !dbg !139
  %9 = icmp sge i32 %8, 0, !dbg !140
  %10 = zext i1 %9 to i32, !dbg !140
  %11 = sext i32 %10 to i64, !dbg !139
  call void @klee_assume(i64 noundef %11), !dbg !141
  %12 = load i32, i32* %3, align 4, !dbg !142
  %13 = icmp slt i32 %12, 256, !dbg !143
  %14 = zext i1 %13 to i32, !dbg !143
  %15 = sext i32 %14 to i64, !dbg !142
  call void @klee_assume(i64 noundef %15), !dbg !144
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !145
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !146
  %17 = load i32, i32* %3, align 4, !dbg !147
  %18 = sext i32 %17 to i64, !dbg !148
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %18, !dbg !148
  store i8 0, i8* %19, align 1, !dbg !149
  call void @llvm.dbg.declare(metadata %struct._xmlPatParserContext** %6, metadata !150, metadata !DIExpression()), !dbg !151
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !152
  %21 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !153
  %22 = load %struct._xmlNs**, %struct._xmlNs*** %5, align 8, !dbg !154
  %23 = call %struct._xmlPatParserContext* @xmlNewPatParserContext(i8* noundef %20, %struct._xmlDict* noundef %21, %struct._xmlNs** noundef %22), !dbg !155
  store %struct._xmlPatParserContext* %23, %struct._xmlPatParserContext** %6, align 8, !dbg !151
  %24 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %6, align 8, !dbg !156
  %25 = icmp ne %struct._xmlPatParserContext* %24, null, !dbg !158
  br i1 %25, label %26, label %30, !dbg !159

26:                                               ; preds = %0
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !160
  %28 = load %struct._xmlPatParserContext*, %struct._xmlPatParserContext** %6, align 8, !dbg !162
  %29 = bitcast %struct._xmlPatParserContext* %28 to i8*, !dbg !162
  call void @xmlFreePattern(i8* noundef %29), !dbg !163
  br label %30, !dbg !164

30:                                               ; preds = %26, %0
  ret i32 0, !dbg !165
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !166 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !173, metadata !DIExpression()), !dbg !174
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !175, metadata !DIExpression()), !dbg !176
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !DIExpression()), !dbg !181
  %8 = load i8*, i8** %4, align 8, !dbg !182
  store i8* %8, i8** %7, align 8, !dbg !181
  br label %9, !dbg !183

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !184
  %11 = add i64 %10, -1, !dbg !184
  store i64 %11, i64* %6, align 8, !dbg !184
  %12 = icmp ugt i64 %10, 0, !dbg !185
  br i1 %12, label %13, label %18, !dbg !183

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !186
  %15 = trunc i32 %14 to i8, !dbg !186
  %16 = load i8*, i8** %7, align 8, !dbg !187
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !187
  store i8* %17, i8** %7, align 8, !dbg !187
  store i8 %15, i8* %16, align 1, !dbg !188
  br label %9, !dbg !183, !llvm.loop !189

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %19, !dbg !192
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/061_pattern.c_305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3e5e6cddd24c3a8e7887db9f716ca4b4")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPatParserContext", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPatParserContext", file: !1, line: 14, size: 320, elements: !7)
!7 = !{!8, !12, !16, !17, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6, file: !1, line: 15, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 10, flags: DIFlagFwdDecl)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !6, file: !1, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6, file: !1, line: 17, baseType: !13, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !6, file: !1, line: 18, baseType: !18, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 12, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 12, flags: DIFlagFwdDecl)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nsNr", scope: !6, file: !1, line: 19, baseType: !23, size: 32, offset: 256)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "ERROR", scope: !1, file: !1, line: 23, type: !35, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3, !3, !3, !13}
!37 = !{}
!38 = !DILocalVariable(name: "a", arg: 1, scope: !34, file: !1, line: 23, type: !3)
!39 = !DILocation(line: 23, column: 18, scope: !34)
!40 = !DILocalVariable(name: "b", arg: 2, scope: !34, file: !1, line: 23, type: !3)
!41 = !DILocation(line: 23, column: 27, scope: !34)
!42 = !DILocalVariable(name: "c", arg: 3, scope: !34, file: !1, line: 23, type: !3)
!43 = !DILocation(line: 23, column: 36, scope: !34)
!44 = !DILocalVariable(name: "msg", arg: 4, scope: !34, file: !1, line: 23, type: !13)
!45 = !DILocation(line: 23, column: 51, scope: !34)
!46 = !DILocation(line: 25, column: 1, scope: !34)
!47 = distinct !DISubprogram(name: "xmlNewPatParserContext", scope: !1, file: !1, line: 28, type: !48, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!48 = !DISubroutineType(types: !49)
!49 = !{!4, !13, !9, !18}
!50 = !DILocalVariable(name: "pattern", arg: 1, scope: !47, file: !1, line: 28, type: !13)
!51 = !DILocation(line: 28, column: 57, scope: !47)
!52 = !DILocalVariable(name: "dict", arg: 2, scope: !47, file: !1, line: 28, type: !9)
!53 = !DILocation(line: 28, column: 75, scope: !47)
!54 = !DILocalVariable(name: "namespaces", arg: 3, scope: !47, file: !1, line: 28, type: !18)
!55 = !DILocation(line: 28, column: 89, scope: !47)
!56 = !DILocalVariable(name: "cur", scope: !47, file: !1, line: 29, type: !4)
!57 = !DILocation(line: 29, column: 26, scope: !47)
!58 = !DILocation(line: 31, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 31, column: 9)
!60 = !DILocation(line: 31, column: 17, scope: !59)
!61 = !DILocation(line: 31, column: 9, scope: !47)
!62 = !DILocation(line: 32, column: 9, scope: !59)
!63 = !DILocation(line: 34, column: 33, scope: !47)
!64 = !DILocation(line: 34, column: 11, scope: !47)
!65 = !DILocation(line: 34, column: 9, scope: !47)
!66 = !DILocation(line: 35, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 35, column: 9)
!68 = !DILocation(line: 35, column: 13, scope: !67)
!69 = !DILocation(line: 35, column: 9, scope: !47)
!70 = !DILocation(line: 36, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 35, column: 22)
!72 = !DILocation(line: 38, column: 9, scope: !71)
!73 = !DILocation(line: 42, column: 12, scope: !47)
!74 = !DILocation(line: 42, column: 5, scope: !47)
!75 = !DILocation(line: 44, column: 17, scope: !47)
!76 = !DILocation(line: 44, column: 5, scope: !47)
!77 = !DILocation(line: 44, column: 10, scope: !47)
!78 = !DILocation(line: 44, column: 15, scope: !47)
!79 = !DILocation(line: 45, column: 16, scope: !47)
!80 = !DILocation(line: 45, column: 5, scope: !47)
!81 = !DILocation(line: 45, column: 10, scope: !47)
!82 = !DILocation(line: 45, column: 14, scope: !47)
!83 = !DILocation(line: 46, column: 17, scope: !47)
!84 = !DILocation(line: 46, column: 5, scope: !47)
!85 = !DILocation(line: 46, column: 10, scope: !47)
!86 = !DILocation(line: 46, column: 15, scope: !47)
!87 = !DILocation(line: 47, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !47, file: !1, line: 47, column: 9)
!89 = !DILocation(line: 47, column: 20, scope: !88)
!90 = !DILocation(line: 47, column: 9, scope: !47)
!91 = !DILocalVariable(name: "i", scope: !92, file: !1, line: 48, type: !23)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 47, column: 29)
!93 = !DILocation(line: 48, column: 13, scope: !92)
!94 = !DILocation(line: 50, column: 27, scope: !92)
!95 = !DILocation(line: 50, column: 9, scope: !92)
!96 = !DILocation(line: 50, column: 14, scope: !92)
!97 = !DILocation(line: 50, column: 25, scope: !92)
!98 = !DILocation(line: 51, column: 9, scope: !92)
!99 = !DILocation(line: 51, column: 14, scope: !92)
!100 = !DILocation(line: 51, column: 19, scope: !92)
!101 = !DILocation(line: 52, column: 5, scope: !92)
!102 = !DILocation(line: 53, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !88, file: !1, line: 52, column: 12)
!104 = !DILocation(line: 53, column: 14, scope: !103)
!105 = !DILocation(line: 53, column: 25, scope: !103)
!106 = !DILocation(line: 54, column: 9, scope: !103)
!107 = !DILocation(line: 54, column: 14, scope: !103)
!108 = !DILocation(line: 54, column: 19, scope: !103)
!109 = !DILocation(line: 57, column: 12, scope: !47)
!110 = !DILocation(line: 57, column: 5, scope: !47)
!111 = !DILocation(line: 58, column: 1, scope: !47)
!112 = distinct !DISubprogram(name: "xmlFreePattern", scope: !1, file: !1, line: 61, type: !113, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !3}
!115 = !DILocalVariable(name: "pattern", arg: 1, scope: !112, file: !1, line: 61, type: !3)
!116 = !DILocation(line: 61, column: 27, scope: !112)
!117 = !DILocation(line: 62, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 62, column: 9)
!119 = !DILocation(line: 62, column: 9, scope: !112)
!120 = !DILocation(line: 62, column: 23, scope: !118)
!121 = !DILocation(line: 62, column: 18, scope: !118)
!122 = !DILocation(line: 63, column: 1, scope: !112)
!123 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !124, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!124 = !DISubroutineType(types: !125)
!125 = !{!23}
!126 = !DILocalVariable(name: "pattern_buf", scope: !123, file: !1, line: 67, type: !127)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 256)
!130 = !DILocation(line: 67, column: 10, scope: !123)
!131 = !DILocalVariable(name: "pattern_len", scope: !123, file: !1, line: 68, type: !23)
!132 = !DILocation(line: 68, column: 9, scope: !123)
!133 = !DILocalVariable(name: "dict", scope: !123, file: !1, line: 69, type: !9)
!134 = !DILocation(line: 69, column: 14, scope: !123)
!135 = !DILocalVariable(name: "namespaces", scope: !123, file: !1, line: 70, type: !18)
!136 = !DILocation(line: 70, column: 13, scope: !123)
!137 = !DILocation(line: 73, column: 24, scope: !123)
!138 = !DILocation(line: 73, column: 5, scope: !123)
!139 = !DILocation(line: 76, column: 17, scope: !123)
!140 = !DILocation(line: 76, column: 29, scope: !123)
!141 = !DILocation(line: 76, column: 5, scope: !123)
!142 = !DILocation(line: 77, column: 17, scope: !123)
!143 = !DILocation(line: 77, column: 29, scope: !123)
!144 = !DILocation(line: 77, column: 5, scope: !123)
!145 = !DILocation(line: 80, column: 24, scope: !123)
!146 = !DILocation(line: 80, column: 5, scope: !123)
!147 = !DILocation(line: 83, column: 17, scope: !123)
!148 = !DILocation(line: 83, column: 5, scope: !123)
!149 = !DILocation(line: 83, column: 30, scope: !123)
!150 = !DILocalVariable(name: "ctx", scope: !123, file: !1, line: 86, type: !4)
!151 = !DILocation(line: 86, column: 26, scope: !123)
!152 = !DILocation(line: 86, column: 55, scope: !123)
!153 = !DILocation(line: 86, column: 68, scope: !123)
!154 = !DILocation(line: 86, column: 74, scope: !123)
!155 = !DILocation(line: 86, column: 32, scope: !123)
!156 = !DILocation(line: 90, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !123, file: !1, line: 90, column: 9)
!158 = !DILocation(line: 90, column: 13, scope: !157)
!159 = !DILocation(line: 90, column: 9, scope: !123)
!160 = !DILocation(line: 98, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 90, column: 22)
!162 = !DILocation(line: 101, column: 24, scope: !161)
!163 = !DILocation(line: 101, column: 9, scope: !161)
!164 = !DILocation(line: 102, column: 5, scope: !161)
!165 = !DILocation(line: 104, column: 5, scope: !123)
!166 = distinct !DISubprogram(name: "memset", scope: !167, file: !167, line: 12, type: !168, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!167 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!168 = !DISubroutineType(types: !169)
!169 = !{!3, !3, !23, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 46, baseType: !172)
!171 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!172 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!173 = !DILocalVariable(name: "dst", arg: 1, scope: !166, file: !167, line: 12, type: !3)
!174 = !DILocation(line: 12, column: 20, scope: !166)
!175 = !DILocalVariable(name: "s", arg: 2, scope: !166, file: !167, line: 12, type: !23)
!176 = !DILocation(line: 12, column: 29, scope: !166)
!177 = !DILocalVariable(name: "count", arg: 3, scope: !166, file: !167, line: 12, type: !170)
!178 = !DILocation(line: 12, column: 39, scope: !166)
!179 = !DILocalVariable(name: "a", scope: !166, file: !167, line: 13, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!181 = !DILocation(line: 13, column: 9, scope: !166)
!182 = !DILocation(line: 13, column: 13, scope: !166)
!183 = !DILocation(line: 14, column: 3, scope: !166)
!184 = !DILocation(line: 14, column: 15, scope: !166)
!185 = !DILocation(line: 14, column: 18, scope: !166)
!186 = !DILocation(line: 15, column: 12, scope: !166)
!187 = !DILocation(line: 15, column: 7, scope: !166)
!188 = !DILocation(line: 15, column: 10, scope: !166)
!189 = distinct !{!189, !183, !186, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 16, column: 10, scope: !166)
!192 = !DILocation(line: 16, column: 3, scope: !166)
