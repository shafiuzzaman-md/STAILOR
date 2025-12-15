; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlC14NVisibleNsStack = type { %struct._xmlNs**, %struct._xmlNode**, i32 }
%struct._xmlNs = type opaque
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [6 x i8] c"nsMax\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nsTab_null\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nodeTab_null\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"(stack != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

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
define dso_local %struct._xmlC14NVisibleNsStack* @create_symbolic_stack() #0 !dbg !23 {
  %1 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %1, metadata !45, metadata !DIExpression()), !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !47
  %5 = bitcast i8* %4 to %struct._xmlC14NVisibleNsStack*, !dbg !47
  store %struct._xmlC14NVisibleNsStack* %5, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !46
  %6 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !48
  %7 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %6, i32 0, i32 2, !dbg !49
  %8 = bitcast i32* %7 to i8*, !dbg !50
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !51
  %9 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !52
  %10 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %9, i32 0, i32 2, !dbg !53
  %11 = load i32, i32* %10, align 8, !dbg !53
  %12 = icmp sge i32 %11, 0, !dbg !54
  %13 = zext i1 %12 to i32, !dbg !54
  %14 = sext i32 %13 to i64, !dbg !52
  call void @klee_assume(i64 noundef %14), !dbg !55
  %15 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !56
  %16 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %15, i32 0, i32 2, !dbg !57
  %17 = load i32, i32* %16, align 8, !dbg !57
  %18 = icmp sle i32 %17, 1024, !dbg !58
  %19 = zext i1 %18 to i32, !dbg !58
  %20 = sext i32 %19 to i64, !dbg !56
  call void @klee_assume(i64 noundef %20), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %2, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %3, metadata !62, metadata !DIExpression()), !dbg !63
  %21 = bitcast i32* %2 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !65
  %22 = bitcast i32* %3 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)), !dbg !67
  %23 = load i32, i32* %2, align 4, !dbg !68
  %24 = icmp ne i32 %23, 0, !dbg !68
  br i1 %24, label %25, label %28, !dbg !70

25:                                               ; preds = %0
  %26 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !71
  %27 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %26, i32 0, i32 0, !dbg !73
  store %struct._xmlNs** null, %struct._xmlNs*** %27, align 8, !dbg !74
  br label %38, !dbg !75

28:                                               ; preds = %0
  %29 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !76
  %30 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %29, i32 0, i32 2, !dbg !78
  %31 = load i32, i32* %30, align 8, !dbg !78
  %32 = sext i32 %31 to i64, !dbg !76
  %33 = mul i64 %32, 8, !dbg !79
  %34 = call noalias i8* @malloc(i64 noundef %33) #7, !dbg !80
  %35 = bitcast i8* %34 to %struct._xmlNs**, !dbg !80
  %36 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !81
  %37 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %36, i32 0, i32 0, !dbg !82
  store %struct._xmlNs** %35, %struct._xmlNs*** %37, align 8, !dbg !83
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %3, align 4, !dbg !84
  %40 = icmp ne i32 %39, 0, !dbg !84
  br i1 %40, label %41, label %44, !dbg !86

41:                                               ; preds = %38
  %42 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !87
  %43 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %42, i32 0, i32 1, !dbg !89
  store %struct._xmlNode** null, %struct._xmlNode*** %43, align 8, !dbg !90
  br label %54, !dbg !91

44:                                               ; preds = %38
  %45 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !92
  %46 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %45, i32 0, i32 2, !dbg !94
  %47 = load i32, i32* %46, align 8, !dbg !94
  %48 = sext i32 %47 to i64, !dbg !92
  %49 = mul i64 %48, 8, !dbg !95
  %50 = call noalias i8* @malloc(i64 noundef %49) #7, !dbg !96
  %51 = bitcast i8* %50 to %struct._xmlNode**, !dbg !96
  %52 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !97
  %53 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %52, i32 0, i32 1, !dbg !98
  store %struct._xmlNode** %51, %struct._xmlNode*** %53, align 8, !dbg !99
  br label %54

