; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/282_xmlschemastypes.c_6050_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/282_xmlschemastypes.c_6050_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.decimal_info = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"offs\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"(src_end <= buffer_size && dst_end <= buffer_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/282_xmlschemastypes.c_6050_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.decimal_info, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.decimal_info* %2, metadata !20, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %4, metadata !29, metadata !DIExpression()), !dbg !30
  %11 = bitcast %struct.decimal_info* %2 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %12 = bitcast i32* %4 to i8*, !dbg !33
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !34
  %13 = load i32, i32* %4, align 4, !dbg !35
  %14 = icmp sgt i32 %13, 0, !dbg !36
  %15 = zext i1 %14 to i32, !dbg !36
  %16 = sext i32 %15 to i64, !dbg !35
  call void @klee_assume(i64 noundef %16), !dbg !37
  %17 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 1, !dbg !38
  %18 = load i32, i32* %17, align 4, !dbg !38
  %19 = icmp sge i32 %18, 0, !dbg !39
  %20 = zext i1 %19 to i32, !dbg !39
  %21 = sext i32 %20 to i64, !dbg !40
  call void @klee_assume(i64 noundef %21), !dbg !41
  %22 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 0, !dbg !42
  %23 = load i32, i32* %22, align 4, !dbg !42
  %24 = icmp sge i32 %23, 0, !dbg !43
  %25 = zext i1 %24 to i32, !dbg !43
  %26 = sext i32 %25 to i64, !dbg !44
  call void @klee_assume(i64 noundef %26), !dbg !45
  %27 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 0, !dbg !46
  %28 = load i32, i32* %27, align 4, !dbg !46
  %29 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 1, !dbg !47
  %30 = load i32, i32* %29, align 4, !dbg !47
  %31 = icmp sle i32 %28, %30, !dbg !48
  %32 = zext i1 %31 to i32, !dbg !48
  %33 = sext i32 %32 to i64, !dbg !49
  call void @klee_assume(i64 noundef %33), !dbg !50
  %34 = load i32, i32* %4, align 4, !dbg !51
  %35 = sext i32 %34 to i64, !dbg !51
  %36 = call noalias i8* @malloc(i64 noundef %35) #7, !dbg !52
  store i8* %36, i8** %3, align 8, !dbg !53
  %37 = load i8*, i8** %3, align 8, !dbg !54
  %38 = icmp ne i8* %37, null, !dbg !54
  br i1 %38, label %40, label %39, !dbg !56

39:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !57
  br label %97, !dbg !57

40:                                               ; preds = %0
  %41 = load i8*, i8** %3, align 8, !dbg !58
  %42 = load i32, i32* %4, align 4, !dbg !59
  %43 = sext i32 %42 to i64, !dbg !59
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef %43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !60
  %44 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 0, !dbg !61
  %45 = load i32, i32* %44, align 4, !dbg !61
  %46 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 1, !dbg !63
  %47 = load i32, i32* %46, align 4, !dbg !63
  %48 = icmp ne i32 %45, %47, !dbg !64
  br i1 %48, label %49, label %95, !dbg !65

49:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata i32* %5, metadata !66, metadata !DIExpression()), !dbg !68
  %50 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 1, !dbg !69
  %51 = load i32, i32* %50, align 4, !dbg !69
  %52 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 0, !dbg !70
  %53 = load i32, i32* %52, align 4, !dbg !70
  %54 = sub nsw i32 %51, %53, !dbg !71
  store i32 %54, i32* %5, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %6, metadata !72, metadata !DIExpression()), !dbg !73
  %55 = load i32, i32* %5, align 4, !dbg !74
  store i32 %55, i32* %6, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %7, metadata !75, metadata !DIExpression()), !dbg !76
  %56 = load i32, i32* %5, align 4, !dbg !77
  %57 = add nsw i32 %56, 1, !dbg !78
  store i32 %57, i32* %7, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %8, metadata !79, metadata !DIExpression()), !dbg !80
  %58 = getelementptr inbounds %struct.decimal_info, %struct.decimal_info* %2, i32 0, i32 0, !dbg !81
  %59 = load i32, i32* %58, align 4, !dbg !81
  %60 = add nsw i32 %59, 1, !dbg !82
  store i32 %60, i32* %8, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %9, metadata !83, metadata !DIExpression()), !dbg !84
  %61 = load i32, i32* %6, align 4, !dbg !85
  %62 = load i32, i32* %8, align 4, !dbg !86
  %63 = add nsw i32 %61, %62, !dbg !87
  store i32 %63, i32* %9, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %10, metadata !88, metadata !DIExpression()), !dbg !89
  %64 = load i32, i32* %7, align 4, !dbg !90
  %65 = load i32, i32* %8, align 4, !dbg !91
  %66 = add nsw i32 %64, %65, !dbg !92
  store i32 %66, i32* %10, align 4, !dbg !89
  %67 = load i32, i32* %9, align 4, !dbg !93
  %68 = load i32, i32* %4, align 4, !dbg !93
  %69 = icmp sle i32 %67, %68, !dbg !93
  br i1 %69, label %70, label %76, !dbg !93

70:                                               ; preds = %49
  %71 = load i32, i32* %10, align 4, !dbg !93
  %72 = load i32, i32* %4, align 4, !dbg !93
  %73 = icmp sle i32 %71, %72, !dbg !93
  br i1 %73, label %74, label %76, !dbg !93

74:                                               ; preds = %70
  br i1 true, label %75, label %76, !dbg !93

75:                                               ; preds = %74
  br label %78, !dbg !93

76:                                               ; preds = %74, %70, %49
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 42, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !93
  br label %78, !dbg !93

78:                                               ; preds = %76, %75
  %79 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !94
  %80 = load i8*, i8** %3, align 8, !dbg !95
  %81 = load i32, i32* %7, align 4, !dbg !96
  %82 = sext i32 %81 to i64, !dbg !97
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !97
  %84 = load i8*, i8** %3, align 8, !dbg !98
  %85 = load i32, i32* %6, align 4, !dbg !99
  %86 = sext i32 %85 to i64, !dbg !100
  %87 = getelementptr inbounds i8, i8* %84, i64 %86, !dbg !100
  %88 = load i32, i32* %8, align 4, !dbg !101
  %89 = sext i32 %88 to i64, !dbg !101
  %90 = call i8* @memmove(i8* %83, i8* %87, i64 %89), !dbg !102
  %91 = load i8*, i8** %3, align 8, !dbg !103
  %92 = load i32, i32* %5, align 4, !dbg !104
  %93 = sext i32 %92 to i64, !dbg !103
  %94 = getelementptr inbounds i8, i8* %91, i64 %93, !dbg !103
  store i8 46, i8* %94, align 1, !dbg !105
  br label %95, !dbg !106

95:                                               ; preds = %78, %40
  %96 = load i8*, i8** %3, align 8, !dbg !107
  call void @free(i8* noundef %96) #7, !dbg !108
  store i32 0, i32* %1, align 4, !dbg !109
  br label %97, !dbg !109

