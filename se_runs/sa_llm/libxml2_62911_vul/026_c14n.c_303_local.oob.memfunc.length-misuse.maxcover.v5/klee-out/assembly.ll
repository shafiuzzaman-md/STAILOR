; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/026_c14n.c_303_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/026_c14n.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, i32, %struct._xmlNode**, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nodeMax\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"(cur->nsMax >= 0 && cur->nsMax <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/026_c14n.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !33 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i8*, i8** %2, align 8, !dbg !39
  call void @free(i8* noundef %3) #7, !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NProcessAttrsAxis(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !42 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !45, metadata !DIExpression()), !dbg !46
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !47
  %4 = icmp eq %struct._xmlC14NVisibleNsStack* %3, null, !dbg !49
  br i1 %4, label %5, label %6, !dbg !50

5:                                                ; preds = %1
  br label %52, !dbg !51

6:                                                ; preds = %1
  %7 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !52
  %8 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %7, i32 0, i32 0, !dbg !54
  %9 = load %struct._xmlNs**, %struct._xmlNs*** %8, align 8, !dbg !54
  %10 = icmp ne %struct._xmlNs** %9, null, !dbg !55
  br i1 %10, label %11, label %26, !dbg !56

11:                                               ; preds = %6
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !57
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 0, !dbg !59
  %14 = load %struct._xmlNs**, %struct._xmlNs*** %13, align 8, !dbg !59
  %15 = bitcast %struct._xmlNs** %14 to i8*, !dbg !60
  %16 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !61
  %17 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %16, i32 0, i32 1, !dbg !62
  %18 = load i32, i32* %17, align 8, !dbg !62
  %19 = sext i32 %18 to i64, !dbg !61
  %20 = mul i64 %19, 8, !dbg !63
  %21 = call i8* @memset(i8* %15, i32 0, i64 %20), !dbg !60
  %22 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !64
  %23 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %22, i32 0, i32 0, !dbg !65
  %24 = load %struct._xmlNs**, %struct._xmlNs*** %23, align 8, !dbg !65
  %25 = bitcast %struct._xmlNs** %24 to i8*, !dbg !64
  call void @xmlFree(i8* noundef %25), !dbg !66
  br label %26, !dbg !67

26:                                               ; preds = %11, %6
  %27 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !68
  %28 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %27, i32 0, i32 2, !dbg !70
  %29 = load %struct._xmlNode**, %struct._xmlNode*** %28, align 8, !dbg !70
  %30 = icmp ne %struct._xmlNode** %29, null, !dbg !71
  br i1 %30, label %31, label %46, !dbg !72

31:                                               ; preds = %26
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !73
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 2, !dbg !75
  %34 = load %struct._xmlNode**, %struct._xmlNode*** %33, align 8, !dbg !75
  %35 = bitcast %struct._xmlNode** %34 to i8*, !dbg !76
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !77
  %37 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %36, i32 0, i32 1, !dbg !78
  %38 = load i32, i32* %37, align 8, !dbg !78
  %39 = sext i32 %38 to i64, !dbg !77
  %40 = mul i64 %39, 8, !dbg !79
  %41 = call i8* @memset(i8* %35, i32 0, i64 %40), !dbg !76
  %42 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !80
  %43 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %42, i32 0, i32 2, !dbg !81
  %44 = load %struct._xmlNode**, %struct._xmlNode*** %43, align 8, !dbg !81
  %45 = bitcast %struct._xmlNode** %44 to i8*, !dbg !80
  call void @xmlFree(i8* noundef %45), !dbg !82
  br label %46, !dbg !83

46:                                               ; preds = %31, %26
  %47 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !84
  %48 = bitcast %struct._xmlC14NVisibleNsStack* %47 to i8*, !dbg !85
  %49 = call i8* @memset(i8* %48, i32 0, i64 32), !dbg !85
  %50 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !86
  %51 = bitcast %struct._xmlC14NVisibleNsStack* %50 to i8*, !dbg !86
  call void @xmlFree(i8* noundef %51), !dbg !87
  br label %52, !dbg !88

