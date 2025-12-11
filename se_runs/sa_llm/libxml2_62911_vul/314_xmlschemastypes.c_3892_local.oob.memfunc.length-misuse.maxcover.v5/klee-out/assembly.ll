; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaVal = type { i32, %struct._xmlSchemaVal* }

@.str = private unnamed_addr constant [14 x i8] c"type_symbolic\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"(result != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %0) #0 !dbg !27 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlSchemaVal*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !33, metadata !DIExpression()), !dbg !34
  %4 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !35
  %5 = bitcast i8* %4 to %struct._xmlSchemaVal*, !dbg !36
  store %struct._xmlSchemaVal* %5, %struct._xmlSchemaVal** %3, align 8, !dbg !34
  %6 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !37
  %7 = icmp ne %struct._xmlSchemaVal* %6, null, !dbg !39
  br i1 %7, label %8, label %14, !dbg !40

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !41
  %10 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !43
  %11 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %10, i32 0, i32 0, !dbg !44
  store i32 %9, i32* %11, align 8, !dbg !45
  %12 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !46
  %13 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %12, i32 0, i32 1, !dbg !47
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %13, align 8, !dbg !48
  br label %14, !dbg !49

14:                                               ; preds = %8, %1
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !50
  ret %struct._xmlSchemaVal* %15, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaVal* @target_function(%struct._xmlSchemaVal* noundef %0) #0 !dbg !52 {
  %2 = alloca %struct._xmlSchemaVal*, align 8
  %3 = alloca %struct._xmlSchemaVal*, align 8
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store %struct._xmlSchemaVal* %0, %struct._xmlSchemaVal** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !57, metadata !DIExpression()), !dbg !58
  %5 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !59
  %6 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %5, i32 0, i32 0, !dbg !60
  %7 = load i32, i32* %6, align 8, !dbg !60
  %8 = call %struct._xmlSchemaVal* @xmlSchemaNewValue(i32 noundef %7), !dbg !61
  store %struct._xmlSchemaVal* %8, %struct._xmlSchemaVal** %4, align 8, !dbg !58
  %9 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !62
  %10 = icmp eq %struct._xmlSchemaVal* %9, null, !dbg !64
  br i1 %10, label %11, label %12, !dbg !65

11:                                               ; preds = %1
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %2, align 8, !dbg !66
  br label %21, !dbg !66

12:                                               ; preds = %1
  %13 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !67
  %14 = bitcast %struct._xmlSchemaVal* %13 to i8*, !dbg !68
  %15 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %3, align 8, !dbg !69
  %16 = bitcast %struct._xmlSchemaVal* %15 to i8*, !dbg !68
  %17 = call i8* @memcpy(i8* %14, i8* %16, i64 16), !dbg !68
  %18 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !70
  %19 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %18, i32 0, i32 1, !dbg !71
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %19, align 8, !dbg !72
  %20 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !73
  store %struct._xmlSchemaVal* %20, %struct._xmlSchemaVal** %2, align 8, !dbg !74
  br label %21, !dbg !74

21:                                               ; preds = %12, %11
  %22 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %2, align 8, !dbg !75
  ret %struct._xmlSchemaVal* %22, !dbg !75
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !76 {
  ret void, !dbg !79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaVal, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaVal*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal* %2, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %3, metadata !86, metadata !DIExpression()), !dbg !87
  %5 = bitcast i32* %3 to i8*, !dbg !88
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !89
  %6 = load i32, i32* %3, align 4, !dbg !90
  %7 = icmp sge i32 %6, 0, !dbg !91
  %8 = zext i1 %7 to i32, !dbg !91
  %9 = sext i32 %8 to i64, !dbg !90
  call void @klee_assume(i64 noundef %9), !dbg !92
  %10 = load i32, i32* %3, align 4, !dbg !93
  %11 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 0, !dbg !94
  store i32 %10, i32* %11, align 8, !dbg !95
  %12 = getelementptr inbounds %struct._xmlSchemaVal, %struct._xmlSchemaVal* %2, i32 0, i32 1, !dbg !96
  store %struct._xmlSchemaVal* null, %struct._xmlSchemaVal** %12, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaVal** %4, metadata !98, metadata !DIExpression()), !dbg !99
  %13 = call %struct._xmlSchemaVal* @target_function(%struct._xmlSchemaVal* noundef %2), !dbg !100
  store %struct._xmlSchemaVal* %13, %struct._xmlSchemaVal** %4, align 8, !dbg !99
  %14 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !101
  %15 = icmp ne %struct._xmlSchemaVal* %14, null, !dbg !103
  br i1 %15, label %16, label %25, !dbg !104

16:                                               ; preds = %0
  %17 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !105
  %18 = icmp ne %struct._xmlSchemaVal* %17, null, !dbg !105
  br i1 %18, label %19, label %21, !dbg !105

19:                                               ; preds = %16
  br i1 true, label %20, label %21, !dbg !105

20:                                               ; preds = %19
  br label %23, !dbg !105

