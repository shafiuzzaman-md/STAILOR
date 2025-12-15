; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"nsTab\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nodeTab\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i8*, i8** %2, align 8, !dbg !20
  call void @free(i8* noundef %3) #7, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !27, metadata !DIExpression()), !dbg !45
  %3 = call %struct._xmlC14NVisibleNsStack* @create_symbolic_stack(), !dbg !46
  store %struct._xmlC14NVisibleNsStack* %3, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !45
  %4 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !47
  %5 = icmp ne %struct._xmlC14NVisibleNsStack* %4, null, !dbg !47
  br i1 %5, label %7, label %6, !dbg !49

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !50
  br label %58, !dbg !50

7:                                                ; preds = %0
  %8 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !51
  %9 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %8, i32 0, i32 2, !dbg !52
  %10 = load i32, i32* %9, align 8, !dbg !52
  %11 = icmp sge i32 %10, 0, !dbg !53
  %12 = zext i1 %11 to i32, !dbg !53
  %13 = sext i32 %12 to i64, !dbg !51
  call void @klee_assume(i64 noundef %13), !dbg !54
  %14 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !55
  %15 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %14, i32 0, i32 0, !dbg !57
  %16 = load %struct._xmlNs**, %struct._xmlNs*** %15, align 8, !dbg !57
  %17 = icmp ne %struct._xmlNs** %16, null, !dbg !58
  br i1 %17, label %18, label %34, !dbg !59

18:                                               ; preds = %7
  %19 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !60
  %20 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %19, i32 0, i32 2, !dbg !62
  %21 = load i32, i32* %20, align 8, !dbg !62
  %22 = sext i32 %21 to i64, !dbg !60
  %23 = mul i64 %22, 8, !dbg !63
  %24 = call noalias i8* @malloc(i64 noundef %23) #7, !dbg !64
  %25 = bitcast i8* %24 to %struct._xmlNs**, !dbg !64
  %26 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !65
  %27 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %26, i32 0, i32 0, !dbg !66
  store %struct._xmlNs** %25, %struct._xmlNs*** %27, align 8, !dbg !67
  %28 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !68
  %29 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %28, i32 0, i32 0, !dbg !69
  %30 = load %struct._xmlNs**, %struct._xmlNs*** %29, align 8, !dbg !69
  %31 = icmp ne %struct._xmlNs** %30, null, !dbg !70
  %32 = zext i1 %31 to i32, !dbg !70
  %33 = sext i32 %32 to i64, !dbg !68
  call void @klee_assume(i64 noundef %33), !dbg !71
  br label %34, !dbg !72

34:                                               ; preds = %18, %7
  %35 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !73
  %36 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %35, i32 0, i32 1, !dbg !75
  %37 = load %struct._xmlNode**, %struct._xmlNode*** %36, align 8, !dbg !75
  %38 = icmp ne %struct._xmlNode** %37, null, !dbg !76
  br i1 %38, label %39, label %55, !dbg !77

39:                                               ; preds = %34
  %40 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !78
  %41 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %40, i32 0, i32 2, !dbg !80
  %42 = load i32, i32* %41, align 8, !dbg !80
  %43 = sext i32 %42 to i64, !dbg !78
  %44 = mul i64 %43, 8, !dbg !81
  %45 = call noalias i8* @malloc(i64 noundef %44) #7, !dbg !82
  %46 = bitcast i8* %45 to %struct._xmlNode**, !dbg !82
  %47 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !83
  %48 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %47, i32 0, i32 1, !dbg !84
  store %struct._xmlNode** %46, %struct._xmlNode*** %48, align 8, !dbg !85
  %49 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !86
  %50 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %49, i32 0, i32 1, !dbg !87
  %51 = load %struct._xmlNode**, %struct._xmlNode*** %50, align 8, !dbg !87
  %52 = icmp ne %struct._xmlNode** %51, null, !dbg !88
  %53 = zext i1 %52 to i32, !dbg !88
  %54 = sext i32 %53 to i64, !dbg !86
  call void @klee_assume(i64 noundef %54), !dbg !89
  br label %55, !dbg !90

