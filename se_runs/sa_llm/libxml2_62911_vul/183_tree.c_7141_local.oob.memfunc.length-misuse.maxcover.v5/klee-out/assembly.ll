; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/183_tree.c_7141_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/183_tree.c_7141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"start_buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/183_tree.c_7141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %2, metadata !34, metadata !DIExpression()), !dbg !46
  %8 = call %struct._xmlBuffer* @xmlBufferCreate(), !dbg !47
  store %struct._xmlBuffer* %8, %struct._xmlBuffer** %2, align 8, !dbg !46
  %9 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !48
  %10 = icmp eq %struct._xmlBuffer* %9, null, !dbg !50
  br i1 %10, label %11, label %12, !dbg !51

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !52
  br label %124, !dbg !52

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %3, metadata !53, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %4, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i64* %5, metadata !60, metadata !DIExpression()), !dbg !61
  %13 = bitcast i64* %3 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !63
  %14 = bitcast i64* %4 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !65
  %15 = bitcast i64* %5 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)), !dbg !67
  %16 = load i64, i64* %3, align 8, !dbg !68
  %17 = icmp ule i64 %16, 1024, !dbg !69
  %18 = zext i1 %17 to i32, !dbg !69
  %19 = sext i32 %18 to i64, !dbg !68
  call void @klee_assume(i64 noundef %19), !dbg !70
  %20 = load i64, i64* %4, align 8, !dbg !71
  %21 = load i64, i64* %3, align 8, !dbg !72
  %22 = icmp ule i64 %20, %21, !dbg !73
  %23 = zext i1 %22 to i32, !dbg !73
  %24 = sext i32 %23 to i64, !dbg !71
  call void @klee_assume(i64 noundef %24), !dbg !74
  %25 = load i64, i64* %5, align 8, !dbg !75
  %26 = icmp ule i64 %25, 1024, !dbg !76
  %27 = zext i1 %26 to i32, !dbg !76
  %28 = sext i32 %27 to i64, !dbg !75
  call void @klee_assume(i64 noundef %28), !dbg !77
  %29 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !78
  %30 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %29, i32 0, i32 3, !dbg !79
  store i32 3, i32* %30, align 8, !dbg !80
  %31 = load i64, i64* %3, align 8, !dbg !81
  %32 = load i64, i64* %5, align 8, !dbg !82
  %33 = add i64 %31, %32, !dbg !83
  %34 = add i64 %33, 1, !dbg !84
  %35 = call noalias i8* @malloc(i64 noundef %34) #7, !dbg !85
  %36 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !86
  %37 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %36, i32 0, i32 4, !dbg !87
  store i8* %35, i8** %37, align 8, !dbg !88
  %38 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !89
  %39 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %38, i32 0, i32 4, !dbg !91
  %40 = load i8*, i8** %39, align 8, !dbg !91
  %41 = icmp eq i8* %40, null, !dbg !92
  br i1 %41, label %42, label %44, !dbg !93

42:                                               ; preds = %12
  %43 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !94
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %43), !dbg !96
  store i32 0, i32* %1, align 4, !dbg !97
  br label %124, !dbg !97

44:                                               ; preds = %12
  %45 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !98
  %46 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %45, i32 0, i32 4, !dbg !99
  %47 = load i8*, i8** %46, align 8, !dbg !99
  %48 = load i64, i64* %5, align 8, !dbg !100
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !101
  %50 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !102
  %51 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %50, i32 0, i32 0, !dbg !103
  store i8* %49, i8** %51, align 8, !dbg !104
  %52 = load i64, i64* %3, align 8, !dbg !105
  %53 = trunc i64 %52 to i32, !dbg !105
  %54 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !106
  %55 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %54, i32 0, i32 2, !dbg !107
  store i32 %53, i32* %55, align 4, !dbg !108
  %56 = load i64, i64* %4, align 8, !dbg !109
  %57 = trunc i64 %56 to i32, !dbg !109
  %58 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !110
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %58, i32 0, i32 1, !dbg !111
  store i32 %57, i32* %59, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i64* %6, metadata !113, metadata !DIExpression()), !dbg !115
  store i64 0, i64* %6, align 8, !dbg !115
  br label %60, !dbg !116

