; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/018_runtest.c_4731_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/018_runtest.c_4731_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@xmlGenericErrorContext = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot create automata\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot get start state\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"(len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/018_runtest.c_4731_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.test_main = private unnamed_addr constant [20 x i8] c"int test_main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1, ...) #0 !dbg !77 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !85, metadata !DIExpression()), !dbg !86
  %5 = load i8*, i8** %3, align 8, !dbg !87
  %6 = load i8*, i8** %4, align 8, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeAutomata(i8* noundef %0) #0 !dbg !90 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !93, metadata !DIExpression()), !dbg !94
  %3 = load i8*, i8** %2, align 8, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlNewAutomata() #0 !dbg !97 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !100, metadata !DIExpression()), !dbg !101
  %2 = call noalias i8* @malloc(i64 noundef 1) #6, !dbg !102
  store i8* %2, i8** %1, align 8, !dbg !101
  %3 = load i8*, i8** %1, align 8, !dbg !103
  %4 = icmp ne i8* %3, null, !dbg !104
  %5 = zext i1 %4 to i32, !dbg !104
  %6 = sext i32 %5 to i64, !dbg !103
  call void @klee_assume(i64 noundef %6), !dbg !105
  %7 = load i8*, i8** %1, align 8, !dbg !106
  ret i8* %7, !dbg !107
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlAutomataGetInitState(i8* noundef %0) #0 !dbg !108 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !111, metadata !DIExpression()), !dbg !112
  %4 = load i8*, i8** %2, align 8, !dbg !113
  call void @llvm.dbg.declare(metadata i8** %3, metadata !114, metadata !DIExpression()), !dbg !115
  %5 = call noalias i8* @malloc(i64 noundef 1) #6, !dbg !116
  store i8* %5, i8** %3, align 8, !dbg !115
  %6 = load i8*, i8** %3, align 8, !dbg !117
  %7 = icmp ne i8* %6, null, !dbg !118
  %8 = zext i1 %7 to i32, !dbg !118
  %9 = sext i32 %8 to i64, !dbg !117
  call void @klee_assume(i64 noundef %9), !dbg !119
  %10 = load i8*, i8** %3, align 8, !dbg !120
  ret i8* %10, !dbg !121
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_main() #0 !dbg !122 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [4500 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [4500 x i8]* %3, metadata !127, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %4, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %5, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i8** %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !139
  %8 = call noalias i8* @malloc(i64 noundef 216) #6, !dbg !140
  %9 = bitcast i8* %8 to %struct._IO_FILE*, !dbg !141
  store %struct._IO_FILE* %9, %struct._IO_FILE** %2, align 8, !dbg !142
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !143
  %11 = icmp ne %struct._IO_FILE* %10, null, !dbg !144
  %12 = zext i1 %11 to i32, !dbg !144
  %13 = sext i32 %12 to i64, !dbg !143
  call void @klee_assume(i64 noundef %13), !dbg !145
  %14 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 0, !dbg !146
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4500, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !147
  %15 = call i8* @xmlNewAutomata(), !dbg !148
  store i8* %15, i8** %6, align 8, !dbg !149
  %16 = load i8*, i8** %6, align 8, !dbg !150
  %17 = icmp eq i8* %16, null, !dbg !152
  br i1 %17, label %18, label %20, !dbg !153

18:                                               ; preds = %0
  %19 = load i8*, i8** @xmlGenericErrorContext, align 8, !dbg !154
  call void (i8*, i8*, ...) @xmlGenericError(i8* noundef %19, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0)), !dbg !156
  store i32 -1, i32* %1, align 4, !dbg !157
  br label %107, !dbg !157

20:                                               ; preds = %0
  %21 = load i8*, i8** %6, align 8, !dbg !158
  %22 = call i8* @xmlAutomataGetInitState(i8* noundef %21), !dbg !159
  store i8* %22, i8** %7, align 8, !dbg !160
  %23 = load i8*, i8** %7, align 8, !dbg !161
  %24 = icmp eq i8* %23, null, !dbg !163
  br i1 %24, label %25, label %30, !dbg !164

