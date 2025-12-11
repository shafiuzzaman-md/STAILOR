; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/369_xpath.c_863_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/369_xpath.c_863_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlPointerList = type { i8**, i32, i32 }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [39 x i8] c"xmlPointerListCreate: allocating item\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"initialSize\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"(initialSize <= 1024 * 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/369_xpath.c_863_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !23 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !32, metadata !DIExpression()), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlPointerListAddSize(%struct._xmlPointerList* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !35 {
  %4 = alloca %struct._xmlPointerList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlPointerList* %0, %struct._xmlPointerList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %4, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !DIExpression()), !dbg !43
  %7 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !44
  %8 = icmp eq %struct._xmlPointerList* %7, null, !dbg !46
  br i1 %8, label %9, label %10, !dbg !47

9:                                                ; preds = %3
  br label %44, !dbg !48

10:                                               ; preds = %3
  %11 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !49
  %12 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %11, i32 0, i32 0, !dbg !51
  %13 = load i8**, i8*** %12, align 8, !dbg !51
  %14 = icmp eq i8** %13, null, !dbg !52
  br i1 %14, label %15, label %23, !dbg !53

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4, !dbg !54
  %17 = sext i32 %16 to i64, !dbg !54
  %18 = mul i64 %17, 8, !dbg !56
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !57
  %20 = bitcast i8* %19 to i8**, !dbg !57
  %21 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !58
  %22 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %21, i32 0, i32 0, !dbg !59
  store i8** %20, i8*** %22, align 8, !dbg !60
  br label %35, !dbg !61

23:                                               ; preds = %10
  %24 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !62
  %25 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %24, i32 0, i32 0, !dbg !64
  %26 = load i8**, i8*** %25, align 8, !dbg !64
  %27 = bitcast i8** %26 to i8*, !dbg !62
  %28 = load i32, i32* %6, align 4, !dbg !65
  %29 = sext i32 %28 to i64, !dbg !65
  %30 = mul i64 %29, 8, !dbg !66
  %31 = call i8* @realloc(i8* noundef %27, i64 noundef %30) #7, !dbg !67
  %32 = bitcast i8* %31 to i8**, !dbg !67
  %33 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !68
  %34 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %33, i32 0, i32 0, !dbg !69
  store i8** %32, i8*** %34, align 8, !dbg !70
  br label %35

35:                                               ; preds = %23, %15
  %36 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !71
  %37 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %36, i32 0, i32 0, !dbg !73
  %38 = load i8**, i8*** %37, align 8, !dbg !73
  %39 = icmp ne i8** %38, null, !dbg !74
  br i1 %39, label %40, label %44, !dbg !75

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4, !dbg !76
  %42 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !78
  %43 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %42, i32 0, i32 2, !dbg !79
  store i32 %41, i32* %43, align 4, !dbg !80
  br label %44, !dbg !81

44:                                               ; preds = %9, %40, %35
  ret void, !dbg !82
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlPointerList* @xmlPointerListCreate(i32 noundef %0) #0 !dbg !83 {
  %2 = alloca %struct._xmlPointerList*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlPointerList*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %4, metadata !88, metadata !DIExpression()), !dbg !89
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !90
  %6 = bitcast i8* %5 to %struct._xmlPointerList*, !dbg !91
  store %struct._xmlPointerList* %6, %struct._xmlPointerList** %4, align 8, !dbg !92
  %7 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !93
  %8 = icmp eq %struct._xmlPointerList* %7, null, !dbg !95
  br i1 %8, label %9, label %10, !dbg !96

9:                                                ; preds = %1
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)), !dbg !97
  store %struct._xmlPointerList* null, %struct._xmlPointerList** %2, align 8, !dbg !99
  br label %23, !dbg !99

10:                                               ; preds = %1
  %11 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !100
  %12 = bitcast %struct._xmlPointerList* %11 to i8*, !dbg !101
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !101
  %14 = load i32, i32* %3, align 4, !dbg !102
  %15 = icmp sgt i32 %14, 0, !dbg !104
  br i1 %15, label %16, label %21, !dbg !105

16:                                               ; preds = %10
  %17 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !106
  %18 = load i32, i32* %3, align 4, !dbg !108
  call void @xmlPointerListAddSize(%struct._xmlPointerList* noundef %17, i8* noundef null, i32 noundef %18), !dbg !109
  %19 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !110
  %20 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %19, i32 0, i32 1, !dbg !111
  store i32 0, i32* %20, align 8, !dbg !112
  br label %21, !dbg !113

21:                                               ; preds = %16, %10
  %22 = load %struct._xmlPointerList*, %struct._xmlPointerList** %4, align 8, !dbg !114
  store %struct._xmlPointerList* %22, %struct._xmlPointerList** %2, align 8, !dbg !115
  br label %23, !dbg !115

