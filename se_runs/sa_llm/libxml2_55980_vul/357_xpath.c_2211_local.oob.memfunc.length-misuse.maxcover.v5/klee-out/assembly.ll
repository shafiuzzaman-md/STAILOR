; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/357_xpath.c_2211_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/357_xpath.c_2211_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathContextCache = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"xmlMalloc_ptr\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"creating object cache\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"(sizeof(xmlXPathContextCache) <= malloc_usable_size(cache)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/357_xpath.c_2211_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = load i64, i64* %2, align 8, !dbg !36
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !37
  store i8* %5, i8** %3, align 8, !dbg !35
  %6 = bitcast i8** %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %7 = load i8*, i8** %3, align 8, !dbg !40
  ret i8* %7, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathContextCache* @xmlXPathContextCacheCreate() #0 !dbg !42 {
  %1 = alloca %struct._xmlXPathContextCache*, align 8
  %2 = alloca %struct._xmlXPathContextCache*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContextCache** %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = call i8* @xmlMalloc(i64 noundef 20), !dbg !47
  %4 = bitcast i8* %3 to %struct._xmlXPathContextCache*, !dbg !48
  store %struct._xmlXPathContextCache* %4, %struct._xmlXPathContextCache** %2, align 8, !dbg !49
  %5 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !50
  %6 = icmp eq %struct._xmlXPathContextCache* %5, null, !dbg !52
  br i1 %6, label %7, label %8, !dbg !53

7:                                                ; preds = %0
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0)), !dbg !54
  store %struct._xmlXPathContextCache* null, %struct._xmlXPathContextCache** %1, align 8, !dbg !56
  br label %23, !dbg !56

8:                                                ; preds = %0
  %9 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !57
  %10 = bitcast %struct._xmlXPathContextCache* %9 to i8*, !dbg !58
  %11 = call i8* @memset(i8* %10, i32 0, i64 20), !dbg !58
  %12 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !59
  %13 = getelementptr inbounds %struct._xmlXPathContextCache, %struct._xmlXPathContextCache* %12, i32 0, i32 0, !dbg !60
  store i32 100, i32* %13, align 4, !dbg !61
  %14 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !62
  %15 = getelementptr inbounds %struct._xmlXPathContextCache, %struct._xmlXPathContextCache* %14, i32 0, i32 1, !dbg !63
  store i32 100, i32* %15, align 4, !dbg !64
  %16 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !65
  %17 = getelementptr inbounds %struct._xmlXPathContextCache, %struct._xmlXPathContextCache* %16, i32 0, i32 2, !dbg !66
  store i32 100, i32* %17, align 4, !dbg !67
  %18 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !68
  %19 = getelementptr inbounds %struct._xmlXPathContextCache, %struct._xmlXPathContextCache* %18, i32 0, i32 3, !dbg !69
  store i32 100, i32* %19, align 4, !dbg !70
  %20 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !71
  %21 = getelementptr inbounds %struct._xmlXPathContextCache, %struct._xmlXPathContextCache* %20, i32 0, i32 4, !dbg !72
  store i32 100, i32* %21, align 4, !dbg !73
  %22 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !74
  store %struct._xmlXPathContextCache* %22, %struct._xmlXPathContextCache** %1, align 8, !dbg !75
  br label %23, !dbg !75

23:                                               ; preds = %8, %7
  %24 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %1, align 8, !dbg !76
  ret %struct._xmlXPathContextCache* %24, !dbg !76
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !77 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !DIExpression()), !dbg !86
  ret void, !dbg !87
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !88 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathContextCache*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContextCache** %2, metadata !91, metadata !DIExpression()), !dbg !92
  %3 = call %struct._xmlXPathContextCache* @xmlXPathContextCacheCreate(), !dbg !93
  store %struct._xmlXPathContextCache* %3, %struct._xmlXPathContextCache** %2, align 8, !dbg !94
  %4 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !95
  %5 = icmp ne %struct._xmlXPathContextCache* %4, null, !dbg !97
  br i1 %5, label %6, label %17, !dbg !98

6:                                                ; preds = %0
  %7 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !99
  %8 = call i32 (%struct._xmlXPathContextCache*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlXPathContextCache*, ...)*)(%struct._xmlXPathContextCache* noundef %7), !dbg !99
  %9 = sext i32 %8 to i64, !dbg !99
  %10 = icmp ule i64 20, %9, !dbg !99
  br i1 %10, label %11, label %13, !dbg !99

