; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/302_xmlschemas.c_24389_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/302_xmlschemas.c_24389_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValidCtxt = type { i32, %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo* }
%struct._xmlSchemaNodeInfo = type { i32, i32, i8* }

@.str = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"elemInfo_ptr\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/302_xmlschemas.c_24389_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"xmlSchemaGetFreshElemInfo\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"elem info has not been cleared\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VERROR_INT(i8* noundef %0, i8* noundef %1) #0 !dbg !26 {
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
define dso_local i32 @main() #0 !dbg !35 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidCtxt, align 8
  %3 = alloca %struct._xmlSchemaNodeInfo, align 8
  %4 = alloca [10 x %struct._xmlSchemaNodeInfo*], align 16
  %5 = alloca %struct._xmlSchemaNodeInfo*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt* %2, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNodeInfo* %3, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [10 x %struct._xmlSchemaNodeInfo*]* %4, metadata !49, metadata !DIExpression()), !dbg !53
  %6 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !54
  %7 = bitcast i32* %6 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %8 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !57
  %9 = load i32, i32* %8, align 8, !dbg !57
  %10 = icmp sge i32 %9, 0, !dbg !58
  br i1 %10, label %11, label %15, !dbg !59

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !60
  %13 = load i32, i32* %12, align 8, !dbg !60
  %14 = icmp slt i32 %13, 10, !dbg !61
  br label %15

15:                                               ; preds = %11, %0
  %16 = phi i1 [ false, %0 ], [ %14, %11 ], !dbg !62
  %17 = zext i1 %16 to i32, !dbg !59
  %18 = sext i32 %17 to i64, !dbg !63
  call void @klee_assume(i64 noundef %18), !dbg !64
  %19 = getelementptr inbounds [10 x %struct._xmlSchemaNodeInfo*], [10 x %struct._xmlSchemaNodeInfo*]* %4, i64 0, i64 0, !dbg !65
  %20 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !66
  store %struct._xmlSchemaNodeInfo** %19, %struct._xmlSchemaNodeInfo*** %20, align 8, !dbg !67
  %21 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !68
  %22 = load i32, i32* %21, align 8, !dbg !68
  %23 = sext i32 %22 to i64, !dbg !69
  %24 = getelementptr inbounds [10 x %struct._xmlSchemaNodeInfo*], [10 x %struct._xmlSchemaNodeInfo*]* %4, i64 0, i64 %23, !dbg !69
  %25 = bitcast %struct._xmlSchemaNodeInfo** %24 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)), !dbg !71
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNodeInfo** %5, metadata !72, metadata !DIExpression()), !dbg !73
  %26 = call %struct._xmlSchemaNodeInfo* @xmlSchemaGetFreshElemInfo(%struct._xmlSchemaValidCtxt* noundef %2), !dbg !74
  store %struct._xmlSchemaNodeInfo* %26, %struct._xmlSchemaNodeInfo** %5, align 8, !dbg !73
  %27 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %5, align 8, !dbg !75
  %28 = icmp ne %struct._xmlSchemaNodeInfo* %27, null, !dbg !77
  br i1 %28, label %29, label %31, !dbg !78

29:                                               ; preds = %15
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.3, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !79
  br label %31, !dbg !81

31:                                               ; preds = %29, %15
  ret i32 0, !dbg !82
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaNodeInfo* @xmlSchemaGetFreshElemInfo(%struct._xmlSchemaValidCtxt* noundef %0) #0 !dbg !83 {
  %2 = alloca %struct._xmlSchemaNodeInfo*, align 8
  %3 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %4 = alloca %struct._xmlSchemaNodeInfo*, align 8
  store %struct._xmlSchemaValidCtxt* %0, %struct._xmlSchemaValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %3, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaNodeInfo** %4, metadata !89, metadata !DIExpression()), !dbg !90
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !91
  %6 = bitcast i8* %5 to %struct._xmlSchemaNodeInfo*, !dbg !92
  store %struct._xmlSchemaNodeInfo* %6, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !93
  %7 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !94
  %8 = icmp ne %struct._xmlSchemaNodeInfo* %7, null, !dbg !94
  br i1 %8, label %10, label %9, !dbg !96

9:                                                ; preds = %1
  store %struct._xmlSchemaNodeInfo* null, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !97
  br label %59, !dbg !97

