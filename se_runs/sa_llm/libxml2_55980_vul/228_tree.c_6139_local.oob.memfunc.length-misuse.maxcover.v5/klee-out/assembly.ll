; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/228_tree.c_6139_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/228_tree.c_6139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i32, i8*, i8*, %struct._xmlNs* }
%struct._xmlDoc = type { i32 }
%struct._xmlNode = type { %struct._xmlNs* }

@.str = private unnamed_addr constant [20 x i8] c"searching namespace\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/228_tree.c_6139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSearchNs = private unnamed_addr constant [63 x i8] c"xmlNs *xmlSearchNs(xmlDoc *, xmlNode *, const unsigned char *)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !31 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i64, i64* %2, align 8, !dbg !40
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = load i8*, i8** %3, align 8, !dbg !48
  %7 = icmp eq i8* %6, null, !dbg !50
  br i1 %7, label %8, label %9, !dbg !51

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !52
  br label %24, !dbg !52

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !53, metadata !DIExpression()), !dbg !54
  %10 = load i8*, i8** %3, align 8, !dbg !55
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !56
  %12 = add i64 %11, 1, !dbg !57
  store i64 %12, i64* %4, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i8** %5, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = load i64, i64* %4, align 8, !dbg !60
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !61
  store i8* %14, i8** %5, align 8, !dbg !59
  %15 = load i8*, i8** %5, align 8, !dbg !62
  %16 = icmp ne i8* %15, null, !dbg !62
  br i1 %16, label %17, label %22, !dbg !64

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !65
  %19 = load i8*, i8** %3, align 8, !dbg !66
  %20 = load i64, i64* %4, align 8, !dbg !67
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !68
  br label %22, !dbg !68

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !69
  store i8* %23, i8** %2, align 8, !dbg !70
  br label %24, !dbg !70

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !71
  ret i8* %25, !dbg !71
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !72 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !75, metadata !DIExpression()), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @xmlSearchNs(%struct._xmlDoc* noundef %0, %struct._xmlNode* noundef %1, i8* noundef %2) #0 !dbg !78 {
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca %struct._xmlDoc*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlNs*, align 8
  store %struct._xmlDoc* %0, %struct._xmlDoc** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %5, metadata !94, metadata !DIExpression()), !dbg !95
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !96, metadata !DIExpression()), !dbg !97
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %8, metadata !100, metadata !DIExpression()), !dbg !101
  %9 = load i8*, i8** %7, align 8, !dbg !102
  %10 = icmp ne i8* %9, null, !dbg !104
  br i1 %10, label %11, label %45, !dbg !105

11:                                               ; preds = %3
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %5, align 8, !dbg !106
  %13 = icmp ne %struct._xmlDoc* %12, null, !dbg !107
  br i1 %13, label %14, label %45, !dbg !108

14:                                               ; preds = %11
  %15 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !109
  %16 = icmp ne %struct._xmlNode* %15, null, !dbg !110
  br i1 %16, label %17, label %45, !dbg !111

17:                                               ; preds = %14
  %18 = call i8* @xmlMalloc(i64 noundef 32), !dbg !112
  %19 = bitcast i8* %18 to %struct._xmlNs*, !dbg !114
  store %struct._xmlNs* %19, %struct._xmlNs** %8, align 8, !dbg !115
  %20 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !116
  %21 = icmp eq %struct._xmlNs* %20, null, !dbg !118
  br i1 %21, label %22, label %23, !dbg !119

22:                                               ; preds = %17
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !120
  store %struct._xmlNs* null, %struct._xmlNs** %4, align 8, !dbg !122
  br label %46, !dbg !122

