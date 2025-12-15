; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/136_schematron.c_456_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/136_schematron.c_456_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type { i32 }
%struct._xmlSchematron = type { %struct._xmlSchematronRule* }
%struct._xmlSchematronRule = type { i8*, i8*, i8*, i8*, %struct._xmlSchematronRule*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/136_schematron.c_456_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"allocating schema rule\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %3 = load i64, i64* %2, align 8, !dbg !37
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !38
  ret i8* %4, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !40 {
  %4 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %4, metadata !51, metadata !DIExpression()), !dbg !52
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !53, metadata !DIExpression()), !dbg !54
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !55, metadata !DIExpression()), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !58 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchematronParserCtxt, align 4
  %3 = alloca %struct._xmlSchematron, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca %struct._xmlSchematronRule*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt* %2, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron* %3, metadata !63, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i8** %4, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !71, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [32 x i8]* %6, metadata !76, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !78, metadata !DIExpression()), !dbg !79
  %9 = bitcast i8** %4 to i8*, !dbg !80
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !81
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !82
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !83
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !84
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !85
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !86
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !87
  %13 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %3, i32 0, i32 0, !dbg !88
  store %struct._xmlSchematronRule* null, %struct._xmlSchematronRule** %13, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronRule** %8, metadata !90, metadata !DIExpression()), !dbg !91
  %14 = load i8*, i8** %4, align 8, !dbg !92
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !93
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !94
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !95
  %18 = call %struct._xmlSchematronRule* @xmlSchematronNewRule(%struct._xmlSchematronParserCtxt* noundef %2, %struct._xmlSchematron* noundef %3, i8* noundef %14, i8* noundef %15, i8* noundef %16, i8* noundef %17), !dbg !96
  store %struct._xmlSchematronRule* %18, %struct._xmlSchematronRule** %8, align 8, !dbg !91
  %19 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %8, align 8, !dbg !97
  %20 = icmp ne %struct._xmlSchematronRule* %19, null, !dbg !99
  br i1 %20, label %21, label %23, !dbg !100

21:                                               ; preds = %0
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !101
  br label %23, !dbg !103

23:                                               ; preds = %21, %0
  %24 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %8, align 8, !dbg !104
  %25 = icmp ne %struct._xmlSchematronRule* %24, null, !dbg !106
  br i1 %25, label %26, label %29, !dbg !107

26:                                               ; preds = %23
  %27 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %8, align 8, !dbg !108
  %28 = bitcast %struct._xmlSchematronRule* %27 to i8*, !dbg !108
  call void @free(i8* noundef %28) #7, !dbg !110
  br label %29, !dbg !111

29:                                               ; preds = %26, %23
  ret i32 0, !dbg !112
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlSchematronRule* @xmlSchematronNewRule(%struct._xmlSchematronParserCtxt* noundef %0, %struct._xmlSchematron* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i8* noundef %5) #0 !dbg !113 {
  %7 = alloca %struct._xmlSchematronRule*, align 8
  %8 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %9 = alloca %struct._xmlSchematron*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._xmlSchematronRule*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %8, metadata !117, metadata !DIExpression()), !dbg !118
  store %struct._xmlSchematron* %1, %struct._xmlSchematron** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %9, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !121, metadata !DIExpression()), !dbg !122
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !123, metadata !DIExpression()), !dbg !124
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !125, metadata !DIExpression()), !dbg !126
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronRule** %14, metadata !129, metadata !DIExpression()), !dbg !130
  %15 = call i8* @xmlMalloc(i64 noundef 48), !dbg !131
  %16 = bitcast i8* %15 to %struct._xmlSchematronRule*, !dbg !132
  store %struct._xmlSchematronRule* %16, %struct._xmlSchematronRule** %14, align 8, !dbg !133
  %17 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !134
  %18 = icmp eq %struct._xmlSchematronRule* %17, null, !dbg !136
  br i1 %18, label %19, label %22, !dbg !137

