; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dec_struct = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dec_total\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"offs\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"(dec.total - i <= 256 && i + 1 <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dec_struct, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.dec_struct* %4, metadata !26, metadata !DIExpression()), !dbg !31
  %5 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !32
  store i8* %5, i8** %2, align 8, !dbg !33
  %6 = load i8*, i8** %2, align 8, !dbg !34
  %7 = icmp ne i8* %6, null, !dbg !34
  br i1 %7, label %9, label %8, !dbg !36

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !37
  br label %85, !dbg !37

9:                                                ; preds = %0
  %10 = bitcast i32* %3 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %11 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !40
  %12 = bitcast i32* %11 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  %13 = load i8*, i8** %2, align 8, !dbg !43
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !44
  %14 = load i32, i32* %3, align 4, !dbg !45
  %15 = icmp sge i32 %14, 0, !dbg !46
  %16 = zext i1 %15 to i32, !dbg !46
  %17 = sext i32 %16 to i64, !dbg !45
  call void @klee_assume(i64 noundef %17), !dbg !47
  %18 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !48
  %19 = load i32, i32* %18, align 4, !dbg !48
  %20 = icmp sge i32 %19, 0, !dbg !49
  %21 = zext i1 %20 to i32, !dbg !49
  %22 = sext i32 %21 to i64, !dbg !50
  call void @klee_assume(i64 noundef %22), !dbg !51
  %23 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !52
  %24 = load i32, i32* %23, align 4, !dbg !52
  %25 = icmp sle i32 %24, 256, !dbg !53
  %26 = zext i1 %25 to i32, !dbg !53
  %27 = sext i32 %26 to i64, !dbg !54
  call void @klee_assume(i64 noundef %27), !dbg !55
  br label %28, !dbg !56

28:                                               ; preds = %36, %9
  %29 = load i8*, i8** %2, align 8, !dbg !57
  %30 = load i32, i32* %3, align 4, !dbg !58
  %31 = sext i32 %30 to i64, !dbg !59
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !59
  %33 = load i8, i8* %32, align 1, !dbg !60
  %34 = sext i8 %33 to i32, !dbg !60
  %35 = icmp ne i32 %34, 0, !dbg !61
  br i1 %35, label %36, label %43, !dbg !56

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4, !dbg !62
  %38 = add nsw i32 %37, 1, !dbg !62
  store i32 %38, i32* %3, align 4, !dbg !62
  %39 = load i32, i32* %3, align 4, !dbg !64
  %40 = icmp slt i32 %39, 256, !dbg !65
  %41 = zext i1 %40 to i32, !dbg !65
  %42 = sext i32 %41 to i64, !dbg !64
  call void @klee_assume(i64 noundef %42), !dbg !66
  br label %28, !dbg !56, !llvm.loop !67

43:                                               ; preds = %28
  %44 = load i32, i32* %3, align 4, !dbg !70
  %45 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !72
  %46 = load i32, i32* %45, align 4, !dbg !72
  %47 = icmp slt i32 %44, %46, !dbg !73
  br i1 %47, label %48, label %83, !dbg !74

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !75
  %50 = load i32, i32* %49, align 4, !dbg !75
  %51 = load i32, i32* %3, align 4, !dbg !75
  %52 = sub nsw i32 %50, %51, !dbg !75
  %53 = icmp sle i32 %52, 256, !dbg !75
  br i1 %53, label %54, label %60, !dbg !75

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4, !dbg !75
  %56 = add nsw i32 %55, 1, !dbg !75
  %57 = icmp sle i32 %56, 256, !dbg !75
  br i1 %57, label %58, label %60, !dbg !75

58:                                               ; preds = %54
  br i1 true, label %59, label %60, !dbg !75

59:                                               ; preds = %58
  br label %62, !dbg !75

