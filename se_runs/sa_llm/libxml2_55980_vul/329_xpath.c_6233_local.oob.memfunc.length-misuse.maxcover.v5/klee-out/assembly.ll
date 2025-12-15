; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/329_xpath.c_6233_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/329_xpath.c_6233_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlXPathContext = type { i32 }
%struct._xmlXPathCompExpr = type { i32 }
%struct._xmlXPathParserContext = type { i8*, i8*, %struct._xmlXPathContext*, %struct._xmlXPathCompExpr*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"creating parser context\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/329_xpath.c_6233_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(%struct._xmlXPathContext* noundef %0, i8* noundef %1) #0 !dbg !40 {
  %3 = alloca %struct._xmlXPathContext*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlXPathContext* %0, %struct._xmlXPathContext** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %3, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !49, metadata !DIExpression()), !dbg !50
  %5 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %3, align 8, !dbg !51
  %6 = load i8*, i8** %4, align 8, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !54 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !60, metadata !DIExpression()), !dbg !61
  %3 = load i64, i64* %2, align 8, !dbg !62
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !63
  ret i8* %4, !dbg !64
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !65 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load i8*, i8** %2, align 8, !dbg !70
  call void @free(i8* noundef %3) #7, !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathCompExpr* @xmlXPathNewCompExpr() #0 !dbg !73 {
  %1 = alloca %struct._xmlXPathCompExpr*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathCompExpr** %1, metadata !76, metadata !DIExpression()), !dbg !77
  %2 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !78
  %3 = bitcast i8* %2 to %struct._xmlXPathCompExpr*, !dbg !79
  store %struct._xmlXPathCompExpr* %3, %struct._xmlXPathCompExpr** %1, align 8, !dbg !77
  %4 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %1, align 8, !dbg !80
  %5 = icmp ne %struct._xmlXPathCompExpr* %4, null, !dbg !80
  br i1 %5, label %6, label %10, !dbg !82

6:                                                ; preds = %0
  %7 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %1, align 8, !dbg !83
  %8 = bitcast %struct._xmlXPathCompExpr* %7 to i8*, !dbg !85
  %9 = call i8* @memset(i8* %8, i32 0, i64 4), !dbg !85
  br label %10, !dbg !86

10:                                               ; preds = %6, %0
  %11 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %1, align 8, !dbg !87
  ret %struct._xmlXPathCompExpr* %11, !dbg !88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlXPathParserContext* @xmlXPathNewParserContext(i8* noundef %0, %struct._xmlXPathContext* noundef %1) #0 !dbg !89 {
  %3 = alloca %struct._xmlXPathParserContext*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlXPathContext*, align 8
  %6 = alloca %struct._xmlXPathParserContext*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !92, metadata !DIExpression()), !dbg !93
  store %struct._xmlXPathContext* %1, %struct._xmlXPathContext** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext** %5, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata %struct._xmlXPathParserContext** %6, metadata !96, metadata !DIExpression()), !dbg !97
  %7 = call i8* @xmlMalloc(i64 noundef 40), !dbg !98
  %8 = bitcast i8* %7 to %struct._xmlXPathParserContext*, !dbg !99
  store %struct._xmlXPathParserContext* %8, %struct._xmlXPathParserContext** %6, align 8, !dbg !100
  %9 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !101
  %10 = icmp eq %struct._xmlXPathParserContext* %9, null, !dbg !103
  br i1 %10, label %11, label %13, !dbg !104

11:                                               ; preds = %2
  %12 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %5, align 8, !dbg !105
  call void @xmlXPathErrMemory(%struct._xmlXPathContext* noundef %12, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)), !dbg !107
  store %struct._xmlXPathParserContext* null, %struct._xmlXPathParserContext** %3, align 8, !dbg !108
  br label %40, !dbg !108

