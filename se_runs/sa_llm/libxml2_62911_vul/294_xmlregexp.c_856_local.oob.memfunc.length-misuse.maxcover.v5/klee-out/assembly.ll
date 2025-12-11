; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/294_xmlregexp.c_856_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/294_xmlregexp.c_856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegParserCtxt = type { i8* }
%struct._xmlRegAtom = type { i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"copying atom\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"atom\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/294_xmlregexp.c_856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !26 {
  %3 = alloca %struct._xmlRegParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %3, metadata !38, metadata !DIExpression()), !dbg !39
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
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !52
  ret i8* %4, !dbg !53
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegCopyAtom(%struct._xmlRegParserCtxt* noundef %0, %struct._xmlRegAtom* noundef %1) #0 !dbg !54 {
  %3 = alloca %struct._xmlRegAtom*, align 8
  %4 = alloca %struct._xmlRegParserCtxt*, align 8
  %5 = alloca %struct._xmlRegAtom*, align 8
  %6 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %4, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct._xmlRegAtom* %1, %struct._xmlRegAtom** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %5, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %6, metadata !61, metadata !DIExpression()), !dbg !62
  %7 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !63
  %8 = icmp eq %struct._xmlRegAtom* %7, null, !dbg !65
  br i1 %8, label %9, label %10, !dbg !66

9:                                                ; preds = %2
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !67
  br label %48, !dbg !67

10:                                               ; preds = %2
  %11 = call i8* @xmlMalloc(i64 noundef 32), !dbg !68
  %12 = bitcast i8* %11 to %struct._xmlRegAtom*, !dbg !69
  store %struct._xmlRegAtom* %12, %struct._xmlRegAtom** %6, align 8, !dbg !70
  %13 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !71
  %14 = icmp eq %struct._xmlRegAtom* %13, null, !dbg !73
  br i1 %14, label %15, label %17, !dbg !74

15:                                               ; preds = %10
  %16 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %4, align 8, !dbg !75
  call void @xmlRegexpErrMemory(%struct._xmlRegParserCtxt* noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)), !dbg !77
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %3, align 8, !dbg !78
  br label %48, !dbg !78

17:                                               ; preds = %10
  %18 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !79
  %19 = bitcast %struct._xmlRegAtom* %18 to i8*, !dbg !80
  %20 = call i8* @memset(i8* %19, i32 0, i64 32), !dbg !80
  %21 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !81
  %22 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %21, i32 0, i32 0, !dbg !82
  %23 = load i32, i32* %22, align 8, !dbg !82
  %24 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !83
  %25 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %24, i32 0, i32 0, !dbg !84
  store i32 %23, i32* %25, align 8, !dbg !85
  %26 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !86
  %27 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %26, i32 0, i32 1, !dbg !87
  %28 = load i32, i32* %27, align 4, !dbg !87
  %29 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !88
  %30 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %29, i32 0, i32 1, !dbg !89
  store i32 %28, i32* %30, align 4, !dbg !90
  %31 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !91
  %32 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %31, i32 0, i32 2, !dbg !92
  %33 = load i32, i32* %32, align 8, !dbg !92
  %34 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !93
  %35 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %34, i32 0, i32 2, !dbg !94
  store i32 %33, i32* %35, align 8, !dbg !95
  %36 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !96
  %37 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %36, i32 0, i32 3, !dbg !97
  %38 = load i32, i32* %37, align 4, !dbg !97
  %39 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !98
  %40 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %39, i32 0, i32 3, !dbg !99
  store i32 %38, i32* %40, align 4, !dbg !100
  %41 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !101
  %42 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %41, i32 0, i32 4, !dbg !103
  %43 = load i32, i32* %42, align 8, !dbg !103
  %44 = icmp sgt i32 %43, 0, !dbg !104
  br i1 %44, label %45, label %46, !dbg !105

45:                                               ; preds = %17
  br label %46, !dbg !106

46:                                               ; preds = %45, %17
  %47 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %6, align 8, !dbg !108
  store %struct._xmlRegAtom* %47, %struct._xmlRegAtom** %3, align 8, !dbg !109
  br label %48, !dbg !109

