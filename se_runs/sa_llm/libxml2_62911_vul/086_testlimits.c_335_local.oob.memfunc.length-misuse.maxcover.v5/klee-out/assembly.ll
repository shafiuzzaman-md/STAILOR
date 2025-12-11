; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/086_testlimits.c_335_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/086_testlimits.c_335_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.State = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"(len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/086_testlimits.c_335_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.State, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.State* %2, metadata !17, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %3, metadata !29, metadata !DIExpression()), !dbg !30
  %4 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !31
  %5 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 0, !dbg !32
  store i8* %4, i8** %5, align 8, !dbg !33
  %6 = call noalias i8* @malloc(i64 noundef 1024) #5, !dbg !34
  %7 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 1, !dbg !35
  store i8* %6, i8** %7, align 8, !dbg !36
  %8 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 0, !dbg !37
  %9 = load i8*, i8** %8, align 8, !dbg !37
  %10 = icmp ne i8* %9, null, !dbg !38
  %11 = zext i1 %10 to i32, !dbg !38
  %12 = sext i32 %11 to i64, !dbg !39
  call void @klee_assume(i64 noundef %12), !dbg !40
  %13 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 1, !dbg !41
  %14 = load i8*, i8** %13, align 8, !dbg !41
  %15 = icmp ne i8* %14, null, !dbg !42
  %16 = zext i1 %15 to i32, !dbg !42
  %17 = sext i32 %16 to i64, !dbg !43
  call void @klee_assume(i64 noundef %17), !dbg !44
  %18 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2, !dbg !45
  %19 = bitcast i32* %18 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %20 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 3, !dbg !48
  %21 = bitcast i32* %20 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !50
  %22 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 4, !dbg !51
  %23 = bitcast i32* %22 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  %24 = bitcast i32* %3 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !55
  %25 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2, !dbg !56
  %26 = load i32, i32* %25, align 8, !dbg !56
  %27 = icmp sge i32 %26, 0, !dbg !57
  %28 = zext i1 %27 to i32, !dbg !57
  %29 = sext i32 %28 to i64, !dbg !58
  call void @klee_assume(i64 noundef %29), !dbg !59
  %30 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 3, !dbg !60
  %31 = load i32, i32* %30, align 4, !dbg !60
  %32 = icmp sge i32 %31, 0, !dbg !61
  %33 = zext i1 %32 to i32, !dbg !61
  %34 = sext i32 %33 to i64, !dbg !62
  call void @klee_assume(i64 noundef %34), !dbg !63
  %35 = load i32, i32* %3, align 4, !dbg !64
  %36 = icmp sge i32 %35, 0, !dbg !65
  %37 = zext i1 %36 to i32, !dbg !65
  %38 = sext i32 %37 to i64, !dbg !64
  call void @klee_assume(i64 noundef %38), !dbg !66
  %39 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 4, !dbg !67
  %40 = load i32, i32* %39, align 8, !dbg !67
  %41 = icmp eq i32 %40, 2, !dbg !68
  %42 = zext i1 %41 to i32, !dbg !68
  %43 = sext i32 %42 to i64, !dbg !69
  call void @klee_assume(i64 noundef %43), !dbg !70
  %44 = load i32, i32* %3, align 4, !dbg !71
  %45 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2, !dbg !73
  %46 = load i32, i32* %45, align 8, !dbg !73
  %47 = icmp sge i32 %44, %46, !dbg !74
  br i1 %47, label %48, label %57, !dbg !75

48:                                               ; preds = %0
  %49 = load i32, i32* %3, align 4, !dbg !76
  %50 = icmp sle i32 %49, 1024, !dbg !76
  br i1 %50, label %51, label %53, !dbg !76

51:                                               ; preds = %48
  br i1 true, label %52, label %53, !dbg !76

52:                                               ; preds = %51
  br label %55, !dbg !76

53:                                               ; preds = %51, %48
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !76
  br label %55, !dbg !76

55:                                               ; preds = %53, %52
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !78
  br label %57, !dbg !79

