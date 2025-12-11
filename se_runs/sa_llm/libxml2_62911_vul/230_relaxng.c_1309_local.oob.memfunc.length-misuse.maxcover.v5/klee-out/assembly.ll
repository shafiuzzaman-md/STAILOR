; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/230_relaxng.c_1309_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/230_relaxng.c_1309_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGDefine = type { i32, i32, %struct._xmlAttr** }
%struct._xmlAttr = type opaque
%struct._xmlRelaxNGValidState = type { i32, i32, %struct._xmlAttr** }

@.str = private unnamed_addr constant [15 x i8] c"state_maxAttrs\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"state_nbAttrs\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"(state->nbAttrs <= state->maxAttrs) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/230_relaxng.c_1309_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine = private unnamed_addr constant [59 x i8] c"xmlRelaxNGDefine *xmlRelaxNGFreeDefine(xmlRelaxNGDefine *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"def_maxAttrs\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"def_nbAttrs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGDefine* @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef %0) #0 !dbg !34 {
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  %3 = alloca %struct._xmlRelaxNGDefine*, align 8
  %4 = alloca %struct._xmlRelaxNGDefine*, align 8
  %5 = alloca %struct._xmlRelaxNGValidState*, align 8
  %6 = alloca %struct._xmlAttr**, align 8
  store %struct._xmlRelaxNGDefine* %0, %struct._xmlRelaxNGDefine** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %3, metadata !38, metadata !DIExpression()), !dbg !39
  %7 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !40
  %8 = icmp eq %struct._xmlRelaxNGDefine* %7, null, !dbg !42
  br i1 %8, label %9, label %10, !dbg !43

9:                                                ; preds = %1
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !44
  br label %147, !dbg !44

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %4, metadata !45, metadata !DIExpression()), !dbg !46
  %11 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !47
  %12 = bitcast i8* %11 to %struct._xmlRelaxNGDefine*, !dbg !48
  store %struct._xmlRelaxNGDefine* %12, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !46
  %13 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !49
  %14 = icmp eq %struct._xmlRelaxNGDefine* %13, null, !dbg !51
  br i1 %14, label %15, label %16, !dbg !52

15:                                               ; preds = %10
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !53
  br label %147, !dbg !53

16:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %5, metadata !54, metadata !DIExpression()), !dbg !55
  %17 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !56
  %18 = bitcast i8* %17 to %struct._xmlRelaxNGValidState*, !dbg !57
  store %struct._xmlRelaxNGValidState* %18, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !55
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !58
  %20 = icmp eq %struct._xmlRelaxNGValidState* %19, null, !dbg !60
  br i1 %20, label %21, label %24, !dbg !61

21:                                               ; preds = %16
  %22 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !62
  %23 = bitcast %struct._xmlRelaxNGDefine* %22 to i8*, !dbg !62
  call void @free(i8* noundef %23) #7, !dbg !64
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !65
  br label %147, !dbg !65

24:                                               ; preds = %16
  %25 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !66
  %26 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %25, i32 0, i32 0, !dbg !67
  %27 = bitcast i32* %26 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %28 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !70
  %29 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %28, i32 0, i32 1, !dbg !71
  %30 = bitcast i32* %29 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)), !dbg !73
  %31 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !74
  %32 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %31, i32 0, i32 0, !dbg !75
  %33 = load i32, i32* %32, align 8, !dbg !75
  %34 = icmp sge i32 %33, 0, !dbg !76
  br i1 %34, label %35, label %40, !dbg !77

35:                                               ; preds = %24
  %36 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !78
  %37 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %36, i32 0, i32 0, !dbg !79
  %38 = load i32, i32* %37, align 8, !dbg !79
  %39 = icmp slt i32 %38, 1000, !dbg !80
  br label %40

40:                                               ; preds = %35, %24
  %41 = phi i1 [ false, %24 ], [ %39, %35 ], !dbg !81
  %42 = zext i1 %41 to i32, !dbg !77
  %43 = sext i32 %42 to i64, !dbg !74
  call void @klee_assume(i64 noundef %43), !dbg !82
  %44 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !83
  %45 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %44, i32 0, i32 1, !dbg !84
  %46 = load i32, i32* %45, align 4, !dbg !84
  %47 = icmp sge i32 %46, 0, !dbg !85
  br i1 %47, label %48, label %53, !dbg !86

