; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/126_runtest.c_1792_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/126_runtest.c_1792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSAXHandler = type { [256 x i8] }
%struct._xmlParserCtxt = type { %struct._xmlSAXHandler*, %struct._xmlDoc*, i32, i32 }
%struct._xmlDoc = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/126_runtest.c_1792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@debugSAXHandler = dso_local global %struct._xmlSAXHandler zeroinitializer, align 1, !dbg !0
@debugSAX2Handler = dso_local global %struct._xmlSAXHandler zeroinitializer, align 1, !dbg !28

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlParserCtxt* @xmlCreateFileParserCtxt(i8* noundef %0) #0 !dbg !40 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlParserCtxt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !50
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !51
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %4, align 8, !dbg !49
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !52
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !52
  br i1 %8, label %10, label %9, !dbg !54

9:                                                ; preds = %1
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %2, align 8, !dbg !55
  br label %30, !dbg !55

10:                                               ; preds = %1
  %11 = call noalias i8* @malloc(i64 noundef 256) #7, !dbg !56
  %12 = bitcast i8* %11 to %struct._xmlSAXHandler*, !dbg !57
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !58
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !59
  store %struct._xmlSAXHandler* %12, %struct._xmlSAXHandler** %14, align 8, !dbg !60
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !61
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !63
  %17 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %16, align 8, !dbg !63
  %18 = icmp ne %struct._xmlSAXHandler* %17, null, !dbg !61
  br i1 %18, label %22, label %19, !dbg !64

19:                                               ; preds = %10
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !65
  %21 = bitcast %struct._xmlParserCtxt* %20 to i8*, !dbg !65
  call void @free(i8* noundef %21) #7, !dbg !67
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %2, align 8, !dbg !68
  br label %30, !dbg !68

22:                                               ; preds = %10
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !69
  %24 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %23, i32 0, i32 1, !dbg !70
  store %struct._xmlDoc* null, %struct._xmlDoc** %24, align 8, !dbg !71
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !72
  %26 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %25, i32 0, i32 2, !dbg !73
  store i32 1, i32* %26, align 8, !dbg !74
  %27 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !75
  %28 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %27, i32 0, i32 3, !dbg !76
  store i32 0, i32* %28, align 4, !dbg !77
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !78
  store %struct._xmlParserCtxt* %29, %struct._xmlParserCtxt** %2, align 8, !dbg !79
  br label %30, !dbg !79

30:                                               ; preds = %22, %19, %9
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !80
  ret %struct._xmlParserCtxt* %31, !dbg !80
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtUseOptions(%struct._xmlParserCtxt* noundef %0, i32 noundef %1) #0 !dbg !81 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !86, metadata !DIExpression()), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseDocument(%struct._xmlParserCtxt* noundef %0) #0 !dbg !89 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeDoc(%struct._xmlDoc* noundef %0) #0 !dbg !95 {
  %2 = alloca %struct._xmlDoc*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %2, metadata !98, metadata !DIExpression()), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %3, metadata !106, metadata !DIExpression()), !dbg !107
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !108
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !109
  %7 = bitcast i32* %3 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !112
  %9 = load i8, i8* %8, align 1, !dbg !112
  %10 = sext i8 %9 to i32, !dbg !112
  %11 = icmp eq i32 %10, 0, !dbg !113
  %12 = zext i1 %11 to i32, !dbg !113
  %13 = sext i32 %12 to i64, !dbg !112
  call void @klee_assume(i64 noundef %13), !dbg !114
  %14 = load i32, i32* %3, align 4, !dbg !115
  %15 = and i32 %14, 1, !dbg !116
  %16 = icmp ne i32 %15, 0, !dbg !117
  %17 = zext i1 %16 to i32, !dbg !117
  %18 = sext i32 %17 to i64, !dbg !118
  call void @klee_assume(i64 noundef %18), !dbg !119
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !120, metadata !DIExpression()), !dbg !121
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !122
  %20 = call %struct._xmlParserCtxt* @xmlCreateFileParserCtxt(i8* noundef %19), !dbg !123
  store %struct._xmlParserCtxt* %20, %struct._xmlParserCtxt** %4, align 8, !dbg !121
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !124
  %22 = icmp ne %struct._xmlParserCtxt* %21, null, !dbg !124
  br i1 %22, label %24, label %23, !dbg !126

23:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !127
  br label %79, !dbg !127

24:                                               ; preds = %0
  %25 = load i32, i32* %3, align 4, !dbg !128
  %26 = and i32 %25, 1, !dbg !130
  %27 = icmp ne i32 %26, 0, !dbg !130
  br i1 %27, label %28, label %37, !dbg !131

28:                                               ; preds = %24
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !132
  %30 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !134
  %31 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %30, i32 0, i32 0, !dbg !135
  %32 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %31, align 8, !dbg !135
  %33 = bitcast %struct._xmlSAXHandler* %32 to i8*, !dbg !136
  %34 = call i8* @memcpy(i8* %33, i8* getelementptr inbounds (%struct._xmlSAXHandler, %struct._xmlSAXHandler* @debugSAXHandler, i32 0, i32 0, i32 0), i64 256), !dbg !136
  %35 = load i32, i32* %3, align 4, !dbg !137
  %36 = sub nsw i32 %35, 1, !dbg !137
  store i32 %36, i32* %3, align 4, !dbg !137
  br label %43, !dbg !138

37:                                               ; preds = %24
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !139
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 0, !dbg !141
  %40 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %39, align 8, !dbg !141
  %41 = bitcast %struct._xmlSAXHandler* %40 to i8*, !dbg !142
  %42 = call i8* @memcpy(i8* %41, i8* getelementptr inbounds (%struct._xmlSAXHandler, %struct._xmlSAXHandler* @debugSAX2Handler, i32 0, i32 0, i32 0), i64 256), !dbg !142
  br label %43

43:                                               ; preds = %37, %28
  %44 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !143
  %45 = load i32, i32* %3, align 4, !dbg !144
  call void @xmlCtxtUseOptions(%struct._xmlParserCtxt* noundef %44, i32 noundef %45), !dbg !145
  %46 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !146
  call void @xmlParseDocument(%struct._xmlParserCtxt* noundef %46), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !150
  %48 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %47, i32 0, i32 2, !dbg !151
  %49 = load i32, i32* %48, align 8, !dbg !151
  %50 = icmp ne i32 %49, 0, !dbg !150
  br i1 %50, label %51, label %52, !dbg !150

51:                                               ; preds = %43
  br label %56, !dbg !150

52:                                               ; preds = %43
  %53 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !152
  %54 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %53, i32 0, i32 3, !dbg !153
  %55 = load i32, i32* %54, align 4, !dbg !153
  br label %56, !dbg !150

56:                                               ; preds = %52, %51
  %57 = phi i32 [ 0, %51 ], [ %55, %52 ], !dbg !150
  store i32 %57, i32* %5, align 4, !dbg !149
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !154
  %59 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %58, i32 0, i32 1, !dbg !156
  %60 = load %struct._xmlDoc*, %struct._xmlDoc** %59, align 8, !dbg !156
  %61 = icmp ne %struct._xmlDoc* %60, null, !dbg !154
  br i1 %61, label %62, label %66, !dbg !157

62:                                               ; preds = %56
  %63 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !158
  %64 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %63, i32 0, i32 1, !dbg !160
  %65 = load %struct._xmlDoc*, %struct._xmlDoc** %64, align 8, !dbg !160
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %65), !dbg !161
  br label %66, !dbg !162

66:                                               ; preds = %62, %56
  %67 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !163
  %68 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %67, i32 0, i32 0, !dbg !165
  %69 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %68, align 8, !dbg !165
  %70 = icmp ne %struct._xmlSAXHandler* %69, null, !dbg !163
  br i1 %70, label %71, label %76, !dbg !166

71:                                               ; preds = %66
  %72 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !167
  %73 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %72, i32 0, i32 0, !dbg !168
  %74 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %73, align 8, !dbg !168
  %75 = bitcast %struct._xmlSAXHandler* %74 to i8*, !dbg !167
  call void @free(i8* noundef %75) #7, !dbg !169
  br label %76, !dbg !169

