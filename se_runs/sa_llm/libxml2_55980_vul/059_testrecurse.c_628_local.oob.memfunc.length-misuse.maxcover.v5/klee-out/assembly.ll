; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/059_testrecurse.c_628_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/059_testrecurse.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@baseFilename.result = internal global [256 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"(suffix_len < 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/059_testrecurse.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @baseFilename(i8* noundef %0) #0 !dbg !2 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !28, metadata !DIExpression()), !dbg !29
  %6 = load i8*, i8** %3, align 8, !dbg !30
  %7 = icmp ne i8* %6, null, !dbg !30
  br i1 %7, label %9, label %8, !dbg !32

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !33
  br label %31, !dbg !33

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !34, metadata !DIExpression()), !dbg !36
  %10 = load i8*, i8** %3, align 8, !dbg !37
  %11 = call i64 @strlen(i8* noundef %10) #8, !dbg !38
  %12 = trunc i64 %11 to i32, !dbg !38
  store i32 %12, i32* %4, align 4, !dbg !36
  %13 = load i32, i32* %4, align 4, !dbg !39
  %14 = icmp sge i32 %13, 256, !dbg !41
  br i1 %14, label %15, label %16, !dbg !42

15:                                               ; preds = %9
  store i32 255, i32* %4, align 4, !dbg !43
  br label %16, !dbg !44

16:                                               ; preds = %15, %9
  %17 = load i8*, i8** %3, align 8, !dbg !45
  %18 = load i32, i32* %4, align 4, !dbg !46
  %19 = sext i32 %18 to i64, !dbg !46
  %20 = call i8* @memcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i8* %17, i64 %19), !dbg !47
  %21 = load i32, i32* %4, align 4, !dbg !48
  %22 = sext i32 %21 to i64, !dbg !49
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 %22, !dbg !49
  store i8 0, i8* %23, align 1, !dbg !50
  call void @llvm.dbg.declare(metadata i8** %5, metadata !51, metadata !DIExpression()), !dbg !52
  %24 = call i8* @strrchr(i8* noundef getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i32 noundef 47) #8, !dbg !53
  store i8* %24, i8** %5, align 8, !dbg !52
  %25 = load i8*, i8** %5, align 8, !dbg !54
  %26 = icmp ne i8* %25, null, !dbg !54
  br i1 %26, label %27, label %30, !dbg !56

27:                                               ; preds = %16
  %28 = load i8*, i8** %5, align 8, !dbg !57
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !59
  store i8* %29, i8** %2, align 8, !dbg !60
  br label %31, !dbg !60

30:                                               ; preds = %16
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @baseFilename.result, i64 0, i64 0), i8** %2, align 8, !dbg !61
  br label %31, !dbg !61

31:                                               ; preds = %30, %27, %8
  %32 = load i8*, i8** %2, align 8, !dbg !62
  ret i8* %32, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !63 {
  %1 = alloca i32, align 4
  %2 = alloca [500 x i8], align 16
  %3 = alloca [500 x i8], align 16
  %4 = alloca [256 x i8], align 16
  %5 = alloca [500 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [500 x i8]* %2, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [500 x i8]* %3, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [500 x i8]* %5, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !77, metadata !DIExpression()), !dbg !78
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !79
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !80
  %12 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0, !dbg !81
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 500, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !82
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !83
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !84
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 255, !dbg !85
  store i8 0, i8* %14, align 1, !dbg !86
  %15 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 499, !dbg !87
  store i8 0, i8* %15, align 1, !dbg !88
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255, !dbg !89
  store i8 0, i8* %16, align 1, !dbg !90
  call void @llvm.dbg.declare(metadata i8** %7, metadata !91, metadata !DIExpression()), !dbg !92
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !93
  %18 = call i8* @baseFilename(i8* noundef %17), !dbg !94
  store i8* %18, i8** %7, align 8, !dbg !92
  %19 = load i8*, i8** %7, align 8, !dbg !95
  %20 = icmp ne i8* %19, null, !dbg !95
  br i1 %20, label %22, label %21, !dbg !97

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !98
  br label %47, !dbg !98

22:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %8, metadata !100, metadata !DIExpression()), !dbg !101
  %23 = getelementptr inbounds [500 x i8], [500 x i8]* %5, i64 0, i64 0, !dbg !102
  store i8* %23, i8** %8, align 8, !dbg !101
  %24 = load i8*, i8** %8, align 8, !dbg !103
  %25 = icmp eq i8* %24, null, !dbg !105
  br i1 %25, label %26, label %27, !dbg !106

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8, !dbg !107
  br label %27, !dbg !109

