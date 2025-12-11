; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/017_encoding.c_1433_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/017_encoding.c_1433_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlCharEncodingHandler = type { i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"(handler != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/017_encoding.c_1433_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"up_size\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"up_buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !32 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !36, metadata !DIExpression()), !dbg !37
  %3 = load i8*, i8** %2, align 8, !dbg !38
  call void @free(i8* noundef %3) #7, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !41 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !47, metadata !DIExpression()), !dbg !48
  %3 = load i64, i64* %2, align 8, !dbg !49
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !50
  ret i8* %4, !dbg !51
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !52 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !55, metadata !DIExpression()), !dbg !56
  %3 = call %struct._xmlCharEncodingHandler* @isolat1ToUTF8(), !dbg !57
  store %struct._xmlCharEncodingHandler* %3, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !56
  %4 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !58
  %5 = icmp ne %struct._xmlCharEncodingHandler* %4, null, !dbg !60
  br i1 %5, label %6, label %20, !dbg !61

6:                                                ; preds = %0
  %7 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !62
  %8 = icmp ne %struct._xmlCharEncodingHandler* %7, null, !dbg !62
  br i1 %8, label %9, label %11, !dbg !62

9:                                                ; preds = %6
  br i1 true, label %10, label %11, !dbg !62

10:                                               ; preds = %9
  br label %13, !dbg !62

11:                                               ; preds = %9, %6
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !62
  br label %13, !dbg !62

13:                                               ; preds = %11, %10
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  %15 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !65
  %16 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %15, i32 0, i32 2, !dbg !66
  %17 = load i8*, i8** %16, align 8, !dbg !66
  call void @xmlFree(i8* noundef %17), !dbg !67
  %18 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !68
  %19 = bitcast %struct._xmlCharEncodingHandler* %18 to i8*, !dbg !68
  call void @xmlFree(i8* noundef %19), !dbg !69
  br label %20, !dbg !70

20:                                               ; preds = %13, %0
  ret i32 0, !dbg !71
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlCharEncodingHandler* @isolat1ToUTF8() #0 !dbg !72 {
  %1 = alloca %struct._xmlCharEncodingHandler*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlCharEncodingHandler*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %3, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %4, metadata !79, metadata !DIExpression()), !dbg !80
  %5 = bitcast i32* %4 to i8*, !dbg !81
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !82
  %6 = load i32, i32* %4, align 4, !dbg !83
  %7 = icmp sge i32 %6, 0, !dbg !84
  br i1 %7, label %8, label %11, !dbg !85

8:                                                ; preds = %0
  %9 = load i32, i32* %4, align 4, !dbg !86
  %10 = icmp slt i32 %9, 1024, !dbg !87
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi i1 [ false, %0 ], [ %10, %8 ], !dbg !88
  %13 = zext i1 %12 to i32, !dbg !85
  %14 = sext i32 %13 to i64, !dbg !83
  call void @klee_assume(i64 noundef %14), !dbg !89
  %15 = load i32, i32* %4, align 4, !dbg !90
  %16 = add nsw i32 %15, 1, !dbg !91
  %17 = sext i32 %16 to i64, !dbg !90
  %18 = call i8* @xmlMalloc(i64 noundef %17), !dbg !92
  store i8* %18, i8** %2, align 8, !dbg !93
  %19 = load i8*, i8** %2, align 8, !dbg !94
  %20 = icmp eq i8* %19, null, !dbg !96
  br i1 %20, label %21, label %22, !dbg !97

21:                                               ; preds = %11
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !98
  br label %49, !dbg !98

22:                                               ; preds = %11
  %23 = load i8*, i8** %2, align 8, !dbg !100
  %24 = load i32, i32* %4, align 4, !dbg !101
  %25 = add nsw i32 %24, 1, !dbg !102
  %26 = sext i32 %25 to i64, !dbg !101
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !103
  %27 = load i8*, i8** %2, align 8, !dbg !104
  %28 = load i32, i32* %4, align 4, !dbg !105
  %29 = sext i32 %28 to i64, !dbg !104
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !104
  store i8 0, i8* %30, align 1, !dbg !106
  %31 = call i8* @xmlMalloc(i64 noundef 24), !dbg !107
  %32 = bitcast i8* %31 to %struct._xmlCharEncodingHandler*, !dbg !108
  store %struct._xmlCharEncodingHandler* %32, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !109
  %33 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !110
  %34 = icmp eq %struct._xmlCharEncodingHandler* %33, null, !dbg !112
  br i1 %34, label %35, label %37, !dbg !113

35:                                               ; preds = %22
  %36 = load i8*, i8** %2, align 8, !dbg !114
  call void @xmlFree(i8* noundef %36), !dbg !116
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !117
  br label %49, !dbg !117

