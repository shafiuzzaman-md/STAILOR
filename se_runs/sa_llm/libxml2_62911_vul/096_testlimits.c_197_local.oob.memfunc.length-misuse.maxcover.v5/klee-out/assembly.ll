; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/096_testlimits.c_197_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/096_testlimits.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDoc = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i32, i32, %struct._xmlDtd*, %struct._xmlDtd*, %struct._xmlNs*, i8*, i8*, i8*, i8*, i8*, i32, %struct._xmlDict*, i8*, i32, i32 }
%struct._xmlNode = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, i8*, %struct._xmlAttr*, %struct._xmlNs*, i8*, i16, i16 }
%struct._xmlAttr = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlAttr*, %struct._xmlAttr*, %struct._xmlDoc*, %struct._xmlNs*, i32, i8* }
%struct._xmlDtd = type { i8*, i32, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlDoc*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct._xmlNs = type { %struct._xmlNs*, i32, i8*, i8*, i8*, %struct._xmlDoc* }
%struct._xmlDict = type opaque

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"noname.xml\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/096_testlimits.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !58 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct._xmlDoc*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [1024 x i8]* %2, metadata !63, metadata !DIExpression()), !dbg !67
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !68
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 1024, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 1023, !dbg !70
  store i8 0, i8* %13, align 1, !dbg !71
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %3, metadata !72, metadata !DIExpression()), !dbg !176
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !177
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0, !dbg !178
  %16 = call i64 @strlen(i8* noundef %15) #8, !dbg !179
  %17 = trunc i64 %16 to i32, !dbg !179
  %18 = call %struct._xmlDoc* @xmlReadMemory(i8* noundef %14, i32 noundef %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef null, i32 noundef 0), !dbg !180
  store %struct._xmlDoc* %18, %struct._xmlDoc** %3, align 8, !dbg !176
  %19 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !181
  %20 = icmp eq %struct._xmlDoc* %19, null, !dbg !183
  br i1 %20, label %21, label %22, !dbg !184

21:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !185
  br label %105, !dbg !185

22:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !187, metadata !DIExpression()), !dbg !191
  %23 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !192
  %24 = call %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef %23), !dbg !193
  store %struct._xmlNode* %24, %struct._xmlNode** %4, align 8, !dbg !191
  %25 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !194
  %26 = icmp eq %struct._xmlNode* %25, null, !dbg !196
  br i1 %26, label %27, label %29, !dbg !197

27:                                               ; preds = %22
  %28 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !198
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %28), !dbg !200
  store i32 0, i32* %1, align 4, !dbg !201
  br label %105, !dbg !201

29:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i8** %5, metadata !202, metadata !DIExpression()), !dbg !203
  store i8* null, i8** %5, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i32* %6, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 0, i32* %6, align 4, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %7, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 0, i32* %7, align 4, !dbg !207
  call void @llvm.dbg.declare(metadata i32* %8, metadata !208, metadata !DIExpression()), !dbg !209
  store i32 0, i32* %8, align 4, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %9, metadata !210, metadata !DIExpression()), !dbg !211
  store i32 0, i32* %9, align 4, !dbg !211
  call void @llvm.dbg.declare(metadata i32* %10, metadata !212, metadata !DIExpression()), !dbg !213
  store i32 0, i32* %10, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata i8** %11, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* null, i8** %11, align 8, !dbg !215
  %30 = bitcast i32* %7 to i8*, !dbg !216
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)), !dbg !217
  %31 = bitcast i32* %8 to i8*, !dbg !218
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !219
  %32 = bitcast i32* %9 to i8*, !dbg !220
  call void @klee_make_symbolic(i8* noundef %32, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !221
  %33 = bitcast i32* %10 to i8*, !dbg !222
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !223
  %34 = load i32, i32* %7, align 4, !dbg !224
  %35 = icmp sge i32 %34, 0, !dbg !225
  %36 = zext i1 %35 to i32, !dbg !225
  %37 = sext i32 %36 to i64, !dbg !224
  call void @klee_assume(i64 noundef %37), !dbg !226
  %38 = load i32, i32* %8, align 4, !dbg !227
  %39 = icmp sge i32 %38, 0, !dbg !228
  %40 = zext i1 %39 to i32, !dbg !228
  %41 = sext i32 %40 to i64, !dbg !227
  call void @klee_assume(i64 noundef %41), !dbg !229
  %42 = load i32, i32* %9, align 4, !dbg !230
  %43 = icmp sge i32 %42, 0, !dbg !231
  %44 = zext i1 %43 to i32, !dbg !231
  %45 = sext i32 %44 to i64, !dbg !230
  call void @klee_assume(i64 noundef %45), !dbg !232
  %46 = load i32, i32* %10, align 4, !dbg !233
  %47 = icmp eq i32 %46, 2, !dbg !234
  %48 = zext i1 %47 to i32, !dbg !234
  %49 = sext i32 %48 to i64, !dbg !233
  call void @klee_assume(i64 noundef %49), !dbg !235
  store i32 256, i32* %6, align 4, !dbg !236
  %50 = load i32, i32* %6, align 4, !dbg !237
  %51 = sext i32 %50 to i64, !dbg !237
  %52 = call noalias i8* @malloc(i64 noundef %51) #9, !dbg !238
  store i8* %52, i8** %5, align 8, !dbg !239
  %53 = call noalias i8* @malloc(i64 noundef 512) #9, !dbg !240
  store i8* %53, i8** %11, align 8, !dbg !241
  %54 = load i8*, i8** %5, align 8, !dbg !242
  %55 = icmp eq i8* %54, null, !dbg !244
  br i1 %55, label %59, label %56, !dbg !245

56:                                               ; preds = %29
  %57 = load i8*, i8** %11, align 8, !dbg !246
  %58 = icmp eq i8* %57, null, !dbg !247
  br i1 %58, label %59, label %71, !dbg !248

59:                                               ; preds = %56, %29
  %60 = load i8*, i8** %5, align 8, !dbg !249
  %61 = icmp ne i8* %60, null, !dbg !249
  br i1 %61, label %62, label %64, !dbg !252

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8, !dbg !253
  call void @free(i8* noundef %63) #9, !dbg !254
  br label %64, !dbg !254

64:                                               ; preds = %62, %59
  %65 = load i8*, i8** %11, align 8, !dbg !255
  %66 = icmp ne i8* %65, null, !dbg !255
  br i1 %66, label %67, label %69, !dbg !257

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8, !dbg !258
  call void @free(i8* noundef %68) #9, !dbg !259
  br label %69, !dbg !259

69:                                               ; preds = %67, %64
  %70 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !260
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %70), !dbg !261
  store i32 0, i32* %1, align 4, !dbg !262
  br label %105, !dbg !262

