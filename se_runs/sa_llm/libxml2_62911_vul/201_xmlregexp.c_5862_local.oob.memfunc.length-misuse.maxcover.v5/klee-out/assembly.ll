; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/201_xmlregexp.c_5862_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/201_xmlregexp.c_5862_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegState = type opaque
%struct._xmlRegAtom = type opaque
%struct._xmlRegCounter = type opaque

@.str = private unnamed_addr constant [10 x i8] c"token_buf\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"token2_buf\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"(lenp >= 0 && lenn >= 0 && (size_t)(lenp + 1 + lenn) <= (size_t)(lenn + lenp + 2)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/201_xmlregexp.c_5862_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFAGenerateTransitions = private unnamed_addr constant [95 x i8] c"void xmlFAGenerateTransitions(xmlRegStatePtr, xmlRegStatePtr, xmlRegAtomPtr, xmlRegCounterPtr)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !22 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegState*, align 8
  %3 = alloca %struct._xmlRegState*, align 8
  %4 = alloca %struct._xmlRegAtom*, align 8
  %5 = alloca %struct._xmlRegCounter*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %2, metadata !27, metadata !DIExpression()), !dbg !32
  store %struct._xmlRegState* null, %struct._xmlRegState** %2, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct._xmlRegState* null, %struct._xmlRegState** %3, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %4, metadata !35, metadata !DIExpression()), !dbg !40
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %4, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata %struct._xmlRegCounter** %5, metadata !41, metadata !DIExpression()), !dbg !46
  store %struct._xmlRegCounter* null, %struct._xmlRegCounter** %5, align 8, !dbg !46
  %6 = load %struct._xmlRegState*, %struct._xmlRegState** %2, align 8, !dbg !47
  %7 = load %struct._xmlRegState*, %struct._xmlRegState** %3, align 8, !dbg !48
  %8 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %4, align 8, !dbg !49
  %9 = load %struct._xmlRegCounter*, %struct._xmlRegCounter** %5, align 8, !dbg !50
  call void @xmlFAGenerateTransitions(%struct._xmlRegState* noundef %6, %struct._xmlRegState* noundef %7, %struct._xmlRegAtom* noundef %8, %struct._xmlRegCounter* noundef %9), !dbg !51
  ret i32 0, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFAGenerateTransitions(%struct._xmlRegState* noundef %0, %struct._xmlRegState* noundef %1, %struct._xmlRegAtom* noundef %2, %struct._xmlRegCounter* noundef %3) #0 !dbg !53 {
  %5 = alloca %struct._xmlRegState*, align 8
  %6 = alloca %struct._xmlRegState*, align 8
  %7 = alloca %struct._xmlRegAtom*, align 8
  %8 = alloca %struct._xmlRegCounter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  store %struct._xmlRegState* %0, %struct._xmlRegState** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store %struct._xmlRegState* %1, %struct._xmlRegState** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegState** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlRegAtom* %2, %struct._xmlRegAtom** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %7, metadata !60, metadata !DIExpression()), !dbg !61
  store %struct._xmlRegCounter* %3, %struct._xmlRegCounter** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegCounter** %8, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i8** %9, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %10, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %11, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %12, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i8** %13, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata [256 x i8]* %14, metadata !74, metadata !DIExpression()), !dbg !78
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !79
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !80
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 255, !dbg !81
  %19 = load i8, i8* %18, align 1, !dbg !81
  %20 = sext i8 %19 to i32, !dbg !81
  %21 = icmp eq i32 %20, 0, !dbg !82
  %22 = zext i1 %21 to i32, !dbg !82
  %23 = sext i32 %22 to i64, !dbg !81
  call void @klee_assume(i64 noundef %23), !dbg !83
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0, !dbg !84
  store i8* %24, i8** %9, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata [256 x i8]* %15, metadata !86, metadata !DIExpression()), !dbg !87
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0, !dbg !88
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %16, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %16, align 4, !dbg !92
  br label %26, !dbg !93

26:                                               ; preds = %38, %4
  %27 = load i32, i32* %16, align 4, !dbg !94
  %28 = icmp slt i32 %27, 255, !dbg !96
  br i1 %28, label %29, label %41, !dbg !97

29:                                               ; preds = %26
  %30 = load i32, i32* %16, align 4, !dbg !98
  %31 = sext i32 %30 to i64, !dbg !101
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %31, !dbg !101
  %33 = load i8, i8* %32, align 1, !dbg !101
  %34 = sext i8 %33 to i32, !dbg !101
  %35 = icmp eq i32 %34, 0, !dbg !102
  br i1 %35, label %36, label %37, !dbg !103

