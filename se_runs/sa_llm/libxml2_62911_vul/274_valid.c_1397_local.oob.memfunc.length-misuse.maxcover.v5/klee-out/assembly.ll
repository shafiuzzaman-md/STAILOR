; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/274_valid.c_1397_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/274_valid.c_1397_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElementContent = type { i32, i32, i8*, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlElementContent* }
%struct._xmlElement = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDtd*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, %struct._xmlElementContent*, %struct._xmlElementContent*, %struct._xmlAttribute* }
%struct._xmlDtd = type opaque
%struct._xmlNode = type opaque
%struct._xmlDoc = type opaque
%struct._xmlAttribute = type opaque
%struct._xmlNs = type { %struct._xmlNs*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"uqname\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"choice\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"(sizeof(xmlElement) <= __builtin_object_size(ret, 0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/274_valid.c_1397_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlAddElementDecl = private unnamed_addr constant [100 x i8] c"xmlElement *xmlAddElementDecl(void *, void *, const char *, xmlElementTypeVal, xmlElementContent *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dtd\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c\00", align 1
@.str.1.12 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str.2.13 = private unnamed_addr constant [5 x i8] c"user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !85 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !89, metadata !DIExpression()), !dbg !90
  %3 = load i8*, i8** %2, align 8, !dbg !91
  %4 = icmp ne i8* %3, null, !dbg !91
  br i1 %4, label %5, label %7, !dbg !93

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !94
  call void @free(i8* noundef %6) #7, !dbg !95
  br label %7, !dbg !95

7:                                                ; preds = %5, %1
  ret void, !dbg !96
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xmlMalloc(i64 noundef %0) #0 !dbg !97 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !103, metadata !DIExpression()), !dbg !104
  %3 = load i64, i64* %2, align 8, !dbg !105
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !106
  ret i8* %4, !dbg !107
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElementContent* @xmlNewElementContent() #0 !dbg !108 {
  %1 = call i8* @__xmlMalloc(i64 noundef 40), !dbg !111
  %2 = bitcast i8* %1 to %struct._xmlElementContent*, !dbg !112
  ret %struct._xmlElementContent* %2, !dbg !113
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElement* @xmlAddElementDecl(i8* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3, %struct._xmlElementContent* noundef %4) #0 !dbg !114 {
  %6 = alloca %struct._xmlElement*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._xmlElementContent*, align 8
  %12 = alloca %struct._xmlElement*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._xmlNs*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !DIExpression()), !dbg !118
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !119, metadata !DIExpression()), !dbg !120
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !123, metadata !DIExpression()), !dbg !124
  store %struct._xmlElementContent* %4, %struct._xmlElementContent** %11, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %11, metadata !125, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %12, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i8** %13, metadata !129, metadata !DIExpression()), !dbg !130
  store i8* null, i8** %13, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %14, metadata !131, metadata !DIExpression()), !dbg !140
  store %struct._xmlNs* null, %struct._xmlNs** %14, align 8, !dbg !140
  %15 = call i8* @__xmlMalloc(i64 noundef 10), !dbg !141
  store i8* %15, i8** %13, align 8, !dbg !142
  %16 = load i8*, i8** %13, align 8, !dbg !143
  %17 = icmp ne i8* %16, null, !dbg !143
  br i1 %17, label %19, label %18, !dbg !145

18:                                               ; preds = %5
  store %struct._xmlElement* null, %struct._xmlElement** %6, align 8, !dbg !146
  br label %61, !dbg !146

