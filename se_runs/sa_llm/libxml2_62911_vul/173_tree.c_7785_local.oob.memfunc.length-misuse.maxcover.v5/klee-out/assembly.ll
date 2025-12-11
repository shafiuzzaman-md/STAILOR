; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/173_tree.c_7785_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/173_tree.c_7785_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlNsMapItem = type { i8*, i8*, i8*, i8*, i8*, i32 }
%struct.xmlNsMap = type { %struct.xmlNsMapItem*, %struct.xmlNsMapItem*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"allocating namespace map item\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/173_tree.c_7785_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
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
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !37 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !43, metadata !DIExpression()), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct.xmlNsMapItem*, align 8
  %3 = alloca %struct.xmlNsMap*, align 8
  %4 = alloca %struct.xmlNsMapItem*, align 8
  store %struct.xmlNsMap* %0, %struct.xmlNsMap** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap** %3, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %4, metadata !58, metadata !DIExpression()), !dbg !59
  %5 = call i8* @xmlMalloc(i64 noundef 48), !dbg !60
  %6 = bitcast i8* %5 to %struct.xmlNsMapItem*, !dbg !61
  store %struct.xmlNsMapItem* %6, %struct.xmlNsMapItem** %4, align 8, !dbg !62
  %7 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !63
  %8 = icmp eq %struct.xmlNsMapItem* %7, null, !dbg !65
  br i1 %8, label %9, label %10, !dbg !66

9:                                                ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0)), !dbg !67
  store %struct.xmlNsMapItem* null, %struct.xmlNsMapItem** %2, align 8, !dbg !69
  br label %43, !dbg !69

10:                                               ; preds = %1
  %11 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !70
  %12 = bitcast %struct.xmlNsMapItem* %11 to i8*, !dbg !71
  %13 = call i8* @memset(i8* %12, i32 0, i64 48), !dbg !71
  %14 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !72
  %15 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %14, i32 0, i32 0, !dbg !74
  %16 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %15, align 8, !dbg !74
  %17 = icmp eq %struct.xmlNsMapItem* %16, null, !dbg !75
  br i1 %17, label %18, label %25, !dbg !76

18:                                               ; preds = %10
  %19 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !77
  %20 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !79
  %21 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %20, i32 0, i32 0, !dbg !80
  store %struct.xmlNsMapItem* %19, %struct.xmlNsMapItem** %21, align 8, !dbg !81
  %22 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !82
  %23 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !83
  %24 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %23, i32 0, i32 1, !dbg !84
  store %struct.xmlNsMapItem* %22, %struct.xmlNsMapItem** %24, align 8, !dbg !85
  br label %41, !dbg !86

25:                                               ; preds = %10
  %26 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !87
  %27 = bitcast %struct.xmlNsMapItem* %26 to i8*, !dbg !87
  %28 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !89
  %29 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %28, i32 0, i32 1, !dbg !90
  %30 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %29, align 8, !dbg !90
  %31 = getelementptr inbounds %struct.xmlNsMapItem, %struct.xmlNsMapItem* %30, i32 0, i32 0, !dbg !91
  store i8* %27, i8** %31, align 8, !dbg !92
  %32 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !93
  %33 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %32, i32 0, i32 1, !dbg !94
  %34 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %33, align 8, !dbg !94
  %35 = bitcast %struct.xmlNsMapItem* %34 to i8*, !dbg !93
  %36 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !95
  %37 = getelementptr inbounds %struct.xmlNsMapItem, %struct.xmlNsMapItem* %36, i32 0, i32 1, !dbg !96
  store i8* %35, i8** %37, align 8, !dbg !97
  %38 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !98
  %39 = load %struct.xmlNsMap*, %struct.xmlNsMap** %3, align 8, !dbg !99
  %40 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %39, i32 0, i32 1, !dbg !100
  store %struct.xmlNsMapItem* %38, %struct.xmlNsMapItem** %40, align 8, !dbg !101
  br label %41

41:                                               ; preds = %25, %18
  %42 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %4, align 8, !dbg !102
  store %struct.xmlNsMapItem* %42, %struct.xmlNsMapItem** %2, align 8, !dbg !103
  br label %43, !dbg !103

