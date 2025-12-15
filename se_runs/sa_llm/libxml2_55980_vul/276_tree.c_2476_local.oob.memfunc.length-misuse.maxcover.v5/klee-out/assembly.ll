; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/276_tree.c_2476_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/276_tree.c_2476_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i16, i16 }
%struct._xmlDoc = type opaque
%struct._xmlAttr = type opaque
%struct._xmlNs = type opaque

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_buffer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"building text\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/276_tree.c_2476_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNewTextLen = private unnamed_addr constant [44 x i8] c"xmlNodePtr xmlNewTextLen(const char *, int)\00", align 1
@xmlStringText = internal global i8* inttoptr (i64 4 to i8*), align 8, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !51 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %3, metadata !60, metadata !DIExpression()), !dbg !61
  %4 = load i64, i64* %2, align 8, !dbg !62
  %5 = call noalias i8* @malloc(i64 noundef %4) #9, !dbg !63
  store i8* %5, i8** %3, align 8, !dbg !61
  %6 = load i8*, i8** %3, align 8, !dbg !64
  %7 = icmp ne i8* %6, null, !dbg !64
  br i1 %7, label %8, label %11, !dbg !66

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !67
  %10 = load i64, i64* %2, align 8, !dbg !69
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !70
  br label %11, !dbg !71

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !72
  ret i8* %12, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !74 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i64* %3, metadata !79, metadata !DIExpression()), !dbg !80
  %5 = load i8*, i8** %2, align 8, !dbg !81
  %6 = call i64 @strlen(i8* noundef %5) #10, !dbg !82
  %7 = add i64 %6, 1, !dbg !83
  store i64 %7, i64* %3, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i8** %4, metadata !84, metadata !DIExpression()), !dbg !85
  %8 = load i64, i64* %3, align 8, !dbg !86
  %9 = call noalias i8* @malloc(i64 noundef %8) #9, !dbg !87
  store i8* %9, i8** %4, align 8, !dbg !85
  %10 = load i8*, i8** %4, align 8, !dbg !88
  %11 = icmp ne i8* %10, null, !dbg !88
  br i1 %11, label %12, label %17, !dbg !90

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8, !dbg !91
  %14 = load i8*, i8** %2, align 8, !dbg !93
  %15 = load i64, i64* %3, align 8, !dbg !94
  %16 = call i8* @memcpy(i8* %13, i8* %14, i64 %15), !dbg !95
  br label %17, !dbg !96

17:                                               ; preds = %12, %1
  %18 = load i8*, i8** %4, align 8, !dbg !97
  ret i8* %18, !dbg !98
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !99 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !102, metadata !DIExpression()), !dbg !103
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %3, metadata !113, metadata !DIExpression()), !dbg !114
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !115
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !116
  %6 = bitcast i32* %3 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !119
  store i8 0, i8* %7, align 1, !dbg !120
  %8 = load i32, i32* %3, align 4, !dbg !121
  %9 = icmp sge i32 %8, 0, !dbg !122
  %10 = zext i1 %9 to i32, !dbg !122
  %11 = sext i32 %10 to i64, !dbg !121
  call void @klee_assume(i64 noundef %11), !dbg !123
  %12 = load i32, i32* %3, align 4, !dbg !124
  %13 = icmp slt i32 %12, 256, !dbg !125
  %14 = zext i1 %13 to i32, !dbg !125
  %15 = sext i32 %14 to i64, !dbg !124
  call void @klee_assume(i64 noundef %15), !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !127, metadata !DIExpression()), !dbg !128
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !129
  %17 = load i32, i32* %3, align 4, !dbg !130
  %18 = call %struct._xmlNode* @xmlNewTextLen(i8* noundef %16, i32 noundef %17), !dbg !131
  store %struct._xmlNode* %18, %struct._xmlNode** %4, align 8, !dbg !128
  %19 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !132
  %20 = icmp ne %struct._xmlNode* %19, null, !dbg !132
  br i1 %20, label %21, label %27, !dbg !134

21:                                               ; preds = %0
  %22 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !135
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 9, !dbg !137
  %24 = load i8*, i8** %23, align 8, !dbg !137
  call void @free(i8* noundef %24) #9, !dbg !138
  %25 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !139
  %26 = bitcast %struct._xmlNode* %25 to i8*, !dbg !139
  call void @free(i8* noundef %26) #9, !dbg !140
  br label %27, !dbg !141

