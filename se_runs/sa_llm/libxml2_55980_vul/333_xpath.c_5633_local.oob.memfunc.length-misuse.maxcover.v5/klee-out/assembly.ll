; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/333_xpath.c_5633_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/333_xpath.c_5633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type opaque
%struct._xmlXPathObject = type { %struct._xmlNodeSet* }
%struct._xmlNodeSet = type { i32, %struct._xmlNode** }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"(obj != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/333_xpath.c_5633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [53 x i8] c"void target_function(xmlXPathObject *, xmlNodeSet *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"obj_ptr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"tmpset_ptr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"node0\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"nodeNr\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"node_type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathNodeSetFreeNs(%struct._xmlNs* noundef %0) #0 !dbg !42 {
  %2 = alloca %struct._xmlNs*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %2, metadata !46, metadata !DIExpression()), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlXPathObject* noundef %0, %struct._xmlNodeSet* noundef %1) #0 !dbg !49 {
  %3 = alloca %struct._xmlXPathObject*, align 8
  %4 = alloca %struct._xmlNodeSet*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %3, metadata !52, metadata !DIExpression()), !dbg !53
  store %struct._xmlNodeSet* %1, %struct._xmlNodeSet** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %4, metadata !54, metadata !DIExpression()), !dbg !55
  %5 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !56
  %6 = icmp ne %struct._xmlNodeSet* %5, null, !dbg !56
  br i1 %6, label %7, label %53, !dbg !58

7:                                                ; preds = %2
  %8 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !59
  %9 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %8, i32 0, i32 0, !dbg !62
  %10 = load i32, i32* %9, align 8, !dbg !62
  %11 = icmp eq i32 %10, 1, !dbg !63
  br i1 %11, label %12, label %36, !dbg !64

12:                                               ; preds = %7
  %13 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !65
  %14 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %13, i32 0, i32 1, !dbg !68
  %15 = load %struct._xmlNode**, %struct._xmlNode*** %14, align 8, !dbg !68
  %16 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %15, i64 0, !dbg !65
  %17 = load %struct._xmlNode*, %struct._xmlNode** %16, align 8, !dbg !65
  %18 = icmp ne %struct._xmlNode* %17, null, !dbg !69
  br i1 %18, label %19, label %35, !dbg !70

19:                                               ; preds = %12
  %20 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !71
  %21 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %20, i32 0, i32 1, !dbg !72
  %22 = load %struct._xmlNode**, %struct._xmlNode*** %21, align 8, !dbg !72
  %23 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %22, i64 0, !dbg !71
  %24 = load %struct._xmlNode*, %struct._xmlNode** %23, align 8, !dbg !71
  %25 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %24, i32 0, i32 0, !dbg !73
  %26 = load i32, i32* %25, align 4, !dbg !73
  %27 = icmp eq i32 %26, 0, !dbg !74
  br i1 %27, label %28, label %35, !dbg !75

28:                                               ; preds = %19
  %29 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !76
  %30 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %29, i32 0, i32 1, !dbg !77
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %30, align 8, !dbg !77
  %32 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %31, i64 0, !dbg !76
  %33 = load %struct._xmlNode*, %struct._xmlNode** %32, align 8, !dbg !76
  %34 = bitcast %struct._xmlNode* %33 to %struct._xmlNs*, !dbg !78
  call void @xmlXPathNodeSetFreeNs(%struct._xmlNs* noundef %34), !dbg !79
  br label %35, !dbg !79

35:                                               ; preds = %28, %19, %12
  br label %36, !dbg !80

36:                                               ; preds = %35, %7
  %37 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !81
  %38 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %37, i32 0, i32 0, !dbg !82
  store i32 0, i32* %38, align 8, !dbg !83
  %39 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !84
  %40 = bitcast %struct._xmlXPathObject* %39 to i8*, !dbg !85
  %41 = call i8* @memset(i8* %40, i32 0, i64 8), !dbg !85
  %42 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !86
  %43 = icmp ne %struct._xmlXPathObject* %42, null, !dbg !86
  br i1 %43, label %44, label %46, !dbg !86

44:                                               ; preds = %36
  br i1 true, label %45, label %46, !dbg !86

45:                                               ; preds = %44
  br label %48, !dbg !86

46:                                               ; preds = %44, %36
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !86
  br label %48, !dbg !86