11:                                               ; preds = %6
  br i1 true, label %12, label %13, !dbg !99

12:                                               ; preds = %11
  br label %15, !dbg !99

13:                                               ; preds = %11, %6
  %14 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !99
  br label %15, !dbg !99

15:                                               ; preds = %13, %12
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !101
  br label %17, !dbg !102

17:                                               ; preds = %15, %0
  %18 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !103
  %19 = icmp ne %struct._xmlXPathContextCache* %18, null, !dbg !105
  br i1 %19, label %20, label %23, !dbg !106

20:                                               ; preds = %17
  %21 = load %struct._xmlXPathContextCache*, %struct._xmlXPathContextCache** %2, align 8, !dbg !107
  %22 = bitcast %struct._xmlXPathContextCache* %21 to i8*, !dbg !107
  call void @free(i8* noundef %22) #7, !dbg !109
  br label %23, !dbg !110

23:                                               ; preds = %20, %17
  ret i32 0, !dbg !111
}

declare i32 @malloc_usable_size(...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !112 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !118, metadata !DIExpression()), !dbg !119
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %7, metadata !122, metadata !DIExpression()), !dbg !124
  %8 = load i8*, i8** %4, align 8, !dbg !125
  store i8* %8, i8** %7, align 8, !dbg !124
  br label %9, !dbg !126

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !127
  %11 = add i64 %10, -1, !dbg !127
  store i64 %11, i64* %6, align 8, !dbg !127
  %12 = icmp ugt i64 %10, 0, !dbg !128
  br i1 %12, label %13, label %18, !dbg !126

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !129
  %15 = trunc i32 %14 to i8, !dbg !129
  %16 = load i8*, i8** %7, align 8, !dbg !130
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !130
  store i8* %17, i8** %7, align 8, !dbg !130
  store i8 %15, i8* %16, align 1, !dbg !131
  br label %9, !dbg !126, !llvm.loop !132

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !134
  ret i8* %19, !dbg !135
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/357_xpath.c_2211_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3c4fffe41f72932f28cc3730e14572e8")
!2 = !{!3, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextCachePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextCache", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContextCache", file: !1, line: 13, size: 160, elements: !7)
!7 = !{!8, !10, !11, !12, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "maxNodeset", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxString", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "maxBoolean", scope: !6, file: !1, line: 16, baseType: !9, size: 32, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "maxNumber", scope: !6, file: !1, line: 17, baseType: !9, size: 32, offset: 96)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "maxMisc", scope: !6, file: !1, line: 18, baseType: !9, size: 32, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 25, type: !26, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!14, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 25, type: !28)
!33 = !DILocation(line: 25, column: 24, scope: !25)
!34 = !DILocalVariable(name: "ptr", scope: !25, file: !1, line: 26, type: !14)
!35 = !DILocation(line: 26, column: 11, scope: !25)
!36 = !DILocation(line: 26, column: 24, scope: !25)
!37 = !DILocation(line: 26, column: 17, scope: !25)
!38 = !DILocation(line: 28, column: 24, scope: !25)
!39 = !DILocation(line: 28, column: 5, scope: !25)
!40 = !DILocation(line: 29, column: 12, scope: !25)
!41 = !DILocation(line: 29, column: 5, scope: !25)
!42 = distinct !DISubprogram(name: "xmlXPathContextCacheCreate", scope: !1, file: !1, line: 33, type: !43, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!43 = !DISubroutineType(types: !44)
!44 = !{!3}
!45 = !DILocalVariable(name: "ret", scope: !42, file: !1, line: 34, type: !3)
!46 = !DILocation(line: 34, column: 29, scope: !42)
!47 = !DILocation(line: 36, column: 37, scope: !42)
!48 = !DILocation(line: 36, column: 11, scope: !42)
!49 = !DILocation(line: 36, column: 9, scope: !42)
!50 = !DILocation(line: 37, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 37, column: 9)
!52 = !DILocation(line: 37, column: 13, scope: !51)
!53 = !DILocation(line: 37, column: 9, scope: !42)
!54 = !DILocation(line: 38, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 37, column: 22)
!56 = !DILocation(line: 39, column: 9, scope: !55)
!57 = !DILocation(line: 41, column: 12, scope: !42)
!58 = !DILocation(line: 41, column: 5, scope: !42)
!59 = !DILocation(line: 42, column: 5, scope: !42)
!60 = !DILocation(line: 42, column: 10, scope: !42)
!61 = !DILocation(line: 42, column: 21, scope: !42)
!62 = !DILocation(line: 43, column: 5, scope: !42)
!63 = !DILocation(line: 43, column: 10, scope: !42)
!64 = !DILocation(line: 43, column: 20, scope: !42)
!65 = !DILocation(line: 44, column: 5, scope: !42)
!66 = !DILocation(line: 44, column: 10, scope: !42)
!67 = !DILocation(line: 44, column: 21, scope: !42)
!68 = !DILocation(line: 45, column: 5, scope: !42)
!69 = !DILocation(line: 45, column: 10, scope: !42)
!70 = !DILocation(line: 45, column: 20, scope: !42)
!71 = !DILocation(line: 46, column: 5, scope: !42)
!72 = !DILocation(line: 46, column: 10, scope: !42)
!73 = !DILocation(line: 46, column: 18, scope: !42)
!74 = !DILocation(line: 47, column: 12, scope: !42)
!75 = !DILocation(line: 47, column: 5, scope: !42)
!76 = !DILocation(line: 48, column: 1, scope: !42)
!77 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 51, type: !78, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !14, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DILocalVariable(name: "ctxt", arg: 1, scope: !77, file: !1, line: 51, type: !14)
!84 = !DILocation(line: 51, column: 30, scope: !77)
!85 = !DILocalVariable(name: "msg", arg: 2, scope: !77, file: !1, line: 51, type: !80)
!86 = !DILocation(line: 51, column: 48, scope: !77)
!87 = !DILocation(line: 53, column: 1, scope: !77)
!88 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !89, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!89 = !DISubroutineType(types: !90)
!90 = !{!9}
!91 = !DILocalVariable(name: "cache", scope: !88, file: !1, line: 56, type: !3)
!92 = !DILocation(line: 56, column: 29, scope: !88)
!93 = !DILocation(line: 59, column: 13, scope: !88)
!94 = !DILocation(line: 59, column: 11, scope: !88)
!95 = !DILocation(line: 73, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 73, column: 9)
!97 = !DILocation(line: 73, column: 15, scope: !96)
!98 = !DILocation(line: 73, column: 9, scope: !88)
!99 = !DILocation(line: 75, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 73, column: 24)
!101 = !DILocation(line: 78, column: 9, scope: !100)
!102 = !DILocation(line: 79, column: 5, scope: !100)
!103 = !DILocation(line: 82, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !88, file: !1, line: 82, column: 9)
!105 = !DILocation(line: 82, column: 15, scope: !104)
!106 = !DILocation(line: 82, column: 9, scope: !88)
!107 = !DILocation(line: 83, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 82, column: 24)
!109 = !DILocation(line: 83, column: 9, scope: !108)
!110 = !DILocation(line: 84, column: 5, scope: !108)
!111 = !DILocation(line: 86, column: 5, scope: !88)
!112 = distinct !DISubprogram(name: "memset", scope: !113, file: !113, line: 12, type: !114, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!113 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!114 = !DISubroutineType(types: !115)
!115 = !{!14, !14, !9, !28}
!116 = !DILocalVariable(name: "dst", arg: 1, scope: !112, file: !113, line: 12, type: !14)
!117 = !DILocation(line: 12, column: 20, scope: !112)
!118 = !DILocalVariable(name: "s", arg: 2, scope: !112, file: !113, line: 12, type: !9)
!119 = !DILocation(line: 12, column: 29, scope: !112)
!120 = !DILocalVariable(name: "count", arg: 3, scope: !112, file: !113, line: 12, type: !28)
!121 = !DILocation(line: 12, column: 39, scope: !112)
!122 = !DILocalVariable(name: "a", scope: !112, file: !113, line: 13, type: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!124 = !DILocation(line: 13, column: 9, scope: !112)
!125 = !DILocation(line: 13, column: 13, scope: !112)
!126 = !DILocation(line: 14, column: 3, scope: !112)
!127 = !DILocation(line: 14, column: 15, scope: !112)
!128 = !DILocation(line: 14, column: 18, scope: !112)
!129 = !DILocation(line: 15, column: 12, scope: !112)
!130 = !DILocation(line: 15, column: 7, scope: !112)
!131 = !DILocation(line: 15, column: 10, scope: !112)
!132 = distinct !{!132, !126, !129, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !DILocation(line: 16, column: 10, scope: !112)
!135 = !DILocation(line: 16, column: 3, scope: !112)
