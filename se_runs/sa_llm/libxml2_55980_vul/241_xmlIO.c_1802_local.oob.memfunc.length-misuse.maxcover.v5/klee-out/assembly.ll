; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/241_xmlIO.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/241_xmlIO.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlIOHTTPWriteCtxt = type { i8* }

@.str = private unnamed_addr constant [29 x i8] c"creating HTTP output context\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"copying URI\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"post_uri\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/241_xmlIO.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlIOErrMemory(i8* noundef %0) #0 !dbg !23 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i64, i64* %2, align 8, !dbg !40
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  %6 = load i8*, i8** %3, align 8, !dbg !48
  %7 = icmp eq i8* %6, null, !dbg !50
  br i1 %7, label %8, label %9, !dbg !51

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !52
  br label %24, !dbg !52

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !53, metadata !DIExpression()), !dbg !54
  %10 = load i8*, i8** %3, align 8, !dbg !55
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !56
  %12 = add i64 %11, 1, !dbg !57
  store i64 %12, i64* %4, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i8** %5, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = load i64, i64* %4, align 8, !dbg !60
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !61
  store i8* %14, i8** %5, align 8, !dbg !59
  %15 = load i8*, i8** %5, align 8, !dbg !62
  %16 = icmp ne i8* %15, null, !dbg !62
  br i1 %16, label %17, label %22, !dbg !64

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !65
  %19 = load i8*, i8** %3, align 8, !dbg !66
  %20 = load i64, i64* %4, align 8, !dbg !67
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !68
  br label %22, !dbg !68

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !69
  store i8* %23, i8** %2, align 8, !dbg !70
  br label %24, !dbg !70

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !71
  ret i8* %25, !dbg !71
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeHTTPWriteCtxt(%struct._xmlIOHTTPWriteCtxt* noundef %0) #0 !dbg !72 {
  %2 = alloca %struct._xmlIOHTTPWriteCtxt*, align 8
  store %struct._xmlIOHTTPWriteCtxt* %0, %struct._xmlIOHTTPWriteCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlIOHTTPWriteCtxt** %2, metadata !75, metadata !DIExpression()), !dbg !76
  %3 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %2, align 8, !dbg !77
  %4 = icmp ne %struct._xmlIOHTTPWriteCtxt* %3, null, !dbg !77
  br i1 %4, label %5, label %11, !dbg !79

5:                                                ; preds = %1
  %6 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %2, align 8, !dbg !80
  %7 = getelementptr inbounds %struct._xmlIOHTTPWriteCtxt, %struct._xmlIOHTTPWriteCtxt* %6, i32 0, i32 0, !dbg !82
  %8 = load i8*, i8** %7, align 8, !dbg !82
  call void @free(i8* noundef %8) #9, !dbg !83
  %9 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %2, align 8, !dbg !84
  %10 = bitcast %struct._xmlIOHTTPWriteCtxt* %9 to i8*, !dbg !84
  call void @free(i8* noundef %10) #9, !dbg !85
  br label %11, !dbg !86

11:                                               ; preds = %5, %1
  ret void, !dbg !87
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlIOHTTPWriteOpenInternal(i8* noundef %0) #0 !dbg !88 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlIOHTTPWriteCtxt*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlIOHTTPWriteCtxt** %4, metadata !93, metadata !DIExpression()), !dbg !94
  %5 = call i8* @xmlMalloc(i64 noundef 8), !dbg !95
  %6 = bitcast i8* %5 to %struct._xmlIOHTTPWriteCtxt*, !dbg !95
  store %struct._xmlIOHTTPWriteCtxt* %6, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !96
  %7 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !97
  %8 = icmp eq %struct._xmlIOHTTPWriteCtxt* %7, null, !dbg !99
  br i1 %8, label %9, label %10, !dbg !100

9:                                                ; preds = %1
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0)), !dbg !101
  store i8* null, i8** %2, align 8, !dbg !103
  br label %27, !dbg !103

10:                                               ; preds = %1
  %11 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !104
  %12 = bitcast %struct._xmlIOHTTPWriteCtxt* %11 to i8*, !dbg !105
  %13 = call i8* @memset(i8* %12, i32 0, i64 8), !dbg !105
  %14 = load i8*, i8** %3, align 8, !dbg !106
  %15 = call i8* @xmlStrdup(i8* noundef %14), !dbg !107
  %16 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !108
  %17 = getelementptr inbounds %struct._xmlIOHTTPWriteCtxt, %struct._xmlIOHTTPWriteCtxt* %16, i32 0, i32 0, !dbg !109
  store i8* %15, i8** %17, align 8, !dbg !110
  %18 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !111
  %19 = getelementptr inbounds %struct._xmlIOHTTPWriteCtxt, %struct._xmlIOHTTPWriteCtxt* %18, i32 0, i32 0, !dbg !113
  %20 = load i8*, i8** %19, align 8, !dbg !113
  %21 = icmp eq i8* %20, null, !dbg !114
  br i1 %21, label %22, label %24, !dbg !115

