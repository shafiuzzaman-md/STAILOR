; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/219_xmlregexp.c_3241_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/219_xmlregexp.c_3241_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { %struct._xmlRegComp*, %struct._xmlRegExecRollback*, i32, i32*, i32, i32 }
%struct._xmlRegComp = type { i32 }
%struct._xmlRegExecRollback = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"(exec->comp->nbCounters >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/219_xmlregexp.c_3241_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFARegExecSave = private unnamed_addr constant [40 x i8] c"void xmlFARegExecSave(xmlRegExecCtxt *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nbRollbacks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFARegExecSave(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !37 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !41, metadata !DIExpression()), !dbg !42
  %3 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !43
  %4 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 0, !dbg !45
  %5 = load %struct._xmlRegComp*, %struct._xmlRegComp** %4, align 8, !dbg !45
  %6 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %5, i32 0, i32 0, !dbg !46
  %7 = load i32, i32* %6, align 4, !dbg !46
  %8 = icmp sgt i32 %7, 0, !dbg !47
  br i1 %8, label %9, label %66, !dbg !48

9:                                                ; preds = %1
  %10 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !49
  %11 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %10, i32 0, i32 1, !dbg !52
  %12 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %11, align 8, !dbg !52
  %13 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !53
  %14 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %13, i32 0, i32 2, !dbg !54
  %15 = load i32, i32* %14, align 8, !dbg !54
  %16 = sext i32 %15 to i64, !dbg !49
  %17 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %12, i64 %16, !dbg !49
  %18 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %17, i32 0, i32 0, !dbg !55
  %19 = load i32*, i32** %18, align 8, !dbg !55
  %20 = icmp eq i32* %19, null, !dbg !56
  br i1 %20, label %21, label %24, !dbg !57

21:                                               ; preds = %9
  %22 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !58
  %23 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %22, i32 0, i32 5, !dbg !60
  store i32 -6, i32* %23, align 4, !dbg !61
  br label %66, !dbg !62

24:                                               ; preds = %9
  %25 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !63
  %26 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %25, i32 0, i32 3, !dbg !65
  %27 = load i32*, i32** %26, align 8, !dbg !65
  %28 = icmp ne i32* %27, null, !dbg !63
  br i1 %28, label %29, label %65, !dbg !66

29:                                               ; preds = %24
  %30 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !67
  %31 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %30, i32 0, i32 0, !dbg !67
  %32 = load %struct._xmlRegComp*, %struct._xmlRegComp** %31, align 8, !dbg !67
  %33 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %32, i32 0, i32 0, !dbg !67
  %34 = load i32, i32* %33, align 4, !dbg !67
  %35 = icmp sge i32 %34, 0, !dbg !67
  br i1 %35, label %36, label %38, !dbg !67

36:                                               ; preds = %29
  br i1 true, label %37, label %38, !dbg !67

37:                                               ; preds = %36
  br label %40, !dbg !67

38:                                               ; preds = %36, %29
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlFARegExecSave, i64 0, i64 0)), !dbg !67
  br label %40, !dbg !67

40:                                               ; preds = %38, %37
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.xmlFARegExecSave, i64 0, i64 0)), !dbg !69
  %42 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !70
  %43 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %42, i32 0, i32 3, !dbg !71
  %44 = load i32*, i32** %43, align 8, !dbg !71
  %45 = bitcast i32* %44 to i8*, !dbg !72
  %46 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !73
  %47 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %46, i32 0, i32 1, !dbg !74
  %48 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %47, align 8, !dbg !74
  %49 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !75
  %50 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %49, i32 0, i32 2, !dbg !76
  %51 = load i32, i32* %50, align 8, !dbg !76
  %52 = sext i32 %51 to i64, !dbg !73
  %53 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %48, i64 %52, !dbg !73
  %54 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %53, i32 0, i32 0, !dbg !77
  %55 = load i32*, i32** %54, align 8, !dbg !77
  %56 = bitcast i32* %55 to i8*, !dbg !72
  %57 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !78
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %57, i32 0, i32 0, !dbg !79
  %59 = load %struct._xmlRegComp*, %struct._xmlRegComp** %58, align 8, !dbg !79
  %60 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %59, i32 0, i32 0, !dbg !80
  %61 = load i32, i32* %60, align 4, !dbg !80
  %62 = sext i32 %61 to i64, !dbg !78
  %63 = mul i64 %62, 4, !dbg !81
  %64 = call i8* @memcpy(i8* %45, i8* %56, i64 %63), !dbg !72
  br label %65, !dbg !82