10:                                               ; preds = %1
  %11 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !99
  %12 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %11, i32 0, i32 1, !dbg !101
  %13 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %12, align 8, !dbg !101
  %14 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !102
  %15 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %14, i32 0, i32 0, !dbg !103
  %16 = load i32, i32* %15, align 8, !dbg !103
  %17 = sext i32 %16 to i64, !dbg !99
  %18 = getelementptr inbounds %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %13, i64 %17, !dbg !99
  %19 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %18, align 8, !dbg !99
  %20 = icmp eq %struct._xmlSchemaNodeInfo* %19, null, !dbg !104
  br i1 %20, label %21, label %31, !dbg !105

21:                                               ; preds = %10
  %22 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !106
  %23 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !108
  %24 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %23, i32 0, i32 1, !dbg !109
  %25 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %24, align 8, !dbg !109
  %26 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !110
  %27 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %26, i32 0, i32 0, !dbg !111
  %28 = load i32, i32* %27, align 8, !dbg !111
  %29 = sext i32 %28 to i64, !dbg !108
  %30 = getelementptr inbounds %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %25, i64 %29, !dbg !108
  store %struct._xmlSchemaNodeInfo* %22, %struct._xmlSchemaNodeInfo** %30, align 8, !dbg !112
  br label %47, !dbg !113

31:                                               ; preds = %10
  %32 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !114
  %33 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %32, i32 0, i32 1, !dbg !116
  %34 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %33, align 8, !dbg !116
  %35 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !117
  %36 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %35, i32 0, i32 0, !dbg !118
  %37 = load i32, i32* %36, align 8, !dbg !118
  %38 = sext i32 %37 to i64, !dbg !114
  %39 = getelementptr inbounds %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %34, i64 %38, !dbg !114
  %40 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %39, align 8, !dbg !114
  store %struct._xmlSchemaNodeInfo* %40, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !119
  %41 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !120
  %42 = getelementptr inbounds %struct._xmlSchemaNodeInfo, %struct._xmlSchemaNodeInfo* %41, i32 0, i32 2, !dbg !122
  %43 = load i8*, i8** %42, align 8, !dbg !122
  %44 = icmp ne i8* %43, null, !dbg !123
  br i1 %44, label %45, label %46, !dbg !124

45:                                               ; preds = %31
  call void @VERROR_INT(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0)), !dbg !125
  store %struct._xmlSchemaNodeInfo* null, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !127
  br label %59, !dbg !127

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %21
  %48 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !128
  %49 = bitcast %struct._xmlSchemaNodeInfo* %48 to i8*, !dbg !129
  %50 = call i8* @memset(i8* %49, i32 0, i64 16), !dbg !129
  %51 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !130
  %52 = getelementptr inbounds %struct._xmlSchemaNodeInfo, %struct._xmlSchemaNodeInfo* %51, i32 0, i32 0, !dbg !131
  store i32 1, i32* %52, align 8, !dbg !132
  %53 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !133
  %54 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %53, i32 0, i32 0, !dbg !134
  %55 = load i32, i32* %54, align 8, !dbg !134
  %56 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !135
  %57 = getelementptr inbounds %struct._xmlSchemaNodeInfo, %struct._xmlSchemaNodeInfo* %56, i32 0, i32 1, !dbg !136
  store i32 %55, i32* %57, align 4, !dbg !137
  %58 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %4, align 8, !dbg !138
  store %struct._xmlSchemaNodeInfo* %58, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !139
  br label %59, !dbg !139