52:                                               ; preds = %46, %5
  ret void, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !92, metadata !DIExpression()), !dbg !93
  %3 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !94
  %4 = bitcast i8* %3 to %struct._xmlC14NVisibleNsStack*, !dbg !95
  store %struct._xmlC14NVisibleNsStack* %4, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !93
  %5 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !96
  %6 = icmp eq %struct._xmlC14NVisibleNsStack* %5, null, !dbg !98
  br i1 %6, label %7, label %8, !dbg !99

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !100
  br label %131, !dbg !100

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !101
  %10 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %9, i32 0, i32 1, !dbg !102
  %11 = bitcast i32* %10 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !104
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !105
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 3, !dbg !106
  %14 = bitcast i32* %13 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  %15 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !109
  %16 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %15, i32 0, i32 1, !dbg !110
  %17 = load i32, i32* %16, align 8, !dbg !110
  %18 = icmp sge i32 %17, 0, !dbg !111
  br i1 %18, label %19, label %24, !dbg !112

19:                                               ; preds = %8
  %20 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !113
  %21 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %20, i32 0, i32 1, !dbg !114
  %22 = load i32, i32* %21, align 8, !dbg !114
  %23 = icmp sle i32 %22, 1024, !dbg !115
  br label %24

24:                                               ; preds = %19, %8
  %25 = phi i1 [ false, %8 ], [ %23, %19 ], !dbg !116
  %26 = zext i1 %25 to i32, !dbg !112
  %27 = sext i32 %26 to i64, !dbg !109
  call void @klee_assume(i64 noundef %27), !dbg !117
  %28 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !118
  %29 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %28, i32 0, i32 3, !dbg !119
  %30 = load i32, i32* %29, align 8, !dbg !119
  %31 = icmp sge i32 %30, 0, !dbg !120
  br i1 %31, label %32, label %37, !dbg !121

32:                                               ; preds = %24
  %33 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !122
  %34 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %33, i32 0, i32 3, !dbg !123
  %35 = load i32, i32* %34, align 8, !dbg !123
  %36 = icmp sle i32 %35, 1024, !dbg !124
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ false, %24 ], [ %36, %32 ], !dbg !116
  %39 = zext i1 %38 to i32, !dbg !121
  %40 = sext i32 %39 to i64, !dbg !118
  call void @klee_assume(i64 noundef %40), !dbg !125
  %41 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !126
  %42 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %41, i32 0, i32 1, !dbg !128
  %43 = load i32, i32* %42, align 8, !dbg !128
  %44 = icmp sgt i32 %43, 0, !dbg !129
  br i1 %44, label %45, label %61, !dbg !130

45:                                               ; preds = %37
  %46 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !131
  %47 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %46, i32 0, i32 1, !dbg !133
  %48 = load i32, i32* %47, align 8, !dbg !133
  %49 = sext i32 %48 to i64, !dbg !131
  %50 = mul i64 %49, 8, !dbg !134
  %51 = call noalias i8* @malloc(i64 noundef %50) #7, !dbg !135
  %52 = bitcast i8* %51 to %struct._xmlNs**, !dbg !136
  %53 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !137
  %54 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %53, i32 0, i32 0, !dbg !138
  store %struct._xmlNs** %52, %struct._xmlNs*** %54, align 8, !dbg !139
  %55 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !140
  %56 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %55, i32 0, i32 0, !dbg !141
  %57 = load %struct._xmlNs**, %struct._xmlNs*** %56, align 8, !dbg !141
  %58 = icmp ne %struct._xmlNs** %57, null, !dbg !142
  %59 = zext i1 %58 to i32, !dbg !142
  %60 = sext i32 %59 to i64, !dbg !140
  call void @klee_assume(i64 noundef %60), !dbg !143
  br label %64, !dbg !144

61:                                               ; preds = %37
  %62 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !145
  %63 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %62, i32 0, i32 0, !dbg !147
  store %struct._xmlNs** null, %struct._xmlNs*** %63, align 8, !dbg !148
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !149
  %66 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %65, i32 0, i32 3, !dbg !151
  %67 = load i32, i32* %66, align 8, !dbg !151
  %68 = icmp sgt i32 %67, 0, !dbg !152
  br i1 %68, label %69, label %85, !dbg !153