65:                                               ; preds = %40, %24
  br label %66, !dbg !83

66:                                               ; preds = %21, %65, %1
  ret void, !dbg !84
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !85 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !88, metadata !DIExpression()), !dbg !89
  %3 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !90
  %4 = bitcast i8* %3 to %struct._xmlRegExecCtxt*, !dbg !91
  store %struct._xmlRegExecCtxt* %4, %struct._xmlRegExecCtxt** %2, align 8, !dbg !89
  %5 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !92
  %6 = icmp ne %struct._xmlRegExecCtxt* %5, null, !dbg !92
  br i1 %6, label %8, label %7, !dbg !94

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !95
  br label %165, !dbg !95

8:                                                ; preds = %0
  %9 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !96
  %10 = bitcast i8* %9 to %struct._xmlRegComp*, !dbg !97
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !98
  %12 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %11, i32 0, i32 0, !dbg !99
  store %struct._xmlRegComp* %10, %struct._xmlRegComp** %12, align 8, !dbg !100
  %13 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !101
  %14 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %13, i32 0, i32 0, !dbg !103
  %15 = load %struct._xmlRegComp*, %struct._xmlRegComp** %14, align 8, !dbg !103
  %16 = icmp ne %struct._xmlRegComp* %15, null, !dbg !101
  br i1 %16, label %20, label %17, !dbg !104

17:                                               ; preds = %8
  %18 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !105
  %19 = bitcast %struct._xmlRegExecCtxt* %18 to i8*, !dbg !105
  call void @free(i8* noundef %19) #7, !dbg !107
  store i32 0, i32* %1, align 4, !dbg !108
  br label %165, !dbg !108

20:                                               ; preds = %8
  %21 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !109
  %22 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %21, i32 0, i32 0, !dbg !110
  %23 = load %struct._xmlRegComp*, %struct._xmlRegComp** %22, align 8, !dbg !110
  %24 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %23, i32 0, i32 0, !dbg !111
  %25 = bitcast i32* %24 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !113
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !114
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %26, i32 0, i32 0, !dbg !115
  %28 = load %struct._xmlRegComp*, %struct._xmlRegComp** %27, align 8, !dbg !115
  %29 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %28, i32 0, i32 0, !dbg !116
  %30 = load i32, i32* %29, align 4, !dbg !116
  %31 = icmp sge i32 %30, 0, !dbg !117
  %32 = zext i1 %31 to i32, !dbg !117
  %33 = sext i32 %32 to i64, !dbg !114
  call void @klee_assume(i64 noundef %33), !dbg !118
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !119
  %35 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %34, i32 0, i32 0, !dbg !120
  %36 = load %struct._xmlRegComp*, %struct._xmlRegComp** %35, align 8, !dbg !120
  %37 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %36, i32 0, i32 0, !dbg !121
  %38 = load i32, i32* %37, align 4, !dbg !121
  %39 = icmp sle i32 %38, 1000, !dbg !122
  %40 = zext i1 %39 to i32, !dbg !122
  %41 = sext i32 %40 to i64, !dbg !119
  call void @klee_assume(i64 noundef %41), !dbg !123
  %42 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !124
  %43 = bitcast i8* %42 to %struct._xmlRegExecRollback*, !dbg !125
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !126
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %44, i32 0, i32 1, !dbg !127
  store %struct._xmlRegExecRollback* %43, %struct._xmlRegExecRollback** %45, align 8, !dbg !128
  %46 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !129
  %47 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %46, i32 0, i32 1, !dbg !131
  %48 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %47, align 8, !dbg !131
  %49 = icmp ne %struct._xmlRegExecRollback* %48, null, !dbg !129
  br i1 %49, label %57, label %50, !dbg !132

