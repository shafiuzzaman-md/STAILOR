; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/079_parser.c_11212_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/079_parser.c_11212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlParserInput*, i64 }
%struct._xmlParserInput = type { i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"(cur <= ctxt->input->end) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/079_parser.c_11212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParserNsLookup = private unnamed_addr constant [53 x i8] c"int xmlParserNsLookup(xmlParserCtxt *, const char *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"start_offset\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"end_offset\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"checkIndex\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlParserNsLookup(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %7, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 62, i32* %7, align 4, !dbg !40
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !41
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %9, i32 0, i32 1, !dbg !43
  %11 = load i64, i64* %10, align 8, !dbg !43
  %12 = icmp eq i64 %11, 0, !dbg !44
  br i1 %12, label %13, label %20, !dbg !45

13:                                               ; preds = %2
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !46
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !48
  %16 = load %struct._xmlParserInput*, %struct._xmlParserInput** %15, align 8, !dbg !48
  %17 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %16, i32 0, i32 0, !dbg !49
  %18 = load i8*, i8** %17, align 8, !dbg !49
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !50
  store i8* %19, i8** %6, align 8, !dbg !51
  br label %30, !dbg !52

20:                                               ; preds = %2
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !53
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 0, !dbg !55
  %23 = load %struct._xmlParserInput*, %struct._xmlParserInput** %22, align 8, !dbg !55
  %24 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %23, i32 0, i32 0, !dbg !56
  %25 = load i8*, i8** %24, align 8, !dbg !56
  %26 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !57
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %26, i32 0, i32 1, !dbg !58
  %28 = load i64, i64* %27, align 8, !dbg !58
  %29 = getelementptr inbounds i8, i8* %25, i64 %28, !dbg !59
  store i8* %29, i8** %6, align 8, !dbg !60
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i8*, i8** %6, align 8, !dbg !61
  %32 = load i32, i32* %7, align 4, !dbg !63
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !64
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !65
  %35 = load %struct._xmlParserInput*, %struct._xmlParserInput** %34, align 8, !dbg !65
  %36 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %35, i32 0, i32 1, !dbg !66
  %37 = load i8*, i8** %36, align 8, !dbg !66
  %38 = load i8*, i8** %6, align 8, !dbg !67
  %39 = ptrtoint i8* %37 to i64, !dbg !68
  %40 = ptrtoint i8* %38 to i64, !dbg !68
  %41 = sub i64 %39, %40, !dbg !68
  %42 = call i8* @memchr(i8* noundef %31, i32 noundef %32, i64 noundef %41) #6, !dbg !69
  %43 = icmp eq i8* %42, null, !dbg !70
  br i1 %43, label %44, label %77, !dbg !71

44:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata i64* %8, metadata !72, metadata !DIExpression()), !dbg !77
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !78
  %46 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %45, i32 0, i32 0, !dbg !79
  %47 = load %struct._xmlParserInput*, %struct._xmlParserInput** %46, align 8, !dbg !79
  %48 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %47, i32 0, i32 1, !dbg !80
  %49 = load i8*, i8** %48, align 8, !dbg !80
  %50 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !81
  %51 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %50, i32 0, i32 0, !dbg !82
  %52 = load %struct._xmlParserInput*, %struct._xmlParserInput** %51, align 8, !dbg !82
  %53 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %52, i32 0, i32 0, !dbg !83
  %54 = load i8*, i8** %53, align 8, !dbg !83
  %55 = ptrtoint i8* %49 to i64, !dbg !84
  %56 = ptrtoint i8* %54 to i64, !dbg !84
  %57 = sub i64 %55, %56, !dbg !84
  store i64 %57, i64* %8, align 8, !dbg !77
  %58 = load i64, i64* %8, align 8, !dbg !85
  %59 = icmp ugt i64 %58, 9223372036854775807, !dbg !87
  br i1 %59, label %60, label %63, !dbg !88

60:                                               ; preds = %44
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !89
  %62 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %61, i32 0, i32 1, !dbg !91
  store i64 0, i64* %62, align 8, !dbg !92
  store i32 1, i32* %3, align 4, !dbg !93
  br label %78, !dbg !93

63:                                               ; preds = %44
  %64 = load i8*, i8** %6, align 8, !dbg !94
  %65 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !94
  %66 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %65, i32 0, i32 0, !dbg !94
  %67 = load %struct._xmlParserInput*, %struct._xmlParserInput** %66, align 8, !dbg !94
  %68 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %67, i32 0, i32 1, !dbg !94
  %69 = load i8*, i8** %68, align 8, !dbg !94
  %70 = icmp ule i8* %64, %69, !dbg !94
  br i1 %70, label %71, label %73, !dbg !94

71:                                               ; preds = %63
  br i1 true, label %72, label %73, !dbg !94

72:                                               ; preds = %71
  br label %75, !dbg !94

73:                                               ; preds = %71, %63
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !94
  br label %75, !dbg !94

75:                                               ; preds = %73, %72
  %76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__.xmlParserNsLookup, i64 0, i64 0)), !dbg !95
  br label %77, !dbg !96

