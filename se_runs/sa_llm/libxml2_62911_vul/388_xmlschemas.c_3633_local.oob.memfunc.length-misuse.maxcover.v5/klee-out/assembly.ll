; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/388_xmlschemas.c_3633_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/388_xmlschemas.c_3633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaBucket = type { i8*, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"allocating schema bucket\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ns_buf\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"(0 && \22Vulnerability condition would be checked here if we had access to size variable\22) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/388_xmlschemas.c_3633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !31 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaItemListCreate() #0 !dbg !42 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !45, metadata !DIExpression()), !dbg !46
  %2 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !47
  store i8* %2, i8** %1, align 8, !dbg !46
  %3 = load i8*, i8** %1, align 8, !dbg !48
  %4 = icmp ne i8* %3, null, !dbg !49
  %5 = zext i1 %4 to i32, !dbg !49
  %6 = sext i32 %5 to i64, !dbg !48
  call void @klee_assume(i64 noundef %6), !dbg !50
  %7 = load i8*, i8** %1, align 8, !dbg !51
  ret i8* %7, !dbg !52
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaBucketFree(%struct._xmlSchemaBucket* noundef %0) #0 !dbg !53 {
  %2 = alloca %struct._xmlSchemaBucket*, align 8
  store %struct._xmlSchemaBucket* %0, %struct._xmlSchemaBucket** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaBucket** %2, metadata !56, metadata !DIExpression()), !dbg !57
  %3 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %2, align 8, !dbg !58
  %4 = icmp ne %struct._xmlSchemaBucket* %3, null, !dbg !58
  br i1 %4, label %5, label %11, !dbg !60

5:                                                ; preds = %1
  %6 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %2, align 8, !dbg !61
  %7 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %6, i32 0, i32 2, !dbg !63
  %8 = load i8*, i8** %7, align 8, !dbg !63
  call void @free(i8* noundef %8) #7, !dbg !64
  %9 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %2, align 8, !dbg !65
  %10 = bitcast %struct._xmlSchemaBucket* %9 to i8*, !dbg !65
  call void @free(i8* noundef %10) #7, !dbg !66
  br label %11, !dbg !67

11:                                               ; preds = %5, %1
  ret void, !dbg !68
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaBucket* @xmlSchemaParseRedefine(i8* noundef %0, i32 noundef %1) #0 !dbg !69 {
  %3 = alloca %struct._xmlSchemaBucket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlSchemaBucket*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaBucket** %6, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i64* %7, metadata !78, metadata !DIExpression()), !dbg !82
  %8 = bitcast i64* %7 to i8*, !dbg !83
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !84
  %9 = load i64, i64* %7, align 8, !dbg !85
  %10 = icmp uge i64 %9, 0, !dbg !86
  %11 = zext i1 %10 to i32, !dbg !86
  %12 = sext i32 %11 to i64, !dbg !85
  call void @klee_assume(i64 noundef %12), !dbg !87
  %13 = load i64, i64* %7, align 8, !dbg !88
  %14 = call noalias i8* @malloc(i64 noundef %13) #7, !dbg !89
  %15 = bitcast i8* %14 to %struct._xmlSchemaBucket*, !dbg !90
  store %struct._xmlSchemaBucket* %15, %struct._xmlSchemaBucket** %6, align 8, !dbg !91
  %16 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !92
  %17 = icmp eq %struct._xmlSchemaBucket* %16, null, !dbg !94
  br i1 %17, label %18, label %19, !dbg !95

18:                                               ; preds = %2
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef null), !dbg !96
  store %struct._xmlSchemaBucket* null, %struct._xmlSchemaBucket** %3, align 8, !dbg !98
  br label %41, !dbg !98

19:                                               ; preds = %2
  %20 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !99
  %21 = bitcast %struct._xmlSchemaBucket* %20 to i8*, !dbg !100
  %22 = load i64, i64* %7, align 8, !dbg !101
  %23 = call i8* @memset(i8* %21, i32 0, i64 %22), !dbg !100
  %24 = load i8*, i8** %4, align 8, !dbg !102
  %25 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !103
  %26 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %25, i32 0, i32 0, !dbg !104
  store i8* %24, i8** %26, align 8, !dbg !105
  %27 = load i32, i32* %5, align 4, !dbg !106
  %28 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !107
  %29 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %28, i32 0, i32 1, !dbg !108
  store i32 %27, i32* %29, align 8, !dbg !109
  %30 = call i8* @xmlSchemaItemListCreate(), !dbg !110
  %31 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !111
  %32 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %31, i32 0, i32 2, !dbg !112
  store i8* %30, i8** %32, align 8, !dbg !113
  %33 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !114
  %34 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %33, i32 0, i32 2, !dbg !116
  %35 = load i8*, i8** %34, align 8, !dbg !116
  %36 = icmp eq i8* %35, null, !dbg !117
  br i1 %36, label %37, label %39, !dbg !118

