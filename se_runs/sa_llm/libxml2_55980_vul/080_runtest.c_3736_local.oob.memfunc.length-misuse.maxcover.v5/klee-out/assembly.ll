; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/080_runtest.c_3736_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/080_runtest.c_3736_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"testRelax\00", align 1
@base = dso_local global i8* null, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"(adjusted_len < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/080_runtest.c_3736_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@prefix = dso_local global [500 x i8] zeroinitializer, align 16, !dbg !5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !27, metadata !DIExpression()), !dbg !29
  %6 = bitcast i32* %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %7 = load i32, i32* %2, align 4, !dbg !32
  %8 = icmp eq i32 %7, 2, !dbg !33
  %9 = zext i1 %8 to i32, !dbg !33
  %10 = sext i32 %9 to i64, !dbg !32
  call void @klee_assume(i64 noundef %10), !dbg !34
  %11 = call noalias i8* @malloc(i64 noundef 16) #6, !dbg !35
  %12 = bitcast i8* %11 to i8**, !dbg !35
  store i8** %12, i8*** %3, align 8, !dbg !36
  %13 = load i8**, i8*** %3, align 8, !dbg !37
  %14 = getelementptr inbounds i8*, i8** %13, i64 0, !dbg !37
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8, !dbg !38
  %15 = call noalias i8* @malloc(i64 noundef 500) #6, !dbg !39
  store i8* %15, i8** @base, align 8, !dbg !40
  %16 = load i8*, i8** @base, align 8, !dbg !41
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 500, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !42
  %17 = load i8*, i8** @base, align 8, !dbg !43
  %18 = getelementptr inbounds i8, i8* %17, i64 499, !dbg !43
  store i8 0, i8* %18, align 1, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %4, metadata !45, metadata !DIExpression()), !dbg !46
  %19 = load i8*, i8** @base, align 8, !dbg !47
  %20 = call i64 @strlen(i8* noundef %19) #7, !dbg !48
  %21 = trunc i64 %20 to i32, !dbg !48
  store i32 %21, i32* %4, align 4, !dbg !46
  %22 = load i32, i32* %4, align 4, !dbg !49
  %23 = icmp sge i32 %22, 5, !dbg !50
  br i1 %23, label %24, label %27, !dbg !51

24:                                               ; preds = %0
  %25 = load i32, i32* %4, align 4, !dbg !52
  %26 = icmp sle i32 %25, 499, !dbg !53
  br label %27

