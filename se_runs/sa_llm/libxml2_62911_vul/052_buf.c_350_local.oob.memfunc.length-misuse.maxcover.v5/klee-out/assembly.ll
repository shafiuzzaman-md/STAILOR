; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/052_buf.c_350_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/052_buf.c_350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i8*, i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(buf->use <= (buf->size + start_buf)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_62911_vul/052_buf.c_350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlBufAdd = private unnamed_addr constant [44 x i8] c"void xmlBufAdd(xmlBuf *, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"start_buf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !12 {
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !35, metadata !DIExpression()), !dbg !36
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !37, metadata !DIExpression()), !dbg !38
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !39
  %9 = icmp eq %struct._xmlBuf* %8, null, !dbg !41
  br i1 %9, label %13, label %10, !dbg !42

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !43
  %12 = icmp eq i8* %11, null, !dbg !44
  br i1 %12, label %13, label %14, !dbg !45

13:                                               ; preds = %10, %3
  br label %56, !dbg !46

14:                                               ; preds = %10
  %15 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !47
  %16 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %15, i32 0, i32 4, !dbg !49
  %17 = load i32, i32* %16, align 8, !dbg !49
  %18 = icmp eq i32 %17, 1, !dbg !50
  br i1 %18, label %19, label %56, !dbg !51

19:                                               ; preds = %14
  %20 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !52
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %20, i32 0, i32 1, !dbg !53
  %22 = load i8*, i8** %21, align 8, !dbg !53
  %23 = icmp ne i8* %22, null, !dbg !54
  br i1 %23, label %24, label %56, !dbg !55

24:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata i64* %7, metadata !56, metadata !DIExpression()), !dbg !58
  %25 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !59
  %26 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %25, i32 0, i32 0, !dbg !60
  %27 = load i8*, i8** %26, align 8, !dbg !60
  %28 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !61
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %28, i32 0, i32 1, !dbg !62
  %30 = load i8*, i8** %29, align 8, !dbg !62
  %31 = ptrtoint i8* %27 to i64, !dbg !63
  %32 = ptrtoint i8* %30 to i64, !dbg !63
  %33 = sub i64 %31, %32, !dbg !63
  store i64 %33, i64* %7, align 8, !dbg !58
  %34 = load i64, i64* %7, align 8, !dbg !64
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !66
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 2, !dbg !67
  %37 = load i64, i64* %36, align 8, !dbg !67
  %38 = icmp uge i64 %34, %37, !dbg !68
  br i1 %38, label %39, label %55, !dbg !69

39:                                               ; preds = %24
  %40 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !70
  %41 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %40, i32 0, i32 3, !dbg !70
  %42 = load i64, i64* %41, align 8, !dbg !70
  %43 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !70
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %43, i32 0, i32 2, !dbg !70
  %45 = load i64, i64* %44, align 8, !dbg !70
  %46 = load i64, i64* %7, align 8, !dbg !70
  %47 = add i64 %45, %46, !dbg !70
  %48 = icmp ule i64 %42, %47, !dbg !70
  br i1 %48, label %49, label %51, !dbg !70

49:                                               ; preds = %39
  br i1 true, label %50, label %51, !dbg !70

50:                                               ; preds = %49
  br label %53, !dbg !70

51:                                               ; preds = %49, %39
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.xmlBufAdd, i64 0, i64 0)), !dbg !70
  br label %53, !dbg !70

53:                                               ; preds = %51, %50
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.xmlBufAdd, i64 0, i64 0)), !dbg !72
  br label %55, !dbg !73

55:                                               ; preds = %53, %24
  br label %56, !dbg !74

56:                                               ; preds = %13, %55, %19, %14
  ret void, !dbg !75
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !76 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %2, metadata !79, metadata !DIExpression()), !dbg !80
  %5 = call noalias i8* @malloc(i64 noundef 40) #5, !dbg !81
  %6 = bitcast i8* %5 to %struct._xmlBuf*, !dbg !81
  store %struct._xmlBuf* %6, %struct._xmlBuf** %2, align 8, !dbg !80
  %7 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !82
  %8 = icmp eq %struct._xmlBuf* %7, null, !dbg !84
  br i1 %8, label %9, label %10, !dbg !85

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !86
  br label %96, !dbg !86