21:                                               ; preds = %19, %16
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !105
  br label %23, !dbg !105

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  br label %25, !dbg !108

25:                                               ; preds = %23, %0
  %26 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !109
  %27 = icmp ne %struct._xmlSchemaVal* %26, null, !dbg !111
  br i1 %27, label %28, label %31, !dbg !112

28:                                               ; preds = %25
  %29 = load %struct._xmlSchemaVal*, %struct._xmlSchemaVal** %4, align 8, !dbg !113
  %30 = bitcast %struct._xmlSchemaVal* %29 to i8*, !dbg !113
  call void @free(i8* noundef %30) #7, !dbg !115
  br label %31, !dbg !116

31:                                               ; preds = %28, %25
  ret i32 0, !dbg !117
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !118 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !127, metadata !DIExpression()), !dbg !128
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !129, metadata !DIExpression()), !dbg !130
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %7, metadata !133, metadata !DIExpression()), !dbg !136
  %9 = load i8*, i8** %4, align 8, !dbg !137
  store i8* %9, i8** %7, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i8** %8, metadata !138, metadata !DIExpression()), !dbg !141
  %10 = load i8*, i8** %5, align 8, !dbg !142
  store i8* %10, i8** %8, align 8, !dbg !141
  br label %11, !dbg !143

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !144
  %13 = add i64 %12, -1, !dbg !144
  store i64 %13, i64* %6, align 8, !dbg !144
  %14 = icmp ugt i64 %12, 0, !dbg !145
  br i1 %14, label %15, label %21, !dbg !143

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !146
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !146
  store i8* %17, i8** %8, align 8, !dbg !146
  %18 = load i8, i8* %16, align 1, !dbg !147
  %19 = load i8*, i8** %7, align 8, !dbg !148
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !148
  store i8* %20, i8** %7, align 8, !dbg !148
  store i8 %18, i8* %19, align 1, !dbg !149
  br label %11, !dbg !143, !llvm.loop !150

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !152
  ret i8* %22, !dbg !153
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !7, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/314_xmlschemastypes.c_3892_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a78110ec2c0103dd7d96ba50b2468cbe")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 12, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6}
!6 = !DIEnumerator(name: "XML_SCHEMA_TYPE_UNDEFINED", value: 0)
!7 = !{!8, !16, !14}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValPtr", file: !1, line: 11, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaVal", file: !1, line: 10, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaVal", file: !1, line: 17, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !11, file: !1, line: 18, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValType", file: !1, line: 14, baseType: !3)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !1, line: 19, baseType: !8, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlSchemaNewValue", scope: !1, file: !1, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!8, !14}
!30 = !{}
!31 = !DILocalVariable(name: "type", arg: 1, scope: !27, file: !1, line: 24, type: !14)
!32 = !DILocation(line: 24, column: 52, scope: !27)
!33 = !DILocalVariable(name: "ret", scope: !27, file: !1, line: 25, type: !8)
!34 = !DILocation(line: 25, column: 21, scope: !27)
!35 = !DILocation(line: 25, column: 44, scope: !27)
!36 = !DILocation(line: 25, column: 27, scope: !27)
!37 = !DILocation(line: 26, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !27, file: !1, line: 26, column: 9)
!39 = !DILocation(line: 26, column: 13, scope: !38)
!40 = !DILocation(line: 26, column: 9, scope: !27)
!41 = !DILocation(line: 27, column: 21, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 26, column: 22)
!43 = !DILocation(line: 27, column: 9, scope: !42)
!44 = !DILocation(line: 27, column: 14, scope: !42)
!45 = !DILocation(line: 27, column: 19, scope: !42)
!46 = !DILocation(line: 28, column: 9, scope: !42)
!47 = !DILocation(line: 28, column: 14, scope: !42)
!48 = !DILocation(line: 28, column: 19, scope: !42)
!49 = !DILocation(line: 29, column: 5, scope: !42)
!50 = !DILocation(line: 30, column: 12, scope: !27)
!51 = !DILocation(line: 30, column: 5, scope: !27)
!52 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 34, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!53 = !DISubroutineType(types: !54)
!54 = !{!8, !8}
!55 = !DILocalVariable(name: "v", arg: 1, scope: !52, file: !1, line: 34, type: !8)
!56 = !DILocation(line: 34, column: 49, scope: !52)
!57 = !DILocalVariable(name: "ret", scope: !52, file: !1, line: 35, type: !8)
!58 = !DILocation(line: 35, column: 21, scope: !52)
!59 = !DILocation(line: 35, column: 45, scope: !52)
!60 = !DILocation(line: 35, column: 48, scope: !52)
!61 = !DILocation(line: 35, column: 27, scope: !52)
!62 = !DILocation(line: 36, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !52, file: !1, line: 36, column: 9)
!64 = !DILocation(line: 36, column: 13, scope: !63)
!65 = !DILocation(line: 36, column: 9, scope: !52)
!66 = !DILocation(line: 37, column: 9, scope: !63)
!67 = !DILocation(line: 40, column: 12, scope: !52)
!68 = !DILocation(line: 40, column: 5, scope: !52)
!69 = !DILocation(line: 40, column: 17, scope: !52)
!70 = !DILocation(line: 41, column: 5, scope: !52)
!71 = !DILocation(line: 41, column: 10, scope: !52)
!72 = !DILocation(line: 41, column: 15, scope: !52)
!73 = !DILocation(line: 42, column: 12, scope: !52)
!74 = !DILocation(line: 42, column: 5, scope: !52)
!75 = !DILocation(line: 43, column: 1, scope: !52)
!76 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !1, file: !1, line: 46, type: !77, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!77 = !DISubroutineType(types: !78)
!78 = !{null}
!79 = !DILocation(line: 48, column: 1, scope: !76)
!80 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !81, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!81 = !DISubroutineType(types: !82)
!82 = !{!83}
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DILocalVariable(name: "v", scope: !80, file: !1, line: 52, type: !10)
!85 = !DILocation(line: 52, column: 18, scope: !80)
!86 = !DILocalVariable(name: "type_symbolic", scope: !80, file: !1, line: 55, type: !83)
!87 = !DILocation(line: 55, column: 9, scope: !80)
!88 = !DILocation(line: 56, column: 24, scope: !80)
!89 = !DILocation(line: 56, column: 5, scope: !80)
!90 = !DILocation(line: 57, column: 17, scope: !80)
!91 = !DILocation(line: 57, column: 31, scope: !80)
!92 = !DILocation(line: 57, column: 5, scope: !80)
!93 = !DILocation(line: 58, column: 32, scope: !80)
!94 = !DILocation(line: 58, column: 7, scope: !80)
!95 = !DILocation(line: 58, column: 12, scope: !80)
!96 = !DILocation(line: 61, column: 7, scope: !80)
!97 = !DILocation(line: 61, column: 12, scope: !80)
!98 = !DILocalVariable(name: "result", scope: !80, file: !1, line: 64, type: !8)
!99 = !DILocation(line: 64, column: 21, scope: !80)
!100 = !DILocation(line: 64, column: 30, scope: !80)
!101 = !DILocation(line: 75, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !80, file: !1, line: 75, column: 9)
!103 = !DILocation(line: 75, column: 16, scope: !102)
!104 = !DILocation(line: 75, column: 9, scope: !80)
!105 = !DILocation(line: 79, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 75, column: 25)
!107 = !DILocation(line: 82, column: 9, scope: !106)
!108 = !DILocation(line: 83, column: 5, scope: !106)
!109 = !DILocation(line: 86, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !80, file: !1, line: 86, column: 9)
!111 = !DILocation(line: 86, column: 16, scope: !110)
!112 = !DILocation(line: 86, column: 9, scope: !80)
!113 = !DILocation(line: 87, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 86, column: 25)
!115 = !DILocation(line: 87, column: 9, scope: !114)
!116 = !DILocation(line: 88, column: 5, scope: !114)
!117 = !DILocation(line: 90, column: 5, scope: !80)
!118 = distinct !DISubprogram(name: "memcpy", scope: !119, file: !119, line: 12, type: !120, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !30)
!119 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!120 = !DISubroutineType(types: !121)
!121 = !{!16, !16, !122, !124}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DILocalVariable(name: "destaddr", arg: 1, scope: !118, file: !119, line: 12, type: !16)
!128 = !DILocation(line: 12, column: 20, scope: !118)
!129 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !118, file: !119, line: 12, type: !122)
!130 = !DILocation(line: 12, column: 42, scope: !118)
!131 = !DILocalVariable(name: "len", arg: 3, scope: !118, file: !119, line: 12, type: !124)
!132 = !DILocation(line: 12, column: 58, scope: !118)
!133 = !DILocalVariable(name: "dest", scope: !118, file: !119, line: 13, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!136 = !DILocation(line: 13, column: 9, scope: !118)
!137 = !DILocation(line: 13, column: 16, scope: !118)
!138 = !DILocalVariable(name: "src", scope: !118, file: !119, line: 14, type: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!141 = !DILocation(line: 14, column: 15, scope: !118)
!142 = !DILocation(line: 14, column: 21, scope: !118)
!143 = !DILocation(line: 16, column: 3, scope: !118)
!144 = !DILocation(line: 16, column: 13, scope: !118)
!145 = !DILocation(line: 16, column: 16, scope: !118)
!146 = !DILocation(line: 17, column: 19, scope: !118)
!147 = !DILocation(line: 17, column: 15, scope: !118)
!148 = !DILocation(line: 17, column: 10, scope: !118)
!149 = !DILocation(line: 17, column: 13, scope: !118)
!150 = distinct !{!150, !143, !146, !151}
!151 = !{!"llvm.loop.mustprogress"}
!152 = !DILocation(line: 18, column: 10, scope: !118)
!153 = !DILocation(line: 18, column: 3, scope: !118)