25:                                               ; preds = %20
  %26 = load i8*, i8** @xmlGenericErrorContext, align 8, !dbg !165
  call void (i8*, i8*, ...) @xmlGenericError(i8* noundef %26, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0)), !dbg !167
  %27 = load i8*, i8** %6, align 8, !dbg !168
  call void @xmlFreeAutomata(i8* noundef %27), !dbg !169
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !170
  %29 = bitcast %struct._IO_FILE* %28 to i8*, !dbg !170
  call void @free(i8* noundef %29) #6, !dbg !171
  store i32 -1, i32* %1, align 4, !dbg !172
  br label %107, !dbg !172

30:                                               ; preds = %20
  store i32 0, i32* %5, align 4, !dbg !173
  %31 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 0, !dbg !174
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !175
  %33 = call i8* @fgets(i8* noundef %31, i32 noundef 4500, %struct._IO_FILE* noundef %32), !dbg !176
  %34 = icmp ne i8* %33, null, !dbg !177
  %35 = zext i1 %34 to i32, !dbg !177
  %36 = sext i32 %35 to i64, !dbg !176
  call void @klee_assume(i64 noundef %36), !dbg !178
  %37 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 0, !dbg !179
  %38 = load i8, i8* %37, align 16, !dbg !179
  %39 = sext i8 %38 to i32, !dbg !179
  %40 = icmp eq i32 %39, 35, !dbg !181
  br i1 %40, label %41, label %46, !dbg !182

41:                                               ; preds = %30
  %42 = load i8*, i8** %6, align 8, !dbg !183
  call void @xmlFreeAutomata(i8* noundef %42), !dbg !185
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !186
  %44 = bitcast %struct._IO_FILE* %43 to i8*, !dbg !186
  call void @free(i8* noundef %44) #6, !dbg !187
  %45 = load i32, i32* %5, align 4, !dbg !188
  store i32 %45, i32* %1, align 4, !dbg !189
  br label %107, !dbg !189

46:                                               ; preds = %30
  %47 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 0, !dbg !190
  %48 = call i64 @strlen(i8* noundef %47) #7, !dbg !191
  %49 = trunc i64 %48 to i32, !dbg !191
  store i32 %49, i32* %4, align 4, !dbg !192
  %50 = load i32, i32* %4, align 4, !dbg !193
  %51 = add nsw i32 %50, -1, !dbg !193
  store i32 %51, i32* %4, align 4, !dbg !193
  %52 = load i32, i32* %4, align 4, !dbg !194
  %53 = icmp sge i32 %52, 0, !dbg !194
  br i1 %53, label %54, label %56, !dbg !194

54:                                               ; preds = %46
  br i1 true, label %55, label %56, !dbg !194

55:                                               ; preds = %54
  br label %58, !dbg !194

56:                                               ; preds = %54, %46
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.test_main, i64 0, i64 0)), !dbg !194
  br label %58, !dbg !194

58:                                               ; preds = %56, %55
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.test_main, i64 0, i64 0)), !dbg !195
  br label %60, !dbg !196

60:                                               ; preds = %95, %58
  %61 = load i32, i32* %4, align 4, !dbg !197
  %62 = icmp sge i32 %61, 0, !dbg !198
  br i1 %62, label %63, label %93, !dbg !199

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4, !dbg !200
  %65 = sext i32 %64 to i64, !dbg !201
  %66 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 %65, !dbg !201
  %67 = load i8, i8* %66, align 1, !dbg !201
  %68 = sext i8 %67 to i32, !dbg !201
  %69 = icmp eq i32 %68, 10, !dbg !202
  br i1 %69, label %91, label %70, !dbg !203

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4, !dbg !204
  %72 = sext i32 %71 to i64, !dbg !205
  %73 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 %72, !dbg !205
  %74 = load i8, i8* %73, align 1, !dbg !205
  %75 = sext i8 %74 to i32, !dbg !205
  %76 = icmp eq i32 %75, 9, !dbg !206
  br i1 %76, label %91, label %77, !dbg !207

