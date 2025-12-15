; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/092_runtest.c_3486_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/092_runtest.c_3486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"(len >= 0 && len < (int)sizeof(prefix)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/092_runtest.c_3486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testSchemasOne = private unnamed_addr constant [26 x i8] c"void testSchemasOne(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlNanoHTTPOpen(i8* noundef %0, i8** noundef %1) #0 !dbg !13 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !22, metadata !DIExpression()), !dbg !23
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !24, metadata !DIExpression()), !dbg !25
  %5 = load i8*, i8** %3, align 8, !dbg !26
  %6 = load i8**, i8*** %4, align 8, !dbg !27
  %7 = icmp ne i8** %6, null, !dbg !27
  br i1 %7, label %8, label %10, !dbg !29

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8, !dbg !30
  store i8* null, i8** %9, align 8, !dbg !31
  br label %10, !dbg !32

10:                                               ; preds = %8, %2
  ret i8* inttoptr (i64 1 to i8*), !dbg !33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlNanoHTTPRead(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !34 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  %7 = load i8*, i8** %4, align 8, !dbg !43
  %8 = load i8*, i8** %5, align 8, !dbg !44
  %9 = load i32, i32* %6, align 4, !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNanoHTTPClose(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !50, metadata !DIExpression()), !dbg !51
  %3 = load i8*, i8** %2, align 8, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlParseSchema(i8* noundef %0) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !57, metadata !DIExpression()), !dbg !58
  %3 = load i8*, i8** %2, align 8, !dbg !59
  ret i8* inttoptr (i64 1 to i8*), !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFree(i8* noundef %0) #0 !dbg !61 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !62, metadata !DIExpression()), !dbg !63
  %3 = load i8*, i8** %2, align 8, !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSchemaValidateDoc(i8* noundef %0, i8* noundef %1) #0 !dbg !66 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !69, metadata !DIExpression()), !dbg !70
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !71, metadata !DIExpression()), !dbg !72
  %5 = load i8*, i8** %3, align 8, !dbg !73
  %6 = load i8*, i8** %4, align 8, !dbg !74
  ret i32 0, !dbg !75
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlReadFile(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !76 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !79, metadata !DIExpression()), !dbg !80
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !83, metadata !DIExpression()), !dbg !84
  %7 = load i8*, i8** %4, align 8, !dbg !85
  %8 = load i8*, i8** %5, align 8, !dbg !86
  %9 = load i32, i32* %6, align 4, !dbg !87
  ret i8* inttoptr (i64 1 to i8*), !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeDoc(i8* noundef %0) #0 !dbg !89 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !90, metadata !DIExpression()), !dbg !91
  %3 = load i8*, i8** %2, align 8, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testSchemasOne() #0 !dbg !94 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca [256 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %1, metadata !97, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !104, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %4, metadata !109, metadata !DIExpression()), !dbg !110
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !111
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !112
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 255, !dbg !113
  store i8 0, i8* %6, align 1, !dbg !114
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0, !dbg !115
  %8 = call i64 @strlen(i8* noundef %7) #5, !dbg !116
  %9 = trunc i64 %8 to i32, !dbg !116
  store i32 %9, i32* %4, align 4, !dbg !117
  %10 = load i32, i32* %4, align 4, !dbg !118
  %11 = icmp sge i32 %10, 4, !dbg !120
  br i1 %11, label %12, label %49, !dbg !121

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4, !dbg !122
  %14 = sub nsw i32 %13, 4, !dbg !124
  %15 = sext i32 %14 to i64, !dbg !125
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %15, !dbg !125
  %17 = load i8, i8* %16, align 1, !dbg !125
  %18 = sext i8 %17 to i32, !dbg !125
  %19 = icmp eq i32 %18, 46, !dbg !126
  %20 = zext i1 %19 to i32, !dbg !126
  %21 = sext i32 %20 to i64, !dbg !125
  call void @klee_assume(i64 noundef %21), !dbg !127
  %22 = load i32, i32* %4, align 4, !dbg !128
  %23 = sub nsw i32 %22, 3, !dbg !129
  %24 = sext i32 %23 to i64, !dbg !130
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %24, !dbg !130
  %26 = load i8, i8* %25, align 1, !dbg !130
  %27 = sext i8 %26 to i32, !dbg !130
  %28 = icmp eq i32 %27, 120, !dbg !131
  %29 = zext i1 %28 to i32, !dbg !131
  %30 = sext i32 %29 to i64, !dbg !130
  call void @klee_assume(i64 noundef %30), !dbg !132
  %31 = load i32, i32* %4, align 4, !dbg !133
  %32 = sub nsw i32 %31, 2, !dbg !134
  %33 = sext i32 %32 to i64, !dbg !135
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %33, !dbg !135
  %35 = load i8, i8* %34, align 1, !dbg !135
  %36 = sext i8 %35 to i32, !dbg !135
  %37 = icmp eq i32 %36, 115, !dbg !136
  %38 = zext i1 %37 to i32, !dbg !136
  %39 = sext i32 %38 to i64, !dbg !135
  call void @klee_assume(i64 noundef %39), !dbg !137
  %40 = load i32, i32* %4, align 4, !dbg !138
  %41 = sub nsw i32 %40, 1, !dbg !139
  %42 = sext i32 %41 to i64, !dbg !140
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %42, !dbg !140
  %44 = load i8, i8* %43, align 1, !dbg !140
  %45 = sext i8 %44 to i32, !dbg !140
  %46 = icmp eq i32 %45, 100, !dbg !141
  %47 = zext i1 %46 to i32, !dbg !141
  %48 = sext i32 %47 to i64, !dbg !140
  call void @klee_assume(i64 noundef %48), !dbg !142
  br label %50, !dbg !143

