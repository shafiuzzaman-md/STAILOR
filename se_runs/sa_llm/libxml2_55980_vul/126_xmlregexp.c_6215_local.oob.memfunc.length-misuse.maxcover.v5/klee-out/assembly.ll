; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/126_xmlregexp.c_6215_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/126_xmlregexp.c_6215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegAtom = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"(lenp <= (lenn + lenp + 2)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/126_xmlregexp.c_6215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRegNewAtom = private unnamed_addr constant [58 x i8] c"xmlRegAtom *xmlRegNewAtom(int, xmlChar *, xmlChar *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !27 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %3 = load i64, i64* %2, align 8, !dbg !36
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !37
  ret i8* %4, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %0) #0 !dbg !39 {
  %2 = alloca %struct._xmlRegAtom*, align 8
  store %struct._xmlRegAtom* %0, %struct._xmlRegAtom** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !44
  %4 = icmp ne %struct._xmlRegAtom* %3, null, !dbg !44
  br i1 %4, label %5, label %8, !dbg !46

5:                                                ; preds = %1
  %6 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %2, align 8, !dbg !47
  %7 = bitcast %struct._xmlRegAtom* %6 to i8*, !dbg !47
  call void @free(i8* noundef %7) #8, !dbg !48
  br label %8, !dbg !48

8:                                                ; preds = %5, %1
  ret void, !dbg !49
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !50 {
  %5 = alloca %struct._xmlRegAtom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlRegAtom*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %10, metadata !61, metadata !DIExpression()), !dbg !62
  %14 = call noalias i8* @malloc(i64 noundef 16) #8, !dbg !63
  %15 = bitcast i8* %14 to %struct._xmlRegAtom*, !dbg !64
  store %struct._xmlRegAtom* %15, %struct._xmlRegAtom** %10, align 8, !dbg !62
  %16 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !65
  %17 = icmp ne %struct._xmlRegAtom* %16, null, !dbg !65
  br i1 %17, label %19, label %18, !dbg !67

18:                                               ; preds = %4
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !68
  br label %76, !dbg !68

19:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata i64* %11, metadata !69, metadata !DIExpression()), !dbg !70
  %20 = load i8*, i8** %8, align 8, !dbg !71
  %21 = call i64 @strlen(i8* noundef %20) #9, !dbg !72
  store i64 %21, i64* %11, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %12, metadata !73, metadata !DIExpression()), !dbg !74
  %22 = load i8*, i8** %7, align 8, !dbg !75
  %23 = call i64 @strlen(i8* noundef %22) #9, !dbg !76
  store i64 %23, i64* %12, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %13, metadata !77, metadata !DIExpression()), !dbg !78
  %24 = load i64, i64* %11, align 8, !dbg !79
  %25 = load i64, i64* %12, align 8, !dbg !80
  %26 = add i64 %24, %25, !dbg !81
  %27 = add i64 %26, 2, !dbg !82
  %28 = call i8* @xmlMallocAtomic(i64 noundef %27), !dbg !83
  store i8* %28, i8** %13, align 8, !dbg !78
  %29 = load i8*, i8** %13, align 8, !dbg !84
  %30 = icmp eq i8* %29, null, !dbg !86
  br i1 %30, label %31, label %33, !dbg !87

31:                                               ; preds = %19
  %32 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !88
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %32), !dbg !90
  store %struct._xmlRegAtom* null, %struct._xmlRegAtom** %5, align 8, !dbg !91
  br label %76, !dbg !91

33:                                               ; preds = %19
  %34 = load i8*, i8** %13, align 8, !dbg !92
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !92
  %36 = load i8*, i8** %7, align 8, !dbg !93
  %37 = load i64, i64* %12, align 8, !dbg !94
  %38 = call i8* @memcpy(i8* %35, i8* %36, i64 %37), !dbg !95
  %39 = load i64, i64* %12, align 8, !dbg !96
  %40 = load i64, i64* %11, align 8, !dbg !96
  %41 = load i64, i64* %12, align 8, !dbg !96
  %42 = add i64 %40, %41, !dbg !96
  %43 = add i64 %42, 2, !dbg !96
  %44 = icmp ule i64 %39, %43, !dbg !96
  br i1 %44, label %45, label %47, !dbg !96

