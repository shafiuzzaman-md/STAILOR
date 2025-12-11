; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/375_xmlschemas.c_5662_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/375_xmlschemas.c_5662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaItemList = type { i32 }
%struct.xmlSchemaSubstGroup = type { i8*, %struct.xmlSchemaItemList* }

@.str = private unnamed_addr constant [42 x i8] c"allocating a substitution group container\00", align 1
@xmlSchemaFormatQName.buffer = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"formatted_qname\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"head_param\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/375_xmlschemas.c_5662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !28 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !31, metadata !DIExpression()), !dbg !32
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlSchemaItemList* @xmlSchemaItemListCreate() #0 !dbg !38 {
  %1 = alloca %struct.xmlSchemaItemList*, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaItemList** %1, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !49
  %3 = bitcast i8* %2 to %struct.xmlSchemaItemList*, !dbg !49
  store %struct.xmlSchemaItemList* %3, %struct.xmlSchemaItemList** %1, align 8, !dbg !48
  %4 = load %struct.xmlSchemaItemList*, %struct.xmlSchemaItemList** %1, align 8, !dbg !50
  %5 = icmp ne %struct.xmlSchemaItemList* %4, null, !dbg !50
  br i1 %5, label %6, label %9, !dbg !52

6:                                                ; preds = %0
  %7 = load %struct.xmlSchemaItemList*, %struct.xmlSchemaItemList** %1, align 8, !dbg !53
  %8 = getelementptr inbounds %struct.xmlSchemaItemList, %struct.xmlSchemaItemList* %7, i32 0, i32 0, !dbg !55
  store i32 0, i32* %8, align 4, !dbg !56
  br label %9, !dbg !57

9:                                                ; preds = %6, %0
  %10 = load %struct.xmlSchemaItemList*, %struct.xmlSchemaItemList** %1, align 8, !dbg !58
  ret %struct.xmlSchemaItemList* %10, !dbg !59
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaSubstGroupFree(%struct.xmlSchemaSubstGroup* noundef %0) #0 !dbg !60 {
  %2 = alloca %struct.xmlSchemaSubstGroup*, align 8
  store %struct.xmlSchemaSubstGroup* %0, %struct.xmlSchemaSubstGroup** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaSubstGroup** %2, metadata !69, metadata !DIExpression()), !dbg !70
  %3 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !71
  %4 = icmp ne %struct.xmlSchemaSubstGroup* %3, null, !dbg !71
  br i1 %4, label %5, label %12, !dbg !73

5:                                                ; preds = %1
  %6 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !74
  %7 = getelementptr inbounds %struct.xmlSchemaSubstGroup, %struct.xmlSchemaSubstGroup* %6, i32 0, i32 1, !dbg !76
  %8 = load %struct.xmlSchemaItemList*, %struct.xmlSchemaItemList** %7, align 8, !dbg !76
  %9 = bitcast %struct.xmlSchemaItemList* %8 to i8*, !dbg !74
  call void @free(i8* noundef %9) #7, !dbg !77
  %10 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !78
  %11 = bitcast %struct.xmlSchemaSubstGroup* %10 to i8*, !dbg !78
  call void @free(i8* noundef %11) #7, !dbg !79
  br label %12, !dbg !80

12:                                               ; preds = %5, %1
  ret void, !dbg !81
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlSchemaSubstGroup* @xmlSchemaSubstGroupCreate(i8* noundef %0) #0 !dbg !82 {
  %2 = alloca %struct.xmlSchemaSubstGroup*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xmlSchemaSubstGroup*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaSubstGroup** %4, metadata !87, metadata !DIExpression()), !dbg !88
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !89
  %6 = bitcast i8* %5 to %struct.xmlSchemaSubstGroup*, !dbg !89
  store %struct.xmlSchemaSubstGroup* %6, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !88
  %7 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !90
  %8 = icmp eq %struct.xmlSchemaSubstGroup* %7, null, !dbg !92
  br i1 %8, label %9, label %10, !dbg !93

9:                                                ; preds = %1
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !94
  store %struct.xmlSchemaSubstGroup* null, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !96
  br label %28, !dbg !96

