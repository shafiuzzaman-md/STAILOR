; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/100_tree.c_9577_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/100_tree.c_9577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, i16, i16 }
%struct._xmlAttr = type { %struct._xmlNode, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDoc = type opaque
%struct._xmlNs = type opaque

@.str = private unnamed_addr constant [47 x i8] c"xmlDOMWrapCloneNode(): allocating an attr-node\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"(sizeof(xmlAttr) > 0 && clone != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/100_tree.c_9577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDOMWrapCloneNode = private unnamed_addr constant [75 x i8] c"void xmlDOMWrapCloneNode(xmlNodePtr, xmlNodePtr *, xmlNodePtr, xmlNodePtr)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"resultClone\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"parentClone\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"prevClone\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !59 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !63, metadata !DIExpression()), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !66 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !72, metadata !DIExpression()), !dbg !73
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !74, metadata !DIExpression()), !dbg !75
  %6 = load i64, i64* %5, align 8, !dbg !76
  %7 = icmp eq i64 %6, 0, !dbg !78
  br i1 %7, label %8, label %9, !dbg !79

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !80
  br label %12, !dbg !80

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8, !dbg !82
  %11 = call noalias i8* @malloc(i64 noundef %10) #7, !dbg !83
  store i8* %11, i8** %3, align 8, !dbg !84
  br label %12, !dbg !84

12:                                               ; preds = %9, %8
  %13 = load i8*, i8** %3, align 8, !dbg !85
  ret i8* %13, !dbg !85
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %0, %struct._xmlNode** noundef %1, %struct._xmlNode* noundef %2, %struct._xmlNode* noundef %3) #0 !dbg !86 {
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNode**, align 8
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca %struct._xmlNode*, align 8
  %9 = alloca %struct._xmlAttr*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct._xmlNode** %1, %struct._xmlNode*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %6, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct._xmlNode* %2, %struct._xmlNode** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !94, metadata !DIExpression()), !dbg !95
  store %struct._xmlNode* %3, %struct._xmlNode** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %8, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %9, metadata !98, metadata !DIExpression()), !dbg !99
  %10 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !100
  %11 = icmp eq %struct._xmlNode* %10, null, !dbg !102
  br i1 %11, label %12, label %13, !dbg !103

12:                                               ; preds = %4
  br label %50, !dbg !104

13:                                               ; preds = %4
  %14 = call i8* @xmlRealloc(i8* noundef null, i64 noundef 176), !dbg !106
  %15 = bitcast i8* %14 to %struct._xmlAttr*, !dbg !107
  store %struct._xmlAttr* %15, %struct._xmlAttr** %9, align 8, !dbg !108
  %16 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !109
  %17 = icmp eq %struct._xmlAttr* %16, null, !dbg !111
  br i1 %17, label %18, label %19, !dbg !112

18:                                               ; preds = %13
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0)), !dbg !113
  br label %50, !dbg !115

19:                                               ; preds = %13
  %20 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !116
  %21 = bitcast %struct._xmlAttr* %20 to i8*, !dbg !117
  %22 = call i8* @memset(i8* %21, i32 0, i64 176), !dbg !117
  %23 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !118
  %24 = icmp ne %struct._xmlAttr* %23, null, !dbg !118
  br i1 %24, label %25, label %27, !dbg !118

25:                                               ; preds = %19
  br i1 true, label %26, label %27, !dbg !118

26:                                               ; preds = %25
  br label %29, !dbg !118

27:                                               ; preds = %25, %19
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode, i64 0, i64 0)), !dbg !118
  br label %29, !dbg !118

29:                                               ; preds = %27, %26
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode, i64 0, i64 0)), !dbg !119
  %31 = load %struct._xmlNode**, %struct._xmlNode*** %6, align 8, !dbg !120
  %32 = load %struct._xmlNode*, %struct._xmlNode** %31, align 8, !dbg !122
  %33 = icmp ne %struct._xmlNode* %32, null, !dbg !123
  br i1 %33, label %34, label %47, !dbg !124

34:                                               ; preds = %29
  %35 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !125
  %36 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !127
  %37 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %36, i32 0, i32 0, !dbg !128
  %38 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %37, i32 0, i32 0, !dbg !129
  store %struct._xmlNode* %35, %struct._xmlNode** %38, align 8, !dbg !130
  %39 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !131
  %40 = icmp ne %struct._xmlNode* %39, null, !dbg !131
  br i1 %40, label %41, label %46, !dbg !133

