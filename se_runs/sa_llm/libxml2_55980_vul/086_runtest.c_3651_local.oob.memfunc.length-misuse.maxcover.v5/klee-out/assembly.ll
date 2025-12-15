; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/086_runtest.c_3651_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/086_runtest.c_3651_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.glob_t = type { i64, i8**, i64, i32, void (i8*)*, i8* (i8*)*, i8* (i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"((len - 4) <= 500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/086_runtest.c_3651_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"./test/relaxng/%s_?.xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRelaxNGFree(i8* noundef %0) #0 !dbg !14 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !18, metadata !DIExpression()), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [512 x i8]* %2, metadata !25, metadata !DIExpression()), !dbg !30
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !31
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 512, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %5 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 511, !dbg !33
  store i8 0, i8* %5, align 1, !dbg !34
  call void @llvm.dbg.declare(metadata i64* %3, metadata !35, metadata !DIExpression()), !dbg !39
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !40
  %7 = call i64 @strlen(i8* noundef %6) #8, !dbg !41
  store i64 %7, i64* %3, align 8, !dbg !39
  %8 = load i64, i64* %3, align 8, !dbg !42
  %9 = icmp uge i64 %8, 5, !dbg !43
  br i1 %9, label %10, label %13, !dbg !44

10:                                               ; preds = %0
  %11 = load i64, i64* %3, align 8, !dbg !45
  %12 = icmp ule i64 %11, 499, !dbg !46
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !47
  %15 = zext i1 %14 to i32, !dbg !44
  %16 = sext i32 %15 to i64, !dbg !42
  call void @klee_assume(i64 noundef %16), !dbg !48
  %17 = load i64, i64* %3, align 8, !dbg !49
  %18 = icmp uge i64 %17, 4, !dbg !51
  br i1 %18, label %19, label %52, !dbg !52

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8, !dbg !53
  %21 = sub i64 %20, 4, !dbg !55
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %21, !dbg !56
  %23 = load i8, i8* %22, align 1, !dbg !56
  %24 = sext i8 %23 to i32, !dbg !56
  %25 = icmp eq i32 %24, 46, !dbg !57
  %26 = zext i1 %25 to i32, !dbg !57
  %27 = sext i32 %26 to i64, !dbg !56
  call void @klee_assume(i64 noundef %27), !dbg !58
  %28 = load i64, i64* %3, align 8, !dbg !59
  %29 = sub i64 %28, 3, !dbg !60
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %29, !dbg !61
  %31 = load i8, i8* %30, align 1, !dbg !61
  %32 = sext i8 %31 to i32, !dbg !61
  %33 = icmp eq i32 %32, 114, !dbg !62
  %34 = zext i1 %33 to i32, !dbg !62
  %35 = sext i32 %34 to i64, !dbg !61
  call void @klee_assume(i64 noundef %35), !dbg !63
  %36 = load i64, i64* %3, align 8, !dbg !64
  %37 = sub i64 %36, 2, !dbg !65
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %37, !dbg !66
  %39 = load i8, i8* %38, align 1, !dbg !66
  %40 = sext i8 %39 to i32, !dbg !66
  %41 = icmp eq i32 %40, 110, !dbg !67
  %42 = zext i1 %41 to i32, !dbg !67
  %43 = sext i32 %42 to i64, !dbg !66
  call void @klee_assume(i64 noundef %43), !dbg !68
  %44 = load i64, i64* %3, align 8, !dbg !69
  %45 = sub i64 %44, 1, !dbg !70
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 %45, !dbg !71
  %47 = load i8, i8* %46, align 1, !dbg !71
  %48 = sext i8 %47 to i32, !dbg !71
  %49 = icmp eq i32 %48, 103, !dbg !72
  %50 = zext i1 %49 to i32, !dbg !72
  %51 = sext i32 %50 to i64, !dbg !71
  call void @klee_assume(i64 noundef %51), !dbg !73
  br label %52, !dbg !74

52:                                               ; preds = %19, %13
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i64 0, i64 0, !dbg !75
  %54 = call i32 @testRelaxNG(i8* noundef %53), !dbg !76
  %55 = load i64, i64* %3, align 8, !dbg !77
  %56 = sub i64 %55, 4, !dbg !77
  %57 = icmp ule i64 %56, 500, !dbg !77
  br i1 %57, label %58, label %60, !dbg !77

58:                                               ; preds = %52
  br i1 true, label %59, label %60, !dbg !77

59:                                               ; preds = %58
  br label %62, !dbg !77

60:                                               ; preds = %58, %52
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !77
  br label %62, !dbg !77

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !78
  ret i32 0, !dbg !79
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @testRelaxNG(i8* noundef %0) #0 !dbg !80 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [500 x i8], align 16
  %7 = alloca [500 x i8], align 16
  %8 = alloca %struct.glob_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i8** %4, metadata !87, metadata !DIExpression()), !dbg !88
  %11 = load i8*, i8** %3, align 8, !dbg !89
  store i8* %11, i8** %4, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata i64* %5, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata [500 x i8]* %6, metadata !92, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [500 x i8]* %7, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.glob_t* %8, metadata !99, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %9, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8** %10, metadata !130, metadata !DIExpression()), !dbg !131
  store i8* null, i8** %10, align 8, !dbg !131
  %12 = load i8*, i8** %4, align 8, !dbg !132
  %13 = call i64 @strlen(i8* noundef %12) #8, !dbg !133
  store i64 %13, i64* %5, align 8, !dbg !134
  %14 = load i64, i64* %5, align 8, !dbg !135
  %15 = icmp ugt i64 %14, 499, !dbg !137
  br i1 %15, label %19, label %16, !dbg !138

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8, !dbg !139
  %18 = icmp ult i64 %17, 5, !dbg !140
  br i1 %18, label %19, label %21, !dbg !141

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %10, align 8, !dbg !142
  call void @xmlRelaxNGFree(i8* noundef %20), !dbg !144
  store i32 -1, i32* %2, align 4, !dbg !145
  br label %51, !dbg !145

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8, !dbg !146
  %23 = sub i64 %22, 4, !dbg !146
  store i64 %23, i64* %5, align 8, !dbg !146
  %24 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0, !dbg !147
  %25 = load i8*, i8** %4, align 8, !dbg !148
  %26 = load i64, i64* %5, align 8, !dbg !149
  %27 = call i8* @memcpy(i8* %24, i8* %25, i64 %26), !dbg !147
  %28 = load i64, i64* %5, align 8, !dbg !150
  %29 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 %28, !dbg !151
  store i8 0, i8* %29, align 1, !dbg !152
  %30 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !153
  %31 = getelementptr inbounds [500 x i8], [500 x i8]* %6, i64 0, i64 0, !dbg !155
  %32 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %30, i64 noundef 499, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef %31), !dbg !156
  %33 = icmp sge i32 %32, 499, !dbg !157
  br i1 %33, label %34, label %36, !dbg !158

