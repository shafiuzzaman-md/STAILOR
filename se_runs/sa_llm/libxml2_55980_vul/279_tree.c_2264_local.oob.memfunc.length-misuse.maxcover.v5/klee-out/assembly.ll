; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/279_tree.c_2264_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/279_tree.c_2264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque

@__xmlRegisterCallbacks = dso_local global i32 0, align 4, !dbg !0
@xmlRegisterNodeDefaultValue = dso_local global void (%struct._xmlNode*)* null, align 8, !dbg !43
@.str = private unnamed_addr constant [14 x i8] c"building node\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/279_tree.c_2264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !60 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !67, metadata !DIExpression()), !dbg !68
  %3 = load i64, i64* %2, align 8, !dbg !69
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !70
  ret i8* %4, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !72 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !75, metadata !DIExpression()), !dbg !76
  %6 = load i8*, i8** %3, align 8, !dbg !77
  %7 = icmp eq i8* %6, null, !dbg !79
  br i1 %7, label %8, label %9, !dbg !80

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !82, metadata !DIExpression()), !dbg !83
  %10 = load i8*, i8** %3, align 8, !dbg !84
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !85
  %12 = add i64 %11, 1, !dbg !86
  store i64 %12, i64* %4, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i8** %5, metadata !87, metadata !DIExpression()), !dbg !88
  %13 = load i64, i64* %4, align 8, !dbg !89
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !90
  store i8* %14, i8** %5, align 8, !dbg !88
  %15 = load i8*, i8** %5, align 8, !dbg !91
  %16 = icmp ne i8* %15, null, !dbg !91
  br i1 %16, label %17, label %22, !dbg !93

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !94
  %19 = load i8*, i8** %3, align 8, !dbg !95
  %20 = load i64, i64* %4, align 8, !dbg !96
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !97
  br label %22, !dbg !97

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !98
  store i8* %23, i8** %2, align 8, !dbg !99
  br label %24, !dbg !99

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !100
  ret i8* %25, !dbg !100
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !101 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !104, metadata !DIExpression()), !dbg !105
  ret void, !dbg !106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef %0, i8* noundef %1) #0 !dbg !107 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !110, metadata !DIExpression()), !dbg !111
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !114, metadata !DIExpression()), !dbg !115
  %7 = call i8* @xmlMalloc(i64 noundef 120), !dbg !116
  %8 = bitcast i8* %7 to %struct._xmlNode*, !dbg !117
  store %struct._xmlNode* %8, %struct._xmlNode** %6, align 8, !dbg !118
  %9 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !119
  %10 = icmp eq %struct._xmlNode* %9, null, !dbg !121
  br i1 %10, label %11, label %12, !dbg !122

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !123
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !125
  br label %35, !dbg !125

12:                                               ; preds = %2
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !126
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !127
  %15 = call i8* @memset(i8* %14, i32 0, i64 120), !dbg !127
  %16 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !128
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 1, !dbg !129
  store i32 1, i32* %17, align 8, !dbg !130
  %18 = load i8*, i8** %5, align 8, !dbg !131
  %19 = call i8* @xmlStrdup(i8* noundef %18), !dbg !132
  %20 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !133
  %21 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %20, i32 0, i32 2, !dbg !134
  store i8* %19, i8** %21, align 8, !dbg !135
  %22 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !136
  %23 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !137
  %24 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %23, i32 0, i32 9, !dbg !138
  store %struct._xmlNs* %22, %struct._xmlNs** %24, align 8, !dbg !139
  %25 = load i32, i32* @__xmlRegisterCallbacks, align 4, !dbg !140
  %26 = icmp ne i32 %25, 0, !dbg !142
  br i1 %26, label %27, label %33, !dbg !143

