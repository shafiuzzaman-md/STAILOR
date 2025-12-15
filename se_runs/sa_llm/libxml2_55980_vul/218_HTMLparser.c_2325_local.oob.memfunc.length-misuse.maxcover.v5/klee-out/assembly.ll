; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/218_HTMLparser.c_2325_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/218_HTMLparser.c_2325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlEntity = type { i8*, i32, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ent_name\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"(out + len <= outend) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/218_HTMLparser.c_2325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlStringDecodeEntities = private unnamed_addr constant [110 x i8] c"int xmlStringDecodeEntities(void *, unsigned char *, int *, const unsigned char *, int *, int, int, int, int)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"in_buffer\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"inlen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStringDecodeEntities(i8* noundef %0, i8* noundef %1, i32* noundef %2, i8* noundef %3, i32* noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 !dbg !14 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct._xmlEntity*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca [256 x i8], align 16
  store i8* %0, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !26, metadata !DIExpression()), !dbg !27
  store i32* %2, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !28, metadata !DIExpression()), !dbg !29
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %4, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 %5, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !36, metadata !DIExpression()), !dbg !37
  store i32 %7, i32* %17, align 4
  call void @llvm.dbg.declare(metadata i32* %17, metadata !38, metadata !DIExpression()), !dbg !39
  store i32 %8, i32* %18, align 4
  call void @llvm.dbg.declare(metadata i32* %18, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %19, metadata !42, metadata !DIExpression()), !dbg !43
  %28 = load i8*, i8** %11, align 8, !dbg !44
  store i8* %28, i8** %19, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i8** %20, metadata !45, metadata !DIExpression()), !dbg !46
  %29 = load i8*, i8** %11, align 8, !dbg !47
  %30 = load i32*, i32** %12, align 8, !dbg !48
  %31 = load i32, i32* %30, align 4, !dbg !49
  %32 = sext i32 %31 to i64, !dbg !50
  %33 = getelementptr inbounds i8, i8* %29, i64 %32, !dbg !50
  store i8* %33, i8** %20, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i8** %21, metadata !51, metadata !DIExpression()), !dbg !52
  %34 = load i8*, i8** %13, align 8, !dbg !53
  store i8* %34, i8** %21, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i8** %22, metadata !54, metadata !DIExpression()), !dbg !55
  %35 = load i8*, i8** %13, align 8, !dbg !56
  store i8* %35, i8** %22, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i8** %23, metadata !57, metadata !DIExpression()), !dbg !58
  %36 = load i8*, i8** %13, align 8, !dbg !59
  %37 = load i32*, i32** %14, align 8, !dbg !60
  %38 = load i32, i32* %37, align 4, !dbg !61
  %39 = sext i32 %38 to i64, !dbg !62
  %40 = getelementptr inbounds i8, i8* %36, i64 %39, !dbg !62
  store i8* %40, i8** %23, align 8, !dbg !58
  br label %41, !dbg !63

41:                                               ; preds = %90, %9
  %42 = load i8*, i8** %13, align 8, !dbg !64
  %43 = load i8*, i8** %23, align 8, !dbg !65
  %44 = icmp ult i8* %42, %43, !dbg !66
  br i1 %44, label %45, label %93, !dbg !63

45:                                               ; preds = %41
  %46 = load i8*, i8** %13, align 8, !dbg !67
  %47 = load i8, i8* %46, align 1, !dbg !70
  %48 = zext i8 %47 to i32, !dbg !70
  %49 = icmp eq i32 %48, 38, !dbg !71
  br i1 %49, label %50, label %90, !dbg !72

50:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %24, metadata !73, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i8** %25, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %26, metadata !90, metadata !DIExpression()), !dbg !91
  %51 = bitcast %struct._xmlEntity** %24 to i8*, !dbg !92
  call void @klee_make_symbolic(i8* noundef %51, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !93
  %52 = load %struct._xmlEntity*, %struct._xmlEntity** %24, align 8, !dbg !94
  %53 = icmp ne %struct._xmlEntity* %52, null, !dbg !95
  %54 = zext i1 %53 to i32, !dbg !95
  %55 = sext i32 %54 to i64, !dbg !94
  call void @klee_assume(i64 noundef %55), !dbg !96
  call void @llvm.dbg.declare(metadata [256 x i8]* %27, metadata !97, metadata !DIExpression()), !dbg !101
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0, !dbg !102
  call void @klee_make_symbolic(i8* noundef %56, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 255, !dbg !104
  store i8 0, i8* %57, align 1, !dbg !105
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %27, i64 0, i64 0, !dbg !106
  %59 = load %struct._xmlEntity*, %struct._xmlEntity** %24, align 8, !dbg !107
  %60 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %59, i32 0, i32 0, !dbg !108
  store i8* %58, i8** %60, align 8, !dbg !109
  %61 = load %struct._xmlEntity*, %struct._xmlEntity** %24, align 8, !dbg !110
  %62 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %61, i32 0, i32 0, !dbg !111
  %63 = load i8*, i8** %62, align 8, !dbg !111
  store i8* %63, i8** %25, align 8, !dbg !112
  %64 = load i8*, i8** %25, align 8, !dbg !113
  %65 = call i64 @strlen(i8* noundef %64) #8, !dbg !114
  %66 = trunc i64 %65 to i32, !dbg !114
  store i32 %66, i32* %26, align 4, !dbg !115
  %67 = load i8*, i8** %11, align 8, !dbg !116
  %68 = getelementptr inbounds i8, i8* %67, i64 2, !dbg !118
  %69 = load i32, i32* %26, align 4, !dbg !119
  %70 = sext i32 %69 to i64, !dbg !120
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !120
  %72 = load i8*, i8** %20, align 8, !dbg !121
  %73 = icmp ugt i8* %71, %72, !dbg !122
  br i1 %73, label %74, label %75, !dbg !123

74:                                               ; preds = %50
  br label %93, !dbg !124

75:                                               ; preds = %50
  %76 = load i8*, i8** %11, align 8, !dbg !126
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !126
  store i8* %77, i8** %11, align 8, !dbg !126
  store i8 38, i8* %76, align 1, !dbg !127
  %78 = load i8*, i8** %11, align 8, !dbg !128
  %79 = load i32, i32* %26, align 4, !dbg !128
  %80 = sext i32 %79 to i64, !dbg !128
  %81 = getelementptr inbounds i8, i8* %78, i64 %80, !dbg !128
  %82 = load i8*, i8** %20, align 8, !dbg !128
  %83 = icmp ule i8* %81, %82, !dbg !128
  br i1 %83, label %84, label %86, !dbg !128

84:                                               ; preds = %75
  br i1 true, label %85, label %86, !dbg !128

85:                                               ; preds = %84
  br label %88, !dbg !128

86:                                               ; preds = %84, %75
  %87 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__.xmlStringDecodeEntities, i64 0, i64 0)), !dbg !128
  br label %88, !dbg !128

88:                                               ; preds = %86, %85
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @__PRETTY_FUNCTION__.xmlStringDecodeEntities, i64 0, i64 0)), !dbg !129
  br label %93, !dbg !130

90:                                               ; preds = %45
  %91 = load i8*, i8** %13, align 8, !dbg !131
  %92 = getelementptr inbounds i8, i8* %91, i32 1, !dbg !131
  store i8* %92, i8** %13, align 8, !dbg !131
  br label %41, !dbg !63, !llvm.loop !132

93:                                               ; preds = %88, %74, %41
  ret i32 0, !dbg !135
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !136 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !139, metadata !DIExpression()), !dbg !140
  %7 = call noalias i8* @malloc(i64 noundef 1024) #9, !dbg !141
  store i8* %7, i8** %2, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i8** %3, metadata !142, metadata !DIExpression()), !dbg !143
  %8 = call noalias i8* @malloc(i64 noundef 1024) #9, !dbg !144
  store i8* %8, i8** %3, align 8, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 1024, i32* %4, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %5, metadata !147, metadata !DIExpression()), !dbg !148
  %9 = load i8*, i8** %3, align 8, !dbg !149
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 1024, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !150
  %10 = bitcast i32* %5 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !152
  %11 = load i32, i32* %5, align 4, !dbg !153
  %12 = icmp sge i32 %11, 0, !dbg !154
  br i1 %12, label %13, label %16, !dbg !155

