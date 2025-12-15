; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/120_xmlmodule.c_90_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/120_xmlmodule.c_90_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlModule = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creating module\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"(sizeof(xmlModule) > 0 && module != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/120_xmlmodule.c_90_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlModuleOpen = private unnamed_addr constant [41 x i8] c"xmlModulePtr xmlModuleOpen(const char *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlModuleErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
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
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i8*, i8** %2, align 8, !dbg !48
  call void @free(i8* noundef %3) #7, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlModulePlatformOpen(i8* noundef %0) #0 !dbg !51 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %3, metadata !56, metadata !DIExpression()), !dbg !57
  %4 = bitcast i8** %3 to i8*, !dbg !58
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !59
  %5 = load i8*, i8** %3, align 8, !dbg !60
  ret i8* %5, !dbg !61
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__xmlRaiseError(i8* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i8* noundef %8, i32 noundef %9, i32 noundef %10, i8* noundef %11, i8* noundef %12, i32 noundef %13, i32 noundef %14, i8* noundef %15, ...) #0 !dbg !62 {
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  store i8* %0, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %18, align 8
  call void @llvm.dbg.declare(metadata i8** %18, metadata !68, metadata !DIExpression()), !dbg !69
  store i8* %2, i8** %19, align 8
  call void @llvm.dbg.declare(metadata i8** %19, metadata !70, metadata !DIExpression()), !dbg !71
  store i8* %3, i8** %20, align 8
  call void @llvm.dbg.declare(metadata i8** %20, metadata !72, metadata !DIExpression()), !dbg !73
  store i8* %4, i8** %21, align 8
  call void @llvm.dbg.declare(metadata i8** %21, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 %5, i32* %22, align 4
  call void @llvm.dbg.declare(metadata i32* %22, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %6, i32* %23, align 4
  call void @llvm.dbg.declare(metadata i32* %23, metadata !78, metadata !DIExpression()), !dbg !79
  store i32 %7, i32* %24, align 4
  call void @llvm.dbg.declare(metadata i32* %24, metadata !80, metadata !DIExpression()), !dbg !81
  store i8* %8, i8** %25, align 8
  call void @llvm.dbg.declare(metadata i8** %25, metadata !82, metadata !DIExpression()), !dbg !83
  store i32 %9, i32* %26, align 4
  call void @llvm.dbg.declare(metadata i32* %26, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 %10, i32* %27, align 4
  call void @llvm.dbg.declare(metadata i32* %27, metadata !86, metadata !DIExpression()), !dbg !87
  store i8* %11, i8** %28, align 8
  call void @llvm.dbg.declare(metadata i8** %28, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %12, i8** %29, align 8
  call void @llvm.dbg.declare(metadata i8** %29, metadata !90, metadata !DIExpression()), !dbg !91
  store i32 %13, i32* %30, align 4
  call void @llvm.dbg.declare(metadata i32* %30, metadata !92, metadata !DIExpression()), !dbg !93
  store i32 %14, i32* %31, align 4
  call void @llvm.dbg.declare(metadata i32* %31, metadata !94, metadata !DIExpression()), !dbg !95
  store i8* %15, i8** %32, align 8
  call void @llvm.dbg.declare(metadata i8** %32, metadata !96, metadata !DIExpression()), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlModule* @xmlModuleOpen(i8* noundef %0) #0 !dbg !99 {
  %2 = alloca %struct._xmlModule*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlModule*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata %struct._xmlModule** %4, metadata !104, metadata !DIExpression()), !dbg !105
  %5 = call i8* @xmlMalloc(i64 noundef 8), !dbg !106
  %6 = bitcast i8* %5 to %struct._xmlModule*, !dbg !107
  store %struct._xmlModule* %6, %struct._xmlModule** %4, align 8, !dbg !108
  %7 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !109
  %8 = icmp eq %struct._xmlModule* %7, null, !dbg !111
  br i1 %8, label %9, label %10, !dbg !112

9:                                                ; preds = %1
  call void @xmlModuleErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)), !dbg !113
  store %struct._xmlModule* null, %struct._xmlModule** %2, align 8, !dbg !115
  br label %37, !dbg !115

10:                                               ; preds = %1
  %11 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !116
  %12 = bitcast %struct._xmlModule* %11 to i8*, !dbg !117
  %13 = call i8* @memset(i8* %12, i32 0, i64 8), !dbg !117
  %14 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !118
  %15 = icmp ne %struct._xmlModule* %14, null, !dbg !118
  br i1 %15, label %16, label %18, !dbg !118

16:                                               ; preds = %10
  br i1 true, label %17, label %18, !dbg !118

17:                                               ; preds = %16
  br label %20, !dbg !118

18:                                               ; preds = %16, %10
  %19 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlModuleOpen, i64 0, i64 0)), !dbg !118
  br label %20, !dbg !118