60:                                               ; preds = %58, %54, %48
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !75
  br label %62, !dbg !75

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  %64 = load i8*, i8** %2, align 8, !dbg !78
  %65 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !79
  %66 = load i32, i32* %65, align 4, !dbg !79
  %67 = load i32, i32* %3, align 4, !dbg !80
  %68 = sub nsw i32 %66, %67, !dbg !81
  %69 = sext i32 %68 to i64, !dbg !82
  %70 = getelementptr inbounds i8, i8* %64, i64 %69, !dbg !82
  %71 = load i8*, i8** %2, align 8, !dbg !83
  %72 = load i32, i32* %3, align 4, !dbg !84
  %73 = add nsw i32 %72, 1, !dbg !85
  %74 = sext i32 %73 to i64, !dbg !84
  %75 = call i8* @memmove(i8* %70, i8* %71, i64 %74), !dbg !86
  %76 = load i8*, i8** %2, align 8, !dbg !87
  %77 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %4, i32 0, i32 0, !dbg !88
  %78 = load i32, i32* %77, align 4, !dbg !88
  %79 = load i32, i32* %3, align 4, !dbg !89
  %80 = sub nsw i32 %78, %79, !dbg !90
  %81 = sext i32 %80 to i64, !dbg !91
  %82 = call i8* @memset(i8* %76, i32 48, i64 %81), !dbg !92
  br label %83, !dbg !93

83:                                               ; preds = %62, %43
  %84 = load i8*, i8** %2, align 8, !dbg !94
  call void @free(i8* noundef %84) #8, !dbg !95
  store i32 0, i32* %1, align 4, !dbg !96
  br label %85, !dbg !96

