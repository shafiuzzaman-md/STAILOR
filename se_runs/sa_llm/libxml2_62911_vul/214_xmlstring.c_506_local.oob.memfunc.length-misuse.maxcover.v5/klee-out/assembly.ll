; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"str1_buf\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"str2_buf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@xmlFree = external global void (i8*)*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %4, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %5, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !33
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !34
  %9 = bitcast i32* %4 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !36
  %10 = bitcast i32* %5 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !38
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !39
  store i8 0, i8* %11, align 1, !dbg !40
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !41
  store i8 0, i8* %12, align 1, !dbg !42
  call void @llvm.dbg.declare(metadata i8** %6, metadata !43, metadata !DIExpression()), !dbg !45
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !46
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !47
  %15 = load i32, i32* %5, align 4, !dbg !48
  %16 = call i8* @xmlStrncatNew(i8* noundef %13, i8* noundef %14, i32 noundef %15), !dbg !49
  store i8* %16, i8** %6, align 8, !dbg !45
  %17 = load i8*, i8** %6, align 8, !dbg !50
  %18 = icmp ne i8* %17, null, !dbg !52
  br i1 %18, label %19, label %23, !dbg !53

19:                                               ; preds = %0
  %20 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.5, i64 0, i64 0), i32 noundef 22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !54
  %21 = load void (i8*)*, void (i8*)** @xmlFree, align 8, !dbg !56
  %22 = load i8*, i8** %6, align 8, !dbg !57
  call void %21(i8* noundef %22), !dbg !56
  br label %23, !dbg !58

23:                                               ; preds = %19, %0
  ret i32 0, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare i8* @xmlStrncatNew(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "6c6906e4366e9d1c5aa1732bff4c700b")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !13, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "str1_buf", scope: !12, file: !1, line: 6, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !22)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !20, line: 28, baseType: !21)
!20 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23}
!23 = !DISubrange(count: 256)
!24 = !DILocation(line: 6, column: 13, scope: !12)
!25 = !DILocalVariable(name: "str2_buf", scope: !12, file: !1, line: 7, type: !18)
!26 = !DILocation(line: 7, column: 13, scope: !12)
!27 = !DILocalVariable(name: "size", scope: !12, file: !1, line: 8, type: !15)
!28 = !DILocation(line: 8, column: 9, scope: !12)
!29 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 9, type: !15)
!30 = !DILocation(line: 9, column: 9, scope: !12)
!31 = !DILocation(line: 11, column: 24, scope: !12)
!32 = !DILocation(line: 11, column: 5, scope: !12)
!33 = !DILocation(line: 12, column: 24, scope: !12)
!34 = !DILocation(line: 12, column: 5, scope: !12)
!35 = !DILocation(line: 13, column: 24, scope: !12)
!36 = !DILocation(line: 13, column: 5, scope: !12)
!37 = !DILocation(line: 14, column: 24, scope: !12)
!38 = !DILocation(line: 14, column: 5, scope: !12)
!39 = !DILocation(line: 16, column: 5, scope: !12)
!40 = !DILocation(line: 16, column: 19, scope: !12)
!41 = !DILocation(line: 17, column: 5, scope: !12)
!42 = !DILocation(line: 17, column: 19, scope: !12)
!43 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 19, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!45 = !DILocation(line: 19, column: 14, scope: !12)
!46 = !DILocation(line: 19, column: 34, scope: !12)
!47 = !DILocation(line: 19, column: 44, scope: !12)
!48 = !DILocation(line: 19, column: 54, scope: !12)
!49 = !DILocation(line: 19, column: 20, scope: !12)
!50 = !DILocation(line: 21, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !12, file: !1, line: 21, column: 9)
!52 = !DILocation(line: 21, column: 13, scope: !51)
!53 = !DILocation(line: 21, column: 9, scope: !12)
!54 = !DILocation(line: 22, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 22)
!56 = !DILocation(line: 23, column: 9, scope: !55)
!57 = !DILocation(line: 23, column: 17, scope: !55)
!58 = !DILocation(line: 24, column: 5, scope: !55)
!59 = !DILocation(line: 26, column: 5, scope: !12)
