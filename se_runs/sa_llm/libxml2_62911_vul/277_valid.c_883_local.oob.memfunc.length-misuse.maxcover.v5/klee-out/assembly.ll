; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dtd\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"(ret >= 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"cur_type\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !30 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !37, metadata !DIExpression()), !dbg !38
  %3 = load i64, i64* %2, align 8, !dbg !39
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !40
  ret i8* %4, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !42 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !47, metadata !DIExpression()), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !50 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i8** %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %5, metadata !62, metadata !DIExpression()), !dbg !63
  %7 = bitcast i8** %2 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %8 = bitcast i8** %3 to i8*, !dbg !66
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !67
  %9 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !68
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !69
  %10 = bitcast i32* %5 to i8*, !dbg !70
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !71
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 31, !dbg !72
  store i8 0, i8* %11, align 1, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %6, metadata !74, metadata !DIExpression()), !dbg !75
  %12 = load i8*, i8** %2, align 8, !dbg !76
  %13 = load i8*, i8** %3, align 8, !dbg !77
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !78
  %15 = load i32, i32* %5, align 4, !dbg !79
  %16 = call i32 @xmlAddElementDecl(i8* noundef %12, i8* noundef %13, i8* noundef %14, i32 noundef %15), !dbg !80
  store i32 %16, i32* %6, align 4, !dbg !75
  %17 = load i32, i32* %6, align 4, !dbg !81
  %18 = icmp sge i32 %17, 0, !dbg !81
  br i1 %18, label %19, label %21, !dbg !81

19:                                               ; preds = %0
  br i1 true, label %20, label %21, !dbg !81

20:                                               ; preds = %19
  br label %23, !dbg !81

21:                                               ; preds = %19, %0
  %22 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !81
  br label %23, !dbg !81

23:                                               ; preds = %21, %20
  %24 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.6, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !82
  ret i32 0, !dbg !83
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlAddElementDecl(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !84 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlElementContent*, align 8
  %11 = alloca %struct._xmlElementContent*, align 8
  %12 = alloca %struct._xmlElementContent*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !87, metadata !DIExpression()), !dbg !88
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %10, metadata !95, metadata !DIExpression()), !dbg !96
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %10, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %11, metadata !97, metadata !DIExpression()), !dbg !98
  store %struct._xmlElementContent* null, %struct._xmlElementContent** %11, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %12, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %13, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %13, align 4, !dbg !102
  %14 = call i8* @xmlMalloc(i64 noundef 48), !dbg !103
  %15 = bitcast i8* %14 to %struct._xmlElementContent*, !dbg !104
  store %struct._xmlElementContent* %15, %struct._xmlElementContent** %10, align 8, !dbg !105
  %16 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !106
  %17 = icmp eq %struct._xmlElementContent* %16, null, !dbg !108
  br i1 %17, label %18, label %20, !dbg !109

18:                                               ; preds = %4
  %19 = load i32, i32* %13, align 4, !dbg !110
  store i32 %19, i32* %5, align 4, !dbg !112
  br label %82, !dbg !112

20:                                               ; preds = %4
  %21 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !113
  %22 = bitcast %struct._xmlElementContent* %21 to i8*, !dbg !114
  %23 = call i8* @memset(i8* %22, i32 0, i64 48), !dbg !114
  %24 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !115
  %25 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %24, i32 0, i32 0, !dbg !116
  %26 = bitcast i32* %25 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %26, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)), !dbg !118
  %27 = call i8* @xmlMalloc(i64 noundef 48), !dbg !119
  %28 = bitcast i8* %27 to %struct._xmlElementContent*, !dbg !120
  store %struct._xmlElementContent* %28, %struct._xmlElementContent** %11, align 8, !dbg !121
  %29 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !122
  %30 = icmp eq %struct._xmlElementContent* %29, null, !dbg !124
  br i1 %30, label %31, label %35, !dbg !125

31:                                               ; preds = %20
  %32 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !126
  %33 = bitcast %struct._xmlElementContent* %32 to i8*, !dbg !126
  call void @free(i8* noundef %33) #7, !dbg !128
  %34 = load i32, i32* %13, align 4, !dbg !129
  store i32 %34, i32* %5, align 4, !dbg !130
  br label %82, !dbg !130

