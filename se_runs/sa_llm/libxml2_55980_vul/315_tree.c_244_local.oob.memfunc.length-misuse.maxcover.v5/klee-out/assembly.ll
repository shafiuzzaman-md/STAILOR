; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/315_tree.c_244_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/315_tree.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"ncname_buf\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"prefix_buf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"memory_buf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"(lenp + 1 + lenn <= len) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/315_tree.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"building QName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !20 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !29 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !32, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata [512 x i8]* %4, metadata !39, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %5, metadata !44, metadata !DIExpression()), !dbg !45
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !47
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !48
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0, !dbg !50
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 512, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !51
  %12 = bitcast i32* %5 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !53
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !54
  store i8 0, i8* %13, align 1, !dbg !55
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !56
  store i8 0, i8* %14, align 1, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !60
  %16 = call i64 @strlen(i8* noundef %15) #7, !dbg !61
  %17 = trunc i64 %16 to i32, !dbg !61
  store i32 %17, i32* %6, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %7, metadata !62, metadata !DIExpression()), !dbg !63
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !64
  %19 = call i64 @strlen(i8* noundef %18) #7, !dbg !65
  %20 = trunc i64 %19 to i32, !dbg !65
  store i32 %20, i32* %7, align 4, !dbg !63
  %21 = load i32, i32* %5, align 4, !dbg !66
  %22 = load i32, i32* %6, align 4, !dbg !67
  %23 = load i32, i32* %7, align 4, !dbg !68
  %24 = add nsw i32 %22, %23, !dbg !69
  %25 = add nsw i32 %24, 2, !dbg !70
  %26 = icmp sge i32 %21, %25, !dbg !71
  %27 = zext i1 %26 to i32, !dbg !71
  %28 = sext i32 %27 to i64, !dbg !66
  call void @klee_assume(i64 noundef %28), !dbg !72
  %29 = load i32, i32* %5, align 4, !dbg !73
  %30 = icmp slt i32 %29, 512, !dbg !74
  %31 = zext i1 %30 to i32, !dbg !74
  %32 = sext i32 %31 to i64, !dbg !73
  call void @klee_assume(i64 noundef %32), !dbg !75
  %33 = load i32, i32* %5, align 4, !dbg !76
  %34 = icmp sle i32 %33, 512, !dbg !77
  %35 = zext i1 %34 to i32, !dbg !77
  %36 = sext i32 %35 to i64, !dbg !76
  call void @klee_assume(i64 noundef %36), !dbg !78
  call void @llvm.dbg.declare(metadata i8** %8, metadata !79, metadata !DIExpression()), !dbg !80
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !81
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !82
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0, !dbg !83
  %40 = load i32, i32* %5, align 4, !dbg !84
  %41 = call i8* @xmlBuildQName(i8* noundef %37, i8* noundef %38, i8* noundef %39, i32 noundef %40), !dbg !85
  store i8* %41, i8** %8, align 8, !dbg !80
  %42 = load i8*, i8** %8, align 8, !dbg !86
  %43 = icmp ne i8* %42, null, !dbg !88
  br i1 %43, label %44, label %57, !dbg !89

44:                                               ; preds = %0
  %45 = load i32, i32* %7, align 4, !dbg !90
  %46 = add nsw i32 %45, 1, !dbg !90
  %47 = load i32, i32* %6, align 4, !dbg !90
  %48 = add nsw i32 %46, %47, !dbg !90
  %49 = load i32, i32* %5, align 4, !dbg !90
  %50 = icmp sle i32 %48, %49, !dbg !90
  br i1 %50, label %51, label %53, !dbg !90

51:                                               ; preds = %44
  br i1 true, label %52, label %53, !dbg !90

52:                                               ; preds = %51
  br label %55, !dbg !90

53:                                               ; preds = %51, %44
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !90
  br label %55, !dbg !90

55:                                               ; preds = %53, %52
  %56 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !92
  br label %57, !dbg !93

57:                                               ; preds = %55, %0
  ret i32 0, !dbg !94
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlBuildQName(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !95 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !104, metadata !DIExpression()), !dbg !105
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %10, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i32* %11, metadata !110, metadata !DIExpression()), !dbg !111
  %13 = load i8*, i8** %6, align 8, !dbg !112
  %14 = call i64 @strlen(i8* noundef %13) #7, !dbg !113
  %15 = trunc i64 %14 to i32, !dbg !113
  store i32 %15, i32* %11, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %12, metadata !114, metadata !DIExpression()), !dbg !115
  %16 = load i8*, i8** %7, align 8, !dbg !116
  %17 = call i64 @strlen(i8* noundef %16) #7, !dbg !117
  %18 = trunc i64 %17 to i32, !dbg !117
  store i32 %18, i32* %12, align 4, !dbg !115
  %19 = load i32, i32* %11, align 4, !dbg !118
  %20 = load i32, i32* %12, align 4, !dbg !120
  %21 = add nsw i32 %19, %20, !dbg !121
  %22 = add nsw i32 %21, 2, !dbg !122
  %23 = load i32, i32* %9, align 4, !dbg !123
  %24 = icmp sgt i32 %22, %23, !dbg !124
  br i1 %24, label %25, label %26, !dbg !125

