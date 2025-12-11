; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/202_xmlregexp.c_5864_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/202_xmlregexp.c_5864_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegParserCtxt = type { %struct._xmlRegAtom* }
%struct._xmlRegAtom = type { i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"(lenp >= 0 && lenn >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/202_xmlregexp.c_5864_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [81 x i8] c"void target_function(xmlRegParserCtxt *, xmlChar *, int, xmlChar *, int, void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lenp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"lenn\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"token2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"data\00", align 1

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
define dso_local void @target_function(%struct._xmlRegParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, i8* noundef %5) #0 !dbg !29 {
  %7 = alloca %struct._xmlRegParserCtxt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._xmlRegParserCtxt* %0, %struct._xmlRegParserCtxt** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt** %7, metadata !44, metadata !DIExpression()), !dbg !45
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %13, metadata !56, metadata !DIExpression()), !dbg !57
  %14 = load i32, i32* %11, align 4, !dbg !58
  %15 = load i32, i32* %9, align 4, !dbg !59
  %16 = add nsw i32 %14, %15, !dbg !60
  %17 = add nsw i32 %16, 2, !dbg !61
  %18 = sext i32 %17 to i64, !dbg !58
  %19 = call i8* @xmlMallocAtomic(i64 noundef %18), !dbg !62
  store i8* %19, i8** %13, align 8, !dbg !63
  %20 = load i8*, i8** %13, align 8, !dbg !64
  %21 = icmp eq i8* %20, null, !dbg !66
  br i1 %21, label %22, label %23, !dbg !67

22:                                               ; preds = %6
  br label %71, !dbg !68

23:                                               ; preds = %6
  %24 = load i8*, i8** %13, align 8, !dbg !69
  %25 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !69
  %26 = load i8*, i8** %8, align 8, !dbg !70
  %27 = load i32, i32* %9, align 4, !dbg !71
  %28 = sext i32 %27 to i64, !dbg !71
  %29 = call i8* @memcpy(i8* %25, i8* %26, i64 %28), !dbg !72
  %30 = load i8*, i8** %13, align 8, !dbg !73
  %31 = load i32, i32* %9, align 4, !dbg !74
  %32 = sext i32 %31 to i64, !dbg !73
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !73
  store i8 124, i8* %33, align 1, !dbg !75
  %34 = load i8*, i8** %13, align 8, !dbg !76
  %35 = load i32, i32* %9, align 4, !dbg !77
  %36 = add nsw i32 %35, 1, !dbg !78
  %37 = sext i32 %36 to i64, !dbg !76
  %38 = getelementptr inbounds i8, i8* %34, i64 %37, !dbg !76
  %39 = load i8*, i8** %10, align 8, !dbg !79
  %40 = load i32, i32* %11, align 4, !dbg !80
  %41 = sext i32 %40 to i64, !dbg !80
  %42 = call i8* @memcpy(i8* %38, i8* %39, i64 %41), !dbg !81
  %43 = load i8*, i8** %13, align 8, !dbg !82
  %44 = load i32, i32* %11, align 4, !dbg !83
  %45 = load i32, i32* %9, align 4, !dbg !84
  %46 = add nsw i32 %44, %45, !dbg !85
  %47 = add nsw i32 %46, 1, !dbg !86
  %48 = sext i32 %47 to i64, !dbg !82
  %49 = getelementptr inbounds i8, i8* %43, i64 %48, !dbg !82
  store i8 0, i8* %49, align 1, !dbg !87
  %50 = load i8*, i8** %13, align 8, !dbg !88
  %51 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %7, align 8, !dbg !89
  %52 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %51, i32 0, i32 0, !dbg !90
  %53 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %52, align 8, !dbg !90
  %54 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %53, i32 0, i32 0, !dbg !91
  store i8* %50, i8** %54, align 8, !dbg !92
  %55 = load i8*, i8** %12, align 8, !dbg !93
  %56 = load %struct._xmlRegParserCtxt*, %struct._xmlRegParserCtxt** %7, align 8, !dbg !94
  %57 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %56, i32 0, i32 0, !dbg !95
  %58 = load %struct._xmlRegAtom*, %struct._xmlRegAtom** %57, align 8, !dbg !95
  %59 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %58, i32 0, i32 1, !dbg !96
  store i8* %55, i8** %59, align 8, !dbg !97
  %60 = load i32, i32* %9, align 4, !dbg !98
  %61 = icmp sge i32 %60, 0, !dbg !98
  br i1 %61, label %62, label %67, !dbg !98

