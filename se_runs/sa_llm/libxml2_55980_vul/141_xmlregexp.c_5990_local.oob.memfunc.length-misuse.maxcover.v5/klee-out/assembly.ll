; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/141_xmlregexp.c_5990_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/141_xmlregexp.c_5990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlRegAtom = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"(lenp <= lenn + lenp + 2) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/141_xmlregexp.c_5990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [50 x i8] c"xmlRegAtom *target_function(xmlChar *, xmlChar *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"token2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !24 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i64, i64* %2, align 8, !dbg !33
  %4 = call noalias i8* @malloc(i64 noundef %3) #8, !dbg !34
  ret i8* %4, !dbg !35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegFreeAtom(i8* noundef %0) #0 !dbg !36 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xmlRegAtom* @target_function(i8* noundef %0, i8* noundef %1) #0 !dbg !42 {
  %3 = alloca %struct.xmlRegAtom*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xmlRegAtom*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i64* %6, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i64* %7, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i8** %8, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct.xmlRegAtom** %9, metadata !55, metadata !DIExpression()), !dbg !56
  %10 = call noalias i8* @malloc(i64 noundef 8) #8, !dbg !57
  %11 = bitcast i8* %10 to %struct.xmlRegAtom*, !dbg !58
  store %struct.xmlRegAtom* %11, %struct.xmlRegAtom** %9, align 8, !dbg !59
  %12 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %9, align 8, !dbg !60
  %13 = icmp ne %struct.xmlRegAtom* %12, null, !dbg !60
  br i1 %13, label %15, label %14, !dbg !62

14:                                               ; preds = %2
  store %struct.xmlRegAtom* null, %struct.xmlRegAtom** %3, align 8, !dbg !63
  br label %70, !dbg !63

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8, !dbg !64
  %17 = call i64 @strlen(i8* noundef %16) #9, !dbg !65
  store i64 %17, i64* %6, align 8, !dbg !66
  %18 = load i8*, i8** %4, align 8, !dbg !67
  %19 = call i64 @strlen(i8* noundef %18) #9, !dbg !68
  store i64 %19, i64* %7, align 8, !dbg !69
  %20 = load i64, i64* %6, align 8, !dbg !70
  %21 = load i64, i64* %7, align 8, !dbg !71
  %22 = add i64 %20, %21, !dbg !72
  %23 = add i64 %22, 2, !dbg !73
  %24 = call i8* @xmlMallocAtomic(i64 noundef %23), !dbg !74
  store i8* %24, i8** %8, align 8, !dbg !75
  %25 = load i8*, i8** %8, align 8, !dbg !76
  %26 = icmp eq i8* %25, null, !dbg !78
  br i1 %26, label %27, label %32, !dbg !79

27:                                               ; preds = %15
  %28 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %9, align 8, !dbg !80
  %29 = bitcast %struct.xmlRegAtom* %28 to i8*, !dbg !80
  call void @xmlRegFreeAtom(i8* noundef %29), !dbg !82
  %30 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %9, align 8, !dbg !83
  %31 = bitcast %struct.xmlRegAtom* %30 to i8*, !dbg !83
  call void @free(i8* noundef %31) #8, !dbg !84
  store %struct.xmlRegAtom* null, %struct.xmlRegAtom** %3, align 8, !dbg !85
  br label %70, !dbg !85

32:                                               ; preds = %15
  %33 = load i8*, i8** %8, align 8, !dbg !86
  %34 = getelementptr inbounds i8, i8* %33, i64 0, !dbg !86
  %35 = load i8*, i8** %4, align 8, !dbg !87
  %36 = load i64, i64* %7, align 8, !dbg !88
  %37 = call i8* @memcpy(i8* %34, i8* %35, i64 %36), !dbg !89
  %38 = load i64, i64* %7, align 8, !dbg !90
  %39 = load i64, i64* %6, align 8, !dbg !90
  %40 = load i64, i64* %7, align 8, !dbg !90
  %41 = add i64 %39, %40, !dbg !90
  %42 = add i64 %41, 2, !dbg !90
  %43 = icmp ule i64 %38, %42, !dbg !90
  br i1 %43, label %44, label %46, !dbg !90

44:                                               ; preds = %32
  br i1 true, label %45, label %46, !dbg !90

