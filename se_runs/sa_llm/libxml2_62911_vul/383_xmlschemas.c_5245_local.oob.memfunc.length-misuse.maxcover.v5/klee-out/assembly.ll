; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/383_xmlschemas.c_5245_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/383_xmlschemas.c_5245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaParserCtxt = type { i8* }
%struct._xmlSchemaAttributeGroup = type { i32, i8*, i8*, i8* }
%struct._xmlNode = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"allocating attribute group\00", align 1
@xmlSchemaFormatQName.buffer = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"formatted_qname\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nsName\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/383_xmlschemas.c_5245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !37 {
  %4 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !49, metadata !DIExpression()), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaAttributeGroup* @xmlSchemaNewAttributeGroup(%struct._xmlSchemaParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2, %struct._xmlNode* noundef %3) #0 !dbg !52 {
  %5 = alloca %struct._xmlSchemaAttributeGroup*, align 8
  %6 = alloca %struct._xmlSchemaParserCtxt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._xmlNode*, align 8
  %10 = alloca %struct._xmlSchemaAttributeGroup*, align 8
  store %struct._xmlSchemaParserCtxt* %0, %struct._xmlSchemaParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt** %6, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !64, metadata !DIExpression()), !dbg !65
  store %struct._xmlNode* %3, %struct._xmlNode** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %9, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttributeGroup** %10, metadata !68, metadata !DIExpression()), !dbg !69
  %11 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !70
  %12 = bitcast i8* %11 to %struct._xmlSchemaAttributeGroup*, !dbg !71
  store %struct._xmlSchemaAttributeGroup* %12, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !72
  %13 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !73
  %14 = icmp eq %struct._xmlSchemaAttributeGroup* %13, null, !dbg !75
  br i1 %14, label %15, label %17, !dbg !76

