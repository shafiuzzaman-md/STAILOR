; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/250_xmlregexp.c_3085_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/250_xmlregexp.c_3085_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32, %struct._xmlRegExecRollback*, i32, i32, i8*, i32, i32, %struct.anon* }
%struct._xmlRegExecRollback = type { i8*, i32, i32 }
%struct.anon = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"((exec->maxRollbacks - len) >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/250_xmlregexp.c_3085_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [44 x i8] c"void target_function(xmlRegExecCtxt *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"maxRollbacks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpCompile() #0 !dbg !38 {
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlRegExecCtxt* noundef %0, i32 noundef %1) #0 !dbg !43 {
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegExecRollback*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecRollback** %5, metadata !50, metadata !DIExpression()), !dbg !51
  %6 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !52
  %7 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %6, i32 0, i32 1, !dbg !54
  %8 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %7, align 8, !dbg !54
  %9 = icmp eq %struct._xmlRegExecRollback* %8, null, !dbg !55
  br i1 %9, label %10, label %13, !dbg !56

10:                                               ; preds = %2
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !57
  %12 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %11, i32 0, i32 0, !dbg !59
  store i32 1, i32* %12, align 8, !dbg !60
  br label %89, !dbg !61

13:                                               ; preds = %2
  %14 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %5, align 8, !dbg !62
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !63
  %16 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %15, i32 0, i32 1, !dbg !64
  store %struct._xmlRegExecRollback* %14, %struct._xmlRegExecRollback** %16, align 8, !dbg !65
  %17 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !66
  %18 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %17, i32 0, i32 1, !dbg !67
  %19 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %18, align 8, !dbg !67
  %20 = load i32, i32* %4, align 4, !dbg !68
  %21 = sext i32 %20 to i64, !dbg !66
  %22 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %19, i64 %21, !dbg !66
  store %struct._xmlRegExecRollback* %22, %struct._xmlRegExecRollback** %5, align 8, !dbg !69
  %23 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !70
  %24 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %23, i32 0, i32 3, !dbg !70
  %25 = load i32, i32* %24, align 4, !dbg !70
  %26 = load i32, i32* %4, align 4, !dbg !70
  %27 = sub nsw i32 %25, %26, !dbg !70
  %28 = icmp sge i32 %27, 0, !dbg !70
  br i1 %28, label %29, label %31, !dbg !70

29:                                               ; preds = %13
  br i1 true, label %30, label %31, !dbg !70

30:                                               ; preds = %29
  br label %33, !dbg !70

31:                                               ; preds = %29, %13
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !70
  br label %33, !dbg !70

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !71
  %35 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %5, align 8, !dbg !72
  %36 = bitcast %struct._xmlRegExecRollback* %35 to i8*, !dbg !73
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !74
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %37, i32 0, i32 3, !dbg !75
  %39 = load i32, i32* %38, align 4, !dbg !75
  %40 = load i32, i32* %4, align 4, !dbg !76
  %41 = sub nsw i32 %39, %40, !dbg !77
  %42 = sext i32 %41 to i64, !dbg !78
  %43 = mul i64 %42, 16, !dbg !79
  %44 = call i8* @memset(i8* %36, i32 0, i64 %43), !dbg !73
  %45 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !80
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %45, i32 0, i32 4, !dbg !81
  %47 = load i8*, i8** %46, align 8, !dbg !81
  %48 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !82
  %49 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %48, i32 0, i32 1, !dbg !83
  %50 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %49, align 8, !dbg !83
  %51 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !84
  %52 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %51, i32 0, i32 2, !dbg !85
  %53 = load i32, i32* %52, align 8, !dbg !85
  %54 = sext i32 %53 to i64, !dbg !82
  %55 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %50, i64 %54, !dbg !82
  %56 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %55, i32 0, i32 0, !dbg !86
  store i8* %47, i8** %56, align 8, !dbg !87
  %57 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !88
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %57, i32 0, i32 5, !dbg !89
  %59 = load i32, i32* %58, align 8, !dbg !89
  %60 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !90
  %61 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %60, i32 0, i32 1, !dbg !91
  %62 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %61, align 8, !dbg !91
  %63 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !92
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %63, i32 0, i32 2, !dbg !93
  %65 = load i32, i32* %64, align 8, !dbg !93
  %66 = sext i32 %65 to i64, !dbg !90
  %67 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %62, i64 %66, !dbg !90
  %68 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %67, i32 0, i32 1, !dbg !94
  store i32 %59, i32* %68, align 8, !dbg !95
  %69 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !96
  %70 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %69, i32 0, i32 6, !dbg !97
  %71 = load i32, i32* %70, align 4, !dbg !97
  %72 = add nsw i32 %71, 1, !dbg !98
  %73 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !99
  %74 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %73, i32 0, i32 1, !dbg !100
  %75 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %74, align 8, !dbg !100
  %76 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !101
  %77 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %76, i32 0, i32 2, !dbg !102
  %78 = load i32, i32* %77, align 8, !dbg !102
  %79 = sext i32 %78 to i64, !dbg !99
  %80 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %75, i64 %79, !dbg !99
  %81 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %80, i32 0, i32 2, !dbg !103
  store i32 %72, i32* %81, align 4, !dbg !104
  %82 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !105
  %83 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %82, i32 0, i32 7, !dbg !107
  %84 = load %struct.anon*, %struct.anon** %83, align 8, !dbg !107
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0, !dbg !108
  %86 = load i32, i32* %85, align 4, !dbg !108
  %87 = icmp sgt i32 %86, 0, !dbg !109
  br i1 %87, label %88, label %89, !dbg !110