45:                                               ; preds = %33
  br i1 true, label %46, label %47, !dbg !96

46:                                               ; preds = %45
  br label %49, !dbg !96

47:                                               ; preds = %45, %33
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !96
  br label %49, !dbg !96

49:                                               ; preds = %47, %46
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.xmlRegNewAtom, i64 0, i64 0)), !dbg !97
  %51 = load i8*, i8** %13, align 8, !dbg !98
  %52 = load i64, i64* %12, align 8, !dbg !99
  %53 = getelementptr inbounds i8, i8* %51, i64 %52, !dbg !98
  store i8 124, i8* %53, align 1, !dbg !100
  %54 = load i8*, i8** %13, align 8, !dbg !101
  %55 = load i64, i64* %12, align 8, !dbg !102
  %56 = add i64 %55, 1, !dbg !103
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !101
  %58 = load i8*, i8** %8, align 8, !dbg !104
  %59 = load i64, i64* %11, align 8, !dbg !105
  %60 = call i8* @memcpy(i8* %57, i8* %58, i64 %59), !dbg !106
  %61 = load i8*, i8** %13, align 8, !dbg !107
  %62 = load i64, i64* %11, align 8, !dbg !108
  %63 = load i64, i64* %12, align 8, !dbg !109
  %64 = add i64 %62, %63, !dbg !110
  %65 = add i64 %64, 1, !dbg !111
  %66 = getelementptr inbounds i8, i8* %61, i64 %65, !dbg !107
  store i8 0, i8* %66, align 1, !dbg !112
  %67 = load i8*, i8** %13, align 8, !dbg !113
  %68 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !114
  %69 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %68, i32 0, i32 0, !dbg !115
  store i8* %67, i8** %69, align 8, !dbg !116
  %70 = load i32, i32* %9, align 4, !dbg !117
  %71 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !118
  %72 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %71, i32 0, i32 1, !dbg !119
  store i32 %70, i32* %72, align 8, !dbg !120
  %73 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !121
  %74 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %73, i32 0, i32 2, !dbg !122
  store i32 1, i32* %74, align 4, !dbg !123
  %75 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %10, align 8, !dbg !124
  store %struct._xmlRegAtom* %75, %struct._xmlRegAtom** %5, align 8, !dbg !125
  br label %76, !dbg !125

76:                                               ; preds = %49, %31, %18
  %77 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !126
  ret %struct._xmlRegAtom* %77, !dbg !126
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !130, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %4, metadata !137, metadata !DIExpression()), !dbg !138
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !139
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !140
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !141
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !142
  %8 = bitcast i32* %4 to i8*, !dbg !143
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !145
  store i8 0, i8* %9, align 1, !dbg !146
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !147
  store i8 0, i8* %10, align 1, !dbg !148
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !149
  %12 = call i64 @strlen(i8* noundef %11) #9, !dbg !150
  %13 = icmp ult i64 %12, 256, !dbg !151
  %14 = zext i1 %13 to i32, !dbg !151
  %15 = sext i32 %14 to i64, !dbg !150
  call void @klee_assume(i64 noundef %15), !dbg !152
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !153
  %17 = call i64 @strlen(i8* noundef %16) #9, !dbg !154
  %18 = icmp ult i64 %17, 256, !dbg !155
  %19 = zext i1 %18 to i32, !dbg !155
  %20 = sext i32 %19 to i64, !dbg !154
  call void @klee_assume(i64 noundef %20), !dbg !156
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom** %5, metadata !157, metadata !DIExpression()), !dbg !158
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !159
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !160
  %23 = load i32, i32* %4, align 4, !dbg !161
  %24 = call %struct._xmlRegAtom* @xmlRegNewAtom(i32 noundef 0, i8* noundef %21, i8* noundef %22, i32 noundef %23), !dbg !162
  store %struct._xmlRegAtom* %24, %struct._xmlRegAtom** %5, align 8, !dbg !158
  %25 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !163
  %26 = icmp ne %struct._xmlRegAtom* %25, null, !dbg !163
  br i1 %26, label %27, label %29, !dbg !165