23:                                               ; preds = %21, %9
  %24 = load %struct._xmlPointerList*, %struct._xmlPointerList** %2, align 8, !dbg !116
  ret %struct._xmlPointerList* %24, !dbg !116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathCmpNodesExt(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !117 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !123, metadata !DIExpression()), !dbg !124
  store %struct._xmlNode* %1, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !125, metadata !DIExpression()), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !128 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlPointerList*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !131, metadata !DIExpression()), !dbg !132
  %4 = bitcast i32* %2 to i8*, !dbg !133
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !134
  %5 = load i32, i32* %2, align 4, !dbg !135
  %6 = icmp sge i32 %5, 0, !dbg !136
  %7 = zext i1 %6 to i32, !dbg !136
  %8 = sext i32 %7 to i64, !dbg !135
  call void @klee_assume(i64 noundef %8), !dbg !137
  call void @llvm.dbg.declare(metadata %struct._xmlPointerList** %3, metadata !138, metadata !DIExpression()), !dbg !139
  %9 = load i32, i32* %2, align 4, !dbg !140
  %10 = call %struct._xmlPointerList* @xmlPointerListCreate(i32 noundef %9), !dbg !141
  store %struct._xmlPointerList* %10, %struct._xmlPointerList** %3, align 8, !dbg !139
  %11 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !142
  %12 = icmp ne %struct._xmlPointerList* %11, null, !dbg !144
  br i1 %12, label %13, label %34, !dbg !145

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4, !dbg !146
  %15 = icmp sle i32 %14, 1048576, !dbg !146
  br i1 %15, label %16, label %18, !dbg !146

16:                                               ; preds = %13
  br i1 true, label %17, label %18, !dbg !146

17:                                               ; preds = %16
  br label %20, !dbg !146

18:                                               ; preds = %16, %13
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !146
  br label %20, !dbg !146

20:                                               ; preds = %18, %17
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !148
  %22 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !149
  %23 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %22, i32 0, i32 0, !dbg !151
  %24 = load i8**, i8*** %23, align 8, !dbg !151
  %25 = icmp ne i8** %24, null, !dbg !152
  br i1 %25, label %26, label %31, !dbg !153

26:                                               ; preds = %20
  %27 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !154
  %28 = getelementptr inbounds %struct._xmlPointerList, %struct._xmlPointerList* %27, i32 0, i32 0, !dbg !156
  %29 = load i8**, i8*** %28, align 8, !dbg !156
  %30 = bitcast i8** %29 to i8*, !dbg !154
  call void @free(i8* noundef %30) #7, !dbg !157
  br label %31, !dbg !158

31:                                               ; preds = %26, %20
  %32 = load %struct._xmlPointerList*, %struct._xmlPointerList** %3, align 8, !dbg !159
  %33 = bitcast %struct._xmlPointerList* %32 to i8*, !dbg !159
  call void @free(i8* noundef %33) #7, !dbg !160
  br label %34, !dbg !161

