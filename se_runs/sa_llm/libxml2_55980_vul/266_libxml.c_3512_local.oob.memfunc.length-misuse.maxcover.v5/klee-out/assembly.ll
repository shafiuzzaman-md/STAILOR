; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/266_libxml.c_3512_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/266_libxml.c_3512_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type opaque
%struct._xmlNodeSet = type { %struct._xmlNode**, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"(nodeSet->nodeMax <= (18446744073709551615UL) / sizeof(xmlNodePtr)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/266_libxml.c_3512_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [47 x i8] c"int target_function(xmlNodeSet *, void *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nodeMax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !26 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !33, metadata !DIExpression()), !dbg !34
  %3 = load i64, i64* %2, align 8, !dbg !35
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !36
  ret i8* %4, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !38 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !41, metadata !DIExpression()), !dbg !42
  %3 = load i8*, i8** %2, align 8, !dbg !43
  call void @free(i8* noundef %3) #7, !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @PyxmlNode_Get(i8* noundef %0) #0 !dbg !46 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !49, metadata !DIExpression()), !dbg !50
  ret %struct._xmlNode* null, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @PyTuple_GET_ITEM(i8* noundef %0, i32 noundef %1) #0 !dbg !52 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !58
  ret i8* null, !dbg !59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlNodeSet* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !60 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNodeSet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNodeSet* %0, %struct._xmlNodeSet** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %5, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !65, metadata !DIExpression()), !dbg !66
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !67, metadata !DIExpression()), !dbg !68
  %10 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !69
  %11 = icmp eq %struct._xmlNodeSet* %10, null, !dbg !71
  br i1 %11, label %12, label %13, !dbg !72

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !73
  br label %84, !dbg !73

13:                                               ; preds = %3
  %14 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !75
  %15 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %14, i32 0, i32 1, !dbg !76
  %16 = load i32, i32* %15, align 8, !dbg !76
  %17 = sext i32 %16 to i64, !dbg !75
  %18 = mul i64 %17, 8, !dbg !77
  %19 = call i8* @xmlMalloc(i64 noundef %18), !dbg !78
  %20 = bitcast i8* %19 to %struct._xmlNode**, !dbg !79
  %21 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !80
  %22 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %21, i32 0, i32 0, !dbg !81
  store %struct._xmlNode** %20, %struct._xmlNode*** %22, align 8, !dbg !82
  %23 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !83
  %24 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %23, i32 0, i32 0, !dbg !85
  %25 = load %struct._xmlNode**, %struct._xmlNode*** %24, align 8, !dbg !85
  %26 = icmp eq %struct._xmlNode** %25, null, !dbg !86
  br i1 %26, label %27, label %30, !dbg !87

27:                                               ; preds = %13
  %28 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !88
  %29 = bitcast %struct._xmlNodeSet* %28 to i8*, !dbg !88
  call void @xmlFree(i8* noundef %29), !dbg !90
  store i32 -1, i32* %4, align 4, !dbg !91
  br label %84, !dbg !91

30:                                               ; preds = %13
  %31 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !92
  %32 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %31, i32 0, i32 0, !dbg !93
  %33 = load %struct._xmlNode**, %struct._xmlNode*** %32, align 8, !dbg !93
  %34 = bitcast %struct._xmlNode** %33 to i8*, !dbg !94
  %35 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !95
  %36 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %35, i32 0, i32 1, !dbg !96
  %37 = load i32, i32* %36, align 8, !dbg !96
  %38 = sext i32 %37 to i64, !dbg !95
  %39 = mul i64 %38, 8, !dbg !97
  %40 = call i8* @memset(i8* %34, i32 0, i64 %39), !dbg !94
  %41 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !98
  %42 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %41, i32 0, i32 1, !dbg !98
  %43 = load i32, i32* %42, align 8, !dbg !98
  %44 = sext i32 %43 to i64, !dbg !98
  %45 = icmp ule i64 %44, 2305843009213693951, !dbg !98
  br i1 %45, label %46, label %48, !dbg !98

46:                                               ; preds = %30
  br i1 true, label %47, label %48, !dbg !98

47:                                               ; preds = %46
  br label %50, !dbg !98