20:                                               ; preds = %18, %17
  %21 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlModuleOpen, i64 0, i64 0)), !dbg !119
  %22 = load i8*, i8** %3, align 8, !dbg !120
  %23 = call i8* @xmlModulePlatformOpen(i8* noundef %22), !dbg !121
  %24 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !122
  %25 = getelementptr inbounds %struct._xmlModule, %struct._xmlModule* %24, i32 0, i32 0, !dbg !123
  store i8* %23, i8** %25, align 8, !dbg !124
  %26 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !125
  %27 = getelementptr inbounds %struct._xmlModule, %struct._xmlModule* %26, i32 0, i32 0, !dbg !127
  %28 = load i8*, i8** %27, align 8, !dbg !127
  %29 = icmp eq i8* %28, null, !dbg !128
  br i1 %29, label %30, label %35, !dbg !129

30:                                               ; preds = %20
  %31 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !130
  %32 = bitcast %struct._xmlModule* %31 to i8*, !dbg !130
  call void @xmlFree(i8* noundef %32), !dbg !132
  %33 = load i8*, i8** %3, align 8, !dbg !133
  %34 = load i8*, i8** %3, align 8, !dbg !134
  call void (i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i8*, ...) @__xmlRaiseError(i8* noundef null, i8* noundef null, i8* noundef null, i8* noundef null, i8* noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef %33, i8* noundef null, i32 noundef 0, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* noundef %34), !dbg !135
  store %struct._xmlModule* null, %struct._xmlModule** %2, align 8, !dbg !136
  br label %37, !dbg !136

35:                                               ; preds = %20
  %36 = load %struct._xmlModule*, %struct._xmlModule** %4, align 8, !dbg !137
  store %struct._xmlModule* %36, %struct._xmlModule** %2, align 8, !dbg !138
  br label %37, !dbg !138

37:                                               ; preds = %35, %30, %9
  %38 = load %struct._xmlModule*, %struct._xmlModule** %2, align 8, !dbg !139
  ret %struct._xmlModule* %38, !dbg !139
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !140 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._xmlModule*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !143, metadata !DIExpression()), !dbg !147
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !148
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)), !dbg !149
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !150
  %6 = load i8, i8* %5, align 1, !dbg !150
  %7 = sext i8 %6 to i32, !dbg !150
  %8 = icmp eq i32 %7, 0, !dbg !151
  %9 = zext i1 %8 to i32, !dbg !151
  %10 = sext i32 %9 to i64, !dbg !150
  call void @klee_assume(i64 noundef %10), !dbg !152
  call void @llvm.dbg.declare(metadata %struct._xmlModule** %3, metadata !153, metadata !DIExpression()), !dbg !154
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !155
  %12 = call %struct._xmlModule* @xmlModuleOpen(i8* noundef %11), !dbg !156
  store %struct._xmlModule* %12, %struct._xmlModule** %3, align 8, !dbg !154
  %13 = load %struct._xmlModule*, %struct._xmlModule** %3, align 8, !dbg !157
  %14 = icmp ne %struct._xmlModule* %13, null, !dbg !159
  br i1 %14, label %15, label %23, !dbg !160

15:                                               ; preds = %0
  %16 = load %struct._xmlModule*, %struct._xmlModule** %3, align 8, !dbg !161
  %17 = getelementptr inbounds %struct._xmlModule, %struct._xmlModule* %16, i32 0, i32 0, !dbg !162
  %18 = load i8*, i8** %17, align 8, !dbg !162
  %19 = icmp ne i8* %18, null, !dbg !163
  br i1 %19, label %20, label %23, !dbg !164

