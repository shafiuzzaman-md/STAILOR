; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/137_xmlsave.c_2536_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/137_xmlsave.c_2536_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlOutputBuffer = type { i8*, i32 }
%struct._xmlSaveCtxt = type { %struct._xmlOutputBuffer*, i32, i32, i8*, i32 }
%struct._xmlDoc = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/137_xmlsave.c_2536_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %0) #0 !dbg !30 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._xmlOutputBuffer*, align 8
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %3, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !36
  %5 = icmp eq %struct._xmlOutputBuffer* %4, null, !dbg !38
  br i1 %5, label %6, label %7, !dbg !39

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !40
  br label %13, !dbg !40

7:                                                ; preds = %1
  %8 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !41
  %9 = getelementptr inbounds %struct._xmlOutputBuffer, %struct._xmlOutputBuffer* %8, i32 0, i32 0, !dbg !42
  %10 = load i8*, i8** %9, align 8, !dbg !42
  call void @free(i8* noundef %10) #7, !dbg !43
  %11 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %3, align 8, !dbg !44
  %12 = bitcast %struct._xmlOutputBuffer* %11 to i8*, !dbg !44
  call void @free(i8* noundef %12) #7, !dbg !45
  store i32 0, i32* %2, align 4, !dbg !46
  br label %13, !dbg !46

13:                                               ; preds = %7, %6
  %14 = load i32, i32* %2, align 4, !dbg !47
  ret i32 %14, !dbg !47
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !48 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !62
  %4 = icmp ne %struct._xmlSaveCtxt* %3, null, !dbg !62
  br i1 %4, label %5, label %8, !dbg !64

5:                                                ; preds = %1
  %6 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !65
  %7 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %6, i32 0, i32 4, !dbg !67
  store i32 0, i32* %7, align 8, !dbg !68
  br label %8, !dbg !69

8:                                                ; preds = %5, %1
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlDocContentDumpOutput(%struct._xmlSaveCtxt* noundef %0, %struct._xmlDoc* noundef %1) #0 !dbg !71 {
  %3 = alloca %struct._xmlSaveCtxt*, align 8
  %4 = alloca %struct._xmlDoc*, align 8
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %3, metadata !74, metadata !DIExpression()), !dbg !75
  store %struct._xmlDoc* %1, %struct._xmlDoc** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %4, metadata !76, metadata !DIExpression()), !dbg !77
  %5 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !78
  %6 = load %struct._xmlDoc*, %struct._xmlDoc** %4, align 8, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlSaveDoc(%struct._xmlOutputBuffer* noundef %0, %struct._xmlDoc* noundef %1, i8* noundef %2) #0 !dbg !81 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlOutputBuffer*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._xmlSaveCtxt, align 8
  %9 = alloca i32, align 4
  store %struct._xmlOutputBuffer* %0, %struct._xmlOutputBuffer** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %5, metadata !84, metadata !DIExpression()), !dbg !85
  store %struct._xmlDoc* %1, %struct._xmlDoc** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %8, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %9, metadata !92, metadata !DIExpression()), !dbg !93
  %10 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !94
  %11 = icmp eq %struct._xmlOutputBuffer* %10, null, !dbg !96
  br i1 %11, label %12, label %13, !dbg !97

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !98
  br label %35, !dbg !98

13:                                               ; preds = %3
  %14 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !99
  %15 = icmp eq %struct._xmlDoc* %14, null, !dbg !101
  br i1 %15, label %16, label %19, !dbg !102

16:                                               ; preds = %13
  %17 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !103
  %18 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %17), !dbg !105
  store i32 -1, i32* %4, align 4, !dbg !106
  br label %35, !dbg !106

