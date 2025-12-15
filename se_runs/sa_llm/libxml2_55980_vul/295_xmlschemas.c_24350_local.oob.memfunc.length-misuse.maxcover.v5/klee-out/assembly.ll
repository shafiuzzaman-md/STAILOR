; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/295_xmlschemas.c_24350_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/295_xmlschemas.c_24350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaNodeInfo = type opaque
%struct._xmlSchemaValidCtxt = type { %struct._xmlSchemaNodeInfo**, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"allocating the element info array\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_55980_vul/295_xmlschemas.c_24350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [61 x i8] c"xmlSchemaNodeInfoPtr *target_function(xmlSchemaValidCtxtPtr)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vctxt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !19 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i64, i64* %2, align 8, !dbg !28
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !29
  ret i8* %4, !dbg !30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !31 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load i8*, i8** %3, align 8, !dbg !38
  %6 = load i64, i64* %4, align 8, !dbg !39
  %7 = call i8* @realloc(i8* noundef %5, i64 noundef %6) #7, !dbg !40
  ret i8* %7, !dbg !41
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaVErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !42 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !52, metadata !DIExpression()), !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaNodeInfo** @target_function(%struct._xmlSchemaValidCtxt* noundef %0) #0 !dbg !55 {
  %2 = alloca %struct._xmlSchemaNodeInfo**, align 8
  %3 = alloca %struct._xmlSchemaValidCtxt*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlSchemaValidCtxt* %0, %struct._xmlSchemaValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt** %3, metadata !67, metadata !DIExpression()), !dbg !68
  %5 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !69
  %6 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %5, i32 0, i32 0, !dbg !71
  %7 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %6, align 8, !dbg !71
  %8 = icmp eq %struct._xmlSchemaNodeInfo** %7, null, !dbg !72
  br i1 %8, label %9, label %30, !dbg !73

9:                                                ; preds = %1
  %10 = call i8* @xmlMalloc(i64 noundef 80), !dbg !74
  %11 = bitcast i8* %10 to %struct._xmlSchemaNodeInfo**, !dbg !76
  %12 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !77
  %13 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %12, i32 0, i32 0, !dbg !78
  store %struct._xmlSchemaNodeInfo** %11, %struct._xmlSchemaNodeInfo*** %13, align 8, !dbg !79
  %14 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !80
  %15 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %14, i32 0, i32 0, !dbg !82
  %16 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %15, align 8, !dbg !82
  %17 = icmp eq %struct._xmlSchemaNodeInfo** %16, null, !dbg !83
  br i1 %17, label %18, label %21, !dbg !84

18:                                               ; preds = %9
  %19 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !85
  %20 = bitcast %struct._xmlSchemaValidCtxt* %19 to i8*, !dbg !85
  call void @xmlSchemaVErrMemory(i8* noundef %20, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !87
  store %struct._xmlSchemaNodeInfo** null, %struct._xmlSchemaNodeInfo*** %2, align 8, !dbg !88
  br label %64, !dbg !88

21:                                               ; preds = %9
  %22 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !89
  %23 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %22, i32 0, i32 0, !dbg !90
  %24 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %23, align 8, !dbg !90
  %25 = bitcast %struct._xmlSchemaNodeInfo** %24 to i8*, !dbg !91
  %26 = call i8* @memset(i8* %25, i32 0, i64 80), !dbg !91
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !92
  %28 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !93
  %29 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %28, i32 0, i32 1, !dbg !94
  store i32 10, i32* %29, align 8, !dbg !95
  br label %60, !dbg !96

30:                                               ; preds = %1
  %31 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !97
  %32 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %31, i32 0, i32 1, !dbg !99
  %33 = load i32, i32* %32, align 8, !dbg !99
  %34 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !100
  %35 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %34, i32 0, i32 2, !dbg !101
  %36 = load i32, i32* %35, align 4, !dbg !101
  %37 = icmp sle i32 %33, %36, !dbg !102
  br i1 %37, label %38, label %59, !dbg !103

38:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i32* %4, metadata !104, metadata !DIExpression()), !dbg !106
  %39 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !107
  %40 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %39, i32 0, i32 1, !dbg !108
  %41 = load i32, i32* %40, align 8, !dbg !108
  store i32 %41, i32* %4, align 4, !dbg !106
  %42 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !109
  %43 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %42, i32 0, i32 1, !dbg !110
  %44 = load i32, i32* %43, align 8, !dbg !111
  %45 = mul nsw i32 %44, 2, !dbg !111
  store i32 %45, i32* %43, align 8, !dbg !111
  %46 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !112
  %47 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %46, i32 0, i32 0, !dbg !113
  %48 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %47, align 8, !dbg !113
  %49 = bitcast %struct._xmlSchemaNodeInfo** %48 to i8*, !dbg !112
  %50 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !114
  %51 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %50, i32 0, i32 1, !dbg !115
  %52 = load i32, i32* %51, align 8, !dbg !115
  %53 = sext i32 %52 to i64, !dbg !114
  %54 = mul i64 %53, 8, !dbg !116
  %55 = call i8* @xmlRealloc(i8* noundef %49, i64 noundef %54), !dbg !117
  %56 = bitcast i8* %55 to %struct._xmlSchemaNodeInfo**, !dbg !118
  %57 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !119
  %58 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %57, i32 0, i32 0, !dbg !120
  store %struct._xmlSchemaNodeInfo** %56, %struct._xmlSchemaNodeInfo*** %58, align 8, !dbg !121
  br label %59, !dbg !122

