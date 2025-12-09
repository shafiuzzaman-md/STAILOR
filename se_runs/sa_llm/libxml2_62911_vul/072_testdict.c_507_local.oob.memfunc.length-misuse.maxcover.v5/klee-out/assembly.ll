; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._StringPool = type { i64, i64, i64, i64, i32, i8** }

@.str = private unnamed_addr constant [12 x i8] c"num_entries\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"num_keys\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@xmlFree = external global void (i8*)*, align 8
@xmlMalloc = external global i8* (i64)*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.StringPoolCreate = private unnamed_addr constant [50 x i8] c"StringPool *StringPoolCreate(size_t, size_t, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._StringPool*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i64* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %4, metadata !26, metadata !DIExpression()), !dbg !27
  %6 = bitcast i64* %2 to i8*, !dbg !28
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !29
  %7 = bitcast i64* %3 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !31
  %8 = bitcast i32* %4 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !33
  %9 = load i64, i64* %2, align 8, !dbg !34
  %10 = icmp ule i64 %9, 1024, !dbg !35
  %11 = zext i1 %10 to i32, !dbg !35
  %12 = sext i32 %11 to i64, !dbg !34
  call void @klee_assume(i64 noundef %12), !dbg !36
  %13 = load i64, i64* %3, align 8, !dbg !37
  %14 = icmp ule i64 %13, 1024, !dbg !38
  %15 = zext i1 %14 to i32, !dbg !38
  %16 = sext i32 %15 to i64, !dbg !37
  call void @klee_assume(i64 noundef %16), !dbg !39
  call void @llvm.dbg.declare(metadata %struct._StringPool** %5, metadata !40, metadata !DIExpression()), !dbg !54
  %17 = load i64, i64* %2, align 8, !dbg !55
  %18 = load i64, i64* %3, align 8, !dbg !56
  %19 = load i32, i32* %4, align 4, !dbg !57
  %20 = call %struct._StringPool* @StringPoolCreate(i64 noundef %17, i64 noundef %18, i32 noundef %19), !dbg !58
  store %struct._StringPool* %20, %struct._StringPool** %5, align 8, !dbg !54
  %21 = load %struct._StringPool*, %struct._StringPool** %5, align 8, !dbg !59
  %22 = icmp ne %struct._StringPool* %21, null, !dbg !61
  br i1 %22, label %23, label %32, !dbg !62

23:                                               ; preds = %0
  %24 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !63
  %25 = load %struct._StringPool*, %struct._StringPool** %5, align 8, !dbg !65
  %26 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %25, i32 0, i32 5, !dbg !66
  %27 = load i8**, i8*** %26, align 8, !dbg !66
  %28 = bitcast i8** %27 to i8*, !dbg !65
  call void %24(i8* noundef %28), !dbg !63
  %29 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !67
  %30 = load %struct._StringPool*, %struct._StringPool** %5, align 8, !dbg !68
  %31 = bitcast %struct._StringPool* %30 to i8*, !dbg !68
  call void %29(i8* noundef %31), !dbg !67
  br label %32, !dbg !69

32:                                               ; preds = %23, %0
  ret i32 0, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._StringPool* @StringPoolCreate(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 !dbg !71 {
  %4 = alloca %struct._StringPool*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._StringPool*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !74, metadata !DIExpression()), !dbg !75
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata %struct._StringPool** %8, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i64* %9, metadata !82, metadata !DIExpression()), !dbg !83
  %10 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !84
  %11 = call i8* %10(i64 noundef 48), !dbg !84
  %12 = bitcast i8* %11 to %struct._StringPool*, !dbg !84
  store %struct._StringPool* %12, %struct._StringPool** %8, align 8, !dbg !85
  %13 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !86
  %14 = icmp eq %struct._StringPool* %13, null, !dbg !88
  br i1 %14, label %15, label %16, !dbg !89