19:                                               ; preds = %5
  %20 = load i8*, i8** %13, align 8, !dbg !147
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !148
  %21 = call i32 @klee_range(i32 noundef 0, i32 noundef 2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !149
  %22 = icmp ne i32 %21, 0, !dbg !149
  br i1 %22, label %23, label %31, !dbg !151

23:                                               ; preds = %19
  %24 = load i8*, i8** %13, align 8, !dbg !152
  call void @xmlFree(i8* noundef %24), !dbg !154
  %25 = load %struct._xmlNs*, %struct._xmlNs** %14, align 8, !dbg !155
  %26 = icmp ne %struct._xmlNs* %25, null, !dbg !157
  br i1 %26, label %27, label %30, !dbg !158

27:                                               ; preds = %23
  %28 = load %struct._xmlNs*, %struct._xmlNs** %14, align 8, !dbg !159
  %29 = bitcast %struct._xmlNs* %28 to i8*, !dbg !159
  call void @xmlFree(i8* noundef %29), !dbg !160
  br label %30, !dbg !160

30:                                               ; preds = %27, %23
  store %struct._xmlElement* null, %struct._xmlElement** %6, align 8, !dbg !161
  br label %61, !dbg !161

31:                                               ; preds = %19
  %32 = call i8* @__xmlMalloc(i64 noundef 104), !dbg !162
  %33 = bitcast i8* %32 to %struct._xmlElement*, !dbg !163
  store %struct._xmlElement* %33, %struct._xmlElement** %12, align 8, !dbg !164
  %34 = load %struct._xmlElement*, %struct._xmlElement** %12, align 8, !dbg !165
  %35 = icmp ne %struct._xmlElement* %34, null, !dbg !165
  br i1 %35, label %44, label %36, !dbg !167

36:                                               ; preds = %31
  %37 = load i8*, i8** %13, align 8, !dbg !168
  call void @xmlFree(i8* noundef %37), !dbg !170
  %38 = load %struct._xmlNs*, %struct._xmlNs** %14, align 8, !dbg !171
  %39 = icmp ne %struct._xmlNs* %38, null, !dbg !173
  br i1 %39, label %40, label %43, !dbg !174

40:                                               ; preds = %36
  %41 = load %struct._xmlNs*, %struct._xmlNs** %14, align 8, !dbg !175
  %42 = bitcast %struct._xmlNs* %41 to i8*, !dbg !175
  call void @xmlFree(i8* noundef %42), !dbg !176
  br label %43, !dbg !176

43:                                               ; preds = %40, %36
  store %struct._xmlElement* null, %struct._xmlElement** %6, align 8, !dbg !177
  br label %61, !dbg !177

44:                                               ; preds = %31
  %45 = load %struct._xmlElement*, %struct._xmlElement** %12, align 8, !dbg !178
  %46 = bitcast %struct._xmlElement* %45 to i8*, !dbg !178
  %47 = icmp ule i64 104, -1, !dbg !178
  br i1 %47, label %48, label %50, !dbg !178

48:                                               ; preds = %44
  br i1 true, label %49, label %50, !dbg !178

49:                                               ; preds = %48
  br label %52, !dbg !178

50:                                               ; preds = %48, %44
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 120, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__.xmlAddElementDecl, i64 0, i64 0)), !dbg !178
  br label %52, !dbg !178

52:                                               ; preds = %50, %49
  %53 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 123, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__.xmlAddElementDecl, i64 0, i64 0)), !dbg !179
  %54 = load %struct._xmlElement*, %struct._xmlElement** %12, align 8, !dbg !180
  %55 = bitcast %struct._xmlElement* %54 to i8*, !dbg !181
  %56 = call i8* @memset(i8* %55, i32 0, i64 104), !dbg !181
  %57 = load %struct._xmlElement*, %struct._xmlElement** %12, align 8, !dbg !182
  %58 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %57, i32 0, i32 1, !dbg !183
  store i32 1, i32* %58, align 8, !dbg !184
  %59 = load i8*, i8** %13, align 8, !dbg !185
  call void @xmlFree(i8* noundef %59), !dbg !186
  %60 = load %struct._xmlElement*, %struct._xmlElement** %12, align 8, !dbg !187
  store %struct._xmlElement* %60, %struct._xmlElement** %6, align 8, !dbg !188
  br label %61, !dbg !188

