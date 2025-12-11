; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type opaque
%struct._xmlXPathObject = type { %struct._xmlNodeSet* }
%struct._xmlNodeSet = type { %struct._xmlNode**, i32 }
%struct._xmlNode = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"(obj != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodesExt = private unnamed_addr constant [43 x i8] c"void xmlXPathCmpNodesExt(xmlXPathObject *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"node\00", align 1
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
define dso_local void @xmlXPathCmpNodesExt(%struct._xmlXPathObject* noundef %0) #0 !dbg !49 {
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca %struct._xmlNodeSet*, align 8
  store %struct._xmlXPathObject* %0, %struct._xmlXPathObject** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %3, metadata !54, metadata !DIExpression()), !dbg !55
  %4 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !56
  %5 = icmp eq %struct._xmlXPathObject* %4, null, !dbg !58
  br i1 %5, label %6, label %7, !dbg !59

6:                                                ; preds = %1
  br label %77, !dbg !60

7:                                                ; preds = %1
  %8 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !62
  %9 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %8, i32 0, i32 0, !dbg !63
  %10 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %9, align 8, !dbg !63
  store %struct._xmlNodeSet* %10, %struct._xmlNodeSet** %3, align 8, !dbg !64
  %11 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !65
  %12 = icmp ne %struct._xmlNodeSet* %11, null, !dbg !67
  br i1 %12, label %13, label %64, !dbg !68

13:                                               ; preds = %7
  %14 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !69
  %15 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %14, i32 0, i32 0, !dbg !72
  %16 = load %struct._xmlNode**, %struct._xmlNode*** %15, align 8, !dbg !72
  %17 = icmp ne %struct._xmlNode** %16, null, !dbg !73
  br i1 %17, label %18, label %47, !dbg !74

18:                                               ; preds = %13
  %19 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !75
  %20 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %19, i32 0, i32 1, !dbg !76
  %21 = load i32, i32* %20, align 8, !dbg !76
  %22 = icmp sgt i32 %21, 0, !dbg !77
  br i1 %22, label %23, label %47, !dbg !78

23:                                               ; preds = %18
  %24 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !79
  %25 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %24, i32 0, i32 0, !dbg !82
  %26 = load %struct._xmlNode**, %struct._xmlNode*** %25, align 8, !dbg !82
  %27 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %26, i64 0, !dbg !79
  %28 = load %struct._xmlNode*, %struct._xmlNode** %27, align 8, !dbg !79
  %29 = icmp ne %struct._xmlNode* %28, null, !dbg !83
  br i1 %29, label %30, label %46, !dbg !84

30:                                               ; preds = %23
  %31 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !85
  %32 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %31, i32 0, i32 0, !dbg !86
  %33 = load %struct._xmlNode**, %struct._xmlNode*** %32, align 8, !dbg !86
  %34 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %33, i64 0, !dbg !85
  %35 = load %struct._xmlNode*, %struct._xmlNode** %34, align 8, !dbg !85
  %36 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %35, i32 0, i32 0, !dbg !87
  %37 = load i32, i32* %36, align 4, !dbg !87
  %38 = icmp eq i32 %37, 0, !dbg !88
  br i1 %38, label %39, label %46, !dbg !89

39:                                               ; preds = %30
  %40 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !90
  %41 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %40, i32 0, i32 0, !dbg !92
  %42 = load %struct._xmlNode**, %struct._xmlNode*** %41, align 8, !dbg !92
  %43 = getelementptr inbounds %struct._xmlNode*, %struct._xmlNode** %42, i64 0, !dbg !90
  %44 = load %struct._xmlNode*, %struct._xmlNode** %43, align 8, !dbg !90
  %45 = bitcast %struct._xmlNode* %44 to %struct._xmlNs*, !dbg !93
  call void @xmlXPathNodeSetFreeNs(%struct._xmlNs* noundef %45), !dbg !94
  br label %46, !dbg !95

46:                                               ; preds = %39, %30, %23
  br label %47, !dbg !96

