; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type {}
%struct._xmlParserCtxt = type { i32, i64, %struct._xmlDict* }
%struct._xmlNode = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"str_buf\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"(len < 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
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
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !37, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !46, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %4, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !55, metadata !DIExpression()), !dbg !59
  %6 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !60
  %7 = bitcast i32* %6 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !63
  %9 = bitcast i64* %8 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !65
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !66
  store %struct._xmlDict* null, %struct._xmlDict** %10, align 8, !dbg !67
  %11 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !68
  %12 = load i32, i32* %11, align 8, !dbg !68
  %13 = icmp ne i32 %12, 0, !dbg !69
  %14 = zext i1 %13 to i32, !dbg !69
  %15 = sext i32 %14 to i64, !dbg !70
  call void @klee_assume(i64 noundef %15), !dbg !71
  %16 = load i32, i32* %4, align 4, !dbg !72
  %17 = icmp slt i32 %16, 16, !dbg !73
  br i1 %17, label %18, label %23, !dbg !74

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !75
  %20 = load i64, i64* %19, align 8, !dbg !75
  %21 = and i64 %20, 4096, !dbg !76
  %22 = icmp ne i64 %21, 0, !dbg !74
  br label %23

23:                                               ; preds = %18, %0
  %24 = phi i1 [ false, %0 ], [ %22, %18 ], !dbg !77
  %25 = zext i1 %24 to i32, !dbg !74
  %26 = sext i32 %25 to i64, !dbg !78
  call void @klee_assume(i64 noundef %26), !dbg !79
  %27 = bitcast i32* %4 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !81
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !83
  %29 = load i32, i32* %4, align 4, !dbg !84
  %30 = icmp sge i32 %29, 0, !dbg !85
  %31 = zext i1 %30 to i32, !dbg !85
  %32 = sext i32 %31 to i64, !dbg !84
  call void @klee_assume(i64 noundef %32), !dbg !86
  %33 = load i32, i32* %4, align 4, !dbg !87
  %34 = icmp slt i32 %33, 16, !dbg !88
  %35 = zext i1 %34 to i32, !dbg !88
  %36 = sext i32 %35 to i64, !dbg !87
  call void @klee_assume(i64 noundef %36), !dbg !89
  %37 = load i32, i32* %4, align 4, !dbg !90
  %38 = icmp slt i32 %37, 256, !dbg !90
  br i1 %38, label %39, label %41, !dbg !90

39:                                               ; preds = %23
  br i1 true, label %40, label %41, !dbg !90

40:                                               ; preds = %39
  br label %43, !dbg !90

41:                                               ; preds = %39, %23
  %42 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !90
  br label %43, !dbg !90

43:                                               ; preds = %41, %40
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !91
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !92
  %46 = load i32, i32* %4, align 4, !dbg !93
  %47 = call i8* @target_function(%struct._xmlParserCtxt* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %45, i32 noundef %46), !dbg !94
  ret i32 0, !dbg !95
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @target_function(%struct._xmlParserCtxt* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !96 {
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !101, metadata !DIExpression()), !dbg !102
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !103, metadata !DIExpression()), !dbg !104
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %9, metadata !109, metadata !DIExpression()), !dbg !110
  store i8* null, i8** %9, align 8, !dbg !110
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !111
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 0, !dbg !113
  %14 = load i32, i32* %13, align 8, !dbg !113
  %15 = icmp ne i32 %14, 0, !dbg !111
  br i1 %15, label %16, label %77, !dbg !114

16:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i8* %10, metadata !115, metadata !DIExpression()), !dbg !117
  %17 = load i8*, i8** %7, align 8, !dbg !118
  %18 = load i32, i32* %8, align 4, !dbg !119
  %19 = sext i32 %18 to i64, !dbg !118
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !118
  %21 = load i8, i8* %20, align 1, !dbg !118
  store i8 %21, i8* %10, align 1, !dbg !117
  %22 = load i32, i32* %8, align 4, !dbg !120
  %23 = icmp slt i32 %22, 16, !dbg !122
  br i1 %23, label %24, label %44, !dbg !123

