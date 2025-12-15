; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/078_dict.c_358_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/078_dict.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDictStrings = type { %struct._xmlDictStrings*, i8*, i8*, i32, i32 }
%struct._xmlDict = type { %struct._xmlDictStrings* }

@xmlDictAddString.pool = internal global %struct._xmlDictStrings zeroinitializer, align 8, !dbg !0
@xmlDictAddString.buffer = internal global [1024 x i8] zeroinitializer, align 16, !dbg !30
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"(plen <= available) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/078_dict.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDictAddString = private unnamed_addr constant [73 x i8] c"void *xmlDictAddString(xmlDictPtr, const char *, int, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"plen\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"namelen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictAddString(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !2 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlDict*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %7, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !52, metadata !DIExpression()), !dbg !53
  %15 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 1), align 8, !dbg !54
  %16 = icmp eq i8* %15, null, !dbg !56
  br i1 %16, label %17, label %18, !dbg !57

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xmlDictAddString.buffer, i64 0, i64 0), i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 1), align 8, !dbg !58
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @xmlDictAddString.buffer, i64 1, i64 0), i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 2), align 8, !dbg !60
  store i32 1024, i32* getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 3), align 8, !dbg !61
  store i32 0, i32* getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 4), align 4, !dbg !62
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 0), align 8, !dbg !63
  br label %18, !dbg !64

18:                                               ; preds = %17, %5
  call void @llvm.dbg.declare(metadata i32* %12, metadata !65, metadata !DIExpression()), !dbg !66
  %19 = load i32, i32* %9, align 4, !dbg !67
  %20 = load i32, i32* %11, align 4, !dbg !68
  %21 = add nsw i32 %19, %20, !dbg !69
  %22 = add nsw i32 %21, 2, !dbg !70
  store i32 %22, i32* %12, align 4, !dbg !66
  %23 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 1), align 8, !dbg !71
  %24 = load i32, i32* %12, align 4, !dbg !73
  %25 = sext i32 %24 to i64, !dbg !74
  %26 = getelementptr inbounds i8, i8* %23, i64 %25, !dbg !74
  %27 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 2), align 8, !dbg !75
  %28 = icmp ugt i8* %26, %27, !dbg !76
  br i1 %28, label %29, label %30, !dbg !77

29:                                               ; preds = %18
  store i8* null, i8** %6, align 8, !dbg !78
  br label %48, !dbg !78

30:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata i8** %13, metadata !80, metadata !DIExpression()), !dbg !81
  %31 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 1), align 8, !dbg !82
  store i8* %31, i8** %13, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %14, metadata !83, metadata !DIExpression()), !dbg !84
  %32 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 2), align 8, !dbg !85
  %33 = load i8*, i8** getelementptr inbounds (%struct._xmlDictStrings, %struct._xmlDictStrings* @xmlDictAddString.pool, i32 0, i32 1), align 8, !dbg !86
  %34 = ptrtoint i8* %32 to i64, !dbg !87
  %35 = ptrtoint i8* %33 to i64, !dbg !87
  %36 = sub i64 %34, %35, !dbg !87
  %37 = trunc i64 %36 to i32, !dbg !88
  store i32 %37, i32* %14, align 4, !dbg !84
  %38 = load i32, i32* %9, align 4, !dbg !89
  %39 = load i32, i32* %14, align 4, !dbg !89
  %40 = icmp sle i32 %38, %39, !dbg !89
  br i1 %40, label %41, label %43, !dbg !89

41:                                               ; preds = %30
  br i1 true, label %42, label %43, !dbg !89

42:                                               ; preds = %41
  br label %45, !dbg !89

43:                                               ; preds = %41, %30
  %44 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 60, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlDictAddString, i64 0, i64 0)), !dbg !89
  br label %45, !dbg !89

45:                                               ; preds = %43, %42
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__.xmlDictAddString, i64 0, i64 0)), !dbg !90
  %47 = load i8*, i8** %13, align 8, !dbg !91
  store i8* %47, i8** %6, align 8, !dbg !92
  br label %48, !dbg !92

48:                                               ; preds = %45, %29
  %49 = load i8*, i8** %6, align 8, !dbg !93
  ret i8* %49, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %2, metadata !97, metadata !DIExpression()), !dbg !98
  %7 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 0, !dbg !99
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %7, align 8, !dbg !100
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %5, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %6, metadata !110, metadata !DIExpression()), !dbg !111
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !112
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !113
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !114
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !115
  %10 = bitcast i32* %5 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !117
  %11 = bitcast i32* %6 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !119
  %12 = load i32, i32* %5, align 4, !dbg !120
  %13 = icmp sge i32 %12, 0, !dbg !121
  br i1 %13, label %14, label %17, !dbg !122

