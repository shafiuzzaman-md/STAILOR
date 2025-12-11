; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/056_HTMLparser.c_2185_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/056_HTMLparser.c_2185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._htmlParserCtxt = type { i32 }
%struct._xmlEntity = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ent_name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"outend\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"(len <= (*outend - *out)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/056_HTMLparser.c_2185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlCurrentChar = private unnamed_addr constant [59 x i8] c"int htmlCurrentChar(htmlParserCtxt *, int *, int *, int *)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"main_in\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"main_out\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"main_outend\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htmlCurrentChar(%struct._htmlParserCtxt* noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3) #0 !dbg !14 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._htmlParserCtxt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct._xmlEntity*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._htmlParserCtxt* %0, %struct._htmlParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt** %6, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %10, metadata !33, metadata !DIExpression()), !dbg !41
  store %struct._xmlEntity* null, %struct._xmlEntity** %10, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata i8** %11, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* null, i8** %11, align 8, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %12, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %12, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %13, metadata !46, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %13, align 4, !dbg !47
  %14 = load %struct._htmlParserCtxt*, %struct._htmlParserCtxt** %6, align 8, !dbg !48
  %15 = icmp eq %struct._htmlParserCtxt* %14, null, !dbg !50
  br i1 %15, label %25, label %16, !dbg !51

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8, !dbg !52
  %18 = icmp eq i32* %17, null, !dbg !53
  br i1 %18, label %25, label %19, !dbg !54

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8, !dbg !55
  %21 = icmp eq i32* %20, null, !dbg !56
  br i1 %21, label %25, label %22, !dbg !57

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8, !dbg !58
  %24 = icmp eq i32* %23, null, !dbg !59
  br i1 %24, label %25, label %26, !dbg !60

25:                                               ; preds = %22, %19, %16, %4
  store i32 -1, i32* %5, align 4, !dbg !61
  br label %117, !dbg !61

26:                                               ; preds = %22
  %27 = bitcast %struct._xmlEntity** %10 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !64
  %28 = load %struct._xmlEntity*, %struct._xmlEntity** %10, align 8, !dbg !65
  %29 = icmp ne %struct._xmlEntity* %28, null, !dbg !66
  %30 = zext i1 %29 to i32, !dbg !66
  %31 = sext i32 %30 to i64, !dbg !65
  call void @klee_assume(i64 noundef %31), !dbg !67
  %32 = load %struct._xmlEntity*, %struct._xmlEntity** %10, align 8, !dbg !68
  %33 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %32, i32 0, i32 0, !dbg !69
  %34 = bitcast i8** %33 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !71
  %35 = load %struct._xmlEntity*, %struct._xmlEntity** %10, align 8, !dbg !72
  %36 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %35, i32 0, i32 0, !dbg !73
  %37 = load i8*, i8** %36, align 8, !dbg !73
  %38 = icmp ne i8* %37, null, !dbg !74
  %39 = zext i1 %38 to i32, !dbg !74
  %40 = sext i32 %39 to i64, !dbg !72
  call void @klee_assume(i64 noundef %40), !dbg !75
  %41 = load %struct._xmlEntity*, %struct._xmlEntity** %10, align 8, !dbg !76
  %42 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %41, i32 0, i32 0, !dbg !77
  %43 = load i8*, i8** %42, align 8, !dbg !77
  store i8* %43, i8** %11, align 8, !dbg !78
  %44 = load i8*, i8** %11, align 8, !dbg !79
  %45 = call i64 @strlen(i8* noundef %44) #7, !dbg !80
  %46 = trunc i64 %45 to i32, !dbg !80
  store i32 %46, i32* %12, align 4, !dbg !81
  %47 = load i32*, i32** %7, align 8, !dbg !82
  %48 = bitcast i32* %47 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef 4, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)), !dbg !83
  %49 = load i32*, i32** %8, align 8, !dbg !84
  %50 = bitcast i32* %49 to i8*, !dbg !84
  call void @klee_make_symbolic(i8* noundef %50, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !85
  %51 = load i32*, i32** %9, align 8, !dbg !86
  %52 = bitcast i32* %51 to i8*, !dbg !86
  call void @klee_make_symbolic(i8* noundef %52, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !87
  %53 = load i32*, i32** %7, align 8, !dbg !88
  %54 = load i32, i32* %53, align 4, !dbg !89
  %55 = icmp sge i32 %54, 0, !dbg !90
  %56 = zext i1 %55 to i32, !dbg !90
  %57 = sext i32 %56 to i64, !dbg !89
  call void @klee_assume(i64 noundef %57), !dbg !91
  %58 = load i32*, i32** %8, align 8, !dbg !92
  %59 = load i32, i32* %58, align 4, !dbg !93
  %60 = icmp sge i32 %59, 0, !dbg !94
  %61 = zext i1 %60 to i32, !dbg !94
  %62 = sext i32 %61 to i64, !dbg !93
  call void @klee_assume(i64 noundef %62), !dbg !95
  %63 = load i32*, i32** %9, align 8, !dbg !96
  %64 = load i32, i32* %63, align 4, !dbg !97
  %65 = icmp sge i32 %64, 0, !dbg !98
  %66 = zext i1 %65 to i32, !dbg !98
  %67 = sext i32 %66 to i64, !dbg !97
  call void @klee_assume(i64 noundef %67), !dbg !99
  %68 = load i32, i32* %12, align 4, !dbg !100
  %69 = icmp sge i32 %68, 0, !dbg !101
  %70 = zext i1 %69 to i32, !dbg !101
  %71 = sext i32 %70 to i64, !dbg !100
  call void @klee_assume(i64 noundef %71), !dbg !102
  %72 = load i32*, i32** %8, align 8, !dbg !103
  %73 = load i32, i32* %72, align 4, !dbg !105
  %74 = add nsw i32 %73, 2, !dbg !106
  %75 = load i32, i32* %12, align 4, !dbg !107
  %76 = add nsw i32 %74, %75, !dbg !108
  %77 = load i32*, i32** %9, align 8, !dbg !109
  %78 = load i32, i32* %77, align 4, !dbg !110
  %79 = icmp sge i32 %76, %78, !dbg !111
  br i1 %79, label %80, label %82, !dbg !112

80:                                               ; preds = %26
  %81 = load i32, i32* %13, align 4, !dbg !113
  store i32 %81, i32* %5, align 4, !dbg !115
  br label %117, !dbg !115

82:                                               ; preds = %26
  %83 = load i32*, i32** %8, align 8, !dbg !116
  %84 = load i32, i32* %83, align 4, !dbg !117
  %85 = add nsw i32 %84, 1, !dbg !117
  store i32 %85, i32* %83, align 4, !dbg !117
  %86 = load i32, i32* %12, align 4, !dbg !118
  %87 = load i32*, i32** %9, align 8, !dbg !118
  %88 = load i32, i32* %87, align 4, !dbg !118
  %89 = load i32*, i32** %8, align 8, !dbg !118
  %90 = load i32, i32* %89, align 4, !dbg !118
  %91 = sub nsw i32 %88, %90, !dbg !118
  %92 = icmp sle i32 %86, %91, !dbg !118
  br i1 %92, label %93, label %95, !dbg !118

93:                                               ; preds = %82
  br i1 true, label %94, label %95, !dbg !118

94:                                               ; preds = %93
  br label %97, !dbg !118

95:                                               ; preds = %93, %82
  %96 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.htmlCurrentChar, i64 0, i64 0)), !dbg !118
  br label %97, !dbg !118

