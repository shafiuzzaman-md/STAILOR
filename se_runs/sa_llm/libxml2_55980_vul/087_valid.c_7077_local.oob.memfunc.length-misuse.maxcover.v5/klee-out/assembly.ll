; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/087_valid.c_7077_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/087_valid.c_7077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { %struct._xmlNode* }
%struct._xmlValidCtxt = type { i32 }
%struct._xmlElement = type opaque

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/087_valid.c_7077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlValidGetValidElements = private unnamed_addr constant [71 x i8] c"int xmlValidGetValidElements(xmlNode *, xmlNode *, const char **, int)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"use_prev\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"use_next\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"max\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlValidGetValidElements(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1, i8** noundef %2, i32 noundef %3) #0 !dbg !28 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlValidCtxt, align 4
  %11 = alloca %struct._xmlNode*, align 8
  %12 = alloca %struct._xmlNode*, align 8
  %13 = alloca %struct._xmlElement*, align 8
  %14 = alloca i32, align 4
  store %struct._xmlNode* %0, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct._xmlNode* %1, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !35, metadata !DIExpression()), !dbg !36
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %10, metadata !41, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %11, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %12, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %13, metadata !51, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %14, metadata !56, metadata !DIExpression()), !dbg !57
  %15 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !58
  %16 = icmp eq %struct._xmlNode* %15, null, !dbg !60
  br i1 %16, label %17, label %21, !dbg !61

17:                                               ; preds = %4
  %18 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !62
  %19 = icmp eq %struct._xmlNode* %18, null, !dbg !63
  br i1 %19, label %20, label %21, !dbg !64

20:                                               ; preds = %17
  store i32 -1, i32* %5, align 4, !dbg !65
  br label %46, !dbg !65

21:                                               ; preds = %17, %4
  %22 = load i8**, i8*** %8, align 8, !dbg !66
  %23 = icmp eq i8** %22, null, !dbg !68
  br i1 %23, label %24, label %25, !dbg !69

24:                                               ; preds = %21
  store i32 -1, i32* %5, align 4, !dbg !70
  br label %46, !dbg !70

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4, !dbg !71
  %27 = icmp sle i32 %26, 0, !dbg !73
  br i1 %27, label %28, label %29, !dbg !74

28:                                               ; preds = %25
  store i32 -1, i32* %5, align 4, !dbg !75
  br label %46, !dbg !75

29:                                               ; preds = %25
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xmlValidGetValidElements, i64 0, i64 0)), !dbg !76
  %31 = bitcast %struct._xmlValidCtxt* %10 to i8*, !dbg !77
  %32 = call i8* @memset(i8* %31, i32 0, i64 4), !dbg !77
  %33 = getelementptr inbounds %struct._xmlValidCtxt, %struct._xmlValidCtxt* %10, i32 0, i32 0, !dbg !78
  store i32 0, i32* %33, align 4, !dbg !79
  store i32 0, i32* %14, align 4, !dbg !80
  %34 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !81
  %35 = icmp ne %struct._xmlNode* %34, null, !dbg !81
  br i1 %35, label %36, label %38, !dbg !81

36:                                               ; preds = %29
  %37 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !82
  br label %40, !dbg !81

38:                                               ; preds = %29
  %39 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !83
  br label %40, !dbg !81

40:                                               ; preds = %38, %36
  %41 = phi %struct._xmlNode* [ %37, %36 ], [ %39, %38 ], !dbg !81
  store %struct._xmlNode* %41, %struct._xmlNode** %11, align 8, !dbg !84
  %42 = load %struct._xmlNode*, %struct._xmlNode** %11, align 8, !dbg !85
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %42, i32 0, i32 0, !dbg !86
  %44 = load %struct._xmlNode*, %struct._xmlNode** %43, align 8, !dbg !86
  store %struct._xmlNode* %44, %struct._xmlNode** %12, align 8, !dbg !87
  %45 = load i32, i32* %14, align 4, !dbg !88
  store i32 %45, i32* %5, align 4, !dbg !89
  br label %46, !dbg !89

