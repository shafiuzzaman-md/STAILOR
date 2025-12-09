; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/184_tree.c_7148_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/184_tree.c_7148_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"buf_content\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/184_tree.c_7148_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !33, metadata !DIExpression()), !dbg !45
  %7 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !46
  store %struct._xmlBuffer* %7, %struct._xmlBuffer** %2, align 8, !dbg !45
  %8 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !47
  %9 = icmp ne %struct._xmlBuffer* %8, null, !dbg !47
  br i1 %9, label %11, label %10, !dbg !49

10:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !50
  br label %149, !dbg !50

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !51, metadata !DIExpression()), !dbg !52
  %12 = bitcast i32* %3 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %13 = load i32, i32* %3, align 4, !dbg !55
  %14 = icmp uge i32 %13, 1, !dbg !56
  br i1 %14, label %15, label %18, !dbg !57

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4, !dbg !58
  %17 = icmp ult i32 %16, 4096, !dbg !59
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ], !dbg !60
  %20 = zext i1 %19 to i32, !dbg !57
  %21 = sext i32 %20 to i64, !dbg !55
  call void @klee_assume(i64 noundef %21), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %4, metadata !62, metadata !DIExpression()), !dbg !63
  %22 = bitcast i32* %4 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !65
  %23 = load i32, i32* %4, align 4, !dbg !66
  %24 = icmp uge i32 %23, 0, !dbg !67
  br i1 %24, label %25, label %29, !dbg !68

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4, !dbg !69
  %27 = load i32, i32* %3, align 4, !dbg !70
  %28 = icmp ult i32 %26, %27, !dbg !71
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i1 [ false, %18 ], [ %28, %25 ], !dbg !60
  %31 = zext i1 %30 to i32, !dbg !68
  %32 = sext i32 %31 to i64, !dbg !66
  call void @klee_assume(i64 noundef %32), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %5, metadata !73, metadata !DIExpression()), !dbg !74
  %33 = bitcast i32* %5 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !76
  %34 = load i32, i32* %5, align 4, !dbg !77
  %35 = icmp uge i32 %34, 0, !dbg !78
  br i1 %35, label %36, label %40, !dbg !79

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4, !dbg !80
  %38 = load i32, i32* %3, align 4, !dbg !81
  %39 = icmp ult i32 %37, %38, !dbg !82
  br label %40

40:                                               ; preds = %36, %29
  %41 = phi i1 [ false, %29 ], [ %39, %36 ], !dbg !60
  %42 = zext i1 %41 to i32, !dbg !79
  %43 = sext i32 %42 to i64, !dbg !77
  call void @klee_assume(i64 noundef %43), !dbg !83
  %44 = load i32, i32* %3, align 4, !dbg !84
  %45 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !85
  %46 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %45, i32 0, i32 2, !dbg !86
  store i32 %44, i32* %46, align 4, !dbg !87
  %47 = load i32, i32* %4, align 4, !dbg !88
  %48 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !89
  %49 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %48, i32 0, i32 1, !dbg !90
  store i32 %47, i32* %49, align 8, !dbg !91
  %50 = load i32, i32* %3, align 4, !dbg !92
  %51 = zext i32 %50 to i64, !dbg !92
  %52 = call noalias i8* @malloc(i64 noundef %51) #7, !dbg !93
  %53 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !94
  %54 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %53, i32 0, i32 0, !dbg !95
  store i8* %52, i8** %54, align 8, !dbg !96
  %55 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !97
  %56 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %55, i32 0, i32 0, !dbg !99
  %57 = load i8*, i8** %56, align 8, !dbg !99
  %58 = icmp ne i8* %57, null, !dbg !97
  br i1 %58, label %61, label %59, !dbg !100

59:                                               ; preds = %40
  %60 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !101
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %60), !dbg !103
  store i32 1, i32* %1, align 4, !dbg !104
  br label %149, !dbg !104

