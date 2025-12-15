; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/010_SAX2.c_2000_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/010_SAX2.c_2000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlAttr = type { i8*, i32, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8* }
%struct._xmlNode = type { i32 }
%struct._xmlDoc = type { i32 }
%struct.parserCtxt = type { %struct._xmlAttr*, i32, %struct._xmlNode*, %struct._xmlDoc*, i32 }
%struct._xmlNs = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"(ctxt->freeAttrsNr >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/010_SAX2.c_2000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSAX2GetAttribute = private unnamed_addr constant [66 x i8] c"xmlAttr *xmlSAX2GetAttribute(parserCtxt *, const char *, xmlNs *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"attr_next\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dictNames\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"localname\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlAttr* @xmlSAX2GetAttribute(%struct.parserCtxt* noundef %0, i8* noundef %1, %struct._xmlNs* noundef %2) #0 !dbg !14 {
  %4 = alloca %struct._xmlAttr*, align 8
  %5 = alloca %struct.parserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlNs*, align 8
  %8 = alloca %struct._xmlAttr*, align 8
  store %struct.parserCtxt* %0, %struct.parserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.parserCtxt** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct._xmlNs* %2, %struct._xmlNs** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %7, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %8, metadata !62, metadata !DIExpression()), !dbg !63
  %9 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !64
  %10 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %9, i32 0, i32 0, !dbg !66
  %11 = load %struct._xmlAttr*, %struct._xmlAttr** %10, align 8, !dbg !66
  %12 = icmp ne %struct._xmlAttr* %11, null, !dbg !67
  br i1 %12, label %13, label %65, !dbg !68

13:                                               ; preds = %3
  %14 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !69
  %15 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %14, i32 0, i32 0, !dbg !71
  %16 = load %struct._xmlAttr*, %struct._xmlAttr** %15, align 8, !dbg !71
  store %struct._xmlAttr* %16, %struct._xmlAttr** %8, align 8, !dbg !72
  %17 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !73
  %18 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %17, i32 0, i32 0, !dbg !74
  %19 = load i8*, i8** %18, align 8, !dbg !74
  %20 = bitcast i8* %19 to %struct._xmlAttr*, !dbg !73
  %21 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !75
  %22 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %21, i32 0, i32 0, !dbg !76
  store %struct._xmlAttr* %20, %struct._xmlAttr** %22, align 8, !dbg !77
  %23 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !78
  %24 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %23, i32 0, i32 1, !dbg !79
  %25 = load i32, i32* %24, align 8, !dbg !80
  %26 = add nsw i32 %25, -1, !dbg !80
  store i32 %26, i32* %24, align 8, !dbg !80
  %27 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !81
  %28 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %27, i32 0, i32 1, !dbg !81
  %29 = load i32, i32* %28, align 8, !dbg !81
  %30 = icmp sge i32 %29, 0, !dbg !81
  br i1 %30, label %31, label %33, !dbg !81

31:                                               ; preds = %13
  br i1 true, label %32, label %33, !dbg !81

32:                                               ; preds = %31
  br label %35, !dbg !81

33:                                               ; preds = %31, %13
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlSAX2GetAttribute, i64 0, i64 0)), !dbg !81
  br label %35, !dbg !81

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.xmlSAX2GetAttribute, i64 0, i64 0)), !dbg !82
  %37 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !83
  %38 = bitcast %struct._xmlAttr* %37 to i8*, !dbg !84
  %39 = call i8* @memset(i8* %38, i32 0, i64 48), !dbg !84
  %40 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !85
  %41 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %40, i32 0, i32 1, !dbg !86
  store i32 1, i32* %41, align 8, !dbg !87
  %42 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !88
  %43 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %42, i32 0, i32 2, !dbg !89
  %44 = load %struct._xmlNode*, %struct._xmlNode** %43, align 8, !dbg !89
  %45 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !90
  %46 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %45, i32 0, i32 2, !dbg !91
  store %struct._xmlNode* %44, %struct._xmlNode** %46, align 8, !dbg !92
  %47 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !93
  %48 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %47, i32 0, i32 3, !dbg !94
  %49 = load %struct._xmlDoc*, %struct._xmlDoc** %48, align 8, !dbg !94
  %50 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !95
  %51 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %50, i32 0, i32 3, !dbg !96
  store %struct._xmlDoc* %49, %struct._xmlDoc** %51, align 8, !dbg !97
  %52 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !98
  %53 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !99
  %54 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %53, i32 0, i32 4, !dbg !100
  store %struct._xmlNs* %52, %struct._xmlNs** %54, align 8, !dbg !101
  %55 = load %struct.parserCtxt*, %struct.parserCtxt** %5, align 8, !dbg !102
  %56 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %55, i32 0, i32 4, !dbg !104
  %57 = load i32, i32* %56, align 8, !dbg !104
  %58 = icmp ne i32 %57, 0, !dbg !102
  br i1 %58, label %59, label %63, !dbg !105