10:                                               ; preds = %1
  %11 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !97
  %12 = bitcast %struct.xmlSchemaSubstGroup* %11 to i8*, !dbg !98
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !98
  %14 = load i8*, i8** %3, align 8, !dbg !99
  %15 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !100
  %16 = getelementptr inbounds %struct.xmlSchemaSubstGroup, %struct.xmlSchemaSubstGroup* %15, i32 0, i32 0, !dbg !101
  store i8* %14, i8** %16, align 8, !dbg !102
  %17 = call %struct.xmlSchemaItemList* @xmlSchemaItemListCreate(), !dbg !103
  %18 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !104
  %19 = getelementptr inbounds %struct.xmlSchemaSubstGroup, %struct.xmlSchemaSubstGroup* %18, i32 0, i32 1, !dbg !105
  store %struct.xmlSchemaItemList* %17, %struct.xmlSchemaItemList** %19, align 8, !dbg !106
  %20 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !107
  %21 = getelementptr inbounds %struct.xmlSchemaSubstGroup, %struct.xmlSchemaSubstGroup* %20, i32 0, i32 1, !dbg !109
  %22 = load %struct.xmlSchemaItemList*, %struct.xmlSchemaItemList** %21, align 8, !dbg !109
  %23 = icmp eq %struct.xmlSchemaItemList* %22, null, !dbg !110
  br i1 %23, label %24, label %26, !dbg !111

24:                                               ; preds = %10
  %25 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !112
  call void @xmlSchemaSubstGroupFree(%struct.xmlSchemaSubstGroup* noundef %25), !dbg !114
  store %struct.xmlSchemaSubstGroup* null, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !115
  br label %28, !dbg !115

26:                                               ; preds = %10
  %27 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %4, align 8, !dbg !116
  store %struct.xmlSchemaSubstGroup* %27, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !117
  br label %28, !dbg !117

28:                                               ; preds = %26, %24, %9
  %29 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %2, align 8, !dbg !118
  ret %struct.xmlSchemaSubstGroup* %29, !dbg !118
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1) #0 !dbg !2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !121, metadata !DIExpression()), !dbg !122
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !123
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), !dbg !124
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xmlSchemaSubstGroup*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !128, metadata !DIExpression()), !dbg !129
  %4 = bitcast i8** %2 to i8*, !dbg !130
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !131
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaSubstGroup** %3, metadata !132, metadata !DIExpression()), !dbg !133
  %5 = load i8*, i8** %2, align 8, !dbg !134
  %6 = call %struct.xmlSchemaSubstGroup* @xmlSchemaSubstGroupCreate(i8* noundef %5), !dbg !135
  store %struct.xmlSchemaSubstGroup* %6, %struct.xmlSchemaSubstGroup** %3, align 8, !dbg !133
  %7 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %3, align 8, !dbg !136
  %8 = icmp ne %struct.xmlSchemaSubstGroup* %7, null, !dbg !138
  br i1 %8, label %9, label %12, !dbg !139

9:                                                ; preds = %0
  %10 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !140
  %11 = load %struct.xmlSchemaSubstGroup*, %struct.xmlSchemaSubstGroup** %3, align 8, !dbg !142
  call void @xmlSchemaSubstGroupFree(%struct.xmlSchemaSubstGroup* noundef %11), !dbg !143
  br label %12, !dbg !144