37:                                               ; preds = %19
  %38 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !119
  call void @xmlSchemaBucketFree(%struct._xmlSchemaBucket* noundef %38), !dbg !121
  store %struct._xmlSchemaBucket* null, %struct._xmlSchemaBucket** %3, align 8, !dbg !122
  br label %41, !dbg !122

39:                                               ; preds = %19
  %40 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !123
  store %struct._xmlSchemaBucket* %40, %struct._xmlSchemaBucket** %3, align 8, !dbg !124
  br label %41, !dbg !124

41:                                               ; preds = %39, %37, %18
  %42 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %3, align 8, !dbg !125
  ret %struct._xmlSchemaBucket* %42, !dbg !125
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaBucket*, align 8
  %5 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %3, metadata !132, metadata !DIExpression()), !dbg !133
  store i32 1, i32* %3, align 4, !dbg !133
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaBucket** %4, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !136, metadata !DIExpression()), !dbg !140
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !141
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !142
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 255, !dbg !143
  store i8 0, i8* %7, align 1, !dbg !144
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !145
  store i8* %8, i8** %2, align 8, !dbg !146
  %9 = load i8*, i8** %2, align 8, !dbg !147
  %10 = load i32, i32* %3, align 4, !dbg !148
  %11 = call %struct._xmlSchemaBucket* @xmlSchemaParseRedefine(i8* noundef %9, i32 noundef %10), !dbg !149
  store %struct._xmlSchemaBucket* %11, %struct._xmlSchemaBucket** %4, align 8, !dbg !150
  %12 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !151
  %13 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !152
  %14 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %4, align 8, !dbg !153
  %15 = icmp ne %struct._xmlSchemaBucket* %14, null, !dbg !153
  br i1 %15, label %16, label %18, !dbg !155

16:                                               ; preds = %0
  %17 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %4, align 8, !dbg !156
  call void @xmlSchemaBucketFree(%struct._xmlSchemaBucket* noundef %17), !dbg !158
  br label %18, !dbg !159

18:                                               ; preds = %16, %0
  ret i32 0, !dbg !160
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !165, metadata !DIExpression()), !dbg !166
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !167, metadata !DIExpression()), !dbg !168
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %7, metadata !171, metadata !DIExpression()), !dbg !173
  %8 = load i8*, i8** %4, align 8, !dbg !174
  store i8* %8, i8** %7, align 8, !dbg !173
  br label %9, !dbg !175

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !176
  %11 = add i64 %10, -1, !dbg !176
  store i64 %11, i64* %6, align 8, !dbg !176
  %12 = icmp ugt i64 %10, 0, !dbg !177
  br i1 %12, label %13, label %18, !dbg !175

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !178
  %15 = trunc i32 %14 to i8, !dbg !178
  %16 = load i8*, i8** %7, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %7, align 8, !dbg !179
  store i8 %15, i8* %16, align 1, !dbg !180
  br label %9, !dbg !175, !llvm.loop !181

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !183
  ret i8* %19, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/388_xmlschemas.c_3633_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "bf880e1b84c5c4773b4f1d903c9c8c4a")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_SCHEMA_TYPE_REDEFINE", value: 1)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucketPtr", file: !1, line: 11, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucket", file: !1, line: 10, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaBucket", file: !1, line: 17, size: 192, elements: !13)
