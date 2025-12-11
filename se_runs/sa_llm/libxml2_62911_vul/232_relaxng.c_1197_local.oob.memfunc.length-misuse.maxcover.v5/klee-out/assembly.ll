; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/232_relaxng.c_1197_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/232_relaxng.c_1197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidCtxt = type { %struct._xmlDoc* }
%struct._xmlDoc = type opaque
%struct._xmlRelaxNGValidState = type { i8*, i8*, %struct._xmlNode* }
%struct._xmlNode = type opaque

@.str = private unnamed_addr constant [19 x i8] c"allocating states\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ctxt_doc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/232_relaxng.c_1197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i64, i64* %2, align 8, !dbg !34
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !35
  ret i8* %4, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !37 {
  %3 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %3, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  %5 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %3, align 8, !dbg !57
  %6 = load i8*, i8** %4, align 8, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidCtxt* noundef %0, %struct._xmlNode* noundef %1) #0 !dbg !60 {
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidCtxt*, align 8
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlRelaxNGValidState*, align 8
  store %struct._xmlRelaxNGValidCtxt* %0, %struct._xmlRelaxNGValidCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt** %4, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._xmlNode* %1, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %6, metadata !67, metadata !DIExpression()), !dbg !68
  %7 = call i8* @xmlMalloc(i64 noundef 24), !dbg !69
  %8 = bitcast i8* %7 to %struct._xmlRelaxNGValidState*, !dbg !70
  store %struct._xmlRelaxNGValidState* %8, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !71
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !72
  %10 = icmp eq %struct._xmlRelaxNGValidState* %9, null, !dbg !74
  br i1 %10, label %11, label %13, !dbg !75

11:                                               ; preds = %2
  %12 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !76
  call void @xmlRngVErrMemory(%struct._xmlRelaxNGValidCtxt* noundef %12, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0)), !dbg !78
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !79
  br label %36, !dbg !79

13:                                               ; preds = %2
  %14 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !80
  %15 = bitcast %struct._xmlRelaxNGValidState* %14 to i8*, !dbg !81
  %16 = call i8* @memset(i8* %15, i32 0, i64 24), !dbg !81
  %17 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !82
  %18 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %17, i32 0, i32 0, !dbg !83
  store i8* null, i8** %18, align 8, !dbg !84
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !85
  %20 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %19, i32 0, i32 1, !dbg !86
  store i8* null, i8** %20, align 8, !dbg !87
  %21 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !88
  %22 = icmp eq %struct._xmlNode* %21, null, !dbg !90
  br i1 %22, label %23, label %30, !dbg !91

23:                                               ; preds = %13
  %24 = load %struct._xmlRelaxNGValidCtxt*, %struct._xmlRelaxNGValidCtxt** %4, align 8, !dbg !92
  %25 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %24, i32 0, i32 0, !dbg !94
  %26 = load %struct._xmlDoc*, %struct._xmlDoc** %25, align 8, !dbg !94
  %27 = bitcast %struct._xmlDoc* %26 to %struct._xmlNode*, !dbg !95
  %28 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !96
  %29 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %28, i32 0, i32 2, !dbg !97
  store %struct._xmlNode* %27, %struct._xmlNode** %29, align 8, !dbg !98
  br label %34, !dbg !99

30:                                               ; preds = %13
  %31 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !100
  %32 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !102
  %33 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %32, i32 0, i32 2, !dbg !103
  store %struct._xmlNode* %31, %struct._xmlNode** %33, align 8, !dbg !104
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %6, align 8, !dbg !105
  store %struct._xmlRelaxNGValidState* %35, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !106
  br label %36, !dbg !106

36:                                               ; preds = %34, %11
  %37 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !107
  ret %struct._xmlRelaxNGValidState* %37, !dbg !107
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !108 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidCtxt, align 8
  %3 = alloca %struct._xmlNode*, align 8
  %4 = alloca %struct._xmlRelaxNGValidState*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %2, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %3, metadata !114, metadata !DIExpression()), !dbg !115
  %5 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 0, !dbg !116
  %6 = bitcast %struct._xmlDoc** %5 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !118
  %7 = bitcast %struct._xmlNode** %3 to i8*, !dbg !119
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !120
  %8 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %2, i32 0, i32 0, !dbg !121
  %9 = load %struct._xmlDoc*, %struct._xmlDoc** %8, align 8, !dbg !121
  %10 = icmp ne %struct._xmlDoc* %9, null, !dbg !122
  br i1 %10, label %14, label %11, !dbg !123

11:                                               ; preds = %0
  %12 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !124
  %13 = icmp ne %struct._xmlNode* %12, null, !dbg !125
  br label %14, !dbg !123

