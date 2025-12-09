; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/090_testlimits.c_353_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/090_testlimits.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"crazy_indx\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"filling\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"crazy\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/090_testlimits.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [8192 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %5, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %6, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %7, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %8, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %9, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %10, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [8192 x i8]* %11, metadata !40, metadata !DIExpression()), !dbg !44
  %12 = bitcast i32* %4 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %13 = bitcast i32* %5 to i8*, !dbg !47
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !48
  %14 = bitcast i32* %6 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !50
  %15 = bitcast i32* %7 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !52
  %16 = bitcast i32* %8 to i8*, !dbg !53
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !54
  %17 = bitcast i32* %9 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %17, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !56
  %18 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !57
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4096, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !58
  %19 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0, !dbg !59
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 8192, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !60
  %20 = load i32, i32* %4, align 4, !dbg !61
  %21 = icmp sge i32 %20, 0, !dbg !62
  %22 = zext i1 %21 to i32, !dbg !62
  %23 = sext i32 %22 to i64, !dbg !61
  call void @klee_assume(i64 noundef %23), !dbg !63
  %24 = load i32, i32* %5, align 4, !dbg !64
  %25 = icmp sge i32 %24, 0, !dbg !65
  %26 = zext i1 %25 to i32, !dbg !65
  %27 = sext i32 %26 to i64, !dbg !64
  call void @klee_assume(i64 noundef %27), !dbg !66
  %28 = load i32, i32* %6, align 4, !dbg !67
  %29 = icmp sge i32 %28, 0, !dbg !68
  %30 = zext i1 %29 to i32, !dbg !68
  %31 = sext i32 %30 to i64, !dbg !67
  call void @klee_assume(i64 noundef %31), !dbg !69
  %32 = load i32, i32* %7, align 4, !dbg !70
  %33 = icmp sge i32 %32, 0, !dbg !71
  %34 = zext i1 %33 to i32, !dbg !71
  %35 = sext i32 %34 to i64, !dbg !70
  call void @klee_assume(i64 noundef %35), !dbg !72
  %36 = load i32, i32* %9, align 4, !dbg !73
  %37 = icmp sge i32 %36, 0, !dbg !74
  %38 = zext i1 %37 to i32, !dbg !74
  %39 = sext i32 %38 to i64, !dbg !73
  call void @klee_assume(i64 noundef %39), !dbg !75
  %40 = load i32, i32* %9, align 4, !dbg !76
  %41 = sext i32 %40 to i64, !dbg !76
  %42 = icmp ult i64 %41, 8192, !dbg !77
  %43 = zext i1 %42 to i32, !dbg !77
  %44 = sext i32 %43 to i64, !dbg !76
  call void @klee_assume(i64 noundef %44), !dbg !78
  %45 = load i32, i32* %9, align 4, !dbg !79
  %46 = sext i32 %45 to i64, !dbg !80
  %47 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %46, !dbg !80
  store i8* %47, i8** %10, align 8, !dbg !81
  %48 = load i32, i32* %8, align 4, !dbg !82
  %49 = icmp eq i32 %48, 1, !dbg !84
  br i1 %49, label %50, label %78, !dbg !85

50:                                               ; preds = %0
  %51 = load i32, i32* %6, align 4, !dbg !86
  %52 = icmp sgt i32 %51, 4096, !dbg !89
  br i1 %52, label %53, label %54, !dbg !90

53:                                               ; preds = %50
  store i32 4096, i32* %6, align 4, !dbg !91
  br label %54, !dbg !92

54:                                               ; preds = %53, %50
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.9, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !93
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !94
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !95
  %58 = load i32, i32* %6, align 4, !dbg !96
  %59 = sext i32 %58 to i64, !dbg !96
  %60 = call i8* @memcpy(i8* %56, i8* %57, i64 %59), !dbg !94
  %61 = load i32, i32* %6, align 4, !dbg !97
  %62 = load i32, i32* %4, align 4, !dbg !98
  %63 = add nsw i32 %62, %61, !dbg !98
  store i32 %63, i32* %4, align 4, !dbg !98
  %64 = load i32, i32* %4, align 4, !dbg !99
  %65 = load i32, i32* %5, align 4, !dbg !101
  %66 = icmp sge i32 %64, %65, !dbg !102
  br i1 %66, label %67, label %77, !dbg !103

67:                                               ; preds = %54
  %68 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0, !dbg !104
  %69 = call i64 @strlen(i8* noundef %68) #7, !dbg !106
  %70 = load i32, i32* %9, align 4, !dbg !107
  %71 = sext i32 %70 to i64, !dbg !107
  %72 = sub i64 %69, %71, !dbg !108
  %73 = trunc i64 %72 to i32, !dbg !106
  store i32 %73, i32* %7, align 4, !dbg !109
  %74 = load i32, i32* %9, align 4, !dbg !110
  %75 = sext i32 %74 to i64, !dbg !111
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %75, !dbg !111
  store i8* %76, i8** %10, align 8, !dbg !112
  store i32 2, i32* %8, align 4, !dbg !113
  br label %77, !dbg !114