25:                                               ; preds = %4
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)), !dbg !126
  store i8* null, i8** %5, align 8, !dbg !128
  br label %55, !dbg !128

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8, !dbg !129
  store i8* %27, i8** %10, align 8, !dbg !130
  %28 = load i8*, i8** %10, align 8, !dbg !131
  %29 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !131
  %30 = load i8*, i8** %7, align 8, !dbg !132
  %31 = load i32, i32* %12, align 4, !dbg !133
  %32 = sext i32 %31 to i64, !dbg !133
  %33 = call i8* @memcpy(i8* %29, i8* %30, i64 %32), !dbg !134
  %34 = load i8*, i8** %10, align 8, !dbg !135
  %35 = load i32, i32* %12, align 4, !dbg !136
  %36 = sext i32 %35 to i64, !dbg !135
  %37 = getelementptr inbounds i8, i8* %34, i64 %36, !dbg !135
  store i8 58, i8* %37, align 1, !dbg !137
  %38 = load i8*, i8** %10, align 8, !dbg !138
  %39 = load i32, i32* %12, align 4, !dbg !139
  %40 = add nsw i32 %39, 1, !dbg !140
  %41 = sext i32 %40 to i64, !dbg !138
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !138
  %43 = load i8*, i8** %6, align 8, !dbg !141
  %44 = load i32, i32* %11, align 4, !dbg !142
  %45 = sext i32 %44 to i64, !dbg !142
  %46 = call i8* @memcpy(i8* %42, i8* %43, i64 %45), !dbg !143
  %47 = load i8*, i8** %10, align 8, !dbg !144
  %48 = load i32, i32* %11, align 4, !dbg !145
  %49 = load i32, i32* %12, align 4, !dbg !146
  %50 = add nsw i32 %48, %49, !dbg !147
  %51 = add nsw i32 %50, 1, !dbg !148
  %52 = sext i32 %51 to i64, !dbg !144
  %53 = getelementptr inbounds i8, i8* %47, i64 %52, !dbg !144
  store i8 0, i8* %53, align 1, !dbg !149
  %54 = load i8*, i8** %10, align 8, !dbg !150
  store i8* %54, i8** %5, align 8, !dbg !151
  br label %55, !dbg !151

55:                                               ; preds = %26, %25
  %56 = load i8*, i8** %5, align 8, !dbg !152
  ret i8* %56, !dbg !152
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !162, metadata !DIExpression()), !dbg !163
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !164, metadata !DIExpression()), !dbg !165
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %7, metadata !168, metadata !DIExpression()), !dbg !169
  %9 = load i8*, i8** %4, align 8, !dbg !170
  store i8* %9, i8** %7, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i8** %8, metadata !171, metadata !DIExpression()), !dbg !172
  %10 = load i8*, i8** %5, align 8, !dbg !173
  store i8* %10, i8** %8, align 8, !dbg !172
  br label %11, !dbg !174

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !175
  %13 = add i64 %12, -1, !dbg !175
  store i64 %13, i64* %6, align 8, !dbg !175
  %14 = icmp ugt i64 %12, 0, !dbg !176
  br i1 %14, label %15, label %21, !dbg !174

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !177
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !177
  store i8* %17, i8** %8, align 8, !dbg !177
  %18 = load i8, i8* %16, align 1, !dbg !178
  %19 = load i8*, i8** %7, align 8, !dbg !179
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !179
  store i8* %20, i8** %7, align 8, !dbg !179
  store i8 %18, i8* %19, align 1, !dbg !180
  br label %11, !dbg !174, !llvm.loop !181

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !183
  ret i8* %22, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/315_tree.c_244_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0843be6fa6b5a44b364ddd7d9eae7dec")