57:                                               ; preds = %55, %0
  %58 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 0, !dbg !80
  %59 = load i8*, i8** %58, align 8, !dbg !80
  call void @free(i8* noundef %59) #5, !dbg !81
  %60 = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 1, !dbg !82
  %61 = load i8*, i8** %60, align 8, !dbg !82
  call void @free(i8* noundef %61) #5, !dbg !83
  ret i32 0, !dbg !84
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/086_testlimits.c_335_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7177f11dd3a04c63150f265a75d04964")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !13, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "s", scope: !12, file: !1, line: 18, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "State", file: !1, line: 15, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 256, elements: !20)
!20 = !{!21, !24, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !1, line: 10, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !19, file: !1, line: 11, baseType: !22, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !19, file: !1, line: 12, baseType: !15, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !19, file: !1, line: 13, baseType: !15, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !19, file: !1, line: 14, baseType: !15, size: 32, offset: 192)
!28 = !DILocation(line: 18, column: 11, scope: !12)
!29 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 19, type: !15)
!30 = !DILocation(line: 19, column: 9, scope: !12)
!31 = !DILocation(line: 21, column: 16, scope: !12)
!32 = !DILocation(line: 21, column: 7, scope: !12)
!33 = !DILocation(line: 21, column: 14, scope: !12)
!34 = !DILocation(line: 22, column: 17, scope: !12)
!35 = !DILocation(line: 22, column: 7, scope: !12)
!36 = !DILocation(line: 22, column: 15, scope: !12)
!37 = !DILocation(line: 23, column: 19, scope: !12)
!38 = !DILocation(line: 23, column: 26, scope: !12)
!39 = !DILocation(line: 23, column: 17, scope: !12)
!40 = !DILocation(line: 23, column: 5, scope: !12)
!41 = !DILocation(line: 24, column: 19, scope: !12)
!42 = !DILocation(line: 24, column: 27, scope: !12)
!43 = !DILocation(line: 24, column: 17, scope: !12)
!44 = !DILocation(line: 24, column: 5, scope: !12)
!45 = !DILocation(line: 26, column: 27, scope: !12)
!46 = !DILocation(line: 26, column: 24, scope: !12)
!47 = !DILocation(line: 26, column: 5, scope: !12)
!48 = !DILocation(line: 27, column: 27, scope: !12)
!49 = !DILocation(line: 27, column: 24, scope: !12)
!50 = !DILocation(line: 27, column: 5, scope: !12)
!51 = !DILocation(line: 28, column: 27, scope: !12)
!52 = !DILocation(line: 28, column: 24, scope: !12)
!53 = !DILocation(line: 28, column: 5, scope: !12)
!54 = !DILocation(line: 29, column: 24, scope: !12)
!55 = !DILocation(line: 29, column: 5, scope: !12)
!56 = !DILocation(line: 31, column: 19, scope: !12)
!57 = !DILocation(line: 31, column: 24, scope: !12)
!58 = !DILocation(line: 31, column: 17, scope: !12)
!59 = !DILocation(line: 31, column: 5, scope: !12)
!60 = !DILocation(line: 32, column: 19, scope: !12)
!61 = !DILocation(line: 32, column: 26, scope: !12)
!62 = !DILocation(line: 32, column: 17, scope: !12)
!63 = !DILocation(line: 32, column: 5, scope: !12)
!64 = !DILocation(line: 33, column: 17, scope: !12)
!65 = !DILocation(line: 33, column: 21, scope: !12)
!66 = !DILocation(line: 33, column: 5, scope: !12)
!67 = !DILocation(line: 34, column: 19, scope: !12)
!68 = !DILocation(line: 34, column: 27, scope: !12)
!69 = !DILocation(line: 34, column: 17, scope: !12)
!70 = !DILocation(line: 34, column: 5, scope: !12)
!71 = !DILocation(line: 36, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !12, file: !1, line: 36, column: 9)
!73 = !DILocation(line: 36, column: 18, scope: !72)
!74 = !DILocation(line: 36, column: 13, scope: !72)
!75 = !DILocation(line: 36, column: 9, scope: !12)
!76 = !DILocation(line: 37, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 24)
!78 = !DILocation(line: 38, column: 9, scope: !77)
!79 = !DILocation(line: 39, column: 5, scope: !77)
!80 = !DILocation(line: 41, column: 12, scope: !12)
!81 = !DILocation(line: 41, column: 5, scope: !12)
!82 = !DILocation(line: 42, column: 12, scope: !12)
!83 = !DILocation(line: 42, column: 5, scope: !12)
!84 = !DILocation(line: 43, column: 5, scope: !12)
