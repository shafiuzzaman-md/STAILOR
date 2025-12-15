; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"destroying namespaces stack\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"(cur->nsMax >= 0 && cur->nsMax * sizeof(xmlNsPtr) >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlC14NVisibleNsStackDestroy = private unnamed_addr constant [60 x i8] c"void xmlC14NVisibleNsStackDestroy(xmlC14NVisibleNsStackPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NErrParam(i8* noundef %0) #0 !dbg !33 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i8*, i8** %2, align 8, !dbg !48
  call void @free(i8* noundef %3) #7, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !54, metadata !DIExpression()), !dbg !55
  %3 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !56
  %4 = bitcast i8* %3 to %struct._xmlC14NVisibleNsStack*, !dbg !57
  store %struct._xmlC14NVisibleNsStack* %4, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !55
  %5 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !58
  %6 = icmp eq %struct._xmlC14NVisibleNsStack* %5, null, !dbg !60
  br i1 %6, label %7, label %8, !dbg !61

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !62
  br label %83, !dbg !62

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !63
  %10 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %9, i32 0, i32 2, !dbg !64
  %11 = bitcast i32* %10 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !66
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !67
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 2, !dbg !68
  %14 = load i32, i32* %13, align 8, !dbg !68
  %15 = icmp sge i32 %14, 0, !dbg !69
  %16 = zext i1 %15 to i32, !dbg !69
  %17 = sext i32 %16 to i64, !dbg !67
  call void @klee_assume(i64 noundef %17), !dbg !70
  %18 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !71
  %19 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %18, i32 0, i32 2, !dbg !72
  %20 = load i32, i32* %19, align 8, !dbg !72
  %21 = icmp sle i32 %20, 1024, !dbg !73
  %22 = zext i1 %21 to i32, !dbg !73
  %23 = sext i32 %22 to i64, !dbg !71
  call void @klee_assume(i64 noundef %23), !dbg !74
  %24 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !75
  %25 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %24, i32 0, i32 2, !dbg !77
  %26 = load i32, i32* %25, align 8, !dbg !77
  %27 = icmp sgt i32 %26, 0, !dbg !78
  br i1 %27, label %28, label %46, !dbg !79

28:                                               ; preds = %8
  %29 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !80
  %30 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %29, i32 0, i32 2, !dbg !82
  %31 = load i32, i32* %30, align 8, !dbg !82
  %32 = sext i32 %31 to i64, !dbg !80
  %33 = mul i64 %32, 8, !dbg !83
  %34 = call noalias i8* @malloc(i64 noundef %33) #7, !dbg !84
  %35 = bitcast i8* %34 to %struct._xmlNs**, !dbg !85
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !86
  %37 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %36, i32 0, i32 0, !dbg !87
  store %struct._xmlNs** %35, %struct._xmlNs*** %37, align 8, !dbg !88
  %38 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !89
  %39 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %38, i32 0, i32 0, !dbg !91
  %40 = load %struct._xmlNs**, %struct._xmlNs*** %39, align 8, !dbg !91
  %41 = icmp eq %struct._xmlNs** %40, null, !dbg !92
  br i1 %41, label %42, label %45, !dbg !93

42:                                               ; preds = %28
  %43 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !94
  %44 = bitcast %struct._xmlC14NVisibleNsStack* %43 to i8*, !dbg !94
  call void @free(i8* noundef %44) #7, !dbg !96
  store i32 0, i32* %1, align 4, !dbg !97
  br label %83, !dbg !97

45:                                               ; preds = %28
  br label %49, !dbg !98

46:                                               ; preds = %8
  %47 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !99
  %48 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %47, i32 0, i32 0, !dbg !101
  store %struct._xmlNs** null, %struct._xmlNs*** %48, align 8, !dbg !102
  br label %49

49:                                               ; preds = %46, %45
  %50 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !103
  %51 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %50, i32 0, i32 2, !dbg !105
  %52 = load i32, i32* %51, align 8, !dbg !105
  %53 = icmp sgt i32 %52, 0, !dbg !106
  br i1 %53, label %54, label %76, !dbg !107

54:                                               ; preds = %49
  %55 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !108
  %56 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %55, i32 0, i32 2, !dbg !110
  %57 = load i32, i32* %56, align 8, !dbg !110
  %58 = sext i32 %57 to i64, !dbg !108
  %59 = mul i64 %58, 8, !dbg !111
  %60 = call noalias i8* @malloc(i64 noundef %59) #7, !dbg !112
  %61 = bitcast i8* %60 to %struct._xmlNode**, !dbg !113
  %62 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !114
  %63 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %62, i32 0, i32 1, !dbg !115
  store %struct._xmlNode** %61, %struct._xmlNode*** %63, align 8, !dbg !116
  %64 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !117
  %65 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %64, i32 0, i32 1, !dbg !119
  %66 = load %struct._xmlNode**, %struct._xmlNode*** %65, align 8, !dbg !119
  %67 = icmp eq %struct._xmlNode** %66, null, !dbg !120
  br i1 %67, label %68, label %75, !dbg !121

68:                                               ; preds = %54
  %69 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !122
  %70 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %69, i32 0, i32 0, !dbg !124
  %71 = load %struct._xmlNs**, %struct._xmlNs*** %70, align 8, !dbg !124
  %72 = bitcast %struct._xmlNs** %71 to i8*, !dbg !122
  call void @free(i8* noundef %72) #7, !dbg !125
  %73 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !126
  %74 = bitcast %struct._xmlC14NVisibleNsStack* %73 to i8*, !dbg !126
  call void @free(i8* noundef %74) #7, !dbg !127
  store i32 0, i32* %1, align 4, !dbg !128
  br label %83, !dbg !128

75:                                               ; preds = %54
  br label %79, !dbg !129

76:                                               ; preds = %49
  %77 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !130
  %78 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %77, i32 0, i32 1, !dbg !132
  store %struct._xmlNode** null, %struct._xmlNode*** %78, align 8, !dbg !133
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !134
  %81 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %80, i32 0, i32 3, !dbg !135
  store i32 0, i32* %81, align 4, !dbg !136
  %82 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !137
  call void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %82), !dbg !138
  store i32 0, i32* %1, align 4, !dbg !139
  br label %83, !dbg !139