15:                                               ; preds = %3
  store %struct._StringPool* null, %struct._StringPool** %4, align 8, !dbg !90
  br label %59, !dbg !90

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8, !dbg !91
  %18 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !92
  %19 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %18, i32 0, i32 0, !dbg !93
  store i64 %17, i64* %19, align 8, !dbg !94
  %20 = load i64, i64* %6, align 8, !dbg !95
  %21 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !96
  %22 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %21, i32 0, i32 1, !dbg !97
  store i64 %20, i64* %22, align 8, !dbg !98
  %23 = load i64, i64* %5, align 8, !dbg !99
  %24 = load i64, i64* %6, align 8, !dbg !100
  %25 = mul i64 %23, %24, !dbg !101
  store i64 %25, i64* %9, align 8, !dbg !102
  %26 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !103
  %27 = load i64, i64* %9, align 8, !dbg !104
  %28 = mul i64 %27, 8, !dbg !105
  %29 = call i8* %26(i64 noundef %28), !dbg !103
  %30 = bitcast i8* %29 to i8**, !dbg !103
  %31 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !106
  %32 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %31, i32 0, i32 5, !dbg !107
  store i8** %30, i8*** %32, align 8, !dbg !108
  %33 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !109
  %34 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %33, i32 0, i32 5, !dbg !111
  %35 = load i8**, i8*** %34, align 8, !dbg !111
  %36 = icmp eq i8** %35, null, !dbg !112
  br i1 %36, label %37, label %41, !dbg !113

37:                                               ; preds = %16
  %38 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !114
  %39 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !116
  %40 = bitcast %struct._StringPool* %39 to i8*, !dbg !116
  call void %38(i8* noundef %40), !dbg !114
  store %struct._StringPool* null, %struct._StringPool** %4, align 8, !dbg !117
  br label %59, !dbg !117

41:                                               ; preds = %16
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.StringPoolCreate, i64 0, i64 0)), !dbg !118
  %43 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !119
  %44 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %43, i32 0, i32 5, !dbg !120
  %45 = load i8**, i8*** %44, align 8, !dbg !120
  %46 = bitcast i8** %45 to i8*, !dbg !121
  %47 = load i64, i64* %9, align 8, !dbg !122
  %48 = mul i64 %47, 8, !dbg !123
  %49 = call i8* @memset(i8* %46, i32 0, i64 %48), !dbg !121
  %50 = load i64, i64* %9, align 8, !dbg !124
  %51 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !125
  %52 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %51, i32 0, i32 2, !dbg !126
  store i64 %50, i64* %52, align 8, !dbg !127
  %53 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !128
  %54 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %53, i32 0, i32 3, !dbg !129
  store i64 0, i64* %54, align 8, !dbg !130
  %55 = load i32, i32* %7, align 4, !dbg !131
  %56 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !132
  %57 = getelementptr inbounds %struct._StringPool, %struct._StringPool* %56, i32 0, i32 4, !dbg !133
  store i32 %55, i32* %57, align 8, !dbg !134
  %58 = load %struct._StringPool*, %struct._StringPool** %8, align 8, !dbg !135
  store %struct._StringPool* %58, %struct._StringPool** %4, align 8, !dbg !136
  br label %59, !dbg !136