20:                                               ; preds = %15
  %21 = load %struct._xmlModule*, %struct._xmlModule** %3, align 8, !dbg !165
  %22 = bitcast %struct._xmlModule* %21 to i8*, !dbg !165
  call void @xmlFree(i8* noundef %22), !dbg !167
  br label %23, !dbg !168

23:                                               ; preds = %20, %15, %0
  ret i32 0, !dbg !169
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !170 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %7, metadata !180, metadata !DIExpression()), !dbg !182
  %8 = load i8*, i8** %4, align 8, !dbg !183
  store i8* %8, i8** %7, align 8, !dbg !182
  br label %9, !dbg !184

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !185
  %11 = add i64 %10, -1, !dbg !185
  store i64 %11, i64* %6, align 8, !dbg !185
  %12 = icmp ugt i64 %10, 0, !dbg !186
  br i1 %12, label %13, label %18, !dbg !184

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !187
  %15 = trunc i32 %14 to i8, !dbg !187
  %16 = load i8*, i8** %7, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %7, align 8, !dbg !188
  store i8 %15, i8* %16, align 1, !dbg !189
  br label %9, !dbg !184, !llvm.loop !190

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !192
  ret i8* %19, !dbg !193
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/120_xmlmodule.c_90_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f734f495500d562c7ed6dda9da2689bf")
!2 = !{!3, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlModulePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlModule", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlModule", file: !1, line: 13, size: 64, elements: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlModuleErrMemory", scope: !1, file: !1, line: 19, type: !21, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !9, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{}
!27 = !DILocalVariable(name: "ctx", arg: 1, scope: !20, file: !1, line: 19, type: !9)
!28 = !DILocation(line: 19, column: 31, scope: !20)
!29 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 19, type: !23)
!30 = !DILocation(line: 19, column: 48, scope: !20)
!31 = !DILocation(line: 21, column: 1, scope: !20)
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 23, type: !33, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{!9, !35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 23, type: !35)
!39 = !DILocation(line: 23, column: 24, scope: !32)
!40 = !DILocation(line: 24, column: 19, scope: !32)
!41 = !DILocation(line: 24, column: 12, scope: !32)
!42 = !DILocation(line: 24, column: 5, scope: !32)
!43 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 27, type: !44, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !9}
!46 = !DILocalVariable(name: "ptr", arg: 1, scope: !43, file: !1, line: 27, type: !9)
!47 = !DILocation(line: 27, column: 20, scope: !43)
!48 = !DILocation(line: 28, column: 10, scope: !43)
!49 = !DILocation(line: 28, column: 5, scope: !43)
!50 = !DILocation(line: 29, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "xmlModulePlatformOpen", scope: !1, file: !1, line: 31, type: !52, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!52 = !DISubroutineType(types: !53)
!53 = !{!9, !23}
!54 = !DILocalVariable(name: "name", arg: 1, scope: !51, file: !1, line: 31, type: !23)
!55 = !DILocation(line: 31, column: 41, scope: !51)
!56 = !DILocalVariable(name: "handle", scope: !51, file: !1, line: 33, type: !9)
!57 = !DILocation(line: 33, column: 11, scope: !51)
!58 = !DILocation(line: 34, column: 24, scope: !51)
!59 = !DILocation(line: 34, column: 5, scope: !51)
!60 = !DILocation(line: 35, column: 12, scope: !51)
!61 = !DILocation(line: 35, column: 5, scope: !51)
!62 = distinct !DISubprogram(name: "__xmlRaiseError", scope: !1, file: !1, line: 38, type: !63, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !9, !9, !9, !9, !9, !65, !65, !65, !23, !65, !65, !23, !23, !65, !65, !23, null}
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DILocalVariable(name: "schannel", arg: 1, scope: !62, file: !1, line: 38, type: !9)
!67 = !DILocation(line: 38, column: 28, scope: !62)
!68 = !DILocalVariable(name: "data", arg: 2, scope: !62, file: !1, line: 38, type: !9)
!69 = !DILocation(line: 38, column: 44, scope: !62)
!70 = !DILocalVariable(name: "ctx", arg: 3, scope: !62, file: !1, line: 38, type: !9)
!71 = !DILocation(line: 38, column: 56, scope: !62)
!72 = !DILocalVariable(name: "node", arg: 4, scope: !62, file: !1, line: 39, type: !9)
!73 = !DILocation(line: 39, column: 28, scope: !62)
!74 = !DILocalVariable(name: "error", arg: 5, scope: !62, file: !1, line: 39, type: !9)
!75 = !DILocation(line: 39, column: 40, scope: !62)
!76 = !DILocalVariable(name: "domain", arg: 6, scope: !62, file: !1, line: 39, type: !65)
!77 = !DILocation(line: 39, column: 51, scope: !62)
!78 = !DILocalVariable(name: "code", arg: 7, scope: !62, file: !1, line: 40, type: !65)
!79 = !DILocation(line: 40, column: 26, scope: !62)
!80 = !DILocalVariable(name: "level", arg: 8, scope: !62, file: !1, line: 40, type: !65)
!81 = !DILocation(line: 40, column: 36, scope: !62)
!82 = !DILocalVariable(name: "file", arg: 9, scope: !62, file: !1, line: 40, type: !23)
!83 = !DILocation(line: 40, column: 55, scope: !62)
!84 = !DILocalVariable(name: "line", arg: 10, scope: !62, file: !1, line: 41, type: !65)
!85 = !DILocation(line: 41, column: 26, scope: !62)
!86 = !DILocalVariable(name: "col", arg: 11, scope: !62, file: !1, line: 41, type: !65)
!87 = !DILocation(line: 41, column: 36, scope: !62)
!88 = !DILocalVariable(name: "str1", arg: 12, scope: !62, file: !1, line: 41, type: !23)
!89 = !DILocation(line: 41, column: 53, scope: !62)
!90 = !DILocalVariable(name: "str2", arg: 13, scope: !62, file: !1, line: 42, type: !23)
!91 = !DILocation(line: 42, column: 34, scope: !62)
!92 = !DILocalVariable(name: "int1", arg: 14, scope: !62, file: !1, line: 42, type: !65)
!93 = !DILocation(line: 42, column: 44, scope: !62)
!94 = !DILocalVariable(name: "int2", arg: 15, scope: !62, file: !1, line: 42, type: !65)
!95 = !DILocation(line: 42, column: 54, scope: !62)
!96 = !DILocalVariable(name: "msg", arg: 16, scope: !62, file: !1, line: 43, type: !23)
!97 = !DILocation(line: 43, column: 34, scope: !62)
!98 = !DILocation(line: 45, column: 1, scope: !62)
!99 = distinct !DISubprogram(name: "xmlModuleOpen", scope: !1, file: !1, line: 48, type: !100, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!100 = !DISubroutineType(types: !101)
!101 = !{!3, !23}
!102 = !DILocalVariable(name: "name", arg: 1, scope: !99, file: !1, line: 48, type: !23)
!103 = !DILocation(line: 48, column: 40, scope: !99)
!104 = !DILocalVariable(name: "module", scope: !99, file: !1, line: 49, type: !3)
!105 = !DILocation(line: 49, column: 18, scope: !99)
!106 = !DILocation(line: 51, column: 29, scope: !99)
!107 = !DILocation(line: 51, column: 14, scope: !99)
!108 = !DILocation(line: 51, column: 12, scope: !99)
!109 = !DILocation(line: 52, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !99, file: !1, line: 52, column: 9)
!111 = !DILocation(line: 52, column: 16, scope: !110)
!112 = !DILocation(line: 52, column: 9, scope: !99)
!113 = !DILocation(line: 53, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 52, column: 25)
!115 = !DILocation(line: 54, column: 9, scope: !114)
!116 = !DILocation(line: 58, column: 12, scope: !99)
!117 = !DILocation(line: 58, column: 5, scope: !99)
!118 = !DILocation(line: 61, column: 5, scope: !99)
!119 = !DILocation(line: 64, column: 5, scope: !99)
!120 = !DILocation(line: 66, column: 44, scope: !99)
!121 = !DILocation(line: 66, column: 22, scope: !99)
!122 = !DILocation(line: 66, column: 5, scope: !99)
!123 = !DILocation(line: 66, column: 13, scope: !99)
!124 = !DILocation(line: 66, column: 20, scope: !99)
!125 = !DILocation(line: 68, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !99, file: !1, line: 68, column: 9)
!127 = !DILocation(line: 68, column: 17, scope: !126)
!128 = !DILocation(line: 68, column: 24, scope: !126)
!129 = !DILocation(line: 68, column: 9, scope: !99)
!130 = !DILocation(line: 69, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 68, column: 33)
!132 = !DILocation(line: 69, column: 9, scope: !131)
!133 = !DILocation(line: 72, column: 25, scope: !131)
!134 = !DILocation(line: 72, column: 66, scope: !131)
!135 = !DILocation(line: 70, column: 9, scope: !131)
!136 = !DILocation(line: 73, column: 9, scope: !131)
!137 = !DILocation(line: 76, column: 12, scope: !99)
!138 = !DILocation(line: 76, column: 5, scope: !99)
!139 = !DILocation(line: 77, column: 1, scope: !99)
!140 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !141, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!141 = !DISubroutineType(types: !142)
!142 = !{!65}
!143 = !DILocalVariable(name: "name", scope: !140, file: !1, line: 81, type: !144)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 256)
!147 = !DILocation(line: 81, column: 10, scope: !140)
!148 = !DILocation(line: 82, column: 24, scope: !140)
!149 = !DILocation(line: 82, column: 5, scope: !140)
!150 = !DILocation(line: 85, column: 17, scope: !140)
!151 = !DILocation(line: 85, column: 27, scope: !140)
!152 = !DILocation(line: 85, column: 5, scope: !140)
!153 = !DILocalVariable(name: "result", scope: !140, file: !1, line: 88, type: !3)
!154 = !DILocation(line: 88, column: 18, scope: !140)
!155 = !DILocation(line: 88, column: 41, scope: !140)
!156 = !DILocation(line: 88, column: 27, scope: !140)
!157 = !DILocation(line: 91, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !140, file: !1, line: 91, column: 9)
!159 = !DILocation(line: 91, column: 16, scope: !158)
!160 = !DILocation(line: 91, column: 24, scope: !158)
!161 = !DILocation(line: 91, column: 27, scope: !158)
!162 = !DILocation(line: 91, column: 35, scope: !158)
!163 = !DILocation(line: 91, column: 42, scope: !158)
!164 = !DILocation(line: 91, column: 9, scope: !140)
!165 = !DILocation(line: 92, column: 17, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 91, column: 51)
!167 = !DILocation(line: 92, column: 9, scope: !166)
!168 = !DILocation(line: 93, column: 5, scope: !166)
!169 = !DILocation(line: 95, column: 5, scope: !140)
!170 = distinct !DISubprogram(name: "memset", scope: !171, file: !171, line: 12, type: !172, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!171 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!172 = !DISubroutineType(types: !173)
!173 = !{!9, !9, !65, !35}
!174 = !DILocalVariable(name: "dst", arg: 1, scope: !170, file: !171, line: 12, type: !9)
!175 = !DILocation(line: 12, column: 20, scope: !170)
!176 = !DILocalVariable(name: "s", arg: 2, scope: !170, file: !171, line: 12, type: !65)
!177 = !DILocation(line: 12, column: 29, scope: !170)
!178 = !DILocalVariable(name: "count", arg: 3, scope: !170, file: !171, line: 12, type: !35)
!179 = !DILocation(line: 12, column: 39, scope: !170)
!180 = !DILocalVariable(name: "a", scope: !170, file: !171, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!182 = !DILocation(line: 13, column: 9, scope: !170)
!183 = !DILocation(line: 13, column: 13, scope: !170)
!184 = !DILocation(line: 14, column: 3, scope: !170)
!185 = !DILocation(line: 14, column: 15, scope: !170)
!186 = !DILocation(line: 14, column: 18, scope: !170)
!187 = !DILocation(line: 15, column: 12, scope: !170)
!188 = !DILocation(line: 15, column: 7, scope: !170)
!189 = !DILocation(line: 15, column: 10, scope: !170)
!190 = distinct !{!190, !184, !187, !191}
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 16, column: 10, scope: !170)
!193 = !DILocation(line: 16, column: 3, scope: !170)