59:                                               ; preds = %35
  %60 = load i8*, i8** %6, align 8, !dbg !106
  %61 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !107
  %62 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %61, i32 0, i32 5, !dbg !108
  store i8* %60, i8** %62, align 8, !dbg !109
  br label %63, !dbg !107

63:                                               ; preds = %59, %35
  %64 = load %struct._xmlAttr*, %struct._xmlAttr** %8, align 8, !dbg !110
  store %struct._xmlAttr* %64, %struct._xmlAttr** %4, align 8, !dbg !111
  br label %66, !dbg !111

65:                                               ; preds = %3
  store %struct._xmlAttr* null, %struct._xmlAttr** %4, align 8, !dbg !112
  br label %66, !dbg !112

66:                                               ; preds = %65, %63
  %67 = load %struct._xmlAttr*, %struct._xmlAttr** %4, align 8, !dbg !113
  ret %struct._xmlAttr* %67, !dbg !113
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.parserCtxt, align 8
  %3 = alloca %struct._xmlAttr, align 8
  %4 = alloca %struct._xmlNode, align 4
  %5 = alloca %struct._xmlDoc, align 4
  %6 = alloca %struct._xmlNs, align 4
  %7 = alloca [32 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.parserCtxt* %2, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct._xmlAttr* %3, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %4, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata %struct._xmlDoc* %5, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %6, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !127, metadata !DIExpression()), !dbg !131
  %8 = bitcast %struct.parserCtxt* %2 to i8*, !dbg !132
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !133
  %9 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 0, !dbg !134
  %10 = load %struct._xmlAttr*, %struct._xmlAttr** %9, align 8, !dbg !134
  %11 = icmp ne %struct._xmlAttr* %10, null, !dbg !136
  br i1 %11, label %12, label %16, !dbg !137

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 0, !dbg !138
  store %struct._xmlAttr* %3, %struct._xmlAttr** %13, align 8, !dbg !140
  %14 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %3, i32 0, i32 0, !dbg !141
  %15 = bitcast i8** %14 to i8*, !dbg !142
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !143
  br label %16, !dbg !144

16:                                               ; preds = %12, %0
  %17 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 0, !dbg !145
  %18 = load %struct._xmlAttr*, %struct._xmlAttr** %17, align 8, !dbg !145
  %19 = icmp ne %struct._xmlAttr* %18, null, !dbg !147
  br i1 %19, label %20, label %26, !dbg !148

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 1, !dbg !149
  %22 = load i32, i32* %21, align 8, !dbg !149
  %23 = icmp sgt i32 %22, 0, !dbg !151
  %24 = zext i1 %23 to i32, !dbg !151
  %25 = sext i32 %24 to i64, !dbg !152
  call void @klee_assume(i64 noundef %25), !dbg !153
  br label %26, !dbg !154