48:                                               ; preds = %40
  %49 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !87
  %50 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %49, i32 0, i32 1, !dbg !88
  %51 = load i32, i32* %50, align 4, !dbg !88
  %52 = icmp slt i32 %51, 1000, !dbg !89
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i1 [ false, %40 ], [ %52, %48 ], !dbg !81
  %55 = zext i1 %54 to i32, !dbg !86
  %56 = sext i32 %55 to i64, !dbg !83
  call void @klee_assume(i64 noundef %56), !dbg !90
  %57 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !91
  %58 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %57, i32 0, i32 0, !dbg !93
  %59 = load i32, i32* %58, align 8, !dbg !93
  %60 = icmp sgt i32 %59, 0, !dbg !94
  br i1 %60, label %61, label %133, !dbg !95

61:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata %struct._xmlAttr*** %6, metadata !96, metadata !DIExpression()), !dbg !98
  %62 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !99
  %63 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %62, i32 0, i32 0, !dbg !100
  %64 = load i32, i32* %63, align 8, !dbg !100
  %65 = sext i32 %64 to i64, !dbg !99
  %66 = mul i64 %65, 8, !dbg !101
  %67 = call noalias i8* @malloc(i64 noundef %66) #7, !dbg !102
  %68 = bitcast i8* %67 to %struct._xmlAttr**, !dbg !103
  store %struct._xmlAttr** %68, %struct._xmlAttr*** %6, align 8, !dbg !98
  %69 = load %struct._xmlAttr**, %struct._xmlAttr*** %6, align 8, !dbg !104
  %70 = icmp eq %struct._xmlAttr** %69, null, !dbg !106
  br i1 %70, label %71, label %76, !dbg !107

71:                                               ; preds = %61
  %72 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !108
  %73 = bitcast %struct._xmlRelaxNGValidState* %72 to i8*, !dbg !108
  call void @free(i8* noundef %73) #7, !dbg !110
  %74 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !111
  %75 = bitcast %struct._xmlRelaxNGDefine* %74 to i8*, !dbg !111
  call void @free(i8* noundef %75) #7, !dbg !112
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !113
  br label %147, !dbg !113

76:                                               ; preds = %61
  %77 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !114
  %78 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %77, i32 0, i32 0, !dbg !115
  %79 = load i32, i32* %78, align 8, !dbg !115
  %80 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !116
  %81 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %80, i32 0, i32 0, !dbg !117
  store i32 %79, i32* %81, align 8, !dbg !118
  %82 = load %struct._xmlAttr**, %struct._xmlAttr*** %6, align 8, !dbg !119
  %83 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !120
  %84 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %83, i32 0, i32 2, !dbg !121
  store %struct._xmlAttr** %82, %struct._xmlAttr*** %84, align 8, !dbg !122
  %85 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !123
  %86 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %85, i32 0, i32 1, !dbg !124
  %87 = load i32, i32* %86, align 4, !dbg !124
  %88 = sext i32 %87 to i64, !dbg !123
  %89 = mul i64 %88, 8, !dbg !125
  %90 = call noalias i8* @malloc(i64 noundef %89) #7, !dbg !126
  %91 = bitcast i8* %90 to %struct._xmlAttr**, !dbg !127
  %92 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !128
  %93 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %92, i32 0, i32 2, !dbg !129
  store %struct._xmlAttr** %91, %struct._xmlAttr*** %93, align 8, !dbg !130
  %94 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !131
  %95 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %94, i32 0, i32 2, !dbg !133
  %96 = load %struct._xmlAttr**, %struct._xmlAttr*** %95, align 8, !dbg !133
  %97 = icmp eq %struct._xmlAttr** %96, null, !dbg !134
  br i1 %97, label %98, label %105, !dbg !135

98:                                               ; preds = %76
  %99 = load %struct._xmlAttr**, %struct._xmlAttr*** %6, align 8, !dbg !136
  %100 = bitcast %struct._xmlAttr** %99 to i8*, !dbg !136
  call void @free(i8* noundef %100) #7, !dbg !138
  %101 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !139
  %102 = bitcast %struct._xmlRelaxNGValidState* %101 to i8*, !dbg !139
  call void @free(i8* noundef %102) #7, !dbg !140
  %103 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !141
  %104 = bitcast %struct._xmlRelaxNGDefine* %103 to i8*, !dbg !141
  call void @free(i8* noundef %104) #7, !dbg !142
  store %struct._xmlRelaxNGDefine* null, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !143
  br label %147, !dbg !143

105:                                              ; preds = %76
  %106 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !144
  %107 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %106, i32 0, i32 1, !dbg !144
  %108 = load i32, i32* %107, align 4, !dbg !144
  %109 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !144
  %110 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %109, i32 0, i32 0, !dbg !144
  %111 = load i32, i32* %110, align 8, !dbg !144
  %112 = icmp sle i32 %108, %111, !dbg !144
  br i1 %112, label %113, label %115, !dbg !144

