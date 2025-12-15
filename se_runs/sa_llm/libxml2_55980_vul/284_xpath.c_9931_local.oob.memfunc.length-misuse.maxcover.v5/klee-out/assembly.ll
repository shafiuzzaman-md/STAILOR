; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/284_xpath.c_9931_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/284_xpath.c_9931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"qualified\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"(max >= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/284_xpath.c_9931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !17 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !24, metadata !DIExpression()), !dbg !25
  %3 = load i64, i64* %2, align 8, !dbg !26
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !27
  ret i8* %4, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_function(i8* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !29 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %12, metadata !43, metadata !DIExpression()), !dbg !44
  %13 = load i32, i32* %8, align 4, !dbg !45
  %14 = icmp sgt i32 %13, 1000000, !dbg !47
  br i1 %14, label %15, label %16, !dbg !48

15:                                               ; preds = %5
  store i8* null, i8** %6, align 8, !dbg !49
  br label %74, !dbg !49

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4, !dbg !51
  %18 = sext i32 %17 to i64, !dbg !51
  %19 = call i8* @xmlMallocAtomic(i64 noundef %18), !dbg !52
  store i8* %19, i8** %12, align 8, !dbg !53
  %20 = load i8*, i8** %12, align 8, !dbg !54
  %21 = icmp eq i8* %20, null, !dbg !56
  br i1 %21, label %22, label %23, !dbg !57

22:                                               ; preds = %16
  store i8* null, i8** %6, align 8, !dbg !58
  br label %74, !dbg !58

23:                                               ; preds = %16
  %24 = load i8*, i8** %12, align 8, !dbg !60
  %25 = load i8*, i8** %7, align 8, !dbg !61
  %26 = load i32, i32* %8, align 4, !dbg !62
  %27 = sext i32 %26 to i64, !dbg !62
  %28 = call i8* @memcpy(i8* %24, i8* %25, i64 %27), !dbg !63
  br label %29, !dbg !64

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4, !dbg !65
  %31 = icmp sge i32 %30, 97, !dbg !65
  br i1 %31, label %32, label %35, !dbg !65

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4, !dbg !65
  %34 = icmp sle i32 %33, 122, !dbg !65
  br i1 %34, label %63, label %35, !dbg !65

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %10, align 4, !dbg !65
  %37 = icmp sge i32 %36, 65, !dbg !65
  br i1 %37, label %38, label %41, !dbg !65

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4, !dbg !65
  %40 = icmp sle i32 %39, 90, !dbg !65
  br i1 %40, label %63, label %41, !dbg !66

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %10, align 4, !dbg !67
  %43 = icmp sge i32 %42, 48, !dbg !67
  br i1 %43, label %44, label %47, !dbg !67

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4, !dbg !67
  %46 = icmp sle i32 %45, 57, !dbg !67
  br i1 %46, label %63, label %47, !dbg !68

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %10, align 4, !dbg !69
  %49 = icmp eq i32 %48, 46, !dbg !70
  br i1 %49, label %63, label %50, !dbg !71

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4, !dbg !72
  %52 = icmp eq i32 %51, 45, !dbg !73
  br i1 %52, label %63, label %53, !dbg !74

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4, !dbg !75
  %55 = icmp eq i32 %54, 95, !dbg !76
  br i1 %55, label %63, label %56, !dbg !77

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4, !dbg !78
  %58 = icmp ne i32 %57, 0, !dbg !79
  br i1 %58, label %59, label %62, !dbg !80

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4, !dbg !81
  %61 = icmp eq i32 %60, 58, !dbg !82
  br i1 %61, label %63, label %62, !dbg !83

62:                                               ; preds = %59, %56
  br label %63, !dbg !83

63:                                               ; preds = %62, %59, %53, %50, %47, %44, %38, %32
  %64 = phi i1 [ true, %59 ], [ true, %53 ], [ true, %50 ], [ true, %47 ], [ true, %44 ], [ true, %38 ], [ true, %32 ], [ false, %62 ]
  br i1 %64, label %65, label %72, !dbg !64