22:                                               ; preds = %10
  call void @xmlIOErrMemory(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !116
  %23 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !118
  call void @xmlFreeHTTPWriteCtxt(%struct._xmlIOHTTPWriteCtxt* noundef %23), !dbg !119
  store i8* null, i8** %2, align 8, !dbg !120
  br label %27, !dbg !120

24:                                               ; preds = %10
  %25 = load %struct._xmlIOHTTPWriteCtxt*, %struct._xmlIOHTTPWriteCtxt** %4, align 8, !dbg !121
  %26 = bitcast %struct._xmlIOHTTPWriteCtxt* %25 to i8*, !dbg !121
  store i8* %26, i8** %2, align 8, !dbg !122
  br label %27, !dbg !122

27:                                               ; preds = %24, %22, %9
  %28 = load i8*, i8** %2, align 8, !dbg !123
  ret i8* %28, !dbg !123
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !124 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !128, metadata !DIExpression()), !dbg !132
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !133
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !134
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !135
  %6 = load i8, i8* %5, align 1, !dbg !135
  %7 = sext i8 %6 to i32, !dbg !135
  %8 = icmp eq i32 %7, 0, !dbg !136
  %9 = zext i1 %8 to i32, !dbg !136
  %10 = sext i32 %9 to i64, !dbg !135
  call void @klee_assume(i64 noundef %10), !dbg !137
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !DIExpression()), !dbg !139
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !140
  %12 = call i8* @xmlIOHTTPWriteOpenInternal(i8* noundef %11), !dbg !141
  store i8* %12, i8** %3, align 8, !dbg !139
  %13 = load i8*, i8** %3, align 8, !dbg !142
  %14 = icmp ne i8* %13, null, !dbg !144
  br i1 %14, label %15, label %19, !dbg !145

15:                                               ; preds = %0
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !146
  %17 = load i8*, i8** %3, align 8, !dbg !148
  %18 = bitcast i8* %17 to %struct._xmlIOHTTPWriteCtxt*, !dbg !149
  call void @xmlFreeHTTPWriteCtxt(%struct._xmlIOHTTPWriteCtxt* noundef %18), !dbg !150
  br label %19, !dbg !151