10:                                               ; preds = %0
  %11 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !87
  %12 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %11, i32 0, i32 4, !dbg !88
  %13 = bitcast i32* %12 to i8*, !dbg !89
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !90
  %14 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !91
  %15 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %14, i32 0, i32 2, !dbg !92
  %16 = bitcast i64* %15 to i8*, !dbg !93
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !94
  %17 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !95
  %18 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %17, i32 0, i32 3, !dbg !96
  %19 = bitcast i64* %18 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !98
  call void @llvm.dbg.declare(metadata i64* %3, metadata !99, metadata !DIExpression()), !dbg !100
  store i64 4096, i64* %3, align 8, !dbg !100
  %20 = load i64, i64* %3, align 8, !dbg !101
  %21 = call noalias i8* @malloc(i64 noundef %20) #5, !dbg !102
  %22 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !103
  %23 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %22, i32 0, i32 1, !dbg !104
  store i8* %21, i8** %23, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata i64* %4, metadata !106, metadata !DIExpression()), !dbg !107
  %24 = bitcast i64* %4 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !109
  %25 = load i64, i64* %4, align 8, !dbg !110
  %26 = load i64, i64* %3, align 8, !dbg !111
  %27 = icmp ult i64 %25, %26, !dbg !112
  %28 = zext i1 %27 to i32, !dbg !112
  %29 = sext i32 %28 to i64, !dbg !110
  call void @klee_assume(i64 noundef %29), !dbg !113
  %30 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !114
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %30, i32 0, i32 1, !dbg !115
  %32 = load i8*, i8** %31, align 8, !dbg !115
  %33 = load i64, i64* %4, align 8, !dbg !116
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !117
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !118
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 0, !dbg !119
  store i8* %34, i8** %36, align 8, !dbg !120
  %37 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !121
  %38 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %37, i32 0, i32 3, !dbg !122
  %39 = load i64, i64* %38, align 8, !dbg !122
  %40 = load i64, i64* %3, align 8, !dbg !123
  %41 = icmp ule i64 %39, %40, !dbg !124
  %42 = zext i1 %41 to i32, !dbg !124
  %43 = sext i32 %42 to i64, !dbg !121
  call void @klee_assume(i64 noundef %43), !dbg !125
  %44 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !126
  %45 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %44, i32 0, i32 2, !dbg !127
  %46 = load i64, i64* %45, align 8, !dbg !127
  %47 = load i64, i64* %3, align 8, !dbg !128
  %48 = icmp ule i64 %46, %47, !dbg !129
  %49 = zext i1 %48 to i32, !dbg !129
  %50 = sext i32 %49 to i64, !dbg !126
  call void @klee_assume(i64 noundef %50), !dbg !130
  %51 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !131
  %52 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %51, i32 0, i32 4, !dbg !132
  %53 = load i32, i32* %52, align 8, !dbg !132
  %54 = icmp eq i32 %53, 1, !dbg !133
  %55 = zext i1 %54 to i32, !dbg !133
  %56 = sext i32 %55 to i64, !dbg !131
  call void @klee_assume(i64 noundef %56), !dbg !134
  %57 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !135
  %58 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %57, i32 0, i32 1, !dbg !136
  %59 = load i8*, i8** %58, align 8, !dbg !136
  %60 = icmp ne i8* %59, null, !dbg !137
  %61 = zext i1 %60 to i32, !dbg !137
  %62 = sext i32 %61 to i64, !dbg !135
  call void @klee_assume(i64 noundef %62), !dbg !138
  %63 = load i64, i64* %4, align 8, !dbg !139
  %64 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !140
  %65 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %64, i32 0, i32 2, !dbg !141
  %66 = load i64, i64* %65, align 8, !dbg !141
  %67 = icmp uge i64 %63, %66, !dbg !142
  %68 = zext i1 %67 to i32, !dbg !142
  %69 = sext i32 %68 to i64, !dbg !139
  call void @klee_assume(i64 noundef %69), !dbg !143
  %70 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !144
  %71 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %70, i32 0, i32 0, !dbg !145
  %72 = load i8*, i8** %71, align 8, !dbg !145
  %73 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !146
  %74 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %73, i32 0, i32 1, !dbg !147
  %75 = load i8*, i8** %74, align 8, !dbg !147
  %76 = icmp uge i8* %72, %75, !dbg !148
  %77 = zext i1 %76 to i32, !dbg !148
  %78 = sext i32 %77 to i64, !dbg !144
  call void @klee_assume(i64 noundef %78), !dbg !149
  %79 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !150
  %80 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %79, i32 0, i32 0, !dbg !151
  %81 = load i8*, i8** %80, align 8, !dbg !151
  %82 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !152
  %83 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %82, i32 0, i32 1, !dbg !153
  %84 = load i8*, i8** %83, align 8, !dbg !153
  %85 = load i64, i64* %3, align 8, !dbg !154
  %86 = getelementptr inbounds i8, i8* %84, i64 %85, !dbg !155
  %87 = icmp ult i8* %81, %86, !dbg !156
  %88 = zext i1 %87 to i32, !dbg !156
  %89 = sext i32 %88 to i64, !dbg !150
  call void @klee_assume(i64 noundef %89), !dbg !157
  %90 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !158
  call void @xmlBufAdd(%struct._xmlBuf* noundef %90, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef 4), !dbg !159
  %91 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !160
  %92 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %91, i32 0, i32 1, !dbg !161
  %93 = load i8*, i8** %92, align 8, !dbg !161
  call void @free(i8* noundef %93) #5, !dbg !162
  %94 = load %struct._xmlBuf*, %struct._xmlBuf** %2, align 8, !dbg !163
  %95 = bitcast %struct._xmlBuf* %94 to i8*, !dbg !163
  call void @free(i8* noundef %95) #5, !dbg !164
  store i32 0, i32* %1, align 4, !dbg !165
  br label %96, !dbg !165