37:                                               ; preds = %22
  %38 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !118
  %39 = bitcast %struct._xmlCharEncodingHandler* %38 to i8*, !dbg !119
  %40 = call i8* @memset(i8* %39, i32 0, i64 24), !dbg !119
  %41 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !120
  %42 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %41, i32 0, i32 0, !dbg !121
  store i32 (i8*, i32*, i8*, i32*)* null, i32 (i8*, i32*, i8*, i32*)** %42, align 8, !dbg !122
  %43 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !123
  %44 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %43, i32 0, i32 1, !dbg !124
  store i32 (i8*, i32*, i8*, i32*)* null, i32 (i8*, i32*, i8*, i32*)** %44, align 8, !dbg !125
  %45 = load i8*, i8** %2, align 8, !dbg !126
  %46 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !127
  %47 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %46, i32 0, i32 2, !dbg !128
  store i8* %45, i8** %47, align 8, !dbg !129
  %48 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %3, align 8, !dbg !130
  store %struct._xmlCharEncodingHandler* %48, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !131
  br label %49, !dbg !131

49:                                               ; preds = %37, %35, %21
  %50 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !132
  ret %struct._xmlCharEncodingHandler* %50, !dbg !132
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !139, metadata !DIExpression()), !dbg !140
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i8** %7, metadata !143, metadata !DIExpression()), !dbg !144
  %8 = load i8*, i8** %4, align 8, !dbg !145
  store i8* %8, i8** %7, align 8, !dbg !144
  br label %9, !dbg !146

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !147
  %11 = add i64 %10, -1, !dbg !147
  store i64 %11, i64* %6, align 8, !dbg !147
  %12 = icmp ugt i64 %10, 0, !dbg !148
  br i1 %12, label %13, label %18, !dbg !146

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !149
  %15 = trunc i32 %14 to i8, !dbg !149
  %16 = load i8*, i8** %7, align 8, !dbg !150
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !150
  store i8* %17, i8** %7, align 8, !dbg !150
  store i8 %15, i8* %16, align 1, !dbg !151
  br label %9, !dbg !146, !llvm.loop !152

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !154
  ret i8* %19, !dbg !155
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/017_encoding.c_1433_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a9da02a518868da7092784f26f376bb8")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !1, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !1, line: 11, size: 192, elements: !9)
!9 = !{!10, !20, !21}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !8, file: !1, line: 12, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !17, !18, !17}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !8, file: !1, line: 13, baseType: !11, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !1, line: 14, baseType: !4, size: 64, offset: 128)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 18, type: !33, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !3}
!35 = !{}
!36 = !DILocalVariable(name: "ptr", arg: 1, scope: !32, file: !1, line: 18, type: !3)
!37 = !DILocation(line: 18, column: 20, scope: !32)
!38 = !DILocation(line: 19, column: 10, scope: !32)
!39 = !DILocation(line: 19, column: 5, scope: !32)
!40 = !DILocation(line: 20, column: 1, scope: !32)
!41 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !42, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!42 = !DISubroutineType(types: !43)
!43 = !{!3, !44}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocalVariable(name: "size", arg: 1, scope: !41, file: !1, line: 22, type: !44)
!48 = !DILocation(line: 22, column: 24, scope: !41)
!49 = !DILocation(line: 23, column: 19, scope: !41)
!50 = !DILocation(line: 23, column: 12, scope: !41)
!51 = !DILocation(line: 23, column: 5, scope: !41)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !53, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!53 = !DISubroutineType(types: !54)
!54 = !{!14}
!55 = !DILocalVariable(name: "handler", scope: !52, file: !1, line: 32, type: !6)
!56 = !DILocation(line: 32, column: 29, scope: !52)
!57 = !DILocation(line: 32, column: 39, scope: !52)
!58 = !DILocation(line: 35, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !1, line: 35, column: 9)
!60 = !DILocation(line: 35, column: 17, scope: !59)
!61 = !DILocation(line: 35, column: 9, scope: !52)
!62 = !DILocation(line: 46, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 35, column: 26)
!64 = !DILocation(line: 49, column: 9, scope: !63)
!65 = !DILocation(line: 52, column: 17, scope: !63)
!66 = !DILocation(line: 52, column: 26, scope: !63)
!67 = !DILocation(line: 52, column: 9, scope: !63)
!68 = !DILocation(line: 53, column: 17, scope: !63)
!69 = !DILocation(line: 53, column: 9, scope: !63)
!70 = !DILocation(line: 54, column: 5, scope: !63)
!71 = !DILocation(line: 56, column: 5, scope: !52)
!72 = distinct !DISubprogram(name: "isolat1ToUTF8", scope: !1, file: !1, line: 60, type: !73, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!73 = !DISubroutineType(types: !74)
!74 = !{!6}
!75 = !DILocalVariable(name: "up", scope: !72, file: !1, line: 61, type: !4)
!76 = !DILocation(line: 61, column: 11, scope: !72)
!77 = !DILocalVariable(name: "handler", scope: !72, file: !1, line: 62, type: !6)
!78 = !DILocation(line: 62, column: 29, scope: !72)
!79 = !DILocalVariable(name: "up_size", scope: !72, file: !1, line: 65, type: !14)
!80 = !DILocation(line: 65, column: 9, scope: !72)
!81 = !DILocation(line: 66, column: 24, scope: !72)
!82 = !DILocation(line: 66, column: 5, scope: !72)
!83 = !DILocation(line: 67, column: 17, scope: !72)
!84 = !DILocation(line: 67, column: 25, scope: !72)
!85 = !DILocation(line: 67, column: 30, scope: !72)
!86 = !DILocation(line: 67, column: 33, scope: !72)
!87 = !DILocation(line: 67, column: 41, scope: !72)
!88 = !DILocation(line: 0, scope: !72)
!89 = !DILocation(line: 67, column: 5, scope: !72)
!90 = !DILocation(line: 69, column: 27, scope: !72)
!91 = !DILocation(line: 69, column: 35, scope: !72)
!92 = !DILocation(line: 69, column: 17, scope: !72)
!93 = !DILocation(line: 69, column: 8, scope: !72)
!94 = !DILocation(line: 70, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !72, file: !1, line: 70, column: 9)
!96 = !DILocation(line: 70, column: 12, scope: !95)
!97 = !DILocation(line: 70, column: 9, scope: !72)
!98 = !DILocation(line: 71, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 70, column: 21)
!100 = !DILocation(line: 75, column: 24, scope: !72)
!101 = !DILocation(line: 75, column: 28, scope: !72)
!102 = !DILocation(line: 75, column: 36, scope: !72)
!103 = !DILocation(line: 75, column: 5, scope: !72)
!104 = !DILocation(line: 76, column: 5, scope: !72)
!105 = !DILocation(line: 76, column: 8, scope: !72)
!106 = !DILocation(line: 76, column: 17, scope: !72)
!107 = !DILocation(line: 78, column: 40, scope: !72)
!108 = !DILocation(line: 78, column: 15, scope: !72)
!109 = !DILocation(line: 78, column: 13, scope: !72)
!110 = !DILocation(line: 79, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !72, file: !1, line: 79, column: 9)
!112 = !DILocation(line: 79, column: 17, scope: !111)
!113 = !DILocation(line: 79, column: 9, scope: !72)
!114 = !DILocation(line: 80, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 79, column: 26)
!116 = !DILocation(line: 80, column: 9, scope: !115)
!117 = !DILocation(line: 81, column: 9, scope: !115)
!118 = !DILocation(line: 85, column: 12, scope: !72)
!119 = !DILocation(line: 85, column: 5, scope: !72)
!120 = !DILocation(line: 88, column: 5, scope: !72)
!121 = !DILocation(line: 88, column: 14, scope: !72)
!122 = !DILocation(line: 88, column: 20, scope: !72)
!123 = !DILocation(line: 89, column: 5, scope: !72)
!124 = !DILocation(line: 89, column: 14, scope: !72)
!125 = !DILocation(line: 89, column: 21, scope: !72)
!126 = !DILocation(line: 90, column: 21, scope: !72)
!127 = !DILocation(line: 90, column: 5, scope: !72)
!128 = !DILocation(line: 90, column: 14, scope: !72)
!129 = !DILocation(line: 90, column: 19, scope: !72)
!130 = !DILocation(line: 92, column: 12, scope: !72)
!131 = !DILocation(line: 92, column: 5, scope: !72)
!132 = !DILocation(line: 93, column: 1, scope: !72)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !35)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!3, !3, !14, !44}
!137 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !3)
!138 = !DILocation(line: 12, column: 20, scope: !133)
!139 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !14)
!140 = !DILocation(line: 12, column: 29, scope: !133)
!141 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !44)
!142 = !DILocation(line: 12, column: 39, scope: !133)
!143 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !4)
!144 = !DILocation(line: 13, column: 9, scope: !133)
!145 = !DILocation(line: 13, column: 13, scope: !133)
!146 = !DILocation(line: 14, column: 3, scope: !133)
!147 = !DILocation(line: 14, column: 15, scope: !133)
!148 = !DILocation(line: 14, column: 18, scope: !133)
!149 = !DILocation(line: 15, column: 12, scope: !133)
!150 = !DILocation(line: 15, column: 7, scope: !133)
!151 = !DILocation(line: 15, column: 10, scope: !133)
!152 = distinct !{!152, !146, !149, !153}
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 16, column: 10, scope: !133)
!155 = !DILocation(line: 16, column: 3, scope: !133)
