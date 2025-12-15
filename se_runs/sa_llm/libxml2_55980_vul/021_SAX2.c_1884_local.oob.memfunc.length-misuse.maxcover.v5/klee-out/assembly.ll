; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque
%struct._xmlParserCtxt = type { i32, i32, %struct._xmlDict* }
%struct._xmlNode = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"(len <= (int)(2 * sizeof(void *))) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [75 x i8] c"xmlChar *target_function(xmlParserCtxt *, xmlNode *, const xmlChar *, int)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !17 {
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !31
  %7 = load i8*, i8** %5, align 8, !dbg !32
  ret i8* %7, !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !34 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !37, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !45, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !59
  %7 = bitcast i32* %6 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !61
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !62
  %9 = bitcast i32* %8 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !65
  store %struct._xmlDict* null, %struct._xmlDict** %10, align 8, !dbg !66
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !67
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !68
  %12 = bitcast i32* %5 to i8*, !dbg !69
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !70
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !71
  %14 = load i32, i32* %13, align 8, !dbg !71
  %15 = icmp ne i32 %14, 0, !dbg !72
  %16 = zext i1 %15 to i32, !dbg !72
  %17 = sext i32 %16 to i64, !dbg !73
  call void @klee_assume(i64 noundef %17), !dbg !74
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !75
  %19 = load i32, i32* %18, align 4, !dbg !75
  %20 = and i32 %19, 1, !dbg !76
  %21 = sext i32 %20 to i64, !dbg !77
  call void @klee_assume(i64 noundef %21), !dbg !78
  %22 = load i32, i32* %5, align 4, !dbg !79
  %23 = icmp slt i32 %22, 16, !dbg !80
  %24 = zext i1 %23 to i32, !dbg !80
  %25 = sext i32 %24 to i64, !dbg !79
  call void @klee_assume(i64 noundef %25), !dbg !81
  %26 = load i32, i32* %5, align 4, !dbg !82
  %27 = icmp sge i32 %26, 0, !dbg !83
  %28 = zext i1 %27 to i32, !dbg !83
  %29 = sext i32 %28 to i64, !dbg !82
  call void @klee_assume(i64 noundef %29), !dbg !84
  %30 = load i32, i32* %5, align 4, !dbg !85
  %31 = icmp slt i32 %30, 256, !dbg !86
  %32 = zext i1 %31 to i32, !dbg !86
  %33 = sext i32 %32 to i64, !dbg !85
  call void @klee_assume(i64 noundef %33), !dbg !87
  %34 = load i32, i32* %5, align 4, !dbg !88
  %35 = icmp sge i32 %34, 0, !dbg !89
  br i1 %35, label %36, label %39, !dbg !90

36:                                               ; preds = %0
  %37 = load i32, i32* %5, align 4, !dbg !91
  %38 = icmp slt i32 %37, 256, !dbg !92
  br label %39

39:                                               ; preds = %36, %0
  %40 = phi i1 [ false, %0 ], [ %38, %36 ], !dbg !93
  %41 = zext i1 %40 to i32, !dbg !90
  %42 = sext i32 %41 to i64, !dbg !88
  call void @klee_assume(i64 noundef %42), !dbg !94
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !95
  %44 = load i32, i32* %5, align 4, !dbg !96
  %45 = call i8* @target_function(%struct._xmlParserCtxt* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %43, i32 noundef %44), !dbg !97
  ret i32 0, !dbg !98
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @target_function(%struct._xmlParserCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !99 {
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !104, metadata !DIExpression()), !dbg !105
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !106, metadata !DIExpression()), !dbg !107
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8** %9, metadata !112, metadata !DIExpression()), !dbg !113
  store i8* null, i8** %9, align 8, !dbg !113
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !114
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !116
  %14 = load i32, i32* %13, align 8, !dbg !116
  %15 = icmp ne i32 %14, 0, !dbg !114
  br i1 %15, label %16, label %85, !dbg !117

16:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i8* %10, metadata !118, metadata !DIExpression()), !dbg !120
  %17 = load i8*, i8** %7, align 8, !dbg !121
  %18 = load i32, i32* %8, align 4, !dbg !122
  %19 = sext i32 %18 to i64, !dbg !121
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !121
  %21 = load i8, i8* %20, align 1, !dbg !121
  store i8 %21, i8* %10, align 1, !dbg !120
  %22 = load i32, i32* %8, align 4, !dbg !123
  %23 = icmp slt i32 %22, 16, !dbg !125
  br i1 %23, label %24, label %52, !dbg !126