48:                                               ; preds = %46, %30
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !98
  br label %50, !dbg !98

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !99
  call void @llvm.dbg.declare(metadata i32* %8, metadata !100, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %8, align 4, !dbg !103
  br label %52, !dbg !105

52:                                               ; preds = %80, %50
  %53 = load i32, i32* %8, align 4, !dbg !106
  %54 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !108
  %55 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %54, i32 0, i32 1, !dbg !109
  %56 = load i32, i32* %55, align 8, !dbg !109
  %57 = icmp slt i32 %53, %56, !dbg !110
  br i1 %57, label %58, label %83, !dbg !111

58:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %9, metadata !112, metadata !DIExpression()), !dbg !114
  %59 = load i32, i32* %7, align 4, !dbg !115
  %60 = icmp ne i32 %59, 0, !dbg !115
  br i1 %60, label %61, label %65, !dbg !115

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8, !dbg !116
  %63 = load i32, i32* %8, align 4, !dbg !117
  %64 = call i8* @PyTuple_GET_ITEM(i8* noundef %62, i32 noundef %63), !dbg !118
  br label %66, !dbg !115

65:                                               ; preds = %58
  br label %66, !dbg !115

66:                                               ; preds = %65, %61
  %67 = phi i8* [ %64, %61 ], [ null, %65 ], !dbg !115
  %68 = call %struct._xmlNode* @PyxmlNode_Get(i8* noundef %67), !dbg !119
  store %struct._xmlNode* %68, %struct._xmlNode** %9, align 8, !dbg !114
  %69 = load %struct._xmlNode*, %struct._xmlNode** %9, align 8, !dbg !120
  %70 = icmp ne %struct._xmlNode* %69, null, !dbg !120
  br i1 %70, label %71, label %79, !dbg !122

71:                                               ; preds = %66
  %72 = load %struct._xmlNode*, %struct._xmlNode** %9, align 8, !dbg !123
  %73 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !125
  %74 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %73, i32 0, i32 0, !dbg !126
  %75 = load %struct._xmlNode**, %struct._xmlNode*** %74, align 8, !dbg !126
  %76 = load i32, i32* %8, align 4, !dbg !127
  %77 = sext i32 %76 to i64, !dbg !125
  %78 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %75, i64 %77, !dbg !125
  store %struct._xmlNode* %72, %struct._xmlNode** %78, align 8, !dbg !128
  br label %79, !dbg !129

79:                                               ; preds = %71, %66
  br label %80, !dbg !130

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4, !dbg !131
  %82 = add nsw i32 %81, 1, !dbg !131
  store i32 %82, i32* %8, align 4, !dbg !131
  br label %52, !dbg !132, !llvm.loop !133

83:                                               ; preds = %52
  store i32 0, i32* %4, align 4, !dbg !136
  br label %84, !dbg !136

84:                                               ; preds = %83, %27, %12
  %85 = load i32, i32* %4, align 4, !dbg !137
  ret i32 %85, !dbg !137
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !138 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNodeSet*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %2, metadata !141, metadata !DIExpression()), !dbg !142
  %4 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !143
  %5 = bitcast i8* %4 to %struct._xmlNodeSet*, !dbg !144
  store %struct._xmlNodeSet* %5, %struct._xmlNodeSet** %2, align 8, !dbg !142
  %6 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !145
  %7 = icmp ne %struct._xmlNodeSet* %6, null, !dbg !145
  br i1 %7, label %9, label %8, !dbg !147

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !148
  br label %41, !dbg !148

9:                                                ; preds = %0
  %10 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !150
  %11 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %10, i32 0, i32 1, !dbg !151
  %12 = bitcast i32* %11 to i8*, !dbg !152
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !153
  %13 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !154
  %14 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %13, i32 0, i32 1, !dbg !155
  %15 = load i32, i32* %14, align 8, !dbg !155
  %16 = icmp sge i32 %15, 0, !dbg !156
  %17 = zext i1 %16 to i32, !dbg !156
  %18 = sext i32 %17 to i64, !dbg !154
  call void @klee_assume(i64 noundef %18), !dbg !157
  %19 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !158
  %20 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %19, i32 0, i32 1, !dbg !159
  %21 = load i32, i32* %20, align 8, !dbg !159
  %22 = icmp sle i32 %21, 1000000, !dbg !160
  %23 = zext i1 %22 to i32, !dbg !160
  %24 = sext i32 %23 to i64, !dbg !158
  call void @klee_assume(i64 noundef %24), !dbg !161
  %25 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !162
  %26 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %25, i32 0, i32 0, !dbg !163
  store %struct._xmlNode** null, %struct._xmlNode*** %26, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %3, metadata !165, metadata !DIExpression()), !dbg !166
  %27 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !167
  %28 = call i32 @target_function(%struct._xmlNodeSet* noundef %27, i8* noundef null, i32 noundef 0), !dbg !168
  store i32 %28, i32* %3, align 4, !dbg !166
  %29 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !169
  %30 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %29, i32 0, i32 0, !dbg !171
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !171
  %32 = icmp ne %struct._xmlNode** %31, null, !dbg !169
  br i1 %32, label %33, label %38, !dbg !172