!13 = !{!14, !18, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !12, file: !1, line: 18, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !1, line: 19, baseType: !19, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucketType", file: !1, line: 15, baseType: !3)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "globals", scope: !12, file: !1, line: 20, baseType: !8, size: 64, offset: 128)
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
!31 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 24, type: !32, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !8, !15, !15}
!34 = !{}
!35 = !DILocalVariable(name: "ctxt", arg: 1, scope: !31, file: !1, line: 24, type: !8)
!36 = !DILocation(line: 24, column: 32, scope: !31)
!37 = !DILocalVariable(name: "msg", arg: 2, scope: !31, file: !1, line: 24, type: !15)
!38 = !DILocation(line: 24, column: 50, scope: !31)
!39 = !DILocalVariable(name: "extra", arg: 3, scope: !31, file: !1, line: 24, type: !15)
!40 = !DILocation(line: 24, column: 67, scope: !31)
!41 = !DILocation(line: 26, column: 1, scope: !31)
!42 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 28, type: !43, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!43 = !DISubroutineType(types: !44)
!44 = !{!8}
!45 = !DILocalVariable(name: "list", scope: !42, file: !1, line: 29, type: !8)
!46 = !DILocation(line: 29, column: 11, scope: !42)
!47 = !DILocation(line: 29, column: 18, scope: !42)
!48 = !DILocation(line: 30, column: 17, scope: !42)
!49 = !DILocation(line: 30, column: 22, scope: !42)
!50 = !DILocation(line: 30, column: 5, scope: !42)
!51 = !DILocation(line: 31, column: 12, scope: !42)
!52 = !DILocation(line: 31, column: 5, scope: !42)
!53 = distinct !DISubprogram(name: "xmlSchemaBucketFree", scope: !1, file: !1, line: 34, type: !54, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !9}
!56 = !DILocalVariable(name: "bucket", arg: 1, scope: !53, file: !1, line: 34, type: !9)
!57 = !DILocation(line: 34, column: 45, scope: !53)
!58 = !DILocation(line: 35, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 35, column: 9)
!60 = !DILocation(line: 35, column: 9, scope: !53)
!61 = !DILocation(line: 36, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 35, column: 17)
!63 = !DILocation(line: 36, column: 22, scope: !62)
!64 = !DILocation(line: 36, column: 9, scope: !62)
!65 = !DILocation(line: 37, column: 14, scope: !62)
!66 = !DILocation(line: 37, column: 9, scope: !62)
!67 = !DILocation(line: 38, column: 5, scope: !62)
!68 = !DILocation(line: 39, column: 1, scope: !53)
!69 = distinct !DISubprogram(name: "xmlSchemaParseRedefine", scope: !1, file: !1, line: 45, type: !70, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!70 = !DISubroutineType(types: !71)
!71 = !{!9, !15, !19}
!72 = !DILocalVariable(name: "targetNamespace", arg: 1, scope: !69, file: !1, line: 45, type: !15)
!73 = !DILocation(line: 45, column: 55, scope: !69)
!74 = !DILocalVariable(name: "type", arg: 2, scope: !69, file: !1, line: 45, type: !19)
!75 = !DILocation(line: 45, column: 92, scope: !69)
!76 = !DILocalVariable(name: "ret", scope: !69, file: !1, line: 46, type: !9)
!77 = !DILocation(line: 46, column: 24, scope: !69)
!78 = !DILocalVariable(name: "size", scope: !69, file: !1, line: 47, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DILocation(line: 47, column: 12, scope: !69)
!83 = !DILocation(line: 50, column: 24, scope: !69)
!84 = !DILocation(line: 50, column: 5, scope: !69)
!85 = !DILocation(line: 53, column: 17, scope: !69)
!86 = !DILocation(line: 53, column: 22, scope: !69)
!87 = !DILocation(line: 53, column: 5, scope: !69)
!88 = !DILocation(line: 55, column: 39, scope: !69)
!89 = !DILocation(line: 55, column: 32, scope: !69)
!90 = !DILocation(line: 55, column: 11, scope: !69)
!91 = !DILocation(line: 55, column: 9, scope: !69)
!92 = !DILocation(line: 56, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !69, file: !1, line: 56, column: 9)
!94 = !DILocation(line: 56, column: 13, scope: !93)
!95 = !DILocation(line: 56, column: 9, scope: !69)
!96 = !DILocation(line: 57, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 56, column: 22)
!98 = !DILocation(line: 58, column: 9, scope: !97)
!99 = !DILocation(line: 62, column: 12, scope: !69)
!100 = !DILocation(line: 62, column: 5, scope: !69)
!101 = !DILocation(line: 62, column: 20, scope: !69)
!102 = !DILocation(line: 64, column: 28, scope: !69)
!103 = !DILocation(line: 64, column: 5, scope: !69)
!104 = !DILocation(line: 64, column: 10, scope: !69)
!105 = !DILocation(line: 64, column: 26, scope: !69)
!106 = !DILocation(line: 65, column: 17, scope: !69)
!107 = !DILocation(line: 65, column: 5, scope: !69)
!108 = !DILocation(line: 65, column: 10, scope: !69)
!109 = !DILocation(line: 65, column: 15, scope: !69)
!110 = !DILocation(line: 66, column: 20, scope: !69)
!111 = !DILocation(line: 66, column: 5, scope: !69)
!112 = !DILocation(line: 66, column: 10, scope: !69)
!113 = !DILocation(line: 66, column: 18, scope: !69)
!114 = !DILocation(line: 67, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !69, file: !1, line: 67, column: 9)
!116 = !DILocation(line: 67, column: 14, scope: !115)
!117 = !DILocation(line: 67, column: 22, scope: !115)
!118 = !DILocation(line: 67, column: 9, scope: !69)
!119 = !DILocation(line: 68, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 67, column: 31)
!121 = !DILocation(line: 68, column: 9, scope: !120)
!122 = !DILocation(line: 69, column: 9, scope: !120)
!123 = !DILocation(line: 72, column: 12, scope: !69)
!124 = !DILocation(line: 72, column: 5, scope: !69)
!125 = !DILocation(line: 73, column: 1, scope: !69)
!126 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !127, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!127 = !DISubroutineType(types: !128)
!128 = !{!129}
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DILocalVariable(name: "targetNamespace", scope: !126, file: !1, line: 76, type: !15)
!131 = !DILocation(line: 76, column: 17, scope: !126)
!132 = !DILocalVariable(name: "type", scope: !126, file: !1, line: 77, type: !19)
!133 = !DILocation(line: 77, column: 25, scope: !126)
!134 = !DILocalVariable(name: "result", scope: !126, file: !1, line: 78, type: !9)
!135 = !DILocation(line: 78, column: 24, scope: !126)
!136 = !DILocalVariable(name: "ns_buf", scope: !126, file: !1, line: 81, type: !137)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 256)
!140 = !DILocation(line: 81, column: 10, scope: !126)
!141 = !DILocation(line: 82, column: 24, scope: !126)
!142 = !DILocation(line: 82, column: 5, scope: !126)
!143 = !DILocation(line: 83, column: 5, scope: !126)
!144 = !DILocation(line: 83, column: 17, scope: !126)
!145 = !DILocation(line: 84, column: 23, scope: !126)
!146 = !DILocation(line: 84, column: 21, scope: !126)
!147 = !DILocation(line: 87, column: 37, scope: !126)
!148 = !DILocation(line: 87, column: 54, scope: !126)
!149 = !DILocation(line: 87, column: 14, scope: !126)
!150 = !DILocation(line: 87, column: 12, scope: !126)
!151 = !DILocation(line: 91, column: 5, scope: !126)
!152 = !DILocation(line: 94, column: 5, scope: !126)
!153 = !DILocation(line: 97, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !126, file: !1, line: 97, column: 9)
!155 = !DILocation(line: 97, column: 9, scope: !126)
!156 = !DILocation(line: 98, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 97, column: 17)
!158 = !DILocation(line: 98, column: 9, scope: !157)
!159 = !DILocation(line: 99, column: 5, scope: !157)
!160 = !DILocation(line: 101, column: 5, scope: !126)
!161 = distinct !DISubprogram(name: "memset", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !34)
!162 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!163 = !DISubroutineType(types: !164)
!164 = !{!8, !8, !129, !79}
!165 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !162, line: 12, type: !8)
!166 = !DILocation(line: 12, column: 20, scope: !161)
!167 = !DILocalVariable(name: "s", arg: 2, scope: !161, file: !162, line: 12, type: !129)
!168 = !DILocation(line: 12, column: 29, scope: !161)
!169 = !DILocalVariable(name: "count", arg: 3, scope: !161, file: !162, line: 12, type: !79)
!170 = !DILocation(line: 12, column: 39, scope: !161)
!171 = !DILocalVariable(name: "a", scope: !161, file: !162, line: 13, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!173 = !DILocation(line: 13, column: 9, scope: !161)
!174 = !DILocation(line: 13, column: 13, scope: !161)
!175 = !DILocation(line: 14, column: 3, scope: !161)
!176 = !DILocation(line: 14, column: 15, scope: !161)
!177 = !DILocation(line: 14, column: 18, scope: !161)
!178 = !DILocation(line: 15, column: 12, scope: !161)
!179 = !DILocation(line: 15, column: 7, scope: !161)
!180 = !DILocation(line: 15, column: 10, scope: !161)
!181 = distinct !{!181, !175, !178, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !DILocation(line: 16, column: 10, scope: !161)
!184 = !DILocation(line: 16, column: 3, scope: !161)
