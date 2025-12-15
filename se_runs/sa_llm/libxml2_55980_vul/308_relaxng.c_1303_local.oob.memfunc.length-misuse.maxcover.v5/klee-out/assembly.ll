; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/308_relaxng.c_1303_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/308_relaxng.c_1303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { i32 }
%struct._xmlRelaxNGValidState = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/308_relaxng.c_1303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState = private unnamed_addr constant [98 x i8] c"xmlRelaxNGValidStatePtr xmlRelaxNGCopyValidState(xmlRelaxNGValidCtxtPtr, xmlRelaxNGValidStatePtr)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !25 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !40, metadata !DIExpression()), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !43 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load i64, i64* %2, align 8, !dbg !51
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlRelaxNGValidState* noundef %1) #0 !dbg !54 {
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca %struct._xmlRelaxNGValidState*, align 8
  %6 = alloca %struct._xmlRelaxNGValidState*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct._xmlRelaxNGValidState* %1, %struct._xmlRelaxNGValidState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %5, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %6, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %7, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %8, metadata !65, metadata !DIExpression()), !dbg !66
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !67
  %10 = icmp eq %struct._xmlRelaxNGValidState* %9, null, !dbg !69
  br i1 %10, label %11, label %12, !dbg !70

11:                                               ; preds = %2
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !71
  br label %73, !dbg !71

12:                                               ; preds = %2
  %13 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !72
  %14 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %13, i32 0, i32 2, !dbg !74
  %15 = load i32, i32* %14, align 4, !dbg !74
  %16 = icmp eq i32 %15, 0, !dbg !75
  br i1 %16, label %17, label %30, !dbg !76

17:                                               ; preds = %12
  %18 = call i8* @xmlMalloc(i64 noundef 16), !dbg !77
  %19 = bitcast i8* %18 to %struct._xmlRelaxNGValidState*, !dbg !79
  store %struct._xmlRelaxNGValidState* %19, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !80
  %20 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !81
  %21 = icmp eq %struct._xmlRelaxNGValidState* %20, null, !dbg !83
  br i1 %21, label %22, label %24, !dbg !84

22:                                               ; preds = %17
  %23 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !85
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %23, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !87
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !88
  br label %73, !dbg !88

24:                                               ; preds = %17
  %25 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !89
  %26 = bitcast %struct._xmlRelaxNGValidState* %25 to i8*, !dbg !90
  %27 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !91
  %28 = bitcast %struct._xmlRelaxNGValidState* %27 to i8*, !dbg !90
  %29 = call i8* @memcpy(i8* %26, i8* %28, i64 16), !dbg !90
  br label %42, !dbg !92

30:                                               ; preds = %12
  %31 = call i8* @xmlMalloc(i64 noundef 16), !dbg !93
  %32 = bitcast i8* %31 to %struct._xmlRelaxNGValidState*, !dbg !95
  store %struct._xmlRelaxNGValidState* %32, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !96
  %33 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !97
  %34 = icmp eq %struct._xmlRelaxNGValidState* %33, null, !dbg !99
  br i1 %34, label %35, label %37, !dbg !100

35:                                               ; preds = %30
  %36 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !101
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %36, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !103
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !104
  br label %73, !dbg !104

37:                                               ; preds = %30
  %38 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !105
  %39 = bitcast %struct._xmlRelaxNGValidState* %38 to i8*, !dbg !106
  %40 = call i8* @memset(i8* %39, i32 0, i64 16), !dbg !106
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState, i64 0, i64 0)), !dbg !107
  br label %42

