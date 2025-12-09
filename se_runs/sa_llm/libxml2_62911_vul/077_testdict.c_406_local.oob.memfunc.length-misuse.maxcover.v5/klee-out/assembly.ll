; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/077_testdict.c_406_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/077_testdict.c_406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@xmlMalloc = external global i8* (i64)*, align 8
@strings1 = internal global [100 x i8*] zeroinitializer, align 16, !dbg !0
@strings2 = internal global [100 x i8*] zeroinitializer, align 16, !dbg !10
@test1 = internal global [100 x i8*] zeroinitializer, align 16, !dbg !15
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/077_testdict.c_406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@test2 = internal global [100 x i8*] zeroinitializer, align 16, !dbg !17
@seeds1 = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16, !dbg !19
@seeds2 = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16, !dbg !24
@xmlFree = external global void (i8*)*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"seed1a\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"seed1b\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"seed2a\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"seed2b\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !38 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %2, metadata !43, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %3, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %3, align 4, !dbg !51
  %4 = bitcast i32* %3 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %5 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !54
  %6 = call i8* %5(i64 noundef 800), !dbg !54
  store i8* %6, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings1, i64 0, i64 0), align 16, !dbg !55
  %7 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings1, i64 0, i64 0), align 16, !dbg !56
  %8 = call i8* @memset(i8* %7, i32 0, i64 800), !dbg !57
  %9 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !58
  %10 = call i8* %9(i64 noundef 800), !dbg !58
  store i8* %10, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings2, i64 0, i64 0), align 16, !dbg !59
  %11 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings2, i64 0, i64 0), align 16, !dbg !60
  %12 = call i8* @memset(i8* %11, i32 0, i64 800), !dbg !61
  %13 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !62
  %14 = call i8* %13(i64 noundef 800), !dbg !62
  store i8* %14, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test1, i64 0, i64 0), align 16, !dbg !63
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !64
  %16 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test1, i64 0, i64 0), align 16, !dbg !65
  %17 = call i8* @memset(i8* %16, i32 0, i64 800), !dbg !66
  %18 = load i8* (i64)*, i8* (i64)** @xmlMalloc, align 8, !dbg !67
  %19 = call i8* %18(i64 noundef 800), !dbg !67
  store i8* %19, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test2, i64 0, i64 0), align 16, !dbg !68
  %20 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test2, i64 0, i64 0), align 16, !dbg !69
  %21 = call i8* @memset(i8* %20, i32 0, i64 800), !dbg !70
  call void @fill_string_pool(i8** noundef getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings1, i64 0, i64 0), i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @seeds1, i64 0, i64 0)), !dbg !71
  call void @fill_string_pool(i8** noundef getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings2, i64 0, i64 0), i8** noundef getelementptr inbounds ([3 x i8*], [3 x i8*]* @seeds2, i64 0, i64 0)), !dbg !72
  %22 = call %struct._xmlDict* @xmlDictCreate(), !dbg !73
  store %struct._xmlDict* %22, %struct._xmlDict** %2, align 8, !dbg !74
  %23 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !75
  %24 = icmp ne %struct._xmlDict* %23, null, !dbg !75
  br i1 %24, label %25, label %27, !dbg !77

25:                                               ; preds = %0
  %26 = load %struct._xmlDict*, %struct._xmlDict** %2, align 8, !dbg !78
  call void @xmlDictFree(%struct._xmlDict* noundef %26), !dbg !80
  br label %27, !dbg !81

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings1, i64 0, i64 0), align 16, !dbg !82
  %29 = icmp ne i8* %28, null, !dbg !82
  br i1 %29, label %30, label %33, !dbg !84

30:                                               ; preds = %27
  %31 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !85
  %32 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings1, i64 0, i64 0), align 16, !dbg !86
  call void %31(i8* noundef %32), !dbg !85
  br label %33, !dbg !85

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings2, i64 0, i64 0), align 16, !dbg !87
  %35 = icmp ne i8* %34, null, !dbg !87
  br i1 %35, label %36, label %39, !dbg !89

36:                                               ; preds = %33
  %37 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !90
  %38 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @strings2, i64 0, i64 0), align 16, !dbg !91
  call void %37(i8* noundef %38), !dbg !90
  br label %39, !dbg !90

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test1, i64 0, i64 0), align 16, !dbg !92
  %41 = icmp ne i8* %40, null, !dbg !92
  br i1 %41, label %42, label %45, !dbg !94

42:                                               ; preds = %39
  %43 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !95
  %44 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test1, i64 0, i64 0), align 16, !dbg !96
  call void %43(i8* noundef %44), !dbg !95
  br label %45, !dbg !95

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test2, i64 0, i64 0), align 16, !dbg !97
  %47 = icmp ne i8* %46, null, !dbg !97
  br i1 %47, label %48, label %51, !dbg !99

