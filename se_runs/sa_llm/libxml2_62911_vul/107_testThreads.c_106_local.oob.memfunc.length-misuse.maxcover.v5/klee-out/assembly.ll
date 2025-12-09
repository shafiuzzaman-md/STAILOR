; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ThreadParam = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"catalog\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"<root/>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i64], align 16
  %5 = alloca [10 x %struct.ThreadParam], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !15, metadata !DIExpression()), !dbg !16
  %7 = bitcast i32* %2 to i8*, !dbg !17
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !18
  %8 = load i32, i32* %2, align 4, !dbg !19
  %9 = icmp sge i32 %8, 0, !dbg !20
  %10 = zext i1 %9 to i32, !dbg !20
  %11 = sext i32 %10 to i64, !dbg !19
  call void @klee_assume(i64 noundef %11), !dbg !21
  %12 = load i32, i32* %2, align 4, !dbg !22
  %13 = icmp sle i32 %12, 10, !dbg !23
  %14 = zext i1 %13 to i32, !dbg !23
  %15 = sext i32 %14 to i64, !dbg !22
  call void @klee_assume(i64 noundef %15), !dbg !24
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !25, metadata !DIExpression()), !dbg !30
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !32
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !33
  store i8 0, i8* %17, align 1, !dbg !34
  call void @llvm.dbg.declare(metadata [10 x i64]* %4, metadata !35, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [10 x %struct.ThreadParam]* %5, metadata !43, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %6, metadata !56, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %6, align 4, !dbg !58
  br label %18, !dbg !59

18:                                               ; preds = %35, %0
  %19 = load i32, i32* %6, align 4, !dbg !60
  %20 = icmp slt i32 %19, 10, !dbg !62
  br i1 %20, label %21, label %38, !dbg !63

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4, !dbg !64
  %23 = load i32, i32* %6, align 4, !dbg !66
  %24 = sext i32 %23 to i64, !dbg !67
  %25 = getelementptr inbounds [10 x %struct.ThreadParam], [10 x %struct.ThreadParam]* %5, i64 0, i64 %24, !dbg !67
  %26 = getelementptr inbounds %struct.ThreadParam, %struct.ThreadParam* %25, i32 0, i32 0, !dbg !68
  store i32 %22, i32* %26, align 8, !dbg !69
  %27 = load i32, i32* %6, align 4, !dbg !70
  %28 = sext i32 %27 to i64, !dbg !71
  %29 = getelementptr inbounds [10 x %struct.ThreadParam], [10 x %struct.ThreadParam]* %5, i64 0, i64 %28, !dbg !71
  %30 = getelementptr inbounds %struct.ThreadParam, %struct.ThreadParam* %29, i32 0, i32 1, !dbg !72
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8, !dbg !73
  %31 = load i32, i32* %6, align 4, !dbg !74
  %32 = sext i32 %31 to i64, !dbg !75
  %33 = getelementptr inbounds [10 x %struct.ThreadParam], [10 x %struct.ThreadParam]* %5, i64 0, i64 %32, !dbg !75
  %34 = getelementptr inbounds %struct.ThreadParam, %struct.ThreadParam* %33, i32 0, i32 2, !dbg !76
  store i64 7, i64* %34, align 8, !dbg !77
  br label %35, !dbg !78

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4, !dbg !79
  %37 = add nsw i32 %36, 1, !dbg !79
  store i32 %37, i32* %6, align 4, !dbg !79
  br label %18, !dbg !80, !llvm.loop !81

38:                                               ; preds = %18
  call void @xmlInitParser(), !dbg !84
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !85
  %40 = call i32 @xmlLoadCatalog(i8* noundef %39), !dbg !86
  call void @xmlCleanupParser(), !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

declare void @xmlInitParser() #2

declare i32 @xmlLoadCatalog(i8* noundef) #2

declare void @xmlCleanupParser() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/107_testThreads.c_106_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "f4a5ae7abeb53c73674c81739d481c39")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 26, type: !11, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "num_threads", scope: !10, file: !1, line: 27, type: !13)
!16 = !DILocation(line: 27, column: 9, scope: !10)
!17 = !DILocation(line: 28, column: 24, scope: !10)
!18 = !DILocation(line: 28, column: 5, scope: !10)
!19 = !DILocation(line: 29, column: 17, scope: !10)
!20 = !DILocation(line: 29, column: 29, scope: !10)
!21 = !DILocation(line: 29, column: 5, scope: !10)
!22 = !DILocation(line: 30, column: 17, scope: !10)
!23 = !DILocation(line: 30, column: 29, scope: !10)
!24 = !DILocation(line: 30, column: 5, scope: !10)
!25 = !DILocalVariable(name: "catalog", scope: !10, file: !1, line: 32, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 256)
!30 = !DILocation(line: 32, column: 10, scope: !10)
!31 = !DILocation(line: 33, column: 24, scope: !10)
!32 = !DILocation(line: 33, column: 5, scope: !10)
!33 = !DILocation(line: 34, column: 5, scope: !10)
!34 = !DILocation(line: 34, column: 32, scope: !10)
!35 = !DILocalVariable(name: "tid", scope: !10, file: !1, line: 36, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !40)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !38, line: 27, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "8a5acdbeec491eca11cf81cb1ef77ea7")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DILocation(line: 36, column: 15, scope: !10)
!43 = !DILocalVariable(name: "threadParams", scope: !10, file: !1, line: 37, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1920, elements: !40)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ThreadParam", file: !1, line: 15, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 11, size: 192, elements: !47)
!47 = !{!48, !49, !52}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !46, file: !1, line: 12, baseType: !13, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "xmlData", scope: !46, file: !1, line: 13, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "xmlSize", scope: !46, file: !1, line: 14, baseType: !53, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 46, baseType: !39)
!54 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!55 = !DILocation(line: 37, column: 17, scope: !10)
!56 = !DILocalVariable(name: "i", scope: !57, file: !1, line: 39, type: !13)
!57 = distinct !DILexicalBlock(scope: !10, file: !1, line: 39, column: 5)
!58 = !DILocation(line: 39, column: 14, scope: !57)
!59 = !DILocation(line: 39, column: 10, scope: !57)
!60 = !DILocation(line: 39, column: 21, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 39, column: 5)
!62 = !DILocation(line: 39, column: 23, scope: !61)
!63 = !DILocation(line: 39, column: 5, scope: !57)
!64 = !DILocation(line: 40, column: 30, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 39, column: 43)
!66 = !DILocation(line: 40, column: 22, scope: !65)
!67 = !DILocation(line: 40, column: 9, scope: !65)
!68 = !DILocation(line: 40, column: 25, scope: !65)
!69 = !DILocation(line: 40, column: 28, scope: !65)
!70 = !DILocation(line: 41, column: 22, scope: !65)
!71 = !DILocation(line: 41, column: 9, scope: !65)
!72 = !DILocation(line: 41, column: 25, scope: !65)
!73 = !DILocation(line: 41, column: 33, scope: !65)
!74 = !DILocation(line: 42, column: 22, scope: !65)
!75 = !DILocation(line: 42, column: 9, scope: !65)
!76 = !DILocation(line: 42, column: 25, scope: !65)
!77 = !DILocation(line: 42, column: 33, scope: !65)
!78 = !DILocation(line: 43, column: 5, scope: !65)
!79 = !DILocation(line: 39, column: 39, scope: !61)
!80 = !DILocation(line: 39, column: 5, scope: !61)
!81 = distinct !{!81, !63, !82, !83}
!82 = !DILocation(line: 43, column: 5, scope: !57)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 45, column: 5, scope: !10)
!85 = !DILocation(line: 46, column: 20, scope: !10)
!86 = !DILocation(line: 46, column: 5, scope: !10)
!87 = !DILocation(line: 65, column: 5, scope: !10)
!88 = !DILocation(line: 66, column: 5, scope: !10)