19:                                               ; preds = %6
  %20 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %8, align 8, !dbg !138
  %21 = load i8*, i8** %10, align 8, !dbg !140
  call void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %20, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* noundef %21), !dbg !141
  store %struct._xmlSchematronRule* null, %struct._xmlSchematronRule** %7, align 8, !dbg !142
  br label %52, !dbg !142

22:                                               ; preds = %6
  %23 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !143
  %24 = bitcast %struct._xmlSchematronRule* %23 to i8*, !dbg !144
  %25 = call i8* @memset(i8* %24, i32 0, i64 48), !dbg !144
  %26 = load i8*, i8** %10, align 8, !dbg !145
  %27 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !146
  %28 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %27, i32 0, i32 0, !dbg !147
  store i8* %26, i8** %28, align 8, !dbg !148
  %29 = load i8*, i8** %11, align 8, !dbg !149
  %30 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !150
  %31 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %30, i32 0, i32 1, !dbg !151
  store i8* %29, i8** %31, align 8, !dbg !152
  %32 = load i8*, i8** %12, align 8, !dbg !153
  %33 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !154
  %34 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %33, i32 0, i32 2, !dbg !155
  store i8* %32, i8** %34, align 8, !dbg !156
  %35 = load i8*, i8** %13, align 8, !dbg !157
  %36 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !158
  %37 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %36, i32 0, i32 3, !dbg !159
  store i8* %35, i8** %37, align 8, !dbg !160
  %38 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !161
  %39 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %38, i32 0, i32 4, !dbg !162
  store %struct._xmlSchematronRule* null, %struct._xmlSchematronRule** %39, align 8, !dbg !163
  %40 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !164
  %41 = getelementptr inbounds %struct._xmlSchematronRule, %struct._xmlSchematronRule* %40, i32 0, i32 5, !dbg !165
  store i8* null, i8** %41, align 8, !dbg !166
  %42 = load %struct._xmlSchematron*, %struct._xmlSchematron** %9, align 8, !dbg !167
  %43 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %42, i32 0, i32 0, !dbg !169
  %44 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %43, align 8, !dbg !169
  %45 = icmp eq %struct._xmlSchematronRule* %44, null, !dbg !170
  br i1 %45, label %46, label %50, !dbg !171

46:                                               ; preds = %22
  %47 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !172
  %48 = load %struct._xmlSchematron*, %struct._xmlSchematron** %9, align 8, !dbg !174
  %49 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %48, i32 0, i32 0, !dbg !175
  store %struct._xmlSchematronRule* %47, %struct._xmlSchematronRule** %49, align 8, !dbg !176
  br label %50, !dbg !177

50:                                               ; preds = %46, %22
  %51 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %14, align 8, !dbg !178
  store %struct._xmlSchematronRule* %51, %struct._xmlSchematronRule** %7, align 8, !dbg !179
  br label %52, !dbg !179