59:                                               ; preds = %38, %30
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct._xmlSchemaValidCtxt*, %struct._xmlSchemaValidCtxt** %3, align 8, !dbg !123
  %62 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %61, i32 0, i32 0, !dbg !124
  %63 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %62, align 8, !dbg !124
  store %struct._xmlSchemaNodeInfo** %63, %struct._xmlSchemaNodeInfo*** %2, align 8, !dbg !125
  br label %64, !dbg !125

64:                                               ; preds = %60, %18
  %65 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %2, align 8, !dbg !126
  ret %struct._xmlSchemaNodeInfo** %65, !dbg !126
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValidCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValidCtxt* %2, metadata !130, metadata !DIExpression()), !dbg !131
  %3 = bitcast %struct._xmlSchemaValidCtxt* %2 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !133
  %4 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 2, !dbg !134
  %5 = load i32, i32* %4, align 4, !dbg !134
  %6 = icmp sge i32 %5, 0, !dbg !135
  %7 = zext i1 %6 to i32, !dbg !135
  %8 = sext i32 %7 to i64, !dbg !136
  call void @klee_assume(i64 noundef %8), !dbg !137
  %9 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 2, !dbg !138
  %10 = load i32, i32* %9, align 4, !dbg !138
  %11 = icmp slt i32 %10, 1000, !dbg !139
  %12 = zext i1 %11 to i32, !dbg !139
  %13 = sext i32 %12 to i64, !dbg !140
  call void @klee_assume(i64 noundef %13), !dbg !141
  %14 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !142
  %15 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %14, align 8, !dbg !142
  %16 = icmp ne %struct._xmlSchemaNodeInfo** %15, null, !dbg !144
  br i1 %16, label %17, label %28, !dbg !145

17:                                               ; preds = %0
  %18 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !146
  %19 = load i32, i32* %18, align 8, !dbg !146
  %20 = icmp sge i32 %19, 0, !dbg !148
  %21 = zext i1 %20 to i32, !dbg !148
  %22 = sext i32 %21 to i64, !dbg !149
  call void @klee_assume(i64 noundef %22), !dbg !150
  %23 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !151
  %24 = load i32, i32* %23, align 8, !dbg !151
  %25 = icmp slt i32 %24, 1000, !dbg !152
  %26 = zext i1 %25 to i32, !dbg !152
  %27 = sext i32 %26 to i64, !dbg !153
  call void @klee_assume(i64 noundef %27), !dbg !154
  br label %28, !dbg !155