61:                                               ; preds = %52, %43, %30, %18
  %62 = load %struct._xmlElement*, %struct._xmlElement** %6, align 8, !dbg !189
  ret %struct._xmlElement* %62, !dbg !189
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !190 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlElementContent*, align 8
  %7 = alloca %struct._xmlElement*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i8** %3, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata %struct._xmlElementContent** %6, metadata !205, metadata !DIExpression()), !dbg !206
  %8 = bitcast i8** %2 to i8*, !dbg !207
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !208
  %9 = bitcast i8** %3 to i8*, !dbg !209
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !210
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !211
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 20, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)), !dbg !212
  %11 = bitcast i32* %5 to i8*, !dbg !213
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)), !dbg !214
  %12 = call %struct._xmlElementContent* @xmlNewElementContent(), !dbg !215
  store %struct._xmlElementContent* %12, %struct._xmlElementContent** %6, align 8, !dbg !216
  %13 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !217
  %14 = icmp ne %struct._xmlElementContent* %13, null, !dbg !217
  br i1 %14, label %16, label %15, !dbg !219

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !220
  br label %37, !dbg !220

16:                                               ; preds = %0
  %17 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !221
  %18 = bitcast %struct._xmlElementContent* %17 to i8*, !dbg !221
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 40, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)), !dbg !222
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %7, metadata !223, metadata !DIExpression()), !dbg !224
  %19 = load i8*, i8** %2, align 8, !dbg !225
  %20 = load i8*, i8** %3, align 8, !dbg !226
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !227
  %22 = load i32, i32* %5, align 4, !dbg !228
  %23 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !229
  %24 = call %struct._xmlElement* @xmlAddElementDecl(i8* noundef %19, i8* noundef %20, i8* noundef %21, i32 noundef %22, %struct._xmlElementContent* noundef %23), !dbg !230
  store %struct._xmlElement* %24, %struct._xmlElement** %7, align 8, !dbg !224
  %25 = load %struct._xmlElement*, %struct._xmlElement** %7, align 8, !dbg !231
  %26 = icmp ne %struct._xmlElement* %25, null, !dbg !231
  br i1 %26, label %27, label %30, !dbg !233

27:                                               ; preds = %16
  %28 = load %struct._xmlElement*, %struct._xmlElement** %7, align 8, !dbg !234
  %29 = bitcast %struct._xmlElement* %28 to i8*, !dbg !234
  call void @free(i8* noundef %29) #7, !dbg !235
  br label %30, !dbg !235

30:                                               ; preds = %27, %16
  %31 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !236
  %32 = icmp ne %struct._xmlElementContent* %31, null, !dbg !236
  br i1 %32, label %33, label %36, !dbg !238

33:                                               ; preds = %30
  %34 = load %struct._xmlElementContent*, %struct._xmlElementContent** %6, align 8, !dbg !239
  %35 = bitcast %struct._xmlElementContent* %34 to i8*, !dbg !239
  call void @free(i8* noundef %35) #7, !dbg !240
  br label %36, !dbg !240

36:                                               ; preds = %33, %30
  store i32 0, i32* %1, align 4, !dbg !241
  br label %37, !dbg !241

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %1, align 4, !dbg !242
  ret i32 %38, !dbg !242
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @klee_range(i32 noundef %0, i32 noundef %1, i8* noundef %2) #6 !dbg !243 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !249, metadata !DIExpression()), !dbg !250
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i32* %8, metadata !253, metadata !DIExpression()), !dbg !254
  %9 = load i32, i32* %5, align 4, !dbg !255
  %10 = load i32, i32* %6, align 4, !dbg !257
  %11 = icmp sge i32 %9, %10, !dbg !258
  br i1 %11, label %12, label %13, !dbg !259

12:                                               ; preds = %3
  call void @klee_report_error(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 noundef 16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.13, i64 0, i64 0)) #8, !dbg !260
  unreachable, !dbg !260

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4, !dbg !261
  %15 = add nsw i32 %14, 1, !dbg !263
  %16 = load i32, i32* %6, align 4, !dbg !264
  %17 = icmp eq i32 %15, %16, !dbg !265
  br i1 %17, label %18, label %20, !dbg !266

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4, !dbg !267
  store i32 %19, i32* %4, align 4, !dbg !269
  br label %44, !dbg !269