24:                                               ; preds = %16
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !124
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 1, !dbg !125
  %27 = load i64, i64* %26, align 8, !dbg !125
  %28 = and i64 %27, 4096, !dbg !126
  %29 = icmp ne i64 %28, 0, !dbg !126
  br i1 %29, label %30, label %44, !dbg !127

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata i8** %11, metadata !128, metadata !DIExpression()), !dbg !130
  %31 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !131
  %32 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %31, i32 0, i32 0, !dbg !132
  %33 = bitcast i8** %32 to i8*, !dbg !133
  store i8* %33, i8** %11, align 8, !dbg !130
  %34 = load i8*, i8** %11, align 8, !dbg !134
  %35 = load i8*, i8** %7, align 8, !dbg !135
  %36 = load i32, i32* %8, align 4, !dbg !136
  %37 = sext i32 %36 to i64, !dbg !136
  %38 = call i8* @memcpy(i8* %34, i8* %35, i64 %37), !dbg !137
  %39 = load i8*, i8** %11, align 8, !dbg !138
  %40 = load i32, i32* %8, align 4, !dbg !139
  %41 = sext i32 %40 to i64, !dbg !138
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !138
  store i8 0, i8* %42, align 1, !dbg !140
  %43 = load i8*, i8** %11, align 8, !dbg !141
  store i8* %43, i8** %9, align 8, !dbg !142
  br label %76, !dbg !143

44:                                               ; preds = %24, %16
  %45 = load i32, i32* %8, align 4, !dbg !144
  %46 = icmp sle i32 %45, 3, !dbg !146
  br i1 %46, label %47, label %75, !dbg !147

47:                                               ; preds = %44
  %48 = load i8, i8* %10, align 1, !dbg !148
  %49 = zext i8 %48 to i32, !dbg !148
  %50 = icmp eq i32 %49, 34, !dbg !149
  br i1 %50, label %68, label %51, !dbg !150

51:                                               ; preds = %47
  %52 = load i8, i8* %10, align 1, !dbg !151
  %53 = zext i8 %52 to i32, !dbg !151
  %54 = icmp eq i32 %53, 39, !dbg !152
  br i1 %54, label %68, label %55, !dbg !153

55:                                               ; preds = %51
  %56 = load i8, i8* %10, align 1, !dbg !154
  %57 = zext i8 %56 to i32, !dbg !154
  %58 = icmp eq i32 %57, 60, !dbg !155
  br i1 %58, label %59, label %75, !dbg !156

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8, !dbg !157
  %61 = load i32, i32* %8, align 4, !dbg !158
  %62 = add nsw i32 %61, 1, !dbg !159
  %63 = sext i32 %62 to i64, !dbg !157
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !157
  %65 = load i8, i8* %64, align 1, !dbg !157
  %66 = zext i8 %65 to i32, !dbg !157
  %67 = icmp ne i32 %66, 33, !dbg !160
  br i1 %67, label %68, label %75, !dbg !161

68:                                               ; preds = %59, %51, %47
  %69 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !162
  %70 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %69, i32 0, i32 2, !dbg !164
  %71 = load %struct._xmlDict*, %struct._xmlDict** %70, align 8, !dbg !164
  %72 = load i8*, i8** %7, align 8, !dbg !165
  %73 = load i32, i32* %8, align 4, !dbg !166
  %74 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %71, i8* noundef %72, i32 noundef %73), !dbg !167
  store i8* %74, i8** %9, align 8, !dbg !168
  br label %75, !dbg !169

75:                                               ; preds = %68, %59, %55, %44
  br label %76

76:                                               ; preds = %75, %30
  br label %77, !dbg !170

