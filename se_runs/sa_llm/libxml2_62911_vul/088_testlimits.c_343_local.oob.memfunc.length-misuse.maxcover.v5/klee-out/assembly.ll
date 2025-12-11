; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"(len <= buffer_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %3, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %4, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %5, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %6, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i8** %7, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %8, metadata !41, metadata !DIExpression()), !dbg !42
  %9 = bitcast i32* %2 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !44
  %10 = bitcast i32* %3 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  %11 = bitcast i32* %4 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !48
  %12 = bitcast i32* %5 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !50
  %13 = bitcast i32* %8 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)), !dbg !52
  %14 = load i32, i32* %2, align 4, !dbg !53
  %15 = icmp uge i32 %14, 0, !dbg !54
  %16 = zext i1 %15 to i32, !dbg !54
  %17 = sext i32 %16 to i64, !dbg !53
  call void @klee_assume(i64 noundef %17), !dbg !55
  %18 = load i32, i32* %3, align 4, !dbg !56
  %19 = icmp uge i32 %18, 0, !dbg !57
  %20 = zext i1 %19 to i32, !dbg !57
  %21 = sext i32 %20 to i64, !dbg !56
  call void @klee_assume(i64 noundef %21), !dbg !58
  %22 = load i32, i32* %4, align 4, !dbg !59
  %23 = icmp uge i32 %22, 0, !dbg !60
  %24 = zext i1 %23 to i32, !dbg !60
  %25 = sext i32 %24 to i64, !dbg !59
  call void @klee_assume(i64 noundef %25), !dbg !61
  %26 = load i32, i32* %5, align 4, !dbg !62
  %27 = icmp uge i32 %26, 0, !dbg !63
  br i1 %27, label %28, label %31, !dbg !64

28:                                               ; preds = %0
  %29 = load i32, i32* %5, align 4, !dbg !65
  %30 = icmp ule i32 %29, 3, !dbg !66
  br label %31

31:                                               ; preds = %28, %0
  %32 = phi i1 [ false, %0 ], [ %30, %28 ], !dbg !67
  %33 = zext i1 %32 to i32, !dbg !64
  %34 = sext i32 %33 to i64, !dbg !62
  call void @klee_assume(i64 noundef %34), !dbg !68
  %35 = load i32, i32* %8, align 4, !dbg !69
  %36 = icmp uge i32 %35, 1, !dbg !70
  br i1 %36, label %37, label %40, !dbg !71

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4, !dbg !72
  %39 = icmp ule i32 %38, 1024, !dbg !73
  br label %40