60:                                               ; preds = %70, %44
  %61 = load i64, i64* %6, align 8, !dbg !117
  %62 = load i64, i64* %4, align 8, !dbg !119
  %63 = icmp ult i64 %61, %62, !dbg !120
  br i1 %63, label %64, label %73, !dbg !121

64:                                               ; preds = %60
  %65 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !122
  %66 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %65, i32 0, i32 0, !dbg !124
  %67 = load i8*, i8** %66, align 8, !dbg !124
  %68 = load i64, i64* %6, align 8, !dbg !125
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !122
  store i8 65, i8* %69, align 1, !dbg !126
  br label %70, !dbg !127

70:                                               ; preds = %64
  %71 = load i64, i64* %6, align 8, !dbg !128
  %72 = add i64 %71, 1, !dbg !128
  store i64 %72, i64* %6, align 8, !dbg !128
  br label %60, !dbg !129, !llvm.loop !130

73:                                               ; preds = %60
  %74 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !133
  %75 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %74, i32 0, i32 0, !dbg !134
  %76 = load i8*, i8** %75, align 8, !dbg !134
  %77 = load i64, i64* %4, align 8, !dbg !135
  %78 = getelementptr inbounds i8, i8* %76, i64 %77, !dbg !133
  store i8 0, i8* %78, align 1, !dbg !136
  %79 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !137
  %80 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %79, i32 0, i32 3, !dbg !139
  %81 = load i32, i32* %80, align 8, !dbg !139
  %82 = icmp eq i32 %81, 3, !dbg !140
  br i1 %82, label %83, label %119, !dbg !141

83:                                               ; preds = %73
  %84 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !142
  %85 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %84, i32 0, i32 4, !dbg !143
  %86 = load i8*, i8** %85, align 8, !dbg !143
  %87 = icmp ne i8* %86, null, !dbg !144
  br i1 %87, label %88, label %119, !dbg !145

88:                                               ; preds = %83
  call void @llvm.dbg.declare(metadata i64* %7, metadata !146, metadata !DIExpression()), !dbg !148
  %89 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !149
  %90 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %89, i32 0, i32 0, !dbg !150
  %91 = load i8*, i8** %90, align 8, !dbg !150
  %92 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !151
  %93 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %92, i32 0, i32 4, !dbg !152
  %94 = load i8*, i8** %93, align 8, !dbg !152
  %95 = ptrtoint i8* %91 to i64, !dbg !153
  %96 = ptrtoint i8* %94 to i64, !dbg !153
  %97 = sub i64 %95, %96, !dbg !153
  store i64 %97, i64* %7, align 8, !dbg !148
  %98 = load i64, i64* %7, align 8, !dbg !154
  %99 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !156
  %100 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %99, i32 0, i32 2, !dbg !157
  %101 = load i32, i32* %100, align 4, !dbg !157
  %102 = zext i32 %101 to i64, !dbg !156
  %103 = icmp uge i64 %98, %102, !dbg !158
  br i1 %103, label %104, label %118, !dbg !159

104:                                              ; preds = %88
  %105 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !160
  %106 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !162
  %107 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %106, i32 0, i32 4, !dbg !163
  %108 = load i8*, i8** %107, align 8, !dbg !163
  %109 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !164
  %110 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %109, i32 0, i32 0, !dbg !165
  %111 = load i8*, i8** %110, align 8, !dbg !165
  %112 = getelementptr inbounds i8, i8* %111, i64 0, !dbg !164
  %113 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !166
  %114 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %113, i32 0, i32 1, !dbg !167
  %115 = load i32, i32* %114, align 8, !dbg !167
  %116 = zext i32 %115 to i64, !dbg !166
  %117 = call i8* @memmove(i8* %108, i8* %112, i64 %116), !dbg !168
  br label %118, !dbg !169

118:                                              ; preds = %104, %88
  br label %119, !dbg !170