28:                                               ; preds = %17, %0
  %29 = call %struct._xmlSchemaNodeInfo** @target_function(%struct._xmlSchemaValidCtxt* noundef %2), !dbg !156
  %30 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !157
  %31 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %30, align 8, !dbg !157
  %32 = icmp ne %struct._xmlSchemaNodeInfo** %31, null, !dbg !159
  br i1 %32, label %33, label %37, !dbg !160

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct._xmlSchemaValidCtxt, %struct._xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !161
  %35 = load %struct._xmlSchemaNodeInfo**, %struct._xmlSchemaNodeInfo*** %34, align 8, !dbg !161
  %36 = bitcast %struct._xmlSchemaNodeInfo** %35 to i8*, !dbg !163
  call void @free(i8* noundef %36) #7, !dbg !164
  br label %37, !dbg !165

37:                                               ; preds = %33, %28
  ret i32 0, !dbg !166
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !167 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !171, metadata !DIExpression()), !dbg !172
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i8** %7, metadata !177, metadata !DIExpression()), !dbg !179
  %8 = load i8*, i8** %4, align 8, !dbg !180
  store i8* %8, i8** %7, align 8, !dbg !179
  br label %9, !dbg !181

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !182
  %11 = add i64 %10, -1, !dbg !182
  store i64 %11, i64* %6, align 8, !dbg !182
  %12 = icmp ugt i64 %10, 0, !dbg !183
  br i1 %12, label %13, label %18, !dbg !181

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !184
  %15 = trunc i32 %14 to i8, !dbg !184
  %16 = load i8*, i8** %7, align 8, !dbg !185
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !185
  store i8* %17, i8** %7, align 8, !dbg !185
  store i8 %15, i8* %16, align 1, !dbg !186
  br label %9, !dbg !181, !llvm.loop !187

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !189
  ret i8* %19, !dbg !190
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/295_xmlschemas.c_24350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d3818e1d06204800f1ea3a688e40a4a8")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfoPtr", file: !1, line: 13, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaNodeInfo", file: !1, line: 12, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaNodeInfo", file: !1, line: 12, flags: DIFlagFwdDecl)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !20, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!3, !22}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !{}
!26 = !DILocalVariable(name: "size", arg: 1, scope: !19, file: !1, line: 22, type: !22)
!27 = !DILocation(line: 22, column: 24, scope: !19)
!28 = !DILocation(line: 23, column: 19, scope: !19)
!29 = !DILocation(line: 23, column: 12, scope: !19)
!30 = !DILocation(line: 23, column: 5, scope: !19)
!31 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 26, type: !32, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!32 = !DISubroutineType(types: !33)
!33 = !{!3, !3, !22}
!34 = !DILocalVariable(name: "ptr", arg: 1, scope: !31, file: !1, line: 26, type: !3)
!35 = !DILocation(line: 26, column: 24, scope: !31)
!36 = !DILocalVariable(name: "size", arg: 2, scope: !31, file: !1, line: 26, type: !22)
!37 = !DILocation(line: 26, column: 36, scope: !31)
!38 = !DILocation(line: 27, column: 20, scope: !31)
!39 = !DILocation(line: 27, column: 25, scope: !31)
!40 = !DILocation(line: 27, column: 12, scope: !31)
!41 = !DILocation(line: 27, column: 5, scope: !31)
!42 = distinct !DISubprogram(name: "xmlSchemaVErrMemory", scope: !1, file: !1, line: 30, type: !43, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !3, !45, !3}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DILocalVariable(name: "vctxt", arg: 1, scope: !42, file: !1, line: 30, type: !3)
!49 = !DILocation(line: 30, column: 32, scope: !42)
!50 = !DILocalVariable(name: "msg", arg: 2, scope: !42, file: !1, line: 30, type: !45)
!51 = !DILocation(line: 30, column: 51, scope: !42)
!52 = !DILocalVariable(name: "node", arg: 3, scope: !42, file: !1, line: 30, type: !3)
!53 = !DILocation(line: 30, column: 62, scope: !42)
!54 = !DILocation(line: 32, column: 1, scope: !42)
!55 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !56, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!56 = !DISubroutineType(types: !57)
!57 = !{!4, !58}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxtPtr", file: !1, line: 11, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !1, line: 10, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValidCtxt", file: !1, line: 15, size: 128, elements: !62)
!62 = !{!63, !64, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "elemInfos", scope: !61, file: !1, line: 16, baseType: !4, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "sizeElemInfos", scope: !61, file: !1, line: 17, baseType: !65, size: 32, offset: 64)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !61, file: !1, line: 18, baseType: !65, size: 32, offset: 96)
!67 = !DILocalVariable(name: "vctxt", arg: 1, scope: !55, file: !1, line: 35, type: !58)
!68 = !DILocation(line: 35, column: 61, scope: !55)
!69 = !DILocation(line: 36, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !55, file: !1, line: 36, column: 9)
!71 = !DILocation(line: 36, column: 16, scope: !70)
!72 = !DILocation(line: 36, column: 26, scope: !70)
!73 = !DILocation(line: 36, column: 9, scope: !55)
!74 = !DILocation(line: 38, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 36, column: 35)
!76 = !DILocation(line: 37, column: 28, scope: !75)
!77 = !DILocation(line: 37, column: 9, scope: !75)
!78 = !DILocation(line: 37, column: 16, scope: !75)
!79 = !DILocation(line: 37, column: 26, scope: !75)
!80 = !DILocation(line: 39, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 39, column: 13)
!82 = !DILocation(line: 39, column: 20, scope: !81)
!83 = !DILocation(line: 39, column: 30, scope: !81)
!84 = !DILocation(line: 39, column: 13, scope: !75)
!85 = !DILocation(line: 40, column: 33, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 39, column: 39)
!87 = !DILocation(line: 40, column: 13, scope: !86)
!88 = !DILocation(line: 42, column: 13, scope: !86)
!89 = !DILocation(line: 45, column: 16, scope: !75)
!90 = !DILocation(line: 45, column: 23, scope: !75)
!91 = !DILocation(line: 45, column: 9, scope: !75)
!92 = !DILocation(line: 49, column: 9, scope: !75)
!93 = !DILocation(line: 50, column: 9, scope: !75)
!94 = !DILocation(line: 50, column: 16, scope: !75)
!95 = !DILocation(line: 50, column: 30, scope: !75)
!96 = !DILocation(line: 51, column: 5, scope: !75)
!97 = !DILocation(line: 51, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !70, file: !1, line: 51, column: 16)
!99 = !DILocation(line: 51, column: 23, scope: !98)
!100 = !DILocation(line: 51, column: 40, scope: !98)
!101 = !DILocation(line: 51, column: 47, scope: !98)
!102 = !DILocation(line: 51, column: 37, scope: !98)
!103 = !DILocation(line: 51, column: 16, scope: !70)
!104 = !DILocalVariable(name: "i", scope: !105, file: !1, line: 52, type: !65)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 51, column: 54)
!106 = !DILocation(line: 52, column: 13, scope: !105)
!107 = !DILocation(line: 52, column: 17, scope: !105)
!108 = !DILocation(line: 52, column: 24, scope: !105)
!109 = !DILocation(line: 53, column: 9, scope: !105)
!110 = !DILocation(line: 53, column: 16, scope: !105)
!111 = !DILocation(line: 53, column: 30, scope: !105)
!112 = !DILocation(line: 55, column: 24, scope: !105)
!113 = !DILocation(line: 55, column: 31, scope: !105)
!114 = !DILocation(line: 55, column: 42, scope: !105)
!115 = !DILocation(line: 55, column: 49, scope: !105)
!116 = !DILocation(line: 55, column: 63, scope: !105)
!117 = !DILocation(line: 55, column: 13, scope: !105)
!118 = !DILocation(line: 54, column: 28, scope: !105)
!119 = !DILocation(line: 54, column: 9, scope: !105)
!120 = !DILocation(line: 54, column: 16, scope: !105)
!121 = !DILocation(line: 54, column: 26, scope: !105)
!122 = !DILocation(line: 57, column: 5, scope: !105)
!123 = !DILocation(line: 58, column: 12, scope: !55)
!124 = !DILocation(line: 58, column: 19, scope: !55)
!125 = !DILocation(line: 58, column: 5, scope: !55)
!126 = !DILocation(line: 59, column: 1, scope: !55)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !128, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!128 = !DISubroutineType(types: !129)
!129 = !{!65}
!130 = !DILocalVariable(name: "vctxt", scope: !127, file: !1, line: 63, type: !60)
!131 = !DILocation(line: 63, column: 24, scope: !127)
!132 = !DILocation(line: 66, column: 24, scope: !127)
!133 = !DILocation(line: 66, column: 5, scope: !127)
!134 = !DILocation(line: 69, column: 23, scope: !127)
!135 = !DILocation(line: 69, column: 29, scope: !127)
!136 = !DILocation(line: 69, column: 17, scope: !127)
!137 = !DILocation(line: 69, column: 5, scope: !127)
!138 = !DILocation(line: 70, column: 23, scope: !127)
!139 = !DILocation(line: 70, column: 29, scope: !127)
!140 = !DILocation(line: 70, column: 17, scope: !127)
!141 = !DILocation(line: 70, column: 5, scope: !127)
!142 = !DILocation(line: 73, column: 15, scope: !143)
!143 = distinct !DILexicalBlock(scope: !127, file: !1, line: 73, column: 9)
!144 = !DILocation(line: 73, column: 25, scope: !143)
!145 = !DILocation(line: 73, column: 9, scope: !127)
!146 = !DILocation(line: 74, column: 27, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 73, column: 34)
!148 = !DILocation(line: 74, column: 41, scope: !147)
!149 = !DILocation(line: 74, column: 21, scope: !147)
!150 = !DILocation(line: 74, column: 9, scope: !147)
!151 = !DILocation(line: 75, column: 27, scope: !147)
!152 = !DILocation(line: 75, column: 41, scope: !147)
!153 = !DILocation(line: 75, column: 21, scope: !147)
!154 = !DILocation(line: 75, column: 9, scope: !147)
!155 = !DILocation(line: 76, column: 5, scope: !147)
!156 = !DILocation(line: 79, column: 5, scope: !127)
!157 = !DILocation(line: 82, column: 15, scope: !158)
!158 = distinct !DILexicalBlock(scope: !127, file: !1, line: 82, column: 9)
!159 = !DILocation(line: 82, column: 25, scope: !158)
!160 = !DILocation(line: 82, column: 9, scope: !127)
!161 = !DILocation(line: 83, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 82, column: 34)
!163 = !DILocation(line: 83, column: 14, scope: !162)
!164 = !DILocation(line: 83, column: 9, scope: !162)
!165 = !DILocation(line: 84, column: 5, scope: !162)
!166 = !DILocation(line: 86, column: 5, scope: !127)
!167 = distinct !DISubprogram(name: "memset", scope: !168, file: !168, line: 12, type: !169, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !25)
!168 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!169 = !DISubroutineType(types: !170)
!170 = !{!3, !3, !65, !22}
!171 = !DILocalVariable(name: "dst", arg: 1, scope: !167, file: !168, line: 12, type: !3)
!172 = !DILocation(line: 12, column: 20, scope: !167)
!173 = !DILocalVariable(name: "s", arg: 2, scope: !167, file: !168, line: 12, type: !65)
!174 = !DILocation(line: 12, column: 29, scope: !167)
!175 = !DILocalVariable(name: "count", arg: 3, scope: !167, file: !168, line: 12, type: !22)
!176 = !DILocation(line: 12, column: 39, scope: !167)
!177 = !DILocalVariable(name: "a", scope: !167, file: !168, line: 13, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!179 = !DILocation(line: 13, column: 9, scope: !167)
!180 = !DILocation(line: 13, column: 13, scope: !167)
!181 = !DILocation(line: 14, column: 3, scope: !167)
!182 = !DILocation(line: 14, column: 15, scope: !167)
!183 = !DILocation(line: 14, column: 18, scope: !167)
!184 = !DILocation(line: 15, column: 12, scope: !167)
!185 = !DILocation(line: 15, column: 7, scope: !167)
!186 = !DILocation(line: 15, column: 10, scope: !167)
!187 = distinct !{!187, !181, !184, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 16, column: 10, scope: !167)
!190 = !DILocation(line: 16, column: 3, scope: !167)
