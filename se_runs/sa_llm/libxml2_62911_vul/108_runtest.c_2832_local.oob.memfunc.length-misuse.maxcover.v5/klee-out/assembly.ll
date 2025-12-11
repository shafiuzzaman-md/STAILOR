; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/108_runtest.c_2832_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/108_runtest.c_2832_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@__const.main.filename = private unnamed_addr constant [14 x i8] c"test_file.txt\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"(len >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/108_runtest.c_2832_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca [4500 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [14 x i8], align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4500 x i8]* %2, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !27, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata [14 x i8]* %5, metadata !89, metadata !DIExpression()), !dbg !93
  %6 = bitcast [14 x i8]* %5 to i8*, !dbg !93
  %7 = call i8* @memcpy(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__const.main.filename, i32 0, i32 0), i64 14), !dbg !93
  %8 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !94
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4500, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !95
  %9 = getelementptr inbounds [14 x i8], [14 x i8]* %5, i64 0, i64 0, !dbg !96
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !97
  store %struct._IO_FILE* %10, %struct._IO_FILE** %4, align 8, !dbg !98
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !99
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !101
  br i1 %12, label %13, label %14, !dbg !102

13:                                               ; preds = %0
  call void @free(i8* noundef null) #8, !dbg !103
  store i32 -1, i32* %1, align 4, !dbg !105
  br label %80, !dbg !105

14:                                               ; preds = %0
  br label %15, !dbg !106

15:                                               ; preds = %76, %14
  %16 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !107
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !108
  %18 = call i8* @fgets(i8* noundef %16, i32 noundef 4500, %struct._IO_FILE* noundef %17), !dbg !109
  %19 = icmp ne i8* %18, null, !dbg !110
  br i1 %19, label %20, label %77, !dbg !106

20:                                               ; preds = %15
  %21 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 0, !dbg !111
  %22 = call i64 @strlen(i8* noundef %21) #9, !dbg !113
  %23 = trunc i64 %22 to i32, !dbg !113
  store i32 %23, i32* %3, align 4, !dbg !114
  %24 = load i32, i32* %3, align 4, !dbg !115
  %25 = add nsw i32 %24, -1, !dbg !115
  store i32 %25, i32* %3, align 4, !dbg !115
  br label %26, !dbg !116

26:                                               ; preds = %75, %20
  %27 = load i32, i32* %3, align 4, !dbg !117
  %28 = icmp sge i32 %27, 0, !dbg !118
  br i1 %28, label %29, label %59, !dbg !119

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4, !dbg !120
  %31 = sext i32 %30 to i64, !dbg !121
  %32 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %31, !dbg !121
  %33 = load i8, i8* %32, align 1, !dbg !121
  %34 = sext i8 %33 to i32, !dbg !121
  %35 = icmp eq i32 %34, 10, !dbg !122
  br i1 %35, label %57, label %36, !dbg !123

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4, !dbg !124
  %38 = sext i32 %37 to i64, !dbg !125
  %39 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %38, !dbg !125
  %40 = load i8, i8* %39, align 1, !dbg !125
  %41 = sext i8 %40 to i32, !dbg !125
  %42 = icmp eq i32 %41, 9, !dbg !126
  br i1 %42, label %57, label %43, !dbg !127

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4, !dbg !128
  %45 = sext i32 %44 to i64, !dbg !129
  %46 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %45, !dbg !129
  %47 = load i8, i8* %46, align 1, !dbg !129
  %48 = sext i8 %47 to i32, !dbg !129
  %49 = icmp eq i32 %48, 13, !dbg !130
  br i1 %49, label %57, label %50, !dbg !131

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4, !dbg !132
  %52 = sext i32 %51 to i64, !dbg !133
  %53 = getelementptr inbounds [4500 x i8], [4500 x i8]* %2, i64 0, i64 %52, !dbg !133
  %54 = load i8, i8* %53, align 1, !dbg !133
  %55 = sext i8 %54 to i32, !dbg !133
  %56 = icmp eq i32 %55, 32, !dbg !134
  br label %57, !dbg !131