49:                                               ; preds = %0
  br label %92, !dbg !144

50:                                               ; preds = %12
  %51 = load i32, i32* %4, align 4, !dbg !146
  %52 = sub nsw i32 %51, 4, !dbg !146
  store i32 %52, i32* %4, align 4, !dbg !146
  %53 = load i32, i32* %4, align 4, !dbg !147
  %54 = icmp sge i32 %53, 2, !dbg !149
  br i1 %54, label %55, label %66, !dbg !150

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4, !dbg !151
  %57 = sub nsw i32 %56, 2, !dbg !152
  %58 = sext i32 %57 to i64, !dbg !153
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %58, !dbg !153
  %60 = load i8, i8* %59, align 1, !dbg !153
  %61 = sext i8 %60 to i32, !dbg !153
  %62 = icmp eq i32 %61, 95, !dbg !154
  br i1 %62, label %63, label %66, !dbg !155

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4, !dbg !156
  %65 = sub nsw i32 %64, 2, !dbg !156
  store i32 %65, i32* %4, align 4, !dbg !156
  br label %66, !dbg !158

66:                                               ; preds = %63, %55, %50
  %67 = load i32, i32* %4, align 4, !dbg !159
  %68 = icmp sge i32 %67, 2, !dbg !161
  br i1 %68, label %69, label %80, !dbg !162

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4, !dbg !163
  %71 = sub nsw i32 %70, 2, !dbg !164
  %72 = sext i32 %71 to i64, !dbg !165
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 %72, !dbg !165
  %74 = load i8, i8* %73, align 1, !dbg !165
  %75 = sext i8 %74 to i32, !dbg !165
  %76 = icmp eq i32 %75, 95, !dbg !166
  br i1 %76, label %77, label %80, !dbg !167

77:                                               ; preds = %69
  %78 = load i32, i32* %4, align 4, !dbg !168
  %79 = sub nsw i32 %78, 2, !dbg !168
  store i32 %79, i32* %4, align 4, !dbg !168
  br label %80, !dbg !170