76:                                               ; preds = %71, %66
  %77 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !170
  %78 = bitcast %struct._xmlParserCtxt* %77 to i8*, !dbg !170
  call void @free(i8* noundef %78) #7, !dbg !171
  store i32 0, i32* %1, align 4, !dbg !172
  br label %79, !dbg !172

79:                                               ; preds = %76, %23
  %80 = load i32, i32* %1, align 4, !dbg !173
  ret i32 %80, !dbg !173
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !174 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !184, metadata !DIExpression()), !dbg !185
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %7, metadata !190, metadata !DIExpression()), !dbg !192
  %9 = load i8*, i8** %4, align 8, !dbg !193
  store i8* %9, i8** %7, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i8** %8, metadata !194, metadata !DIExpression()), !dbg !195
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
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39, !39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debugSAXHandler", scope: !2, file: !3, line: 27, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/126_runtest.c_1792_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d54ea0e95c8e70976ee944d7296935ed")
!4 = !{!5, !11}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !3, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !3, line: 15, size: 192, elements: !9)
!9 = !{!10, !20, !24, !26}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !8, file: !3, line: 16, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !3, line: 12, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !3, line: 22, size: 2048, elements: !14)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !13, file: !3, line: 23, baseType: !16, size: 2048)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !8, file: !3, line: 17, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !3, line: 13, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 13, flags: DIFlagFwdDecl)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "wellFormed", scope: !8, file: !3, line: 18, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !8, file: !3, line: 19, baseType: !25, size: 32, offset: 160)
!27 = !{!0, !28}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "debugSAX2Handler", scope: !2, file: !3, line: 28, type: !12, isLocal: false, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"Ubuntu clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "xmlCreateFileParserCtxt", scope: !3, file: !3, line: 31, type: !41, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!41 = !DISubroutineType(types: !42)
!42 = !{!5, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!45 = !{}
!46 = !DILocalVariable(name: "filename", arg: 1, scope: !40, file: !3, line: 31, type: !43)
!47 = !DILocation(line: 31, column: 54, scope: !40)
!48 = !DILocalVariable(name: "ctxt", scope: !40, file: !3, line: 32, type: !5)
!49 = !DILocation(line: 32, column: 22, scope: !40)
!50 = !DILocation(line: 32, column: 47, scope: !40)
!51 = !DILocation(line: 32, column: 29, scope: !40)
!52 = !DILocation(line: 33, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !3, line: 33, column: 9)
!54 = !DILocation(line: 33, column: 9, scope: !40)
!55 = !DILocation(line: 33, column: 16, scope: !53)
!56 = !DILocation(line: 35, column: 34, scope: !40)
!57 = !DILocation(line: 35, column: 17, scope: !40)
!58 = !DILocation(line: 35, column: 5, scope: !40)
!59 = !DILocation(line: 35, column: 11, scope: !40)
!60 = !DILocation(line: 35, column: 15, scope: !40)
!61 = !DILocation(line: 36, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !40, file: !3, line: 36, column: 9)
!63 = !DILocation(line: 36, column: 16, scope: !62)
!64 = !DILocation(line: 36, column: 9, scope: !40)
!65 = !DILocation(line: 37, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 36, column: 21)
!67 = !DILocation(line: 37, column: 9, scope: !66)
!68 = !DILocation(line: 38, column: 9, scope: !66)
!69 = !DILocation(line: 41, column: 5, scope: !40)
!70 = !DILocation(line: 41, column: 11, scope: !40)
!71 = !DILocation(line: 41, column: 17, scope: !40)
!72 = !DILocation(line: 42, column: 5, scope: !40)
!73 = !DILocation(line: 42, column: 11, scope: !40)
!74 = !DILocation(line: 42, column: 22, scope: !40)
!75 = !DILocation(line: 43, column: 5, scope: !40)
!76 = !DILocation(line: 43, column: 11, scope: !40)
!77 = !DILocation(line: 43, column: 17, scope: !40)
!78 = !DILocation(line: 44, column: 12, scope: !40)
!79 = !DILocation(line: 44, column: 5, scope: !40)
!80 = !DILocation(line: 45, column: 1, scope: !40)
!81 = distinct !DISubprogram(name: "xmlCtxtUseOptions", scope: !3, file: !3, line: 47, type: !82, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !5, !25}
!84 = !DILocalVariable(name: "ctxt", arg: 1, scope: !81, file: !3, line: 47, type: !5)
!85 = !DILocation(line: 47, column: 41, scope: !81)
!86 = !DILocalVariable(name: "options", arg: 2, scope: !81, file: !3, line: 47, type: !25)
!87 = !DILocation(line: 47, column: 51, scope: !81)
!88 = !DILocation(line: 49, column: 1, scope: !81)
!89 = distinct !DISubprogram(name: "xmlParseDocument", scope: !3, file: !3, line: 51, type: !90, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !5}
!92 = !DILocalVariable(name: "ctxt", arg: 1, scope: !89, file: !3, line: 51, type: !5)
!93 = !DILocation(line: 51, column: 40, scope: !89)
!94 = !DILocation(line: 53, column: 1, scope: !89)
!95 = distinct !DISubprogram(name: "xmlFreeDoc", scope: !3, file: !3, line: 55, type: !96, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !21}
!98 = !DILocalVariable(name: "doc", arg: 1, scope: !95, file: !3, line: 55, type: !21)
!99 = !DILocation(line: 55, column: 25, scope: !95)
!100 = !DILocation(line: 57, column: 1, scope: !95)
!101 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !102, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !45)
!102 = !DISubroutineType(types: !103)
!103 = !{!25}
!104 = !DILocalVariable(name: "filename", scope: !101, file: !3, line: 62, type: !16)
!105 = !DILocation(line: 62, column: 10, scope: !101)
!106 = !DILocalVariable(name: "options", scope: !101, file: !3, line: 63, type: !25)
!107 = !DILocation(line: 63, column: 9, scope: !101)
!108 = !DILocation(line: 65, column: 24, scope: !101)
!109 = !DILocation(line: 65, column: 5, scope: !101)
!110 = !DILocation(line: 66, column: 24, scope: !101)
!111 = !DILocation(line: 66, column: 5, scope: !101)
!112 = !DILocation(line: 69, column: 17, scope: !101)
!113 = !DILocation(line: 69, column: 31, scope: !101)
!114 = !DILocation(line: 69, column: 5, scope: !101)
!115 = !DILocation(line: 73, column: 18, scope: !101)
!116 = !DILocation(line: 73, column: 26, scope: !101)
!117 = !DILocation(line: 73, column: 44, scope: !101)
!118 = !DILocation(line: 73, column: 17, scope: !101)
!119 = !DILocation(line: 73, column: 5, scope: !101)
!120 = !DILocalVariable(name: "ctxt", scope: !101, file: !3, line: 76, type: !5)
!121 = !DILocation(line: 76, column: 22, scope: !101)
!122 = !DILocation(line: 76, column: 53, scope: !101)
!123 = !DILocation(line: 76, column: 29, scope: !101)
!124 = !DILocation(line: 77, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !101, file: !3, line: 77, column: 9)
!126 = !DILocation(line: 77, column: 9, scope: !101)
!127 = !DILocation(line: 77, column: 16, scope: !125)
!128 = !DILocation(line: 80, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !101, file: !3, line: 80, column: 9)
!130 = !DILocation(line: 80, column: 17, scope: !129)
!131 = !DILocation(line: 80, column: 9, scope: !101)
!132 = !DILocation(line: 86, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !3, line: 80, column: 35)
!134 = !DILocation(line: 88, column: 16, scope: !133)
!135 = !DILocation(line: 88, column: 22, scope: !133)
!136 = !DILocation(line: 88, column: 9, scope: !133)
!137 = !DILocation(line: 89, column: 17, scope: !133)
!138 = !DILocation(line: 90, column: 5, scope: !133)
!139 = !DILocation(line: 91, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !129, file: !3, line: 90, column: 12)
!141 = !DILocation(line: 91, column: 22, scope: !140)
!142 = !DILocation(line: 91, column: 9, scope: !140)
!143 = !DILocation(line: 95, column: 23, scope: !101)
!144 = !DILocation(line: 95, column: 29, scope: !101)
!145 = !DILocation(line: 95, column: 5, scope: !101)
!146 = !DILocation(line: 96, column: 22, scope: !101)
!147 = !DILocation(line: 96, column: 5, scope: !101)
!148 = !DILocalVariable(name: "ret", scope: !101, file: !3, line: 97, type: !25)
!149 = !DILocation(line: 97, column: 9, scope: !101)
!150 = !DILocation(line: 97, column: 15, scope: !101)
!151 = !DILocation(line: 97, column: 21, scope: !101)
!152 = !DILocation(line: 97, column: 38, scope: !101)
!153 = !DILocation(line: 97, column: 44, scope: !101)
!154 = !DILocation(line: 98, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !101, file: !3, line: 98, column: 9)
!156 = !DILocation(line: 98, column: 15, scope: !155)
!157 = !DILocation(line: 98, column: 9, scope: !101)
!158 = !DILocation(line: 99, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 98, column: 22)
!160 = !DILocation(line: 99, column: 26, scope: !159)
!161 = !DILocation(line: 99, column: 9, scope: !159)
!162 = !DILocation(line: 100, column: 5, scope: !159)
!163 = !DILocation(line: 103, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !101, file: !3, line: 103, column: 9)
!165 = !DILocation(line: 103, column: 15, scope: !164)
!166 = !DILocation(line: 103, column: 9, scope: !101)
!167 = !DILocation(line: 103, column: 25, scope: !164)
!168 = !DILocation(line: 103, column: 31, scope: !164)
!169 = !DILocation(line: 103, column: 20, scope: !164)
!170 = !DILocation(line: 104, column: 10, scope: !101)
!171 = !DILocation(line: 104, column: 5, scope: !101)
!172 = !DILocation(line: 106, column: 5, scope: !101)
!173 = !DILocation(line: 107, column: 1, scope: !101)
!174 = distinct !DISubprogram(name: "memcpy", scope: !175, file: !175, line: 12, type: !176, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !45)
!175 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !178, !179, !181}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !182, line: 46, baseType: !183)
!182 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!183 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DILocalVariable(name: "destaddr", arg: 1, scope: !174, file: !175, line: 12, type: !178)
!185 = !DILocation(line: 12, column: 20, scope: !174)
!186 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !174, file: !175, line: 12, type: !179)
!187 = !DILocation(line: 12, column: 42, scope: !174)
!188 = !DILocalVariable(name: "len", arg: 3, scope: !174, file: !175, line: 12, type: !181)
!189 = !DILocation(line: 12, column: 58, scope: !174)
!190 = !DILocalVariable(name: "dest", scope: !174, file: !175, line: 13, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!192 = !DILocation(line: 13, column: 9, scope: !174)
!193 = !DILocation(line: 13, column: 16, scope: !174)
!194 = !DILocalVariable(name: "src", scope: !174, file: !175, line: 14, type: !43)
!195 = !DILocation(line: 14, column: 15, scope: !174)
!196 = !DILocation(line: 14, column: 21, scope: !174)
!197 = !DILocation(line: 16, column: 3, scope: !174)
!198 = !DILocation(line: 16, column: 13, scope: !174)
!199 = !DILocation(line: 16, column: 16, scope: !174)
!200 = !DILocation(line: 17, column: 19, scope: !174)
!201 = !DILocation(line: 17, column: 15, scope: !174)
!202 = !DILocation(line: 17, column: 10, scope: !174)
!203 = !DILocation(line: 17, column: 13, scope: !174)
!204 = distinct !{!204, !197, !200, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 18, column: 10, scope: !174)
!207 = !DILocation(line: 18, column: 3, scope: !174)
