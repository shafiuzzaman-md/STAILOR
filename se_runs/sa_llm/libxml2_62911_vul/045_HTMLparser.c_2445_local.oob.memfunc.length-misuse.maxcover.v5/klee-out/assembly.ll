; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i32, i8*, i8*, %struct._xmlDoc* }

@.str = private unnamed_addr constant [13 x i8] c"malloc_fails\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"HTML document creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlParseComment = private unnamed_addr constant [49 x i8] c"xmlDocPtr htmlParseComment(void *, const char *)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"comment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !26 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = load i64, i64* %2, align 8, !dbg !37
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !38
  store i8* %5, i8** %3, align 8, !dbg !36
  %6 = load i8*, i8** %3, align 8, !dbg !39
  ret i8* %6, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @htmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !41 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlDoc* @htmlParseComment(i8* noundef %0, i8* noundef %1) #0 !dbg !51 {
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !61
  %8 = bitcast i32* %7 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !63
  %9 = load i32, i32* %7, align 4, !dbg !64
  %10 = icmp eq i32 %9, 0, !dbg !65
  br i1 %10, label %14, label %11, !dbg !66

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4, !dbg !67
  %13 = icmp eq i32 %12, 1, !dbg !68
  br label %14, !dbg !66

14:                                               ; preds = %11, %2
  %15 = phi i1 [ true, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !66
  %17 = sext i32 %16 to i64, !dbg !64
  call void @klee_assume(i64 noundef %17), !dbg !69
  %18 = load i32, i32* %7, align 4, !dbg !70
  %19 = icmp ne i32 %18, 0, !dbg !70
  br i1 %19, label %20, label %27, !dbg !72

20:                                               ; preds = %14
  %21 = call i8* @xmlMalloc(i64 noundef 32), !dbg !73
  %22 = bitcast i8* %21 to %struct._xmlDoc*, !dbg !75
  store %struct._xmlDoc* %22, %struct._xmlDoc** %6, align 8, !dbg !76
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !77
  %24 = icmp eq %struct._xmlDoc* %23, null, !dbg !79
  br i1 %24, label %25, label %26, !dbg !80

25:                                               ; preds = %20
  call void @htmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  store %struct._xmlDoc* null, %struct._xmlDoc** %3, align 8, !dbg !83
  br label %48, !dbg !83

26:                                               ; preds = %20
  store %struct._xmlDoc* null, %struct._xmlDoc** %3, align 8, !dbg !84
  br label %48, !dbg !84

27:                                               ; preds = %14
  %28 = call i8* @xmlMalloc(i64 noundef 32), !dbg !85
  %29 = bitcast i8* %28 to %struct._xmlDoc*, !dbg !87
  store %struct._xmlDoc* %29, %struct._xmlDoc** %6, align 8, !dbg !88
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !89
  %31 = icmp eq %struct._xmlDoc* %30, null, !dbg !91
  br i1 %31, label %32, label %33, !dbg !92

32:                                               ; preds = %27
  call void @htmlErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)), !dbg !93
  store %struct._xmlDoc* null, %struct._xmlDoc** %3, align 8, !dbg !95
  br label %48, !dbg !95

33:                                               ; preds = %27
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.htmlParseComment, i64 0, i64 0)), !dbg !96
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !97
  %36 = bitcast %struct._xmlDoc* %35 to i8*, !dbg !98
  %37 = call i8* @memset(i8* %36, i32 0, i64 32), !dbg !98
  %38 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !99
  %39 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %38, i32 0, i32 0, !dbg !100
  store i32 1, i32* %39, align 8, !dbg !101
  %40 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !102
  %41 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %40, i32 0, i32 1, !dbg !103
  store i8* null, i8** %41, align 8, !dbg !104
  %42 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !105
  %43 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %42, i32 0, i32 2, !dbg !106
  store i8* null, i8** %43, align 8, !dbg !107
  %44 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !108
  %45 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !109
  %46 = getelementptr inbounds %struct._xmlDoc, %struct._xmlDoc* %45, i32 0, i32 3, !dbg !110
  store %struct._xmlDoc* %44, %struct._xmlDoc** %46, align 8, !dbg !111
  %47 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !112
  store %struct._xmlDoc* %47, %struct._xmlDoc** %3, align 8, !dbg !113
  br label %48, !dbg !113

48:                                               ; preds = %33, %32, %26, %25
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !114
  ret %struct._xmlDoc* %49, !dbg !114
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !115 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlDoc*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !120, metadata !DIExpression()), !dbg !124
  %5 = bitcast i8** %2 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !126
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !127
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !129, metadata !DIExpression()), !dbg !130
  %7 = load i8*, i8** %2, align 8, !dbg !131
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !132
  %9 = call %struct._xmlDoc* @htmlParseComment(i8* noundef %7, i8* noundef %8), !dbg !133
  store %struct._xmlDoc* %9, %struct._xmlDoc** %4, align 8, !dbg !130
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !134
  %11 = icmp ne %struct._xmlDoc* %10, null, !dbg !136
  br i1 %11, label %12, label %15, !dbg !137

