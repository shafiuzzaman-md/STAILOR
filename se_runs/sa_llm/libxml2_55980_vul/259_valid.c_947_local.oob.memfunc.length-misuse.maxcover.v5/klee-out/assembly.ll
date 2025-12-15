; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/259_valid.c_947_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/259_valid.c_947_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8* }

@xmlSplitQName3.dummy = internal global i8 0, align 1, !dbg !0
@.str = private unnamed_addr constant [17 x i8] c"split_qname_null\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/259_valid.c_947_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewElementContent = private unnamed_addr constant [64 x i8] c"xmlElementContentPtr xmlNewElementContent(const xmlChar *, int)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"name_is_null\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !39 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load i64, i64* %2, align 8, !dbg !47
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !48
  ret i8* %4, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !50 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !58, metadata !DIExpression()), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSplitQName3(i8* noundef %0, i32* noundef %1) #0 !dbg !2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !61, metadata !DIExpression()), !dbg !62
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %6, metadata !65, metadata !DIExpression()), !dbg !66
  %7 = bitcast i32* %6 to i8*, !dbg !67
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !68
  %8 = load i32, i32* %6, align 4, !dbg !69
  %9 = icmp eq i32 %8, 0, !dbg !70
  br i1 %9, label %13, label %10, !dbg !71

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4, !dbg !72
  %12 = icmp eq i32 %11, 1, !dbg !73
  br label %13, !dbg !71

13:                                               ; preds = %10, %2
  %14 = phi i1 [ true, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32, !dbg !71
  %16 = sext i32 %15 to i64, !dbg !69
  call void @klee_assume(i64 noundef %16), !dbg !74
  %17 = load i32, i32* %6, align 4, !dbg !75
  %18 = icmp ne i32 %17, 0, !dbg !75
  br i1 %18, label %19, label %20, !dbg !77

19:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !78
  br label %26, !dbg !78

20:                                               ; preds = %13
  %21 = load i32*, i32** %5, align 8, !dbg !80
  %22 = icmp ne i32* %21, null, !dbg !80
  br i1 %22, label %23, label %25, !dbg !83

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8, !dbg !84
  store i32 5, i32* %24, align 4, !dbg !86
  br label %25, !dbg !87

25:                                               ; preds = %23, %20
  store i8* @xmlSplitQName3.dummy, i8** %3, align 8, !dbg !88
  br label %26, !dbg !88

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %3, align 8, !dbg !89
  ret i8* %27, !dbg !89
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @xmlNewElementContent(i8* noundef %0, i32 noundef %1) #0 !dbg !90 {
  %3 = alloca %struct._xmlElementContent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !97, metadata !DIExpression()), !dbg !98
  %9 = call i8* @xmlMalloc(i64 noundef 40), !dbg !99
  %10 = bitcast i8* %9 to %struct._xmlElementContent*, !dbg !100
  store %struct._xmlElementContent* %10, %struct._xmlElementContent** %6, align 8, !dbg !101
  %11 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !102
  %12 = icmp eq %struct._xmlElementContent* %11, null, !dbg !104
  br i1 %12, label %13, label %14, !dbg !105

13:                                               ; preds = %2
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !106
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %3, align 8, !dbg !108
  br label %35, !dbg !108

14:                                               ; preds = %2
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.xmlNewElementContent, i64 0, i64 0)), !dbg !109
  %16 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !110
  %17 = bitcast %struct._xmlElementContent* %16 to i8*, !dbg !111
  %18 = call i8* @memset(i8* %17, i32 0, i64 40), !dbg !111
  %19 = load i32, i32* %5, align 4, !dbg !112
  %20 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !113
  %21 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %20, i32 0, i32 0, !dbg !114
  store i32 %19, i32* %21, align 8, !dbg !115
  %22 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !116
  %23 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %22, i32 0, i32 1, !dbg !117
  store i32 1, i32* %23, align 4, !dbg !118
  %24 = load i8*, i8** %4, align 8, !dbg !119
  %25 = icmp ne i8* %24, null, !dbg !121
  br i1 %25, label %26, label %33, !dbg !122

26:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %7, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %8, metadata !126, metadata !DIExpression()), !dbg !127
  %27 = load i8*, i8** %4, align 8, !dbg !128
  %28 = call i8* @xmlSplitQName3(i8* noundef %27, i32* noundef %7), !dbg !129
  store i8* %28, i8** %8, align 8, !dbg !130
  %29 = load i8*, i8** %8, align 8, !dbg !131
  %30 = icmp eq i8* %29, null, !dbg !133
  br i1 %30, label %31, label %32, !dbg !134

