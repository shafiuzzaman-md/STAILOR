; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@xmlParseURI.uri_str = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"uri_str\00", align 1
@xmlParseURI.vptr_buf = internal global [256 x i8] zeroinitializer, align 16, !dbg !29
@xmlParseURI.uptr_buf = internal global [256 x i8] zeroinitializer, align 16, !dbg !34
@.str.1 = private unnamed_addr constant [9 x i8] c"vptr_buf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"uptr_buf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"(len <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseURI = private unnamed_addr constant [34 x i8] c"xmlURI *xmlParseURI(const char *)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@main.input_uri = internal global [256 x i8] zeroinitializer, align 16, !dbg !36
@.str.8 = private unnamed_addr constant [10 x i8] c"input_uri\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlURI* @xmlParseURI(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca %struct._xmlURI*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlURI*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !52, metadata !DIExpression()), !dbg !53
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.uri_str, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !54
  %8 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.uri_str, i64 0, i64 255), align 1, !dbg !55
  %9 = sext i8 %8 to i32, !dbg !55
  %10 = icmp eq i32 %9, 0, !dbg !56
  %11 = zext i1 %10 to i32, !dbg !56
  %12 = sext i32 %11 to i64, !dbg !55
  call void @klee_assume(i64 noundef %12), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %4, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = call noalias i8* @malloc(i64 noundef 88) #7, !dbg !60
  %14 = bitcast i8* %13 to %struct._xmlURI*, !dbg !61
  store %struct._xmlURI* %14, %struct._xmlURI** %4, align 8, !dbg !59
  %15 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !62
  %16 = icmp ne %struct._xmlURI* %15, null, !dbg !62
  br i1 %16, label %18, label %17, !dbg !64

17:                                               ; preds = %1
  store %struct._xmlURI* null, %struct._xmlURI** %2, align 8, !dbg !65
  br label %91, !dbg !65

18:                                               ; preds = %1
  %19 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !66
  %20 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %19, i32 0, i32 0, !dbg !67
  store i8* null, i8** %20, align 8, !dbg !68
  %21 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !69
  %22 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %21, i32 0, i32 1, !dbg !70
  store i8* null, i8** %22, align 8, !dbg !71
  %23 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !72
  %24 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %23, i32 0, i32 2, !dbg !73
  store i8* null, i8** %24, align 8, !dbg !74
  %25 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !75
  %26 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %25, i32 0, i32 3, !dbg !76
  store i8* null, i8** %26, align 8, !dbg !77
  %27 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !78
  %28 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %27, i32 0, i32 4, !dbg !79
  store i8* null, i8** %28, align 8, !dbg !80
  %29 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !81
  %30 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %29, i32 0, i32 5, !dbg !82
  store i32 0, i32* %30, align 8, !dbg !83
  %31 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !84
  %32 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %31, i32 0, i32 6, !dbg !85
  store i8* null, i8** %32, align 8, !dbg !86
  %33 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !87
  %34 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %33, i32 0, i32 7, !dbg !88
  store i8* null, i8** %34, align 8, !dbg !89
  %35 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !90
  %36 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %35, i32 0, i32 8, !dbg !91
  store i8* null, i8** %36, align 8, !dbg !92
  %37 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !93
  %38 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %37, i32 0, i32 9, !dbg !94
  store i32 0, i32* %38, align 8, !dbg !95
  %39 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !96
  %40 = getelementptr inbounds %struct._xmlURI, %struct._xmlURI* %39, i32 0, i32 10, !dbg !97
  store i8* null, i8** %40, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %5, metadata !99, metadata !DIExpression()), !dbg !100
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.vptr_buf, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !101
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.uptr_buf, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !102
  %41 = bitcast i32* %5 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !104
  %42 = load i32, i32* %5, align 4, !dbg !105
  %43 = icmp sge i32 %42, 0, !dbg !106
  %44 = zext i1 %43 to i32, !dbg !106
  %45 = sext i32 %44 to i64, !dbg !105
  call void @klee_assume(i64 noundef %45), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %6, metadata !108, metadata !DIExpression()), !dbg !109
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.vptr_buf, i64 0, i64 0), i8** %6, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i8** %7, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlParseURI.uptr_buf, i64 0, i64 0), i8** %7, align 8, !dbg !111
  %46 = load i8*, i8** %6, align 8, !dbg !112
  %47 = icmp ugt i8* %46, null, !dbg !113
  br i1 %47, label %48, label %63, !dbg !114