52:                                               ; preds = %50, %19
  %53 = load %struct._xmlSchematronRule*, %struct._xmlSchematronRule** %7, align 8, !dbg !180
  ret %struct._xmlSchematronRule* %53, !dbg !180
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !DIExpression()), !dbg !192
  %8 = load i8*, i8** %4, align 8, !dbg !193
  store i8* %8, i8** %7, align 8, !dbg !192
  br label %9, !dbg !194

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !195
  %11 = add i64 %10, -1, !dbg !195
  store i64 %11, i64* %6, align 8, !dbg !195
  %12 = icmp ugt i64 %10, 0, !dbg !196
  br i1 %12, label %13, label %18, !dbg !194

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !197
  %15 = trunc i32 %14 to i8, !dbg !197
  %16 = load i8*, i8** %7, align 8, !dbg !198
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !198
  store i8* %17, i8** %7, align 8, !dbg !198
  store i8 %15, i8* %16, align 1, !dbg !199
  br label %9, !dbg !194, !llvm.loop !200

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !202
  ret i8* %19, !dbg !203
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/136_schematron.c_456_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "67d0ae0a0745fd0453928d4cc69bd912")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronRulePtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronRule", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronRule", file: !1, line: 16, size: 384, elements: !8)
!8 = !{!9, !11, !14, !15, !16, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !7, file: !1, line: 17, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 14, baseType: !3)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !7, file: !1, line: 18, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !7, file: !1, line: 19, baseType: !12, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !7, file: !1, line: 20, baseType: !12, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 21, baseType: !4, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "lets", scope: !7, file: !1, line: 22, baseType: !3, size: 64, offset: 320)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 34, type: !29, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 34, type: !31)
!36 = !DILocation(line: 34, column: 24, scope: !28)
!37 = !DILocation(line: 35, column: 19, scope: !28)
!38 = !DILocation(line: 35, column: 12, scope: !28)
!39 = !DILocation(line: 35, column: 5, scope: !28)
!40 = distinct !DISubprogram(name: "xmlSchematronPErrMemory", scope: !1, file: !1, line: 38, type: !41, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !49, !10}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !1, line: 13, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !1, line: 29, size: 32, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !45, file: !1, line: 30, baseType: !48, size: 32)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!51 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !1, line: 38, type: !43)
!52 = !DILocation(line: 38, column: 55, scope: !40)
!53 = !DILocalVariable(name: "msg", arg: 2, scope: !40, file: !1, line: 38, type: !49)
!54 = !DILocation(line: 38, column: 73, scope: !40)
!55 = !DILocalVariable(name: "node", arg: 3, scope: !40, file: !1, line: 38, type: !10)
!56 = !DILocation(line: 38, column: 89, scope: !40)
!57 = !DILocation(line: 40, column: 1, scope: !40)
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !59, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!59 = !DISubroutineType(types: !60)
!60 = !{!48}
!61 = !DILocalVariable(name: "ctxt", scope: !58, file: !1, line: 76, type: !44)
!62 = !DILocation(line: 76, column: 29, scope: !58)
!63 = !DILocalVariable(name: "schema", scope: !58, file: !1, line: 77, type: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematron", file: !1, line: 12, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematron", file: !1, line: 25, size: 64, elements: !66)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "rules", scope: !65, file: !1, line: 26, baseType: !4, size: 64)
!68 = !DILocation(line: 77, column: 19, scope: !58)
!69 = !DILocalVariable(name: "node", scope: !58, file: !1, line: 78, type: !10)
!70 = !DILocation(line: 78, column: 16, scope: !58)
!71 = !DILocalVariable(name: "context", scope: !58, file: !1, line: 79, type: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 32)
!75 = !DILocation(line: 79, column: 10, scope: !58)
!76 = !DILocalVariable(name: "pattern", scope: !58, file: !1, line: 80, type: !72)
!77 = !DILocation(line: 80, column: 10, scope: !58)
!78 = !DILocalVariable(name: "report", scope: !58, file: !1, line: 81, type: !72)
!79 = !DILocation(line: 81, column: 10, scope: !58)
!80 = !DILocation(line: 84, column: 24, scope: !58)
!81 = !DILocation(line: 84, column: 5, scope: !58)
!82 = !DILocation(line: 85, column: 24, scope: !58)
!83 = !DILocation(line: 85, column: 5, scope: !58)
!84 = !DILocation(line: 86, column: 24, scope: !58)
!85 = !DILocation(line: 86, column: 5, scope: !58)
!86 = !DILocation(line: 87, column: 24, scope: !58)
!87 = !DILocation(line: 87, column: 5, scope: !58)
!88 = !DILocation(line: 90, column: 12, scope: !58)
!89 = !DILocation(line: 90, column: 18, scope: !58)
!90 = !DILocalVariable(name: "rule", scope: !58, file: !1, line: 93, type: !4)
!91 = !DILocation(line: 93, column: 26, scope: !58)
!92 = !DILocation(line: 93, column: 70, scope: !58)
!93 = !DILocation(line: 94, column: 54, scope: !58)
!94 = !DILocation(line: 94, column: 63, scope: !58)
!95 = !DILocation(line: 94, column: 72, scope: !58)
!96 = !DILocation(line: 93, column: 33, scope: !58)
!97 = !DILocation(line: 100, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !58, file: !1, line: 100, column: 9)
!99 = !DILocation(line: 100, column: 14, scope: !98)
!100 = !DILocation(line: 100, column: 9, scope: !58)
!101 = !DILocation(line: 106, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 100, column: 23)
!103 = !DILocation(line: 107, column: 5, scope: !102)
!104 = !DILocation(line: 110, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !58, file: !1, line: 110, column: 9)
!106 = !DILocation(line: 110, column: 14, scope: !105)
!107 = !DILocation(line: 110, column: 9, scope: !58)
!108 = !DILocation(line: 111, column: 14, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 110, column: 23)
!110 = !DILocation(line: 111, column: 9, scope: !109)
!111 = !DILocation(line: 112, column: 5, scope: !109)
!112 = !DILocation(line: 114, column: 5, scope: !58)
!113 = distinct !DISubprogram(name: "xmlSchematronNewRule", scope: !1, file: !1, line: 43, type: !114, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !34)
!114 = !DISubroutineType(types: !115)
!115 = !{!4, !43, !116, !10, !12, !12, !12}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!117 = !DILocalVariable(name: "ctxt", arg: 1, scope: !113, file: !1, line: 43, type: !43)
!118 = !DILocation(line: 43, column: 75, scope: !113)
!119 = !DILocalVariable(name: "schema", arg: 2, scope: !113, file: !1, line: 44, type: !116)
!120 = !DILocation(line: 44, column: 65, scope: !113)
!121 = !DILocalVariable(name: "node", arg: 3, scope: !113, file: !1, line: 45, type: !10)
!122 = !DILocation(line: 45, column: 61, scope: !113)
!123 = !DILocalVariable(name: "context", arg: 4, scope: !113, file: !1, line: 46, type: !12)
!124 = !DILocation(line: 46, column: 56, scope: !113)
!125 = !DILocalVariable(name: "pattern", arg: 5, scope: !113, file: !1, line: 47, type: !12)
!126 = !DILocation(line: 47, column: 56, scope: !113)
!127 = !DILocalVariable(name: "report", arg: 6, scope: !113, file: !1, line: 48, type: !12)
!128 = !DILocation(line: 48, column: 56, scope: !113)
!129 = !DILocalVariable(name: "ret", scope: !113, file: !1, line: 49, type: !4)
!130 = !DILocation(line: 49, column: 26, scope: !113)
!131 = !DILocation(line: 51, column: 34, scope: !113)
!132 = !DILocation(line: 51, column: 11, scope: !113)
!133 = !DILocation(line: 51, column: 9, scope: !113)
!134 = !DILocation(line: 52, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !113, file: !1, line: 52, column: 9)
!136 = !DILocation(line: 52, column: 13, scope: !135)
!137 = !DILocation(line: 52, column: 9, scope: !113)
!138 = !DILocation(line: 53, column: 33, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 52, column: 22)
!140 = !DILocation(line: 53, column: 65, scope: !139)
!141 = !DILocation(line: 53, column: 9, scope: !139)
!142 = !DILocation(line: 54, column: 9, scope: !139)
!143 = !DILocation(line: 58, column: 12, scope: !113)
!144 = !DILocation(line: 58, column: 5, scope: !113)
!145 = !DILocation(line: 60, column: 17, scope: !113)
!146 = !DILocation(line: 60, column: 5, scope: !113)
!147 = !DILocation(line: 60, column: 10, scope: !113)
!148 = !DILocation(line: 60, column: 15, scope: !113)
!149 = !DILocation(line: 61, column: 20, scope: !113)
!150 = !DILocation(line: 61, column: 5, scope: !113)
!151 = !DILocation(line: 61, column: 10, scope: !113)
!152 = !DILocation(line: 61, column: 18, scope: !113)
!153 = !DILocation(line: 62, column: 20, scope: !113)
!154 = !DILocation(line: 62, column: 5, scope: !113)
!155 = !DILocation(line: 62, column: 10, scope: !113)
!156 = !DILocation(line: 62, column: 18, scope: !113)
!157 = !DILocation(line: 63, column: 19, scope: !113)
!158 = !DILocation(line: 63, column: 5, scope: !113)
!159 = !DILocation(line: 63, column: 10, scope: !113)
!160 = !DILocation(line: 63, column: 17, scope: !113)
!161 = !DILocation(line: 64, column: 5, scope: !113)
!162 = !DILocation(line: 64, column: 10, scope: !113)
!163 = !DILocation(line: 64, column: 15, scope: !113)
!164 = !DILocation(line: 65, column: 5, scope: !113)
!165 = !DILocation(line: 65, column: 10, scope: !113)
!166 = !DILocation(line: 65, column: 15, scope: !113)
!167 = !DILocation(line: 67, column: 9, scope: !168)
!168 = distinct !DILexicalBlock(scope: !113, file: !1, line: 67, column: 9)
!169 = !DILocation(line: 67, column: 17, scope: !168)
!170 = !DILocation(line: 67, column: 23, scope: !168)
!171 = !DILocation(line: 67, column: 9, scope: !113)
!172 = !DILocation(line: 68, column: 25, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 67, column: 32)
!174 = !DILocation(line: 68, column: 9, scope: !173)
!175 = !DILocation(line: 68, column: 17, scope: !173)
!176 = !DILocation(line: 68, column: 23, scope: !173)
!177 = !DILocation(line: 69, column: 5, scope: !173)
!178 = !DILocation(line: 71, column: 12, scope: !113)
!179 = !DILocation(line: 71, column: 5, scope: !113)
!180 = !DILocation(line: 72, column: 1, scope: !113)
!181 = distinct !DISubprogram(name: "memset", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!182 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!183 = !DISubroutineType(types: !184)
!184 = !{!3, !3, !48, !31}
!185 = !DILocalVariable(name: "dst", arg: 1, scope: !181, file: !182, line: 12, type: !3)
!186 = !DILocation(line: 12, column: 20, scope: !181)
!187 = !DILocalVariable(name: "s", arg: 2, scope: !181, file: !182, line: 12, type: !48)
!188 = !DILocation(line: 12, column: 29, scope: !181)
!189 = !DILocalVariable(name: "count", arg: 3, scope: !181, file: !182, line: 12, type: !31)
!190 = !DILocation(line: 12, column: 39, scope: !181)
!191 = !DILocalVariable(name: "a", scope: !181, file: !182, line: 13, type: !12)
!192 = !DILocation(line: 13, column: 9, scope: !181)
!193 = !DILocation(line: 13, column: 13, scope: !181)
!194 = !DILocation(line: 14, column: 3, scope: !181)
!195 = !DILocation(line: 14, column: 15, scope: !181)
!196 = !DILocation(line: 14, column: 18, scope: !181)
!197 = !DILocation(line: 15, column: 12, scope: !181)
!198 = !DILocation(line: 15, column: 7, scope: !181)
!199 = !DILocation(line: 15, column: 10, scope: !181)
!200 = distinct !{!200, !194, !197, !201}
!201 = !{!"llvm.loop.mustprogress"}
!202 = !DILocation(line: 16, column: 10, scope: !181)
!203 = !DILocation(line: 16, column: 3, scope: !181)