77:                                               ; preds = %75, %30
  store i32 0, i32* %3, align 4, !dbg !97
  br label %78, !dbg !97

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %3, align 4, !dbg !98
  ret i32 %79, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlParserInput*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !102, metadata !DIExpression()), !dbg !103
  %8 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !104
  %9 = bitcast i8* %8 to %struct._xmlParserCtxt*, !dbg !105
  store %struct._xmlParserCtxt* %9, %struct._xmlParserCtxt** %2, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata %struct._xmlParserInput** %3, metadata !106, metadata !DIExpression()), !dbg !107
  %10 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !108
  %11 = bitcast i8* %10 to %struct._xmlParserInput*, !dbg !109
  store %struct._xmlParserInput* %11, %struct._xmlParserInput** %3, align 8, !dbg !107
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !110
  %13 = icmp ne %struct._xmlParserCtxt* %12, null, !dbg !110
  br i1 %13, label %14, label %17, !dbg !112

14:                                               ; preds = %0
  %15 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !113
  %16 = icmp ne %struct._xmlParserInput* %15, null, !dbg !113
  br i1 %16, label %18, label %17, !dbg !114

17:                                               ; preds = %14, %0
  store i32 1, i32* %1, align 4, !dbg !115
  br label %64, !dbg !115

18:                                               ; preds = %14
  %19 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !117
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !118
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !119
  store %struct._xmlParserInput* %19, %struct._xmlParserInput** %21, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !121, metadata !DIExpression()), !dbg !125
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !126
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !127
  call void @llvm.dbg.declare(metadata i64* %5, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i64* %6, metadata !130, metadata !DIExpression()), !dbg !131
  %23 = bitcast i64* %5 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !133
  %24 = bitcast i64* %6 to i8*, !dbg !134
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !135
  %25 = load i64, i64* %5, align 8, !dbg !136
  %26 = icmp ult i64 %25, 256, !dbg !137
  %27 = zext i1 %26 to i32, !dbg !137
  %28 = sext i32 %27 to i64, !dbg !136
  call void @klee_assume(i64 noundef %28), !dbg !138
  %29 = load i64, i64* %6, align 8, !dbg !139
  %30 = icmp ult i64 %29, 256, !dbg !140
  %31 = zext i1 %30 to i32, !dbg !140
  %32 = sext i32 %31 to i64, !dbg !139
  call void @klee_assume(i64 noundef %32), !dbg !141
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !142
  %34 = load i64, i64* %5, align 8, !dbg !143
  %35 = getelementptr inbounds i8, i8* %33, i64 %34, !dbg !144
  %36 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !145
  %37 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %36, i32 0, i32 0, !dbg !146
  store i8* %35, i8** %37, align 8, !dbg !147
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !148
  %39 = load i64, i64* %6, align 8, !dbg !149
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !150
  %41 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !151
  %42 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %41, i32 0, i32 1, !dbg !152
  store i8* %40, i8** %42, align 8, !dbg !153
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !154
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %43, i32 0, i32 1, !dbg !155
  %45 = bitcast i64* %44 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)), !dbg !157
  %46 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !158
  %47 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %46, i32 0, i32 1, !dbg !159
  %48 = load i64, i64* %47, align 8, !dbg !159
  %49 = icmp sge i64 %48, 0, !dbg !160
  %50 = zext i1 %49 to i32, !dbg !160
  %51 = sext i32 %50 to i64, !dbg !158
  call void @klee_assume(i64 noundef %51), !dbg !161
  %52 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !162
  %53 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %52, i32 0, i32 1, !dbg !163
  %54 = load i64, i64* %53, align 8, !dbg !163
  %55 = icmp slt i64 %54, 1000, !dbg !164
  %56 = zext i1 %55 to i32, !dbg !164
  %57 = sext i32 %56 to i64, !dbg !162
  call void @klee_assume(i64 noundef %57), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %7, metadata !166, metadata !DIExpression()), !dbg !167
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !168
  %59 = call i32 @xmlParserNsLookup(%struct._xmlParserCtxt* noundef %58, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !169
  store i32 %59, i32* %7, align 4, !dbg !167
  %60 = load %struct._xmlParserInput*, %struct._xmlParserInput** %3, align 8, !dbg !170
  %61 = bitcast %struct._xmlParserInput* %60 to i8*, !dbg !170
  call void @free(i8* noundef %61) #7, !dbg !171
  %62 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !172
  %63 = bitcast %struct._xmlParserCtxt* %62 to i8*, !dbg !172
  call void @free(i8* noundef %63) #7, !dbg !173
  store i32 0, i32* %1, align 4, !dbg !174
  br label %64, !dbg !174

64:                                               ; preds = %18, %17
  %65 = load i32, i32* %1, align 4, !dbg !175
  ret i32 %65, !dbg !175
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/079_parser.c_11212_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "24c2f5b823372534140fd586bd9b1f88")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 19, size: 128, elements: !7)
!7 = !{!8, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !6, file: !1, line: 20, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 11, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 14, size: 128, elements: !12)
!12 = !{!13, !17}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !11, file: !1, line: 15, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !11, file: !1, line: 16, baseType: !14, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !6, file: !1, line: 21, baseType: !19, size: 64, offset: 64)
!19 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlParserNsLookup", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !4, !14}
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !28, file: !1, line: 25, type: !4)
!34 = !DILocation(line: 25, column: 38, scope: !28)
!35 = !DILocalVariable(name: "prefix", arg: 2, scope: !28, file: !1, line: 25, type: !14)
!36 = !DILocation(line: 25, column: 56, scope: !28)
!37 = !DILocalVariable(name: "cur", scope: !28, file: !1, line: 27, type: !14)
!38 = !DILocation(line: 27, column: 17, scope: !28)
!39 = !DILocalVariable(name: "c", scope: !28, file: !1, line: 28, type: !31)
!40 = !DILocation(line: 28, column: 9, scope: !28)
!41 = !DILocation(line: 30, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 30, column: 9)
!43 = !DILocation(line: 30, column: 15, scope: !42)
!44 = !DILocation(line: 30, column: 26, scope: !42)
!45 = !DILocation(line: 30, column: 9, scope: !28)
!46 = !DILocation(line: 31, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 30, column: 32)
!48 = !DILocation(line: 31, column: 21, scope: !47)
!49 = !DILocation(line: 31, column: 28, scope: !47)
!50 = !DILocation(line: 31, column: 32, scope: !47)
!51 = !DILocation(line: 31, column: 13, scope: !47)
!52 = !DILocation(line: 32, column: 5, scope: !47)
!53 = !DILocation(line: 33, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 32, column: 12)
!55 = !DILocation(line: 33, column: 21, scope: !54)
!56 = !DILocation(line: 33, column: 28, scope: !54)
!57 = !DILocation(line: 33, column: 34, scope: !54)
!58 = !DILocation(line: 33, column: 40, scope: !54)
!59 = !DILocation(line: 33, column: 32, scope: !54)
!60 = !DILocation(line: 33, column: 13, scope: !54)
!61 = !DILocation(line: 37, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !28, file: !1, line: 37, column: 9)
!63 = !DILocation(line: 37, column: 21, scope: !62)
!64 = !DILocation(line: 37, column: 24, scope: !62)
!65 = !DILocation(line: 37, column: 30, scope: !62)
!66 = !DILocation(line: 37, column: 37, scope: !62)
!67 = !DILocation(line: 37, column: 43, scope: !62)
!68 = !DILocation(line: 37, column: 41, scope: !62)
!69 = !DILocation(line: 37, column: 9, scope: !62)
!70 = !DILocation(line: 37, column: 48, scope: !62)
!71 = !DILocation(line: 37, column: 9, scope: !28)
!72 = !DILocalVariable(name: "index", scope: !73, file: !1, line: 38, type: !74)
!73 = distinct !DILexicalBlock(scope: !62, file: !1, line: 37, column: 57)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 38, column: 16, scope: !73)
!78 = !DILocation(line: 38, column: 24, scope: !73)
!79 = !DILocation(line: 38, column: 30, scope: !73)
!80 = !DILocation(line: 38, column: 37, scope: !73)
!81 = !DILocation(line: 38, column: 43, scope: !73)
!82 = !DILocation(line: 38, column: 49, scope: !73)
!83 = !DILocation(line: 38, column: 56, scope: !73)
!84 = !DILocation(line: 38, column: 41, scope: !73)
!85 = !DILocation(line: 40, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !73, file: !1, line: 40, column: 13)
!87 = !DILocation(line: 40, column: 19, scope: !86)
!88 = !DILocation(line: 40, column: 13, scope: !73)
!89 = !DILocation(line: 41, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 40, column: 31)
!91 = !DILocation(line: 41, column: 19, scope: !90)
!92 = !DILocation(line: 41, column: 30, scope: !90)
!93 = !DILocation(line: 42, column: 13, scope: !90)
!94 = !DILocation(line: 48, column: 9, scope: !73)
!95 = !DILocation(line: 51, column: 9, scope: !73)
!96 = !DILocation(line: 52, column: 5, scope: !73)
!97 = !DILocation(line: 54, column: 5, scope: !28)
!98 = !DILocation(line: 55, column: 1, scope: !28)
!99 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 57, type: !100, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!100 = !DISubroutineType(types: !101)
!101 = !{!31}
!102 = !DILocalVariable(name: "ctxt", scope: !99, file: !1, line: 59, type: !4)
!103 = !DILocation(line: 59, column: 20, scope: !99)
!104 = !DILocation(line: 59, column: 44, scope: !99)
!105 = !DILocation(line: 59, column: 27, scope: !99)
!106 = !DILocalVariable(name: "input", scope: !99, file: !1, line: 60, type: !9)
!107 = !DILocation(line: 60, column: 21, scope: !99)
!108 = !DILocation(line: 60, column: 47, scope: !99)
!109 = !DILocation(line: 60, column: 29, scope: !99)
!110 = !DILocation(line: 62, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !99, file: !1, line: 62, column: 9)
!112 = !DILocation(line: 62, column: 15, scope: !111)
!113 = !DILocation(line: 62, column: 19, scope: !111)
!114 = !DILocation(line: 62, column: 9, scope: !99)
!115 = !DILocation(line: 63, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 62, column: 26)
!117 = !DILocation(line: 66, column: 19, scope: !99)
!118 = !DILocation(line: 66, column: 5, scope: !99)
!119 = !DILocation(line: 66, column: 11, scope: !99)
!120 = !DILocation(line: 66, column: 17, scope: !99)
!121 = !DILocalVariable(name: "buffer", scope: !99, file: !1, line: 69, type: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 256)
!125 = !DILocation(line: 69, column: 10, scope: !99)
!126 = !DILocation(line: 70, column: 24, scope: !99)
!127 = !DILocation(line: 70, column: 5, scope: !99)
!128 = !DILocalVariable(name: "start_offset", scope: !99, file: !1, line: 73, type: !74)
!129 = !DILocation(line: 73, column: 12, scope: !99)
!130 = !DILocalVariable(name: "end_offset", scope: !99, file: !1, line: 73, type: !74)
!131 = !DILocation(line: 73, column: 26, scope: !99)
!132 = !DILocation(line: 74, column: 24, scope: !99)
!133 = !DILocation(line: 74, column: 5, scope: !99)
!134 = !DILocation(line: 75, column: 24, scope: !99)
!135 = !DILocation(line: 75, column: 5, scope: !99)
!136 = !DILocation(line: 78, column: 17, scope: !99)
!137 = !DILocation(line: 78, column: 30, scope: !99)
!138 = !DILocation(line: 78, column: 5, scope: !99)
!139 = !DILocation(line: 79, column: 17, scope: !99)
!140 = !DILocation(line: 79, column: 28, scope: !99)
!141 = !DILocation(line: 79, column: 5, scope: !99)
!142 = !DILocation(line: 82, column: 18, scope: !99)
!143 = !DILocation(line: 82, column: 27, scope: !99)
!144 = !DILocation(line: 82, column: 25, scope: !99)
!145 = !DILocation(line: 82, column: 5, scope: !99)
!146 = !DILocation(line: 82, column: 12, scope: !99)
!147 = !DILocation(line: 82, column: 16, scope: !99)
!148 = !DILocation(line: 83, column: 18, scope: !99)
!149 = !DILocation(line: 83, column: 27, scope: !99)
!150 = !DILocation(line: 83, column: 25, scope: !99)
!151 = !DILocation(line: 83, column: 5, scope: !99)
!152 = !DILocation(line: 83, column: 12, scope: !99)
!153 = !DILocation(line: 83, column: 16, scope: !99)
!154 = !DILocation(line: 86, column: 25, scope: !99)
!155 = !DILocation(line: 86, column: 31, scope: !99)
!156 = !DILocation(line: 86, column: 24, scope: !99)
!157 = !DILocation(line: 86, column: 5, scope: !99)
!158 = !DILocation(line: 89, column: 17, scope: !99)
!159 = !DILocation(line: 89, column: 23, scope: !99)
!160 = !DILocation(line: 89, column: 34, scope: !99)
!161 = !DILocation(line: 89, column: 5, scope: !99)
!162 = !DILocation(line: 90, column: 17, scope: !99)
!163 = !DILocation(line: 90, column: 23, scope: !99)
!164 = !DILocation(line: 90, column: 34, scope: !99)
!165 = !DILocation(line: 90, column: 5, scope: !99)
!166 = !DILocalVariable(name: "result", scope: !99, file: !1, line: 93, type: !31)
!167 = !DILocation(line: 93, column: 9, scope: !99)
!168 = !DILocation(line: 93, column: 36, scope: !99)
!169 = !DILocation(line: 93, column: 18, scope: !99)
!170 = !DILocation(line: 96, column: 10, scope: !99)
!171 = !DILocation(line: 96, column: 5, scope: !99)
!172 = !DILocation(line: 97, column: 10, scope: !99)
!173 = !DILocation(line: 97, column: 5, scope: !99)
!174 = !DILocation(line: 99, column: 5, scope: !99)
!175 = !DILocation(line: 100, column: 1, scope: !99)