69:                                               ; preds = %64
  %70 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !154
  %71 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %70, i32 0, i32 3, !dbg !156
  %72 = load i32, i32* %71, align 8, !dbg !156
  %73 = sext i32 %72 to i64, !dbg !154
  %74 = mul i64 %73, 8, !dbg !157
  %75 = call noalias i8* @malloc(i64 noundef %74) #7, !dbg !158
  %76 = bitcast i8* %75 to %struct._xmlNode**, !dbg !159
  %77 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !160
  %78 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %77, i32 0, i32 2, !dbg !161
  store %struct._xmlNode** %76, %struct._xmlNode*** %78, align 8, !dbg !162
  %79 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !163
  %80 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %79, i32 0, i32 2, !dbg !164
  %81 = load %struct._xmlNode**, %struct._xmlNode*** %80, align 8, !dbg !164
  %82 = icmp ne %struct._xmlNode** %81, null, !dbg !165
  %83 = zext i1 %82 to i32, !dbg !165
  %84 = sext i32 %83 to i64, !dbg !163
  call void @klee_assume(i64 noundef %84), !dbg !166
  br label %88, !dbg !167

85:                                               ; preds = %64
  %86 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !168
  %87 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %86, i32 0, i32 2, !dbg !170
  store %struct._xmlNode** null, %struct._xmlNode*** %87, align 8, !dbg !171
  br label %88

88:                                               ; preds = %85, %69
  %89 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !172
  call void @xmlC14NProcessAttrsAxis(%struct._xmlC14NVisibleNsStack* noundef %89), !dbg !173
  %90 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !174
  %91 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %90, i32 0, i32 0, !dbg !176
  %92 = load %struct._xmlNs**, %struct._xmlNs*** %91, align 8, !dbg !176
  %93 = icmp ne %struct._xmlNs** %92, null, !dbg !177
  br i1 %93, label %94, label %109, !dbg !178

94:                                               ; preds = %88
  %95 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !179
  %96 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %95, i32 0, i32 1, !dbg !179
  %97 = load i32, i32* %96, align 8, !dbg !179
  %98 = icmp sge i32 %97, 0, !dbg !179
  br i1 %98, label %99, label %106, !dbg !179

99:                                               ; preds = %94
  %100 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !179
  %101 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %100, i32 0, i32 1, !dbg !179
  %102 = load i32, i32* %101, align 8, !dbg !179
  %103 = icmp sle i32 %102, 1024, !dbg !179
  br i1 %103, label %104, label %106, !dbg !179

104:                                              ; preds = %99
  br i1 true, label %105, label %106, !dbg !179

105:                                              ; preds = %104
  br label %108, !dbg !179

106:                                              ; preds = %104, %99, %94
  %107 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !179
  br label %108, !dbg !179

108:                                              ; preds = %106, %105
  br label %109, !dbg !181

109:                                              ; preds = %108, %88
  %110 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !182
  %111 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %110, i32 0, i32 2, !dbg !184
  %112 = load %struct._xmlNode**, %struct._xmlNode*** %111, align 8, !dbg !184
  %113 = icmp ne %struct._xmlNode** %112, null, !dbg !185
  br i1 %113, label %114, label %129, !dbg !186

114:                                              ; preds = %109
  %115 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !187
  %116 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %115, i32 0, i32 1, !dbg !187
  %117 = load i32, i32* %116, align 8, !dbg !187
  %118 = icmp sge i32 %117, 0, !dbg !187
  br i1 %118, label %119, label %126, !dbg !187

119:                                              ; preds = %114
  %120 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !187
  %121 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %120, i32 0, i32 1, !dbg !187
  %122 = load i32, i32* %121, align 8, !dbg !187
  %123 = icmp sle i32 %122, 1024, !dbg !187
  br i1 %123, label %124, label %126, !dbg !187

124:                                              ; preds = %119
  br i1 true, label %125, label %126, !dbg !187

125:                                              ; preds = %124
  br label %128, !dbg !187

126:                                              ; preds = %124, %119, %114
  %127 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !187
  br label %128, !dbg !187

128:                                              ; preds = %126, %125
  br label %129, !dbg !189

129:                                              ; preds = %128, %109
  %130 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !190
  store i32 0, i32* %1, align 4, !dbg !191
  br label %131, !dbg !191