46:                                               ; preds = %40, %28, %24, %20
  %47 = load i32, i32* %5, align 4, !dbg !90
  ret i32 %47, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !91 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !98, metadata !DIExpression()), !dbg !99
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !100, metadata !DIExpression()), !dbg !101
  store %struct._xmlNode* null, %struct._xmlNode** %5, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %7, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %8, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %9, metadata !108, metadata !DIExpression()), !dbg !109
  %10 = bitcast i32* %8 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !111
  %11 = bitcast i32* %9 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !113
  %12 = load i32, i32* %8, align 4, !dbg !114
  %13 = icmp ne i32 %12, 0, !dbg !115
  br i1 %13, label %17, label %14, !dbg !116

14:                                               ; preds = %0
  %15 = load i32, i32* %9, align 4, !dbg !117
  %16 = icmp ne i32 %15, 0, !dbg !118
  br label %17, !dbg !116

17:                                               ; preds = %14, %0
  %18 = phi i1 [ true, %0 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32, !dbg !116
  %20 = sext i32 %19 to i64, !dbg !114
  call void @klee_assume(i64 noundef %20), !dbg !119
  %21 = load i32, i32* %8, align 4, !dbg !120
  %22 = icmp ne i32 %21, 0, !dbg !120
  br i1 %22, label %23, label %25, !dbg !122

23:                                               ; preds = %17
  store %struct._xmlNode* %2, %struct._xmlNode** %4, align 8, !dbg !123
  %24 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !125
  store %struct._xmlNode* null, %struct._xmlNode** %24, align 8, !dbg !126
  br label %25, !dbg !127

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %9, align 4, !dbg !128
  %27 = icmp ne i32 %26, 0, !dbg !128
  br i1 %27, label %28, label %30, !dbg !130

28:                                               ; preds = %25
  store %struct._xmlNode* %3, %struct._xmlNode** %5, align 8, !dbg !131
  %29 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !133
  store %struct._xmlNode* null, %struct._xmlNode** %29, align 8, !dbg !134
  br label %30, !dbg !135

30:                                               ; preds = %28, %25
  %31 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !136
  %32 = icmp ne %struct._xmlNode* %31, null, !dbg !138
  br i1 %32, label %33, label %42, !dbg !139

33:                                               ; preds = %30
  %34 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !140
  %35 = bitcast i8* %34 to %struct._xmlNode*, !dbg !142
  %36 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !143
  store %struct._xmlNode* %35, %struct._xmlNode** %36, align 8, !dbg !144
  %37 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !145
  %38 = load %struct._xmlNode*, %struct._xmlNode** %37, align 8, !dbg !145
  %39 = icmp ne %struct._xmlNode* %38, null, !dbg !146
  %40 = zext i1 %39 to i32, !dbg !146
  %41 = sext i32 %40 to i64, !dbg !147
  call void @klee_assume(i64 noundef %41), !dbg !148
  br label %42, !dbg !149

42:                                               ; preds = %33, %30
  %43 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !150
  %44 = icmp ne %struct._xmlNode* %43, null, !dbg !152
  br i1 %44, label %45, label %54, !dbg !153

45:                                               ; preds = %42
  %46 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !154
  %47 = bitcast i8* %46 to %struct._xmlNode*, !dbg !156
  %48 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !157
  store %struct._xmlNode* %47, %struct._xmlNode** %48, align 8, !dbg !158
  %49 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !159
  %50 = load %struct._xmlNode*, %struct._xmlNode** %49, align 8, !dbg !159
  %51 = icmp ne %struct._xmlNode* %50, null, !dbg !160
  %52 = zext i1 %51 to i32, !dbg !160
  %53 = sext i32 %52 to i64, !dbg !161
  call void @klee_assume(i64 noundef %53), !dbg !162
  br label %54, !dbg !163

54:                                               ; preds = %45, %42
  %55 = call noalias i8* @malloc(i64 noundef 80) #7, !dbg !164
  %56 = bitcast i8* %55 to i8**, !dbg !165
  store i8** %56, i8*** %6, align 8, !dbg !166
  %57 = load i8**, i8*** %6, align 8, !dbg !167
  %58 = icmp ne i8** %57, null, !dbg !168
  %59 = zext i1 %58 to i32, !dbg !168
  %60 = sext i32 %59 to i64, !dbg !167
  call void @klee_assume(i64 noundef %60), !dbg !169
  %61 = bitcast i32* %7 to i8*, !dbg !170
  call void @klee_make_symbolic(i8* noundef %61, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !171
  %62 = load i32, i32* %7, align 4, !dbg !172
  %63 = icmp sgt i32 %62, 0, !dbg !173
  %64 = zext i1 %63 to i32, !dbg !173
  %65 = sext i32 %64 to i64, !dbg !172
  call void @klee_assume(i64 noundef %65), !dbg !174
  %66 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !175
  %67 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !176
  %68 = load i8**, i8*** %6, align 8, !dbg !177
  %69 = load i32, i32* %7, align 4, !dbg !178
  %70 = call i32 @xmlValidGetValidElements(%struct._xmlNode* noundef %66, %struct._xmlNode* noundef %67, i8** noundef %68, i32 noundef %69), !dbg !179
  %71 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !180
  %72 = icmp ne %struct._xmlNode* %71, null, !dbg !182
  br i1 %72, label %73, label %81, !dbg !183

73:                                               ; preds = %54
  %74 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !184
  %75 = load %struct._xmlNode*, %struct._xmlNode** %74, align 8, !dbg !184
  %76 = icmp ne %struct._xmlNode* %75, null, !dbg !185
  br i1 %76, label %77, label %81, !dbg !186

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !187
  %79 = load %struct._xmlNode*, %struct._xmlNode** %78, align 8, !dbg !187
  %80 = bitcast %struct._xmlNode* %79 to i8*, !dbg !188
  call void @free(i8* noundef %80) #7, !dbg !189
  br label %81, !dbg !189

81:                                               ; preds = %77, %73, %54
  %82 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !190
  %83 = icmp ne %struct._xmlNode* %82, null, !dbg !192
  br i1 %83, label %84, label %92, !dbg !193

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !194
  %86 = load %struct._xmlNode*, %struct._xmlNode** %85, align 8, !dbg !194
  %87 = icmp ne %struct._xmlNode* %86, null, !dbg !195
  br i1 %87, label %88, label %92, !dbg !196

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !197
  %90 = load %struct._xmlNode*, %struct._xmlNode** %89, align 8, !dbg !197
  %91 = bitcast %struct._xmlNode* %90 to i8*, !dbg !198
  call void @free(i8* noundef %91) #7, !dbg !199
  br label %92, !dbg !199

92:                                               ; preds = %88, %84, %81
  %93 = load i8**, i8*** %6, align 8, !dbg !200
  %94 = icmp ne i8** %93, null, !dbg !202
  br i1 %94, label %95, label %98, !dbg !203

95:                                               ; preds = %92
  %96 = load i8**, i8*** %6, align 8, !dbg !204
  %97 = bitcast i8** %96 to i8*, !dbg !204
  call void @free(i8* noundef %97) #7, !dbg !205
  br label %98, !dbg !205

98:                                               ; preds = %95, %92
  ret i32 0, !dbg !206
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !207 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !214, metadata !DIExpression()), !dbg !215
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !DIExpression()), !dbg !222
  %8 = load i8*, i8** %4, align 8, !dbg !223
  store i8* %8, i8** %7, align 8, !dbg !222
  br label %9, !dbg !224

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !225
  %11 = add i64 %10, -1, !dbg !225
  store i64 %11, i64* %6, align 8, !dbg !225
  %12 = icmp ugt i64 %10, 0, !dbg !226
  br i1 %12, label %13, label %18, !dbg !224

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !227
  %15 = trunc i32 %14 to i8, !dbg !227
  %16 = load i8*, i8** %7, align 8, !dbg !228
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !228
  store i8* %17, i8** %7, align 8, !dbg !228
  store i8 %15, i8* %16, align 1, !dbg !229
  br label %9, !dbg !224, !llvm.loop !230

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !232
  ret i8* %19, !dbg !233
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/087_valid.c_7077_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b1b173d39ebac6d85b8d4382f1a50611")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 22, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "xmlNoValidityErr", value: 0)
!7 = !{!8, !9, !14}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 14, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !11, file: !1, line: 15, baseType: !9, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlValidGetValidElements", scope: !1, file: !1, line: 31, type: !29, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !9, !9, !14, !31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{}
!33 = !DILocalVariable(name: "prev", arg: 1, scope: !28, file: !1, line: 31, type: !9)
!34 = !DILocation(line: 31, column: 39, scope: !28)
!35 = !DILocalVariable(name: "next", arg: 2, scope: !28, file: !1, line: 31, type: !9)
!36 = !DILocation(line: 31, column: 54, scope: !28)
!37 = !DILocalVariable(name: "names", arg: 3, scope: !28, file: !1, line: 32, type: !14)
!38 = !DILocation(line: 32, column: 43, scope: !28)
!39 = !DILocalVariable(name: "max", arg: 4, scope: !28, file: !1, line: 32, type: !31)
!40 = !DILocation(line: 32, column: 54, scope: !28)
!41 = !DILocalVariable(name: "vctxt", scope: !28, file: !1, line: 33, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 18, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !43, file: !1, line: 19, baseType: !31, size: 32)
!46 = !DILocation(line: 33, column: 18, scope: !28)
!47 = !DILocalVariable(name: "ref_node", scope: !28, file: !1, line: 34, type: !9)
!48 = !DILocation(line: 34, column: 14, scope: !28)
!49 = !DILocalVariable(name: "parent", scope: !28, file: !1, line: 35, type: !9)
!50 = !DILocation(line: 35, column: 14, scope: !28)
!51 = !DILocalVariable(name: "element_desc", scope: !28, file: !1, line: 36, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 12, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 12, flags: DIFlagFwdDecl)
!55 = !DILocation(line: 36, column: 17, scope: !28)
!56 = !DILocalVariable(name: "nb_valid_elements", scope: !28, file: !1, line: 37, type: !31)
!57 = !DILocation(line: 37, column: 9, scope: !28)
!58 = !DILocation(line: 39, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !28, file: !1, line: 39, column: 9)
!60 = !DILocation(line: 39, column: 14, scope: !59)
!61 = !DILocation(line: 39, column: 22, scope: !59)
!62 = !DILocation(line: 39, column: 25, scope: !59)
!63 = !DILocation(line: 39, column: 30, scope: !59)
!64 = !DILocation(line: 39, column: 9, scope: !28)
!65 = !DILocation(line: 40, column: 9, scope: !59)
!66 = !DILocation(line: 42, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !28, file: !1, line: 42, column: 9)
!68 = !DILocation(line: 42, column: 15, scope: !67)
!69 = !DILocation(line: 42, column: 9, scope: !28)
!70 = !DILocation(line: 42, column: 24, scope: !67)
!71 = !DILocation(line: 43, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !28, file: !1, line: 43, column: 9)
!73 = !DILocation(line: 43, column: 13, scope: !72)
!74 = !DILocation(line: 43, column: 9, scope: !28)
!75 = !DILocation(line: 43, column: 19, scope: !72)
!76 = !DILocation(line: 50, column: 5, scope: !28)
!77 = !DILocation(line: 52, column: 5, scope: !28)
!78 = !DILocation(line: 53, column: 11, scope: !28)
!79 = !DILocation(line: 53, column: 17, scope: !28)
!80 = !DILocation(line: 55, column: 23, scope: !28)
!81 = !DILocation(line: 56, column: 16, scope: !28)
!82 = !DILocation(line: 56, column: 23, scope: !28)
!83 = !DILocation(line: 56, column: 30, scope: !28)
!84 = !DILocation(line: 56, column: 14, scope: !28)
!85 = !DILocation(line: 57, column: 14, scope: !28)
!86 = !DILocation(line: 57, column: 24, scope: !28)
!87 = !DILocation(line: 57, column: 12, scope: !28)
!88 = !DILocation(line: 59, column: 12, scope: !28)
!89 = !DILocation(line: 59, column: 5, scope: !28)
!90 = !DILocation(line: 60, column: 1, scope: !28)
!91 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !92, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!92 = !DISubroutineType(types: !93)
!93 = !{!31}
!94 = !DILocalVariable(name: "prev_node", scope: !91, file: !1, line: 63, type: !10)
!95 = !DILocation(line: 63, column: 13, scope: !91)
!96 = !DILocalVariable(name: "next_node", scope: !91, file: !1, line: 63, type: !10)
!97 = !DILocation(line: 63, column: 24, scope: !91)
!98 = !DILocalVariable(name: "prev", scope: !91, file: !1, line: 64, type: !9)
!99 = !DILocation(line: 64, column: 14, scope: !91)
!100 = !DILocalVariable(name: "next", scope: !91, file: !1, line: 64, type: !9)
!101 = !DILocation(line: 64, column: 28, scope: !91)
!102 = !DILocalVariable(name: "names", scope: !91, file: !1, line: 65, type: !14)
!103 = !DILocation(line: 65, column: 18, scope: !91)
!104 = !DILocalVariable(name: "max", scope: !91, file: !1, line: 66, type: !31)
!105 = !DILocation(line: 66, column: 9, scope: !91)
!106 = !DILocalVariable(name: "use_prev", scope: !91, file: !1, line: 67, type: !31)
!107 = !DILocation(line: 67, column: 9, scope: !91)
!108 = !DILocalVariable(name: "use_next", scope: !91, file: !1, line: 67, type: !31)
!109 = !DILocation(line: 67, column: 19, scope: !91)
!110 = !DILocation(line: 70, column: 24, scope: !91)
!111 = !DILocation(line: 70, column: 5, scope: !91)
!112 = !DILocation(line: 71, column: 24, scope: !91)
!113 = !DILocation(line: 71, column: 5, scope: !91)
!114 = !DILocation(line: 74, column: 17, scope: !91)
!115 = !DILocation(line: 74, column: 26, scope: !91)
!116 = !DILocation(line: 74, column: 31, scope: !91)
!117 = !DILocation(line: 74, column: 34, scope: !91)
!118 = !DILocation(line: 74, column: 43, scope: !91)
!119 = !DILocation(line: 74, column: 5, scope: !91)
!120 = !DILocation(line: 76, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !91, file: !1, line: 76, column: 9)
!122 = !DILocation(line: 76, column: 9, scope: !91)
!123 = !DILocation(line: 77, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 76, column: 19)
!125 = !DILocation(line: 78, column: 19, scope: !124)
!126 = !DILocation(line: 78, column: 26, scope: !124)
!127 = !DILocation(line: 79, column: 5, scope: !124)
!128 = !DILocation(line: 81, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 9)
!130 = !DILocation(line: 81, column: 9, scope: !91)
!131 = !DILocation(line: 82, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 81, column: 19)
!133 = !DILocation(line: 83, column: 19, scope: !132)
!134 = !DILocation(line: 83, column: 26, scope: !132)
!135 = !DILocation(line: 84, column: 5, scope: !132)
!136 = !DILocation(line: 87, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !91, file: !1, line: 87, column: 9)
!138 = !DILocation(line: 87, column: 14, scope: !137)
!139 = !DILocation(line: 87, column: 9, scope: !91)
!140 = !DILocation(line: 88, column: 38, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 87, column: 23)
!142 = !DILocation(line: 88, column: 28, scope: !141)
!143 = !DILocation(line: 88, column: 19, scope: !141)
!144 = !DILocation(line: 88, column: 26, scope: !141)
!145 = !DILocation(line: 89, column: 31, scope: !141)
!146 = !DILocation(line: 89, column: 38, scope: !141)
!147 = !DILocation(line: 89, column: 21, scope: !141)
!148 = !DILocation(line: 89, column: 9, scope: !141)
!149 = !DILocation(line: 90, column: 5, scope: !141)
!150 = !DILocation(line: 91, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !91, file: !1, line: 91, column: 9)
!152 = !DILocation(line: 91, column: 14, scope: !151)
!153 = !DILocation(line: 91, column: 9, scope: !91)
!154 = !DILocation(line: 92, column: 38, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !1, line: 91, column: 23)
!156 = !DILocation(line: 92, column: 28, scope: !155)
!157 = !DILocation(line: 92, column: 19, scope: !155)
!158 = !DILocation(line: 92, column: 26, scope: !155)
!159 = !DILocation(line: 93, column: 31, scope: !155)
!160 = !DILocation(line: 93, column: 38, scope: !155)
!161 = !DILocation(line: 93, column: 21, scope: !155)
!162 = !DILocation(line: 93, column: 9, scope: !155)
!163 = !DILocation(line: 94, column: 5, scope: !155)
!164 = !DILocation(line: 97, column: 27, scope: !91)
!165 = !DILocation(line: 97, column: 13, scope: !91)
!166 = !DILocation(line: 97, column: 11, scope: !91)
!167 = !DILocation(line: 98, column: 17, scope: !91)
!168 = !DILocation(line: 98, column: 23, scope: !91)
!169 = !DILocation(line: 98, column: 5, scope: !91)
!170 = !DILocation(line: 101, column: 24, scope: !91)
!171 = !DILocation(line: 101, column: 5, scope: !91)
!172 = !DILocation(line: 102, column: 17, scope: !91)
!173 = !DILocation(line: 102, column: 21, scope: !91)
!174 = !DILocation(line: 102, column: 5, scope: !91)
!175 = !DILocation(line: 105, column: 30, scope: !91)
!176 = !DILocation(line: 105, column: 36, scope: !91)
!177 = !DILocation(line: 105, column: 42, scope: !91)
!178 = !DILocation(line: 105, column: 49, scope: !91)
!179 = !DILocation(line: 105, column: 5, scope: !91)
!180 = !DILocation(line: 108, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !91, file: !1, line: 108, column: 9)
!182 = !DILocation(line: 108, column: 14, scope: !181)
!183 = !DILocation(line: 108, column: 22, scope: !181)
!184 = !DILocation(line: 108, column: 35, scope: !181)
!185 = !DILocation(line: 108, column: 42, scope: !181)
!186 = !DILocation(line: 108, column: 9, scope: !91)
!187 = !DILocation(line: 108, column: 66, scope: !181)
!188 = !DILocation(line: 108, column: 56, scope: !181)
!189 = !DILocation(line: 108, column: 51, scope: !181)
!190 = !DILocation(line: 109, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !91, file: !1, line: 109, column: 9)
!192 = !DILocation(line: 109, column: 14, scope: !191)
!193 = !DILocation(line: 109, column: 22, scope: !191)
!194 = !DILocation(line: 109, column: 35, scope: !191)
!195 = !DILocation(line: 109, column: 42, scope: !191)
!196 = !DILocation(line: 109, column: 9, scope: !91)
!197 = !DILocation(line: 109, column: 66, scope: !191)
!198 = !DILocation(line: 109, column: 56, scope: !191)
!199 = !DILocation(line: 109, column: 51, scope: !191)
!200 = !DILocation(line: 110, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !91, file: !1, line: 110, column: 9)
!202 = !DILocation(line: 110, column: 15, scope: !201)
!203 = !DILocation(line: 110, column: 9, scope: !91)
!204 = !DILocation(line: 110, column: 29, scope: !201)
!205 = !DILocation(line: 110, column: 24, scope: !201)
!206 = !DILocation(line: 112, column: 5, scope: !91)
!207 = distinct !DISubprogram(name: "memset", scope: !208, file: !208, line: 12, type: !209, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !32)
!208 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!209 = !DISubroutineType(types: !210)
!210 = !{!8, !8, !31, !211}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 46, baseType: !213)
!212 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!213 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DILocalVariable(name: "dst", arg: 1, scope: !207, file: !208, line: 12, type: !8)
!215 = !DILocation(line: 12, column: 20, scope: !207)
!216 = !DILocalVariable(name: "s", arg: 2, scope: !207, file: !208, line: 12, type: !31)
!217 = !DILocation(line: 12, column: 29, scope: !207)
!218 = !DILocalVariable(name: "count", arg: 3, scope: !207, file: !208, line: 12, type: !211)
!219 = !DILocation(line: 12, column: 39, scope: !207)
!220 = !DILocalVariable(name: "a", scope: !207, file: !208, line: 13, type: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!222 = !DILocation(line: 13, column: 9, scope: !207)
!223 = !DILocation(line: 13, column: 13, scope: !207)
!224 = !DILocation(line: 14, column: 3, scope: !207)
!225 = !DILocation(line: 14, column: 15, scope: !207)
!226 = !DILocation(line: 14, column: 18, scope: !207)
!227 = !DILocation(line: 15, column: 12, scope: !207)
!228 = !DILocation(line: 15, column: 7, scope: !207)
!229 = !DILocation(line: 15, column: 10, scope: !207)
!230 = distinct !{!230, !224, !227, !231}
!231 = !{!"llvm.loop.mustprogress"}
!232 = !DILocation(line: 16, column: 10, scope: !207)
!233 = !DILocation(line: 16, column: 3, scope: !207)