14:                                               ; preds = %0
  %15 = load i32, i32* %5, align 4, !dbg !123
  %16 = icmp slt i32 %15, 256, !dbg !124
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !125
  %19 = zext i1 %18 to i32, !dbg !122
  %20 = sext i32 %19 to i64, !dbg !120
  call void @klee_assume(i64 noundef %20), !dbg !126
  %21 = load i32, i32* %6, align 4, !dbg !127
  %22 = icmp sge i32 %21, 0, !dbg !128
  br i1 %22, label %23, label %26, !dbg !129

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4, !dbg !130
  %25 = icmp slt i32 %24, 256, !dbg !131
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ false, %17 ], [ %25, %23 ], !dbg !125
  %28 = zext i1 %27 to i32, !dbg !129
  %29 = sext i32 %28 to i64, !dbg !127
  call void @klee_assume(i64 noundef %29), !dbg !132
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !133
  store i8 0, i8* %30, align 1, !dbg !134
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !135
  store i8 0, i8* %31, align 1, !dbg !136
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !137
  %33 = load i32, i32* %5, align 4, !dbg !138
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !139
  %35 = load i32, i32* %6, align 4, !dbg !140
  %36 = call i8* @xmlDictAddString(%struct._xmlDict* noundef %2, i8* noundef %32, i32 noundef %33, i8* noundef %34, i32 noundef %35), !dbg !141
  ret i32 0, !dbg !142
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!27}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pool", scope: !2, file: !3, line: 35, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "xmlDictAddString", scope: !3, file: !3, line: 32, type: !4, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !35)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/078_dict.c_358_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "da8492ea92f5b4fcb6b0caa3bcda6e60")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !25, !23, !25, !23}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !3, line: 11, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !3, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !3, line: 22, size: 64, elements: !11)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !10, file: !3, line: 23, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictStrings", file: !3, line: 13, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictStrings", file: !3, line: 14, size: 256, elements: !16)
!16 = !{!17, !18, !21, !22, !24}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !15, file: !3, line: 15, baseType: !13, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !15, file: !3, line: 16, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !15, file: !3, line: 17, baseType: !19, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !15, file: !3, line: 18, baseType: !23, size: 32, offset: 192)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nbStrings", scope: !15, file: !3, line: 19, baseType: !23, size: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !28, globals: !29, splitDebugInlining: false, nameTableKind: None)
!28 = !{!6}
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "buffer", scope: !2, file: !3, line: 36, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 1024)
!35 = !{}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"Ubuntu clang version 14.0.6"}
!44 = !DILocalVariable(name: "dict", arg: 1, scope: !2, file: !3, line: 32, type: !7)
!45 = !DILocation(line: 32, column: 35, scope: !2)
!46 = !DILocalVariable(name: "prefix", arg: 2, scope: !2, file: !3, line: 32, type: !25)
!47 = !DILocation(line: 32, column: 53, scope: !2)
!48 = !DILocalVariable(name: "plen", arg: 3, scope: !2, file: !3, line: 32, type: !23)
!49 = !DILocation(line: 32, column: 65, scope: !2)
!50 = !DILocalVariable(name: "name", arg: 4, scope: !2, file: !3, line: 33, type: !25)
!51 = !DILocation(line: 33, column: 36, scope: !2)
!52 = !DILocalVariable(name: "namelen", arg: 5, scope: !2, file: !3, line: 33, type: !23)
!53 = !DILocation(line: 33, column: 46, scope: !2)
!54 = !DILocation(line: 39, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 9)
!56 = !DILocation(line: 39, column: 19, scope: !55)
!57 = !DILocation(line: 39, column: 9, scope: !2)
!58 = !DILocation(line: 40, column: 19, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !3, line: 39, column: 28)
!60 = !DILocation(line: 41, column: 18, scope: !59)
!61 = !DILocation(line: 42, column: 19, scope: !59)
!62 = !DILocation(line: 43, column: 24, scope: !59)
!63 = !DILocation(line: 44, column: 19, scope: !59)
!64 = !DILocation(line: 45, column: 5, scope: !59)
!65 = !DILocalVariable(name: "total_needed", scope: !2, file: !3, line: 48, type: !23)
!66 = !DILocation(line: 48, column: 9, scope: !2)
!67 = !DILocation(line: 48, column: 24, scope: !2)
!68 = !DILocation(line: 48, column: 31, scope: !2)
!69 = !DILocation(line: 48, column: 29, scope: !2)
!70 = !DILocation(line: 48, column: 39, scope: !2)
!71 = !DILocation(line: 49, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !2, file: !3, line: 49, column: 9)
!73 = !DILocation(line: 49, column: 21, scope: !72)
!74 = !DILocation(line: 49, column: 19, scope: !72)
!75 = !DILocation(line: 49, column: 41, scope: !72)
!76 = !DILocation(line: 49, column: 34, scope: !72)
!77 = !DILocation(line: 49, column: 9, scope: !2)
!78 = !DILocation(line: 51, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !3, line: 49, column: 46)
!80 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 55, type: !19)
!81 = !DILocation(line: 55, column: 11, scope: !2)
!82 = !DILocation(line: 55, column: 22, scope: !2)
!83 = !DILocalVariable(name: "available", scope: !2, file: !3, line: 59, type: !23)
!84 = !DILocation(line: 59, column: 9, scope: !2)
!85 = !DILocation(line: 59, column: 26, scope: !2)
!86 = !DILocation(line: 59, column: 37, scope: !2)
!87 = !DILocation(line: 59, column: 30, scope: !2)
!88 = !DILocation(line: 59, column: 21, scope: !2)
!89 = !DILocation(line: 60, column: 5, scope: !2)
!90 = !DILocation(line: 63, column: 5, scope: !2)
!91 = !DILocation(line: 68, column: 12, scope: !2)
!92 = !DILocation(line: 68, column: 5, scope: !2)
!93 = !DILocation(line: 69, column: 1, scope: !2)
!94 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 71, type: !95, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !27, retainedNodes: !35)
!95 = !DISubroutineType(types: !96)
!96 = !{!23}
!97 = !DILocalVariable(name: "dict", scope: !94, file: !3, line: 73, type: !9)
!98 = !DILocation(line: 73, column: 13, scope: !94)
!99 = !DILocation(line: 74, column: 10, scope: !94)
!100 = !DILocation(line: 74, column: 18, scope: !94)
!101 = !DILocalVariable(name: "prefix", scope: !94, file: !3, line: 76, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 256)
!105 = !DILocation(line: 76, column: 10, scope: !94)
!106 = !DILocalVariable(name: "name", scope: !94, file: !3, line: 77, type: !102)
!107 = !DILocation(line: 77, column: 10, scope: !94)
!108 = !DILocalVariable(name: "plen", scope: !94, file: !3, line: 78, type: !23)
!109 = !DILocation(line: 78, column: 9, scope: !94)
!110 = !DILocalVariable(name: "namelen", scope: !94, file: !3, line: 78, type: !23)
!111 = !DILocation(line: 78, column: 15, scope: !94)
!112 = !DILocation(line: 81, column: 24, scope: !94)
!113 = !DILocation(line: 81, column: 5, scope: !94)
!114 = !DILocation(line: 82, column: 24, scope: !94)
!115 = !DILocation(line: 82, column: 5, scope: !94)
!116 = !DILocation(line: 83, column: 24, scope: !94)
!117 = !DILocation(line: 83, column: 5, scope: !94)
!118 = !DILocation(line: 84, column: 24, scope: !94)
!119 = !DILocation(line: 84, column: 5, scope: !94)
!120 = !DILocation(line: 87, column: 17, scope: !94)
!121 = !DILocation(line: 87, column: 22, scope: !94)
!122 = !DILocation(line: 87, column: 27, scope: !94)
!123 = !DILocation(line: 87, column: 30, scope: !94)
!124 = !DILocation(line: 87, column: 35, scope: !94)
!125 = !DILocation(line: 0, scope: !94)
!126 = !DILocation(line: 87, column: 5, scope: !94)
!127 = !DILocation(line: 88, column: 17, scope: !94)
!128 = !DILocation(line: 88, column: 25, scope: !94)
!129 = !DILocation(line: 88, column: 30, scope: !94)
!130 = !DILocation(line: 88, column: 33, scope: !94)
!131 = !DILocation(line: 88, column: 41, scope: !94)
!132 = !DILocation(line: 88, column: 5, scope: !94)
!133 = !DILocation(line: 91, column: 5, scope: !94)
!134 = !DILocation(line: 91, column: 17, scope: !94)
!135 = !DILocation(line: 92, column: 5, scope: !94)
!136 = !DILocation(line: 92, column: 15, scope: !94)
!137 = !DILocation(line: 95, column: 29, scope: !94)
!138 = !DILocation(line: 95, column: 37, scope: !94)
!139 = !DILocation(line: 95, column: 43, scope: !94)
!140 = !DILocation(line: 95, column: 49, scope: !94)
!141 = !DILocation(line: 95, column: 5, scope: !94)
!142 = !DILocation(line: 97, column: 5, scope: !94)