27:                                               ; preds = %21, %0
  ret i32 0, !dbg !142
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlNode* @xmlNewTextLen(i8* noundef %0, i32 noundef %1) #0 !dbg !143 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlNode*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !150, metadata !DIExpression()), !dbg !151
  %7 = call i8* @xmlMalloc(i64 noundef 104), !dbg !152
  %8 = bitcast i8* %7 to %struct._xmlNode*, !dbg !153
  store %struct._xmlNode* %8, %struct._xmlNode** %6, align 8, !dbg !154
  %9 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !155
  %10 = icmp eq %struct._xmlNode* %9, null, !dbg !157
  br i1 %10, label %11, label %12, !dbg !158

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !dbg !159
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !161
  br label %31, !dbg !161

12:                                               ; preds = %2
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !162
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !163
  %15 = call i8* @memset(i8* %14, i32 0, i64 104), !dbg !163
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.xmlNewTextLen, i64 0, i64 0)), !dbg !164
  %17 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !165
  %18 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %17, i32 0, i32 1, !dbg !166
  store i32 3, i32* %18, align 8, !dbg !167
  %19 = load i8*, i8** @xmlStringText, align 8, !dbg !168
  %20 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !169
  %21 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %20, i32 0, i32 2, !dbg !170
  store i8* %19, i8** %21, align 8, !dbg !171
  %22 = load i8*, i8** %4, align 8, !dbg !172
  %23 = icmp ne i8* %22, null, !dbg !174
  br i1 %23, label %24, label %29, !dbg !175

24:                                               ; preds = %12
  %25 = load i8*, i8** %4, align 8, !dbg !176
  %26 = call i8* @xmlStrdup(i8* noundef %25), !dbg !178
  %27 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !179
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %27, i32 0, i32 9, !dbg !180
  store i8* %26, i8** %28, align 8, !dbg !181
  br label %29, !dbg !182

29:                                               ; preds = %24, %12
  %30 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !183
  store %struct._xmlNode* %30, %struct._xmlNode** %3, align 8, !dbg !184
  br label %31, !dbg !184