12:                                               ; preds = %0
  %13 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !138
  %14 = bitcast %struct._xmlDoc* %13 to i8*, !dbg !138
  call void @free(i8* noundef %14) #7, !dbg !140
  br label %15, !dbg !141

15:                                               ; preds = %12, %0
  ret i32 0, !dbg !142
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !143 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !147, metadata !DIExpression()), !dbg !148
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !149, metadata !DIExpression()), !dbg !150
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i8** %7, metadata !153, metadata !DIExpression()), !dbg !154
  %8 = load i8*, i8** %4, align 8, !dbg !155
  store i8* %8, i8** %7, align 8, !dbg !154
  br label %9, !dbg !156

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !157
  %11 = add i64 %10, -1, !dbg !157
  store i64 %11, i64* %6, align 8, !dbg !157
  %12 = icmp ugt i64 %10, 0, !dbg !158
  br i1 %12, label %13, label %18, !dbg !156

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !159
  %15 = trunc i32 %14 to i8, !dbg !159
  %16 = load i8*, i8** %7, align 8, !dbg !160
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !160
  store i8* %17, i8** %7, align 8, !dbg !160
  store i8 %15, i8* %16, align 1, !dbg !161
  br label %9, !dbg !156, !llvm.loop !162

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !164
  ret i8* %19, !dbg !165
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/045_HTMLparser.c_2445_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a26ad4d6987e0292034b77d64bd065f0")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 14, size: 256, elements: !7)
!7 = !{!8, !10, !13, !15}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 15, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !6, file: !1, line: 16, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !6, file: !1, line: 17, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !6, file: !1, line: 18, baseType: !3, size: 64, offset: 192)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !27, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{!14, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !1, line: 22, type: !29)
!34 = !DILocation(line: 22, column: 24, scope: !26)
!35 = !DILocalVariable(name: "ptr", scope: !26, file: !1, line: 23, type: !14)
!36 = !DILocation(line: 23, column: 11, scope: !26)
!37 = !DILocation(line: 23, column: 24, scope: !26)
!38 = !DILocation(line: 23, column: 17, scope: !26)
!39 = !DILocation(line: 24, column: 12, scope: !26)
!40 = !DILocation(line: 24, column: 5, scope: !26)
!41 = distinct !DISubprogram(name: "htmlErrMemory", scope: !1, file: !1, line: 27, type: !42, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !14, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!46 = !DILocalVariable(name: "ctx", arg: 1, scope: !41, file: !1, line: 27, type: !14)
!47 = !DILocation(line: 27, column: 26, scope: !41)
!48 = !DILocalVariable(name: "msg", arg: 2, scope: !41, file: !1, line: 27, type: !44)
!49 = !DILocation(line: 27, column: 43, scope: !41)
!50 = !DILocation(line: 29, column: 1, scope: !41)
!51 = distinct !DISubprogram(name: "htmlParseComment", scope: !1, file: !1, line: 31, type: !52, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !14, !44}
!54 = !DILocalVariable(name: "ctx", arg: 1, scope: !51, file: !1, line: 31, type: !14)
!55 = !DILocation(line: 31, column: 34, scope: !51)
!56 = !DILocalVariable(name: "comment", arg: 2, scope: !51, file: !1, line: 31, type: !44)
!57 = !DILocation(line: 31, column: 51, scope: !51)
!58 = !DILocalVariable(name: "cur", scope: !51, file: !1, line: 32, type: !3)
!59 = !DILocation(line: 32, column: 15, scope: !51)
!60 = !DILocalVariable(name: "malloc_fails", scope: !51, file: !1, line: 35, type: !9)
!61 = !DILocation(line: 35, column: 9, scope: !51)
!62 = !DILocation(line: 36, column: 24, scope: !51)
!63 = !DILocation(line: 36, column: 5, scope: !51)
!64 = !DILocation(line: 37, column: 17, scope: !51)
!65 = !DILocation(line: 37, column: 30, scope: !51)
!66 = !DILocation(line: 37, column: 35, scope: !51)
!67 = !DILocation(line: 37, column: 38, scope: !51)
!68 = !DILocation(line: 37, column: 51, scope: !51)
!69 = !DILocation(line: 37, column: 5, scope: !51)
!70 = !DILocation(line: 39, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !51, file: !1, line: 39, column: 9)
!72 = !DILocation(line: 39, column: 9, scope: !51)
!73 = !DILocation(line: 41, column: 27, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 39, column: 23)
!75 = !DILocation(line: 41, column: 15, scope: !74)
!76 = !DILocation(line: 41, column: 13, scope: !74)
!77 = !DILocation(line: 42, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 42, column: 13)
!79 = !DILocation(line: 42, column: 17, scope: !78)
!80 = !DILocation(line: 42, column: 13, scope: !74)
!81 = !DILocation(line: 43, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 42, column: 26)
!83 = !DILocation(line: 44, column: 13, scope: !82)
!84 = !DILocation(line: 47, column: 9, scope: !74)
!85 = !DILocation(line: 50, column: 27, scope: !86)
!86 = distinct !DILexicalBlock(scope: !71, file: !1, line: 48, column: 12)
!87 = !DILocation(line: 50, column: 15, scope: !86)
!88 = !DILocation(line: 50, column: 13, scope: !86)
!89 = !DILocation(line: 51, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 51, column: 13)
!91 = !DILocation(line: 51, column: 17, scope: !90)
!92 = !DILocation(line: 51, column: 13, scope: !86)
!93 = !DILocation(line: 52, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 51, column: 26)
!95 = !DILocation(line: 53, column: 13, scope: !94)
!96 = !DILocation(line: 62, column: 9, scope: !86)
!97 = !DILocation(line: 64, column: 16, scope: !86)
!98 = !DILocation(line: 64, column: 9, scope: !86)
!99 = !DILocation(line: 66, column: 9, scope: !86)
!100 = !DILocation(line: 66, column: 14, scope: !86)
!101 = !DILocation(line: 66, column: 19, scope: !86)
!102 = !DILocation(line: 67, column: 9, scope: !86)
!103 = !DILocation(line: 67, column: 14, scope: !86)
!104 = !DILocation(line: 67, column: 22, scope: !86)
!105 = !DILocation(line: 68, column: 9, scope: !86)
!106 = !DILocation(line: 68, column: 14, scope: !86)
!107 = !DILocation(line: 68, column: 24, scope: !86)
!108 = !DILocation(line: 69, column: 20, scope: !86)
!109 = !DILocation(line: 69, column: 9, scope: !86)
!110 = !DILocation(line: 69, column: 14, scope: !86)
!111 = !DILocation(line: 69, column: 18, scope: !86)
!112 = !DILocation(line: 71, column: 16, scope: !86)
!113 = !DILocation(line: 71, column: 9, scope: !86)
!114 = !DILocation(line: 73, column: 1, scope: !51)
!115 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !116, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!116 = !DISubroutineType(types: !117)
!117 = !{!9}
!118 = !DILocalVariable(name: "ctx", scope: !115, file: !1, line: 77, type: !14)
!119 = !DILocation(line: 77, column: 11, scope: !115)
!120 = !DILocalVariable(name: "comment", scope: !115, file: !1, line: 78, type: !121)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 256)
!124 = !DILocation(line: 78, column: 10, scope: !115)
!125 = !DILocation(line: 80, column: 24, scope: !115)
!126 = !DILocation(line: 80, column: 5, scope: !115)
!127 = !DILocation(line: 81, column: 24, scope: !115)
!128 = !DILocation(line: 81, column: 5, scope: !115)
!129 = !DILocalVariable(name: "result", scope: !115, file: !1, line: 84, type: !3)
!130 = !DILocation(line: 84, column: 15, scope: !115)
!131 = !DILocation(line: 84, column: 41, scope: !115)
!132 = !DILocation(line: 84, column: 46, scope: !115)
!133 = !DILocation(line: 84, column: 24, scope: !115)
!134 = !DILocation(line: 87, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !115, file: !1, line: 87, column: 9)
!136 = !DILocation(line: 87, column: 16, scope: !135)
!137 = !DILocation(line: 87, column: 9, scope: !115)
!138 = !DILocation(line: 88, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 87, column: 25)
!140 = !DILocation(line: 88, column: 9, scope: !139)
!141 = !DILocation(line: 89, column: 5, scope: !139)
!142 = !DILocation(line: 91, column: 5, scope: !115)
!143 = distinct !DISubprogram(name: "memset", scope: !144, file: !144, line: 12, type: !145, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!144 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!145 = !DISubroutineType(types: !146)
!146 = !{!14, !14, !9, !29}
!147 = !DILocalVariable(name: "dst", arg: 1, scope: !143, file: !144, line: 12, type: !14)
!148 = !DILocation(line: 12, column: 20, scope: !143)
!149 = !DILocalVariable(name: "s", arg: 2, scope: !143, file: !144, line: 12, type: !9)
!150 = !DILocation(line: 12, column: 29, scope: !143)
!151 = !DILocalVariable(name: "count", arg: 3, scope: !143, file: !144, line: 12, type: !29)
!152 = !DILocation(line: 12, column: 39, scope: !143)
!153 = !DILocalVariable(name: "a", scope: !143, file: !144, line: 13, type: !11)
!154 = !DILocation(line: 13, column: 9, scope: !143)
!155 = !DILocation(line: 13, column: 13, scope: !143)
!156 = !DILocation(line: 14, column: 3, scope: !143)
!157 = !DILocation(line: 14, column: 15, scope: !143)
!158 = !DILocation(line: 14, column: 18, scope: !143)
!159 = !DILocation(line: 15, column: 12, scope: !143)
!160 = !DILocation(line: 15, column: 7, scope: !143)
!161 = !DILocation(line: 15, column: 10, scope: !143)
!162 = distinct !{!162, !156, !159, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !DILocation(line: 16, column: 10, scope: !143)
!165 = !DILocation(line: 16, column: 3, scope: !143)