34:                                               ; preds = %31, %0
  ret i32 0, !dbg !162
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !163 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !170, metadata !DIExpression()), !dbg !171
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %7, metadata !176, metadata !DIExpression()), !dbg !178
  %8 = load i8*, i8** %4, align 8, !dbg !179
  store i8* %8, i8** %7, align 8, !dbg !178
  br label %9, !dbg !180

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !181
  %11 = add i64 %10, -1, !dbg !181
  store i64 %11, i64* %6, align 8, !dbg !181
  %12 = icmp ugt i64 %10, 0, !dbg !182
  br i1 %12, label %13, label %18, !dbg !180

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !183
  %15 = trunc i32 %14 to i8, !dbg !183
  %16 = load i8*, i8** %7, align 8, !dbg !184
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !184
  store i8* %17, i8** %7, align 8, !dbg !184
  store i8 %15, i8* %16, align 1, !dbg !185
  br label %9, !dbg !180, !llvm.loop !186

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !188
  ret i8* %19, !dbg !189
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/369_xpath.c_863_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "feabea3911bc894d81cc6a0b98d7d92f")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlPointerList", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlPointerList", file: !1, line: 14, size: 128, elements: !7)
!7 = !{!8, !10, !12}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !6, file: !1, line: 15, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !6, file: !1, line: 16, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !6, file: !1, line: 17, baseType: !11, size: 32, offset: 96)
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
!23 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 21, type: !24, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !3, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{}
!30 = !DILocalVariable(name: "ctxt", arg: 1, scope: !23, file: !1, line: 21, type: !3)
!31 = !DILocation(line: 21, column: 30, scope: !23)
!32 = !DILocalVariable(name: "msg", arg: 2, scope: !23, file: !1, line: 21, type: !26)
!33 = !DILocation(line: 21, column: 48, scope: !23)
!34 = !DILocation(line: 23, column: 1, scope: !23)
!35 = distinct !DISubprogram(name: "xmlPointerListAddSize", scope: !1, file: !1, line: 26, type: !36, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4, !3, !11}
!38 = !DILocalVariable(name: "list", arg: 1, scope: !35, file: !1, line: 26, type: !4)
!39 = !DILocation(line: 26, column: 44, scope: !35)
!40 = !DILocalVariable(name: "item", arg: 2, scope: !35, file: !1, line: 26, type: !3)
!41 = !DILocation(line: 26, column: 56, scope: !35)
!42 = !DILocalVariable(name: "size", arg: 3, scope: !35, file: !1, line: 26, type: !11)
!43 = !DILocation(line: 26, column: 66, scope: !35)
!44 = !DILocation(line: 27, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 27, column: 9)
!46 = !DILocation(line: 27, column: 14, scope: !45)
!47 = !DILocation(line: 27, column: 9, scope: !35)
!48 = !DILocation(line: 27, column: 23, scope: !45)
!49 = !DILocation(line: 30, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !35, file: !1, line: 30, column: 9)
!51 = !DILocation(line: 30, column: 15, scope: !50)
!52 = !DILocation(line: 30, column: 21, scope: !50)
!53 = !DILocation(line: 30, column: 9, scope: !35)
!54 = !DILocation(line: 31, column: 30, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 30)
!56 = !DILocation(line: 31, column: 35, scope: !55)
!57 = !DILocation(line: 31, column: 23, scope: !55)
!58 = !DILocation(line: 31, column: 9, scope: !55)
!59 = !DILocation(line: 31, column: 15, scope: !55)
!60 = !DILocation(line: 31, column: 21, scope: !55)
!61 = !DILocation(line: 32, column: 5, scope: !55)
!62 = !DILocation(line: 33, column: 31, scope: !63)
!63 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 12)
!64 = !DILocation(line: 33, column: 37, scope: !63)
!65 = !DILocation(line: 33, column: 44, scope: !63)
!66 = !DILocation(line: 33, column: 49, scope: !63)
!67 = !DILocation(line: 33, column: 23, scope: !63)
!68 = !DILocation(line: 33, column: 9, scope: !63)
!69 = !DILocation(line: 33, column: 15, scope: !63)
!70 = !DILocation(line: 33, column: 21, scope: !63)
!71 = !DILocation(line: 36, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !35, file: !1, line: 36, column: 9)
!73 = !DILocation(line: 36, column: 15, scope: !72)
!74 = !DILocation(line: 36, column: 21, scope: !72)
!75 = !DILocation(line: 36, column: 9, scope: !35)
!76 = !DILocation(line: 37, column: 22, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 30)
!78 = !DILocation(line: 37, column: 9, scope: !77)
!79 = !DILocation(line: 37, column: 15, scope: !77)
!80 = !DILocation(line: 37, column: 20, scope: !77)
!81 = !DILocation(line: 38, column: 5, scope: !77)
!82 = !DILocation(line: 39, column: 1, scope: !35)
!83 = distinct !DISubprogram(name: "xmlPointerListCreate", scope: !1, file: !1, line: 42, type: !84, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!84 = !DISubroutineType(types: !85)
!85 = !{!4, !11}
!86 = !DILocalVariable(name: "initialSize", arg: 1, scope: !83, file: !1, line: 42, type: !11)
!87 = !DILocation(line: 42, column: 42, scope: !83)
!88 = !DILocalVariable(name: "ret", scope: !83, file: !1, line: 43, type: !4)
!89 = !DILocation(line: 43, column: 21, scope: !83)
!90 = !DILocation(line: 45, column: 29, scope: !83)
!91 = !DILocation(line: 45, column: 11, scope: !83)
!92 = !DILocation(line: 45, column: 9, scope: !83)
!93 = !DILocation(line: 46, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !83, file: !1, line: 46, column: 9)
!95 = !DILocation(line: 46, column: 13, scope: !94)
!96 = !DILocation(line: 46, column: 9, scope: !83)
!97 = !DILocation(line: 47, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 46, column: 22)
!99 = !DILocation(line: 49, column: 9, scope: !98)
!100 = !DILocation(line: 53, column: 12, scope: !83)
!101 = !DILocation(line: 53, column: 5, scope: !83)
!102 = !DILocation(line: 55, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !83, file: !1, line: 55, column: 9)
!104 = !DILocation(line: 55, column: 21, scope: !103)
!105 = !DILocation(line: 55, column: 9, scope: !83)
!106 = !DILocation(line: 56, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 55, column: 26)
!108 = !DILocation(line: 56, column: 42, scope: !107)
!109 = !DILocation(line: 56, column: 9, scope: !107)
!110 = !DILocation(line: 57, column: 9, scope: !107)
!111 = !DILocation(line: 57, column: 14, scope: !107)
!112 = !DILocation(line: 57, column: 21, scope: !107)
!113 = !DILocation(line: 58, column: 5, scope: !107)
!114 = !DILocation(line: 59, column: 13, scope: !83)
!115 = !DILocation(line: 59, column: 5, scope: !83)
!116 = !DILocation(line: 60, column: 1, scope: !83)
!117 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 63, type: !118, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !122)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!123 = !DILocalVariable(name: "node1", arg: 1, scope: !117, file: !1, line: 63, type: !120)
!124 = !DILocation(line: 63, column: 35, scope: !117)
!125 = !DILocalVariable(name: "node2", arg: 2, scope: !117, file: !1, line: 63, type: !120)
!126 = !DILocation(line: 63, column: 51, scope: !117)
!127 = !DILocation(line: 66, column: 1, scope: !117)
!128 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !129, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!129 = !DISubroutineType(types: !130)
!130 = !{!11}
!131 = !DILocalVariable(name: "initialSize", scope: !128, file: !1, line: 69, type: !11)
!132 = !DILocation(line: 69, column: 9, scope: !128)
!133 = !DILocation(line: 72, column: 24, scope: !128)
!134 = !DILocation(line: 72, column: 5, scope: !128)
!135 = !DILocation(line: 75, column: 17, scope: !128)
!136 = !DILocation(line: 75, column: 29, scope: !128)
!137 = !DILocation(line: 75, column: 5, scope: !128)
!138 = !DILocalVariable(name: "list", scope: !128, file: !1, line: 78, type: !4)
!139 = !DILocation(line: 78, column: 21, scope: !128)
!140 = !DILocation(line: 78, column: 49, scope: !128)
!141 = !DILocation(line: 78, column: 28, scope: !128)
!142 = !DILocation(line: 91, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !128, file: !1, line: 91, column: 9)
!144 = !DILocation(line: 91, column: 14, scope: !143)
!145 = !DILocation(line: 91, column: 9, scope: !128)
!146 = !DILocation(line: 96, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 91, column: 23)
!148 = !DILocation(line: 99, column: 9, scope: !147)
!149 = !DILocation(line: 102, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 102, column: 13)
!151 = !DILocation(line: 102, column: 19, scope: !150)
!152 = !DILocation(line: 102, column: 25, scope: !150)
!153 = !DILocation(line: 102, column: 13, scope: !147)
!154 = !DILocation(line: 103, column: 18, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 102, column: 34)
!156 = !DILocation(line: 103, column: 24, scope: !155)
!157 = !DILocation(line: 103, column: 13, scope: !155)
!158 = !DILocation(line: 104, column: 9, scope: !155)
!159 = !DILocation(line: 105, column: 14, scope: !147)
!160 = !DILocation(line: 105, column: 9, scope: !147)
!161 = !DILocation(line: 106, column: 5, scope: !147)
!162 = !DILocation(line: 108, column: 5, scope: !128)
!163 = distinct !DISubprogram(name: "memset", scope: !164, file: !164, line: 12, type: !165, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!164 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!165 = !DISubroutineType(types: !166)
!166 = !{!3, !3, !11, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 46, baseType: !169)
!168 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!169 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DILocalVariable(name: "dst", arg: 1, scope: !163, file: !164, line: 12, type: !3)
!171 = !DILocation(line: 12, column: 20, scope: !163)
!172 = !DILocalVariable(name: "s", arg: 2, scope: !163, file: !164, line: 12, type: !11)
!173 = !DILocation(line: 12, column: 29, scope: !163)
!174 = !DILocalVariable(name: "count", arg: 3, scope: !163, file: !164, line: 12, type: !167)
!175 = !DILocation(line: 12, column: 39, scope: !163)
!176 = !DILocalVariable(name: "a", scope: !163, file: !164, line: 13, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!178 = !DILocation(line: 13, column: 9, scope: !163)
!179 = !DILocation(line: 13, column: 13, scope: !163)
!180 = !DILocation(line: 14, column: 3, scope: !163)
!181 = !DILocation(line: 14, column: 15, scope: !163)
!182 = !DILocation(line: 14, column: 18, scope: !163)
!183 = !DILocation(line: 15, column: 12, scope: !163)
!184 = !DILocation(line: 15, column: 7, scope: !163)
!185 = !DILocation(line: 15, column: 10, scope: !163)
!186 = distinct !{!186, !180, !183, !187}
!187 = !{!"llvm.loop.mustprogress"}
!188 = !DILocation(line: 16, column: 10, scope: !163)
!189 = !DILocation(line: 16, column: 3, scope: !163)
