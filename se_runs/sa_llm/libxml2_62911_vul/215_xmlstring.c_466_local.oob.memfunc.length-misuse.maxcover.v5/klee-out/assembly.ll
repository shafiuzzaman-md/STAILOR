; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i8** %5, metadata !27, metadata !DIExpression()), !dbg !28
  %6 = call noalias i8* @malloc(i64 noundef 128) #5, !dbg !29
  store i8* %6, i8** %2, align 8, !dbg !30
  %7 = load i8*, i8** %2, align 8, !dbg !31
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 128, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %8 = load i8*, i8** %2, align 8, !dbg !33
  %9 = getelementptr inbounds i8, i8* %8, i64 127, !dbg !33
  store i8 0, i8* %9, align 1, !dbg !34
  %10 = call noalias i8* @malloc(i64 noundef 256) #5, !dbg !35
  store i8* %10, i8** %3, align 8, !dbg !36
  %11 = load i8*, i8** %3, align 8, !dbg !37
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !38
  %12 = bitcast i32* %4 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !40
  %13 = load i32, i32* %4, align 4, !dbg !41
  %14 = icmp sge i32 %13, 0, !dbg !42
  %15 = zext i1 %14 to i32, !dbg !42
  %16 = sext i32 %15 to i64, !dbg !41
  call void @klee_assume(i64 noundef %16), !dbg !43
  %17 = load i32, i32* %4, align 4, !dbg !44
  %18 = icmp slt i32 %17, 256, !dbg !45
  %19 = zext i1 %18 to i32, !dbg !45
  %20 = sext i32 %19 to i64, !dbg !44
  call void @klee_assume(i64 noundef %20), !dbg !46
  %21 = load i8*, i8** %2, align 8, !dbg !47
  %22 = load i8*, i8** %3, align 8, !dbg !48
  %23 = call i8* @xmlStrcat(i8* noundef %21, i8* noundef %22), !dbg !49
  store i8* %23, i8** %5, align 8, !dbg !50
  %24 = load i8*, i8** %5, align 8, !dbg !51
  %25 = icmp ne i8* %24, null, !dbg !53
  br i1 %25, label %26, label %32, !dbg !54

26:                                               ; preds = %0
  %27 = load i8*, i8** %5, align 8, !dbg !55
  %28 = load i8*, i8** %2, align 8, !dbg !56
  %29 = icmp ne i8* %27, %28, !dbg !57
  br i1 %29, label %30, label %32, !dbg !58

30:                                               ; preds = %26
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !59
  br label %32, !dbg !61

32:                                               ; preds = %30, %26, %0
  %33 = load i8*, i8** %3, align 8, !dbg !62
  call void @free(i8* noundef %33) #5, !dbg !63
  %34 = load i8*, i8** %5, align 8, !dbg !64
  %35 = load i8*, i8** %2, align 8, !dbg !66
  %36 = icmp ne i8* %34, %35, !dbg !67
  br i1 %36, label %37, label %39, !dbg !68

37:                                               ; preds = %32
  %38 = load i8*, i8** %5, align 8, !dbg !69
  call void @free(i8* noundef %38) #5, !dbg !71
  br label %41, !dbg !72

39:                                               ; preds = %32
  %40 = load i8*, i8** %2, align 8, !dbg !73
  call void @free(i8* noundef %40) #5, !dbg !75
  br label %41

41:                                               ; preds = %39, %37
  ret i32 0, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

declare i8* @xmlStrcat(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/215_xmlstring.c_466_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "cb4c462dd22228506cf0d803d9063816")
!2 = !{!3, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !5, line: 28, baseType: !6)
!5 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 9, type: !17, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "cur", scope: !16, file: !1, line: 10, type: !3)
!22 = !DILocation(line: 10, column: 14, scope: !16)
!23 = !DILocalVariable(name: "add", scope: !16, file: !1, line: 11, type: !3)
!24 = !DILocation(line: 11, column: 14, scope: !16)
!25 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 12, type: !19)
!26 = !DILocation(line: 12, column: 9, scope: !16)
!27 = !DILocalVariable(name: "result", scope: !16, file: !1, line: 13, type: !3)
!28 = !DILocation(line: 13, column: 14, scope: !16)
!29 = !DILocation(line: 16, column: 22, scope: !16)
!30 = !DILocation(line: 16, column: 9, scope: !16)
!31 = !DILocation(line: 17, column: 24, scope: !16)
!32 = !DILocation(line: 17, column: 5, scope: !16)
!33 = !DILocation(line: 19, column: 5, scope: !16)
!34 = !DILocation(line: 19, column: 14, scope: !16)
!35 = !DILocation(line: 22, column: 22, scope: !16)
!36 = !DILocation(line: 22, column: 9, scope: !16)
!37 = !DILocation(line: 23, column: 24, scope: !16)
!38 = !DILocation(line: 23, column: 5, scope: !16)
!39 = !DILocation(line: 26, column: 24, scope: !16)
!40 = !DILocation(line: 26, column: 5, scope: !16)
!41 = !DILocation(line: 28, column: 17, scope: !16)
!42 = !DILocation(line: 28, column: 21, scope: !16)
!43 = !DILocation(line: 28, column: 5, scope: !16)
!44 = !DILocation(line: 29, column: 17, scope: !16)
!45 = !DILocation(line: 29, column: 21, scope: !16)
!46 = !DILocation(line: 29, column: 5, scope: !16)
!47 = !DILocation(line: 33, column: 24, scope: !16)
!48 = !DILocation(line: 33, column: 29, scope: !16)
!49 = !DILocation(line: 33, column: 14, scope: !16)
!50 = !DILocation(line: 33, column: 12, scope: !16)
!51 = !DILocation(line: 38, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !16, file: !1, line: 38, column: 9)
!53 = !DILocation(line: 38, column: 16, scope: !52)
!54 = !DILocation(line: 38, column: 24, scope: !52)
!55 = !DILocation(line: 38, column: 27, scope: !52)
!56 = !DILocation(line: 38, column: 37, scope: !52)
!57 = !DILocation(line: 38, column: 34, scope: !52)
!58 = !DILocation(line: 38, column: 9, scope: !16)
!59 = !DILocation(line: 40, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 42)
!61 = !DILocation(line: 41, column: 5, scope: !60)
!62 = !DILocation(line: 44, column: 10, scope: !16)
!63 = !DILocation(line: 44, column: 5, scope: !16)
!64 = !DILocation(line: 46, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !16, file: !1, line: 46, column: 9)
!66 = !DILocation(line: 46, column: 19, scope: !65)
!67 = !DILocation(line: 46, column: 16, scope: !65)
!68 = !DILocation(line: 46, column: 9, scope: !16)
!69 = !DILocation(line: 47, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 46, column: 24)
!71 = !DILocation(line: 47, column: 9, scope: !70)
!72 = !DILocation(line: 48, column: 5, scope: !70)
!73 = !DILocation(line: 49, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 48, column: 12)
!75 = !DILocation(line: 49, column: 9, scope: !74)
!76 = !DILocation(line: 52, column: 5, scope: !16)