!2 = !{!3, !5, !6, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 15, type: !21, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!25 = !{}
!26 = !DILocalVariable(name: "msg", arg: 1, scope: !20, file: !1, line: 15, type: !23)
!27 = !DILocation(line: 15, column: 35, scope: !20)
!28 = !DILocation(line: 17, column: 1, scope: !20)
!29 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !30, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!30 = !DISubroutineType(types: !31)
!31 = !{!5}
!32 = !DILocalVariable(name: "ncname_buf", scope: !29, file: !1, line: 22, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 256)
!36 = !DILocation(line: 22, column: 13, scope: !29)
!37 = !DILocalVariable(name: "prefix_buf", scope: !29, file: !1, line: 23, type: !33)
!38 = !DILocation(line: 23, column: 13, scope: !29)
!39 = !DILocalVariable(name: "memory_buf", scope: !29, file: !1, line: 24, type: !40)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4096, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 512)
!43 = !DILocation(line: 24, column: 13, scope: !29)
!44 = !DILocalVariable(name: "len", scope: !29, file: !1, line: 25, type: !5)
!45 = !DILocation(line: 25, column: 9, scope: !29)
!46 = !DILocation(line: 28, column: 24, scope: !29)
!47 = !DILocation(line: 28, column: 5, scope: !29)
!48 = !DILocation(line: 29, column: 24, scope: !29)
!49 = !DILocation(line: 29, column: 5, scope: !29)
!50 = !DILocation(line: 30, column: 24, scope: !29)
!51 = !DILocation(line: 30, column: 5, scope: !29)
!52 = !DILocation(line: 31, column: 24, scope: !29)
!53 = !DILocation(line: 31, column: 5, scope: !29)
!54 = !DILocation(line: 34, column: 5, scope: !29)
!55 = !DILocation(line: 34, column: 21, scope: !29)
!56 = !DILocation(line: 35, column: 5, scope: !29)
!57 = !DILocation(line: 35, column: 21, scope: !29)
!58 = !DILocalVariable(name: "lenn", scope: !29, file: !1, line: 38, type: !5)
!59 = !DILocation(line: 38, column: 9, scope: !29)
!60 = !DILocation(line: 38, column: 30, scope: !29)
!61 = !DILocation(line: 38, column: 16, scope: !29)
!62 = !DILocalVariable(name: "lenp", scope: !29, file: !1, line: 39, type: !5)
!63 = !DILocation(line: 39, column: 9, scope: !29)
!64 = !DILocation(line: 39, column: 30, scope: !29)
!65 = !DILocation(line: 39, column: 16, scope: !29)
!66 = !DILocation(line: 42, column: 17, scope: !29)
!67 = !DILocation(line: 42, column: 24, scope: !29)
!68 = !DILocation(line: 42, column: 31, scope: !29)
!69 = !DILocation(line: 42, column: 29, scope: !29)
!70 = !DILocation(line: 42, column: 36, scope: !29)
!71 = !DILocation(line: 42, column: 21, scope: !29)
!72 = !DILocation(line: 42, column: 5, scope: !29)
!73 = !DILocation(line: 43, column: 17, scope: !29)
!74 = !DILocation(line: 43, column: 21, scope: !29)
!75 = !DILocation(line: 43, column: 5, scope: !29)
!76 = !DILocation(line: 46, column: 17, scope: !29)
!77 = !DILocation(line: 46, column: 21, scope: !29)
!78 = !DILocation(line: 46, column: 5, scope: !29)
!79 = !DILocalVariable(name: "result", scope: !29, file: !1, line: 49, type: !7)
!80 = !DILocation(line: 49, column: 14, scope: !29)
!81 = !DILocation(line: 49, column: 37, scope: !29)
!82 = !DILocation(line: 49, column: 49, scope: !29)
!83 = !DILocation(line: 49, column: 61, scope: !29)
!84 = !DILocation(line: 49, column: 73, scope: !29)
!85 = !DILocation(line: 49, column: 23, scope: !29)
!86 = !DILocation(line: 52, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !29, file: !1, line: 52, column: 9)
!88 = !DILocation(line: 52, column: 16, scope: !87)
!89 = !DILocation(line: 52, column: 9, scope: !29)
!90 = !DILocation(line: 56, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 52, column: 25)
!92 = !DILocation(line: 59, column: 9, scope: !91)
!93 = !DILocation(line: 60, column: 5, scope: !91)
!94 = !DILocation(line: 62, column: 5, scope: !29)
!95 = distinct !DISubprogram(name: "xmlBuildQName", scope: !1, file: !1, line: 66, type: !96, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!96 = !DISubroutineType(types: !97)
!97 = !{!7, !98, !98, !98, !5}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!100 = !DILocalVariable(name: "ncname", arg: 1, scope: !95, file: !1, line: 66, type: !98)
!101 = !DILocation(line: 66, column: 39, scope: !95)
!102 = !DILocalVariable(name: "prefix", arg: 2, scope: !95, file: !1, line: 66, type: !98)
!103 = !DILocation(line: 66, column: 62, scope: !95)
!104 = !DILocalVariable(name: "memory", arg: 3, scope: !95, file: !1, line: 66, type: !98)
!105 = !DILocation(line: 66, column: 85, scope: !95)
!106 = !DILocalVariable(name: "len", arg: 4, scope: !95, file: !1, line: 66, type: !5)
!107 = !DILocation(line: 66, column: 97, scope: !95)
!108 = !DILocalVariable(name: "ret", scope: !95, file: !1, line: 67, type: !7)
!109 = !DILocation(line: 67, column: 14, scope: !95)
!110 = !DILocalVariable(name: "lenn", scope: !95, file: !1, line: 68, type: !5)
!111 = !DILocation(line: 68, column: 9, scope: !95)
!112 = !DILocation(line: 68, column: 30, scope: !95)
!113 = !DILocation(line: 68, column: 16, scope: !95)
!114 = !DILocalVariable(name: "lenp", scope: !95, file: !1, line: 69, type: !5)
!115 = !DILocation(line: 69, column: 9, scope: !95)
!116 = !DILocation(line: 69, column: 30, scope: !95)
!117 = !DILocation(line: 69, column: 16, scope: !95)
!118 = !DILocation(line: 72, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !95, file: !1, line: 72, column: 9)
!120 = !DILocation(line: 72, column: 16, scope: !119)
!121 = !DILocation(line: 72, column: 14, scope: !119)
!122 = !DILocation(line: 72, column: 21, scope: !119)
!123 = !DILocation(line: 72, column: 27, scope: !119)
!124 = !DILocation(line: 72, column: 25, scope: !119)
!125 = !DILocation(line: 72, column: 9, scope: !95)
!126 = !DILocation(line: 73, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !1, line: 72, column: 32)
!128 = !DILocation(line: 74, column: 9, scope: !127)
!129 = !DILocation(line: 78, column: 21, scope: !95)
!130 = !DILocation(line: 78, column: 9, scope: !95)
!131 = !DILocation(line: 81, column: 13, scope: !95)
!132 = !DILocation(line: 81, column: 21, scope: !95)
!133 = !DILocation(line: 81, column: 29, scope: !95)
!134 = !DILocation(line: 81, column: 5, scope: !95)
!135 = !DILocation(line: 82, column: 5, scope: !95)
!136 = !DILocation(line: 82, column: 9, scope: !95)
!137 = !DILocation(line: 82, column: 15, scope: !95)
!138 = !DILocation(line: 85, column: 13, scope: !95)
!139 = !DILocation(line: 85, column: 17, scope: !95)
!140 = !DILocation(line: 85, column: 22, scope: !95)
!141 = !DILocation(line: 85, column: 28, scope: !95)
!142 = !DILocation(line: 85, column: 36, scope: !95)
!143 = !DILocation(line: 85, column: 5, scope: !95)
!144 = !DILocation(line: 88, column: 5, scope: !95)
!145 = !DILocation(line: 88, column: 9, scope: !95)
!146 = !DILocation(line: 88, column: 16, scope: !95)
!147 = !DILocation(line: 88, column: 14, scope: !95)
!148 = !DILocation(line: 88, column: 21, scope: !95)
!149 = !DILocation(line: 88, column: 26, scope: !95)
!150 = !DILocation(line: 90, column: 12, scope: !95)
!151 = !DILocation(line: 90, column: 5, scope: !95)
!152 = !DILocation(line: 91, column: 1, scope: !95)
!153 = distinct !DISubprogram(name: "memcpy", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !25)
!154 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!155 = !DISubroutineType(types: !156)
!156 = !{!6, !6, !157, !159}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 46, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DILocalVariable(name: "destaddr", arg: 1, scope: !153, file: !154, line: 12, type: !6)
!163 = !DILocation(line: 12, column: 20, scope: !153)
!164 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !153, file: !154, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 42, scope: !153)
!166 = !DILocalVariable(name: "len", arg: 3, scope: !153, file: !154, line: 12, type: !159)
!167 = !DILocation(line: 12, column: 58, scope: !153)
!168 = !DILocalVariable(name: "dest", scope: !153, file: !154, line: 13, type: !3)
!169 = !DILocation(line: 13, column: 9, scope: !153)
!170 = !DILocation(line: 13, column: 16, scope: !153)
!171 = !DILocalVariable(name: "src", scope: !153, file: !154, line: 14, type: !23)
!172 = !DILocation(line: 14, column: 15, scope: !153)
!173 = !DILocation(line: 14, column: 21, scope: !153)
!174 = !DILocation(line: 16, column: 3, scope: !153)
!175 = !DILocation(line: 16, column: 13, scope: !153)
!176 = !DILocation(line: 16, column: 16, scope: !153)
!177 = !DILocation(line: 17, column: 19, scope: !153)
!178 = !DILocation(line: 17, column: 15, scope: !153)
!179 = !DILocation(line: 17, column: 10, scope: !153)
!180 = !DILocation(line: 17, column: 13, scope: !153)
!181 = distinct !{!181, !174, !177, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !DILocation(line: 18, column: 10, scope: !153)
!184 = !DILocation(line: 18, column: 3, scope: !153)