27:                                               ; preds = %24, %0
  %28 = phi i1 [ false, %0 ], [ %26, %24 ], !dbg !54
  %29 = zext i1 %28 to i32, !dbg !51
  %30 = sext i32 %29 to i64, !dbg !49
  call void @klee_assume(i64 noundef %30), !dbg !55
  %31 = load i32, i32* %4, align 4, !dbg !56
  %32 = icmp sge i32 %31, 4, !dbg !57
  %33 = zext i1 %32 to i32, !dbg !57
  %34 = sext i32 %33 to i64, !dbg !56
  call void @klee_assume(i64 noundef %34), !dbg !58
  %35 = load i8*, i8** @base, align 8, !dbg !59
  %36 = load i32, i32* %4, align 4, !dbg !60
  %37 = sub nsw i32 %36, 4, !dbg !61
  %38 = sext i32 %37 to i64, !dbg !59
  %39 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !59
  %40 = load i8, i8* %39, align 1, !dbg !59
  %41 = sext i8 %40 to i32, !dbg !59
  %42 = icmp eq i32 %41, 46, !dbg !62
  %43 = zext i1 %42 to i32, !dbg !62
  %44 = sext i32 %43 to i64, !dbg !59
  call void @klee_assume(i64 noundef %44), !dbg !63
  %45 = load i8*, i8** @base, align 8, !dbg !64
  %46 = load i32, i32* %4, align 4, !dbg !65
  %47 = sub nsw i32 %46, 3, !dbg !66
  %48 = sext i32 %47 to i64, !dbg !64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48, !dbg !64
  %50 = load i8, i8* %49, align 1, !dbg !64
  %51 = sext i8 %50 to i32, !dbg !64
  %52 = icmp eq i32 %51, 114, !dbg !67
  %53 = zext i1 %52 to i32, !dbg !67
  %54 = sext i32 %53 to i64, !dbg !64
  call void @klee_assume(i64 noundef %54), !dbg !68
  %55 = load i8*, i8** @base, align 8, !dbg !69
  %56 = load i32, i32* %4, align 4, !dbg !70
  %57 = sub nsw i32 %56, 2, !dbg !71
  %58 = sext i32 %57 to i64, !dbg !69
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !69
  %60 = load i8, i8* %59, align 1, !dbg !69
  %61 = sext i8 %60 to i32, !dbg !69
  %62 = icmp eq i32 %61, 110, !dbg !72
  %63 = zext i1 %62 to i32, !dbg !72
  %64 = sext i32 %63 to i64, !dbg !69
  call void @klee_assume(i64 noundef %64), !dbg !73
  %65 = load i8*, i8** @base, align 8, !dbg !74
  %66 = load i32, i32* %4, align 4, !dbg !75
  %67 = sub nsw i32 %66, 1, !dbg !76
  %68 = sext i32 %67 to i64, !dbg !74
  %69 = getelementptr inbounds i8, i8* %65, i64 %68, !dbg !74
  %70 = load i8, i8* %69, align 1, !dbg !74
  %71 = sext i8 %70 to i32, !dbg !74
  %72 = icmp eq i32 %71, 103, !dbg !77
  %73 = zext i1 %72 to i32, !dbg !77
  %74 = sext i32 %73 to i64, !dbg !74
  call void @klee_assume(i64 noundef %74), !dbg !78
  %75 = load i8*, i8** @base, align 8, !dbg !79
  %76 = load i8**, i8*** %3, align 8, !dbg !80
  %77 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !80
  store i8* %75, i8** %77, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %5, metadata !82, metadata !DIExpression()), !dbg !83
  %78 = load i32, i32* %4, align 4, !dbg !84
  %79 = sub nsw i32 %78, 4, !dbg !85
  store i32 %79, i32* %5, align 4, !dbg !83
  %80 = load i32, i32* %5, align 4, !dbg !86
  %81 = icmp slt i32 %80, 500, !dbg !86
  br i1 %81, label %82, label %84, !dbg !86

82:                                               ; preds = %27
  br i1 true, label %83, label %84, !dbg !86

83:                                               ; preds = %82
  br label %86, !dbg !86

84:                                               ; preds = %82, %27
  %85 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !86
  br label %86, !dbg !86