13:                                               ; preds = %2
  %14 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !109
  %15 = bitcast %struct._xmlXPathParserContext* %14 to i8*, !dbg !110
  %16 = call i8* @memset(i8* %15, i32 0, i64 40), !dbg !110
  %17 = load i8*, i8** %4, align 8, !dbg !111
  %18 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !112
  %19 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %18, i32 0, i32 1, !dbg !113
  store i8* %17, i8** %19, align 8, !dbg !114
  %20 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !115
  %21 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %20, i32 0, i32 0, !dbg !116
  store i8* %17, i8** %21, align 8, !dbg !117
  %22 = load %struct._xmlXPathContext*, %struct._xmlXPathContext** %5, align 8, !dbg !118
  %23 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !119
  %24 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %23, i32 0, i32 2, !dbg !120
  store %struct._xmlXPathContext* %22, %struct._xmlXPathContext** %24, align 8, !dbg !121
  %25 = call %struct._xmlXPathCompExpr* @xmlXPathNewCompExpr(), !dbg !122
  %26 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !123
  %27 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %26, i32 0, i32 3, !dbg !124
  store %struct._xmlXPathCompExpr* %25, %struct._xmlXPathCompExpr** %27, align 8, !dbg !125
  %28 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !126
  %29 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %28, i32 0, i32 3, !dbg !128
  %30 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %29, align 8, !dbg !128
  %31 = icmp eq %struct._xmlXPathCompExpr* %30, null, !dbg !129
  br i1 %31, label %32, label %38, !dbg !130

32:                                               ; preds = %13
  %33 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !131
  %34 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %33, i32 0, i32 4, !dbg !133
  %35 = load i8*, i8** %34, align 8, !dbg !133
  call void @xmlFree(i8* noundef %35), !dbg !134
  %36 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !135
  %37 = bitcast %struct._xmlXPathParserContext* %36 to i8*, !dbg !135
  call void @xmlFree(i8* noundef %37), !dbg !136
  store %struct._xmlXPathParserContext* null, %struct._xmlXPathParserContext** %3, align 8, !dbg !137
  br label %40, !dbg !137

38:                                               ; preds = %13
  %39 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %6, align 8, !dbg !138
  store %struct._xmlXPathParserContext* %39, %struct._xmlXPathParserContext** %3, align 8, !dbg !139
  br label %40, !dbg !139

40:                                               ; preds = %38, %32, %11
  %41 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %3, align 8, !dbg !140
  ret %struct._xmlXPathParserContext* %41, !dbg !140
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !141 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i8], align 1
  %3 = alloca %struct._xmlXPathContext, align 4
  %4 = alloca %struct._xmlXPathParserContext*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1 x i8]* %2, metadata !144, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata %struct._xmlXPathContext* %3, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata %struct._xmlXPathParserContext** %4, metadata !151, metadata !DIExpression()), !dbg !152
  %5 = bitcast [1 x i8]* %2 to i8*, !dbg !153
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !154
  %6 = getelementptr inbounds [1 x i8], [1 x i8]* %2, i64 0, i64 0, !dbg !155
  %7 = call %struct._xmlXPathParserContext* @xmlXPathNewParserContext(i8* noundef %6, %struct._xmlXPathContext* noundef %3), !dbg !156
  store %struct._xmlXPathParserContext* %7, %struct._xmlXPathParserContext** %4, align 8, !dbg !157
  %8 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !158
  %9 = icmp ne %struct._xmlXPathParserContext* %8, null, !dbg !160
  br i1 %9, label %10, label %24, !dbg !161

10:                                               ; preds = %0
  %11 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !162
  %12 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !164
  %13 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %12, i32 0, i32 3, !dbg !166
  %14 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %13, align 8, !dbg !166
  %15 = icmp ne %struct._xmlXPathCompExpr* %14, null, !dbg !164
  br i1 %15, label %16, label %21, !dbg !167