24:                                               ; preds = %16
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !127
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 1, !dbg !128
  %27 = load i32, i32* %26, align 4, !dbg !128
  %28 = and i32 %27, 1, !dbg !129
  %29 = icmp ne i32 %28, 0, !dbg !129
  br i1 %29, label %30, label %52, !dbg !130

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %11, metadata !131, metadata !DIExpression()), !dbg !133
  %31 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !134
  %32 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %31, i32 0, i32 0, !dbg !135
  %33 = bitcast i8** %32 to i8*, !dbg !136
  store i8* %33, i8** %11, align 8, !dbg !133
  %34 = load i8*, i8** %11, align 8, !dbg !137
  %35 = load i8*, i8** %7, align 8, !dbg !138
  %36 = load i32, i32* %8, align 4, !dbg !139
  %37 = sext i32 %36 to i64, !dbg !139
  %38 = call i8* @memcpy(i8* %34, i8* %35, i64 %37), !dbg !140
  %39 = load i8*, i8** %11, align 8, !dbg !141
  %40 = load i32, i32* %8, align 4, !dbg !142
  %41 = sext i32 %40 to i64, !dbg !141
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !141
  store i8 0, i8* %42, align 1, !dbg !143
  %43 = load i8*, i8** %11, align 8, !dbg !144
  store i8* %43, i8** %9, align 8, !dbg !145
  %44 = load i32, i32* %8, align 4, !dbg !146
  %45 = icmp sle i32 %44, 16, !dbg !146
  br i1 %45, label %46, label %48, !dbg !146

46:                                               ; preds = %30
  br i1 true, label %47, label %48, !dbg !146

47:                                               ; preds = %46
  br label %50, !dbg !146

48:                                               ; preds = %46, %30
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !146
  br label %50, !dbg !146

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !147
  br label %84, !dbg !148

52:                                               ; preds = %24, %16
  %53 = load i32, i32* %8, align 4, !dbg !149
  %54 = icmp sle i32 %53, 3, !dbg !151
  br i1 %54, label %55, label %83, !dbg !152

55:                                               ; preds = %52
  %56 = load i8, i8* %10, align 1, !dbg !153
  %57 = zext i8 %56 to i32, !dbg !153
  %58 = icmp eq i32 %57, 34, !dbg !154
  br i1 %58, label %76, label %59, !dbg !155

59:                                               ; preds = %55
  %60 = load i8, i8* %10, align 1, !dbg !156
  %61 = zext i8 %60 to i32, !dbg !156
  %62 = icmp eq i32 %61, 39, !dbg !157
  br i1 %62, label %76, label %63, !dbg !158

63:                                               ; preds = %59
  %64 = load i8, i8* %10, align 1, !dbg !159
  %65 = zext i8 %64 to i32, !dbg !159
  %66 = icmp eq i32 %65, 60, !dbg !160
  br i1 %66, label %67, label %83, !dbg !161

67:                                               ; preds = %63
  %68 = load i8*, i8** %7, align 8, !dbg !162
  %69 = load i32, i32* %8, align 4, !dbg !163
  %70 = add nsw i32 %69, 1, !dbg !164
  %71 = sext i32 %70 to i64, !dbg !162
  %72 = getelementptr inbounds i8, i8* %68, i64 %71, !dbg !162
  %73 = load i8, i8* %72, align 1, !dbg !162
  %74 = zext i8 %73 to i32, !dbg !162
  %75 = icmp ne i32 %74, 33, !dbg !165
  br i1 %75, label %76, label %83, !dbg !166

76:                                               ; preds = %67, %59, %55
  %77 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !167
  %78 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %77, i32 0, i32 2, !dbg !169
  %79 = load %struct._xmlDict*, %struct._xmlDict** %78, align 8, !dbg !169
  %80 = load i8*, i8** %7, align 8, !dbg !170
  %81 = load i32, i32* %8, align 4, !dbg !171
  %82 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %79, i8* noundef %80, i32 noundef %81), !dbg !172
  store i8* %82, i8** %9, align 8, !dbg !173
  br label %83, !dbg !174

83:                                               ; preds = %76, %67, %63, %52
  br label %84

84:                                               ; preds = %83, %50
  br label %85, !dbg !175