57:                                               ; preds = %50, %43, %36, %29
  %58 = phi i1 [ true, %43 ], [ true, %36 ], [ true, %29 ], [ %56, %50 ]
  br label %59

59:                                               ; preds = %57, %26
  %60 = phi i1 [ false, %26 ], [ %58, %57 ], !dbg !135
  br i1 %60, label %61, label %76, !dbg !116

61:                                               ; preds = %59
  %62 = load i32, i32* %3, align 4, !dbg !136
  %63 = add nsw i32 %62, -1, !dbg !136
  store i32 %63, i32* %3, align 4, !dbg !136
  %64 = load i32, i32* %3, align 4, !dbg !138
  %65 = icmp slt i32 %64, 0, !dbg !140
  br i1 %65, label %66, label %75, !dbg !141

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4, !dbg !142
  %68 = icmp sge i32 %67, 0, !dbg !142
  br i1 %68, label %69, label %71, !dbg !142

69:                                               ; preds = %66
  br i1 true, label %70, label %71, !dbg !142

70:                                               ; preds = %69
  br label %73, !dbg !142

71:                                               ; preds = %69, %66
  %72 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !142
  br label %73, !dbg !142

73:                                               ; preds = %71, %70
  %74 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !144
  br label %75, !dbg !145

75:                                               ; preds = %73, %61
  br label %26, !dbg !116, !llvm.loop !146

76:                                               ; preds = %59
  br label %15, !dbg !106, !llvm.loop !149

77:                                               ; preds = %15
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !151
  %79 = call i32 @fclose(%struct._IO_FILE* noundef %78), !dbg !152
  store i32 0, i32* %1, align 4, !dbg !153
  br label %80, !dbg !153

80:                                               ; preds = %77, %13
  %81 = load i32, i32* %1, align 4, !dbg !154
  ret i32 %81, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