19:                                               ; preds = %13
  %20 = bitcast %struct._xmlSaveCtxt* %8 to i8*, !dbg !107
  %21 = call i8* @memset(i8* %20, i32 0, i64 32), !dbg !107
  %22 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !108
  %23 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 0, !dbg !109
  store %struct._xmlOutputBuffer* %22, %struct._xmlOutputBuffer** %23, align 8, !dbg !110
  %24 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 1, !dbg !111
  store i32 0, i32* %24, align 8, !dbg !112
  %25 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 2, !dbg !113
  store i32 0, i32* %25, align 4, !dbg !114
  %26 = load i8*, i8** %7, align 8, !dbg !115
  %27 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 3, !dbg !116
  store i8* %26, i8** %27, align 8, !dbg !117
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %8), !dbg !118
  %28 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %8, i32 0, i32 4, !dbg !119
  %29 = load i32, i32* %28, align 8, !dbg !120
  %30 = or i32 %29, 1, !dbg !120
  store i32 %30, i32* %28, align 8, !dbg !120
  %31 = load %struct._xmlDoc*, %struct._xmlDoc** %6, align 8, !dbg !121
  call void @xmlDocContentDumpOutput(%struct._xmlSaveCtxt* noundef %8, %struct._xmlDoc* noundef %31), !dbg !122
  %32 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %5, align 8, !dbg !123
  %33 = call i32 @xmlOutputBufferClose(%struct._xmlOutputBuffer* noundef %32), !dbg !124
  store i32 %33, i32* %9, align 4, !dbg !125
  %34 = load i32, i32* %9, align 4, !dbg !126
  store i32 %34, i32* %4, align 4, !dbg !127
  br label %35, !dbg !127

