; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/156_nanohttp.c_1325_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/156_nanohttp.c_1325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(envlen <= envlen) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/156_nanohttp.c_1325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [26 x i8] c"int target_function(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"no_proxy_env\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load i64, i64* %2, align 8, !dbg !42
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !43
  ret i8* %4, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !45 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !48, metadata !DIExpression()), !dbg !49
  %3 = load i8*, i8** %2, align 8, !dbg !50
  call void @free(i8* noundef %3) #9, !dbg !51
  ret void, !dbg !52
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function() #0 !dbg !53 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %3, metadata !58, metadata !DIExpression()), !dbg !61
  %6 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #9, !dbg !62
  store i8* %6, i8** %3, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i8** %4, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* null, i8** %4, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i8** %5, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* null, i8** %5, align 8, !dbg !66
  %7 = load i8*, i8** %3, align 8, !dbg !67
  %8 = icmp ne i8* %7, null, !dbg !67
  br i1 %8, label %10, label %9, !dbg !69

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !70
  br label %54, !dbg !70

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8, !dbg !71
  %12 = call i64 @strlen(i8* noundef %11) #10, !dbg !72
  %13 = add i64 %12, 1, !dbg !73
  store i64 %13, i64* %2, align 8, !dbg !74
  %14 = load i64, i64* %2, align 8, !dbg !75
  %15 = call i8* @xmlMalloc(i64 noundef %14), !dbg !76
  store i8* %15, i8** %4, align 8, !dbg !77
  %16 = load i64, i64* %2, align 8, !dbg !78
  %17 = load i64, i64* %2, align 8, !dbg !78
  %18 = icmp ule i64 %16, %17, !dbg !78
  br i1 %18, label %19, label %21, !dbg !78

19:                                               ; preds = %10
  br i1 true, label %20, label %21, !dbg !78

20:                                               ; preds = %19
  br label %23, !dbg !78

21:                                               ; preds = %19, %10
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !78
  br label %23, !dbg !78

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !79
  %25 = load i8*, i8** %4, align 8, !dbg !80
  %26 = load i8*, i8** %3, align 8, !dbg !81
  %27 = load i64, i64* %2, align 8, !dbg !82
  %28 = call i8* @memcpy(i8* %25, i8* %26, i64 %27), !dbg !83
  %29 = load i8*, i8** %4, align 8, !dbg !84
  store i8* %29, i8** %3, align 8, !dbg !85
  br label %30, !dbg !86

30:                                               ; preds = %42, %23
  %31 = call i16** @__ctype_b_loc() #11, !dbg !87
  %32 = load i16*, i16** %31, align 8, !dbg !87
  %33 = load i8*, i8** %3, align 8, !dbg !87
  %34 = load i8, i8* %33, align 1, !dbg !87
  %35 = sext i8 %34 to i32, !dbg !87
  %36 = sext i32 %35 to i64, !dbg !87
  %37 = getelementptr inbounds i16, i16* %32, i64 %36, !dbg !87
  %38 = load i16, i16* %37, align 2, !dbg !87
  %39 = zext i16 %38 to i32, !dbg !87
  %40 = and i32 %39, 8192, !dbg !87
  %41 = icmp ne i32 %40, 0, !dbg !86
  br i1 %41, label %42, label %45, !dbg !86

42:                                               ; preds = %30
  %43 = load i8*, i8** %3, align 8, !dbg !88
  %44 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !88
  store i8* %44, i8** %3, align 8, !dbg !88
  br label %30, !dbg !86, !llvm.loop !89

45:                                               ; preds = %30
  %46 = load i8*, i8** %3, align 8, !dbg !92
  %47 = load i8, i8* %46, align 1, !dbg !94
  %48 = sext i8 %47 to i32, !dbg !94
  %49 = icmp eq i32 %48, 0, !dbg !95
  br i1 %49, label %50, label %52, !dbg !96

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8, !dbg !97
  call void @xmlFree(i8* noundef %51), !dbg !99
  store i32 0, i32* %1, align 4, !dbg !100
  br label %54, !dbg !100

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8, !dbg !101
  call void @xmlFree(i8* noundef %53), !dbg !102
  store i32 1, i32* %1, align 4, !dbg !103
  br label %54, !dbg !103

54:                                               ; preds = %52, %50, %9
  %55 = load i32, i32* %1, align 4, !dbg !104
  ret i32 %55, !dbg !104
}

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !105 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !106, metadata !DIExpression()), !dbg !110
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !111
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 1024, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !112
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !113
  %5 = load i8, i8* %4, align 1, !dbg !113
  %6 = sext i8 %5 to i32, !dbg !113
  %7 = icmp eq i32 %6, 0, !dbg !114
  %8 = zext i1 %7 to i32, !dbg !114
  %9 = sext i32 %8 to i64, !dbg !113
  call void @klee_assume(i64 noundef %9), !dbg !115
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !116
  %11 = call i32 @setenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %10, i32 noundef 1) #9, !dbg !118
  %12 = icmp ne i32 %11, 0, !dbg !119
  br i1 %12, label %13, label %14, !dbg !120

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !121
  br label %16, !dbg !121