20:                                               ; preds = %13
  %21 = bitcast i32* %8 to i8*, !dbg !270
  %22 = load i8*, i8** %7, align 8, !dbg !272
  call void @klee_make_symbolic(i8* noundef %21, i64 noundef 4, i8* noundef %22), !dbg !273
  %23 = load i32, i32* %5, align 4, !dbg !274
  %24 = icmp eq i32 %23, 0, !dbg !276
  br i1 %24, label %25, label %31, !dbg !277

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4, !dbg !278
  %27 = load i32, i32* %6, align 4, !dbg !280
  %28 = icmp ult i32 %26, %27, !dbg !281
  %29 = zext i1 %28 to i32, !dbg !281
  %30 = sext i32 %29 to i64, !dbg !282
  call void @klee_assume(i64 noundef %30), !dbg !283
  br label %42, !dbg !284

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4, !dbg !285
  %33 = load i32, i32* %8, align 4, !dbg !287
  %34 = icmp sle i32 %32, %33, !dbg !288
  %35 = zext i1 %34 to i32, !dbg !288
  %36 = sext i32 %35 to i64, !dbg !285
  call void @klee_assume(i64 noundef %36), !dbg !289
  %37 = load i32, i32* %8, align 4, !dbg !290
  %38 = load i32, i32* %6, align 4, !dbg !291
  %39 = icmp slt i32 %37, %38, !dbg !292
  %40 = zext i1 %39 to i32, !dbg !292
  %41 = sext i32 %40 to i64, !dbg !290
  call void @klee_assume(i64 noundef %41), !dbg !293
  br label %42