113:                                              ; preds = %105
  br i1 true, label %114, label %115, !dbg !144

114:                                              ; preds = %113
  br label %117, !dbg !144

115:                                              ; preds = %113, %105
  %116 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine, i64 0, i64 0)), !dbg !144
  br label %117, !dbg !144

117:                                              ; preds = %115, %114
  %118 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGFreeDefine, i64 0, i64 0)), !dbg !145
  %119 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !146
  %120 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %119, i32 0, i32 2, !dbg !147
  %121 = load %struct._xmlAttr**, %struct._xmlAttr*** %120, align 8, !dbg !147
  %122 = bitcast %struct._xmlAttr** %121 to i8*, !dbg !148
  %123 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !149
  %124 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %123, i32 0, i32 2, !dbg !150
  %125 = load %struct._xmlAttr**, %struct._xmlAttr*** %124, align 8, !dbg !150
  %126 = bitcast %struct._xmlAttr** %125 to i8*, !dbg !148
  %127 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !151
  %128 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %127, i32 0, i32 1, !dbg !152
  %129 = load i32, i32* %128, align 4, !dbg !152
  %130 = sext i32 %129 to i64, !dbg !151
  %131 = mul i64 %130, 8, !dbg !153
  %132 = call i8* @memcpy(i8* %122, i8* %126, i64 %131), !dbg !148
  br label %133, !dbg !154

133:                                              ; preds = %117, %53
  %134 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !155
  %135 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %134, i32 0, i32 2, !dbg !157
  %136 = load %struct._xmlAttr**, %struct._xmlAttr*** %135, align 8, !dbg !157
  %137 = icmp ne %struct._xmlAttr** %136, null, !dbg !155
  br i1 %137, label %138, label %143, !dbg !158

138:                                              ; preds = %133
  %139 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !159
  %140 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %139, i32 0, i32 2, !dbg !160
  %141 = load %struct._xmlAttr**, %struct._xmlAttr*** %140, align 8, !dbg !160
  %142 = bitcast %struct._xmlAttr** %141 to i8*, !dbg !159
  call void @free(i8* noundef %142) #7, !dbg !161
  br label %143, !dbg !161

143:                                              ; preds = %138, %133
  %144 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !162
  %145 = bitcast %struct._xmlRelaxNGValidState* %144 to i8*, !dbg !162
  call void @free(i8* noundef %145) #7, !dbg !163
  %146 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !164
  store %struct._xmlRelaxNGDefine* %146, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !165
  br label %147, !dbg !165

147:                                              ; preds = %143, %98, %71, %21, %15, %9
  %148 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !166
  ret %struct._xmlRelaxNGDefine* %148, !dbg !166
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !167 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  %3 = alloca %struct._xmlRelaxNGDefine*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %2, metadata !170, metadata !DIExpression()), !dbg !171
  %4 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !172
  %5 = bitcast i8* %4 to %struct._xmlRelaxNGDefine*, !dbg !173
  store %struct._xmlRelaxNGDefine* %5, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !171
  %6 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !174
  %7 = icmp eq %struct._xmlRelaxNGDefine* %6, null, !dbg !176
  br i1 %7, label %8, label %9, !dbg !177

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !178
  br label %96, !dbg !178

9:                                                ; preds = %0
  %10 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !179
  %11 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %10, i32 0, i32 0, !dbg !180
  %12 = bitcast i32* %11 to i8*, !dbg !181
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)), !dbg !182
  %13 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !183
  %14 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %13, i32 0, i32 1, !dbg !184
  %15 = bitcast i32* %14 to i8*, !dbg !185
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !dbg !186
  %16 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !187
  %17 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %16, i32 0, i32 0, !dbg !188
  %18 = load i32, i32* %17, align 8, !dbg !188
  %19 = icmp sge i32 %18, 0, !dbg !189
  br i1 %19, label %20, label %25, !dbg !190

20:                                               ; preds = %9
  %21 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !191
  %22 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %21, i32 0, i32 0, !dbg !192
  %23 = load i32, i32* %22, align 8, !dbg !192
  %24 = icmp slt i32 %23, 1000, !dbg !193
  br label %25

25:                                               ; preds = %20, %9
  %26 = phi i1 [ false, %9 ], [ %24, %20 ], !dbg !194
  %27 = zext i1 %26 to i32, !dbg !190
  %28 = sext i32 %27 to i64, !dbg !187
  call void @klee_assume(i64 noundef %28), !dbg !195
  %29 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !196
  %30 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %29, i32 0, i32 1, !dbg !197
  %31 = load i32, i32* %30, align 4, !dbg !197
  %32 = icmp sge i32 %31, 0, !dbg !198
  br i1 %32, label %33, label %38, !dbg !199