50:                                               ; preds = %20
  %51 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !133
  %52 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %51, i32 0, i32 0, !dbg !135
  %53 = load %struct._xmlRegComp*, %struct._xmlRegComp** %52, align 8, !dbg !135
  %54 = bitcast %struct._xmlRegComp* %53 to i8*, !dbg !133
  call void @free(i8* noundef %54) #7, !dbg !136
  %55 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !137
  %56 = bitcast %struct._xmlRegExecCtxt* %55 to i8*, !dbg !137
  call void @free(i8* noundef %56) #7, !dbg !138
  store i32 0, i32* %1, align 4, !dbg !139
  br label %165, !dbg !139

57:                                               ; preds = %20
  %58 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !140
  %59 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %58, i32 0, i32 2, !dbg !141
  %60 = bitcast i32* %59 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %60, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !143
  %61 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !144
  %62 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %61, i32 0, i32 2, !dbg !145
  %63 = load i32, i32* %62, align 8, !dbg !145
  %64 = icmp eq i32 %63, 0, !dbg !146
  %65 = zext i1 %64 to i32, !dbg !146
  %66 = sext i32 %65 to i64, !dbg !144
  call void @klee_assume(i64 noundef %66), !dbg !147
  %67 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !148
  %68 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %67, i32 0, i32 0, !dbg !149
  %69 = load %struct._xmlRegComp*, %struct._xmlRegComp** %68, align 8, !dbg !149
  %70 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %69, i32 0, i32 0, !dbg !150
  %71 = load i32, i32* %70, align 4, !dbg !150
  %72 = sext i32 %71 to i64, !dbg !148
  %73 = mul i64 %72, 4, !dbg !151
  %74 = call noalias i8* @malloc(i64 noundef %73) #7, !dbg !152
  %75 = bitcast i8* %74 to i32*, !dbg !153
  %76 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !154
  %77 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %76, i32 0, i32 1, !dbg !155
  %78 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %77, align 8, !dbg !155
  %79 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %78, i64 0, !dbg !154
  %80 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %79, i32 0, i32 0, !dbg !156
  store i32* %75, i32** %80, align 8, !dbg !157
  %81 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !158
  %82 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %81, i32 0, i32 1, !dbg !160
  %83 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %82, align 8, !dbg !160
  %84 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %83, i64 0, !dbg !158
  %85 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %84, i32 0, i32 0, !dbg !161
  %86 = load i32*, i32** %85, align 8, !dbg !161
  %87 = icmp ne i32* %86, null, !dbg !158
  br i1 %87, label %99, label %88, !dbg !162

88:                                               ; preds = %57
  %89 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !163
  %90 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %89, i32 0, i32 1, !dbg !165
  %91 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %90, align 8, !dbg !165
  %92 = bitcast %struct._xmlRegExecRollback* %91 to i8*, !dbg !163
  call void @free(i8* noundef %92) #7, !dbg !166
  %93 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !167
  %94 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %93, i32 0, i32 0, !dbg !168
  %95 = load %struct._xmlRegComp*, %struct._xmlRegComp** %94, align 8, !dbg !168
  %96 = bitcast %struct._xmlRegComp* %95 to i8*, !dbg !167
  call void @free(i8* noundef %96) #7, !dbg !169
  %97 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !170
  %98 = bitcast %struct._xmlRegExecCtxt* %97 to i8*, !dbg !170
  call void @free(i8* noundef %98) #7, !dbg !171
  store i32 0, i32* %1, align 4, !dbg !172
  br label %165, !dbg !172

99:                                               ; preds = %57
  %100 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !173
  %101 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %100, i32 0, i32 0, !dbg !174
  %102 = load %struct._xmlRegComp*, %struct._xmlRegComp** %101, align 8, !dbg !174
  %103 = getelementptr inbounds %struct._xmlRegComp, %struct._xmlRegComp* %102, i32 0, i32 0, !dbg !175
  %104 = load i32, i32* %103, align 4, !dbg !175
  %105 = sext i32 %104 to i64, !dbg !173
  %106 = mul i64 %105, 4, !dbg !176
  %107 = call noalias i8* @malloc(i64 noundef %106) #7, !dbg !177
  %108 = bitcast i8* %107 to i32*, !dbg !178
  %109 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !179
  %110 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %109, i32 0, i32 3, !dbg !180
  store i32* %108, i32** %110, align 8, !dbg !181
  %111 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !182
  %112 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %111, i32 0, i32 3, !dbg !184
  %113 = load i32*, i32** %112, align 8, !dbg !184
  %114 = icmp ne i32* %113, null, !dbg !182
  br i1 %114, label %133, label %115, !dbg !185