86:                                               ; preds = %84, %83
  %87 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !87
  %88 = load i32, i32* %2, align 4, !dbg !88
  %89 = load i8**, i8*** %3, align 8, !dbg !89
  %90 = call i32 @testRelax(i32 noundef %88, i8** noundef %89), !dbg !90
  %91 = load i8*, i8** @base, align 8, !dbg !91
  call void @free(i8* noundef %91) #6, !dbg !92
  %92 = load i8**, i8*** %3, align 8, !dbg !93
  %93 = bitcast i8** %92 to i8*, !dbg !93
  call void @free(i8* noundef %93) #6, !dbg !94
  ret i32 0, !dbg !95
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare i32 @testRelax(i32 noundef, i8** noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "base", scope: !2, file: !3, line: 11, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/080_runtest.c_3736_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a26ef6d7b6d8e175623b0911cbbf2ed7")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "prefix", scope: !2, file: !3, line: 12, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4000, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{!10}
!10 = !DISubrange(count: 500)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 14, type: !21, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{}
!25 = !DILocalVariable(name: "argc", scope: !20, file: !3, line: 15, type: !23)
!26 = !DILocation(line: 15, column: 9, scope: !20)
!27 = !DILocalVariable(name: "argv", scope: !20, file: !3, line: 16, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!29 = !DILocation(line: 16, column: 12, scope: !20)
!30 = !DILocation(line: 19, column: 24, scope: !20)
!31 = !DILocation(line: 19, column: 5, scope: !20)
!32 = !DILocation(line: 20, column: 17, scope: !20)
!33 = !DILocation(line: 20, column: 22, scope: !20)
!34 = !DILocation(line: 20, column: 5, scope: !20)
!35 = !DILocation(line: 23, column: 12, scope: !20)
!36 = !DILocation(line: 23, column: 10, scope: !20)
!37 = !DILocation(line: 26, column: 5, scope: !20)
!38 = !DILocation(line: 26, column: 13, scope: !20)
!39 = !DILocation(line: 29, column: 12, scope: !20)
!40 = !DILocation(line: 29, column: 10, scope: !20)
!41 = !DILocation(line: 30, column: 24, scope: !20)
!42 = !DILocation(line: 30, column: 5, scope: !20)
!43 = !DILocation(line: 33, column: 5, scope: !20)
!44 = !DILocation(line: 33, column: 15, scope: !20)
!45 = !DILocalVariable(name: "len", scope: !20, file: !3, line: 37, type: !23)
!46 = !DILocation(line: 37, column: 9, scope: !20)
!47 = !DILocation(line: 37, column: 22, scope: !20)
!48 = !DILocation(line: 37, column: 15, scope: !20)
!49 = !DILocation(line: 38, column: 17, scope: !20)
!50 = !DILocation(line: 38, column: 21, scope: !20)
!51 = !DILocation(line: 38, column: 26, scope: !20)
!52 = !DILocation(line: 38, column: 29, scope: !20)
!53 = !DILocation(line: 38, column: 33, scope: !20)
!54 = !DILocation(line: 0, scope: !20)
!55 = !DILocation(line: 38, column: 5, scope: !20)
!56 = !DILocation(line: 41, column: 17, scope: !20)
!57 = !DILocation(line: 41, column: 21, scope: !20)
!58 = !DILocation(line: 41, column: 5, scope: !20)
!59 = !DILocation(line: 42, column: 17, scope: !20)
!60 = !DILocation(line: 42, column: 22, scope: !20)
!61 = !DILocation(line: 42, column: 25, scope: !20)
!62 = !DILocation(line: 42, column: 29, scope: !20)
!63 = !DILocation(line: 42, column: 5, scope: !20)
!64 = !DILocation(line: 43, column: 17, scope: !20)
!65 = !DILocation(line: 43, column: 22, scope: !20)
!66 = !DILocation(line: 43, column: 25, scope: !20)
!67 = !DILocation(line: 43, column: 29, scope: !20)
!68 = !DILocation(line: 43, column: 5, scope: !20)
!69 = !DILocation(line: 44, column: 17, scope: !20)
!70 = !DILocation(line: 44, column: 22, scope: !20)
!71 = !DILocation(line: 44, column: 25, scope: !20)
!72 = !DILocation(line: 44, column: 29, scope: !20)
!73 = !DILocation(line: 44, column: 5, scope: !20)
!74 = !DILocation(line: 45, column: 17, scope: !20)
!75 = !DILocation(line: 45, column: 22, scope: !20)
!76 = !DILocation(line: 45, column: 25, scope: !20)
!77 = !DILocation(line: 45, column: 29, scope: !20)
!78 = !DILocation(line: 45, column: 5, scope: !20)
!79 = !DILocation(line: 47, column: 15, scope: !20)
!80 = !DILocation(line: 47, column: 5, scope: !20)
!81 = !DILocation(line: 47, column: 13, scope: !20)
!82 = !DILocalVariable(name: "adjusted_len", scope: !20, file: !3, line: 51, type: !23)
!83 = !DILocation(line: 51, column: 9, scope: !20)
!84 = !DILocation(line: 51, column: 24, scope: !20)
!85 = !DILocation(line: 51, column: 28, scope: !20)
!86 = !DILocation(line: 52, column: 5, scope: !20)
!87 = !DILocation(line: 55, column: 5, scope: !20)
!88 = !DILocation(line: 58, column: 15, scope: !20)
!89 = !DILocation(line: 58, column: 21, scope: !20)
!90 = !DILocation(line: 58, column: 5, scope: !20)
!91 = !DILocation(line: 61, column: 10, scope: !20)
!92 = !DILocation(line: 61, column: 5, scope: !20)
!93 = !DILocation(line: 62, column: 10, scope: !20)
!94 = !DILocation(line: 62, column: 5, scope: !20)
!95 = !DILocation(line: 64, column: 5, scope: !20)