14:                                               ; preds = %11, %0
  %15 = phi i1 [ true, %0 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !123
  %17 = sext i32 %16 to i64, !dbg !126
  call void @klee_assume(i64 noundef %17), !dbg !127
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %4, metadata !128, metadata !DIExpression()), !dbg !129
  %18 = load %struct._xmlNode*, %struct._xmlNode** %3, align 8, !dbg !130
  %19 = call %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidCtxt* noundef %2, %struct._xmlNode* noundef %18), !dbg !131
  store %struct._xmlRelaxNGValidState* %19, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !129
  %20 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !132
  %21 = icmp ne %struct._xmlRelaxNGValidState* %20, null, !dbg !134
  br i1 %21, label %22, label %26, !dbg !135

22:                                               ; preds = %14
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 96, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !136
  %24 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !138
  %25 = bitcast %struct._xmlRelaxNGValidState* %24 to i8*, !dbg !138
  call void @free(i8* noundef %25) #7, !dbg !139
  br label %26, !dbg !140

26:                                               ; preds = %22, %14
  ret i32 0, !dbg !141
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !142 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !146, metadata !DIExpression()), !dbg !147
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %7, metadata !152, metadata !DIExpression()), !dbg !154
  %8 = load i8*, i8** %4, align 8, !dbg !155
  store i8* %8, i8** %7, align 8, !dbg !154
  br label %9, !dbg !156

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !157
  %11 = add i64 %10, -1, !dbg !157
  store i64 %11, i64* %6, align 8, !dbg !157
  %12 = icmp ugt i64 %10, 0, !dbg !158
  br i1 %12, label %13, label %18, !dbg !156

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !159
  %15 = trunc i32 %14 to i8, !dbg !159
  %16 = load i8*, i8** %7, align 8, !dbg !160
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !160
  store i8* %17, i8** %7, align 8, !dbg !160
  store i8 %15, i8* %16, align 1, !dbg !161
  br label %9, !dbg !156, !llvm.loop !162

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !164
  ret i8* %19, !dbg !165
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/232_relaxng.c_1197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "460251d53121eaca03bdc365cb0cba0f")
!2 = !{!3, !8, !11}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 12, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 23, size: 192, elements: !6)
!6 = !{!7, !9, !10}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5, file: !1, line: 24, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "endvalue", scope: !5, file: !1, line: 25, baseType: !8, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5, file: !1, line: 26, baseType: !11, size: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 16, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 15, baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 15, flags: DIFlagFwdDecl)
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
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !26, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!8, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 31, type: !28)
!33 = !DILocation(line: 31, column: 24, scope: !25)
!34 = !DILocation(line: 32, column: 19, scope: !25)
!35 = !DILocation(line: 32, column: 12, scope: !25)
!36 = !DILocation(line: 32, column: 5, scope: !25)
!37 = distinct !DISubprogram(name: "xmlRngVErrMemory", scope: !1, file: !1, line: 36, type: !38, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !50}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxtPtr", file: !1, line: 11, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 10, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 19, size: 64, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !43, file: !1, line: 20, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !1, line: 14, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 13, baseType: !49)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 13, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 36, type: !40)
!54 = !DILocation(line: 36, column: 46, scope: !37)
!55 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !1, line: 36, type: !50)
!56 = !DILocation(line: 36, column: 64, scope: !37)
!57 = !DILocation(line: 37, column: 11, scope: !37)
!58 = !DILocation(line: 38, column: 11, scope: !37)
!59 = !DILocation(line: 39, column: 1, scope: !37)
!60 = distinct !DISubprogram(name: "xmlRelaxNGCopyValidState", scope: !1, file: !1, line: 42, type: !61, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!61 = !DISubroutineType(types: !62)
!62 = !{!3, !40, !11}
!63 = !DILocalVariable(name: "ctxt", arg: 1, scope: !60, file: !1, line: 42, type: !40)
!64 = !DILocation(line: 42, column: 71, scope: !60)
!65 = !DILocalVariable(name: "node", arg: 2, scope: !60, file: !1, line: 42, type: !11)
!66 = !DILocation(line: 42, column: 88, scope: !60)
!67 = !DILocalVariable(name: "ret", scope: !60, file: !1, line: 43, type: !3)
!68 = !DILocation(line: 43, column: 27, scope: !60)
!69 = !DILocation(line: 45, column: 35, scope: !60)
!70 = !DILocation(line: 45, column: 11, scope: !60)
!71 = !DILocation(line: 45, column: 9, scope: !60)
!72 = !DILocation(line: 46, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !60, file: !1, line: 46, column: 9)
!74 = !DILocation(line: 46, column: 13, scope: !73)
!75 = !DILocation(line: 46, column: 9, scope: !60)
!76 = !DILocation(line: 47, column: 26, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 46, column: 22)
!78 = !DILocation(line: 47, column: 9, scope: !77)
!79 = !DILocation(line: 48, column: 9, scope: !77)
!80 = !DILocation(line: 52, column: 12, scope: !60)
!81 = !DILocation(line: 52, column: 5, scope: !60)
!82 = !DILocation(line: 54, column: 5, scope: !60)
!83 = !DILocation(line: 54, column: 10, scope: !60)
!84 = !DILocation(line: 54, column: 16, scope: !60)
!85 = !DILocation(line: 55, column: 5, scope: !60)
!86 = !DILocation(line: 55, column: 10, scope: !60)
!87 = !DILocation(line: 55, column: 19, scope: !60)
!88 = !DILocation(line: 56, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !60, file: !1, line: 56, column: 9)
!90 = !DILocation(line: 56, column: 14, scope: !89)
!91 = !DILocation(line: 56, column: 9, scope: !60)
!92 = !DILocation(line: 57, column: 34, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 56, column: 23)
!94 = !DILocation(line: 57, column: 40, scope: !93)
!95 = !DILocation(line: 57, column: 21, scope: !93)
!96 = !DILocation(line: 57, column: 9, scope: !93)
!97 = !DILocation(line: 57, column: 14, scope: !93)
!98 = !DILocation(line: 57, column: 19, scope: !93)
!99 = !DILocation(line: 58, column: 5, scope: !93)
!100 = !DILocation(line: 59, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !89, file: !1, line: 58, column: 12)
!102 = !DILocation(line: 59, column: 9, scope: !101)
!103 = !DILocation(line: 59, column: 14, scope: !101)
!104 = !DILocation(line: 59, column: 19, scope: !101)
!105 = !DILocation(line: 62, column: 12, scope: !60)
!106 = !DILocation(line: 62, column: 5, scope: !60)
!107 = !DILocation(line: 63, column: 1, scope: !60)
!108 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 65, type: !109, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!109 = !DISubroutineType(types: !110)
!110 = !{!111}
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !DILocalVariable(name: "ctxt", scope: !108, file: !1, line: 67, type: !42)
!113 = !DILocation(line: 67, column: 25, scope: !108)
!114 = !DILocalVariable(name: "node", scope: !108, file: !1, line: 68, type: !11)
!115 = !DILocation(line: 68, column: 16, scope: !108)
!116 = !DILocation(line: 71, column: 30, scope: !108)
!117 = !DILocation(line: 71, column: 24, scope: !108)
!118 = !DILocation(line: 71, column: 5, scope: !108)
!119 = !DILocation(line: 74, column: 24, scope: !108)
!120 = !DILocation(line: 74, column: 5, scope: !108)
!121 = !DILocation(line: 77, column: 22, scope: !108)
!122 = !DILocation(line: 77, column: 26, scope: !108)
!123 = !DILocation(line: 77, column: 34, scope: !108)
!124 = !DILocation(line: 77, column: 37, scope: !108)
!125 = !DILocation(line: 77, column: 42, scope: !108)
!126 = !DILocation(line: 77, column: 17, scope: !108)
!127 = !DILocation(line: 77, column: 5, scope: !108)
!128 = !DILocalVariable(name: "result", scope: !108, file: !1, line: 80, type: !3)
!129 = !DILocation(line: 80, column: 27, scope: !108)
!130 = !DILocation(line: 80, column: 68, scope: !108)
!131 = !DILocation(line: 80, column: 36, scope: !108)
!132 = !DILocation(line: 83, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !108, file: !1, line: 83, column: 9)
!134 = !DILocation(line: 83, column: 16, scope: !133)
!135 = !DILocation(line: 83, column: 9, scope: !108)
!136 = !DILocation(line: 96, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 83, column: 25)
!138 = !DILocation(line: 99, column: 14, scope: !137)
!139 = !DILocation(line: 99, column: 9, scope: !137)
!140 = !DILocation(line: 100, column: 5, scope: !137)
!141 = !DILocation(line: 102, column: 5, scope: !108)
!142 = distinct !DISubprogram(name: "memset", scope: !143, file: !143, line: 12, type: !144, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!143 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!144 = !DISubroutineType(types: !145)
!145 = !{!8, !8, !111, !28}
!146 = !DILocalVariable(name: "dst", arg: 1, scope: !142, file: !143, line: 12, type: !8)
!147 = !DILocation(line: 12, column: 20, scope: !142)
!148 = !DILocalVariable(name: "s", arg: 2, scope: !142, file: !143, line: 12, type: !111)
!149 = !DILocation(line: 12, column: 29, scope: !142)
!150 = !DILocalVariable(name: "count", arg: 3, scope: !142, file: !143, line: 12, type: !28)
!151 = !DILocation(line: 12, column: 39, scope: !142)
!152 = !DILocalVariable(name: "a", scope: !142, file: !143, line: 13, type: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!154 = !DILocation(line: 13, column: 9, scope: !142)
!155 = !DILocation(line: 13, column: 13, scope: !142)
!156 = !DILocation(line: 14, column: 3, scope: !142)
!157 = !DILocation(line: 14, column: 15, scope: !142)
!158 = !DILocation(line: 14, column: 18, scope: !142)
!159 = !DILocation(line: 15, column: 12, scope: !142)
!160 = !DILocation(line: 15, column: 7, scope: !142)
!161 = !DILocation(line: 15, column: 10, scope: !142)
!162 = distinct !{!162, !156, !159, !163}
!163 = !{!"llvm.loop.mustprogress"}
!164 = !DILocation(line: 16, column: 10, scope: !142)
!165 = !DILocation(line: 16, column: 3, scope: !142)
