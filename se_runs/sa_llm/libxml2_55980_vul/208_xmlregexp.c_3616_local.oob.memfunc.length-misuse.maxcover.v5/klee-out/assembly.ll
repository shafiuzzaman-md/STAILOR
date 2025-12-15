; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/208_xmlregexp.c_3616_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/208_xmlregexp.c_3616_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32*, i32*, i32, i32, i8* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"creating execution context\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"(comp.nbCounters <= ((18446744073709551615UL) / (sizeof(int) * 2))) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/208_xmlregexp.c_3616_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = load i64, i64* %2, align 8, !dbg !36
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !37
  store i8* %5, i8** %3, align 8, !dbg !35
  %6 = load i8*, i8** %3, align 8, !dbg !38
  ret i8* %6, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !40 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %2, align 8, !dbg !45
  call void @free(i8* noundef %3) #7, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !48 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !56, metadata !DIExpression()), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !59 {
  %4 = alloca %struct._xmlRegExecCtxt*, align 8
  %5 = alloca %struct._xmlRegexp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegexp* %0, %struct._xmlRegexp** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp** %5, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %8, metadata !74, metadata !DIExpression()), !dbg !75
  %9 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !76
  %10 = icmp eq %struct._xmlRegexp* %9, null, !dbg !78
  br i1 %10, label %11, label %12, !dbg !79

11:                                               ; preds = %3
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %4, align 8, !dbg !80
  br label %73, !dbg !80

12:                                               ; preds = %3
  %13 = call i8* @xmlMalloc(i64 noundef 32), !dbg !81
  %14 = bitcast i8* %13 to %struct._xmlRegExecCtxt*, !dbg !82
  store %struct._xmlRegExecCtxt* %14, %struct._xmlRegExecCtxt** %8, align 8, !dbg !83
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !84
  %16 = icmp eq %struct._xmlRegExecCtxt* %15, null, !dbg !86
  br i1 %16, label %17, label %18, !dbg !87

17:                                               ; preds = %12
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !88
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %4, align 8, !dbg !90
  br label %73, !dbg !90

18:                                               ; preds = %12
  %19 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !91
  %20 = bitcast %struct._xmlRegExecCtxt* %19 to i8*, !dbg !92
  %21 = call i8* @memset(i8* %20, i32 0, i64 32), !dbg !92
  %22 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !93
  %23 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %22, i32 0, i32 0, !dbg !95
  %24 = load i32, i32* %23, align 4, !dbg !95
  %25 = icmp sgt i32 %24, 0, !dbg !96
  br i1 %25, label %26, label %66, !dbg !97

26:                                               ; preds = %18
  %27 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !98
  %28 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %27, i32 0, i32 0, !dbg !100
  %29 = load i32, i32* %28, align 4, !dbg !100
  %30 = sext i32 %29 to i64, !dbg !98
  %31 = mul i64 %30, 4, !dbg !101
  %32 = mul i64 %31, 2, !dbg !102
  %33 = call i8* @xmlMalloc(i64 noundef %32), !dbg !103
  %34 = bitcast i8* %33 to i32*, !dbg !104
  %35 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !105
  %36 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %35, i32 0, i32 0, !dbg !106
  store i32* %34, i32** %36, align 8, !dbg !107
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !108
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %37, i32 0, i32 0, !dbg !110
  %39 = load i32*, i32** %38, align 8, !dbg !110
  %40 = icmp eq i32* %39, null, !dbg !111
  br i1 %40, label %41, label %44, !dbg !112

41:                                               ; preds = %26
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)), !dbg !113
  %42 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !115
  %43 = bitcast %struct._xmlRegExecCtxt* %42 to i8*, !dbg !115
  call void @xmlFree(i8* noundef %43), !dbg !116
  store %struct._xmlRegExecCtxt* null, %struct._xmlRegExecCtxt** %4, align 8, !dbg !117
  br label %73, !dbg !117