55:                                               ; preds = %39, %34
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !91
  %57 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !92
  call void @xmlC14NVisibleNsStackFree(%struct._xmlC14NVisibleNsStack* noundef %57), !dbg !93
  store i32 0, i32* %1, align 4, !dbg !94
  br label %58, !dbg !94

58:                                               ; preds = %55, %6
  %59 = load i32, i32* %1, align 4, !dbg !95
  ret i32 %59, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlC14NVisibleNsStack* @create_symbolic_stack() #0 !dbg !96 {
  %1 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !99, metadata !DIExpression()), !dbg !100
  %3 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !101
  %4 = bitcast i8* %3 to %struct._xmlC14NVisibleNsStack*, !dbg !101
  store %struct._xmlC14NVisibleNsStack* %4, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !100
  %5 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !102
  %6 = icmp ne %struct._xmlC14NVisibleNsStack* %5, null, !dbg !102
  br i1 %6, label %8, label %7, !dbg !104

7:                                                ; preds = %0
  store %struct._xmlC14NVisibleNsStack* null, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !105
  br label %19, !dbg !105

8:                                                ; preds = %0
  %9 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !106
  %10 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %9, i32 0, i32 0, !dbg !107
  %11 = bitcast %struct._xmlNs*** %10 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)), !dbg !109
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !110
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 1, !dbg !111
  %14 = bitcast %struct._xmlNode*** %13 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !113
  %15 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !114
  %16 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %15, i32 0, i32 2, !dbg !115
  %17 = bitcast i32* %16 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !117
  %18 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !118
  store %struct._xmlC14NVisibleNsStack* %18, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !119
  br label %19, !dbg !119

19:                                               ; preds = %8, %7
  %20 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !120
  ret %struct._xmlC14NVisibleNsStack* %20, !dbg !120
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlC14NVisibleNsStackFree(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !121 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !124, metadata !DIExpression()), !dbg !125
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !126
  %4 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %3, i32 0, i32 0, !dbg !128
  %5 = load %struct._xmlNs**, %struct._xmlNs*** %4, align 8, !dbg !128
  %6 = icmp ne %struct._xmlNs** %5, null, !dbg !129
  br i1 %6, label %7, label %22, !dbg !130

7:                                                ; preds = %1
  %8 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !131
  %9 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %8, i32 0, i32 0, !dbg !133
  %10 = load %struct._xmlNs**, %struct._xmlNs*** %9, align 8, !dbg !133
  %11 = bitcast %struct._xmlNs** %10 to i8*, !dbg !134
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !135
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 2, !dbg !136
  %14 = load i32, i32* %13, align 8, !dbg !136
  %15 = sext i32 %14 to i64, !dbg !135
  %16 = mul i64 %15, 8, !dbg !137
  %17 = call i8* @memset(i8* %11, i32 0, i64 %16), !dbg !134
  %18 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !138
  %19 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %18, i32 0, i32 0, !dbg !139
  %20 = load %struct._xmlNs**, %struct._xmlNs*** %19, align 8, !dbg !139
  %21 = bitcast %struct._xmlNs** %20 to i8*, !dbg !138
  call void @xmlFree(i8* noundef %21), !dbg !140
  br label %22, !dbg !141

22:                                               ; preds = %7, %1
  %23 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !142
  %24 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %23, i32 0, i32 1, !dbg !144
  %25 = load %struct._xmlNode**, %struct._xmlNode*** %24, align 8, !dbg !144
  %26 = icmp ne %struct._xmlNode** %25, null, !dbg !145
  br i1 %26, label %27, label %42, !dbg !146

