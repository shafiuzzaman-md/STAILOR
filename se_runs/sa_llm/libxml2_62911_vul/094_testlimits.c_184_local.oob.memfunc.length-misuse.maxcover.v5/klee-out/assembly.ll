; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dotlen\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %3, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %4, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %5, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %6, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %7, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8** %8, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i8** %9, metadata !34, metadata !DIExpression()), !dbg !35
  %10 = bitcast i32* %2 to i8*, !dbg !36
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !37
  %11 = bitcast i32* %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !39
  %12 = bitcast i32* %4 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !41
  %13 = bitcast i32* %5 to i8*, !dbg !42
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !43
  %14 = bitcast i32* %6 to i8*, !dbg !44
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !45
  %15 = bitcast i32* %7 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !47
  %16 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !48
  store i8* %16, i8** %8, align 8, !dbg !49
  %17 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !50
  store i8* %17, i8** %9, align 8, !dbg !51
  %18 = load i8*, i8** %8, align 8, !dbg !52
  %19 = icmp ne i8* %18, null, !dbg !53
  %20 = zext i1 %19 to i32, !dbg !53
  %21 = sext i32 %20 to i64, !dbg !52
  call void @klee_assume(i64 noundef %21), !dbg !54
  %22 = load i8*, i8** %9, align 8, !dbg !55
  %23 = icmp ne i8* %22, null, !dbg !56
  %24 = zext i1 %23 to i32, !dbg !56
  %25 = sext i32 %24 to i64, !dbg !55
  call void @klee_assume(i64 noundef %25), !dbg !57
  %26 = load i32, i32* %3, align 4, !dbg !58
  %27 = icmp uge i32 %26, 0, !dbg !59
  %28 = zext i1 %27 to i32, !dbg !59
  %29 = sext i32 %28 to i64, !dbg !58
  call void @klee_assume(i64 noundef %29), !dbg !60
  %30 = load i32, i32* %4, align 4, !dbg !61
  %31 = icmp uge i32 %30, 0, !dbg !62
  %32 = zext i1 %31 to i32, !dbg !62
  %33 = sext i32 %32 to i64, !dbg !61
  call void @klee_assume(i64 noundef %33), !dbg !63
  %34 = load i32, i32* %5, align 4, !dbg !64
  %35 = icmp uge i32 %34, 0, !dbg !65
  %36 = zext i1 %35 to i32, !dbg !65
  %37 = sext i32 %36 to i64, !dbg !64
  call void @klee_assume(i64 noundef %37), !dbg !66
  %38 = load i32, i32* %6, align 4, !dbg !67
  %39 = icmp uge i32 %38, 0, !dbg !68
  %40 = zext i1 %39 to i32, !dbg !68
  %41 = sext i32 %40 to i64, !dbg !67
  call void @klee_assume(i64 noundef %41), !dbg !69
  %42 = load i32, i32* %7, align 4, !dbg !70
  %43 = icmp uge i32 %42, 0, !dbg !71
  %44 = zext i1 %43 to i32, !dbg !71
  %45 = sext i32 %44 to i64, !dbg !70
  call void @klee_assume(i64 noundef %45), !dbg !72
  %46 = load i32, i32* %2, align 4, !dbg !73
  %47 = icmp eq i32 %46, 0, !dbg !74
  %48 = zext i1 %47 to i32, !dbg !74
  %49 = sext i32 %48 to i64, !dbg !73
  call void @klee_assume(i64 noundef %49), !dbg !75
  %50 = load i32, i32* %3, align 4, !dbg !76
  %51 = load i32, i32* %4, align 4, !dbg !77
  %52 = icmp ult i32 %50, %51, !dbg !78
  %53 = zext i1 %52 to i32, !dbg !78
  %54 = sext i32 %53 to i64, !dbg !76
  call void @klee_assume(i64 noundef %54), !dbg !79
  %55 = load i32, i32* %3, align 4, !dbg !80
  %56 = icmp ule i32 %55, 1024, !dbg !80
  br i1 %56, label %57, label %59, !dbg !80

57:                                               ; preds = %0
  br i1 true, label %58, label %59, !dbg !80

58:                                               ; preds = %57
  br label %61, !dbg !80

59:                                               ; preds = %57, %0
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !80
  br label %61, !dbg !80

61:                                               ; preds = %59, %58
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  %63 = load i8*, i8** %8, align 8, !dbg !82
  call void @free(i8* noundef %63) #5, !dbg !83
  %64 = load i8*, i8** %9, align 8, !dbg !84
  call void @free(i8* noundef %64) #5, !dbg !85
  ret i32 0, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/094_testlimits.c_184_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "73a9352d39f461f64d354d00fb3a5c2f")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !15, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "instate", scope: !14, file: !1, line: 10, type: !17)