47:                                               ; preds = %46, %18, %13
  %48 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !97
  %49 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %48, i32 0, i32 1, !dbg !98
  store i32 0, i32* %49, align 8, !dbg !99
  %50 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !100
  %51 = icmp ne %struct._xmlXPathObject* %50, null, !dbg !100
  br i1 %51, label %52, label %54, !dbg !100

52:                                               ; preds = %47
  br i1 true, label %53, label %54, !dbg !100

53:                                               ; preds = %52
  br label %56, !dbg !100

54:                                               ; preds = %52, %47
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !100
  br label %56, !dbg !100

56:                                               ; preds = %54, %53
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !101
  %58 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !102
  %59 = bitcast %struct._xmlXPathObject* %58 to i8*, !dbg !103
  %60 = call i8* @memset(i8* %59, i32 0, i64 8), !dbg !103
  %61 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !104
  %62 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !105
  %63 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %62, i32 0, i32 0, !dbg !106
  store %struct._xmlNodeSet* %61, %struct._xmlNodeSet** %63, align 8, !dbg !107
  br label %76, !dbg !108

64:                                               ; preds = %7
  %65 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !109
  %66 = icmp ne %struct._xmlXPathObject* %65, null, !dbg !109
  br i1 %66, label %67, label %69, !dbg !109

67:                                               ; preds = %64
  br i1 true, label %68, label %69, !dbg !109

68:                                               ; preds = %67
  br label %71, !dbg !109

69:                                               ; preds = %67, %64
  %70 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !109
  br label %71, !dbg !109

71:                                               ; preds = %69, %68
  %72 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodesExt, i64 0, i64 0)), !dbg !111
  %73 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !112
  %74 = bitcast %struct._xmlXPathObject* %73 to i8*, !dbg !113
  %75 = call i8* @memset(i8* %74, i32 0, i64 8), !dbg !113
  br label %76

76:                                               ; preds = %71, %56
  br label %77, !dbg !114