119:                                              ; preds = %118, %83, %73
  %120 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !171
  %121 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %120, i32 0, i32 4, !dbg !172
  %122 = load i8*, i8** %121, align 8, !dbg !172
  call void @free(i8* noundef %122) #7, !dbg !173
  %123 = load %struct._xmlBuffer*, %struct._xmlBuffer** %2, align 8, !dbg !174
  call void @xmlBufferFree(%struct._xmlBuffer* noundef %123), !dbg !175
  store i32 0, i32* %1, align 4, !dbg !176
  br label %124, !dbg !176

124:                                              ; preds = %119, %42, %11
  %125 = load i32, i32* %1, align 4, !dbg !177
  ret i32 %125, !dbg !177
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlBuffer* @xmlBufferCreate() #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @xmlBufferFree(%struct._xmlBuffer* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !184, metadata !DIExpression()), !dbg !185
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %8, metadata !190, metadata !DIExpression()), !dbg !193
  %10 = load i8*, i8** %5, align 8, !dbg !194
  store i8* %10, i8** %8, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata i8** %9, metadata !195, metadata !DIExpression()), !dbg !198
  %11 = load i8*, i8** %6, align 8, !dbg !199
  store i8* %11, i8** %9, align 8, !dbg !198
  %12 = load i8*, i8** %6, align 8, !dbg !200
  %13 = load i8*, i8** %5, align 8, !dbg !202
  %14 = icmp eq i8* %12, %13, !dbg !203
  br i1 %14, label %15, label %17, !dbg !204

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !205
  store i8* %16, i8** %4, align 8, !dbg !206
  br label %52, !dbg !206

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !207
  %19 = load i8*, i8** %5, align 8, !dbg !209
  %20 = icmp ugt i8* %18, %19, !dbg !210
  br i1 %20, label %21, label %31, !dbg !211

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !212
  %23 = add i64 %22, -1, !dbg !212
  store i64 %23, i64* %7, align 8, !dbg !212
  %24 = icmp ne i64 %22, 0, !dbg !214
  br i1 %24, label %25, label %50, !dbg !214

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !215
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !215
  store i8* %27, i8** %9, align 8, !dbg !215
  %28 = load i8, i8* %26, align 1, !dbg !216
  %29 = load i8*, i8** %8, align 8, !dbg !217
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !217
  store i8* %30, i8** %8, align 8, !dbg !217
  store i8 %28, i8* %29, align 1, !dbg !218
  br label %21, !dbg !214, !llvm.loop !219

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !220
  %33 = sub i64 %32, 1, !dbg !222
  %34 = load i8*, i8** %8, align 8, !dbg !223
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !223
  store i8* %35, i8** %8, align 8, !dbg !223
  %36 = load i64, i64* %7, align 8, !dbg !224
  %37 = sub i64 %36, 1, !dbg !225
  %38 = load i8*, i8** %9, align 8, !dbg !226
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !226
  store i8* %39, i8** %9, align 8, !dbg !226
  br label %40, !dbg !227

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !228
  %42 = add i64 %41, -1, !dbg !228
  store i64 %42, i64* %7, align 8, !dbg !228
  %43 = icmp ne i64 %41, 0, !dbg !227
  br i1 %43, label %44, label %50, !dbg !227

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !229
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !229
  store i8* %46, i8** %9, align 8, !dbg !229
  %47 = load i8, i8* %45, align 1, !dbg !230
  %48 = load i8*, i8** %8, align 8, !dbg !231
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !231
  store i8* %49, i8** %8, align 8, !dbg !231
  store i8 %47, i8* %48, align 1, !dbg !232
  br label %40, !dbg !227, !llvm.loop !233

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !234
  store i8* %51, i8** %4, align 8, !dbg !235
  br label %52, !dbg !235

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !236
  ret i8* %53, !dbg !236
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !13, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/183_tree.c_7141_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "b06a063914e041520da99b4190c9145c")
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
!13 = !{!14, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !17, line: 28, baseType: !18)
!17 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{!32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{}
!34 = !DILocalVariable(name: "buf", scope: !29, file: !1, line: 6, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferPtr", file: !4, line: 90, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !4, line: 89, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !4, line: 91, size: 256, elements: !39)
!39 = !{!40, !41, !42, !43, !45}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !38, file: !4, line: 92, baseType: !15, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !38, file: !4, line: 93, baseType: !5, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !4, line: 94, baseType: !5, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !38, file: !4, line: 95, baseType: !44, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBufferAllocationScheme", file: !4, line: 81, baseType: !3)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !38, file: !4, line: 96, baseType: !15, size: 64, offset: 192)
!46 = !DILocation(line: 6, column: 18, scope: !29)
!47 = !DILocation(line: 6, column: 24, scope: !29)
!48 = !DILocation(line: 7, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !29, file: !1, line: 7, column: 9)
!50 = !DILocation(line: 7, column: 13, scope: !49)
!51 = !DILocation(line: 7, column: 9, scope: !29)
!52 = !DILocation(line: 7, column: 22, scope: !49)
!53 = !DILocalVariable(name: "size", scope: !29, file: !1, line: 10, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !DILocation(line: 10, column: 12, scope: !29)
!58 = !DILocalVariable(name: "use", scope: !29, file: !1, line: 10, type: !54)
!59 = !DILocation(line: 10, column: 18, scope: !29)
!60 = !DILocalVariable(name: "start_buf", scope: !29, file: !1, line: 10, type: !54)
!61 = !DILocation(line: 10, column: 23, scope: !29)
!62 = !DILocation(line: 11, column: 24, scope: !29)
!63 = !DILocation(line: 11, column: 5, scope: !29)
!64 = !DILocation(line: 12, column: 24, scope: !29)
!65 = !DILocation(line: 12, column: 5, scope: !29)
!66 = !DILocation(line: 13, column: 24, scope: !29)
!67 = !DILocation(line: 13, column: 5, scope: !29)
!68 = !DILocation(line: 16, column: 17, scope: !29)
!69 = !DILocation(line: 16, column: 22, scope: !29)
!70 = !DILocation(line: 16, column: 5, scope: !29)
!71 = !DILocation(line: 17, column: 17, scope: !29)
!72 = !DILocation(line: 17, column: 24, scope: !29)
!73 = !DILocation(line: 17, column: 21, scope: !29)
!74 = !DILocation(line: 17, column: 5, scope: !29)
!75 = !DILocation(line: 18, column: 17, scope: !29)
!76 = !DILocation(line: 18, column: 27, scope: !29)
!77 = !DILocation(line: 18, column: 5, scope: !29)
!78 = !DILocation(line: 21, column: 5, scope: !29)
!79 = !DILocation(line: 21, column: 10, scope: !29)
!80 = !DILocation(line: 21, column: 16, scope: !29)
!81 = !DILocation(line: 24, column: 39, scope: !29)
!82 = !DILocation(line: 24, column: 46, scope: !29)
!83 = !DILocation(line: 24, column: 44, scope: !29)
!84 = !DILocation(line: 24, column: 56, scope: !29)
!85 = !DILocation(line: 24, column: 32, scope: !29)
!86 = !DILocation(line: 24, column: 5, scope: !29)
!87 = !DILocation(line: 24, column: 10, scope: !29)
!88 = !DILocation(line: 24, column: 20, scope: !29)
!89 = !DILocation(line: 25, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !29, file: !1, line: 25, column: 9)
!91 = !DILocation(line: 25, column: 14, scope: !90)
!92 = !DILocation(line: 25, column: 24, scope: !90)
!93 = !DILocation(line: 25, column: 9, scope: !29)
!94 = !DILocation(line: 26, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 25, column: 33)
!96 = !DILocation(line: 26, column: 9, scope: !95)
!97 = !DILocation(line: 27, column: 9, scope: !95)
!98 = !DILocation(line: 29, column: 20, scope: !29)
!99 = !DILocation(line: 29, column: 25, scope: !29)
!100 = !DILocation(line: 29, column: 37, scope: !29)
!101 = !DILocation(line: 29, column: 35, scope: !29)
!102 = !DILocation(line: 29, column: 5, scope: !29)
!103 = !DILocation(line: 29, column: 10, scope: !29)
!104 = !DILocation(line: 29, column: 18, scope: !29)
!105 = !DILocation(line: 30, column: 17, scope: !29)
!106 = !DILocation(line: 30, column: 5, scope: !29)
!107 = !DILocation(line: 30, column: 10, scope: !29)
!108 = !DILocation(line: 30, column: 15, scope: !29)
!109 = !DILocation(line: 31, column: 16, scope: !29)
!110 = !DILocation(line: 31, column: 5, scope: !29)
!111 = !DILocation(line: 31, column: 10, scope: !29)
!112 = !DILocation(line: 31, column: 14, scope: !29)
!113 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 34, type: !54)
!114 = distinct !DILexicalBlock(scope: !29, file: !1, line: 34, column: 5)
!115 = !DILocation(line: 34, column: 17, scope: !114)
!116 = !DILocation(line: 34, column: 10, scope: !114)
!117 = !DILocation(line: 34, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 34, column: 5)
!119 = !DILocation(line: 34, column: 28, scope: !118)
!120 = !DILocation(line: 34, column: 26, scope: !118)
!121 = !DILocation(line: 34, column: 5, scope: !114)
!122 = !DILocation(line: 35, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 34, column: 38)
!124 = !DILocation(line: 35, column: 14, scope: !123)
!125 = !DILocation(line: 35, column: 22, scope: !123)
!126 = !DILocation(line: 35, column: 25, scope: !123)
!127 = !DILocation(line: 36, column: 5, scope: !123)
!128 = !DILocation(line: 34, column: 34, scope: !118)
!129 = !DILocation(line: 34, column: 5, scope: !118)
!130 = distinct !{!130, !121, !131, !132}
!131 = !DILocation(line: 36, column: 5, scope: !114)
!132 = !{!"llvm.loop.mustprogress"}
!133 = !DILocation(line: 37, column: 5, scope: !29)
!134 = !DILocation(line: 37, column: 10, scope: !29)
!135 = !DILocation(line: 37, column: 18, scope: !29)
!136 = !DILocation(line: 37, column: 23, scope: !29)
!137 = !DILocation(line: 40, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !29, file: !1, line: 40, column: 9)
!139 = !DILocation(line: 40, column: 15, scope: !138)
!140 = !DILocation(line: 40, column: 21, scope: !138)
!141 = !DILocation(line: 40, column: 45, scope: !138)
!142 = !DILocation(line: 40, column: 49, scope: !138)
!143 = !DILocation(line: 40, column: 54, scope: !138)
!144 = !DILocation(line: 40, column: 64, scope: !138)
!145 = !DILocation(line: 40, column: 9, scope: !29)
!146 = !DILocalVariable(name: "computed_start", scope: !147, file: !1, line: 41, type: !54)
!147 = distinct !DILexicalBlock(scope: !138, file: !1, line: 40, column: 74)
!148 = !DILocation(line: 41, column: 16, scope: !147)
!149 = !DILocation(line: 41, column: 33, scope: !147)
!150 = !DILocation(line: 41, column: 38, scope: !147)
!151 = !DILocation(line: 41, column: 48, scope: !147)
!152 = !DILocation(line: 41, column: 53, scope: !147)
!153 = !DILocation(line: 41, column: 46, scope: !147)
!154 = !DILocation(line: 42, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 42, column: 13)
!156 = !DILocation(line: 42, column: 31, scope: !155)
!157 = !DILocation(line: 42, column: 36, scope: !155)
!158 = !DILocation(line: 42, column: 28, scope: !155)
!159 = !DILocation(line: 42, column: 13, scope: !147)
!160 = !DILocation(line: 43, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !155, file: !1, line: 42, column: 42)
!162 = !DILocation(line: 45, column: 21, scope: !161)
!163 = !DILocation(line: 45, column: 26, scope: !161)
!164 = !DILocation(line: 45, column: 38, scope: !161)
!165 = !DILocation(line: 45, column: 43, scope: !161)
!166 = !DILocation(line: 45, column: 55, scope: !161)
!167 = !DILocation(line: 45, column: 60, scope: !161)
!168 = !DILocation(line: 45, column: 13, scope: !161)
!169 = !DILocation(line: 46, column: 9, scope: !161)
!170 = !DILocation(line: 47, column: 5, scope: !147)
!171 = !DILocation(line: 50, column: 10, scope: !29)
!172 = !DILocation(line: 50, column: 15, scope: !29)
!173 = !DILocation(line: 50, column: 5, scope: !29)
!174 = !DILocation(line: 51, column: 19, scope: !29)
!175 = !DILocation(line: 51, column: 5, scope: !29)
!176 = !DILocation(line: 52, column: 5, scope: !29)
!177 = !DILocation(line: 53, column: 1, scope: !29)
!178 = distinct !DISubprogram(name: "memmove", scope: !179, file: !179, line: 12, type: !180, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !33)
!179 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!180 = !DISubroutineType(types: !181)
!181 = !{!14, !14, !182, !54}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!184 = !DILocalVariable(name: "dst", arg: 1, scope: !178, file: !179, line: 12, type: !14)
!185 = !DILocation(line: 12, column: 21, scope: !178)
!186 = !DILocalVariable(name: "src", arg: 2, scope: !178, file: !179, line: 12, type: !182)
!187 = !DILocation(line: 12, column: 38, scope: !178)
!188 = !DILocalVariable(name: "count", arg: 3, scope: !178, file: !179, line: 12, type: !54)
!189 = !DILocation(line: 12, column: 50, scope: !178)
!190 = !DILocalVariable(name: "a", scope: !178, file: !179, line: 13, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!193 = !DILocation(line: 13, column: 9, scope: !178)
!194 = !DILocation(line: 13, column: 13, scope: !178)
!195 = !DILocalVariable(name: "b", scope: !178, file: !179, line: 14, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!198 = !DILocation(line: 14, column: 15, scope: !178)
!199 = !DILocation(line: 14, column: 19, scope: !178)
!200 = !DILocation(line: 16, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !178, file: !179, line: 16, column: 7)
!202 = !DILocation(line: 16, column: 14, scope: !201)
!203 = !DILocation(line: 16, column: 11, scope: !201)
!204 = !DILocation(line: 16, column: 7, scope: !178)
!205 = !DILocation(line: 17, column: 12, scope: !201)
!206 = !DILocation(line: 17, column: 5, scope: !201)
!207 = !DILocation(line: 19, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !178, file: !179, line: 19, column: 7)
!209 = !DILocation(line: 19, column: 13, scope: !208)
!210 = !DILocation(line: 19, column: 11, scope: !208)
!211 = !DILocation(line: 19, column: 7, scope: !178)
!212 = !DILocation(line: 20, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !179, line: 19, column: 18)
!214 = !DILocation(line: 20, column: 5, scope: !213)
!215 = !DILocation(line: 21, column: 16, scope: !213)
!216 = !DILocation(line: 21, column: 14, scope: !213)
!217 = !DILocation(line: 21, column: 9, scope: !213)
!218 = !DILocation(line: 21, column: 12, scope: !213)
!219 = distinct !{!219, !214, !215, !132}
!220 = !DILocation(line: 23, column: 10, scope: !221)
!221 = distinct !DILexicalBlock(scope: !208, file: !179, line: 22, column: 10)
!222 = !DILocation(line: 23, column: 16, scope: !221)
!223 = !DILocation(line: 23, column: 7, scope: !221)
!224 = !DILocation(line: 24, column: 10, scope: !221)
!225 = !DILocation(line: 24, column: 16, scope: !221)
!226 = !DILocation(line: 24, column: 7, scope: !221)
!227 = !DILocation(line: 25, column: 5, scope: !221)
!228 = !DILocation(line: 25, column: 17, scope: !221)
!229 = !DILocation(line: 26, column: 16, scope: !221)
!230 = !DILocation(line: 26, column: 14, scope: !221)
!231 = !DILocation(line: 26, column: 9, scope: !221)
!232 = !DILocation(line: 26, column: 12, scope: !221)
!233 = distinct !{!233, !227, !229, !132}
!234 = !DILocation(line: 29, column: 10, scope: !178)
!235 = !DILocation(line: 29, column: 3, scope: !178)
!236 = !DILocation(line: 30, column: 1, scope: !178)