19:                                               ; preds = %15, %0
  ret i32 0, !dbg !152
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !153 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !159, metadata !DIExpression()), !dbg !160
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !161, metadata !DIExpression()), !dbg !162
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i8** %7, metadata !165, metadata !DIExpression()), !dbg !166
  %9 = load i8*, i8** %4, align 8, !dbg !167
  store i8* %9, i8** %7, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata i8** %8, metadata !168, metadata !DIExpression()), !dbg !169
  %10 = load i8*, i8** %5, align 8, !dbg !170
  store i8* %10, i8** %8, align 8, !dbg !169
  br label %11, !dbg !171

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !172
  %13 = add i64 %12, -1, !dbg !172
  store i64 %13, i64* %6, align 8, !dbg !172
  %14 = icmp ugt i64 %12, 0, !dbg !173
  br i1 %14, label %15, label %21, !dbg !171

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !174
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !174
  store i8* %17, i8** %8, align 8, !dbg !174
  %18 = load i8, i8* %16, align 1, !dbg !175
  %19 = load i8*, i8** %7, align 8, !dbg !176
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !176
  store i8* %20, i8** %7, align 8, !dbg !176
  store i8 %18, i8* %19, align 1, !dbg !177
  br label %11, !dbg !171, !llvm.loop !178

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %22, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !193
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
  %19 = load i8*, i8** %4, align 8, !dbg !202
  ret i8* %19, !dbg !203
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/241_xmlIO.c_1802_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8d0bd3b66e1889788cf550c86c2031ff")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlIOHTTPWriteCtxt", file: !1, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlIOHTTPWriteCtxt", file: !1, line: 11, size: 64, elements: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !8, file: !1, line: 12, baseType: !4, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlIOErrMemory", scope: !1, file: !1, line: 22, type: !24, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!28 = !{}
!29 = !DILocalVariable(name: "msg", arg: 1, scope: !23, file: !1, line: 22, type: !26)
!30 = !DILocation(line: 22, column: 33, scope: !23)
!31 = !DILocation(line: 24, column: 1, scope: !23)
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 26, type: !33, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!33 = !DISubroutineType(types: !34)
!34 = !{!3, !35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 26, type: !35)
!39 = !DILocation(line: 26, column: 24, scope: !32)
!40 = !DILocation(line: 27, column: 19, scope: !32)
!41 = !DILocation(line: 27, column: 12, scope: !32)
!42 = !DILocation(line: 27, column: 5, scope: !32)
!43 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 30, type: !44, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!44 = !DISubroutineType(types: !45)
!45 = !{!4, !26}
!46 = !DILocalVariable(name: "cur", arg: 1, scope: !43, file: !1, line: 30, type: !26)
!47 = !DILocation(line: 30, column: 29, scope: !43)
!48 = !DILocation(line: 31, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 31, column: 9)
!50 = !DILocation(line: 31, column: 13, scope: !49)
!51 = !DILocation(line: 31, column: 9, scope: !43)
!52 = !DILocation(line: 31, column: 22, scope: !49)
!53 = !DILocalVariable(name: "len", scope: !43, file: !1, line: 32, type: !35)
!54 = !DILocation(line: 32, column: 12, scope: !43)
!55 = !DILocation(line: 32, column: 25, scope: !43)
!56 = !DILocation(line: 32, column: 18, scope: !43)
!57 = !DILocation(line: 32, column: 30, scope: !43)
!58 = !DILocalVariable(name: "copy", scope: !43, file: !1, line: 33, type: !4)
!59 = !DILocation(line: 33, column: 11, scope: !43)
!60 = !DILocation(line: 33, column: 33, scope: !43)
!61 = !DILocation(line: 33, column: 26, scope: !43)
!62 = !DILocation(line: 34, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !43, file: !1, line: 34, column: 9)
!64 = !DILocation(line: 34, column: 9, scope: !43)
!65 = !DILocation(line: 34, column: 22, scope: !63)
!66 = !DILocation(line: 34, column: 28, scope: !63)
!67 = !DILocation(line: 34, column: 33, scope: !63)
!68 = !DILocation(line: 34, column: 15, scope: !63)
!69 = !DILocation(line: 35, column: 12, scope: !43)
!70 = !DILocation(line: 35, column: 5, scope: !43)
!71 = !DILocation(line: 36, column: 1, scope: !43)
!72 = distinct !DISubprogram(name: "xmlFreeHTTPWriteCtxt", scope: !1, file: !1, line: 38, type: !73, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !6}
!75 = !DILocalVariable(name: "ctxt", arg: 1, scope: !72, file: !1, line: 38, type: !6)
!76 = !DILocation(line: 38, column: 47, scope: !72)
!77 = !DILocation(line: 39, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 39, column: 9)
!79 = !DILocation(line: 39, column: 9, scope: !72)
!80 = !DILocation(line: 40, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 39, column: 15)
!82 = !DILocation(line: 40, column: 20, scope: !81)
!83 = !DILocation(line: 40, column: 9, scope: !81)
!84 = !DILocation(line: 41, column: 14, scope: !81)
!85 = !DILocation(line: 41, column: 9, scope: !81)
!86 = !DILocation(line: 42, column: 5, scope: !81)
!87 = !DILocation(line: 43, column: 1, scope: !72)
!88 = distinct !DISubprogram(name: "xmlIOHTTPWriteOpenInternal", scope: !1, file: !1, line: 46, type: !89, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!89 = !DISubroutineType(types: !90)
!90 = !{!3, !26}
!91 = !DILocalVariable(name: "post_uri", arg: 1, scope: !88, file: !1, line: 46, type: !26)
!92 = !DILocation(line: 46, column: 46, scope: !88)
!93 = !DILocalVariable(name: "ctxt", scope: !88, file: !1, line: 47, type: !6)
!94 = !DILocation(line: 47, column: 25, scope: !88)
!95 = !DILocation(line: 49, column: 12, scope: !88)
!96 = !DILocation(line: 49, column: 10, scope: !88)
!97 = !DILocation(line: 50, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !88, file: !1, line: 50, column: 9)
!99 = !DILocation(line: 50, column: 14, scope: !98)
!100 = !DILocation(line: 50, column: 9, scope: !88)
!101 = !DILocation(line: 51, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 50, column: 23)
!103 = !DILocation(line: 52, column: 9, scope: !102)
!104 = !DILocation(line: 56, column: 19, scope: !88)
!105 = !DILocation(line: 56, column: 12, scope: !88)
!106 = !DILocation(line: 58, column: 36, scope: !88)
!107 = !DILocation(line: 58, column: 26, scope: !88)
!108 = !DILocation(line: 58, column: 5, scope: !88)
!109 = !DILocation(line: 58, column: 11, scope: !88)
!110 = !DILocation(line: 58, column: 15, scope: !88)
!111 = !DILocation(line: 59, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !88, file: !1, line: 59, column: 9)
!113 = !DILocation(line: 59, column: 15, scope: !112)
!114 = !DILocation(line: 59, column: 19, scope: !112)
!115 = !DILocation(line: 59, column: 9, scope: !88)
!116 = !DILocation(line: 60, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 59, column: 28)
!118 = !DILocation(line: 61, column: 30, scope: !117)
!119 = !DILocation(line: 61, column: 9, scope: !117)
!120 = !DILocation(line: 62, column: 9, scope: !117)
!121 = !DILocation(line: 65, column: 12, scope: !88)
!122 = !DILocation(line: 65, column: 5, scope: !88)
!123 = !DILocation(line: 66, column: 1, scope: !88)
!124 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !125, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!125 = !DISubroutineType(types: !126)
!126 = !{!127}
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DILocalVariable(name: "post_uri", scope: !124, file: !1, line: 70, type: !129)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 256)
!132 = !DILocation(line: 70, column: 10, scope: !124)
!133 = !DILocation(line: 71, column: 24, scope: !124)
!134 = !DILocation(line: 71, column: 5, scope: !124)
!135 = !DILocation(line: 74, column: 17, scope: !124)
!136 = !DILocation(line: 74, column: 31, scope: !124)
!137 = !DILocation(line: 74, column: 5, scope: !124)
!138 = !DILocalVariable(name: "result", scope: !124, file: !1, line: 77, type: !3)
!139 = !DILocation(line: 77, column: 11, scope: !124)
!140 = !DILocation(line: 77, column: 47, scope: !124)
!141 = !DILocation(line: 77, column: 20, scope: !124)
!142 = !DILocation(line: 89, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !124, file: !1, line: 89, column: 9)
!144 = !DILocation(line: 89, column: 16, scope: !143)
!145 = !DILocation(line: 89, column: 9, scope: !124)
!146 = !DILocation(line: 94, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 89, column: 25)
!148 = !DILocation(line: 97, column: 52, scope: !147)
!149 = !DILocation(line: 97, column: 30, scope: !147)
!150 = !DILocation(line: 97, column: 9, scope: !147)
!151 = !DILocation(line: 98, column: 5, scope: !147)
!152 = !DILocation(line: 100, column: 5, scope: !124)
!153 = distinct !DISubprogram(name: "memcpy", scope: !154, file: !154, line: 12, type: !155, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !28)
!154 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!155 = !DISubroutineType(types: !156)
!156 = !{!3, !3, !157, !35}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!159 = !DILocalVariable(name: "destaddr", arg: 1, scope: !153, file: !154, line: 12, type: !3)
!160 = !DILocation(line: 12, column: 20, scope: !153)
!161 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !153, file: !154, line: 12, type: !157)
!162 = !DILocation(line: 12, column: 42, scope: !153)
!163 = !DILocalVariable(name: "len", arg: 3, scope: !153, file: !154, line: 12, type: !35)
!164 = !DILocation(line: 12, column: 58, scope: !153)
!165 = !DILocalVariable(name: "dest", scope: !153, file: !154, line: 13, type: !4)
!166 = !DILocation(line: 13, column: 9, scope: !153)
!167 = !DILocation(line: 13, column: 16, scope: !153)
!168 = !DILocalVariable(name: "src", scope: !153, file: !154, line: 14, type: !26)
!169 = !DILocation(line: 14, column: 15, scope: !153)
!170 = !DILocation(line: 14, column: 21, scope: !153)
!171 = !DILocation(line: 16, column: 3, scope: !153)
!172 = !DILocation(line: 16, column: 13, scope: !153)
!173 = !DILocation(line: 16, column: 16, scope: !153)
!174 = !DILocation(line: 17, column: 19, scope: !153)
!175 = !DILocation(line: 17, column: 15, scope: !153)
!176 = !DILocation(line: 17, column: 10, scope: !153)
!177 = !DILocation(line: 17, column: 13, scope: !153)
!178 = distinct !{!178, !171, !174, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !DILocation(line: 18, column: 10, scope: !153)
!181 = !DILocation(line: 18, column: 3, scope: !153)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!3, !3, !127, !35}
!186 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !3)
!187 = !DILocation(line: 12, column: 20, scope: !182)
!188 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !127)
!189 = !DILocation(line: 12, column: 29, scope: !182)
!190 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !35)
!191 = !DILocation(line: 12, column: 39, scope: !182)
!192 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !4)
!193 = !DILocation(line: 13, column: 9, scope: !182)
!194 = !DILocation(line: 13, column: 13, scope: !182)
!195 = !DILocation(line: 14, column: 3, scope: !182)
!196 = !DILocation(line: 14, column: 15, scope: !182)
!197 = !DILocation(line: 14, column: 18, scope: !182)
!198 = !DILocation(line: 15, column: 12, scope: !182)
!199 = !DILocation(line: 15, column: 7, scope: !182)
!200 = !DILocation(line: 15, column: 10, scope: !182)
!201 = distinct !{!201, !195, !198, !179}
!202 = !DILocation(line: 16, column: 10, scope: !182)
!203 = !DILocation(line: 16, column: 3, scope: !182)
