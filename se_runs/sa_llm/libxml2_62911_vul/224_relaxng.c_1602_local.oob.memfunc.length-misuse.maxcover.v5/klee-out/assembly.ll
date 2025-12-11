; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/224_relaxng.c_1602_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/224_relaxng.c_1602_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGParserCtxt = type { %struct._xmlRelaxNGInclude* }
%struct._xmlRelaxNGInclude = type { %struct._xmlDoc*, i8*, %struct._xmlRelaxNGInclude* }
%struct._xmlDoc = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/224_relaxng.c_1602_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"allocating include\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngPErrMemory(%struct._xmlRelaxNGParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !16 {
  %3 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGParserCtxt* %0, %struct._xmlRelaxNGParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %3, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %3, align 8, !dbg !46
  %6 = load i8*, i8** %4, align 8, !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeDoc(%struct._xmlDoc* noundef %0) #0 !dbg !49 {
  %2 = alloca %struct._xmlDoc*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = load %struct._xmlDoc*, %struct._xmlDoc** %2, align 8, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !56 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !59, metadata !DIExpression()), !dbg !60
  %6 = load i8*, i8** %3, align 8, !dbg !61
  %7 = icmp ne i8* %6, null, !dbg !61
  br i1 %7, label %9, label %8, !dbg !63

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !64
  br label %24, !dbg !64

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !65, metadata !DIExpression()), !dbg !69
  %10 = load i8*, i8** %3, align 8, !dbg !70
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !71
  %12 = add i64 %11, 1, !dbg !72
  store i64 %12, i64* %4, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i8** %5, metadata !73, metadata !DIExpression()), !dbg !74
  %13 = load i64, i64* %4, align 8, !dbg !75
  %14 = call noalias i8* @malloc(i64 noundef %13) #10, !dbg !76
  store i8* %14, i8** %5, align 8, !dbg !74
  %15 = load i8*, i8** %5, align 8, !dbg !77
  %16 = icmp ne i8* %15, null, !dbg !77
  br i1 %16, label %17, label %22, !dbg !79

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !80
  %19 = load i8*, i8** %3, align 8, !dbg !81
  %20 = load i64, i64* %4, align 8, !dbg !82
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !83
  br label %22, !dbg !83

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !84
  store i8* %23, i8** %2, align 8, !dbg !85
  br label %24, !dbg !85

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !86
  ret i8* %25, !dbg !86
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !87 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGParserCtxt, align 8
  %3 = alloca %struct._xmlDoc, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlRelaxNGInclude*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt* %2, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %3, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !94, metadata !DIExpression()), !dbg !98
  %6 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %2, i32 0, i32 0, !dbg !99
  store %struct._xmlRelaxNGInclude* null, %struct._xmlRelaxNGInclude** %6, align 8, !dbg !100
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !101
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !102
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !103
  %9 = load i8, i8* %8, align 1, !dbg !103
  %10 = sext i8 %9 to i32, !dbg !103
  %11 = icmp eq i32 %10, 0, !dbg !104
  %12 = zext i1 %11 to i32, !dbg !104
  %13 = sext i32 %12 to i64, !dbg !103
  call void @klee_assume(i64 noundef %13), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGInclude** %5, metadata !106, metadata !DIExpression()), !dbg !107
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !108
  %15 = call %struct._xmlRelaxNGInclude* @xmlRelaxNGParseInclude(%struct._xmlRelaxNGParserCtxt* noundef %2, %struct._xmlDoc* noundef %3, i8* noundef %14), !dbg !109
  store %struct._xmlRelaxNGInclude* %15, %struct._xmlRelaxNGInclude** %5, align 8, !dbg !107
  %16 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %5, align 8, !dbg !110
  %17 = icmp ne %struct._xmlRelaxNGInclude* %16, null, !dbg !112
  br i1 %17, label %18, label %20, !dbg !113

18:                                               ; preds = %0
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %20, !dbg !116