27:                                               ; preds = %12
  %28 = load void (%struct._xmlNode*)*, void (%struct._xmlNode*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !144
  %29 = icmp ne void (%struct._xmlNode*)* %28, null, !dbg !145
  br i1 %29, label %30, label %33, !dbg !146

30:                                               ; preds = %27
  %31 = load void (%struct._xmlNode*)*, void (%struct._xmlNode*)** @xmlRegisterNodeDefaultValue, align 8, !dbg !147
  %32 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !148
  call void %31(%struct._xmlNode* noundef %32), !dbg !147
  br label %33, !dbg !147

33:                                               ; preds = %30, %27, %12
  %34 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !149
  store %struct._xmlNode* %34, %struct._xmlNode** %3, align 8, !dbg !150
  br label %35, !dbg !150

35:                                               ; preds = %33, %11
  %36 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !151
  ret %struct._xmlNode* %36, !dbg !151
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !152 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !155, metadata !DIExpression()), !dbg !159
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !160
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !161
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !162
  %6 = load i8, i8* %5, align 1, !dbg !162
  %7 = sext i8 %6 to i32, !dbg !162
  %8 = icmp eq i32 %7, 0, !dbg !163
  %9 = zext i1 %8 to i32, !dbg !163
  %10 = sext i32 %9 to i64, !dbg !162
  call void @klee_assume(i64 noundef %10), !dbg !164
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !165, metadata !DIExpression()), !dbg !166
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !167
  %12 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef null, i8* noundef %11), !dbg !168
  store %struct._xmlNode* %12, %struct._xmlNode** %3, align 8, !dbg !166
  %13 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !169
  %14 = icmp ne %struct._xmlNode* %13, null, !dbg !171
  br i1 %14, label %15, label %17, !dbg !172

15:                                               ; preds = %0
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  br label %17, !dbg !175

17:                                               ; preds = %15, %0
  %18 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !176
  %19 = icmp ne %struct._xmlNode* %18, null, !dbg !176
  br i1 %19, label %20, label %26, !dbg !178

20:                                               ; preds = %17
  %21 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !179
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %21, i32 0, i32 2, !dbg !181
  %23 = load i8*, i8** %22, align 8, !dbg !181
  call void @free(i8* noundef %23) #9, !dbg !182
  %24 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !183
  %25 = bitcast %struct._xmlNode* %24 to i8*, !dbg !183
  call void @free(i8* noundef %25) #9, !dbg !184
  br label %26, !dbg !185