42:                                               ; preds = %37, %24
  %43 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !108
  %44 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %43, i32 0, i32 0, !dbg !109
  %45 = load i8*, i8** %44, align 8, !dbg !109
  store i8* %45, i8** %7, align 8, !dbg !110
  %46 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !111
  %47 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %46, i32 0, i32 1, !dbg !112
  %48 = load i32, i32* %47, align 8, !dbg !112
  store i32 %48, i32* %8, align 4, !dbg !113
  %49 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !114
  %50 = bitcast %struct._xmlRelaxNGValidState* %49 to i8*, !dbg !115
  %51 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !116
  %52 = bitcast %struct._xmlRelaxNGValidState* %51 to i8*, !dbg !115
  %53 = call i8* @memcpy(i8* %50, i8* %52, i64 16), !dbg !115
  %54 = load i8*, i8** %7, align 8, !dbg !117
  %55 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !118
  %56 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %55, i32 0, i32 0, !dbg !119
  store i8* %54, i8** %56, align 8, !dbg !120
  %57 = load i32, i32* %8, align 4, !dbg !121
  %58 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !122
  %59 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %58, i32 0, i32 1, !dbg !123
  store i32 %57, i32* %59, align 8, !dbg !124
  %60 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %5, align 8, !dbg !125
  %61 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %60, i32 0, i32 2, !dbg !127
  %62 = load i32, i32* %61, align 4, !dbg !127
  %63 = icmp sgt i32 %62, 0, !dbg !128
  br i1 %63, label %64, label %71, !dbg !129

64:                                               ; preds = %42
  %65 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !130
  %66 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %65, i32 0, i32 0, !dbg !133
  %67 = load i8*, i8** %66, align 8, !dbg !133
  %68 = icmp eq i8* %67, null, !dbg !134
  br i1 %68, label %69, label %70, !dbg !135

69:                                               ; preds = %64
  br label %70, !dbg !136

70:                                               ; preds = %69, %64
  br label %71, !dbg !138

71:                                               ; preds = %70, %42
  %72 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !139
  store %struct._xmlRelaxNGValidState* %72, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !140
  br label %73, !dbg !140