27:                                               ; preds = %22
  %28 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !147
  %29 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %28, i32 0, i32 1, !dbg !149
  %30 = load %struct._xmlNode**, %struct._xmlNode*** %29, align 8, !dbg !149
  %31 = bitcast %struct._xmlNode** %30 to i8*, !dbg !150
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !151
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 2, !dbg !152
  %34 = load i32, i32* %33, align 8, !dbg !152
  %35 = sext i32 %34 to i64, !dbg !151
  %36 = mul i64 %35, 8, !dbg !153
  %37 = call i8* @memset(i8* %31, i32 0, i64 %36), !dbg !150
  %38 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !154
  %39 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %38, i32 0, i32 1, !dbg !155
  %40 = load %struct._xmlNode**, %struct._xmlNode*** %39, align 8, !dbg !155
  %41 = bitcast %struct._xmlNode** %40 to i8*, !dbg !154
  call void @xmlFree(i8* noundef %41), !dbg !156
  br label %42, !dbg !157

42:                                               ; preds = %27, %22
  %43 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !158
  %44 = bitcast %struct._xmlC14NVisibleNsStack* %43 to i8*, !dbg !159
  %45 = call i8* @memset(i8* %44, i32 0, i64 24), !dbg !159
  %46 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !160
  %47 = bitcast %struct._xmlC14NVisibleNsStack* %46 to i8*, !dbg !160
  call void @xmlFree(i8* noundef %47), !dbg !161
  ret void, !dbg !162
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !163 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !170, metadata !DIExpression()), !dbg !171
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %7, metadata !176, metadata !DIExpression()), !dbg !179
  %8 = load i8*, i8** %4, align 8, !dbg !180
  store i8* %8, i8** %7, align 8, !dbg !179
  br label %9, !dbg !181

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !182
  %11 = add i64 %10, -1, !dbg !182
  store i64 %11, i64* %6, align 8, !dbg !182
  %12 = icmp ugt i64 %10, 0, !dbg !183
  br i1 %12, label %13, label %18, !dbg !181

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !184
  %15 = trunc i32 %14 to i8, !dbg !184
  %16 = load i8*, i8** %7, align 8, !dbg !185
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !185
  store i8* %17, i8** %7, align 8, !dbg !185
  store i8 %15, i8* %16, align 1, !dbg !186
  br label %9, !dbg !181, !llvm.loop !187

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !189
  ret i8* %19, !dbg !190
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "295999826e530badfbcc5d95a633f6e3")
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
!14 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 23, type: !15, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3}
!17 = !{}
!18 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 23, type: !3)
!19 = !DILocation(line: 23, column: 20, scope: !14)
!20 = !DILocation(line: 24, column: 10, scope: !14)
!21 = !DILocation(line: 24, column: 5, scope: !14)
!22 = !DILocation(line: 25, column: 1, scope: !14)
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !24, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "stack", scope: !23, file: !1, line: 57, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackPtr", file: !1, line: 20, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 16, size: 192, elements: !31)
!31 = !{!32, !38, !44}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !30, file: !1, line: 17, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !30, file: !1, line: 18, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !30, file: !1, line: 19, baseType: !26, size: 32, offset: 128)
!45 = !DILocation(line: 57, column: 30, scope: !23)
!46 = !DILocation(line: 57, column: 38, scope: !23)
!47 = !DILocation(line: 58, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !23, file: !1, line: 58, column: 9)
!49 = !DILocation(line: 58, column: 9, scope: !23)
!50 = !DILocation(line: 58, column: 17, scope: !48)
!51 = !DILocation(line: 61, column: 17, scope: !23)
!52 = !DILocation(line: 61, column: 24, scope: !23)
!53 = !DILocation(line: 61, column: 30, scope: !23)
!54 = !DILocation(line: 61, column: 5, scope: !23)
!55 = !DILocation(line: 64, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !23, file: !1, line: 64, column: 9)
!57 = !DILocation(line: 64, column: 16, scope: !56)
!58 = !DILocation(line: 64, column: 22, scope: !56)
!59 = !DILocation(line: 64, column: 9, scope: !23)
!60 = !DILocation(line: 66, column: 31, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 64, column: 31)
!62 = !DILocation(line: 66, column: 38, scope: !61)
!63 = !DILocation(line: 66, column: 44, scope: !61)
!64 = !DILocation(line: 66, column: 24, scope: !61)
!65 = !DILocation(line: 66, column: 9, scope: !61)
!66 = !DILocation(line: 66, column: 16, scope: !61)
!67 = !DILocation(line: 66, column: 22, scope: !61)
!68 = !DILocation(line: 67, column: 21, scope: !61)
!69 = !DILocation(line: 67, column: 28, scope: !61)
!70 = !DILocation(line: 67, column: 34, scope: !61)
!71 = !DILocation(line: 67, column: 9, scope: !61)
!72 = !DILocation(line: 68, column: 5, scope: !61)
!73 = !DILocation(line: 70, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !23, file: !1, line: 70, column: 9)
!75 = !DILocation(line: 70, column: 16, scope: !74)
!76 = !DILocation(line: 70, column: 24, scope: !74)
!77 = !DILocation(line: 70, column: 9, scope: !23)
!78 = !DILocation(line: 72, column: 33, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 70, column: 33)
!80 = !DILocation(line: 72, column: 40, scope: !79)
!81 = !DILocation(line: 72, column: 46, scope: !79)
!82 = !DILocation(line: 72, column: 26, scope: !79)
!83 = !DILocation(line: 72, column: 9, scope: !79)
!84 = !DILocation(line: 72, column: 16, scope: !79)
!85 = !DILocation(line: 72, column: 24, scope: !79)
!86 = !DILocation(line: 73, column: 21, scope: !79)
!87 = !DILocation(line: 73, column: 28, scope: !79)
!88 = !DILocation(line: 73, column: 36, scope: !79)
!89 = !DILocation(line: 73, column: 9, scope: !79)
!90 = !DILocation(line: 74, column: 5, scope: !79)
!91 = !DILocation(line: 85, column: 5, scope: !23)
!92 = !DILocation(line: 88, column: 31, scope: !23)
!93 = !DILocation(line: 88, column: 5, scope: !23)
!94 = !DILocation(line: 90, column: 5, scope: !23)
!95 = !DILocation(line: 91, column: 1, scope: !23)
!96 = distinct !DISubprogram(name: "create_symbolic_stack", scope: !1, file: !1, line: 44, type: !97, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !17)
!97 = !DISubroutineType(types: !98)
!98 = !{!28}
!99 = !DILocalVariable(name: "cur", scope: !96, file: !1, line: 45, type: !28)
!100 = !DILocation(line: 45, column: 30, scope: !96)
!101 = !DILocation(line: 45, column: 36, scope: !96)
!102 = !DILocation(line: 46, column: 10, scope: !103)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 46, column: 9)
!104 = !DILocation(line: 46, column: 9, scope: !96)
!105 = !DILocation(line: 46, column: 15, scope: !103)
!106 = !DILocation(line: 49, column: 25, scope: !96)
!107 = !DILocation(line: 49, column: 30, scope: !96)
!108 = !DILocation(line: 49, column: 24, scope: !96)
!109 = !DILocation(line: 49, column: 5, scope: !96)
!110 = !DILocation(line: 50, column: 25, scope: !96)
!111 = !DILocation(line: 50, column: 30, scope: !96)
!112 = !DILocation(line: 50, column: 24, scope: !96)
!113 = !DILocation(line: 50, column: 5, scope: !96)
!114 = !DILocation(line: 51, column: 25, scope: !96)
!115 = !DILocation(line: 51, column: 30, scope: !96)
!116 = !DILocation(line: 51, column: 24, scope: !96)
!117 = !DILocation(line: 51, column: 5, scope: !96)
!118 = !DILocation(line: 53, column: 12, scope: !96)
!119 = !DILocation(line: 53, column: 5, scope: !96)
!120 = !DILocation(line: 54, column: 1, scope: !96)
!121 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFree", scope: !1, file: !1, line: 29, type: !122, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !17)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !28}
!124 = !DILocalVariable(name: "cur", arg: 1, scope: !121, file: !1, line: 29, type: !28)
!125 = !DILocation(line: 29, column: 52, scope: !121)
!126 = !DILocation(line: 30, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !1, line: 30, column: 8)
!128 = !DILocation(line: 30, column: 13, scope: !127)
!129 = !DILocation(line: 30, column: 19, scope: !127)
!130 = !DILocation(line: 30, column: 8, scope: !121)
!131 = !DILocation(line: 31, column: 16, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 30, column: 28)
!133 = !DILocation(line: 31, column: 21, scope: !132)
!134 = !DILocation(line: 31, column: 9, scope: !132)
!135 = !DILocation(line: 31, column: 31, scope: !132)
!136 = !DILocation(line: 31, column: 36, scope: !132)
!137 = !DILocation(line: 31, column: 42, scope: !132)
!138 = !DILocation(line: 32, column: 17, scope: !132)
!139 = !DILocation(line: 32, column: 22, scope: !132)
!140 = !DILocation(line: 32, column: 9, scope: !132)
!141 = !DILocation(line: 33, column: 5, scope: !132)
!142 = !DILocation(line: 34, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !121, file: !1, line: 34, column: 8)
!144 = !DILocation(line: 34, column: 13, scope: !143)
!145 = !DILocation(line: 34, column: 21, scope: !143)
!146 = !DILocation(line: 34, column: 8, scope: !121)
!147 = !DILocation(line: 35, column: 16, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 34, column: 30)
!149 = !DILocation(line: 35, column: 21, scope: !148)
!150 = !DILocation(line: 35, column: 9, scope: !148)
!151 = !DILocation(line: 35, column: 33, scope: !148)
!152 = !DILocation(line: 35, column: 38, scope: !148)
!153 = !DILocation(line: 35, column: 44, scope: !148)
!154 = !DILocation(line: 36, column: 17, scope: !148)
!155 = !DILocation(line: 36, column: 22, scope: !148)
!156 = !DILocation(line: 36, column: 9, scope: !148)
!157 = !DILocation(line: 37, column: 5, scope: !148)
!158 = !DILocation(line: 39, column: 12, scope: !121)
!159 = !DILocation(line: 39, column: 5, scope: !121)
!160 = !DILocation(line: 40, column: 13, scope: !121)
!161 = !DILocation(line: 40, column: 5, scope: !121)
!162 = !DILocation(line: 41, column: 1, scope: !121)
!163 = distinct !DISubprogram(name: "memset", scope: !164, file: !164, line: 12, type: !165, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !17)
!164 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!165 = !DISubroutineType(types: !166)
!166 = !{!3, !3, !26, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 46, baseType: !169)
!168 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!169 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DILocalVariable(name: "dst", arg: 1, scope: !163, file: !164, line: 12, type: !3)
!171 = !DILocation(line: 12, column: 20, scope: !163)
!172 = !DILocalVariable(name: "s", arg: 2, scope: !163, file: !164, line: 12, type: !26)
!173 = !DILocation(line: 12, column: 29, scope: !163)
!174 = !DILocalVariable(name: "count", arg: 3, scope: !163, file: !164, line: 12, type: !167)
!175 = !DILocation(line: 12, column: 39, scope: !163)
!176 = !DILocalVariable(name: "a", scope: !163, file: !164, line: 13, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DILocation(line: 13, column: 9, scope: !163)
!180 = !DILocation(line: 13, column: 13, scope: !163)
!181 = !DILocation(line: 14, column: 3, scope: !163)
!182 = !DILocation(line: 14, column: 15, scope: !163)
!183 = !DILocation(line: 14, column: 18, scope: !163)
!184 = !DILocation(line: 15, column: 12, scope: !163)
!185 = !DILocation(line: 15, column: 7, scope: !163)
!186 = !DILocation(line: 15, column: 10, scope: !163)
!187 = distinct !{!187, !181, !184, !188}
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 16, column: 10, scope: !163)
!190 = !DILocation(line: 16, column: 3, scope: !163)