41:                                               ; preds = %34
  %42 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !134
  %43 = bitcast %struct._xmlAttr* %42 to %struct._xmlNode*, !dbg !136
  %44 = load %struct._xmlNode*, %struct._xmlNode** %8, align 8, !dbg !137
  %45 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %44, i32 0, i32 1, !dbg !138
  store %struct._xmlNode* %43, %struct._xmlNode** %45, align 8, !dbg !139
  br label %46, !dbg !140

46:                                               ; preds = %41, %34
  br label %47, !dbg !141

47:                                               ; preds = %46, %29
  %48 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !142
  %49 = bitcast %struct._xmlAttr* %48 to i8*, !dbg !142
  call void @free(i8* noundef %49) #7, !dbg !143
  br label %50, !dbg !144

50:                                               ; preds = %47, %18, %12
  ret void, !dbg !144
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !145 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !154, metadata !DIExpression()), !dbg !155
  %6 = bitcast %struct._xmlNode** %2 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !157
  %7 = bitcast %struct._xmlNode** %3 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !159
  %8 = bitcast %struct._xmlNode** %4 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !dbg !161
  %9 = bitcast %struct._xmlNode** %5 to i8*, !dbg !162
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !dbg !163
  %10 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !164
  %11 = icmp ne %struct._xmlNode* %10, null, !dbg !165
  %12 = zext i1 %11 to i32, !dbg !165
  %13 = sext i32 %12 to i64, !dbg !164
  call void @klee_assume(i64 noundef %13), !dbg !166
  %14 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !167
  %15 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !168
  %16 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !169
  call void @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %14, %struct._xmlNode** noundef %3, %struct._xmlNode* noundef %15, %struct._xmlNode* noundef %16), !dbg !170
  ret i32 0, !dbg !171
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !172 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !176, metadata !DIExpression()), !dbg !177
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %7, metadata !182, metadata !DIExpression()), !dbg !184
  %8 = load i8*, i8** %4, align 8, !dbg !185
  store i8* %8, i8** %7, align 8, !dbg !184
  br label %9, !dbg !186

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !187
  %11 = add i64 %10, -1, !dbg !187
  store i64 %11, i64* %6, align 8, !dbg !187
  %12 = icmp ugt i64 %10, 0, !dbg !188
  br i1 %12, label %13, label %18, !dbg !186

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !189
  %15 = trunc i32 %14 to i8, !dbg !189
  %16 = load i8*, i8** %7, align 8, !dbg !190
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !190
  store i8* %17, i8** %7, align 8, !dbg !190
  store i8 %15, i8* %16, align 1, !dbg !191
  br label %9, !dbg !186, !llvm.loop !192

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %19, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58, !58}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/100_tree.c_9577_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "abdf0515cd12d5cf7bddb6d8edeeaa3c")
!2 = !{!3, !4, !46}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttrPtr", file: !1, line: 13, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 12, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 33, size: 1408, elements: !8)
!8 = !{!9, !33, !35, !36, !37, !38, !41, !44, !45}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !1, line: 34, baseType: !10, size: 896)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, size: 896, elements: !11)
!11 = !{!12, !14, !15, !16, !17, !18, !19, !20, !22, !26, !27, !28, !29, !30, !32}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !10, file: !1, line: 16, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !1, line: 17, baseType: !13, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !10, file: !1, line: 18, baseType: !13, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !10, file: !1, line: 19, baseType: !13, size: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !10, file: !1, line: 20, baseType: !13, size: 64, offset: 256)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !10, file: !1, line: 21, baseType: !13, size: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !10, file: !1, line: 22, baseType: !3, size: 64, offset: 384)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !10, file: !1, line: 23, baseType: !21, size: 32, offset: 448)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !1, line: 24, baseType: !23, size: 64, offset: 512)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !10, file: !1, line: 25, baseType: !13, size: 64, offset: 576)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !10, file: !1, line: 26, baseType: !13, size: 64, offset: 640)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !10, file: !1, line: 27, baseType: !13, size: 64, offset: 704)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !10, file: !1, line: 28, baseType: !13, size: 64, offset: 768)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !10, file: !1, line: 29, baseType: !31, size: 16, offset: 832)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !10, file: !1, line: 30, baseType: !31, size: 16, offset: 848)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 35, baseType: !34, size: 64, offset: 896)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !1, line: 36, baseType: !34, size: 64, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !7, file: !1, line: 37, baseType: !13, size: 64, offset: 1024)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !1, line: 38, baseType: !13, size: 64, offset: 1088)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !7, file: !1, line: 39, baseType: !39, size: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 39, flags: DIFlagFwdDecl)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !7, file: !1, line: 40, baseType: !42, size: 64, offset: 1216)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 40, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !7, file: !1, line: 41, baseType: !21, size: 32, offset: 1280)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !7, file: !1, line: 42, baseType: !3, size: 64, offset: 1344)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 11, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !10)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!50 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!51 = !{i32 7, !"Dwarf Version", i32 5}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = !{i32 7, !"PIC Level", i32 2}
!55 = !{i32 7, !"PIE Level", i32 2}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"Ubuntu clang version 14.0.6"}
!59 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 46, type: !60, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !23}
!62 = !{}
!63 = !DILocalVariable(name: "msg", arg: 1, scope: !59, file: !1, line: 46, type: !23)
!64 = !DILocation(line: 46, column: 35, scope: !59)
!65 = !DILocation(line: 48, column: 1, scope: !59)
!66 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 50, type: !67, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!67 = !DISubroutineType(types: !68)
!68 = !{!3, !3, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocalVariable(name: "ptr", arg: 1, scope: !66, file: !1, line: 50, type: !3)
!73 = !DILocation(line: 50, column: 24, scope: !66)
!74 = !DILocalVariable(name: "size", arg: 2, scope: !66, file: !1, line: 50, type: !69)
!75 = !DILocation(line: 50, column: 36, scope: !66)
!76 = !DILocation(line: 51, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !66, file: !1, line: 51, column: 9)
!78 = !DILocation(line: 51, column: 14, scope: !77)
!79 = !DILocation(line: 51, column: 9, scope: !66)
!80 = !DILocation(line: 52, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 51, column: 20)
!82 = !DILocation(line: 54, column: 19, scope: !66)
!83 = !DILocation(line: 54, column: 12, scope: !66)
!84 = !DILocation(line: 54, column: 5, scope: !66)
!85 = !DILocation(line: 55, column: 1, scope: !66)
!86 = distinct !DISubprogram(name: "xmlDOMWrapCloneNode", scope: !1, file: !1, line: 58, type: !87, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !46, !89, !46, !46}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!90 = !DILocalVariable(name: "source", arg: 1, scope: !86, file: !1, line: 58, type: !46)
!91 = !DILocation(line: 58, column: 37, scope: !86)
!92 = !DILocalVariable(name: "resultClone", arg: 2, scope: !86, file: !1, line: 58, type: !89)
!93 = !DILocation(line: 58, column: 57, scope: !86)
!94 = !DILocalVariable(name: "parentClone", arg: 3, scope: !86, file: !1, line: 59, type: !46)
!95 = !DILocation(line: 59, column: 37, scope: !86)
!96 = !DILocalVariable(name: "prevClone", arg: 4, scope: !86, file: !1, line: 59, type: !46)
!97 = !DILocation(line: 59, column: 61, scope: !86)
!98 = !DILocalVariable(name: "clone", scope: !86, file: !1, line: 60, type: !4)
!99 = !DILocation(line: 60, column: 16, scope: !86)
!100 = !DILocation(line: 63, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !86, file: !1, line: 63, column: 9)
!102 = !DILocation(line: 63, column: 16, scope: !101)
!103 = !DILocation(line: 63, column: 9, scope: !86)
!104 = !DILocation(line: 64, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 63, column: 25)
!106 = !DILocation(line: 68, column: 25, scope: !86)
!107 = !DILocation(line: 68, column: 13, scope: !86)
!108 = !DILocation(line: 68, column: 11, scope: !86)
!109 = !DILocation(line: 69, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !86, file: !1, line: 69, column: 9)
!111 = !DILocation(line: 69, column: 15, scope: !110)
!112 = !DILocation(line: 69, column: 9, scope: !86)
!113 = !DILocation(line: 70, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 69, column: 24)
!115 = !DILocation(line: 71, column: 9, scope: !114)
!116 = !DILocation(line: 75, column: 12, scope: !86)
!117 = !DILocation(line: 75, column: 5, scope: !86)
!118 = !DILocation(line: 84, column: 5, scope: !86)
!119 = !DILocation(line: 87, column: 5, scope: !86)
!120 = !DILocation(line: 90, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !86, file: !1, line: 90, column: 9)
!122 = !DILocation(line: 90, column: 9, scope: !121)
!123 = !DILocation(line: 90, column: 22, scope: !121)
!124 = !DILocation(line: 90, column: 9, scope: !86)
!125 = !DILocation(line: 91, column: 30, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 90, column: 31)
!127 = !DILocation(line: 91, column: 9, scope: !126)
!128 = !DILocation(line: 91, column: 16, scope: !126)
!129 = !DILocation(line: 91, column: 21, scope: !126)
!130 = !DILocation(line: 91, column: 28, scope: !126)
!131 = !DILocation(line: 92, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 92, column: 13)
!133 = !DILocation(line: 92, column: 13, scope: !126)
!134 = !DILocation(line: 93, column: 43, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 92, column: 24)
!136 = !DILocation(line: 93, column: 31, scope: !135)
!137 = !DILocation(line: 93, column: 13, scope: !135)
!138 = !DILocation(line: 93, column: 24, scope: !135)
!139 = !DILocation(line: 93, column: 29, scope: !135)
!140 = !DILocation(line: 94, column: 9, scope: !135)
!141 = !DILocation(line: 95, column: 5, scope: !126)
!142 = !DILocation(line: 97, column: 10, scope: !86)
!143 = !DILocation(line: 97, column: 5, scope: !86)
!144 = !DILocation(line: 98, column: 1, scope: !86)
!145 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 100, type: !146, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!146 = !DISubroutineType(types: !147)
!147 = !{!21}
!148 = !DILocalVariable(name: "source", scope: !145, file: !1, line: 101, type: !46)
!149 = !DILocation(line: 101, column: 16, scope: !145)
!150 = !DILocalVariable(name: "resultClone", scope: !145, file: !1, line: 102, type: !46)
!151 = !DILocation(line: 102, column: 16, scope: !145)
!152 = !DILocalVariable(name: "parentClone", scope: !145, file: !1, line: 103, type: !46)
!153 = !DILocation(line: 103, column: 16, scope: !145)
!154 = !DILocalVariable(name: "prevClone", scope: !145, file: !1, line: 104, type: !46)
!155 = !DILocation(line: 104, column: 16, scope: !145)
!156 = !DILocation(line: 107, column: 24, scope: !145)
!157 = !DILocation(line: 107, column: 5, scope: !145)
!158 = !DILocation(line: 108, column: 24, scope: !145)
!159 = !DILocation(line: 108, column: 5, scope: !145)
!160 = !DILocation(line: 109, column: 24, scope: !145)
!161 = !DILocation(line: 109, column: 5, scope: !145)
!162 = !DILocation(line: 110, column: 24, scope: !145)
!163 = !DILocation(line: 110, column: 5, scope: !145)
!164 = !DILocation(line: 113, column: 17, scope: !145)
!165 = !DILocation(line: 113, column: 24, scope: !145)
!166 = !DILocation(line: 113, column: 5, scope: !145)
!167 = !DILocation(line: 116, column: 25, scope: !145)
!168 = !DILocation(line: 116, column: 47, scope: !145)
!169 = !DILocation(line: 116, column: 60, scope: !145)
!170 = !DILocation(line: 116, column: 5, scope: !145)
!171 = !DILocation(line: 118, column: 5, scope: !145)
!172 = distinct !DISubprogram(name: "memset", scope: !173, file: !173, line: 12, type: !174, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !49, retainedNodes: !62)
!173 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!174 = !DISubroutineType(types: !175)
!175 = !{!3, !3, !21, !69}
!176 = !DILocalVariable(name: "dst", arg: 1, scope: !172, file: !173, line: 12, type: !3)
!177 = !DILocation(line: 12, column: 20, scope: !172)
!178 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !173, line: 12, type: !21)
!179 = !DILocation(line: 12, column: 29, scope: !172)
!180 = !DILocalVariable(name: "count", arg: 3, scope: !172, file: !173, line: 12, type: !69)
!181 = !DILocation(line: 12, column: 39, scope: !172)
!182 = !DILocalVariable(name: "a", scope: !172, file: !173, line: 13, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!184 = !DILocation(line: 13, column: 9, scope: !172)
!185 = !DILocation(line: 13, column: 13, scope: !172)
!186 = !DILocation(line: 14, column: 3, scope: !172)
!187 = !DILocation(line: 14, column: 15, scope: !172)
!188 = !DILocation(line: 14, column: 18, scope: !172)
!189 = !DILocation(line: 15, column: 12, scope: !172)
!190 = !DILocation(line: 15, column: 7, scope: !172)
!191 = !DILocation(line: 15, column: 10, scope: !172)
!192 = distinct !{!192, !186, !189, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 16, column: 10, scope: !172)
!195 = !DILocation(line: 16, column: 3, scope: !172)