33:                                               ; preds = %25
  %34 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !200
  %35 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %34, i32 0, i32 1, !dbg !201
  %36 = load i32, i32* %35, align 4, !dbg !201
  %37 = icmp slt i32 %36, 1000, !dbg !202
  br label %38

38:                                               ; preds = %33, %25
  %39 = phi i1 [ false, %25 ], [ %37, %33 ], !dbg !194
  %40 = zext i1 %39 to i32, !dbg !199
  %41 = sext i32 %40 to i64, !dbg !196
  call void @klee_assume(i64 noundef %41), !dbg !203
  %42 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !204
  %43 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %42, i32 0, i32 0, !dbg !206
  %44 = load i32, i32* %43, align 8, !dbg !206
  %45 = icmp sgt i32 %44, 0, !dbg !207
  br i1 %45, label %46, label %62, !dbg !208

46:                                               ; preds = %38
  %47 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !209
  %48 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %47, i32 0, i32 0, !dbg !211
  %49 = load i32, i32* %48, align 8, !dbg !211
  %50 = sext i32 %49 to i64, !dbg !209
  %51 = mul i64 %50, 8, !dbg !212
  %52 = call noalias i8* @malloc(i64 noundef %51) #7, !dbg !213
  %53 = bitcast i8* %52 to %struct._xmlAttr**, !dbg !214
  %54 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !215
  %55 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %54, i32 0, i32 2, !dbg !216
  store %struct._xmlAttr** %53, %struct._xmlAttr*** %55, align 8, !dbg !217
  %56 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !218
  %57 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %56, i32 0, i32 2, !dbg !219
  %58 = load %struct._xmlAttr**, %struct._xmlAttr*** %57, align 8, !dbg !219
  %59 = icmp ne %struct._xmlAttr** %58, null, !dbg !220
  %60 = zext i1 %59 to i32, !dbg !220
  %61 = sext i32 %60 to i64, !dbg !218
  call void @klee_assume(i64 noundef %61), !dbg !221
  br label %65, !dbg !222

62:                                               ; preds = %38
  %63 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !223
  %64 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %63, i32 0, i32 2, !dbg !225
  store %struct._xmlAttr** null, %struct._xmlAttr*** %64, align 8, !dbg !226
  br label %65

65:                                               ; preds = %62, %46
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %3, metadata !227, metadata !DIExpression()), !dbg !228
  %66 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !229
  %67 = call %struct._xmlRelaxNGDefine* @xmlRelaxNGFreeDefine(%struct._xmlRelaxNGDefine* noundef %66), !dbg !230
  store %struct._xmlRelaxNGDefine* %67, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !228
  %68 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !231
  %69 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %68, i32 0, i32 2, !dbg !233
  %70 = load %struct._xmlAttr**, %struct._xmlAttr*** %69, align 8, !dbg !233
  %71 = icmp ne %struct._xmlAttr** %70, null, !dbg !231
  br i1 %71, label %72, label %77, !dbg !234

72:                                               ; preds = %65
  %73 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !235
  %74 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %73, i32 0, i32 2, !dbg !236
  %75 = load %struct._xmlAttr**, %struct._xmlAttr*** %74, align 8, !dbg !236
  %76 = bitcast %struct._xmlAttr** %75 to i8*, !dbg !235
  call void @free(i8* noundef %76) #7, !dbg !237
  br label %77, !dbg !237

77:                                               ; preds = %72, %65
  %78 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !238
  %79 = bitcast %struct._xmlRelaxNGDefine* %78 to i8*, !dbg !238
  call void @free(i8* noundef %79) #7, !dbg !239
  %80 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !240
  %81 = icmp ne %struct._xmlRelaxNGDefine* %80, null, !dbg !240
  br i1 %81, label %82, label %95, !dbg !242

82:                                               ; preds = %77
  %83 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !243
  %84 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %83, i32 0, i32 2, !dbg !246
  %85 = load %struct._xmlAttr**, %struct._xmlAttr*** %84, align 8, !dbg !246
  %86 = icmp ne %struct._xmlAttr** %85, null, !dbg !243
  br i1 %86, label %87, label %92, !dbg !247

87:                                               ; preds = %82
  %88 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !248
  %89 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %88, i32 0, i32 2, !dbg !249
  %90 = load %struct._xmlAttr**, %struct._xmlAttr*** %89, align 8, !dbg !249
  %91 = bitcast %struct._xmlAttr** %90 to i8*, !dbg !248
  call void @free(i8* noundef %91) #7, !dbg !250
  br label %92, !dbg !250