36:                                               ; preds = %29
  br label %41, !dbg !104

37:                                               ; preds = %29
  br label %38, !dbg !105

38:                                               ; preds = %37
  %39 = load i32, i32* %16, align 4, !dbg !106
  %40 = add nsw i32 %39, 1, !dbg !106
  store i32 %40, i32* %16, align 4, !dbg !106
  br label %26, !dbg !107, !llvm.loop !108

41:                                               ; preds = %36, %26
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 255, !dbg !111
  store i8 0, i8* %42, align 1, !dbg !112
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0, !dbg !113
  store i8* %43, i8** %10, align 8, !dbg !114
  %44 = load i8*, i8** %9, align 8, !dbg !115
  %45 = call i64 @strlen(i8* noundef %44) #8, !dbg !116
  %46 = trunc i64 %45 to i32, !dbg !116
  store i32 %46, i32* %11, align 4, !dbg !117
  %47 = load i8*, i8** %10, align 8, !dbg !118
  %48 = call i64 @strlen(i8* noundef %47) #8, !dbg !119
  %49 = trunc i64 %48 to i32, !dbg !119
  store i32 %49, i32* %12, align 4, !dbg !120
  %50 = load i32, i32* %11, align 4, !dbg !121
  %51 = icmp sge i32 %50, 0, !dbg !121
  br i1 %51, label %52, label %69, !dbg !121

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4, !dbg !121
  %54 = icmp sge i32 %53, 0, !dbg !121
  br i1 %54, label %55, label %69, !dbg !121

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4, !dbg !121
  %57 = add nsw i32 %56, 1, !dbg !121
  %58 = load i32, i32* %12, align 4, !dbg !121
  %59 = add nsw i32 %57, %58, !dbg !121
  %60 = sext i32 %59 to i64, !dbg !121
  %61 = load i32, i32* %12, align 4, !dbg !121
  %62 = load i32, i32* %11, align 4, !dbg !121
  %63 = add nsw i32 %61, %62, !dbg !121
  %64 = add nsw i32 %63, 2, !dbg !121
  %65 = sext i32 %64 to i64, !dbg !121
  %66 = icmp ule i64 %60, %65, !dbg !121
  br i1 %66, label %67, label %69, !dbg !121

67:                                               ; preds = %55
  br i1 true, label %68, label %69, !dbg !121

68:                                               ; preds = %67
  br label %71, !dbg !121

69:                                               ; preds = %67, %55, %52, %41
  %70 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !121
  br label %71, !dbg !121

71:                                               ; preds = %69, %68
  %72 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !122
  %73 = load i32, i32* %12, align 4, !dbg !123
  %74 = load i32, i32* %11, align 4, !dbg !124
  %75 = add nsw i32 %73, %74, !dbg !125
  %76 = add nsw i32 %75, 2, !dbg !126
  %77 = sext i32 %76 to i64, !dbg !123
  %78 = call i8* @xmlMallocAtomic(i64 noundef %77), !dbg !127
  store i8* %78, i8** %13, align 8, !dbg !128
  %79 = load i8*, i8** %13, align 8, !dbg !129
  %80 = icmp eq i8* %79, null, !dbg !131
  br i1 %80, label %81, label %82, !dbg !132

81:                                               ; preds = %71
  br label %110, !dbg !133

82:                                               ; preds = %71
  %83 = load i8*, i8** %13, align 8, !dbg !135
  %84 = getelementptr inbounds i8, i8* %83, i64 0, !dbg !135
  %85 = load i8*, i8** %9, align 8, !dbg !136
  %86 = load i32, i32* %11, align 4, !dbg !137
  %87 = sext i32 %86 to i64, !dbg !137
  %88 = call i8* @memcpy(i8* %84, i8* %85, i64 %87), !dbg !138
  %89 = load i8*, i8** %13, align 8, !dbg !139
  %90 = load i32, i32* %11, align 4, !dbg !140
  %91 = sext i32 %90 to i64, !dbg !139
  %92 = getelementptr inbounds i8, i8* %89, i64 %91, !dbg !139
  store i8 124, i8* %92, align 1, !dbg !141
  %93 = load i8*, i8** %13, align 8, !dbg !142
  %94 = load i32, i32* %11, align 4, !dbg !143
  %95 = add nsw i32 %94, 1, !dbg !144
  %96 = sext i32 %95 to i64, !dbg !142
  %97 = getelementptr inbounds i8, i8* %93, i64 %96, !dbg !142
  %98 = load i8*, i8** %10, align 8, !dbg !145
  %99 = load i32, i32* %12, align 4, !dbg !146
  %100 = sext i32 %99 to i64, !dbg !146
  %101 = call i8* @memcpy(i8* %97, i8* %98, i64 %100), !dbg !147
  %102 = load i8*, i8** %13, align 8, !dbg !148
  %103 = load i32, i32* %12, align 4, !dbg !149
  %104 = load i32, i32* %11, align 4, !dbg !150
  %105 = add nsw i32 %103, %104, !dbg !151
  %106 = add nsw i32 %105, 1, !dbg !152
  %107 = sext i32 %106 to i64, !dbg !148
  %108 = getelementptr inbounds i8, i8* %102, i64 %107, !dbg !148
  store i8 0, i8* %108, align 1, !dbg !153
  %109 = load i8*, i8** %13, align 8, !dbg !154
  call void @xmlFree(i8* noundef %109), !dbg !155
  br label %110, !dbg !156