73:                                               ; preds = %71, %35, %22, %11
  %74 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !141
  ret %struct._xmlRelaxNGValidState* %74, !dbg !141
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !142 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 4
  %3 = alloca %struct._xmlRelaxNGValidState, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState* %3, metadata !147, metadata !DIExpression()), !dbg !148
  %4 = bitcast %struct._xmlRelaxNGValidState* %3 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)), !dbg !150
  %5 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %3, i32 0, i32 2, !dbg !151
  %6 = load i32, i32* %5, align 4, !dbg !151
  %7 = icmp sgt i32 %6, 0, !dbg !152
  %8 = zext i1 %7 to i32, !dbg !152
  %9 = sext i32 %8 to i64, !dbg !153
  call void @klee_assume(i64 noundef %9), !dbg !154
  %10 = call %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidCtxt* noundef %2, %struct._xmlRelaxNGValidState* noundef %3), !dbg !155
  ret i32 0, !dbg !156
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !157 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !163, metadata !DIExpression()), !dbg !164
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %7, metadata !169, metadata !DIExpression()), !dbg !171
  %9 = load i8*, i8** %4, align 8, !dbg !172
  store i8* %9, i8** %7, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %8, metadata !173, metadata !DIExpression()), !dbg !174
  %10 = load i8*, i8** %5, align 8, !dbg !175
  store i8* %10, i8** %8, align 8, !dbg !174
  br label %11, !dbg !176

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !177
  %13 = add i64 %12, -1, !dbg !177
  store i64 %13, i64* %6, align 8, !dbg !177
  %14 = icmp ugt i64 %12, 0, !dbg !178
  br i1 %14, label %15, label %21, !dbg !176

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %8, align 8, !dbg !179
  %18 = load i8, i8* %16, align 1, !dbg !180
  %19 = load i8*, i8** %7, align 8, !dbg !181
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !181
  store i8* %20, i8** %7, align 8, !dbg !181
  store i8 %18, i8* %19, align 1, !dbg !182
  br label %11, !dbg !176, !llvm.loop !183

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %22, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !187 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !191, metadata !DIExpression()), !dbg !192
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !198
  %8 = load i8*, i8** %4, align 8, !dbg !199
  store i8* %8, i8** %7, align 8, !dbg !198
  br label %9, !dbg !200

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !201
  %11 = add i64 %10, -1, !dbg !201
  store i64 %11, i64* %6, align 8, !dbg !201
  %12 = icmp ugt i64 %10, 0, !dbg !202
  br i1 %12, label %13, label %18, !dbg !200

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !203
  %15 = trunc i32 %14 to i8, !dbg !203
  %16 = load i8*, i8** %7, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %7, align 8, !dbg !204
  store i8 %15, i8* %16, align 1, !dbg !205
  br label %9, !dbg !200, !llvm.loop !206

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !207
  ret i8* %19, !dbg !208
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/308_relaxng.c_1303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "1f8de388d6d83a7f73717a3aa64d5608")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidStatePtr", file: !1, line: 14, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 13, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 17, size: 128, elements: !8)
!8 = !{!9, !10, !12}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !7, file: !1, line: 18, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !7, file: !1, line: 19, baseType: !11, size: 32, offset: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !7, file: !1, line: 20, baseType: !11, size: 32, offset: 96)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 30, type: !26, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !34}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !1, line: 11, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 10, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 24, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !31, file: !1, line: 26, baseType: !11, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DILocalVariable(name: "ctxt", arg: 1, scope: !25, file: !1, line: 30, type: !28)
!39 = !DILocation(line: 30, column: 46, scope: !25)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !25, file: !1, line: 30, type: !34)
!41 = !DILocation(line: 30, column: 64, scope: !25)
!42 = !DILocation(line: 32, column: 1, scope: !25)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !44, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 34, type: !46)
!50 = !DILocation(line: 34, column: 24, scope: !43)
!51 = !DILocation(line: 35, column: 19, scope: !43)
!52 = !DILocation(line: 35, column: 12, scope: !43)
!53 = !DILocation(line: 35, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlRelaxNGCopyValidState", scope: !1, file: !1, line: 39, type: !55, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!55 = !DISubroutineType(types: !56)
!56 = !{!4, !28, !4}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 39, type: !28)
!58 = !DILocation(line: 39, column: 73, scope: !54)
!59 = !DILocalVariable(name: "state", arg: 2, scope: !54, file: !1, line: 39, type: !4)
!60 = !DILocation(line: 39, column: 103, scope: !54)
!61 = !DILocalVariable(name: "ret", scope: !54, file: !1, line: 40, type: !4)
!62 = !DILocation(line: 40, column: 29, scope: !54)
!63 = !DILocalVariable(name: "attrs", scope: !54, file: !1, line: 41, type: !3)
!64 = !DILocation(line: 41, column: 11, scope: !54)
!65 = !DILocalVariable(name: "maxAttrs", scope: !54, file: !1, line: 42, type: !11)
!66 = !DILocation(line: 42, column: 9, scope: !54)
!67 = !DILocation(line: 44, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !54, file: !1, line: 44, column: 9)
!69 = !DILocation(line: 44, column: 15, scope: !68)
!70 = !DILocation(line: 44, column: 9, scope: !54)
!71 = !DILocation(line: 45, column: 9, scope: !68)
!72 = !DILocation(line: 46, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !54, file: !1, line: 46, column: 9)
!74 = !DILocation(line: 46, column: 16, scope: !73)
!75 = !DILocation(line: 46, column: 24, scope: !73)
!76 = !DILocation(line: 46, column: 9, scope: !54)
!77 = !DILocation(line: 47, column: 40, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 46, column: 30)
!79 = !DILocation(line: 47, column: 15, scope: !78)
!80 = !DILocation(line: 47, column: 13, scope: !78)
!81 = !DILocation(line: 48, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 48, column: 13)
!83 = !DILocation(line: 48, column: 17, scope: !82)
!84 = !DILocation(line: 48, column: 13, scope: !78)
!85 = !DILocation(line: 49, column: 30, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 48, column: 26)
!87 = !DILocation(line: 49, column: 13, scope: !86)
!88 = !DILocation(line: 50, column: 13, scope: !86)
!89 = !DILocation(line: 52, column: 16, scope: !78)
!90 = !DILocation(line: 52, column: 9, scope: !78)
!91 = !DILocation(line: 52, column: 21, scope: !78)
!92 = !DILocation(line: 53, column: 5, scope: !78)
!93 = !DILocation(line: 54, column: 40, scope: !94)
!94 = distinct !DILexicalBlock(scope: !73, file: !1, line: 53, column: 12)
!95 = !DILocation(line: 54, column: 15, scope: !94)
!96 = !DILocation(line: 54, column: 13, scope: !94)
!97 = !DILocation(line: 55, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 55, column: 13)
!99 = !DILocation(line: 55, column: 17, scope: !98)
!100 = !DILocation(line: 55, column: 13, scope: !94)
!101 = !DILocation(line: 56, column: 30, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 55, column: 26)
!103 = !DILocation(line: 56, column: 13, scope: !102)
!104 = !DILocation(line: 57, column: 13, scope: !102)
!105 = !DILocation(line: 59, column: 16, scope: !94)
!106 = !DILocation(line: 59, column: 9, scope: !94)
!107 = !DILocation(line: 65, column: 9, scope: !94)
!108 = !DILocation(line: 67, column: 13, scope: !54)
!109 = !DILocation(line: 67, column: 18, scope: !54)
!110 = !DILocation(line: 67, column: 11, scope: !54)
!111 = !DILocation(line: 68, column: 16, scope: !54)
!112 = !DILocation(line: 68, column: 21, scope: !54)
!113 = !DILocation(line: 68, column: 14, scope: !54)
!114 = !DILocation(line: 69, column: 12, scope: !54)
!115 = !DILocation(line: 69, column: 5, scope: !54)
!116 = !DILocation(line: 69, column: 17, scope: !54)
!117 = !DILocation(line: 70, column: 18, scope: !54)
!118 = !DILocation(line: 70, column: 5, scope: !54)
!119 = !DILocation(line: 70, column: 10, scope: !54)
!120 = !DILocation(line: 70, column: 16, scope: !54)
!121 = !DILocation(line: 71, column: 21, scope: !54)
!122 = !DILocation(line: 71, column: 5, scope: !54)
!123 = !DILocation(line: 71, column: 10, scope: !54)
!124 = !DILocation(line: 71, column: 19, scope: !54)
!125 = !DILocation(line: 72, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !54, file: !1, line: 72, column: 9)
!127 = !DILocation(line: 72, column: 16, scope: !126)
!128 = !DILocation(line: 72, column: 24, scope: !126)
!129 = !DILocation(line: 72, column: 9, scope: !54)
!130 = !DILocation(line: 73, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 73, column: 13)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 72, column: 29)
!133 = !DILocation(line: 73, column: 18, scope: !131)
!134 = !DILocation(line: 73, column: 24, scope: !131)
!135 = !DILocation(line: 73, column: 13, scope: !132)
!136 = !DILocation(line: 75, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 73, column: 33)
!138 = !DILocation(line: 76, column: 5, scope: !132)
!139 = !DILocation(line: 77, column: 12, scope: !54)
!140 = !DILocation(line: 77, column: 5, scope: !54)
!141 = !DILocation(line: 78, column: 1, scope: !54)
!142 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !143, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!143 = !DISubroutineType(types: !144)
!144 = !{!11}
!145 = !DILocalVariable(name: "ctxt", scope: !142, file: !1, line: 82, type: !30)
!146 = !DILocation(line: 82, column: 25, scope: !142)
!147 = !DILocalVariable(name: "state", scope: !142, file: !1, line: 83, type: !6)
!148 = !DILocation(line: 83, column: 26, scope: !142)
!149 = !DILocation(line: 86, column: 24, scope: !142)
!150 = !DILocation(line: 86, column: 5, scope: !142)
!151 = !DILocation(line: 89, column: 23, scope: !142)
!152 = !DILocation(line: 89, column: 31, scope: !142)
!153 = !DILocation(line: 89, column: 17, scope: !142)
!154 = !DILocation(line: 89, column: 5, scope: !142)
!155 = !DILocation(line: 92, column: 5, scope: !142)
!156 = !DILocation(line: 94, column: 5, scope: !142)
!157 = distinct !DISubprogram(name: "memcpy", scope: !158, file: !158, line: 12, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !37)
!158 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!159 = !DISubroutineType(types: !160)
!160 = !{!3, !3, !161, !46}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!163 = !DILocalVariable(name: "destaddr", arg: 1, scope: !157, file: !158, line: 12, type: !3)
!164 = !DILocation(line: 12, column: 20, scope: !157)
!165 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !157, file: !158, line: 12, type: !161)
!166 = !DILocation(line: 12, column: 42, scope: !157)
!167 = !DILocalVariable(name: "len", arg: 3, scope: !157, file: !158, line: 12, type: !46)
!168 = !DILocation(line: 12, column: 58, scope: !157)
!169 = !DILocalVariable(name: "dest", scope: !157, file: !158, line: 13, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!171 = !DILocation(line: 13, column: 9, scope: !157)
!172 = !DILocation(line: 13, column: 16, scope: !157)
!173 = !DILocalVariable(name: "src", scope: !157, file: !158, line: 14, type: !34)
!174 = !DILocation(line: 14, column: 15, scope: !157)
!175 = !DILocation(line: 14, column: 21, scope: !157)
!176 = !DILocation(line: 16, column: 3, scope: !157)
!177 = !DILocation(line: 16, column: 13, scope: !157)
!178 = !DILocation(line: 16, column: 16, scope: !157)
!179 = !DILocation(line: 17, column: 19, scope: !157)
!180 = !DILocation(line: 17, column: 15, scope: !157)
!181 = !DILocation(line: 17, column: 10, scope: !157)
!182 = !DILocation(line: 17, column: 13, scope: !157)
!183 = distinct !{!183, !176, !179, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 18, column: 10, scope: !157)
!186 = !DILocation(line: 18, column: 3, scope: !157)
!187 = distinct !DISubprogram(name: "memset", scope: !188, file: !188, line: 12, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !37)
!188 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!189 = !DISubroutineType(types: !190)
!190 = !{!3, !3, !11, !46}
!191 = !DILocalVariable(name: "dst", arg: 1, scope: !187, file: !188, line: 12, type: !3)
!192 = !DILocation(line: 12, column: 20, scope: !187)
!193 = !DILocalVariable(name: "s", arg: 2, scope: !187, file: !188, line: 12, type: !11)
!194 = !DILocation(line: 12, column: 29, scope: !187)
!195 = !DILocalVariable(name: "count", arg: 3, scope: !187, file: !188, line: 12, type: !46)
!196 = !DILocation(line: 12, column: 39, scope: !187)
!197 = !DILocalVariable(name: "a", scope: !187, file: !188, line: 13, type: !170)
!198 = !DILocation(line: 13, column: 9, scope: !187)
!199 = !DILocation(line: 13, column: 13, scope: !187)
!200 = !DILocation(line: 14, column: 3, scope: !187)
!201 = !DILocation(line: 14, column: 15, scope: !187)
!202 = !DILocation(line: 14, column: 18, scope: !187)
!203 = !DILocation(line: 15, column: 12, scope: !187)
!204 = !DILocation(line: 15, column: 7, scope: !187)
!205 = !DILocation(line: 15, column: 10, scope: !187)
!206 = distinct !{!206, !200, !203, !184}
!207 = !DILocation(line: 16, column: 10, scope: !187)
!208 = !DILocation(line: 16, column: 3, scope: !187)