65:                                               ; preds = %63
  %66 = load i32, i32* %8, align 4, !dbg !84
  %67 = add nsw i32 %66, 10, !dbg !87
  %68 = load i32, i32* %9, align 4, !dbg !88
  %69 = icmp sgt i32 %67, %68, !dbg !89
  br i1 %69, label %70, label %71, !dbg !90

70:                                               ; preds = %65
  br label %72, !dbg !91

71:                                               ; preds = %65
  br label %72, !dbg !93

72:                                               ; preds = %71, %70, %63
  %73 = load i8*, i8** %12, align 8, !dbg !94
  store i8* %73, i8** %6, align 8, !dbg !95
  br label %74, !dbg !95

74:                                               ; preds = %72, %22, %15
  %75 = load i8*, i8** %6, align 8, !dbg !96
  ret i8* %75, !dbg !96
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !97 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %4, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %5, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %6, metadata !108, metadata !DIExpression()), !dbg !109
  %8 = bitcast i32* %2 to i8*, !dbg !110
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !111
  %9 = bitcast i32* %3 to i8*, !dbg !112
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  %10 = bitcast i32* %4 to i8*, !dbg !114
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !115
  %11 = bitcast i32* %5 to i8*, !dbg !116
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !117
  %12 = load i32, i32* %3, align 4, !dbg !118
  %13 = sext i32 %12 to i64, !dbg !118
  %14 = call noalias i8* @malloc(i64 noundef %13) #7, !dbg !119
  store i8* %14, i8** %6, align 8, !dbg !120
  %15 = load i8*, i8** %6, align 8, !dbg !121
  %16 = icmp ne i8* %15, null, !dbg !122
  %17 = zext i1 %16 to i32, !dbg !122
  %18 = sext i32 %17 to i64, !dbg !121
  call void @klee_assume(i64 noundef %18), !dbg !123
  %19 = load i8*, i8** %6, align 8, !dbg !124
  %20 = load i32, i32* %3, align 4, !dbg !125
  %21 = sext i32 %20 to i64, !dbg !125
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !126
  %22 = load i32, i32* %2, align 4, !dbg !127
  %23 = icmp sgt i32 %22, 0, !dbg !128
  %24 = zext i1 %23 to i32, !dbg !128
  %25 = sext i32 %24 to i64, !dbg !127
  call void @klee_assume(i64 noundef %25), !dbg !129
  %26 = load i32, i32* %3, align 4, !dbg !130
  %27 = icmp sgt i32 %26, 0, !dbg !131
  %28 = zext i1 %27 to i32, !dbg !131
  %29 = sext i32 %28 to i64, !dbg !130
  call void @klee_assume(i64 noundef %29), !dbg !132
  %30 = load i32, i32* %2, align 4, !dbg !133
  %31 = icmp sle i32 %30, 1000000, !dbg !134
  %32 = zext i1 %31 to i32, !dbg !134
  %33 = sext i32 %32 to i64, !dbg !133
  call void @klee_assume(i64 noundef %33), !dbg !135
  %34 = load i32, i32* %3, align 4, !dbg !136
  %35 = load i32, i32* %2, align 4, !dbg !137
  %36 = icmp sge i32 %34, %35, !dbg !138
  %37 = zext i1 %36 to i32, !dbg !138
  %38 = sext i32 %37 to i64, !dbg !136
  call void @klee_assume(i64 noundef %38), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %7, metadata !140, metadata !DIExpression()), !dbg !141
  %39 = load i8*, i8** %6, align 8, !dbg !142
  %40 = load i32, i32* %2, align 4, !dbg !143
  %41 = load i32, i32* %3, align 4, !dbg !144
  %42 = load i32, i32* %4, align 4, !dbg !145
  %43 = load i32, i32* %5, align 4, !dbg !146
  %44 = call i8* @target_function(i8* noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef %42, i32 noundef %43), !dbg !147
  store i8* %44, i8** %7, align 8, !dbg !141
  %45 = load i32, i32* %3, align 4, !dbg !148
  %46 = load i32, i32* %2, align 4, !dbg !148
  %47 = icmp sge i32 %45, %46, !dbg !148
  br i1 %47, label %48, label %50, !dbg !148

48:                                               ; preds = %0
  br i1 true, label %49, label %50, !dbg !148

49:                                               ; preds = %48
  br label %52, !dbg !148