15:                                               ; preds = %4
  %16 = load %struct._xmlSchemaParserCtxt*, %struct._xmlSchemaParserCtxt** %6, align 8, !dbg !77
  call void @xmlSchemaPErrMemory(%struct._xmlSchemaParserCtxt* noundef %16, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !79
  store %struct._xmlSchemaAttributeGroup* null, %struct._xmlSchemaAttributeGroup** %5, align 8, !dbg !80
  br label %34, !dbg !80

17:                                               ; preds = %4
  %18 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !81
  %19 = bitcast %struct._xmlSchemaAttributeGroup* %18 to i8*, !dbg !82
  %20 = call i8* @memset(i8* %19, i32 0, i64 32), !dbg !82
  %21 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !83
  %22 = getelementptr inbounds %struct._xmlSchemaAttributeGroup, %struct._xmlSchemaAttributeGroup* %21, i32 0, i32 0, !dbg !84
  store i32 1, i32* %22, align 8, !dbg !85
  %23 = load i8*, i8** %7, align 8, !dbg !86
  %24 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !87
  %25 = getelementptr inbounds %struct._xmlSchemaAttributeGroup, %struct._xmlSchemaAttributeGroup* %24, i32 0, i32 1, !dbg !88
  store i8* %23, i8** %25, align 8, !dbg !89
  %26 = load i8*, i8** %8, align 8, !dbg !90
  %27 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !91
  %28 = getelementptr inbounds %struct._xmlSchemaAttributeGroup, %struct._xmlSchemaAttributeGroup* %27, i32 0, i32 2, !dbg !92
  store i8* %26, i8** %28, align 8, !dbg !93
  %29 = load %struct._xmlNode*, %struct._xmlNode** %9, align 8, !dbg !94
  %30 = bitcast %struct._xmlNode* %29 to i8*, !dbg !94
  %31 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !95
  %32 = getelementptr inbounds %struct._xmlSchemaAttributeGroup, %struct._xmlSchemaAttributeGroup* %31, i32 0, i32 3, !dbg !96
  store i8* %30, i8** %32, align 8, !dbg !97
  %33 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %10, align 8, !dbg !98
  store %struct._xmlSchemaAttributeGroup* %33, %struct._xmlSchemaAttributeGroup** %5, align 8, !dbg !99
  br label %34, !dbg !99

34:                                               ; preds = %17, %15
  %35 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %5, align 8, !dbg !100
  ret %struct._xmlSchemaAttributeGroup* %35, !dbg !100
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaFormatQName(i8* noundef %0, i8* noundef %1) #0 !dbg !2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !101, metadata !DIExpression()), !dbg !102
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !103, metadata !DIExpression()), !dbg !104
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), i64 noundef 256, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @xmlSchemaFormatQName.buffer, i64 0, i64 0), !dbg !106
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !107 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaParserCtxt, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct._xmlNode, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlSchemaAttributeGroup*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaParserCtxt* %2, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %5, metadata !116, metadata !DIExpression()), !dbg !117
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !118
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !119
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !120
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !121
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !122
  %11 = load i8, i8* %10, align 1, !dbg !122
  %12 = sext i8 %11 to i32, !dbg !122
  %13 = icmp eq i32 %12, 0, !dbg !123
  %14 = zext i1 %13 to i32, !dbg !123
  %15 = sext i32 %14 to i64, !dbg !122
  call void @klee_assume(i64 noundef %15), !dbg !124
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !125
  %17 = load i8, i8* %16, align 1, !dbg !125
  %18 = sext i8 %17 to i32, !dbg !125
  %19 = icmp eq i32 %18, 0, !dbg !126
  %20 = zext i1 %19 to i32, !dbg !126
  %21 = sext i32 %20 to i64, !dbg !125
  call void @klee_assume(i64 noundef %21), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %6, metadata !128, metadata !DIExpression()), !dbg !129
  %22 = call i8* @xmlSchemaFormatQName(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !130
  store i8* %22, i8** %6, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaAttributeGroup** %7, metadata !131, metadata !DIExpression()), !dbg !132
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !133
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !134
  %25 = call %struct._xmlSchemaAttributeGroup* @xmlSchemaNewAttributeGroup(%struct._xmlSchemaParserCtxt* noundef %2, i8* noundef %23, i8* noundef %24, %struct._xmlNode* noundef %5), !dbg !135
  store %struct._xmlSchemaAttributeGroup* %25, %struct._xmlSchemaAttributeGroup** %7, align 8, !dbg !132
  %26 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %7, align 8, !dbg !136
  %27 = icmp ne %struct._xmlSchemaAttributeGroup* %26, null, !dbg !138
  br i1 %27, label %28, label %32, !dbg !139

28:                                               ; preds = %0
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !140
  %30 = load %struct._xmlSchemaAttributeGroup*, %struct._xmlSchemaAttributeGroup** %7, align 8, !dbg !142
  %31 = bitcast %struct._xmlSchemaAttributeGroup* %30 to i8*, !dbg !142
  call void @free(i8* noundef %31) #7, !dbg !143
  br label %32, !dbg !144

32:                                               ; preds = %28, %0
  ret i32 0, !dbg !145
}

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