97:                                               ; preds = %95, %94
  %98 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.htmlCurrentChar, i64 0, i64 0)), !dbg !119
  %99 = load i32*, i32** %8, align 8, !dbg !120
  %100 = load i32, i32* %99, align 4, !dbg !121
  %101 = sext i32 %100 to i64, !dbg !122
  %102 = inttoptr i64 %101 to i8*, !dbg !122
  %103 = load i8*, i8** %11, align 8, !dbg !123
  %104 = load i32, i32* %12, align 4, !dbg !124
  %105 = sext i32 %104 to i64, !dbg !124
  %106 = call i8* @memcpy(i8* %102, i8* %103, i64 %105), !dbg !125
  %107 = load i32, i32* %12, align 4, !dbg !126
  %108 = load i32*, i32** %8, align 8, !dbg !127
  %109 = load i32, i32* %108, align 4, !dbg !128
  %110 = add nsw i32 %109, %107, !dbg !128
  store i32 %110, i32* %108, align 4, !dbg !128
  %111 = load i32*, i32** %8, align 8, !dbg !129
  %112 = load i32, i32* %111, align 4, !dbg !130
  %113 = add nsw i32 %112, 1, !dbg !130
  store i32 %113, i32* %111, align 4, !dbg !130
  %114 = load i32*, i32** %7, align 8, !dbg !131
  %115 = load i32, i32* %114, align 4, !dbg !132
  store i32 %115, i32* %13, align 4, !dbg !133
  %116 = load i32, i32* %13, align 4, !dbg !134
  store i32 %116, i32* %5, align 4, !dbg !135
  br label %117, !dbg !135

