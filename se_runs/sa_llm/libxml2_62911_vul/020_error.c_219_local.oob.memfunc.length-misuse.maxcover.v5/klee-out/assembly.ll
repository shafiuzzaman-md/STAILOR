; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlError = type { i32, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"(n <= sizeof(content)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.__xmlRaiseError = private unnamed_addr constant [151 x i8] c"void __xmlRaiseError(void *, struct _xmlError *, void *, void *, int, int, int, const char *, int, const char *, const char *, const char *, int, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"userData\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"nod\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"int1\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"int2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"str1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"str3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xmlRaiseError(i8* noundef %0, %struct._xmlError* noundef %1, i8* noundef %2, i8* noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8* noundef %7, i32 noundef %8, i8* noundef %9, i8* noundef %10, i8* noundef %11, i32 noundef %12, i32 noundef %13) #0 !dbg !12 {
  %15 = alloca i8*, align 8
  %16 = alloca %struct._xmlError*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [1000 x i8], align 16
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !36, metadata !DIExpression()), !dbg !37
  store %struct._xmlError* %1, %struct._xmlError** %16, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlError** %16, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %2, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %3, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %4, i32* %19, align 4
  call void @llvm.dbg.declare(metadata i32* %19, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 %5, i32* %20, align 4
  call void @llvm.dbg.declare(metadata i32* %20, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 %6, i32* %21, align 4
  call void @llvm.dbg.declare(metadata i32* %21, metadata !48, metadata !DIExpression()), !dbg !49
  store i8* %7, i8** %22, align 8
  call void @llvm.dbg.declare(metadata i8** %22, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 %8, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %9, i8** %24, align 8
  call void @llvm.dbg.declare(metadata i8** %24, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %10, i8** %25, align 8
  call void @llvm.dbg.declare(metadata i8** %25, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %11, i8** %26, align 8
  call void @llvm.dbg.declare(metadata i8** %26, metadata !58, metadata !DIExpression()), !dbg !59
  store i32 %12, i32* %27, align 4
  call void @llvm.dbg.declare(metadata i32* %27, metadata !60, metadata !DIExpression()), !dbg !61
  store i32 %13, i32* %28, align 4
  call void @llvm.dbg.declare(metadata i32* %28, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [1000 x i8]* %29, metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %30, metadata !69, metadata !DIExpression()), !dbg !70
  %34 = load i8*, i8** %24, align 8, !dbg !71
  store i8* %34, i8** %30, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %31, metadata !72, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %31, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %32, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %33, metadata !76, metadata !DIExpression()), !dbg !77
  %35 = load i8*, i8** %30, align 8, !dbg !78
  %36 = icmp eq i8* %35, null, !dbg !80
  br i1 %36, label %37, label %38, !dbg !81

37:                                               ; preds = %14
  br label %79, !dbg !82

38:                                               ; preds = %14
  br label %39, !dbg !83

39:                                               ; preds = %38, %61
  %40 = load i8*, i8** %30, align 8, !dbg !84
  %41 = load i8, i8* %40, align 1, !dbg !86
  %42 = sext i8 %41 to i32, !dbg !86
  store i32 %42, i32* %32, align 4, !dbg !87
  %43 = load i32, i32* %32, align 4, !dbg !88
  %44 = icmp eq i32 %43, 0, !dbg !90
  br i1 %44, label %45, label %46, !dbg !91

45:                                               ; preds = %39
  br label %69, !dbg !92

46:                                               ; preds = %39
  %47 = bitcast i32* %33 to i8*, !dbg !93
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !94
  %48 = load i32, i32* %33, align 4, !dbg !95
  %49 = icmp sge i32 %48, 0, !dbg !96
  %50 = zext i1 %49 to i32, !dbg !96
  %51 = sext i32 %50 to i64, !dbg !95
  call void @klee_assume(i64 noundef %51), !dbg !97
  %52 = load i32, i32* %32, align 4, !dbg !98
  %53 = icmp slt i32 %52, 0, !dbg !100
  br i1 %53, label %60, label %54, !dbg !101

54:                                               ; preds = %46
  %55 = load i32, i32* %31, align 4, !dbg !102
  %56 = load i32, i32* %33, align 4, !dbg !103
  %57 = add nsw i32 %55, %56, !dbg !104
  %58 = sext i32 %57 to i64, !dbg !102
  %59 = icmp ugt i64 %58, 999, !dbg !105
  br i1 %59, label %60, label %61, !dbg !106

60:                                               ; preds = %54, %46
  br label %69, !dbg !107

61:                                               ; preds = %54
  %62 = load i32, i32* %33, align 4, !dbg !108
  %63 = load i32, i32* %31, align 4, !dbg !109
  %64 = add nsw i32 %63, %62, !dbg !109
  store i32 %64, i32* %31, align 4, !dbg !109
  %65 = load i32, i32* %33, align 4, !dbg !110
  %66 = load i8*, i8** %30, align 8, !dbg !111
  %67 = sext i32 %65 to i64, !dbg !111
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !111
  store i8* %68, i8** %30, align 8, !dbg !111
  br label %39, !dbg !83, !llvm.loop !112

69:                                               ; preds = %60, %45
  %70 = load i32, i32* %31, align 4, !dbg !114
  %71 = sext i32 %70 to i64, !dbg !114
  %72 = icmp ule i64 %71, 1000, !dbg !114
  br i1 %72, label %73, label %75, !dbg !114

73:                                               ; preds = %69
  br i1 true, label %74, label %75, !dbg !114

74:                                               ; preds = %73
  br label %77, !dbg !114

75:                                               ; preds = %73, %69
  %76 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 62, i8* noundef getelementptr inbounds ([151 x i8], [151 x i8]* @__PRETTY_FUNCTION__.__xmlRaiseError, i64 0, i64 0)), !dbg !114
  br label %77, !dbg !114

77:                                               ; preds = %75, %74
  %78 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([151 x i8], [151 x i8]* @__PRETTY_FUNCTION__.__xmlRaiseError, i64 0, i64 0)), !dbg !115
  br label %79, !dbg !116

79:                                               ; preds = %77, %37
  ret void, !dbg !116
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !117 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlError, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [100 x i8], align 16
  %14 = alloca [100 x i8], align 16
  %15 = alloca [100 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlError* %2, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i8** %3, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata i8** %4, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %5, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %6, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32* %7, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %8, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %9, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %10, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %11, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %12, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [100 x i8]* %13, metadata !142, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [100 x i8]* %14, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %15, metadata !149, metadata !DIExpression()), !dbg !150
  %16 = bitcast i8** %3 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !152
  %17 = bitcast %struct._xmlError* %2 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 80, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)), !dbg !154
  %18 = bitcast i8** %4 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !156
  %19 = bitcast i8** %5 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !158
  %20 = bitcast i32* %6 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !160
  %21 = bitcast i32* %7 to i8*, !dbg !161
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)), !dbg !162
  %22 = bitcast i32* %8 to i8*, !dbg !163
  call void @klee_make_symbolic(i8* noundef %22, i64 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)), !dbg !164
  %23 = bitcast i32* %9 to i8*, !dbg !165
  call void @klee_make_symbolic(i8* noundef %23, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)), !dbg !166
  %24 = bitcast i32* %10 to i8*, !dbg !167
  call void @klee_make_symbolic(i8* noundef %24, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)), !dbg !168
  %25 = bitcast i32* %11 to i8*, !dbg !169
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)), !dbg !170
  %26 = bitcast i8** %12 to i8*, !dbg !171
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)), !dbg !172
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0, !dbg !173
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)), !dbg !174
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0, !dbg !175
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)), !dbg !176
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0, !dbg !177
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)), !dbg !178
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 99, !dbg !179
  store i8 0, i8* %30, align 1, !dbg !180
  %31 = load i8*, i8** %3, align 8, !dbg !181
  %32 = load i8*, i8** %4, align 8, !dbg !182
  %33 = load i8*, i8** %5, align 8, !dbg !183
  %34 = load i32, i32* %6, align 4, !dbg !184
  %35 = load i32, i32* %7, align 4, !dbg !185
  %36 = load i32, i32* %8, align 4, !dbg !186
  %37 = load i8*, i8** %12, align 8, !dbg !187
  %38 = load i32, i32* %9, align 4, !dbg !188
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0, !dbg !189
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0, !dbg !190
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0, !dbg !191
  %42 = load i32, i32* %10, align 4, !dbg !192
  %43 = load i32, i32* %11, align 4, !dbg !193
  call void @__xmlRaiseError(i8* noundef %31, %struct._xmlError* noundef %2, i8* noundef %32, i8* noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i8* noundef %37, i32 noundef %38, i8* noundef %39, i8* noundef %40, i8* noundef %41, i32 noundef %42, i32 noundef %43), !dbg !194
  ret i32 0, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/020_error.c_219_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "712663543e841595d3e30f85d911d364")
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
!12 = distinct !DISubprogram(name: "__xmlRaiseError", scope: !1, file: !1, line: 29, type: !13, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !3, !15, !3, !3, !19, !19, !19, !33, !19, !33, !33, !33, !19, !19}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlError", file: !1, line: 13, size: 640, elements: !17)
!17 = !{!18, !20, !21, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !16, file: !1, line: 14, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !16, file: !1, line: 15, baseType: !19, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !16, file: !1, line: 16, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !16, file: !1, line: 17, baseType: !19, size: 32, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !16, file: !1, line: 18, baseType: !22, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !16, file: !1, line: 19, baseType: !19, size: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "str1", scope: !16, file: !1, line: 20, baseType: !22, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "str2", scope: !16, file: !1, line: 21, baseType: !22, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "str3", scope: !16, file: !1, line: 22, baseType: !22, size: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "int1", scope: !16, file: !1, line: 23, baseType: !19, size: 32, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "int2", scope: !16, file: !1, line: 24, baseType: !19, size: 32, offset: 544)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ctxt", scope: !16, file: !1, line: 25, baseType: !3, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!35 = !{}
!36 = !DILocalVariable(name: "userData", arg: 1, scope: !12, file: !1, line: 29, type: !3)
!37 = !DILocation(line: 29, column: 28, scope: !12)
!38 = !DILocalVariable(name: "error", arg: 2, scope: !12, file: !1, line: 29, type: !15)
!39 = !DILocation(line: 29, column: 56, scope: !12)
!40 = !DILocalVariable(name: "ctx", arg: 3, scope: !12, file: !1, line: 30, type: !3)
!41 = !DILocation(line: 30, column: 28, scope: !12)
!42 = !DILocalVariable(name: "nod", arg: 4, scope: !12, file: !1, line: 30, type: !3)
!43 = !DILocation(line: 30, column: 39, scope: !12)
!44 = !DILocalVariable(name: "domain", arg: 5, scope: !12, file: !1, line: 30, type: !19)
!45 = !DILocation(line: 30, column: 48, scope: !12)
!46 = !DILocalVariable(name: "code", arg: 6, scope: !12, file: !1, line: 30, type: !19)
!47 = !DILocation(line: 30, column: 60, scope: !12)
!48 = !DILocalVariable(name: "level", arg: 7, scope: !12, file: !1, line: 31, type: !19)
!49 = !DILocation(line: 31, column: 26, scope: !12)
!50 = !DILocalVariable(name: "file", arg: 8, scope: !12, file: !1, line: 31, type: !33)
!51 = !DILocation(line: 31, column: 45, scope: !12)
!52 = !DILocalVariable(name: "line", arg: 9, scope: !12, file: !1, line: 31, type: !19)
!53 = !DILocation(line: 31, column: 55, scope: !12)
!54 = !DILocalVariable(name: "str1", arg: 10, scope: !12, file: !1, line: 32, type: !33)
!55 = !DILocation(line: 32, column: 34, scope: !12)
!56 = !DILocalVariable(name: "str2", arg: 11, scope: !12, file: !1, line: 32, type: !33)
!57 = !DILocation(line: 32, column: 52, scope: !12)
!58 = !DILocalVariable(name: "str3", arg: 12, scope: !12, file: !1, line: 33, type: !33)
!59 = !DILocation(line: 33, column: 34, scope: !12)
!60 = !DILocalVariable(name: "int1", arg: 13, scope: !12, file: !1, line: 33, type: !19)
!61 = !DILocation(line: 33, column: 44, scope: !12)
!62 = !DILocalVariable(name: "int2", arg: 14, scope: !12, file: !1, line: 33, type: !19)
!63 = !DILocation(line: 33, column: 54, scope: !12)
!64 = !DILocalVariable(name: "content", scope: !12, file: !1, line: 35, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8000, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1000)
!68 = !DILocation(line: 35, column: 10, scope: !12)
!69 = !DILocalVariable(name: "start", scope: !12, file: !1, line: 36, type: !33)
!70 = !DILocation(line: 36, column: 17, scope: !12)
!71 = !DILocation(line: 36, column: 25, scope: !12)
!72 = !DILocalVariable(name: "n", scope: !12, file: !1, line: 37, type: !19)
!73 = !DILocation(line: 37, column: 9, scope: !12)
!74 = !DILocalVariable(name: "c", scope: !12, file: !1, line: 38, type: !19)
!75 = !DILocation(line: 38, column: 9, scope: !12)
!76 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 39, type: !19)
!77 = !DILocation(line: 39, column: 9, scope: !12)
!78 = !DILocation(line: 41, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !12, file: !1, line: 41, column: 9)
!80 = !DILocation(line: 41, column: 15, scope: !79)
!81 = !DILocation(line: 41, column: 9, scope: !12)
!82 = !DILocation(line: 41, column: 24, scope: !79)
!83 = !DILocation(line: 44, column: 5, scope: !12)
!84 = !DILocation(line: 45, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !12, file: !1, line: 44, column: 15)
!86 = !DILocation(line: 45, column: 13, scope: !85)
!87 = !DILocation(line: 45, column: 11, scope: !85)
!88 = !DILocation(line: 46, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 46, column: 13)
!90 = !DILocation(line: 46, column: 15, scope: !89)
!91 = !DILocation(line: 46, column: 13, scope: !85)
!92 = !DILocation(line: 46, column: 21, scope: !89)
!93 = !DILocation(line: 49, column: 28, scope: !85)
!94 = !DILocation(line: 49, column: 9, scope: !85)
!95 = !DILocation(line: 50, column: 21, scope: !85)
!96 = !DILocation(line: 50, column: 25, scope: !85)
!97 = !DILocation(line: 50, column: 9, scope: !85)
!98 = !DILocation(line: 53, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !85, file: !1, line: 53, column: 13)
!100 = !DILocation(line: 53, column: 16, scope: !99)
!101 = !DILocation(line: 53, column: 21, scope: !99)
!102 = !DILocation(line: 53, column: 25, scope: !99)
!103 = !DILocation(line: 53, column: 29, scope: !99)
!104 = !DILocation(line: 53, column: 27, scope: !99)
!105 = !DILocation(line: 53, column: 33, scope: !99)
!106 = !DILocation(line: 53, column: 13, scope: !85)
!107 = !DILocation(line: 54, column: 13, scope: !99)
!108 = !DILocation(line: 56, column: 14, scope: !85)
!109 = !DILocation(line: 56, column: 11, scope: !85)
!110 = !DILocation(line: 57, column: 18, scope: !85)
!111 = !DILocation(line: 57, column: 15, scope: !85)
!112 = distinct !{!112, !83, !113}
!113 = !DILocation(line: 58, column: 5, scope: !12)
!114 = !DILocation(line: 62, column: 5, scope: !12)
!115 = !DILocation(line: 65, column: 5, scope: !12)
!116 = !DILocation(line: 69, column: 1, scope: !12)
!117 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !118, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!118 = !DISubroutineType(types: !119)
!119 = !{!19}
!120 = !DILocalVariable(name: "error", scope: !117, file: !1, line: 73, type: !16)
!121 = !DILocation(line: 73, column: 22, scope: !117)
!122 = !DILocalVariable(name: "userData", scope: !117, file: !1, line: 74, type: !3)
!123 = !DILocation(line: 74, column: 11, scope: !117)
!124 = !DILocalVariable(name: "ctx", scope: !117, file: !1, line: 75, type: !3)
!125 = !DILocation(line: 75, column: 11, scope: !117)
!126 = !DILocalVariable(name: "nod", scope: !117, file: !1, line: 76, type: !3)
!127 = !DILocation(line: 76, column: 11, scope: !117)
!128 = !DILocalVariable(name: "domain", scope: !117, file: !1, line: 77, type: !19)
!129 = !DILocation(line: 77, column: 9, scope: !117)
!130 = !DILocalVariable(name: "code", scope: !117, file: !1, line: 77, type: !19)
!131 = !DILocation(line: 77, column: 17, scope: !117)
!132 = !DILocalVariable(name: "level", scope: !117, file: !1, line: 77, type: !19)
!133 = !DILocation(line: 77, column: 23, scope: !117)
!134 = !DILocalVariable(name: "line", scope: !117, file: !1, line: 77, type: !19)
!135 = !DILocation(line: 77, column: 30, scope: !117)
!136 = !DILocalVariable(name: "int1", scope: !117, file: !1, line: 77, type: !19)
!137 = !DILocation(line: 77, column: 36, scope: !117)
!138 = !DILocalVariable(name: "int2", scope: !117, file: !1, line: 77, type: !19)
!139 = !DILocation(line: 77, column: 42, scope: !117)
!140 = !DILocalVariable(name: "file", scope: !117, file: !1, line: 78, type: !22)
!141 = !DILocation(line: 78, column: 11, scope: !117)
!142 = !DILocalVariable(name: "str1", scope: !117, file: !1, line: 79, type: !143)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 100)
!146 = !DILocation(line: 79, column: 10, scope: !117)
!147 = !DILocalVariable(name: "str2", scope: !117, file: !1, line: 80, type: !143)
!148 = !DILocation(line: 80, column: 10, scope: !117)
!149 = !DILocalVariable(name: "str3", scope: !117, file: !1, line: 81, type: !143)
!150 = !DILocation(line: 81, column: 10, scope: !117)
!151 = !DILocation(line: 84, column: 24, scope: !117)
!152 = !DILocation(line: 84, column: 5, scope: !117)
!153 = !DILocation(line: 85, column: 24, scope: !117)
!154 = !DILocation(line: 85, column: 5, scope: !117)
!155 = !DILocation(line: 86, column: 24, scope: !117)
!156 = !DILocation(line: 86, column: 5, scope: !117)
!157 = !DILocation(line: 87, column: 24, scope: !117)
!158 = !DILocation(line: 87, column: 5, scope: !117)
!159 = !DILocation(line: 88, column: 24, scope: !117)
!160 = !DILocation(line: 88, column: 5, scope: !117)
!161 = !DILocation(line: 89, column: 24, scope: !117)
!162 = !DILocation(line: 89, column: 5, scope: !117)
!163 = !DILocation(line: 90, column: 24, scope: !117)
!164 = !DILocation(line: 90, column: 5, scope: !117)
!165 = !DILocation(line: 91, column: 24, scope: !117)
!166 = !DILocation(line: 91, column: 5, scope: !117)
!167 = !DILocation(line: 92, column: 24, scope: !117)
!168 = !DILocation(line: 92, column: 5, scope: !117)
!169 = !DILocation(line: 93, column: 24, scope: !117)
!170 = !DILocation(line: 93, column: 5, scope: !117)
!171 = !DILocation(line: 94, column: 24, scope: !117)
!172 = !DILocation(line: 94, column: 5, scope: !117)
!173 = !DILocation(line: 97, column: 24, scope: !117)
!174 = !DILocation(line: 97, column: 5, scope: !117)
!175 = !DILocation(line: 98, column: 24, scope: !117)
!176 = !DILocation(line: 98, column: 5, scope: !117)
!177 = !DILocation(line: 99, column: 24, scope: !117)
!178 = !DILocation(line: 99, column: 5, scope: !117)
!179 = !DILocation(line: 102, column: 5, scope: !117)
!180 = !DILocation(line: 102, column: 26, scope: !117)
!181 = !DILocation(line: 105, column: 21, scope: !117)
!182 = !DILocation(line: 105, column: 39, scope: !117)
!183 = !DILocation(line: 105, column: 44, scope: !117)
!184 = !DILocation(line: 105, column: 49, scope: !117)
!185 = !DILocation(line: 105, column: 57, scope: !117)
!186 = !DILocation(line: 105, column: 63, scope: !117)
!187 = !DILocation(line: 106, column: 21, scope: !117)
!188 = !DILocation(line: 106, column: 27, scope: !117)
!189 = !DILocation(line: 106, column: 33, scope: !117)
!190 = !DILocation(line: 106, column: 39, scope: !117)
!191 = !DILocation(line: 106, column: 45, scope: !117)
!192 = !DILocation(line: 106, column: 51, scope: !117)
!193 = !DILocation(line: 106, column: 57, scope: !117)
!194 = !DILocation(line: 105, column: 5, scope: !117)
!195 = !DILocation(line: 108, column: 5, scope: !117)