13:                                               ; preds = %0
  %14 = load i32, i32* %5, align 4, !dbg !156
  %15 = icmp sle i32 %14, 1024, !dbg !157
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !158
  %18 = zext i1 %17 to i32, !dbg !155
  %19 = sext i32 %18 to i64, !dbg !153
  call void @klee_assume(i64 noundef %19), !dbg !159
  %20 = load i8*, i8** %2, align 8, !dbg !160
  %21 = call i8* @memset(i8* %20, i32 0, i64 1024), !dbg !161
  %22 = load i32, i32* %5, align 4, !dbg !162
  %23 = icmp sgt i32 %22, 0, !dbg !163
  %24 = zext i1 %23 to i32, !dbg !163
  %25 = sext i32 %24 to i64, !dbg !162
  call void @klee_assume(i64 noundef %25), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %6, metadata !165, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %6, align 4, !dbg !167
  br label %26, !dbg !168

26:                                               ; preds = %40, %16
  %27 = load i32, i32* %6, align 4, !dbg !169
  %28 = load i32, i32* %5, align 4, !dbg !171
  %29 = icmp slt i32 %27, %28, !dbg !172
  br i1 %29, label %30, label %43, !dbg !173

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8, !dbg !174
  %32 = load i32, i32* %6, align 4, !dbg !177
  %33 = sext i32 %32 to i64, !dbg !174
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !174
  %35 = load i8, i8* %34, align 1, !dbg !174
  %36 = zext i8 %35 to i32, !dbg !174
  %37 = icmp eq i32 %36, 38, !dbg !178
  br i1 %37, label %38, label %39, !dbg !179

38:                                               ; preds = %30
  br label %43, !dbg !180

39:                                               ; preds = %30
  br label %40, !dbg !182

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4, !dbg !183
  %42 = add nsw i32 %41, 1, !dbg !183
  store i32 %42, i32* %6, align 4, !dbg !183
  br label %26, !dbg !184, !llvm.loop !185