44:                                               ; preds = %26
  %45 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !118
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %45, i32 0, i32 0, !dbg !119
  %47 = load i32*, i32** %46, align 8, !dbg !119
  %48 = bitcast i32* %47 to i8*, !dbg !120
  %49 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !121
  %50 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %49, i32 0, i32 0, !dbg !122
  %51 = load i32, i32* %50, align 4, !dbg !122
  %52 = sext i32 %51 to i64, !dbg !121
  %53 = mul i64 %52, 4, !dbg !123
  %54 = mul i64 %53, 2, !dbg !124
  %55 = call i8* @memset(i8* %48, i32 0, i64 %54), !dbg !120
  %56 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !125
  %57 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %56, i32 0, i32 0, !dbg !126
  %58 = load i32*, i32** %57, align 8, !dbg !126
  %59 = load %struct._xmlRegexp*, %struct._xmlRegexp** %5, align 8, !dbg !127
  %60 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %59, i32 0, i32 0, !dbg !128
  %61 = load i32, i32* %60, align 4, !dbg !128
  %62 = sext i32 %61 to i64, !dbg !125
  %63 = getelementptr inbounds i32, i32* %58, i64 %62, !dbg !125
  %64 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !129
  %65 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %64, i32 0, i32 1, !dbg !130
  store i32* %63, i32** %65, align 8, !dbg !131
  br label %71, !dbg !132

66:                                               ; preds = %18
  %67 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !133
  %68 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %67, i32 0, i32 0, !dbg !135
  store i32* null, i32** %68, align 8, !dbg !136
  %69 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !137
  %70 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %69, i32 0, i32 1, !dbg !138
  store i32* null, i32** %70, align 8, !dbg !139
  br label %71

71:                                               ; preds = %66, %44
  %72 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %8, align 8, !dbg !140
  store %struct._xmlRegExecCtxt* %72, %struct._xmlRegExecCtxt** %4, align 8, !dbg !141
  br label %73, !dbg !141

73:                                               ; preds = %71, %41, %17, %11
  %74 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %4, align 8, !dbg !142
  ret %struct._xmlRegExecCtxt* %74, !dbg !142
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegexp, align 4
  %3 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegexp* %2, metadata !146, metadata !DIExpression()), !dbg !147
  %4 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %2, i32 0, i32 0, !dbg !148
  %5 = bitcast i32* %4 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !150
  %6 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %2, i32 0, i32 0, !dbg !151
  %7 = load i32, i32* %6, align 4, !dbg !151
  %8 = icmp sgt i32 %7, 0, !dbg !152
  %9 = zext i1 %8 to i32, !dbg !152
  %10 = sext i32 %9 to i64, !dbg !153
  call void @klee_assume(i64 noundef %10), !dbg !154
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %3, metadata !155, metadata !DIExpression()), !dbg !156
  %11 = call %struct._xmlRegExecCtxt* @xmlRegNewExecCtxt(%struct._xmlRegexp* noundef %2, i8* noundef null, i8* noundef null), !dbg !157
  store %struct._xmlRegExecCtxt* %11, %struct._xmlRegExecCtxt** %3, align 8, !dbg !156
  %12 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !158
  %13 = icmp ne %struct._xmlRegExecCtxt* %12, null, !dbg !160
  br i1 %13, label %14, label %37, !dbg !161

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %2, i32 0, i32 0, !dbg !162
  %16 = load i32, i32* %15, align 4, !dbg !162
  %17 = sext i32 %16 to i64, !dbg !162
  %18 = icmp ule i64 %17, 2305843009213693951, !dbg !162
  br i1 %18, label %19, label %21, !dbg !162

19:                                               ; preds = %14
  br i1 true, label %20, label %21, !dbg !162

20:                                               ; preds = %19
  br label %23, !dbg !162

21:                                               ; preds = %19, %14
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !162
  br label %23, !dbg !162

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.4, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !164
  %25 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !165
  %26 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %25, i32 0, i32 0, !dbg !167
  %27 = load i32*, i32** %26, align 8, !dbg !167
  %28 = icmp ne i32* %27, null, !dbg !165
  br i1 %28, label %29, label %34, !dbg !168

29:                                               ; preds = %23
  %30 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !169
  %31 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %30, i32 0, i32 0, !dbg !171
  %32 = load i32*, i32** %31, align 8, !dbg !171
  %33 = bitcast i32* %32 to i8*, !dbg !169
  call void @free(i8* noundef %33) #7, !dbg !172
  br label %34, !dbg !173