31:                                               ; preds = %26
  br label %32, !dbg !135

32:                                               ; preds = %31, %26
  br label %33, !dbg !137

33:                                               ; preds = %32, %14
  %34 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !138
  store %struct._xmlElementContent* %34, %struct._xmlElementContent** %3, align 8, !dbg !139
  br label %35, !dbg !139

35:                                               ; preds = %33, %13
  %36 = load %struct._xmlElementContent*, %struct._xmlElementContent** %3, align 8, !dbg !140
  ret %struct._xmlElementContent* %36, !dbg !140
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !141 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !146, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %4, metadata !151, metadata !DIExpression()), !dbg !152
  %5 = bitcast i32* %2 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !154
  %6 = bitcast i32* %4 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !156
  %7 = load i32, i32* %4, align 4, !dbg !157
  %8 = icmp eq i32 %7, 0, !dbg !158
  br i1 %8, label %12, label %9, !dbg !159

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4, !dbg !160
  %11 = icmp eq i32 %10, 1, !dbg !161
  br label %12, !dbg !159

12:                                               ; preds = %9, %0
  %13 = phi i1 [ true, %0 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !159
  %15 = sext i32 %14 to i64, !dbg !157
  call void @klee_assume(i64 noundef %15), !dbg !162
  %16 = load i32, i32* %4, align 4, !dbg !163
  %17 = icmp ne i32 %16, 0, !dbg !163
  br i1 %17, label %18, label %21, !dbg !165

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4, !dbg !166
  %20 = call %struct._xmlElementContent* @xmlNewElementContent(i8* noundef null, i32 noundef %19), !dbg !168
  br label %26, !dbg !169

21:                                               ; preds = %12
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !170
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !172
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !173
  %24 = load i32, i32* %2, align 4, !dbg !174
  %25 = call %struct._xmlElementContent* @xmlNewElementContent(i8* noundef %23, i32 noundef %24), !dbg !175
  br label %26

26:                                               ; preds = %21, %18
  ret i32 0, !dbg !176
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !189
  %8 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %8, i8** %7, align 8, !dbg !189
  br label %9, !dbg !191

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !192
  %11 = add i64 %10, -1, !dbg !192
  store i64 %11, i64* %6, align 8, !dbg !192
  %12 = icmp ugt i64 %10, 0, !dbg !193
  br i1 %12, label %13, label %18, !dbg !191

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !194
  %15 = trunc i32 %14 to i8, !dbg !194
  %16 = load i8*, i8** %7, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %7, align 8, !dbg !195
  store i8 %15, i8* %16, align 1, !dbg !196
  br label %9, !dbg !191, !llvm.loop !197

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %19, !dbg !200
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!12, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38, !38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dummy", scope: !2, file: !3, line: 35, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlSplitQName3", scope: !3, file: !3, line: 33, type: !4, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/259_valid.c_947_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bcb0d2272f978079d328244c20077ec6")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !3, line: 10, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !27, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14, !26}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !3, line: 12, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !3, line: 11, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !3, line: 15, size: 320, elements: !18)
!18 = !{!19, !20, !21, !23, !24, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !3, line: 16, baseType: !11, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !17, file: !3, line: 17, baseType: !11, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !17, file: !3, line: 18, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !17, file: !3, line: 19, baseType: !14, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !17, file: !3, line: 20, baseType: !14, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !17, file: !3, line: 21, baseType: !22, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !{!0}
!28 = !{}
!29 = distinct !DICompileUnit(language: DW_LANG_C99, file: !30, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!30 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"Ubuntu clang version 14.0.6"}
!39 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!40 = !DISubroutineType(types: !41)
!41 = !{!26, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "size", arg: 1, scope: !39, file: !3, line: 25, type: !42)
!46 = !DILocation(line: 25, column: 24, scope: !39)
!47 = !DILocation(line: 26, column: 19, scope: !39)
!48 = !DILocation(line: 26, column: 12, scope: !39)
!49 = !DILocation(line: 26, column: 5, scope: !39)
!50 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !3, file: !3, line: 29, type: !51, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !26, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DILocalVariable(name: "ctx", arg: 1, scope: !50, file: !3, line: 29, type: !26)
!57 = !DILocation(line: 29, column: 26, scope: !50)
!58 = !DILocalVariable(name: "msg", arg: 2, scope: !50, file: !3, line: 29, type: !53)
!59 = !DILocation(line: 29, column: 43, scope: !50)
!60 = !DILocation(line: 31, column: 1, scope: !50)
!61 = !DILocalVariable(name: "name", arg: 1, scope: !2, file: !3, line: 33, type: !6)
!62 = !DILocation(line: 33, column: 46, scope: !2)
!63 = !DILocalVariable(name: "len", arg: 2, scope: !2, file: !3, line: 33, type: !10)
!64 = !DILocation(line: 33, column: 57, scope: !2)
!65 = !DILocalVariable(name: "is_null", scope: !2, file: !3, line: 36, type: !11)
!66 = !DILocation(line: 36, column: 9, scope: !2)
!67 = !DILocation(line: 37, column: 24, scope: !2)
!68 = !DILocation(line: 37, column: 5, scope: !2)
!69 = !DILocation(line: 38, column: 17, scope: !2)
!70 = !DILocation(line: 38, column: 25, scope: !2)
!71 = !DILocation(line: 38, column: 30, scope: !2)
!72 = !DILocation(line: 38, column: 33, scope: !2)
!73 = !DILocation(line: 38, column: 41, scope: !2)
!74 = !DILocation(line: 38, column: 5, scope: !2)
!75 = !DILocation(line: 40, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !2, file: !3, line: 40, column: 9)
!77 = !DILocation(line: 40, column: 9, scope: !2)
!78 = !DILocation(line: 41, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 40, column: 18)
!80 = !DILocation(line: 43, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 43, column: 13)
!82 = distinct !DILexicalBlock(scope: !76, file: !3, line: 42, column: 12)
!83 = !DILocation(line: 43, column: 13, scope: !82)
!84 = !DILocation(line: 44, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !3, line: 43, column: 18)
!86 = !DILocation(line: 44, column: 18, scope: !85)
!87 = !DILocation(line: 45, column: 9, scope: !85)
!88 = !DILocation(line: 46, column: 9, scope: !82)
!89 = !DILocation(line: 48, column: 1, scope: !2)
!90 = distinct !DISubprogram(name: "xmlNewElementContent", scope: !3, file: !3, line: 51, type: !91, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!91 = !DISubroutineType(types: !92)
!92 = !{!14, !6, !11}
!93 = !DILocalVariable(name: "name", arg: 1, scope: !90, file: !3, line: 51, type: !6)
!94 = !DILocation(line: 51, column: 58, scope: !90)
!95 = !DILocalVariable(name: "type", arg: 2, scope: !90, file: !3, line: 51, type: !11)
!96 = !DILocation(line: 51, column: 68, scope: !90)
!97 = !DILocalVariable(name: "ret", scope: !90, file: !3, line: 52, type: !14)
!98 = !DILocation(line: 52, column: 26, scope: !90)
!99 = !DILocation(line: 54, column: 34, scope: !90)
!100 = !DILocation(line: 54, column: 11, scope: !90)
!101 = !DILocation(line: 54, column: 9, scope: !90)
!102 = !DILocation(line: 55, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !90, file: !3, line: 55, column: 9)
!104 = !DILocation(line: 55, column: 13, scope: !103)
!105 = !DILocation(line: 55, column: 9, scope: !90)
!106 = !DILocation(line: 56, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 55, column: 22)
!108 = !DILocation(line: 57, column: 9, scope: !107)
!109 = !DILocation(line: 71, column: 5, scope: !90)
!110 = !DILocation(line: 73, column: 12, scope: !90)
!111 = !DILocation(line: 73, column: 5, scope: !90)
!112 = !DILocation(line: 74, column: 17, scope: !90)
!113 = !DILocation(line: 74, column: 5, scope: !90)
!114 = !DILocation(line: 74, column: 10, scope: !90)
!115 = !DILocation(line: 74, column: 15, scope: !90)
!116 = !DILocation(line: 75, column: 5, scope: !90)
!117 = !DILocation(line: 75, column: 10, scope: !90)
!118 = !DILocation(line: 75, column: 15, scope: !90)
!119 = !DILocation(line: 76, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !90, file: !3, line: 76, column: 9)
!121 = !DILocation(line: 76, column: 14, scope: !120)
!122 = !DILocation(line: 76, column: 9, scope: !90)
!123 = !DILocalVariable(name: "l", scope: !124, file: !3, line: 77, type: !11)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 76, column: 23)
!125 = !DILocation(line: 77, column: 13, scope: !124)
!126 = !DILocalVariable(name: "tmp", scope: !124, file: !3, line: 78, type: !6)
!127 = !DILocation(line: 78, column: 24, scope: !124)
!128 = !DILocation(line: 80, column: 30, scope: !124)
!129 = !DILocation(line: 80, column: 15, scope: !124)
!130 = !DILocation(line: 80, column: 13, scope: !124)
!131 = !DILocation(line: 81, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !3, line: 81, column: 13)
!133 = !DILocation(line: 81, column: 17, scope: !132)
!134 = !DILocation(line: 81, column: 13, scope: !124)
!135 = !DILocation(line: 83, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 81, column: 26)
!137 = !DILocation(line: 84, column: 5, scope: !124)
!138 = !DILocation(line: 85, column: 12, scope: !90)
!139 = !DILocation(line: 85, column: 5, scope: !90)
!140 = !DILocation(line: 86, column: 1, scope: !90)
!141 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 88, type: !142, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !28)
!142 = !DISubroutineType(types: !143)
!143 = !{!11}
!144 = !DILocalVariable(name: "type", scope: !141, file: !3, line: 90, type: !11)
!145 = !DILocation(line: 90, column: 9, scope: !141)
!146 = !DILocalVariable(name: "name_buf", scope: !141, file: !3, line: 91, type: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DILocation(line: 91, column: 13, scope: !141)
!151 = !DILocalVariable(name: "name_is_null", scope: !141, file: !3, line: 92, type: !11)
!152 = !DILocation(line: 92, column: 9, scope: !141)
!153 = !DILocation(line: 94, column: 24, scope: !141)
!154 = !DILocation(line: 94, column: 5, scope: !141)
!155 = !DILocation(line: 95, column: 24, scope: !141)
!156 = !DILocation(line: 95, column: 5, scope: !141)
!157 = !DILocation(line: 96, column: 17, scope: !141)
!158 = !DILocation(line: 96, column: 30, scope: !141)
!159 = !DILocation(line: 96, column: 35, scope: !141)
!160 = !DILocation(line: 96, column: 38, scope: !141)
!161 = !DILocation(line: 96, column: 51, scope: !141)
!162 = !DILocation(line: 96, column: 5, scope: !141)
!163 = !DILocation(line: 98, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !141, file: !3, line: 98, column: 9)
!165 = !DILocation(line: 98, column: 9, scope: !141)
!166 = !DILocation(line: 100, column: 36, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 98, column: 23)
!168 = !DILocation(line: 100, column: 9, scope: !167)
!169 = !DILocation(line: 101, column: 5, scope: !167)
!170 = !DILocation(line: 103, column: 28, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !3, line: 101, column: 12)
!172 = !DILocation(line: 103, column: 9, scope: !171)
!173 = !DILocation(line: 104, column: 30, scope: !171)
!174 = !DILocation(line: 104, column: 40, scope: !171)
!175 = !DILocation(line: 104, column: 9, scope: !171)
!176 = !DILocation(line: 107, column: 5, scope: !141)
!177 = distinct !DISubprogram(name: "memset", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !29, retainedNodes: !28)
!178 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!179 = !DISubroutineType(types: !180)
!180 = !{!26, !26, !11, !42}
!181 = !DILocalVariable(name: "dst", arg: 1, scope: !177, file: !178, line: 12, type: !26)
!182 = !DILocation(line: 12, column: 20, scope: !177)
!183 = !DILocalVariable(name: "s", arg: 2, scope: !177, file: !178, line: 12, type: !11)
!184 = !DILocation(line: 12, column: 29, scope: !177)
!185 = !DILocalVariable(name: "count", arg: 3, scope: !177, file: !178, line: 12, type: !42)
!186 = !DILocation(line: 12, column: 39, scope: !177)
!187 = !DILocalVariable(name: "a", scope: !177, file: !178, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!189 = !DILocation(line: 13, column: 9, scope: !177)
!190 = !DILocation(line: 13, column: 13, scope: !177)
!191 = !DILocation(line: 14, column: 3, scope: !177)
!192 = !DILocation(line: 14, column: 15, scope: !177)
!193 = !DILocation(line: 14, column: 18, scope: !177)
!194 = !DILocation(line: 15, column: 12, scope: !177)
!195 = !DILocation(line: 15, column: 7, scope: !177)
!196 = !DILocation(line: 15, column: 10, scope: !177)
!197 = distinct !{!197, !191, !194, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 16, column: 10, scope: !177)
!200 = !DILocation(line: 16, column: 3, scope: !177)