35:                                               ; preds = %20
  %36 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !131
  %37 = bitcast %struct._xmlElementContent* %36 to i8*, !dbg !132
  %38 = call i8* @memset(i8* %37, i32 0, i64 48), !dbg !132
  %39 = call i8* @xmlMalloc(i64 noundef 48), !dbg !133
  %40 = bitcast i8* %39 to %struct._xmlElementContent*, !dbg !134
  store %struct._xmlElementContent* %40, %struct._xmlElementContent** %12, align 8, !dbg !135
  %41 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !136
  %42 = icmp eq %struct._xmlElementContent* %41, null, !dbg !138
  br i1 %42, label %43, label %49, !dbg !139

43:                                               ; preds = %35
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)), !dbg !140
  %44 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !142
  %45 = bitcast %struct._xmlElementContent* %44 to i8*, !dbg !142
  call void @free(i8* noundef %45) #7, !dbg !143
  %46 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !144
  %47 = bitcast %struct._xmlElementContent* %46 to i8*, !dbg !144
  call void @free(i8* noundef %47) #7, !dbg !145
  %48 = load i32, i32* %13, align 4, !dbg !146
  store i32 %48, i32* %5, align 4, !dbg !147
  br label %82, !dbg !147

49:                                               ; preds = %35
  %50 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !148
  %51 = bitcast %struct._xmlElementContent* %50 to i8*, !dbg !149
  %52 = load i32, i32* %13, align 4, !dbg !150
  %53 = icmp sge i32 %52, 0, !dbg !151
  %54 = zext i1 %53 to i64, !dbg !150
  %55 = select i1 %53, i32 1, i32 0, !dbg !150
  %56 = sext i32 %55 to i64, !dbg !152
  %57 = mul i64 48, %56, !dbg !153
  %58 = call i8* @memset(i8* %51, i32 0, i64 %57), !dbg !149
  %59 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !154
  %60 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %59, i32 0, i32 0, !dbg !155
  %61 = load i32, i32* %60, align 8, !dbg !155
  %62 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !156
  %63 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %62, i32 0, i32 0, !dbg !157
  store i32 %61, i32* %63, align 8, !dbg !158
  %64 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !159
  %65 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %64, i32 0, i32 1, !dbg !160
  %66 = load i32, i32* %65, align 4, !dbg !160
  %67 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !161
  %68 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %67, i32 0, i32 1, !dbg !162
  store i32 %66, i32* %68, align 4, !dbg !163
  %69 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !164
  %70 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !165
  %71 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %70, i32 0, i32 3, !dbg !166
  store %struct._xmlElementContent* %69, %struct._xmlElementContent** %71, align 8, !dbg !167
  %72 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !168
  %73 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !169
  %74 = getelementptr inbounds %struct._xmlElementContent, %struct._xmlElementContent* %73, i32 0, i32 4, !dbg !170
  store %struct._xmlElementContent* %72, %struct._xmlElementContent** %74, align 8, !dbg !171
  %75 = load %struct._xmlElementContent*, %struct._xmlElementContent** %10, align 8, !dbg !172
  %76 = bitcast %struct._xmlElementContent* %75 to i8*, !dbg !172
  call void @free(i8* noundef %76) #7, !dbg !173
  %77 = load %struct._xmlElementContent*, %struct._xmlElementContent** %11, align 8, !dbg !174
  %78 = bitcast %struct._xmlElementContent* %77 to i8*, !dbg !174
  call void @free(i8* noundef %78) #7, !dbg !175
  %79 = load %struct._xmlElementContent*, %struct._xmlElementContent** %12, align 8, !dbg !176
  %80 = bitcast %struct._xmlElementContent* %79 to i8*, !dbg !176
  call void @free(i8* noundef %80) #7, !dbg !177
  %81 = load i32, i32* %13, align 4, !dbg !178
  store i32 %81, i32* %5, align 4, !dbg !179
  br label %82, !dbg !179