115:                                              ; preds = %99
  %116 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !186
  %117 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %116, i32 0, i32 1, !dbg !188
  %118 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %117, align 8, !dbg !188
  %119 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %118, i64 0, !dbg !186
  %120 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %119, i32 0, i32 0, !dbg !189
  %121 = load i32*, i32** %120, align 8, !dbg !189
  %122 = bitcast i32* %121 to i8*, !dbg !186
  call void @free(i8* noundef %122) #7, !dbg !190
  %123 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !191
  %124 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %123, i32 0, i32 1, !dbg !192
  %125 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %124, align 8, !dbg !192
  %126 = bitcast %struct._xmlRegExecRollback* %125 to i8*, !dbg !191
  call void @free(i8* noundef %126) #7, !dbg !193
  %127 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !194
  %128 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %127, i32 0, i32 0, !dbg !195
  %129 = load %struct._xmlRegComp*, %struct._xmlRegComp** %128, align 8, !dbg !195
  %130 = bitcast %struct._xmlRegComp* %129 to i8*, !dbg !194
  call void @free(i8* noundef %130) #7, !dbg !196
  %131 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !197
  %132 = bitcast %struct._xmlRegExecCtxt* %131 to i8*, !dbg !197
  call void @free(i8* noundef %132) #7, !dbg !198
  store i32 0, i32* %1, align 4, !dbg !199
  br label %165, !dbg !199

133:                                              ; preds = %99
  %134 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !200
  %135 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %134, i32 0, i32 4, !dbg !201
  store i32 0, i32* %135, align 8, !dbg !202
  %136 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !203
  %137 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %136, i32 0, i32 5, !dbg !204
  store i32 0, i32* %137, align 4, !dbg !205
  %138 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !206
  %139 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %138, i32 0, i32 1, !dbg !207
  %140 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %139, align 8, !dbg !207
  %141 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %140, i64 0, !dbg !206
  %142 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %141, i32 0, i32 1, !dbg !208
  store i32 0, i32* %142, align 8, !dbg !209
  %143 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !210
  call void @xmlFARegExecSave(%struct._xmlRegExecCtxt* noundef %143), !dbg !211
  %144 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !212
  %145 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %144, i32 0, i32 3, !dbg !213
  %146 = load i32*, i32** %145, align 8, !dbg !213
  %147 = bitcast i32* %146 to i8*, !dbg !212
  call void @free(i8* noundef %147) #7, !dbg !214
  %148 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !215
  %149 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %148, i32 0, i32 1, !dbg !216
  %150 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %149, align 8, !dbg !216
  %151 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %150, i64 0, !dbg !215
  %152 = getelementptr inbounds %struct._xmlRegExecRollback, %struct._xmlRegExecRollback* %151, i32 0, i32 0, !dbg !217
  %153 = load i32*, i32** %152, align 8, !dbg !217
  %154 = bitcast i32* %153 to i8*, !dbg !215
  call void @free(i8* noundef %154) #7, !dbg !218
  %155 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !219
  %156 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %155, i32 0, i32 1, !dbg !220
  %157 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %156, align 8, !dbg !220
  %158 = bitcast %struct._xmlRegExecRollback* %157 to i8*, !dbg !219
  call void @free(i8* noundef %158) #7, !dbg !221
  %159 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !222
  %160 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %159, i32 0, i32 0, !dbg !223
  %161 = load %struct._xmlRegComp*, %struct._xmlRegComp** %160, align 8, !dbg !223
  %162 = bitcast %struct._xmlRegComp* %161 to i8*, !dbg !222
  call void @free(i8* noundef %162) #7, !dbg !224
  %163 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !225
  %164 = bitcast %struct._xmlRegExecCtxt* %163 to i8*, !dbg !225
  call void @free(i8* noundef %164) #7, !dbg !226
  store i32 0, i32* %1, align 4, !dbg !227
  br label %165, !dbg !227