40:                                               ; preds = %37, %31
  %41 = phi i1 [ false, %31 ], [ %39, %37 ], !dbg !67
  %42 = zext i1 %41 to i32, !dbg !71
  %43 = sext i32 %42 to i64, !dbg !69
  call void @klee_assume(i64 noundef %43), !dbg !74
  %44 = load i32, i32* %8, align 4, !dbg !75
  %45 = zext i32 %44 to i64, !dbg !75
  %46 = call noalias i8* @malloc(i64 noundef %45) #7, !dbg !76
  store i8* %46, i8** %6, align 8, !dbg !77
  %47 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !78
  store i8* %47, i8** %7, align 8, !dbg !79
  %48 = load i8*, i8** %6, align 8, !dbg !80
  %49 = load i32, i32* %8, align 4, !dbg !81
  %50 = zext i32 %49 to i64, !dbg !81
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef %50, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !82
  %51 = load i8*, i8** %7, align 8, !dbg !83
  call void @klee_make_symbolic(i8* noundef %51, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !84
  %52 = load i32, i32* %5, align 4, !dbg !85
  %53 = icmp eq i32 %52, 2, !dbg !87
  br i1 %53, label %54, label %84, !dbg !88

54:                                               ; preds = %40
  %55 = load i32, i32* %2, align 4, !dbg !89
  %56 = load i32, i32* %3, align 4, !dbg !92
  %57 = icmp uge i32 %55, %56, !dbg !93
  br i1 %57, label %58, label %65, !dbg !94

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4, !dbg !95
  store i32 %59, i32* %2, align 4, !dbg !97
  store i32 0, i32* %3, align 4, !dbg !98
  %60 = load i8*, i8** %6, align 8, !dbg !99
  %61 = load i8*, i8** %7, align 8, !dbg !100
  %62 = load i32, i32* %2, align 4, !dbg !101
  %63 = zext i32 %62 to i64, !dbg !101
  %64 = call i8* @memcpy(i8* %60, i8* %61, i64 %63), !dbg !102
  store i32 3, i32* %5, align 4, !dbg !103
  store i32 0, i32* %4, align 4, !dbg !104
  br label %83, !dbg !105

65:                                               ; preds = %54
  %66 = load i8*, i8** %6, align 8, !dbg !106
  %67 = load i8*, i8** %7, align 8, !dbg !108
  %68 = load i32, i32* %2, align 4, !dbg !109
  %69 = zext i32 %68 to i64, !dbg !109
  %70 = call i8* @memcpy(i8* %66, i8* %67, i64 %69), !dbg !110
  %71 = load i32, i32* %2, align 4, !dbg !111
  %72 = load i32, i32* %3, align 4, !dbg !112
  %73 = sub i32 %72, %71, !dbg !112
  store i32 %73, i32* %3, align 4, !dbg !112
  %74 = load i32, i32* %2, align 4, !dbg !113
  %75 = load i32, i32* %8, align 4, !dbg !113
  %76 = icmp ule i32 %74, %75, !dbg !113
  br i1 %76, label %77, label %79, !dbg !113

77:                                               ; preds = %65
  br i1 true, label %78, label %79, !dbg !113

78:                                               ; preds = %77
  br label %81, !dbg !113

79:                                               ; preds = %77, %65
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  br label %81, !dbg !113

81:                                               ; preds = %79, %78
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  br label %83

83:                                               ; preds = %81, %58
  br label %84, !dbg !115

84:                                               ; preds = %83, %40
  %85 = load i8*, i8** %6, align 8, !dbg !116
  call void @free(i8* noundef %85) #7, !dbg !117
  %86 = load i8*, i8** %7, align 8, !dbg !118
  call void @free(i8* noundef %86) #7, !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !121 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !131, metadata !DIExpression()), !dbg !132
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !133, metadata !DIExpression()), !dbg !134
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i8** %7, metadata !137, metadata !DIExpression()), !dbg !138
  %9 = load i8*, i8** %4, align 8, !dbg !139
  store i8* %9, i8** %7, align 8, !dbg !138
  call void @llvm.dbg.declare(metadata i8** %8, metadata !140, metadata !DIExpression()), !dbg !143
  %10 = load i8*, i8** %5, align 8, !dbg !144
  store i8* %10, i8** %8, align 8, !dbg !143
  br label %11, !dbg !145

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !146
  %13 = add i64 %12, -1, !dbg !146
  store i64 %13, i64* %6, align 8, !dbg !146
  %14 = icmp ugt i64 %12, 0, !dbg !147
  br i1 %14, label %15, label %21, !dbg !145

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !148
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !148
  store i8* %17, i8** %8, align 8, !dbg !148
  %18 = load i8, i8* %16, align 1, !dbg !149
  %19 = load i8*, i8** %7, align 8, !dbg !150
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !150
  store i8* %20, i8** %7, align 8, !dbg !150
  store i8 %18, i8* %19, align 1, !dbg !151
  br label %11, !dbg !145, !llvm.loop !152

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !154
  ret i8* %22, !dbg !155
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/088_testlimits.c_343_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8986d6253f066676db0dace039ef402b")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 9, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "STATE_0", value: 0)
!7 = !DIEnumerator(name: "STATE_1", value: 1)
!8 = !DIEnumerator(name: "STATE_2", value: 2)
!9 = !DIEnumerator(name: "STATE_3", value: 3)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !24, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{}
!28 = !DILocalVariable(name: "len", scope: !23, file: !1, line: 17, type: !4)
!29 = !DILocation(line: 17, column: 18, scope: !23)
!30 = !DILocalVariable(name: "rlen", scope: !23, file: !1, line: 17, type: !4)
!31 = !DILocation(line: 17, column: 23, scope: !23)
!32 = !DILocalVariable(name: "curlen", scope: !23, file: !1, line: 17, type: !4)
!33 = !DILocation(line: 17, column: 29, scope: !23)
!34 = !DILocalVariable(name: "instate", scope: !23, file: !1, line: 18, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "state_t", file: !1, line: 14, baseType: !3)
!36 = !DILocation(line: 18, column: 13, scope: !23)
!37 = !DILocalVariable(name: "buffer", scope: !23, file: !1, line: 19, type: !11)
!38 = !DILocation(line: 19, column: 11, scope: !23)
!39 = !DILocalVariable(name: "current", scope: !23, file: !1, line: 20, type: !11)
!40 = !DILocation(line: 20, column: 11, scope: !23)
!41 = !DILocalVariable(name: "buffer_size", scope: !23, file: !1, line: 21, type: !4)
!42 = !DILocation(line: 21, column: 18, scope: !23)
!43 = !DILocation(line: 23, column: 24, scope: !23)
!44 = !DILocation(line: 23, column: 5, scope: !23)
!45 = !DILocation(line: 24, column: 24, scope: !23)
!46 = !DILocation(line: 24, column: 5, scope: !23)
!47 = !DILocation(line: 25, column: 24, scope: !23)
!48 = !DILocation(line: 25, column: 5, scope: !23)
!49 = !DILocation(line: 26, column: 24, scope: !23)
!50 = !DILocation(line: 26, column: 5, scope: !23)
!51 = !DILocation(line: 27, column: 24, scope: !23)
!52 = !DILocation(line: 27, column: 5, scope: !23)
!53 = !DILocation(line: 29, column: 17, scope: !23)
!54 = !DILocation(line: 29, column: 21, scope: !23)
!55 = !DILocation(line: 29, column: 5, scope: !23)
!56 = !DILocation(line: 30, column: 17, scope: !23)
!57 = !DILocation(line: 30, column: 22, scope: !23)
!58 = !DILocation(line: 30, column: 5, scope: !23)
!59 = !DILocation(line: 31, column: 17, scope: !23)
!60 = !DILocation(line: 31, column: 24, scope: !23)
!61 = !DILocation(line: 31, column: 5, scope: !23)
!62 = !DILocation(line: 32, column: 17, scope: !23)
!63 = !DILocation(line: 32, column: 25, scope: !23)
!64 = !DILocation(line: 32, column: 36, scope: !23)
!65 = !DILocation(line: 32, column: 39, scope: !23)
!66 = !DILocation(line: 32, column: 47, scope: !23)
!67 = !DILocation(line: 0, scope: !23)
!68 = !DILocation(line: 32, column: 5, scope: !23)
!69 = !DILocation(line: 33, column: 17, scope: !23)
!70 = !DILocation(line: 33, column: 29, scope: !23)
!71 = !DILocation(line: 33, column: 34, scope: !23)
!72 = !DILocation(line: 33, column: 37, scope: !23)
!73 = !DILocation(line: 33, column: 49, scope: !23)
!74 = !DILocation(line: 33, column: 5, scope: !23)
!75 = !DILocation(line: 35, column: 28, scope: !23)
!76 = !DILocation(line: 35, column: 21, scope: !23)
!77 = !DILocation(line: 35, column: 12, scope: !23)
!78 = !DILocation(line: 36, column: 22, scope: !23)
!79 = !DILocation(line: 36, column: 13, scope: !23)
!80 = !DILocation(line: 38, column: 24, scope: !23)
!81 = !DILocation(line: 38, column: 32, scope: !23)
!82 = !DILocation(line: 38, column: 5, scope: !23)
!83 = !DILocation(line: 39, column: 24, scope: !23)
!84 = !DILocation(line: 39, column: 5, scope: !23)
!85 = !DILocation(line: 41, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 9)
!87 = !DILocation(line: 41, column: 17, scope: !86)
!88 = !DILocation(line: 41, column: 9, scope: !23)
!89 = !DILocation(line: 42, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 42, column: 13)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 41, column: 23)
!92 = !DILocation(line: 42, column: 20, scope: !90)
!93 = !DILocation(line: 42, column: 17, scope: !90)
!94 = !DILocation(line: 42, column: 13, scope: !91)
!95 = !DILocation(line: 43, column: 19, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !1, line: 42, column: 26)
!97 = !DILocation(line: 43, column: 17, scope: !96)
!98 = !DILocation(line: 44, column: 18, scope: !96)
!99 = !DILocation(line: 45, column: 20, scope: !96)
!100 = !DILocation(line: 45, column: 28, scope: !96)
!101 = !DILocation(line: 45, column: 37, scope: !96)
!102 = !DILocation(line: 45, column: 13, scope: !96)
!103 = !DILocation(line: 46, column: 21, scope: !96)
!104 = !DILocation(line: 47, column: 20, scope: !96)
!105 = !DILocation(line: 48, column: 9, scope: !96)
!106 = !DILocation(line: 49, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !90, file: !1, line: 48, column: 16)
!108 = !DILocation(line: 49, column: 28, scope: !107)
!109 = !DILocation(line: 49, column: 37, scope: !107)
!110 = !DILocation(line: 49, column: 13, scope: !107)
!111 = !DILocation(line: 50, column: 21, scope: !107)
!112 = !DILocation(line: 50, column: 18, scope: !107)
!113 = !DILocation(line: 51, column: 13, scope: !107)
!114 = !DILocation(line: 52, column: 13, scope: !107)
!115 = !DILocation(line: 54, column: 5, scope: !91)
!116 = !DILocation(line: 56, column: 10, scope: !23)
!117 = !DILocation(line: 56, column: 5, scope: !23)
!118 = !DILocation(line: 57, column: 10, scope: !23)
!119 = !DILocation(line: 57, column: 5, scope: !23)
!120 = !DILocation(line: 58, column: 5, scope: !23)
!121 = distinct !DISubprogram(name: "memcpy", scope: !122, file: !122, line: 12, type: !123, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !27)
!122 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !125, !126, !128}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!130 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!131 = !DILocalVariable(name: "destaddr", arg: 1, scope: !121, file: !122, line: 12, type: !125)
!132 = !DILocation(line: 12, column: 20, scope: !121)
!133 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !121, file: !122, line: 12, type: !126)
!134 = !DILocation(line: 12, column: 42, scope: !121)
!135 = !DILocalVariable(name: "len", arg: 3, scope: !121, file: !122, line: 12, type: !128)
!136 = !DILocation(line: 12, column: 58, scope: !121)
!137 = !DILocalVariable(name: "dest", scope: !121, file: !122, line: 13, type: !11)
!138 = !DILocation(line: 13, column: 9, scope: !121)
!139 = !DILocation(line: 13, column: 16, scope: !121)
!140 = !DILocalVariable(name: "src", scope: !121, file: !122, line: 14, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!143 = !DILocation(line: 14, column: 15, scope: !121)
!144 = !DILocation(line: 14, column: 21, scope: !121)
!145 = !DILocation(line: 16, column: 3, scope: !121)
!146 = !DILocation(line: 16, column: 13, scope: !121)
!147 = !DILocation(line: 16, column: 16, scope: !121)
!148 = !DILocation(line: 17, column: 19, scope: !121)
!149 = !DILocation(line: 17, column: 15, scope: !121)
!150 = !DILocation(line: 17, column: 10, scope: !121)
!151 = !DILocation(line: 17, column: 13, scope: !121)
!152 = distinct !{!152, !145, !148, !153}
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 18, column: 10, scope: !121)
!155 = !DILocation(line: 18, column: 3, scope: !121)