83:                                               ; preds = %79, %68, %42, %7
  %84 = load i32, i32* %1, align 4, !dbg !140
  ret i32 %84, !dbg !140
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlC14NVisibleNsStackDestroy(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !141 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !144, metadata !DIExpression()), !dbg !145
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !146
  %4 = icmp eq %struct._xmlC14NVisibleNsStack* %3, null, !dbg !148
  br i1 %4, label %5, label %6, !dbg !149

5:                                                ; preds = %1
  call void @xmlC14NErrParam(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0)), !dbg !150
  br label %69, !dbg !152

6:                                                ; preds = %1
  %7 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !153
  %8 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %7, i32 0, i32 0, !dbg !155
  %9 = load %struct._xmlNs**, %struct._xmlNs*** %8, align 8, !dbg !155
  %10 = icmp ne %struct._xmlNs** %9, null, !dbg !156
  br i1 %10, label %11, label %43, !dbg !157

11:                                               ; preds = %6
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !158
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 0, !dbg !160
  %14 = load %struct._xmlNs**, %struct._xmlNs*** %13, align 8, !dbg !160
  %15 = bitcast %struct._xmlNs** %14 to i8*, !dbg !161
  %16 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !162
  %17 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %16, i32 0, i32 2, !dbg !163
  %18 = load i32, i32* %17, align 8, !dbg !163
  %19 = sext i32 %18 to i64, !dbg !162
  %20 = mul i64 %19, 8, !dbg !164
  %21 = call i8* @memset(i8* %15, i32 0, i64 %20), !dbg !161
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !165
  %23 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %22, i32 0, i32 2, !dbg !165
  %24 = load i32, i32* %23, align 8, !dbg !165
  %25 = icmp sge i32 %24, 0, !dbg !165
  br i1 %25, label %26, label %35, !dbg !165