45:                                               ; preds = %44
  br label %48, !dbg !90

46:                                               ; preds = %44, %32
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !90
  br label %48, !dbg !90

48:                                               ; preds = %46, %45
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.2, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !91
  %50 = load i8*, i8** %8, align 8, !dbg !92
  %51 = load i64, i64* %7, align 8, !dbg !93
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !92
  store i8 124, i8* %52, align 1, !dbg !94
  %53 = load i8*, i8** %8, align 8, !dbg !95
  %54 = load i64, i64* %7, align 8, !dbg !96
  %55 = add i64 %54, 1, !dbg !97
  %56 = getelementptr inbounds i8, i8* %53, i64 %55, !dbg !95
  %57 = load i8*, i8** %5, align 8, !dbg !98
  %58 = load i64, i64* %6, align 8, !dbg !99
  %59 = call i8* @memcpy(i8* %56, i8* %57, i64 %58), !dbg !100
  %60 = load i8*, i8** %8, align 8, !dbg !101
  %61 = load i64, i64* %6, align 8, !dbg !102
  %62 = load i64, i64* %7, align 8, !dbg !103
  %63 = add i64 %61, %62, !dbg !104
  %64 = add i64 %63, 1, !dbg !105
  %65 = getelementptr inbounds i8, i8* %60, i64 %64, !dbg !101
  store i8 0, i8* %65, align 1, !dbg !106
  %66 = load i8*, i8** %8, align 8, !dbg !107
  %67 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %9, align 8, !dbg !108
  %68 = getelementptr inbounds %struct.xmlRegAtom, %struct.xmlRegAtom* %67, i32 0, i32 0, !dbg !109
  store i8* %66, i8** %68, align 8, !dbg !110
  %69 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %9, align 8, !dbg !111
  store %struct.xmlRegAtom* %69, %struct.xmlRegAtom** %3, align 8, !dbg !112
  br label %70, !dbg !112

70:                                               ; preds = %48, %27, %14
  %71 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %3, align 8, !dbg !113
  ret %struct.xmlRegAtom* %71, !dbg !113
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct.xmlRegAtom*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !118, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata %struct.xmlRegAtom** %4, metadata !125, metadata !DIExpression()), !dbg !126
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !127
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !128
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !129
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)), !dbg !130
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !131
  store i8 0, i8* %7, align 1, !dbg !132
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !133
  store i8 0, i8* %8, align 1, !dbg !134
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !135
  %10 = call i64 @strlen(i8* noundef %9) #9, !dbg !136
  %11 = icmp ult i64 %10, 256, !dbg !137
  %12 = zext i1 %11 to i32, !dbg !137
  %13 = sext i32 %12 to i64, !dbg !136
  call void @klee_assume(i64 noundef %13), !dbg !138
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !139
  %15 = call i64 @strlen(i8* noundef %14) #9, !dbg !140
  %16 = icmp ult i64 %15, 256, !dbg !141
  %17 = zext i1 %16 to i32, !dbg !141
  %18 = sext i32 %17 to i64, !dbg !140
  call void @klee_assume(i64 noundef %18), !dbg !142
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !143
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !144
  %21 = call %struct.xmlRegAtom* @target_function(i8* noundef %19, i8* noundef %20), !dbg !145
  store %struct.xmlRegAtom* %21, %struct.xmlRegAtom** %4, align 8, !dbg !146
  %22 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %4, align 8, !dbg !147
  %23 = icmp ne %struct.xmlRegAtom* %22, null, !dbg !147
  br i1 %23, label %24, label %36, !dbg !149

24:                                               ; preds = %0
  %25 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %4, align 8, !dbg !150
  %26 = getelementptr inbounds %struct.xmlRegAtom, %struct.xmlRegAtom* %25, i32 0, i32 0, !dbg !153
  %27 = load i8*, i8** %26, align 8, !dbg !153
  %28 = icmp ne i8* %27, null, !dbg !150
  br i1 %28, label %29, label %33, !dbg !154