50:                                               ; preds = %48, %0
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i32 noundef 86, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !148
  br label %52, !dbg !148

52:                                               ; preds = %50, %49
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.7, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !149
  %54 = load i8*, i8** %6, align 8, !dbg !150
  call void @free(i8* noundef %54) #7, !dbg !151
  %55 = load i8*, i8** %7, align 8, !dbg !152
  %56 = icmp ne i8* %55, null, !dbg !154
  br i1 %56, label %57, label %59, !dbg !155

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8, !dbg !156
  call void @free(i8* noundef %58) #7, !dbg !158
  br label %59, !dbg !159

59:                                               ; preds = %57, %52
  ret i32 0, !dbg !160
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !176
  %9 = load i8*, i8** %4, align 8, !dbg !177
  store i8* %9, i8** %7, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i8** %8, metadata !178, metadata !DIExpression()), !dbg !181
  %10 = load i8*, i8** %5, align 8, !dbg !182
  store i8* %10, i8** %8, align 8, !dbg !181
  br label %11, !dbg !183

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !184
  %13 = add i64 %12, -1, !dbg !184
  store i64 %13, i64* %6, align 8, !dbg !184
  %14 = icmp ugt i64 %12, 0, !dbg !185
  br i1 %14, label %15, label %21, !dbg !183

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !186
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !186
  store i8* %17, i8** %8, align 8, !dbg !186
  %18 = load i8, i8* %16, align 1, !dbg !187
  %19 = load i8*, i8** %7, align 8, !dbg !188
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !188
  store i8* %20, i8** %7, align 8, !dbg !188
  store i8 %18, i8* %19, align 1, !dbg !189
  br label %11, !dbg !183, !llvm.loop !190

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !192
  ret i8* %22, !dbg !193
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/284_xpath.c_9931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "503197aa1bee11ed6ae69a7f0f36deff")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 14, type: !18, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!6, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{}
!24 = !DILocalVariable(name: "size", arg: 1, scope: !17, file: !1, line: 14, type: !20)
!25 = !DILocation(line: 14, column: 30, scope: !17)
!26 = !DILocation(line: 15, column: 19, scope: !17)
!27 = !DILocation(line: 15, column: 12, scope: !17)
!28 = !DILocation(line: 15, column: 5, scope: !17)
!29 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 28, type: !30, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!30 = !DISubroutineType(types: !31)
!31 = !{!3, !3, !32, !32, !32, !32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "buf", arg: 1, scope: !29, file: !1, line: 28, type: !3)
!34 = !DILocation(line: 28, column: 35, scope: !29)
!35 = !DILocalVariable(name: "len", arg: 2, scope: !29, file: !1, line: 28, type: !32)
!36 = !DILocation(line: 28, column: 44, scope: !29)
!37 = !DILocalVariable(name: "max", arg: 3, scope: !29, file: !1, line: 28, type: !32)
!38 = !DILocation(line: 28, column: 53, scope: !29)
!39 = !DILocalVariable(name: "c", arg: 4, scope: !29, file: !1, line: 28, type: !32)
!40 = !DILocation(line: 28, column: 62, scope: !29)
!41 = !DILocalVariable(name: "qualified", arg: 5, scope: !29, file: !1, line: 28, type: !32)
!42 = !DILocation(line: 28, column: 69, scope: !29)
!43 = !DILocalVariable(name: "buffer", scope: !29, file: !1, line: 29, type: !3)
!44 = !DILocation(line: 29, column: 14, scope: !29)
!45 = !DILocation(line: 31, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !1, line: 31, column: 9)
!47 = !DILocation(line: 31, column: 13, scope: !46)
!48 = !DILocation(line: 31, column: 9, scope: !29)
!49 = !DILocation(line: 32, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 36)
!51 = !DILocation(line: 35, column: 40, scope: !29)
!52 = !DILocation(line: 35, column: 24, scope: !29)
!53 = !DILocation(line: 35, column: 12, scope: !29)
!54 = !DILocation(line: 36, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 9)
!56 = !DILocation(line: 36, column: 16, scope: !55)
!57 = !DILocation(line: 36, column: 9, scope: !29)
!58 = !DILocation(line: 37, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 36, column: 25)
!60 = !DILocation(line: 41, column: 12, scope: !29)
!61 = !DILocation(line: 41, column: 20, scope: !29)
!62 = !DILocation(line: 41, column: 25, scope: !29)
!63 = !DILocation(line: 41, column: 5, scope: !29)
!64 = !DILocation(line: 44, column: 5, scope: !29)
!65 = !DILocation(line: 44, column: 13, scope: !29)
!66 = !DILocation(line: 44, column: 27, scope: !29)
!67 = !DILocation(line: 44, column: 31, scope: !29)
!68 = !DILocation(line: 44, column: 44, scope: !29)
!69 = !DILocation(line: 45, column: 13, scope: !29)
!70 = !DILocation(line: 45, column: 15, scope: !29)
!71 = !DILocation(line: 45, column: 23, scope: !29)
!72 = !DILocation(line: 45, column: 27, scope: !29)
!73 = !DILocation(line: 45, column: 29, scope: !29)
!74 = !DILocation(line: 45, column: 37, scope: !29)
!75 = !DILocation(line: 46, column: 13, scope: !29)
!76 = !DILocation(line: 46, column: 15, scope: !29)
!77 = !DILocation(line: 46, column: 23, scope: !29)
!78 = !DILocation(line: 46, column: 28, scope: !29)
!79 = !DILocation(line: 46, column: 27, scope: !29)
!80 = !DILocation(line: 46, column: 39, scope: !29)
!81 = !DILocation(line: 46, column: 43, scope: !29)
!82 = !DILocation(line: 46, column: 45, scope: !29)
!83 = !DILocation(line: 47, column: 30, scope: !29)
!84 = !DILocation(line: 49, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 49, column: 13)
!86 = distinct !DILexicalBlock(scope: !29, file: !1, line: 48, column: 30)
!87 = !DILocation(line: 49, column: 17, scope: !85)
!88 = !DILocation(line: 49, column: 24, scope: !85)
!89 = !DILocation(line: 49, column: 22, scope: !85)
!90 = !DILocation(line: 49, column: 13, scope: !86)
!91 = !DILocation(line: 50, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 49, column: 29)
!93 = !DILocation(line: 52, column: 9, scope: !86)
!94 = !DILocation(line: 55, column: 12, scope: !29)
!95 = !DILocation(line: 55, column: 5, scope: !29)
!96 = !DILocation(line: 56, column: 1, scope: !29)
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !98, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!98 = !DISubroutineType(types: !99)
!99 = !{!32}
!100 = !DILocalVariable(name: "len", scope: !97, file: !1, line: 60, type: !32)
!101 = !DILocation(line: 60, column: 9, scope: !97)
!102 = !DILocalVariable(name: "max", scope: !97, file: !1, line: 60, type: !32)
!103 = !DILocation(line: 60, column: 14, scope: !97)
!104 = !DILocalVariable(name: "c", scope: !97, file: !1, line: 60, type: !32)
!105 = !DILocation(line: 60, column: 19, scope: !97)
!106 = !DILocalVariable(name: "qualified", scope: !97, file: !1, line: 60, type: !32)
!107 = !DILocation(line: 60, column: 22, scope: !97)
!108 = !DILocalVariable(name: "buf", scope: !97, file: !1, line: 61, type: !3)
!109 = !DILocation(line: 61, column: 14, scope: !97)
!110 = !DILocation(line: 64, column: 24, scope: !97)
!111 = !DILocation(line: 64, column: 5, scope: !97)
!112 = !DILocation(line: 65, column: 24, scope: !97)
!113 = !DILocation(line: 65, column: 5, scope: !97)
!114 = !DILocation(line: 66, column: 24, scope: !97)
!115 = !DILocation(line: 66, column: 5, scope: !97)
!116 = !DILocation(line: 67, column: 24, scope: !97)
!117 = !DILocation(line: 67, column: 5, scope: !97)
!118 = !DILocation(line: 70, column: 28, scope: !97)
!119 = !DILocation(line: 70, column: 21, scope: !97)
!120 = !DILocation(line: 70, column: 9, scope: !97)
!121 = !DILocation(line: 71, column: 17, scope: !97)
!122 = !DILocation(line: 71, column: 21, scope: !97)
!123 = !DILocation(line: 71, column: 5, scope: !97)
!124 = !DILocation(line: 74, column: 24, scope: !97)
!125 = !DILocation(line: 74, column: 29, scope: !97)
!126 = !DILocation(line: 74, column: 5, scope: !97)
!127 = !DILocation(line: 77, column: 17, scope: !97)
!128 = !DILocation(line: 77, column: 21, scope: !97)
!129 = !DILocation(line: 77, column: 5, scope: !97)
!130 = !DILocation(line: 78, column: 17, scope: !97)
!131 = !DILocation(line: 78, column: 21, scope: !97)
!132 = !DILocation(line: 78, column: 5, scope: !97)
!133 = !DILocation(line: 79, column: 17, scope: !97)
!134 = !DILocation(line: 79, column: 21, scope: !97)
!135 = !DILocation(line: 79, column: 5, scope: !97)
!136 = !DILocation(line: 80, column: 17, scope: !97)
!137 = !DILocation(line: 80, column: 24, scope: !97)
!138 = !DILocation(line: 80, column: 21, scope: !97)
!139 = !DILocation(line: 80, column: 5, scope: !97)
!140 = !DILocalVariable(name: "result", scope: !97, file: !1, line: 83, type: !3)
!141 = !DILocation(line: 83, column: 14, scope: !97)
!142 = !DILocation(line: 83, column: 39, scope: !97)
!143 = !DILocation(line: 83, column: 44, scope: !97)
!144 = !DILocation(line: 83, column: 49, scope: !97)
!145 = !DILocation(line: 83, column: 54, scope: !97)
!146 = !DILocation(line: 83, column: 57, scope: !97)
!147 = !DILocation(line: 83, column: 23, scope: !97)
!148 = !DILocation(line: 86, column: 5, scope: !97)
!149 = !DILocation(line: 89, column: 5, scope: !97)
!150 = !DILocation(line: 92, column: 10, scope: !97)
!151 = !DILocation(line: 92, column: 5, scope: !97)
!152 = !DILocation(line: 93, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !97, file: !1, line: 93, column: 9)
!154 = !DILocation(line: 93, column: 16, scope: !153)
!155 = !DILocation(line: 93, column: 9, scope: !97)
!156 = !DILocation(line: 94, column: 14, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 93, column: 25)
!158 = !DILocation(line: 94, column: 9, scope: !157)
!159 = !DILocation(line: 95, column: 5, scope: !157)
!160 = !DILocation(line: 97, column: 5, scope: !97)
!161 = distinct !DISubprogram(name: "memcpy", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!162 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!163 = !DISubroutineType(types: !164)
!164 = !{!6, !6, !165, !20}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!167 = !DILocalVariable(name: "destaddr", arg: 1, scope: !161, file: !162, line: 12, type: !6)
!168 = !DILocation(line: 12, column: 20, scope: !161)
!169 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !161, file: !162, line: 12, type: !165)
!170 = !DILocation(line: 12, column: 42, scope: !161)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !161, file: !162, line: 12, type: !20)
!172 = !DILocation(line: 12, column: 58, scope: !161)
!173 = !DILocalVariable(name: "dest", scope: !161, file: !162, line: 13, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DILocation(line: 13, column: 9, scope: !161)
!177 = !DILocation(line: 13, column: 16, scope: !161)
!178 = !DILocalVariable(name: "src", scope: !161, file: !162, line: 14, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!181 = !DILocation(line: 14, column: 15, scope: !161)
!182 = !DILocation(line: 14, column: 21, scope: !161)
!183 = !DILocation(line: 16, column: 3, scope: !161)
!184 = !DILocation(line: 16, column: 13, scope: !161)
!185 = !DILocation(line: 16, column: 16, scope: !161)
!186 = !DILocation(line: 17, column: 19, scope: !161)
!187 = !DILocation(line: 17, column: 15, scope: !161)
!188 = !DILocation(line: 17, column: 10, scope: !161)
!189 = !DILocation(line: 17, column: 13, scope: !161)
!190 = distinct !{!190, !183, !186, !191}
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 18, column: 10, scope: !161)
!193 = !DILocation(line: 18, column: 3, scope: !161)