88:                                               ; preds = %33
  br label %89, !dbg !111

89:                                               ; preds = %10, %88, %33
  ret void, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegExecCtxt* @create_exec_context() #0 !dbg !114 {
  %1 = alloca %struct._xmlRegExecCtxt*, align 8
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !117, metadata !DIExpression()), !dbg !118
  %3 = call noalias i8* @malloc(i64 noundef 48) #7, !dbg !119
  %4 = bitcast i8* %3 to %struct._xmlRegExecCtxt*, !dbg !120
  store %struct._xmlRegExecCtxt* %4, %struct._xmlRegExecCtxt** %2, align 8, !dbg !118
  %5 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !121
  %6 = icmp ne %struct._xmlRegExecCtxt* %5, null, !dbg !121
  br i1 %6, label %8, label %7, !dbg !123

7:                                                ; preds = %0
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %1, align 8, !dbg !124
  br label %26, !dbg !124

8:                                                ; preds = %0
  %9 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !125
  %10 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %9, i32 0, i32 0, !dbg !126
  store i32 0, i32* %10, align 8, !dbg !127
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !128
  %12 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %11, i32 0, i32 1, !dbg !129
  store %struct._xmlRegExecRollback* null, %struct._xmlRegExecRollback** %12, align 8, !dbg !130
  %13 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !131
  %14 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %13, i32 0, i32 2, !dbg !132
  store i32 0, i32* %14, align 8, !dbg !133
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !134
  %16 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %15, i32 0, i32 3, !dbg !135
  store i32 0, i32* %16, align 4, !dbg !136
  %17 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !137
  %18 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %17, i32 0, i32 4, !dbg !138
  store i8* null, i8** %18, align 8, !dbg !139
  %19 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !140
  %20 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %19, i32 0, i32 5, !dbg !141
  store i32 0, i32* %20, align 8, !dbg !142
  %21 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !143
  %22 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %21, i32 0, i32 6, !dbg !144
  store i32 0, i32* %22, align 4, !dbg !145
  %23 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !146
  %24 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %23, i32 0, i32 7, !dbg !147
  store %struct.anon* null, %struct.anon** %24, align 8, !dbg !148
  %25 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !149
  store %struct._xmlRegExecCtxt* %25, %struct._xmlRegExecCtxt** %1, align 8, !dbg !150
  br label %26, !dbg !150

26:                                               ; preds = %8, %7
  %27 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %1, align 8, !dbg !151
  ret %struct._xmlRegExecCtxt* %27, !dbg !151
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !152 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i32* %3, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %4, metadata !159, metadata !DIExpression()), !dbg !160
  %5 = call %struct._xmlRegExecCtxt* @create_exec_context(), !dbg !161
  store %struct._xmlRegExecCtxt* %5, %struct._xmlRegExecCtxt** %2, align 8, !dbg !162
  %6 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !163
  %7 = icmp ne %struct._xmlRegExecCtxt* %6, null, !dbg !163
  br i1 %7, label %9, label %8, !dbg !165

8:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !166
  br label %44, !dbg !166

9:                                                ; preds = %0
  %10 = bitcast i32* %3 to i8*, !dbg !167
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !168
  %11 = bitcast i32* %4 to i8*, !dbg !169
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !170
  %12 = load i32, i32* %3, align 4, !dbg !171
  %13 = icmp sge i32 %12, 0, !dbg !172
  %14 = zext i1 %13 to i32, !dbg !172
  %15 = sext i32 %14 to i64, !dbg !171
  call void @klee_assume(i64 noundef %15), !dbg !173
  %16 = load i32, i32* %4, align 4, !dbg !174
  %17 = icmp sge i32 %16, 0, !dbg !175
  %18 = zext i1 %17 to i32, !dbg !175
  %19 = sext i32 %18 to i64, !dbg !174
  call void @klee_assume(i64 noundef %19), !dbg !176
  %20 = load i32, i32* %4, align 4, !dbg !177
  %21 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !178
  %22 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %21, i32 0, i32 3, !dbg !179
  store i32 %20, i32* %22, align 4, !dbg !180
  %23 = load i32, i32* %4, align 4, !dbg !181
  %24 = icmp sgt i32 %23, 0, !dbg !182
  br i1 %24, label %25, label %27, !dbg !181

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4, !dbg !183
  br label %28, !dbg !181

27:                                               ; preds = %9
  br label %28, !dbg !181

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 1, %27 ], !dbg !181
  %30 = sext i32 %29 to i64, !dbg !184
  %31 = mul i64 %30, 16, !dbg !185
  %32 = call noalias i8* @malloc(i64 noundef %31) #7, !dbg !186
  %33 = bitcast i8* %32 to %struct._xmlRegExecRollback*, !dbg !187
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !188
  %35 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %34, i32 0, i32 1, !dbg !189
  store %struct._xmlRegExecRollback* %33, %struct._xmlRegExecRollback** %35, align 8, !dbg !190
  %36 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !191
  %37 = load i32, i32* %3, align 4, !dbg !192
  call void @target_function(%struct._xmlRegExecCtxt* noundef %36, i32 noundef %37), !dbg !193
  %38 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !194
  %39 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %38, i32 0, i32 1, !dbg !195
  %40 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %39, align 8, !dbg !195
  %41 = bitcast %struct._xmlRegExecRollback* %40 to i8*, !dbg !194
  call void @free(i8* noundef %41) #7, !dbg !196
  %42 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !197
  %43 = bitcast %struct._xmlRegExecCtxt* %42 to i8*, !dbg !197
  call void @free(i8* noundef %43) #7, !dbg !198
  store i32 0, i32* %1, align 4, !dbg !199
  br label %44, !dbg !199