92:                                               ; preds = %87, %82
  %93 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !251
  %94 = bitcast %struct._xmlRelaxNGDefine* %93 to i8*, !dbg !251
  call void @free(i8* noundef %94) #7, !dbg !252
  br label %95, !dbg !253

95:                                               ; preds = %92, %77
  store i32 0, i32* %1, align 4, !dbg !254
  br label %96, !dbg !254

96:                                               ; preds = %95, %8
  %97 = load i32, i32* %1, align 4, !dbg !255
  ret i32 %97, !dbg !255
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !256 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !265, metadata !DIExpression()), !dbg !266
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !267, metadata !DIExpression()), !dbg !268
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i8** %7, metadata !271, metadata !DIExpression()), !dbg !274
  %9 = load i8*, i8** %4, align 8, !dbg !275
  store i8* %9, i8** %7, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i8** %8, metadata !276, metadata !DIExpression()), !dbg !279
  %10 = load i8*, i8** %5, align 8, !dbg !280
  store i8* %10, i8** %8, align 8, !dbg !279
  br label %11, !dbg !281

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !282
  %13 = add i64 %12, -1, !dbg !282
  store i64 %13, i64* %6, align 8, !dbg !282
  %14 = icmp ugt i64 %12, 0, !dbg !283
  br i1 %14, label %15, label %21, !dbg !281

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !284
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !284
  store i8* %17, i8** %8, align 8, !dbg !284
  %18 = load i8, i8* %16, align 1, !dbg !285
  %19 = load i8*, i8** %7, align 8, !dbg !286
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !286
  store i8* %20, i8** %7, align 8, !dbg !286
  store i8 %18, i8* %19, align 1, !dbg !287
  br label %11, !dbg !281, !llvm.loop !288

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !290
  ret i8* %22, !dbg !291
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/230_relaxng.c_1309_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "244aff30be2ae01a02c7247f68a5cabd")
!2 = !{!3, !4, !17, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefine", file: !1, line: 17, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDefine", file: !1, line: 13, size: 128, elements: !7)
!7 = !{!8, !10, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !6, file: !1, line: 16, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !1, line: 11, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 10, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 10, flags: DIFlagFwdDecl)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 23, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 19, size: 128, elements: !20)
!20 = !{!21, !22, !23}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !19, file: !1, line: 20, baseType: !9, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !19, file: !1, line: 21, baseType: !9, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !19, file: !1, line: 22, baseType: !12, size: 64, offset: 64)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlRelaxNGFreeDefine", scope: !1, file: !1, line: 26, type: !35, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!4, !4}
!37 = !{}
!38 = !DILocalVariable(name: "def", arg: 1, scope: !34, file: !1, line: 26, type: !4)
!39 = !DILocation(line: 26, column: 58, scope: !34)
!40 = !DILocation(line: 29, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 29, column: 9)
!42 = !DILocation(line: 29, column: 13, scope: !41)
!43 = !DILocation(line: 29, column: 9, scope: !34)
!44 = !DILocation(line: 29, column: 22, scope: !41)
!45 = !DILocalVariable(name: "ret", scope: !34, file: !1, line: 32, type: !4)
!46 = !DILocation(line: 32, column: 23, scope: !34)
!47 = !DILocation(line: 32, column: 48, scope: !34)
!48 = !DILocation(line: 32, column: 29, scope: !34)
!49 = !DILocation(line: 33, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !34, file: !1, line: 33, column: 9)
!51 = !DILocation(line: 33, column: 13, scope: !50)
!52 = !DILocation(line: 33, column: 9, scope: !34)
!53 = !DILocation(line: 33, column: 22, scope: !50)
!54 = !DILocalVariable(name: "state", scope: !34, file: !1, line: 36, type: !17)
!55 = !DILocation(line: 36, column: 27, scope: !34)
!56 = !DILocation(line: 36, column: 58, scope: !34)
!57 = !DILocation(line: 36, column: 35, scope: !34)
!58 = !DILocation(line: 37, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !34, file: !1, line: 37, column: 9)
!60 = !DILocation(line: 37, column: 15, scope: !59)
!61 = !DILocation(line: 37, column: 9, scope: !34)
!62 = !DILocation(line: 38, column: 14, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 37, column: 24)
!64 = !DILocation(line: 38, column: 9, scope: !63)
!65 = !DILocation(line: 39, column: 9, scope: !63)
!66 = !DILocation(line: 43, column: 25, scope: !34)
!67 = !DILocation(line: 43, column: 32, scope: !34)
!68 = !DILocation(line: 43, column: 24, scope: !34)
!69 = !DILocation(line: 43, column: 5, scope: !34)
!70 = !DILocation(line: 44, column: 25, scope: !34)
!71 = !DILocation(line: 44, column: 32, scope: !34)
!72 = !DILocation(line: 44, column: 24, scope: !34)
!73 = !DILocation(line: 44, column: 5, scope: !34)
!74 = !DILocation(line: 47, column: 17, scope: !34)
!75 = !DILocation(line: 47, column: 24, scope: !34)
!76 = !DILocation(line: 47, column: 33, scope: !34)
!77 = !DILocation(line: 47, column: 38, scope: !34)
!78 = !DILocation(line: 47, column: 41, scope: !34)
!79 = !DILocation(line: 47, column: 48, scope: !34)
!80 = !DILocation(line: 47, column: 57, scope: !34)
!81 = !DILocation(line: 0, scope: !34)
!82 = !DILocation(line: 47, column: 5, scope: !34)
!83 = !DILocation(line: 48, column: 17, scope: !34)
!84 = !DILocation(line: 48, column: 24, scope: !34)
!85 = !DILocation(line: 48, column: 32, scope: !34)
!86 = !DILocation(line: 48, column: 37, scope: !34)
!87 = !DILocation(line: 48, column: 40, scope: !34)
!88 = !DILocation(line: 48, column: 47, scope: !34)
!89 = !DILocation(line: 48, column: 55, scope: !34)
!90 = !DILocation(line: 48, column: 5, scope: !34)
!91 = !DILocation(line: 51, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !34, file: !1, line: 51, column: 9)
!93 = !DILocation(line: 51, column: 16, scope: !92)
!94 = !DILocation(line: 51, column: 25, scope: !92)
!95 = !DILocation(line: 51, column: 9, scope: !34)
!96 = !DILocalVariable(name: "tmp", scope: !97, file: !1, line: 52, type: !12)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 51, column: 30)
!98 = !DILocation(line: 52, column: 21, scope: !97)
!99 = !DILocation(line: 52, column: 47, scope: !97)
!100 = !DILocation(line: 52, column: 54, scope: !97)
!101 = !DILocation(line: 52, column: 63, scope: !97)
!102 = !DILocation(line: 52, column: 40, scope: !97)
!103 = !DILocation(line: 52, column: 27, scope: !97)
!104 = !DILocation(line: 53, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !97, file: !1, line: 53, column: 13)
!106 = !DILocation(line: 53, column: 17, scope: !105)
!107 = !DILocation(line: 53, column: 13, scope: !97)
!108 = !DILocation(line: 54, column: 18, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 53, column: 26)
!110 = !DILocation(line: 54, column: 13, scope: !109)
!111 = !DILocation(line: 55, column: 18, scope: !109)
!112 = !DILocation(line: 55, column: 13, scope: !109)
!113 = !DILocation(line: 56, column: 13, scope: !109)
!114 = !DILocation(line: 58, column: 25, scope: !97)
!115 = !DILocation(line: 58, column: 32, scope: !97)
!116 = !DILocation(line: 58, column: 9, scope: !97)
!117 = !DILocation(line: 58, column: 14, scope: !97)
!118 = !DILocation(line: 58, column: 23, scope: !97)
!119 = !DILocation(line: 59, column: 22, scope: !97)
!120 = !DILocation(line: 59, column: 9, scope: !97)
!121 = !DILocation(line: 59, column: 14, scope: !97)
!122 = !DILocation(line: 59, column: 20, scope: !97)
!123 = !DILocation(line: 62, column: 44, scope: !97)
!124 = !DILocation(line: 62, column: 51, scope: !97)
!125 = !DILocation(line: 62, column: 59, scope: !97)
!126 = !DILocation(line: 62, column: 37, scope: !97)
!127 = !DILocation(line: 62, column: 24, scope: !97)
!128 = !DILocation(line: 62, column: 9, scope: !97)
!129 = !DILocation(line: 62, column: 16, scope: !97)
!130 = !DILocation(line: 62, column: 22, scope: !97)
!131 = !DILocation(line: 63, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !97, file: !1, line: 63, column: 13)
!133 = !DILocation(line: 63, column: 20, scope: !132)
!134 = !DILocation(line: 63, column: 26, scope: !132)
!135 = !DILocation(line: 63, column: 13, scope: !97)
!136 = !DILocation(line: 64, column: 18, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 63, column: 35)
!138 = !DILocation(line: 64, column: 13, scope: !137)
!139 = !DILocation(line: 65, column: 18, scope: !137)
!140 = !DILocation(line: 65, column: 13, scope: !137)
!141 = !DILocation(line: 66, column: 18, scope: !137)
!142 = !DILocation(line: 66, column: 13, scope: !137)
!143 = !DILocation(line: 67, column: 13, scope: !137)
!144 = !DILocation(line: 72, column: 9, scope: !97)
!145 = !DILocation(line: 75, column: 9, scope: !97)
!146 = !DILocation(line: 78, column: 16, scope: !97)
!147 = !DILocation(line: 78, column: 21, scope: !97)
!148 = !DILocation(line: 78, column: 9, scope: !97)
!149 = !DILocation(line: 78, column: 28, scope: !97)
!150 = !DILocation(line: 78, column: 35, scope: !97)
!151 = !DILocation(line: 78, column: 42, scope: !97)
!152 = !DILocation(line: 78, column: 49, scope: !97)
!153 = !DILocation(line: 78, column: 57, scope: !97)
!154 = !DILocation(line: 79, column: 5, scope: !97)
!155 = !DILocation(line: 82, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !34, file: !1, line: 82, column: 9)
!157 = !DILocation(line: 82, column: 16, scope: !156)
!158 = !DILocation(line: 82, column: 9, scope: !34)
!159 = !DILocation(line: 82, column: 28, scope: !156)
!160 = !DILocation(line: 82, column: 35, scope: !156)
!161 = !DILocation(line: 82, column: 23, scope: !156)
!162 = !DILocation(line: 83, column: 10, scope: !34)
!163 = !DILocation(line: 83, column: 5, scope: !34)
!164 = !DILocation(line: 84, column: 12, scope: !34)
!165 = !DILocation(line: 84, column: 5, scope: !34)
!166 = !DILocation(line: 85, column: 1, scope: !34)
!167 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 88, type: !168, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!168 = !DISubroutineType(types: !169)
!169 = !{!9}
!170 = !DILocalVariable(name: "def", scope: !167, file: !1, line: 90, type: !4)
!171 = !DILocation(line: 90, column: 23, scope: !167)
!172 = !DILocation(line: 90, column: 48, scope: !167)
!173 = !DILocation(line: 90, column: 29, scope: !167)
!174 = !DILocation(line: 91, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !1, line: 91, column: 9)
!176 = !DILocation(line: 91, column: 13, scope: !175)
!177 = !DILocation(line: 91, column: 9, scope: !167)
!178 = !DILocation(line: 91, column: 22, scope: !175)
!179 = !DILocation(line: 94, column: 25, scope: !167)
!180 = !DILocation(line: 94, column: 30, scope: !167)
!181 = !DILocation(line: 94, column: 24, scope: !167)
!182 = !DILocation(line: 94, column: 5, scope: !167)
!183 = !DILocation(line: 95, column: 25, scope: !167)
!184 = !DILocation(line: 95, column: 30, scope: !167)
!185 = !DILocation(line: 95, column: 24, scope: !167)
!186 = !DILocation(line: 95, column: 5, scope: !167)
!187 = !DILocation(line: 98, column: 17, scope: !167)
!188 = !DILocation(line: 98, column: 22, scope: !167)
!189 = !DILocation(line: 98, column: 31, scope: !167)
!190 = !DILocation(line: 98, column: 36, scope: !167)
!191 = !DILocation(line: 98, column: 39, scope: !167)
!192 = !DILocation(line: 98, column: 44, scope: !167)
!193 = !DILocation(line: 98, column: 53, scope: !167)
!194 = !DILocation(line: 0, scope: !167)
!195 = !DILocation(line: 98, column: 5, scope: !167)
!196 = !DILocation(line: 99, column: 17, scope: !167)
!197 = !DILocation(line: 99, column: 22, scope: !167)
!198 = !DILocation(line: 99, column: 30, scope: !167)
!199 = !DILocation(line: 99, column: 35, scope: !167)
!200 = !DILocation(line: 99, column: 38, scope: !167)
!201 = !DILocation(line: 99, column: 43, scope: !167)
!202 = !DILocation(line: 99, column: 51, scope: !167)
!203 = !DILocation(line: 99, column: 5, scope: !167)
!204 = !DILocation(line: 102, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !167, file: !1, line: 102, column: 9)
!206 = !DILocation(line: 102, column: 14, scope: !205)
!207 = !DILocation(line: 102, column: 23, scope: !205)
!208 = !DILocation(line: 102, column: 9, scope: !167)
!209 = !DILocation(line: 103, column: 42, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 102, column: 28)
!211 = !DILocation(line: 103, column: 47, scope: !210)
!212 = !DILocation(line: 103, column: 56, scope: !210)
!213 = !DILocation(line: 103, column: 35, scope: !210)
!214 = !DILocation(line: 103, column: 22, scope: !210)
!215 = !DILocation(line: 103, column: 9, scope: !210)
!216 = !DILocation(line: 103, column: 14, scope: !210)
!217 = !DILocation(line: 103, column: 20, scope: !210)
!218 = !DILocation(line: 105, column: 21, scope: !210)
!219 = !DILocation(line: 105, column: 26, scope: !210)
!220 = !DILocation(line: 105, column: 32, scope: !210)
!221 = !DILocation(line: 105, column: 9, scope: !210)
!222 = !DILocation(line: 106, column: 5, scope: !210)
!223 = !DILocation(line: 107, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !205, file: !1, line: 106, column: 12)
!225 = !DILocation(line: 107, column: 14, scope: !224)
!226 = !DILocation(line: 107, column: 20, scope: !224)
!227 = !DILocalVariable(name: "result", scope: !167, file: !1, line: 111, type: !4)
!228 = !DILocation(line: 111, column: 23, scope: !167)
!229 = !DILocation(line: 111, column: 53, scope: !167)
!230 = !DILocation(line: 111, column: 32, scope: !167)
!231 = !DILocation(line: 114, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !167, file: !1, line: 114, column: 9)
!233 = !DILocation(line: 114, column: 14, scope: !232)
!234 = !DILocation(line: 114, column: 9, scope: !167)
!235 = !DILocation(line: 114, column: 26, scope: !232)
!236 = !DILocation(line: 114, column: 31, scope: !232)
!237 = !DILocation(line: 114, column: 21, scope: !232)
!238 = !DILocation(line: 115, column: 10, scope: !167)
!239 = !DILocation(line: 115, column: 5, scope: !167)
!240 = !DILocation(line: 116, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !167, file: !1, line: 116, column: 9)
!242 = !DILocation(line: 116, column: 9, scope: !167)
!243 = !DILocation(line: 117, column: 13, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 117, column: 13)
!245 = distinct !DILexicalBlock(scope: !241, file: !1, line: 116, column: 17)
!246 = !DILocation(line: 117, column: 21, scope: !244)
!247 = !DILocation(line: 117, column: 13, scope: !245)
!248 = !DILocation(line: 117, column: 33, scope: !244)
!249 = !DILocation(line: 117, column: 41, scope: !244)
!250 = !DILocation(line: 117, column: 28, scope: !244)
!251 = !DILocation(line: 118, column: 14, scope: !245)
!252 = !DILocation(line: 118, column: 9, scope: !245)
!253 = !DILocation(line: 119, column: 5, scope: !245)
!254 = !DILocation(line: 121, column: 5, scope: !167)
!255 = !DILocation(line: 122, column: 1, scope: !167)
!256 = distinct !DISubprogram(name: "memcpy", scope: !257, file: !257, line: 12, type: !258, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !37)
!257 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!258 = !DISubroutineType(types: !259)
!259 = !{!3, !3, !260, !262}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !263, line: 46, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!264 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!265 = !DILocalVariable(name: "destaddr", arg: 1, scope: !256, file: !257, line: 12, type: !3)
!266 = !DILocation(line: 12, column: 20, scope: !256)
!267 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !256, file: !257, line: 12, type: !260)
!268 = !DILocation(line: 12, column: 42, scope: !256)
!269 = !DILocalVariable(name: "len", arg: 3, scope: !256, file: !257, line: 12, type: !262)
!270 = !DILocation(line: 12, column: 58, scope: !256)
!271 = !DILocalVariable(name: "dest", scope: !256, file: !257, line: 13, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DILocation(line: 13, column: 9, scope: !256)
!275 = !DILocation(line: 13, column: 16, scope: !256)
!276 = !DILocalVariable(name: "src", scope: !256, file: !257, line: 14, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!279 = !DILocation(line: 14, column: 15, scope: !256)
!280 = !DILocation(line: 14, column: 21, scope: !256)
!281 = !DILocation(line: 16, column: 3, scope: !256)
!282 = !DILocation(line: 16, column: 13, scope: !256)
!283 = !DILocation(line: 16, column: 16, scope: !256)
!284 = !DILocation(line: 17, column: 19, scope: !256)
!285 = !DILocation(line: 17, column: 15, scope: !256)
!286 = !DILocation(line: 17, column: 10, scope: !256)
!287 = !DILocation(line: 17, column: 13, scope: !256)
!288 = distinct !{!288, !281, !284, !289}
!289 = !{!"llvm.loop.mustprogress"}
!290 = !DILocation(line: 18, column: 10, scope: !256)
!291 = !DILocation(line: 18, column: 3, scope: !256)