43:                                               ; preds = %38, %26
  %44 = load i8*, i8** %2, align 8, !dbg !187
  %45 = load i8*, i8** %3, align 8, !dbg !188
  %46 = call i32 @xmlStringDecodeEntities(i8* noundef null, i8* noundef %44, i32* noundef %4, i8* noundef %45, i32* noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !189
  %47 = load i8*, i8** %2, align 8, !dbg !190
  call void @free(i8* noundef %47) #9, !dbg !191
  %48 = load i8*, i8** %3, align 8, !dbg !192
  call void @free(i8* noundef %48) #9, !dbg !193
  ret i32 0, !dbg !194
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !195 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %7, metadata !207, metadata !DIExpression()), !dbg !209
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
  %19 = load i8*, i8** %4, align 8, !dbg !218
  ret i8* %19, !dbg !219
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/218_HTMLparser.c_2325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "3bba8723791ca8b5fa062ca331749522")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlStringDecodeEntities", scope: !1, file: !1, line: 19, type: !15, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !3, !18, !20, !21, !20, !17, !17, !17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!23 = !{}
!24 = !DILocalVariable(name: "ctx", arg: 1, scope: !14, file: !1, line: 20, type: !3)
!25 = !DILocation(line: 20, column: 11, scope: !14)
!26 = !DILocalVariable(name: "out", arg: 2, scope: !14, file: !1, line: 21, type: !18)
!27 = !DILocation(line: 21, column: 20, scope: !14)
!28 = !DILocalVariable(name: "outlen", arg: 3, scope: !14, file: !1, line: 22, type: !20)
!29 = !DILocation(line: 22, column: 10, scope: !14)
!30 = !DILocalVariable(name: "in", arg: 4, scope: !14, file: !1, line: 23, type: !21)
!31 = !DILocation(line: 23, column: 26, scope: !14)
!32 = !DILocalVariable(name: "inlen", arg: 5, scope: !14, file: !1, line: 24, type: !20)
!33 = !DILocation(line: 24, column: 10, scope: !14)
!34 = !DILocalVariable(name: "what", arg: 6, scope: !14, file: !1, line: 25, type: !17)
!35 = !DILocation(line: 25, column: 9, scope: !14)
!36 = !DILocalVariable(name: "end", arg: 7, scope: !14, file: !1, line: 26, type: !17)
!37 = !DILocation(line: 26, column: 9, scope: !14)
!38 = !DILocalVariable(name: "end2", arg: 8, scope: !14, file: !1, line: 27, type: !17)
!39 = !DILocation(line: 27, column: 9, scope: !14)
!40 = !DILocalVariable(name: "end3", arg: 9, scope: !14, file: !1, line: 28, type: !17)
!41 = !DILocation(line: 28, column: 9, scope: !14)
!42 = !DILocalVariable(name: "outstart", scope: !14, file: !1, line: 31, type: !18)
!43 = !DILocation(line: 31, column: 20, scope: !14)
!44 = !DILocation(line: 31, column: 31, scope: !14)
!45 = !DILocalVariable(name: "outend", scope: !14, file: !1, line: 32, type: !18)
!46 = !DILocation(line: 32, column: 20, scope: !14)
!47 = !DILocation(line: 32, column: 29, scope: !14)
!48 = !DILocation(line: 32, column: 36, scope: !14)
!49 = !DILocation(line: 32, column: 35, scope: !14)
!50 = !DILocation(line: 32, column: 33, scope: !14)
!51 = !DILocalVariable(name: "instart", scope: !14, file: !1, line: 33, type: !21)
!52 = !DILocation(line: 33, column: 26, scope: !14)
!53 = !DILocation(line: 33, column: 36, scope: !14)
!54 = !DILocalVariable(name: "processed", scope: !14, file: !1, line: 34, type: !21)
!55 = !DILocation(line: 34, column: 26, scope: !14)
!56 = !DILocation(line: 34, column: 38, scope: !14)
!57 = !DILocalVariable(name: "inend", scope: !14, file: !1, line: 35, type: !21)
!58 = !DILocation(line: 35, column: 26, scope: !14)
!59 = !DILocation(line: 35, column: 34, scope: !14)
!60 = !DILocation(line: 35, column: 40, scope: !14)
!61 = !DILocation(line: 35, column: 39, scope: !14)
!62 = !DILocation(line: 35, column: 37, scope: !14)
!63 = !DILocation(line: 38, column: 5, scope: !14)
!64 = !DILocation(line: 38, column: 12, scope: !14)
!65 = !DILocation(line: 38, column: 17, scope: !14)
!66 = !DILocation(line: 38, column: 15, scope: !14)
!67 = !DILocation(line: 39, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 39, column: 13)
!69 = distinct !DILexicalBlock(scope: !14, file: !1, line: 38, column: 24)
!70 = !DILocation(line: 39, column: 13, scope: !68)
!71 = !DILocation(line: 39, column: 17, scope: !68)
!72 = !DILocation(line: 39, column: 13, scope: !69)
!73 = !DILocalVariable(name: "ent", scope: !74, file: !1, line: 41, type: !75)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 39, column: 25)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 10, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 11, size: 256, elements: !78)
!78 = !{!79, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !1, line: 12, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !77, file: !1, line: 13, baseType: !17, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !77, file: !1, line: 14, baseType: !80, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !1, line: 15, baseType: !86, size: 64, offset: 192)
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DILocation(line: 41, column: 24, scope: !74)
!88 = !DILocalVariable(name: "cp", scope: !74, file: !1, line: 42, type: !80)
!89 = !DILocation(line: 42, column: 25, scope: !74)
!90 = !DILocalVariable(name: "len", scope: !74, file: !1, line: 43, type: !17)
!91 = !DILocation(line: 43, column: 17, scope: !74)
!92 = !DILocation(line: 46, column: 32, scope: !74)
!93 = !DILocation(line: 46, column: 13, scope: !74)
!94 = !DILocation(line: 49, column: 25, scope: !74)
!95 = !DILocation(line: 49, column: 29, scope: !74)
!96 = !DILocation(line: 49, column: 13, scope: !74)
!97 = !DILocalVariable(name: "ent_name", scope: !74, file: !1, line: 52, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2048, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 256)
!101 = !DILocation(line: 52, column: 18, scope: !74)
!102 = !DILocation(line: 53, column: 32, scope: !74)
!103 = !DILocation(line: 53, column: 13, scope: !74)
!104 = !DILocation(line: 54, column: 13, scope: !74)
!105 = !DILocation(line: 54, column: 27, scope: !74)
!106 = !DILocation(line: 55, column: 25, scope: !74)
!107 = !DILocation(line: 55, column: 13, scope: !74)
!108 = !DILocation(line: 55, column: 18, scope: !74)
!109 = !DILocation(line: 55, column: 23, scope: !74)
!110 = !DILocation(line: 58, column: 18, scope: !74)
!111 = !DILocation(line: 58, column: 23, scope: !74)
!112 = !DILocation(line: 58, column: 16, scope: !74)
!113 = !DILocation(line: 59, column: 26, scope: !74)
!114 = !DILocation(line: 59, column: 19, scope: !74)
!115 = !DILocation(line: 59, column: 17, scope: !74)
!116 = !DILocation(line: 62, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !74, file: !1, line: 62, column: 17)
!118 = !DILocation(line: 62, column: 21, scope: !117)
!119 = !DILocation(line: 62, column: 27, scope: !117)
!120 = !DILocation(line: 62, column: 25, scope: !117)
!121 = !DILocation(line: 62, column: 33, scope: !117)
!122 = !DILocation(line: 62, column: 31, scope: !117)
!123 = !DILocation(line: 62, column: 17, scope: !74)
!124 = !DILocation(line: 63, column: 17, scope: !125)
!125 = distinct !DILexicalBlock(scope: !117, file: !1, line: 62, column: 41)
!126 = !DILocation(line: 67, column: 17, scope: !74)
!127 = !DILocation(line: 67, column: 20, scope: !74)
!128 = !DILocation(line: 73, column: 13, scope: !74)
!129 = !DILocation(line: 76, column: 13, scope: !74)
!130 = !DILocation(line: 82, column: 13, scope: !74)
!131 = !DILocation(line: 84, column: 11, scope: !69)
!132 = distinct !{!132, !63, !133, !134}
!133 = !DILocation(line: 85, column: 5, scope: !14)
!134 = !{!"llvm.loop.mustprogress"}
!135 = !DILocation(line: 87, column: 5, scope: !14)
!136 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 91, type: !137, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!137 = !DISubroutineType(types: !138)
!138 = !{!17}
!139 = !DILocalVariable(name: "out_buffer", scope: !136, file: !1, line: 93, type: !18)
!140 = !DILocation(line: 93, column: 20, scope: !136)
!141 = !DILocation(line: 93, column: 33, scope: !136)
!142 = !DILocalVariable(name: "in_buffer", scope: !136, file: !1, line: 94, type: !18)
!143 = !DILocation(line: 94, column: 20, scope: !136)
!144 = !DILocation(line: 94, column: 32, scope: !136)
!145 = !DILocalVariable(name: "outlen", scope: !136, file: !1, line: 95, type: !17)
!146 = !DILocation(line: 95, column: 9, scope: !136)
!147 = !DILocalVariable(name: "inlen", scope: !136, file: !1, line: 96, type: !17)
!148 = !DILocation(line: 96, column: 9, scope: !136)
!149 = !DILocation(line: 99, column: 24, scope: !136)
!150 = !DILocation(line: 99, column: 5, scope: !136)
!151 = !DILocation(line: 102, column: 24, scope: !136)
!152 = !DILocation(line: 102, column: 5, scope: !136)
!153 = !DILocation(line: 103, column: 17, scope: !136)
!154 = !DILocation(line: 103, column: 23, scope: !136)
!155 = !DILocation(line: 103, column: 28, scope: !136)
!156 = !DILocation(line: 103, column: 31, scope: !136)
!157 = !DILocation(line: 103, column: 37, scope: !136)
!158 = !DILocation(line: 0, scope: !136)
!159 = !DILocation(line: 103, column: 5, scope: !136)
!160 = !DILocation(line: 106, column: 12, scope: !136)
!161 = !DILocation(line: 106, column: 5, scope: !136)
!162 = !DILocation(line: 110, column: 17, scope: !136)
!163 = !DILocation(line: 110, column: 23, scope: !136)
!164 = !DILocation(line: 110, column: 5, scope: !136)
!165 = !DILocalVariable(name: "i", scope: !166, file: !1, line: 113, type: !17)
!166 = distinct !DILexicalBlock(scope: !136, file: !1, line: 113, column: 5)
!167 = !DILocation(line: 113, column: 14, scope: !166)
!168 = !DILocation(line: 113, column: 10, scope: !166)
!169 = !DILocation(line: 113, column: 21, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 113, column: 5)
!171 = !DILocation(line: 113, column: 25, scope: !170)
!172 = !DILocation(line: 113, column: 23, scope: !170)
!173 = !DILocation(line: 113, column: 5, scope: !166)
!174 = !DILocation(line: 114, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 114, column: 13)
!176 = distinct !DILexicalBlock(scope: !170, file: !1, line: 113, column: 37)
!177 = !DILocation(line: 114, column: 23, scope: !175)
!178 = !DILocation(line: 114, column: 26, scope: !175)
!179 = !DILocation(line: 114, column: 13, scope: !176)
!180 = !DILocation(line: 116, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !175, file: !1, line: 114, column: 34)
!182 = !DILocation(line: 118, column: 5, scope: !176)
!183 = !DILocation(line: 113, column: 33, scope: !170)
!184 = !DILocation(line: 113, column: 5, scope: !170)
!185 = distinct !{!185, !173, !186, !134}
!186 = !DILocation(line: 118, column: 5, scope: !166)
!187 = !DILocation(line: 123, column: 9, scope: !136)
!188 = !DILocation(line: 125, column: 9, scope: !136)
!189 = !DILocation(line: 121, column: 5, scope: !136)
!190 = !DILocation(line: 134, column: 10, scope: !136)
!191 = !DILocation(line: 134, column: 5, scope: !136)
!192 = !DILocation(line: 135, column: 10, scope: !136)
!193 = !DILocation(line: 135, column: 5, scope: !136)
!194 = !DILocation(line: 137, column: 5, scope: !136)
!195 = distinct !DISubprogram(name: "memset", scope: !196, file: !196, line: 12, type: !197, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !23)
!196 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!197 = !DISubroutineType(types: !198)
!198 = !{!3, !3, !17, !199}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !200, line: 46, baseType: !86)
!200 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!201 = !DILocalVariable(name: "dst", arg: 1, scope: !195, file: !196, line: 12, type: !3)
!202 = !DILocation(line: 12, column: 20, scope: !195)
!203 = !DILocalVariable(name: "s", arg: 2, scope: !195, file: !196, line: 12, type: !17)
!204 = !DILocation(line: 12, column: 29, scope: !195)
!205 = !DILocalVariable(name: "count", arg: 3, scope: !195, file: !196, line: 12, type: !199)
!206 = !DILocation(line: 12, column: 39, scope: !195)
!207 = !DILocalVariable(name: "a", scope: !195, file: !196, line: 13, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!209 = !DILocation(line: 13, column: 9, scope: !195)
!210 = !DILocation(line: 13, column: 13, scope: !195)
!211 = !DILocation(line: 14, column: 3, scope: !195)
!212 = !DILocation(line: 14, column: 15, scope: !195)
!213 = !DILocation(line: 14, column: 18, scope: !195)
!214 = !DILocation(line: 15, column: 12, scope: !195)
!215 = !DILocation(line: 15, column: 7, scope: !195)
!216 = !DILocation(line: 15, column: 10, scope: !195)
!217 = distinct !{!217, !211, !214, !134}
!218 = !DILocation(line: 16, column: 10, scope: !195)
!219 = !DILocation(line: 16, column: 3, scope: !195)