62:                                               ; preds = %23
  %63 = load i32, i32* %11, align 4, !dbg !98
  %64 = icmp sge i32 %63, 0, !dbg !98
  br i1 %64, label %65, label %67, !dbg !98

65:                                               ; preds = %62
  br i1 true, label %66, label %67, !dbg !98

66:                                               ; preds = %65
  br label %69, !dbg !98

67:                                               ; preds = %65, %62, %23
  %68 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !98
  br label %69, !dbg !98

69:                                               ; preds = %67, %66
  %70 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !99
  br label %71, !dbg !100

71:                                               ; preds = %69, %22
  ret void, !dbg !100
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !101 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegParserCtxt, align 8
  %3 = alloca %struct._xmlRegAtom, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegParserCtxt* %2, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlRegAtom* %3, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !108, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %6, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.declare(metadata i32* %7, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i8** %8, metadata !119, metadata !DIExpression()), !dbg !120
  %9 = getelementptr inbounds %struct._xmlRegParserCtxt, %struct._xmlRegParserCtxt* %2, i32 0, i32 0, !dbg !121
  store %struct._xmlRegAtom* %3, %struct._xmlRegAtom** %9, align 8, !dbg !122
  %10 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 0, !dbg !123
  store i8* null, i8** %10, align 8, !dbg !124
  %11 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 1, !dbg !125
  store i8* null, i8** %11, align 8, !dbg !126
  %12 = bitcast i32* %6 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !128
  %13 = bitcast i32* %7 to i8*, !dbg !129
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !130
  %14 = load i32, i32* %6, align 4, !dbg !131
  %15 = icmp sge i32 %14, 0, !dbg !132
  %16 = zext i1 %15 to i32, !dbg !132
  %17 = sext i32 %16 to i64, !dbg !131
  call void @klee_assume(i64 noundef %17), !dbg !133
  %18 = load i32, i32* %7, align 4, !dbg !134
  %19 = icmp sge i32 %18, 0, !dbg !135
  %20 = zext i1 %19 to i32, !dbg !135
  %21 = sext i32 %20 to i64, !dbg !134
  call void @klee_assume(i64 noundef %21), !dbg !136
  %22 = load i32, i32* %6, align 4, !dbg !137
  %23 = icmp slt i32 %22, 256, !dbg !138
  %24 = zext i1 %23 to i32, !dbg !138
  %25 = sext i32 %24 to i64, !dbg !137
  call void @klee_assume(i64 noundef %25), !dbg !139
  %26 = load i32, i32* %7, align 4, !dbg !140
  %27 = icmp slt i32 %26, 256, !dbg !141
  %28 = zext i1 %27 to i32, !dbg !141
  %29 = sext i32 %28 to i64, !dbg !140
  call void @klee_assume(i64 noundef %29), !dbg !142
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !143
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !144
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !145
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !146
  %32 = bitcast i8** %8 to i8*, !dbg !147
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !148
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !149
  %34 = load i32, i32* %6, align 4, !dbg !150
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !151
  %36 = load i32, i32* %7, align 4, !dbg !152
  %37 = load i8*, i8** %8, align 8, !dbg !153
  call void @target_function(%struct._xmlRegParserCtxt* noundef %2, i8* noundef %33, i32 noundef %34, i8* noundef %35, i32 noundef %36, i8* noundef %37), !dbg !154
  %38 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 0, !dbg !155
  %39 = load i8*, i8** %38, align 8, !dbg !155
  %40 = icmp ne i8* %39, null, !dbg !157
  br i1 %40, label %41, label %44, !dbg !158

41:                                               ; preds = %0
  %42 = getelementptr inbounds %struct._xmlRegAtom, %struct._xmlRegAtom* %3, i32 0, i32 0, !dbg !159
  %43 = load i8*, i8** %42, align 8, !dbg !159
  call void @free(i8* noundef %43) #7, !dbg !161
  br label %44, !dbg !162