110:                                              ; preds = %82, %81
  ret void, !dbg !156
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !157 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = load i64, i64* %2, align 8, !dbg !162
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !163
  ret i8* %4, !dbg !164
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFree(i8* noundef %0) #0 !dbg !165 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !168, metadata !DIExpression()), !dbg !169
  %3 = load i8*, i8** %2, align 8, !dbg !170
  call void @free(i8* noundef %3) #9, !dbg !171
  ret void, !dbg !172
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !173 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !185, metadata !DIExpression()), !dbg !186
  %9 = load i8*, i8** %4, align 8, !dbg !187
  store i8* %9, i8** %7, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %8, metadata !188, metadata !DIExpression()), !dbg !191
  %10 = load i8*, i8** %5, align 8, !dbg !192
  store i8* %10, i8** %8, align 8, !dbg !191
  br label %11, !dbg !193

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !194
  %13 = add i64 %12, -1, !dbg !194
  store i64 %13, i64* %6, align 8, !dbg !194
  %14 = icmp ugt i64 %12, 0, !dbg !195
  br i1 %14, label %15, label %21, !dbg !193

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !196
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !196
  store i8* %17, i8** %8, align 8, !dbg !196
  %18 = load i8, i8* %16, align 1, !dbg !197
  %19 = load i8*, i8** %7, align 8, !dbg !198
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !198
  store i8* %20, i8** %7, align 8, !dbg !198
  store i8 %18, i8* %19, align 1, !dbg !199
  br label %11, !dbg !193, !llvm.loop !200

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !201
  ret i8* %22, !dbg !202
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/201_xmlregexp.c_5862_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "905e398c4b5da418e2c45d9f8728ae2a")
!2 = !{!3, !6, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 46, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!10 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 98, type: !23, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!25}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{}
!27 = !DILocalVariable(name: "from", scope: !22, file: !1, line: 100, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegStatePtr", file: !1, line: 22, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegState", file: !1, line: 21, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegState", file: !1, line: 21, flags: DIFlagFwdDecl)
!32 = !DILocation(line: 100, column: 20, scope: !22)
!33 = !DILocalVariable(name: "to", scope: !22, file: !1, line: 101, type: !28)
!34 = !DILocation(line: 101, column: 20, scope: !22)
!35 = !DILocalVariable(name: "atom", scope: !22, file: !1, line: 102, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtomPtr", file: !1, line: 18, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 17, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 17, flags: DIFlagFwdDecl)
!40 = !DILocation(line: 102, column: 19, scope: !22)
!41 = !DILocalVariable(name: "counter", scope: !22, file: !1, line: 103, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegCounterPtr", file: !1, line: 26, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegCounter", file: !1, line: 25, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegCounter", file: !1, line: 25, flags: DIFlagFwdDecl)
!46 = !DILocation(line: 103, column: 22, scope: !22)
!47 = !DILocation(line: 106, column: 30, scope: !22)
!48 = !DILocation(line: 106, column: 36, scope: !22)
!49 = !DILocation(line: 106, column: 40, scope: !22)
!50 = !DILocation(line: 106, column: 46, scope: !22)
!51 = !DILocation(line: 106, column: 5, scope: !22)
!52 = !DILocation(line: 108, column: 5, scope: !22)
!53 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 43, type: !54, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !28, !28, !36, !42}
!56 = !DILocalVariable(name: "from", arg: 1, scope: !53, file: !1, line: 43, type: !28)
!57 = !DILocation(line: 43, column: 53, scope: !53)
!58 = !DILocalVariable(name: "to", arg: 2, scope: !53, file: !1, line: 43, type: !28)
!59 = !DILocation(line: 43, column: 74, scope: !53)
!60 = !DILocalVariable(name: "atom", arg: 3, scope: !53, file: !1, line: 44, type: !36)
!61 = !DILocation(line: 44, column: 52, scope: !53)
!62 = !DILocalVariable(name: "counter", arg: 4, scope: !53, file: !1, line: 44, type: !42)
!63 = !DILocation(line: 44, column: 75, scope: !53)
!64 = !DILocalVariable(name: "token", scope: !53, file: !1, line: 46, type: !3)
!65 = !DILocation(line: 46, column: 14, scope: !53)
!66 = !DILocalVariable(name: "token2", scope: !53, file: !1, line: 47, type: !3)
!67 = !DILocation(line: 47, column: 14, scope: !53)
!68 = !DILocalVariable(name: "lenp", scope: !53, file: !1, line: 48, type: !25)
!69 = !DILocation(line: 48, column: 9, scope: !53)
!70 = !DILocalVariable(name: "lenn", scope: !53, file: !1, line: 49, type: !25)
!71 = !DILocation(line: 49, column: 9, scope: !53)
!72 = !DILocalVariable(name: "str", scope: !53, file: !1, line: 50, type: !3)
!73 = !DILocation(line: 50, column: 14, scope: !53)
!74 = !DILocalVariable(name: "token_buf", scope: !53, file: !1, line: 53, type: !75)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 256)
!78 = !DILocation(line: 53, column: 10, scope: !53)
!79 = !DILocation(line: 54, column: 24, scope: !53)
!80 = !DILocation(line: 54, column: 5, scope: !53)
!81 = !DILocation(line: 56, column: 17, scope: !53)
!82 = !DILocation(line: 56, column: 32, scope: !53)
!83 = !DILocation(line: 56, column: 5, scope: !53)
!84 = !DILocation(line: 57, column: 24, scope: !53)
!85 = !DILocation(line: 57, column: 11, scope: !53)
!86 = !DILocalVariable(name: "token2_buf", scope: !53, file: !1, line: 60, type: !75)
!87 = !DILocation(line: 60, column: 10, scope: !53)
!88 = !DILocation(line: 61, column: 24, scope: !53)
!89 = !DILocation(line: 61, column: 5, scope: !53)
!90 = !DILocalVariable(name: "i", scope: !91, file: !1, line: 63, type: !25)
!91 = distinct !DILexicalBlock(scope: !53, file: !1, line: 63, column: 5)
!92 = !DILocation(line: 63, column: 14, scope: !91)
!93 = !DILocation(line: 63, column: 10, scope: !91)
!94 = !DILocation(line: 63, column: 21, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 63, column: 5)
!96 = !DILocation(line: 63, column: 23, scope: !95)
!97 = !DILocation(line: 63, column: 5, scope: !91)
!98 = !DILocation(line: 64, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 64, column: 13)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 63, column: 35)
!101 = !DILocation(line: 64, column: 13, scope: !99)
!102 = !DILocation(line: 64, column: 27, scope: !99)
!103 = !DILocation(line: 64, column: 13, scope: !100)
!104 = !DILocation(line: 64, column: 36, scope: !99)
!105 = !DILocation(line: 65, column: 5, scope: !100)
!106 = !DILocation(line: 63, column: 31, scope: !95)
!107 = !DILocation(line: 63, column: 5, scope: !95)
!108 = distinct !{!108, !97, !109, !110}
!109 = !DILocation(line: 65, column: 5, scope: !91)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 66, column: 5, scope: !53)
!112 = !DILocation(line: 66, column: 21, scope: !53)
!113 = !DILocation(line: 67, column: 25, scope: !53)
!114 = !DILocation(line: 67, column: 12, scope: !53)
!115 = !DILocation(line: 70, column: 27, scope: !53)
!116 = !DILocation(line: 70, column: 12, scope: !53)
!117 = !DILocation(line: 70, column: 10, scope: !53)
!118 = !DILocation(line: 71, column: 27, scope: !53)
!119 = !DILocation(line: 71, column: 12, scope: !53)
!120 = !DILocation(line: 71, column: 10, scope: !53)
!121 = !DILocation(line: 78, column: 5, scope: !53)
!122 = !DILocation(line: 81, column: 5, scope: !53)
!123 = !DILocation(line: 84, column: 38, scope: !53)
!124 = !DILocation(line: 84, column: 45, scope: !53)
!125 = !DILocation(line: 84, column: 43, scope: !53)
!126 = !DILocation(line: 84, column: 50, scope: !53)
!127 = !DILocation(line: 84, column: 22, scope: !53)
!128 = !DILocation(line: 84, column: 9, scope: !53)
!129 = !DILocation(line: 85, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !53, file: !1, line: 85, column: 9)
!131 = !DILocation(line: 85, column: 13, scope: !130)
!132 = !DILocation(line: 85, column: 9, scope: !53)
!133 = !DILocation(line: 86, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 85, column: 22)
!135 = !DILocation(line: 88, column: 13, scope: !53)
!136 = !DILocation(line: 88, column: 21, scope: !53)
!137 = !DILocation(line: 88, column: 28, scope: !53)
!138 = !DILocation(line: 88, column: 5, scope: !53)
!139 = !DILocation(line: 89, column: 5, scope: !53)
!140 = !DILocation(line: 89, column: 9, scope: !53)
!141 = !DILocation(line: 89, column: 15, scope: !53)
!142 = !DILocation(line: 90, column: 13, scope: !53)
!143 = !DILocation(line: 90, column: 17, scope: !53)
!144 = !DILocation(line: 90, column: 22, scope: !53)
!145 = !DILocation(line: 90, column: 28, scope: !53)
!146 = !DILocation(line: 90, column: 36, scope: !53)
!147 = !DILocation(line: 90, column: 5, scope: !53)
!148 = !DILocation(line: 91, column: 5, scope: !53)
!149 = !DILocation(line: 91, column: 9, scope: !53)
!150 = !DILocation(line: 91, column: 16, scope: !53)
!151 = !DILocation(line: 91, column: 14, scope: !53)
!152 = !DILocation(line: 91, column: 21, scope: !53)
!153 = !DILocation(line: 91, column: 26, scope: !53)
!154 = !DILocation(line: 94, column: 13, scope: !53)
!155 = !DILocation(line: 94, column: 5, scope: !53)
!156 = !DILocation(line: 95, column: 1, scope: !53)
!157 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 29, type: !158, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!158 = !DISubroutineType(types: !159)
!159 = !{!11, !8}
!160 = !DILocalVariable(name: "size", arg: 1, scope: !157, file: !1, line: 29, type: !8)
!161 = !DILocation(line: 29, column: 37, scope: !157)
!162 = !DILocation(line: 30, column: 19, scope: !157)
!163 = !DILocation(line: 30, column: 12, scope: !157)
!164 = !DILocation(line: 30, column: 5, scope: !157)
!165 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 34, type: !166, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !26)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !11}
!168 = !DILocalVariable(name: "ptr", arg: 1, scope: !165, file: !1, line: 34, type: !11)
!169 = !DILocation(line: 34, column: 27, scope: !165)
!170 = !DILocation(line: 35, column: 10, scope: !165)
!171 = !DILocation(line: 35, column: 5, scope: !165)
!172 = !DILocation(line: 36, column: 1, scope: !165)
!173 = distinct !DISubprogram(name: "memcpy", scope: !174, file: !174, line: 12, type: !175, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !26)
!174 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!175 = !DISubroutineType(types: !176)
!176 = !{!11, !11, !177, !8}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DILocalVariable(name: "destaddr", arg: 1, scope: !173, file: !174, line: 12, type: !11)
!180 = !DILocation(line: 12, column: 20, scope: !173)
!181 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !173, file: !174, line: 12, type: !177)
!182 = !DILocation(line: 12, column: 42, scope: !173)
!183 = !DILocalVariable(name: "len", arg: 3, scope: !173, file: !174, line: 12, type: !8)
!184 = !DILocation(line: 12, column: 58, scope: !173)
!185 = !DILocalVariable(name: "dest", scope: !173, file: !174, line: 13, type: !6)
!186 = !DILocation(line: 13, column: 9, scope: !173)
!187 = !DILocation(line: 13, column: 16, scope: !173)
!188 = !DILocalVariable(name: "src", scope: !173, file: !174, line: 14, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!191 = !DILocation(line: 14, column: 15, scope: !173)
!192 = !DILocation(line: 14, column: 21, scope: !173)
!193 = !DILocation(line: 16, column: 3, scope: !173)
!194 = !DILocation(line: 16, column: 13, scope: !173)
!195 = !DILocation(line: 16, column: 16, scope: !173)
!196 = !DILocation(line: 17, column: 19, scope: !173)
!197 = !DILocation(line: 17, column: 15, scope: !173)
!198 = !DILocation(line: 17, column: 10, scope: !173)
!199 = !DILocation(line: 17, column: 13, scope: !173)
!200 = distinct !{!200, !193, !196, !110}
!201 = !DILocation(line: 18, column: 10, scope: !173)
!202 = !DILocation(line: 18, column: 3, scope: !173)