27:                                               ; preds = %26, %22
  call void @llvm.dbg.declare(metadata i8** %9, metadata !110, metadata !DIExpression()), !dbg !111
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !112
  store i8* %28, i8** %9, align 8, !dbg !111
  %29 = load i8*, i8** %9, align 8, !dbg !113
  %30 = icmp eq i8* %29, null, !dbg !115
  br i1 %30, label %31, label %32, !dbg !116

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8, !dbg !117
  br label %32, !dbg !119

32:                                               ; preds = %31, %27
  call void @llvm.dbg.declare(metadata i32* %10, metadata !120, metadata !DIExpression()), !dbg !121
  %33 = load i8*, i8** %8, align 8, !dbg !122
  %34 = call i64 @strlen(i8* noundef %33) #8, !dbg !123
  %35 = trunc i64 %34 to i32, !dbg !123
  store i32 %35, i32* %10, align 4, !dbg !121
  %36 = load i32, i32* %10, align 4, !dbg !124
  %37 = icmp slt i32 %36, 500, !dbg !124
  br i1 %37, label %38, label %40, !dbg !124

38:                                               ; preds = %32
  br i1 true, label %39, label %40, !dbg !124

39:                                               ; preds = %38
  br label %42, !dbg !124

40:                                               ; preds = %38, %32
  %41 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !124
  br label %42, !dbg !124

42:                                               ; preds = %40, %39
  %43 = getelementptr inbounds [500 x i8], [500 x i8]* %2, i64 0, i64 0, !dbg !125
  %44 = load i8*, i8** %8, align 8, !dbg !126
  %45 = call i8* @strncpy(i8* noundef %43, i8* noundef %44, i64 noundef 499) #9, !dbg !127
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 63, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !128
  store i32 0, i32* %1, align 4, !dbg !129
  br label %47, !dbg !129