97:                                               ; preds = %95, %39
  %98 = load i32, i32* %1, align 4, !dbg !110
  ret i32 %98, !dbg !110
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !111 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !121, metadata !DIExpression()), !dbg !122
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !123, metadata !DIExpression()), !dbg !124
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i8** %8, metadata !127, metadata !DIExpression()), !dbg !128
  %10 = load i8*, i8** %5, align 8, !dbg !129
  store i8* %10, i8** %8, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i8** %9, metadata !130, metadata !DIExpression()), !dbg !133
  %11 = load i8*, i8** %6, align 8, !dbg !134
  store i8* %11, i8** %9, align 8, !dbg !133
  %12 = load i8*, i8** %6, align 8, !dbg !135
  %13 = load i8*, i8** %5, align 8, !dbg !137
  %14 = icmp eq i8* %12, %13, !dbg !138
  br i1 %14, label %15, label %17, !dbg !139

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !140
  store i8* %16, i8** %4, align 8, !dbg !141
  br label %52, !dbg !141

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !142
  %19 = load i8*, i8** %5, align 8, !dbg !144
  %20 = icmp ugt i8* %18, %19, !dbg !145
  br i1 %20, label %21, label %31, !dbg !146

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !147
  %23 = add i64 %22, -1, !dbg !147
  store i64 %23, i64* %7, align 8, !dbg !147
  %24 = icmp ne i64 %22, 0, !dbg !149
  br i1 %24, label %25, label %50, !dbg !149

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !150
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !150
  store i8* %27, i8** %9, align 8, !dbg !150
  %28 = load i8, i8* %26, align 1, !dbg !151
  %29 = load i8*, i8** %8, align 8, !dbg !152
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !152
  store i8* %30, i8** %8, align 8, !dbg !152
  store i8 %28, i8* %29, align 1, !dbg !153
  br label %21, !dbg !149, !llvm.loop !154

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !156
  %33 = sub i64 %32, 1, !dbg !158
  %34 = load i8*, i8** %8, align 8, !dbg !159
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !159
  store i8* %35, i8** %8, align 8, !dbg !159
  %36 = load i64, i64* %7, align 8, !dbg !160
  %37 = sub i64 %36, 1, !dbg !161
  %38 = load i8*, i8** %9, align 8, !dbg !162
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !162
  store i8* %39, i8** %9, align 8, !dbg !162
  br label %40, !dbg !163

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !164
  %42 = add i64 %41, -1, !dbg !164
  store i64 %42, i64* %7, align 8, !dbg !164
  %43 = icmp ne i64 %41, 0, !dbg !163
  br i1 %43, label %44, label %50, !dbg !163

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !165
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !165
  store i8* %46, i8** %9, align 8, !dbg !165
  %47 = load i8, i8* %45, align 1, !dbg !166
  %48 = load i8*, i8** %8, align 8, !dbg !167
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !167
  store i8* %49, i8** %8, align 8, !dbg !167
  store i8 %47, i8* %48, align 1, !dbg !168
  br label %40, !dbg !163, !llvm.loop !169

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !170
  store i8* %51, i8** %4, align 8, !dbg !171
  br label %52, !dbg !171

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !172
  ret i8* %53, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/282_xmlschemastypes.c_6050_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "71739e9d05f0afa7e501dfd2523ba18f")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !16, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "dec", scope: !15, file: !1, line: 15, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "decimal_info", file: !1, line: 12, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 64, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !22, file: !1, line: 10, baseType: !18, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !22, file: !1, line: 11, baseType: !18, size: 32, offset: 32)