27:                                               ; preds = %0
  %28 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %5, align 8, !dbg !166
  call void @xmlRegFreeAtom(%struct._xmlRegAtom* noundef %28), !dbg !168
  br label %29, !dbg !169

29:                                               ; preds = %27, %0
  ret i32 0, !dbg !170
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !171 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !177, metadata !DIExpression()), !dbg !178
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !179, metadata !DIExpression()), !dbg !180
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i8** %7, metadata !183, metadata !DIExpression()), !dbg !184
  %9 = load i8*, i8** %4, align 8, !dbg !185
  store i8* %9, i8** %7, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i8** %8, metadata !186, metadata !DIExpression()), !dbg !189
  %10 = load i8*, i8** %5, align 8, !dbg !190
  store i8* %10, i8** %8, align 8, !dbg !189
  br label %11, !dbg !191

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !192
  %13 = add i64 %12, -1, !dbg !192
  store i64 %13, i64* %6, align 8, !dbg !192
  %14 = icmp ugt i64 %12, 0, !dbg !193
  br i1 %14, label %15, label %21, !dbg !191

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !194
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !194
  store i8* %17, i8** %8, align 8, !dbg !194
  %18 = load i8, i8* %16, align 1, !dbg !195
  %19 = load i8*, i8** %7, align 8, !dbg !196
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !196
  store i8* %20, i8** %7, align 8, !dbg !196
  store i8 %18, i8* %19, align 1, !dbg !197
  br label %11, !dbg !191, !llvm.loop !198

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !200
  ret i8* %22, !dbg !201
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/126_xmlregexp.c_6215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e0706ae701df91c30b144e3735b89f8f")
!2 = !{!3, !12, !14, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 13, size: 128, elements: !6)
!6 = !{!7, !9, !11}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 14, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5, file: !1, line: 15, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "quant", scope: !5, file: !1, line: 16, baseType: !10, size: 32, offset: 96)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !16)
!16 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 20, type: !28, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !30}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !27, file: !1, line: 20, type: !30)
!35 = !DILocation(line: 20, column: 30, scope: !27)
!36 = !DILocation(line: 21, column: 19, scope: !27)
!37 = !DILocation(line: 21, column: 12, scope: !27)
!38 = !DILocation(line: 21, column: 5, scope: !27)
!39 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3}
!42 = !DILocalVariable(name: "atom", arg: 1, scope: !39, file: !1, line: 25, type: !3)
!43 = !DILocation(line: 25, column: 33, scope: !39)
!44 = !DILocation(line: 26, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 9)
!46 = !DILocation(line: 26, column: 9, scope: !39)
!47 = !DILocation(line: 26, column: 20, scope: !45)
!48 = !DILocation(line: 26, column: 15, scope: !45)
!49 = !DILocation(line: 27, column: 1, scope: !39)
!50 = distinct !DISubprogram(name: "xmlRegNewAtom", scope: !1, file: !1, line: 30, type: !51, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{!3, !10, !14, !14, !10}
!53 = !DILocalVariable(name: "type", arg: 1, scope: !50, file: !1, line: 30, type: !10)
!54 = !DILocation(line: 30, column: 31, scope: !50)
!55 = !DILocalVariable(name: "token", arg: 2, scope: !50, file: !1, line: 30, type: !14)
!56 = !DILocation(line: 30, column: 46, scope: !50)
!57 = !DILocalVariable(name: "token2", arg: 3, scope: !50, file: !1, line: 30, type: !14)
!58 = !DILocation(line: 30, column: 62, scope: !50)
!59 = !DILocalVariable(name: "data", arg: 4, scope: !50, file: !1, line: 30, type: !10)
!60 = !DILocation(line: 30, column: 74, scope: !50)
!61 = !DILocalVariable(name: "atom", scope: !50, file: !1, line: 31, type: !3)
!62 = !DILocation(line: 31, column: 17, scope: !50)
!63 = !DILocation(line: 31, column: 37, scope: !50)
!64 = !DILocation(line: 31, column: 24, scope: !50)
!65 = !DILocation(line: 32, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 9)
!67 = !DILocation(line: 32, column: 9, scope: !50)
!68 = !DILocation(line: 32, column: 16, scope: !66)
!69 = !DILocalVariable(name: "lenn", scope: !50, file: !1, line: 34, type: !30)
!70 = !DILocation(line: 34, column: 12, scope: !50)
!71 = !DILocation(line: 34, column: 33, scope: !50)
!72 = !DILocation(line: 34, column: 19, scope: !50)
!73 = !DILocalVariable(name: "lenp", scope: !50, file: !1, line: 35, type: !30)
!74 = !DILocation(line: 35, column: 12, scope: !50)
!75 = !DILocation(line: 35, column: 33, scope: !50)
!76 = !DILocation(line: 35, column: 19, scope: !50)
!77 = !DILocalVariable(name: "str", scope: !50, file: !1, line: 37, type: !14)
!78 = !DILocation(line: 37, column: 14, scope: !50)
!79 = !DILocation(line: 37, column: 46, scope: !50)
!80 = !DILocation(line: 37, column: 53, scope: !50)
!81 = !DILocation(line: 37, column: 51, scope: !50)
!82 = !DILocation(line: 37, column: 58, scope: !50)
!83 = !DILocation(line: 37, column: 30, scope: !50)
!84 = !DILocation(line: 38, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !50, file: !1, line: 38, column: 9)
!86 = !DILocation(line: 38, column: 13, scope: !85)
!87 = !DILocation(line: 38, column: 9, scope: !50)
!88 = !DILocation(line: 39, column: 24, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 38, column: 22)
!90 = !DILocation(line: 39, column: 9, scope: !89)
!91 = !DILocation(line: 40, column: 9, scope: !89)
!92 = !DILocation(line: 44, column: 13, scope: !50)
!93 = !DILocation(line: 44, column: 21, scope: !50)
!94 = !DILocation(line: 44, column: 28, scope: !50)
!95 = !DILocation(line: 44, column: 5, scope: !50)
!96 = !DILocation(line: 47, column: 5, scope: !50)
!97 = !DILocation(line: 50, column: 5, scope: !50)
!98 = !DILocation(line: 52, column: 5, scope: !50)
!99 = !DILocation(line: 52, column: 9, scope: !50)
!100 = !DILocation(line: 52, column: 15, scope: !50)
!101 = !DILocation(line: 53, column: 13, scope: !50)
!102 = !DILocation(line: 53, column: 17, scope: !50)
!103 = !DILocation(line: 53, column: 22, scope: !50)
!104 = !DILocation(line: 53, column: 28, scope: !50)
!105 = !DILocation(line: 53, column: 36, scope: !50)
!106 = !DILocation(line: 53, column: 5, scope: !50)
!107 = !DILocation(line: 54, column: 5, scope: !50)
!108 = !DILocation(line: 54, column: 9, scope: !50)
!109 = !DILocation(line: 54, column: 16, scope: !50)
!110 = !DILocation(line: 54, column: 14, scope: !50)
!111 = !DILocation(line: 54, column: 21, scope: !50)
!112 = !DILocation(line: 54, column: 26, scope: !50)
!113 = !DILocation(line: 56, column: 20, scope: !50)
!114 = !DILocation(line: 56, column: 5, scope: !50)
!115 = !DILocation(line: 56, column: 11, scope: !50)
!116 = !DILocation(line: 56, column: 18, scope: !50)
!117 = !DILocation(line: 57, column: 18, scope: !50)
!118 = !DILocation(line: 57, column: 5, scope: !50)
!119 = !DILocation(line: 57, column: 11, scope: !50)
!120 = !DILocation(line: 57, column: 16, scope: !50)
!121 = !DILocation(line: 58, column: 5, scope: !50)
!122 = !DILocation(line: 58, column: 11, scope: !50)
!123 = !DILocation(line: 58, column: 17, scope: !50)
!124 = !DILocation(line: 60, column: 12, scope: !50)
!125 = !DILocation(line: 60, column: 5, scope: !50)
!126 = !DILocation(line: 61, column: 1, scope: !50)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !128, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!128 = !DISubroutineType(types: !129)
!129 = !{!10}
!130 = !DILocalVariable(name: "token", scope: !127, file: !1, line: 65, type: !131)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 256)
!134 = !DILocation(line: 65, column: 13, scope: !127)
!135 = !DILocalVariable(name: "token2", scope: !127, file: !1, line: 66, type: !131)
!136 = !DILocation(line: 66, column: 13, scope: !127)
!137 = !DILocalVariable(name: "data", scope: !127, file: !1, line: 67, type: !10)
!138 = !DILocation(line: 67, column: 9, scope: !127)
!139 = !DILocation(line: 69, column: 24, scope: !127)
!140 = !DILocation(line: 69, column: 5, scope: !127)
!141 = !DILocation(line: 70, column: 24, scope: !127)
!142 = !DILocation(line: 70, column: 5, scope: !127)
!143 = !DILocation(line: 71, column: 24, scope: !127)
!144 = !DILocation(line: 71, column: 5, scope: !127)
!145 = !DILocation(line: 74, column: 5, scope: !127)
!146 = !DILocation(line: 74, column: 16, scope: !127)
!147 = !DILocation(line: 75, column: 5, scope: !127)
!148 = !DILocation(line: 75, column: 17, scope: !127)
!149 = !DILocation(line: 78, column: 31, scope: !127)
!150 = !DILocation(line: 78, column: 17, scope: !127)
!151 = !DILocation(line: 78, column: 38, scope: !127)
!152 = !DILocation(line: 78, column: 5, scope: !127)
!153 = !DILocation(line: 79, column: 31, scope: !127)
!154 = !DILocation(line: 79, column: 17, scope: !127)
!155 = !DILocation(line: 79, column: 39, scope: !127)
!156 = !DILocation(line: 79, column: 5, scope: !127)
!157 = !DILocalVariable(name: "atom", scope: !127, file: !1, line: 82, type: !3)
!158 = !DILocation(line: 82, column: 17, scope: !127)
!159 = !DILocation(line: 82, column: 41, scope: !127)
!160 = !DILocation(line: 82, column: 48, scope: !127)
!161 = !DILocation(line: 82, column: 56, scope: !127)
!162 = !DILocation(line: 82, column: 24, scope: !127)
!163 = !DILocation(line: 84, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !127, file: !1, line: 84, column: 9)
!165 = !DILocation(line: 84, column: 9, scope: !127)
!166 = !DILocation(line: 85, column: 24, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 84, column: 15)
!168 = !DILocation(line: 85, column: 9, scope: !167)
!169 = !DILocation(line: 86, column: 5, scope: !167)
!170 = !DILocation(line: 88, column: 5, scope: !127)
!171 = distinct !DISubprogram(name: "memcpy", scope: !172, file: !172, line: 12, type: !173, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !33)
!172 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!173 = !DISubroutineType(types: !174)
!174 = !{!8, !8, !175, !30}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!177 = !DILocalVariable(name: "destaddr", arg: 1, scope: !171, file: !172, line: 12, type: !8)
!178 = !DILocation(line: 12, column: 20, scope: !171)
!179 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !171, file: !172, line: 12, type: !175)
!180 = !DILocation(line: 12, column: 42, scope: !171)
!181 = !DILocalVariable(name: "len", arg: 3, scope: !171, file: !172, line: 12, type: !30)
!182 = !DILocation(line: 12, column: 58, scope: !171)
!183 = !DILocalVariable(name: "dest", scope: !171, file: !172, line: 13, type: !12)
!184 = !DILocation(line: 13, column: 9, scope: !171)
!185 = !DILocation(line: 13, column: 16, scope: !171)
!186 = !DILocalVariable(name: "src", scope: !171, file: !172, line: 14, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!189 = !DILocation(line: 14, column: 15, scope: !171)
!190 = !DILocation(line: 14, column: 21, scope: !171)
!191 = !DILocation(line: 16, column: 3, scope: !171)
!192 = !DILocation(line: 16, column: 13, scope: !171)
!193 = !DILocation(line: 16, column: 16, scope: !171)
!194 = !DILocation(line: 17, column: 19, scope: !171)
!195 = !DILocation(line: 17, column: 15, scope: !171)
!196 = !DILocation(line: 17, column: 10, scope: !171)
!197 = !DILocation(line: 17, column: 13, scope: !171)
!198 = distinct !{!198, !191, !194, !199}
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 18, column: 10, scope: !171)
!201 = !DILocation(line: 18, column: 3, scope: !171)