59:                                               ; preds = %47, %45, %9
  %60 = load %struct._xmlSchemaNodeInfo*, %struct._xmlSchemaNodeInfo** %2, align 8, !dbg !140
  ret %struct._xmlSchemaNodeInfo* %60, !dbg !140
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !141 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %7, metadata !154, metadata !DIExpression()), !dbg !156
  %8 = load i8*, i8** %4, align 8, !dbg !157
  store i8* %8, i8** %7, align 8, !dbg !156
  br label %9, !dbg !158

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !159
  %11 = add i64 %10, -1, !dbg !159
  store i64 %11, i64* %6, align 8, !dbg !159
  %12 = icmp ugt i64 %10, 0, !dbg !160
  br i1 %12, label %13, label %18, !dbg !158

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !161
  %15 = trunc i32 %14 to i8, !dbg !161
  %16 = load i8*, i8** %7, align 8, !dbg !162
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !162
  store i8* %17, i8** %7, align 8, !dbg !162
  store i8 %15, i8* %16, align 1, !dbg !163
  br label %9, !dbg !158, !llvm.loop !164

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !166
  ret i8* %19, !dbg !167
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/302_xmlschemas.c_24389_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ba1756f97563aeb4506385ca1c7cd3bf")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfoPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfo", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaNodeInfo", file: !1, line: 13, size: 128, elements: !8)
!8 = !{!9, !11, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "nodeType", scope: !7, file: !1, line: 14, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !7, file: !1, line: 15, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "localName", scope: !7, file: !1, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!26 = distinct !DISubprogram(name: "VERROR_INT", scope: !1, file: !1, line: 33, type: !27, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !13, !13}
!29 = !{}
!30 = !DILocalVariable(name: "func", arg: 1, scope: !26, file: !1, line: 33, type: !13)
!31 = !DILocation(line: 33, column: 29, scope: !26)
!32 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !1, line: 33, type: !13)
!33 = !DILocation(line: 33, column: 47, scope: !26)
!34 = !DILocation(line: 35, column: 1, scope: !26)
!35 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !36, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{!10}
!38 = !DILocalVariable(name: "vctxt", scope: !35, file: !1, line: 39, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !1, line: 20, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !1, line: 22, size: 192, elements: !41)
!41 = !{!42, !43, !45}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !40, file: !1, line: 23, baseType: !10, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "elemInfos", scope: !40, file: !1, line: 24, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "inode", scope: !40, file: !1, line: 25, baseType: !4, size: 64, offset: 128)
!46 = !DILocation(line: 39, column: 24, scope: !35)
!47 = !DILocalVariable(name: "info_storage", scope: !35, file: !1, line: 40, type: !6)
!48 = !DILocation(line: 40, column: 23, scope: !35)
!49 = !DILocalVariable(name: "elemInfos_array", scope: !35, file: !1, line: 41, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 10)
!53 = !DILocation(line: 41, column: 26, scope: !35)
!54 = !DILocation(line: 44, column: 31, scope: !35)
!55 = !DILocation(line: 44, column: 24, scope: !35)
!56 = !DILocation(line: 44, column: 5, scope: !35)
!57 = !DILocation(line: 46, column: 23, scope: !35)
!58 = !DILocation(line: 46, column: 29, scope: !35)
!59 = !DILocation(line: 46, column: 34, scope: !35)
!60 = !DILocation(line: 46, column: 43, scope: !35)
!61 = !DILocation(line: 46, column: 49, scope: !35)
!62 = !DILocation(line: 0, scope: !35)
!63 = !DILocation(line: 46, column: 17, scope: !35)
!64 = !DILocation(line: 46, column: 5, scope: !35)
!65 = !DILocation(line: 49, column: 23, scope: !35)
!66 = !DILocation(line: 49, column: 11, scope: !35)
!67 = !DILocation(line: 49, column: 21, scope: !35)
!68 = !DILocation(line: 52, column: 47, scope: !35)
!69 = !DILocation(line: 52, column: 25, scope: !35)
!70 = !DILocation(line: 52, column: 24, scope: !35)
!71 = !DILocation(line: 52, column: 5, scope: !35)
!72 = !DILocalVariable(name: "result", scope: !35, file: !1, line: 55, type: !4)
!73 = !DILocation(line: 55, column: 26, scope: !35)
!74 = !DILocation(line: 55, column: 35, scope: !35)
!75 = !DILocation(line: 69, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !35, file: !1, line: 69, column: 9)
!77 = !DILocation(line: 69, column: 16, scope: !76)
!78 = !DILocation(line: 69, column: 9, scope: !35)
!79 = !DILocation(line: 75, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 69, column: 25)
!81 = !DILocation(line: 76, column: 5, scope: !80)
!82 = !DILocation(line: 78, column: 5, scope: !35)
!83 = distinct !DISubprogram(name: "xmlSchemaGetFreshElemInfo", scope: !1, file: !1, line: 82, type: !84, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!84 = !DISubroutineType(types: !85)
!85 = !{!4, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!87 = !DILocalVariable(name: "vctxt", arg: 1, scope: !83, file: !1, line: 82, type: !86)
!88 = !DILocation(line: 82, column: 68, scope: !83)
!89 = !DILocalVariable(name: "info", scope: !83, file: !1, line: 83, type: !4)
!90 = !DILocation(line: 83, column: 26, scope: !83)
!91 = !DILocation(line: 86, column: 34, scope: !83)
!92 = !DILocation(line: 86, column: 12, scope: !83)
!93 = !DILocation(line: 86, column: 10, scope: !83)
!94 = !DILocation(line: 87, column: 10, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !1, line: 87, column: 9)
!96 = !DILocation(line: 87, column: 9, scope: !83)
!97 = !DILocation(line: 88, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 87, column: 16)
!99 = !DILocation(line: 92, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !83, file: !1, line: 92, column: 9)
!101 = !DILocation(line: 92, column: 16, scope: !100)
!102 = !DILocation(line: 92, column: 26, scope: !100)
!103 = !DILocation(line: 92, column: 33, scope: !100)
!104 = !DILocation(line: 92, column: 40, scope: !100)
!105 = !DILocation(line: 92, column: 9, scope: !83)
!106 = !DILocation(line: 93, column: 42, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !1, line: 92, column: 49)
!108 = !DILocation(line: 93, column: 9, scope: !107)
!109 = !DILocation(line: 93, column: 16, scope: !107)
!110 = !DILocation(line: 93, column: 26, scope: !107)
!111 = !DILocation(line: 93, column: 33, scope: !107)
!112 = !DILocation(line: 93, column: 40, scope: !107)
!113 = !DILocation(line: 94, column: 5, scope: !107)
!114 = !DILocation(line: 95, column: 16, scope: !115)
!115 = distinct !DILexicalBlock(scope: !100, file: !1, line: 94, column: 12)
!116 = !DILocation(line: 95, column: 23, scope: !115)
!117 = !DILocation(line: 95, column: 33, scope: !115)
!118 = !DILocation(line: 95, column: 40, scope: !115)
!119 = !DILocation(line: 95, column: 14, scope: !115)
!120 = !DILocation(line: 96, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 96, column: 13)
!122 = !DILocation(line: 96, column: 19, scope: !121)
!123 = !DILocation(line: 96, column: 29, scope: !121)
!124 = !DILocation(line: 96, column: 13, scope: !115)
!125 = !DILocation(line: 97, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 96, column: 38)
!127 = !DILocation(line: 99, column: 13, scope: !126)
!128 = !DILocation(line: 104, column: 12, scope: !83)
!129 = !DILocation(line: 104, column: 5, scope: !83)
!130 = !DILocation(line: 106, column: 5, scope: !83)
!131 = !DILocation(line: 106, column: 11, scope: !83)
!132 = !DILocation(line: 106, column: 20, scope: !83)
!133 = !DILocation(line: 107, column: 19, scope: !83)
!134 = !DILocation(line: 107, column: 26, scope: !83)
!135 = !DILocation(line: 107, column: 5, scope: !83)
!136 = !DILocation(line: 107, column: 11, scope: !83)
!137 = !DILocation(line: 107, column: 17, scope: !83)
!138 = !DILocation(line: 109, column: 12, scope: !83)
!139 = !DILocation(line: 109, column: 5, scope: !83)
!140 = !DILocation(line: 110, column: 1, scope: !83)
!141 = distinct !DISubprogram(name: "memset", scope: !142, file: !142, line: 12, type: !143, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !29)
!142 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!143 = !DISubroutineType(types: !144)
!144 = !{!3, !3, !10, !145}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DILocalVariable(name: "dst", arg: 1, scope: !141, file: !142, line: 12, type: !3)
!149 = !DILocation(line: 12, column: 20, scope: !141)
!150 = !DILocalVariable(name: "s", arg: 2, scope: !141, file: !142, line: 12, type: !10)
!151 = !DILocation(line: 12, column: 29, scope: !141)
!152 = !DILocalVariable(name: "count", arg: 3, scope: !141, file: !142, line: 12, type: !145)
!153 = !DILocation(line: 12, column: 39, scope: !141)
!154 = !DILocalVariable(name: "a", scope: !141, file: !142, line: 13, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!156 = !DILocation(line: 13, column: 9, scope: !141)
!157 = !DILocation(line: 13, column: 13, scope: !141)
!158 = !DILocation(line: 14, column: 3, scope: !141)
!159 = !DILocation(line: 14, column: 15, scope: !141)
!160 = !DILocation(line: 14, column: 18, scope: !141)
!161 = !DILocation(line: 15, column: 12, scope: !141)
!162 = !DILocation(line: 15, column: 7, scope: !141)
!163 = !DILocation(line: 15, column: 10, scope: !141)
!164 = distinct !{!164, !158, !161, !165}
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 16, column: 10, scope: !141)
!167 = !DILocation(line: 16, column: 3, scope: !141)