23:                                               ; preds = %17
  %24 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !123
  %25 = bitcast %struct._xmlNs* %24 to i8*, !dbg !124
  %26 = call i8* @memset(i8* %25, i32 0, i64 32), !dbg !124
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.xmlSearchNs, i64 0, i64 0)), !dbg !125
  %28 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !126
  %29 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %28, i32 0, i32 0, !dbg !127
  store i32 1, i32* %29, align 8, !dbg !128
  %30 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)), !dbg !129
  %31 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !130
  %32 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %31, i32 0, i32 1, !dbg !131
  store i8* %30, i8** %32, align 8, !dbg !132
  %33 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !133
  %34 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !134
  %35 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %34, i32 0, i32 2, !dbg !135
  store i8* %33, i8** %35, align 8, !dbg !136
  %36 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !137
  %37 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %36, i32 0, i32 0, !dbg !138
  %38 = load %struct._xmlNs*, %struct._xmlNs** %37, align 8, !dbg !138
  %39 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !139
  %40 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %39, i32 0, i32 3, !dbg !140
  store %struct._xmlNs* %38, %struct._xmlNs** %40, align 8, !dbg !141
  %41 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !142
  %42 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !143
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %42, i32 0, i32 0, !dbg !144
  store %struct._xmlNs* %41, %struct._xmlNs** %43, align 8, !dbg !145
  %44 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !146
  store %struct._xmlNs* %44, %struct._xmlNs** %4, align 8, !dbg !147
  br label %46, !dbg !147

45:                                               ; preds = %14, %11, %3
  store %struct._xmlNs* null, %struct._xmlNs** %4, align 8, !dbg !148
  br label %46, !dbg !148

46:                                               ; preds = %45, %23, %22
  %47 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !149
  ret %struct._xmlNs* %47, !dbg !149
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !150 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDoc, align 4
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %2, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata [10 x i8]* %4, metadata !157, metadata !DIExpression()), !dbg !161
  %6 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !162
  store %struct._xmlNs* null, %struct._xmlNs** %6, align 8, !dbg !163
  %7 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !164
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 10, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !165
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 9, !dbg !166
  store i8 0, i8* %8, align 1, !dbg !167
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !168, metadata !DIExpression()), !dbg !169
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !170
  %10 = call %struct._xmlNs* @xmlSearchNs(%struct._xmlDoc* noundef %2, %struct._xmlNode* noundef %3, i8* noundef %9), !dbg !171
  store %struct._xmlNs* %10, %struct._xmlNs** %5, align 8, !dbg !169
  %11 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !172
  %12 = icmp ne %struct._xmlNs* %11, null, !dbg !172
  br i1 %12, label %13, label %22, !dbg !174

13:                                               ; preds = %0
  %14 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !175
  %15 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %14, i32 0, i32 1, !dbg !177
  %16 = load i8*, i8** %15, align 8, !dbg !177
  call void @free(i8* noundef %16) #9, !dbg !178
  %17 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !179
  %18 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %17, i32 0, i32 2, !dbg !180
  %19 = load i8*, i8** %18, align 8, !dbg !180
  call void @free(i8* noundef %19) #9, !dbg !181
  %20 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !182
  %21 = bitcast %struct._xmlNs* %20 to i8*, !dbg !182
  call void @free(i8* noundef %21) #9, !dbg !183
  br label %22, !dbg !184