42:                                               ; preds = %31, %25
  %43 = load i32, i32* %8, align 4, !dbg !294
  store i32 %43, i32* %4, align 4, !dbg !295
  br label %44, !dbg !295

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4, !dbg !296
  ret i32 %45, !dbg !296
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !297 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !303, metadata !DIExpression()), !dbg !304
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i8** %7, metadata !307, metadata !DIExpression()), !dbg !308
  %8 = load i8*, i8** %4, align 8, !dbg !309
  store i8* %8, i8** %7, align 8, !dbg !308
  br label %9, !dbg !310

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !311
  %11 = add i64 %10, -1, !dbg !311
  store i64 %11, i64* %6, align 8, !dbg !311
  %12 = icmp ugt i64 %10, 0, !dbg !312
  br i1 %12, label %13, label %18, !dbg !310

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !313
  %15 = trunc i32 %14 to i8, !dbg !313
  %16 = load i8*, i8** %7, align 8, !dbg !314
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !314
  store i8* %17, i8** %7, align 8, !dbg !314
  store i8 %15, i8* %16, align 1, !dbg !315
  br label %9, !dbg !310, !llvm.loop !316

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !318
  ret i8* %19, !dbg !319
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !72, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84, !84, !84}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !26, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/274_valid.c_1397_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0ef9b0945bab7c0614fd00d40588b584")
!2 = !{!3, !10, !16, !19}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 22, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PCDATA", value: 1)
!7 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ELEMENT", value: 2)
!8 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_SEQ", value: 3)
!9 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OR", value: 4)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 29, baseType: !4, size: 32, elements: !11)
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_ONCE", value: 1)
!13 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_OPT", value: 2)
!14 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_MULT", value: 3)
!15 = !DIEnumerator(name: "XML_ELEMENT_CONTENT_PLUS", value: 4)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 36, baseType: !4, size: 32, elements: !17)
!17 = !{!18}
!18 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 1)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 14, baseType: !4, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "XML_ELEMENT_TYPE_UNDEFINED", value: 0)
!22 = !DIEnumerator(name: "XML_ELEMENT_TYPE_EMPTY", value: 1)
!23 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ANY", value: 2)
!24 = !DIEnumerator(name: "XML_ELEMENT_TYPE_MIXED", value: 3)
!25 = !DIEnumerator(name: "XML_ELEMENT_TYPE_ELEMENT", value: 4)
!26 = !{!27, !43, !44, !45}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContent", file: !1, line: 12, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementContent", file: !1, line: 62, size: 320, elements: !30)
!30 = !{!31, !33, !35, !39, !41, !42}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !1, line: 63, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentType", file: !1, line: 27, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ocur", scope: !29, file: !1, line: 64, baseType: !34, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementContentOccur", file: !1, line: 34, baseType: !10)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !1, line: 65, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !29, file: !1, line: 66, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !29, file: !1, line: 67, baseType: !40, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !29, file: !1, line: 68, baseType: !40, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 10, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 40, size: 832, elements: !48)
!48 = !{!49, !50, !52, !53, !56, !57, !60, !61, !62, !65, !67, !68, !69}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !47, file: !1, line: 41, baseType: !44, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !1, line: 42, baseType: !51, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !1, line: 38, baseType: !16)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !47, file: !1, line: 43, baseType: !36, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !47, file: !1, line: 44, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 44, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !47, file: !1, line: 45, baseType: !54, size: 64, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !47, file: !1, line: 46, baseType: !58, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !1, line: 46, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !47, file: !1, line: 47, baseType: !54, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !47, file: !1, line: 48, baseType: !54, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !47, file: !1, line: 49, baseType: !63, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 49, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !47, file: !1, line: 50, baseType: !66, size: 32, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementTypeVal", file: !1, line: 20, baseType: !19)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !47, file: !1, line: 51, baseType: !27, size: 64, offset: 640)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !47, file: !1, line: 52, baseType: !27, size: 64, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !47, file: !1, line: 53, baseType: !70, size: 64, offset: 768)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttribute", file: !1, line: 53, flags: DIFlagFwdDecl)
!72 = distinct !DICompileUnit(language: DW_LANG_C89, file: !73, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!73 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!74 = !{!4}
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 4}
!80 = !{i32 7, !"PIC Level", i32 2}
!81 = !{i32 7, !"PIE Level", i32 2}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"Ubuntu clang version 14.0.6"}
!85 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 72, type: !86, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !44}
!88 = !{}
!89 = !DILocalVariable(name: "ptr", arg: 1, scope: !85, file: !1, line: 72, type: !44)
!90 = !DILocation(line: 72, column: 20, scope: !85)
!91 = !DILocation(line: 73, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 73, column: 9)
!93 = !DILocation(line: 73, column: 9, scope: !85)
!94 = !DILocation(line: 73, column: 19, scope: !92)
!95 = !DILocation(line: 73, column: 14, scope: !92)
!96 = !DILocation(line: 74, column: 1, scope: !85)
!97 = distinct !DISubprogram(name: "__xmlMalloc", scope: !1, file: !1, line: 76, type: !98, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!98 = !DISubroutineType(types: !99)
!99 = !{!44, !100}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DILocalVariable(name: "size", arg: 1, scope: !97, file: !1, line: 76, type: !100)
!104 = !DILocation(line: 76, column: 26, scope: !97)
!105 = !DILocation(line: 77, column: 19, scope: !97)
!106 = !DILocation(line: 77, column: 12, scope: !97)
!107 = !DILocation(line: 77, column: 5, scope: !97)
!108 = distinct !DISubprogram(name: "xmlNewElementContent", scope: !1, file: !1, line: 80, type: !109, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!109 = !DISubroutineType(types: !110)
!110 = !{!27}
!111 = !DILocation(line: 81, column: 33, scope: !108)
!112 = !DILocation(line: 81, column: 12, scope: !108)
!113 = !DILocation(line: 81, column: 5, scope: !108)
!114 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !1, file: !1, line: 84, type: !115, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!115 = !DISubroutineType(types: !116)
!116 = !{!45, !44, !44, !36, !66, !27}
!117 = !DILocalVariable(name: "ctxt", arg: 1, scope: !114, file: !1, line: 84, type: !44)
!118 = !DILocation(line: 84, column: 37, scope: !114)
!119 = !DILocalVariable(name: "dtd", arg: 2, scope: !114, file: !1, line: 84, type: !44)
!120 = !DILocation(line: 84, column: 49, scope: !114)
!121 = !DILocalVariable(name: "name", arg: 3, scope: !114, file: !1, line: 84, type: !36)
!122 = !DILocation(line: 84, column: 66, scope: !114)
!123 = !DILocalVariable(name: "type", arg: 4, scope: !114, file: !1, line: 85, type: !66)
!124 = !DILocation(line: 85, column: 50, scope: !114)
!125 = !DILocalVariable(name: "content", arg: 5, scope: !114, file: !1, line: 85, type: !27)
!126 = !DILocation(line: 85, column: 75, scope: !114)
!127 = !DILocalVariable(name: "ret", scope: !114, file: !1, line: 87, type: !45)
!128 = !DILocation(line: 87, column: 17, scope: !114)
!129 = !DILocalVariable(name: "uqname", scope: !114, file: !1, line: 88, type: !43)
!130 = !DILocation(line: 88, column: 11, scope: !114)
!131 = !DILocalVariable(name: "ns", scope: !114, file: !1, line: 89, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 11, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 56, size: 192, elements: !135)
!135 = !{!136, !138, !139}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !1, line: 57, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !134, file: !1, line: 58, baseType: !36, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !134, file: !1, line: 59, baseType: !36, size: 64, offset: 128)
!140 = !DILocation(line: 89, column: 12, scope: !114)
!141 = !DILocation(line: 92, column: 22, scope: !114)
!142 = !DILocation(line: 92, column: 12, scope: !114)
!143 = !DILocation(line: 93, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !114, file: !1, line: 93, column: 9)
!145 = !DILocation(line: 93, column: 9, scope: !114)
!146 = !DILocation(line: 93, column: 18, scope: !144)
!147 = !DILocation(line: 96, column: 24, scope: !114)
!148 = !DILocation(line: 96, column: 5, scope: !114)
!149 = !DILocation(line: 99, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !114, file: !1, line: 99, column: 9)
!151 = !DILocation(line: 99, column: 9, scope: !114)
!152 = !DILocation(line: 101, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 99, column: 37)
!154 = !DILocation(line: 101, column: 9, scope: !153)
!155 = !DILocation(line: 102, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !1, line: 102, column: 13)
!157 = !DILocation(line: 102, column: 16, scope: !156)
!158 = !DILocation(line: 102, column: 13, scope: !153)
!159 = !DILocation(line: 103, column: 21, scope: !156)
!160 = !DILocation(line: 103, column: 13, scope: !156)
!161 = !DILocation(line: 104, column: 9, scope: !153)
!162 = !DILocation(line: 108, column: 25, scope: !114)
!163 = !DILocation(line: 108, column: 11, scope: !114)
!164 = !DILocation(line: 108, column: 9, scope: !114)
!165 = !DILocation(line: 109, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !114, file: !1, line: 109, column: 9)
!167 = !DILocation(line: 109, column: 9, scope: !114)
!168 = !DILocation(line: 110, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 109, column: 15)
!170 = !DILocation(line: 110, column: 9, scope: !169)
!171 = !DILocation(line: 111, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !1, line: 111, column: 13)
!173 = !DILocation(line: 111, column: 16, scope: !172)
!174 = !DILocation(line: 111, column: 13, scope: !169)
!175 = !DILocation(line: 112, column: 21, scope: !172)
!176 = !DILocation(line: 112, column: 13, scope: !172)
!177 = !DILocation(line: 113, column: 9, scope: !169)
!178 = !DILocation(line: 120, column: 5, scope: !114)
!179 = !DILocation(line: 123, column: 5, scope: !114)
!180 = !DILocation(line: 126, column: 12, scope: !114)
!181 = !DILocation(line: 126, column: 5, scope: !114)
!182 = !DILocation(line: 129, column: 5, scope: !114)
!183 = !DILocation(line: 129, column: 10, scope: !114)
!184 = !DILocation(line: 129, column: 15, scope: !114)
!185 = !DILocation(line: 131, column: 13, scope: !114)
!186 = !DILocation(line: 131, column: 5, scope: !114)
!187 = !DILocation(line: 132, column: 12, scope: !114)
!188 = !DILocation(line: 132, column: 5, scope: !114)
!189 = !DILocation(line: 133, column: 1, scope: !114)
!190 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 135, type: !191, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !88)
!191 = !DISubroutineType(types: !192)
!192 = !{!193}
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DILocalVariable(name: "ctxt", scope: !190, file: !1, line: 137, type: !44)
!195 = !DILocation(line: 137, column: 11, scope: !190)
!196 = !DILocalVariable(name: "dtd", scope: !190, file: !1, line: 138, type: !44)
!197 = !DILocation(line: 138, column: 11, scope: !190)
!198 = !DILocalVariable(name: "name", scope: !190, file: !1, line: 139, type: !199)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 20)
!202 = !DILocation(line: 139, column: 10, scope: !190)
!203 = !DILocalVariable(name: "type", scope: !190, file: !1, line: 140, type: !66)
!204 = !DILocation(line: 140, column: 23, scope: !190)
!205 = !DILocalVariable(name: "content", scope: !190, file: !1, line: 141, type: !27)
!206 = !DILocation(line: 141, column: 24, scope: !190)
!207 = !DILocation(line: 144, column: 24, scope: !190)
!208 = !DILocation(line: 144, column: 5, scope: !190)
!209 = !DILocation(line: 145, column: 24, scope: !190)
!210 = !DILocation(line: 145, column: 5, scope: !190)
!211 = !DILocation(line: 146, column: 24, scope: !190)
!212 = !DILocation(line: 146, column: 5, scope: !190)
!213 = !DILocation(line: 147, column: 24, scope: !190)
!214 = !DILocation(line: 147, column: 5, scope: !190)
!215 = !DILocation(line: 150, column: 15, scope: !190)
!216 = !DILocation(line: 150, column: 13, scope: !190)
!217 = !DILocation(line: 151, column: 10, scope: !218)
!218 = distinct !DILexicalBlock(scope: !190, file: !1, line: 151, column: 9)
!219 = !DILocation(line: 151, column: 9, scope: !190)
!220 = !DILocation(line: 151, column: 19, scope: !218)
!221 = !DILocation(line: 152, column: 24, scope: !190)
!222 = !DILocation(line: 152, column: 5, scope: !190)
!223 = !DILocalVariable(name: "result", scope: !190, file: !1, line: 155, type: !45)
!224 = !DILocation(line: 155, column: 17, scope: !190)
!225 = !DILocation(line: 155, column: 44, scope: !190)
!226 = !DILocation(line: 155, column: 50, scope: !190)
!227 = !DILocation(line: 155, column: 55, scope: !190)
!228 = !DILocation(line: 155, column: 61, scope: !190)
!229 = !DILocation(line: 155, column: 67, scope: !190)
!230 = !DILocation(line: 155, column: 26, scope: !190)
!231 = !DILocation(line: 158, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !190, file: !1, line: 158, column: 9)
!233 = !DILocation(line: 158, column: 9, scope: !190)
!234 = !DILocation(line: 158, column: 22, scope: !232)
!235 = !DILocation(line: 158, column: 17, scope: !232)
!236 = !DILocation(line: 159, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !190, file: !1, line: 159, column: 9)
!238 = !DILocation(line: 159, column: 9, scope: !190)
!239 = !DILocation(line: 159, column: 23, scope: !237)
!240 = !DILocation(line: 159, column: 18, scope: !237)
!241 = !DILocation(line: 161, column: 5, scope: !190)
!242 = !DILocation(line: 162, column: 1, scope: !190)
!243 = distinct !DISubprogram(name: "klee_range", scope: !244, file: !244, line: 12, type: !245, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !72, retainedNodes: !88)
!244 = !DIFile(filename: "runtime/Intrinsic/klee_range.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "967b9ed6e7b3db2f47ee33010ec31c43")
!245 = !DISubroutineType(types: !246)
!246 = !{!193, !193, !193, !36}
!247 = !DILocalVariable(name: "start", arg: 1, scope: !243, file: !244, line: 12, type: !193)
!248 = !DILocation(line: 12, column: 20, scope: !243)
!249 = !DILocalVariable(name: "end", arg: 2, scope: !243, file: !244, line: 12, type: !193)
!250 = !DILocation(line: 12, column: 31, scope: !243)
!251 = !DILocalVariable(name: "name", arg: 3, scope: !243, file: !244, line: 12, type: !36)
!252 = !DILocation(line: 12, column: 48, scope: !243)
!253 = !DILocalVariable(name: "x", scope: !243, file: !244, line: 13, type: !193)
!254 = !DILocation(line: 13, column: 7, scope: !243)
!255 = !DILocation(line: 15, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !243, file: !244, line: 15, column: 7)
!257 = !DILocation(line: 15, column: 16, scope: !256)
!258 = !DILocation(line: 15, column: 13, scope: !256)
!259 = !DILocation(line: 15, column: 7, scope: !243)
!260 = !DILocation(line: 16, column: 5, scope: !256)
!261 = !DILocation(line: 18, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !243, file: !244, line: 18, column: 7)
!263 = !DILocation(line: 18, column: 12, scope: !262)
!264 = !DILocation(line: 18, column: 16, scope: !262)
!265 = !DILocation(line: 18, column: 14, scope: !262)
!266 = !DILocation(line: 18, column: 7, scope: !243)
!267 = !DILocation(line: 19, column: 12, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !244, line: 18, column: 21)
!269 = !DILocation(line: 19, column: 5, scope: !268)
!270 = !DILocation(line: 21, column: 24, scope: !271)
!271 = distinct !DILexicalBlock(scope: !262, file: !244, line: 20, column: 10)
!272 = !DILocation(line: 21, column: 38, scope: !271)
!273 = !DILocation(line: 21, column: 5, scope: !271)
!274 = !DILocation(line: 24, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !244, line: 24, column: 9)
!276 = !DILocation(line: 24, column: 14, scope: !275)
!277 = !DILocation(line: 24, column: 9, scope: !271)
!278 = !DILocation(line: 25, column: 30, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !244, line: 24, column: 19)
!280 = !DILocation(line: 25, column: 45, scope: !279)
!281 = !DILocation(line: 25, column: 32, scope: !279)
!282 = !DILocation(line: 25, column: 19, scope: !279)
!283 = !DILocation(line: 25, column: 7, scope: !279)
!284 = !DILocation(line: 26, column: 5, scope: !279)
!285 = !DILocation(line: 27, column: 19, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !244, line: 26, column: 12)
!287 = !DILocation(line: 27, column: 28, scope: !286)
!288 = !DILocation(line: 27, column: 25, scope: !286)
!289 = !DILocation(line: 27, column: 7, scope: !286)
!290 = !DILocation(line: 28, column: 19, scope: !286)
!291 = !DILocation(line: 28, column: 23, scope: !286)
!292 = !DILocation(line: 28, column: 21, scope: !286)
!293 = !DILocation(line: 28, column: 7, scope: !286)
!294 = !DILocation(line: 31, column: 12, scope: !271)
!295 = !DILocation(line: 31, column: 5, scope: !271)
!296 = !DILocation(line: 33, column: 1, scope: !243)
!297 = distinct !DISubprogram(name: "memset", scope: !298, file: !298, line: 12, type: !299, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !75, retainedNodes: !88)
!298 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!299 = !DISubroutineType(types: !300)
!300 = !{!44, !44, !193, !100}
!301 = !DILocalVariable(name: "dst", arg: 1, scope: !297, file: !298, line: 12, type: !44)
!302 = !DILocation(line: 12, column: 20, scope: !297)
!303 = !DILocalVariable(name: "s", arg: 2, scope: !297, file: !298, line: 12, type: !193)
!304 = !DILocation(line: 12, column: 29, scope: !297)
!305 = !DILocalVariable(name: "count", arg: 3, scope: !297, file: !298, line: 12, type: !100)
!306 = !DILocation(line: 12, column: 39, scope: !297)
!307 = !DILocalVariable(name: "a", scope: !297, file: !298, line: 13, type: !43)
!308 = !DILocation(line: 13, column: 9, scope: !297)
!309 = !DILocation(line: 13, column: 13, scope: !297)
!310 = !DILocation(line: 14, column: 3, scope: !297)
!311 = !DILocation(line: 14, column: 15, scope: !297)
!312 = !DILocation(line: 14, column: 18, scope: !297)
!313 = !DILocation(line: 15, column: 12, scope: !297)
!314 = !DILocation(line: 15, column: 7, scope: !297)
!315 = !DILocation(line: 15, column: 10, scope: !297)
!316 = distinct !{!316, !310, !313, !317}
!317 = !{!"llvm.loop.mustprogress"}
!318 = !DILocation(line: 16, column: 10, scope: !297)
!319 = !DILocation(line: 16, column: 3, scope: !297)