34:                                               ; preds = %21
  %35 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 499, !dbg !159
  store i8 0, i8* %35, align 1, !dbg !160
  br label %36, !dbg !159

36:                                               ; preds = %34, %21
  %37 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %8, i32 0, i32 2, !dbg !161
  store i64 0, i64* %37, align 8, !dbg !162
  %38 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0, !dbg !163
  %39 = call i32 @glob(i8* noundef %38, i32 noundef 8, i32 (i8*, i32)* noundef null, %struct.glob_t* noundef %8) #9, !dbg !164
  store i32 0, i32* %9, align 4, !dbg !165
  br label %40, !dbg !167

40:                                               ; preds = %47, %36
  %41 = load i32, i32* %9, align 4, !dbg !168
  %42 = sext i32 %41 to i64, !dbg !168
  %43 = getelementptr inbounds %struct.glob_t, %struct.glob_t* %8, i32 0, i32 0, !dbg !170
  %44 = load i64, i64* %43, align 8, !dbg !170
  %45 = icmp ult i64 %42, %44, !dbg !171
  br i1 %45, label %46, label %50, !dbg !172

46:                                               ; preds = %40
  br label %47, !dbg !173

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4, !dbg !175
  %49 = add nsw i32 %48, 1, !dbg !175
  store i32 %49, i32* %9, align 4, !dbg !175
  br label %40, !dbg !176, !llvm.loop !177