54:                                               ; preds = %44, %41
  %55 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %1, align 8, !dbg !100
  ret %struct._xmlC14NVisibleNsStack* %55, !dbg !101
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !102 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !105, metadata !DIExpression()), !dbg !106
  %3 = call %struct._xmlC14NVisibleNsStack* @create_symbolic_stack(), !dbg !107
  store %struct._xmlC14NVisibleNsStack* %3, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !106
  %4 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !108
  %5 = icmp ne %struct._xmlC14NVisibleNsStack* %4, null, !dbg !108
  br i1 %5, label %6, label %8, !dbg !108

6:                                                ; preds = %0
  br i1 true, label %7, label %8, !dbg !108

7:                                                ; preds = %6
  br label %10, !dbg !108

8:                                                ; preds = %6, %0
  %9 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  br label %10, !dbg !108

10:                                               ; preds = %8, %7
  %11 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !109
  call void @xmlC14NVisibleNsStackFree(%struct._xmlC14NVisibleNsStack* noundef %11), !dbg !110
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 111, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  ret i32 0, !dbg !112
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlC14NVisibleNsStackFree(%struct._xmlC14NVisibleNsStack* noundef %0) #0 !dbg !113 {
  %2 = alloca %struct._xmlC14NVisibleNsStack*, align 8
  store %struct._xmlC14NVisibleNsStack* %0, %struct._xmlC14NVisibleNsStack** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NVisibleNsStack** %2, metadata !116, metadata !DIExpression()), !dbg !117
  %3 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !118
  %4 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %3, i32 0, i32 0, !dbg !120
  %5 = load %struct._xmlNs**, %struct._xmlNs*** %4, align 8, !dbg !120
  %6 = icmp ne %struct._xmlNs** %5, null, !dbg !121
  br i1 %6, label %7, label %22, !dbg !122

7:                                                ; preds = %1
  %8 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !123
  %9 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %8, i32 0, i32 0, !dbg !125
  %10 = load %struct._xmlNs**, %struct._xmlNs*** %9, align 8, !dbg !125
  %11 = bitcast %struct._xmlNs** %10 to i8*, !dbg !126
  %12 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !127
  %13 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %12, i32 0, i32 2, !dbg !128
  %14 = load i32, i32* %13, align 8, !dbg !128
  %15 = sext i32 %14 to i64, !dbg !127
  %16 = mul i64 %15, 8, !dbg !129
  %17 = call i8* @memset(i8* %11, i32 0, i64 %16), !dbg !126
  %18 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !130
  %19 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %18, i32 0, i32 0, !dbg !131
  %20 = load %struct._xmlNs**, %struct._xmlNs*** %19, align 8, !dbg !131
  %21 = bitcast %struct._xmlNs** %20 to i8*, !dbg !130
  call void @xmlFree(i8* noundef %21), !dbg !132
  br label %22, !dbg !133

22:                                               ; preds = %7, %1
  %23 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !134
  %24 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %23, i32 0, i32 1, !dbg !136
  %25 = load %struct._xmlNode**, %struct._xmlNode*** %24, align 8, !dbg !136
  %26 = icmp ne %struct._xmlNode** %25, null, !dbg !137
  br i1 %26, label %27, label %42, !dbg !138

27:                                               ; preds = %22
  %28 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !139
  %29 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %28, i32 0, i32 1, !dbg !141
  %30 = load %struct._xmlNode**, %struct._xmlNode*** %29, align 8, !dbg !141
  %31 = bitcast %struct._xmlNode** %30 to i8*, !dbg !142
  %32 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !143
  %33 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %32, i32 0, i32 2, !dbg !144
  %34 = load i32, i32* %33, align 8, !dbg !144
  %35 = sext i32 %34 to i64, !dbg !143
  %36 = mul i64 %35, 8, !dbg !145
  %37 = call i8* @memset(i8* %31, i32 0, i64 %36), !dbg !142
  %38 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !146
  %39 = getelementptr inbounds %struct._xmlC14NVisibleNsStack, %struct._xmlC14NVisibleNsStack* %38, i32 0, i32 1, !dbg !147
  %40 = load %struct._xmlNode**, %struct._xmlNode*** %39, align 8, !dbg !147
  %41 = bitcast %struct._xmlNode** %40 to i8*, !dbg !146
  call void @xmlFree(i8* noundef %41), !dbg !148
  br label %42, !dbg !149