85:                                               ; preds = %84, %4
  %86 = load i8*, i8** %9, align 8, !dbg !176
  ret i8* %86, !dbg !177
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !187, metadata !DIExpression()), !dbg !188
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %7, metadata !193, metadata !DIExpression()), !dbg !196
  %9 = load i8*, i8** %4, align 8, !dbg !197
  store i8* %9, i8** %7, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %8, metadata !198, metadata !DIExpression()), !dbg !201
  %10 = load i8*, i8** %5, align 8, !dbg !202
  store i8* %10, i8** %8, align 8, !dbg !201
  br label %11, !dbg !203

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !204
  %13 = add i64 %12, -1, !dbg !204
  store i64 %13, i64* %6, align 8, !dbg !204
  %14 = icmp ugt i64 %12, 0, !dbg !205
  br i1 %14, label %15, label %21, !dbg !203

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !206
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !206
  store i8* %17, i8** %8, align 8, !dbg !206
  %18 = load i8, i8* %16, align 1, !dbg !207
  %19 = load i8*, i8** %7, align 8, !dbg !208
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !208
  store i8* %20, i8** %7, align 8, !dbg !208
  store i8 %18, i8* %19, align 1, !dbg !209
  br label %11, !dbg !203, !llvm.loop !210

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !212
  ret i8* %22, !dbg !213
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0e448ae5f245415157791e15be1e3e73")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 26, type: !18, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!18 = !DISubroutineType(types: !19)
!19 = !{!3, !20, !23, !6}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 11, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 11, flags: DIFlagFwdDecl)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!25 = !{}
!26 = !DILocalVariable(name: "dict", arg: 1, scope: !17, file: !1, line: 26, type: !20)
!27 = !DILocation(line: 26, column: 33, scope: !17)
!28 = !DILocalVariable(name: "str", arg: 2, scope: !17, file: !1, line: 26, type: !23)
!29 = !DILocation(line: 26, column: 54, scope: !17)
!30 = !DILocalVariable(name: "len", arg: 3, scope: !17, file: !1, line: 26, type: !6)
!31 = !DILocation(line: 26, column: 63, scope: !17)
!32 = !DILocation(line: 27, column: 22, scope: !17)
!33 = !DILocation(line: 27, column: 5, scope: !17)
!34 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !35, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!35 = !DISubroutineType(types: !36)
!36 = !{!6}
!37 = !DILocalVariable(name: "ctxt", scope: !34, file: !1, line: 59, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 15, size: 128, elements: !40)
!40 = !{!41, !42, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !39, file: !1, line: 16, baseType: !6, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !39, file: !1, line: 17, baseType: !6, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !39, file: !1, line: 18, baseType: !20, size: 64, offset: 64)
!44 = !DILocation(line: 59, column: 19, scope: !34)
!45 = !DILocalVariable(name: "node", scope: !34, file: !1, line: 60, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 21, size: 64, elements: !48)
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !47, file: !1, line: 22, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DILocation(line: 60, column: 13, scope: !34)
!52 = !DILocalVariable(name: "str", scope: !34, file: !1, line: 61, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 256)
!56 = !DILocation(line: 61, column: 13, scope: !34)
!57 = !DILocalVariable(name: "len", scope: !34, file: !1, line: 62, type: !6)
!58 = !DILocation(line: 62, column: 9, scope: !34)
!59 = !DILocation(line: 65, column: 30, scope: !34)
!60 = !DILocation(line: 65, column: 24, scope: !34)
!61 = !DILocation(line: 65, column: 5, scope: !34)
!62 = !DILocation(line: 66, column: 30, scope: !34)
!63 = !DILocation(line: 66, column: 24, scope: !34)
!64 = !DILocation(line: 66, column: 5, scope: !34)
!65 = !DILocation(line: 67, column: 10, scope: !34)
!66 = !DILocation(line: 67, column: 15, scope: !34)
!67 = !DILocation(line: 69, column: 24, scope: !34)
!68 = !DILocation(line: 69, column: 5, scope: !34)
!69 = !DILocation(line: 70, column: 24, scope: !34)
!70 = !DILocation(line: 70, column: 5, scope: !34)
!71 = !DILocation(line: 73, column: 22, scope: !34)
!72 = !DILocation(line: 73, column: 32, scope: !34)
!73 = !DILocation(line: 73, column: 17, scope: !34)
!74 = !DILocation(line: 73, column: 5, scope: !34)
!75 = !DILocation(line: 74, column: 22, scope: !34)
!76 = !DILocation(line: 74, column: 30, scope: !34)
!77 = !DILocation(line: 74, column: 17, scope: !34)
!78 = !DILocation(line: 74, column: 5, scope: !34)
!79 = !DILocation(line: 75, column: 17, scope: !34)
!80 = !DILocation(line: 75, column: 21, scope: !34)
!81 = !DILocation(line: 75, column: 5, scope: !34)
!82 = !DILocation(line: 76, column: 17, scope: !34)
!83 = !DILocation(line: 76, column: 21, scope: !34)
!84 = !DILocation(line: 76, column: 5, scope: !34)
!85 = !DILocation(line: 77, column: 17, scope: !34)
!86 = !DILocation(line: 77, column: 21, scope: !34)
!87 = !DILocation(line: 77, column: 5, scope: !34)
!88 = !DILocation(line: 80, column: 17, scope: !34)
!89 = !DILocation(line: 80, column: 21, scope: !34)
!90 = !DILocation(line: 80, column: 26, scope: !34)
!91 = !DILocation(line: 80, column: 29, scope: !34)
!92 = !DILocation(line: 80, column: 33, scope: !34)
!93 = !DILocation(line: 0, scope: !34)
!94 = !DILocation(line: 80, column: 5, scope: !34)
!95 = !DILocation(line: 83, column: 35, scope: !34)
!96 = !DILocation(line: 83, column: 40, scope: !34)
!97 = !DILocation(line: 83, column: 5, scope: !34)
!98 = !DILocation(line: 85, column: 5, scope: !34)
!99 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 31, type: !100, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !25)
!100 = !DISubroutineType(types: !101)
!101 = !{!3, !102, !103, !23, !6}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DILocalVariable(name: "ctxt", arg: 1, scope: !99, file: !1, line: 31, type: !102)
!105 = !DILocation(line: 31, column: 48, scope: !99)
!106 = !DILocalVariable(name: "ret", arg: 2, scope: !99, file: !1, line: 31, type: !103)
!107 = !DILocation(line: 31, column: 63, scope: !99)
!108 = !DILocalVariable(name: "str", arg: 3, scope: !99, file: !1, line: 31, type: !23)
!109 = !DILocation(line: 31, column: 83, scope: !99)
!110 = !DILocalVariable(name: "len", arg: 4, scope: !99, file: !1, line: 31, type: !6)
!111 = !DILocation(line: 31, column: 92, scope: !99)
!112 = !DILocalVariable(name: "intern", scope: !99, file: !1, line: 32, type: !3)
!113 = !DILocation(line: 32, column: 14, scope: !99)
!114 = !DILocation(line: 34, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !99, file: !1, line: 34, column: 9)
!116 = !DILocation(line: 34, column: 15, scope: !115)
!117 = !DILocation(line: 34, column: 9, scope: !99)
!118 = !DILocalVariable(name: "cur", scope: !119, file: !1, line: 35, type: !4)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 34, column: 26)
!120 = !DILocation(line: 35, column: 17, scope: !119)
!121 = !DILocation(line: 35, column: 23, scope: !119)
!122 = !DILocation(line: 35, column: 27, scope: !119)
!123 = !DILocation(line: 37, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 37, column: 13)
!125 = !DILocation(line: 37, column: 18, scope: !124)
!126 = !DILocation(line: 37, column: 47, scope: !124)
!127 = !DILocation(line: 38, column: 14, scope: !124)
!128 = !DILocation(line: 38, column: 20, scope: !124)
!129 = !DILocation(line: 38, column: 28, scope: !124)
!130 = !DILocation(line: 37, column: 13, scope: !119)
!131 = !DILocalVariable(name: "tmp", scope: !132, file: !1, line: 40, type: !3)
!132 = distinct !DILexicalBlock(scope: !124, file: !1, line: 38, column: 34)
!133 = !DILocation(line: 40, column: 22, scope: !132)
!134 = !DILocation(line: 40, column: 41, scope: !132)
!135 = !DILocation(line: 40, column: 46, scope: !132)
!136 = !DILocation(line: 40, column: 28, scope: !132)
!137 = !DILocation(line: 41, column: 20, scope: !132)
!138 = !DILocation(line: 41, column: 25, scope: !132)
!139 = !DILocation(line: 41, column: 30, scope: !132)
!140 = !DILocation(line: 41, column: 13, scope: !132)
!141 = !DILocation(line: 42, column: 13, scope: !132)
!142 = !DILocation(line: 42, column: 17, scope: !132)
!143 = !DILocation(line: 42, column: 22, scope: !132)
!144 = !DILocation(line: 43, column: 22, scope: !132)
!145 = !DILocation(line: 43, column: 20, scope: !132)
!146 = !DILocation(line: 46, column: 13, scope: !132)
!147 = !DILocation(line: 48, column: 13, scope: !132)
!148 = !DILocation(line: 49, column: 9, scope: !132)
!149 = !DILocation(line: 49, column: 21, scope: !150)
!150 = distinct !DILexicalBlock(scope: !124, file: !1, line: 49, column: 20)
!151 = !DILocation(line: 49, column: 25, scope: !150)
!152 = !DILocation(line: 49, column: 31, scope: !150)
!153 = !DILocation(line: 49, column: 36, scope: !150)
!154 = !DILocation(line: 49, column: 40, scope: !150)
!155 = !DILocation(line: 49, column: 48, scope: !150)
!156 = !DILocation(line: 49, column: 52, scope: !150)
!157 = !DILocation(line: 49, column: 56, scope: !150)
!158 = !DILocation(line: 49, column: 65, scope: !150)
!159 = !DILocation(line: 50, column: 22, scope: !150)
!160 = !DILocation(line: 50, column: 26, scope: !150)
!161 = !DILocation(line: 50, column: 34, scope: !150)
!162 = !DILocation(line: 50, column: 38, scope: !150)
!163 = !DILocation(line: 50, column: 42, scope: !150)
!164 = !DILocation(line: 50, column: 46, scope: !150)
!165 = !DILocation(line: 50, column: 51, scope: !150)
!166 = !DILocation(line: 49, column: 20, scope: !124)
!167 = !DILocation(line: 51, column: 36, scope: !168)
!168 = distinct !DILexicalBlock(scope: !150, file: !1, line: 50, column: 62)
!169 = !DILocation(line: 51, column: 42, scope: !168)
!170 = !DILocation(line: 51, column: 48, scope: !168)
!171 = !DILocation(line: 51, column: 53, scope: !168)
!172 = !DILocation(line: 51, column: 22, scope: !168)
!173 = !DILocation(line: 51, column: 20, scope: !168)
!174 = !DILocation(line: 52, column: 9, scope: !168)
!175 = !DILocation(line: 53, column: 5, scope: !119)
!176 = !DILocation(line: 54, column: 12, scope: !99)
!177 = !DILocation(line: 54, column: 5, scope: !99)
!178 = distinct !DISubprogram(name: "memcpy", scope: !179, file: !179, line: 12, type: !180, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !25)
!179 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!180 = !DISubroutineType(types: !181)
!181 = !{!50, !50, !182, !184}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 46, baseType: !186)
!185 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!186 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!187 = !DILocalVariable(name: "destaddr", arg: 1, scope: !178, file: !179, line: 12, type: !50)
!188 = !DILocation(line: 12, column: 20, scope: !178)
!189 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !178, file: !179, line: 12, type: !182)
!190 = !DILocation(line: 12, column: 42, scope: !178)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !178, file: !179, line: 12, type: !184)
!192 = !DILocation(line: 12, column: 58, scope: !178)
!193 = !DILocalVariable(name: "dest", scope: !178, file: !179, line: 13, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!196 = !DILocation(line: 13, column: 9, scope: !178)
!197 = !DILocation(line: 13, column: 16, scope: !178)
!198 = !DILocalVariable(name: "src", scope: !178, file: !179, line: 14, type: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!201 = !DILocation(line: 14, column: 15, scope: !178)
!202 = !DILocation(line: 14, column: 21, scope: !178)
!203 = !DILocation(line: 16, column: 3, scope: !178)
!204 = !DILocation(line: 16, column: 13, scope: !178)
!205 = !DILocation(line: 16, column: 16, scope: !178)
!206 = !DILocation(line: 17, column: 19, scope: !178)
!207 = !DILocation(line: 17, column: 15, scope: !178)
!208 = !DILocation(line: 17, column: 10, scope: !178)
!209 = !DILocation(line: 17, column: 13, scope: !178)
!210 = distinct !{!210, !203, !206, !211}
!211 = !{!"llvm.loop.mustprogress"}
!212 = !DILocation(line: 18, column: 10, scope: !178)
!213 = !DILocation(line: 18, column: 3, scope: !178)