48:                                               ; preds = %46, %15, %9
  %49 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %3, align 8, !dbg !110
  ret %struct._xmlRegAtom* %49, !dbg !110
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegexpCompile(i8* noundef %0) #0 !dbg !111 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlRegParserCtxt, align 8
  %4 = alloca %struct._xmlRegAtom, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt* %3, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom* %4, metadata !118, metadata !DIExpression()), !dbg !119
  %5 = bitcast %struct._xmlRegAtom* %4 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !121
  %6 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 0, !dbg !122
  %7 = load i32, i32* %6, align 8, !dbg !122
  %8 = icmp sge i32 %7, 0, !dbg !123
  br i1 %8, label %9, label %13, !dbg !124

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 0, !dbg !125
  %11 = load i32, i32* %10, align 8, !dbg !125
  %12 = icmp sle i32 %11, 10, !dbg !126
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ], !dbg !127
  %15 = zext i1 %14 to i32, !dbg !124
  %16 = sext i32 %15 to i64, !dbg !128
  call void @klee_assume(i64 noundef %16), !dbg !129
  %17 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 1, !dbg !130
  %18 = load i32, i32* %17, align 4, !dbg !130
  %19 = icmp sge i32 %18, 0, !dbg !131
  br i1 %19, label %20, label %24, !dbg !132

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 1, !dbg !133
  %22 = load i32, i32* %21, align 4, !dbg !133
  %23 = icmp sle i32 %22, 10, !dbg !134
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ], !dbg !127
  %26 = zext i1 %25 to i32, !dbg !132
  %27 = sext i32 %26 to i64, !dbg !135
  call void @klee_assume(i64 noundef %27), !dbg !136
  %28 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 2, !dbg !137
  %29 = load i32, i32* %28, align 8, !dbg !137
  %30 = icmp sge i32 %29, 0, !dbg !138
  br i1 %30, label %31, label %35, !dbg !139

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 2, !dbg !140
  %33 = load i32, i32* %32, align 8, !dbg !140
  %34 = icmp sle i32 %33, 1000, !dbg !141
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i1 [ false, %24 ], [ %34, %31 ], !dbg !127
  %37 = zext i1 %36 to i32, !dbg !139
  %38 = sext i32 %37 to i64, !dbg !142
  call void @klee_assume(i64 noundef %38), !dbg !143
  %39 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 3, !dbg !144
  %40 = load i32, i32* %39, align 4, !dbg !144
  %41 = icmp sge i32 %40, 0, !dbg !145
  br i1 %41, label %42, label %46, !dbg !146

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 3, !dbg !147
  %44 = load i32, i32* %43, align 4, !dbg !147
  %45 = icmp sle i32 %44, 1000, !dbg !148
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i1 [ false, %35 ], [ %45, %42 ], !dbg !127
  %48 = zext i1 %47 to i32, !dbg !146
  %49 = sext i32 %48 to i64, !dbg !149
  call void @klee_assume(i64 noundef %49), !dbg !150
  %50 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 4, !dbg !151
  %51 = load i32, i32* %50, align 8, !dbg !151
  %52 = icmp sge i32 %51, 0, !dbg !152
  br i1 %52, label %53, label %57, !dbg !153

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %4, i32 0, i32 4, !dbg !154
  %55 = load i32, i32* %54, align 8, !dbg !154
  %56 = icmp sle i32 %55, 10, !dbg !155
  br label %57

