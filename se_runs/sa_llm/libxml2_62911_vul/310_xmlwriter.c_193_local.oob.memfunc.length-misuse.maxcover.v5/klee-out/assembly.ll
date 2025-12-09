; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/310_xmlwriter.c_193_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/310_xmlwriter.c_193_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlTextWriter = type opaque
%struct._xmlOutputBuffer = type { i8*, i32 (i8*, i8*, i32)*, i32 (i8*)*, %struct._xmlCharEncodingHandler*, %struct._xmlBuf*, %struct._xmlBuf*, i32, i32 }
%struct._xmlCharEncodingHandler = type { i8*, i32 (i8*, i32*, i8*, i32*)*, i32 (i8*, i32*, i8*, i32*)*, i8*, i8*, %struct._uconv_t*, %struct._uconv_t* }
%struct._uconv_t = type { %struct.UConverter*, %struct.UConverter*, [1024 x i16], i16*, i16* }
%struct.UConverter = type opaque
%struct._xmlBuf = type opaque

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/310_xmlwriter.c_193_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlTextWriter*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlTextWriter** %2, metadata !17, metadata !DIExpression()), !dbg !23
  %3 = call %struct._xmlTextWriter* @xmlNewTextWriter(%struct._xmlOutputBuffer* noundef null), !dbg !24
  store %struct._xmlTextWriter* %3, %struct._xmlTextWriter** %2, align 8, !dbg !25
  %4 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %2, align 8, !dbg !26
  %5 = icmp eq %struct._xmlTextWriter* %4, null, !dbg !28
  br i1 %5, label %6, label %7, !dbg !29

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !30
  br label %10, !dbg !30

7:                                                ; preds = %0
  %8 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 noundef 15, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !32
  %9 = load %struct._xmlTextWriter*, %struct._xmlTextWriter** %2, align 8, !dbg !33
  call void @xmlFreeTextWriter(%struct._xmlTextWriter* noundef %9), !dbg !34
  store i32 0, i32* %1, align 4, !dbg !35
  br label %10, !dbg !35

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %1, align 4, !dbg !36
  ret i32 %11, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._xmlTextWriter* @xmlNewTextWriter(%struct._xmlOutputBuffer* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

declare void @xmlFreeTextWriter(%struct._xmlTextWriter* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/310_xmlwriter.c_193_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "7a5e8a3f9dc9cb93a1851e4bdc12f1b7")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !13, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "writer", scope: !12, file: !1, line: 8, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriterPtr", file: !19, line: 27, baseType: !20)
!19 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlwriter.h", directory: "", checksumkind: CSK_MD5, checksum: "8694436144b1fb0aab2e2d6b725035e3")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlTextWriter", file: !19, line: 26, baseType: !22)
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlTextWriter", file: !19, line: 26, flags: DIFlagFwdDecl)
!23 = !DILocation(line: 8, column: 22, scope: !12)
!24 = !DILocation(line: 10, column: 14, scope: !12)
!25 = !DILocation(line: 10, column: 12, scope: !12)
!26 = !DILocation(line: 11, column: 9, scope: !27)
!27 = distinct !DILexicalBlock(scope: !12, file: !1, line: 11, column: 9)
!28 = !DILocation(line: 11, column: 16, scope: !27)
!29 = !DILocation(line: 11, column: 9, scope: !12)
!30 = !DILocation(line: 12, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 25)
!32 = !DILocation(line: 15, column: 5, scope: !12)
!33 = !DILocation(line: 17, column: 23, scope: !12)
!34 = !DILocation(line: 17, column: 5, scope: !12)
!35 = !DILocation(line: 18, column: 5, scope: !12)
!36 = !DILocation(line: 19, column: 1, scope: !12)