61:                                               ; preds = %40
  %62 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !105
  %63 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %62, i32 0, i32 0, !dbg !106
  %64 = load i8*, i8** %63, align 8, !dbg !106
  %65 = load i32, i32* %3, align 4, !dbg !107
  %66 = zext i32 %65 to i64, !dbg !107
  call void @klee_make_symbolic(i8* noundef %64, i64 noundef %66, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %6, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %6, align 4, !dbg !110
  %67 = load i32, i32* %6, align 4, !dbg !111
  %68 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !113
  %69 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %68, i32 0, i32 2, !dbg !114
  %70 = load i32, i32* %69, align 4, !dbg !114
  %71 = icmp uge i32 %67, %70, !dbg !115
  br i1 %71, label %72, label %92, !dbg !116

72:                                               ; preds = %61
  %73 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !117
  %74 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %73, i32 0, i32 2, !dbg !119
  %75 = load i32, i32* %74, align 4, !dbg !119
  %76 = load i32, i32* %6, align 4, !dbg !120
  %77 = add i32 %75, %76, !dbg !121
  %78 = zext i32 %77 to i64, !dbg !117
  %79 = call noalias i8* @malloc(i64 noundef %78) #7, !dbg !122
  %80 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !123
  %81 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %80, i32 0, i32 4, !dbg !124
  store i8* %79, i8** %81, align 8, !dbg !125
  %82 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !126
  %83 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %82, i32 0, i32 4, !dbg !128
  %84 = load i8*, i8** %83, align 8, !dbg !128
  %85 = icmp ne i8* %84, null, !dbg !126
  br i1 %85, label %91, label %86, !dbg !129

86:                                               ; preds = %72
  %87 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !130
  %88 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %87, i32 0, i32 0, !dbg !132
  %89 = load i8*, i8** %88, align 8, !dbg !132
  call void @free(i8* noundef %89) #7, !dbg !133
  %90 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !134
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %90), !dbg !135
  store i32 1, i32* %1, align 4, !dbg !136
  br label %149, !dbg !136

91:                                               ; preds = %72
  br label %92, !dbg !137

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %5, align 4, !dbg !138
  %94 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !140
  %95 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %94, i32 0, i32 1, !dbg !141
  %96 = load i32, i32* %95, align 8, !dbg !141
  %97 = icmp ugt i32 %93, %96, !dbg !142
  br i1 %97, label %98, label %112, !dbg !143

98:                                               ; preds = %92
  %99 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !144
  %100 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %99, i32 0, i32 0, !dbg !146
  %101 = load i8*, i8** %100, align 8, !dbg !146
  call void @free(i8* noundef %101) #7, !dbg !147
  %102 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !148
  %103 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %102, i32 0, i32 4, !dbg !150
  %104 = load i8*, i8** %103, align 8, !dbg !150
  %105 = icmp ne i8* %104, null, !dbg !148
  br i1 %105, label %106, label %110, !dbg !151

106:                                              ; preds = %98
  %107 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !152
  %108 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %107, i32 0, i32 4, !dbg !153
  %109 = load i8*, i8** %108, align 8, !dbg !153
  call void @free(i8* noundef %109) #7, !dbg !154
  br label %110, !dbg !154

110:                                              ; preds = %106, %98
  %111 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !155
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %111), !dbg !156
  store i32 0, i32* %1, align 4, !dbg !157
  br label %149, !dbg !157

112:                                              ; preds = %92
  %113 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !158
  %114 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !159
  %115 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %114, i32 0, i32 0, !dbg !160
  %116 = load i8*, i8** %115, align 8, !dbg !160
  %117 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !161
  %118 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %117, i32 0, i32 0, !dbg !162
  %119 = load i8*, i8** %118, align 8, !dbg !162
  %120 = load i32, i32* %5, align 4, !dbg !163
  %121 = zext i32 %120 to i64, !dbg !161
  %122 = getelementptr inbounds i8, i8* %119, i64 %121, !dbg !161
  %123 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !164
  %124 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %123, i32 0, i32 1, !dbg !165
  %125 = load i32, i32* %124, align 8, !dbg !165
  %126 = zext i32 %125 to i64, !dbg !164
  %127 = call i8* @memmove(i8* %116, i8* %122, i64 %126), !dbg !166
  %128 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !167
  %129 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %128, i32 0, i32 0, !dbg !168
  %130 = load i8*, i8** %129, align 8, !dbg !168
  %131 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !169
  %132 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %131, i32 0, i32 1, !dbg !170
  %133 = load i32, i32* %132, align 8, !dbg !170
  %134 = zext i32 %133 to i64, !dbg !167
  %135 = getelementptr inbounds i8, i8* %130, i64 %134, !dbg !167
  store i8 0, i8* %135, align 1, !dbg !171
  %136 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !172
  %137 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %136, i32 0, i32 0, !dbg !173
  %138 = load i8*, i8** %137, align 8, !dbg !173
  call void @free(i8* noundef %138) #7, !dbg !174
  %139 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !175
  %140 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %139, i32 0, i32 4, !dbg !177
  %141 = load i8*, i8** %140, align 8, !dbg !177
  %142 = icmp ne i8* %141, null, !dbg !175
  br i1 %142, label %143, label %147, !dbg !178