22:                                               ; preds = %13, %0
  ret i32 0, !dbg !185
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !197
  %9 = load i8*, i8** %4, align 8, !dbg !198
  store i8* %9, i8** %7, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i8** %8, metadata !199, metadata !DIExpression()), !dbg !200
  %10 = load i8*, i8** %5, align 8, !dbg !201
  store i8* %10, i8** %8, align 8, !dbg !200
  br label %11, !dbg !202

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !203
  %13 = add i64 %12, -1, !dbg !203
  store i64 %13, i64* %6, align 8, !dbg !203
  %14 = icmp ugt i64 %12, 0, !dbg !204
  br i1 %14, label %15, label %21, !dbg !202

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !205
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !205
  store i8* %17, i8** %8, align 8, !dbg !205
  %18 = load i8, i8* %16, align 1, !dbg !206
  %19 = load i8*, i8** %7, align 8, !dbg !207
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !207
  store i8* %20, i8** %7, align 8, !dbg !207
  store i8 %18, i8* %19, align 1, !dbg !208
  br label %11, !dbg !202, !llvm.loop !209

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !211
  ret i8* %22, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !213 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !217, metadata !DIExpression()), !dbg !218
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !219, metadata !DIExpression()), !dbg !220
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %7, metadata !223, metadata !DIExpression()), !dbg !224
  %8 = load i8*, i8** %4, align 8, !dbg !225
  store i8* %8, i8** %7, align 8, !dbg !224
  br label %9, !dbg !226

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !227
  %11 = add i64 %10, -1, !dbg !227
  store i64 %11, i64* %6, align 8, !dbg !227
  %12 = icmp ugt i64 %10, 0, !dbg !228
  br i1 %12, label %13, label %18, !dbg !226

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !229
  %15 = trunc i32 %14 to i8, !dbg !229
  %16 = load i8*, i8** %7, align 8, !dbg !230
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !230
  store i8* %17, i8** %7, align 8, !dbg !230
  store i8 %15, i8* %16, align 1, !dbg !231
  br label %9, !dbg !226, !llvm.loop !232

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !233
  ret i8* %19, !dbg !234
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/228_tree.c_6139_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "884a8d0af77ddcc681f3a85f726e11af")
!2 = !{!3, !4, !7, !8, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 11, size: 256, elements: !11)
!11 = !{!12, !14, !15, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !10, file: !1, line: 12, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !10, file: !1, line: 13, baseType: !3, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !10, file: !1, line: 14, baseType: !3, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !1, line: 15, baseType: !8, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 30, type: !32, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{!3, !34}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{}
!38 = !DILocalVariable(name: "size", arg: 1, scope: !31, file: !1, line: 30, type: !34)
!39 = !DILocation(line: 30, column: 24, scope: !31)
!40 = !DILocation(line: 31, column: 19, scope: !31)
!41 = !DILocation(line: 31, column: 12, scope: !31)
!42 = !DILocation(line: 31, column: 5, scope: !31)
!43 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 34, type: !44, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !17}
!46 = !DILocalVariable(name: "str", arg: 1, scope: !43, file: !1, line: 34, type: !17)
!47 = !DILocation(line: 34, column: 29, scope: !43)
!48 = !DILocation(line: 35, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 35, column: 9)
!50 = !DILocation(line: 35, column: 13, scope: !49)
!51 = !DILocation(line: 35, column: 9, scope: !43)
!52 = !DILocation(line: 35, column: 22, scope: !49)
!53 = !DILocalVariable(name: "len", scope: !43, file: !1, line: 36, type: !34)
!54 = !DILocation(line: 36, column: 12, scope: !43)
!55 = !DILocation(line: 36, column: 38, scope: !43)
!56 = !DILocation(line: 36, column: 18, scope: !43)
!57 = !DILocation(line: 36, column: 43, scope: !43)
!58 = !DILocalVariable(name: "copy", scope: !43, file: !1, line: 37, type: !7)
!59 = !DILocation(line: 37, column: 11, scope: !43)
!60 = !DILocation(line: 37, column: 32, scope: !43)
!61 = !DILocation(line: 37, column: 25, scope: !43)
!62 = !DILocation(line: 38, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !43, file: !1, line: 38, column: 9)
!64 = !DILocation(line: 38, column: 9, scope: !43)
!65 = !DILocation(line: 38, column: 22, scope: !63)
!66 = !DILocation(line: 38, column: 28, scope: !63)
!67 = !DILocation(line: 38, column: 33, scope: !63)
!68 = !DILocation(line: 38, column: 15, scope: !63)
!69 = !DILocation(line: 39, column: 12, scope: !43)
!70 = !DILocation(line: 39, column: 5, scope: !43)
!71 = !DILocation(line: 40, column: 1, scope: !43)
!72 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 42, type: !73, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !4}
!75 = !DILocalVariable(name: "msg", arg: 1, scope: !72, file: !1, line: 42, type: !4)
!76 = !DILocation(line: 42, column: 35, scope: !72)
!77 = !DILocation(line: 44, column: 1, scope: !72)
!78 = distinct !DISubprogram(name: "xmlSearchNs", scope: !1, file: !1, line: 47, type: !79, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!79 = !DISubroutineType(types: !80)
!80 = !{!8, !81, !86, !91}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 23, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 24, size: 32, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !83, file: !1, line: 26, baseType: !13, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 18, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 19, size: 64, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !88, file: !1, line: 20, baseType: !8, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!94 = !DILocalVariable(name: "doc", arg: 1, scope: !78, file: !1, line: 47, type: !81)
!95 = !DILocation(line: 47, column: 28, scope: !78)
!96 = !DILocalVariable(name: "node", arg: 2, scope: !78, file: !1, line: 47, type: !86)
!97 = !DILocation(line: 47, column: 42, scope: !78)
!98 = !DILocalVariable(name: "name", arg: 3, scope: !78, file: !1, line: 47, type: !91)
!99 = !DILocation(line: 47, column: 69, scope: !78)
!100 = !DILocalVariable(name: "cur", scope: !78, file: !1, line: 48, type: !8)
!101 = !DILocation(line: 48, column: 12, scope: !78)
!102 = !DILocation(line: 51, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !78, file: !1, line: 51, column: 9)
!104 = !DILocation(line: 51, column: 14, scope: !103)
!105 = !DILocation(line: 51, column: 22, scope: !103)
!106 = !DILocation(line: 51, column: 25, scope: !103)
!107 = !DILocation(line: 51, column: 29, scope: !103)
!108 = !DILocation(line: 51, column: 37, scope: !103)
!109 = !DILocation(line: 51, column: 40, scope: !103)
!110 = !DILocation(line: 51, column: 45, scope: !103)
!111 = !DILocation(line: 51, column: 9, scope: !78)
!112 = !DILocation(line: 53, column: 23, scope: !113)
!113 = distinct !DILexicalBlock(scope: !103, file: !1, line: 51, column: 54)
!114 = !DILocation(line: 53, column: 15, scope: !113)
!115 = !DILocation(line: 53, column: 13, scope: !113)
!116 = !DILocation(line: 54, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 54, column: 13)
!118 = !DILocation(line: 54, column: 17, scope: !117)
!119 = !DILocation(line: 54, column: 13, scope: !113)
!120 = !DILocation(line: 55, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 54, column: 26)
!122 = !DILocation(line: 56, column: 13, scope: !121)
!123 = !DILocation(line: 60, column: 16, scope: !113)
!124 = !DILocation(line: 60, column: 9, scope: !113)
!125 = !DILocation(line: 66, column: 9, scope: !113)
!126 = !DILocation(line: 69, column: 9, scope: !113)
!127 = !DILocation(line: 69, column: 14, scope: !113)
!128 = !DILocation(line: 69, column: 19, scope: !113)
!129 = !DILocation(line: 70, column: 21, scope: !113)
!130 = !DILocation(line: 70, column: 9, scope: !113)
!131 = !DILocation(line: 70, column: 14, scope: !113)
!132 = !DILocation(line: 70, column: 19, scope: !113)
!133 = !DILocation(line: 71, column: 23, scope: !113)
!134 = !DILocation(line: 71, column: 9, scope: !113)
!135 = !DILocation(line: 71, column: 14, scope: !113)
!136 = !DILocation(line: 71, column: 21, scope: !113)
!137 = !DILocation(line: 72, column: 21, scope: !113)
!138 = !DILocation(line: 72, column: 27, scope: !113)
!139 = !DILocation(line: 72, column: 9, scope: !113)
!140 = !DILocation(line: 72, column: 14, scope: !113)
!141 = !DILocation(line: 72, column: 19, scope: !113)
!142 = !DILocation(line: 73, column: 23, scope: !113)
!143 = !DILocation(line: 73, column: 9, scope: !113)
!144 = !DILocation(line: 73, column: 15, scope: !113)
!145 = !DILocation(line: 73, column: 21, scope: !113)
!146 = !DILocation(line: 74, column: 16, scope: !113)
!147 = !DILocation(line: 74, column: 9, scope: !113)
!148 = !DILocation(line: 77, column: 5, scope: !78)
!149 = !DILocation(line: 78, column: 1, scope: !78)
!150 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !151, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!151 = !DISubroutineType(types: !152)
!152 = !{!13}
!153 = !DILocalVariable(name: "doc", scope: !150, file: !1, line: 82, type: !82)
!154 = !DILocation(line: 82, column: 12, scope: !150)
!155 = !DILocalVariable(name: "node", scope: !150, file: !1, line: 83, type: !87)
!156 = !DILocation(line: 83, column: 13, scope: !150)
!157 = !DILocalVariable(name: "name", scope: !150, file: !1, line: 84, type: !158)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 80, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 10)
!161 = !DILocation(line: 84, column: 19, scope: !150)
!162 = !DILocation(line: 87, column: 10, scope: !150)
!163 = !DILocation(line: 87, column: 16, scope: !150)
!164 = !DILocation(line: 90, column: 24, scope: !150)
!165 = !DILocation(line: 90, column: 5, scope: !150)
!166 = !DILocation(line: 93, column: 5, scope: !150)
!167 = !DILocation(line: 93, column: 26, scope: !150)
!168 = !DILocalVariable(name: "result", scope: !150, file: !1, line: 96, type: !8)
!169 = !DILocation(line: 96, column: 12, scope: !150)
!170 = !DILocation(line: 96, column: 46, scope: !150)
!171 = !DILocation(line: 96, column: 21, scope: !150)
!172 = !DILocation(line: 99, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !150, file: !1, line: 99, column: 9)
!174 = !DILocation(line: 99, column: 9, scope: !150)
!175 = !DILocation(line: 100, column: 14, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 99, column: 17)
!177 = !DILocation(line: 100, column: 22, scope: !176)
!178 = !DILocation(line: 100, column: 9, scope: !176)
!179 = !DILocation(line: 101, column: 14, scope: !176)
!180 = !DILocation(line: 101, column: 22, scope: !176)
!181 = !DILocation(line: 101, column: 9, scope: !176)
!182 = !DILocation(line: 102, column: 14, scope: !176)
!183 = !DILocation(line: 102, column: 9, scope: !176)
!184 = !DILocation(line: 103, column: 5, scope: !176)
!185 = !DILocation(line: 105, column: 5, scope: !150)
!186 = distinct !DISubprogram(name: "memcpy", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !37)
!187 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!188 = !DISubroutineType(types: !189)
!189 = !{!3, !3, !17, !34}
!190 = !DILocalVariable(name: "destaddr", arg: 1, scope: !186, file: !187, line: 12, type: !3)
!191 = !DILocation(line: 12, column: 20, scope: !186)
!192 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !186, file: !187, line: 12, type: !17)
!193 = !DILocation(line: 12, column: 42, scope: !186)
!194 = !DILocalVariable(name: "len", arg: 3, scope: !186, file: !187, line: 12, type: !34)
!195 = !DILocation(line: 12, column: 58, scope: !186)
!196 = !DILocalVariable(name: "dest", scope: !186, file: !187, line: 13, type: !7)
!197 = !DILocation(line: 13, column: 9, scope: !186)
!198 = !DILocation(line: 13, column: 16, scope: !186)
!199 = !DILocalVariable(name: "src", scope: !186, file: !187, line: 14, type: !4)
!200 = !DILocation(line: 14, column: 15, scope: !186)
!201 = !DILocation(line: 14, column: 21, scope: !186)
!202 = !DILocation(line: 16, column: 3, scope: !186)
!203 = !DILocation(line: 16, column: 13, scope: !186)
!204 = !DILocation(line: 16, column: 16, scope: !186)
!205 = !DILocation(line: 17, column: 19, scope: !186)
!206 = !DILocation(line: 17, column: 15, scope: !186)
!207 = !DILocation(line: 17, column: 10, scope: !186)
!208 = !DILocation(line: 17, column: 13, scope: !186)
!209 = distinct !{!209, !202, !205, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 18, column: 10, scope: !186)
!212 = !DILocation(line: 18, column: 3, scope: !186)
!213 = distinct !DISubprogram(name: "memset", scope: !214, file: !214, line: 12, type: !215, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !37)
!214 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!215 = !DISubroutineType(types: !216)
!216 = !{!3, !3, !13, !34}
!217 = !DILocalVariable(name: "dst", arg: 1, scope: !213, file: !214, line: 12, type: !3)
!218 = !DILocation(line: 12, column: 20, scope: !213)
!219 = !DILocalVariable(name: "s", arg: 2, scope: !213, file: !214, line: 12, type: !13)
!220 = !DILocation(line: 12, column: 29, scope: !213)
!221 = !DILocalVariable(name: "count", arg: 3, scope: !213, file: !214, line: 12, type: !34)
!222 = !DILocation(line: 12, column: 39, scope: !213)
!223 = !DILocalVariable(name: "a", scope: !213, file: !214, line: 13, type: !7)
!224 = !DILocation(line: 13, column: 9, scope: !213)
!225 = !DILocation(line: 13, column: 13, scope: !213)
!226 = !DILocation(line: 14, column: 3, scope: !213)
!227 = !DILocation(line: 14, column: 15, scope: !213)
!228 = !DILocation(line: 14, column: 18, scope: !213)
!229 = !DILocation(line: 15, column: 12, scope: !213)
!230 = !DILocation(line: 15, column: 7, scope: !213)
!231 = !DILocation(line: 15, column: 10, scope: !213)
!232 = distinct !{!232, !226, !229, !210}
!233 = !DILocation(line: 16, column: 10, scope: !213)
!234 = !DILocation(line: 16, column: 3, scope: !213)