35:                                               ; preds = %19, %16, %12
  %36 = load i32, i32* %4, align 4, !dbg !128
  ret i32 %36, !dbg !128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlOutputBuffer*, align 8
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlOutputBuffer** %2, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !136, metadata !DIExpression()), !dbg !140
  %6 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !141
  %7 = bitcast i8* %6 to %struct._xmlOutputBuffer*, !dbg !142
  store %struct._xmlOutputBuffer* %7, %struct._xmlOutputBuffer** %2, align 8, !dbg !143
  %8 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !144
  %9 = bitcast %struct._xmlOutputBuffer* %8 to i8*, !dbg !144
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !145
  %10 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !146
  %11 = bitcast i8* %10 to %struct._xmlDoc*, !dbg !147
  store %struct._xmlDoc* %11, %struct._xmlDoc** %3, align 8, !dbg !148
  %12 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !149
  %13 = bitcast %struct._xmlDoc* %12 to i8*, !dbg !149
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !150
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !151
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 32, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !152
  %15 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !153
  %16 = icmp ne %struct._xmlOutputBuffer* %15, null, !dbg !154
  %17 = zext i1 %16 to i32, !dbg !154
  %18 = sext i32 %17 to i64, !dbg !153
  call void @klee_assume(i64 noundef %18), !dbg !155
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !156
  %20 = icmp ne %struct._xmlDoc* %19, null, !dbg !157
  %21 = zext i1 %20 to i32, !dbg !157
  %22 = sext i32 %21 to i64, !dbg !156
  call void @klee_assume(i64 noundef %22), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %5, metadata !159, metadata !DIExpression()), !dbg !160
  %23 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !161
  %24 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !162
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !163
  %26 = call i32 @xmlSaveDoc(%struct._xmlOutputBuffer* noundef %23, %struct._xmlDoc* noundef %24, i8* noundef %25), !dbg !164
  store i32 %26, i32* %5, align 4, !dbg !160
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !165
  %28 = load %struct._xmlOutputBuffer*, %struct._xmlOutputBuffer** %2, align 8, !dbg !166
  %29 = bitcast %struct._xmlOutputBuffer* %28 to i8*, !dbg !166
  call void @free(i8* noundef %29) #7, !dbg !167
  %30 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !168
  %31 = bitcast %struct._xmlDoc* %30 to i8*, !dbg !168
  call void @free(i8* noundef %31) #7, !dbg !169
  %32 = load i32, i32* %5, align 4, !dbg !170
  ret i32 %32, !dbg !171
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !172 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !185, metadata !DIExpression()), !dbg !187
  %8 = load i8*, i8** %4, align 8, !dbg !188
  store i8* %8, i8** %7, align 8, !dbg !187
  br label %9, !dbg !189

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !190
  %11 = add i64 %10, -1, !dbg !190
  store i64 %11, i64* %6, align 8, !dbg !190
  %12 = icmp ugt i64 %10, 0, !dbg !191
  br i1 %12, label %13, label %18, !dbg !189

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !192
  %15 = trunc i32 %14 to i8, !dbg !192
  %16 = load i8*, i8** %7, align 8, !dbg !193
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !193
  store i8* %17, i8** %7, align 8, !dbg !193
  store i8 %15, i8* %16, align 1, !dbg !194
  br label %9, !dbg !189, !llvm.loop !195

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !197
  ret i8* %19, !dbg !198
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/137_xmlsave.c_2536_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0a04945371b1c39f394a50f7cbdc2b76")
!2 = !{!3, !4, !7, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlOutputBuffer", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlOutputBuffer", file: !1, line: 15, size: 128, elements: !10)
!10 = !{!11, !12}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !9, file: !1, line: 16, baseType: !3, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "written", scope: !9, file: !1, line: 17, baseType: !13, size: 32, offset: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 11, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 20, size: 128, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !16, file: !1, line: 21, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !16, file: !1, line: 22, baseType: !3, size: 64, offset: 64)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlOutputBufferClose", scope: !1, file: !1, line: 34, type: !31, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !7}
!33 = !{}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !30, file: !1, line: 34, type: !7)
!35 = !DILocation(line: 34, column: 43, scope: !30)
!36 = !DILocation(line: 35, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 35, column: 9)
!38 = !DILocation(line: 35, column: 13, scope: !37)
!39 = !DILocation(line: 35, column: 9, scope: !30)
!40 = !DILocation(line: 35, column: 22, scope: !37)
!41 = !DILocation(line: 36, column: 10, scope: !30)
!42 = !DILocation(line: 36, column: 15, scope: !30)
!43 = !DILocation(line: 36, column: 5, scope: !30)
!44 = !DILocation(line: 37, column: 10, scope: !30)
!45 = !DILocation(line: 37, column: 5, scope: !30)
!46 = !DILocation(line: 38, column: 5, scope: !30)
!47 = !DILocation(line: 39, column: 1, scope: !30)
!48 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 41, type: !49, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 12, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 25, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !53, file: !1, line: 26, baseType: !7, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !53, file: !1, line: 27, baseType: !13, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !53, file: !1, line: 28, baseType: !13, size: 32, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !53, file: !1, line: 29, baseType: !4, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !53, file: !1, line: 30, baseType: !13, size: 32, offset: 192)
!60 = !DILocalVariable(name: "ctxt", arg: 1, scope: !48, file: !1, line: 41, type: !51)
!61 = !DILocation(line: 41, column: 35, scope: !48)
!62 = !DILocation(line: 43, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !48, file: !1, line: 43, column: 9)
!64 = !DILocation(line: 43, column: 9, scope: !48)
!65 = !DILocation(line: 44, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 43, column: 15)
!67 = !DILocation(line: 44, column: 15, scope: !66)
!68 = !DILocation(line: 44, column: 23, scope: !66)
!69 = !DILocation(line: 45, column: 5, scope: !66)
!70 = !DILocation(line: 46, column: 1, scope: !48)
!71 = distinct !DISubprogram(name: "xmlDocContentDumpOutput", scope: !1, file: !1, line: 48, type: !72, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !51, !14}
!74 = !DILocalVariable(name: "ctxt", arg: 1, scope: !71, file: !1, line: 48, type: !51)
!75 = !DILocation(line: 48, column: 43, scope: !71)
!76 = !DILocalVariable(name: "doc", arg: 2, scope: !71, file: !1, line: 48, type: !14)
!77 = !DILocation(line: 48, column: 57, scope: !71)
!78 = !DILocation(line: 50, column: 11, scope: !71)
!79 = !DILocation(line: 51, column: 11, scope: !71)
!80 = !DILocation(line: 52, column: 1, scope: !71)
!81 = distinct !DISubprogram(name: "xmlSaveDoc", scope: !1, file: !1, line: 55, type: !82, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!82 = !DISubroutineType(types: !83)
!83 = !{!13, !7, !14, !4}
!84 = !DILocalVariable(name: "buf", arg: 1, scope: !81, file: !1, line: 55, type: !7)
!85 = !DILocation(line: 55, column: 33, scope: !81)
!86 = !DILocalVariable(name: "cur", arg: 2, scope: !81, file: !1, line: 55, type: !14)
!87 = !DILocation(line: 55, column: 46, scope: !81)
!88 = !DILocalVariable(name: "encoding", arg: 3, scope: !81, file: !1, line: 55, type: !4)
!89 = !DILocation(line: 55, column: 63, scope: !81)
!90 = !DILocalVariable(name: "ctxt", scope: !81, file: !1, line: 56, type: !52)
!91 = !DILocation(line: 56, column: 17, scope: !81)
!92 = !DILocalVariable(name: "ret", scope: !81, file: !1, line: 57, type: !13)
!93 = !DILocation(line: 57, column: 9, scope: !81)
!94 = !DILocation(line: 59, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !81, file: !1, line: 59, column: 9)
!96 = !DILocation(line: 59, column: 13, scope: !95)
!97 = !DILocation(line: 59, column: 9, scope: !81)
!98 = !DILocation(line: 59, column: 22, scope: !95)
!99 = !DILocation(line: 60, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !81, file: !1, line: 60, column: 9)
!101 = !DILocation(line: 60, column: 13, scope: !100)
!102 = !DILocation(line: 60, column: 9, scope: !81)
!103 = !DILocation(line: 61, column: 30, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 60, column: 22)
!105 = !DILocation(line: 61, column: 9, scope: !104)
!106 = !DILocation(line: 62, column: 9, scope: !104)
!107 = !DILocation(line: 65, column: 5, scope: !81)
!108 = !DILocation(line: 66, column: 16, scope: !81)
!109 = !DILocation(line: 66, column: 10, scope: !81)
!110 = !DILocation(line: 66, column: 14, scope: !81)
!111 = !DILocation(line: 67, column: 10, scope: !81)
!112 = !DILocation(line: 67, column: 16, scope: !81)
!113 = !DILocation(line: 68, column: 10, scope: !81)
!114 = !DILocation(line: 68, column: 17, scope: !81)
!115 = !DILocation(line: 69, column: 35, scope: !81)
!116 = !DILocation(line: 69, column: 10, scope: !81)
!117 = !DILocation(line: 69, column: 19, scope: !81)
!118 = !DILocation(line: 70, column: 5, scope: !81)
!119 = !DILocation(line: 71, column: 10, scope: !81)
!120 = !DILocation(line: 71, column: 18, scope: !81)
!121 = !DILocation(line: 72, column: 36, scope: !81)
!122 = !DILocation(line: 72, column: 5, scope: !81)
!123 = !DILocation(line: 73, column: 32, scope: !81)
!124 = !DILocation(line: 73, column: 11, scope: !81)
!125 = !DILocation(line: 73, column: 9, scope: !81)
!126 = !DILocation(line: 74, column: 12, scope: !81)
!127 = !DILocation(line: 74, column: 5, scope: !81)
!128 = !DILocation(line: 75, column: 1, scope: !81)
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !130, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!130 = !DISubroutineType(types: !131)
!131 = !{!13}
!132 = !DILocalVariable(name: "buf", scope: !129, file: !1, line: 79, type: !7)
!133 = !DILocation(line: 79, column: 22, scope: !129)
!134 = !DILocalVariable(name: "cur", scope: !129, file: !1, line: 80, type: !14)
!135 = !DILocation(line: 80, column: 13, scope: !129)
!136 = !DILocalVariable(name: "encoding", scope: !129, file: !1, line: 81, type: !137)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 32)
!140 = !DILocation(line: 81, column: 10, scope: !129)
!141 = !DILocation(line: 84, column: 29, scope: !129)
!142 = !DILocation(line: 84, column: 11, scope: !129)
!143 = !DILocation(line: 84, column: 9, scope: !129)
!144 = !DILocation(line: 85, column: 24, scope: !129)
!145 = !DILocation(line: 85, column: 5, scope: !129)
!146 = !DILocation(line: 88, column: 20, scope: !129)
!147 = !DILocation(line: 88, column: 11, scope: !129)
!148 = !DILocation(line: 88, column: 9, scope: !129)
!149 = !DILocation(line: 89, column: 24, scope: !129)
!150 = !DILocation(line: 89, column: 5, scope: !129)
!151 = !DILocation(line: 92, column: 24, scope: !129)
!152 = !DILocation(line: 92, column: 5, scope: !129)
!153 = !DILocation(line: 95, column: 17, scope: !129)
!154 = !DILocation(line: 95, column: 21, scope: !129)
!155 = !DILocation(line: 95, column: 5, scope: !129)
!156 = !DILocation(line: 96, column: 17, scope: !129)
!157 = !DILocation(line: 96, column: 21, scope: !129)
!158 = !DILocation(line: 96, column: 5, scope: !129)
!159 = !DILocalVariable(name: "result", scope: !129, file: !1, line: 99, type: !13)
!160 = !DILocation(line: 99, column: 9, scope: !129)
!161 = !DILocation(line: 99, column: 29, scope: !129)
!162 = !DILocation(line: 99, column: 34, scope: !129)
!163 = !DILocation(line: 99, column: 39, scope: !129)
!164 = !DILocation(line: 99, column: 18, scope: !129)
!165 = !DILocation(line: 110, column: 5, scope: !129)
!166 = !DILocation(line: 113, column: 10, scope: !129)
!167 = !DILocation(line: 113, column: 5, scope: !129)
!168 = !DILocation(line: 114, column: 10, scope: !129)
!169 = !DILocation(line: 114, column: 5, scope: !129)
!170 = !DILocation(line: 116, column: 12, scope: !129)
!171 = !DILocation(line: 116, column: 5, scope: !129)
!172 = distinct !DISubprogram(name: "memset", scope: !173, file: !173, line: 12, type: !174, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !33)
!173 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!174 = !DISubroutineType(types: !175)
!175 = !{!3, !3, !13, !176}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 46, baseType: !178)
!177 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!178 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DILocalVariable(name: "dst", arg: 1, scope: !172, file: !173, line: 12, type: !3)
!180 = !DILocation(line: 12, column: 20, scope: !172)
!181 = !DILocalVariable(name: "s", arg: 2, scope: !172, file: !173, line: 12, type: !13)
!182 = !DILocation(line: 12, column: 29, scope: !172)
!183 = !DILocalVariable(name: "count", arg: 3, scope: !172, file: !173, line: 12, type: !176)
!184 = !DILocation(line: 12, column: 39, scope: !172)
!185 = !DILocalVariable(name: "a", scope: !172, file: !173, line: 13, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!187 = !DILocation(line: 13, column: 9, scope: !172)
!188 = !DILocation(line: 13, column: 13, scope: !172)
!189 = !DILocation(line: 14, column: 3, scope: !172)
!190 = !DILocation(line: 14, column: 15, scope: !172)
!191 = !DILocation(line: 14, column: 18, scope: !172)
!192 = !DILocation(line: 15, column: 12, scope: !172)
!193 = !DILocation(line: 15, column: 7, scope: !172)
!194 = !DILocation(line: 15, column: 10, scope: !172)
!195 = distinct !{!195, !189, !192, !196}
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 16, column: 10, scope: !172)
!198 = !DILocation(line: 16, column: 3, scope: !172)