59:                                               ; preds = %41, %37, %15
  %60 = load %struct._StringPool*, %struct._StringPool** %4, align 8, !dbg !137
  ret %struct._StringPool* %60, !dbg !137
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !138 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !142, metadata !DIExpression()), !dbg !143
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !144, metadata !DIExpression()), !dbg !145
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i8** %7, metadata !148, metadata !DIExpression()), !dbg !149
  %8 = load i8*, i8** %4, align 8, !dbg !150
  store i8* %8, i8** %7, align 8, !dbg !149
  br label %9, !dbg !151

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !152
  %11 = add i64 %10, -1, !dbg !152
  store i64 %11, i64* %6, align 8, !dbg !152
  %12 = icmp ugt i64 %10, 0, !dbg !153
  br i1 %12, label %13, label %18, !dbg !151

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !154
  %15 = trunc i32 %14 to i8, !dbg !154
  %16 = load i8*, i8** %7, align 8, !dbg !155
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !155
  store i8* %17, i8** %7, align 8, !dbg !155
  store i8 %15, i8* %16, align 1, !dbg !156
  br label %9, !dbg !151, !llvm.loop !157

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !159
  ret i8* %19, !dbg !160
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/072_testdict.c_507_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "7529da574728c63a013af6501834f833")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !15, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "num_entries", scope: !14, file: !1, line: 39, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocation(line: 39, column: 12, scope: !14)
!24 = !DILocalVariable(name: "num_keys", scope: !14, file: !1, line: 39, type: !20)
!25 = !DILocation(line: 39, column: 25, scope: !14)
!26 = !DILocalVariable(name: "id", scope: !14, file: !1, line: 40, type: !17)
!27 = !DILocation(line: 40, column: 9, scope: !14)
!28 = !DILocation(line: 42, column: 24, scope: !14)
!29 = !DILocation(line: 42, column: 5, scope: !14)
!30 = !DILocation(line: 43, column: 24, scope: !14)
!31 = !DILocation(line: 43, column: 5, scope: !14)
!32 = !DILocation(line: 44, column: 24, scope: !14)
!33 = !DILocation(line: 44, column: 5, scope: !14)
!34 = !DILocation(line: 46, column: 17, scope: !14)
!35 = !DILocation(line: 46, column: 29, scope: !14)
!36 = !DILocation(line: 46, column: 5, scope: !14)
!37 = !DILocation(line: 47, column: 17, scope: !14)
!38 = !DILocation(line: 47, column: 26, scope: !14)
!39 = !DILocation(line: 47, column: 5, scope: !14)
!40 = !DILocalVariable(name: "pool", scope: !14, file: !1, line: 49, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringPool", file: !1, line: 13, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringPool", file: !1, line: 6, size: 384, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !43, file: !1, line: 7, baseType: !20, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "num_keys", scope: !43, file: !1, line: 8, baseType: !20, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "num_strings", scope: !43, file: !1, line: 9, baseType: !20, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !43, file: !1, line: 10, baseType: !20, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !43, file: !1, line: 11, baseType: !17, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !43, file: !1, line: 12, baseType: !51, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DILocation(line: 49, column: 17, scope: !14)
!55 = !DILocation(line: 49, column: 41, scope: !14)
!56 = !DILocation(line: 49, column: 54, scope: !14)
!57 = !DILocation(line: 49, column: 64, scope: !14)
!58 = !DILocation(line: 49, column: 24, scope: !14)
!59 = !DILocation(line: 50, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !14, file: !1, line: 50, column: 9)
!61 = !DILocation(line: 50, column: 14, scope: !60)
!62 = !DILocation(line: 50, column: 9, scope: !14)
!63 = !DILocation(line: 51, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 50, column: 23)
!65 = !DILocation(line: 51, column: 17, scope: !64)
!66 = !DILocation(line: 51, column: 23, scope: !64)
!67 = !DILocation(line: 52, column: 9, scope: !64)
!68 = !DILocation(line: 52, column: 17, scope: !64)
!69 = !DILocation(line: 53, column: 5, scope: !64)
!70 = !DILocation(line: 55, column: 5, scope: !14)
!71 = distinct !DISubprogram(name: "StringPoolCreate", scope: !1, file: !1, line: 15, type: !72, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !18)
!72 = !DISubroutineType(types: !73)
!73 = !{!41, !20, !20, !17}
!74 = !DILocalVariable(name: "num_entries", arg: 1, scope: !71, file: !1, line: 15, type: !20)
!75 = !DILocation(line: 15, column: 44, scope: !71)
!76 = !DILocalVariable(name: "num_keys", arg: 2, scope: !71, file: !1, line: 15, type: !20)
!77 = !DILocation(line: 15, column: 64, scope: !71)
!78 = !DILocalVariable(name: "id", arg: 3, scope: !71, file: !1, line: 15, type: !17)
!79 = !DILocation(line: 15, column: 78, scope: !71)
!80 = !DILocalVariable(name: "ret", scope: !71, file: !1, line: 16, type: !41)
!81 = !DILocation(line: 16, column: 17, scope: !71)
!82 = !DILocalVariable(name: "num_strings", scope: !71, file: !1, line: 17, type: !20)
!83 = !DILocation(line: 17, column: 12, scope: !71)
!84 = !DILocation(line: 19, column: 11, scope: !71)
!85 = !DILocation(line: 19, column: 9, scope: !71)
!86 = !DILocation(line: 20, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !71, file: !1, line: 20, column: 9)
!88 = !DILocation(line: 20, column: 13, scope: !87)
!89 = !DILocation(line: 20, column: 9, scope: !71)
!90 = !DILocation(line: 20, column: 22, scope: !87)
!91 = !DILocation(line: 21, column: 24, scope: !71)
!92 = !DILocation(line: 21, column: 5, scope: !71)
!93 = !DILocation(line: 21, column: 10, scope: !71)
!94 = !DILocation(line: 21, column: 22, scope: !71)
!95 = !DILocation(line: 22, column: 21, scope: !71)
!96 = !DILocation(line: 22, column: 5, scope: !71)
!97 = !DILocation(line: 22, column: 10, scope: !71)
!98 = !DILocation(line: 22, column: 19, scope: !71)
!99 = !DILocation(line: 23, column: 19, scope: !71)
!100 = !DILocation(line: 23, column: 33, scope: !71)
!101 = !DILocation(line: 23, column: 31, scope: !71)
!102 = !DILocation(line: 23, column: 17, scope: !71)
!103 = !DILocation(line: 24, column: 20, scope: !71)
!104 = !DILocation(line: 24, column: 30, scope: !71)
!105 = !DILocation(line: 24, column: 42, scope: !71)
!106 = !DILocation(line: 24, column: 5, scope: !71)
!107 = !DILocation(line: 24, column: 10, scope: !71)
!108 = !DILocation(line: 24, column: 18, scope: !71)
!109 = !DILocation(line: 25, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !71, file: !1, line: 25, column: 9)
!111 = !DILocation(line: 25, column: 14, scope: !110)
!112 = !DILocation(line: 25, column: 22, scope: !110)
!113 = !DILocation(line: 25, column: 9, scope: !71)
!114 = !DILocation(line: 26, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 25, column: 31)
!116 = !DILocation(line: 26, column: 17, scope: !115)
!117 = !DILocation(line: 27, column: 9, scope: !115)
!118 = !DILocation(line: 29, column: 5, scope: !71)
!119 = !DILocation(line: 30, column: 12, scope: !71)
!120 = !DILocation(line: 30, column: 17, scope: !71)
!121 = !DILocation(line: 30, column: 5, scope: !71)
!122 = !DILocation(line: 30, column: 29, scope: !71)
!123 = !DILocation(line: 30, column: 41, scope: !71)
!124 = !DILocation(line: 31, column: 24, scope: !71)
!125 = !DILocation(line: 31, column: 5, scope: !71)
!126 = !DILocation(line: 31, column: 10, scope: !71)
!127 = !DILocation(line: 31, column: 22, scope: !71)
!128 = !DILocation(line: 32, column: 5, scope: !71)
!129 = !DILocation(line: 32, column: 10, scope: !71)
!130 = !DILocation(line: 32, column: 16, scope: !71)
!131 = !DILocation(line: 33, column: 15, scope: !71)
!132 = !DILocation(line: 33, column: 5, scope: !71)
!133 = !DILocation(line: 33, column: 10, scope: !71)
!134 = !DILocation(line: 33, column: 13, scope: !71)
!135 = !DILocation(line: 35, column: 12, scope: !71)
!136 = !DILocation(line: 35, column: 5, scope: !71)
!137 = !DILocation(line: 36, column: 1, scope: !71)
!138 = distinct !DISubprogram(name: "memset", scope: !139, file: !139, line: 12, type: !140, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!139 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!140 = !DISubroutineType(types: !141)
!141 = !{!3, !3, !17, !20}
!142 = !DILocalVariable(name: "dst", arg: 1, scope: !138, file: !139, line: 12, type: !3)
!143 = !DILocation(line: 12, column: 20, scope: !138)
!144 = !DILocalVariable(name: "s", arg: 2, scope: !138, file: !139, line: 12, type: !17)
!145 = !DILocation(line: 12, column: 29, scope: !138)
!146 = !DILocalVariable(name: "count", arg: 3, scope: !138, file: !139, line: 12, type: !20)
!147 = !DILocation(line: 12, column: 39, scope: !138)
!148 = !DILocalVariable(name: "a", scope: !138, file: !139, line: 13, type: !52)
!149 = !DILocation(line: 13, column: 9, scope: !138)
!150 = !DILocation(line: 13, column: 13, scope: !138)
!151 = !DILocation(line: 14, column: 3, scope: !138)
!152 = !DILocation(line: 14, column: 15, scope: !138)
!153 = !DILocation(line: 14, column: 18, scope: !138)
!154 = !DILocation(line: 15, column: 12, scope: !138)
!155 = !DILocation(line: 15, column: 7, scope: !138)
!156 = !DILocation(line: 15, column: 10, scope: !138)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !138)
!160 = !DILocation(line: 16, column: 3, scope: !138)