declare i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !155 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !161, metadata !DIExpression()), !dbg !162
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !163, metadata !DIExpression()), !dbg !164
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8** %7, metadata !167, metadata !DIExpression()), !dbg !168
  %9 = load i8*, i8** %4, align 8, !dbg !169
  store i8* %9, i8** %7, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata i8** %8, metadata !170, metadata !DIExpression()), !dbg !173
  %10 = load i8*, i8** %5, align 8, !dbg !174
  store i8* %10, i8** %8, align 8, !dbg !173
  br label %11, !dbg !175

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !176
  %13 = add i64 %12, -1, !dbg !176
  store i64 %13, i64* %6, align 8, !dbg !176
  %14 = icmp ugt i64 %12, 0, !dbg !177
  br i1 %14, label %15, label %21, !dbg !175

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !178
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !178
  store i8* %17, i8** %8, align 8, !dbg !178
  %18 = load i8, i8* %16, align 1, !dbg !179
  %19 = load i8*, i8** %7, align 8, !dbg !180
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !180
  store i8* %20, i8** %7, align 8, !dbg !180
  store i8 %18, i8* %19, align 1, !dbg !181
  br label %11, !dbg !175, !llvm.loop !182

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !183
  ret i8* %22, !dbg !184
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/108_runtest.c_2832_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a042da1d553f0bb82a0aff20906d34b8")
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
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !15, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{}
!19 = !DILocalVariable(name: "expression", scope: !14, file: !1, line: 13, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 36000, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 4500)
!24 = !DILocation(line: 13, column: 10, scope: !14)
!25 = !DILocalVariable(name: "len", scope: !14, file: !1, line: 14, type: !17)
!26 = !DILocation(line: 14, column: 9, scope: !14)
!27 = !DILocalVariable(name: "input", scope: !14, file: !1, line: 15, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 7, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !32, line: 49, size: 1728, elements: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!33 = !{!34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !50, !52, !53, !54, !58, !60, !62, !66, !69, !71, !74, !77, !78, !79, !83, !84}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !31, file: !32, line: 51, baseType: !17, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !31, file: !32, line: 54, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !31, file: !32, line: 55, baseType: !36, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !31, file: !32, line: 56, baseType: !36, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !31, file: !32, line: 57, baseType: !36, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !31, file: !32, line: 58, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !31, file: !32, line: 59, baseType: !36, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !31, file: !32, line: 60, baseType: !36, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !31, file: !32, line: 61, baseType: !36, size: 64, offset: 512)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !31, file: !32, line: 64, baseType: !36, size: 64, offset: 576)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !31, file: !32, line: 65, baseType: !36, size: 64, offset: 640)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !31, file: !32, line: 66, baseType: !36, size: 64, offset: 704)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !31, file: !32, line: 68, baseType: !48, size: 64, offset: 768)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !32, line: 36, flags: DIFlagFwdDecl)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !31, file: !32, line: 70, baseType: !51, size: 64, offset: 832)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !31, file: !32, line: 72, baseType: !17, size: 32, offset: 896)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !31, file: !32, line: 73, baseType: !17, size: 32, offset: 928)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !31, file: !32, line: 74, baseType: !55, size: 64, offset: 960)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !56, line: 152, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!57 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !31, file: !32, line: 77, baseType: !59, size: 16, offset: 1024)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !31, file: !32, line: 78, baseType: !61, size: 8, offset: 1040)
!61 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !31, file: !32, line: 79, baseType: !63, size: 8, offset: 1048)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 1)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !31, file: !32, line: 81, baseType: !67, size: 64, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !32, line: 43, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !31, file: !32, line: 89, baseType: !70, size: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !56, line: 153, baseType: !57)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !31, file: !32, line: 91, baseType: !72, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !32, line: 37, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !31, file: !32, line: 92, baseType: !75, size: 64, offset: 1280)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !32, line: 38, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !31, file: !32, line: 93, baseType: !51, size: 64, offset: 1344)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !31, file: !32, line: 94, baseType: !3, size: 64, offset: 1408)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !31, file: !32, line: 95, baseType: !80, size: 64, offset: 1472)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !31, file: !32, line: 96, baseType: !17, size: 32, offset: 1536)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !31, file: !32, line: 98, baseType: !85, size: 160, offset: 1568)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 20)
!88 = !DILocation(line: 15, column: 11, scope: !14)
!89 = !DILocalVariable(name: "filename", scope: !14, file: !1, line: 16, type: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 112, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 14)
!93 = !DILocation(line: 16, column: 10, scope: !14)
!94 = !DILocation(line: 18, column: 24, scope: !14)
!95 = !DILocation(line: 18, column: 5, scope: !14)
!96 = !DILocation(line: 20, column: 19, scope: !14)
!97 = !DILocation(line: 20, column: 13, scope: !14)
!98 = !DILocation(line: 20, column: 11, scope: !14)
!99 = !DILocation(line: 21, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !14, file: !1, line: 21, column: 9)
!101 = !DILocation(line: 21, column: 15, scope: !100)
!102 = !DILocation(line: 21, column: 9, scope: !14)
!103 = !DILocation(line: 22, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 21, column: 24)
!105 = !DILocation(line: 23, column: 9, scope: !104)
!106 = !DILocation(line: 26, column: 5, scope: !14)
!107 = !DILocation(line: 26, column: 18, scope: !14)
!108 = !DILocation(line: 26, column: 43, scope: !14)
!109 = !DILocation(line: 26, column: 12, scope: !14)
!110 = !DILocation(line: 26, column: 50, scope: !14)
!111 = !DILocation(line: 27, column: 22, scope: !112)
!112 = distinct !DILexicalBlock(scope: !14, file: !1, line: 26, column: 59)
!113 = !DILocation(line: 27, column: 15, scope: !112)
!114 = !DILocation(line: 27, column: 13, scope: !112)
!115 = !DILocation(line: 28, column: 12, scope: !112)
!116 = !DILocation(line: 30, column: 9, scope: !112)
!117 = !DILocation(line: 30, column: 17, scope: !112)
!118 = !DILocation(line: 30, column: 21, scope: !112)
!119 = !DILocation(line: 30, column: 27, scope: !112)
!120 = !DILocation(line: 31, column: 29, scope: !112)
!121 = !DILocation(line: 31, column: 18, scope: !112)
!122 = !DILocation(line: 31, column: 34, scope: !112)
!123 = !DILocation(line: 31, column: 43, scope: !112)
!124 = !DILocation(line: 31, column: 58, scope: !112)
!125 = !DILocation(line: 31, column: 47, scope: !112)
!126 = !DILocation(line: 31, column: 63, scope: !112)
!127 = !DILocation(line: 31, column: 72, scope: !112)
!128 = !DILocation(line: 32, column: 29, scope: !112)
!129 = !DILocation(line: 32, column: 18, scope: !112)
!130 = !DILocation(line: 32, column: 34, scope: !112)
!131 = !DILocation(line: 32, column: 43, scope: !112)
!132 = !DILocation(line: 32, column: 58, scope: !112)
!133 = !DILocation(line: 32, column: 47, scope: !112)
!134 = !DILocation(line: 32, column: 63, scope: !112)
!135 = !DILocation(line: 0, scope: !112)
!136 = !DILocation(line: 33, column: 16, scope: !137)
!137 = distinct !DILexicalBlock(scope: !112, file: !1, line: 32, column: 73)
!138 = !DILocation(line: 35, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 35, column: 17)
!140 = !DILocation(line: 35, column: 21, scope: !139)
!141 = !DILocation(line: 35, column: 17, scope: !137)
!142 = !DILocation(line: 36, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 35, column: 26)
!144 = !DILocation(line: 37, column: 17, scope: !143)
!145 = !DILocation(line: 38, column: 13, scope: !143)
!146 = distinct !{!146, !116, !147, !148}
!147 = !DILocation(line: 39, column: 9, scope: !112)
!148 = !{!"llvm.loop.mustprogress"}
!149 = distinct !{!149, !106, !150, !148}
!150 = !DILocation(line: 40, column: 5, scope: !14)
!151 = !DILocation(line: 42, column: 12, scope: !14)
!152 = !DILocation(line: 42, column: 5, scope: !14)
!153 = !DILocation(line: 43, column: 5, scope: !14)
!154 = !DILocation(line: 44, column: 1, scope: !14)
!155 = distinct !DISubprogram(name: "memcpy", scope: !156, file: !156, line: 12, type: !157, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !18)
!156 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!157 = !DISubroutineType(types: !158)
!158 = !{!3, !3, !159, !80}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DILocalVariable(name: "destaddr", arg: 1, scope: !155, file: !156, line: 12, type: !3)
!162 = !DILocation(line: 12, column: 20, scope: !155)
!163 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !155, file: !156, line: 12, type: !159)
!164 = !DILocation(line: 12, column: 42, scope: !155)
!165 = !DILocalVariable(name: "len", arg: 3, scope: !155, file: !156, line: 12, type: !80)
!166 = !DILocation(line: 12, column: 58, scope: !155)
!167 = !DILocalVariable(name: "dest", scope: !155, file: !156, line: 13, type: !36)
!168 = !DILocation(line: 13, column: 9, scope: !155)
!169 = !DILocation(line: 13, column: 16, scope: !155)
!170 = !DILocalVariable(name: "src", scope: !155, file: !156, line: 14, type: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!173 = !DILocation(line: 14, column: 15, scope: !155)
!174 = !DILocation(line: 14, column: 21, scope: !155)
!175 = !DILocation(line: 16, column: 3, scope: !155)
!176 = !DILocation(line: 16, column: 13, scope: !155)
!177 = !DILocation(line: 16, column: 16, scope: !155)
!178 = !DILocation(line: 17, column: 19, scope: !155)
!179 = !DILocation(line: 17, column: 15, scope: !155)
!180 = !DILocation(line: 17, column: 10, scope: !155)
!181 = !DILocation(line: 17, column: 13, scope: !155)
!182 = distinct !{!182, !175, !178, !148}
!183 = !DILocation(line: 18, column: 10, scope: !155)
!184 = !DILocation(line: 18, column: 3, scope: !155)