77:                                               ; preds = %70
  %78 = load i32, i32* %4, align 4, !dbg !208
  %79 = sext i32 %78 to i64, !dbg !209
  %80 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 %79, !dbg !209
  %81 = load i8, i8* %80, align 1, !dbg !209
  %82 = sext i8 %81 to i32, !dbg !209
  %83 = icmp eq i32 %82, 13, !dbg !210
  br i1 %83, label %91, label %84, !dbg !211

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4, !dbg !212
  %86 = sext i32 %85 to i64, !dbg !213
  %87 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 %86, !dbg !213
  %88 = load i8, i8* %87, align 1, !dbg !213
  %89 = sext i8 %88 to i32, !dbg !213
  %90 = icmp eq i32 %89, 32, !dbg !214
  br label %91, !dbg !211

91:                                               ; preds = %84, %77, %70, %63
  %92 = phi i1 [ true, %77 ], [ true, %70 ], [ true, %63 ], [ %90, %84 ]
  br label %93

93:                                               ; preds = %91, %60
  %94 = phi i1 [ false, %60 ], [ %92, %91 ], !dbg !215
  br i1 %94, label %95, label %98, !dbg !196

95:                                               ; preds = %93
  %96 = load i32, i32* %4, align 4, !dbg !216
  %97 = add nsw i32 %96, -1, !dbg !216
  store i32 %97, i32* %4, align 4, !dbg !216
  br label %60, !dbg !196, !llvm.loop !218

98:                                               ; preds = %93
  %99 = load i32, i32* %4, align 4, !dbg !221
  %100 = add nsw i32 %99, 1, !dbg !222
  %101 = sext i32 %100 to i64, !dbg !223
  %102 = getelementptr inbounds [4500 x i8], [4500 x i8]* %3, i64 0, i64 %101, !dbg !223
  store i8 0, i8* %102, align 1, !dbg !224
  %103 = load i8*, i8** %6, align 8, !dbg !225
  call void @xmlFreeAutomata(i8* noundef %103), !dbg !226
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !227
  %105 = bitcast %struct._IO_FILE* %104 to i8*, !dbg !227
  call void @free(i8* noundef %105) #6, !dbg !228
  %106 = load i32, i32* %5, align 4, !dbg !229
  store i32 %106, i32* %1, align 4, !dbg !230
  br label %107, !dbg !230