48:                                               ; preds = %45
  %49 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !100
  %50 = load i8*, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @test2, i64 0, i64 0), align 16, !dbg !101
  call void %49(i8* noundef %50), !dbg !100
  br label %51, !dbg !100

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %3, align 4, !dbg !102
  ret i32 %52, !dbg !103
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_string_pool(i8** noundef %0, i8** noundef %1) #0 !dbg !104 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !108, metadata !DIExpression()), !dbg !109
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %5, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %6, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 0, i32* %5, align 4, !dbg !116
  br label %7, !dbg !118

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %5, align 4, !dbg !119
  %9 = icmp slt i32 %8, 100, !dbg !121
  br i1 %9, label %10, label %42, !dbg !122

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4, !dbg !123
  br label %11, !dbg !126

11:                                               ; preds = %35, %10
  %12 = load i8**, i8*** %4, align 8, !dbg !127
  %13 = load i32, i32* %6, align 4, !dbg !129
  %14 = sext i32 %13 to i64, !dbg !127
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14, !dbg !127
  %16 = load i8*, i8** %15, align 8, !dbg !127
  %17 = icmp ne i8* %16, null, !dbg !130
  br i1 %17, label %18, label %38, !dbg !131

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4, !dbg !132
  %20 = load i32, i32* %6, align 4, !dbg !135
  %21 = add nsw i32 %20, 1, !dbg !136
  %int_cast_to_i64 = zext i32 %21 to i64, !dbg !137
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !137
  %22 = srem i32 %19, %21, !dbg !137, !klee.check.div !138
  %23 = icmp eq i32 %22, 0, !dbg !139
  br i1 %23, label %24, label %34, !dbg !140

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8, !dbg !141
  %26 = load i32, i32* %6, align 4, !dbg !143
  %27 = sext i32 %26 to i64, !dbg !141
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27, !dbg !141
  %29 = load i8*, i8** %28, align 8, !dbg !141
  %30 = load i8**, i8*** %3, align 8, !dbg !144
  %31 = load i32, i32* %5, align 4, !dbg !145
  %32 = sext i32 %31 to i64, !dbg !144
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32, !dbg !144
  store i8* %29, i8** %33, align 8, !dbg !146
  br label %38, !dbg !147

34:                                               ; preds = %18
  br label %35, !dbg !148

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4, !dbg !149
  %37 = add nsw i32 %36, 1, !dbg !149
  store i32 %37, i32* %6, align 4, !dbg !149
  br label %11, !dbg !150, !llvm.loop !151

38:                                               ; preds = %24, %11
  br label %39, !dbg !154

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4, !dbg !155
  %41 = add nsw i32 %40, 1, !dbg !155
  store i32 %41, i32* %5, align 4, !dbg !155
  br label %7, !dbg !156, !llvm.loop !157

42:                                               ; preds = %7
  ret void, !dbg !159
}

declare %struct._xmlDict* @xmlDictCreate() #2