48:                                               ; preds = %46, %45
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !87
  %50 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !88
  %51 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !89
  %52 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %51, i32 0, i32 0, !dbg !90
  store %struct._xmlNodeSet* %50, %struct._xmlNodeSet** %52, align 8, !dbg !91
  br label %57, !dbg !92

53:                                               ; preds = %2
  %54 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %3, align 8, !dbg !93
  %55 = bitcast %struct._xmlXPathObject* %54 to i8*, !dbg !95
  %56 = call i8* @memset(i8* %55, i32 0, i64 8), !dbg !95
  br label %57

57:                                               ; preds = %53, %48
  ret void, !dbg !96
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca %struct._xmlNodeSet*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %3, metadata !102, metadata !DIExpression()), !dbg !103
  %5 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !104
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !105
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %2, align 8, !dbg !106
  %7 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !107
  %8 = bitcast i8* %7 to %struct._xmlNodeSet*, !dbg !108
  store %struct._xmlNodeSet* %8, %struct._xmlNodeSet** %3, align 8, !dbg !109
  %9 = bitcast %struct._xmlXPathObject** %2 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !111
  %10 = bitcast %struct._xmlNodeSet** %3 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !113
  %11 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !114
  %12 = icmp ne %struct._xmlNodeSet* %11, null, !dbg !116
  br i1 %12, label %13, label %46, !dbg !117

13:                                               ; preds = %0
  %14 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !118
  %15 = bitcast i8* %14 to %struct._xmlNode**, !dbg !120
  %16 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !121
  %17 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %16, i32 0, i32 1, !dbg !122
  store %struct._xmlNode** %15, %struct._xmlNode*** %17, align 8, !dbg !123
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !124, metadata !DIExpression()), !dbg !125
  %18 = bitcast %struct._xmlNode** %4 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !127
  %19 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !128
  %20 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !129
  %21 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %20, i32 0, i32 1, !dbg !130
  %22 = load %struct._xmlNode**, %struct._xmlNode*** %21, align 8, !dbg !130
  %23 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %22, i64 0, !dbg !129
  store %struct._xmlNode* %19, %struct._xmlNode** %23, align 8, !dbg !131
  %24 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !132
  %25 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %24, i32 0, i32 0, !dbg !133
  %26 = bitcast i32* %25 to i8*, !dbg !134
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !135
  %27 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !136
  %28 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %27, i32 0, i32 0, !dbg !137
  %29 = load i32, i32* %28, align 8, !dbg !137
  %30 = icmp eq i32 %29, 1, !dbg !138
  %31 = zext i1 %30 to i32, !dbg !138
  %32 = sext i32 %31 to i64, !dbg !136
  call void @klee_assume(i64 noundef %32), !dbg !139
  %33 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !140
  %34 = icmp ne %struct._xmlNode* %33, null, !dbg !142
  br i1 %34, label %35, label %45, !dbg !143

35:                                               ; preds = %13
  %36 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !144
  %37 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %36, i32 0, i32 0, !dbg !146
  %38 = bitcast i32* %37 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %38, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !dbg !148
  %39 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !149
  %40 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %39, i32 0, i32 0, !dbg !150
  %41 = load i32, i32* %40, align 4, !dbg !150
  %42 = icmp eq i32 %41, 0, !dbg !151
  %43 = zext i1 %42 to i32, !dbg !151
  %44 = sext i32 %43 to i64, !dbg !149
  call void @klee_assume(i64 noundef %44), !dbg !152
  br label %45, !dbg !153

45:                                               ; preds = %35, %13
  br label %46, !dbg !154

46:                                               ; preds = %45, %0
  %47 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !155
  %48 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !156
  call void @target_function(%struct._xmlXPathObject* noundef %47, %struct._xmlNodeSet* noundef %48), !dbg !157
  %49 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !158
  %50 = icmp ne %struct._xmlNodeSet* %49, null, !dbg !160
  br i1 %50, label %51, label %64, !dbg !161

51:                                               ; preds = %46
  %52 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !162
  %53 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %52, i32 0, i32 1, !dbg !165
  %54 = load %struct._xmlNode**, %struct._xmlNode*** %53, align 8, !dbg !165
  %55 = icmp ne %struct._xmlNode** %54, null, !dbg !166
  br i1 %55, label %56, label %61, !dbg !167