26:                                               ; preds = %11
  %27 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !165
  %28 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %27, i32 0, i32 2, !dbg !165
  %29 = load i32, i32* %28, align 8, !dbg !165
  %30 = sext i32 %29 to i64, !dbg !165
  %31 = mul i64 %30, 8, !dbg !165
  %32 = icmp uge i64 %31, 0, !dbg !165
  br i1 %32, label %33, label %35, !dbg !165

33:                                               ; preds = %26
  br i1 true, label %34, label %35, !dbg !165

34:                                               ; preds = %33
  br label %37, !dbg !165

35:                                               ; preds = %33, %26, %11
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.xmlC14NVisibleNsStackDestroy, i64 0, i64 0)), !dbg !165
  br label %37, !dbg !165

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.xmlC14NVisibleNsStackDestroy, i64 0, i64 0)), !dbg !166
  %39 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !167
  %40 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %39, i32 0, i32 0, !dbg !168
  %41 = load %struct._xmlNs**, %struct._xmlNs*** %40, align 8, !dbg !168
  %42 = bitcast %struct._xmlNs** %41 to i8*, !dbg !167
  call void @xmlFree(i8* noundef %42), !dbg !169
  br label %43, !dbg !170

43:                                               ; preds = %37, %6
  %44 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !171
  %45 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %44, i32 0, i32 1, !dbg !173
  %46 = load %struct._xmlNode**, %struct._xmlNode*** %45, align 8, !dbg !173
  %47 = icmp ne %struct._xmlNode** %46, null, !dbg !174
  br i1 %47, label %48, label %63, !dbg !175

48:                                               ; preds = %43
  %49 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !176
  %50 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %49, i32 0, i32 1, !dbg !178
  %51 = load %struct._xmlNode**, %struct._xmlNode*** %50, align 8, !dbg !178
  %52 = bitcast %struct._xmlNode** %51 to i8*, !dbg !179
  %53 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !180
  %54 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %53, i32 0, i32 2, !dbg !181
  %55 = load i32, i32* %54, align 8, !dbg !181
  %56 = sext i32 %55 to i64, !dbg !180
  %57 = mul i64 %56, 8, !dbg !182
  %58 = call i8* @memset(i8* %52, i32 0, i64 %57), !dbg !179
  %59 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !183
  %60 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %59, i32 0, i32 1, !dbg !184
  %61 = load %struct._xmlNode**, %struct._xmlNode*** %60, align 8, !dbg !184
  %62 = bitcast %struct._xmlNode** %61 to i8*, !dbg !183
  call void @xmlFree(i8* noundef %62), !dbg !185
  br label %63, !dbg !186

63:                                               ; preds = %48, %43
  %64 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !187
  %65 = bitcast %struct._xmlC14NVisibleNsStack* %64 to i8*, !dbg !188
  %66 = call i8* @memset(i8* %65, i32 0, i64 24), !dbg !188
  %67 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !189
  %68 = bitcast %struct._xmlC14NVisibleNsStack* %67 to i8*, !dbg !189
  call void @xmlFree(i8* noundef %68), !dbg !190
  br label %69, !dbg !191