48:                                               ; preds = %18
  %49 = load i32, i32* %5, align 4, !dbg !115
  %50 = icmp sgt i32 %49, 0, !dbg !116
  br i1 %50, label %51, label %63, !dbg !117

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8, !dbg !118
  %53 = getelementptr inbounds i8, i8* %52, i64 0, !dbg !118
  %54 = load i8, i8* %53, align 1, !dbg !118
  %55 = sext i8 %54 to i32, !dbg !118
  %56 = icmp eq i32 %55, 47, !dbg !119
  br i1 %56, label %57, label %63, !dbg !120

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8, !dbg !121
  %59 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !121
  %60 = load i8, i8* %59, align 1, !dbg !121
  %61 = sext i8 %60 to i32, !dbg !121
  %62 = icmp eq i32 %61, 47, !dbg !122
  br label %63

63:                                               ; preds = %57, %51, %48, %18
  %64 = phi i1 [ false, %51 ], [ false, %48 ], [ false, %18 ], [ %62, %57 ], !dbg !123
  %65 = xor i1 %64, true, !dbg !124
  %66 = zext i1 %65 to i32, !dbg !124
  %67 = sext i32 %66 to i64, !dbg !124
  call void @klee_assume(i64 noundef %67), !dbg !125
  %68 = load i32, i32* %5, align 4, !dbg !126
  %69 = icmp sgt i32 %68, 0, !dbg !127
  %70 = zext i1 %69 to i32, !dbg !127
  %71 = sext i32 %70 to i64, !dbg !126
  call void @klee_assume(i64 noundef %71), !dbg !128
  %72 = load i32, i32* %5, align 4, !dbg !129
  %73 = icmp sle i32 %72, 256, !dbg !129
  br i1 %73, label %74, label %76, !dbg !129

74:                                               ; preds = %63
  br i1 true, label %75, label %76, !dbg !129

75:                                               ; preds = %74
  br label %78, !dbg !129

76:                                               ; preds = %74, %63
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlParseURI, i64 0, i64 0)), !dbg !129
  br label %78, !dbg !129

78:                                               ; preds = %76, %75
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlParseURI, i64 0, i64 0)), !dbg !130
  %80 = load i8*, i8** %6, align 8, !dbg !131
  %81 = load i8*, i8** %7, align 8, !dbg !132
  %82 = load i32, i32* %5, align 4, !dbg !133
  %83 = sext i32 %82 to i64, !dbg !133
  %84 = call i8* @memcpy(i8* %80, i8* %81, i64 %83), !dbg !134
  %85 = load i8*, i8** %6, align 8, !dbg !135
  %86 = load i32, i32* %5, align 4, !dbg !136
  %87 = sub nsw i32 %86, 1, !dbg !137
  %88 = sext i32 %87 to i64, !dbg !135
  %89 = getelementptr inbounds i8, i8* %85, i64 %88, !dbg !135
  store i8 0, i8* %89, align 1, !dbg !138
  %90 = load %struct._xmlURI*, %struct._xmlURI** %4, align 8, !dbg !139
  store %struct._xmlURI* %90, %struct._xmlURI** %2, align 8, !dbg !140
  br label %91, !dbg !140

91:                                               ; preds = %78, %17
  %92 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !141
  ret %struct._xmlURI* %92, !dbg !141
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlURI*, align 8
  store i32 0, i32* %1, align 4
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @main.input_uri, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !dbg !142
  %3 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @main.input_uri, i64 0, i64 255), align 1, !dbg !143
  %4 = sext i8 %3 to i32, !dbg !143
  %5 = icmp eq i32 %4, 0, !dbg !144
  %6 = zext i1 %5 to i32, !dbg !144
  %7 = sext i32 %6 to i64, !dbg !143
  call void @klee_assume(i64 noundef %7), !dbg !145
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %2, metadata !146, metadata !DIExpression()), !dbg !147
  %8 = call %struct._xmlURI* @xmlParseURI(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @main.input_uri, i64 0, i64 0)), !dbg !148
  store %struct._xmlURI* %8, %struct._xmlURI** %2, align 8, !dbg !147
  %9 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !149
  %10 = icmp ne %struct._xmlURI* %9, null, !dbg !149
  br i1 %10, label %11, label %14, !dbg !151