!26 = !DILocation(line: 15, column: 18, scope: !15)
!27 = !DILocalVariable(name: "offs", scope: !15, file: !1, line: 16, type: !3)
!28 = !DILocation(line: 16, column: 11, scope: !15)
!29 = !DILocalVariable(name: "buffer_size", scope: !15, file: !1, line: 17, type: !18)
!30 = !DILocation(line: 17, column: 9, scope: !15)
!31 = !DILocation(line: 19, column: 24, scope: !15)
!32 = !DILocation(line: 19, column: 5, scope: !15)
!33 = !DILocation(line: 20, column: 24, scope: !15)
!34 = !DILocation(line: 20, column: 5, scope: !15)
!35 = !DILocation(line: 22, column: 17, scope: !15)
!36 = !DILocation(line: 22, column: 29, scope: !15)
!37 = !DILocation(line: 22, column: 5, scope: !15)
!38 = !DILocation(line: 23, column: 21, scope: !15)
!39 = !DILocation(line: 23, column: 27, scope: !15)
!40 = !DILocation(line: 23, column: 17, scope: !15)
!41 = !DILocation(line: 23, column: 5, scope: !15)
!42 = !DILocation(line: 24, column: 21, scope: !15)
!43 = !DILocation(line: 24, column: 26, scope: !15)
!44 = !DILocation(line: 24, column: 17, scope: !15)
!45 = !DILocation(line: 24, column: 5, scope: !15)
!46 = !DILocation(line: 25, column: 21, scope: !15)
!47 = !DILocation(line: 25, column: 33, scope: !15)
!48 = !DILocation(line: 25, column: 26, scope: !15)
!49 = !DILocation(line: 25, column: 17, scope: !15)
!50 = !DILocation(line: 25, column: 5, scope: !15)
!51 = !DILocation(line: 27, column: 26, scope: !15)
!52 = !DILocation(line: 27, column: 19, scope: !15)
!53 = !DILocation(line: 27, column: 10, scope: !15)
!54 = !DILocation(line: 28, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !15, file: !1, line: 28, column: 9)
!56 = !DILocation(line: 28, column: 9, scope: !15)
!57 = !DILocation(line: 28, column: 16, scope: !55)
!58 = !DILocation(line: 30, column: 24, scope: !15)
!59 = !DILocation(line: 30, column: 30, scope: !15)
!60 = !DILocation(line: 30, column: 5, scope: !15)
!61 = !DILocation(line: 32, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !15, file: !1, line: 32, column: 9)
!63 = !DILocation(line: 32, column: 25, scope: !62)
!64 = !DILocation(line: 32, column: 18, scope: !62)
!65 = !DILocation(line: 32, column: 9, scope: !15)
!66 = !DILocalVariable(name: "diff", scope: !67, file: !1, line: 33, type: !18)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 32, column: 32)
!68 = !DILocation(line: 33, column: 13, scope: !67)
!69 = !DILocation(line: 33, column: 24, scope: !67)
!70 = !DILocation(line: 33, column: 36, scope: !67)
!71 = !DILocation(line: 33, column: 30, scope: !67)
!72 = !DILocalVariable(name: "src_start", scope: !67, file: !1, line: 35, type: !18)
!73 = !DILocation(line: 35, column: 13, scope: !67)
!74 = !DILocation(line: 35, column: 25, scope: !67)
!75 = !DILocalVariable(name: "dst_start", scope: !67, file: !1, line: 36, type: !18)
!76 = !DILocation(line: 36, column: 13, scope: !67)
!77 = !DILocation(line: 36, column: 25, scope: !67)
!78 = !DILocation(line: 36, column: 30, scope: !67)
!79 = !DILocalVariable(name: "copy_len", scope: !67, file: !1, line: 37, type: !18)
!80 = !DILocation(line: 37, column: 13, scope: !67)
!81 = !DILocation(line: 37, column: 28, scope: !67)
!82 = !DILocation(line: 37, column: 33, scope: !67)
!83 = !DILocalVariable(name: "src_end", scope: !67, file: !1, line: 39, type: !18)
!84 = !DILocation(line: 39, column: 13, scope: !67)
!85 = !DILocation(line: 39, column: 23, scope: !67)
!86 = !DILocation(line: 39, column: 35, scope: !67)
!87 = !DILocation(line: 39, column: 33, scope: !67)
!88 = !DILocalVariable(name: "dst_end", scope: !67, file: !1, line: 40, type: !18)
!89 = !DILocation(line: 40, column: 13, scope: !67)
!90 = !DILocation(line: 40, column: 23, scope: !67)
!91 = !DILocation(line: 40, column: 35, scope: !67)
!92 = !DILocation(line: 40, column: 33, scope: !67)
!93 = !DILocation(line: 42, column: 9, scope: !67)
!94 = !DILocation(line: 43, column: 9, scope: !67)
!95 = !DILocation(line: 45, column: 17, scope: !67)
!96 = !DILocation(line: 45, column: 24, scope: !67)
!97 = !DILocation(line: 45, column: 22, scope: !67)
!98 = !DILocation(line: 45, column: 35, scope: !67)
!99 = !DILocation(line: 45, column: 42, scope: !67)
!100 = !DILocation(line: 45, column: 40, scope: !67)
!101 = !DILocation(line: 45, column: 53, scope: !67)
!102 = !DILocation(line: 45, column: 9, scope: !67)
!103 = !DILocation(line: 46, column: 9, scope: !67)
!104 = !DILocation(line: 46, column: 14, scope: !67)
!105 = !DILocation(line: 46, column: 20, scope: !67)
!106 = !DILocation(line: 47, column: 5, scope: !67)
!107 = !DILocation(line: 49, column: 10, scope: !15)
!108 = !DILocation(line: 49, column: 5, scope: !15)
!109 = !DILocation(line: 50, column: 5, scope: !15)
!110 = !DILocation(line: 51, column: 1, scope: !15)
!111 = distinct !DISubprogram(name: "memmove", scope: !112, file: !112, line: 12, type: !113, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!112 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !115, !116, !118}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DILocalVariable(name: "dst", arg: 1, scope: !111, file: !112, line: 12, type: !115)
!122 = !DILocation(line: 12, column: 21, scope: !111)
!123 = !DILocalVariable(name: "src", arg: 2, scope: !111, file: !112, line: 12, type: !116)
!124 = !DILocation(line: 12, column: 38, scope: !111)
!125 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !112, line: 12, type: !118)
!126 = !DILocation(line: 12, column: 50, scope: !111)
!127 = !DILocalVariable(name: "a", scope: !111, file: !112, line: 13, type: !3)
!128 = !DILocation(line: 13, column: 9, scope: !111)
!129 = !DILocation(line: 13, column: 13, scope: !111)
!130 = !DILocalVariable(name: "b", scope: !111, file: !112, line: 14, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!133 = !DILocation(line: 14, column: 15, scope: !111)
!134 = !DILocation(line: 14, column: 19, scope: !111)
!135 = !DILocation(line: 16, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !111, file: !112, line: 16, column: 7)
!137 = !DILocation(line: 16, column: 14, scope: !136)
!138 = !DILocation(line: 16, column: 11, scope: !136)
!139 = !DILocation(line: 16, column: 7, scope: !111)
!140 = !DILocation(line: 17, column: 12, scope: !136)
!141 = !DILocation(line: 17, column: 5, scope: !136)
!142 = !DILocation(line: 19, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !111, file: !112, line: 19, column: 7)
!144 = !DILocation(line: 19, column: 13, scope: !143)
!145 = !DILocation(line: 19, column: 11, scope: !143)
!146 = !DILocation(line: 19, column: 7, scope: !111)
!147 = !DILocation(line: 20, column: 17, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !112, line: 19, column: 18)
!149 = !DILocation(line: 20, column: 5, scope: !148)
!150 = !DILocation(line: 21, column: 16, scope: !148)
!151 = !DILocation(line: 21, column: 14, scope: !148)
!152 = !DILocation(line: 21, column: 9, scope: !148)
!153 = !DILocation(line: 21, column: 12, scope: !148)
!154 = distinct !{!154, !149, !150, !155}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !DILocation(line: 23, column: 10, scope: !157)
!157 = distinct !DILexicalBlock(scope: !143, file: !112, line: 22, column: 10)
!158 = !DILocation(line: 23, column: 16, scope: !157)
!159 = !DILocation(line: 23, column: 7, scope: !157)
!160 = !DILocation(line: 24, column: 10, scope: !157)
!161 = !DILocation(line: 24, column: 16, scope: !157)
!162 = !DILocation(line: 24, column: 7, scope: !157)
!163 = !DILocation(line: 25, column: 5, scope: !157)
!164 = !DILocation(line: 25, column: 17, scope: !157)
!165 = !DILocation(line: 26, column: 16, scope: !157)
!166 = !DILocation(line: 26, column: 14, scope: !157)
!167 = !DILocation(line: 26, column: 9, scope: !157)
!168 = !DILocation(line: 26, column: 12, scope: !157)
!169 = distinct !{!169, !163, !165, !155}
!170 = !DILocation(line: 29, column: 10, scope: !111)
!171 = !DILocation(line: 29, column: 3, scope: !111)
!172 = !DILocation(line: 30, column: 1, scope: !111)