77:                                               ; preds = %67, %54
  br label %78, !dbg !115

78:                                               ; preds = %77, %0
  ret i32 0, !dbg !116
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !117 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !127, metadata !DIExpression()), !dbg !128
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !129, metadata !DIExpression()), !dbg !130
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i8** %7, metadata !133, metadata !DIExpression()), !dbg !134
  %9 = load i8*, i8** %4, align 8, !dbg !135
  store i8* %9, i8** %7, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i8** %8, metadata !136, metadata !DIExpression()), !dbg !139
  %10 = load i8*, i8** %5, align 8, !dbg !140
  store i8* %10, i8** %8, align 8, !dbg !139
  br label %11, !dbg !141

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !142
  %13 = add i64 %12, -1, !dbg !142
  store i64 %13, i64* %6, align 8, !dbg !142
  %14 = icmp ugt i64 %12, 0, !dbg !143
  br i1 %14, label %15, label %21, !dbg !141

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !144
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !144
  store i8* %17, i8** %8, align 8, !dbg !144
  %18 = load i8, i8* %16, align 1, !dbg !145
  %19 = load i8*, i8** %7, align 8, !dbg !146
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !146
  store i8* %20, i8** %7, align 8, !dbg !146
  store i8 %18, i8* %19, align 1, !dbg !147
  br label %11, !dbg !141, !llvm.loop !148

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !150
  ret i8* %22, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/090_testlimits.c_353_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "6f45755f70947fdfd97738bd278b63e0")
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
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !13, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "buffer", scope: !12, file: !1, line: 14, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32768, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 4096)
!22 = !DILocation(line: 14, column: 10, scope: !12)
!23 = !DILocalVariable(name: "filling", scope: !12, file: !1, line: 15, type: !18)
!24 = !DILocation(line: 15, column: 10, scope: !12)
!25 = !DILocalVariable(name: "curlen", scope: !12, file: !1, line: 16, type: !15)
!26 = !DILocation(line: 16, column: 9, scope: !12)
!27 = !DILocalVariable(name: "maxlen", scope: !12, file: !1, line: 16, type: !15)
!28 = !DILocation(line: 16, column: 17, scope: !12)
!29 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 16, type: !15)
!30 = !DILocation(line: 16, column: 25, scope: !12)
!31 = !DILocalVariable(name: "rlen", scope: !12, file: !1, line: 16, type: !15)
!32 = !DILocation(line: 16, column: 30, scope: !12)
!33 = !DILocalVariable(name: "instate", scope: !12, file: !1, line: 16, type: !15)
!34 = !DILocation(line: 16, column: 36, scope: !12)
!35 = !DILocalVariable(name: "crazy_indx", scope: !12, file: !1, line: 16, type: !15)
!36 = !DILocation(line: 16, column: 45, scope: !12)
!37 = !DILocalVariable(name: "current", scope: !12, file: !1, line: 17, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!39 = !DILocation(line: 17, column: 11, scope: !12)
!40 = !DILocalVariable(name: "crazy", scope: !12, file: !1, line: 18, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 65536, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 8192)
!44 = !DILocation(line: 18, column: 10, scope: !12)
!45 = !DILocation(line: 20, column: 24, scope: !12)
!46 = !DILocation(line: 20, column: 5, scope: !12)
!47 = !DILocation(line: 21, column: 24, scope: !12)
!48 = !DILocation(line: 21, column: 5, scope: !12)
!49 = !DILocation(line: 22, column: 24, scope: !12)
!50 = !DILocation(line: 22, column: 5, scope: !12)
!51 = !DILocation(line: 23, column: 24, scope: !12)
!52 = !DILocation(line: 23, column: 5, scope: !12)
!53 = !DILocation(line: 24, column: 24, scope: !12)
!54 = !DILocation(line: 24, column: 5, scope: !12)
!55 = !DILocation(line: 25, column: 24, scope: !12)
!56 = !DILocation(line: 25, column: 5, scope: !12)
!57 = !DILocation(line: 26, column: 24, scope: !12)
!58 = !DILocation(line: 26, column: 5, scope: !12)
!59 = !DILocation(line: 27, column: 24, scope: !12)
!60 = !DILocation(line: 27, column: 5, scope: !12)
!61 = !DILocation(line: 29, column: 17, scope: !12)
!62 = !DILocation(line: 29, column: 24, scope: !12)
!63 = !DILocation(line: 29, column: 5, scope: !12)
!64 = !DILocation(line: 30, column: 17, scope: !12)
!65 = !DILocation(line: 30, column: 24, scope: !12)
!66 = !DILocation(line: 30, column: 5, scope: !12)
!67 = !DILocation(line: 31, column: 17, scope: !12)
!68 = !DILocation(line: 31, column: 21, scope: !12)
!69 = !DILocation(line: 31, column: 5, scope: !12)
!70 = !DILocation(line: 32, column: 17, scope: !12)
!71 = !DILocation(line: 32, column: 22, scope: !12)
!72 = !DILocation(line: 32, column: 5, scope: !12)
!73 = !DILocation(line: 33, column: 17, scope: !12)
!74 = !DILocation(line: 33, column: 28, scope: !12)
!75 = !DILocation(line: 33, column: 5, scope: !12)
!76 = !DILocation(line: 34, column: 17, scope: !12)
!77 = !DILocation(line: 34, column: 28, scope: !12)
!78 = !DILocation(line: 34, column: 5, scope: !12)
!79 = !DILocation(line: 36, column: 22, scope: !12)
!80 = !DILocation(line: 36, column: 16, scope: !12)
!81 = !DILocation(line: 36, column: 13, scope: !12)
!82 = !DILocation(line: 38, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !12, file: !1, line: 38, column: 9)
!84 = !DILocation(line: 38, column: 17, scope: !83)
!85 = !DILocation(line: 38, column: 9, scope: !12)
!86 = !DILocation(line: 39, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 39, column: 13)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 38, column: 23)
!89 = !DILocation(line: 39, column: 17, scope: !87)
!90 = !DILocation(line: 39, column: 13, scope: !88)
!91 = !DILocation(line: 39, column: 30, scope: !87)
!92 = !DILocation(line: 39, column: 26, scope: !87)
!93 = !DILocation(line: 40, column: 9, scope: !88)
!94 = !DILocation(line: 41, column: 9, scope: !88)
!95 = !DILocation(line: 41, column: 25, scope: !88)
!96 = !DILocation(line: 41, column: 37, scope: !88)
!97 = !DILocation(line: 42, column: 19, scope: !88)
!98 = !DILocation(line: 42, column: 16, scope: !88)
!99 = !DILocation(line: 43, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !88, file: !1, line: 43, column: 13)
!101 = !DILocation(line: 43, column: 23, scope: !100)
!102 = !DILocation(line: 43, column: 20, scope: !100)
!103 = !DILocation(line: 43, column: 13, scope: !88)
!104 = !DILocation(line: 44, column: 27, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 43, column: 31)
!106 = !DILocation(line: 44, column: 20, scope: !105)
!107 = !DILocation(line: 44, column: 36, scope: !105)
!108 = !DILocation(line: 44, column: 34, scope: !105)
!109 = !DILocation(line: 44, column: 18, scope: !105)
!110 = !DILocation(line: 45, column: 30, scope: !105)
!111 = !DILocation(line: 45, column: 24, scope: !105)
!112 = !DILocation(line: 45, column: 21, scope: !105)
!113 = !DILocation(line: 46, column: 21, scope: !105)
!114 = !DILocation(line: 47, column: 9, scope: !105)
!115 = !DILocation(line: 48, column: 5, scope: !88)
!116 = !DILocation(line: 50, column: 5, scope: !12)
!117 = distinct !DISubprogram(name: "memcpy", scope: !118, file: !118, line: 12, type: !119, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!118 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!119 = !DISubroutineType(types: !120)
!120 = !{!121, !121, !122, !124}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 46, baseType: !126)
!125 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DILocalVariable(name: "destaddr", arg: 1, scope: !117, file: !118, line: 12, type: !121)
!128 = !DILocation(line: 12, column: 20, scope: !117)
!129 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !117, file: !118, line: 12, type: !122)
!130 = !DILocation(line: 12, column: 42, scope: !117)
!131 = !DILocalVariable(name: "len", arg: 3, scope: !117, file: !118, line: 12, type: !124)
!132 = !DILocation(line: 12, column: 58, scope: !117)
!133 = !DILocalVariable(name: "dest", scope: !117, file: !118, line: 13, type: !38)
!134 = !DILocation(line: 13, column: 9, scope: !117)
!135 = !DILocation(line: 13, column: 16, scope: !117)
!136 = !DILocalVariable(name: "src", scope: !117, file: !118, line: 14, type: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!139 = !DILocation(line: 14, column: 15, scope: !117)
!140 = !DILocation(line: 14, column: 21, scope: !117)
!141 = !DILocation(line: 16, column: 3, scope: !117)
!142 = !DILocation(line: 16, column: 13, scope: !117)
!143 = !DILocation(line: 16, column: 16, scope: !117)
!144 = !DILocation(line: 17, column: 19, scope: !117)
!145 = !DILocation(line: 17, column: 15, scope: !117)
!146 = !DILocation(line: 17, column: 10, scope: !117)
!147 = !DILocation(line: 17, column: 13, scope: !117)
!148 = distinct !{!148, !141, !144, !149}
!149 = !{!"llvm.loop.mustprogress"}
!150 = !DILocation(line: 18, column: 10, scope: !117)
!151 = !DILocation(line: 18, column: 3, scope: !117)