29:                                               ; preds = %24
  %30 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %4, align 8, !dbg !155
  %31 = getelementptr inbounds %struct.xmlRegAtom, %struct.xmlRegAtom* %30, i32 0, i32 0, !dbg !156
  %32 = load i8*, i8** %31, align 8, !dbg !156
  call void @free(i8* noundef %32) #8, !dbg !157
  br label %33, !dbg !157

33:                                               ; preds = %29, %24
  %34 = load %struct.xmlRegAtom*, %struct.xmlRegAtom** %4, align 8, !dbg !158
  %35 = bitcast %struct.xmlRegAtom* %34 to i8*, !dbg !158
  call void @free(i8* noundef %35) #8, !dbg !159
  br label %36, !dbg !160

36:                                               ; preds = %33, %0
  ret i32 0, !dbg !161
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !162 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !168, metadata !DIExpression()), !dbg !169
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i8** %7, metadata !174, metadata !DIExpression()), !dbg !175
  %9 = load i8*, i8** %4, align 8, !dbg !176
  store i8* %9, i8** %7, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata i8** %8, metadata !177, metadata !DIExpression()), !dbg !180
  %10 = load i8*, i8** %5, align 8, !dbg !181
  store i8* %10, i8** %8, align 8, !dbg !180
  br label %11, !dbg !182

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !183
  %13 = add i64 %12, -1, !dbg !183
  store i64 %13, i64* %6, align 8, !dbg !183
  %14 = icmp ugt i64 %12, 0, !dbg !184
  br i1 %14, label %15, label %21, !dbg !182

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !185
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !185
  store i8* %17, i8** %8, align 8, !dbg !185
  %18 = load i8, i8* %16, align 1, !dbg !186
  %19 = load i8*, i8** %7, align 8, !dbg !187
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !187
  store i8* %20, i8** %7, align 8, !dbg !187
  store i8 %18, i8* %19, align 1, !dbg !188
  br label %11, !dbg !182, !llvm.loop !189

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !191
  ret i8* %22, !dbg !192
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/141_xmlregexp.c_5990_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e3ceb53e133ebcb7036f55c3bcf2d0c3")
!2 = !{!3, !11, !8, !13}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegAtom", file: !1, line: 25, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 23, size: 64, elements: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valuep", scope: !5, file: !1, line: 24, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !10)
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !15, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"Ubuntu clang version 14.0.6"}
!24 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 13, type: !25, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !27}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{}
!31 = !DILocalVariable(name: "size", arg: 1, scope: !24, file: !1, line: 13, type: !27)
!32 = !DILocation(line: 13, column: 30, scope: !24)
!33 = !DILocation(line: 14, column: 19, scope: !24)
!34 = !DILocation(line: 14, column: 12, scope: !24)
!35 = !DILocation(line: 14, column: 5, scope: !24)
!36 = distinct !DISubprogram(name: "xmlRegFreeAtom", scope: !1, file: !1, line: 18, type: !37, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !13}
!39 = !DILocalVariable(name: "atom", arg: 1, scope: !36, file: !1, line: 18, type: !13)
!40 = !DILocation(line: 18, column: 27, scope: !36)
!41 = !DILocation(line: 20, column: 1, scope: !36)
!42 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 28, type: !43, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!43 = !DISubroutineType(types: !44)
!44 = !{!3, !8, !8}
!45 = !DILocalVariable(name: "token", arg: 1, scope: !42, file: !1, line: 28, type: !8)
!46 = !DILocation(line: 28, column: 38, scope: !42)
!47 = !DILocalVariable(name: "token2", arg: 2, scope: !42, file: !1, line: 28, type: !8)
!48 = !DILocation(line: 28, column: 54, scope: !42)
!49 = !DILocalVariable(name: "lenn", scope: !42, file: !1, line: 29, type: !27)
!50 = !DILocation(line: 29, column: 12, scope: !42)
!51 = !DILocalVariable(name: "lenp", scope: !42, file: !1, line: 29, type: !27)
!52 = !DILocation(line: 29, column: 18, scope: !42)
!53 = !DILocalVariable(name: "str", scope: !42, file: !1, line: 30, type: !8)
!54 = !DILocation(line: 30, column: 14, scope: !42)
!55 = !DILocalVariable(name: "atom", scope: !42, file: !1, line: 31, type: !3)
!56 = !DILocation(line: 31, column: 17, scope: !42)
!57 = !DILocation(line: 34, column: 25, scope: !42)
!58 = !DILocation(line: 34, column: 12, scope: !42)
!59 = !DILocation(line: 34, column: 10, scope: !42)
!60 = !DILocation(line: 35, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !42, file: !1, line: 35, column: 9)
!62 = !DILocation(line: 35, column: 9, scope: !42)
!63 = !DILocation(line: 35, column: 16, scope: !61)
!64 = !DILocation(line: 38, column: 26, scope: !42)
!65 = !DILocation(line: 38, column: 12, scope: !42)
!66 = !DILocation(line: 38, column: 10, scope: !42)
!67 = !DILocation(line: 39, column: 26, scope: !42)
!68 = !DILocation(line: 39, column: 12, scope: !42)
!69 = !DILocation(line: 39, column: 10, scope: !42)
!70 = !DILocation(line: 42, column: 37, scope: !42)
!71 = !DILocation(line: 42, column: 44, scope: !42)
!72 = !DILocation(line: 42, column: 42, scope: !42)
!73 = !DILocation(line: 42, column: 49, scope: !42)
!74 = !DILocation(line: 42, column: 21, scope: !42)
!75 = !DILocation(line: 42, column: 9, scope: !42)
!76 = !DILocation(line: 43, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !42, file: !1, line: 43, column: 9)
!78 = !DILocation(line: 43, column: 13, scope: !77)
!79 = !DILocation(line: 43, column: 9, scope: !42)
!80 = !DILocation(line: 44, column: 24, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 43, column: 22)
!82 = !DILocation(line: 44, column: 9, scope: !81)
!83 = !DILocation(line: 45, column: 14, scope: !81)
!84 = !DILocation(line: 45, column: 9, scope: !81)
!85 = !DILocation(line: 46, column: 9, scope: !81)
!86 = !DILocation(line: 50, column: 13, scope: !42)
!87 = !DILocation(line: 50, column: 21, scope: !42)
!88 = !DILocation(line: 50, column: 28, scope: !42)
!89 = !DILocation(line: 50, column: 5, scope: !42)
!90 = !DILocation(line: 53, column: 5, scope: !42)
!91 = !DILocation(line: 56, column: 5, scope: !42)
!92 = !DILocation(line: 59, column: 5, scope: !42)
!93 = !DILocation(line: 59, column: 9, scope: !42)
!94 = !DILocation(line: 59, column: 15, scope: !42)
!95 = !DILocation(line: 60, column: 13, scope: !42)
!96 = !DILocation(line: 60, column: 17, scope: !42)
!97 = !DILocation(line: 60, column: 22, scope: !42)
!98 = !DILocation(line: 60, column: 28, scope: !42)
!99 = !DILocation(line: 60, column: 36, scope: !42)
!100 = !DILocation(line: 60, column: 5, scope: !42)
!101 = !DILocation(line: 61, column: 5, scope: !42)
!102 = !DILocation(line: 61, column: 9, scope: !42)
!103 = !DILocation(line: 61, column: 16, scope: !42)
!104 = !DILocation(line: 61, column: 14, scope: !42)
!105 = !DILocation(line: 61, column: 21, scope: !42)
!106 = !DILocation(line: 61, column: 26, scope: !42)
!107 = !DILocation(line: 63, column: 20, scope: !42)
!108 = !DILocation(line: 63, column: 5, scope: !42)
!109 = !DILocation(line: 63, column: 11, scope: !42)
!110 = !DILocation(line: 63, column: 18, scope: !42)
!111 = !DILocation(line: 64, column: 12, scope: !42)
!112 = !DILocation(line: 64, column: 5, scope: !42)
!113 = !DILocation(line: 65, column: 1, scope: !42)
!114 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !115, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !30)
!115 = !DISubroutineType(types: !116)
!116 = !{!117}
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !DILocalVariable(name: "token", scope: !114, file: !1, line: 68, type: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 256)
!122 = !DILocation(line: 68, column: 13, scope: !114)
!123 = !DILocalVariable(name: "token2", scope: !114, file: !1, line: 69, type: !119)
!124 = !DILocation(line: 69, column: 13, scope: !114)
!125 = !DILocalVariable(name: "result", scope: !114, file: !1, line: 70, type: !3)
!126 = !DILocation(line: 70, column: 17, scope: !114)
!127 = !DILocation(line: 73, column: 24, scope: !114)
!128 = !DILocation(line: 73, column: 5, scope: !114)
!129 = !DILocation(line: 74, column: 24, scope: !114)
!130 = !DILocation(line: 74, column: 5, scope: !114)
!131 = !DILocation(line: 77, column: 5, scope: !114)
!132 = !DILocation(line: 77, column: 16, scope: !114)
!133 = !DILocation(line: 78, column: 5, scope: !114)
!134 = !DILocation(line: 78, column: 17, scope: !114)
!135 = !DILocation(line: 81, column: 31, scope: !114)
!136 = !DILocation(line: 81, column: 17, scope: !114)
!137 = !DILocation(line: 81, column: 38, scope: !114)
!138 = !DILocation(line: 81, column: 5, scope: !114)
!139 = !DILocation(line: 82, column: 31, scope: !114)
!140 = !DILocation(line: 82, column: 17, scope: !114)
!141 = !DILocation(line: 82, column: 39, scope: !114)
!142 = !DILocation(line: 82, column: 5, scope: !114)
!143 = !DILocation(line: 85, column: 30, scope: !114)
!144 = !DILocation(line: 85, column: 37, scope: !114)
!145 = !DILocation(line: 85, column: 14, scope: !114)
!146 = !DILocation(line: 85, column: 12, scope: !114)
!147 = !DILocation(line: 88, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !114, file: !1, line: 88, column: 9)
!149 = !DILocation(line: 88, column: 9, scope: !114)
!150 = !DILocation(line: 89, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !1, line: 89, column: 13)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 88, column: 17)
!153 = !DILocation(line: 89, column: 21, scope: !151)
!154 = !DILocation(line: 89, column: 13, scope: !152)
!155 = !DILocation(line: 89, column: 34, scope: !151)
!156 = !DILocation(line: 89, column: 42, scope: !151)
!157 = !DILocation(line: 89, column: 29, scope: !151)
!158 = !DILocation(line: 90, column: 14, scope: !152)
!159 = !DILocation(line: 90, column: 9, scope: !152)
!160 = !DILocation(line: 91, column: 5, scope: !152)
!161 = !DILocation(line: 93, column: 5, scope: !114)
!162 = distinct !DISubprogram(name: "memcpy", scope: !163, file: !163, line: 12, type: !164, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !30)
!163 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!164 = !DISubroutineType(types: !165)
!165 = !{!13, !13, !166, !27}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !DILocalVariable(name: "destaddr", arg: 1, scope: !162, file: !163, line: 12, type: !13)
!169 = !DILocation(line: 12, column: 20, scope: !162)
!170 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !162, file: !163, line: 12, type: !166)
!171 = !DILocation(line: 12, column: 42, scope: !162)
!172 = !DILocalVariable(name: "len", arg: 3, scope: !162, file: !163, line: 12, type: !27)
!173 = !DILocation(line: 12, column: 58, scope: !162)
!174 = !DILocalVariable(name: "dest", scope: !162, file: !163, line: 13, type: !11)
!175 = !DILocation(line: 13, column: 9, scope: !162)
!176 = !DILocation(line: 13, column: 16, scope: !162)
!177 = !DILocalVariable(name: "src", scope: !162, file: !163, line: 14, type: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!180 = !DILocation(line: 14, column: 15, scope: !162)
!181 = !DILocation(line: 14, column: 21, scope: !162)
!182 = !DILocation(line: 16, column: 3, scope: !162)
!183 = !DILocation(line: 16, column: 13, scope: !162)
!184 = !DILocation(line: 16, column: 16, scope: !162)
!185 = !DILocation(line: 17, column: 19, scope: !162)
!186 = !DILocation(line: 17, column: 15, scope: !162)
!187 = !DILocation(line: 17, column: 10, scope: !162)
!188 = !DILocation(line: 17, column: 13, scope: !162)
!189 = distinct !{!189, !182, !185, !190}
!190 = !{!"llvm.loop.mustprogress"}
!191 = !DILocation(line: 18, column: 10, scope: !162)
!192 = !DILocation(line: 18, column: 3, scope: !162)