26:                                               ; preds = %20, %17
  ret i32 0, !dbg !186
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !187 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !193, metadata !DIExpression()), !dbg !194
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !195, metadata !DIExpression()), !dbg !196
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i8** %7, metadata !199, metadata !DIExpression()), !dbg !200
  %9 = load i8*, i8** %4, align 8, !dbg !201
  store i8* %9, i8** %7, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata i8** %8, metadata !202, metadata !DIExpression()), !dbg !203
  %10 = load i8*, i8** %5, align 8, !dbg !204
  store i8* %10, i8** %8, align 8, !dbg !203
  br label %11, !dbg !205

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !206
  %13 = add i64 %12, -1, !dbg !206
  store i64 %13, i64* %6, align 8, !dbg !206
  %14 = icmp ugt i64 %12, 0, !dbg !207
  br i1 %14, label %15, label %21, !dbg !205

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !208
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !208
  store i8* %17, i8** %8, align 8, !dbg !208
  %18 = load i8, i8* %16, align 1, !dbg !209
  %19 = load i8*, i8** %7, align 8, !dbg !210
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !210
  store i8* %20, i8** %7, align 8, !dbg !210
  store i8 %18, i8* %19, align 1, !dbg !211
  br label %11, !dbg !205, !llvm.loop !212

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !214
  ret i8* %22, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !216 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !220, metadata !DIExpression()), !dbg !221
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !222, metadata !DIExpression()), !dbg !223
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata i8** %7, metadata !226, metadata !DIExpression()), !dbg !227
  %8 = load i8*, i8** %4, align 8, !dbg !228
  store i8* %8, i8** %7, align 8, !dbg !227
  br label %9, !dbg !229

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !230
  %11 = add i64 %10, -1, !dbg !230
  store i64 %11, i64* %6, align 8, !dbg !230
  %12 = icmp ugt i64 %10, 0, !dbg !231
  br i1 %12, label %13, label %18, !dbg !229

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !232
  %15 = trunc i32 %14 to i8, !dbg !232
  %16 = load i8*, i8** %7, align 8, !dbg !233
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !233
  store i8* %17, i8** %7, align 8, !dbg !233
  store i8 %15, i8* %16, align 1, !dbg !234
  br label %9, !dbg !229, !llvm.loop !235

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !236
  ret i8* %19, !dbg !237
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59, !59, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__xmlRegisterCallbacks", scope: !2, file: !3, line: 54, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/279_tree.c_2264_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ae3834007cdb79ad9420060c74013838")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 15, size: 960, elements: !12)
!12 = !{!13, !14, !16, !19, !21, !22, !23, !24, !25, !28, !33, !34, !37, !38, !39, !41}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !11, file: !3, line: 16, baseType: !5, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !3, line: 17, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !3, line: 18, baseType: !17, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !11, file: !3, line: 19, baseType: !20, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !11, file: !3, line: 20, baseType: !20, size: 64, offset: 256)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !11, file: !3, line: 21, baseType: !20, size: 64, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !3, line: 22, baseType: !20, size: 64, offset: 384)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !11, file: !3, line: 23, baseType: !20, size: 64, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !11, file: !3, line: 24, baseType: !26, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 24, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !11, file: !3, line: 25, baseType: !29, size: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !3, line: 13, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !3, line: 12, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 12, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !11, file: !3, line: 26, baseType: !6, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !11, file: !3, line: 27, baseType: !35, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !3, line: 27, flags: DIFlagFwdDecl)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !11, file: !3, line: 28, baseType: !29, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !11, file: !3, line: 29, baseType: !5, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !11, file: !3, line: 30, baseType: !40, size: 16, offset: 896)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !11, file: !3, line: 31, baseType: !40, size: 16, offset: 912)
!42 = !{!0, !43}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "xmlRegisterNodeDefaultValue", scope: !2, file: !3, line: 55, type: !45, isLocal: false, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !8}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!52 = !{i32 7, !"Dwarf Version", i32 5}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"Ubuntu clang version 14.0.6"}
!60 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 35, type: !61, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !66)
!61 = !DISubroutineType(types: !62)
!62 = !{!5, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !{}
!67 = !DILocalVariable(name: "size", arg: 1, scope: !60, file: !3, line: 35, type: !63)
!68 = !DILocation(line: 35, column: 24, scope: !60)
!69 = !DILocation(line: 36, column: 19, scope: !60)
!70 = !DILocation(line: 36, column: 12, scope: !60)
!71 = !DILocation(line: 36, column: 5, scope: !60)
!72 = distinct !DISubprogram(name: "xmlStrdup", scope: !3, file: !3, line: 40, type: !73, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !66)
!73 = !DISubroutineType(types: !74)
!74 = !{!6, !17}
!75 = !DILocalVariable(name: "cur", arg: 1, scope: !72, file: !3, line: 40, type: !17)
!76 = !DILocation(line: 40, column: 29, scope: !72)
!77 = !DILocation(line: 41, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !3, line: 41, column: 9)
!79 = !DILocation(line: 41, column: 13, scope: !78)
!80 = !DILocation(line: 41, column: 9, scope: !72)
!81 = !DILocation(line: 41, column: 22, scope: !78)
!82 = !DILocalVariable(name: "len", scope: !72, file: !3, line: 42, type: !63)
!83 = !DILocation(line: 42, column: 12, scope: !72)
!84 = !DILocation(line: 42, column: 25, scope: !72)
!85 = !DILocation(line: 42, column: 18, scope: !72)
!86 = !DILocation(line: 42, column: 30, scope: !72)
!87 = !DILocalVariable(name: "res", scope: !72, file: !3, line: 43, type: !6)
!88 = !DILocation(line: 43, column: 11, scope: !72)
!89 = !DILocation(line: 43, column: 31, scope: !72)
!90 = !DILocation(line: 43, column: 24, scope: !72)
!91 = !DILocation(line: 44, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !72, file: !3, line: 44, column: 9)
!93 = !DILocation(line: 44, column: 9, scope: !72)
!94 = !DILocation(line: 44, column: 21, scope: !92)
!95 = !DILocation(line: 44, column: 26, scope: !92)
!96 = !DILocation(line: 44, column: 31, scope: !92)
!97 = !DILocation(line: 44, column: 14, scope: !92)
!98 = !DILocation(line: 45, column: 12, scope: !72)
!99 = !DILocation(line: 45, column: 5, scope: !72)
!100 = !DILocation(line: 46, column: 1, scope: !72)
!101 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 49, type: !102, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !66)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !17}
!104 = !DILocalVariable(name: "msg", arg: 1, scope: !101, file: !3, line: 49, type: !17)
!105 = !DILocation(line: 49, column: 35, scope: !101)
!106 = !DILocation(line: 51, column: 1, scope: !101)
!107 = distinct !DISubprogram(name: "xmlNewNode", scope: !3, file: !3, line: 58, type: !108, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !66)
!108 = !DISubroutineType(types: !109)
!109 = !{!8, !29, !17}
!110 = !DILocalVariable(name: "ns", arg: 1, scope: !107, file: !3, line: 58, type: !29)
!111 = !DILocation(line: 58, column: 32, scope: !107)
!112 = !DILocalVariable(name: "name", arg: 2, scope: !107, file: !3, line: 58, type: !17)
!113 = !DILocation(line: 58, column: 48, scope: !107)
!114 = !DILocalVariable(name: "cur", scope: !107, file: !3, line: 59, type: !8)
!115 = !DILocation(line: 59, column: 16, scope: !107)
!116 = !DILocation(line: 64, column: 24, scope: !107)
!117 = !DILocation(line: 64, column: 11, scope: !107)
!118 = !DILocation(line: 64, column: 9, scope: !107)
!119 = !DILocation(line: 65, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !107, file: !3, line: 65, column: 9)
!121 = !DILocation(line: 65, column: 13, scope: !120)
!122 = !DILocation(line: 65, column: 9, scope: !107)
!123 = !DILocation(line: 66, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 65, column: 22)
!125 = !DILocation(line: 67, column: 9, scope: !124)
!126 = !DILocation(line: 70, column: 12, scope: !107)
!127 = !DILocation(line: 70, column: 5, scope: !107)
!128 = !DILocation(line: 71, column: 5, scope: !107)
!129 = !DILocation(line: 71, column: 10, scope: !107)
!130 = !DILocation(line: 71, column: 15, scope: !107)
!131 = !DILocation(line: 73, column: 27, scope: !107)
!132 = !DILocation(line: 73, column: 17, scope: !107)
!133 = !DILocation(line: 73, column: 5, scope: !107)
!134 = !DILocation(line: 73, column: 10, scope: !107)
!135 = !DILocation(line: 73, column: 15, scope: !107)
!136 = !DILocation(line: 74, column: 15, scope: !107)
!137 = !DILocation(line: 74, column: 5, scope: !107)
!138 = !DILocation(line: 74, column: 10, scope: !107)
!139 = !DILocation(line: 74, column: 13, scope: !107)
!140 = !DILocation(line: 76, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !107, file: !3, line: 76, column: 9)
!142 = !DILocation(line: 76, column: 9, scope: !141)
!143 = !DILocation(line: 76, column: 34, scope: !141)
!144 = !DILocation(line: 76, column: 38, scope: !141)
!145 = !DILocation(line: 76, column: 37, scope: !141)
!146 = !DILocation(line: 76, column: 9, scope: !107)
!147 = !DILocation(line: 77, column: 9, scope: !141)
!148 = !DILocation(line: 77, column: 37, scope: !141)
!149 = !DILocation(line: 78, column: 12, scope: !107)
!150 = !DILocation(line: 78, column: 5, scope: !107)
!151 = !DILocation(line: 79, column: 1, scope: !107)
!152 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !153, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !66)
!153 = !DISubroutineType(types: !154)
!154 = !{!15}
!155 = !DILocalVariable(name: "name", scope: !152, file: !3, line: 83, type: !156)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 256)
!159 = !DILocation(line: 83, column: 10, scope: !152)
!160 = !DILocation(line: 84, column: 24, scope: !152)
!161 = !DILocation(line: 84, column: 5, scope: !152)
!162 = !DILocation(line: 86, column: 17, scope: !152)
!163 = !DILocation(line: 86, column: 27, scope: !152)
!164 = !DILocation(line: 86, column: 5, scope: !152)
!165 = !DILocalVariable(name: "node", scope: !152, file: !3, line: 89, type: !8)
!166 = !DILocation(line: 89, column: 16, scope: !152)
!167 = !DILocation(line: 89, column: 40, scope: !152)
!168 = !DILocation(line: 89, column: 23, scope: !152)
!169 = !DILocation(line: 98, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !152, file: !3, line: 98, column: 9)
!171 = !DILocation(line: 98, column: 14, scope: !170)
!172 = !DILocation(line: 98, column: 9, scope: !152)
!173 = !DILocation(line: 104, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 98, column: 23)
!175 = !DILocation(line: 105, column: 5, scope: !174)
!176 = !DILocation(line: 108, column: 9, scope: !177)
!177 = distinct !DILexicalBlock(scope: !152, file: !3, line: 108, column: 9)
!178 = !DILocation(line: 108, column: 9, scope: !152)
!179 = !DILocation(line: 109, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 108, column: 15)
!181 = !DILocation(line: 109, column: 27, scope: !180)
!182 = !DILocation(line: 109, column: 9, scope: !180)
!183 = !DILocation(line: 110, column: 14, scope: !180)
!184 = !DILocation(line: 110, column: 9, scope: !180)
!185 = !DILocation(line: 111, column: 5, scope: !180)
!186 = !DILocation(line: 113, column: 5, scope: !152)
!187 = distinct !DISubprogram(name: "memcpy", scope: !188, file: !188, line: 12, type: !189, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !66)
!188 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!189 = !DISubroutineType(types: !190)
!190 = !{!5, !5, !191, !63}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!193 = !DILocalVariable(name: "destaddr", arg: 1, scope: !187, file: !188, line: 12, type: !5)
!194 = !DILocation(line: 12, column: 20, scope: !187)
!195 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !187, file: !188, line: 12, type: !191)
!196 = !DILocation(line: 12, column: 42, scope: !187)
!197 = !DILocalVariable(name: "len", arg: 3, scope: !187, file: !188, line: 12, type: !63)
!198 = !DILocation(line: 12, column: 58, scope: !187)
!199 = !DILocalVariable(name: "dest", scope: !187, file: !188, line: 13, type: !6)
!200 = !DILocation(line: 13, column: 9, scope: !187)
!201 = !DILocation(line: 13, column: 16, scope: !187)
!202 = !DILocalVariable(name: "src", scope: !187, file: !188, line: 14, type: !17)
!203 = !DILocation(line: 14, column: 15, scope: !187)
!204 = !DILocation(line: 14, column: 21, scope: !187)
!205 = !DILocation(line: 16, column: 3, scope: !187)
!206 = !DILocation(line: 16, column: 13, scope: !187)
!207 = !DILocation(line: 16, column: 16, scope: !187)
!208 = !DILocation(line: 17, column: 19, scope: !187)
!209 = !DILocation(line: 17, column: 15, scope: !187)
!210 = !DILocation(line: 17, column: 10, scope: !187)
!211 = !DILocation(line: 17, column: 13, scope: !187)
!212 = distinct !{!212, !205, !208, !213}
!213 = !{!"llvm.loop.mustprogress"}
!214 = !DILocation(line: 18, column: 10, scope: !187)
!215 = !DILocation(line: 18, column: 3, scope: !187)
!216 = distinct !DISubprogram(name: "memset", scope: !217, file: !217, line: 12, type: !218, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !66)
!217 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!218 = !DISubroutineType(types: !219)
!219 = !{!5, !5, !15, !63}
!220 = !DILocalVariable(name: "dst", arg: 1, scope: !216, file: !217, line: 12, type: !5)
!221 = !DILocation(line: 12, column: 20, scope: !216)
!222 = !DILocalVariable(name: "s", arg: 2, scope: !216, file: !217, line: 12, type: !15)
!223 = !DILocation(line: 12, column: 29, scope: !216)
!224 = !DILocalVariable(name: "count", arg: 3, scope: !216, file: !217, line: 12, type: !63)
!225 = !DILocation(line: 12, column: 39, scope: !216)
!226 = !DILocalVariable(name: "a", scope: !216, file: !217, line: 13, type: !6)
!227 = !DILocation(line: 13, column: 9, scope: !216)
!228 = !DILocation(line: 13, column: 13, scope: !216)
!229 = !DILocation(line: 14, column: 3, scope: !216)
!230 = !DILocation(line: 14, column: 15, scope: !216)
!231 = !DILocation(line: 14, column: 18, scope: !216)
!232 = !DILocation(line: 15, column: 12, scope: !216)
!233 = !DILocation(line: 15, column: 7, scope: !216)
!234 = !DILocation(line: 15, column: 10, scope: !216)
!235 = distinct !{!235, !229, !232, !213}
!236 = !DILocation(line: 16, column: 10, scope: !216)
!237 = !DILocation(line: 16, column: 3, scope: !216)