!20 = !DILocation(line: 10, column: 9, scope: !14)
!21 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 11, type: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocation(line: 11, column: 18, scope: !14)
!24 = !DILocalVariable(name: "rlen", scope: !14, file: !1, line: 11, type: !22)
!25 = !DILocation(line: 11, column: 23, scope: !14)
!26 = !DILocalVariable(name: "curlen", scope: !14, file: !1, line: 11, type: !22)
!27 = !DILocation(line: 11, column: 29, scope: !14)
!28 = !DILocalVariable(name: "dotlen", scope: !14, file: !1, line: 11, type: !22)
!29 = !DILocation(line: 11, column: 37, scope: !14)
!30 = !DILocalVariable(name: "maxlen", scope: !14, file: !1, line: 11, type: !22)
!31 = !DILocation(line: 11, column: 45, scope: !14)
!32 = !DILocalVariable(name: "buffer", scope: !14, file: !1, line: 12, type: !3)
!33 = !DILocation(line: 12, column: 11, scope: !14)
!34 = !DILocalVariable(name: "current", scope: !14, file: !1, line: 13, type: !3)
!35 = !DILocation(line: 13, column: 11, scope: !14)
!36 = !DILocation(line: 15, column: 24, scope: !14)
!37 = !DILocation(line: 15, column: 5, scope: !14)
!38 = !DILocation(line: 16, column: 24, scope: !14)
!39 = !DILocation(line: 16, column: 5, scope: !14)
!40 = !DILocation(line: 17, column: 24, scope: !14)
!41 = !DILocation(line: 17, column: 5, scope: !14)
!42 = !DILocation(line: 18, column: 24, scope: !14)
!43 = !DILocation(line: 18, column: 5, scope: !14)
!44 = !DILocation(line: 19, column: 24, scope: !14)
!45 = !DILocation(line: 19, column: 5, scope: !14)
!46 = !DILocation(line: 20, column: 24, scope: !14)
!47 = !DILocation(line: 20, column: 5, scope: !14)
!48 = !DILocation(line: 22, column: 21, scope: !14)
!49 = !DILocation(line: 22, column: 12, scope: !14)
!50 = !DILocation(line: 23, column: 22, scope: !14)
!51 = !DILocation(line: 23, column: 13, scope: !14)
!52 = !DILocation(line: 25, column: 17, scope: !14)
!53 = !DILocation(line: 25, column: 24, scope: !14)
!54 = !DILocation(line: 25, column: 5, scope: !14)
!55 = !DILocation(line: 26, column: 17, scope: !14)
!56 = !DILocation(line: 26, column: 25, scope: !14)
!57 = !DILocation(line: 26, column: 5, scope: !14)
!58 = !DILocation(line: 28, column: 17, scope: !14)
!59 = !DILocation(line: 28, column: 21, scope: !14)
!60 = !DILocation(line: 28, column: 5, scope: !14)
!61 = !DILocation(line: 29, column: 17, scope: !14)
!62 = !DILocation(line: 29, column: 22, scope: !14)
!63 = !DILocation(line: 29, column: 5, scope: !14)
!64 = !DILocation(line: 30, column: 17, scope: !14)
!65 = !DILocation(line: 30, column: 24, scope: !14)
!66 = !DILocation(line: 30, column: 5, scope: !14)
!67 = !DILocation(line: 31, column: 17, scope: !14)
!68 = !DILocation(line: 31, column: 24, scope: !14)
!69 = !DILocation(line: 31, column: 5, scope: !14)
!70 = !DILocation(line: 32, column: 17, scope: !14)
!71 = !DILocation(line: 32, column: 24, scope: !14)
!72 = !DILocation(line: 32, column: 5, scope: !14)
!73 = !DILocation(line: 34, column: 17, scope: !14)
!74 = !DILocation(line: 34, column: 25, scope: !14)
!75 = !DILocation(line: 34, column: 5, scope: !14)
!76 = !DILocation(line: 35, column: 17, scope: !14)
!77 = !DILocation(line: 35, column: 23, scope: !14)
!78 = !DILocation(line: 35, column: 21, scope: !14)
!79 = !DILocation(line: 35, column: 5, scope: !14)
!80 = !DILocation(line: 37, column: 5, scope: !14)
!81 = !DILocation(line: 39, column: 5, scope: !14)
!82 = !DILocation(line: 41, column: 10, scope: !14)
!83 = !DILocation(line: 41, column: 5, scope: !14)
!84 = !DILocation(line: 42, column: 10, scope: !14)
!85 = !DILocation(line: 42, column: 5, scope: !14)
!86 = !DILocation(line: 43, column: 5, scope: !14)