165:                                              ; preds = %133, %115, %88, %50, %17, %7
  %166 = load i32, i32* %1, align 4, !dbg !228
  ret i32 %166, !dbg !228
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !229 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !238, metadata !DIExpression()), !dbg !239
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !240, metadata !DIExpression()), !dbg !241
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i8** %7, metadata !244, metadata !DIExpression()), !dbg !247
  %9 = load i8*, i8** %4, align 8, !dbg !248
  store i8* %9, i8** %7, align 8, !dbg !247
  call void @llvm.dbg.declare(metadata i8** %8, metadata !249, metadata !DIExpression()), !dbg !252
  %10 = load i8*, i8** %5, align 8, !dbg !253
  store i8* %10, i8** %8, align 8, !dbg !252
  br label %11, !dbg !254

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !255
  %13 = add i64 %12, -1, !dbg !255
  store i64 %13, i64* %6, align 8, !dbg !255
  %14 = icmp ugt i64 %12, 0, !dbg !256
  br i1 %14, label %15, label %21, !dbg !254

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !257
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !257
  store i8* %17, i8** %8, align 8, !dbg !257
  %18 = load i8, i8* %16, align 1, !dbg !258
  %19 = load i8*, i8** %7, align 8, !dbg !259
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !259
  store i8* %20, i8** %7, align 8, !dbg !259
  store i8 %18, i8* %19, align 1, !dbg !260
  br label %11, !dbg !254, !llvm.loop !261

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !263
  ret i8* %22, !dbg !264
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36, !36}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/219_xmlregexp.c_3241_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "150396d8628d4bd2ac7f9ced07785936")
!2 = !{!3, !4, !9, !16, !21}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 26, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 19, size: 320, elements: !7)
!7 = !{!8, !15, !23, !24, !25, !26}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !6, file: !1, line: 20, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegComp", file: !1, line: 17, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegComp", file: !1, line: 15, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !11, file: !1, line: 16, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !6, file: !1, line: 21, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecRollback", file: !1, line: 13, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecRollback", file: !1, line: 10, size: 128, elements: !19)
!19 = !{!20, !22}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !18, file: !1, line: 11, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nextbranch", scope: !18, file: !1, line: 12, baseType: !14, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !6, file: !1, line: 22, baseType: !14, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !6, file: !1, line: 23, baseType: !21, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "transno", scope: !6, file: !1, line: 24, baseType: !14, size: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6, file: !1, line: 25, baseType: !14, size: 32, offset: 288)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"Ubuntu clang version 14.0.6"}
!37 = distinct !DISubprogram(name: "xmlFARegExecSave", scope: !1, file: !1, line: 29, type: !38, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !4}
!40 = !{}
!41 = !DILocalVariable(name: "exec", arg: 1, scope: !37, file: !1, line: 29, type: !4)
!42 = !DILocation(line: 29, column: 39, scope: !37)
!43 = !DILocation(line: 30, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !37, file: !1, line: 30, column: 9)
!45 = !DILocation(line: 30, column: 15, scope: !44)
!46 = !DILocation(line: 30, column: 21, scope: !44)
!47 = !DILocation(line: 30, column: 32, scope: !44)
!48 = !DILocation(line: 30, column: 9, scope: !37)
!49 = !DILocation(line: 31, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 31, column: 13)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 30, column: 37)
!52 = !DILocation(line: 31, column: 19, scope: !50)
!53 = !DILocation(line: 31, column: 29, scope: !50)
!54 = !DILocation(line: 31, column: 35, scope: !50)
!55 = !DILocation(line: 31, column: 48, scope: !50)
!56 = !DILocation(line: 31, column: 55, scope: !50)
!57 = !DILocation(line: 31, column: 13, scope: !51)
!58 = !DILocation(line: 32, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 31, column: 64)
!60 = !DILocation(line: 32, column: 19, scope: !59)
!61 = !DILocation(line: 32, column: 26, scope: !59)
!62 = !DILocation(line: 33, column: 13, scope: !59)
!63 = !DILocation(line: 35, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 35, column: 13)
!65 = !DILocation(line: 35, column: 19, scope: !64)
!66 = !DILocation(line: 35, column: 13, scope: !51)
!67 = !DILocation(line: 40, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 35, column: 27)
!69 = !DILocation(line: 43, column: 13, scope: !68)
!70 = !DILocation(line: 46, column: 20, scope: !68)
!71 = !DILocation(line: 46, column: 26, scope: !68)
!72 = !DILocation(line: 46, column: 13, scope: !68)
!73 = !DILocation(line: 46, column: 34, scope: !68)
!74 = !DILocation(line: 46, column: 40, scope: !68)
!75 = !DILocation(line: 46, column: 50, scope: !68)
!76 = !DILocation(line: 46, column: 56, scope: !68)
!77 = !DILocation(line: 46, column: 69, scope: !68)
!78 = !DILocation(line: 47, column: 20, scope: !68)
!79 = !DILocation(line: 47, column: 26, scope: !68)
!80 = !DILocation(line: 47, column: 32, scope: !68)
!81 = !DILocation(line: 47, column: 43, scope: !68)
!82 = !DILocation(line: 48, column: 9, scope: !68)
!83 = !DILocation(line: 49, column: 5, scope: !51)
!84 = !DILocation(line: 50, column: 1, scope: !37)
!85 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !86, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!86 = !DISubroutineType(types: !87)
!87 = !{!14}
!88 = !DILocalVariable(name: "exec", scope: !85, file: !1, line: 54, type: !4)
!89 = !DILocation(line: 54, column: 21, scope: !85)
!90 = !DILocation(line: 54, column: 46, scope: !85)
!91 = !DILocation(line: 54, column: 28, scope: !85)
!92 = !DILocation(line: 55, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 55, column: 9)
!94 = !DILocation(line: 55, column: 9, scope: !85)
!95 = !DILocation(line: 55, column: 16, scope: !93)
!96 = !DILocation(line: 58, column: 32, scope: !85)
!97 = !DILocation(line: 58, column: 18, scope: !85)
!98 = !DILocation(line: 58, column: 5, scope: !85)
!99 = !DILocation(line: 58, column: 11, scope: !85)
!100 = !DILocation(line: 58, column: 16, scope: !85)
!101 = !DILocation(line: 59, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !85, file: !1, line: 59, column: 9)
!103 = !DILocation(line: 59, column: 16, scope: !102)
!104 = !DILocation(line: 59, column: 9, scope: !85)
!105 = !DILocation(line: 60, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 59, column: 22)
!107 = !DILocation(line: 60, column: 9, scope: !106)
!108 = !DILocation(line: 61, column: 9, scope: !106)
!109 = !DILocation(line: 65, column: 25, scope: !85)
!110 = !DILocation(line: 65, column: 31, scope: !85)
!111 = !DILocation(line: 65, column: 37, scope: !85)
!112 = !DILocation(line: 65, column: 24, scope: !85)
!113 = !DILocation(line: 65, column: 5, scope: !85)
!114 = !DILocation(line: 67, column: 17, scope: !85)
!115 = !DILocation(line: 67, column: 23, scope: !85)
!116 = !DILocation(line: 67, column: 29, scope: !85)
!117 = !DILocation(line: 67, column: 40, scope: !85)
!118 = !DILocation(line: 67, column: 5, scope: !85)
!119 = !DILocation(line: 68, column: 17, scope: !85)
!120 = !DILocation(line: 68, column: 23, scope: !85)
!121 = !DILocation(line: 68, column: 29, scope: !85)
!122 = !DILocation(line: 68, column: 40, scope: !85)
!123 = !DILocation(line: 68, column: 5, scope: !85)
!124 = !DILocation(line: 71, column: 45, scope: !85)
!125 = !DILocation(line: 71, column: 23, scope: !85)
!126 = !DILocation(line: 71, column: 5, scope: !85)
!127 = !DILocation(line: 71, column: 11, scope: !85)
!128 = !DILocation(line: 71, column: 21, scope: !85)
!129 = !DILocation(line: 72, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !85, file: !1, line: 72, column: 9)
!131 = !DILocation(line: 72, column: 16, scope: !130)
!132 = !DILocation(line: 72, column: 9, scope: !85)
!133 = !DILocation(line: 73, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 72, column: 27)
!135 = !DILocation(line: 73, column: 20, scope: !134)
!136 = !DILocation(line: 73, column: 9, scope: !134)
!137 = !DILocation(line: 74, column: 14, scope: !134)
!138 = !DILocation(line: 74, column: 9, scope: !134)
!139 = !DILocation(line: 75, column: 9, scope: !134)
!140 = !DILocation(line: 79, column: 25, scope: !85)
!141 = !DILocation(line: 79, column: 31, scope: !85)
!142 = !DILocation(line: 79, column: 24, scope: !85)
!143 = !DILocation(line: 79, column: 5, scope: !85)
!144 = !DILocation(line: 80, column: 17, scope: !85)
!145 = !DILocation(line: 80, column: 23, scope: !85)
!146 = !DILocation(line: 80, column: 35, scope: !85)
!147 = !DILocation(line: 80, column: 5, scope: !85)
!148 = !DILocation(line: 83, column: 47, scope: !85)
!149 = !DILocation(line: 83, column: 53, scope: !85)
!150 = !DILocation(line: 83, column: 59, scope: !85)
!151 = !DILocation(line: 83, column: 70, scope: !85)
!152 = !DILocation(line: 83, column: 40, scope: !85)
!153 = !DILocation(line: 83, column: 33, scope: !85)
!154 = !DILocation(line: 83, column: 5, scope: !85)
!155 = !DILocation(line: 83, column: 11, scope: !85)
!156 = !DILocation(line: 83, column: 24, scope: !85)
!157 = !DILocation(line: 83, column: 31, scope: !85)
!158 = !DILocation(line: 84, column: 10, scope: !159)
!159 = distinct !DILexicalBlock(scope: !85, file: !1, line: 84, column: 9)
!160 = !DILocation(line: 84, column: 16, scope: !159)
!161 = !DILocation(line: 84, column: 29, scope: !159)
!162 = !DILocation(line: 84, column: 9, scope: !85)
!163 = !DILocation(line: 85, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 84, column: 37)
!165 = !DILocation(line: 85, column: 20, scope: !164)
!166 = !DILocation(line: 85, column: 9, scope: !164)
!167 = !DILocation(line: 86, column: 14, scope: !164)
!168 = !DILocation(line: 86, column: 20, scope: !164)
!169 = !DILocation(line: 86, column: 9, scope: !164)
!170 = !DILocation(line: 87, column: 14, scope: !164)
!171 = !DILocation(line: 87, column: 9, scope: !164)
!172 = !DILocation(line: 88, column: 9, scope: !164)
!173 = !DILocation(line: 92, column: 34, scope: !85)
!174 = !DILocation(line: 92, column: 40, scope: !85)
!175 = !DILocation(line: 92, column: 46, scope: !85)
!176 = !DILocation(line: 92, column: 57, scope: !85)
!177 = !DILocation(line: 92, column: 27, scope: !85)
!178 = !DILocation(line: 92, column: 20, scope: !85)
!179 = !DILocation(line: 92, column: 5, scope: !85)
!180 = !DILocation(line: 92, column: 11, scope: !85)
!181 = !DILocation(line: 92, column: 18, scope: !85)
!182 = !DILocation(line: 93, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !85, file: !1, line: 93, column: 9)
!184 = !DILocation(line: 93, column: 16, scope: !183)
!185 = !DILocation(line: 93, column: 9, scope: !85)
!186 = !DILocation(line: 94, column: 14, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 93, column: 24)
!188 = !DILocation(line: 94, column: 20, scope: !187)
!189 = !DILocation(line: 94, column: 33, scope: !187)
!190 = !DILocation(line: 94, column: 9, scope: !187)
!191 = !DILocation(line: 95, column: 14, scope: !187)
!192 = !DILocation(line: 95, column: 20, scope: !187)
!193 = !DILocation(line: 95, column: 9, scope: !187)
!194 = !DILocation(line: 96, column: 14, scope: !187)
!195 = !DILocation(line: 96, column: 20, scope: !187)
!196 = !DILocation(line: 96, column: 9, scope: !187)
!197 = !DILocation(line: 97, column: 14, scope: !187)
!198 = !DILocation(line: 97, column: 9, scope: !187)
!199 = !DILocation(line: 98, column: 9, scope: !187)
!200 = !DILocation(line: 102, column: 5, scope: !85)
!201 = !DILocation(line: 102, column: 11, scope: !85)
!202 = !DILocation(line: 102, column: 19, scope: !85)
!203 = !DILocation(line: 103, column: 5, scope: !85)
!204 = !DILocation(line: 103, column: 11, scope: !85)
!205 = !DILocation(line: 103, column: 18, scope: !85)
!206 = !DILocation(line: 104, column: 5, scope: !85)
!207 = !DILocation(line: 104, column: 11, scope: !85)
!208 = !DILocation(line: 104, column: 24, scope: !85)
!209 = !DILocation(line: 104, column: 35, scope: !85)
!210 = !DILocation(line: 107, column: 22, scope: !85)
!211 = !DILocation(line: 107, column: 5, scope: !85)
!212 = !DILocation(line: 110, column: 10, scope: !85)
!213 = !DILocation(line: 110, column: 16, scope: !85)
!214 = !DILocation(line: 110, column: 5, scope: !85)
!215 = !DILocation(line: 111, column: 10, scope: !85)
!216 = !DILocation(line: 111, column: 16, scope: !85)
!217 = !DILocation(line: 111, column: 29, scope: !85)
!218 = !DILocation(line: 111, column: 5, scope: !85)
!219 = !DILocation(line: 112, column: 10, scope: !85)
!220 = !DILocation(line: 112, column: 16, scope: !85)
!221 = !DILocation(line: 112, column: 5, scope: !85)
!222 = !DILocation(line: 113, column: 10, scope: !85)
!223 = !DILocation(line: 113, column: 16, scope: !85)
!224 = !DILocation(line: 113, column: 5, scope: !85)
!225 = !DILocation(line: 114, column: 10, scope: !85)
!226 = !DILocation(line: 114, column: 5, scope: !85)
!227 = !DILocation(line: 116, column: 5, scope: !85)
!228 = !DILocation(line: 117, column: 1, scope: !85)
!229 = distinct !DISubprogram(name: "memcpy", scope: !230, file: !230, line: 12, type: !231, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !40)
!230 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!231 = !DISubroutineType(types: !232)
!232 = !{!3, !3, !233, !235}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !236, line: 46, baseType: !237)
!236 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!237 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!238 = !DILocalVariable(name: "destaddr", arg: 1, scope: !229, file: !230, line: 12, type: !3)
!239 = !DILocation(line: 12, column: 20, scope: !229)
!240 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !229, file: !230, line: 12, type: !233)
!241 = !DILocation(line: 12, column: 42, scope: !229)
!242 = !DILocalVariable(name: "len", arg: 3, scope: !229, file: !230, line: 12, type: !235)
!243 = !DILocation(line: 12, column: 58, scope: !229)
!244 = !DILocalVariable(name: "dest", scope: !229, file: !230, line: 13, type: !245)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!247 = !DILocation(line: 13, column: 9, scope: !229)
!248 = !DILocation(line: 13, column: 16, scope: !229)
!249 = !DILocalVariable(name: "src", scope: !229, file: !230, line: 14, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!252 = !DILocation(line: 14, column: 15, scope: !229)
!253 = !DILocation(line: 14, column: 21, scope: !229)
!254 = !DILocation(line: 16, column: 3, scope: !229)
!255 = !DILocation(line: 16, column: 13, scope: !229)
!256 = !DILocation(line: 16, column: 16, scope: !229)
!257 = !DILocation(line: 17, column: 19, scope: !229)
!258 = !DILocation(line: 17, column: 15, scope: !229)
!259 = !DILocation(line: 17, column: 10, scope: !229)
!260 = !DILocation(line: 17, column: 13, scope: !229)
!261 = distinct !{!261, !254, !257, !262}
!262 = !{!"llvm.loop.mustprogress"}
!263 = !DILocation(line: 18, column: 10, scope: !229)
!264 = !DILocation(line: 18, column: 3, scope: !229)
