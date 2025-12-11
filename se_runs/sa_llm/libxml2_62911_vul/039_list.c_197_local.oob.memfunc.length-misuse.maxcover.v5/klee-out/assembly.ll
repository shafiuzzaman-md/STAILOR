; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlList = type opaque

@.str = private unnamed_addr constant [17 x i8] c"allocation_valid\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(allocation_valid) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1) #0 !dbg !12 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !20, metadata !DIExpression()), !dbg !21
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !22, metadata !DIExpression()), !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !25 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %2, align 8, !dbg !33
  %4 = call noalias i8* @malloc(i64 noundef %3) #5, !dbg !34
  ret i8* %4, !dbg !35
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlList*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlList** %2, metadata !40, metadata !DIExpression()), !dbg !44
  %4 = call %struct._xmlList* @xmlListInsert(), !dbg !45
  store %struct._xmlList* %4, %struct._xmlList** %2, align 8, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  %5 = bitcast i32* %3 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !49
  %6 = load %struct._xmlList*, %struct._xmlList** %2, align 8, !dbg !50
  %7 = icmp ne %struct._xmlList* %6, null, !dbg !51
  %8 = zext i1 %7 to i32, !dbg !51
  %9 = sext i32 %8 to i64, !dbg !50
  call void @klee_assume(i64 noundef %9), !dbg !52
  %10 = load i32, i32* %3, align 4, !dbg !53
  %11 = icmp ne i32 %10, 0, !dbg !53
  br i1 %11, label %12, label %14, !dbg !53

12:                                               ; preds = %0
  br i1 true, label %13, label %14, !dbg !53

13:                                               ; preds = %12
  br label %16, !dbg !53

14:                                               ; preds = %12, %0
  %15 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !53
  br label %16, !dbg !53

16:                                               ; preds = %14, %13
  %17 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !54
  ret i32 0, !dbg !55
}

declare %struct._xmlList* @xmlListInsert() #3

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/039_list.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "032c626999361bd9db9ce70a39313367")
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
!12 = distinct !DISubprogram(name: "xmlGenericError", scope: !1, file: !1, line: 16, type: !13, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !16}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlGenericErrorContext", file: !1, line: 13, baseType: !3)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{}
!20 = !DILocalVariable(name: "ctx", arg: 1, scope: !12, file: !1, line: 16, type: !15)
!21 = !DILocation(line: 16, column: 45, scope: !12)
!22 = !DILocalVariable(name: "msg", arg: 2, scope: !12, file: !1, line: 16, type: !16)
!23 = !DILocation(line: 16, column: 62, scope: !12)
!24 = !DILocation(line: 18, column: 1, scope: !12)
!25 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !26, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!26 = !DISubroutineType(types: !27)
!27 = !{!3, !28}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "size", arg: 1, scope: !25, file: !1, line: 20, type: !28)
!32 = !DILocation(line: 20, column: 24, scope: !25)
!33 = !DILocation(line: 21, column: 19, scope: !25)
!34 = !DILocation(line: 21, column: 12, scope: !25)
!35 = !DILocation(line: 21, column: 5, scope: !25)
!36 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !37, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!37 = !DISubroutineType(types: !38)
!38 = !{!39}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DILocalVariable(name: "result", scope: !36, file: !1, line: 30, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlList", file: !1, line: 12, baseType: !43)
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlList", file: !1, line: 12, flags: DIFlagFwdDecl)
!44 = !DILocation(line: 30, column: 14, scope: !36)
!45 = !DILocation(line: 30, column: 23, scope: !36)
!46 = !DILocalVariable(name: "allocation_valid", scope: !36, file: !1, line: 43, type: !39)
!47 = !DILocation(line: 43, column: 9, scope: !36)
!48 = !DILocation(line: 44, column: 24, scope: !36)
!49 = !DILocation(line: 44, column: 5, scope: !36)
!50 = !DILocation(line: 47, column: 17, scope: !36)
!51 = !DILocation(line: 47, column: 24, scope: !36)
!52 = !DILocation(line: 47, column: 5, scope: !36)
!53 = !DILocation(line: 51, column: 5, scope: !36)
!54 = !DILocation(line: 54, column: 5, scope: !36)
!55 = !DILocation(line: 56, column: 5, scope: !36)