56:                                               ; preds = %51
  %57 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !168
  %58 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %57, i32 0, i32 1, !dbg !170
  %59 = load %struct._xmlNode**, %struct._xmlNode*** %58, align 8, !dbg !170
  %60 = bitcast %struct._xmlNode** %59 to i8*, !dbg !168
  call void @free(i8* noundef %60) #7, !dbg !171
  br label %61, !dbg !172

61:                                               ; preds = %56, %51
  %62 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !173
  %63 = bitcast %struct._xmlNodeSet* %62 to i8*, !dbg !173
  call void @free(i8* noundef %63) #7, !dbg !174
  br label %64, !dbg !175

64:                                               ; preds = %61, %46
  %65 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !176
  %66 = icmp ne %struct._xmlXPathObject* %65, null, !dbg !178
  br i1 %66, label %67, label %70, !dbg !179

67:                                               ; preds = %64
  %68 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !180
  %69 = bitcast %struct._xmlXPathObject* %68 to i8*, !dbg !180
  call void @free(i8* noundef %69) #7, !dbg !182
  br label %70, !dbg !183

70:                                               ; preds = %67, %64
  ret i32 0, !dbg !184
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !185 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !192, metadata !DIExpression()), !dbg !193
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !194, metadata !DIExpression()), !dbg !195
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i8** %7, metadata !198, metadata !DIExpression()), !dbg !201
  %8 = load i8*, i8** %4, align 8, !dbg !202
  store i8* %8, i8** %7, align 8, !dbg !201
  br label %9, !dbg !203

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !204
  %11 = add i64 %10, -1, !dbg !204
  store i64 %11, i64* %6, align 8, !dbg !204
  %12 = icmp ugt i64 %10, 0, !dbg !205
  br i1 %12, label %13, label %18, !dbg !203

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !206
  %15 = trunc i32 %14 to i8, !dbg !206
  %16 = load i8*, i8** %7, align 8, !dbg !207
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !207
  store i8* %17, i8** %7, align 8, !dbg !207
  store i8 %15, i8* %16, align 1, !dbg !208
  br label %9, !dbg !203, !llvm.loop !209

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !211
  ret i8* %19, !dbg !212
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/333_xpath.c_5633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "007b856414a650131484b0754f872d01")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 0)
!7 = !{!8, !9, !13, !18, !25}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 29, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 26, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !15, file: !1, line: 27, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 24, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 21, size: 128, elements: !21)
!21 = !{!22, !24}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !20, file: !1, line: 22, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !20, file: !1, line: 23, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 19, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 17, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !1, line: 18, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 15, baseType: !3)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 7, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"Ubuntu clang version 14.0.6"}
!42 = distinct !DISubprogram(name: "xmlXPathNodeSetFreeNs", scope: !1, file: !1, line: 32, type: !43, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !9}
!45 = !{}
!46 = !DILocalVariable(name: "ns", arg: 1, scope: !42, file: !1, line: 32, type: !9)
!47 = !DILocation(line: 32, column: 37, scope: !42)
!48 = !DILocation(line: 34, column: 1, scope: !42)
!49 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !50, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !13, !18}
!52 = !DILocalVariable(name: "obj", arg: 1, scope: !49, file: !1, line: 37, type: !13)
!53 = !DILocation(line: 37, column: 38, scope: !49)
!54 = !DILocalVariable(name: "tmpset", arg: 2, scope: !49, file: !1, line: 37, type: !18)
!55 = !DILocation(line: 37, column: 55, scope: !49)
!56 = !DILocation(line: 38, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 38, column: 9)
!58 = !DILocation(line: 38, column: 9, scope: !49)
!59 = !DILocation(line: 39, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 39, column: 13)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 38, column: 17)
!62 = !DILocation(line: 39, column: 21, scope: !60)
!63 = !DILocation(line: 39, column: 28, scope: !60)
!64 = !DILocation(line: 39, column: 13, scope: !61)
!65 = !DILocation(line: 40, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 40, column: 17)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 39, column: 34)
!68 = !DILocation(line: 40, column: 26, scope: !66)
!69 = !DILocation(line: 40, column: 37, scope: !66)
!70 = !DILocation(line: 40, column: 46, scope: !66)
!71 = !DILocation(line: 41, column: 18, scope: !66)
!72 = !DILocation(line: 41, column: 26, scope: !66)
!73 = !DILocation(line: 41, column: 38, scope: !66)
!74 = !DILocation(line: 41, column: 43, scope: !66)
!75 = !DILocation(line: 40, column: 17, scope: !67)
!76 = !DILocation(line: 42, column: 50, scope: !66)
!77 = !DILocation(line: 42, column: 58, scope: !66)
!78 = !DILocation(line: 42, column: 39, scope: !66)
!79 = !DILocation(line: 42, column: 17, scope: !66)
!80 = !DILocation(line: 43, column: 9, scope: !67)
!81 = !DILocation(line: 44, column: 9, scope: !61)
!82 = !DILocation(line: 44, column: 17, scope: !61)
!83 = !DILocation(line: 44, column: 24, scope: !61)
!84 = !DILocation(line: 47, column: 16, scope: !61)
!85 = !DILocation(line: 47, column: 9, scope: !61)
!86 = !DILocation(line: 50, column: 9, scope: !61)
!87 = !DILocation(line: 53, column: 9, scope: !61)
!88 = !DILocation(line: 55, column: 27, scope: !61)
!89 = !DILocation(line: 55, column: 9, scope: !61)
!90 = !DILocation(line: 55, column: 14, scope: !61)
!91 = !DILocation(line: 55, column: 25, scope: !61)
!92 = !DILocation(line: 56, column: 5, scope: !61)
!93 = !DILocation(line: 57, column: 16, scope: !94)
!94 = distinct !DILexicalBlock(scope: !57, file: !1, line: 56, column: 12)
!95 = !DILocation(line: 57, column: 9, scope: !94)
!96 = !DILocation(line: 59, column: 1, scope: !49)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !98, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!98 = !DISubroutineType(types: !99)
!99 = !{!23}
!100 = !DILocalVariable(name: "obj", scope: !97, file: !1, line: 63, type: !13)
!101 = !DILocation(line: 63, column: 21, scope: !97)
!102 = !DILocalVariable(name: "tmpset", scope: !97, file: !1, line: 64, type: !18)
!103 = !DILocation(line: 64, column: 17, scope: !97)
!104 = !DILocation(line: 67, column: 28, scope: !97)
!105 = !DILocation(line: 67, column: 11, scope: !97)
!106 = !DILocation(line: 67, column: 9, scope: !97)
!107 = !DILocation(line: 68, column: 27, scope: !97)
!108 = !DILocation(line: 68, column: 14, scope: !97)
!109 = !DILocation(line: 68, column: 12, scope: !97)
!110 = !DILocation(line: 71, column: 24, scope: !97)
!111 = !DILocation(line: 71, column: 5, scope: !97)
!112 = !DILocation(line: 74, column: 24, scope: !97)
!113 = !DILocation(line: 74, column: 5, scope: !97)
!114 = !DILocation(line: 77, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 77, column: 9)
!116 = !DILocation(line: 77, column: 16, scope: !115)
!117 = !DILocation(line: 77, column: 9, scope: !97)
!118 = !DILocation(line: 78, column: 38, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 77, column: 25)
!120 = !DILocation(line: 78, column: 27, scope: !119)
!121 = !DILocation(line: 78, column: 9, scope: !119)
!122 = !DILocation(line: 78, column: 17, scope: !119)
!123 = !DILocation(line: 78, column: 25, scope: !119)
!124 = !DILocalVariable(name: "node0", scope: !119, file: !1, line: 81, type: !26)
!125 = !DILocation(line: 81, column: 18, scope: !119)
!126 = !DILocation(line: 82, column: 28, scope: !119)
!127 = !DILocation(line: 82, column: 9, scope: !119)
!128 = !DILocation(line: 83, column: 30, scope: !119)
!129 = !DILocation(line: 83, column: 9, scope: !119)
!130 = !DILocation(line: 83, column: 17, scope: !119)
!131 = !DILocation(line: 83, column: 28, scope: !119)
!132 = !DILocation(line: 86, column: 29, scope: !119)
!133 = !DILocation(line: 86, column: 37, scope: !119)
!134 = !DILocation(line: 86, column: 28, scope: !119)
!135 = !DILocation(line: 86, column: 9, scope: !119)
!136 = !DILocation(line: 87, column: 21, scope: !119)
!137 = !DILocation(line: 87, column: 29, scope: !119)
!138 = !DILocation(line: 87, column: 36, scope: !119)
!139 = !DILocation(line: 87, column: 9, scope: !119)
!140 = !DILocation(line: 90, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !119, file: !1, line: 90, column: 13)
!142 = !DILocation(line: 90, column: 19, scope: !141)
!143 = !DILocation(line: 90, column: 13, scope: !119)
!144 = !DILocation(line: 91, column: 33, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 90, column: 28)
!146 = !DILocation(line: 91, column: 40, scope: !145)
!147 = !DILocation(line: 91, column: 32, scope: !145)
!148 = !DILocation(line: 91, column: 13, scope: !145)
!149 = !DILocation(line: 92, column: 25, scope: !145)
!150 = !DILocation(line: 92, column: 32, scope: !145)
!151 = !DILocation(line: 92, column: 37, scope: !145)
!152 = !DILocation(line: 92, column: 13, scope: !145)
!153 = !DILocation(line: 93, column: 9, scope: !145)
!154 = !DILocation(line: 94, column: 5, scope: !119)
!155 = !DILocation(line: 97, column: 21, scope: !97)
!156 = !DILocation(line: 97, column: 26, scope: !97)
!157 = !DILocation(line: 97, column: 5, scope: !97)
!158 = !DILocation(line: 100, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !97, file: !1, line: 100, column: 9)
!160 = !DILocation(line: 100, column: 16, scope: !159)
!161 = !DILocation(line: 100, column: 9, scope: !97)
!162 = !DILocation(line: 101, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 101, column: 13)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 100, column: 25)
!165 = !DILocation(line: 101, column: 21, scope: !163)
!166 = !DILocation(line: 101, column: 29, scope: !163)
!167 = !DILocation(line: 101, column: 13, scope: !164)
!168 = !DILocation(line: 102, column: 18, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !1, line: 101, column: 38)
!170 = !DILocation(line: 102, column: 26, scope: !169)
!171 = !DILocation(line: 102, column: 13, scope: !169)
!172 = !DILocation(line: 103, column: 9, scope: !169)
!173 = !DILocation(line: 104, column: 14, scope: !164)
!174 = !DILocation(line: 104, column: 9, scope: !164)
!175 = !DILocation(line: 105, column: 5, scope: !164)
!176 = !DILocation(line: 106, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !97, file: !1, line: 106, column: 9)
!178 = !DILocation(line: 106, column: 13, scope: !177)
!179 = !DILocation(line: 106, column: 9, scope: !97)
!180 = !DILocation(line: 107, column: 14, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 106, column: 22)
!182 = !DILocation(line: 107, column: 9, scope: !181)
!183 = !DILocation(line: 108, column: 5, scope: !181)
!184 = !DILocation(line: 110, column: 5, scope: !97)
!185 = distinct !DISubprogram(name: "memset", scope: !186, file: !186, line: 12, type: !187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !45)
!186 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!187 = !DISubroutineType(types: !188)
!188 = !{!8, !8, !23, !189}
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 46, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DILocalVariable(name: "dst", arg: 1, scope: !185, file: !186, line: 12, type: !8)
!193 = !DILocation(line: 12, column: 20, scope: !185)
!194 = !DILocalVariable(name: "s", arg: 2, scope: !185, file: !186, line: 12, type: !23)
!195 = !DILocation(line: 12, column: 29, scope: !185)
!196 = !DILocalVariable(name: "count", arg: 3, scope: !185, file: !186, line: 12, type: !189)
!197 = !DILocation(line: 12, column: 39, scope: !185)
!198 = !DILocalVariable(name: "a", scope: !185, file: !186, line: 13, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DILocation(line: 13, column: 9, scope: !185)
!202 = !DILocation(line: 13, column: 13, scope: !185)
!203 = !DILocation(line: 14, column: 3, scope: !185)
!204 = !DILocation(line: 14, column: 15, scope: !185)
!205 = !DILocation(line: 14, column: 18, scope: !185)
!206 = !DILocation(line: 15, column: 12, scope: !185)
!207 = !DILocation(line: 15, column: 7, scope: !185)
!208 = !DILocation(line: 15, column: 10, scope: !185)
!209 = distinct !{!209, !203, !206, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 16, column: 10, scope: !185)
!212 = !DILocation(line: 16, column: 3, scope: !185)