43:                                               ; preds = %41, %9
  %44 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %2, align 8, !dbg !104
  ret %struct.xmlNsMapItem* %44, !dbg !104
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlNsMap, align 8
  %3 = alloca %struct.xmlNsMapItem*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlNsMap* %2, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata %struct.xmlNsMapItem** %3, metadata !110, metadata !DIExpression()), !dbg !111
  %4 = bitcast %struct.xmlNsMap* %2 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  %5 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !114
  %6 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %5, align 8, !dbg !114
  %7 = icmp eq %struct.xmlNsMapItem* %6, null, !dbg !115
  br i1 %7, label %12, label %8, !dbg !116

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 0, !dbg !117
  %10 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %9, align 8, !dbg !117
  %11 = icmp ne %struct.xmlNsMapItem* %10, null, !dbg !118
  br label %12, !dbg !116

12:                                               ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32, !dbg !116
  %15 = sext i32 %14 to i64, !dbg !119
  call void @klee_assume(i64 noundef %15), !dbg !120
  %16 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 1, !dbg !121
  %17 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %16, align 8, !dbg !121
  %18 = icmp eq %struct.xmlNsMapItem* %17, null, !dbg !122
  br i1 %18, label %23, label %19, !dbg !123

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.xmlNsMap, %struct.xmlNsMap* %2, i32 0, i32 1, !dbg !124
  %21 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %20, align 8, !dbg !124
  %22 = icmp ne %struct.xmlNsMapItem* %21, null, !dbg !125
  br label %23, !dbg !123