44:                                               ; preds = %41, %0
  ret i32 0, !dbg !163
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !164 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !170, metadata !DIExpression()), !dbg !171
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i8** %7, metadata !176, metadata !DIExpression()), !dbg !179
  %9 = load i8*, i8** %4, align 8, !dbg !180
  store i8* %9, i8** %7, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i8** %8, metadata !181, metadata !DIExpression()), !dbg !184
  %10 = load i8*, i8** %5, align 8, !dbg !185
  store i8* %10, i8** %8, align 8, !dbg !184
  br label %11, !dbg !186

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !187
  %13 = add i64 %12, -1, !dbg !187
  store i64 %13, i64* %6, align 8, !dbg !187
  %14 = icmp ugt i64 %12, 0, !dbg !188
  br i1 %14, label %15, label %21, !dbg !186

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !189
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !189
  store i8* %17, i8** %8, align 8, !dbg !189
  %18 = load i8, i8* %16, align 1, !dbg !190
  %19 = load i8*, i8** %7, align 8, !dbg !191
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !191
  store i8* %20, i8** %7, align 8, !dbg !191
  store i8 %18, i8* %19, align 1, !dbg !192
  br label %11, !dbg !186, !llvm.loop !193

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !195
  ret i8* %22, !dbg !196
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/202_xmlregexp.c_5864_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9d4e618ce76e8de116d49348c4324e98")
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
!17 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 13, type: !18, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!6, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{}
!24 = !DILocalVariable(name: "size", arg: 1, scope: !17, file: !1, line: 13, type: !20)
!25 = !DILocation(line: 13, column: 30, scope: !17)
!26 = !DILocation(line: 14, column: 19, scope: !17)
!27 = !DILocation(line: 14, column: 12, scope: !17)
!28 = !DILocation(line: 14, column: 5, scope: !17)
!29 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 32, type: !30, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !3, !43, !3, !43, !6}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegParserCtxt", file: !1, line: 25, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegParserCtxt", file: !1, line: 26, size: 64, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !34, file: !1, line: 27, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 18, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegAtom", file: !1, line: 19, size: 128, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !39, file: !1, line: 20, baseType: !3, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !39, file: !1, line: 21, baseType: !6, size: 64, offset: 64)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 32, type: !32)
!45 = !DILocation(line: 32, column: 40, scope: !29)
!46 = !DILocalVariable(name: "token", arg: 2, scope: !29, file: !1, line: 32, type: !3)
!47 = !DILocation(line: 32, column: 55, scope: !29)
!48 = !DILocalVariable(name: "lenp", arg: 3, scope: !29, file: !1, line: 32, type: !43)
!49 = !DILocation(line: 32, column: 66, scope: !29)
!50 = !DILocalVariable(name: "token2", arg: 4, scope: !29, file: !1, line: 32, type: !3)
!51 = !DILocation(line: 32, column: 81, scope: !29)
!52 = !DILocalVariable(name: "lenn", arg: 5, scope: !29, file: !1, line: 32, type: !43)
!53 = !DILocation(line: 32, column: 93, scope: !29)
!54 = !DILocalVariable(name: "data", arg: 6, scope: !29, file: !1, line: 32, type: !6)
!55 = !DILocation(line: 32, column: 105, scope: !29)
!56 = !DILocalVariable(name: "str", scope: !29, file: !1, line: 33, type: !3)
!57 = !DILocation(line: 33, column: 14, scope: !29)
!58 = !DILocation(line: 36, column: 38, scope: !29)
!59 = !DILocation(line: 36, column: 45, scope: !29)
!60 = !DILocation(line: 36, column: 43, scope: !29)
!61 = !DILocation(line: 36, column: 50, scope: !29)
!62 = !DILocation(line: 36, column: 22, scope: !29)
!63 = !DILocation(line: 36, column: 9, scope: !29)
!64 = !DILocation(line: 37, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !29, file: !1, line: 37, column: 9)
!66 = !DILocation(line: 37, column: 13, scope: !65)
!67 = !DILocation(line: 37, column: 9, scope: !29)
!68 = !DILocation(line: 38, column: 9, scope: !65)
!69 = !DILocation(line: 40, column: 13, scope: !29)
!70 = !DILocation(line: 40, column: 21, scope: !29)
!71 = !DILocation(line: 40, column: 28, scope: !29)
!72 = !DILocation(line: 40, column: 5, scope: !29)
!73 = !DILocation(line: 41, column: 5, scope: !29)
!74 = !DILocation(line: 41, column: 9, scope: !29)
!75 = !DILocation(line: 41, column: 15, scope: !29)
!76 = !DILocation(line: 42, column: 13, scope: !29)
!77 = !DILocation(line: 42, column: 17, scope: !29)
!78 = !DILocation(line: 42, column: 22, scope: !29)
!79 = !DILocation(line: 42, column: 28, scope: !29)
!80 = !DILocation(line: 42, column: 36, scope: !29)
!81 = !DILocation(line: 42, column: 5, scope: !29)
!82 = !DILocation(line: 43, column: 5, scope: !29)
!83 = !DILocation(line: 43, column: 9, scope: !29)
!84 = !DILocation(line: 43, column: 16, scope: !29)
!85 = !DILocation(line: 43, column: 14, scope: !29)
!86 = !DILocation(line: 43, column: 21, scope: !29)
!87 = !DILocation(line: 43, column: 26, scope: !29)
!88 = !DILocation(line: 45, column: 26, scope: !29)
!89 = !DILocation(line: 45, column: 5, scope: !29)
!90 = !DILocation(line: 45, column: 11, scope: !29)
!91 = !DILocation(line: 45, column: 17, scope: !29)
!92 = !DILocation(line: 45, column: 24, scope: !29)
!93 = !DILocation(line: 46, column: 24, scope: !29)
!94 = !DILocation(line: 46, column: 5, scope: !29)
!95 = !DILocation(line: 46, column: 11, scope: !29)
!96 = !DILocation(line: 46, column: 17, scope: !29)
!97 = !DILocation(line: 46, column: 22, scope: !29)
!98 = !DILocation(line: 49, column: 5, scope: !29)
!99 = !DILocation(line: 52, column: 5, scope: !29)
!100 = !DILocation(line: 53, column: 1, scope: !29)
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !102, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!102 = !DISubroutineType(types: !103)
!103 = !{!43}
!104 = !DILocalVariable(name: "ctxt", scope: !101, file: !1, line: 57, type: !33)
!105 = !DILocation(line: 57, column: 22, scope: !101)
!106 = !DILocalVariable(name: "atom", scope: !101, file: !1, line: 58, type: !38)
!107 = !DILocation(line: 58, column: 16, scope: !101)
!108 = !DILocalVariable(name: "token", scope: !101, file: !1, line: 59, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 256)
!112 = !DILocation(line: 59, column: 13, scope: !101)
!113 = !DILocalVariable(name: "token2", scope: !101, file: !1, line: 60, type: !109)
!114 = !DILocation(line: 60, column: 13, scope: !101)
!115 = !DILocalVariable(name: "lenp", scope: !101, file: !1, line: 61, type: !43)
!116 = !DILocation(line: 61, column: 9, scope: !101)
!117 = !DILocalVariable(name: "lenn", scope: !101, file: !1, line: 61, type: !43)
!118 = !DILocation(line: 61, column: 15, scope: !101)
!119 = !DILocalVariable(name: "data", scope: !101, file: !1, line: 62, type: !6)
!120 = !DILocation(line: 62, column: 11, scope: !101)
!121 = !DILocation(line: 65, column: 10, scope: !101)
!122 = !DILocation(line: 65, column: 15, scope: !101)
!123 = !DILocation(line: 66, column: 10, scope: !101)
!124 = !DILocation(line: 66, column: 17, scope: !101)
!125 = !DILocation(line: 67, column: 10, scope: !101)
!126 = !DILocation(line: 67, column: 15, scope: !101)
!127 = !DILocation(line: 70, column: 24, scope: !101)
!128 = !DILocation(line: 70, column: 5, scope: !101)
!129 = !DILocation(line: 71, column: 24, scope: !101)
!130 = !DILocation(line: 71, column: 5, scope: !101)
!131 = !DILocation(line: 74, column: 17, scope: !101)
!132 = !DILocation(line: 74, column: 22, scope: !101)
!133 = !DILocation(line: 74, column: 5, scope: !101)
!134 = !DILocation(line: 75, column: 17, scope: !101)
!135 = !DILocation(line: 75, column: 22, scope: !101)
!136 = !DILocation(line: 75, column: 5, scope: !101)
!137 = !DILocation(line: 78, column: 17, scope: !101)
!138 = !DILocation(line: 78, column: 22, scope: !101)
!139 = !DILocation(line: 78, column: 5, scope: !101)
!140 = !DILocation(line: 79, column: 17, scope: !101)
!141 = !DILocation(line: 79, column: 22, scope: !101)
!142 = !DILocation(line: 79, column: 5, scope: !101)
!143 = !DILocation(line: 82, column: 24, scope: !101)
!144 = !DILocation(line: 82, column: 5, scope: !101)
!145 = !DILocation(line: 83, column: 24, scope: !101)
!146 = !DILocation(line: 83, column: 5, scope: !101)
!147 = !DILocation(line: 86, column: 24, scope: !101)
!148 = !DILocation(line: 86, column: 5, scope: !101)
!149 = !DILocation(line: 89, column: 28, scope: !101)
!150 = !DILocation(line: 89, column: 35, scope: !101)
!151 = !DILocation(line: 89, column: 41, scope: !101)
!152 = !DILocation(line: 89, column: 49, scope: !101)
!153 = !DILocation(line: 89, column: 55, scope: !101)
!154 = !DILocation(line: 89, column: 5, scope: !101)
!155 = !DILocation(line: 92, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !101, file: !1, line: 92, column: 9)
!157 = !DILocation(line: 92, column: 21, scope: !156)
!158 = !DILocation(line: 92, column: 9, scope: !101)
!159 = !DILocation(line: 93, column: 19, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 92, column: 30)
!161 = !DILocation(line: 93, column: 9, scope: !160)
!162 = !DILocation(line: 94, column: 5, scope: !160)
!163 = !DILocation(line: 96, column: 5, scope: !101)
!164 = distinct !DISubprogram(name: "memcpy", scope: !165, file: !165, line: 12, type: !166, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!165 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!166 = !DISubroutineType(types: !167)
!167 = !{!6, !6, !168, !20}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!170 = !DILocalVariable(name: "destaddr", arg: 1, scope: !164, file: !165, line: 12, type: !6)
!171 = !DILocation(line: 12, column: 20, scope: !164)
!172 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !164, file: !165, line: 12, type: !168)
!173 = !DILocation(line: 12, column: 42, scope: !164)
!174 = !DILocalVariable(name: "len", arg: 3, scope: !164, file: !165, line: 12, type: !20)
!175 = !DILocation(line: 12, column: 58, scope: !164)
!176 = !DILocalVariable(name: "dest", scope: !164, file: !165, line: 13, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DILocation(line: 13, column: 9, scope: !164)
!180 = !DILocation(line: 13, column: 16, scope: !164)
!181 = !DILocalVariable(name: "src", scope: !164, file: !165, line: 14, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!184 = !DILocation(line: 14, column: 15, scope: !164)
!185 = !DILocation(line: 14, column: 21, scope: !164)
!186 = !DILocation(line: 16, column: 3, scope: !164)
!187 = !DILocation(line: 16, column: 13, scope: !164)
!188 = !DILocation(line: 16, column: 16, scope: !164)
!189 = !DILocation(line: 17, column: 19, scope: !164)
!190 = !DILocation(line: 17, column: 15, scope: !164)
!191 = !DILocation(line: 17, column: 10, scope: !164)
!192 = !DILocation(line: 17, column: 13, scope: !164)
!193 = distinct !{!193, !186, !189, !194}
!194 = !{!"llvm.loop.mustprogress"}
!195 = !DILocation(line: 18, column: 10, scope: !164)
!196 = !DILocation(line: 18, column: 3, scope: !164)