11:                                               ; preds = %0
  %12 = load %struct._xmlURI*, %struct._xmlURI** %2, align 8, !dbg !152
  %13 = bitcast %struct._xmlURI* %12 to i8*, !dbg !152
  call void @free(i8* noundef %13) #7, !dbg !153
  br label %14, !dbg !153

14:                                               ; preds = %11, %0
  ret i32 0, !dbg !154
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !172
  %9 = load i8*, i8** %4, align 8, !dbg !173
  store i8* %9, i8** %7, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i8** %8, metadata !174, metadata !DIExpression()), !dbg !175
  %10 = load i8*, i8** %5, align 8, !dbg !176
  store i8* %10, i8** %8, align 8, !dbg !175
  br label %11, !dbg !177

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !178
  %13 = add i64 %12, -1, !dbg !178
  store i64 %13, i64* %6, align 8, !dbg !178
  %14 = icmp ugt i64 %12, 0, !dbg !179
  br i1 %14, label %15, label %21, !dbg !177

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !180
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !180
  store i8* %17, i8** %8, align 8, !dbg !180
  %18 = load i8, i8* %16, align 1, !dbg !181
  %19 = load i8*, i8** %7, align 8, !dbg !182
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !182
  store i8* %20, i8** %7, align 8, !dbg !182
  store i8 %18, i8* %19, align 1, !dbg !183
  br label %11, !dbg !177, !llvm.loop !184

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !186
  ret i8* %22, !dbg !187
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!26, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "uri_str", scope: !2, file: !3, line: 28, type: !31, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlParseURI", scope: !3, file: !3, line: 26, type: !4, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !41)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "03a2776a155ef993a6b591a02a03aff9")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !24}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !3, line: 11, size: 704, elements: !9)
!9 = !{!10, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !8, file: !3, line: 12, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !8, file: !3, line: 13, baseType: !11, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !8, file: !3, line: 14, baseType: !11, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !8, file: !3, line: 15, baseType: !11, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !8, file: !3, line: 16, baseType: !11, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !8, file: !3, line: 17, baseType: !18, size: 32, offset: 320)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !8, file: !3, line: 18, baseType: !11, size: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !8, file: !3, line: 19, baseType: !11, size: 64, offset: 448)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !8, file: !3, line: 20, baseType: !11, size: 64, offset: 512)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !8, file: !3, line: 21, baseType: !18, size: 32, offset: 576)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !8, file: !3, line: 22, baseType: !11, size: 64, offset: 640)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !27, globals: !28, splitDebugInlining: false, nameTableKind: None)
!27 = !{!6, !11}
!28 = !{!0, !29, !34, !36}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "vptr_buf", scope: !2, file: !3, line: 56, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 256)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "uptr_buf", scope: !2, file: !3, line: 57, type: !31, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "input_uri", scope: !38, file: !3, line: 106, type: !31, isLocal: true, isDefinition: true)
!38 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !39, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!18}
!41 = !{}
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!43 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!44 = !{i32 7, !"Dwarf Version", i32 5}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{i32 7, !"PIC Level", i32 2}
!48 = !{i32 7, !"PIE Level", i32 2}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"Ubuntu clang version 14.0.6"}
!52 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 26, type: !24)
!53 = !DILocation(line: 26, column: 33, scope: !2)
!54 = !DILocation(line: 29, column: 5, scope: !2)
!55 = !DILocation(line: 32, column: 17, scope: !2)
!56 = !DILocation(line: 32, column: 30, scope: !2)
!57 = !DILocation(line: 32, column: 5, scope: !2)
!58 = !DILocalVariable(name: "uri", scope: !2, file: !3, line: 35, type: !6)
!59 = !DILocation(line: 35, column: 13, scope: !2)
!60 = !DILocation(line: 35, column: 29, scope: !2)
!61 = !DILocation(line: 35, column: 19, scope: !2)
!62 = !DILocation(line: 36, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !2, file: !3, line: 36, column: 9)
!64 = !DILocation(line: 36, column: 9, scope: !2)
!65 = !DILocation(line: 36, column: 15, scope: !63)
!66 = !DILocation(line: 39, column: 5, scope: !2)
!67 = !DILocation(line: 39, column: 10, scope: !2)
!68 = !DILocation(line: 39, column: 17, scope: !2)
!69 = !DILocation(line: 40, column: 5, scope: !2)
!70 = !DILocation(line: 40, column: 10, scope: !2)
!71 = !DILocation(line: 40, column: 17, scope: !2)
!72 = !DILocation(line: 41, column: 5, scope: !2)
!73 = !DILocation(line: 41, column: 10, scope: !2)
!74 = !DILocation(line: 41, column: 20, scope: !2)
!75 = !DILocation(line: 42, column: 5, scope: !2)
!76 = !DILocation(line: 42, column: 10, scope: !2)
!77 = !DILocation(line: 42, column: 17, scope: !2)
!78 = !DILocation(line: 43, column: 5, scope: !2)
!79 = !DILocation(line: 43, column: 10, scope: !2)
!80 = !DILocation(line: 43, column: 15, scope: !2)
!81 = !DILocation(line: 44, column: 5, scope: !2)
!82 = !DILocation(line: 44, column: 10, scope: !2)
!83 = !DILocation(line: 44, column: 15, scope: !2)
!84 = !DILocation(line: 45, column: 5, scope: !2)
!85 = !DILocation(line: 45, column: 10, scope: !2)
!86 = !DILocation(line: 45, column: 15, scope: !2)
!87 = !DILocation(line: 46, column: 5, scope: !2)
!88 = !DILocation(line: 46, column: 10, scope: !2)
!89 = !DILocation(line: 46, column: 16, scope: !2)
!90 = !DILocation(line: 47, column: 5, scope: !2)
!91 = !DILocation(line: 47, column: 10, scope: !2)
!92 = !DILocation(line: 47, column: 19, scope: !2)
!93 = !DILocation(line: 48, column: 5, scope: !2)
!94 = !DILocation(line: 48, column: 10, scope: !2)
!95 = !DILocation(line: 48, column: 18, scope: !2)
!96 = !DILocation(line: 49, column: 5, scope: !2)
!97 = !DILocation(line: 49, column: 10, scope: !2)
!98 = !DILocation(line: 49, column: 20, scope: !2)
!99 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 58, type: !18)
!100 = !DILocation(line: 58, column: 9, scope: !2)
!101 = !DILocation(line: 60, column: 5, scope: !2)
!102 = !DILocation(line: 61, column: 5, scope: !2)
!103 = !DILocation(line: 62, column: 24, scope: !2)
!104 = !DILocation(line: 62, column: 5, scope: !2)
!105 = !DILocation(line: 65, column: 17, scope: !2)
!106 = !DILocation(line: 65, column: 21, scope: !2)
!107 = !DILocation(line: 65, column: 5, scope: !2)
!108 = !DILocalVariable(name: "vptr", scope: !2, file: !3, line: 70, type: !11)
!109 = !DILocation(line: 70, column: 11, scope: !2)
!110 = !DILocalVariable(name: "uptr", scope: !2, file: !3, line: 71, type: !11)
!111 = !DILocation(line: 71, column: 11, scope: !2)
!112 = !DILocation(line: 76, column: 19, scope: !2)
!113 = !DILocation(line: 76, column: 24, scope: !2)
!114 = !DILocation(line: 76, column: 35, scope: !2)
!115 = !DILocation(line: 76, column: 38, scope: !2)
!116 = !DILocation(line: 76, column: 42, scope: !2)
!117 = !DILocation(line: 76, column: 46, scope: !2)
!118 = !DILocation(line: 76, column: 49, scope: !2)
!119 = !DILocation(line: 76, column: 57, scope: !2)
!120 = !DILocation(line: 76, column: 64, scope: !2)
!121 = !DILocation(line: 76, column: 67, scope: !2)
!122 = !DILocation(line: 76, column: 76, scope: !2)
!123 = !DILocation(line: 0, scope: !2)
!124 = !DILocation(line: 76, column: 17, scope: !2)
!125 = !DILocation(line: 76, column: 5, scope: !2)
!126 = !DILocation(line: 88, column: 17, scope: !2)
!127 = !DILocation(line: 88, column: 21, scope: !2)
!128 = !DILocation(line: 88, column: 5, scope: !2)
!129 = !DILocation(line: 92, column: 5, scope: !2)
!130 = !DILocation(line: 95, column: 5, scope: !2)
!131 = !DILocation(line: 98, column: 12, scope: !2)
!132 = !DILocation(line: 98, column: 18, scope: !2)
!133 = !DILocation(line: 98, column: 24, scope: !2)
!134 = !DILocation(line: 98, column: 5, scope: !2)
!135 = !DILocation(line: 99, column: 5, scope: !2)
!136 = !DILocation(line: 99, column: 10, scope: !2)
!137 = !DILocation(line: 99, column: 14, scope: !2)
!138 = !DILocation(line: 99, column: 19, scope: !2)
!139 = !DILocation(line: 101, column: 12, scope: !2)
!140 = !DILocation(line: 101, column: 5, scope: !2)
!141 = !DILocation(line: 102, column: 1, scope: !2)
!142 = !DILocation(line: 107, column: 5, scope: !38)
!143 = !DILocation(line: 110, column: 17, scope: !38)
!144 = !DILocation(line: 110, column: 32, scope: !38)
!145 = !DILocation(line: 110, column: 5, scope: !38)
!146 = !DILocalVariable(name: "uri", scope: !38, file: !3, line: 113, type: !6)
!147 = !DILocation(line: 113, column: 13, scope: !38)
!148 = !DILocation(line: 113, column: 19, scope: !38)
!149 = !DILocation(line: 116, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !38, file: !3, line: 116, column: 9)
!151 = !DILocation(line: 116, column: 9, scope: !38)
!152 = !DILocation(line: 116, column: 19, scope: !150)
!153 = !DILocation(line: 116, column: 14, scope: !150)
!154 = !DILocation(line: 118, column: 5, scope: !38)
!155 = distinct !DISubprogram(name: "memcpy", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !42, retainedNodes: !41)
!156 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !159, !160, !162}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 46, baseType: !164)
!163 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DILocalVariable(name: "destaddr", arg: 1, scope: !155, file: !156, line: 12, type: !159)
!166 = !DILocation(line: 12, column: 20, scope: !155)
!167 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !155, file: !156, line: 12, type: !160)
!168 = !DILocation(line: 12, column: 42, scope: !155)
!169 = !DILocalVariable(name: "len", arg: 3, scope: !155, file: !156, line: 12, type: !162)
!170 = !DILocation(line: 12, column: 58, scope: !155)
!171 = !DILocalVariable(name: "dest", scope: !155, file: !156, line: 13, type: !11)
!172 = !DILocation(line: 13, column: 9, scope: !155)
!173 = !DILocation(line: 13, column: 16, scope: !155)
!174 = !DILocalVariable(name: "src", scope: !155, file: !156, line: 14, type: !24)
!175 = !DILocation(line: 14, column: 15, scope: !155)
!176 = !DILocation(line: 14, column: 21, scope: !155)
!177 = !DILocation(line: 16, column: 3, scope: !155)
!178 = !DILocation(line: 16, column: 13, scope: !155)
!179 = !DILocation(line: 16, column: 16, scope: !155)
!180 = !DILocation(line: 17, column: 19, scope: !155)
!181 = !DILocation(line: 17, column: 15, scope: !155)
!182 = !DILocation(line: 17, column: 10, scope: !155)
!183 = !DILocation(line: 17, column: 13, scope: !155)
!184 = distinct !{!184, !177, !180, !185}
!185 = !{!"llvm.loop.mustprogress"}
!186 = !DILocation(line: 18, column: 10, scope: !155)
!187 = !DILocation(line: 18, column: 3, scope: !155)