44:                                               ; preds = %28, %8
  %45 = load i32, i32* %1, align 4, !dbg !200
  ret i32 %45, !dbg !200
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !201 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %7, metadata !214, metadata !DIExpression()), !dbg !217
  %8 = load i8*, i8** %4, align 8, !dbg !218
  store i8* %8, i8** %7, align 8, !dbg !217
  br label %9, !dbg !219

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !220
  %11 = add i64 %10, -1, !dbg !220
  store i64 %11, i64* %6, align 8, !dbg !220
  %12 = icmp ugt i64 %10, 0, !dbg !221
  br i1 %12, label %13, label %18, !dbg !219

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !222
  %15 = trunc i32 %14 to i8, !dbg !222
  %16 = load i8*, i8** %7, align 8, !dbg !223
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !223
  store i8* %17, i8** %7, align 8, !dbg !223
  store i8 %15, i8* %16, align 1, !dbg !224
  br label %9, !dbg !219, !llvm.loop !225

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %19, !dbg !228
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/250_xmlregexp.c_3085_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "de6a8a1ddea6d4a668b6f98c40b988ba")
!2 = !{!3, !4, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 27, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 16, size: 384, elements: !7)
!7 = !{!8, !10, !18, !19, !20, !21, !22, !23}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6, file: !1, line: 17, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !6, file: !1, line: 18, baseType: !11, size: 64, offset: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecRollback", file: !1, line: 14, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecRollback", file: !1, line: 10, size: 128, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !13, file: !1, line: 11, baseType: !3, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !13, file: !1, line: 12, baseType: !9, size: 32, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nextbranch", scope: !13, file: !1, line: 13, baseType: !9, size: 32, offset: 96)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !6, file: !1, line: 19, baseType: !9, size: 32, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "maxRollbacks", scope: !6, file: !1, line: 20, baseType: !9, size: 32, offset: 160)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6, file: !1, line: 21, baseType: !3, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "transno", scope: !6, file: !1, line: 23, baseType: !9, size: 32, offset: 288)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !6, file: !1, line: 26, baseType: !24, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !1, line: 24, size: 32, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !25, file: !1, line: 25, baseType: !9, size: 32)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "xmlRegexpCompile", scope: !1, file: !1, line: 30, type: !39, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null}
!41 = !{}
!42 = !DILocation(line: 32, column: 1, scope: !38)
!43 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !44, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !4, !9}
!46 = !DILocalVariable(name: "exec", arg: 1, scope: !43, file: !1, line: 35, type: !4)
!47 = !DILocation(line: 35, column: 38, scope: !43)
!48 = !DILocalVariable(name: "len", arg: 2, scope: !43, file: !1, line: 35, type: !9)
!49 = !DILocation(line: 35, column: 48, scope: !43)
!50 = !DILocalVariable(name: "tmp", scope: !43, file: !1, line: 36, type: !11)
!51 = !DILocation(line: 36, column: 25, scope: !43)
!52 = !DILocation(line: 38, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !43, file: !1, line: 38, column: 9)
!54 = !DILocation(line: 38, column: 15, scope: !53)
!55 = !DILocation(line: 38, column: 25, scope: !53)
!56 = !DILocation(line: 38, column: 9, scope: !43)
!57 = !DILocation(line: 39, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 38, column: 34)
!59 = !DILocation(line: 39, column: 15, scope: !58)
!60 = !DILocation(line: 39, column: 22, scope: !58)
!61 = !DILocation(line: 40, column: 9, scope: !58)
!62 = !DILocation(line: 43, column: 23, scope: !43)
!63 = !DILocation(line: 43, column: 5, scope: !43)
!64 = !DILocation(line: 43, column: 11, scope: !43)
!65 = !DILocation(line: 43, column: 21, scope: !43)
!66 = !DILocation(line: 44, column: 12, scope: !43)
!67 = !DILocation(line: 44, column: 18, scope: !43)
!68 = !DILocation(line: 44, column: 28, scope: !43)
!69 = !DILocation(line: 44, column: 9, scope: !43)
!70 = !DILocation(line: 49, column: 5, scope: !43)
!71 = !DILocation(line: 52, column: 5, scope: !43)
!72 = !DILocation(line: 54, column: 12, scope: !43)
!73 = !DILocation(line: 54, column: 5, scope: !43)
!74 = !DILocation(line: 54, column: 21, scope: !43)
!75 = !DILocation(line: 54, column: 27, scope: !43)
!76 = !DILocation(line: 54, column: 42, scope: !43)
!77 = !DILocation(line: 54, column: 40, scope: !43)
!78 = !DILocation(line: 54, column: 20, scope: !43)
!79 = !DILocation(line: 54, column: 47, scope: !43)
!80 = !DILocation(line: 56, column: 48, scope: !43)
!81 = !DILocation(line: 56, column: 54, scope: !43)
!82 = !DILocation(line: 56, column: 5, scope: !43)
!83 = !DILocation(line: 56, column: 11, scope: !43)
!84 = !DILocation(line: 56, column: 21, scope: !43)
!85 = !DILocation(line: 56, column: 27, scope: !43)
!86 = !DILocation(line: 56, column: 40, scope: !43)
!87 = !DILocation(line: 56, column: 46, scope: !43)
!88 = !DILocation(line: 57, column: 48, scope: !43)
!89 = !DILocation(line: 57, column: 54, scope: !43)
!90 = !DILocation(line: 57, column: 5, scope: !43)
!91 = !DILocation(line: 57, column: 11, scope: !43)
!92 = !DILocation(line: 57, column: 21, scope: !43)
!93 = !DILocation(line: 57, column: 27, scope: !43)
!94 = !DILocation(line: 57, column: 40, scope: !43)
!95 = !DILocation(line: 57, column: 46, scope: !43)
!96 = !DILocation(line: 58, column: 53, scope: !43)
!97 = !DILocation(line: 58, column: 59, scope: !43)
!98 = !DILocation(line: 58, column: 67, scope: !43)
!99 = !DILocation(line: 58, column: 5, scope: !43)
!100 = !DILocation(line: 58, column: 11, scope: !43)
!101 = !DILocation(line: 58, column: 21, scope: !43)
!102 = !DILocation(line: 58, column: 27, scope: !43)
!103 = !DILocation(line: 58, column: 40, scope: !43)
!104 = !DILocation(line: 58, column: 51, scope: !43)
!105 = !DILocation(line: 60, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !43, file: !1, line: 60, column: 9)
!107 = !DILocation(line: 60, column: 15, scope: !106)
!108 = !DILocation(line: 60, column: 21, scope: !106)
!109 = !DILocation(line: 60, column: 32, scope: !106)
!110 = !DILocation(line: 60, column: 9, scope: !43)
!111 = !DILocation(line: 62, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !1, line: 60, column: 37)
!113 = !DILocation(line: 63, column: 1, scope: !43)
!114 = distinct !DISubprogram(name: "create_exec_context", scope: !1, file: !1, line: 66, type: !115, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!115 = !DISubroutineType(types: !116)
!116 = !{!4}
!117 = !DILocalVariable(name: "exec", scope: !114, file: !1, line: 67, type: !4)
!118 = !DILocation(line: 67, column: 21, scope: !114)
!119 = !DILocation(line: 67, column: 45, scope: !114)
!120 = !DILocation(line: 67, column: 28, scope: !114)
!121 = !DILocation(line: 68, column: 10, scope: !122)
!122 = distinct !DILexicalBlock(scope: !114, file: !1, line: 68, column: 9)
!123 = !DILocation(line: 68, column: 9, scope: !114)
!124 = !DILocation(line: 68, column: 16, scope: !122)
!125 = !DILocation(line: 70, column: 5, scope: !114)
!126 = !DILocation(line: 70, column: 11, scope: !114)
!127 = !DILocation(line: 70, column: 18, scope: !114)
!128 = !DILocation(line: 71, column: 5, scope: !114)
!129 = !DILocation(line: 71, column: 11, scope: !114)
!130 = !DILocation(line: 71, column: 21, scope: !114)
!131 = !DILocation(line: 72, column: 5, scope: !114)
!132 = !DILocation(line: 72, column: 11, scope: !114)
!133 = !DILocation(line: 72, column: 23, scope: !114)
!134 = !DILocation(line: 73, column: 5, scope: !114)
!135 = !DILocation(line: 73, column: 11, scope: !114)
!136 = !DILocation(line: 73, column: 24, scope: !114)
!137 = !DILocation(line: 74, column: 5, scope: !114)
!138 = !DILocation(line: 74, column: 11, scope: !114)
!139 = !DILocation(line: 74, column: 17, scope: !114)
!140 = !DILocation(line: 75, column: 5, scope: !114)
!141 = !DILocation(line: 75, column: 11, scope: !114)
!142 = !DILocation(line: 75, column: 17, scope: !114)
!143 = !DILocation(line: 76, column: 5, scope: !114)
!144 = !DILocation(line: 76, column: 11, scope: !114)
!145 = !DILocation(line: 76, column: 19, scope: !114)
!146 = !DILocation(line: 77, column: 5, scope: !114)
!147 = !DILocation(line: 77, column: 11, scope: !114)
!148 = !DILocation(line: 77, column: 16, scope: !114)
!149 = !DILocation(line: 79, column: 12, scope: !114)
!150 = !DILocation(line: 79, column: 5, scope: !114)
!151 = !DILocation(line: 80, column: 1, scope: !114)
!152 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !153, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!153 = !DISubroutineType(types: !154)
!154 = !{!9}
!155 = !DILocalVariable(name: "exec", scope: !152, file: !1, line: 83, type: !4)
!156 = !DILocation(line: 83, column: 21, scope: !152)
!157 = !DILocalVariable(name: "len", scope: !152, file: !1, line: 84, type: !9)
!158 = !DILocation(line: 84, column: 9, scope: !152)
!159 = !DILocalVariable(name: "maxRollbacks", scope: !152, file: !1, line: 85, type: !9)
!160 = !DILocation(line: 85, column: 9, scope: !152)
!161 = !DILocation(line: 88, column: 12, scope: !152)
!162 = !DILocation(line: 88, column: 10, scope: !152)
!163 = !DILocation(line: 89, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !1, line: 89, column: 9)
!165 = !DILocation(line: 89, column: 9, scope: !152)
!166 = !DILocation(line: 89, column: 16, scope: !164)
!167 = !DILocation(line: 92, column: 24, scope: !152)
!168 = !DILocation(line: 92, column: 5, scope: !152)
!169 = !DILocation(line: 95, column: 24, scope: !152)
!170 = !DILocation(line: 95, column: 5, scope: !152)
!171 = !DILocation(line: 98, column: 17, scope: !152)
!172 = !DILocation(line: 98, column: 21, scope: !152)
!173 = !DILocation(line: 98, column: 5, scope: !152)
!174 = !DILocation(line: 101, column: 17, scope: !152)
!175 = !DILocation(line: 101, column: 30, scope: !152)
!176 = !DILocation(line: 101, column: 5, scope: !152)
!177 = !DILocation(line: 104, column: 26, scope: !152)
!178 = !DILocation(line: 104, column: 5, scope: !152)
!179 = !DILocation(line: 104, column: 11, scope: !152)
!180 = !DILocation(line: 104, column: 24, scope: !152)
!181 = !DILocation(line: 108, column: 10, scope: !152)
!182 = !DILocation(line: 108, column: 23, scope: !152)
!183 = !DILocation(line: 108, column: 29, scope: !152)
!184 = !DILocation(line: 108, column: 9, scope: !152)
!185 = !DILocation(line: 108, column: 47, scope: !152)
!186 = !DILocation(line: 107, column: 44, scope: !152)
!187 = !DILocation(line: 107, column: 23, scope: !152)
!188 = !DILocation(line: 107, column: 5, scope: !152)
!189 = !DILocation(line: 107, column: 11, scope: !152)
!190 = !DILocation(line: 107, column: 21, scope: !152)
!191 = !DILocation(line: 111, column: 21, scope: !152)
!192 = !DILocation(line: 111, column: 27, scope: !152)
!193 = !DILocation(line: 111, column: 5, scope: !152)
!194 = !DILocation(line: 114, column: 10, scope: !152)
!195 = !DILocation(line: 114, column: 16, scope: !152)
!196 = !DILocation(line: 114, column: 5, scope: !152)
!197 = !DILocation(line: 115, column: 10, scope: !152)
!198 = !DILocation(line: 115, column: 5, scope: !152)
!199 = !DILocation(line: 117, column: 5, scope: !152)
!200 = !DILocation(line: 118, column: 1, scope: !152)
!201 = distinct !DISubprogram(name: "memset", scope: !202, file: !202, line: 12, type: !203, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !41)
!202 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!203 = !DISubroutineType(types: !204)
!204 = !{!3, !3, !9, !205}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !206, line: 46, baseType: !207)
!206 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DILocalVariable(name: "dst", arg: 1, scope: !201, file: !202, line: 12, type: !3)
!209 = !DILocation(line: 12, column: 20, scope: !201)
!210 = !DILocalVariable(name: "s", arg: 2, scope: !201, file: !202, line: 12, type: !9)
!211 = !DILocation(line: 12, column: 29, scope: !201)
!212 = !DILocalVariable(name: "count", arg: 3, scope: !201, file: !202, line: 12, type: !205)
!213 = !DILocation(line: 12, column: 39, scope: !201)
!214 = !DILocalVariable(name: "a", scope: !201, file: !202, line: 13, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!217 = !DILocation(line: 13, column: 9, scope: !201)
!218 = !DILocation(line: 13, column: 13, scope: !201)
!219 = !DILocation(line: 14, column: 3, scope: !201)
!220 = !DILocation(line: 14, column: 15, scope: !201)
!221 = !DILocation(line: 14, column: 18, scope: !201)
!222 = !DILocation(line: 15, column: 12, scope: !201)
!223 = !DILocation(line: 15, column: 7, scope: !201)
!224 = !DILocation(line: 15, column: 10, scope: !201)
!225 = distinct !{!225, !219, !222, !226}
!226 = !{!"llvm.loop.mustprogress"}
!227 = !DILocation(line: 16, column: 10, scope: !201)
!228 = !DILocation(line: 16, column: 3, scope: !201)