131:                                              ; preds = %129, %7
  %132 = load i32, i32* %1, align 4, !dbg !192
  ret i32 %132, !dbg !192
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !193 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !200, metadata !DIExpression()), !dbg !201
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !202, metadata !DIExpression()), !dbg !203
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata i8** %7, metadata !206, metadata !DIExpression()), !dbg !209
  %8 = load i8*, i8** %4, align 8, !dbg !210
  store i8* %8, i8** %7, align 8, !dbg !209
  br label %9, !dbg !211

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !212
  %11 = add i64 %10, -1, !dbg !212
  store i64 %11, i64* %6, align 8, !dbg !212
  %12 = icmp ugt i64 %10, 0, !dbg !213
  br i1 %12, label %13, label %18, !dbg !211

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !214
  %15 = trunc i32 %14 to i8, !dbg !214
  %16 = load i8*, i8** %7, align 8, !dbg !215
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !215
  store i8* %17, i8** %7, align 8, !dbg !215
  store i8 %15, i8* %16, align 1, !dbg !216
  br label %9, !dbg !211, !llvm.loop !217

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !219
  ret i8* %19, !dbg !220
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/026_c14n.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "dab5a0620b20a995e044eda47c7ab535")
!2 = !{!3, !4, !9, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !1, line: 21, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 16, size: 256, elements: !7)
!7 = !{!8, !14, !16, !22}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !6, file: !1, line: 17, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !6, file: !1, line: 18, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !6, file: !1, line: 19, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nodeMax", scope: !6, file: !1, line: 20, baseType: !15, size: 32, offset: 192)
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
!33 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !3}
!36 = !{}
!37 = !DILocalVariable(name: "ptr", arg: 1, scope: !33, file: !1, line: 24, type: !3)
!38 = !DILocation(line: 24, column: 20, scope: !33)
!39 = !DILocation(line: 25, column: 10, scope: !33)
!40 = !DILocation(line: 25, column: 5, scope: !33)
!41 = !DILocation(line: 26, column: 1, scope: !33)
!42 = distinct !DISubprogram(name: "xmlC14NProcessAttrsAxis", scope: !1, file: !1, line: 29, type: !43, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !4}
!45 = !DILocalVariable(name: "cur", arg: 1, scope: !42, file: !1, line: 29, type: !4)
!46 = !DILocation(line: 29, column: 53, scope: !42)
!47 = !DILocation(line: 30, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 30, column: 9)
!49 = !DILocation(line: 30, column: 13, scope: !48)
!50 = !DILocation(line: 30, column: 9, scope: !42)
!51 = !DILocation(line: 30, column: 22, scope: !48)
!52 = !DILocation(line: 32, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 32, column: 9)
!54 = !DILocation(line: 32, column: 14, scope: !53)
!55 = !DILocation(line: 32, column: 20, scope: !53)
!56 = !DILocation(line: 32, column: 9, scope: !42)
!57 = !DILocation(line: 33, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 32, column: 29)
!59 = !DILocation(line: 33, column: 21, scope: !58)
!60 = !DILocation(line: 33, column: 9, scope: !58)
!61 = !DILocation(line: 33, column: 31, scope: !58)
!62 = !DILocation(line: 33, column: 36, scope: !58)
!63 = !DILocation(line: 33, column: 42, scope: !58)
!64 = !DILocation(line: 34, column: 17, scope: !58)
!65 = !DILocation(line: 34, column: 22, scope: !58)
!66 = !DILocation(line: 34, column: 9, scope: !58)
!67 = !DILocation(line: 35, column: 5, scope: !58)
!68 = !DILocation(line: 36, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !42, file: !1, line: 36, column: 9)
!70 = !DILocation(line: 36, column: 14, scope: !69)
!71 = !DILocation(line: 36, column: 22, scope: !69)
!72 = !DILocation(line: 36, column: 9, scope: !42)
!73 = !DILocation(line: 37, column: 16, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 36, column: 31)
!75 = !DILocation(line: 37, column: 21, scope: !74)
!76 = !DILocation(line: 37, column: 9, scope: !74)
!77 = !DILocation(line: 37, column: 33, scope: !74)
!78 = !DILocation(line: 37, column: 38, scope: !74)
!79 = !DILocation(line: 37, column: 44, scope: !74)
!80 = !DILocation(line: 38, column: 17, scope: !74)
!81 = !DILocation(line: 38, column: 22, scope: !74)
!82 = !DILocation(line: 38, column: 9, scope: !74)
!83 = !DILocation(line: 39, column: 5, scope: !74)
!84 = !DILocation(line: 40, column: 12, scope: !42)
!85 = !DILocation(line: 40, column: 5, scope: !42)
!86 = !DILocation(line: 41, column: 13, scope: !42)
!87 = !DILocation(line: 41, column: 5, scope: !42)
!88 = !DILocation(line: 42, column: 1, scope: !42)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 44, type: !90, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!90 = !DISubroutineType(types: !91)
!91 = !{!15}
!92 = !DILocalVariable(name: "cur", scope: !89, file: !1, line: 46, type: !4)
!93 = !DILocation(line: 46, column: 28, scope: !89)
!94 = !DILocation(line: 46, column: 58, scope: !89)
!95 = !DILocation(line: 46, column: 34, scope: !89)
!96 = !DILocation(line: 47, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 47, column: 9)
!98 = !DILocation(line: 47, column: 13, scope: !97)
!99 = !DILocation(line: 47, column: 9, scope: !89)
!100 = !DILocation(line: 47, column: 22, scope: !97)
!101 = !DILocation(line: 50, column: 25, scope: !89)
!102 = !DILocation(line: 50, column: 30, scope: !89)
!103 = !DILocation(line: 50, column: 24, scope: !89)
!104 = !DILocation(line: 50, column: 5, scope: !89)
!105 = !DILocation(line: 51, column: 25, scope: !89)
!106 = !DILocation(line: 51, column: 30, scope: !89)
!107 = !DILocation(line: 51, column: 24, scope: !89)
!108 = !DILocation(line: 51, column: 5, scope: !89)
!109 = !DILocation(line: 54, column: 17, scope: !89)
!110 = !DILocation(line: 54, column: 22, scope: !89)
!111 = !DILocation(line: 54, column: 28, scope: !89)
!112 = !DILocation(line: 54, column: 33, scope: !89)
!113 = !DILocation(line: 54, column: 36, scope: !89)
!114 = !DILocation(line: 54, column: 41, scope: !89)
!115 = !DILocation(line: 54, column: 47, scope: !89)
!116 = !DILocation(line: 0, scope: !89)
!117 = !DILocation(line: 54, column: 5, scope: !89)
!118 = !DILocation(line: 55, column: 17, scope: !89)
!119 = !DILocation(line: 55, column: 22, scope: !89)
!120 = !DILocation(line: 55, column: 30, scope: !89)
!121 = !DILocation(line: 55, column: 35, scope: !89)
!122 = !DILocation(line: 55, column: 38, scope: !89)
!123 = !DILocation(line: 55, column: 43, scope: !89)
!124 = !DILocation(line: 55, column: 51, scope: !89)
!125 = !DILocation(line: 55, column: 5, scope: !89)
!126 = !DILocation(line: 58, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !89, file: !1, line: 58, column: 9)
!128 = !DILocation(line: 58, column: 14, scope: !127)
!129 = !DILocation(line: 58, column: 20, scope: !127)
!130 = !DILocation(line: 58, column: 9, scope: !89)
!131 = !DILocation(line: 59, column: 40, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 58, column: 25)
!133 = !DILocation(line: 59, column: 45, scope: !132)
!134 = !DILocation(line: 59, column: 51, scope: !132)
!135 = !DILocation(line: 59, column: 33, scope: !132)
!136 = !DILocation(line: 59, column: 22, scope: !132)
!137 = !DILocation(line: 59, column: 9, scope: !132)
!138 = !DILocation(line: 59, column: 14, scope: !132)
!139 = !DILocation(line: 59, column: 20, scope: !132)
!140 = !DILocation(line: 60, column: 21, scope: !132)
!141 = !DILocation(line: 60, column: 26, scope: !132)
!142 = !DILocation(line: 60, column: 32, scope: !132)
!143 = !DILocation(line: 60, column: 9, scope: !132)
!144 = !DILocation(line: 61, column: 5, scope: !132)
!145 = !DILocation(line: 62, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !127, file: !1, line: 61, column: 12)
!147 = !DILocation(line: 62, column: 14, scope: !146)
!148 = !DILocation(line: 62, column: 20, scope: !146)
!149 = !DILocation(line: 66, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !89, file: !1, line: 66, column: 9)
!151 = !DILocation(line: 66, column: 14, scope: !150)
!152 = !DILocation(line: 66, column: 22, scope: !150)
!153 = !DILocation(line: 66, column: 9, scope: !89)
!154 = !DILocation(line: 67, column: 44, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 66, column: 27)
!156 = !DILocation(line: 67, column: 49, scope: !155)
!157 = !DILocation(line: 67, column: 57, scope: !155)
!158 = !DILocation(line: 67, column: 37, scope: !155)
!159 = !DILocation(line: 67, column: 24, scope: !155)
!160 = !DILocation(line: 67, column: 9, scope: !155)
!161 = !DILocation(line: 67, column: 14, scope: !155)
!162 = !DILocation(line: 67, column: 22, scope: !155)
!163 = !DILocation(line: 68, column: 21, scope: !155)
!164 = !DILocation(line: 68, column: 26, scope: !155)
!165 = !DILocation(line: 68, column: 34, scope: !155)
!166 = !DILocation(line: 68, column: 9, scope: !155)
!167 = !DILocation(line: 69, column: 5, scope: !155)
!168 = !DILocation(line: 70, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !150, file: !1, line: 69, column: 12)
!170 = !DILocation(line: 70, column: 14, scope: !169)
!171 = !DILocation(line: 70, column: 22, scope: !169)
!172 = !DILocation(line: 74, column: 29, scope: !89)
!173 = !DILocation(line: 74, column: 5, scope: !89)
!174 = !DILocation(line: 79, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !89, file: !1, line: 79, column: 9)
!176 = !DILocation(line: 79, column: 14, scope: !175)
!177 = !DILocation(line: 79, column: 20, scope: !175)
!178 = !DILocation(line: 79, column: 9, scope: !89)
!179 = !DILocation(line: 80, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 79, column: 29)
!181 = !DILocation(line: 81, column: 5, scope: !180)
!182 = !DILocation(line: 82, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !89, file: !1, line: 82, column: 9)
!184 = !DILocation(line: 82, column: 14, scope: !183)
!185 = !DILocation(line: 82, column: 22, scope: !183)
!186 = !DILocation(line: 82, column: 9, scope: !89)
!187 = !DILocation(line: 83, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !1, line: 82, column: 31)
!189 = !DILocation(line: 84, column: 5, scope: !188)
!190 = !DILocation(line: 87, column: 5, scope: !89)
!191 = !DILocation(line: 89, column: 5, scope: !89)
!192 = !DILocation(line: 90, column: 1, scope: !89)
!193 = distinct !DISubprogram(name: "memset", scope: !194, file: !194, line: 12, type: !195, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !36)
!194 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!195 = !DISubroutineType(types: !196)
!196 = !{!3, !3, !15, !197}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !198, line: 46, baseType: !199)
!198 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!199 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DILocalVariable(name: "dst", arg: 1, scope: !193, file: !194, line: 12, type: !3)
!201 = !DILocation(line: 12, column: 20, scope: !193)
!202 = !DILocalVariable(name: "s", arg: 2, scope: !193, file: !194, line: 12, type: !15)
!203 = !DILocation(line: 12, column: 29, scope: !193)
!204 = !DILocalVariable(name: "count", arg: 3, scope: !193, file: !194, line: 12, type: !197)
!205 = !DILocation(line: 12, column: 39, scope: !193)
!206 = !DILocalVariable(name: "a", scope: !193, file: !194, line: 13, type: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!209 = !DILocation(line: 13, column: 9, scope: !193)
!210 = !DILocation(line: 13, column: 13, scope: !193)
!211 = !DILocation(line: 14, column: 3, scope: !193)
!212 = !DILocation(line: 14, column: 15, scope: !193)
!213 = !DILocation(line: 14, column: 18, scope: !193)
!214 = !DILocation(line: 15, column: 12, scope: !193)
!215 = !DILocation(line: 15, column: 7, scope: !193)
!216 = !DILocation(line: 15, column: 10, scope: !193)
!217 = distinct !{!217, !211, !214, !218}
!218 = !{!"llvm.loop.mustprogress"}
!219 = !DILocation(line: 16, column: 10, scope: !193)
!220 = !DILocation(line: 16, column: 3, scope: !193)
