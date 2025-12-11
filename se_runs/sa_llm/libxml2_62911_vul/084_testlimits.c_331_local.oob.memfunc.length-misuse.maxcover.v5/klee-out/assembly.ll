; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/084_testlimits.c_331_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/084_testlimits.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlParserInputBuffer = type { i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"(buf.len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/084_testlimits.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlParserInputBuffer, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlParserInputBuffer* %2, metadata !17, metadata !DIExpression()), !dbg !29
  %3 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !30
  %4 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 0, !dbg !31
  store i8* %3, i8** %4, align 8, !dbg !32
  %5 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !33
  %6 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 1, !dbg !34
  store i8* %5, i8** %6, align 8, !dbg !35
  %7 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 2, !dbg !36
  %8 = bitcast i32* %7 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !38
  %9 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 3, !dbg !39
  %10 = bitcast i32* %9 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %11 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !42
  %12 = bitcast i32* %11 to i8*, !dbg !43
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !44
  %13 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !45
  %14 = bitcast i32* %13 to i8*, !dbg !46
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !47
  %15 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !48
  %16 = load i32, i32* %15, align 8, !dbg !48
  %17 = icmp sge i32 %16, 0, !dbg !49
  %18 = zext i1 %17 to i32, !dbg !49
  %19 = sext i32 %18 to i64, !dbg !50
  call void @klee_assume(i64 noundef %19), !dbg !51
  %20 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !52
  %21 = load i32, i32* %20, align 4, !dbg !52
  %22 = icmp sge i32 %21, 0, !dbg !53
  %23 = zext i1 %22 to i32, !dbg !53
  %24 = sext i32 %23 to i64, !dbg !54
  call void @klee_assume(i64 noundef %24), !dbg !55
  %25 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 3, !dbg !56
  %26 = load i32, i32* %25, align 4, !dbg !56
  %27 = icmp sge i32 %26, 0, !dbg !57
  %28 = zext i1 %27 to i32, !dbg !57
  %29 = sext i32 %28 to i64, !dbg !58
  call void @klee_assume(i64 noundef %29), !dbg !59
  %30 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 2, !dbg !60
  %31 = load i32, i32* %30, align 8, !dbg !60
  %32 = icmp eq i32 %31, 0, !dbg !61
  %33 = zext i1 %32 to i32, !dbg !61
  %34 = sext i32 %33 to i64, !dbg !62
  call void @klee_assume(i64 noundef %34), !dbg !63
  %35 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !64
  %36 = load i32, i32* %35, align 8, !dbg !64
  %37 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !65
  %38 = load i32, i32* %37, align 4, !dbg !65
  %39 = icmp slt i32 %36, %38, !dbg !66
  %40 = zext i1 %39 to i32, !dbg !66
  %41 = sext i32 %40 to i64, !dbg !67
  call void @klee_assume(i64 noundef %41), !dbg !68
  %42 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 2, !dbg !69
  %43 = load i32, i32* %42, align 8, !dbg !69
  %44 = icmp eq i32 %43, 0, !dbg !71
  br i1 %44, label %45, label %90, !dbg !72

45:                                               ; preds = %0
  %46 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !73
  %47 = load i32, i32* %46, align 8, !dbg !73
  %48 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !76
  %49 = load i32, i32* %48, align 4, !dbg !76
  %50 = icmp sge i32 %47, %49, !dbg !77
  br i1 %50, label %51, label %66, !dbg !78

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !79
  %53 = load i32, i32* %52, align 4, !dbg !79
  %54 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !81
  store i32 %53, i32* %54, align 8, !dbg !82
  %55 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !83
  store i32 0, i32* %55, align 4, !dbg !84
  %56 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 0, !dbg !85
  %57 = load i8*, i8** %56, align 8, !dbg !85
  %58 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 1, !dbg !86
  %59 = load i8*, i8** %58, align 8, !dbg !86
  %60 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !87
  %61 = load i32, i32* %60, align 8, !dbg !87
  %62 = sext i32 %61 to i64, !dbg !88
  %63 = call i8* @memcpy(i8* %57, i8* %59, i64 %62), !dbg !89
  %64 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 2, !dbg !90
  store i32 1, i32* %64, align 8, !dbg !91
  %65 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 3, !dbg !92
  store i32 0, i32* %65, align 4, !dbg !93
  br label %89, !dbg !94

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 0, !dbg !95
  %68 = load i8*, i8** %67, align 8, !dbg !95
  %69 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 1, !dbg !97
  %70 = load i8*, i8** %69, align 8, !dbg !97
  %71 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !98
  %72 = load i32, i32* %71, align 8, !dbg !98
  %73 = sext i32 %72 to i64, !dbg !99
  %74 = call i8* @memcpy(i8* %68, i8* %70, i64 %73), !dbg !100
  %75 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !101
  %76 = load i32, i32* %75, align 8, !dbg !101
  %77 = icmp sle i32 %76, 1024, !dbg !101
  br i1 %77, label %78, label %80, !dbg !101

78:                                               ; preds = %66
  br i1 true, label %79, label %80, !dbg !101

79:                                               ; preds = %78
  br label %82, !dbg !101

80:                                               ; preds = %78, %66
  %81 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !101
  br label %82, !dbg !101

82:                                               ; preds = %80, %79
  %83 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !102
  %84 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 4, !dbg !103
  %85 = load i32, i32* %84, align 8, !dbg !103
  %86 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 5, !dbg !104
  %87 = load i32, i32* %86, align 4, !dbg !105
  %88 = sub nsw i32 %87, %85, !dbg !105
  store i32 %88, i32* %86, align 4, !dbg !105
  br label %89

89:                                               ; preds = %82, %51
  br label %90, !dbg !106

90:                                               ; preds = %89, %0
  %91 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 0, !dbg !107
  %92 = load i8*, i8** %91, align 8, !dbg !107
  call void @free(i8* noundef %92) #7, !dbg !108
  %93 = getelementptr inbounds %struct.xmlParserInputBuffer, %struct.xmlParserInputBuffer* %2, i32 0, i32 1, !dbg !109
  %94 = load i8*, i8** %93, align 8, !dbg !109
  call void @free(i8* noundef %94) #7, !dbg !110
  ret i32 0, !dbg !111
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !112 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !122, metadata !DIExpression()), !dbg !123
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !124, metadata !DIExpression()), !dbg !125
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i8** %7, metadata !128, metadata !DIExpression()), !dbg !129
  %9 = load i8*, i8** %4, align 8, !dbg !130
  store i8* %9, i8** %7, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i8** %8, metadata !131, metadata !DIExpression()), !dbg !134
  %10 = load i8*, i8** %5, align 8, !dbg !135
  store i8* %10, i8** %8, align 8, !dbg !134
  br label %11, !dbg !136

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !137
  %13 = add i64 %12, -1, !dbg !137
  store i64 %13, i64* %6, align 8, !dbg !137
  %14 = icmp ugt i64 %12, 0, !dbg !138
  br i1 %14, label %15, label %21, !dbg !136

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !139
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !139
  store i8* %17, i8** %8, align 8, !dbg !139
  %18 = load i8, i8* %16, align 1, !dbg !140
  %19 = load i8*, i8** %7, align 8, !dbg !141
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !141
  store i8* %20, i8** %7, align 8, !dbg !141
  store i8 %18, i8* %19, align 1, !dbg !142
  br label %11, !dbg !136, !llvm.loop !143

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !145
  ret i8* %22, !dbg !146
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/084_testlimits.c_331_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "98c401f5c0496000110aa7e40194ba03")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !13, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "buf", scope: !12, file: !1, line: 19, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInputBuffer", file: !1, line: 16, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 256, elements: !20)
!20 = !{!21, !24, !25, !26, !27, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !1, line: 10, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !19, file: !1, line: 11, baseType: !22, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !19, file: !1, line: 12, baseType: !15, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !19, file: !1, line: 13, baseType: !15, size: 32, offset: 160)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !1, line: 14, baseType: !15, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !19, file: !1, line: 15, baseType: !15, size: 32, offset: 224)
!29 = !DILocation(line: 19, column: 26, scope: !12)
!30 = !DILocation(line: 21, column: 18, scope: !12)
!31 = !DILocation(line: 21, column: 9, scope: !12)
!32 = !DILocation(line: 21, column: 16, scope: !12)
!33 = !DILocation(line: 22, column: 19, scope: !12)
!34 = !DILocation(line: 22, column: 9, scope: !12)
!35 = !DILocation(line: 22, column: 17, scope: !12)
!36 = !DILocation(line: 24, column: 29, scope: !12)
!37 = !DILocation(line: 24, column: 24, scope: !12)
!38 = !DILocation(line: 24, column: 5, scope: !12)
!39 = !DILocation(line: 25, column: 29, scope: !12)
!40 = !DILocation(line: 25, column: 24, scope: !12)
!41 = !DILocation(line: 25, column: 5, scope: !12)
!42 = !DILocation(line: 26, column: 29, scope: !12)
!43 = !DILocation(line: 26, column: 24, scope: !12)
!44 = !DILocation(line: 26, column: 5, scope: !12)
!45 = !DILocation(line: 27, column: 29, scope: !12)
!46 = !DILocation(line: 27, column: 24, scope: !12)
!47 = !DILocation(line: 27, column: 5, scope: !12)
!48 = !DILocation(line: 29, column: 21, scope: !12)
!49 = !DILocation(line: 29, column: 25, scope: !12)
!50 = !DILocation(line: 29, column: 17, scope: !12)
!51 = !DILocation(line: 29, column: 5, scope: !12)
!52 = !DILocation(line: 30, column: 21, scope: !12)
!53 = !DILocation(line: 30, column: 26, scope: !12)
!54 = !DILocation(line: 30, column: 17, scope: !12)
!55 = !DILocation(line: 30, column: 5, scope: !12)
!56 = !DILocation(line: 31, column: 21, scope: !12)
!57 = !DILocation(line: 31, column: 28, scope: !12)
!58 = !DILocation(line: 31, column: 17, scope: !12)
!59 = !DILocation(line: 31, column: 5, scope: !12)
!60 = !DILocation(line: 33, column: 21, scope: !12)
!61 = !DILocation(line: 33, column: 29, scope: !12)
!62 = !DILocation(line: 33, column: 17, scope: !12)
!63 = !DILocation(line: 33, column: 5, scope: !12)
!64 = !DILocation(line: 34, column: 21, scope: !12)
!65 = !DILocation(line: 34, column: 31, scope: !12)
!66 = !DILocation(line: 34, column: 25, scope: !12)
!67 = !DILocation(line: 34, column: 17, scope: !12)
!68 = !DILocation(line: 34, column: 5, scope: !12)
!69 = !DILocation(line: 36, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !12, file: !1, line: 36, column: 9)
!71 = !DILocation(line: 36, column: 21, scope: !70)
!72 = !DILocation(line: 36, column: 9, scope: !12)
!73 = !DILocation(line: 37, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 37, column: 13)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 36, column: 27)
!76 = !DILocation(line: 37, column: 28, scope: !74)
!77 = !DILocation(line: 37, column: 21, scope: !74)
!78 = !DILocation(line: 37, column: 13, scope: !75)
!79 = !DILocation(line: 38, column: 27, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 37, column: 34)
!81 = !DILocation(line: 38, column: 17, scope: !80)
!82 = !DILocation(line: 38, column: 21, scope: !80)
!83 = !DILocation(line: 39, column: 17, scope: !80)
!84 = !DILocation(line: 39, column: 22, scope: !80)
!85 = !DILocation(line: 40, column: 24, scope: !80)
!86 = !DILocation(line: 40, column: 36, scope: !80)
!87 = !DILocation(line: 40, column: 49, scope: !80)
!88 = !DILocation(line: 40, column: 45, scope: !80)
!89 = !DILocation(line: 40, column: 13, scope: !80)
!90 = !DILocation(line: 41, column: 17, scope: !80)
!91 = !DILocation(line: 41, column: 25, scope: !80)
!92 = !DILocation(line: 42, column: 17, scope: !80)
!93 = !DILocation(line: 42, column: 24, scope: !80)
!94 = !DILocation(line: 43, column: 9, scope: !80)
!95 = !DILocation(line: 44, column: 24, scope: !96)
!96 = distinct !DILexicalBlock(scope: !74, file: !1, line: 43, column: 16)
!97 = !DILocation(line: 44, column: 36, scope: !96)
!98 = !DILocation(line: 44, column: 49, scope: !96)
!99 = !DILocation(line: 44, column: 45, scope: !96)
!100 = !DILocation(line: 44, column: 13, scope: !96)
!101 = !DILocation(line: 45, column: 13, scope: !96)
!102 = !DILocation(line: 46, column: 13, scope: !96)
!103 = !DILocation(line: 47, column: 29, scope: !96)
!104 = !DILocation(line: 47, column: 17, scope: !96)
!105 = !DILocation(line: 47, column: 22, scope: !96)
!106 = !DILocation(line: 49, column: 5, scope: !75)
!107 = !DILocation(line: 51, column: 14, scope: !12)
!108 = !DILocation(line: 51, column: 5, scope: !12)
!109 = !DILocation(line: 52, column: 14, scope: !12)
!110 = !DILocation(line: 52, column: 5, scope: !12)
!111 = !DILocation(line: 53, column: 5, scope: !12)
!112 = distinct !DISubprogram(name: "memcpy", scope: !113, file: !113, line: 12, type: !114, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!113 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !116, !117, !119}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocalVariable(name: "destaddr", arg: 1, scope: !112, file: !113, line: 12, type: !116)
!123 = !DILocation(line: 12, column: 20, scope: !112)
!124 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !112, file: !113, line: 12, type: !117)
!125 = !DILocation(line: 12, column: 42, scope: !112)
!126 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !113, line: 12, type: !119)
!127 = !DILocation(line: 12, column: 58, scope: !112)
!128 = !DILocalVariable(name: "dest", scope: !112, file: !113, line: 13, type: !22)
!129 = !DILocation(line: 13, column: 9, scope: !112)
!130 = !DILocation(line: 13, column: 16, scope: !112)
!131 = !DILocalVariable(name: "src", scope: !112, file: !113, line: 14, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!134 = !DILocation(line: 14, column: 15, scope: !112)
!135 = !DILocation(line: 14, column: 21, scope: !112)
!136 = !DILocation(line: 16, column: 3, scope: !112)
!137 = !DILocation(line: 16, column: 13, scope: !112)
!138 = !DILocation(line: 16, column: 16, scope: !112)
!139 = !DILocation(line: 17, column: 19, scope: !112)
!140 = !DILocation(line: 17, column: 15, scope: !112)
!141 = !DILocation(line: 17, column: 10, scope: !112)
!142 = !DILocation(line: 17, column: 13, scope: !112)
!143 = distinct !{!143, !136, !139, !144}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !DILocation(line: 18, column: 10, scope: !112)
!146 = !DILocation(line: 18, column: 3, scope: !112)
