; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/224_HTMLparser.c_2226_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/224_HTMLparser.c_2226_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlEntity = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ent\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ent_name\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"branch_choice\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"(len <= (outend - out)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/224_HTMLparser.c_2226_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.htmlEncodeEntities = private unnamed_addr constant [89 x i8] c"int htmlEncodeEntities(unsigned char *, int *, const unsigned char *, int *, int, int *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"in_buf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htmlEncodeEntities(i8* noundef %0, i32* noundef %1, i8* noundef %2, i32* noundef %3, i32 noundef %4, i32* noundef %5) #0 !dbg !14 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._xmlEntity*, align 8
  %20 = alloca [256 x i8], align 16
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !24, metadata !DIExpression()), !dbg !25
  store i32* %1, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !32, metadata !DIExpression()), !dbg !33
  store i32* %5, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %13, metadata !36, metadata !DIExpression()), !dbg !37
  %22 = load i8*, i8** %7, align 8, !dbg !38
  store i8* %22, i8** %13, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i8** %14, metadata !39, metadata !DIExpression()), !dbg !40
  %23 = load i8*, i8** %7, align 8, !dbg !41
  %24 = load i32*, i32** %8, align 8, !dbg !42
  %25 = load i32, i32* %24, align 4, !dbg !43
  %26 = sext i32 %25 to i64, !dbg !44
  %27 = getelementptr inbounds i8, i8* %23, i64 %26, !dbg !44
  store i8* %27, i8** %14, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i8** %15, metadata !45, metadata !DIExpression()), !dbg !46
  %28 = load i8*, i8** %9, align 8, !dbg !47
  store i8* %28, i8** %15, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i8** %16, metadata !48, metadata !DIExpression()), !dbg !49
  %29 = load i8*, i8** %9, align 8, !dbg !50
  store i8* %29, i8** %16, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i8** %17, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %18, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %struct._xmlEntity** %19, metadata !57, metadata !DIExpression()), !dbg !63
  store %struct._xmlEntity* null, %struct._xmlEntity** %19, align 8, !dbg !63
  %30 = bitcast %struct._xmlEntity** %19 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %31 = load %struct._xmlEntity*, %struct._xmlEntity** %19, align 8, !dbg !66
  %32 = icmp ne %struct._xmlEntity* %31, null, !dbg !67
  %33 = zext i1 %32 to i32, !dbg !67
  %34 = sext i32 %33 to i64, !dbg !66
  call void @klee_assume(i64 noundef %34), !dbg !68
  call void @llvm.dbg.declare(metadata [256 x i8]* %20, metadata !69, metadata !DIExpression()), !dbg !73
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !74
  call void @klee_make_symbolic(i8* noundef %35, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0, !dbg !76
  %37 = load %struct._xmlEntity*, %struct._xmlEntity** %19, align 8, !dbg !77
  %38 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %37, i32 0, i32 0, !dbg !78
  store i8* %36, i8** %38, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %21, metadata !80, metadata !DIExpression()), !dbg !81
  %39 = bitcast i32* %21 to i8*, !dbg !82
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !83
  %40 = load i32, i32* %21, align 4, !dbg !84
  %41 = icmp ne i32 %40, 0, !dbg !85
  %42 = zext i1 %41 to i32, !dbg !85
  %43 = sext i32 %42 to i64, !dbg !84
  call void @klee_assume(i64 noundef %43), !dbg !86
  %44 = load %struct._xmlEntity*, %struct._xmlEntity** %19, align 8, !dbg !87
  %45 = getelementptr inbounds %struct._xmlEntity, %struct._xmlEntity* %44, i32 0, i32 0, !dbg !88
  %46 = load i8*, i8** %45, align 8, !dbg !88
  store i8* %46, i8** %17, align 8, !dbg !89
  %47 = load i8*, i8** %17, align 8, !dbg !90
  %48 = call i64 @strlen(i8* noundef %47) #7, !dbg !91
  %49 = trunc i64 %48 to i32, !dbg !91
  store i32 %49, i32* %18, align 4, !dbg !92
  %50 = load i8*, i8** %7, align 8, !dbg !93
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !94
  %52 = load i32, i32* %18, align 4, !dbg !95
  %53 = sext i32 %52 to i64, !dbg !96
  %54 = getelementptr inbounds i8, i8* %51, i64 %53, !dbg !96
  %55 = load i8*, i8** %14, align 8, !dbg !97
  %56 = icmp ult i8* %54, %55, !dbg !98
  %57 = zext i1 %56 to i32, !dbg !98
  %58 = sext i32 %57 to i64, !dbg !93
  call void @klee_assume(i64 noundef %58), !dbg !99
  %59 = load i8*, i8** %7, align 8, !dbg !100
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !100
  store i8* %60, i8** %7, align 8, !dbg !100
  store i8 38, i8* %59, align 1, !dbg !101
  %61 = load i32, i32* %18, align 4, !dbg !102
  %62 = sext i32 %61 to i64, !dbg !102
  %63 = load i8*, i8** %14, align 8, !dbg !102
  %64 = load i8*, i8** %7, align 8, !dbg !102
  %65 = ptrtoint i8* %63 to i64, !dbg !102
  %66 = ptrtoint i8* %64 to i64, !dbg !102
  %67 = sub i64 %65, %66, !dbg !102
  %68 = icmp sle i64 %62, %67, !dbg !102
  br i1 %68, label %69, label %71, !dbg !102

