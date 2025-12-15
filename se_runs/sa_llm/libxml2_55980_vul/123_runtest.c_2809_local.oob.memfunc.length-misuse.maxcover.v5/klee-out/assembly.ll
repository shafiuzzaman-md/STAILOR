; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/123_runtest.c_2809_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/123_runtest.c_2809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@expression = dso_local global [4500 x i8] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@xpathOutput = dso_local global %struct._IO_FILE* null, align 8, !dbg !7
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"(len >= 0 && len + 1 < 4500) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/123_runtest.c_2809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@xmlGenericErrorContext = dso_local global i8* null, align 8, !dbg !71

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1, ...) #0 !dbg !84 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !90, metadata !DIExpression()), !dbg !91
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !95 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !98, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i8** %3, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %4, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata i32* %5, metadata !107, metadata !DIExpression()), !dbg !108
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !109
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)), !dbg !110
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !111
  %8 = load i8, i8* %7, align 1, !dbg !111
  %9 = sext i8 %8 to i32, !dbg !111
  %10 = icmp eq i32 %9, 0, !dbg !112
  %11 = zext i1 %10 to i32, !dbg !112
  %12 = sext i32 %11 to i64, !dbg !111
  call void @klee_assume(i64 noundef %12), !dbg !113
  call void @klee_make_symbolic(i8* noundef getelementptr inbounds ([4500 x i8], [4500 x i8]* @expression, i64 0, i64 0), i64 noundef 4500, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !114
  %13 = call noalias i8* @malloc(i64 noundef 100) #6, !dbg !115
  store i8* %13, i8** %3, align 8, !dbg !116
  %14 = load i8*, i8** %3, align 8, !dbg !117
  %15 = icmp eq i8* %14, null, !dbg !119
  br i1 %15, label %16, label %17, !dbg !120

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !121
  br label %101, !dbg !121

17:                                               ; preds = %0
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !122
  store %struct._IO_FILE* %18, %struct._IO_FILE** @xpathOutput, align 8, !dbg !123
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @xpathOutput, align 8, !dbg !124
  %20 = icmp eq %struct._IO_FILE* %19, null, !dbg !126
  br i1 %20, label %21, label %22, !dbg !127

21:                                               ; preds = %17
  store i32 0, i32* %1, align 4, !dbg !128
  br label %101, !dbg !128

22:                                               ; preds = %17
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !129
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)), !dbg !130
  store %struct._IO_FILE* %24, %struct._IO_FILE** %4, align 8, !dbg !131
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !132
  %26 = icmp eq %struct._IO_FILE* %25, null, !dbg !134
  br i1 %26, label %27, label %31, !dbg !135

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8, !dbg !136
  call void @free(i8* noundef %28) #6, !dbg !138
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @xpathOutput, align 8, !dbg !139
  %30 = call i32 @fclose(%struct._IO_FILE* noundef %29), !dbg !140
  store i32 0, i32* %1, align 4, !dbg !141
  br label %101, !dbg !141

31:                                               ; preds = %22
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !142
  %33 = call i8* @fgets(i8* noundef getelementptr inbounds ([4500 x i8], [4500 x i8]* @expression, i64 0, i64 0), i32 noundef 4500, %struct._IO_FILE* noundef %32), !dbg !143
  %34 = icmp ne i8* %33, null, !dbg !144
  %35 = zext i1 %34 to i32, !dbg !144
  %36 = sext i32 %35 to i64, !dbg !143
  call void @klee_assume(i64 noundef %36), !dbg !145
  %37 = call i64 @strlen(i8* noundef getelementptr inbounds ([4500 x i8], [4500 x i8]* @expression, i64 0, i64 0)) #7, !dbg !146
  %38 = trunc i64 %37 to i32, !dbg !146
  store i32 %38, i32* %5, align 4, !dbg !147
  %39 = load i32, i32* %5, align 4, !dbg !148
  %40 = add nsw i32 %39, -1, !dbg !148
  store i32 %40, i32* %5, align 4, !dbg !148
  br label %41, !dbg !149