23:                                               ; preds = %19, %12
  %24 = phi i1 [ true, %12 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !123
  %26 = sext i32 %25 to i64, !dbg !126
  call void @klee_assume(i64 noundef %26), !dbg !127
  %27 = call %struct.xmlNsMapItem* @target_function(%struct.xmlNsMap* noundef %2), !dbg !128
  store %struct.xmlNsMapItem* %27, %struct.xmlNsMapItem** %3, align 8, !dbg !129
  %28 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !130
  %29 = icmp ne %struct.xmlNsMapItem* %28, null, !dbg !132
  br i1 %29, label %30, label %32, !dbg !133

30:                                               ; preds = %23
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !134
  br label %32, !dbg !136

32:                                               ; preds = %30, %23
  %33 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !137
  %34 = icmp ne %struct.xmlNsMapItem* %33, null, !dbg !139
  br i1 %34, label %35, label %38, !dbg !140

35:                                               ; preds = %32
  %36 = load %struct.xmlNsMapItem*, %struct.xmlNsMapItem** %3, align 8, !dbg !141
  %37 = bitcast %struct.xmlNsMapItem* %36 to i8*, !dbg !141
  call void @free(i8* noundef %37) #7, !dbg !143
  br label %38, !dbg !144

38:                                               ; preds = %35, %32
  ret i32 0, !dbg !145
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !146 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !152, metadata !DIExpression()), !dbg !153
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %7, metadata !156, metadata !DIExpression()), !dbg !158
  %8 = load i8*, i8** %4, align 8, !dbg !159
  store i8* %8, i8** %7, align 8, !dbg !158
  br label %9, !dbg !160

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !161
  %11 = add i64 %10, -1, !dbg !161
  store i64 %11, i64* %6, align 8, !dbg !161
  %12 = icmp ugt i64 %10, 0, !dbg !162
  br i1 %12, label %13, label %18, !dbg !160

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !163
  %15 = trunc i32 %14 to i8, !dbg !163
  %16 = load i8*, i8** %7, align 8, !dbg !164
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !164
  store i8* %17, i8** %7, align 8, !dbg !164
  store i8 %15, i8* %16, align 1, !dbg !165
  br label %9, !dbg !160, !llvm.loop !166

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !168
  ret i8* %19, !dbg !169
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/173_tree.c_7785_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7e050a8b21f45790dc5d14bc8a9aaa85")
!2 = !{!3, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMapItem", file: !1, line: 17, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMapItem", file: !1, line: 10, size: 384, elements: !6)
!6 = !{!7, !9, !10, !11, !12, !13}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5, file: !1, line: 12, baseType: !8, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5, file: !1, line: 13, baseType: !8, size: 64, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !5, file: !1, line: 14, baseType: !8, size: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !5, file: !1, line: 15, baseType: !8, size: 64, offset: 256)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5, file: !1, line: 16, baseType: !14, size: 32, offset: 320)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 26, type: !26, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!26 = !DISubroutineType(types: !27)
!27 = !{!8, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !{}
!32 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 26, type: !28)
!33 = !DILocation(line: 26, column: 24, scope: !25)
!34 = !DILocation(line: 27, column: 19, scope: !25)
!35 = !DILocation(line: 27, column: 12, scope: !25)
!36 = !DILocation(line: 27, column: 5, scope: !25)
!37 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 31, type: !38, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "msg", arg: 1, scope: !37, file: !1, line: 31, type: !40)
!44 = !DILocation(line: 31, column: 35, scope: !37)
!45 = !DILocation(line: 33, column: 1, scope: !37)
!46 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 36, type: !47, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!47 = !DISubroutineType(types: !48)
!48 = !{!3, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsMap", file: !1, line: 23, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlNsMap", file: !1, line: 19, size: 192, elements: !52)
!52 = !{!53, !54, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !51, file: !1, line: 20, baseType: !3, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !51, file: !1, line: 21, baseType: !3, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !51, file: !1, line: 22, baseType: !14, size: 32, offset: 128)
!56 = !DILocalVariable(name: "map", arg: 1, scope: !46, file: !1, line: 36, type: !49)
!57 = !DILocation(line: 36, column: 41, scope: !46)
!58 = !DILocalVariable(name: "ret", scope: !46, file: !1, line: 37, type: !3)
!59 = !DILocation(line: 37, column: 19, scope: !46)
!60 = !DILocation(line: 39, column: 27, scope: !46)
!61 = !DILocation(line: 39, column: 11, scope: !46)
!62 = !DILocation(line: 39, column: 9, scope: !46)
!63 = !DILocation(line: 40, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !46, file: !1, line: 40, column: 9)
!65 = !DILocation(line: 40, column: 13, scope: !64)
!66 = !DILocation(line: 40, column: 9, scope: !46)
!67 = !DILocation(line: 41, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 40, column: 22)
!69 = !DILocation(line: 42, column: 9, scope: !68)
!70 = !DILocation(line: 46, column: 12, scope: !46)
!71 = !DILocation(line: 46, column: 5, scope: !46)
!72 = !DILocation(line: 48, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !46, file: !1, line: 48, column: 9)
!74 = !DILocation(line: 48, column: 14, scope: !73)
!75 = !DILocation(line: 48, column: 20, scope: !73)
!76 = !DILocation(line: 48, column: 9, scope: !46)
!77 = !DILocation(line: 49, column: 22, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 48, column: 29)
!79 = !DILocation(line: 49, column: 9, scope: !78)
!80 = !DILocation(line: 49, column: 14, scope: !78)
!81 = !DILocation(line: 49, column: 20, scope: !78)
!82 = !DILocation(line: 50, column: 21, scope: !78)
!83 = !DILocation(line: 50, column: 9, scope: !78)
!84 = !DILocation(line: 50, column: 14, scope: !78)
!85 = !DILocation(line: 50, column: 19, scope: !78)
!86 = !DILocation(line: 51, column: 5, scope: !78)
!87 = !DILocation(line: 52, column: 27, scope: !88)
!88 = distinct !DILexicalBlock(scope: !73, file: !1, line: 51, column: 12)
!89 = !DILocation(line: 52, column: 9, scope: !88)
!90 = !DILocation(line: 52, column: 14, scope: !88)
!91 = !DILocation(line: 52, column: 20, scope: !88)
!92 = !DILocation(line: 52, column: 25, scope: !88)
!93 = !DILocation(line: 53, column: 21, scope: !88)
!94 = !DILocation(line: 53, column: 26, scope: !88)
!95 = !DILocation(line: 53, column: 9, scope: !88)
!96 = !DILocation(line: 53, column: 14, scope: !88)
!97 = !DILocation(line: 53, column: 19, scope: !88)
!98 = !DILocation(line: 54, column: 21, scope: !88)
!99 = !DILocation(line: 54, column: 9, scope: !88)
!100 = !DILocation(line: 54, column: 14, scope: !88)
!101 = !DILocation(line: 54, column: 19, scope: !88)
!102 = !DILocation(line: 57, column: 12, scope: !46)
!103 = !DILocation(line: 57, column: 5, scope: !46)
!104 = !DILocation(line: 58, column: 1, scope: !46)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !106, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!106 = !DISubroutineType(types: !107)
!107 = !{!14}
!108 = !DILocalVariable(name: "map", scope: !105, file: !1, line: 61, type: !50)
!109 = !DILocation(line: 61, column: 14, scope: !105)
!110 = !DILocalVariable(name: "result", scope: !105, file: !1, line: 62, type: !3)
!111 = !DILocation(line: 62, column: 19, scope: !105)
!112 = !DILocation(line: 65, column: 24, scope: !105)
!113 = !DILocation(line: 65, column: 5, scope: !105)
!114 = !DILocation(line: 68, column: 21, scope: !105)
!115 = !DILocation(line: 68, column: 27, scope: !105)
!116 = !DILocation(line: 68, column: 35, scope: !105)
!117 = !DILocation(line: 68, column: 42, scope: !105)
!118 = !DILocation(line: 68, column: 48, scope: !105)
!119 = !DILocation(line: 68, column: 17, scope: !105)
!120 = !DILocation(line: 68, column: 5, scope: !105)
!121 = !DILocation(line: 69, column: 21, scope: !105)
!122 = !DILocation(line: 69, column: 26, scope: !105)
!123 = !DILocation(line: 69, column: 34, scope: !105)
!124 = !DILocation(line: 69, column: 41, scope: !105)
!125 = !DILocation(line: 69, column: 46, scope: !105)
!126 = !DILocation(line: 69, column: 17, scope: !105)
!127 = !DILocation(line: 69, column: 5, scope: !105)
!128 = !DILocation(line: 72, column: 14, scope: !105)
!129 = !DILocation(line: 72, column: 12, scope: !105)
!130 = !DILocation(line: 78, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !105, file: !1, line: 78, column: 9)
!132 = !DILocation(line: 78, column: 16, scope: !131)
!133 = !DILocation(line: 78, column: 9, scope: !105)
!134 = !DILocation(line: 86, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !131, file: !1, line: 78, column: 25)
!136 = !DILocation(line: 87, column: 5, scope: !135)
!137 = !DILocation(line: 90, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !105, file: !1, line: 90, column: 9)
!139 = !DILocation(line: 90, column: 16, scope: !138)
!140 = !DILocation(line: 90, column: 9, scope: !105)
!141 = !DILocation(line: 91, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 90, column: 25)
!143 = !DILocation(line: 91, column: 9, scope: !142)
!144 = !DILocation(line: 92, column: 5, scope: !142)
!145 = !DILocation(line: 94, column: 5, scope: !105)
!146 = distinct !DISubprogram(name: "memset", scope: !147, file: !147, line: 12, type: !148, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !31)
!147 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!148 = !DISubroutineType(types: !149)
!149 = !{!8, !8, !14, !28}
!150 = !DILocalVariable(name: "dst", arg: 1, scope: !146, file: !147, line: 12, type: !8)
!151 = !DILocation(line: 12, column: 20, scope: !146)
!152 = !DILocalVariable(name: "s", arg: 2, scope: !146, file: !147, line: 12, type: !14)
!153 = !DILocation(line: 12, column: 29, scope: !146)
!154 = !DILocalVariable(name: "count", arg: 3, scope: !146, file: !147, line: 12, type: !28)
!155 = !DILocation(line: 12, column: 39, scope: !146)
!156 = !DILocalVariable(name: "a", scope: !146, file: !147, line: 13, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!158 = !DILocation(line: 13, column: 9, scope: !146)
!159 = !DILocation(line: 13, column: 13, scope: !146)
!160 = !DILocation(line: 14, column: 3, scope: !146)
!161 = !DILocation(line: 14, column: 15, scope: !146)
!162 = !DILocation(line: 14, column: 18, scope: !146)
!163 = !DILocation(line: 15, column: 12, scope: !146)
!164 = !DILocation(line: 15, column: 7, scope: !146)
!165 = !DILocation(line: 15, column: 10, scope: !146)
!166 = distinct !{!166, !160, !163, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 16, column: 10, scope: !146)
!169 = !DILocation(line: 16, column: 3, scope: !146)