20:                                               ; preds = %18, %0
  ret i32 0, !dbg !117
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGInclude* @xmlRelaxNGParseInclude(%struct._xmlRelaxNGParserCtxt* noundef %0, %struct._xmlDoc* noundef %1, i8* noundef %2) #0 !dbg !118 {
  %4 = alloca %struct._xmlRelaxNGInclude*, align 8
  %5 = alloca %struct._xmlRelaxNGParserCtxt*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlRelaxNGInclude*, align 8
  store %struct._xmlRelaxNGParserCtxt* %0, %struct._xmlRelaxNGParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGParserCtxt** %5, metadata !121, metadata !DIExpression()), !dbg !122
  store %struct._xmlDoc* %1, %struct._xmlDoc** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !123, metadata !DIExpression()), !dbg !124
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGInclude** %8, metadata !127, metadata !DIExpression()), !dbg !128
  %9 = call noalias i8* @malloc(i64 noundef 24) #10, !dbg !129
  %10 = bitcast i8* %9 to %struct._xmlRelaxNGInclude*, !dbg !129
  store %struct._xmlRelaxNGInclude* %10, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !130
  %11 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !131
  %12 = icmp eq %struct._xmlRelaxNGInclude* %11, null, !dbg !133
  br i1 %12, label %13, label %16, !dbg !134

13:                                               ; preds = %3
  %14 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %5, align 8, !dbg !135
  call void @xmlRngPErrMemory(%struct._xmlRelaxNGParserCtxt* noundef %14, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)), !dbg !137
  %15 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !138
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %15), !dbg !139
  store %struct._xmlRelaxNGInclude* null, %struct._xmlRelaxNGInclude** %4, align 8, !dbg !140
  br label %36, !dbg !140

16:                                               ; preds = %3
  %17 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !141
  %18 = bitcast %struct._xmlRelaxNGInclude* %17 to i8*, !dbg !142
  %19 = call i8* @memset(i8* %18, i32 0, i64 24), !dbg !142
  %20 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !143
  %21 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !144
  %22 = getelementptr inbounds %struct._xmlRelaxNGInclude, %struct._xmlRelaxNGInclude* %21, i32 0, i32 0, !dbg !145
  store %struct._xmlDoc* %20, %struct._xmlDoc** %22, align 8, !dbg !146
  %23 = load i8*, i8** %7, align 8, !dbg !147
  %24 = call i8* @xmlStrdup(i8* noundef %23), !dbg !148
  %25 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !149
  %26 = getelementptr inbounds %struct._xmlRelaxNGInclude, %struct._xmlRelaxNGInclude* %25, i32 0, i32 1, !dbg !150
  store i8* %24, i8** %26, align 8, !dbg !151
  %27 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %5, align 8, !dbg !152
  %28 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %27, i32 0, i32 0, !dbg !153
  %29 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %28, align 8, !dbg !153
  %30 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !154
  %31 = getelementptr inbounds %struct._xmlRelaxNGInclude, %struct._xmlRelaxNGInclude* %30, i32 0, i32 2, !dbg !155
  store %struct._xmlRelaxNGInclude* %29, %struct._xmlRelaxNGInclude** %31, align 8, !dbg !156
  %32 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !157
  %33 = load %struct._xmlRelaxNGParserCtxt*, %struct._xmlRelaxNGParserCtxt** %5, align 8, !dbg !158
  %34 = getelementptr inbounds %struct._xmlRelaxNGParserCtxt, %struct._xmlRelaxNGParserCtxt* %33, i32 0, i32 0, !dbg !159
  store %struct._xmlRelaxNGInclude* %32, %struct._xmlRelaxNGInclude** %34, align 8, !dbg !160
  %35 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %8, align 8, !dbg !161
  store %struct._xmlRelaxNGInclude* %35, %struct._xmlRelaxNGInclude** %4, align 8, !dbg !162
  br label %36, !dbg !162

