; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"env_buffer\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"(envlen <= sizeof(env_buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !10 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !18, metadata !DIExpression()), !dbg !19
  %3 = load i64, i64* %2, align 8, !dbg !20
  %4 = call noalias i8* @malloc(i64 noundef %3) #6, !dbg !21
  ret i8* %4, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !26, metadata !DIExpression()), !dbg !27
  %3 = load i8*, i8** %2, align 8, !dbg !28
  call void @free(i8* noundef %3) #6, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !31 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !35, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %3, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !45
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !46
  store i8* %5, i8** %4, align 8, !dbg !45
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !47
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 1024, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !48
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !49
  %8 = load i8, i8* %7, align 1, !dbg !49
  %9 = sext i8 %8 to i32, !dbg !49
  %10 = icmp eq i32 %9, 0, !dbg !50
  %11 = zext i1 %10 to i32, !dbg !50
  %12 = sext i32 %11 to i64, !dbg !49
  call void @klee_assume(i64 noundef %12), !dbg !51
  %13 = load i8*, i8** %4, align 8, !dbg !52
  %14 = call i64 @strlen(i8* noundef %13) #7, !dbg !53
  %15 = add i64 %14, 1, !dbg !54
  %16 = trunc i64 %15 to i32, !dbg !53
  store i32 %16, i32* %3, align 4, !dbg !55
  %17 = load i32, i32* %3, align 4, !dbg !56
  %18 = sext i32 %17 to i64, !dbg !56
  %19 = icmp ule i64 %18, 1024, !dbg !56
  br i1 %19, label %20, label %22, !dbg !56

20:                                               ; preds = %0
  br i1 true, label %21, label %22, !dbg !56

21:                                               ; preds = %20
  br label %24, !dbg !56

22:                                               ; preds = %20, %0
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !56
  br label %24, !dbg !56

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !57
  %26 = load i8*, i8** %4, align 8, !dbg !58
  %27 = call i32 @xmlNanoHTTPMethodRedir(i8* noundef null, i8* noundef null, i8* noundef null, i8** noundef null, i8* noundef %26, i32 noundef 0, i8* noundef null, i32* noundef null, i32* noundef null), !dbg !59
  ret i32 0, !dbg !60
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare i32 @xmlNanoHTTPMethodRedir(i8* noundef, i8* noundef, i8* noundef, i8** noundef, i8* noundef, i32 noundef, i8* noundef, i32* noundef, i32* noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/114_nanohttp.c_1305_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "01041fc492c96d6e8dd0910a70f5d625")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 11, type: !11, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !{}
!18 = !DILocalVariable(name: "size", arg: 1, scope: !10, file: !1, line: 11, type: !14)
!19 = !DILocation(line: 11, column: 24, scope: !10)
!20 = !DILocation(line: 12, column: 19, scope: !10)
!21 = !DILocation(line: 12, column: 12, scope: !10)
!22 = !DILocation(line: 12, column: 5, scope: !10)
!23 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 16, type: !24, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !13}
!26 = !DILocalVariable(name: "ptr", arg: 1, scope: !23, file: !1, line: 16, type: !13)
!27 = !DILocation(line: 16, column: 20, scope: !23)
!28 = !DILocation(line: 17, column: 10, scope: !23)
!29 = !DILocation(line: 17, column: 5, scope: !23)
!30 = !DILocation(line: 18, column: 1, scope: !23)
!31 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 24, type: !32, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!32 = !DISubroutineType(types: !33)
!33 = !{!34}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "env_buffer", scope: !31, file: !1, line: 26, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 1024)
!40 = !DILocation(line: 26, column: 10, scope: !31)
!41 = !DILocalVariable(name: "envlen", scope: !31, file: !1, line: 27, type: !34)
!42 = !DILocation(line: 27, column: 9, scope: !31)
!43 = !DILocalVariable(name: "env", scope: !31, file: !1, line: 28, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!45 = !DILocation(line: 28, column: 11, scope: !31)
!46 = !DILocation(line: 28, column: 17, scope: !31)
!47 = !DILocation(line: 31, column: 24, scope: !31)
!48 = !DILocation(line: 31, column: 5, scope: !31)
!49 = !DILocation(line: 34, column: 17, scope: !31)
!50 = !DILocation(line: 34, column: 50, scope: !31)
!51 = !DILocation(line: 34, column: 5, scope: !31)
!52 = !DILocation(line: 37, column: 21, scope: !31)
!53 = !DILocation(line: 37, column: 14, scope: !31)
!54 = !DILocation(line: 37, column: 26, scope: !31)
!55 = !DILocation(line: 37, column: 12, scope: !31)
!56 = !DILocation(line: 40, column: 5, scope: !31)
!57 = !DILocation(line: 43, column: 5, scope: !31)
!58 = !DILocation(line: 46, column: 52, scope: !31)
!59 = !DILocation(line: 46, column: 5, scope: !31)
!60 = !DILocation(line: 48, column: 5, scope: !31)