33:                                               ; preds = %9
  %34 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !173
  %35 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %34, i32 0, i32 0, !dbg !175
  %36 = load %struct._xmlNode**, %struct._xmlNode*** %35, align 8, !dbg !175
  %37 = bitcast %struct._xmlNode** %36 to i8*, !dbg !173
  call void @free(i8* noundef %37) #7, !dbg !176
  br label %38, !dbg !177

38:                                               ; preds = %33, %9
  %39 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %2, align 8, !dbg !178
  %40 = bitcast %struct._xmlNodeSet* %39 to i8*, !dbg !178
  call void @free(i8* noundef %40) #7, !dbg !179
  store i32 0, i32* %1, align 4, !dbg !180
  br label %41, !dbg !180

41:                                               ; preds = %38, %8
  %42 = load i32, i32* %1, align 4, !dbg !181
  ret i32 %42, !dbg !181
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !195
  %8 = load i8*, i8** %4, align 8, !dbg !196
  store i8* %8, i8** %7, align 8, !dbg !195
  br label %9, !dbg !197

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !198
  %11 = add i64 %10, -1, !dbg !198
  store i64 %11, i64* %6, align 8, !dbg !198
  %12 = icmp ugt i64 %10, 0, !dbg !199
  br i1 %12, label %13, label %18, !dbg !197

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !200
  %15 = trunc i32 %14 to i8, !dbg !200
  %16 = load i8*, i8** %7, align 8, !dbg !201
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !201
  store i8* %17, i8** %7, align 8, !dbg !201
  store i8 %15, i8* %16, align 1, !dbg !202
  br label %9, !dbg !197, !llvm.loop !203

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !204
  ret i8* %19, !dbg !205
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/266_libxml.c_3512_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b51d80b6f86c1fd736b04b2a43100095")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !8)
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 10, flags: DIFlagFwdDecl)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 16, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 13, size: 128, elements: !12)
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !11, file: !1, line: 14, baseType: !4, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !11, file: !1, line: 15, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!26 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !27, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!27 = !DISubroutineType(types: !28)
!28 = !{!3, !29}
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !1, line: 19, type: !29)
!34 = !DILocation(line: 19, column: 24, scope: !26)
!35 = !DILocation(line: 20, column: 19, scope: !26)
!36 = !DILocation(line: 20, column: 12, scope: !26)
!37 = !DILocation(line: 20, column: 5, scope: !26)
!38 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 24, type: !39, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !3}
!41 = !DILocalVariable(name: "ptr", arg: 1, scope: !38, file: !1, line: 24, type: !3)
!42 = !DILocation(line: 24, column: 20, scope: !38)
!43 = !DILocation(line: 25, column: 10, scope: !38)
!44 = !DILocation(line: 25, column: 5, scope: !38)
!45 = !DILocation(line: 26, column: 1, scope: !38)
!46 = distinct !DISubprogram(name: "PyxmlNode_Get", scope: !1, file: !1, line: 29, type: !47, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!47 = !DISubroutineType(types: !48)
!48 = !{!5, !3}
!49 = !DILocalVariable(name: "pyobj", arg: 1, scope: !46, file: !1, line: 29, type: !3)
!50 = !DILocation(line: 29, column: 32, scope: !46)
!51 = !DILocation(line: 30, column: 5, scope: !46)
!52 = distinct !DISubprogram(name: "PyTuple_GET_ITEM", scope: !1, file: !1, line: 34, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!53 = !DISubroutineType(types: !54)
!54 = !{!3, !3, !15}
!55 = !DILocalVariable(name: "tuple", arg: 1, scope: !52, file: !1, line: 34, type: !3)
!56 = !DILocation(line: 34, column: 30, scope: !52)
!57 = !DILocalVariable(name: "idx", arg: 2, scope: !52, file: !1, line: 34, type: !15)
!58 = !DILocation(line: 34, column: 41, scope: !52)
!59 = !DILocation(line: 35, column: 5, scope: !52)
!60 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 39, type: !61, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!61 = !DISubroutineType(types: !62)
!62 = !{!15, !9, !3, !15}
!63 = !DILocalVariable(name: "nodeSet", arg: 1, scope: !60, file: !1, line: 39, type: !9)
!64 = !DILocation(line: 39, column: 33, scope: !60)
!65 = !DILocalVariable(name: "py_nodeset", arg: 2, scope: !60, file: !1, line: 39, type: !3)
!66 = !DILocation(line: 39, column: 48, scope: !60)
!67 = !DILocalVariable(name: "is_tuple", arg: 3, scope: !60, file: !1, line: 39, type: !15)
!68 = !DILocation(line: 39, column: 64, scope: !60)
!69 = !DILocation(line: 40, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !60, file: !1, line: 40, column: 9)
!71 = !DILocation(line: 40, column: 17, scope: !70)
!72 = !DILocation(line: 40, column: 9, scope: !60)
!73 = !DILocation(line: 41, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 40, column: 26)
!75 = !DILocation(line: 44, column: 48, scope: !60)
!76 = !DILocation(line: 44, column: 57, scope: !60)
!77 = !DILocation(line: 44, column: 65, scope: !60)
!78 = !DILocation(line: 44, column: 38, scope: !60)
!79 = !DILocation(line: 44, column: 24, scope: !60)
!80 = !DILocation(line: 44, column: 5, scope: !60)
!81 = !DILocation(line: 44, column: 14, scope: !60)
!82 = !DILocation(line: 44, column: 22, scope: !60)
!83 = !DILocation(line: 45, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 9)
!85 = !DILocation(line: 45, column: 18, scope: !84)
!86 = !DILocation(line: 45, column: 26, scope: !84)
!87 = !DILocation(line: 45, column: 9, scope: !60)
!88 = !DILocation(line: 46, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 45, column: 35)
!90 = !DILocation(line: 46, column: 9, scope: !89)
!91 = !DILocation(line: 47, column: 9, scope: !89)
!92 = !DILocation(line: 51, column: 12, scope: !60)
!93 = !DILocation(line: 51, column: 21, scope: !60)
!94 = !DILocation(line: 51, column: 5, scope: !60)
!95 = !DILocation(line: 51, column: 33, scope: !60)
!96 = !DILocation(line: 51, column: 42, scope: !60)
!97 = !DILocation(line: 51, column: 50, scope: !60)
!98 = !DILocation(line: 54, column: 5, scope: !60)
!99 = !DILocation(line: 57, column: 5, scope: !60)
!100 = !DILocalVariable(name: "idx", scope: !101, file: !1, line: 61, type: !15)
!101 = distinct !DILexicalBlock(scope: !60, file: !1, line: 60, column: 5)
!102 = !DILocation(line: 61, column: 13, scope: !101)
!103 = !DILocation(line: 62, column: 18, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 62, column: 9)
!105 = !DILocation(line: 62, column: 14, scope: !104)
!106 = !DILocation(line: 62, column: 23, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 62, column: 9)
!108 = !DILocation(line: 62, column: 29, scope: !107)
!109 = !DILocation(line: 62, column: 38, scope: !107)
!110 = !DILocation(line: 62, column: 27, scope: !107)
!111 = !DILocation(line: 62, column: 9, scope: !104)
!112 = !DILocalVariable(name: "pynode", scope: !113, file: !1, line: 63, type: !5)
!113 = distinct !DILexicalBlock(scope: !107, file: !1, line: 62, column: 54)
!114 = !DILocation(line: 63, column: 24, scope: !113)
!115 = !DILocation(line: 64, column: 17, scope: !113)
!116 = !DILocation(line: 64, column: 45, scope: !113)
!117 = !DILocation(line: 64, column: 57, scope: !113)
!118 = !DILocation(line: 64, column: 28, scope: !113)
!119 = !DILocation(line: 63, column: 33, scope: !113)
!120 = !DILocation(line: 65, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !113, file: !1, line: 65, column: 17)
!122 = !DILocation(line: 65, column: 17, scope: !113)
!123 = !DILocation(line: 66, column: 41, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 65, column: 25)
!125 = !DILocation(line: 66, column: 17, scope: !124)
!126 = !DILocation(line: 66, column: 26, scope: !124)
!127 = !DILocation(line: 66, column: 34, scope: !124)
!128 = !DILocation(line: 66, column: 39, scope: !124)
!129 = !DILocation(line: 67, column: 13, scope: !124)
!130 = !DILocation(line: 68, column: 9, scope: !113)
!131 = !DILocation(line: 62, column: 47, scope: !107)
!132 = !DILocation(line: 62, column: 9, scope: !107)
!133 = distinct !{!133, !111, !134, !135}
!134 = !DILocation(line: 68, column: 9, scope: !104)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !DILocation(line: 71, column: 5, scope: !60)
!137 = !DILocation(line: 72, column: 1, scope: !60)
!138 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !139, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!139 = !DISubroutineType(types: !140)
!140 = !{!15}
!141 = !DILocalVariable(name: "nodeSet", scope: !138, file: !1, line: 75, type: !9)
!142 = !DILocation(line: 75, column: 17, scope: !138)
!143 = !DILocation(line: 75, column: 41, scope: !138)
!144 = !DILocation(line: 75, column: 27, scope: !138)
!145 = !DILocation(line: 76, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !1, line: 76, column: 9)
!147 = !DILocation(line: 76, column: 9, scope: !138)
!148 = !DILocation(line: 77, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 76, column: 19)
!150 = !DILocation(line: 81, column: 25, scope: !138)
!151 = !DILocation(line: 81, column: 34, scope: !138)
!152 = !DILocation(line: 81, column: 24, scope: !138)
!153 = !DILocation(line: 81, column: 5, scope: !138)
!154 = !DILocation(line: 84, column: 17, scope: !138)
!155 = !DILocation(line: 84, column: 26, scope: !138)
!156 = !DILocation(line: 84, column: 34, scope: !138)
!157 = !DILocation(line: 84, column: 5, scope: !138)
!158 = !DILocation(line: 85, column: 17, scope: !138)
!159 = !DILocation(line: 85, column: 26, scope: !138)
!160 = !DILocation(line: 85, column: 34, scope: !138)
!161 = !DILocation(line: 85, column: 5, scope: !138)
!162 = !DILocation(line: 88, column: 5, scope: !138)
!163 = !DILocation(line: 88, column: 14, scope: !138)
!164 = !DILocation(line: 88, column: 22, scope: !138)
!165 = !DILocalVariable(name: "result", scope: !138, file: !1, line: 91, type: !15)
!166 = !DILocation(line: 91, column: 9, scope: !138)
!167 = !DILocation(line: 91, column: 34, scope: !138)
!168 = !DILocation(line: 91, column: 18, scope: !138)
!169 = !DILocation(line: 94, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !138, file: !1, line: 94, column: 9)
!171 = !DILocation(line: 94, column: 18, scope: !170)
!172 = !DILocation(line: 94, column: 9, scope: !138)
!173 = !DILocation(line: 95, column: 14, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 94, column: 27)
!175 = !DILocation(line: 95, column: 23, scope: !174)
!176 = !DILocation(line: 95, column: 9, scope: !174)
!177 = !DILocation(line: 96, column: 5, scope: !174)
!178 = !DILocation(line: 97, column: 10, scope: !138)
!179 = !DILocation(line: 97, column: 5, scope: !138)
!180 = !DILocation(line: 99, column: 5, scope: !138)
!181 = !DILocation(line: 100, column: 1, scope: !138)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !32)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!3, !3, !15, !29}
!186 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !3)
!187 = !DILocation(line: 12, column: 20, scope: !182)
!188 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !15)
!189 = !DILocation(line: 12, column: 29, scope: !182)
!190 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !29)
!191 = !DILocation(line: 12, column: 39, scope: !182)
!192 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!195 = !DILocation(line: 13, column: 9, scope: !182)
!196 = !DILocation(line: 13, column: 13, scope: !182)
!197 = !DILocation(line: 14, column: 3, scope: !182)
!198 = !DILocation(line: 14, column: 15, scope: !182)
!199 = !DILocation(line: 14, column: 18, scope: !182)
!200 = !DILocation(line: 15, column: 12, scope: !182)
!201 = !DILocation(line: 15, column: 7, scope: !182)
!202 = !DILocation(line: 15, column: 10, scope: !182)
!203 = distinct !{!203, !197, !200, !135}
!204 = !DILocation(line: 16, column: 10, scope: !182)
!205 = !DILocation(line: 16, column: 3, scope: !182)
