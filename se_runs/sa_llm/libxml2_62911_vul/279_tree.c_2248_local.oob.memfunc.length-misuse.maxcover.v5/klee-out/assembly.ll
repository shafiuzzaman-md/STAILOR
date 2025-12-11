; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/279_tree.c_2248_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/279_tree.c_2248_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { i8*, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, i32, i8*, i8*, i64, i8* }
%struct._xmlDoc = type opaque
%struct._xmlNs = type { %struct._xmlNs*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"building node\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"can\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"(node != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/279_tree.c_2248_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !53 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !60, metadata !DIExpression()), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef %0, i8* noundef %1) #0 !dbg !63 {
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !70, metadata !DIExpression()), !dbg !71
  %7 = call noalias i8* @malloc(i64 noundef 104) #7, !dbg !72
  %8 = bitcast i8* %7 to %struct._xmlNode*, !dbg !73
  store %struct._xmlNode* %8, %struct._xmlNode** %6, align 8, !dbg !74
  %9 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !75
  %10 = icmp eq %struct._xmlNode* %9, null, !dbg !77
  br i1 %10, label %11, label %12, !dbg !78

11:                                               ; preds = %2
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !79
  store %struct._xmlNode* null, %struct._xmlNode** %3, align 8, !dbg !81
  br label %25, !dbg !81

12:                                               ; preds = %2
  %13 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !82
  %14 = bitcast %struct._xmlNode* %13 to i8*, !dbg !83
  %15 = call i8* @memset(i8* %14, i32 0, i64 104), !dbg !83
  %16 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !84
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %16, i32 0, i32 8, !dbg !85
  store i32 1, i32* %17, align 8, !dbg !86
  %18 = load i8*, i8** %5, align 8, !dbg !87
  %19 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !88
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %19, i32 0, i32 7, !dbg !89
  store i8* %18, i8** %20, align 8, !dbg !90
  %21 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !91
  %22 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !92
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 6, !dbg !93
  store %struct._xmlNs* %21, %struct._xmlNs** %23, align 8, !dbg !94
  %24 = load %struct._xmlNode*, %struct._xmlNode** %6, align 8, !dbg !95
  store %struct._xmlNode* %24, %struct._xmlNode** %3, align 8, !dbg !96
  br label %25, !dbg !96

25:                                               ; preds = %12, %11
  %26 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !97
  ret %struct._xmlNode* %26, !dbg !97
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStringGetNodeList() #0 !dbg !98 {
  ret i8* null, !dbg !101
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !102 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode*, align 8
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %2, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %5, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %6, metadata !116, metadata !DIExpression()), !dbg !117
  %7 = bitcast i32* %5 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !119
  %8 = bitcast i32* %6 to i8*, !dbg !120
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !121
  %9 = load i32, i32* %5, align 4, !dbg !122
  %10 = icmp sge i32 %9, 0, !dbg !123
  %11 = zext i1 %10 to i32, !dbg !123
  %12 = sext i32 %11 to i64, !dbg !122
  call void @klee_assume(i64 noundef %12), !dbg !124
  %13 = load i32, i32* %6, align 4, !dbg !125
  %14 = icmp sge i32 %13, 0, !dbg !126
  %15 = zext i1 %14 to i32, !dbg !126
  %16 = sext i32 %15 to i64, !dbg !125
  call void @klee_assume(i64 noundef %16), !dbg !127
  %17 = bitcast %struct._xmlNs** %3 to i8*, !dbg !128
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)), !dbg !129
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !130
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !131
  %19 = load %struct._xmlNs*, %struct._xmlNs** %3, align 8, !dbg !132
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !133
  %21 = call %struct._xmlNode* @xmlNewNode(%struct._xmlNs* noundef %19, i8* noundef %20), !dbg !134
  store %struct._xmlNode* %21, %struct._xmlNode** %2, align 8, !dbg !135
  %22 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !136
  %23 = icmp ne %struct._xmlNode* %22, null, !dbg !138
  br i1 %23, label %24, label %35, !dbg !139

24:                                               ; preds = %0
  %25 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !140
  %26 = icmp ne %struct._xmlNode* %25, null, !dbg !140
  br i1 %26, label %27, label %29, !dbg !140

27:                                               ; preds = %24
  br i1 true, label %28, label %29, !dbg !140

28:                                               ; preds = %27
  br label %31, !dbg !140

29:                                               ; preds = %27, %24
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 103, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !140
  br label %31, !dbg !140

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !142
  %33 = load %struct._xmlNode*, %struct._xmlNode** %2, align 8, !dbg !143
  %34 = bitcast %struct._xmlNode* %33 to i8*, !dbg !143
  call void @free(i8* noundef %34) #7, !dbg !144
  br label %35, !dbg !145