declare void @xmlDictFree(%struct._xmlDict* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !160 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !175
  %8 = load i8*, i8** %4, align 8, !dbg !176
  store i8* %8, i8** %7, align 8, !dbg !175
  br label %9, !dbg !177

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !178
  %11 = add i64 %10, -1, !dbg !178
  store i64 %11, i64* %6, align 8, !dbg !178
  %12 = icmp ugt i64 %10, 0, !dbg !179
  br i1 %12, label %13, label %18, !dbg !177

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !180
  %15 = trunc i32 %14 to i8, !dbg !180
  %16 = load i8*, i8** %7, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %7, align 8, !dbg !181
  store i8 %15, i8* %16, align 1, !dbg !182
  br label %9, !dbg !177, !llvm.loop !183

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !184
  ret i8* %19, !dbg !185
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #5 !dbg !186 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !191, metadata !DIExpression()), !dbg !192
  %3 = load i64, i64* %2, align 8, !dbg !193
  %4 = icmp eq i64 %3, 0, !dbg !195
  br i1 %4, label %5, label %6, !dbg !196

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #6, !dbg !197
  unreachable, !dbg !197

6:                                                ; preds = %1
  ret void, !dbg !198
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!2, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37, !37, !37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "strings1", scope: !2, file: !3, line: 9, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/077_testdict.c_406_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "25a6c97d5cf2bf673577f6d0eb155675")
!4 = !{!5, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{!0, !10, !15, !17, !19, !24}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "strings2", scope: !2, file: !3, line: 10, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 6400, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 100)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "test1", scope: !2, file: !3, line: 11, type: !12, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "test2", scope: !2, file: !3, line: 12, type: !12, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "seeds1", scope: !2, file: !3, line: 14, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 3)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "seeds2", scope: !2, file: !3, line: 15, type: !21, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!28 = distinct !DICompileUnit(language: DW_LANG_C89, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{i32 7, !"PIC Level", i32 2}
!34 = !{i32 7, !"PIE Level", i32 2}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"Ubuntu clang version 14.0.6"}
!38 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 29, type: !39, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !42)
!39 = !DISubroutineType(types: !40)
!40 = !{!41}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !{}
!43 = !DILocalVariable(name: "dict", scope: !38, file: !3, line: 30, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !45, line: 25, baseType: !46)
!45 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !45, line: 24, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !45, line: 24, flags: DIFlagFwdDecl)
!49 = !DILocation(line: 30, column: 16, scope: !38)
!50 = !DILocalVariable(name: "ret", scope: !38, file: !3, line: 31, type: !41)
!51 = !DILocation(line: 31, column: 9, scope: !38)
!52 = !DILocation(line: 33, column: 24, scope: !38)
!53 = !DILocation(line: 33, column: 5, scope: !38)
!54 = !DILocation(line: 35, column: 33, scope: !38)
!55 = !DILocation(line: 35, column: 17, scope: !38)
!56 = !DILocation(line: 36, column: 20, scope: !38)
!57 = !DILocation(line: 36, column: 5, scope: !38)
!58 = !DILocation(line: 37, column: 33, scope: !38)
!59 = !DILocation(line: 37, column: 17, scope: !38)
!60 = !DILocation(line: 38, column: 20, scope: !38)
!61 = !DILocation(line: 38, column: 5, scope: !38)
!62 = !DILocation(line: 39, column: 30, scope: !38)
!63 = !DILocation(line: 39, column: 14, scope: !38)
!64 = !DILocation(line: 40, column: 5, scope: !38)
!65 = !DILocation(line: 41, column: 20, scope: !38)
!66 = !DILocation(line: 41, column: 5, scope: !38)
!67 = !DILocation(line: 42, column: 30, scope: !38)
!68 = !DILocation(line: 42, column: 14, scope: !38)
!69 = !DILocation(line: 43, column: 20, scope: !38)
!70 = !DILocation(line: 43, column: 5, scope: !38)
!71 = !DILocation(line: 45, column: 5, scope: !38)
!72 = !DILocation(line: 46, column: 5, scope: !38)
!73 = !DILocation(line: 48, column: 12, scope: !38)
!74 = !DILocation(line: 48, column: 10, scope: !38)
!75 = !DILocation(line: 49, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !38, file: !3, line: 49, column: 9)
!77 = !DILocation(line: 49, column: 9, scope: !38)
!78 = !DILocation(line: 50, column: 21, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !3, line: 49, column: 15)
!80 = !DILocation(line: 50, column: 9, scope: !79)
!81 = !DILocation(line: 51, column: 5, scope: !79)
!82 = !DILocation(line: 53, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !38, file: !3, line: 53, column: 9)
!84 = !DILocation(line: 53, column: 9, scope: !38)
!85 = !DILocation(line: 53, column: 22, scope: !83)
!86 = !DILocation(line: 53, column: 38, scope: !83)
!87 = !DILocation(line: 54, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !38, file: !3, line: 54, column: 9)
!89 = !DILocation(line: 54, column: 9, scope: !38)
!90 = !DILocation(line: 54, column: 22, scope: !88)
!91 = !DILocation(line: 54, column: 38, scope: !88)
!92 = !DILocation(line: 55, column: 9, scope: !93)
!93 = distinct !DILexicalBlock(scope: !38, file: !3, line: 55, column: 9)
!94 = !DILocation(line: 55, column: 9, scope: !38)
!95 = !DILocation(line: 55, column: 19, scope: !93)
!96 = !DILocation(line: 55, column: 35, scope: !93)
!97 = !DILocation(line: 56, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !38, file: !3, line: 56, column: 9)
!99 = !DILocation(line: 56, column: 9, scope: !38)
!100 = !DILocation(line: 56, column: 19, scope: !98)
!101 = !DILocation(line: 56, column: 35, scope: !98)
!102 = !DILocation(line: 58, column: 12, scope: !38)
!103 = !DILocation(line: 58, column: 5, scope: !38)
!104 = distinct !DISubprogram(name: "fill_string_pool", scope: !3, file: !3, line: 17, type: !105, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !42)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !107}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!108 = !DILocalVariable(name: "pool", arg: 1, scope: !104, file: !3, line: 17, type: !107)
!109 = !DILocation(line: 17, column: 43, scope: !104)
!110 = !DILocalVariable(name: "seeds", arg: 2, scope: !104, file: !3, line: 17, type: !107)
!111 = !DILocation(line: 17, column: 62, scope: !104)
!112 = !DILocalVariable(name: "i", scope: !104, file: !3, line: 18, type: !41)
!113 = !DILocation(line: 18, column: 9, scope: !104)
!114 = !DILocalVariable(name: "j", scope: !104, file: !3, line: 18, type: !41)
!115 = !DILocation(line: 18, column: 12, scope: !104)
!116 = !DILocation(line: 19, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !104, file: !3, line: 19, column: 5)
!118 = !DILocation(line: 19, column: 10, scope: !117)
!119 = !DILocation(line: 19, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 19, column: 5)
!121 = !DILocation(line: 19, column: 19, scope: !120)
!122 = !DILocation(line: 19, column: 5, scope: !117)
!123 = !DILocation(line: 20, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !3, line: 20, column: 9)
!125 = distinct !DILexicalBlock(scope: !120, file: !3, line: 19, column: 42)
!126 = !DILocation(line: 20, column: 14, scope: !124)
!127 = !DILocation(line: 20, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 20, column: 9)
!129 = !DILocation(line: 20, column: 27, scope: !128)
!130 = !DILocation(line: 20, column: 30, scope: !128)
!131 = !DILocation(line: 20, column: 9, scope: !124)
!132 = !DILocation(line: 21, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 21, column: 17)
!134 = distinct !DILexicalBlock(scope: !128, file: !3, line: 20, column: 44)
!135 = !DILocation(line: 21, column: 22, scope: !133)
!136 = !DILocation(line: 21, column: 24, scope: !133)
!137 = !DILocation(line: 21, column: 19, scope: !133)
!138 = !{!"True"}
!139 = !DILocation(line: 21, column: 29, scope: !133)
!140 = !DILocation(line: 21, column: 17, scope: !134)
!141 = !DILocation(line: 22, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !133, file: !3, line: 21, column: 35)
!143 = !DILocation(line: 22, column: 33, scope: !142)
!144 = !DILocation(line: 22, column: 17, scope: !142)
!145 = !DILocation(line: 22, column: 22, scope: !142)
!146 = !DILocation(line: 22, column: 25, scope: !142)
!147 = !DILocation(line: 23, column: 17, scope: !142)
!148 = !DILocation(line: 25, column: 9, scope: !134)
!149 = !DILocation(line: 20, column: 40, scope: !128)
!150 = !DILocation(line: 20, column: 9, scope: !128)
!151 = distinct !{!151, !131, !152, !153}
!152 = !DILocation(line: 25, column: 9, scope: !124)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 26, column: 5, scope: !125)
!155 = !DILocation(line: 19, column: 38, scope: !120)
!156 = !DILocation(line: 19, column: 5, scope: !120)
!157 = distinct !{!157, !122, !158, !153}
!158 = !DILocation(line: 26, column: 5, scope: !117)
!159 = !DILocation(line: 27, column: 1, scope: !104)
!160 = distinct !DISubprogram(name: "memset", scope: !161, file: !161, line: 12, type: !162, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !42)
!161 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!162 = !DISubroutineType(types: !163)
!163 = !{!8, !8, !41, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !160, file: !161, line: 12, type: !8)
!168 = !DILocation(line: 12, column: 20, scope: !160)
!169 = !DILocalVariable(name: "s", arg: 2, scope: !160, file: !161, line: 12, type: !41)
!170 = !DILocation(line: 12, column: 29, scope: !160)
!171 = !DILocalVariable(name: "count", arg: 3, scope: !160, file: !161, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 39, scope: !160)
!173 = !DILocalVariable(name: "a", scope: !160, file: !161, line: 13, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!175 = !DILocation(line: 13, column: 9, scope: !160)
!176 = !DILocation(line: 13, column: 13, scope: !160)
!177 = !DILocation(line: 14, column: 3, scope: !160)
!178 = !DILocation(line: 14, column: 15, scope: !160)
!179 = !DILocation(line: 14, column: 18, scope: !160)
!180 = !DILocation(line: 15, column: 12, scope: !160)
!181 = !DILocation(line: 15, column: 7, scope: !160)
!182 = !DILocation(line: 15, column: 10, scope: !160)
!183 = distinct !{!183, !177, !180, !153}
!184 = !DILocation(line: 16, column: 10, scope: !160)
!185 = !DILocation(line: 16, column: 3, scope: !160)
!186 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !187, file: !187, line: 12, type: !188, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !42)
!187 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190}
!190 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!191 = !DILocalVariable(name: "z", arg: 1, scope: !186, file: !187, line: 12, type: !190)
!192 = !DILocation(line: 12, column: 36, scope: !186)
!193 = !DILocation(line: 13, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !186, file: !187, line: 13, column: 7)
!195 = !DILocation(line: 13, column: 9, scope: !194)
!196 = !DILocation(line: 13, column: 7, scope: !186)
!197 = !DILocation(line: 14, column: 5, scope: !194)
!198 = !DILocation(line: 15, column: 1, scope: !186)