57:                                               ; preds = %53, %46
  %58 = phi i1 [ false, %46 ], [ %56, %53 ], !dbg !127
  %59 = zext i1 %58 to i32, !dbg !153
  %60 = sext i32 %59 to i64, !dbg !156
  call void @klee_assume(i64 noundef %60), !dbg !157
  %61 = call %struct._xmlRegAtom* @xmlRegCopyAtom(%struct._xmlRegParserCtxt* noundef %3, %struct._xmlRegAtom* noundef %4), !dbg !158
  ret %struct._xmlRegAtom* %61, !dbg !159
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !160 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !163, metadata !DIExpression()), !dbg !164
  %3 = call %struct._xmlRegAtom* @xmlRegexpCompile(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !165
  store %struct._xmlRegAtom* %3, %struct._xmlRegAtom** %2, align 8, !dbg !166
  %4 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 98, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !167
  %5 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !168
  %6 = icmp ne %struct._xmlRegAtom* %5, null, !dbg !170
  br i1 %6, label %7, label %10, !dbg !171

7:                                                ; preds = %0
  %8 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !172
  %9 = bitcast %struct._xmlRegAtom* %8 to i8*, !dbg !172
  call void @free(i8* noundef %9) #7, !dbg !174
  br label %10, !dbg !175

10:                                               ; preds = %7, %0
  ret i32 0, !dbg !176
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !189
  %8 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %8, i8** %7, align 8, !dbg !189
  br label %9, !dbg !191

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !192
  %11 = add i64 %10, -1, !dbg !192
  store i64 %11, i64* %6, align 8, !dbg !192
  %12 = icmp ugt i64 %10, 0, !dbg !193
  br i1 %12, label %13, label %18, !dbg !191

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !194
  %15 = trunc i32 %14 to i8, !dbg !194
  %16 = load i8*, i8** %7, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %7, align 8, !dbg !195
  store i8 %15, i8* %16, align 1, !dbg !196
  br label %9, !dbg !191, !llvm.loop !197

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %19, !dbg !200
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25, !25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/294_xmlregexp.c_856_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c45084e5ff1d3ded1021b2c4f9fd57e6")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtomPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 14, size: 256, elements: !8)
!8 = !{!9, !11, !12, !13, !14, !15}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 15, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "quant", scope: !7, file: !1, line: 16, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !7, file: !1, line: 17, baseType: !10, size: 32, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !7, file: !1, line: 18, baseType: !10, size: 32, offset: 96)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "nbRanges", scope: !7, file: !1, line: 19, baseType: !10, size: 32, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !7, file: !1, line: 20, baseType: !3, size: 64, offset: 192)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!18 = !{i32 7, !"Dwarf Version", i32 5}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{i32 7, !"PIE Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 14.0.6"}
!26 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 28, type: !27, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !34}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxt", file: !1, line: 12, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegParserCtxt", file: !1, line: 23, size: 64, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !31, file: !1, line: 24, baseType: !3, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !{}
!38 = !DILocalVariable(name: "ctxt", arg: 1, scope: !26, file: !1, line: 28, type: !29)
!39 = !DILocation(line: 28, column: 43, scope: !26)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !26, file: !1, line: 28, type: !34)
!41 = !DILocation(line: 28, column: 61, scope: !26)
!42 = !DILocation(line: 30, column: 1, scope: !26)
!43 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 32, type: !44, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "size", arg: 1, scope: !43, file: !1, line: 32, type: !46)
!50 = !DILocation(line: 32, column: 24, scope: !43)
!51 = !DILocation(line: 33, column: 19, scope: !43)
!52 = !DILocation(line: 33, column: 12, scope: !43)
!53 = !DILocation(line: 33, column: 5, scope: !43)
!54 = distinct !DISubprogram(name: "xmlRegCopyAtom", scope: !1, file: !1, line: 37, type: !55, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!55 = !DISubroutineType(types: !56)
!56 = !{!4, !29, !4}
!57 = !DILocalVariable(name: "ctxt", arg: 1, scope: !54, file: !1, line: 37, type: !29)
!58 = !DILocation(line: 37, column: 48, scope: !54)
!59 = !DILocalVariable(name: "atom", arg: 2, scope: !54, file: !1, line: 37, type: !4)
!60 = !DILocation(line: 37, column: 68, scope: !54)
!61 = !DILocalVariable(name: "ret", scope: !54, file: !1, line: 38, type: !4)
!62 = !DILocation(line: 38, column: 19, scope: !54)
!63 = !DILocation(line: 40, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !1, line: 40, column: 9)
!65 = !DILocation(line: 40, column: 14, scope: !64)
!66 = !DILocation(line: 40, column: 9, scope: !54)
!67 = !DILocation(line: 41, column: 9, scope: !64)
!68 = !DILocation(line: 43, column: 27, scope: !54)
!69 = !DILocation(line: 43, column: 11, scope: !54)
!70 = !DILocation(line: 43, column: 9, scope: !54)
!71 = !DILocation(line: 44, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !54, file: !1, line: 44, column: 9)
!73 = !DILocation(line: 44, column: 13, scope: !72)
!74 = !DILocation(line: 44, column: 9, scope: !54)
!75 = !DILocation(line: 45, column: 28, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 44, column: 22)
!77 = !DILocation(line: 45, column: 9, scope: !76)
!78 = !DILocation(line: 46, column: 9, scope: !76)
!79 = !DILocation(line: 50, column: 12, scope: !54)
!80 = !DILocation(line: 50, column: 5, scope: !54)
!81 = !DILocation(line: 52, column: 17, scope: !54)
!82 = !DILocation(line: 52, column: 23, scope: !54)
!83 = !DILocation(line: 52, column: 5, scope: !54)
!84 = !DILocation(line: 52, column: 10, scope: !54)
!85 = !DILocation(line: 52, column: 15, scope: !54)
!86 = !DILocation(line: 53, column: 18, scope: !54)
!87 = !DILocation(line: 53, column: 24, scope: !54)
!88 = !DILocation(line: 53, column: 5, scope: !54)
!89 = !DILocation(line: 53, column: 10, scope: !54)
!90 = !DILocation(line: 53, column: 16, scope: !54)
!91 = !DILocation(line: 54, column: 16, scope: !54)
!92 = !DILocation(line: 54, column: 22, scope: !54)
!93 = !DILocation(line: 54, column: 5, scope: !54)
!94 = !DILocation(line: 54, column: 10, scope: !54)
!95 = !DILocation(line: 54, column: 14, scope: !54)
!96 = !DILocation(line: 55, column: 16, scope: !54)
!97 = !DILocation(line: 55, column: 22, scope: !54)
!98 = !DILocation(line: 55, column: 5, scope: !54)
!99 = !DILocation(line: 55, column: 10, scope: !54)
!100 = !DILocation(line: 55, column: 14, scope: !54)
!101 = !DILocation(line: 57, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !54, file: !1, line: 57, column: 9)
!103 = !DILocation(line: 57, column: 15, scope: !102)
!104 = !DILocation(line: 57, column: 24, scope: !102)
!105 = !DILocation(line: 57, column: 9, scope: !54)
!106 = !DILocation(line: 59, column: 5, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 57, column: 29)
!108 = !DILocation(line: 61, column: 12, scope: !54)
!109 = !DILocation(line: 61, column: 5, scope: !54)
!110 = !DILocation(line: 62, column: 1, scope: !54)
!111 = distinct !DISubprogram(name: "xmlRegexpCompile", scope: !1, file: !1, line: 65, type: !112, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!112 = !DISubroutineType(types: !113)
!113 = !{!4, !34}
!114 = !DILocalVariable(name: "regexp", arg: 1, scope: !111, file: !1, line: 65, type: !34)
!115 = !DILocation(line: 65, column: 44, scope: !111)
!116 = !DILocalVariable(name: "ctxt", scope: !111, file: !1, line: 67, type: !30)
!117 = !DILocation(line: 67, column: 22, scope: !111)
!118 = !DILocalVariable(name: "atom", scope: !111, file: !1, line: 68, type: !6)
!119 = !DILocation(line: 68, column: 16, scope: !111)
!120 = !DILocation(line: 71, column: 24, scope: !111)
!121 = !DILocation(line: 71, column: 5, scope: !111)
!122 = !DILocation(line: 74, column: 22, scope: !111)
!123 = !DILocation(line: 74, column: 27, scope: !111)
!124 = !DILocation(line: 74, column: 32, scope: !111)
!125 = !DILocation(line: 74, column: 40, scope: !111)
!126 = !DILocation(line: 74, column: 45, scope: !111)
!127 = !DILocation(line: 0, scope: !111)
!128 = !DILocation(line: 74, column: 17, scope: !111)
!129 = !DILocation(line: 74, column: 5, scope: !111)
!130 = !DILocation(line: 75, column: 22, scope: !111)
!131 = !DILocation(line: 75, column: 28, scope: !111)
!132 = !DILocation(line: 75, column: 33, scope: !111)
!133 = !DILocation(line: 75, column: 41, scope: !111)
!134 = !DILocation(line: 75, column: 47, scope: !111)
!135 = !DILocation(line: 75, column: 17, scope: !111)
!136 = !DILocation(line: 75, column: 5, scope: !111)
!137 = !DILocation(line: 76, column: 22, scope: !111)
!138 = !DILocation(line: 76, column: 26, scope: !111)
!139 = !DILocation(line: 76, column: 31, scope: !111)
!140 = !DILocation(line: 76, column: 39, scope: !111)
!141 = !DILocation(line: 76, column: 43, scope: !111)
!142 = !DILocation(line: 76, column: 17, scope: !111)
!143 = !DILocation(line: 76, column: 5, scope: !111)
!144 = !DILocation(line: 77, column: 22, scope: !111)
!145 = !DILocation(line: 77, column: 26, scope: !111)
!146 = !DILocation(line: 77, column: 31, scope: !111)
!147 = !DILocation(line: 77, column: 39, scope: !111)
!148 = !DILocation(line: 77, column: 43, scope: !111)
!149 = !DILocation(line: 77, column: 17, scope: !111)
!150 = !DILocation(line: 77, column: 5, scope: !111)
!151 = !DILocation(line: 78, column: 22, scope: !111)
!152 = !DILocation(line: 78, column: 31, scope: !111)
!153 = !DILocation(line: 78, column: 36, scope: !111)
!154 = !DILocation(line: 78, column: 44, scope: !111)
!155 = !DILocation(line: 78, column: 53, scope: !111)
!156 = !DILocation(line: 78, column: 17, scope: !111)
!157 = !DILocation(line: 78, column: 5, scope: !111)
!158 = !DILocation(line: 81, column: 12, scope: !111)
!159 = !DILocation(line: 81, column: 5, scope: !111)
!160 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 84, type: !161, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!161 = !DISubroutineType(types: !162)
!162 = !{!10}
!163 = !DILocalVariable(name: "result", scope: !160, file: !1, line: 85, type: !4)
!164 = !DILocation(line: 85, column: 19, scope: !160)
!165 = !DILocation(line: 88, column: 14, scope: !160)
!166 = !DILocation(line: 88, column: 12, scope: !160)
!167 = !DILocation(line: 98, column: 5, scope: !160)
!168 = !DILocation(line: 101, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !1, line: 101, column: 9)
!170 = !DILocation(line: 101, column: 16, scope: !169)
!171 = !DILocation(line: 101, column: 9, scope: !160)
!172 = !DILocation(line: 102, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 101, column: 25)
!174 = !DILocation(line: 102, column: 9, scope: !173)
!175 = !DILocation(line: 103, column: 5, scope: !173)
!176 = !DILocation(line: 105, column: 5, scope: !160)
!177 = distinct !DISubprogram(name: "memset", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !37)
!178 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!179 = !DISubroutineType(types: !180)
!180 = !{!3, !3, !10, !46}
!181 = !DILocalVariable(name: "dst", arg: 1, scope: !177, file: !178, line: 12, type: !3)
!182 = !DILocation(line: 12, column: 20, scope: !177)
!183 = !DILocalVariable(name: "s", arg: 2, scope: !177, file: !178, line: 12, type: !10)
!184 = !DILocation(line: 12, column: 29, scope: !177)
!185 = !DILocalVariable(name: "count", arg: 3, scope: !177, file: !178, line: 12, type: !46)
!186 = !DILocation(line: 12, column: 39, scope: !177)
!187 = !DILocalVariable(name: "a", scope: !177, file: !178, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!189 = !DILocation(line: 13, column: 9, scope: !177)
!190 = !DILocation(line: 13, column: 13, scope: !177)
!191 = !DILocation(line: 14, column: 3, scope: !177)
!192 = !DILocation(line: 14, column: 15, scope: !177)
!193 = !DILocation(line: 14, column: 18, scope: !177)
!194 = !DILocation(line: 15, column: 12, scope: !177)
!195 = !DILocation(line: 15, column: 7, scope: !177)
!196 = !DILocation(line: 15, column: 10, scope: !177)
!197 = distinct !{!197, !191, !194, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 16, column: 10, scope: !177)
!200 = !DILocation(line: 16, column: 3, scope: !177)