35:                                               ; preds = %31, %0
  ret i32 0, !dbg !146
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !147 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !155, metadata !DIExpression()), !dbg !156
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i8** %7, metadata !159, metadata !DIExpression()), !dbg !161
  %8 = load i8*, i8** %4, align 8, !dbg !162
  store i8* %8, i8** %7, align 8, !dbg !161
  br label %9, !dbg !163

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !164
  %11 = add i64 %10, -1, !dbg !164
  store i64 %11, i64* %6, align 8, !dbg !164
  %12 = icmp ugt i64 %10, 0, !dbg !165
  br i1 %12, label %13, label %18, !dbg !163

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !166
  %15 = trunc i32 %14 to i8, !dbg !166
  %16 = load i8*, i8** %7, align 8, !dbg !167
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !167
  store i8* %17, i8** %7, align 8, !dbg !167
  store i8 %15, i8* %16, align 1, !dbg !168
  br label %9, !dbg !163, !llvm.loop !169

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !171
  ret i8* %19, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52, !52}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/279_tree.c_2248_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "35caf1964e42ecc35169c9a1fe824be2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 12, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!7 = !{!8, !13}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 16, size: 832, elements: !11)
!11 = !{!12, !14, !15, !17, !18, !19, !22, !34, !35, !37, !38, !40, !42}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !10, file: !1, line: 17, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !10, file: !1, line: 18, baseType: !13, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !10, file: !1, line: 19, baseType: !16, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !1, line: 20, baseType: !16, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !10, file: !1, line: 21, baseType: !16, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !10, file: !1, line: 22, baseType: !20, size: 64, offset: 320)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 22, flags: DIFlagFwdDecl)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !10, file: !1, line: 23, baseType: !23, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 11, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 32, size: 192, elements: !26)
!26 = !{!27, !29, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !1, line: 33, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !25, file: !1, line: 34, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !25, file: !1, line: 35, baseType: !30, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !1, line: 24, baseType: !30, size: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !10, file: !1, line: 25, baseType: !36, size: 32, offset: 512)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !10, file: !1, line: 26, baseType: !13, size: 64, offset: 576)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !10, file: !1, line: 27, baseType: !39, size: 64, offset: 640)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !10, file: !1, line: 28, baseType: !41, size: 64, offset: 704)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !10, file: !1, line: 29, baseType: !13, size: 64, offset: 768)
!43 = distinct !DICompileUnit(language: DW_LANG_C99, file: !44, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!44 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{i32 7, !"PIC Level", i32 2}
!49 = !{i32 7, !"PIE Level", i32 2}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"Ubuntu clang version 14.0.6"}
!53 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 39, type: !54, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !{}
!60 = !DILocalVariable(name: "msg", arg: 1, scope: !53, file: !1, line: 39, type: !56)
!61 = !DILocation(line: 39, column: 35, scope: !53)
!62 = !DILocation(line: 41, column: 1, scope: !53)
!63 = distinct !DISubprogram(name: "xmlNewNode", scope: !1, file: !1, line: 44, type: !64, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !23, !30}
!66 = !DILocalVariable(name: "ns", arg: 1, scope: !63, file: !1, line: 44, type: !23)
!67 = !DILocation(line: 44, column: 28, scope: !63)
!68 = !DILocalVariable(name: "name", arg: 2, scope: !63, file: !1, line: 44, type: !30)
!69 = !DILocation(line: 44, column: 53, scope: !63)
!70 = !DILocalVariable(name: "cur", scope: !63, file: !1, line: 45, type: !8)
!71 = !DILocation(line: 45, column: 14, scope: !63)
!72 = !DILocation(line: 48, column: 22, scope: !63)
!73 = !DILocation(line: 48, column: 11, scope: !63)
!74 = !DILocation(line: 48, column: 9, scope: !63)
!75 = !DILocation(line: 49, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !63, file: !1, line: 49, column: 9)
!77 = !DILocation(line: 49, column: 13, scope: !76)
!78 = !DILocation(line: 49, column: 9, scope: !63)
!79 = !DILocation(line: 50, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 49, column: 22)
!81 = !DILocation(line: 51, column: 9, scope: !80)
!82 = !DILocation(line: 55, column: 12, scope: !63)
!83 = !DILocation(line: 55, column: 5, scope: !63)
!84 = !DILocation(line: 57, column: 5, scope: !63)
!85 = !DILocation(line: 57, column: 10, scope: !63)
!86 = !DILocation(line: 57, column: 15, scope: !63)
!87 = !DILocation(line: 58, column: 17, scope: !63)
!88 = !DILocation(line: 58, column: 5, scope: !63)
!89 = !DILocation(line: 58, column: 10, scope: !63)
!90 = !DILocation(line: 58, column: 15, scope: !63)
!91 = !DILocation(line: 59, column: 15, scope: !63)
!92 = !DILocation(line: 59, column: 5, scope: !63)
!93 = !DILocation(line: 59, column: 10, scope: !63)
!94 = !DILocation(line: 59, column: 13, scope: !63)
!95 = !DILocation(line: 61, column: 12, scope: !63)
!96 = !DILocation(line: 61, column: 5, scope: !63)
!97 = !DILocation(line: 62, column: 1, scope: !63)
!98 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 65, type: !99, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!99 = !DISubroutineType(types: !100)
!100 = !{!13}
!101 = !DILocation(line: 67, column: 5, scope: !98)
!102 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 70, type: !103, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !59)
!103 = !DISubroutineType(types: !104)
!104 = !{!36}
!105 = !DILocalVariable(name: "node", scope: !102, file: !1, line: 71, type: !8)
!106 = !DILocation(line: 71, column: 14, scope: !102)
!107 = !DILocalVariable(name: "ns", scope: !102, file: !1, line: 72, type: !23)
!108 = !DILocation(line: 72, column: 12, scope: !102)
!109 = !DILocalVariable(name: "name", scope: !102, file: !1, line: 73, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 32)
!113 = !DILocation(line: 73, column: 19, scope: !102)
!114 = !DILocalVariable(name: "can", scope: !102, file: !1, line: 74, type: !36)
!115 = !DILocation(line: 74, column: 9, scope: !102)
!116 = !DILocalVariable(name: "ret", scope: !102, file: !1, line: 74, type: !36)
!117 = !DILocation(line: 74, column: 14, scope: !102)
!118 = !DILocation(line: 77, column: 24, scope: !102)
!119 = !DILocation(line: 77, column: 5, scope: !102)
!120 = !DILocation(line: 78, column: 24, scope: !102)
!121 = !DILocation(line: 78, column: 5, scope: !102)
!122 = !DILocation(line: 81, column: 17, scope: !102)
!123 = !DILocation(line: 81, column: 21, scope: !102)
!124 = !DILocation(line: 81, column: 5, scope: !102)
!125 = !DILocation(line: 82, column: 17, scope: !102)
!126 = !DILocation(line: 82, column: 21, scope: !102)
!127 = !DILocation(line: 82, column: 5, scope: !102)
!128 = !DILocation(line: 85, column: 24, scope: !102)
!129 = !DILocation(line: 85, column: 5, scope: !102)
!130 = !DILocation(line: 88, column: 24, scope: !102)
!131 = !DILocation(line: 88, column: 5, scope: !102)
!132 = !DILocation(line: 91, column: 23, scope: !102)
!133 = !DILocation(line: 91, column: 27, scope: !102)
!134 = !DILocation(line: 91, column: 12, scope: !102)
!135 = !DILocation(line: 91, column: 10, scope: !102)
!136 = !DILocation(line: 101, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !102, file: !1, line: 101, column: 9)
!138 = !DILocation(line: 101, column: 14, scope: !137)
!139 = !DILocation(line: 101, column: 9, scope: !102)
!140 = !DILocation(line: 103, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 101, column: 23)
!142 = !DILocation(line: 106, column: 9, scope: !141)
!143 = !DILocation(line: 109, column: 14, scope: !141)
!144 = !DILocation(line: 109, column: 9, scope: !141)
!145 = !DILocation(line: 110, column: 5, scope: !141)
!146 = !DILocation(line: 112, column: 5, scope: !102)
!147 = distinct !DISubprogram(name: "memset", scope: !148, file: !148, line: 12, type: !149, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !43, retainedNodes: !59)
!148 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!149 = !DISubroutineType(types: !150)
!150 = !{!13, !13, !36, !151}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 46, baseType: !41)
!152 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!153 = !DILocalVariable(name: "dst", arg: 1, scope: !147, file: !148, line: 12, type: !13)
!154 = !DILocation(line: 12, column: 20, scope: !147)
!155 = !DILocalVariable(name: "s", arg: 2, scope: !147, file: !148, line: 12, type: !36)
!156 = !DILocation(line: 12, column: 29, scope: !147)
!157 = !DILocalVariable(name: "count", arg: 3, scope: !147, file: !148, line: 12, type: !151)
!158 = !DILocation(line: 12, column: 39, scope: !147)
!159 = !DILocalVariable(name: "a", scope: !147, file: !148, line: 13, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!161 = !DILocation(line: 13, column: 9, scope: !147)
!162 = !DILocation(line: 13, column: 13, scope: !147)
!163 = !DILocation(line: 14, column: 3, scope: !147)
!164 = !DILocation(line: 14, column: 15, scope: !147)
!165 = !DILocation(line: 14, column: 18, scope: !147)
!166 = !DILocation(line: 15, column: 12, scope: !147)
!167 = !DILocation(line: 15, column: 7, scope: !147)
!168 = !DILocation(line: 15, column: 10, scope: !147)
!169 = distinct !{!169, !163, !166, !170}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 16, column: 10, scope: !147)
!172 = !DILocation(line: 16, column: 3, scope: !147)