42:                                               ; preds = %27, %22
  %43 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !150
  %44 = bitcast %struct._xmlC14NVisibleNsStack* %43 to i8*, !dbg !151
  %45 = call i8* @memset(i8* %44, i32 0, i64 24), !dbg !151
  %46 = load %struct._xmlC14NVisibleNsStack*, %struct._xmlC14NVisibleNsStack** %2, align 8, !dbg !152
  %47 = bitcast %struct._xmlC14NVisibleNsStack* %46 to i8*, !dbg !152
  call void @xmlFree(i8* noundef %47), !dbg !153
  ret void, !dbg !154
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !162, metadata !DIExpression()), !dbg !163
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !164, metadata !DIExpression()), !dbg !165
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %7, metadata !168, metadata !DIExpression()), !dbg !171
  %8 = load i8*, i8** %4, align 8, !dbg !172
  store i8* %8, i8** %7, align 8, !dbg !171
  br label %9, !dbg !173

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !174
  %11 = add i64 %10, -1, !dbg !174
  store i64 %11, i64* %6, align 8, !dbg !174
  %12 = icmp ugt i64 %10, 0, !dbg !175
  br i1 %12, label %13, label %18, !dbg !173

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !176
  %15 = trunc i32 %14 to i8, !dbg !176
  %16 = load i8*, i8** %7, align 8, !dbg !177
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !177
  store i8* %17, i8** %7, align 8, !dbg !177
  store i8 %15, i8* %16, align 1, !dbg !178
  br label %9, !dbg !173, !llvm.loop !179

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !181
  ret i8* %19, !dbg !182
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/041_c14n.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e1b44908deaf29d7418fd315f9d55edb")
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
!14 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 24, type: !15, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3}
!17 = !{}
!18 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 24, type: !3)
!19 = !DILocation(line: 24, column: 20, scope: !14)
!20 = !DILocation(line: 25, column: 10, scope: !14)
!21 = !DILocation(line: 25, column: 5, scope: !14)
!22 = !DILocation(line: 26, column: 1, scope: !14)
!23 = distinct !DISubprogram(name: "create_symbolic_stack", scope: !1, file: !1, line: 50, type: !24, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStackPtr", file: !1, line: 21, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NVisibleNsStack", file: !1, line: 20, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NVisibleNsStack", file: !1, line: 16, size: 192, elements: !30)
!30 = !{!31, !37, !43}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "nsTab", scope: !29, file: !1, line: 17, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 10, flags: DIFlagFwdDecl)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !29, file: !1, line: 18, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 13, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !42)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 12, flags: DIFlagFwdDecl)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "nsMax", scope: !29, file: !1, line: 19, baseType: !44, size: 32, offset: 128)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocalVariable(name: "cur", scope: !23, file: !1, line: 51, type: !26)
!46 = !DILocation(line: 51, column: 30, scope: !23)
!47 = !DILocation(line: 51, column: 36, scope: !23)
!48 = !DILocation(line: 54, column: 25, scope: !23)
!49 = !DILocation(line: 54, column: 30, scope: !23)
!50 = !DILocation(line: 54, column: 24, scope: !23)
!51 = !DILocation(line: 54, column: 5, scope: !23)
!52 = !DILocation(line: 57, column: 17, scope: !23)
!53 = !DILocation(line: 57, column: 22, scope: !23)
!54 = !DILocation(line: 57, column: 28, scope: !23)
!55 = !DILocation(line: 57, column: 5, scope: !23)
!56 = !DILocation(line: 58, column: 17, scope: !23)
!57 = !DILocation(line: 58, column: 22, scope: !23)
!58 = !DILocation(line: 58, column: 28, scope: !23)
!59 = !DILocation(line: 58, column: 5, scope: !23)
!60 = !DILocalVariable(name: "nsTab_null", scope: !23, file: !1, line: 61, type: !44)
!61 = !DILocation(line: 61, column: 9, scope: !23)
!62 = !DILocalVariable(name: "nodeTab_null", scope: !23, file: !1, line: 61, type: !44)
!63 = !DILocation(line: 61, column: 21, scope: !23)
!64 = !DILocation(line: 62, column: 24, scope: !23)
!65 = !DILocation(line: 62, column: 5, scope: !23)
!66 = !DILocation(line: 63, column: 24, scope: !23)
!67 = !DILocation(line: 63, column: 5, scope: !23)
!68 = !DILocation(line: 65, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !23, file: !1, line: 65, column: 9)
!70 = !DILocation(line: 65, column: 9, scope: !23)
!71 = !DILocation(line: 66, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 65, column: 21)
!73 = !DILocation(line: 66, column: 14, scope: !72)
!74 = !DILocation(line: 66, column: 20, scope: !72)
!75 = !DILocation(line: 67, column: 5, scope: !72)
!76 = !DILocation(line: 69, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !69, file: !1, line: 67, column: 12)
!78 = !DILocation(line: 69, column: 34, scope: !77)
!79 = !DILocation(line: 69, column: 40, scope: !77)
!80 = !DILocation(line: 69, column: 22, scope: !77)
!81 = !DILocation(line: 69, column: 9, scope: !77)
!82 = !DILocation(line: 69, column: 14, scope: !77)
!83 = !DILocation(line: 69, column: 20, scope: !77)
!84 = !DILocation(line: 72, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !23, file: !1, line: 72, column: 9)
!86 = !DILocation(line: 72, column: 9, scope: !23)
!87 = !DILocation(line: 73, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 72, column: 23)
!89 = !DILocation(line: 73, column: 14, scope: !88)
!90 = !DILocation(line: 73, column: 22, scope: !88)
!91 = !DILocation(line: 74, column: 5, scope: !88)
!92 = !DILocation(line: 76, column: 31, scope: !93)
!93 = distinct !DILexicalBlock(scope: !85, file: !1, line: 74, column: 12)
!94 = !DILocation(line: 76, column: 36, scope: !93)
!95 = !DILocation(line: 76, column: 42, scope: !93)
!96 = !DILocation(line: 76, column: 24, scope: !93)
!97 = !DILocation(line: 76, column: 9, scope: !93)
!98 = !DILocation(line: 76, column: 14, scope: !93)
!99 = !DILocation(line: 76, column: 22, scope: !93)
!100 = !DILocation(line: 79, column: 12, scope: !23)
!101 = !DILocation(line: 79, column: 5, scope: !23)
!102 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !103, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!103 = !DISubroutineType(types: !104)
!104 = !{!44}
!105 = !DILocalVariable(name: "stack", scope: !102, file: !1, line: 84, type: !26)
!106 = !DILocation(line: 84, column: 30, scope: !102)
!107 = !DILocation(line: 84, column: 38, scope: !102)
!108 = !DILocation(line: 105, column: 5, scope: !102)
!109 = !DILocation(line: 108, column: 31, scope: !102)
!110 = !DILocation(line: 108, column: 5, scope: !102)
!111 = !DILocation(line: 111, column: 5, scope: !102)
!112 = !DILocation(line: 113, column: 5, scope: !102)
!113 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFree", scope: !1, file: !1, line: 29, type: !114, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !17)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !26}
!116 = !DILocalVariable(name: "cur", arg: 1, scope: !113, file: !1, line: 29, type: !26)
!117 = !DILocation(line: 29, column: 64, scope: !113)
!118 = !DILocation(line: 30, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !113, file: !1, line: 30, column: 8)
!120 = !DILocation(line: 30, column: 13, scope: !119)
!121 = !DILocation(line: 30, column: 19, scope: !119)
!122 = !DILocation(line: 30, column: 8, scope: !113)
!123 = !DILocation(line: 31, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 30, column: 28)
!125 = !DILocation(line: 31, column: 21, scope: !124)
!126 = !DILocation(line: 31, column: 9, scope: !124)
!127 = !DILocation(line: 31, column: 31, scope: !124)
!128 = !DILocation(line: 31, column: 36, scope: !124)
!129 = !DILocation(line: 31, column: 42, scope: !124)
!130 = !DILocation(line: 32, column: 17, scope: !124)
!131 = !DILocation(line: 32, column: 22, scope: !124)
!132 = !DILocation(line: 32, column: 9, scope: !124)
!133 = !DILocation(line: 33, column: 5, scope: !124)
!134 = !DILocation(line: 34, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !113, file: !1, line: 34, column: 8)
!136 = !DILocation(line: 34, column: 13, scope: !135)
!137 = !DILocation(line: 34, column: 21, scope: !135)
!138 = !DILocation(line: 34, column: 8, scope: !113)
!139 = !DILocation(line: 35, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 34, column: 30)
!141 = !DILocation(line: 35, column: 21, scope: !140)
!142 = !DILocation(line: 35, column: 9, scope: !140)
!143 = !DILocation(line: 35, column: 33, scope: !140)
!144 = !DILocation(line: 35, column: 38, scope: !140)
!145 = !DILocation(line: 35, column: 44, scope: !140)
!146 = !DILocation(line: 36, column: 17, scope: !140)
!147 = !DILocation(line: 36, column: 22, scope: !140)
!148 = !DILocation(line: 36, column: 9, scope: !140)
!149 = !DILocation(line: 37, column: 5, scope: !140)
!150 = !DILocation(line: 39, column: 12, scope: !113)
!151 = !DILocation(line: 39, column: 5, scope: !113)
!152 = !DILocation(line: 40, column: 13, scope: !113)
!153 = !DILocation(line: 40, column: 5, scope: !113)
!154 = !DILocation(line: 41, column: 1, scope: !113)
!155 = distinct !DISubprogram(name: "memset", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !17)
!156 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!157 = !DISubroutineType(types: !158)
!158 = !{!3, !3, !44, !159}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 46, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DILocalVariable(name: "dst", arg: 1, scope: !155, file: !156, line: 12, type: !3)
!163 = !DILocation(line: 12, column: 20, scope: !155)
!164 = !DILocalVariable(name: "s", arg: 2, scope: !155, file: !156, line: 12, type: !44)
!165 = !DILocation(line: 12, column: 29, scope: !155)
!166 = !DILocalVariable(name: "count", arg: 3, scope: !155, file: !156, line: 12, type: !159)
!167 = !DILocation(line: 12, column: 39, scope: !155)
!168 = !DILocalVariable(name: "a", scope: !155, file: !156, line: 13, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DILocation(line: 13, column: 9, scope: !155)
!172 = !DILocation(line: 13, column: 13, scope: !155)
!173 = !DILocation(line: 14, column: 3, scope: !155)
!174 = !DILocation(line: 14, column: 15, scope: !155)
!175 = !DILocation(line: 14, column: 18, scope: !155)
!176 = !DILocation(line: 15, column: 12, scope: !155)
!177 = !DILocation(line: 15, column: 7, scope: !155)
!178 = !DILocation(line: 15, column: 10, scope: !155)
!179 = distinct !{!179, !173, !176, !180}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !DILocation(line: 16, column: 10, scope: !155)
!182 = !DILocation(line: 16, column: 3, scope: !155)
