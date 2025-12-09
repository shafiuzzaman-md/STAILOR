; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [512 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [512 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 511, !dbg !29
  store i8 0, i8* %6, align 1, !dbg !30
  %7 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !31
  %8 = call i64 @strlen(i8* noundef %7) #7, !dbg !32
  %9 = trunc i64 %8 to i32, !dbg !32
  store i32 %9, i32* %4, align 4, !dbg !33
  %10 = load i32, i32* %4, align 4, !dbg !34
  %11 = icmp sgt i32 %10, 499, !dbg !36
  br i1 %11, label %15, label %12, !dbg !37

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4, !dbg !38
  %14 = icmp slt i32 %13, 5, !dbg !39
  br i1 %14, label %15, label %16, !dbg !40

15:                                               ; preds = %12, %0
  store i32 -1, i32* %1, align 4, !dbg !41
  br label %28, !dbg !41

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4, !dbg !43
  %18 = sub nsw i32 %17, 4, !dbg !43
  store i32 %18, i32* %4, align 4, !dbg !43
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !44
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0, !dbg !45
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !45
  %22 = load i32, i32* %4, align 4, !dbg !46
  %23 = sext i32 %22 to i64, !dbg !46
  %24 = call i8* @memcpy(i8* %20, i8* %21, i64 %23), !dbg !45
  %25 = load i32, i32* %4, align 4, !dbg !47
  %26 = sext i32 %25 to i64, !dbg !48
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %26, !dbg !48
  store i8 0, i8* %27, align 1, !dbg !49
  store i32 0, i32* %1, align 4, !dbg !50
  br label %28, !dbg !50

28:                                               ; preds = %16, %15
  %29 = load i32, i32* %1, align 4, !dbg !51
  ret i32 %29, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !52 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !62, metadata !DIExpression()), !dbg !63
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !64, metadata !DIExpression()), !dbg !65
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i8** %7, metadata !68, metadata !DIExpression()), !dbg !70
  %9 = load i8*, i8** %4, align 8, !dbg !71
  store i8* %9, i8** %7, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i8** %8, metadata !72, metadata !DIExpression()), !dbg !75
  %10 = load i8*, i8** %5, align 8, !dbg !76
  store i8* %10, i8** %8, align 8, !dbg !75
  br label %11, !dbg !77

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !78
  %13 = add i64 %12, -1, !dbg !78
  store i64 %13, i64* %6, align 8, !dbg !78
  %14 = icmp ugt i64 %12, 0, !dbg !79
  br i1 %14, label %15, label %21, !dbg !77

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !80
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !80
  store i8* %17, i8** %8, align 8, !dbg !80
  %18 = load i8, i8* %16, align 1, !dbg !81
  %19 = load i8*, i8** %7, align 8, !dbg !82
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !82
  store i8* %20, i8** %7, align 8, !dbg !82
  store i8 %18, i8* %19, align 1, !dbg !83
  br label %11, !dbg !77, !llvm.loop !84

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !86
  ret i8* %22, !dbg !87
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/092_runtest.c_3777_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "290768d6f4b63fefdf51f97d3816715a")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !13, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "base", scope: !12, file: !1, line: 7, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 4096, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 512)
!22 = !DILocation(line: 7, column: 10, scope: !12)
!23 = !DILocalVariable(name: "prefix", scope: !12, file: !1, line: 8, type: !18)
!24 = !DILocation(line: 8, column: 10, scope: !12)
!25 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 9, type: !15)
!26 = !DILocation(line: 9, column: 9, scope: !12)
!27 = !DILocation(line: 11, column: 24, scope: !12)
!28 = !DILocation(line: 11, column: 5, scope: !12)
!29 = !DILocation(line: 12, column: 5, scope: !12)
!30 = !DILocation(line: 12, column: 28, scope: !12)
!31 = !DILocation(line: 14, column: 18, scope: !12)
!32 = !DILocation(line: 14, column: 11, scope: !12)
!33 = !DILocation(line: 14, column: 9, scope: !12)
!34 = !DILocation(line: 15, column: 10, scope: !35)
!35 = distinct !DILexicalBlock(scope: !12, file: !1, line: 15, column: 9)
!36 = !DILocation(line: 15, column: 14, scope: !35)
!37 = !DILocation(line: 15, column: 21, scope: !35)
!38 = !DILocation(line: 15, column: 25, scope: !35)
!39 = !DILocation(line: 15, column: 29, scope: !35)
!40 = !DILocation(line: 15, column: 9, scope: !12)
!41 = !DILocation(line: 16, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !35, file: !1, line: 15, column: 35)
!43 = !DILocation(line: 18, column: 9, scope: !12)
!44 = !DILocation(line: 20, column: 5, scope: !12)
!45 = !DILocation(line: 21, column: 5, scope: !12)
!46 = !DILocation(line: 21, column: 26, scope: !12)
!47 = !DILocation(line: 22, column: 12, scope: !12)
!48 = !DILocation(line: 22, column: 5, scope: !12)
!49 = !DILocation(line: 22, column: 17, scope: !12)
!50 = !DILocation(line: 24, column: 5, scope: !12)
!51 = !DILocation(line: 25, column: 1, scope: !12)
!52 = distinct !DISubprogram(name: "memcpy", scope: !53, file: !53, line: 12, type: !54, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!53 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !56, !57, !59}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocalVariable(name: "destaddr", arg: 1, scope: !52, file: !53, line: 12, type: !56)
!63 = !DILocation(line: 12, column: 20, scope: !52)
!64 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !52, file: !53, line: 12, type: !57)
!65 = !DILocation(line: 12, column: 42, scope: !52)
!66 = !DILocalVariable(name: "len", arg: 3, scope: !52, file: !53, line: 12, type: !59)
!67 = !DILocation(line: 12, column: 58, scope: !52)
!68 = !DILocalVariable(name: "dest", scope: !52, file: !53, line: 13, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!70 = !DILocation(line: 13, column: 9, scope: !52)
!71 = !DILocation(line: 13, column: 16, scope: !52)
!72 = !DILocalVariable(name: "src", scope: !52, file: !53, line: 14, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!75 = !DILocation(line: 14, column: 15, scope: !52)
!76 = !DILocation(line: 14, column: 21, scope: !52)
!77 = !DILocation(line: 16, column: 3, scope: !52)
!78 = !DILocation(line: 16, column: 13, scope: !52)
!79 = !DILocation(line: 16, column: 16, scope: !52)
!80 = !DILocation(line: 17, column: 19, scope: !52)
!81 = !DILocation(line: 17, column: 15, scope: !52)
!82 = !DILocation(line: 17, column: 10, scope: !52)
!83 = !DILocation(line: 17, column: 13, scope: !52)
!84 = distinct !{!84, !77, !80, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 18, column: 10, scope: !52)
!87 = !DILocation(line: 18, column: 3, scope: !52)