50:                                               ; preds = %40
  store i32 0, i32* %2, align 4, !dbg !180
  br label %51, !dbg !180

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %2, align 4, !dbg !181
  ret i32 %52, !dbg !181
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare i32 @glob(i8* noundef, i32 noundef, i32 (i8*, i32)* noundef, %struct.glob_t* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !190, metadata !DIExpression()), !dbg !191
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !192, metadata !DIExpression()), !dbg !193
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %7, metadata !196, metadata !DIExpression()), !dbg !197
  %9 = load i8*, i8** %4, align 8, !dbg !198
  store i8* %9, i8** %7, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i8** %8, metadata !199, metadata !DIExpression()), !dbg !200
  %10 = load i8*, i8** %5, align 8, !dbg !201
  store i8* %10, i8** %8, align 8, !dbg !200
  br label %11, !dbg !202

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !203
  %13 = add i64 %12, -1, !dbg !203
  store i64 %13, i64* %6, align 8, !dbg !203
  %14 = icmp ugt i64 %12, 0, !dbg !204
  br i1 %14, label %15, label %21, !dbg !202

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !205
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !205
  store i8* %17, i8** %8, align 8, !dbg !205
  %18 = load i8, i8* %16, align 1, !dbg !206
  %19 = load i8*, i8** %7, align 8, !dbg !207
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !207
  store i8* %20, i8** %7, align 8, !dbg !207
  store i8 %18, i8* %19, align 1, !dbg !208
  br label %11, !dbg !202, !llvm.loop !209

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %22, !dbg !211
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/086_runtest.c_3651_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0be3b85354291906d4e5758bb649b720")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlRelaxNGFree", scope: !1, file: !1, line: 11, type: !15, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !3}
!17 = !{}
!18 = !DILocalVariable(name: "schemas", arg: 1, scope: !14, file: !1, line: 11, type: !3)
!19 = !DILocation(line: 11, column: 27, scope: !14)
!20 = !DILocation(line: 13, column: 1, scope: !14)
!21 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !22, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!22 = !DISubroutineType(types: !23)
!23 = !{!24}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DILocalVariable(name: "base", scope: !21, file: !1, line: 21, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4096, elements: !28)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !{!29}
!29 = !DISubrange(count: 512)
!30 = !DILocation(line: 21, column: 10, scope: !21)
!31 = !DILocation(line: 22, column: 24, scope: !21)
!32 = !DILocation(line: 22, column: 5, scope: !21)
!33 = !DILocation(line: 25, column: 5, scope: !21)
!34 = !DILocation(line: 25, column: 15, scope: !21)
!35 = !DILocalVariable(name: "len", scope: !21, file: !1, line: 28, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 29, baseType: !38)
!37 = !DIFile(filename: "/usr/include/glob.h", directory: "", checksumkind: CSK_MD5, checksum: "8ea9220296cea36c1e39d29a274cc700")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 28, column: 12, scope: !21)
!40 = !DILocation(line: 28, column: 25, scope: !21)
!41 = !DILocation(line: 28, column: 18, scope: !21)
!42 = !DILocation(line: 31, column: 17, scope: !21)
!43 = !DILocation(line: 31, column: 21, scope: !21)
!44 = !DILocation(line: 31, column: 26, scope: !21)
!45 = !DILocation(line: 31, column: 29, scope: !21)
!46 = !DILocation(line: 31, column: 33, scope: !21)
!47 = !DILocation(line: 0, scope: !21)
!48 = !DILocation(line: 31, column: 5, scope: !21)
!49 = !DILocation(line: 34, column: 9, scope: !50)
!50 = distinct !DILexicalBlock(scope: !21, file: !1, line: 34, column: 9)
!51 = !DILocation(line: 34, column: 13, scope: !50)
!52 = !DILocation(line: 34, column: 9, scope: !21)
!53 = !DILocation(line: 35, column: 26, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 34, column: 19)
!55 = !DILocation(line: 35, column: 29, scope: !54)
!56 = !DILocation(line: 35, column: 21, scope: !54)
!57 = !DILocation(line: 35, column: 33, scope: !54)
!58 = !DILocation(line: 35, column: 9, scope: !54)
!59 = !DILocation(line: 36, column: 26, scope: !54)
!60 = !DILocation(line: 36, column: 29, scope: !54)
!61 = !DILocation(line: 36, column: 21, scope: !54)
!62 = !DILocation(line: 36, column: 33, scope: !54)
!63 = !DILocation(line: 36, column: 9, scope: !54)
!64 = !DILocation(line: 37, column: 26, scope: !54)
!65 = !DILocation(line: 37, column: 29, scope: !54)
!66 = !DILocation(line: 37, column: 21, scope: !54)
!67 = !DILocation(line: 37, column: 33, scope: !54)
!68 = !DILocation(line: 37, column: 9, scope: !54)
!69 = !DILocation(line: 38, column: 26, scope: !54)
!70 = !DILocation(line: 38, column: 29, scope: !54)
!71 = !DILocation(line: 38, column: 21, scope: !54)
!72 = !DILocation(line: 38, column: 33, scope: !54)
!73 = !DILocation(line: 38, column: 9, scope: !54)
!74 = !DILocation(line: 39, column: 5, scope: !54)
!75 = !DILocation(line: 42, column: 17, scope: !21)
!76 = !DILocation(line: 42, column: 5, scope: !21)
!77 = !DILocation(line: 47, column: 5, scope: !21)
!78 = !DILocation(line: 50, column: 5, scope: !21)
!79 = !DILocation(line: 52, column: 5, scope: !21)
!80 = distinct !DISubprogram(name: "testRelaxNG", scope: !1, file: !1, line: 56, type: !81, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!81 = !DISubroutineType(types: !82)
!82 = !{!24, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!85 = !DILocalVariable(name: "filename", arg: 1, scope: !80, file: !1, line: 56, type: !83)
!86 = !DILocation(line: 56, column: 29, scope: !80)
!87 = !DILocalVariable(name: "base", scope: !80, file: !1, line: 57, type: !83)
!88 = !DILocation(line: 57, column: 17, scope: !80)
!89 = !DILocation(line: 57, column: 24, scope: !80)
!90 = !DILocalVariable(name: "len", scope: !80, file: !1, line: 58, type: !36)
!91 = !DILocation(line: 58, column: 12, scope: !80)
!92 = !DILocalVariable(name: "prefix", scope: !80, file: !1, line: 59, type: !93)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4000, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 500)
!96 = !DILocation(line: 59, column: 10, scope: !80)
!97 = !DILocalVariable(name: "pattern", scope: !80, file: !1, line: 60, type: !93)
!98 = !DILocation(line: 60, column: 10, scope: !80)
!99 = !DILocalVariable(name: "globbuf", scope: !80, file: !1, line: 61, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "glob_t", file: !37, line: 105, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !37, line: 82, size: 576, elements: !102)
!102 = !{!103, !105, !108, !109, !110, !112, !116, !120, !126}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathc", scope: !101, file: !37, line: 84, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !37, line: 27, baseType: !38)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "gl_pathv", scope: !101, file: !37, line: 85, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "gl_offs", scope: !101, file: !37, line: 86, baseType: !104, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "gl_flags", scope: !101, file: !37, line: 87, baseType: !24, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "gl_closedir", scope: !101, file: !37, line: 91, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "gl_readdir", scope: !101, file: !37, line: 95, baseType: !113, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!3, !3}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "gl_opendir", scope: !101, file: !37, line: 97, baseType: !117, size: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!3, !83}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "gl_lstat", scope: !101, file: !37, line: 102, baseType: !121, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!24, !124, !125}
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "gl_stat", scope: !101, file: !37, line: 103, baseType: !121, size: 64, offset: 512)
!127 = !DILocation(line: 61, column: 12, scope: !80)
!128 = !DILocalVariable(name: "i", scope: !80, file: !1, line: 62, type: !24)
!129 = !DILocation(line: 62, column: 9, scope: !80)
!130 = !DILocalVariable(name: "schemas", scope: !80, file: !1, line: 63, type: !3)
!131 = !DILocation(line: 63, column: 11, scope: !80)
!132 = !DILocation(line: 66, column: 18, scope: !80)
!133 = !DILocation(line: 66, column: 11, scope: !80)
!134 = !DILocation(line: 66, column: 9, scope: !80)
!135 = !DILocation(line: 67, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !80, file: !1, line: 67, column: 9)
!137 = !DILocation(line: 67, column: 14, scope: !136)
!138 = !DILocation(line: 67, column: 21, scope: !136)
!139 = !DILocation(line: 67, column: 25, scope: !136)
!140 = !DILocation(line: 67, column: 29, scope: !136)
!141 = !DILocation(line: 67, column: 9, scope: !80)
!142 = !DILocation(line: 68, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !136, file: !1, line: 67, column: 35)
!144 = !DILocation(line: 68, column: 9, scope: !143)
!145 = !DILocation(line: 69, column: 9, scope: !143)
!146 = !DILocation(line: 71, column: 9, scope: !80)
!147 = !DILocation(line: 74, column: 5, scope: !80)
!148 = !DILocation(line: 74, column: 20, scope: !80)
!149 = !DILocation(line: 74, column: 26, scope: !80)
!150 = !DILocation(line: 75, column: 12, scope: !80)
!151 = !DILocation(line: 75, column: 5, scope: !80)
!152 = !DILocation(line: 75, column: 17, scope: !80)
!153 = !DILocation(line: 78, column: 18, scope: !154)
!154 = distinct !DILexicalBlock(scope: !80, file: !1, line: 78, column: 9)
!155 = !DILocation(line: 78, column: 59, scope: !154)
!156 = !DILocation(line: 78, column: 9, scope: !154)
!157 = !DILocation(line: 78, column: 67, scope: !154)
!158 = !DILocation(line: 78, column: 9, scope: !80)
!159 = !DILocation(line: 79, column: 9, scope: !154)
!160 = !DILocation(line: 79, column: 22, scope: !154)
!161 = !DILocation(line: 81, column: 13, scope: !80)
!162 = !DILocation(line: 81, column: 21, scope: !80)
!163 = !DILocation(line: 82, column: 10, scope: !80)
!164 = !DILocation(line: 82, column: 5, scope: !80)
!165 = !DILocation(line: 83, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !80, file: !1, line: 83, column: 5)
!167 = !DILocation(line: 83, column: 10, scope: !166)
!168 = !DILocation(line: 83, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 83, column: 5)
!170 = !DILocation(line: 83, column: 29, scope: !169)
!171 = !DILocation(line: 83, column: 19, scope: !169)
!172 = !DILocation(line: 83, column: 5, scope: !166)
!173 = !DILocation(line: 85, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 83, column: 44)
!175 = !DILocation(line: 83, column: 40, scope: !169)
!176 = !DILocation(line: 83, column: 5, scope: !169)
!177 = distinct !{!177, !172, !178, !179}
!178 = !DILocation(line: 85, column: 5, scope: !166)
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 87, column: 5, scope: !80)
!181 = !DILocation(line: 88, column: 1, scope: !80)
!182 = distinct !DISubprogram(name: "memcpy", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !17)
!183 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!184 = !DISubroutineType(types: !185)
!185 = !{!3, !3, !186, !188}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 46, baseType: !38)
!189 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!190 = !DILocalVariable(name: "destaddr", arg: 1, scope: !182, file: !183, line: 12, type: !3)
!191 = !DILocation(line: 12, column: 20, scope: !182)
!192 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !182, file: !183, line: 12, type: !186)
!193 = !DILocation(line: 12, column: 42, scope: !182)
!194 = !DILocalVariable(name: "len", arg: 3, scope: !182, file: !183, line: 12, type: !188)
!195 = !DILocation(line: 12, column: 58, scope: !182)
!196 = !DILocalVariable(name: "dest", scope: !182, file: !183, line: 13, type: !107)
!197 = !DILocation(line: 13, column: 9, scope: !182)
!198 = !DILocation(line: 13, column: 16, scope: !182)
!199 = !DILocalVariable(name: "src", scope: !182, file: !183, line: 14, type: !83)
!200 = !DILocation(line: 14, column: 15, scope: !182)
!201 = !DILocation(line: 14, column: 21, scope: !182)
!202 = !DILocation(line: 16, column: 3, scope: !182)
!203 = !DILocation(line: 16, column: 13, scope: !182)
!204 = !DILocation(line: 16, column: 16, scope: !182)
!205 = !DILocation(line: 17, column: 19, scope: !182)
!206 = !DILocation(line: 17, column: 15, scope: !182)
!207 = !DILocation(line: 17, column: 10, scope: !182)
!208 = !DILocation(line: 17, column: 13, scope: !182)
!209 = distinct !{!209, !202, !205, !179}
!210 = !DILocation(line: 18, column: 10, scope: !182)
!211 = !DILocation(line: 18, column: 3, scope: !182)