41:                                               ; preds = %76, %31
  %42 = load i32, i32* %5, align 4, !dbg !150
  %43 = icmp sge i32 %42, 0, !dbg !151
  br i1 %43, label %44, label %74, !dbg !152

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4, !dbg !153
  %46 = sext i32 %45 to i64, !dbg !154
  %47 = getelementptr inbounds [4500 x i8], [4500 x i8]* @expression, i64 0, i64 %46, !dbg !154
  %48 = load i8, i8* %47, align 1, !dbg !154
  %49 = sext i8 %48 to i32, !dbg !154
  %50 = icmp eq i32 %49, 10, !dbg !155
  br i1 %50, label %72, label %51, !dbg !156

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4, !dbg !157
  %53 = sext i32 %52 to i64, !dbg !158
  %54 = getelementptr inbounds [4500 x i8], [4500 x i8]* @expression, i64 0, i64 %53, !dbg !158
  %55 = load i8, i8* %54, align 1, !dbg !158
  %56 = sext i8 %55 to i32, !dbg !158
  %57 = icmp eq i32 %56, 9, !dbg !159
  br i1 %57, label %72, label %58, !dbg !160

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4, !dbg !161
  %60 = sext i32 %59 to i64, !dbg !162
  %61 = getelementptr inbounds [4500 x i8], [4500 x i8]* @expression, i64 0, i64 %60, !dbg !162
  %62 = load i8, i8* %61, align 1, !dbg !162
  %63 = sext i8 %62 to i32, !dbg !162
  %64 = icmp eq i32 %63, 13, !dbg !163
  br i1 %64, label %72, label %65, !dbg !164

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4, !dbg !165
  %67 = sext i32 %66 to i64, !dbg !166
  %68 = getelementptr inbounds [4500 x i8], [4500 x i8]* @expression, i64 0, i64 %67, !dbg !166
  %69 = load i8, i8* %68, align 1, !dbg !166
  %70 = sext i8 %69 to i32, !dbg !166
  %71 = icmp eq i32 %70, 32, !dbg !167
  br label %72, !dbg !164

72:                                               ; preds = %65, %58, %51, %44
  %73 = phi i1 [ true, %58 ], [ true, %51 ], [ true, %44 ], [ %71, %65 ]
  br label %74

74:                                               ; preds = %72, %41
  %75 = phi i1 [ false, %41 ], [ %73, %72 ], !dbg !168
  br i1 %75, label %76, label %79, !dbg !149

76:                                               ; preds = %74
  %77 = load i32, i32* %5, align 4, !dbg !169
  %78 = add nsw i32 %77, -1, !dbg !169
  store i32 %78, i32* %5, align 4, !dbg !169
  br label %41, !dbg !149, !llvm.loop !170

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4, !dbg !172
  %81 = icmp sge i32 %80, 0, !dbg !172
  br i1 %81, label %82, label %88, !dbg !172

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4, !dbg !172
  %84 = add nsw i32 %83, 1, !dbg !172
  %85 = icmp slt i32 %84, 4500, !dbg !172
  br i1 %85, label %86, label %88, !dbg !172

86:                                               ; preds = %82
  br i1 true, label %87, label %88, !dbg !172

87:                                               ; preds = %86
  br label %90, !dbg !172

88:                                               ; preds = %86, %82, %79
  %89 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !172
  br label %90, !dbg !172

90:                                               ; preds = %88, %87
  %91 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !173
  %92 = load i32, i32* %5, align 4, !dbg !174
  %93 = add nsw i32 %92, 1, !dbg !175
  %94 = sext i32 %93 to i64, !dbg !176
  %95 = getelementptr inbounds [4500 x i8], [4500 x i8]* @expression, i64 0, i64 %94, !dbg !176
  store i8 0, i8* %95, align 1, !dbg !177
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8, !dbg !178
  %97 = call i32 @fclose(%struct._IO_FILE* noundef %96), !dbg !179
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @xpathOutput, align 8, !dbg !180
  %99 = call i32 @fclose(%struct._IO_FILE* noundef %98), !dbg !181
  %100 = load i8*, i8** %3, align 8, !dbg !182
  call void @free(i8* noundef %100) #6, !dbg !183
  store i32 0, i32* %1, align 4, !dbg !184
  br label %101, !dbg !184

101:                                              ; preds = %90, %27, %21, %16
  %102 = load i32, i32* %1, align 4, !dbg !185
  ret i32 %102, !dbg !185
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

declare i32 @fclose(%struct._IO_FILE* noundef) #2