96:                                               ; preds = %10, %9
  %97 = load i32, i32* %1, align 4, !dbg !166
  ret i32 %97, !dbg !166
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/052_buf.c_350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f4e1918552e8725eafd4436870560705")
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
!12 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 22, type: !13, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !30, !29}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 320, elements: !18)
!18 = !{!19, !22, !23, !27, !28}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !17, file: !1, line: 12, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !17, file: !1, line: 13, baseType: !20, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !17, file: !1, line: 14, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !17, file: !1, line: 15, baseType: !24, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !17, file: !1, line: 16, baseType: !29, size: 32, offset: 256)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!32 = !{}
!33 = !DILocalVariable(name: "buf", arg: 1, scope: !12, file: !1, line: 22, type: !15)
!34 = !DILocation(line: 22, column: 24, scope: !12)
!35 = !DILocalVariable(name: "str", arg: 2, scope: !12, file: !1, line: 22, type: !30)
!36 = !DILocation(line: 22, column: 41, scope: !12)
!37 = !DILocalVariable(name: "len", arg: 3, scope: !12, file: !1, line: 22, type: !29)
!38 = !DILocation(line: 22, column: 50, scope: !12)
!39 = !DILocation(line: 24, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !12, file: !1, line: 24, column: 9)
!41 = !DILocation(line: 24, column: 13, scope: !40)
!42 = !DILocation(line: 24, column: 21, scope: !40)
!43 = !DILocation(line: 24, column: 24, scope: !40)
!44 = !DILocation(line: 24, column: 28, scope: !40)
!45 = !DILocation(line: 24, column: 9, scope: !12)
!46 = !DILocation(line: 24, column: 37, scope: !40)
!47 = !DILocation(line: 27, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !12, file: !1, line: 27, column: 9)
!49 = !DILocation(line: 27, column: 15, scope: !48)
!50 = !DILocation(line: 27, column: 21, scope: !48)
!51 = !DILocation(line: 27, column: 45, scope: !48)
!52 = !DILocation(line: 27, column: 49, scope: !48)
!53 = !DILocation(line: 27, column: 54, scope: !48)
!54 = !DILocation(line: 27, column: 64, scope: !48)
!55 = !DILocation(line: 27, column: 9, scope: !12)
!56 = !DILocalVariable(name: "start_buf", scope: !57, file: !1, line: 28, type: !24)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 27, column: 74)
!58 = !DILocation(line: 28, column: 16, scope: !57)
!59 = !DILocation(line: 28, column: 28, scope: !57)
!60 = !DILocation(line: 28, column: 33, scope: !57)
!61 = !DILocation(line: 28, column: 43, scope: !57)
!62 = !DILocation(line: 28, column: 48, scope: !57)
!63 = !DILocation(line: 28, column: 41, scope: !57)
!64 = !DILocation(line: 29, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 29, column: 13)
!66 = !DILocation(line: 29, column: 26, scope: !65)
!67 = !DILocation(line: 29, column: 31, scope: !65)
!68 = !DILocation(line: 29, column: 23, scope: !65)
!69 = !DILocation(line: 29, column: 13, scope: !57)
!70 = !DILocation(line: 58, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 29, column: 37)
!72 = !DILocation(line: 61, column: 13, scope: !71)
!73 = !DILocation(line: 65, column: 9, scope: !71)
!74 = !DILocation(line: 66, column: 5, scope: !57)
!75 = !DILocation(line: 67, column: 1, scope: !12)
!76 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 69, type: !77, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!77 = !DISubroutineType(types: !78)
!78 = !{!29}
!79 = !DILocalVariable(name: "buf", scope: !76, file: !1, line: 71, type: !15)
!80 = !DILocation(line: 71, column: 13, scope: !76)
!81 = !DILocation(line: 71, column: 19, scope: !76)
!82 = !DILocation(line: 72, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 72, column: 9)
!84 = !DILocation(line: 72, column: 13, scope: !83)
!85 = !DILocation(line: 72, column: 9, scope: !76)
!86 = !DILocation(line: 72, column: 22, scope: !83)
!87 = !DILocation(line: 75, column: 25, scope: !76)
!88 = !DILocation(line: 75, column: 30, scope: !76)
!89 = !DILocation(line: 75, column: 24, scope: !76)
!90 = !DILocation(line: 75, column: 5, scope: !76)
!91 = !DILocation(line: 76, column: 25, scope: !76)
!92 = !DILocation(line: 76, column: 30, scope: !76)
!93 = !DILocation(line: 76, column: 24, scope: !76)
!94 = !DILocation(line: 76, column: 5, scope: !76)
!95 = !DILocation(line: 77, column: 25, scope: !76)
!96 = !DILocation(line: 77, column: 30, scope: !76)
!97 = !DILocation(line: 77, column: 24, scope: !76)
!98 = !DILocation(line: 77, column: 5, scope: !76)
!99 = !DILocalVariable(name: "max_io_size", scope: !76, file: !1, line: 80, type: !24)
!100 = !DILocation(line: 80, column: 12, scope: !76)
!101 = !DILocation(line: 81, column: 29, scope: !76)
!102 = !DILocation(line: 81, column: 22, scope: !76)
!103 = !DILocation(line: 81, column: 5, scope: !76)
!104 = !DILocation(line: 81, column: 10, scope: !76)
!105 = !DILocation(line: 81, column: 20, scope: !76)
!106 = !DILocalVariable(name: "start_buf", scope: !76, file: !1, line: 84, type: !24)
!107 = !DILocation(line: 84, column: 12, scope: !76)
!108 = !DILocation(line: 85, column: 24, scope: !76)
!109 = !DILocation(line: 85, column: 5, scope: !76)
!110 = !DILocation(line: 88, column: 17, scope: !76)
!111 = !DILocation(line: 88, column: 29, scope: !76)
!112 = !DILocation(line: 88, column: 27, scope: !76)
!113 = !DILocation(line: 88, column: 5, scope: !76)
!114 = !DILocation(line: 89, column: 20, scope: !76)
!115 = !DILocation(line: 89, column: 25, scope: !76)
!116 = !DILocation(line: 89, column: 37, scope: !76)
!117 = !DILocation(line: 89, column: 35, scope: !76)
!118 = !DILocation(line: 89, column: 5, scope: !76)
!119 = !DILocation(line: 89, column: 10, scope: !76)
!120 = !DILocation(line: 89, column: 18, scope: !76)
!121 = !DILocation(line: 92, column: 17, scope: !76)
!122 = !DILocation(line: 92, column: 22, scope: !76)
!123 = !DILocation(line: 92, column: 29, scope: !76)
!124 = !DILocation(line: 92, column: 26, scope: !76)
!125 = !DILocation(line: 92, column: 5, scope: !76)
!126 = !DILocation(line: 95, column: 17, scope: !76)
!127 = !DILocation(line: 95, column: 22, scope: !76)
!128 = !DILocation(line: 95, column: 30, scope: !76)
!129 = !DILocation(line: 95, column: 27, scope: !76)
!130 = !DILocation(line: 95, column: 5, scope: !76)
!131 = !DILocation(line: 98, column: 17, scope: !76)
!132 = !DILocation(line: 98, column: 22, scope: !76)
!133 = !DILocation(line: 98, column: 28, scope: !76)
!134 = !DILocation(line: 98, column: 5, scope: !76)
!135 = !DILocation(line: 99, column: 17, scope: !76)
!136 = !DILocation(line: 99, column: 22, scope: !76)
!137 = !DILocation(line: 99, column: 32, scope: !76)
!138 = !DILocation(line: 99, column: 5, scope: !76)
!139 = !DILocation(line: 100, column: 17, scope: !76)
!140 = !DILocation(line: 100, column: 30, scope: !76)
!141 = !DILocation(line: 100, column: 35, scope: !76)
!142 = !DILocation(line: 100, column: 27, scope: !76)
!143 = !DILocation(line: 100, column: 5, scope: !76)
!144 = !DILocation(line: 103, column: 17, scope: !76)
!145 = !DILocation(line: 103, column: 22, scope: !76)
!146 = !DILocation(line: 103, column: 33, scope: !76)
!147 = !DILocation(line: 103, column: 38, scope: !76)
!148 = !DILocation(line: 103, column: 30, scope: !76)
!149 = !DILocation(line: 103, column: 5, scope: !76)
!150 = !DILocation(line: 104, column: 17, scope: !76)
!151 = !DILocation(line: 104, column: 22, scope: !76)
!152 = !DILocation(line: 104, column: 32, scope: !76)
!153 = !DILocation(line: 104, column: 37, scope: !76)
!154 = !DILocation(line: 104, column: 49, scope: !76)
!155 = !DILocation(line: 104, column: 47, scope: !76)
!156 = !DILocation(line: 104, column: 30, scope: !76)
!157 = !DILocation(line: 104, column: 5, scope: !76)
!158 = !DILocation(line: 107, column: 15, scope: !76)
!159 = !DILocation(line: 107, column: 5, scope: !76)
!160 = !DILocation(line: 110, column: 10, scope: !76)
!161 = !DILocation(line: 110, column: 15, scope: !76)
!162 = !DILocation(line: 110, column: 5, scope: !76)
!163 = !DILocation(line: 111, column: 10, scope: !76)
!164 = !DILocation(line: 111, column: 5, scope: !76)
!165 = !DILocation(line: 113, column: 5, scope: !76)
!166 = !DILocation(line: 114, column: 1, scope: !76)