34:                                               ; preds = %29, %23
  %35 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %3, align 8, !dbg !174
  %36 = bitcast %struct._xmlRegExecCtxt* %35 to i8*, !dbg !174
  call void @free(i8* noundef %36) #7, !dbg !175
  br label %37, !dbg !176

37:                                               ; preds = %34, %0
  ret i32 0, !dbg !177
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !178 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !182, metadata !DIExpression()), !dbg !183
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !184, metadata !DIExpression()), !dbg !185
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %7, metadata !188, metadata !DIExpression()), !dbg !190
  %8 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %8, i8** %7, align 8, !dbg !190
  br label %9, !dbg !192

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !193
  %11 = add i64 %10, -1, !dbg !193
  store i64 %11, i64* %6, align 8, !dbg !193
  %12 = icmp ugt i64 %10, 0, !dbg !194
  br i1 %12, label %13, label %18, !dbg !192

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !195
  %15 = trunc i32 %14 to i8, !dbg !195
  %16 = load i8*, i8** %7, align 8, !dbg !196
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !196
  store i8* %17, i8** %7, align 8, !dbg !196
  store i8 %15, i8* %16, align 1, !dbg !197
  br label %9, !dbg !192, !llvm.loop !198

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !200
  ret i8* %19, !dbg !201
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/208_xmlregexp.c_3616_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "374c3f32f1ecc21c1d9ba8669cf735e4")
!2 = !{!3, !4, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 18, size: 256, elements: !7)
!7 = !{!8, !11, !12, !13, !14}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !6, file: !1, line: 19, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "errCounts", scope: !6, file: !1, line: 20, baseType: !9, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "inputStackMax", scope: !6, file: !1, line: 21, baseType: !10, size: 32, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "inputStackNr", scope: !6, file: !1, line: 22, baseType: !10, size: 32, offset: 160)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "inputStack", scope: !6, file: !1, line: 23, baseType: !3, size: 64, offset: 192)
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
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 28, type: !26, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!3, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 28, type: !28)
!33 = !DILocation(line: 28, column: 24, scope: !25)
!34 = !DILocalVariable(name: "ptr", scope: !25, file: !1, line: 29, type: !3)
!35 = !DILocation(line: 29, column: 11, scope: !25)
!36 = !DILocation(line: 29, column: 24, scope: !25)
!37 = !DILocation(line: 29, column: 17, scope: !25)
!38 = !DILocation(line: 30, column: 12, scope: !25)
!39 = !DILocation(line: 30, column: 5, scope: !25)
!40 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 33, type: !41, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !3}
!43 = !DILocalVariable(name: "ptr", arg: 1, scope: !40, file: !1, line: 33, type: !3)
!44 = !DILocation(line: 33, column: 20, scope: !40)
!45 = !DILocation(line: 34, column: 10, scope: !40)
!46 = !DILocation(line: 34, column: 5, scope: !40)
!47 = !DILocation(line: 35, column: 1, scope: !40)
!48 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 37, type: !49, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !3, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DILocalVariable(name: "ctx", arg: 1, scope: !48, file: !1, line: 37, type: !3)
!55 = !DILocation(line: 37, column: 31, scope: !48)
!56 = !DILocalVariable(name: "msg", arg: 2, scope: !48, file: !1, line: 37, type: !51)
!57 = !DILocation(line: 37, column: 48, scope: !48)
!58 = !DILocation(line: 39, column: 1, scope: !48)
!59 = distinct !DISubprogram(name: "xmlRegNewExecCtxt", scope: !1, file: !1, line: 42, type: !60, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!60 = !DISubroutineType(types: !61)
!61 = !{!4, !62, !3, !3}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 10, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 13, size: 32, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !65, file: !1, line: 14, baseType: !10, size: 32)
!68 = !DILocalVariable(name: "comp", arg: 1, scope: !59, file: !1, line: 42, type: !62)
!69 = !DILocation(line: 42, column: 52, scope: !59)
!70 = !DILocalVariable(name: "callback", arg: 2, scope: !59, file: !1, line: 42, type: !3)
!71 = !DILocation(line: 42, column: 64, scope: !59)
!72 = !DILocalVariable(name: "data", arg: 3, scope: !59, file: !1, line: 42, type: !3)
!73 = !DILocation(line: 42, column: 80, scope: !59)
!74 = !DILocalVariable(name: "exec", scope: !59, file: !1, line: 43, type: !4)
!75 = !DILocation(line: 43, column: 21, scope: !59)
!76 = !DILocation(line: 45, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !59, file: !1, line: 45, column: 9)
!78 = !DILocation(line: 45, column: 14, scope: !77)
!79 = !DILocation(line: 45, column: 9, scope: !59)
!80 = !DILocation(line: 46, column: 9, scope: !77)
!81 = !DILocation(line: 48, column: 31, scope: !59)
!82 = !DILocation(line: 48, column: 12, scope: !59)
!83 = !DILocation(line: 48, column: 10, scope: !59)
!84 = !DILocation(line: 49, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !1, line: 49, column: 9)
!86 = !DILocation(line: 49, column: 14, scope: !85)
!87 = !DILocation(line: 49, column: 9, scope: !59)
!88 = !DILocation(line: 50, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 49, column: 23)
!90 = !DILocation(line: 51, column: 9, scope: !89)
!91 = !DILocation(line: 53, column: 12, scope: !59)
!92 = !DILocation(line: 53, column: 5, scope: !59)
!93 = !DILocation(line: 55, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !59, file: !1, line: 55, column: 9)
!95 = !DILocation(line: 55, column: 15, scope: !94)
!96 = !DILocation(line: 55, column: 26, scope: !94)
!97 = !DILocation(line: 55, column: 9, scope: !59)
!98 = !DILocation(line: 56, column: 42, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 55, column: 31)
!100 = !DILocation(line: 56, column: 48, scope: !99)
!101 = !DILocation(line: 56, column: 59, scope: !99)
!102 = !DILocation(line: 56, column: 73, scope: !99)
!103 = !DILocation(line: 56, column: 32, scope: !99)
!104 = !DILocation(line: 56, column: 24, scope: !99)
!105 = !DILocation(line: 56, column: 9, scope: !99)
!106 = !DILocation(line: 56, column: 15, scope: !99)
!107 = !DILocation(line: 56, column: 22, scope: !99)
!108 = !DILocation(line: 57, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !99, file: !1, line: 57, column: 13)
!110 = !DILocation(line: 57, column: 19, scope: !109)
!111 = !DILocation(line: 57, column: 26, scope: !109)
!112 = !DILocation(line: 57, column: 13, scope: !99)
!113 = !DILocation(line: 58, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 57, column: 35)
!115 = !DILocation(line: 59, column: 21, scope: !114)
!116 = !DILocation(line: 59, column: 13, scope: !114)
!117 = !DILocation(line: 60, column: 13, scope: !114)
!118 = !DILocation(line: 63, column: 16, scope: !99)
!119 = !DILocation(line: 63, column: 22, scope: !99)
!120 = !DILocation(line: 63, column: 9, scope: !99)
!121 = !DILocation(line: 63, column: 33, scope: !99)
!122 = !DILocation(line: 63, column: 39, scope: !99)
!123 = !DILocation(line: 63, column: 50, scope: !99)
!124 = !DILocation(line: 63, column: 64, scope: !99)
!125 = !DILocation(line: 64, column: 28, scope: !99)
!126 = !DILocation(line: 64, column: 34, scope: !99)
!127 = !DILocation(line: 64, column: 41, scope: !99)
!128 = !DILocation(line: 64, column: 47, scope: !99)
!129 = !DILocation(line: 64, column: 9, scope: !99)
!130 = !DILocation(line: 64, column: 15, scope: !99)
!131 = !DILocation(line: 64, column: 25, scope: !99)
!132 = !DILocation(line: 65, column: 5, scope: !99)
!133 = !DILocation(line: 66, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !94, file: !1, line: 65, column: 12)
!135 = !DILocation(line: 66, column: 15, scope: !134)
!136 = !DILocation(line: 66, column: 22, scope: !134)
!137 = !DILocation(line: 67, column: 9, scope: !134)
!138 = !DILocation(line: 67, column: 15, scope: !134)
!139 = !DILocation(line: 67, column: 25, scope: !134)
!140 = !DILocation(line: 70, column: 12, scope: !59)
!141 = !DILocation(line: 70, column: 5, scope: !59)
!142 = !DILocation(line: 71, column: 1, scope: !59)
!143 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !144, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!144 = !DISubroutineType(types: !145)
!145 = !{!10}
!146 = !DILocalVariable(name: "comp", scope: !143, file: !1, line: 75, type: !64)
!147 = !DILocation(line: 75, column: 15, scope: !143)
!148 = !DILocation(line: 78, column: 30, scope: !143)
!149 = !DILocation(line: 78, column: 24, scope: !143)
!150 = !DILocation(line: 78, column: 5, scope: !143)
!151 = !DILocation(line: 81, column: 22, scope: !143)
!152 = !DILocation(line: 81, column: 33, scope: !143)
!153 = !DILocation(line: 81, column: 17, scope: !143)
!154 = !DILocation(line: 81, column: 5, scope: !143)
!155 = !DILocalVariable(name: "exec", scope: !143, file: !1, line: 84, type: !4)
!156 = !DILocation(line: 84, column: 21, scope: !143)
!157 = !DILocation(line: 84, column: 28, scope: !143)
!158 = !DILocation(line: 86, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !143, file: !1, line: 86, column: 9)
!160 = !DILocation(line: 86, column: 14, scope: !159)
!161 = !DILocation(line: 86, column: 9, scope: !143)
!162 = !DILocation(line: 90, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 86, column: 23)
!164 = !DILocation(line: 93, column: 9, scope: !163)
!165 = !DILocation(line: 96, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 96, column: 13)
!167 = !DILocation(line: 96, column: 19, scope: !166)
!168 = !DILocation(line: 96, column: 13, scope: !163)
!169 = !DILocation(line: 97, column: 18, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 96, column: 27)
!171 = !DILocation(line: 97, column: 24, scope: !170)
!172 = !DILocation(line: 97, column: 13, scope: !170)
!173 = !DILocation(line: 98, column: 9, scope: !170)
!174 = !DILocation(line: 99, column: 14, scope: !163)
!175 = !DILocation(line: 99, column: 9, scope: !163)
!176 = !DILocation(line: 100, column: 5, scope: !163)
!177 = !DILocation(line: 102, column: 5, scope: !143)
!178 = distinct !DISubprogram(name: "memset", scope: !179, file: !179, line: 12, type: !180, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!179 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!180 = !DISubroutineType(types: !181)
!181 = !{!3, !3, !10, !28}
!182 = !DILocalVariable(name: "dst", arg: 1, scope: !178, file: !179, line: 12, type: !3)
!183 = !DILocation(line: 12, column: 20, scope: !178)
!184 = !DILocalVariable(name: "s", arg: 2, scope: !178, file: !179, line: 12, type: !10)
!185 = !DILocation(line: 12, column: 29, scope: !178)
!186 = !DILocalVariable(name: "count", arg: 3, scope: !178, file: !179, line: 12, type: !28)
!187 = !DILocation(line: 12, column: 39, scope: !178)
!188 = !DILocalVariable(name: "a", scope: !178, file: !179, line: 13, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!190 = !DILocation(line: 13, column: 9, scope: !178)
!191 = !DILocation(line: 13, column: 13, scope: !178)
!192 = !DILocation(line: 14, column: 3, scope: !178)
!193 = !DILocation(line: 14, column: 15, scope: !178)
!194 = !DILocation(line: 14, column: 18, scope: !178)
!195 = !DILocation(line: 15, column: 12, scope: !178)
!196 = !DILocation(line: 15, column: 7, scope: !178)
!197 = !DILocation(line: 15, column: 10, scope: !178)
!198 = distinct !{!198, !192, !195, !199}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 16, column: 10, scope: !178)
!201 = !DILocation(line: 16, column: 3, scope: !178)