47:                                               ; preds = %42, %21
  %48 = load i32, i32* %1, align 4, !dbg !130
  ret i32 %48, !dbg !130
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !131 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !140, metadata !DIExpression()), !dbg !141
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !142, metadata !DIExpression()), !dbg !143
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !146, metadata !DIExpression()), !dbg !147
  %9 = load i8*, i8** %4, align 8, !dbg !148
  store i8* %9, i8** %7, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i8** %8, metadata !149, metadata !DIExpression()), !dbg !150
  %10 = load i8*, i8** %5, align 8, !dbg !151
  store i8* %10, i8** %8, align 8, !dbg !150
  br label %11, !dbg !152

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !153
  %13 = add i64 %12, -1, !dbg !153
  store i64 %13, i64* %6, align 8, !dbg !153
  %14 = icmp ugt i64 %12, 0, !dbg !154
  br i1 %14, label %15, label %21, !dbg !152

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !155
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !155
  store i8* %17, i8** %8, align 8, !dbg !155
  %18 = load i8, i8* %16, align 1, !dbg !156
  %19 = load i8*, i8** %7, align 8, !dbg !157
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !157
  store i8* %20, i8** %7, align 8, !dbg !157
  store i8 %18, i8* %19, align 1, !dbg !158
  br label %11, !dbg !152, !llvm.loop !159

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !161
  ret i8* %22, !dbg !162
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!10, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "result", scope: !2, file: !3, line: 12, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "baseFilename", scope: !3, file: !3, line: 9, type: !4, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/059_testrecurse.c_628_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7f1d81c97cc709a2bff64ffa84360533")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 256)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = !DILocalVariable(name: "filename", arg: 1, scope: !2, file: !3, line: 9, type: !8)
!29 = !DILocation(line: 9, column: 32, scope: !2)
!30 = !DILocation(line: 10, column: 10, scope: !31)
!31 = distinct !DILexicalBlock(scope: !2, file: !3, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 9, scope: !2)
!33 = !DILocation(line: 10, column: 20, scope: !31)
!34 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 13, type: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocation(line: 13, column: 9, scope: !2)
!37 = !DILocation(line: 13, column: 22, scope: !2)
!38 = !DILocation(line: 13, column: 15, scope: !2)
!39 = !DILocation(line: 14, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !2, file: !3, line: 14, column: 9)
!41 = !DILocation(line: 14, column: 13, scope: !40)
!42 = !DILocation(line: 14, column: 9, scope: !2)
!43 = !DILocation(line: 14, column: 25, scope: !40)
!44 = !DILocation(line: 14, column: 21, scope: !40)
!45 = !DILocation(line: 16, column: 20, scope: !2)
!46 = !DILocation(line: 16, column: 30, scope: !2)
!47 = !DILocation(line: 16, column: 5, scope: !2)
!48 = !DILocation(line: 17, column: 12, scope: !2)
!49 = !DILocation(line: 17, column: 5, scope: !2)
!50 = !DILocation(line: 17, column: 17, scope: !2)
!51 = !DILocalVariable(name: "slash", scope: !2, file: !3, line: 19, type: !6)
!52 = !DILocation(line: 19, column: 11, scope: !2)
!53 = !DILocation(line: 19, column: 19, scope: !2)
!54 = !DILocation(line: 20, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !2, file: !3, line: 20, column: 9)
!56 = !DILocation(line: 20, column: 9, scope: !2)
!57 = !DILocation(line: 21, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !3, line: 20, column: 16)
!59 = !DILocation(line: 21, column: 22, scope: !58)
!60 = !DILocation(line: 21, column: 9, scope: !58)
!61 = !DILocation(line: 23, column: 5, scope: !2)
!62 = !DILocation(line: 24, column: 1, scope: !2)
!63 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !64, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !14)
!64 = !DISubroutineType(types: !65)
!65 = !{!35}
!66 = !DILocalVariable(name: "suffixbuff", scope: !63, file: !3, line: 27, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4000, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 500)
!70 = !DILocation(line: 27, column: 10, scope: !63)
!71 = !DILocalVariable(name: "res", scope: !63, file: !3, line: 28, type: !67)
!72 = !DILocation(line: 28, column: 10, scope: !63)
!73 = !DILocalVariable(name: "filename", scope: !63, file: !3, line: 30, type: !15)
!74 = !DILocation(line: 30, column: 10, scope: !63)
!75 = !DILocalVariable(name: "suffix", scope: !63, file: !3, line: 31, type: !67)
!76 = !DILocation(line: 31, column: 10, scope: !63)
!77 = !DILocalVariable(name: "out", scope: !63, file: !3, line: 32, type: !15)
!78 = !DILocation(line: 32, column: 10, scope: !63)
!79 = !DILocation(line: 34, column: 24, scope: !63)
!80 = !DILocation(line: 34, column: 5, scope: !63)
!81 = !DILocation(line: 35, column: 24, scope: !63)
!82 = !DILocation(line: 35, column: 5, scope: !63)
!83 = !DILocation(line: 36, column: 24, scope: !63)
!84 = !DILocation(line: 36, column: 5, scope: !63)
!85 = !DILocation(line: 38, column: 5, scope: !63)
!86 = !DILocation(line: 38, column: 19, scope: !63)
!87 = !DILocation(line: 39, column: 5, scope: !63)
!88 = !DILocation(line: 39, column: 17, scope: !63)
!89 = !DILocation(line: 40, column: 5, scope: !63)
!90 = !DILocation(line: 40, column: 14, scope: !63)
!91 = !DILocalVariable(name: "base", scope: !63, file: !3, line: 42, type: !6)
!92 = !DILocation(line: 42, column: 11, scope: !63)
!93 = !DILocation(line: 42, column: 31, scope: !63)
!94 = !DILocation(line: 42, column: 18, scope: !63)
!95 = !DILocation(line: 43, column: 10, scope: !96)
!96 = distinct !DILexicalBlock(scope: !63, file: !3, line: 43, column: 9)
!97 = !DILocation(line: 43, column: 9, scope: !63)
!98 = !DILocation(line: 44, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !3, line: 43, column: 16)
!100 = !DILocalVariable(name: "suffix_ptr", scope: !63, file: !3, line: 47, type: !8)
!101 = !DILocation(line: 47, column: 17, scope: !63)
!102 = !DILocation(line: 47, column: 30, scope: !63)
!103 = !DILocation(line: 48, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !63, file: !3, line: 48, column: 9)
!105 = !DILocation(line: 48, column: 20, scope: !104)
!106 = !DILocation(line: 48, column: 9, scope: !63)
!107 = !DILocation(line: 49, column: 20, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !3, line: 48, column: 29)
!109 = !DILocation(line: 50, column: 5, scope: !108)
!110 = !DILocalVariable(name: "out_ptr", scope: !63, file: !3, line: 52, type: !8)
!111 = !DILocation(line: 52, column: 17, scope: !63)
!112 = !DILocation(line: 52, column: 27, scope: !63)
!113 = !DILocation(line: 53, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !63, file: !3, line: 53, column: 9)
!115 = !DILocation(line: 53, column: 17, scope: !114)
!116 = !DILocation(line: 53, column: 9, scope: !63)
!117 = !DILocation(line: 54, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 53, column: 26)
!119 = !DILocation(line: 55, column: 5, scope: !118)
!120 = !DILocalVariable(name: "suffix_len", scope: !63, file: !3, line: 57, type: !35)
!121 = !DILocation(line: 57, column: 9, scope: !63)
!122 = !DILocation(line: 57, column: 29, scope: !63)
!123 = !DILocation(line: 57, column: 22, scope: !63)
!124 = !DILocation(line: 59, column: 5, scope: !63)
!125 = !DILocation(line: 61, column: 13, scope: !63)
!126 = !DILocation(line: 61, column: 25, scope: !63)
!127 = !DILocation(line: 61, column: 5, scope: !63)
!128 = !DILocation(line: 63, column: 5, scope: !63)
!129 = !DILocation(line: 65, column: 5, scope: !63)
!130 = !DILocation(line: 66, column: 1, scope: !63)
!131 = distinct !DISubprogram(name: "memcpy", scope: !132, file: !132, line: 12, type: !133, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !14)
!132 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12, !135, !137}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DILocalVariable(name: "destaddr", arg: 1, scope: !131, file: !132, line: 12, type: !12)
!141 = !DILocation(line: 12, column: 20, scope: !131)
!142 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !131, file: !132, line: 12, type: !135)
!143 = !DILocation(line: 12, column: 42, scope: !131)
!144 = !DILocalVariable(name: "len", arg: 3, scope: !131, file: !132, line: 12, type: !137)
!145 = !DILocation(line: 12, column: 58, scope: !131)
!146 = !DILocalVariable(name: "dest", scope: !131, file: !132, line: 13, type: !6)
!147 = !DILocation(line: 13, column: 9, scope: !131)
!148 = !DILocation(line: 13, column: 16, scope: !131)
!149 = !DILocalVariable(name: "src", scope: !131, file: !132, line: 14, type: !8)
!150 = !DILocation(line: 14, column: 15, scope: !131)
!151 = !DILocation(line: 14, column: 21, scope: !131)
!152 = !DILocation(line: 16, column: 3, scope: !131)
!153 = !DILocation(line: 16, column: 13, scope: !131)
!154 = !DILocation(line: 16, column: 16, scope: !131)
!155 = !DILocation(line: 17, column: 19, scope: !131)
!156 = !DILocation(line: 17, column: 15, scope: !131)
!157 = !DILocation(line: 17, column: 10, scope: !131)
!158 = !DILocation(line: 17, column: 13, scope: !131)
!159 = distinct !{!159, !152, !155, !160}
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 18, column: 10, scope: !131)
!162 = !DILocation(line: 18, column: 3, scope: !131)