12:                                               ; preds = %9, %0
  ret i32 0, !dbg !145
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !146 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !159, metadata !DIExpression()), !dbg !160
  %8 = load i8*, i8** %4, align 8, !dbg !161
  store i8* %8, i8** %7, align 8, !dbg !160
  br label %9, !dbg !162

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !163
  %11 = add i64 %10, -1, !dbg !163
  store i64 %11, i64* %6, align 8, !dbg !163
  %12 = icmp ugt i64 %10, 0, !dbg !164
  br i1 %12, label %13, label %18, !dbg !162

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !165
  %15 = trunc i32 %14 to i8, !dbg !165
  %16 = load i8*, i8** %7, align 8, !dbg !166
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !166
  store i8* %17, i8** %7, align 8, !dbg !166
  store i8 %15, i8* %16, align 1, !dbg !167
  br label %9, !dbg !162, !llvm.loop !168

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !170
  ret i8* %19, !dbg !171
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!10, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 70, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/375_xmlschemas.c_5662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "18d5e4cc403a73649c32337999cd6339")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !3, file: !3, line: 24, type: !29, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !12, !8, !8}
!31 = !DILocalVariable(name: "ctx", arg: 1, scope: !28, file: !3, line: 24, type: !12)
!32 = !DILocation(line: 24, column: 32, scope: !28)
!33 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !3, line: 24, type: !8)
!34 = !DILocation(line: 24, column: 49, scope: !28)
!35 = !DILocalVariable(name: "extra", arg: 3, scope: !28, file: !3, line: 24, type: !8)
!36 = !DILocation(line: 24, column: 66, scope: !28)
!37 = !DILocation(line: 26, column: 1, scope: !28)
!38 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !3, file: !3, line: 28, type: !39, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!39 = !DISubroutineType(types: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaItemList", file: !3, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaItemList", file: !3, line: 18, size: 32, elements: !44)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !43, file: !3, line: 20, baseType: !46, size: 32)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DILocalVariable(name: "list", scope: !38, file: !3, line: 30, type: !41)
!48 = !DILocation(line: 30, column: 24, scope: !38)
!49 = !DILocation(line: 30, column: 31, scope: !38)
!50 = !DILocation(line: 31, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !38, file: !3, line: 31, column: 9)
!52 = !DILocation(line: 31, column: 9, scope: !38)
!53 = !DILocation(line: 32, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !3, line: 31, column: 15)
!55 = !DILocation(line: 32, column: 15, scope: !54)
!56 = !DILocation(line: 32, column: 21, scope: !54)
!57 = !DILocation(line: 33, column: 5, scope: !54)
!58 = !DILocation(line: 34, column: 12, scope: !38)
!59 = !DILocation(line: 34, column: 5, scope: !38)
!60 = distinct !DISubprogram(name: "xmlSchemaSubstGroupFree", scope: !3, file: !3, line: 37, type: !61, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaSubstGroup", file: !3, line: 10, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaSubstGroup", file: !3, line: 13, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !65, file: !3, line: 14, baseType: !12, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "members", scope: !65, file: !3, line: 15, baseType: !41, size: 64, offset: 64)
!69 = !DILocalVariable(name: "group", arg: 1, scope: !60, file: !3, line: 37, type: !63)
!70 = !DILocation(line: 37, column: 51, scope: !60)
!71 = !DILocation(line: 38, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !60, file: !3, line: 38, column: 9)
!73 = !DILocation(line: 38, column: 9, scope: !60)
!74 = !DILocation(line: 39, column: 14, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !3, line: 38, column: 16)
!76 = !DILocation(line: 39, column: 21, scope: !75)
!77 = !DILocation(line: 39, column: 9, scope: !75)
!78 = !DILocation(line: 40, column: 14, scope: !75)
!79 = !DILocation(line: 40, column: 9, scope: !75)
!80 = !DILocation(line: 41, column: 5, scope: !75)
!81 = !DILocation(line: 42, column: 1, scope: !60)
!82 = distinct !DISubprogram(name: "xmlSchemaSubstGroupCreate", scope: !3, file: !3, line: 45, type: !83, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!83 = !DISubroutineType(types: !84)
!84 = !{!63, !12}
!85 = !DILocalVariable(name: "head", arg: 1, scope: !82, file: !3, line: 45, type: !12)
!86 = !DILocation(line: 45, column: 54, scope: !82)
!87 = !DILocalVariable(name: "ret", scope: !82, file: !3, line: 46, type: !63)
!88 = !DILocation(line: 46, column: 26, scope: !82)
!89 = !DILocation(line: 46, column: 32, scope: !82)
!90 = !DILocation(line: 47, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !82, file: !3, line: 47, column: 9)
!92 = !DILocation(line: 47, column: 13, scope: !91)
!93 = !DILocation(line: 47, column: 9, scope: !82)
!94 = !DILocation(line: 48, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !3, line: 47, column: 22)
!96 = !DILocation(line: 50, column: 9, scope: !95)
!97 = !DILocation(line: 54, column: 12, scope: !82)
!98 = !DILocation(line: 54, column: 5, scope: !82)
!99 = !DILocation(line: 56, column: 17, scope: !82)
!100 = !DILocation(line: 56, column: 5, scope: !82)
!101 = !DILocation(line: 56, column: 10, scope: !82)
!102 = !DILocation(line: 56, column: 15, scope: !82)
!103 = !DILocation(line: 58, column: 20, scope: !82)
!104 = !DILocation(line: 58, column: 5, scope: !82)
!105 = !DILocation(line: 58, column: 10, scope: !82)
!106 = !DILocation(line: 58, column: 18, scope: !82)
!107 = !DILocation(line: 59, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !82, file: !3, line: 59, column: 9)
!109 = !DILocation(line: 59, column: 14, scope: !108)
!110 = !DILocation(line: 59, column: 22, scope: !108)
!111 = !DILocation(line: 59, column: 9, scope: !82)
!112 = !DILocation(line: 60, column: 33, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 59, column: 31)
!114 = !DILocation(line: 60, column: 9, scope: !113)
!115 = !DILocation(line: 61, column: 9, scope: !113)
!116 = !DILocation(line: 64, column: 12, scope: !82)
!117 = !DILocation(line: 64, column: 5, scope: !82)
!118 = !DILocation(line: 65, column: 1, scope: !82)
!119 = !DILocalVariable(name: "prefix", arg: 1, scope: !2, file: !3, line: 68, type: !8)
!120 = !DILocation(line: 68, column: 40, scope: !2)
!121 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 68, type: !8)
!122 = !DILocation(line: 68, column: 60, scope: !2)
!123 = !DILocation(line: 71, column: 5, scope: !2)
!124 = !DILocation(line: 72, column: 5, scope: !2)
!125 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 75, type: !126, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!126 = !DISubroutineType(types: !127)
!127 = !{!46}
!128 = !DILocalVariable(name: "head", scope: !125, file: !3, line: 77, type: !12)
!129 = !DILocation(line: 77, column: 11, scope: !125)
!130 = !DILocation(line: 78, column: 24, scope: !125)
!131 = !DILocation(line: 78, column: 5, scope: !125)
!132 = !DILocalVariable(name: "result", scope: !125, file: !3, line: 81, type: !63)
!133 = !DILocation(line: 81, column: 26, scope: !125)
!134 = !DILocation(line: 81, column: 61, scope: !125)
!135 = !DILocation(line: 81, column: 35, scope: !125)
!136 = !DILocation(line: 85, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !125, file: !3, line: 85, column: 9)
!138 = !DILocation(line: 85, column: 16, scope: !137)
!139 = !DILocation(line: 85, column: 9, scope: !125)
!140 = !DILocation(line: 92, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 85, column: 25)
!142 = !DILocation(line: 95, column: 33, scope: !141)
!143 = !DILocation(line: 95, column: 9, scope: !141)
!144 = !DILocation(line: 96, column: 5, scope: !141)
!145 = !DILocation(line: 98, column: 5, scope: !125)
!146 = distinct !DISubprogram(name: "memset", scope: !147, file: !147, line: 12, type: !148, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !14)
!147 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!148 = !DISubroutineType(types: !149)
!149 = !{!12, !12, !46, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 46, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DILocalVariable(name: "dst", arg: 1, scope: !146, file: !147, line: 12, type: !12)
!154 = !DILocation(line: 12, column: 20, scope: !146)
!155 = !DILocalVariable(name: "s", arg: 2, scope: !146, file: !147, line: 12, type: !46)
!156 = !DILocation(line: 12, column: 29, scope: !146)
!157 = !DILocalVariable(name: "count", arg: 3, scope: !146, file: !147, line: 12, type: !150)
!158 = !DILocation(line: 12, column: 39, scope: !146)
!159 = !DILocalVariable(name: "a", scope: !146, file: !147, line: 13, type: !6)
!160 = !DILocation(line: 13, column: 9, scope: !146)
!161 = !DILocation(line: 13, column: 13, scope: !146)
!162 = !DILocation(line: 14, column: 3, scope: !146)
!163 = !DILocation(line: 14, column: 15, scope: !146)
!164 = !DILocation(line: 14, column: 18, scope: !146)
!165 = !DILocation(line: 15, column: 12, scope: !146)
!166 = !DILocation(line: 15, column: 7, scope: !146)
!167 = !DILocation(line: 15, column: 10, scope: !146)
!168 = distinct !{!168, !162, !165, !169}
!169 = !{!"llvm.loop.mustprogress"}
!170 = !DILocation(line: 16, column: 10, scope: !146)
!171 = !DILocation(line: 16, column: 3, scope: !146)