69:                                               ; preds = %63, %5
  ret void, !dbg !191
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !192 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !201, metadata !DIExpression()), !dbg !202
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i8** %7, metadata !205, metadata !DIExpression()), !dbg !207
  %8 = load i8*, i8** %4, align 8, !dbg !208
  store i8* %8, i8** %7, align 8, !dbg !207
  br label %9, !dbg !209

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !210
  %11 = add i64 %10, -1, !dbg !210
  store i64 %11, i64* %6, align 8, !dbg !210
  %12 = icmp ugt i64 %10, 0, !dbg !211
  br i1 %12, label %13, label %18, !dbg !209

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !212
  %15 = trunc i32 %14 to i8, !dbg !212
  %16 = load i8*, i8** %7, align 8, !dbg !213
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !213
  store i8* %17, i8** %7, align 8, !dbg !213
  store i8 %15, i8* %16, align 1, !dbg !214
  br label %9, !dbg !209, !llvm.loop !215

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !217
  ret i8* %19, !dbg !218
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/039_c14n.c_300_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9645a5498cbb4d82e908f6ecd7ac5c4e")
!2 = !{!3, !22, !8, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackPtr", file: !1, line: 21, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 16, size: 192, elements: !6)
!6 = !{!7, !13, !19, !21}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !5, file: !1, line: 17, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !12)
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !5, file: !1, line: 18, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !5, file: !1, line: 19, baseType: !20, size: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nsTop", scope: !5, file: !1, line: 20, baseType: !20, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlC14NErrParam", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{}
!40 = !DILocalVariable(name: "msg", arg: 1, scope: !33, file: !1, line: 24, type: !36)
!41 = !DILocation(line: 24, column: 34, scope: !33)
!42 = !DILocation(line: 26, column: 1, scope: !33)
!43 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 29, type: !44, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !22}
!46 = !DILocalVariable(name: "ptr", arg: 1, scope: !43, file: !1, line: 29, type: !22)
!47 = !DILocation(line: 29, column: 20, scope: !43)
!48 = !DILocation(line: 30, column: 10, scope: !43)
!49 = !DILocation(line: 30, column: 5, scope: !43)
!50 = !DILocation(line: 31, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !52, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!52 = !DISubroutineType(types: !53)
!53 = !{!20}
!54 = !DILocalVariable(name: "stack", scope: !51, file: !1, line: 56, type: !3)
!55 = !DILocation(line: 56, column: 30, scope: !51)
!56 = !DILocation(line: 56, column: 64, scope: !51)
!57 = !DILocation(line: 56, column: 38, scope: !51)
!58 = !DILocation(line: 57, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 57, column: 9)
!60 = !DILocation(line: 57, column: 15, scope: !59)
!61 = !DILocation(line: 57, column: 9, scope: !51)
!62 = !DILocation(line: 57, column: 24, scope: !59)
!63 = !DILocation(line: 60, column: 25, scope: !51)
!64 = !DILocation(line: 60, column: 32, scope: !51)
!65 = !DILocation(line: 60, column: 24, scope: !51)
!66 = !DILocation(line: 60, column: 5, scope: !51)
!67 = !DILocation(line: 63, column: 17, scope: !51)
!68 = !DILocation(line: 63, column: 24, scope: !51)
!69 = !DILocation(line: 63, column: 30, scope: !51)
!70 = !DILocation(line: 63, column: 5, scope: !51)
!71 = !DILocation(line: 64, column: 17, scope: !51)
!72 = !DILocation(line: 64, column: 24, scope: !51)
!73 = !DILocation(line: 64, column: 30, scope: !51)
!74 = !DILocation(line: 64, column: 5, scope: !51)
!75 = !DILocation(line: 67, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !51, file: !1, line: 67, column: 9)
!77 = !DILocation(line: 67, column: 16, scope: !76)
!78 = !DILocation(line: 67, column: 22, scope: !76)
!79 = !DILocation(line: 67, column: 9, scope: !51)
!80 = !DILocation(line: 68, column: 42, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 67, column: 27)
!82 = !DILocation(line: 68, column: 49, scope: !81)
!83 = !DILocation(line: 68, column: 55, scope: !81)
!84 = !DILocation(line: 68, column: 35, scope: !81)
!85 = !DILocation(line: 68, column: 24, scope: !81)
!86 = !DILocation(line: 68, column: 9, scope: !81)
!87 = !DILocation(line: 68, column: 16, scope: !81)
!88 = !DILocation(line: 68, column: 22, scope: !81)
!89 = !DILocation(line: 69, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !81, file: !1, line: 69, column: 13)
!91 = !DILocation(line: 69, column: 20, scope: !90)
!92 = !DILocation(line: 69, column: 26, scope: !90)
!93 = !DILocation(line: 69, column: 13, scope: !81)
!94 = !DILocation(line: 70, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 69, column: 35)
!96 = !DILocation(line: 70, column: 13, scope: !95)
!97 = !DILocation(line: 71, column: 13, scope: !95)
!98 = !DILocation(line: 73, column: 5, scope: !81)
!99 = !DILocation(line: 74, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !76, file: !1, line: 73, column: 12)
!101 = !DILocation(line: 74, column: 16, scope: !100)
!102 = !DILocation(line: 74, column: 22, scope: !100)
!103 = !DILocation(line: 78, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !51, file: !1, line: 78, column: 9)
!105 = !DILocation(line: 78, column: 16, scope: !104)
!106 = !DILocation(line: 78, column: 22, scope: !104)
!107 = !DILocation(line: 78, column: 9, scope: !51)
!108 = !DILocation(line: 79, column: 46, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 78, column: 27)
!110 = !DILocation(line: 79, column: 53, scope: !109)
!111 = !DILocation(line: 79, column: 59, scope: !109)
!112 = !DILocation(line: 79, column: 39, scope: !109)
!113 = !DILocation(line: 79, column: 26, scope: !109)
!114 = !DILocation(line: 79, column: 9, scope: !109)
!115 = !DILocation(line: 79, column: 16, scope: !109)
!116 = !DILocation(line: 79, column: 24, scope: !109)
!117 = !DILocation(line: 80, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !109, file: !1, line: 80, column: 13)
!119 = !DILocation(line: 80, column: 20, scope: !118)
!120 = !DILocation(line: 80, column: 28, scope: !118)
!121 = !DILocation(line: 80, column: 13, scope: !109)
!122 = !DILocation(line: 81, column: 18, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 80, column: 37)
!124 = !DILocation(line: 81, column: 25, scope: !123)
!125 = !DILocation(line: 81, column: 13, scope: !123)
!126 = !DILocation(line: 82, column: 18, scope: !123)
!127 = !DILocation(line: 82, column: 13, scope: !123)
!128 = !DILocation(line: 83, column: 13, scope: !123)
!129 = !DILocation(line: 85, column: 5, scope: !109)
!130 = !DILocation(line: 86, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !104, file: !1, line: 85, column: 12)
!132 = !DILocation(line: 86, column: 16, scope: !131)
!133 = !DILocation(line: 86, column: 24, scope: !131)
!134 = !DILocation(line: 89, column: 5, scope: !51)
!135 = !DILocation(line: 89, column: 12, scope: !51)
!136 = !DILocation(line: 89, column: 18, scope: !51)
!137 = !DILocation(line: 92, column: 34, scope: !51)
!138 = !DILocation(line: 92, column: 5, scope: !51)
!139 = !DILocation(line: 94, column: 5, scope: !51)
!140 = !DILocation(line: 95, column: 1, scope: !51)
!141 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackDestroy", scope: !1, file: !1, line: 34, type: !142, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !3}
!144 = !DILocalVariable(name: "cur", arg: 1, scope: !141, file: !1, line: 34, type: !3)
!145 = !DILocation(line: 34, column: 67, scope: !141)
!146 = !DILocation(line: 35, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 35, column: 8)
!148 = !DILocation(line: 35, column: 12, scope: !147)
!149 = !DILocation(line: 35, column: 8, scope: !141)
!150 = !DILocation(line: 36, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 35, column: 21)
!152 = !DILocation(line: 37, column: 9, scope: !151)
!153 = !DILocation(line: 39, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !141, file: !1, line: 39, column: 8)
!155 = !DILocation(line: 39, column: 13, scope: !154)
!156 = !DILocation(line: 39, column: 19, scope: !154)
!157 = !DILocation(line: 39, column: 8, scope: !141)
!158 = !DILocation(line: 41, column: 16, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 39, column: 28)
!160 = !DILocation(line: 41, column: 21, scope: !159)
!161 = !DILocation(line: 41, column: 9, scope: !159)
!162 = !DILocation(line: 41, column: 31, scope: !159)
!163 = !DILocation(line: 41, column: 36, scope: !159)
!164 = !DILocation(line: 41, column: 42, scope: !159)
!165 = !DILocation(line: 42, column: 9, scope: !159)
!166 = !DILocation(line: 43, column: 9, scope: !159)
!167 = !DILocation(line: 44, column: 17, scope: !159)
!168 = !DILocation(line: 44, column: 22, scope: !159)
!169 = !DILocation(line: 44, column: 9, scope: !159)
!170 = !DILocation(line: 45, column: 5, scope: !159)
!171 = !DILocation(line: 46, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !141, file: !1, line: 46, column: 8)
!173 = !DILocation(line: 46, column: 13, scope: !172)
!174 = !DILocation(line: 46, column: 21, scope: !172)
!175 = !DILocation(line: 46, column: 8, scope: !141)
!176 = !DILocation(line: 47, column: 16, scope: !177)
!177 = distinct !DILexicalBlock(scope: !172, file: !1, line: 46, column: 30)
!178 = !DILocation(line: 47, column: 21, scope: !177)
!179 = !DILocation(line: 47, column: 9, scope: !177)
!180 = !DILocation(line: 47, column: 33, scope: !177)
!181 = !DILocation(line: 47, column: 38, scope: !177)
!182 = !DILocation(line: 47, column: 44, scope: !177)
!183 = !DILocation(line: 48, column: 17, scope: !177)
!184 = !DILocation(line: 48, column: 22, scope: !177)
!185 = !DILocation(line: 48, column: 9, scope: !177)
!186 = !DILocation(line: 49, column: 5, scope: !177)
!187 = !DILocation(line: 50, column: 12, scope: !141)
!188 = !DILocation(line: 50, column: 5, scope: !141)
!189 = !DILocation(line: 51, column: 13, scope: !141)
!190 = !DILocation(line: 51, column: 5, scope: !141)
!191 = !DILocation(line: 52, column: 1, scope: !141)
!192 = distinct !DISubprogram(name: "memset", scope: !193, file: !193, line: 12, type: !194, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !39)
!193 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!194 = !DISubroutineType(types: !195)
!195 = !{!22, !22, !20, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !197, line: 46, baseType: !198)
!197 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!198 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!199 = !DILocalVariable(name: "dst", arg: 1, scope: !192, file: !193, line: 12, type: !22)
!200 = !DILocation(line: 12, column: 20, scope: !192)
!201 = !DILocalVariable(name: "s", arg: 2, scope: !192, file: !193, line: 12, type: !20)
!202 = !DILocation(line: 12, column: 29, scope: !192)
!203 = !DILocalVariable(name: "count", arg: 3, scope: !192, file: !193, line: 12, type: !196)
!204 = !DILocation(line: 12, column: 39, scope: !192)
!205 = !DILocalVariable(name: "a", scope: !192, file: !193, line: 13, type: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!207 = !DILocation(line: 13, column: 9, scope: !192)
!208 = !DILocation(line: 13, column: 13, scope: !192)
!209 = !DILocation(line: 14, column: 3, scope: !192)
!210 = !DILocation(line: 14, column: 15, scope: !192)
!211 = !DILocation(line: 14, column: 18, scope: !192)
!212 = !DILocation(line: 15, column: 12, scope: !192)
!213 = !DILocation(line: 15, column: 7, scope: !192)
!214 = !DILocation(line: 15, column: 10, scope: !192)
!215 = distinct !{!215, !209, !212, !216}
!216 = !{!"llvm.loop.mustprogress"}
!217 = !DILocation(line: 16, column: 10, scope: !192)
!218 = !DILocation(line: 16, column: 3, scope: !192)