26:                                               ; preds = %20, %16
  %27 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 2, !dbg !155
  store %struct._xmlNode* %4, %struct._xmlNode** %27, align 8, !dbg !156
  %28 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 3, !dbg !157
  store %struct._xmlDoc* %5, %struct._xmlDoc** %28, align 8, !dbg !158
  %29 = getelementptr inbounds %struct.parserCtxt, %struct.parserCtxt* %2, i32 0, i32 4, !dbg !159
  %30 = bitcast i32* %29 to i8*, !dbg !160
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !dbg !161
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !162
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !163
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 31, !dbg !164
  store i8 0, i8* %32, align 1, !dbg !165
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0, !dbg !166
  %34 = call %struct._xmlAttr* @xmlSAX2GetAttribute(%struct.parserCtxt* noundef %2, i8* noundef %33, %struct._xmlNs* noundef %6), !dbg !167
  ret i32 0, !dbg !168
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #5 !dbg !169 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !176, metadata !DIExpression()), !dbg !177
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i8** %7, metadata !182, metadata !DIExpression()), !dbg !184
  %8 = load i8*, i8** %4, align 8, !dbg !185
  store i8* %8, i8** %7, align 8, !dbg !184
  br label %9, !dbg !186

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !187
  %11 = add i64 %10, -1, !dbg !187
  store i64 %11, i64* %6, align 8, !dbg !187
  %12 = icmp ugt i64 %10, 0, !dbg !188
  br i1 %12, label %13, label %18, !dbg !186

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !189
  %15 = trunc i32 %14 to i8, !dbg !189
  %16 = load i8*, i8** %7, align 8, !dbg !190
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !190
  store i8* %17, i8** %7, align 8, !dbg !190
  store i8 %15, i8* %16, align 1, !dbg !191
  br label %9, !dbg !186, !llvm.loop !192

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %19, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/010_SAX2.c_2000_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "004bcb498dbf8e4ea46bae6c9dbb24e0")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlSAX2GetAttribute", scope: !1, file: !1, line: 48, type: !15, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !55)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !46, !43, !37}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 10, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 15, size: 384, elements: !20)
!20 = !{!21, !22, !24, !30, !36, !42}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !1, line: 16, baseType: !3, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !1, line: 17, baseType: !23, size: 32, offset: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !19, file: !1, line: 18, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 24, size: 32, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !27, file: !1, line: 25, baseType: !23, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !19, file: !1, line: 19, baseType: !31, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 28, size: 32, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !33, file: !1, line: 29, baseType: !23, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !19, file: !1, line: 20, baseType: !37, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 13, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 32, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !39, file: !1, line: 33, baseType: !23, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !19, file: !1, line: 21, baseType: !43, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "parserCtxt", file: !1, line: 42, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 36, size: 320, elements: !49)
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !48, file: !1, line: 37, baseType: !17, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !48, file: !1, line: 38, baseType: !23, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !1, line: 39, baseType: !25, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !48, file: !1, line: 40, baseType: !31, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dictNames", scope: !48, file: !1, line: 41, baseType: !23, size: 32, offset: 256)
!55 = !{}
!56 = !DILocalVariable(name: "ctxt", arg: 1, scope: !14, file: !1, line: 48, type: !46)
!57 = !DILocation(line: 48, column: 42, scope: !14)
!58 = !DILocalVariable(name: "localname", arg: 2, scope: !14, file: !1, line: 48, type: !43)
!59 = !DILocation(line: 48, column: 60, scope: !14)
!60 = !DILocalVariable(name: "namespace", arg: 3, scope: !14, file: !1, line: 48, type: !37)
!61 = !DILocation(line: 48, column: 78, scope: !14)
!62 = !DILocalVariable(name: "ret", scope: !14, file: !1, line: 49, type: !17)
!63 = !DILocation(line: 49, column: 14, scope: !14)
!64 = !DILocation(line: 51, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !14, file: !1, line: 51, column: 9)
!66 = !DILocation(line: 51, column: 15, scope: !65)
!67 = !DILocation(line: 51, column: 25, scope: !65)
!68 = !DILocation(line: 51, column: 9, scope: !14)
!69 = !DILocation(line: 52, column: 15, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 51, column: 34)
!71 = !DILocation(line: 52, column: 21, scope: !70)
!72 = !DILocation(line: 52, column: 13, scope: !70)
!73 = !DILocation(line: 53, column: 27, scope: !70)
!74 = !DILocation(line: 53, column: 32, scope: !70)
!75 = !DILocation(line: 53, column: 9, scope: !70)
!76 = !DILocation(line: 53, column: 15, scope: !70)
!77 = !DILocation(line: 53, column: 25, scope: !70)
!78 = !DILocation(line: 54, column: 9, scope: !70)
!79 = !DILocation(line: 54, column: 15, scope: !70)
!80 = !DILocation(line: 54, column: 26, scope: !70)
!81 = !DILocation(line: 58, column: 9, scope: !70)
!82 = !DILocation(line: 59, column: 9, scope: !70)
!83 = !DILocation(line: 61, column: 16, scope: !70)
!84 = !DILocation(line: 61, column: 9, scope: !70)
!85 = !DILocation(line: 62, column: 9, scope: !70)
!86 = !DILocation(line: 62, column: 14, scope: !70)
!87 = !DILocation(line: 62, column: 19, scope: !70)
!88 = !DILocation(line: 63, column: 23, scope: !70)
!89 = !DILocation(line: 63, column: 29, scope: !70)
!90 = !DILocation(line: 63, column: 9, scope: !70)
!91 = !DILocation(line: 63, column: 14, scope: !70)
!92 = !DILocation(line: 63, column: 21, scope: !70)
!93 = !DILocation(line: 64, column: 20, scope: !70)
!94 = !DILocation(line: 64, column: 26, scope: !70)
!95 = !DILocation(line: 64, column: 9, scope: !70)
!96 = !DILocation(line: 64, column: 14, scope: !70)
!97 = !DILocation(line: 64, column: 18, scope: !70)
!98 = !DILocation(line: 65, column: 19, scope: !70)
!99 = !DILocation(line: 65, column: 9, scope: !70)
!100 = !DILocation(line: 65, column: 14, scope: !70)
!101 = !DILocation(line: 65, column: 17, scope: !70)
!102 = !DILocation(line: 67, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !70, file: !1, line: 67, column: 13)
!104 = !DILocation(line: 67, column: 19, scope: !103)
!105 = !DILocation(line: 67, column: 13, scope: !70)
!106 = !DILocation(line: 68, column: 25, scope: !103)
!107 = !DILocation(line: 68, column: 13, scope: !103)
!108 = !DILocation(line: 68, column: 18, scope: !103)
!109 = !DILocation(line: 68, column: 23, scope: !103)
!110 = !DILocation(line: 70, column: 16, scope: !70)
!111 = !DILocation(line: 70, column: 9, scope: !70)
!112 = !DILocation(line: 73, column: 5, scope: !14)
!113 = !DILocation(line: 74, column: 1, scope: !14)
!114 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 76, type: !115, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !55)
!115 = !DISubroutineType(types: !116)
!116 = !{!23}
!117 = !DILocalVariable(name: "ctxt", scope: !114, file: !1, line: 77, type: !47)
!118 = !DILocation(line: 77, column: 16, scope: !114)
!119 = !DILocalVariable(name: "attr", scope: !114, file: !1, line: 78, type: !18)
!120 = !DILocation(line: 78, column: 13, scope: !114)
!121 = !DILocalVariable(name: "node", scope: !114, file: !1, line: 79, type: !26)
!122 = !DILocation(line: 79, column: 13, scope: !114)
!123 = !DILocalVariable(name: "doc", scope: !114, file: !1, line: 80, type: !32)
!124 = !DILocation(line: 80, column: 12, scope: !114)
!125 = !DILocalVariable(name: "ns", scope: !114, file: !1, line: 81, type: !38)
!126 = !DILocation(line: 81, column: 11, scope: !114)
!127 = !DILocalVariable(name: "localname_buf", scope: !114, file: !1, line: 82, type: !128)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 32)
!131 = !DILocation(line: 82, column: 10, scope: !114)
!132 = !DILocation(line: 85, column: 24, scope: !114)
!133 = !DILocation(line: 85, column: 5, scope: !114)
!134 = !DILocation(line: 88, column: 14, scope: !135)
!135 = distinct !DILexicalBlock(scope: !114, file: !1, line: 88, column: 9)
!136 = !DILocation(line: 88, column: 24, scope: !135)
!137 = !DILocation(line: 88, column: 9, scope: !114)
!138 = !DILocation(line: 90, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !1, line: 88, column: 33)
!140 = !DILocation(line: 90, column: 24, scope: !139)
!141 = !DILocation(line: 92, column: 34, scope: !139)
!142 = !DILocation(line: 92, column: 28, scope: !139)
!143 = !DILocation(line: 92, column: 9, scope: !139)
!144 = !DILocation(line: 93, column: 5, scope: !139)
!145 = !DILocation(line: 96, column: 14, scope: !146)
!146 = distinct !DILexicalBlock(scope: !114, file: !1, line: 96, column: 9)
!147 = !DILocation(line: 96, column: 24, scope: !146)
!148 = !DILocation(line: 96, column: 9, scope: !114)
!149 = !DILocation(line: 97, column: 26, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 96, column: 33)
!151 = !DILocation(line: 97, column: 38, scope: !150)
!152 = !DILocation(line: 97, column: 21, scope: !150)
!153 = !DILocation(line: 97, column: 9, scope: !150)
!154 = !DILocation(line: 98, column: 5, scope: !150)
!155 = !DILocation(line: 101, column: 10, scope: !114)
!156 = !DILocation(line: 101, column: 15, scope: !114)
!157 = !DILocation(line: 102, column: 10, scope: !114)
!158 = !DILocation(line: 102, column: 16, scope: !114)
!159 = !DILocation(line: 105, column: 30, scope: !114)
!160 = !DILocation(line: 105, column: 24, scope: !114)
!161 = !DILocation(line: 105, column: 5, scope: !114)
!162 = !DILocation(line: 108, column: 24, scope: !114)
!163 = !DILocation(line: 108, column: 5, scope: !114)
!164 = !DILocation(line: 109, column: 5, scope: !114)
!165 = !DILocation(line: 109, column: 23, scope: !114)
!166 = !DILocation(line: 112, column: 32, scope: !114)
!167 = !DILocation(line: 112, column: 5, scope: !114)
!168 = !DILocation(line: 114, column: 5, scope: !114)
!169 = distinct !DISubprogram(name: "memset", scope: !170, file: !170, line: 12, type: !171, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !55)
!170 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!171 = !DISubroutineType(types: !172)
!172 = !{!3, !3, !23, !173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 46, baseType: !175)
!174 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!175 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!176 = !DILocalVariable(name: "dst", arg: 1, scope: !169, file: !170, line: 12, type: !3)
!177 = !DILocation(line: 12, column: 20, scope: !169)
!178 = !DILocalVariable(name: "s", arg: 2, scope: !169, file: !170, line: 12, type: !23)
!179 = !DILocation(line: 12, column: 29, scope: !169)
!180 = !DILocalVariable(name: "count", arg: 3, scope: !169, file: !170, line: 12, type: !173)
!181 = !DILocation(line: 12, column: 39, scope: !169)
!182 = !DILocalVariable(name: "a", scope: !169, file: !170, line: 13, type: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!184 = !DILocation(line: 13, column: 9, scope: !169)
!185 = !DILocation(line: 13, column: 13, scope: !169)
!186 = !DILocation(line: 14, column: 3, scope: !169)
!187 = !DILocation(line: 14, column: 15, scope: !169)
!188 = !DILocation(line: 14, column: 18, scope: !169)
!189 = !DILocation(line: 15, column: 12, scope: !169)
!190 = !DILocation(line: 15, column: 7, scope: !169)
!191 = !DILocation(line: 15, column: 10, scope: !169)
!192 = distinct !{!192, !186, !189, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 16, column: 10, scope: !169)
!195 = !DILocation(line: 16, column: 3, scope: !169)