71:                                               ; preds = %56
  %72 = load i8*, i8** %11, align 8, !dbg !263
  call void @klee_make_symbolic(i8* noundef %72, i64 noundef 512, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !264
  %73 = load i32, i32* %10, align 4, !dbg !265
  %74 = icmp eq i32 %73, 2, !dbg !267
  br i1 %74, label %75, label %101, !dbg !268

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4, !dbg !269
  %77 = load i32, i32* %8, align 4, !dbg !272
  %78 = icmp sge i32 %76, %77, !dbg !273
  br i1 %78, label %79, label %87, !dbg !274

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4, !dbg !275
  store i32 %80, i32* %9, align 4, !dbg !277
  store i32 0, i32* %8, align 4, !dbg !278
  %81 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !279
  %82 = load i8*, i8** %5, align 8, !dbg !280
  %83 = load i8*, i8** %11, align 8, !dbg !281
  %84 = load i32, i32* %9, align 4, !dbg !282
  %85 = sext i32 %84 to i64, !dbg !282
  %86 = call i8* @memcpy(i8* %82, i8* %83, i64 %85), !dbg !283
  store i32 3, i32* %10, align 4, !dbg !284
  store i32 0, i32* %7, align 4, !dbg !285
  br label %100, !dbg !286

87:                                               ; preds = %75
  %88 = load i8*, i8** %5, align 8, !dbg !287
  %89 = load i8*, i8** %11, align 8, !dbg !289
  %90 = load i32, i32* %9, align 4, !dbg !290
  %91 = sext i32 %90 to i64, !dbg !290
  %92 = call i8* @memcpy(i8* %88, i8* %89, i64 %91), !dbg !291
  %93 = load i32, i32* %9, align 4, !dbg !292
  %94 = load i32, i32* %8, align 4, !dbg !293
  %95 = sub nsw i32 %94, %93, !dbg !293
  store i32 %95, i32* %8, align 4, !dbg !293
  %96 = load i32, i32* %9, align 4, !dbg !294
  %97 = load i8*, i8** %11, align 8, !dbg !295
  %98 = sext i32 %96 to i64, !dbg !295
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !295
  store i8* %99, i8** %11, align 8, !dbg !295
  br label %100

100:                                              ; preds = %87, %79
  br label %101, !dbg !296

101:                                              ; preds = %100, %71
  %102 = load i8*, i8** %5, align 8, !dbg !297
  call void @free(i8* noundef %102) #9, !dbg !298
  %103 = load i8*, i8** %11, align 8, !dbg !299
  call void @free(i8* noundef %103) #9, !dbg !300
  %104 = load %struct._xmlDoc*, %struct._xmlDoc** %3, align 8, !dbg !301
  call void @xmlFreeDoc(%struct._xmlDoc* noundef %104), !dbg !302
  store i32 0, i32* %1, align 4, !dbg !303
  br label %105, !dbg !303

105:                                              ; preds = %101, %69, %27, %21
  %106 = load i32, i32* %1, align 4, !dbg !304
  ret i32 %106, !dbg !304
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlDoc* @xmlReadMemory(i8* noundef, i32 noundef, i8* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

declare %struct._xmlNode* @xmlDocGetRootElement(%struct._xmlDoc* noundef) #2

declare void @xmlFreeDoc(%struct._xmlDoc* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !305 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !314, metadata !DIExpression()), !dbg !315
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !316, metadata !DIExpression()), !dbg !317
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %7, metadata !320, metadata !DIExpression()), !dbg !321
  %9 = load i8*, i8** %4, align 8, !dbg !322
  store i8* %9, i8** %7, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i8** %8, metadata !323, metadata !DIExpression()), !dbg !326
  %10 = load i8*, i8** %5, align 8, !dbg !327
  store i8* %10, i8** %8, align 8, !dbg !326
  br label %11, !dbg !328

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !329
  %13 = add i64 %12, -1, !dbg !329
  store i64 %13, i64* %6, align 8, !dbg !329
  %14 = icmp ugt i64 %12, 0, !dbg !330
  br i1 %14, label %15, label %21, !dbg !328

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !331
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !331
  store i8* %17, i8** %8, align 8, !dbg !331
  %18 = load i8, i8* %16, align 1, !dbg !332
  %19 = load i8*, i8** %7, align 8, !dbg !333
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !333
  store i8* %20, i8** %7, align 8, !dbg !333
  store i8 %18, i8* %19, align 1, !dbg !334
  br label %11, !dbg !328, !llvm.loop !335

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !337
  ret i8* %22, !dbg !338
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57, !57}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/096_testlimits.c_197_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "c81644ac9131954511352a2f3b7b7da9")
!2 = !{!3, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 159, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/libxml2/libxml/tree.h", directory: "", checksumkind: CSK_MD5, checksum: "750bac4395c48684302094dba58dc4a1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!7 = !DIEnumerator(name: "XML_ELEMENT_NODE", value: 1)
!8 = !DIEnumerator(name: "XML_ATTRIBUTE_NODE", value: 2)
!9 = !DIEnumerator(name: "XML_TEXT_NODE", value: 3)
!10 = !DIEnumerator(name: "XML_CDATA_SECTION_NODE", value: 4)
!11 = !DIEnumerator(name: "XML_ENTITY_REF_NODE", value: 5)
!12 = !DIEnumerator(name: "XML_ENTITY_NODE", value: 6)
!13 = !DIEnumerator(name: "XML_PI_NODE", value: 7)
!14 = !DIEnumerator(name: "XML_COMMENT_NODE", value: 8)
!15 = !DIEnumerator(name: "XML_DOCUMENT_NODE", value: 9)
!16 = !DIEnumerator(name: "XML_DOCUMENT_TYPE_NODE", value: 10)
!17 = !DIEnumerator(name: "XML_DOCUMENT_FRAG_NODE", value: 11)
!18 = !DIEnumerator(name: "XML_NOTATION_NODE", value: 12)
!19 = !DIEnumerator(name: "XML_HTML_DOCUMENT_NODE", value: 13)
!20 = !DIEnumerator(name: "XML_DTD_NODE", value: 14)
!21 = !DIEnumerator(name: "XML_ELEMENT_DECL", value: 15)
!22 = !DIEnumerator(name: "XML_ATTRIBUTE_DECL", value: 16)
!23 = !DIEnumerator(name: "XML_ENTITY_DECL", value: 17)
!24 = !DIEnumerator(name: "XML_NAMESPACE_DECL", value: 18)
!25 = !DIEnumerator(name: "XML_XINCLUDE_START", value: 19)
!26 = !DIEnumerator(name: "XML_XINCLUDE_END", value: 20)
!27 = !DIEnumerator(name: "XML_DOCB_DOCUMENT_NODE", value: 21)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 206, baseType: !5, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!30 = !DIEnumerator(name: "XML_ATTRIBUTE_CDATA", value: 1)
!31 = !DIEnumerator(name: "XML_ATTRIBUTE_ID", value: 2)
!32 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREF", value: 3)
!33 = !DIEnumerator(name: "XML_ATTRIBUTE_IDREFS", value: 4)
!34 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITY", value: 5)
!35 = !DIEnumerator(name: "XML_ATTRIBUTE_ENTITIES", value: 6)
!36 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKEN", value: 7)
!37 = !DIEnumerator(name: "XML_ATTRIBUTE_NMTOKENS", value: 8)
!38 = !DIEnumerator(name: "XML_ATTRIBUTE_ENUMERATION", value: 9)
!39 = !DIEnumerator(name: "XML_ATTRIBUTE_NOTATION", value: 10)
!40 = !{!41, !42, !46}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !44, line: 28, baseType: !45)
!44 = !DIFile(filename: "/usr/include/libxml2/libxml/xmlstring.h", directory: "", checksumkind: CSK_MD5, checksum: "82efb8a055d5fc8eb7d815ed471eca53")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"PIC Level", i32 2}
!54 = !{i32 7, !"PIE Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"Ubuntu clang version 14.0.6"}
!58 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !59, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !62)
!59 = !DISubroutineType(types: !60)
!60 = !{!61}
!61 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!62 = !{}
!63 = !DILocalVariable(name: "input", scope: !58, file: !1, line: 8, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1024)
!67 = !DILocation(line: 8, column: 10, scope: !58)
!68 = !DILocation(line: 9, column: 24, scope: !58)
!69 = !DILocation(line: 9, column: 5, scope: !58)
!70 = !DILocation(line: 10, column: 5, scope: !58)
!71 = !DILocation(line: 10, column: 28, scope: !58)
!72 = !DILocalVariable(name: "doc", scope: !58, file: !1, line: 12, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDocPtr", file: !4, line: 558, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !4, line: 557, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !4, line: 559, size: 1408, elements: !77)
!77 = !{!78, !79, !81, !82, !134, !135, !136, !137, !138, !139, !140, !141, !161, !162, !163, !164, !165, !166, !167, !168, !169, !173, !174, !175}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !76, file: !4, line: 560, baseType: !41, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !4, line: 561, baseType: !80, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementType", file: !4, line: 183, baseType: !3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !76, file: !4, line: 562, baseType: !46, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !76, file: !4, line: 563, baseType: !83, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !4, line: 492, size: 960, elements: !85)
!85 = !{!86, !87, !88, !91, !92, !93, !94, !95, !96, !98, !111, !112, !129, !130, !131, !133}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !84, file: !4, line: 493, baseType: !41, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !4, line: 494, baseType: !80, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !4, line: 495, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !84, file: !4, line: 496, baseType: !83, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !84, file: !4, line: 497, baseType: !83, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !84, file: !4, line: 498, baseType: !83, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !84, file: !4, line: 499, baseType: !83, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !84, file: !4, line: 500, baseType: !83, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !84, file: !4, line: 501, baseType: !97, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !84, file: !4, line: 504, baseType: !99, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !4, line: 386, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !4, line: 388, size: 384, elements: !102)
!102 = !{!103, !105, !107, !108, !109, !110}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !101, file: !4, line: 389, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !4, line: 390, baseType: !106, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsType", file: !4, line: 374, baseType: !80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !101, file: !4, line: 391, baseType: !89, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !101, file: !4, line: 392, baseType: !89, size: 64, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !101, file: !4, line: 393, baseType: !41, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !101, file: !4, line: 394, baseType: !97, size: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !84, file: !4, line: 505, baseType: !42, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !84, file: !4, line: 506, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !4, line: 433, size: 768, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !128}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !114, file: !4, line: 434, baseType: !41, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !4, line: 435, baseType: !80, size: 32, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !114, file: !4, line: 436, baseType: !89, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !114, file: !4, line: 437, baseType: !83, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !114, file: !4, line: 438, baseType: !83, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !4, line: 439, baseType: !83, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !4, line: 440, baseType: !113, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !4, line: 441, baseType: !113, size: 64, offset: 448)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !114, file: !4, line: 442, baseType: !97, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !114, file: !4, line: 443, baseType: !99, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !114, file: !4, line: 444, baseType: !127, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttributeType", file: !4, line: 217, baseType: !28)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !114, file: !4, line: 445, baseType: !41, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !84, file: !4, line: 507, baseType: !99, size: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !84, file: !4, line: 508, baseType: !41, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !84, file: !4, line: 509, baseType: !132, size: 16, offset: 896)
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !84, file: !4, line: 510, baseType: !132, size: 16, offset: 912)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !76, file: !4, line: 564, baseType: !83, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !76, file: !4, line: 565, baseType: !83, size: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !4, line: 566, baseType: !83, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !76, file: !4, line: 567, baseType: !83, size: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !76, file: !4, line: 568, baseType: !97, size: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !76, file: !4, line: 571, baseType: !61, size: 32, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "standalone", scope: !76, file: !4, line: 572, baseType: !61, size: 32, offset: 608)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "intSubset", scope: !76, file: !4, line: 578, baseType: !142, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDtd", file: !4, line: 405, size: 1024, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !143, file: !4, line: 406, baseType: !41, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !4, line: 407, baseType: !80, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !4, line: 408, baseType: !89, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !143, file: !4, line: 409, baseType: !83, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !143, file: !4, line: 410, baseType: !83, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !4, line: 411, baseType: !97, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !143, file: !4, line: 412, baseType: !83, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !143, file: !4, line: 413, baseType: !83, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !143, file: !4, line: 414, baseType: !97, size: 64, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "notations", scope: !143, file: !4, line: 417, baseType: !41, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !143, file: !4, line: 418, baseType: !41, size: 64, offset: 640)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !143, file: !4, line: 419, baseType: !41, size: 64, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "entities", scope: !143, file: !4, line: 420, baseType: !41, size: 64, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ExternalID", scope: !143, file: !4, line: 421, baseType: !89, size: 64, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "SystemID", scope: !143, file: !4, line: 422, baseType: !89, size: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pentities", scope: !143, file: !4, line: 423, baseType: !41, size: 64, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "extSubset", scope: !76, file: !4, line: 579, baseType: !142, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "oldNs", scope: !76, file: !4, line: 580, baseType: !104, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !76, file: !4, line: 581, baseType: !89, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !76, file: !4, line: 582, baseType: !89, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !76, file: !4, line: 583, baseType: !41, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !76, file: !4, line: 584, baseType: !41, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "URL", scope: !76, file: !4, line: 585, baseType: !89, size: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !76, file: !4, line: 586, baseType: !61, size: 32, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !76, file: !4, line: 588, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !172, line: 24, flags: DIFlagFwdDecl)
!172 = !DIFile(filename: "/usr/include/libxml2/libxml/dict.h", directory: "", checksumkind: CSK_MD5, checksum: "a48513ceb9774ebece2daa8a2cd52f07")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "psvi", scope: !76, file: !4, line: 589, baseType: !41, size: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parseFlags", scope: !76, file: !4, line: 590, baseType: !61, size: 32, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !76, file: !4, line: 592, baseType: !61, size: 32, offset: 1376)
!176 = !DILocation(line: 12, column: 15, scope: !58)
!177 = !DILocation(line: 12, column: 35, scope: !58)
!178 = !DILocation(line: 12, column: 49, scope: !58)
!179 = !DILocation(line: 12, column: 42, scope: !58)
!180 = !DILocation(line: 12, column: 21, scope: !58)
!181 = !DILocation(line: 13, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !58, file: !1, line: 13, column: 9)
!183 = !DILocation(line: 13, column: 13, scope: !182)
!184 = !DILocation(line: 13, column: 9, scope: !58)
!185 = !DILocation(line: 14, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 13, column: 22)
!187 = !DILocalVariable(name: "root", scope: !58, file: !1, line: 17, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !4, line: 491, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !4, line: 490, baseType: !84)
!191 = !DILocation(line: 17, column: 16, scope: !58)
!192 = !DILocation(line: 17, column: 44, scope: !58)
!193 = !DILocation(line: 17, column: 23, scope: !58)
!194 = !DILocation(line: 18, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !58, file: !1, line: 18, column: 9)
!196 = !DILocation(line: 18, column: 14, scope: !195)
!197 = !DILocation(line: 18, column: 9, scope: !58)
!198 = !DILocation(line: 19, column: 20, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 18, column: 23)
!200 = !DILocation(line: 19, column: 9, scope: !199)
!201 = !DILocation(line: 20, column: 9, scope: !199)
!202 = !DILocalVariable(name: "buffer", scope: !58, file: !1, line: 23, type: !42)
!203 = !DILocation(line: 23, column: 14, scope: !58)
!204 = !DILocalVariable(name: "buffer_size", scope: !58, file: !1, line: 24, type: !61)
!205 = !DILocation(line: 24, column: 9, scope: !58)
!206 = !DILocalVariable(name: "curlen", scope: !58, file: !1, line: 25, type: !61)
!207 = !DILocation(line: 25, column: 9, scope: !58)
!208 = !DILocalVariable(name: "rlen", scope: !58, file: !1, line: 26, type: !61)
!209 = !DILocation(line: 26, column: 9, scope: !58)
!210 = !DILocalVariable(name: "len", scope: !58, file: !1, line: 27, type: !61)
!211 = !DILocation(line: 27, column: 9, scope: !58)
!212 = !DILocalVariable(name: "instate", scope: !58, file: !1, line: 28, type: !61)
!213 = !DILocation(line: 28, column: 9, scope: !58)
!214 = !DILocalVariable(name: "current", scope: !58, file: !1, line: 29, type: !46)
!215 = !DILocation(line: 29, column: 11, scope: !58)
!216 = !DILocation(line: 31, column: 24, scope: !58)
!217 = !DILocation(line: 31, column: 5, scope: !58)
!218 = !DILocation(line: 32, column: 24, scope: !58)
!219 = !DILocation(line: 32, column: 5, scope: !58)
!220 = !DILocation(line: 33, column: 24, scope: !58)
!221 = !DILocation(line: 33, column: 5, scope: !58)
!222 = !DILocation(line: 34, column: 24, scope: !58)
!223 = !DILocation(line: 34, column: 5, scope: !58)
!224 = !DILocation(line: 36, column: 17, scope: !58)
!225 = !DILocation(line: 36, column: 24, scope: !58)
!226 = !DILocation(line: 36, column: 5, scope: !58)
!227 = !DILocation(line: 37, column: 17, scope: !58)
!228 = !DILocation(line: 37, column: 22, scope: !58)
!229 = !DILocation(line: 37, column: 5, scope: !58)
!230 = !DILocation(line: 38, column: 17, scope: !58)
!231 = !DILocation(line: 38, column: 21, scope: !58)
!232 = !DILocation(line: 38, column: 5, scope: !58)
!233 = !DILocation(line: 39, column: 17, scope: !58)
!234 = !DILocation(line: 39, column: 25, scope: !58)
!235 = !DILocation(line: 39, column: 5, scope: !58)
!236 = !DILocation(line: 41, column: 17, scope: !58)
!237 = !DILocation(line: 42, column: 32, scope: !58)
!238 = !DILocation(line: 42, column: 25, scope: !58)
!239 = !DILocation(line: 42, column: 12, scope: !58)
!240 = !DILocation(line: 43, column: 23, scope: !58)
!241 = !DILocation(line: 43, column: 13, scope: !58)
!242 = !DILocation(line: 45, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !58, file: !1, line: 45, column: 9)
!244 = !DILocation(line: 45, column: 16, scope: !243)
!245 = !DILocation(line: 45, column: 24, scope: !243)
!246 = !DILocation(line: 45, column: 27, scope: !243)
!247 = !DILocation(line: 45, column: 35, scope: !243)
!248 = !DILocation(line: 45, column: 9, scope: !58)
!249 = !DILocation(line: 46, column: 13, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 46, column: 13)
!251 = distinct !DILexicalBlock(scope: !243, file: !1, line: 45, column: 44)
!252 = !DILocation(line: 46, column: 13, scope: !251)
!253 = !DILocation(line: 46, column: 26, scope: !250)
!254 = !DILocation(line: 46, column: 21, scope: !250)
!255 = !DILocation(line: 47, column: 13, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 47, column: 13)
!257 = !DILocation(line: 47, column: 13, scope: !251)
!258 = !DILocation(line: 47, column: 27, scope: !256)
!259 = !DILocation(line: 47, column: 22, scope: !256)
!260 = !DILocation(line: 48, column: 20, scope: !251)
!261 = !DILocation(line: 48, column: 9, scope: !251)
!262 = !DILocation(line: 49, column: 9, scope: !251)
!263 = !DILocation(line: 52, column: 24, scope: !58)
!264 = !DILocation(line: 52, column: 5, scope: !58)
!265 = !DILocation(line: 54, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !58, file: !1, line: 54, column: 9)
!267 = !DILocation(line: 54, column: 17, scope: !266)
!268 = !DILocation(line: 54, column: 9, scope: !58)
!269 = !DILocation(line: 55, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 55, column: 13)
!271 = distinct !DILexicalBlock(scope: !266, file: !1, line: 54, column: 23)
!272 = !DILocation(line: 55, column: 20, scope: !270)
!273 = !DILocation(line: 55, column: 17, scope: !270)
!274 = !DILocation(line: 55, column: 13, scope: !271)
!275 = !DILocation(line: 56, column: 19, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 55, column: 26)
!277 = !DILocation(line: 56, column: 17, scope: !276)
!278 = !DILocation(line: 57, column: 18, scope: !276)
!279 = !DILocation(line: 58, column: 13, scope: !276)
!280 = !DILocation(line: 59, column: 20, scope: !276)
!281 = !DILocation(line: 59, column: 28, scope: !276)
!282 = !DILocation(line: 59, column: 37, scope: !276)
!283 = !DILocation(line: 59, column: 13, scope: !276)
!284 = !DILocation(line: 60, column: 21, scope: !276)
!285 = !DILocation(line: 61, column: 20, scope: !276)
!286 = !DILocation(line: 62, column: 9, scope: !276)
!287 = !DILocation(line: 63, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !270, file: !1, line: 62, column: 16)
!289 = !DILocation(line: 63, column: 28, scope: !288)
!290 = !DILocation(line: 63, column: 37, scope: !288)
!291 = !DILocation(line: 63, column: 13, scope: !288)
!292 = !DILocation(line: 64, column: 21, scope: !288)
!293 = !DILocation(line: 64, column: 18, scope: !288)
!294 = !DILocation(line: 65, column: 24, scope: !288)
!295 = !DILocation(line: 65, column: 21, scope: !288)
!296 = !DILocation(line: 67, column: 5, scope: !271)
!297 = !DILocation(line: 69, column: 10, scope: !58)
!298 = !DILocation(line: 69, column: 5, scope: !58)
!299 = !DILocation(line: 70, column: 10, scope: !58)
!300 = !DILocation(line: 70, column: 5, scope: !58)
!301 = !DILocation(line: 71, column: 16, scope: !58)
!302 = !DILocation(line: 71, column: 5, scope: !58)
!303 = !DILocation(line: 72, column: 5, scope: !58)
!304 = !DILocation(line: 73, column: 1, scope: !58)
!305 = distinct !DISubprogram(name: "memcpy", scope: !306, file: !306, line: 12, type: !307, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !62)
!306 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!307 = !DISubroutineType(types: !308)
!308 = !{!41, !41, !309, !311}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !312, line: 46, baseType: !313)
!312 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!313 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DILocalVariable(name: "destaddr", arg: 1, scope: !305, file: !306, line: 12, type: !41)
!315 = !DILocation(line: 12, column: 20, scope: !305)
!316 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !305, file: !306, line: 12, type: !309)
!317 = !DILocation(line: 12, column: 42, scope: !305)
!318 = !DILocalVariable(name: "len", arg: 3, scope: !305, file: !306, line: 12, type: !311)
!319 = !DILocation(line: 12, column: 58, scope: !305)
!320 = !DILocalVariable(name: "dest", scope: !305, file: !306, line: 13, type: !46)
!321 = !DILocation(line: 13, column: 9, scope: !305)
!322 = !DILocation(line: 13, column: 16, scope: !305)
!323 = !DILocalVariable(name: "src", scope: !305, file: !306, line: 14, type: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!326 = !DILocation(line: 14, column: 15, scope: !305)
!327 = !DILocation(line: 14, column: 21, scope: !305)
!328 = !DILocation(line: 16, column: 3, scope: !305)
!329 = !DILocation(line: 16, column: 13, scope: !305)
!330 = !DILocation(line: 16, column: 16, scope: !305)
!331 = !DILocation(line: 17, column: 19, scope: !305)
!332 = !DILocation(line: 17, column: 15, scope: !305)
!333 = !DILocation(line: 17, column: 10, scope: !305)
!334 = !DILocation(line: 17, column: 13, scope: !305)
!335 = distinct !{!335, !328, !331, !336}
!336 = !{!"llvm.loop.mustprogress"}
!337 = !DILocation(line: 18, column: 10, scope: !305)
!338 = !DILocation(line: 18, column: 3, scope: !305)
