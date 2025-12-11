; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/063_pattern.c_258_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/063_pattern.c_258_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque
%struct._xmlPattern = type { i8*, %struct._xmlDict* }

@.str = private unnamed_addr constant [14 x i8] c"pattern_steps\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"pattern_dict\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/063_pattern.c_258_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !27, metadata !DIExpression()), !dbg !28
  %3 = load i8*, i8** %2, align 8, !dbg !29
  %4 = icmp ne i8* %3, null, !dbg !29
  br i1 %4, label %5, label %7, !dbg !31

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !32
  call void @free(i8* noundef %6) #7, !dbg !33
  br label %7, !dbg !33

7:                                                ; preds = %5, %1
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDictFree(%struct._xmlDict* noundef %0) #0 !dbg !35 {
  %2 = alloca %struct._xmlDict*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !40
  %4 = icmp ne %struct._xmlDict* %3, null, !dbg !40
  br i1 %4, label %5, label %8, !dbg !42

5:                                                ; preds = %1
  %6 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !43
  %7 = bitcast %struct._xmlDict* %6 to i8*, !dbg !43
  call void @free(i8* noundef %7) #7, !dbg !44
  br label %8, !dbg !44

8:                                                ; preds = %5, %1
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreePattern(%struct._xmlPattern* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct._xmlPattern*, align 8
  store %struct._xmlPattern* %0, %struct._xmlPattern** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !51
  %4 = icmp eq %struct._xmlPattern* %3, null, !dbg !53
  br i1 %4, label %5, label %6, !dbg !54

5:                                                ; preds = %1
  br label %30, !dbg !55

6:                                                ; preds = %1
  %7 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !56
  %8 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %7, i32 0, i32 0, !dbg !58
  %9 = load i8*, i8** %8, align 8, !dbg !58
  %10 = icmp ne i8* %9, null, !dbg !59
  br i1 %10, label %11, label %15, !dbg !60

11:                                               ; preds = %6
  %12 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !61
  %13 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %12, i32 0, i32 0, !dbg !63
  %14 = load i8*, i8** %13, align 8, !dbg !63
  call void @xmlFree(i8* noundef %14), !dbg !64
  br label %15, !dbg !65

15:                                               ; preds = %11, %6
  %16 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !66
  %17 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %16, i32 0, i32 1, !dbg !68
  %18 = load %struct._xmlDict*, %struct._xmlDict** %17, align 8, !dbg !68
  %19 = icmp ne %struct._xmlDict* %18, null, !dbg !69
  br i1 %19, label %20, label %24, !dbg !70

20:                                               ; preds = %15
  %21 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !71
  %22 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %21, i32 0, i32 1, !dbg !73
  %23 = load %struct._xmlDict*, %struct._xmlDict** %22, align 8, !dbg !73
  call void @xmlDictFree(%struct._xmlDict* noundef %23), !dbg !74
  br label %24, !dbg !75

24:                                               ; preds = %20, %15
  %25 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !76
  %26 = bitcast %struct._xmlPattern* %25 to i8*, !dbg !77
  %27 = call i8* @memset(i8* %26, i32 255, i64 16), !dbg !77
  %28 = load %struct._xmlPattern*, %struct._xmlPattern** %2, align 8, !dbg !78
  %29 = bitcast %struct._xmlPattern* %28 to i8*, !dbg !78
  call void @xmlFree(i8* noundef %29), !dbg !79
  br label %30, !dbg !80

30:                                               ; preds = %24, %5
  ret void, !dbg !80
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlStreamCompile() #0 !dbg !81 {
  %1 = alloca %struct._xmlPattern*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPattern** %1, metadata !84, metadata !DIExpression()), !dbg !85
  %2 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !86
  %3 = bitcast i8* %2 to %struct._xmlPattern*, !dbg !87
  store %struct._xmlPattern* %3, %struct._xmlPattern** %1, align 8, !dbg !85
  %4 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !88
  %5 = icmp ne %struct._xmlPattern* %4, null, !dbg !88
  br i1 %5, label %7, label %6, !dbg !90