143:                                              ; preds = %112
  %144 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !179
  %145 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %144, i32 0, i32 4, !dbg !180
  %146 = load i8*, i8** %145, align 8, !dbg !180
  call void @free(i8* noundef %146) #7, !dbg !181
  br label %147, !dbg !181

147:                                              ; preds = %143, %112
  %148 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !182
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %148), !dbg !183
  store i32 0, i32* %1, align 4, !dbg !184
  br label %149, !dbg !184

149:                                              ; preds = %147, %110, %86, %59, %10
  %150 = load i32, i32* %1, align 4, !dbg !185
  ret i32 %150, !dbg !185
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !196, metadata !DIExpression()), !dbg !197
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !198, metadata !DIExpression()), !dbg !199
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %8, metadata !202, metadata !DIExpression()), !dbg !205
  %10 = load i8*, i8** %5, align 8, !dbg !206
  store i8* %10, i8** %8, align 8, !dbg !205
  call void @llvm.dbg.declare(metadata i8** %9, metadata !207, metadata !DIExpression()), !dbg !210
  %11 = load i8*, i8** %6, align 8, !dbg !211
  store i8* %11, i8** %9, align 8, !dbg !210
  %12 = load i8*, i8** %6, align 8, !dbg !212
  %13 = load i8*, i8** %5, align 8, !dbg !214
  %14 = icmp eq i8* %12, %13, !dbg !215
  br i1 %14, label %15, label %17, !dbg !216

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !217
  store i8* %16, i8** %4, align 8, !dbg !218
  br label %52, !dbg !218

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !219
  %19 = load i8*, i8** %5, align 8, !dbg !221
  %20 = icmp ugt i8* %18, %19, !dbg !222
  br i1 %20, label %21, label %31, !dbg !223

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !224
  %23 = add i64 %22, -1, !dbg !224
  store i64 %23, i64* %7, align 8, !dbg !224
  %24 = icmp ne i64 %22, 0, !dbg !226
  br i1 %24, label %25, label %50, !dbg !226

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !227
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !227
  store i8* %27, i8** %9, align 8, !dbg !227
  %28 = load i8, i8* %26, align 1, !dbg !228
  %29 = load i8*, i8** %8, align 8, !dbg !229
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !229
  store i8* %30, i8** %8, align 8, !dbg !229
  store i8 %28, i8* %29, align 1, !dbg !230
  br label %21, !dbg !226, !llvm.loop !231

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !233
  %33 = sub i64 %32, 1, !dbg !235
  %34 = load i8*, i8** %8, align 8, !dbg !236
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !236
  store i8* %35, i8** %8, align 8, !dbg !236
  %36 = load i64, i64* %7, align 8, !dbg !237
  %37 = sub i64 %36, 1, !dbg !238
  %38 = load i8*, i8** %9, align 8, !dbg !239
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !239
  store i8* %39, i8** %9, align 8, !dbg !239
  br label %40, !dbg !240

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !241
  %42 = add i64 %41, -1, !dbg !241
  store i64 %42, i64* %7, align 8, !dbg !241
  %43 = icmp ne i64 %41, 0, !dbg !240
  br i1 %43, label %44, label %50, !dbg !240

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !242
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !242
  store i8* %46, i8** %9, align 8, !dbg !242
  %47 = load i8, i8* %45, align 1, !dbg !243
  %48 = load i8*, i8** %8, align 8, !dbg !244
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !244
  store i8* %49, i8** %8, align 8, !dbg !244
  store i8 %47, i8* %48, align 1, !dbg !245
  br label %40, !dbg !240, !llvm.loop !246

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !247
  store i8* %51, i8** %4, align 8, !dbg !248
  br label %52, !dbg !248

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !249
  ret i8* %53, !dbg !249
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/184_tree.c_7148_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "ee34735d27218846ab54bb927e67c438")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 74, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "XML_BUFFER_ALLOC_DOUBLEIT", value: 0)
!8 = !DIEnumerator(name: "XML_BUFFER_ALLOC_EXACT", value: 1)
!9 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IMMUTABLE", value: 2)
!10 = !DIEnumerator(name: "XML_BUFFER_ALLOC_IO", value: 3)
!11 = !DIEnumerator(name: "XML_BUFFER_ALLOC_HYBRID", value: 4)
!12 = !DIEnumerator(name: "XML_BUFFER_ALLOC_BOUNDED", value: 5)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !16, line: 28, baseType: !17)
!16 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !29, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{}
!33 = !DILocalVariable(name: "buf", scope: !28, file: !1, line: 7, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !38)
!38 = !{!39, !40, !41, !42, !44}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !37, file: !4, line: 92, baseType: !14, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !37, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !37, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !37, file: !4, line: 95, baseType: !43, size: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !37, file: !4, line: 96, baseType: !14, size: 64, offset: 192)
!45 = !DILocation(line: 7, column: 18, scope: !28)
!46 = !DILocation(line: 7, column: 24, scope: !28)
!47 = !DILocation(line: 8, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !28, file: !1, line: 8, column: 9)
!49 = !DILocation(line: 8, column: 9, scope: !28)
!50 = !DILocation(line: 8, column: 15, scope: !48)
!51 = !DILocalVariable(name: "buf_size", scope: !28, file: !1, line: 10, type: !5)
!52 = !DILocation(line: 10, column: 18, scope: !28)
!53 = !DILocation(line: 11, column: 24, scope: !28)
!54 = !DILocation(line: 11, column: 5, scope: !28)
!55 = !DILocation(line: 12, column: 17, scope: !28)
!56 = !DILocation(line: 12, column: 26, scope: !28)
!57 = !DILocation(line: 12, column: 31, scope: !28)
!58 = !DILocation(line: 12, column: 34, scope: !28)
!59 = !DILocation(line: 12, column: 43, scope: !28)
!60 = !DILocation(line: 0, scope: !28)
!61 = !DILocation(line: 12, column: 5, scope: !28)
!62 = !DILocalVariable(name: "buf_use", scope: !28, file: !1, line: 14, type: !5)
!63 = !DILocation(line: 14, column: 18, scope: !28)
!64 = !DILocation(line: 15, column: 24, scope: !28)
!65 = !DILocation(line: 15, column: 5, scope: !28)
!66 = !DILocation(line: 16, column: 17, scope: !28)
!67 = !DILocation(line: 16, column: 25, scope: !28)
!68 = !DILocation(line: 16, column: 30, scope: !28)
!69 = !DILocation(line: 16, column: 33, scope: !28)
!70 = !DILocation(line: 16, column: 43, scope: !28)
!71 = !DILocation(line: 16, column: 41, scope: !28)
!72 = !DILocation(line: 16, column: 5, scope: !28)
!73 = !DILocalVariable(name: "len", scope: !28, file: !1, line: 18, type: !5)
!74 = !DILocation(line: 18, column: 18, scope: !28)
!75 = !DILocation(line: 19, column: 24, scope: !28)
!76 = !DILocation(line: 19, column: 5, scope: !28)
!77 = !DILocation(line: 20, column: 17, scope: !28)
!78 = !DILocation(line: 20, column: 21, scope: !28)
!79 = !DILocation(line: 20, column: 26, scope: !28)
!80 = !DILocation(line: 20, column: 29, scope: !28)
!81 = !DILocation(line: 20, column: 35, scope: !28)
!82 = !DILocation(line: 20, column: 33, scope: !28)
!83 = !DILocation(line: 20, column: 5, scope: !28)
!84 = !DILocation(line: 22, column: 17, scope: !28)
!85 = !DILocation(line: 22, column: 5, scope: !28)
!86 = !DILocation(line: 22, column: 10, scope: !28)
!87 = !DILocation(line: 22, column: 15, scope: !28)
!88 = !DILocation(line: 23, column: 16, scope: !28)
!89 = !DILocation(line: 23, column: 5, scope: !28)
!90 = !DILocation(line: 23, column: 10, scope: !28)
!91 = !DILocation(line: 23, column: 14, scope: !28)
!92 = !DILocation(line: 24, column: 37, scope: !28)
!93 = !DILocation(line: 24, column: 30, scope: !28)
!94 = !DILocation(line: 24, column: 5, scope: !28)
!95 = !DILocation(line: 24, column: 10, scope: !28)
!96 = !DILocation(line: 24, column: 18, scope: !28)
!97 = !DILocation(line: 25, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !28, file: !1, line: 25, column: 9)
!99 = !DILocation(line: 25, column: 15, scope: !98)
!100 = !DILocation(line: 25, column: 9, scope: !28)
!101 = !DILocation(line: 26, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 25, column: 24)
!103 = !DILocation(line: 26, column: 9, scope: !102)
!104 = !DILocation(line: 27, column: 9, scope: !102)
!105 = !DILocation(line: 29, column: 24, scope: !28)
!106 = !DILocation(line: 29, column: 29, scope: !28)
!107 = !DILocation(line: 29, column: 38, scope: !28)
!108 = !DILocation(line: 29, column: 5, scope: !28)
!109 = !DILocalVariable(name: "start_buf", scope: !28, file: !1, line: 31, type: !31)
!110 = !DILocation(line: 31, column: 9, scope: !28)
!111 = !DILocation(line: 32, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !28, file: !1, line: 32, column: 9)
!113 = !DILocation(line: 32, column: 22, scope: !112)
!114 = !DILocation(line: 32, column: 27, scope: !112)
!115 = !DILocation(line: 32, column: 19, scope: !112)
!116 = !DILocation(line: 32, column: 9, scope: !28)
!117 = !DILocation(line: 33, column: 43, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 32, column: 33)
!119 = !DILocation(line: 33, column: 48, scope: !118)
!120 = !DILocation(line: 33, column: 55, scope: !118)
!121 = !DILocation(line: 33, column: 53, scope: !118)
!122 = !DILocation(line: 33, column: 36, scope: !118)
!123 = !DILocation(line: 33, column: 9, scope: !118)
!124 = !DILocation(line: 33, column: 14, scope: !118)
!125 = !DILocation(line: 33, column: 24, scope: !118)
!126 = !DILocation(line: 34, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !118, file: !1, line: 34, column: 13)
!128 = !DILocation(line: 34, column: 19, scope: !127)
!129 = !DILocation(line: 34, column: 13, scope: !118)
!130 = !DILocation(line: 35, column: 18, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 34, column: 30)
!132 = !DILocation(line: 35, column: 23, scope: !131)
!133 = !DILocation(line: 35, column: 13, scope: !131)
!134 = !DILocation(line: 36, column: 27, scope: !131)
!135 = !DILocation(line: 36, column: 13, scope: !131)
!136 = !DILocation(line: 37, column: 13, scope: !131)
!137 = !DILocation(line: 39, column: 5, scope: !118)
!138 = !DILocation(line: 41, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !28, file: !1, line: 41, column: 9)
!140 = !DILocation(line: 41, column: 15, scope: !139)
!141 = !DILocation(line: 41, column: 20, scope: !139)
!142 = !DILocation(line: 41, column: 13, scope: !139)
!143 = !DILocation(line: 41, column: 9, scope: !28)
!144 = !DILocation(line: 42, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 41, column: 25)
!146 = !DILocation(line: 42, column: 19, scope: !145)
!147 = !DILocation(line: 42, column: 9, scope: !145)
!148 = !DILocation(line: 43, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 43, column: 13)
!150 = !DILocation(line: 43, column: 18, scope: !149)
!151 = !DILocation(line: 43, column: 13, scope: !145)
!152 = !DILocation(line: 43, column: 34, scope: !149)
!153 = !DILocation(line: 43, column: 39, scope: !149)
!154 = !DILocation(line: 43, column: 29, scope: !149)
!155 = !DILocation(line: 44, column: 23, scope: !145)
!156 = !DILocation(line: 44, column: 9, scope: !145)
!157 = !DILocation(line: 45, column: 9, scope: !145)
!158 = !DILocation(line: 48, column: 5, scope: !28)
!159 = !DILocation(line: 49, column: 13, scope: !28)
!160 = !DILocation(line: 49, column: 18, scope: !28)
!161 = !DILocation(line: 49, column: 28, scope: !28)
!162 = !DILocation(line: 49, column: 33, scope: !28)
!163 = !DILocation(line: 49, column: 41, scope: !28)
!164 = !DILocation(line: 49, column: 47, scope: !28)
!165 = !DILocation(line: 49, column: 52, scope: !28)
!166 = !DILocation(line: 49, column: 5, scope: !28)
!167 = !DILocation(line: 50, column: 5, scope: !28)
!168 = !DILocation(line: 50, column: 10, scope: !28)
!169 = !DILocation(line: 50, column: 18, scope: !28)
!170 = !DILocation(line: 50, column: 23, scope: !28)
!171 = !DILocation(line: 50, column: 28, scope: !28)
!172 = !DILocation(line: 52, column: 10, scope: !28)
!173 = !DILocation(line: 52, column: 15, scope: !28)
!174 = !DILocation(line: 52, column: 5, scope: !28)
!175 = !DILocation(line: 53, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !28, file: !1, line: 53, column: 9)
!177 = !DILocation(line: 53, column: 14, scope: !176)
!178 = !DILocation(line: 53, column: 9, scope: !28)
!179 = !DILocation(line: 53, column: 30, scope: !176)
!180 = !DILocation(line: 53, column: 35, scope: !176)
!181 = !DILocation(line: 53, column: 25, scope: !176)
!182 = !DILocation(line: 54, column: 19, scope: !28)
!183 = !DILocation(line: 54, column: 5, scope: !28)
!184 = !DILocation(line: 55, column: 5, scope: !28)
!185 = !DILocation(line: 56, column: 1, scope: !28)
!186 = distinct !DISubprogram(name: "memmove", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !32)
!187 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !190, !191, !193}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 46, baseType: !195)
!194 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DILocalVariable(name: "dst", arg: 1, scope: !186, file: !187, line: 12, type: !190)
!197 = !DILocation(line: 12, column: 21, scope: !186)
!198 = !DILocalVariable(name: "src", arg: 2, scope: !186, file: !187, line: 12, type: !191)
!199 = !DILocation(line: 12, column: 38, scope: !186)
!200 = !DILocalVariable(name: "count", arg: 3, scope: !186, file: !187, line: 12, type: !193)
!201 = !DILocation(line: 12, column: 50, scope: !186)
!202 = !DILocalVariable(name: "a", scope: !186, file: !187, line: 13, type: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!205 = !DILocation(line: 13, column: 9, scope: !186)
!206 = !DILocation(line: 13, column: 13, scope: !186)
!207 = !DILocalVariable(name: "b", scope: !186, file: !187, line: 14, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!210 = !DILocation(line: 14, column: 15, scope: !186)
!211 = !DILocation(line: 14, column: 19, scope: !186)
!212 = !DILocation(line: 16, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !186, file: !187, line: 16, column: 7)
!214 = !DILocation(line: 16, column: 14, scope: !213)
!215 = !DILocation(line: 16, column: 11, scope: !213)
!216 = !DILocation(line: 16, column: 7, scope: !186)
!217 = !DILocation(line: 17, column: 12, scope: !213)
!218 = !DILocation(line: 17, column: 5, scope: !213)
!219 = !DILocation(line: 19, column: 7, scope: !220)
!220 = distinct !DILexicalBlock(scope: !186, file: !187, line: 19, column: 7)
!221 = !DILocation(line: 19, column: 13, scope: !220)
!222 = !DILocation(line: 19, column: 11, scope: !220)
!223 = !DILocation(line: 19, column: 7, scope: !186)
!224 = !DILocation(line: 20, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !187, line: 19, column: 18)
!226 = !DILocation(line: 20, column: 5, scope: !225)
!227 = !DILocation(line: 21, column: 16, scope: !225)
!228 = !DILocation(line: 21, column: 14, scope: !225)
!229 = !DILocation(line: 21, column: 9, scope: !225)
!230 = !DILocation(line: 21, column: 12, scope: !225)
!231 = distinct !{!231, !226, !227, !232}
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 23, column: 10, scope: !234)
!234 = distinct !DILexicalBlock(scope: !220, file: !187, line: 22, column: 10)
!235 = !DILocation(line: 23, column: 16, scope: !234)
!236 = !DILocation(line: 23, column: 7, scope: !234)
!237 = !DILocation(line: 24, column: 10, scope: !234)
!238 = !DILocation(line: 24, column: 16, scope: !234)
!239 = !DILocation(line: 24, column: 7, scope: !234)
!240 = !DILocation(line: 25, column: 5, scope: !234)
!241 = !DILocation(line: 25, column: 17, scope: !234)
!242 = !DILocation(line: 26, column: 16, scope: !234)
!243 = !DILocation(line: 26, column: 14, scope: !234)
!244 = !DILocation(line: 26, column: 9, scope: !234)
!245 = !DILocation(line: 26, column: 12, scope: !234)
!246 = distinct !{!246, !240, !242, !232}
!247 = !DILocation(line: 29, column: 10, scope: !186)
!248 = !DILocation(line: 29, column: 3, scope: !186)
!249 = !DILocation(line: 30, column: 1, scope: !186)