69:                                               ; preds = %6
  br i1 true, label %70, label %71, !dbg !102

70:                                               ; preds = %69
  br label %73, !dbg !102

71:                                               ; preds = %69, %6
  %72 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.htmlEncodeEntities, i64 0, i64 0)), !dbg !102
  br label %73, !dbg !102

73:                                               ; preds = %71, %70
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 noundef 57, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.htmlEncodeEntities, i64 0, i64 0)), !dbg !103
  %75 = load i8*, i8** %7, align 8, !dbg !104
  %76 = load i8*, i8** %17, align 8, !dbg !105
  %77 = load i32, i32* %18, align 4, !dbg !106
  %78 = sext i32 %77 to i64, !dbg !106
  %79 = call i8* @memcpy(i8* %75, i8* %76, i64 %78), !dbg !107
  %80 = load i32, i32* %18, align 4, !dbg !108
  %81 = load i8*, i8** %7, align 8, !dbg !109
  %82 = sext i32 %80 to i64, !dbg !109
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !109
  store i8* %83, i8** %7, align 8, !dbg !109
  %84 = load i8*, i8** %7, align 8, !dbg !110
  %85 = getelementptr inbounds i8, i8* %84, i32 1, !dbg !110
  store i8* %85, i8** %7, align 8, !dbg !110
  store i8 59, i8* %84, align 1, !dbg !111
  %86 = load i8*, i8** %9, align 8, !dbg !112
  store i8* %86, i8** %16, align 8, !dbg !113
  %87 = load i8*, i8** %7, align 8, !dbg !114
  %88 = load i8*, i8** %13, align 8, !dbg !115
  %89 = ptrtoint i8* %87 to i64, !dbg !116
  %90 = ptrtoint i8* %88 to i64, !dbg !116
  %91 = sub i64 %89, %90, !dbg !116
  %92 = trunc i64 %91 to i32, !dbg !114
  %93 = load i32*, i32** %8, align 8, !dbg !117
  store i32 %92, i32* %93, align 4, !dbg !118
  %94 = load i8*, i8** %16, align 8, !dbg !119
  %95 = load i8*, i8** %15, align 8, !dbg !120
  %96 = ptrtoint i8* %94 to i64, !dbg !121
  %97 = ptrtoint i8* %95 to i64, !dbg !121
  %98 = sub i64 %96, %97, !dbg !121
  %99 = trunc i64 %98 to i32, !dbg !119
  %100 = load i32*, i32** %10, align 8, !dbg !122
  store i32 %99, i32* %100, align 4, !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !125 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !128, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 1024, i32* %4, align 4, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %5, metadata !137, metadata !DIExpression()), !dbg !138
  store i32 1024, i32* %5, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %6, metadata !139, metadata !DIExpression()), !dbg !140
  store i32 0, i32* %6, align 4, !dbg !140
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !141
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)), !dbg !142
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !143
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !144
  %10 = call i32 @htmlEncodeEntities(i8* noundef %8, i32* noundef %4, i8* noundef %9, i32* noundef %5, i32 noundef 0, i32* noundef %6), !dbg !145
  ret i32 0, !dbg !146
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !147 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !156, metadata !DIExpression()), !dbg !157
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !158, metadata !DIExpression()), !dbg !159
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i8** %7, metadata !162, metadata !DIExpression()), !dbg !163
  %9 = load i8*, i8** %4, align 8, !dbg !164
  store i8* %9, i8** %7, align 8, !dbg !163
  call void @llvm.dbg.declare(metadata i8** %8, metadata !165, metadata !DIExpression()), !dbg !168
  %10 = load i8*, i8** %5, align 8, !dbg !169
  store i8* %10, i8** %8, align 8, !dbg !168
  br label %11, !dbg !170

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !171
  %13 = add i64 %12, -1, !dbg !171
  store i64 %13, i64* %6, align 8, !dbg !171
  %14 = icmp ugt i64 %12, 0, !dbg !172
  br i1 %14, label %15, label %21, !dbg !170

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !173
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !173
  store i8* %17, i8** %8, align 8, !dbg !173
  %18 = load i8, i8* %16, align 1, !dbg !174
  %19 = load i8*, i8** %7, align 8, !dbg !175
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !175
  store i8* %20, i8** %7, align 8, !dbg !175
  store i8 %18, i8* %19, align 1, !dbg !176
  br label %11, !dbg !170, !llvm.loop !177

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %22, !dbg !180
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/224_HTMLparser.c_2226_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "ed48b947e2b35559f618518708a533b8")
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
!14 = distinct !DISubprogram(name: "htmlEncodeEntities", scope: !1, file: !1, line: 15, type: !15, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !20, !21, !20, !17, !20}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!23 = !{}
!24 = !DILocalVariable(name: "out", arg: 1, scope: !14, file: !1, line: 15, type: !18)
!25 = !DILocation(line: 15, column: 39, scope: !14)
!26 = !DILocalVariable(name: "outlen", arg: 2, scope: !14, file: !1, line: 15, type: !20)
!27 = !DILocation(line: 15, column: 49, scope: !14)
!28 = !DILocalVariable(name: "in", arg: 3, scope: !14, file: !1, line: 16, type: !21)
!29 = !DILocation(line: 16, column: 45, scope: !14)
!30 = !DILocalVariable(name: "inlen", arg: 4, scope: !14, file: !1, line: 16, type: !20)
!31 = !DILocation(line: 16, column: 54, scope: !14)
!32 = !DILocalVariable(name: "quoteChar", arg: 5, scope: !14, file: !1, line: 17, type: !17)
!33 = !DILocation(line: 17, column: 28, scope: !14)
!34 = !DILocalVariable(name: "next", arg: 6, scope: !14, file: !1, line: 17, type: !20)
!35 = !DILocation(line: 17, column: 44, scope: !14)
!36 = !DILocalVariable(name: "outstart", scope: !14, file: !1, line: 19, type: !18)
!37 = !DILocation(line: 19, column: 20, scope: !14)
!38 = !DILocation(line: 19, column: 31, scope: !14)
!39 = !DILocalVariable(name: "outend", scope: !14, file: !1, line: 20, type: !18)
!40 = !DILocation(line: 20, column: 20, scope: !14)
!41 = !DILocation(line: 20, column: 29, scope: !14)
!42 = !DILocation(line: 20, column: 36, scope: !14)
!43 = !DILocation(line: 20, column: 35, scope: !14)
!44 = !DILocation(line: 20, column: 33, scope: !14)
!45 = !DILocalVariable(name: "instart", scope: !14, file: !1, line: 21, type: !21)
!46 = !DILocation(line: 21, column: 26, scope: !14)
!47 = !DILocation(line: 21, column: 36, scope: !14)
!48 = !DILocalVariable(name: "processed", scope: !14, file: !1, line: 22, type: !21)
!49 = !DILocation(line: 22, column: 26, scope: !14)
!50 = !DILocation(line: 22, column: 38, scope: !14)
!51 = !DILocalVariable(name: "cp", scope: !14, file: !1, line: 25, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DILocation(line: 25, column: 11, scope: !14)
!55 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 26, type: !17)
!56 = !DILocation(line: 26, column: 9, scope: !14)
!57 = !DILocalVariable(name: "ent", scope: !14, file: !1, line: 27, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEntity", file: !1, line: 12, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEntity", file: !1, line: 10, size: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !60, file: !1, line: 11, baseType: !52, size: 64)
!63 = !DILocation(line: 27, column: 16, scope: !14)
!64 = !DILocation(line: 30, column: 24, scope: !14)
!65 = !DILocation(line: 30, column: 5, scope: !14)
!66 = !DILocation(line: 31, column: 17, scope: !14)
!67 = !DILocation(line: 31, column: 21, scope: !14)
!68 = !DILocation(line: 31, column: 5, scope: !14)
!69 = !DILocalVariable(name: "ent_name", scope: !14, file: !1, line: 34, type: !70)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2048, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 256)
!73 = !DILocation(line: 34, column: 10, scope: !14)
!74 = !DILocation(line: 35, column: 24, scope: !14)
!75 = !DILocation(line: 35, column: 5, scope: !14)
!76 = !DILocation(line: 36, column: 17, scope: !14)
!77 = !DILocation(line: 36, column: 5, scope: !14)
!78 = !DILocation(line: 36, column: 10, scope: !14)
!79 = !DILocation(line: 36, column: 15, scope: !14)
!80 = !DILocalVariable(name: "branch_choice", scope: !14, file: !1, line: 39, type: !17)
!81 = !DILocation(line: 39, column: 9, scope: !14)
!82 = !DILocation(line: 40, column: 24, scope: !14)
!83 = !DILocation(line: 40, column: 5, scope: !14)
!84 = !DILocation(line: 41, column: 17, scope: !14)
!85 = !DILocation(line: 41, column: 31, scope: !14)
!86 = !DILocation(line: 41, column: 5, scope: !14)
!87 = !DILocation(line: 43, column: 10, scope: !14)
!88 = !DILocation(line: 43, column: 15, scope: !14)
!89 = !DILocation(line: 43, column: 8, scope: !14)
!90 = !DILocation(line: 44, column: 18, scope: !14)
!91 = !DILocation(line: 44, column: 11, scope: !14)
!92 = !DILocation(line: 44, column: 9, scope: !14)
!93 = !DILocation(line: 47, column: 17, scope: !14)
!94 = !DILocation(line: 47, column: 21, scope: !14)
!95 = !DILocation(line: 47, column: 27, scope: !14)
!96 = !DILocation(line: 47, column: 25, scope: !14)
!97 = !DILocation(line: 47, column: 33, scope: !14)
!98 = !DILocation(line: 47, column: 31, scope: !14)
!99 = !DILocation(line: 47, column: 5, scope: !14)
!100 = !DILocation(line: 50, column: 9, scope: !14)
!101 = !DILocation(line: 50, column: 12, scope: !14)
!102 = !DILocation(line: 54, column: 5, scope: !14)
!103 = !DILocation(line: 57, column: 5, scope: !14)
!104 = !DILocation(line: 60, column: 12, scope: !14)
!105 = !DILocation(line: 60, column: 17, scope: !14)
!106 = !DILocation(line: 60, column: 21, scope: !14)
!107 = !DILocation(line: 60, column: 5, scope: !14)
!108 = !DILocation(line: 63, column: 12, scope: !14)
!109 = !DILocation(line: 63, column: 9, scope: !14)
!110 = !DILocation(line: 64, column: 9, scope: !14)
!111 = !DILocation(line: 64, column: 12, scope: !14)
!112 = !DILocation(line: 65, column: 17, scope: !14)
!113 = !DILocation(line: 65, column: 15, scope: !14)
!114 = !DILocation(line: 66, column: 15, scope: !14)
!115 = !DILocation(line: 66, column: 21, scope: !14)
!116 = !DILocation(line: 66, column: 19, scope: !14)
!117 = !DILocation(line: 66, column: 6, scope: !14)
!118 = !DILocation(line: 66, column: 13, scope: !14)
!119 = !DILocation(line: 67, column: 14, scope: !14)
!120 = !DILocation(line: 67, column: 26, scope: !14)
!121 = !DILocation(line: 67, column: 24, scope: !14)
!122 = !DILocation(line: 67, column: 6, scope: !14)
!123 = !DILocation(line: 67, column: 12, scope: !14)
!124 = !DILocation(line: 68, column: 5, scope: !14)
!125 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 71, type: !126, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!126 = !DISubroutineType(types: !127)
!127 = !{!17}
!128 = !DILocalVariable(name: "out_buf", scope: !125, file: !1, line: 73, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1024)
!132 = !DILocation(line: 73, column: 19, scope: !125)
!133 = !DILocalVariable(name: "in_buf", scope: !125, file: !1, line: 74, type: !129)
!134 = !DILocation(line: 74, column: 19, scope: !125)
!135 = !DILocalVariable(name: "outlen", scope: !125, file: !1, line: 75, type: !17)
!136 = !DILocation(line: 75, column: 9, scope: !125)
!137 = !DILocalVariable(name: "inlen", scope: !125, file: !1, line: 76, type: !17)
!138 = !DILocation(line: 76, column: 9, scope: !125)
!139 = !DILocalVariable(name: "next", scope: !125, file: !1, line: 77, type: !17)
!140 = !DILocation(line: 77, column: 9, scope: !125)
!141 = !DILocation(line: 80, column: 24, scope: !125)
!142 = !DILocation(line: 80, column: 5, scope: !125)
!143 = !DILocation(line: 83, column: 24, scope: !125)
!144 = !DILocation(line: 83, column: 42, scope: !125)
!145 = !DILocation(line: 83, column: 5, scope: !125)
!146 = !DILocation(line: 85, column: 5, scope: !125)
!147 = distinct !DISubprogram(name: "memcpy", scope: !148, file: !148, line: 12, type: !149, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !23)
!148 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!149 = !DISubroutineType(types: !150)
!150 = !{!3, !3, !151, !153}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 46, baseType: !155)
!154 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!155 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DILocalVariable(name: "destaddr", arg: 1, scope: !147, file: !148, line: 12, type: !3)
!157 = !DILocation(line: 12, column: 20, scope: !147)
!158 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !147, file: !148, line: 12, type: !151)
!159 = !DILocation(line: 12, column: 42, scope: !147)
!160 = !DILocalVariable(name: "len", arg: 3, scope: !147, file: !148, line: 12, type: !153)
!161 = !DILocation(line: 12, column: 58, scope: !147)
!162 = !DILocalVariable(name: "dest", scope: !147, file: !148, line: 13, type: !52)
!163 = !DILocation(line: 13, column: 9, scope: !147)
!164 = !DILocation(line: 13, column: 16, scope: !147)
!165 = !DILocalVariable(name: "src", scope: !147, file: !148, line: 14, type: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!168 = !DILocation(line: 14, column: 15, scope: !147)
!169 = !DILocation(line: 14, column: 21, scope: !147)
!170 = !DILocation(line: 16, column: 3, scope: !147)
!171 = !DILocation(line: 16, column: 13, scope: !147)
!172 = !DILocation(line: 16, column: 16, scope: !147)
!173 = !DILocation(line: 17, column: 19, scope: !147)
!174 = !DILocation(line: 17, column: 15, scope: !147)
!175 = !DILocation(line: 17, column: 10, scope: !147)
!176 = !DILocation(line: 17, column: 13, scope: !147)
!177 = distinct !{!177, !170, !173, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = !DILocation(line: 18, column: 10, scope: !147)
!180 = !DILocation(line: 18, column: 3, scope: !147)