85:                                               ; preds = %83, %8
  %86 = load i32, i32* %1, align 4, !dbg !97
  ret i32 %86, !dbg !97
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !98 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !108, metadata !DIExpression()), !dbg !109
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !110, metadata !DIExpression()), !dbg !111
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8** %8, metadata !114, metadata !DIExpression()), !dbg !115
  %10 = load i8*, i8** %5, align 8, !dbg !116
  store i8* %10, i8** %8, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata i8** %9, metadata !117, metadata !DIExpression()), !dbg !120
  %11 = load i8*, i8** %6, align 8, !dbg !121
  store i8* %11, i8** %9, align 8, !dbg !120
  %12 = load i8*, i8** %6, align 8, !dbg !122
  %13 = load i8*, i8** %5, align 8, !dbg !124
  %14 = icmp eq i8* %12, %13, !dbg !125
  br i1 %14, label %15, label %17, !dbg !126

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !127
  store i8* %16, i8** %4, align 8, !dbg !128
  br label %52, !dbg !128

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !129
  %19 = load i8*, i8** %5, align 8, !dbg !131
  %20 = icmp ugt i8* %18, %19, !dbg !132
  br i1 %20, label %21, label %31, !dbg !133

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !134
  %23 = add i64 %22, -1, !dbg !134
  store i64 %23, i64* %7, align 8, !dbg !134
  %24 = icmp ne i64 %22, 0, !dbg !136
  br i1 %24, label %25, label %50, !dbg !136

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !137
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !137
  store i8* %27, i8** %9, align 8, !dbg !137
  %28 = load i8, i8* %26, align 1, !dbg !138
  %29 = load i8*, i8** %8, align 8, !dbg !139
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !139
  store i8* %30, i8** %8, align 8, !dbg !139
  store i8 %28, i8* %29, align 1, !dbg !140
  br label %21, !dbg !136, !llvm.loop !141

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !142
  %33 = sub i64 %32, 1, !dbg !144
  %34 = load i8*, i8** %8, align 8, !dbg !145
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !145
  store i8* %35, i8** %8, align 8, !dbg !145
  %36 = load i64, i64* %7, align 8, !dbg !146
  %37 = sub i64 %36, 1, !dbg !147
  %38 = load i8*, i8** %9, align 8, !dbg !148
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !148
  store i8* %39, i8** %9, align 8, !dbg !148
  br label %40, !dbg !149

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !150
  %42 = add i64 %41, -1, !dbg !150
  store i64 %42, i64* %7, align 8, !dbg !150
  %43 = icmp ne i64 %41, 0, !dbg !149
  br i1 %43, label %44, label %50, !dbg !149

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !151
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !151
  store i8* %46, i8** %9, align 8, !dbg !151
  %47 = load i8, i8* %45, align 1, !dbg !152
  %48 = load i8*, i8** %8, align 8, !dbg !153
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !153
  store i8* %49, i8** %8, align 8, !dbg !153
  store i8 %47, i8* %48, align 1, !dbg !154
  br label %40, !dbg !149, !llvm.loop !155

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !156
  store i8* %51, i8** %4, align 8, !dbg !157
  br label %52, !dbg !157

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !158
  ret i8* %53, !dbg !158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !159 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %7, metadata !169, metadata !DIExpression()), !dbg !170
  %8 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %8, i8** %7, align 8, !dbg !170
  br label %9, !dbg !172

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !173
  %11 = add i64 %10, -1, !dbg !173
  store i64 %11, i64* %6, align 8, !dbg !173
  %12 = icmp ugt i64 %10, 0, !dbg !174
  br i1 %12, label %13, label %18, !dbg !172

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !175
  %15 = trunc i32 %14 to i8, !dbg !175
  %16 = load i8*, i8** %7, align 8, !dbg !176
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !176
  store i8* %17, i8** %7, align 8, !dbg !176
  store i8 %15, i8* %16, align 1, !dbg !177
  br label %9, !dbg !172, !llvm.loop !178

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %19, !dbg !180
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/283_xmlschemastypes.c_6060_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0ec11140c7a016c8456af8c9348eed6e")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !18, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "offs", scope: !17, file: !1, line: 14, type: !3)
!23 = !DILocation(line: 14, column: 11, scope: !17)
!24 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 15, type: !20)
!25 = !DILocation(line: 15, column: 9, scope: !17)
!26 = !DILocalVariable(name: "dec", scope: !17, file: !1, line: 16, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "dec_struct", file: !1, line: 11, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !28, file: !1, line: 10, baseType: !20, size: 32)
!31 = !DILocation(line: 16, column: 16, scope: !17)
!32 = !DILocation(line: 18, column: 20, scope: !17)
!33 = !DILocation(line: 18, column: 10, scope: !17)
!34 = !DILocation(line: 19, column: 10, scope: !35)
!35 = distinct !DILexicalBlock(scope: !17, file: !1, line: 19, column: 9)
!36 = !DILocation(line: 19, column: 9, scope: !17)
!37 = !DILocation(line: 19, column: 16, scope: !35)
!38 = !DILocation(line: 21, column: 24, scope: !17)
!39 = !DILocation(line: 21, column: 5, scope: !17)
!40 = !DILocation(line: 22, column: 29, scope: !17)
!41 = !DILocation(line: 22, column: 24, scope: !17)
!42 = !DILocation(line: 22, column: 5, scope: !17)
!43 = !DILocation(line: 23, column: 24, scope: !17)
!44 = !DILocation(line: 23, column: 5, scope: !17)
!45 = !DILocation(line: 25, column: 17, scope: !17)
!46 = !DILocation(line: 25, column: 19, scope: !17)
!47 = !DILocation(line: 25, column: 5, scope: !17)
!48 = !DILocation(line: 26, column: 21, scope: !17)
!49 = !DILocation(line: 26, column: 27, scope: !17)
!50 = !DILocation(line: 26, column: 17, scope: !17)
!51 = !DILocation(line: 26, column: 5, scope: !17)
!52 = !DILocation(line: 27, column: 21, scope: !17)
!53 = !DILocation(line: 27, column: 27, scope: !17)
!54 = !DILocation(line: 27, column: 17, scope: !17)
!55 = !DILocation(line: 27, column: 5, scope: !17)
!56 = !DILocation(line: 29, column: 5, scope: !17)
!57 = !DILocation(line: 29, column: 14, scope: !17)
!58 = !DILocation(line: 29, column: 21, scope: !17)
!59 = !DILocation(line: 29, column: 19, scope: !17)
!60 = !DILocation(line: 29, column: 12, scope: !17)
!61 = !DILocation(line: 29, column: 24, scope: !17)
!62 = !DILocation(line: 30, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !17, file: !1, line: 29, column: 30)
!64 = !DILocation(line: 31, column: 21, scope: !63)
!65 = !DILocation(line: 31, column: 23, scope: !63)
!66 = !DILocation(line: 31, column: 9, scope: !63)
!67 = distinct !{!67, !56, !68, !69}
!68 = !DILocation(line: 32, column: 5, scope: !17)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 34, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !17, file: !1, line: 34, column: 9)
!72 = !DILocation(line: 34, column: 17, scope: !71)
!73 = !DILocation(line: 34, column: 11, scope: !71)
!74 = !DILocation(line: 34, column: 9, scope: !17)
!75 = !DILocation(line: 35, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 34, column: 24)
!77 = !DILocation(line: 36, column: 9, scope: !76)
!78 = !DILocation(line: 37, column: 17, scope: !76)
!79 = !DILocation(line: 37, column: 29, scope: !76)
!80 = !DILocation(line: 37, column: 37, scope: !76)
!81 = !DILocation(line: 37, column: 35, scope: !76)
!82 = !DILocation(line: 37, column: 22, scope: !76)
!83 = !DILocation(line: 37, column: 41, scope: !76)
!84 = !DILocation(line: 37, column: 47, scope: !76)
!85 = !DILocation(line: 37, column: 49, scope: !76)
!86 = !DILocation(line: 37, column: 9, scope: !76)
!87 = !DILocation(line: 38, column: 16, scope: !76)
!88 = !DILocation(line: 38, column: 31, scope: !76)
!89 = !DILocation(line: 38, column: 39, scope: !76)
!90 = !DILocation(line: 38, column: 37, scope: !76)
!91 = !DILocation(line: 38, column: 27, scope: !76)
!92 = !DILocation(line: 38, column: 9, scope: !76)
!93 = !DILocation(line: 39, column: 5, scope: !76)
!94 = !DILocation(line: 41, column: 10, scope: !17)
!95 = !DILocation(line: 41, column: 5, scope: !17)
!96 = !DILocation(line: 42, column: 5, scope: !17)
!97 = !DILocation(line: 43, column: 1, scope: !17)
!98 = distinct !DISubprogram(name: "memmove", scope: !99, file: !99, line: 12, type: !100, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !21)
!99 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !102, !103, !105}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 46, baseType: !107)
!106 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!107 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!108 = !DILocalVariable(name: "dst", arg: 1, scope: !98, file: !99, line: 12, type: !102)
!109 = !DILocation(line: 12, column: 21, scope: !98)
!110 = !DILocalVariable(name: "src", arg: 2, scope: !98, file: !99, line: 12, type: !103)
!111 = !DILocation(line: 12, column: 38, scope: !98)
!112 = !DILocalVariable(name: "count", arg: 3, scope: !98, file: !99, line: 12, type: !105)
!113 = !DILocation(line: 12, column: 50, scope: !98)
!114 = !DILocalVariable(name: "a", scope: !98, file: !99, line: 13, type: !3)
!115 = !DILocation(line: 13, column: 9, scope: !98)
!116 = !DILocation(line: 13, column: 13, scope: !98)
!117 = !DILocalVariable(name: "b", scope: !98, file: !99, line: 14, type: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!120 = !DILocation(line: 14, column: 15, scope: !98)
!121 = !DILocation(line: 14, column: 19, scope: !98)
!122 = !DILocation(line: 16, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !98, file: !99, line: 16, column: 7)
!124 = !DILocation(line: 16, column: 14, scope: !123)
!125 = !DILocation(line: 16, column: 11, scope: !123)
!126 = !DILocation(line: 16, column: 7, scope: !98)
!127 = !DILocation(line: 17, column: 12, scope: !123)
!128 = !DILocation(line: 17, column: 5, scope: !123)
!129 = !DILocation(line: 19, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !98, file: !99, line: 19, column: 7)
!131 = !DILocation(line: 19, column: 13, scope: !130)
!132 = !DILocation(line: 19, column: 11, scope: !130)
!133 = !DILocation(line: 19, column: 7, scope: !98)
!134 = !DILocation(line: 20, column: 17, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !99, line: 19, column: 18)
!136 = !DILocation(line: 20, column: 5, scope: !135)
!137 = !DILocation(line: 21, column: 16, scope: !135)
!138 = !DILocation(line: 21, column: 14, scope: !135)
!139 = !DILocation(line: 21, column: 9, scope: !135)
!140 = !DILocation(line: 21, column: 12, scope: !135)
!141 = distinct !{!141, !136, !137, !69}
!142 = !DILocation(line: 23, column: 10, scope: !143)
!143 = distinct !DILexicalBlock(scope: !130, file: !99, line: 22, column: 10)
!144 = !DILocation(line: 23, column: 16, scope: !143)
!145 = !DILocation(line: 23, column: 7, scope: !143)
!146 = !DILocation(line: 24, column: 10, scope: !143)
!147 = !DILocation(line: 24, column: 16, scope: !143)
!148 = !DILocation(line: 24, column: 7, scope: !143)
!149 = !DILocation(line: 25, column: 5, scope: !143)
!150 = !DILocation(line: 25, column: 17, scope: !143)
!151 = !DILocation(line: 26, column: 16, scope: !143)
!152 = !DILocation(line: 26, column: 14, scope: !143)
!153 = !DILocation(line: 26, column: 9, scope: !143)
!154 = !DILocation(line: 26, column: 12, scope: !143)
!155 = distinct !{!155, !149, !151, !69}
!156 = !DILocation(line: 29, column: 10, scope: !98)
!157 = !DILocation(line: 29, column: 3, scope: !98)
!158 = !DILocation(line: 30, column: 1, scope: !98)
!159 = distinct !DISubprogram(name: "memset", scope: !160, file: !160, line: 12, type: !161, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!160 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!161 = !DISubroutineType(types: !162)
!162 = !{!102, !102, !20, !105}
!163 = !DILocalVariable(name: "dst", arg: 1, scope: !159, file: !160, line: 12, type: !102)
!164 = !DILocation(line: 12, column: 20, scope: !159)
!165 = !DILocalVariable(name: "s", arg: 2, scope: !159, file: !160, line: 12, type: !20)
!166 = !DILocation(line: 12, column: 29, scope: !159)
!167 = !DILocalVariable(name: "count", arg: 3, scope: !159, file: !160, line: 12, type: !105)
!168 = !DILocation(line: 12, column: 39, scope: !159)
!169 = !DILocalVariable(name: "a", scope: !159, file: !160, line: 13, type: !3)
!170 = !DILocation(line: 13, column: 9, scope: !159)
!171 = !DILocation(line: 13, column: 13, scope: !159)
!172 = !DILocation(line: 14, column: 3, scope: !159)
!173 = !DILocation(line: 14, column: 15, scope: !159)
!174 = !DILocation(line: 14, column: 18, scope: !159)
!175 = !DILocation(line: 15, column: 12, scope: !159)
!176 = !DILocation(line: 15, column: 7, scope: !159)
!177 = !DILocation(line: 15, column: 10, scope: !159)
!178 = distinct !{!178, !172, !175, !69}
!179 = !DILocation(line: 16, column: 10, scope: !159)
!180 = !DILocation(line: 16, column: 3, scope: !159)