14:                                               ; preds = %0
  %15 = call i32 @target_function(), !dbg !123
  store i32 0, i32* %1, align 4, !dbg !124
  br label %16, !dbg !124

16:                                               ; preds = %14, %13
  %17 = load i32, i32* %1, align 4, !dbg !125
  ret i32 %17, !dbg !125
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare i32 @setenv(i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !126 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !132, metadata !DIExpression()), !dbg !133
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %7, metadata !138, metadata !DIExpression()), !dbg !139
  %9 = load i8*, i8** %4, align 8, !dbg !140
  store i8* %9, i8** %7, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i8** %8, metadata !141, metadata !DIExpression()), !dbg !144
  %10 = load i8*, i8** %5, align 8, !dbg !145
  store i8* %10, i8** %8, align 8, !dbg !144
  br label %11, !dbg !146

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !147
  %13 = add i64 %12, -1, !dbg !147
  store i64 %13, i64* %6, align 8, !dbg !147
  %14 = icmp ugt i64 %12, 0, !dbg !148
  br i1 %14, label %15, label %21, !dbg !146

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !149
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !149
  store i8* %17, i8** %8, align 8, !dbg !149
  %18 = load i8, i8* %16, align 1, !dbg !150
  %19 = load i8*, i8** %7, align 8, !dbg !151
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !151
  store i8* %20, i8** %7, align 8, !dbg !151
  store i8 %18, i8* %19, align 1, !dbg !152
  br label %11, !dbg !146, !llvm.loop !153

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !154
  ret i8* %22, !dbg !155
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/156_nanohttp.c_1325_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "18922bf258b015fe231c49e143e562a7")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "43fd45dcf96e8fb7d8f14700096497c7")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256)
!8 = !DIEnumerator(name: "_ISlower", value: 512)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!12 = !DIEnumerator(name: "_ISspace", value: 8192)
!13 = !DIEnumerator(name: "_ISprint", value: 16384)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768)
!15 = !DIEnumerator(name: "_ISblank", value: 1)
!16 = !DIEnumerator(name: "_IScntrl", value: 2)
!17 = !DIEnumerator(name: "_ISpunct", value: 4)
!18 = !DIEnumerator(name: "_ISalnum", value: 8)
!19 = !{!20, !21}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 11, type: !33, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{}
!40 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 11, type: !36)
!41 = !DILocation(line: 11, column: 24, scope: !32)
!42 = !DILocation(line: 12, column: 19, scope: !32)
!43 = !DILocation(line: 12, column: 12, scope: !32)
!44 = !DILocation(line: 12, column: 5, scope: !32)
!45 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 16, type: !46, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !35}
!48 = !DILocalVariable(name: "ptr", arg: 1, scope: !45, file: !1, line: 16, type: !35)
!49 = !DILocation(line: 16, column: 20, scope: !45)
!50 = !DILocation(line: 17, column: 10, scope: !45)
!51 = !DILocation(line: 17, column: 5, scope: !45)
!52 = !DILocation(line: 18, column: 1, scope: !45)
!53 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 21, type: !54, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!54 = !DISubroutineType(types: !55)
!55 = !{!20}
!56 = !DILocalVariable(name: "envlen", scope: !53, file: !1, line: 22, type: !36)
!57 = !DILocation(line: 22, column: 12, scope: !53)
!58 = !DILocalVariable(name: "env", scope: !53, file: !1, line: 23, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DILocation(line: 23, column: 11, scope: !53)
!62 = !DILocation(line: 23, column: 17, scope: !53)
!63 = !DILocalVariable(name: "cpy", scope: !53, file: !1, line: 23, type: !59)
!64 = !DILocation(line: 23, column: 38, scope: !53)
!65 = !DILocalVariable(name: "p", scope: !53, file: !1, line: 23, type: !59)
!66 = !DILocation(line: 23, column: 49, scope: !53)
!67 = !DILocation(line: 24, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !53, file: !1, line: 24, column: 9)
!69 = !DILocation(line: 24, column: 9, scope: !53)
!70 = !DILocation(line: 25, column: 9, scope: !68)
!71 = !DILocation(line: 28, column: 21, scope: !53)
!72 = !DILocation(line: 28, column: 14, scope: !53)
!73 = !DILocation(line: 28, column: 26, scope: !53)
!74 = !DILocation(line: 28, column: 12, scope: !53)
!75 = !DILocation(line: 29, column: 21, scope: !53)
!76 = !DILocation(line: 29, column: 11, scope: !53)
!77 = !DILocation(line: 29, column: 9, scope: !53)
!78 = !DILocation(line: 32, column: 5, scope: !53)
!79 = !DILocation(line: 35, column: 5, scope: !53)
!80 = !DILocation(line: 37, column: 12, scope: !53)
!81 = !DILocation(line: 37, column: 17, scope: !53)
!82 = !DILocation(line: 37, column: 22, scope: !53)
!83 = !DILocation(line: 37, column: 5, scope: !53)
!84 = !DILocation(line: 38, column: 11, scope: !53)
!85 = !DILocation(line: 38, column: 9, scope: !53)
!86 = !DILocation(line: 41, column: 5, scope: !53)
!87 = !DILocation(line: 41, column: 12, scope: !53)
!88 = !DILocation(line: 42, column: 9, scope: !53)
!89 = distinct !{!89, !86, !90, !91}
!90 = !DILocation(line: 42, column: 11, scope: !53)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 43, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 9)
!94 = !DILocation(line: 43, column: 9, scope: !93)
!95 = !DILocation(line: 43, column: 14, scope: !93)
!96 = !DILocation(line: 43, column: 9, scope: !53)
!97 = !DILocation(line: 44, column: 17, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 43, column: 23)
!99 = !DILocation(line: 44, column: 9, scope: !98)
!100 = !DILocation(line: 45, column: 9, scope: !98)
!101 = !DILocation(line: 49, column: 13, scope: !53)
!102 = !DILocation(line: 49, column: 5, scope: !53)
!103 = !DILocation(line: 50, column: 5, scope: !53)
!104 = !DILocation(line: 51, column: 1, scope: !53)
!105 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !54, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!106 = !DILocalVariable(name: "no_proxy_env", scope: !105, file: !1, line: 55, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1024)
!110 = !DILocation(line: 55, column: 10, scope: !105)
!111 = !DILocation(line: 56, column: 24, scope: !105)
!112 = !DILocation(line: 56, column: 5, scope: !105)
!113 = !DILocation(line: 59, column: 17, scope: !105)
!114 = !DILocation(line: 59, column: 56, scope: !105)
!115 = !DILocation(line: 59, column: 5, scope: !105)
!116 = !DILocation(line: 62, column: 28, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 62, column: 9)
!118 = !DILocation(line: 62, column: 9, scope: !117)
!119 = !DILocation(line: 62, column: 45, scope: !117)
!120 = !DILocation(line: 62, column: 9, scope: !105)
!121 = !DILocation(line: 63, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 62, column: 51)
!123 = !DILocation(line: 67, column: 5, scope: !105)
!124 = !DILocation(line: 69, column: 5, scope: !105)
!125 = !DILocation(line: 70, column: 1, scope: !105)
!126 = distinct !DISubprogram(name: "memcpy", scope: !127, file: !127, line: 12, type: !128, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !39)
!127 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!128 = !DISubroutineType(types: !129)
!129 = !{!35, !35, !130, !36}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!132 = !DILocalVariable(name: "destaddr", arg: 1, scope: !126, file: !127, line: 12, type: !35)
!133 = !DILocation(line: 12, column: 20, scope: !126)
!134 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !126, file: !127, line: 12, type: !130)
!135 = !DILocation(line: 12, column: 42, scope: !126)
!136 = !DILocalVariable(name: "len", arg: 3, scope: !126, file: !127, line: 12, type: !36)
!137 = !DILocation(line: 12, column: 58, scope: !126)
!138 = !DILocalVariable(name: "dest", scope: !126, file: !127, line: 13, type: !59)
!139 = !DILocation(line: 13, column: 9, scope: !126)
!140 = !DILocation(line: 13, column: 16, scope: !126)
!141 = !DILocalVariable(name: "src", scope: !126, file: !127, line: 14, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!144 = !DILocation(line: 14, column: 15, scope: !126)
!145 = !DILocation(line: 14, column: 21, scope: !126)
!146 = !DILocation(line: 16, column: 3, scope: !126)
!147 = !DILocation(line: 16, column: 13, scope: !126)
!148 = !DILocation(line: 16, column: 16, scope: !126)
!149 = !DILocation(line: 17, column: 19, scope: !126)
!150 = !DILocation(line: 17, column: 15, scope: !126)
!151 = !DILocation(line: 17, column: 10, scope: !126)
!152 = !DILocation(line: 17, column: 13, scope: !126)
!153 = distinct !{!153, !146, !149, !91}
!154 = !DILocation(line: 18, column: 10, scope: !126)
!155 = !DILocation(line: 18, column: 3, scope: !126)