82:                                               ; preds = %49, %43, %31, %18
  %83 = load i32, i32* %5, align 4, !dbg !180
  ret i32 %83, !dbg !180
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !181 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i8** %7, metadata !191, metadata !DIExpression()), !dbg !193
  %8 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %8, i8** %7, align 8, !dbg !193
  br label %9, !dbg !195

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !196
  %11 = add i64 %10, -1, !dbg !196
  store i64 %11, i64* %6, align 8, !dbg !196
  %12 = icmp ugt i64 %10, 0, !dbg !197
  br i1 %12, label %13, label %18, !dbg !195

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !198
  %15 = trunc i32 %14 to i8, !dbg !198
  %16 = load i8*, i8** %7, align 8, !dbg !199
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !199
  store i8* %17, i8** %7, align 8, !dbg !199
  store i8 %15, i8* %16, align 1, !dbg !200
  br label %9, !dbg !195, !llvm.loop !201

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !203
  ret i8* %19, !dbg !204
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29, !29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/277_valid.c_883_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9dc8e12cd9ba9f135b0cdf92ac4de637")
!2 = !{!3, !19}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentPtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 13, size: 384, elements: !7)
!7 = !{!8, !10, !11, !12, !13, !14, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !6, file: !1, line: 16, baseType: !3, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !6, file: !1, line: 17, baseType: !3, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !6, file: !1, line: 18, baseType: !3, size: 64, offset: 192)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 19, baseType: !15, size: 64, offset: 256)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !6, file: !1, line: 20, baseType: !15, size: 64, offset: 320)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!21 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"Ubuntu clang version 14.0.6"}
!30 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 24, type: !31, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!31 = !DISubroutineType(types: !32)
!32 = !{!19, !33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !{}
!37 = !DILocalVariable(name: "size", arg: 1, scope: !30, file: !1, line: 24, type: !33)
!38 = !DILocation(line: 24, column: 24, scope: !30)
!39 = !DILocation(line: 25, column: 19, scope: !30)
!40 = !DILocation(line: 25, column: 12, scope: !30)
!41 = !DILocation(line: 25, column: 5, scope: !30)
!42 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 29, type: !43, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !19, !15}
!45 = !DILocalVariable(name: "ctx", arg: 1, scope: !42, file: !1, line: 29, type: !19)
!46 = !DILocation(line: 29, column: 26, scope: !42)
!47 = !DILocalVariable(name: "msg", arg: 2, scope: !42, file: !1, line: 29, type: !15)
!48 = !DILocation(line: 29, column: 43, scope: !42)
!49 = !DILocation(line: 31, column: 1, scope: !42)
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !51, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!51 = !DISubroutineType(types: !52)
!52 = !{!9}
!53 = !DILocalVariable(name: "ctxt", scope: !50, file: !1, line: 39, type: !19)
!54 = !DILocation(line: 39, column: 11, scope: !50)
!55 = !DILocalVariable(name: "dtd", scope: !50, file: !1, line: 40, type: !19)
!56 = !DILocation(line: 40, column: 11, scope: !50)
!57 = !DILocalVariable(name: "name", scope: !50, file: !1, line: 41, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 32)
!61 = !DILocation(line: 41, column: 10, scope: !50)
!62 = !DILocalVariable(name: "type", scope: !50, file: !1, line: 42, type: !9)
!63 = !DILocation(line: 42, column: 9, scope: !50)
!64 = !DILocation(line: 45, column: 24, scope: !50)
!65 = !DILocation(line: 45, column: 5, scope: !50)
!66 = !DILocation(line: 46, column: 24, scope: !50)
!67 = !DILocation(line: 46, column: 5, scope: !50)
!68 = !DILocation(line: 47, column: 24, scope: !50)
!69 = !DILocation(line: 47, column: 5, scope: !50)
!70 = !DILocation(line: 48, column: 24, scope: !50)
!71 = !DILocation(line: 48, column: 5, scope: !50)
!72 = !DILocation(line: 51, column: 5, scope: !50)
!73 = !DILocation(line: 51, column: 14, scope: !50)
!74 = !DILocalVariable(name: "ret", scope: !50, file: !1, line: 54, type: !9)
!75 = !DILocation(line: 54, column: 9, scope: !50)
!76 = !DILocation(line: 54, column: 33, scope: !50)
!77 = !DILocation(line: 54, column: 39, scope: !50)
!78 = !DILocation(line: 54, column: 44, scope: !50)
!79 = !DILocation(line: 54, column: 50, scope: !50)
!80 = !DILocation(line: 54, column: 15, scope: !50)
!81 = !DILocation(line: 58, column: 5, scope: !50)
!82 = !DILocation(line: 61, column: 5, scope: !50)
!83 = !DILocation(line: 63, column: 5, scope: !50)
!84 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !1, file: !1, line: 67, type: !85, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!85 = !DISubroutineType(types: !86)
!86 = !{!9, !19, !19, !15, !9}
!87 = !DILocalVariable(name: "ctxt", arg: 1, scope: !84, file: !1, line: 67, type: !19)
!88 = !DILocation(line: 67, column: 29, scope: !84)
!89 = !DILocalVariable(name: "dtd", arg: 2, scope: !84, file: !1, line: 67, type: !19)
!90 = !DILocation(line: 67, column: 41, scope: !84)
!91 = !DILocalVariable(name: "name", arg: 3, scope: !84, file: !1, line: 67, type: !15)
!92 = !DILocation(line: 67, column: 58, scope: !84)
!93 = !DILocalVariable(name: "type", arg: 4, scope: !84, file: !1, line: 67, type: !9)
!94 = !DILocation(line: 67, column: 68, scope: !84)
!95 = !DILocalVariable(name: "cur", scope: !84, file: !1, line: 68, type: !3)
!96 = !DILocation(line: 68, column: 26, scope: !84)
!97 = !DILocalVariable(name: "prev", scope: !84, file: !1, line: 69, type: !3)
!98 = !DILocation(line: 69, column: 26, scope: !84)
!99 = !DILocalVariable(name: "tmp", scope: !84, file: !1, line: 70, type: !3)
!100 = !DILocation(line: 70, column: 26, scope: !84)
!101 = !DILocalVariable(name: "ret", scope: !84, file: !1, line: 71, type: !9)
!102 = !DILocation(line: 71, column: 9, scope: !84)
!103 = !DILocation(line: 74, column: 33, scope: !84)
!104 = !DILocation(line: 74, column: 11, scope: !84)
!105 = !DILocation(line: 74, column: 9, scope: !84)
!106 = !DILocation(line: 75, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !84, file: !1, line: 75, column: 9)
!108 = !DILocation(line: 75, column: 13, scope: !107)
!109 = !DILocation(line: 75, column: 9, scope: !84)
!110 = !DILocation(line: 76, column: 16, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 75, column: 22)
!112 = !DILocation(line: 76, column: 9, scope: !111)
!113 = !DILocation(line: 78, column: 12, scope: !84)
!114 = !DILocation(line: 78, column: 5, scope: !84)
!115 = !DILocation(line: 81, column: 25, scope: !84)
!116 = !DILocation(line: 81, column: 30, scope: !84)
!117 = !DILocation(line: 81, column: 24, scope: !84)
!118 = !DILocation(line: 81, column: 5, scope: !84)
!119 = !DILocation(line: 84, column: 34, scope: !84)
!120 = !DILocation(line: 84, column: 12, scope: !84)
!121 = !DILocation(line: 84, column: 10, scope: !84)
!122 = !DILocation(line: 85, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !84, file: !1, line: 85, column: 9)
!124 = !DILocation(line: 85, column: 14, scope: !123)
!125 = !DILocation(line: 85, column: 9, scope: !84)
!126 = !DILocation(line: 86, column: 14, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 85, column: 23)
!128 = !DILocation(line: 86, column: 9, scope: !127)
!129 = !DILocation(line: 87, column: 16, scope: !127)
!130 = !DILocation(line: 87, column: 9, scope: !127)
!131 = !DILocation(line: 89, column: 12, scope: !84)
!132 = !DILocation(line: 89, column: 5, scope: !84)
!133 = !DILocation(line: 92, column: 34, scope: !84)
!134 = !DILocation(line: 92, column: 11, scope: !84)
!135 = !DILocation(line: 92, column: 9, scope: !84)
!136 = !DILocation(line: 93, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !84, file: !1, line: 93, column: 9)
!138 = !DILocation(line: 93, column: 13, scope: !137)
!139 = !DILocation(line: 93, column: 9, scope: !84)
!140 = !DILocation(line: 94, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 93, column: 22)
!142 = !DILocation(line: 95, column: 14, scope: !141)
!143 = !DILocation(line: 95, column: 9, scope: !141)
!144 = !DILocation(line: 96, column: 14, scope: !141)
!145 = !DILocation(line: 96, column: 9, scope: !141)
!146 = !DILocation(line: 97, column: 16, scope: !141)
!147 = !DILocation(line: 97, column: 9, scope: !141)
!148 = !DILocation(line: 102, column: 12, scope: !84)
!149 = !DILocation(line: 102, column: 5, scope: !84)
!150 = !DILocation(line: 102, column: 49, scope: !84)
!151 = !DILocation(line: 102, column: 53, scope: !84)
!152 = !DILocation(line: 102, column: 48, scope: !84)
!153 = !DILocation(line: 102, column: 46, scope: !84)
!154 = !DILocation(line: 104, column: 17, scope: !84)
!155 = !DILocation(line: 104, column: 22, scope: !84)
!156 = !DILocation(line: 104, column: 5, scope: !84)
!157 = !DILocation(line: 104, column: 10, scope: !84)
!158 = !DILocation(line: 104, column: 15, scope: !84)
!159 = !DILocation(line: 105, column: 17, scope: !84)
!160 = !DILocation(line: 105, column: 22, scope: !84)
!161 = !DILocation(line: 105, column: 5, scope: !84)
!162 = !DILocation(line: 105, column: 10, scope: !84)
!163 = !DILocation(line: 105, column: 15, scope: !84)
!164 = !DILocation(line: 106, column: 16, scope: !84)
!165 = !DILocation(line: 106, column: 5, scope: !84)
!166 = !DILocation(line: 106, column: 11, scope: !84)
!167 = !DILocation(line: 106, column: 14, scope: !84)
!168 = !DILocation(line: 107, column: 19, scope: !84)
!169 = !DILocation(line: 107, column: 5, scope: !84)
!170 = !DILocation(line: 107, column: 10, scope: !84)
!171 = !DILocation(line: 107, column: 17, scope: !84)
!172 = !DILocation(line: 110, column: 10, scope: !84)
!173 = !DILocation(line: 110, column: 5, scope: !84)
!174 = !DILocation(line: 111, column: 10, scope: !84)
!175 = !DILocation(line: 111, column: 5, scope: !84)
!176 = !DILocation(line: 112, column: 10, scope: !84)
!177 = !DILocation(line: 112, column: 5, scope: !84)
!178 = !DILocation(line: 114, column: 12, scope: !84)
!179 = !DILocation(line: 114, column: 5, scope: !84)
!180 = !DILocation(line: 115, column: 1, scope: !84)
!181 = distinct !DISubprogram(name: "memset", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !20, retainedNodes: !36)
!182 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!183 = !DISubroutineType(types: !184)
!184 = !{!19, !19, !9, !33}
!185 = !DILocalVariable(name: "dst", arg: 1, scope: !181, file: !182, line: 12, type: !19)
!186 = !DILocation(line: 12, column: 20, scope: !181)
!187 = !DILocalVariable(name: "s", arg: 2, scope: !181, file: !182, line: 12, type: !9)
!188 = !DILocation(line: 12, column: 29, scope: !181)
!189 = !DILocalVariable(name: "count", arg: 3, scope: !181, file: !182, line: 12, type: !33)
!190 = !DILocation(line: 12, column: 39, scope: !181)
!191 = !DILocalVariable(name: "a", scope: !181, file: !182, line: 13, type: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!193 = !DILocation(line: 13, column: 9, scope: !181)
!194 = !DILocation(line: 13, column: 13, scope: !181)
!195 = !DILocation(line: 14, column: 3, scope: !181)
!196 = !DILocation(line: 14, column: 15, scope: !181)
!197 = !DILocation(line: 14, column: 18, scope: !181)
!198 = !DILocation(line: 15, column: 12, scope: !181)
!199 = !DILocation(line: 15, column: 7, scope: !181)
!200 = !DILocation(line: 15, column: 10, scope: !181)
!201 = distinct !{!201, !195, !198, !202}
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 16, column: 10, scope: !181)
!204 = !DILocation(line: 16, column: 3, scope: !181)