6:                                                ; preds = %0
  br label %41, !dbg !91

7:                                                ; preds = %0
  %8 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !92
  %9 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %8, i32 0, i32 0, !dbg !93
  %10 = bitcast i8** %9 to i8*, !dbg !94
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !95
  %11 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !96
  %12 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %11, i32 0, i32 1, !dbg !97
  %13 = bitcast %struct._xmlDict** %12 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  %14 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !100
  %15 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %14, i32 0, i32 0, !dbg !101
  %16 = load i8*, i8** %15, align 8, !dbg !101
  %17 = icmp ne i8* %16, null, !dbg !102
  br i1 %17, label %23, label %18, !dbg !103

18:                                               ; preds = %7
  %19 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !104
  %20 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %19, i32 0, i32 0, !dbg !105
  %21 = load i8*, i8** %20, align 8, !dbg !105
  %22 = icmp eq i8* %21, null, !dbg !106
  br label %23, !dbg !103

23:                                               ; preds = %18, %7
  %24 = phi i1 [ true, %7 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32, !dbg !103
  %26 = sext i32 %25 to i64, !dbg !100
  call void @klee_assume(i64 noundef %26), !dbg !107
  %27 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !108
  %28 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %27, i32 0, i32 1, !dbg !109
  %29 = load %struct._xmlDict*, %struct._xmlDict** %28, align 8, !dbg !109
  %30 = icmp ne %struct._xmlDict* %29, null, !dbg !110
  br i1 %30, label %36, label %31, !dbg !111

31:                                               ; preds = %23
  %32 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !112
  %33 = getelementptr inbounds %struct._xmlPattern, %struct._xmlPattern* %32, i32 0, i32 1, !dbg !113
  %34 = load %struct._xmlDict*, %struct._xmlDict** %33, align 8, !dbg !113
  %35 = icmp eq %struct._xmlDict* %34, null, !dbg !114
  br label %36, !dbg !111

36:                                               ; preds = %31, %23
  %37 = phi i1 [ true, %23 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32, !dbg !111
  %39 = sext i32 %38 to i64, !dbg !108
  call void @klee_assume(i64 noundef %39), !dbg !115
  %40 = load %struct._xmlPattern*, %struct._xmlPattern** %1, align 8, !dbg !116
  call void @xmlFreePattern(%struct._xmlPattern* noundef %40), !dbg !117
  br label %41, !dbg !118

41:                                               ; preds = %36, %6
  ret void, !dbg !118
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !119 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !123, metadata !DIExpression()), !dbg !124
  %3 = bitcast i32* %2 to i8*, !dbg !125
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %4 = load i32, i32* %2, align 4, !dbg !127
  %5 = icmp eq i32 %4, 1, !dbg !128
  %6 = zext i1 %5 to i32, !dbg !128
  %7 = sext i32 %6 to i64, !dbg !127
  call void @klee_assume(i64 noundef %7), !dbg !129
  call void @xmlStreamCompile(), !dbg !130
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !131
  ret i32 0, !dbg !132
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !133 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !149
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
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/063_pattern.c_258_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "71ff6f26f1664cebe9152a945c7b510f")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPattern", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPattern", file: !1, line: 13, size: 128, elements: !7)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !6, file: !1, line: 14, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !6, file: !1, line: 15, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 20, type: !24, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !3}
!26 = !{}
!27 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 20, type: !3)
!28 = !DILocation(line: 20, column: 20, scope: !23)
!29 = !DILocation(line: 21, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !23, file: !1, line: 21, column: 9)
!31 = !DILocation(line: 21, column: 9, scope: !23)
!32 = !DILocation(line: 21, column: 19, scope: !30)
!33 = !DILocation(line: 21, column: 14, scope: !30)
!34 = !DILocation(line: 22, column: 1, scope: !23)
!35 = distinct !DISubprogram(name: "xmlDictFree", scope: !1, file: !1, line: 24, type: !36, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !10}
!38 = !DILocalVariable(name: "dict", arg: 1, scope: !35, file: !1, line: 24, type: !10)
!39 = !DILocation(line: 24, column: 27, scope: !35)
!40 = !DILocation(line: 26, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 26, column: 9)
!42 = !DILocation(line: 26, column: 9, scope: !35)
!43 = !DILocation(line: 26, column: 20, scope: !41)
!44 = !DILocation(line: 26, column: 15, scope: !41)
!45 = !DILocation(line: 27, column: 1, scope: !35)
!46 = distinct !DISubprogram(name: "xmlFreePattern", scope: !1, file: !1, line: 30, type: !47, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4}
!49 = !DILocalVariable(name: "comp", arg: 1, scope: !46, file: !1, line: 30, type: !4)
!50 = !DILocation(line: 30, column: 33, scope: !46)
!51 = !DILocation(line: 31, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 9)
!53 = !DILocation(line: 31, column: 14, scope: !52)
!54 = !DILocation(line: 31, column: 9, scope: !46)
!55 = !DILocation(line: 31, column: 23, scope: !52)
!56 = !DILocation(line: 33, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !46, file: !1, line: 33, column: 9)
!58 = !DILocation(line: 33, column: 15, scope: !57)
!59 = !DILocation(line: 33, column: 21, scope: !57)
!60 = !DILocation(line: 33, column: 9, scope: !46)
!61 = !DILocation(line: 34, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 33, column: 30)
!63 = !DILocation(line: 34, column: 23, scope: !62)
!64 = !DILocation(line: 34, column: 9, scope: !62)
!65 = !DILocation(line: 35, column: 5, scope: !62)
!66 = !DILocation(line: 36, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !46, file: !1, line: 36, column: 9)
!68 = !DILocation(line: 36, column: 15, scope: !67)
!69 = !DILocation(line: 36, column: 20, scope: !67)
!70 = !DILocation(line: 36, column: 9, scope: !46)
!71 = !DILocation(line: 37, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 29)
!73 = !DILocation(line: 37, column: 27, scope: !72)
!74 = !DILocation(line: 37, column: 9, scope: !72)
!75 = !DILocation(line: 38, column: 5, scope: !72)
!76 = !DILocation(line: 41, column: 12, scope: !46)
!77 = !DILocation(line: 41, column: 5, scope: !46)
!78 = !DILocation(line: 42, column: 13, scope: !46)
!79 = !DILocation(line: 42, column: 5, scope: !46)
!80 = !DILocation(line: 43, column: 1, scope: !46)
!81 = distinct !DISubprogram(name: "xmlStreamCompile", scope: !1, file: !1, line: 46, type: !82, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!82 = !DISubroutineType(types: !83)
!83 = !{null}
!84 = !DILocalVariable(name: "pattern", scope: !81, file: !1, line: 48, type: !4)
!85 = !DILocation(line: 48, column: 17, scope: !81)
!86 = !DILocation(line: 48, column: 41, scope: !81)
!87 = !DILocation(line: 48, column: 27, scope: !81)
!88 = !DILocation(line: 49, column: 10, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 49, column: 9)
!90 = !DILocation(line: 49, column: 9, scope: !81)
!91 = !DILocation(line: 49, column: 19, scope: !89)
!92 = !DILocation(line: 52, column: 25, scope: !81)
!93 = !DILocation(line: 52, column: 34, scope: !81)
!94 = !DILocation(line: 52, column: 24, scope: !81)
!95 = !DILocation(line: 52, column: 5, scope: !81)
!96 = !DILocation(line: 53, column: 25, scope: !81)
!97 = !DILocation(line: 53, column: 34, scope: !81)
!98 = !DILocation(line: 53, column: 24, scope: !81)
!99 = !DILocation(line: 53, column: 5, scope: !81)
!100 = !DILocation(line: 56, column: 17, scope: !81)
!101 = !DILocation(line: 56, column: 26, scope: !81)
!102 = !DILocation(line: 56, column: 32, scope: !81)
!103 = !DILocation(line: 56, column: 40, scope: !81)
!104 = !DILocation(line: 56, column: 43, scope: !81)
!105 = !DILocation(line: 56, column: 52, scope: !81)
!106 = !DILocation(line: 56, column: 58, scope: !81)
!107 = !DILocation(line: 56, column: 5, scope: !81)
!108 = !DILocation(line: 57, column: 17, scope: !81)
!109 = !DILocation(line: 57, column: 26, scope: !81)
!110 = !DILocation(line: 57, column: 31, scope: !81)
!111 = !DILocation(line: 57, column: 39, scope: !81)
!112 = !DILocation(line: 57, column: 42, scope: !81)
!113 = !DILocation(line: 57, column: 51, scope: !81)
!114 = !DILocation(line: 57, column: 56, scope: !81)
!115 = !DILocation(line: 57, column: 5, scope: !81)
!116 = !DILocation(line: 59, column: 20, scope: !81)
!117 = !DILocation(line: 59, column: 5, scope: !81)
!118 = !DILocation(line: 60, column: 1, scope: !81)
!119 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !120, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!120 = !DISubroutineType(types: !121)
!121 = !{!122}
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !DILocalVariable(name: "trigger", scope: !119, file: !1, line: 64, type: !122)
!124 = !DILocation(line: 64, column: 9, scope: !119)
!125 = !DILocation(line: 65, column: 24, scope: !119)
!126 = !DILocation(line: 65, column: 5, scope: !119)
!127 = !DILocation(line: 68, column: 17, scope: !119)
!128 = !DILocation(line: 68, column: 25, scope: !119)
!129 = !DILocation(line: 68, column: 5, scope: !119)
!130 = !DILocation(line: 71, column: 5, scope: !119)
!131 = !DILocation(line: 79, column: 5, scope: !119)
!132 = !DILocation(line: 81, column: 5, scope: !119)
!133 = distinct !DISubprogram(name: "memset", scope: !134, file: !134, line: 12, type: !135, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !26)
!134 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!135 = !DISubroutineType(types: !136)
!136 = !{!3, !3, !122, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DILocalVariable(name: "dst", arg: 1, scope: !133, file: !134, line: 12, type: !3)
!141 = !DILocation(line: 12, column: 20, scope: !133)
!142 = !DILocalVariable(name: "s", arg: 2, scope: !133, file: !134, line: 12, type: !122)
!143 = !DILocation(line: 12, column: 29, scope: !133)
!144 = !DILocalVariable(name: "count", arg: 3, scope: !133, file: !134, line: 12, type: !137)
!145 = !DILocation(line: 12, column: 39, scope: !133)
!146 = !DILocalVariable(name: "a", scope: !133, file: !134, line: 13, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DILocation(line: 13, column: 9, scope: !133)
!150 = !DILocation(line: 13, column: 13, scope: !133)
!151 = !DILocation(line: 14, column: 3, scope: !133)
!152 = !DILocation(line: 14, column: 15, scope: !133)
!153 = !DILocation(line: 14, column: 18, scope: !133)
!154 = !DILocation(line: 15, column: 12, scope: !133)
!155 = !DILocation(line: 15, column: 7, scope: !133)
!156 = !DILocation(line: 15, column: 10, scope: !133)
!157 = distinct !{!157, !151, !154, !158}
!158 = !{!"llvm.loop.mustprogress"}
!159 = !DILocation(line: 16, column: 10, scope: !133)
!160 = !DILocation(line: 16, column: 3, scope: !133)