!llvm.dbg.cu = !{!10, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36, !36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 65, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlSchemaFormatQName", scope: !3, file: !3, line: 63, type: !4, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !23)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/383_xmlschemas.c_5245_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f5c2c69e73fc2379ee336132c0a2fc40")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !22, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !21}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttributeGroup", file: !3, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaAttributeGroup", file: !3, line: 16, size: 256, elements: !15)
!15 = !{!16, !18, !19, !20}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !3, line: 17, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !3, line: 18, baseType: !8, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !14, file: !3, line: 19, baseType: !8, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !14, file: !3, line: 20, baseType: !21, size: 64, offset: 192)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!0}
!23 = !{}
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 256)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!28 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 7, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"Ubuntu clang version 14.0.6"}
!37 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !3, file: !3, line: 32, type: !38, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !23)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !8, !8}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaParserCtxt", file: !3, line: 11, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaParserCtxt", file: !3, line: 23, size: 64, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !42, file: !3, line: 24, baseType: !21, size: 64)
!45 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !3, line: 32, type: !40)
!46 = !DILocation(line: 32, column: 47, scope: !37)
!47 = !DILocalVariable(name: "msg", arg: 2, scope: !37, file: !3, line: 32, type: !8)
!48 = !DILocation(line: 32, column: 65, scope: !37)
!49 = !DILocalVariable(name: "str", arg: 3, scope: !37, file: !3, line: 32, type: !8)
!50 = !DILocation(line: 32, column: 82, scope: !37)
!51 = !DILocation(line: 34, column: 1, scope: !37)
!52 = distinct !DISubprogram(name: "xmlSchemaNewAttributeGroup", scope: !3, file: !3, line: 37, type: !53, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !23)
!53 = !DISubroutineType(types: !54)
!54 = !{!12, !40, !8, !8, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !3, line: 13, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !3, line: 27, size: 64, elements: !58)
!58 = !{!59}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !57, file: !3, line: 28, baseType: !21, size: 64)
!60 = !DILocalVariable(name: "pctxt", arg: 1, scope: !52, file: !3, line: 37, type: !40)
!61 = !DILocation(line: 37, column: 74, scope: !52)
!62 = !DILocalVariable(name: "name", arg: 2, scope: !52, file: !3, line: 38, type: !8)
!63 = !DILocation(line: 38, column: 65, scope: !52)
!64 = !DILocalVariable(name: "nsName", arg: 3, scope: !52, file: !3, line: 39, type: !8)
!65 = !DILocation(line: 39, column: 65, scope: !52)
!66 = !DILocalVariable(name: "node", arg: 4, scope: !52, file: !3, line: 40, type: !55)
!67 = !DILocation(line: 40, column: 62, scope: !52)
!68 = !DILocalVariable(name: "ret", scope: !52, file: !3, line: 41, type: !12)
!69 = !DILocation(line: 41, column: 30, scope: !52)
!70 = !DILocation(line: 44, column: 37, scope: !52)
!71 = !DILocation(line: 44, column: 11, scope: !52)
!72 = !DILocation(line: 44, column: 9, scope: !52)
!73 = !DILocation(line: 46, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !52, file: !3, line: 46, column: 9)
!75 = !DILocation(line: 46, column: 13, scope: !74)
!76 = !DILocation(line: 46, column: 9, scope: !52)
!77 = !DILocation(line: 47, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !3, line: 46, column: 22)
!79 = !DILocation(line: 47, column: 9, scope: !78)
!80 = !DILocation(line: 48, column: 9, scope: !78)
!81 = !DILocation(line: 52, column: 12, scope: !52)
!82 = !DILocation(line: 52, column: 5, scope: !52)
!83 = !DILocation(line: 54, column: 5, scope: !52)
!84 = !DILocation(line: 54, column: 10, scope: !52)
!85 = !DILocation(line: 54, column: 15, scope: !52)
!86 = !DILocation(line: 55, column: 17, scope: !52)
!87 = !DILocation(line: 55, column: 5, scope: !52)
!88 = !DILocation(line: 55, column: 10, scope: !52)
!89 = !DILocation(line: 55, column: 15, scope: !52)
!90 = !DILocation(line: 56, column: 28, scope: !52)
!91 = !DILocation(line: 56, column: 5, scope: !52)
!92 = !DILocation(line: 56, column: 10, scope: !52)
!93 = !DILocation(line: 56, column: 26, scope: !52)
!94 = !DILocation(line: 57, column: 17, scope: !52)
!95 = !DILocation(line: 57, column: 5, scope: !52)
!96 = !DILocation(line: 57, column: 10, scope: !52)
!97 = !DILocation(line: 57, column: 15, scope: !52)
!98 = !DILocation(line: 59, column: 12, scope: !52)
!99 = !DILocation(line: 59, column: 5, scope: !52)
!100 = !DILocation(line: 60, column: 1, scope: !52)
!101 = !DILocalVariable(name: "prefix", arg: 1, scope: !2, file: !3, line: 63, type: !8)
!102 = !DILocation(line: 63, column: 40, scope: !2)
!103 = !DILocalVariable(name: "name", arg: 2, scope: !2, file: !3, line: 63, type: !8)
!104 = !DILocation(line: 63, column: 60, scope: !2)
!105 = !DILocation(line: 66, column: 5, scope: !2)
!106 = !DILocation(line: 67, column: 5, scope: !2)
!107 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 70, type: !108, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !23)
!108 = !DISubroutineType(types: !109)
!109 = !{!17}
!110 = !DILocalVariable(name: "ctxt", scope: !107, file: !3, line: 72, type: !41)
!111 = !DILocation(line: 72, column: 25, scope: !107)
!112 = !DILocalVariable(name: "name", scope: !107, file: !3, line: 73, type: !24)
!113 = !DILocation(line: 73, column: 10, scope: !107)
!114 = !DILocalVariable(name: "nsName", scope: !107, file: !3, line: 74, type: !24)
!115 = !DILocation(line: 74, column: 10, scope: !107)
!116 = !DILocalVariable(name: "node", scope: !107, file: !3, line: 75, type: !56)
!117 = !DILocation(line: 75, column: 13, scope: !107)
!118 = !DILocation(line: 78, column: 24, scope: !107)
!119 = !DILocation(line: 78, column: 5, scope: !107)
!120 = !DILocation(line: 79, column: 24, scope: !107)
!121 = !DILocation(line: 79, column: 5, scope: !107)
!122 = !DILocation(line: 82, column: 17, scope: !107)
!123 = !DILocation(line: 82, column: 27, scope: !107)
!124 = !DILocation(line: 82, column: 5, scope: !107)
!125 = !DILocation(line: 83, column: 17, scope: !107)
!126 = !DILocation(line: 83, column: 29, scope: !107)
!127 = !DILocation(line: 83, column: 5, scope: !107)
!128 = !DILocalVariable(name: "formatted", scope: !107, file: !3, line: 86, type: !6)
!129 = !DILocation(line: 86, column: 11, scope: !107)
!130 = !DILocation(line: 86, column: 23, scope: !107)
!131 = !DILocalVariable(name: "group", scope: !107, file: !3, line: 89, type: !12)
!132 = !DILocation(line: 89, column: 30, scope: !107)
!133 = !DILocation(line: 89, column: 72, scope: !107)
!134 = !DILocation(line: 89, column: 78, scope: !107)
!135 = !DILocation(line: 89, column: 38, scope: !107)
!136 = !DILocation(line: 99, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !107, file: !3, line: 99, column: 9)
!138 = !DILocation(line: 99, column: 15, scope: !137)
!139 = !DILocation(line: 99, column: 9, scope: !107)
!140 = !DILocation(line: 104, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !3, line: 99, column: 24)
!142 = !DILocation(line: 107, column: 14, scope: !141)
!143 = !DILocation(line: 107, column: 9, scope: !141)
!144 = !DILocation(line: 108, column: 5, scope: !141)
!145 = !DILocation(line: 110, column: 5, scope: !107)
!146 = distinct !DISubprogram(name: "memset", scope: !147, file: !147, line: 12, type: !148, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !23)
!147 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!148 = !DISubroutineType(types: !149)
!149 = !{!21, !21, !17, !150}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 46, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DILocalVariable(name: "dst", arg: 1, scope: !146, file: !147, line: 12, type: !21)
!154 = !DILocation(line: 12, column: 20, scope: !146)
!155 = !DILocalVariable(name: "s", arg: 2, scope: !146, file: !147, line: 12, type: !17)
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