107:                                              ; preds = %98, %41, %25, %18
  %108 = load i32, i32* %1, align 4, !dbg !231
  ret i32 %108, !dbg !231
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !232 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test_main(), !dbg !233
  ret i32 %2, !dbg !234
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlGenericErrorContext", scope: !2, file: !3, line: 11, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/018_runtest.c_4731_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ed2dba2d8c1d4bcfa390df48b543fdd5")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 7, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !10, line: 49, size: 1728, elements: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!11 = !{!12, !14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !30, !32, !33, !34, !38, !40, !42, !46, !49, !51, !54, !57, !58, !59, !63, !64}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !10, line: 51, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !9, file: !10, line: 54, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !9, file: !10, line: 55, baseType: !15, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !9, file: !10, line: 56, baseType: !15, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !9, file: !10, line: 57, baseType: !15, size: 64, offset: 256)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !9, file: !10, line: 58, baseType: !15, size: 64, offset: 320)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !9, file: !10, line: 59, baseType: !15, size: 64, offset: 384)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !9, file: !10, line: 60, baseType: !15, size: 64, offset: 448)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !9, file: !10, line: 61, baseType: !15, size: 64, offset: 512)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !9, file: !10, line: 64, baseType: !15, size: 64, offset: 576)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !9, file: !10, line: 65, baseType: !15, size: 64, offset: 640)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !9, file: !10, line: 66, baseType: !15, size: 64, offset: 704)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !9, file: !10, line: 68, baseType: !28, size: 64, offset: 768)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !10, line: 36, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !9, file: !10, line: 70, baseType: !31, size: 64, offset: 832)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !9, file: !10, line: 72, baseType: !13, size: 32, offset: 896)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !10, line: 73, baseType: !13, size: 32, offset: 928)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !9, file: !10, line: 74, baseType: !35, size: 64, offset: 960)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !36, line: 152, baseType: !37)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!37 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !9, file: !10, line: 77, baseType: !39, size: 16, offset: 1024)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !9, file: !10, line: 78, baseType: !41, size: 8, offset: 1040)
!41 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !9, file: !10, line: 79, baseType: !43, size: 8, offset: 1048)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 8, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !10, line: 81, baseType: !47, size: 64, offset: 1088)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !10, line: 43, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !10, line: 89, baseType: !50, size: 64, offset: 1152)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !36, line: 153, baseType: !37)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !9, file: !10, line: 91, baseType: !52, size: 64, offset: 1216)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !10, line: 37, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !9, file: !10, line: 92, baseType: !55, size: 64, offset: 1280)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !10, line: 38, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !9, file: !10, line: 93, baseType: !31, size: 64, offset: 1344)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !9, file: !10, line: 94, baseType: !5, size: 64, offset: 1408)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !9, file: !10, line: 95, baseType: !60, size: 64, offset: 1472)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !9, file: !10, line: 96, baseType: !13, size: 32, offset: 1536)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !9, file: !10, line: 98, baseType: !65, size: 160, offset: 1568)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 20)
!68 = !{!0}
!69 = !{i32 7, !"Dwarf Version", i32 5}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{i32 7, !"PIC Level", i32 2}
!73 = !{i32 7, !"PIE Level", i32 2}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"Ubuntu clang version 14.0.6"}
!77 = distinct !DISubprogram(name: "xmlGenericError", scope: !3, file: !3, line: 14, type: !78, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !5, !80, null}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!82 = !{}
!83 = !DILocalVariable(name: "ctx", arg: 1, scope: !77, file: !3, line: 14, type: !5)
!84 = !DILocation(line: 14, column: 28, scope: !77)
!85 = !DILocalVariable(name: "msg", arg: 2, scope: !77, file: !3, line: 14, type: !80)
!86 = !DILocation(line: 14, column: 45, scope: !77)
!87 = !DILocation(line: 15, column: 11, scope: !77)
!88 = !DILocation(line: 16, column: 11, scope: !77)
!89 = !DILocation(line: 17, column: 1, scope: !77)
!90 = distinct !DISubprogram(name: "xmlFreeAutomata", scope: !3, file: !3, line: 20, type: !91, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !5}
!93 = !DILocalVariable(name: "am", arg: 1, scope: !90, file: !3, line: 20, type: !5)
!94 = !DILocation(line: 20, column: 28, scope: !90)
!95 = !DILocation(line: 21, column: 11, scope: !90)
!96 = !DILocation(line: 22, column: 1, scope: !90)
!97 = distinct !DISubprogram(name: "xmlNewAutomata", scope: !3, file: !3, line: 25, type: !98, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!98 = !DISubroutineType(types: !99)
!99 = !{!5}
!100 = !DILocalVariable(name: "am", scope: !97, file: !3, line: 26, type: !5)
!101 = !DILocation(line: 26, column: 11, scope: !97)
!102 = !DILocation(line: 26, column: 16, scope: !97)
!103 = !DILocation(line: 27, column: 17, scope: !97)
!104 = !DILocation(line: 27, column: 20, scope: !97)
!105 = !DILocation(line: 27, column: 5, scope: !97)
!106 = !DILocation(line: 28, column: 12, scope: !97)
!107 = !DILocation(line: 28, column: 5, scope: !97)
!108 = distinct !DISubprogram(name: "xmlAutomataGetInitState", scope: !3, file: !3, line: 32, type: !109, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!109 = !DISubroutineType(types: !110)
!110 = !{!5, !5}
!111 = !DILocalVariable(name: "am", arg: 1, scope: !108, file: !3, line: 32, type: !5)
!112 = !DILocation(line: 32, column: 37, scope: !108)
!113 = !DILocation(line: 33, column: 11, scope: !108)
!114 = !DILocalVariable(name: "state", scope: !108, file: !3, line: 34, type: !5)
!115 = !DILocation(line: 34, column: 11, scope: !108)
!116 = !DILocation(line: 34, column: 19, scope: !108)
!117 = !DILocation(line: 35, column: 17, scope: !108)
!118 = !DILocation(line: 35, column: 23, scope: !108)
!119 = !DILocation(line: 35, column: 5, scope: !108)
!120 = !DILocation(line: 36, column: 12, scope: !108)
!121 = !DILocation(line: 36, column: 5, scope: !108)
!122 = distinct !DISubprogram(name: "test_main", scope: !3, file: !3, line: 40, type: !123, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!123 = !DISubroutineType(types: !124)
!124 = !{!13}
!125 = !DILocalVariable(name: "input", scope: !122, file: !3, line: 41, type: !6)
!126 = !DILocation(line: 41, column: 11, scope: !122)
!127 = !DILocalVariable(name: "expr", scope: !122, file: !3, line: 42, type: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 36000, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 4500)
!131 = !DILocation(line: 42, column: 10, scope: !122)
!132 = !DILocalVariable(name: "len", scope: !122, file: !3, line: 43, type: !13)
!133 = !DILocation(line: 43, column: 9, scope: !122)
!134 = !DILocalVariable(name: "ret", scope: !122, file: !3, line: 44, type: !13)
!135 = !DILocation(line: 44, column: 9, scope: !122)
!136 = !DILocalVariable(name: "am", scope: !122, file: !3, line: 45, type: !5)
!137 = !DILocation(line: 45, column: 11, scope: !122)
!138 = !DILocalVariable(name: "state", scope: !122, file: !3, line: 46, type: !5)
!139 = !DILocation(line: 46, column: 11, scope: !122)
!140 = !DILocation(line: 49, column: 20, scope: !122)
!141 = !DILocation(line: 49, column: 13, scope: !122)
!142 = !DILocation(line: 49, column: 11, scope: !122)
!143 = !DILocation(line: 50, column: 17, scope: !122)
!144 = !DILocation(line: 50, column: 23, scope: !122)
!145 = !DILocation(line: 50, column: 5, scope: !122)
!146 = !DILocation(line: 53, column: 24, scope: !122)
!147 = !DILocation(line: 53, column: 5, scope: !122)
!148 = !DILocation(line: 56, column: 10, scope: !122)
!149 = !DILocation(line: 56, column: 8, scope: !122)
!150 = !DILocation(line: 57, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !122, file: !3, line: 57, column: 9)
!152 = !DILocation(line: 57, column: 12, scope: !151)
!153 = !DILocation(line: 57, column: 9, scope: !122)
!154 = !DILocation(line: 58, column: 25, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 57, column: 21)
!156 = !DILocation(line: 58, column: 9, scope: !155)
!157 = !DILocation(line: 59, column: 9, scope: !155)
!158 = !DILocation(line: 62, column: 37, scope: !122)
!159 = !DILocation(line: 62, column: 13, scope: !122)
!160 = !DILocation(line: 62, column: 11, scope: !122)
!161 = !DILocation(line: 63, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !122, file: !3, line: 63, column: 9)
!163 = !DILocation(line: 63, column: 15, scope: !162)
!164 = !DILocation(line: 63, column: 9, scope: !122)
!165 = !DILocation(line: 64, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 63, column: 24)
!167 = !DILocation(line: 64, column: 9, scope: !166)
!168 = !DILocation(line: 65, column: 25, scope: !166)
!169 = !DILocation(line: 65, column: 9, scope: !166)
!170 = !DILocation(line: 66, column: 14, scope: !166)
!171 = !DILocation(line: 66, column: 9, scope: !166)
!172 = !DILocation(line: 67, column: 9, scope: !166)
!173 = !DILocation(line: 70, column: 9, scope: !122)
!174 = !DILocation(line: 73, column: 23, scope: !122)
!175 = !DILocation(line: 73, column: 35, scope: !122)
!176 = !DILocation(line: 73, column: 17, scope: !122)
!177 = !DILocation(line: 73, column: 42, scope: !122)
!178 = !DILocation(line: 73, column: 5, scope: !122)
!179 = !DILocation(line: 76, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !122, file: !3, line: 76, column: 9)
!181 = !DILocation(line: 76, column: 17, scope: !180)
!182 = !DILocation(line: 76, column: 9, scope: !122)
!183 = !DILocation(line: 77, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !3, line: 76, column: 25)
!185 = !DILocation(line: 77, column: 9, scope: !184)
!186 = !DILocation(line: 78, column: 14, scope: !184)
!187 = !DILocation(line: 78, column: 9, scope: !184)
!188 = !DILocation(line: 79, column: 16, scope: !184)
!189 = !DILocation(line: 79, column: 9, scope: !184)
!190 = !DILocation(line: 82, column: 18, scope: !122)
!191 = !DILocation(line: 82, column: 11, scope: !122)
!192 = !DILocation(line: 82, column: 9, scope: !122)
!193 = !DILocation(line: 86, column: 8, scope: !122)
!194 = !DILocation(line: 92, column: 5, scope: !122)
!195 = !DILocation(line: 95, column: 5, scope: !122)
!196 = !DILocation(line: 98, column: 5, scope: !122)
!197 = !DILocation(line: 98, column: 13, scope: !122)
!198 = !DILocation(line: 98, column: 17, scope: !122)
!199 = !DILocation(line: 98, column: 23, scope: !122)
!200 = !DILocation(line: 99, column: 19, scope: !122)
!201 = !DILocation(line: 99, column: 14, scope: !122)
!202 = !DILocation(line: 99, column: 24, scope: !122)
!203 = !DILocation(line: 99, column: 33, scope: !122)
!204 = !DILocation(line: 99, column: 42, scope: !122)
!205 = !DILocation(line: 99, column: 37, scope: !122)
!206 = !DILocation(line: 99, column: 47, scope: !122)
!207 = !DILocation(line: 99, column: 56, scope: !122)
!208 = !DILocation(line: 100, column: 19, scope: !122)
!209 = !DILocation(line: 100, column: 14, scope: !122)
!210 = !DILocation(line: 100, column: 24, scope: !122)
!211 = !DILocation(line: 100, column: 33, scope: !122)
!212 = !DILocation(line: 100, column: 42, scope: !122)
!213 = !DILocation(line: 100, column: 37, scope: !122)
!214 = !DILocation(line: 100, column: 47, scope: !122)
!215 = !DILocation(line: 0, scope: !122)
!216 = !DILocation(line: 101, column: 12, scope: !217)
!217 = distinct !DILexicalBlock(scope: !122, file: !3, line: 100, column: 57)
!218 = distinct !{!218, !196, !219, !220}
!219 = !DILocation(line: 102, column: 5, scope: !122)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !DILocation(line: 104, column: 10, scope: !122)
!222 = !DILocation(line: 104, column: 14, scope: !122)
!223 = !DILocation(line: 104, column: 5, scope: !122)
!224 = !DILocation(line: 104, column: 19, scope: !122)
!225 = !DILocation(line: 107, column: 21, scope: !122)
!226 = !DILocation(line: 107, column: 5, scope: !122)
!227 = !DILocation(line: 108, column: 10, scope: !122)
!228 = !DILocation(line: 108, column: 5, scope: !122)
!229 = !DILocation(line: 110, column: 12, scope: !122)
!230 = !DILocation(line: 110, column: 5, scope: !122)
!231 = !DILocation(line: 111, column: 1, scope: !122)
!232 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 113, type: !123, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !82)
!233 = !DILocation(line: 114, column: 12, scope: !232)
!234 = !DILocation(line: 114, column: 5, scope: !232)