31:                                               ; preds = %29, %11
  %32 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !185
  ret %struct._xmlNode* %32, !dbg !185
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !192, metadata !DIExpression()), !dbg !193
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !194, metadata !DIExpression()), !dbg !195
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i8** %7, metadata !198, metadata !DIExpression()), !dbg !199
  %9 = load i8*, i8** %4, align 8, !dbg !200
  store i8* %9, i8** %7, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i8** %8, metadata !201, metadata !DIExpression()), !dbg !202
  %10 = load i8*, i8** %5, align 8, !dbg !203
  store i8* %10, i8** %8, align 8, !dbg !202
  br label %11, !dbg !204

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !205
  %13 = add i64 %12, -1, !dbg !205
  store i64 %13, i64* %6, align 8, !dbg !205
  %14 = icmp ugt i64 %12, 0, !dbg !206
  br i1 %14, label %15, label %21, !dbg !204

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !207
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !207
  store i8* %17, i8** %8, align 8, !dbg !207
  %18 = load i8, i8* %16, align 1, !dbg !208
  %19 = load i8*, i8** %7, align 8, !dbg !209
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !209
  store i8* %20, i8** %7, align 8, !dbg !209
  store i8 %18, i8* %19, align 1, !dbg !210
  br label %11, !dbg !204, !llvm.loop !211

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !213
  ret i8* %22, !dbg !214
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !215 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !219, metadata !DIExpression()), !dbg !220
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !221, metadata !DIExpression()), !dbg !222
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i8** %7, metadata !225, metadata !DIExpression()), !dbg !226
  %8 = load i8*, i8** %4, align 8, !dbg !227
  store i8* %8, i8** %7, align 8, !dbg !226
  br label %9, !dbg !228

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !229
  %11 = add i64 %10, -1, !dbg !229
  store i64 %11, i64* %6, align 8, !dbg !229
  %12 = icmp ugt i64 %10, 0, !dbg !230
  br i1 %12, label %13, label %18, !dbg !228

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !231
  %15 = trunc i32 %14 to i8, !dbg !231
  %16 = load i8*, i8** %7, align 8, !dbg !232
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !232
  store i8* %17, i8** %7, align 8, !dbg !232
  store i8 %15, i8* %16, align 1, !dbg !233
  br label %9, !dbg !228, !llvm.loop !234

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !235
  ret i8* %19, !dbg !236
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50, !50, !50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlStringText", scope: !2, file: !3, line: 35, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/276_tree.c_2476_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "59282f4587abf65bdf924946940c13dc")
!4 = !{!5, !11}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !3, line: 11, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 13, size: 832, elements: !9)
!9 = !{!10, !12, !14, !18, !20, !21, !22, !23, !24, !27, !29, !32, !35, !37}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !8, file: !3, line: 14, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !3, line: 15, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !3, line: 16, baseType: !15, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !8, file: !3, line: 17, baseType: !19, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !8, file: !3, line: 18, baseType: !19, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !8, file: !3, line: 19, baseType: !19, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !3, line: 20, baseType: !19, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !8, file: !3, line: 21, baseType: !19, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !8, file: !3, line: 22, baseType: !25, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !3, line: 22, flags: DIFlagFwdDecl)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !8, file: !3, line: 23, baseType: !28, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !8, file: !3, line: 24, baseType: !30, size: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !3, line: 24, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !8, file: !3, line: 25, baseType: !33, size: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !3, line: 25, flags: DIFlagFwdDecl)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !8, file: !3, line: 26, baseType: !36, size: 16, offset: 768)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !8, file: !3, line: 27, baseType: !36, size: 16, offset: 784)
!38 = !{!0}
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !40, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!40 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!42 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 7, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"Ubuntu clang version 14.0.6"}
!51 = distinct !DISubprogram(name: "xmlMalloc", scope: !3, file: !3, line: 60, type: !52, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !54}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !56)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!57 = !{}
!58 = !DILocalVariable(name: "size", arg: 1, scope: !51, file: !3, line: 60, type: !54)
!59 = !DILocation(line: 60, column: 24, scope: !51)
!60 = !DILocalVariable(name: "ptr", scope: !51, file: !3, line: 61, type: !11)
!61 = !DILocation(line: 61, column: 11, scope: !51)
!62 = !DILocation(line: 61, column: 24, scope: !51)
!63 = !DILocation(line: 61, column: 17, scope: !51)
!64 = !DILocation(line: 62, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !51, file: !3, line: 62, column: 9)
!66 = !DILocation(line: 62, column: 9, scope: !51)
!67 = !DILocation(line: 63, column: 28, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 62, column: 14)
!69 = !DILocation(line: 63, column: 33, scope: !68)
!70 = !DILocation(line: 63, column: 9, scope: !68)
!71 = !DILocation(line: 64, column: 5, scope: !68)
!72 = !DILocation(line: 65, column: 12, scope: !51)
!73 = !DILocation(line: 65, column: 5, scope: !51)
!74 = distinct !DISubprogram(name: "xmlStrdup", scope: !3, file: !3, line: 68, type: !75, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!75 = !DISubroutineType(types: !76)
!76 = !{!28, !15}
!77 = !DILocalVariable(name: "cur", arg: 1, scope: !74, file: !3, line: 68, type: !15)
!78 = !DILocation(line: 68, column: 29, scope: !74)
!79 = !DILocalVariable(name: "len", scope: !74, file: !3, line: 69, type: !54)
!80 = !DILocation(line: 69, column: 12, scope: !74)
!81 = !DILocation(line: 69, column: 25, scope: !74)
!82 = !DILocation(line: 69, column: 18, scope: !74)
!83 = !DILocation(line: 69, column: 30, scope: !74)
!84 = !DILocalVariable(name: "dup", scope: !74, file: !3, line: 70, type: !28)
!85 = !DILocation(line: 70, column: 11, scope: !74)
!86 = !DILocation(line: 70, column: 24, scope: !74)
!87 = !DILocation(line: 70, column: 17, scope: !74)
!88 = !DILocation(line: 71, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !74, file: !3, line: 71, column: 9)
!90 = !DILocation(line: 71, column: 9, scope: !74)
!91 = !DILocation(line: 72, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !3, line: 71, column: 14)
!93 = !DILocation(line: 72, column: 21, scope: !92)
!94 = !DILocation(line: 72, column: 26, scope: !92)
!95 = !DILocation(line: 72, column: 9, scope: !92)
!96 = !DILocation(line: 73, column: 5, scope: !92)
!97 = !DILocation(line: 74, column: 12, scope: !74)
!98 = !DILocation(line: 74, column: 5, scope: !74)
!99 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !3, file: !3, line: 77, type: !100, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !15}
!102 = !DILocalVariable(name: "extra", arg: 1, scope: !99, file: !3, line: 77, type: !15)
!103 = !DILocation(line: 77, column: 35, scope: !99)
!104 = !DILocation(line: 79, column: 1, scope: !99)
!105 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !106, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !57)
!106 = !DISubroutineType(types: !107)
!107 = !{!13}
!108 = !DILocalVariable(name: "content", scope: !105, file: !3, line: 82, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 256)
!112 = !DILocation(line: 82, column: 10, scope: !105)
!113 = !DILocalVariable(name: "len", scope: !105, file: !3, line: 83, type: !13)
!114 = !DILocation(line: 83, column: 9, scope: !105)
!115 = !DILocation(line: 86, column: 24, scope: !105)
!116 = !DILocation(line: 86, column: 5, scope: !105)
!117 = !DILocation(line: 87, column: 24, scope: !105)
!118 = !DILocation(line: 87, column: 5, scope: !105)
!119 = !DILocation(line: 90, column: 5, scope: !105)
!120 = !DILocation(line: 90, column: 18, scope: !105)
!121 = !DILocation(line: 93, column: 17, scope: !105)
!122 = !DILocation(line: 93, column: 21, scope: !105)
!123 = !DILocation(line: 93, column: 5, scope: !105)
!124 = !DILocation(line: 94, column: 17, scope: !105)
!125 = !DILocation(line: 94, column: 21, scope: !105)
!126 = !DILocation(line: 94, column: 5, scope: !105)
!127 = !DILocalVariable(name: "result", scope: !105, file: !3, line: 97, type: !5)
!128 = !DILocation(line: 97, column: 16, scope: !105)
!129 = !DILocation(line: 97, column: 39, scope: !105)
!130 = !DILocation(line: 97, column: 48, scope: !105)
!131 = !DILocation(line: 97, column: 25, scope: !105)
!132 = !DILocation(line: 100, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !105, file: !3, line: 100, column: 9)
!134 = !DILocation(line: 100, column: 9, scope: !105)
!135 = !DILocation(line: 101, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 100, column: 17)
!137 = !DILocation(line: 101, column: 22, scope: !136)
!138 = !DILocation(line: 101, column: 9, scope: !136)
!139 = !DILocation(line: 102, column: 14, scope: !136)
!140 = !DILocation(line: 102, column: 9, scope: !136)
!141 = !DILocation(line: 103, column: 5, scope: !136)
!142 = !DILocation(line: 105, column: 5, scope: !105)
!143 = distinct !DISubprogram(name: "xmlNewTextLen", scope: !3, file: !3, line: 38, type: !144, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !57)
!144 = !DISubroutineType(types: !145)
!145 = !{!5, !15, !13}
!146 = !DILocalVariable(name: "content", arg: 1, scope: !143, file: !3, line: 38, type: !15)
!147 = !DILocation(line: 38, column: 45, scope: !143)
!148 = !DILocalVariable(name: "len", arg: 2, scope: !143, file: !3, line: 38, type: !13)
!149 = !DILocation(line: 38, column: 58, scope: !143)
!150 = !DILocalVariable(name: "cur", scope: !143, file: !3, line: 39, type: !5)
!151 = !DILocation(line: 39, column: 16, scope: !143)
!152 = !DILocation(line: 41, column: 23, scope: !143)
!153 = !DILocation(line: 41, column: 11, scope: !143)
!154 = !DILocation(line: 41, column: 9, scope: !143)
!155 = !DILocation(line: 42, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !3, line: 42, column: 9)
!157 = !DILocation(line: 42, column: 13, scope: !156)
!158 = !DILocation(line: 42, column: 9, scope: !143)
!159 = !DILocation(line: 43, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 42, column: 22)
!161 = !DILocation(line: 44, column: 9, scope: !160)
!162 = !DILocation(line: 47, column: 12, scope: !143)
!163 = !DILocation(line: 47, column: 5, scope: !143)
!164 = !DILocation(line: 49, column: 5, scope: !143)
!165 = !DILocation(line: 51, column: 5, scope: !143)
!166 = !DILocation(line: 51, column: 10, scope: !143)
!167 = !DILocation(line: 51, column: 15, scope: !143)
!168 = !DILocation(line: 52, column: 17, scope: !143)
!169 = !DILocation(line: 52, column: 5, scope: !143)
!170 = !DILocation(line: 52, column: 10, scope: !143)
!171 = !DILocation(line: 52, column: 15, scope: !143)
!172 = !DILocation(line: 53, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !143, file: !3, line: 53, column: 9)
!174 = !DILocation(line: 53, column: 17, scope: !173)
!175 = !DILocation(line: 53, column: 9, scope: !143)
!176 = !DILocation(line: 54, column: 34, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !3, line: 53, column: 26)
!178 = !DILocation(line: 54, column: 24, scope: !177)
!179 = !DILocation(line: 54, column: 9, scope: !177)
!180 = !DILocation(line: 54, column: 14, scope: !177)
!181 = !DILocation(line: 54, column: 22, scope: !177)
!182 = !DILocation(line: 55, column: 5, scope: !177)
!183 = !DILocation(line: 56, column: 12, scope: !143)
!184 = !DILocation(line: 56, column: 5, scope: !143)
!185 = !DILocation(line: 57, column: 1, scope: !143)
!186 = distinct !DISubprogram(name: "memcpy", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !39, retainedNodes: !57)
!187 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!188 = !DISubroutineType(types: !189)
!189 = !{!11, !11, !190, !54}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!192 = !DILocalVariable(name: "destaddr", arg: 1, scope: !186, file: !187, line: 12, type: !11)
!193 = !DILocation(line: 12, column: 20, scope: !186)
!194 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !186, file: !187, line: 12, type: !190)
!195 = !DILocation(line: 12, column: 42, scope: !186)
!196 = !DILocalVariable(name: "len", arg: 3, scope: !186, file: !187, line: 12, type: !54)
!197 = !DILocation(line: 12, column: 58, scope: !186)
!198 = !DILocalVariable(name: "dest", scope: !186, file: !187, line: 13, type: !28)
!199 = !DILocation(line: 13, column: 9, scope: !186)
!200 = !DILocation(line: 13, column: 16, scope: !186)
!201 = !DILocalVariable(name: "src", scope: !186, file: !187, line: 14, type: !15)
!202 = !DILocation(line: 14, column: 15, scope: !186)
!203 = !DILocation(line: 14, column: 21, scope: !186)
!204 = !DILocation(line: 16, column: 3, scope: !186)
!205 = !DILocation(line: 16, column: 13, scope: !186)
!206 = !DILocation(line: 16, column: 16, scope: !186)
!207 = !DILocation(line: 17, column: 19, scope: !186)
!208 = !DILocation(line: 17, column: 15, scope: !186)
!209 = !DILocation(line: 17, column: 10, scope: !186)
!210 = !DILocation(line: 17, column: 13, scope: !186)
!211 = distinct !{!211, !204, !207, !212}
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 18, column: 10, scope: !186)
!214 = !DILocation(line: 18, column: 3, scope: !186)
!215 = distinct !DISubprogram(name: "memset", scope: !216, file: !216, line: 12, type: !217, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !41, retainedNodes: !57)
!216 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!217 = !DISubroutineType(types: !218)
!218 = !{!11, !11, !13, !54}
!219 = !DILocalVariable(name: "dst", arg: 1, scope: !215, file: !216, line: 12, type: !11)
!220 = !DILocation(line: 12, column: 20, scope: !215)
!221 = !DILocalVariable(name: "s", arg: 2, scope: !215, file: !216, line: 12, type: !13)
!222 = !DILocation(line: 12, column: 29, scope: !215)
!223 = !DILocalVariable(name: "count", arg: 3, scope: !215, file: !216, line: 12, type: !54)
!224 = !DILocation(line: 12, column: 39, scope: !215)
!225 = !DILocalVariable(name: "a", scope: !215, file: !216, line: 13, type: !28)
!226 = !DILocation(line: 13, column: 9, scope: !215)
!227 = !DILocation(line: 13, column: 13, scope: !215)
!228 = !DILocation(line: 14, column: 3, scope: !215)
!229 = !DILocation(line: 14, column: 15, scope: !215)
!230 = !DILocation(line: 14, column: 18, scope: !215)
!231 = !DILocation(line: 15, column: 12, scope: !215)
!232 = !DILocation(line: 15, column: 7, scope: !215)
!233 = !DILocation(line: 15, column: 10, scope: !215)
!234 = distinct !{!234, !228, !231, !212}
!235 = !DILocation(line: 16, column: 10, scope: !215)
!236 = !DILocation(line: 16, column: 3, scope: !215)