declare i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "expression", scope: !2, file: !3, line: 12, type: !73, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/123_runtest.c_2809_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "be2532dfaae7c76b24f6aaa7889ad9d1")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !71}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "xpathOutput", scope: !2, file: !3, line: 13, type: !9, isLocal: false, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !11, line: 7, baseType: !12)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !13, line: 49, size: 1728, elements: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "7a6d4a00a37ee6b9a40cd04bd01f5d00")
!14 = !{!15, !17, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !33, !35, !36, !37, !41, !43, !45, !49, !52, !54, !57, !60, !61, !62, !66, !67}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !12, file: !13, line: 51, baseType: !16, size: 32)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !12, file: !13, line: 54, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !12, file: !13, line: 55, baseType: !18, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !12, file: !13, line: 56, baseType: !18, size: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !12, file: !13, line: 57, baseType: !18, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !12, file: !13, line: 58, baseType: !18, size: 64, offset: 320)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !12, file: !13, line: 59, baseType: !18, size: 64, offset: 384)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !12, file: !13, line: 60, baseType: !18, size: 64, offset: 448)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !12, file: !13, line: 61, baseType: !18, size: 64, offset: 512)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !12, file: !13, line: 64, baseType: !18, size: 64, offset: 576)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !12, file: !13, line: 65, baseType: !18, size: 64, offset: 640)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !12, file: !13, line: 66, baseType: !18, size: 64, offset: 704)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !12, file: !13, line: 68, baseType: !31, size: 64, offset: 768)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !13, line: 36, flags: DIFlagFwdDecl)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !12, file: !13, line: 70, baseType: !34, size: 64, offset: 832)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !12, file: !13, line: 72, baseType: !16, size: 32, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !12, file: !13, line: 73, baseType: !16, size: 32, offset: 928)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !12, file: !13, line: 74, baseType: !38, size: 64, offset: 960)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 152, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!40 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !12, file: !13, line: 77, baseType: !42, size: 16, offset: 1024)
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !12, file: !13, line: 78, baseType: !44, size: 8, offset: 1040)
!44 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !12, file: !13, line: 79, baseType: !46, size: 8, offset: 1048)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 1)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !12, file: !13, line: 81, baseType: !50, size: 64, offset: 1088)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !13, line: 43, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !12, file: !13, line: 89, baseType: !53, size: 64, offset: 1152)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 153, baseType: !40)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !12, file: !13, line: 91, baseType: !55, size: 64, offset: 1216)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !13, line: 37, flags: DIFlagFwdDecl)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !12, file: !13, line: 92, baseType: !58, size: 64, offset: 1280)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !13, line: 38, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !12, file: !13, line: 93, baseType: !34, size: 64, offset: 1344)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !12, file: !13, line: 94, baseType: !5, size: 64, offset: 1408)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !12, file: !13, line: 95, baseType: !63, size: 64, offset: 1472)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !12, file: !13, line: 96, baseType: !16, size: 32, offset: 1536)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !12, file: !13, line: 98, baseType: !68, size: 160, offset: 1568)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 20)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "xmlGenericErrorContext", scope: !2, file: !3, line: 14, type: !5, isLocal: false, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 36000, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 4500)
!76 = !{i32 7, !"Dwarf Version", i32 5}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{i32 7, !"PIC Level", i32 2}
!80 = !{i32 7, !"PIE Level", i32 2}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"Ubuntu clang version 14.0.6"}
!84 = distinct !DISubprogram(name: "xmlGenericError", scope: !3, file: !3, line: 16, type: !85, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !89)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !5, !87, null}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!89 = !{}
!90 = !DILocalVariable(name: "ctx", arg: 1, scope: !84, file: !3, line: 16, type: !5)
!91 = !DILocation(line: 16, column: 28, scope: !84)
!92 = !DILocalVariable(name: "msg", arg: 2, scope: !84, file: !3, line: 16, type: !87)
!93 = !DILocation(line: 16, column: 45, scope: !84)
!94 = !DILocation(line: 17, column: 1, scope: !84)
!95 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 19, type: !96, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !89)
!96 = !DISubroutineType(types: !97)
!97 = !{!16}
!98 = !DILocalVariable(name: "filename", scope: !95, file: !3, line: 20, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 256)
!102 = !DILocation(line: 20, column: 10, scope: !95)
!103 = !DILocalVariable(name: "temp", scope: !95, file: !3, line: 21, type: !18)
!104 = !DILocation(line: 21, column: 11, scope: !95)
!105 = !DILocalVariable(name: "input", scope: !95, file: !3, line: 22, type: !9)
!106 = !DILocation(line: 22, column: 11, scope: !95)
!107 = !DILocalVariable(name: "len", scope: !95, file: !3, line: 23, type: !16)
!108 = !DILocation(line: 23, column: 9, scope: !95)
!109 = !DILocation(line: 25, column: 24, scope: !95)
!110 = !DILocation(line: 25, column: 5, scope: !95)
!111 = !DILocation(line: 26, column: 17, scope: !95)
!112 = !DILocation(line: 26, column: 46, scope: !95)
!113 = !DILocation(line: 26, column: 5, scope: !95)
!114 = !DILocation(line: 28, column: 5, scope: !95)
!115 = !DILocation(line: 30, column: 12, scope: !95)
!116 = !DILocation(line: 30, column: 10, scope: !95)
!117 = !DILocation(line: 31, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !95, file: !3, line: 31, column: 9)
!119 = !DILocation(line: 31, column: 14, scope: !118)
!120 = !DILocation(line: 31, column: 9, scope: !95)
!121 = !DILocation(line: 31, column: 23, scope: !118)
!122 = !DILocation(line: 33, column: 19, scope: !95)
!123 = !DILocation(line: 33, column: 17, scope: !95)
!124 = !DILocation(line: 34, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !95, file: !3, line: 34, column: 9)
!126 = !DILocation(line: 34, column: 21, scope: !125)
!127 = !DILocation(line: 34, column: 9, scope: !95)
!128 = !DILocation(line: 34, column: 30, scope: !125)
!129 = !DILocation(line: 36, column: 19, scope: !95)
!130 = !DILocation(line: 36, column: 13, scope: !95)
!131 = !DILocation(line: 36, column: 11, scope: !95)
!132 = !DILocation(line: 37, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !95, file: !3, line: 37, column: 9)
!134 = !DILocation(line: 37, column: 15, scope: !133)
!135 = !DILocation(line: 37, column: 9, scope: !95)
!136 = !DILocation(line: 38, column: 14, scope: !137)
!137 = distinct !DILexicalBlock(scope: !133, file: !3, line: 37, column: 24)
!138 = !DILocation(line: 38, column: 9, scope: !137)
!139 = !DILocation(line: 39, column: 16, scope: !137)
!140 = !DILocation(line: 39, column: 9, scope: !137)
!141 = !DILocation(line: 40, column: 9, scope: !137)
!142 = !DILocation(line: 43, column: 48, scope: !95)
!143 = !DILocation(line: 43, column: 17, scope: !95)
!144 = !DILocation(line: 43, column: 55, scope: !95)
!145 = !DILocation(line: 43, column: 5, scope: !95)
!146 = !DILocation(line: 45, column: 11, scope: !95)
!147 = !DILocation(line: 45, column: 9, scope: !95)
!148 = !DILocation(line: 46, column: 8, scope: !95)
!149 = !DILocation(line: 48, column: 5, scope: !95)
!150 = !DILocation(line: 48, column: 13, scope: !95)
!151 = !DILocation(line: 48, column: 17, scope: !95)
!152 = !DILocation(line: 48, column: 23, scope: !95)
!153 = !DILocation(line: 49, column: 25, scope: !95)
!154 = !DILocation(line: 49, column: 14, scope: !95)
!155 = !DILocation(line: 49, column: 30, scope: !95)
!156 = !DILocation(line: 49, column: 39, scope: !95)
!157 = !DILocation(line: 49, column: 54, scope: !95)
!158 = !DILocation(line: 49, column: 43, scope: !95)
!159 = !DILocation(line: 49, column: 59, scope: !95)
!160 = !DILocation(line: 49, column: 68, scope: !95)
!161 = !DILocation(line: 50, column: 25, scope: !95)
!162 = !DILocation(line: 50, column: 14, scope: !95)
!163 = !DILocation(line: 50, column: 30, scope: !95)
!164 = !DILocation(line: 50, column: 39, scope: !95)
!165 = !DILocation(line: 50, column: 54, scope: !95)
!166 = !DILocation(line: 50, column: 43, scope: !95)
!167 = !DILocation(line: 50, column: 59, scope: !95)
!168 = !DILocation(line: 0, scope: !95)
!169 = !DILocation(line: 50, column: 72, scope: !95)
!170 = distinct !{!170, !149, !169, !171}
!171 = !{!"llvm.loop.mustprogress"}
!172 = !DILocation(line: 52, column: 5, scope: !95)
!173 = !DILocation(line: 53, column: 5, scope: !95)
!174 = !DILocation(line: 55, column: 16, scope: !95)
!175 = !DILocation(line: 55, column: 20, scope: !95)
!176 = !DILocation(line: 55, column: 5, scope: !95)
!177 = !DILocation(line: 55, column: 25, scope: !95)
!178 = !DILocation(line: 57, column: 12, scope: !95)
!179 = !DILocation(line: 57, column: 5, scope: !95)
!180 = !DILocation(line: 58, column: 12, scope: !95)
!181 = !DILocation(line: 58, column: 5, scope: !95)
!182 = !DILocation(line: 59, column: 10, scope: !95)
!183 = !DILocation(line: 59, column: 5, scope: !95)
!184 = !DILocation(line: 60, column: 5, scope: !95)
!185 = !DILocation(line: 61, column: 1, scope: !95)