77:                                               ; preds = %76, %6
  ret void, !dbg !115
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !116 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlXPathObject*, align 8
  %3 = alloca %struct._xmlNodeSet*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlXPathObject** %2, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %3, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !123, metadata !DIExpression()), !dbg !124
  %5 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !125
  %6 = bitcast i8* %5 to %struct._xmlXPathObject*, !dbg !126
  store %struct._xmlXPathObject* %6, %struct._xmlXPathObject** %2, align 8, !dbg !127
  %7 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !128
  %8 = bitcast %struct._xmlXPathObject* %7 to i8*, !dbg !128
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !129
  %9 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !130
  %10 = bitcast i8* %9 to %struct._xmlNodeSet*, !dbg !131
  store %struct._xmlNodeSet* %10, %struct._xmlNodeSet** %3, align 8, !dbg !132
  %11 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !133
  %12 = bitcast %struct._xmlNodeSet* %11 to i8*, !dbg !133
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !134
  %13 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !135
  %14 = bitcast i8* %13 to %struct._xmlNode*, !dbg !136
  store %struct._xmlNode* %14, %struct._xmlNode** %4, align 8, !dbg !137
  %15 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !138
  %16 = bitcast %struct._xmlNode* %15 to i8*, !dbg !138
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !139
  %17 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !140
  %18 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !141
  %19 = getelementptr inbounds %struct._xmlXPathObject, %struct._xmlXPathObject* %18, i32 0, i32 0, !dbg !142
  store %struct._xmlNodeSet* %17, %struct._xmlNodeSet** %19, align 8, !dbg !143
  %20 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !144
  %21 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %20, i32 0, i32 0, !dbg !145
  store %struct._xmlNode** %4, %struct._xmlNode*** %21, align 8, !dbg !146
  %22 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !147
  %23 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %22, i32 0, i32 1, !dbg !148
  %24 = bitcast i32* %23 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !150
  %25 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !151
  %26 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %25, i32 0, i32 1, !dbg !152
  %27 = load i32, i32* %26, align 8, !dbg !152
  %28 = icmp sge i32 %27, 0, !dbg !153
  %29 = zext i1 %28 to i32, !dbg !153
  %30 = sext i32 %29 to i64, !dbg !151
  call void @klee_assume(i64 noundef %30), !dbg !154
  %31 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !155
  %32 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %31, i32 0, i32 0, !dbg !156
  %33 = bitcast i32* %32 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !dbg !158
  %34 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !159
  call void @xmlXPathCmpNodesExt(%struct._xmlXPathObject* noundef %34), !dbg !160
  %35 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !161
  %36 = bitcast %struct._xmlNode* %35 to i8*, !dbg !161
  call void @free(i8* noundef %36) #7, !dbg !162
  %37 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %3, align 8, !dbg !163
  %38 = bitcast %struct._xmlNodeSet* %37 to i8*, !dbg !163
  call void @free(i8* noundef %38) #7, !dbg !164
  %39 = load %struct._xmlXPathObject*, %struct._xmlXPathObject** %2, align 8, !dbg !165
  %40 = bitcast %struct._xmlXPathObject* %39 to i8*, !dbg !165
  call void @free(i8* noundef %40) #7, !dbg !166
  ret i32 0, !dbg !167
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !DIExpression()), !dbg !178
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %7, metadata !181, metadata !DIExpression()), !dbg !184
  %8 = load i8*, i8** %4, align 8, !dbg !185
  store i8* %8, i8** %7, align 8, !dbg !184
  br label %9, !dbg !186

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !187
  %11 = add i64 %10, -1, !dbg !187
  store i64 %11, i64* %6, align 8, !dbg !187
  %12 = icmp ugt i64 %10, 0, !dbg !188
  br i1 %12, label %13, label %18, !dbg !186

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !189
  %15 = trunc i32 %14 to i8, !dbg !189
  %16 = load i8*, i8** %7, align 8, !dbg !190
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !190
  store i8* %17, i8** %7, align 8, !dbg !190
  store i8 %15, i8* %16, align 1, !dbg !191
  br label %9, !dbg !186, !llvm.loop !192

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %19, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/345_xpath.c_4967_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "22935accf605329b969281169152712f")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 0)
!7 = !{!8, !9, !13, !18, !24}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathObject", file: !1, line: 28, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathObject", file: !1, line: 26, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nodesetval", scope: !15, file: !1, line: 27, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 24, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 21, size: 128, elements: !21)
!21 = !{!22, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !20, file: !1, line: 22, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 19, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 17, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !1, line: 18, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 15, baseType: !3)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !20, file: !1, line: 23, baseType: !31, size: 32, offset: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!42 = distinct !DISubprogram(name: "xmlXPathNodeSetFreeNs", scope: !1, file: !1, line: 31, type: !43, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !9}
!45 = !{}
!46 = !DILocalVariable(name: "ns", arg: 1, scope: !42, file: !1, line: 31, type: !9)
!47 = !DILocation(line: 31, column: 37, scope: !42)
!48 = !DILocation(line: 33, column: 1, scope: !42)
!49 = distinct !DISubprogram(name: "xmlXPathCmpNodesExt", scope: !1, file: !1, line: 36, type: !50, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !13}
!52 = !DILocalVariable(name: "obj", arg: 1, scope: !49, file: !1, line: 36, type: !13)
!53 = !DILocation(line: 36, column: 42, scope: !49)
!54 = !DILocalVariable(name: "tmpset", scope: !49, file: !1, line: 37, type: !18)
!55 = !DILocation(line: 37, column: 17, scope: !49)
!56 = !DILocation(line: 39, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 39, column: 9)
!58 = !DILocation(line: 39, column: 13, scope: !57)
!59 = !DILocation(line: 39, column: 9, scope: !49)
!60 = !DILocation(line: 40, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 39, column: 22)
!62 = !DILocation(line: 43, column: 14, scope: !49)
!63 = !DILocation(line: 43, column: 19, scope: !49)
!64 = !DILocation(line: 43, column: 12, scope: !49)
!65 = !DILocation(line: 45, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !49, file: !1, line: 45, column: 9)
!67 = !DILocation(line: 45, column: 16, scope: !66)
!68 = !DILocation(line: 45, column: 9, scope: !49)
!69 = !DILocation(line: 46, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 46, column: 13)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 45, column: 25)
!72 = !DILocation(line: 46, column: 21, scope: !70)
!73 = !DILocation(line: 46, column: 29, scope: !70)
!74 = !DILocation(line: 46, column: 37, scope: !70)
!75 = !DILocation(line: 46, column: 40, scope: !70)
!76 = !DILocation(line: 46, column: 48, scope: !70)
!77 = !DILocation(line: 46, column: 55, scope: !70)
!78 = !DILocation(line: 46, column: 13, scope: !71)
!79 = !DILocation(line: 47, column: 18, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 17)
!81 = distinct !DILexicalBlock(scope: !70, file: !1, line: 46, column: 60)
!82 = !DILocation(line: 47, column: 26, scope: !80)
!83 = !DILocation(line: 47, column: 37, scope: !80)
!84 = !DILocation(line: 47, column: 46, scope: !80)
!85 = !DILocation(line: 48, column: 18, scope: !80)
!86 = !DILocation(line: 48, column: 26, scope: !80)
!87 = !DILocation(line: 48, column: 38, scope: !80)
!88 = !DILocation(line: 48, column: 43, scope: !80)
!89 = !DILocation(line: 47, column: 17, scope: !81)
!90 = !DILocation(line: 49, column: 50, scope: !91)
!91 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 67)
!92 = !DILocation(line: 49, column: 58, scope: !91)
!93 = !DILocation(line: 49, column: 39, scope: !91)
!94 = !DILocation(line: 49, column: 17, scope: !91)
!95 = !DILocation(line: 50, column: 13, scope: !91)
!96 = !DILocation(line: 51, column: 9, scope: !81)
!97 = !DILocation(line: 52, column: 9, scope: !71)
!98 = !DILocation(line: 52, column: 17, scope: !71)
!99 = !DILocation(line: 52, column: 24, scope: !71)
!100 = !DILocation(line: 56, column: 9, scope: !71)
!101 = !DILocation(line: 57, column: 9, scope: !71)
!102 = !DILocation(line: 59, column: 16, scope: !71)
!103 = !DILocation(line: 59, column: 9, scope: !71)
!104 = !DILocation(line: 60, column: 27, scope: !71)
!105 = !DILocation(line: 60, column: 9, scope: !71)
!106 = !DILocation(line: 60, column: 14, scope: !71)
!107 = !DILocation(line: 60, column: 25, scope: !71)
!108 = !DILocation(line: 61, column: 5, scope: !71)
!109 = !DILocation(line: 63, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !66, file: !1, line: 61, column: 12)
!111 = !DILocation(line: 64, column: 9, scope: !110)
!112 = !DILocation(line: 66, column: 16, scope: !110)
!113 = !DILocation(line: 66, column: 9, scope: !110)
!114 = !DILocation(line: 69, column: 5, scope: !49)
!115 = !DILocation(line: 70, column: 1, scope: !49)
!116 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 72, type: !117, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !45)
!117 = !DISubroutineType(types: !118)
!118 = !{!31}
!119 = !DILocalVariable(name: "obj", scope: !116, file: !1, line: 73, type: !13)
!120 = !DILocation(line: 73, column: 21, scope: !116)
!121 = !DILocalVariable(name: "set", scope: !116, file: !1, line: 74, type: !18)
!122 = !DILocation(line: 74, column: 17, scope: !116)
!123 = !DILocalVariable(name: "node", scope: !116, file: !1, line: 75, type: !24)
!124 = !DILocation(line: 75, column: 14, scope: !116)
!125 = !DILocation(line: 78, column: 28, scope: !116)
!126 = !DILocation(line: 78, column: 11, scope: !116)
!127 = !DILocation(line: 78, column: 9, scope: !116)
!128 = !DILocation(line: 79, column: 24, scope: !116)
!129 = !DILocation(line: 79, column: 5, scope: !116)
!130 = !DILocation(line: 82, column: 24, scope: !116)
!131 = !DILocation(line: 82, column: 11, scope: !116)
!132 = !DILocation(line: 82, column: 9, scope: !116)
!133 = !DILocation(line: 83, column: 24, scope: !116)
!134 = !DILocation(line: 83, column: 5, scope: !116)
!135 = !DILocation(line: 86, column: 22, scope: !116)
!136 = !DILocation(line: 86, column: 12, scope: !116)
!137 = !DILocation(line: 86, column: 10, scope: !116)
!138 = !DILocation(line: 87, column: 24, scope: !116)
!139 = !DILocation(line: 87, column: 5, scope: !116)
!140 = !DILocation(line: 90, column: 23, scope: !116)
!141 = !DILocation(line: 90, column: 5, scope: !116)
!142 = !DILocation(line: 90, column: 10, scope: !116)
!143 = !DILocation(line: 90, column: 21, scope: !116)
!144 = !DILocation(line: 93, column: 5, scope: !116)
!145 = !DILocation(line: 93, column: 10, scope: !116)
!146 = !DILocation(line: 93, column: 18, scope: !116)
!147 = !DILocation(line: 94, column: 25, scope: !116)
!148 = !DILocation(line: 94, column: 30, scope: !116)
!149 = !DILocation(line: 94, column: 24, scope: !116)
!150 = !DILocation(line: 94, column: 5, scope: !116)
!151 = !DILocation(line: 97, column: 17, scope: !116)
!152 = !DILocation(line: 97, column: 22, scope: !116)
!153 = !DILocation(line: 97, column: 29, scope: !116)
!154 = !DILocation(line: 97, column: 5, scope: !116)
!155 = !DILocation(line: 100, column: 25, scope: !116)
!156 = !DILocation(line: 100, column: 31, scope: !116)
!157 = !DILocation(line: 100, column: 24, scope: !116)
!158 = !DILocation(line: 100, column: 5, scope: !116)
!159 = !DILocation(line: 103, column: 25, scope: !116)
!160 = !DILocation(line: 103, column: 5, scope: !116)
!161 = !DILocation(line: 106, column: 10, scope: !116)
!162 = !DILocation(line: 106, column: 5, scope: !116)
!163 = !DILocation(line: 107, column: 10, scope: !116)
!164 = !DILocation(line: 107, column: 5, scope: !116)
!165 = !DILocation(line: 108, column: 10, scope: !116)
!166 = !DILocation(line: 108, column: 5, scope: !116)
!167 = !DILocation(line: 110, column: 5, scope: !116)
!168 = distinct !DISubprogram(name: "memset", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !45)
!169 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!170 = !DISubroutineType(types: !171)
!171 = !{!8, !8, !31, !172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 46, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DILocalVariable(name: "dst", arg: 1, scope: !168, file: !169, line: 12, type: !8)
!176 = !DILocation(line: 12, column: 20, scope: !168)
!177 = !DILocalVariable(name: "s", arg: 2, scope: !168, file: !169, line: 12, type: !31)
!178 = !DILocation(line: 12, column: 29, scope: !168)
!179 = !DILocalVariable(name: "count", arg: 3, scope: !168, file: !169, line: 12, type: !172)
!180 = !DILocation(line: 12, column: 39, scope: !168)
!181 = !DILocalVariable(name: "a", scope: !168, file: !169, line: 13, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!184 = !DILocation(line: 13, column: 9, scope: !168)
!185 = !DILocation(line: 13, column: 13, scope: !168)
!186 = !DILocation(line: 14, column: 3, scope: !168)
!187 = !DILocation(line: 14, column: 15, scope: !168)
!188 = !DILocation(line: 14, column: 18, scope: !168)
!189 = !DILocation(line: 15, column: 12, scope: !168)
!190 = !DILocation(line: 15, column: 7, scope: !168)
!191 = !DILocation(line: 15, column: 10, scope: !168)
!192 = distinct !{!192, !186, !189, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 16, column: 10, scope: !168)
!195 = !DILocation(line: 16, column: 3, scope: !168)