77:                                               ; preds = %76, %4
  %78 = load i8*, i8** %9, align 8, !dbg !171
  ret i8* %78, !dbg !172
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !173 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !190
  %9 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %9, i8** %7, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %8, metadata !192, metadata !DIExpression()), !dbg !195
  %10 = load i8*, i8** %5, align 8, !dbg !196
  store i8* %10, i8** %8, align 8, !dbg !195
  br label %11, !dbg !197

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !198
  %13 = add i64 %12, -1, !dbg !198
  store i64 %13, i64* %6, align 8, !dbg !198
  %14 = icmp ugt i64 %12, 0, !dbg !199
  br i1 %14, label %15, label %21, !dbg !197

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !200
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !200
  store i8* %17, i8** %8, align 8, !dbg !200
  %18 = load i8, i8* %16, align 1, !dbg !201
  %19 = load i8*, i8** %7, align 8, !dbg !202
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !202
  store i8* %20, i8** %7, align 8, !dbg !202
  store i8 %18, i8* %19, align 1, !dbg !203
  br label %11, !dbg !197, !llvm.loop !204

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !206
  ret i8* %22, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/021_SAX2.c_1884_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6ece2e24d1f650721a26a2994eacc6cc")
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
!17 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 32, type: !18, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!3, !20, !24, !6}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 16, elements: !23)
!23 = !{}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !DILocalVariable(name: "dict", arg: 1, scope: !17, file: !1, line: 32, type: !20)
!27 = !DILocation(line: 32, column: 33, scope: !17)
!28 = !DILocalVariable(name: "str", arg: 2, scope: !17, file: !1, line: 32, type: !24)
!29 = !DILocation(line: 32, column: 54, scope: !17)
!30 = !DILocalVariable(name: "len", arg: 3, scope: !17, file: !1, line: 32, type: !6)
!31 = !DILocation(line: 32, column: 63, scope: !17)
!32 = !DILocation(line: 33, column: 22, scope: !17)
!33 = !DILocation(line: 33, column: 5, scope: !17)
!34 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !35, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!35 = !DISubroutineType(types: !36)
!36 = !{!6}
!37 = !DILocalVariable(name: "ctxt", scope: !34, file: !1, line: 63, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 24, size: 192, elements: !40)
!40 = !{!41, !42, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !39, file: !1, line: 25, baseType: !6, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !39, file: !1, line: 26, baseType: !43, size: 64, offset: 64)
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !39, file: !1, line: 27, baseType: !20, size: 64, offset: 128)
!45 = !DILocation(line: 63, column: 19, scope: !34)
!46 = !DILocalVariable(name: "node", scope: !34, file: !1, line: 64, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 13, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 20, size: 64, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !48, file: !1, line: 21, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!52 = !DILocation(line: 64, column: 13, scope: !34)
!53 = !DILocalVariable(name: "len", scope: !34, file: !1, line: 65, type: !6)
!54 = !DILocation(line: 65, column: 9, scope: !34)
!55 = !DILocalVariable(name: "str_buf", scope: !34, file: !1, line: 66, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 256)
!59 = !DILocation(line: 66, column: 13, scope: !34)
!60 = !DILocation(line: 69, column: 30, scope: !34)
!61 = !DILocation(line: 69, column: 24, scope: !34)
!62 = !DILocation(line: 69, column: 5, scope: !34)
!63 = !DILocation(line: 70, column: 30, scope: !34)
!64 = !DILocation(line: 70, column: 24, scope: !34)
!65 = !DILocation(line: 70, column: 5, scope: !34)
!66 = !DILocation(line: 71, column: 10, scope: !34)
!67 = !DILocation(line: 71, column: 15, scope: !34)
!68 = !DILocation(line: 74, column: 22, scope: !34)
!69 = !DILocation(line: 74, column: 32, scope: !34)
!70 = !DILocation(line: 74, column: 17, scope: !34)
!71 = !DILocation(line: 74, column: 5, scope: !34)
!72 = !DILocation(line: 75, column: 18, scope: !34)
!73 = !DILocation(line: 75, column: 22, scope: !34)
!74 = !DILocation(line: 75, column: 50, scope: !34)
!75 = !DILocation(line: 76, column: 23, scope: !34)
!76 = !DILocation(line: 76, column: 31, scope: !34)
!77 = !DILocation(line: 0, scope: !34)
!78 = !DILocation(line: 75, column: 17, scope: !34)
!79 = !DILocation(line: 75, column: 5, scope: !34)
!80 = !DILocation(line: 79, column: 24, scope: !34)
!81 = !DILocation(line: 79, column: 5, scope: !34)
!82 = !DILocation(line: 80, column: 24, scope: !34)
!83 = !DILocation(line: 80, column: 5, scope: !34)
!84 = !DILocation(line: 83, column: 17, scope: !34)
!85 = !DILocation(line: 83, column: 21, scope: !34)
!86 = !DILocation(line: 83, column: 5, scope: !34)
!87 = !DILocation(line: 84, column: 17, scope: !34)
!88 = !DILocation(line: 84, column: 21, scope: !34)
!89 = !DILocation(line: 84, column: 5, scope: !34)
!90 = !DILocation(line: 89, column: 5, scope: !34)
!91 = !DILocation(line: 92, column: 5, scope: !34)
!92 = !DILocation(line: 95, column: 35, scope: !34)
!93 = !DILocation(line: 95, column: 44, scope: !34)
!94 = !DILocation(line: 95, column: 5, scope: !34)
!95 = !DILocation(line: 97, column: 5, scope: !34)
!96 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 37, type: !97, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !23)
!97 = !DISubroutineType(types: !98)
!98 = !{!3, !99, !100, !24, !6}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!101 = !DILocalVariable(name: "ctxt", arg: 1, scope: !96, file: !1, line: 37, type: !99)
!102 = !DILocation(line: 37, column: 48, scope: !96)
!103 = !DILocalVariable(name: "ret", arg: 2, scope: !96, file: !1, line: 37, type: !100)
!104 = !DILocation(line: 37, column: 63, scope: !96)
!105 = !DILocalVariable(name: "str", arg: 3, scope: !96, file: !1, line: 38, type: !24)
!106 = !DILocation(line: 38, column: 48, scope: !96)
!107 = !DILocalVariable(name: "len", arg: 4, scope: !96, file: !1, line: 38, type: !6)
!108 = !DILocation(line: 38, column: 57, scope: !96)
!109 = !DILocalVariable(name: "intern", scope: !96, file: !1, line: 39, type: !3)
!110 = !DILocation(line: 39, column: 14, scope: !96)
!111 = !DILocation(line: 41, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !96, file: !1, line: 41, column: 9)
!113 = !DILocation(line: 41, column: 15, scope: !112)
!114 = !DILocation(line: 41, column: 9, scope: !96)
!115 = !DILocalVariable(name: "cur", scope: !116, file: !1, line: 42, type: !4)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 41, column: 26)
!117 = !DILocation(line: 42, column: 17, scope: !116)
!118 = !DILocation(line: 42, column: 23, scope: !116)
!119 = !DILocation(line: 42, column: 27, scope: !116)
!120 = !DILocation(line: 44, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 44, column: 13)
!122 = !DILocation(line: 44, column: 18, scope: !121)
!123 = !DILocation(line: 44, column: 46, scope: !121)
!124 = !DILocation(line: 45, column: 14, scope: !121)
!125 = !DILocation(line: 45, column: 20, scope: !121)
!126 = !DILocation(line: 45, column: 28, scope: !121)
!127 = !DILocation(line: 44, column: 13, scope: !116)
!128 = !DILocalVariable(name: "tmp", scope: !129, file: !1, line: 47, type: !3)
!129 = distinct !DILexicalBlock(scope: !121, file: !1, line: 45, column: 39)
!130 = !DILocation(line: 47, column: 22, scope: !129)
!131 = !DILocation(line: 47, column: 40, scope: !129)
!132 = !DILocation(line: 47, column: 45, scope: !129)
!133 = !DILocation(line: 47, column: 28, scope: !129)
!134 = !DILocation(line: 49, column: 20, scope: !129)
!135 = !DILocation(line: 49, column: 25, scope: !129)
!136 = !DILocation(line: 49, column: 30, scope: !129)
!137 = !DILocation(line: 49, column: 13, scope: !129)
!138 = !DILocation(line: 50, column: 13, scope: !129)
!139 = !DILocation(line: 50, column: 17, scope: !129)
!140 = !DILocation(line: 50, column: 22, scope: !129)
!141 = !DILocation(line: 51, column: 22, scope: !129)
!142 = !DILocation(line: 51, column: 20, scope: !129)
!143 = !DILocation(line: 52, column: 9, scope: !129)
!144 = !DILocation(line: 52, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !121, file: !1, line: 52, column: 20)
!146 = !DILocation(line: 52, column: 25, scope: !145)
!147 = !DILocation(line: 52, column: 31, scope: !145)
!148 = !DILocation(line: 52, column: 36, scope: !145)
!149 = !DILocation(line: 52, column: 40, scope: !145)
!150 = !DILocation(line: 52, column: 48, scope: !145)
!151 = !DILocation(line: 52, column: 52, scope: !145)
!152 = !DILocation(line: 52, column: 56, scope: !145)
!153 = !DILocation(line: 52, column: 65, scope: !145)
!154 = !DILocation(line: 53, column: 22, scope: !145)
!155 = !DILocation(line: 53, column: 26, scope: !145)
!156 = !DILocation(line: 53, column: 34, scope: !145)
!157 = !DILocation(line: 53, column: 38, scope: !145)
!158 = !DILocation(line: 53, column: 42, scope: !145)
!159 = !DILocation(line: 53, column: 46, scope: !145)
!160 = !DILocation(line: 53, column: 51, scope: !145)
!161 = !DILocation(line: 52, column: 20, scope: !121)
!162 = !DILocation(line: 54, column: 36, scope: !163)
!163 = distinct !DILexicalBlock(scope: !145, file: !1, line: 53, column: 62)
!164 = !DILocation(line: 54, column: 42, scope: !163)
!165 = !DILocation(line: 54, column: 48, scope: !163)
!166 = !DILocation(line: 54, column: 53, scope: !163)
!167 = !DILocation(line: 54, column: 22, scope: !163)
!168 = !DILocation(line: 54, column: 20, scope: !163)
!169 = !DILocation(line: 55, column: 9, scope: !163)
!170 = !DILocation(line: 56, column: 5, scope: !116)
!171 = !DILocation(line: 58, column: 12, scope: !96)
!172 = !DILocation(line: 58, column: 5, scope: !96)
!173 = distinct !DISubprogram(name: "memcpy", scope: !174, file: !174, line: 12, type: !175, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!174 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!175 = !DISubroutineType(types: !176)
!176 = !{!51, !51, !177, !179}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 46, baseType: !43)
!180 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!181 = !DILocalVariable(name: "destaddr", arg: 1, scope: !173, file: !174, line: 12, type: !51)
!182 = !DILocation(line: 12, column: 20, scope: !173)
!183 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !173, file: !174, line: 12, type: !177)
!184 = !DILocation(line: 12, column: 42, scope: !173)
!185 = !DILocalVariable(name: "len", arg: 3, scope: !173, file: !174, line: 12, type: !179)
!186 = !DILocation(line: 12, column: 58, scope: !173)
!187 = !DILocalVariable(name: "dest", scope: !173, file: !174, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DILocation(line: 13, column: 9, scope: !173)
!191 = !DILocation(line: 13, column: 16, scope: !173)
!192 = !DILocalVariable(name: "src", scope: !173, file: !174, line: 14, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!195 = !DILocation(line: 14, column: 15, scope: !173)
!196 = !DILocation(line: 14, column: 21, scope: !173)
!197 = !DILocation(line: 16, column: 3, scope: !173)
!198 = !DILocation(line: 16, column: 13, scope: !173)
!199 = !DILocation(line: 16, column: 16, scope: !173)
!200 = !DILocation(line: 17, column: 19, scope: !173)
!201 = !DILocation(line: 17, column: 15, scope: !173)
!202 = !DILocation(line: 17, column: 10, scope: !173)
!203 = !DILocation(line: 17, column: 13, scope: !173)
!204 = distinct !{!204, !197, !200, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 18, column: 10, scope: !173)
!207 = !DILocation(line: 18, column: 3, scope: !173)