117:                                              ; preds = %97, %80, %25
  %118 = load i32, i32* %5, align 4, !dbg !136
  ret i32 %118, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !137 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._htmlParserCtxt, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._htmlParserCtxt* %2, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %3, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %4, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %5, metadata !146, metadata !DIExpression()), !dbg !147
  %6 = bitcast %struct._htmlParserCtxt* %2 to i8*, !dbg !148
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)), !dbg !149
  %7 = bitcast i32* %3 to i8*, !dbg !150
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)), !dbg !151
  %8 = bitcast i32* %4 to i8*, !dbg !152
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !153
  %9 = bitcast i32* %5 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)), !dbg !155
  %10 = call i32 @htmlCurrentChar(%struct._htmlParserCtxt* noundef %2, i32* noundef %3, i32* noundef %4, i32* noundef %5), !dbg !156
  ret i32 0, !dbg !157
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !158 {
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
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !174
  %9 = load i8*, i8** %4, align 8, !dbg !175
  store i8* %9, i8** %7, align 8, !dbg !174
  call void @llvm.dbg.declare(metadata i8** %8, metadata !176, metadata !DIExpression()), !dbg !179
  %10 = load i8*, i8** %5, align 8, !dbg !180
  store i8* %10, i8** %8, align 8, !dbg !179
  br label %11, !dbg !181

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !182
  %13 = add i64 %12, -1, !dbg !182
  store i64 %13, i64* %6, align 8, !dbg !182
  %14 = icmp ugt i64 %12, 0, !dbg !183
  br i1 %14, label %15, label %21, !dbg !181

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !184
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !184
  store i8* %17, i8** %8, align 8, !dbg !184
  %18 = load i8, i8* %16, align 1, !dbg !185
  %19 = load i8*, i8** %7, align 8, !dbg !186
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !186
  store i8* %20, i8** %7, align 8, !dbg !186
  store i8 %18, i8* %19, align 1, !dbg !187
  br label %11, !dbg !181, !llvm.loop !188

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !190
  ret i8* %22, !dbg !191
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/056_HTMLparser.c_2185_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ef89c80b7102a050363c7c2162feae0b")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "htmlCurrentChar", scope: !1, file: !1, line: 17, type: !15, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !23, !23, !23}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "htmlParserCtxt", file: !1, line: 15, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_htmlParserCtxt", file: !1, line: 13, size: 32, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "inputNr", scope: !20, file: !1, line: 14, baseType: !17, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!24 = !{}
!25 = !DILocalVariable(name: "ctxt", arg: 1, scope: !14, file: !1, line: 17, type: !18)
!26 = !DILocation(line: 17, column: 37, scope: !14)
!27 = !DILocalVariable(name: "in", arg: 2, scope: !14, file: !1, line: 17, type: !23)
!28 = !DILocation(line: 17, column: 48, scope: !14)
!29 = !DILocalVariable(name: "out", arg: 3, scope: !14, file: !1, line: 17, type: !23)
!30 = !DILocation(line: 17, column: 57, scope: !14)
!31 = !DILocalVariable(name: "outend", arg: 4, scope: !14, file: !1, line: 17, type: !23)
!32 = !DILocation(line: 17, column: 67, scope: !14)
!33 = !DILocalVariable(name: "ent", scope: !14, file: !1, line: 18, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 11, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 9, size: 64, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !1, line: 10, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !DILocation(line: 18, column: 16, scope: !14)
!42 = !DILocalVariable(name: "cp", scope: !14, file: !1, line: 19, type: !39)
!43 = !DILocation(line: 19, column: 11, scope: !14)
!44 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 20, type: !17)
!45 = !DILocation(line: 20, column: 9, scope: !14)
!46 = !DILocalVariable(name: "processed", scope: !14, file: !1, line: 21, type: !17)
!47 = !DILocation(line: 21, column: 9, scope: !14)
!48 = !DILocation(line: 23, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !14, file: !1, line: 23, column: 9)
!50 = !DILocation(line: 23, column: 14, scope: !49)
!51 = !DILocation(line: 23, column: 22, scope: !49)
!52 = !DILocation(line: 23, column: 25, scope: !49)
!53 = !DILocation(line: 23, column: 28, scope: !49)
!54 = !DILocation(line: 23, column: 36, scope: !49)
!55 = !DILocation(line: 23, column: 39, scope: !49)
!56 = !DILocation(line: 23, column: 43, scope: !49)
!57 = !DILocation(line: 23, column: 51, scope: !49)
!58 = !DILocation(line: 23, column: 54, scope: !49)
!59 = !DILocation(line: 23, column: 61, scope: !49)
!60 = !DILocation(line: 23, column: 9, scope: !14)
!61 = !DILocation(line: 24, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !49, file: !1, line: 23, column: 70)
!63 = !DILocation(line: 27, column: 24, scope: !14)
!64 = !DILocation(line: 27, column: 5, scope: !14)
!65 = !DILocation(line: 28, column: 17, scope: !14)
!66 = !DILocation(line: 28, column: 21, scope: !14)
!67 = !DILocation(line: 28, column: 5, scope: !14)
!68 = !DILocation(line: 30, column: 25, scope: !14)
!69 = !DILocation(line: 30, column: 30, scope: !14)
!70 = !DILocation(line: 30, column: 24, scope: !14)
!71 = !DILocation(line: 30, column: 5, scope: !14)
!72 = !DILocation(line: 31, column: 17, scope: !14)
!73 = !DILocation(line: 31, column: 22, scope: !14)
!74 = !DILocation(line: 31, column: 27, scope: !14)
!75 = !DILocation(line: 31, column: 5, scope: !14)
!76 = !DILocation(line: 33, column: 10, scope: !14)
!77 = !DILocation(line: 33, column: 15, scope: !14)
!78 = !DILocation(line: 33, column: 8, scope: !14)
!79 = !DILocation(line: 34, column: 18, scope: !14)
!80 = !DILocation(line: 34, column: 11, scope: !14)
!81 = !DILocation(line: 34, column: 9, scope: !14)
!82 = !DILocation(line: 36, column: 24, scope: !14)
!83 = !DILocation(line: 36, column: 5, scope: !14)
!84 = !DILocation(line: 37, column: 24, scope: !14)
!85 = !DILocation(line: 37, column: 5, scope: !14)
!86 = !DILocation(line: 38, column: 24, scope: !14)
!87 = !DILocation(line: 38, column: 5, scope: !14)
!88 = !DILocation(line: 40, column: 18, scope: !14)
!89 = !DILocation(line: 40, column: 17, scope: !14)
!90 = !DILocation(line: 40, column: 21, scope: !14)
!91 = !DILocation(line: 40, column: 5, scope: !14)
!92 = !DILocation(line: 41, column: 18, scope: !14)
!93 = !DILocation(line: 41, column: 17, scope: !14)
!94 = !DILocation(line: 41, column: 22, scope: !14)
!95 = !DILocation(line: 41, column: 5, scope: !14)
!96 = !DILocation(line: 42, column: 18, scope: !14)
!97 = !DILocation(line: 42, column: 17, scope: !14)
!98 = !DILocation(line: 42, column: 25, scope: !14)
!99 = !DILocation(line: 42, column: 5, scope: !14)
!100 = !DILocation(line: 43, column: 17, scope: !14)
!101 = !DILocation(line: 43, column: 21, scope: !14)
!102 = !DILocation(line: 43, column: 5, scope: !14)
!103 = !DILocation(line: 45, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !14, file: !1, line: 45, column: 9)
!105 = !DILocation(line: 45, column: 9, scope: !104)
!106 = !DILocation(line: 45, column: 14, scope: !104)
!107 = !DILocation(line: 45, column: 20, scope: !104)
!108 = !DILocation(line: 45, column: 18, scope: !104)
!109 = !DILocation(line: 45, column: 28, scope: !104)
!110 = !DILocation(line: 45, column: 27, scope: !104)
!111 = !DILocation(line: 45, column: 24, scope: !104)
!112 = !DILocation(line: 45, column: 9, scope: !14)
!113 = !DILocation(line: 46, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !104, file: !1, line: 45, column: 36)
!115 = !DILocation(line: 46, column: 9, scope: !114)
!116 = !DILocation(line: 49, column: 6, scope: !14)
!117 = !DILocation(line: 49, column: 10, scope: !14)
!118 = !DILocation(line: 51, column: 5, scope: !14)
!119 = !DILocation(line: 53, column: 5, scope: !14)
!120 = !DILocation(line: 55, column: 20, scope: !14)
!121 = !DILocation(line: 55, column: 19, scope: !14)
!122 = !DILocation(line: 55, column: 12, scope: !14)
!123 = !DILocation(line: 55, column: 25, scope: !14)
!124 = !DILocation(line: 55, column: 29, scope: !14)
!125 = !DILocation(line: 55, column: 5, scope: !14)
!126 = !DILocation(line: 56, column: 13, scope: !14)
!127 = !DILocation(line: 56, column: 6, scope: !14)
!128 = !DILocation(line: 56, column: 10, scope: !14)
!129 = !DILocation(line: 57, column: 6, scope: !14)
!130 = !DILocation(line: 57, column: 10, scope: !14)
!131 = !DILocation(line: 59, column: 18, scope: !14)
!132 = !DILocation(line: 59, column: 17, scope: !14)
!133 = !DILocation(line: 59, column: 15, scope: !14)
!134 = !DILocation(line: 60, column: 12, scope: !14)
!135 = !DILocation(line: 60, column: 5, scope: !14)
!136 = !DILocation(line: 61, column: 1, scope: !14)
!137 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !138, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!138 = !DISubroutineType(types: !139)
!139 = !{!17}
!140 = !DILocalVariable(name: "ctxt", scope: !137, file: !1, line: 64, type: !19)
!141 = !DILocation(line: 64, column: 20, scope: !137)
!142 = !DILocalVariable(name: "in", scope: !137, file: !1, line: 65, type: !17)
!143 = !DILocation(line: 65, column: 9, scope: !137)
!144 = !DILocalVariable(name: "out", scope: !137, file: !1, line: 65, type: !17)
!145 = !DILocation(line: 65, column: 13, scope: !137)
!146 = !DILocalVariable(name: "outend", scope: !137, file: !1, line: 65, type: !17)
!147 = !DILocation(line: 65, column: 18, scope: !137)
!148 = !DILocation(line: 67, column: 24, scope: !137)
!149 = !DILocation(line: 67, column: 5, scope: !137)
!150 = !DILocation(line: 68, column: 24, scope: !137)
!151 = !DILocation(line: 68, column: 5, scope: !137)
!152 = !DILocation(line: 69, column: 24, scope: !137)
!153 = !DILocation(line: 69, column: 5, scope: !137)
!154 = !DILocation(line: 70, column: 24, scope: !137)
!155 = !DILocation(line: 70, column: 5, scope: !137)
!156 = !DILocation(line: 72, column: 5, scope: !137)
!157 = !DILocation(line: 74, column: 5, scope: !137)
!158 = distinct !DISubprogram(name: "memcpy", scope: !159, file: !159, line: 12, type: !160, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !24)
!159 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!160 = !DISubroutineType(types: !161)
!161 = !{!3, !3, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DILocalVariable(name: "destaddr", arg: 1, scope: !158, file: !159, line: 12, type: !3)
!168 = !DILocation(line: 12, column: 20, scope: !158)
!169 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !158, file: !159, line: 12, type: !162)
!170 = !DILocation(line: 12, column: 42, scope: !158)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !158, file: !159, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 58, scope: !158)
!173 = !DILocalVariable(name: "dest", scope: !158, file: !159, line: 13, type: !39)
!174 = !DILocation(line: 13, column: 9, scope: !158)
!175 = !DILocation(line: 13, column: 16, scope: !158)
!176 = !DILocalVariable(name: "src", scope: !158, file: !159, line: 14, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!179 = !DILocation(line: 14, column: 15, scope: !158)
!180 = !DILocation(line: 14, column: 21, scope: !158)
!181 = !DILocation(line: 16, column: 3, scope: !158)
!182 = !DILocation(line: 16, column: 13, scope: !158)
!183 = !DILocation(line: 16, column: 16, scope: !158)
!184 = !DILocation(line: 17, column: 19, scope: !158)
!185 = !DILocation(line: 17, column: 15, scope: !158)
!186 = !DILocation(line: 17, column: 10, scope: !158)
!187 = !DILocation(line: 17, column: 13, scope: !158)
!188 = distinct !{!188, !181, !184, !189}
!189 = !{!"llvm.loop.mustprogress"}
!190 = !DILocation(line: 18, column: 10, scope: !158)
!191 = !DILocation(line: 18, column: 3, scope: !158)