36:                                               ; preds = %16, %13
  %37 = load %struct._xmlRelaxNGInclude*, %struct._xmlRelaxNGInclude** %4, align 8, !dbg !163
  ret %struct._xmlRelaxNGInclude* %37, !dbg !163
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !164 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !170, metadata !DIExpression()), !dbg !171
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %7, metadata !176, metadata !DIExpression()), !dbg !177
  %9 = load i8*, i8** %4, align 8, !dbg !178
  store i8* %9, i8** %7, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i8** %8, metadata !179, metadata !DIExpression()), !dbg !180
  %10 = load i8*, i8** %5, align 8, !dbg !181
  store i8* %10, i8** %8, align 8, !dbg !180
  br label %11, !dbg !182

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !183
  %13 = add i64 %12, -1, !dbg !183
  store i64 %13, i64* %6, align 8, !dbg !183
  %14 = icmp ugt i64 %12, 0, !dbg !184
  br i1 %14, label %15, label %21, !dbg !182

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !185
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !185
  store i8* %17, i8** %8, align 8, !dbg !185
  %18 = load i8, i8* %16, align 1, !dbg !186
  %19 = load i8*, i8** %7, align 8, !dbg !187
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !187
  store i8* %20, i8** %7, align 8, !dbg !187
  store i8 %18, i8* %19, align 1, !dbg !188
  br label %11, !dbg !182, !llvm.loop !189

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %22, !dbg !192
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !193 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !197, metadata !DIExpression()), !dbg !198
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !199, metadata !DIExpression()), !dbg !200
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i8** %7, metadata !203, metadata !DIExpression()), !dbg !204
  %8 = load i8*, i8** %4, align 8, !dbg !205
  store i8* %8, i8** %7, align 8, !dbg !204
  br label %9, !dbg !206

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !207
  %11 = add i64 %10, -1, !dbg !207
  store i64 %11, i64* %6, align 8, !dbg !207
  %12 = icmp ugt i64 %10, 0, !dbg !208
  br i1 %12, label %13, label %18, !dbg !206

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !209
  %15 = trunc i32 %14 to i8, !dbg !209
  %16 = load i8*, i8** %7, align 8, !dbg !210
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !210
  store i8* %17, i8** %7, align 8, !dbg !210
  store i8 %15, i8* %16, align 1, !dbg !211
  br label %9, !dbg !206, !llvm.loop !212

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !213
  ret i8* %19, !dbg !214
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/224_relaxng.c_1602_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0335171892b9eb0d6d89b260fe1bb323")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlRngPErrMemory", scope: !1, file: !1, line: 29, type: !17, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !39}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGParserCtxt", file: !1, line: 11, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGParserCtxt", file: !1, line: 20, size: 64, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "includes", scope: !21, file: !1, line: 21, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGInclude", file: !1, line: 10, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGInclude", file: !1, line: 14, size: 192, elements: !27)
!27 = !{!28, !35, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !26, file: !1, line: 15, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 24, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !31, file: !1, line: 25, baseType: !34, size: 32)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !26, file: !1, line: 16, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !1, line: 17, baseType: !24, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!41 = !{}
!42 = !DILocalVariable(name: "ctxt", arg: 1, scope: !16, file: !1, line: 29, type: !19)
!43 = !DILocation(line: 29, column: 45, scope: !16)
!44 = !DILocalVariable(name: "msg", arg: 2, scope: !16, file: !1, line: 29, type: !39)
!45 = !DILocation(line: 29, column: 63, scope: !16)
!46 = !DILocation(line: 30, column: 11, scope: !16)
!47 = !DILocation(line: 31, column: 11, scope: !16)
!48 = !DILocation(line: 32, column: 1, scope: !16)
!49 = distinct !DISubprogram(name: "xmlFreeDoc", scope: !1, file: !1, line: 34, type: !50, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !29}
!52 = !DILocalVariable(name: "doc", arg: 1, scope: !49, file: !1, line: 34, type: !29)
!53 = !DILocation(line: 34, column: 25, scope: !49)
!54 = !DILocation(line: 35, column: 11, scope: !49)
!55 = !DILocation(line: 36, column: 1, scope: !49)
!56 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 38, type: !57, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!57 = !DISubroutineType(types: !58)
!58 = !{!36, !39}
!59 = !DILocalVariable(name: "str", arg: 1, scope: !56, file: !1, line: 38, type: !39)
!60 = !DILocation(line: 38, column: 29, scope: !56)
!61 = !DILocation(line: 39, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !1, line: 39, column: 9)
!63 = !DILocation(line: 39, column: 9, scope: !56)
!64 = !DILocation(line: 39, column: 15, scope: !62)
!65 = !DILocalVariable(name: "len", scope: !56, file: !1, line: 40, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 40, column: 12, scope: !56)
!70 = !DILocation(line: 40, column: 25, scope: !56)
!71 = !DILocation(line: 40, column: 18, scope: !56)
!72 = !DILocation(line: 40, column: 30, scope: !56)
!73 = !DILocalVariable(name: "copy", scope: !56, file: !1, line: 41, type: !36)
!74 = !DILocation(line: 41, column: 11, scope: !56)
!75 = !DILocation(line: 41, column: 25, scope: !56)
!76 = !DILocation(line: 41, column: 18, scope: !56)
!77 = !DILocation(line: 42, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !56, file: !1, line: 42, column: 9)
!79 = !DILocation(line: 42, column: 9, scope: !56)
!80 = !DILocation(line: 42, column: 22, scope: !78)
!81 = !DILocation(line: 42, column: 28, scope: !78)
!82 = !DILocation(line: 42, column: 33, scope: !78)
!83 = !DILocation(line: 42, column: 15, scope: !78)
!84 = !DILocation(line: 43, column: 12, scope: !56)
!85 = !DILocation(line: 43, column: 5, scope: !56)
!86 = !DILocation(line: 44, column: 1, scope: !56)
!87 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !88, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!88 = !DISubroutineType(types: !89)
!89 = !{!34}
!90 = !DILocalVariable(name: "ctxt", scope: !87, file: !1, line: 52, type: !20)
!91 = !DILocation(line: 52, column: 26, scope: !87)
!92 = !DILocalVariable(name: "doc", scope: !87, file: !1, line: 53, type: !30)
!93 = !DILocation(line: 53, column: 12, scope: !87)
!94 = !DILocalVariable(name: "URL", scope: !87, file: !1, line: 54, type: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 256)
!98 = !DILocation(line: 54, column: 10, scope: !87)
!99 = !DILocation(line: 57, column: 10, scope: !87)
!100 = !DILocation(line: 57, column: 19, scope: !87)
!101 = !DILocation(line: 60, column: 24, scope: !87)
!102 = !DILocation(line: 60, column: 5, scope: !87)
!103 = !DILocation(line: 62, column: 17, scope: !87)
!104 = !DILocation(line: 62, column: 26, scope: !87)
!105 = !DILocation(line: 62, column: 5, scope: !87)
!106 = !DILocalVariable(name: "ret", scope: !87, file: !1, line: 65, type: !24)
!107 = !DILocation(line: 65, column: 24, scope: !87)
!108 = !DILocation(line: 65, column: 66, scope: !87)
!109 = !DILocation(line: 65, column: 30, scope: !87)
!110 = !DILocation(line: 68, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !87, file: !1, line: 68, column: 9)
!112 = !DILocation(line: 68, column: 13, scope: !111)
!113 = !DILocation(line: 68, column: 9, scope: !87)
!114 = !DILocation(line: 75, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 68, column: 22)
!116 = !DILocation(line: 76, column: 5, scope: !115)
!117 = !DILocation(line: 78, column: 5, scope: !87)
!118 = distinct !DISubprogram(name: "xmlRelaxNGParseInclude", scope: !1, file: !1, line: 82, type: !119, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!119 = !DISubroutineType(types: !120)
!120 = !{!24, !19, !29, !39}
!121 = !DILocalVariable(name: "ctxt", arg: 1, scope: !118, file: !1, line: 82, type: !19)
!122 = !DILocation(line: 82, column: 65, scope: !118)
!123 = !DILocalVariable(name: "doc", arg: 2, scope: !118, file: !1, line: 82, type: !29)
!124 = !DILocation(line: 82, column: 79, scope: !118)
!125 = !DILocalVariable(name: "URL", arg: 3, scope: !118, file: !1, line: 82, type: !39)
!126 = !DILocation(line: 82, column: 96, scope: !118)
!127 = !DILocalVariable(name: "ret", scope: !118, file: !1, line: 83, type: !24)
!128 = !DILocation(line: 83, column: 24, scope: !118)
!129 = !DILocation(line: 86, column: 11, scope: !118)
!130 = !DILocation(line: 86, column: 9, scope: !118)
!131 = !DILocation(line: 87, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !118, file: !1, line: 87, column: 9)
!133 = !DILocation(line: 87, column: 13, scope: !132)
!134 = !DILocation(line: 87, column: 9, scope: !118)
!135 = !DILocation(line: 88, column: 26, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 87, column: 22)
!137 = !DILocation(line: 88, column: 9, scope: !136)
!138 = !DILocation(line: 89, column: 20, scope: !136)
!139 = !DILocation(line: 89, column: 9, scope: !136)
!140 = !DILocation(line: 90, column: 9, scope: !136)
!141 = !DILocation(line: 94, column: 12, scope: !118)
!142 = !DILocation(line: 94, column: 5, scope: !118)
!143 = !DILocation(line: 96, column: 16, scope: !118)
!144 = !DILocation(line: 96, column: 5, scope: !118)
!145 = !DILocation(line: 96, column: 10, scope: !118)
!146 = !DILocation(line: 96, column: 14, scope: !118)
!147 = !DILocation(line: 97, column: 27, scope: !118)
!148 = !DILocation(line: 97, column: 17, scope: !118)
!149 = !DILocation(line: 97, column: 5, scope: !118)
!150 = !DILocation(line: 97, column: 10, scope: !118)
!151 = !DILocation(line: 97, column: 15, scope: !118)
!152 = !DILocation(line: 98, column: 17, scope: !118)
!153 = !DILocation(line: 98, column: 23, scope: !118)
!154 = !DILocation(line: 98, column: 5, scope: !118)
!155 = !DILocation(line: 98, column: 10, scope: !118)
!156 = !DILocation(line: 98, column: 15, scope: !118)
!157 = !DILocation(line: 99, column: 22, scope: !118)
!158 = !DILocation(line: 99, column: 5, scope: !118)
!159 = !DILocation(line: 99, column: 11, scope: !118)
!160 = !DILocation(line: 99, column: 20, scope: !118)
!161 = !DILocation(line: 101, column: 12, scope: !118)
!162 = !DILocation(line: 101, column: 5, scope: !118)
!163 = !DILocation(line: 102, column: 1, scope: !118)
!164 = distinct !DISubprogram(name: "memcpy", scope: !165, file: !165, line: 12, type: !166, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !41)
!165 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!166 = !DISubroutineType(types: !167)
!167 = !{!3, !3, !168, !66}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!170 = !DILocalVariable(name: "destaddr", arg: 1, scope: !164, file: !165, line: 12, type: !3)
!171 = !DILocation(line: 12, column: 20, scope: !164)
!172 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !164, file: !165, line: 12, type: !168)
!173 = !DILocation(line: 12, column: 42, scope: !164)
!174 = !DILocalVariable(name: "len", arg: 3, scope: !164, file: !165, line: 12, type: !66)
!175 = !DILocation(line: 12, column: 58, scope: !164)
!176 = !DILocalVariable(name: "dest", scope: !164, file: !165, line: 13, type: !36)
!177 = !DILocation(line: 13, column: 9, scope: !164)
!178 = !DILocation(line: 13, column: 16, scope: !164)
!179 = !DILocalVariable(name: "src", scope: !164, file: !165, line: 14, type: !39)
!180 = !DILocation(line: 14, column: 15, scope: !164)
!181 = !DILocation(line: 14, column: 21, scope: !164)
!182 = !DILocation(line: 16, column: 3, scope: !164)
!183 = !DILocation(line: 16, column: 13, scope: !164)
!184 = !DILocation(line: 16, column: 16, scope: !164)
!185 = !DILocation(line: 17, column: 19, scope: !164)
!186 = !DILocation(line: 17, column: 15, scope: !164)
!187 = !DILocation(line: 17, column: 10, scope: !164)
!188 = !DILocation(line: 17, column: 13, scope: !164)
!189 = distinct !{!189, !182, !185, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 18, column: 10, scope: !164)
!192 = !DILocation(line: 18, column: 3, scope: !164)
!193 = distinct !DISubprogram(name: "memset", scope: !194, file: !194, line: 12, type: !195, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !41)
!194 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!195 = !DISubroutineType(types: !196)
!196 = !{!3, !3, !34, !66}
!197 = !DILocalVariable(name: "dst", arg: 1, scope: !193, file: !194, line: 12, type: !3)
!198 = !DILocation(line: 12, column: 20, scope: !193)
!199 = !DILocalVariable(name: "s", arg: 2, scope: !193, file: !194, line: 12, type: !34)
!200 = !DILocation(line: 12, column: 29, scope: !193)
!201 = !DILocalVariable(name: "count", arg: 3, scope: !193, file: !194, line: 12, type: !66)
!202 = !DILocation(line: 12, column: 39, scope: !193)
!203 = !DILocalVariable(name: "a", scope: !193, file: !194, line: 13, type: !36)
!204 = !DILocation(line: 13, column: 9, scope: !193)
!205 = !DILocation(line: 13, column: 13, scope: !193)
!206 = !DILocation(line: 14, column: 3, scope: !193)
!207 = !DILocation(line: 14, column: 15, scope: !193)
!208 = !DILocation(line: 14, column: 18, scope: !193)
!209 = !DILocation(line: 15, column: 12, scope: !193)
!210 = !DILocation(line: 15, column: 7, scope: !193)
!211 = !DILocation(line: 15, column: 10, scope: !193)
!212 = distinct !{!212, !206, !209, !190}
!213 = !DILocation(line: 16, column: 10, scope: !193)
!214 = !DILocation(line: 16, column: 3, scope: !193)