80:                                               ; preds = %77, %69, %66
  %81 = load i32, i32* %4, align 4, !dbg !171
  %82 = icmp sge i32 %81, 0, !dbg !171
  br i1 %82, label %83, label %88, !dbg !171

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4, !dbg !171
  %85 = icmp slt i32 %84, 256, !dbg !171
  br i1 %85, label %86, label %88, !dbg !171

86:                                               ; preds = %83
  br i1 true, label %87, label %88, !dbg !171

87:                                               ; preds = %86
  br label %90, !dbg !171

88:                                               ; preds = %86, %83, %80
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 114, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.testSchemasOne, i64 0, i64 0)), !dbg !171
  br label %90, !dbg !171

90:                                               ; preds = %88, %87
  %91 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 117, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.testSchemasOne, i64 0, i64 0)), !dbg !172
  br label %92, !dbg !173

92:                                               ; preds = %90, %49
  ret void, !dbg !173
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !174 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @testSchemasOne(), !dbg !177
  ret i32 0, !dbg !178
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/092_runtest.c_3486_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0dab6907768ad76aa40081e2b5811d42")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 5}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"Ubuntu clang version 14.0.6"}
!13 = distinct !DISubprogram(name: "xmlNanoHTTPOpen", scope: !1, file: !1, line: 14, type: !14, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!14 = !DISubroutineType(types: !15)
!15 = !{!3, !16, !19}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!21 = !{}
!22 = !DILocalVariable(name: "URL", arg: 1, scope: !13, file: !1, line: 14, type: !16)
!23 = !DILocation(line: 14, column: 35, scope: !13)
!24 = !DILocalVariable(name: "contentType", arg: 2, scope: !13, file: !1, line: 14, type: !19)
!25 = !DILocation(line: 14, column: 47, scope: !13)
!26 = !DILocation(line: 15, column: 11, scope: !13)
!27 = !DILocation(line: 16, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !1, line: 16, column: 9)
!29 = !DILocation(line: 16, column: 9, scope: !13)
!30 = !DILocation(line: 16, column: 23, scope: !28)
!31 = !DILocation(line: 16, column: 35, scope: !28)
!32 = !DILocation(line: 16, column: 22, scope: !28)
!33 = !DILocation(line: 17, column: 5, scope: !13)
!34 = distinct !DISubprogram(name: "xmlNanoHTTPRead", scope: !1, file: !1, line: 21, type: !35, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!35 = !DISubroutineType(types: !36)
!36 = !{!4, !3, !3, !4}
!37 = !DILocalVariable(name: "ctx", arg: 1, scope: !34, file: !1, line: 21, type: !3)
!38 = !DILocation(line: 21, column: 27, scope: !34)
!39 = !DILocalVariable(name: "dest", arg: 2, scope: !34, file: !1, line: 21, type: !3)
!40 = !DILocation(line: 21, column: 38, scope: !34)
!41 = !DILocalVariable(name: "destSize", arg: 3, scope: !34, file: !1, line: 21, type: !4)
!42 = !DILocation(line: 21, column: 48, scope: !34)
!43 = !DILocation(line: 22, column: 11, scope: !34)
!44 = !DILocation(line: 23, column: 11, scope: !34)
!45 = !DILocation(line: 24, column: 11, scope: !34)
!46 = !DILocation(line: 25, column: 5, scope: !34)
!47 = distinct !DISubprogram(name: "xmlNanoHTTPClose", scope: !1, file: !1, line: 29, type: !48, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !3}
!50 = !DILocalVariable(name: "ctx", arg: 1, scope: !47, file: !1, line: 29, type: !3)
!51 = !DILocation(line: 29, column: 29, scope: !47)
!52 = !DILocation(line: 30, column: 11, scope: !47)
!53 = !DILocation(line: 31, column: 1, scope: !47)
!54 = distinct !DISubprogram(name: "xmlParseSchema", scope: !1, file: !1, line: 34, type: !55, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!55 = !DISubroutineType(types: !56)
!56 = !{!3, !16}
!57 = !DILocalVariable(name: "schemaURL", arg: 1, scope: !54, file: !1, line: 34, type: !16)
!58 = !DILocation(line: 34, column: 34, scope: !54)
!59 = !DILocation(line: 35, column: 11, scope: !54)
!60 = !DILocation(line: 36, column: 5, scope: !54)
!61 = distinct !DISubprogram(name: "xmlSchemaFree", scope: !1, file: !1, line: 40, type: !48, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!62 = !DILocalVariable(name: "schema", arg: 1, scope: !61, file: !1, line: 40, type: !3)
!63 = !DILocation(line: 40, column: 26, scope: !61)
!64 = !DILocation(line: 41, column: 11, scope: !61)
!65 = !DILocation(line: 42, column: 1, scope: !61)
!66 = distinct !DISubprogram(name: "xmlSchemaValidateDoc", scope: !1, file: !1, line: 45, type: !67, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!67 = !DISubroutineType(types: !68)
!68 = !{!4, !3, !3}
!69 = !DILocalVariable(name: "schema", arg: 1, scope: !66, file: !1, line: 45, type: !3)
!70 = !DILocation(line: 45, column: 32, scope: !66)
!71 = !DILocalVariable(name: "doc", arg: 2, scope: !66, file: !1, line: 45, type: !3)
!72 = !DILocation(line: 45, column: 46, scope: !66)
!73 = !DILocation(line: 46, column: 11, scope: !66)
!74 = !DILocation(line: 47, column: 11, scope: !66)
!75 = !DILocation(line: 48, column: 5, scope: !66)
!76 = distinct !DISubprogram(name: "xmlReadFile", scope: !1, file: !1, line: 52, type: !77, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!77 = !DISubroutineType(types: !78)
!78 = !{!3, !16, !16, !4}
!79 = !DILocalVariable(name: "filename", arg: 1, scope: !76, file: !1, line: 52, type: !16)
!80 = !DILocation(line: 52, column: 31, scope: !76)
!81 = !DILocalVariable(name: "encoding", arg: 2, scope: !76, file: !1, line: 52, type: !16)
!82 = !DILocation(line: 52, column: 53, scope: !76)
!83 = !DILocalVariable(name: "options", arg: 3, scope: !76, file: !1, line: 52, type: !4)
!84 = !DILocation(line: 52, column: 67, scope: !76)
!85 = !DILocation(line: 53, column: 11, scope: !76)
!86 = !DILocation(line: 54, column: 11, scope: !76)
!87 = !DILocation(line: 55, column: 11, scope: !76)
!88 = !DILocation(line: 56, column: 5, scope: !76)
!89 = distinct !DISubprogram(name: "xmlFreeDoc", scope: !1, file: !1, line: 60, type: !48, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!90 = !DILocalVariable(name: "doc", arg: 1, scope: !89, file: !1, line: 60, type: !3)
!91 = !DILocation(line: 60, column: 23, scope: !89)
!92 = !DILocation(line: 61, column: 11, scope: !89)
!93 = !DILocation(line: 62, column: 1, scope: !89)
!94 = distinct !DISubprogram(name: "testSchemasOne", scope: !1, file: !1, line: 65, type: !95, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DILocalVariable(name: "base", scope: !94, file: !1, line: 66, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 256)
!101 = !DILocation(line: 66, column: 10, scope: !94)
!102 = !DILocalVariable(name: "prefix", scope: !94, file: !1, line: 67, type: !98)
!103 = !DILocation(line: 67, column: 10, scope: !94)
!104 = !DILocalVariable(name: "pattern", scope: !94, file: !1, line: 68, type: !105)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4000, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 500)
!108 = !DILocation(line: 68, column: 10, scope: !94)
!109 = !DILocalVariable(name: "len", scope: !94, file: !1, line: 69, type: !4)
!110 = !DILocation(line: 69, column: 9, scope: !94)
!111 = !DILocation(line: 72, column: 24, scope: !94)
!112 = !DILocation(line: 72, column: 5, scope: !94)
!113 = !DILocation(line: 75, column: 5, scope: !94)
!114 = !DILocation(line: 75, column: 26, scope: !94)
!115 = !DILocation(line: 78, column: 18, scope: !94)
!116 = !DILocation(line: 78, column: 11, scope: !94)
!117 = !DILocation(line: 78, column: 9, scope: !94)
!118 = !DILocation(line: 84, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !94, file: !1, line: 84, column: 9)
!120 = !DILocation(line: 84, column: 13, scope: !119)
!121 = !DILocation(line: 84, column: 9, scope: !94)
!122 = !DILocation(line: 85, column: 26, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 84, column: 19)
!124 = !DILocation(line: 85, column: 29, scope: !123)
!125 = !DILocation(line: 85, column: 21, scope: !123)
!126 = !DILocation(line: 85, column: 33, scope: !123)
!127 = !DILocation(line: 85, column: 9, scope: !123)
!128 = !DILocation(line: 86, column: 26, scope: !123)
!129 = !DILocation(line: 86, column: 29, scope: !123)
!130 = !DILocation(line: 86, column: 21, scope: !123)
!131 = !DILocation(line: 86, column: 33, scope: !123)
!132 = !DILocation(line: 86, column: 9, scope: !123)
!133 = !DILocation(line: 87, column: 26, scope: !123)
!134 = !DILocation(line: 87, column: 29, scope: !123)
!135 = !DILocation(line: 87, column: 21, scope: !123)
!136 = !DILocation(line: 87, column: 33, scope: !123)
!137 = !DILocation(line: 87, column: 9, scope: !123)
!138 = !DILocation(line: 88, column: 26, scope: !123)
!139 = !DILocation(line: 88, column: 29, scope: !123)
!140 = !DILocation(line: 88, column: 21, scope: !123)
!141 = !DILocation(line: 88, column: 33, scope: !123)
!142 = !DILocation(line: 88, column: 9, scope: !123)
!143 = !DILocation(line: 89, column: 5, scope: !123)
!144 = !DILocation(line: 91, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !119, file: !1, line: 89, column: 12)
!146 = !DILocation(line: 95, column: 9, scope: !94)
!147 = !DILocation(line: 101, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !94, file: !1, line: 101, column: 9)
!149 = !DILocation(line: 101, column: 13, scope: !148)
!150 = !DILocation(line: 101, column: 18, scope: !148)
!151 = !DILocation(line: 101, column: 26, scope: !148)
!152 = !DILocation(line: 101, column: 30, scope: !148)
!153 = !DILocation(line: 101, column: 21, scope: !148)
!154 = !DILocation(line: 101, column: 35, scope: !148)
!155 = !DILocation(line: 101, column: 9, scope: !94)
!156 = !DILocation(line: 102, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !1, line: 101, column: 43)
!158 = !DILocation(line: 103, column: 5, scope: !157)
!159 = !DILocation(line: 106, column: 9, scope: !160)
!160 = distinct !DILexicalBlock(scope: !94, file: !1, line: 106, column: 9)
!161 = !DILocation(line: 106, column: 13, scope: !160)
!162 = !DILocation(line: 106, column: 18, scope: !160)
!163 = !DILocation(line: 106, column: 26, scope: !160)
!164 = !DILocation(line: 106, column: 30, scope: !160)
!165 = !DILocation(line: 106, column: 21, scope: !160)
!166 = !DILocation(line: 106, column: 35, scope: !160)
!167 = !DILocation(line: 106, column: 9, scope: !94)
!168 = !DILocation(line: 107, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !160, file: !1, line: 106, column: 43)
!170 = !DILocation(line: 108, column: 5, scope: !169)
!171 = !DILocation(line: 114, column: 5, scope: !94)
!172 = !DILocation(line: 117, column: 5, scope: !94)
!173 = !DILocation(line: 122, column: 1, scope: !94)
!174 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 124, type: !175, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!175 = !DISubroutineType(types: !176)
!176 = !{!4}
!177 = !DILocation(line: 126, column: 5, scope: !174)
!178 = !DILocation(line: 127, column: 5, scope: !174)