16:                                               ; preds = %10
  %17 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !168
  %18 = getelementptr inbounds %struct._xmlXPathParserContext, %struct._xmlXPathParserContext* %17, i32 0, i32 3, !dbg !170
  %19 = load %struct._xmlXPathCompExpr*, %struct._xmlXPathCompExpr** %18, align 8, !dbg !170
  %20 = bitcast %struct._xmlXPathCompExpr* %19 to i8*, !dbg !168
  call void @free(i8* noundef %20) #7, !dbg !171
  br label %21, !dbg !172

21:                                               ; preds = %16, %10
  %22 = load %struct._xmlXPathParserContext*, %struct._xmlXPathParserContext** %4, align 8, !dbg !173
  %23 = bitcast %struct._xmlXPathParserContext* %22 to i8*, !dbg !173
  call void @free(i8* noundef %23) #7, !dbg !174
  br label %24, !dbg !175

24:                                               ; preds = %21, %0
  ret i32 0, !dbg !176
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !189
  %8 = load i8*, i8** %4, align 8, !dbg !190
  store i8* %8, i8** %7, align 8, !dbg !189
  br label %9, !dbg !191

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !192
  %11 = add i64 %10, -1, !dbg !192
  store i64 %11, i64* %6, align 8, !dbg !192
  %12 = icmp ugt i64 %10, 0, !dbg !193
  br i1 %12, label %13, label %18, !dbg !191

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !194
  %15 = trunc i32 %14 to i8, !dbg !194
  %16 = load i8*, i8** %7, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %7, align 8, !dbg !195
  store i8 %15, i8* %16, align 1, !dbg !196
  br label %9, !dbg !191, !llvm.loop !197

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %19, !dbg !200
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39, !39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/329_xpath.c_6233_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "238f6d124b435fe7f7f6d3f72f48bdc0")
!2 = !{!3, !9, !29}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathCompExpr", file: !1, line: 14, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathCompExpr", file: !1, line: 30, size: 32, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !5, file: !1, line: 31, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContextPtr", file: !1, line: 13, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathParserContext", file: !1, line: 12, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathParserContext", file: !1, line: 22, size: 320, elements: !13)
!13 = !{!14, !19, !20, !27, !28}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !12, file: !1, line: 23, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 15, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !12, file: !1, line: 24, baseType: !15, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !12, file: !1, line: 25, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContextPtr", file: !1, line: 11, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlXPathContext", file: !1, line: 10, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlXPathContext", file: !1, line: 18, size: 32, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !24, file: !1, line: 19, baseType: !8, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !12, file: !1, line: 26, baseType: !3, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "valueTab", scope: !12, file: !1, line: 27, baseType: !29, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"Ubuntu clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 35, type: !41, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !21, !43}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !{}
!47 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !1, line: 35, type: !21)
!48 = !DILocation(line: 35, column: 43, scope: !40)
!49 = !DILocalVariable(name: "msg", arg: 2, scope: !40, file: !1, line: 35, type: !43)
!50 = !DILocation(line: 35, column: 61, scope: !40)
!51 = !DILocation(line: 36, column: 11, scope: !40)
!52 = !DILocation(line: 37, column: 11, scope: !40)
!53 = !DILocation(line: 38, column: 1, scope: !40)
!54 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 40, type: !55, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{!29, !57}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "size", arg: 1, scope: !54, file: !1, line: 40, type: !57)
!61 = !DILocation(line: 40, column: 24, scope: !54)
!62 = !DILocation(line: 41, column: 19, scope: !54)
!63 = !DILocation(line: 41, column: 12, scope: !54)
!64 = !DILocation(line: 41, column: 5, scope: !54)
!65 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 44, type: !66, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !29}
!68 = !DILocalVariable(name: "ptr", arg: 1, scope: !65, file: !1, line: 44, type: !29)
!69 = !DILocation(line: 44, column: 20, scope: !65)
!70 = !DILocation(line: 45, column: 10, scope: !65)
!71 = !DILocation(line: 45, column: 5, scope: !65)
!72 = !DILocation(line: 46, column: 1, scope: !65)
!73 = distinct !DISubprogram(name: "xmlXPathNewCompExpr", scope: !1, file: !1, line: 48, type: !74, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!74 = !DISubroutineType(types: !75)
!75 = !{!3}
!76 = !DILocalVariable(name: "comp", scope: !73, file: !1, line: 49, type: !3)
!77 = !DILocation(line: 49, column: 23, scope: !73)
!78 = !DILocation(line: 49, column: 50, scope: !73)
!79 = !DILocation(line: 49, column: 30, scope: !73)
!80 = !DILocation(line: 50, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !73, file: !1, line: 50, column: 9)
!82 = !DILocation(line: 50, column: 9, scope: !73)
!83 = !DILocation(line: 51, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 50, column: 15)
!85 = !DILocation(line: 51, column: 9, scope: !84)
!86 = !DILocation(line: 52, column: 5, scope: !84)
!87 = !DILocation(line: 53, column: 12, scope: !73)
!88 = !DILocation(line: 53, column: 5, scope: !73)
!89 = distinct !DISubprogram(name: "xmlXPathNewParserContext", scope: !1, file: !1, line: 57, type: !90, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!90 = !DISubroutineType(types: !91)
!91 = !{!9, !15, !21}
!92 = !DILocalVariable(name: "str", arg: 1, scope: !89, file: !1, line: 57, type: !15)
!93 = !DILocation(line: 57, column: 66, scope: !89)
!94 = !DILocalVariable(name: "ctxt", arg: 2, scope: !89, file: !1, line: 57, type: !21)
!95 = !DILocation(line: 57, column: 90, scope: !89)
!96 = !DILocalVariable(name: "ret", scope: !89, file: !1, line: 58, type: !9)
!97 = !DILocation(line: 58, column: 30, scope: !89)
!98 = !DILocation(line: 60, column: 38, scope: !89)
!99 = !DILocation(line: 60, column: 11, scope: !89)
!100 = !DILocation(line: 60, column: 9, scope: !89)
!101 = !DILocation(line: 61, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !89, file: !1, line: 61, column: 9)
!103 = !DILocation(line: 61, column: 13, scope: !102)
!104 = !DILocation(line: 61, column: 9, scope: !89)
!105 = !DILocation(line: 62, column: 27, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 61, column: 22)
!107 = !DILocation(line: 62, column: 9, scope: !106)
!108 = !DILocation(line: 63, column: 9, scope: !106)
!109 = !DILocation(line: 65, column: 12, scope: !89)
!110 = !DILocation(line: 65, column: 5, scope: !89)
!111 = !DILocation(line: 66, column: 28, scope: !89)
!112 = !DILocation(line: 66, column: 16, scope: !89)
!113 = !DILocation(line: 66, column: 21, scope: !89)
!114 = !DILocation(line: 66, column: 26, scope: !89)
!115 = !DILocation(line: 66, column: 5, scope: !89)
!116 = !DILocation(line: 66, column: 10, scope: !89)
!117 = !DILocation(line: 66, column: 14, scope: !89)
!118 = !DILocation(line: 67, column: 20, scope: !89)
!119 = !DILocation(line: 67, column: 5, scope: !89)
!120 = !DILocation(line: 67, column: 10, scope: !89)
!121 = !DILocation(line: 67, column: 18, scope: !89)
!122 = !DILocation(line: 69, column: 17, scope: !89)
!123 = !DILocation(line: 69, column: 5, scope: !89)
!124 = !DILocation(line: 69, column: 10, scope: !89)
!125 = !DILocation(line: 69, column: 15, scope: !89)
!126 = !DILocation(line: 70, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 9)
!128 = !DILocation(line: 70, column: 14, scope: !127)
!129 = !DILocation(line: 70, column: 19, scope: !127)
!130 = !DILocation(line: 70, column: 9, scope: !89)
!131 = !DILocation(line: 71, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 70, column: 28)
!133 = !DILocation(line: 71, column: 22, scope: !132)
!134 = !DILocation(line: 71, column: 9, scope: !132)
!135 = !DILocation(line: 72, column: 17, scope: !132)
!136 = !DILocation(line: 72, column: 9, scope: !132)
!137 = !DILocation(line: 73, column: 9, scope: !132)
!138 = !DILocation(line: 75, column: 12, scope: !89)
!139 = !DILocation(line: 75, column: 5, scope: !89)
!140 = !DILocation(line: 76, column: 1, scope: !89)
!141 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 78, type: !142, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!142 = !DISubroutineType(types: !143)
!143 = !{!8}
!144 = !DILocalVariable(name: "str", scope: !141, file: !1, line: 80, type: !145)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !DILocation(line: 80, column: 13, scope: !141)
!149 = !DILocalVariable(name: "ctxt", scope: !141, file: !1, line: 81, type: !23)
!150 = !DILocation(line: 81, column: 21, scope: !141)
!151 = !DILocalVariable(name: "ret", scope: !141, file: !1, line: 82, type: !9)
!152 = !DILocation(line: 82, column: 30, scope: !141)
!153 = !DILocation(line: 85, column: 24, scope: !141)
!154 = !DILocation(line: 85, column: 5, scope: !141)
!155 = !DILocation(line: 88, column: 36, scope: !141)
!156 = !DILocation(line: 88, column: 11, scope: !141)
!157 = !DILocation(line: 88, column: 9, scope: !141)
!158 = !DILocation(line: 91, column: 9, scope: !159)
!159 = distinct !DILexicalBlock(scope: !141, file: !1, line: 91, column: 9)
!160 = !DILocation(line: 91, column: 13, scope: !159)
!161 = !DILocation(line: 91, column: 9, scope: !141)
!162 = !DILocation(line: 101, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 91, column: 22)
!164 = !DILocation(line: 104, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !1, line: 104, column: 13)
!166 = !DILocation(line: 104, column: 18, scope: !165)
!167 = !DILocation(line: 104, column: 13, scope: !163)
!168 = !DILocation(line: 105, column: 18, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 104, column: 24)
!170 = !DILocation(line: 105, column: 23, scope: !169)
!171 = !DILocation(line: 105, column: 13, scope: !169)
!172 = !DILocation(line: 106, column: 9, scope: !169)
!173 = !DILocation(line: 107, column: 14, scope: !163)
!174 = !DILocation(line: 107, column: 9, scope: !163)
!175 = !DILocation(line: 108, column: 5, scope: !163)
!176 = !DILocation(line: 110, column: 5, scope: !141)
!177 = distinct !DISubprogram(name: "memset", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !46)
!178 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!179 = !DISubroutineType(types: !180)
!180 = !{!29, !29, !8, !57}
!181 = !DILocalVariable(name: "dst", arg: 1, scope: !177, file: !178, line: 12, type: !29)
!182 = !DILocation(line: 12, column: 20, scope: !177)
!183 = !DILocalVariable(name: "s", arg: 2, scope: !177, file: !178, line: 12, type: !8)
!184 = !DILocation(line: 12, column: 29, scope: !177)
!185 = !DILocalVariable(name: "count", arg: 3, scope: !177, file: !178, line: 12, type: !57)
!186 = !DILocation(line: 12, column: 39, scope: !177)
!187 = !DILocalVariable(name: "a", scope: !177, file: !178, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!189 = !DILocation(line: 13, column: 9, scope: !177)
!190 = !DILocation(line: 13, column: 13, scope: !177)
!191 = !DILocation(line: 14, column: 3, scope: !177)
!192 = !DILocation(line: 14, column: 15, scope: !177)
!193 = !DILocation(line: 14, column: 18, scope: !177)
!194 = !DILocation(line: 15, column: 12, scope: !177)
!195 = !DILocation(line: 15, column: 7, scope: !177)
!196 = !DILocation(line: 15, column: 10, scope: !177)
!197 = distinct !{!197, !191, !194, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 16, column: 10, scope: !177)
!200 = !DILocation(line: 16, column: 3, scope: !177)
