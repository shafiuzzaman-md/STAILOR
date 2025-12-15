; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/305_xmlschemastypes.c_273_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/305_xmlschemastypes.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaType = type { i8*, i8*, i32, %struct._xmlSchemaType*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"could not initialize basic types\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"se_runs/sa_llm/libxml2_55980_vul/305_xmlschemastypes.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaNewPrimitiveType = private unnamed_addr constant [75 x i8] c"xmlSchemaTypePtr xmlSchemaNewPrimitiveType(const char *, xmlSchemaTypePtr)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"http://www.w3.org/2001/XMLSchema\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"baseType_is_null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %3, metadata !37, metadata !DIExpression()), !dbg !38
  %4 = load i64, i64* %2, align 8, !dbg !39
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !40
  store i8* %5, i8** %3, align 8, !dbg !38
  %6 = load i8*, i8** %3, align 8, !dbg !41
  ret i8* %6, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaTypeErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !43 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaType* @xmlSchemaNewPrimitiveType(i8* noundef %0, %struct._xmlSchemaType* noundef %1) #0 !dbg !51 {
  %3 = alloca %struct._xmlSchemaType*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlSchemaType*, align 8
  %6 = alloca %struct._xmlSchemaType*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store %struct._xmlSchemaType* %1, %struct._xmlSchemaType** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %6, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = call i8* @xmlMalloc(i64 noundef 40), !dbg !60
  %8 = bitcast i8* %7 to %struct._xmlSchemaType*, !dbg !61
  store %struct._xmlSchemaType* %8, %struct._xmlSchemaType** %6, align 8, !dbg !62
  %9 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !63
  %10 = icmp eq %struct._xmlSchemaType* %9, null, !dbg !65
  br i1 %10, label %11, label %12, !dbg !66

11:                                               ; preds = %2
  call void @xmlSchemaTypeErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !67
  store %struct._xmlSchemaType* null, %struct._xmlSchemaType** %3, align 8, !dbg !69
  br label %30, !dbg !69

12:                                               ; preds = %2
  %13 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !70
  %14 = bitcast %struct._xmlSchemaType* %13 to i8*, !dbg !71
  %15 = call i8* @memset(i8* %14, i32 0, i64 40), !dbg !71
  %16 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @__PRETTY_FUNCTION__.xmlSchemaNewPrimitiveType, i64 0, i64 0)), !dbg !72
  %17 = load i8*, i8** %4, align 8, !dbg !73
  %18 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !74
  %19 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %18, i32 0, i32 0, !dbg !75
  store i8* %17, i8** %19, align 8, !dbg !76
  %20 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !77
  %21 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %20, i32 0, i32 1, !dbg !78
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8, !dbg !79
  %22 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !80
  %23 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %22, i32 0, i32 2, !dbg !81
  store i32 1, i32* %23, align 8, !dbg !82
  %24 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %5, align 8, !dbg !83
  %25 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !84
  %26 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %25, i32 0, i32 3, !dbg !85
  store %struct._xmlSchemaType* %24, %struct._xmlSchemaType** %26, align 8, !dbg !86
  %27 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !87
  %28 = getelementptr inbounds %struct._xmlSchemaType, %struct._xmlSchemaType* %27, i32 0, i32 4, !dbg !88
  store i32 1, i32* %28, align 8, !dbg !89
  %29 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %6, align 8, !dbg !90
  store %struct._xmlSchemaType* %29, %struct._xmlSchemaType** %3, align 8, !dbg !91
  br label %30, !dbg !91

30:                                               ; preds = %12, %11
  %31 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %3, align 8, !dbg !92
  ret %struct._xmlSchemaType* %31, !dbg !92
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !93 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlSchemaType*, align 8
  %5 = alloca %struct._xmlSchemaType*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [32 x i8]* %2, metadata !96, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %3, metadata !101, metadata !DIExpression()), !dbg !102
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !103
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !104
  %7 = bitcast i32* %3 to i8*, !dbg !105
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)), !dbg !106
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 31, !dbg !107
  store i8 0, i8* %8, align 1, !dbg !108
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %4, metadata !109, metadata !DIExpression()), !dbg !110
  store %struct._xmlSchemaType* null, %struct._xmlSchemaType** %4, align 8, !dbg !110
  %9 = load i32, i32* %3, align 4, !dbg !111
  %10 = icmp ne i32 %9, 0, !dbg !111
  br i1 %10, label %18, label %11, !dbg !113

11:                                               ; preds = %0
  %12 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !114
  %13 = bitcast i8* %12 to %struct._xmlSchemaType*, !dbg !116
  store %struct._xmlSchemaType* %13, %struct._xmlSchemaType** %4, align 8, !dbg !117
  %14 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %4, align 8, !dbg !118
  %15 = icmp ne %struct._xmlSchemaType* %14, null, !dbg !119
  %16 = zext i1 %15 to i32, !dbg !119
  %17 = sext i32 %16 to i64, !dbg !118
  call void @klee_assume(i64 noundef %17), !dbg !120
  br label %18, !dbg !121

18:                                               ; preds = %11, %0
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaType** %5, metadata !122, metadata !DIExpression()), !dbg !123
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !124
  %20 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %4, align 8, !dbg !125
  %21 = call %struct._xmlSchemaType* @xmlSchemaNewPrimitiveType(i8* noundef %19, %struct._xmlSchemaType* noundef %20), !dbg !126
  store %struct._xmlSchemaType* %21, %struct._xmlSchemaType** %5, align 8, !dbg !123
  %22 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %5, align 8, !dbg !127
  %23 = icmp ne %struct._xmlSchemaType* %22, null, !dbg !129
  br i1 %23, label %24, label %27, !dbg !130

24:                                               ; preds = %18
  %25 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %5, align 8, !dbg !131
  %26 = bitcast %struct._xmlSchemaType* %25 to i8*, !dbg !131
  call void @free(i8* noundef %26) #7, !dbg !133
  br label %27, !dbg !134

27:                                               ; preds = %24, %18
  %28 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %4, align 8, !dbg !135
  %29 = icmp ne %struct._xmlSchemaType* %28, null, !dbg !137
  br i1 %29, label %30, label %33, !dbg !138

30:                                               ; preds = %27
  %31 = load %struct._xmlSchemaType*, %struct._xmlSchemaType** %4, align 8, !dbg !139
  %32 = bitcast %struct._xmlSchemaType* %31 to i8*, !dbg !139
  call void @free(i8* noundef %32) #7, !dbg !141
  br label %33, !dbg !142

33:                                               ; preds = %30, %27
  ret i32 0, !dbg !143
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !144 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %7, metadata !154, metadata !DIExpression()), !dbg !156
  %8 = load i8*, i8** %4, align 8, !dbg !157
  store i8* %8, i8** %7, align 8, !dbg !156
  br label %9, !dbg !158

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !159
  %11 = add i64 %10, -1, !dbg !159
  store i64 %11, i64* %6, align 8, !dbg !159
  %12 = icmp ugt i64 %10, 0, !dbg !160
  br i1 %12, label %13, label %18, !dbg !158

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !161
  %15 = trunc i32 %14 to i8, !dbg !161
  %16 = load i8*, i8** %7, align 8, !dbg !162
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !162
  store i8* %17, i8** %7, align 8, !dbg !162
  store i8 %15, i8* %16, align 1, !dbg !163
  br label %9, !dbg !158, !llvm.loop !164

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !166
  ret i8* %19, !dbg !167
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/305_xmlschemastypes.c_273_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f03fd242df5c694524be38af885c3191")
!2 = !{!3, !17, !9}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaTypePtr", file: !1, line: 11, baseType: !4)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaType", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaType", file: !1, line: 13, size: 320, elements: !7)
!7 = !{!8, !12, !13, !15, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !1, line: 14, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !6, file: !1, line: 15, baseType: !9, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6, file: !1, line: 16, baseType: !14, size: 32, offset: 128)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "baseType", scope: !6, file: !1, line: 17, baseType: !3, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "contentType", scope: !6, file: !1, line: 18, baseType: !14, size: 32, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 29, type: !29, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{!17, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !{}
!35 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 29, type: !31)
!36 = !DILocation(line: 29, column: 24, scope: !28)
!37 = !DILocalVariable(name: "ptr", scope: !28, file: !1, line: 30, type: !17)
!38 = !DILocation(line: 30, column: 11, scope: !28)
!39 = !DILocation(line: 30, column: 24, scope: !28)
!40 = !DILocation(line: 30, column: 17, scope: !28)
!41 = !DILocation(line: 31, column: 12, scope: !28)
!42 = !DILocation(line: 31, column: 5, scope: !28)
!43 = distinct !DISubprogram(name: "xmlSchemaTypeErrMemory", scope: !1, file: !1, line: 34, type: !44, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !17, !9}
!46 = !DILocalVariable(name: "ctxt", arg: 1, scope: !43, file: !1, line: 34, type: !17)
!47 = !DILocation(line: 34, column: 35, scope: !43)
!48 = !DILocalVariable(name: "msg", arg: 2, scope: !43, file: !1, line: 34, type: !9)
!49 = !DILocation(line: 34, column: 53, scope: !43)
!50 = !DILocation(line: 36, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "xmlSchemaNewPrimitiveType", scope: !1, file: !1, line: 39, type: !52, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!52 = !DISubroutineType(types: !53)
!53 = !{!3, !9, !3}
!54 = !DILocalVariable(name: "name", arg: 1, scope: !51, file: !1, line: 39, type: !9)
!55 = !DILocation(line: 39, column: 56, scope: !51)
!56 = !DILocalVariable(name: "baseType", arg: 2, scope: !51, file: !1, line: 39, type: !3)
!57 = !DILocation(line: 39, column: 79, scope: !51)
!58 = !DILocalVariable(name: "ret", scope: !51, file: !1, line: 40, type: !3)
!59 = !DILocation(line: 40, column: 22, scope: !51)
!60 = !DILocation(line: 42, column: 30, scope: !51)
!61 = !DILocation(line: 42, column: 11, scope: !51)
!62 = !DILocation(line: 42, column: 9, scope: !51)
!63 = !DILocation(line: 43, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 43, column: 9)
!65 = !DILocation(line: 43, column: 13, scope: !64)
!66 = !DILocation(line: 43, column: 9, scope: !51)
!67 = !DILocation(line: 44, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 43, column: 22)
!69 = !DILocation(line: 45, column: 9, scope: !68)
!70 = !DILocation(line: 49, column: 12, scope: !51)
!71 = !DILocation(line: 49, column: 5, scope: !51)
!72 = !DILocation(line: 55, column: 5, scope: !51)
!73 = !DILocation(line: 57, column: 31, scope: !51)
!74 = !DILocation(line: 57, column: 5, scope: !51)
!75 = !DILocation(line: 57, column: 10, scope: !51)
!76 = !DILocation(line: 57, column: 15, scope: !51)
!77 = !DILocation(line: 58, column: 5, scope: !51)
!78 = !DILocation(line: 58, column: 10, scope: !51)
!79 = !DILocation(line: 58, column: 26, scope: !51)
!80 = !DILocation(line: 59, column: 5, scope: !51)
!81 = !DILocation(line: 59, column: 10, scope: !51)
!82 = !DILocation(line: 59, column: 15, scope: !51)
!83 = !DILocation(line: 60, column: 21, scope: !51)
!84 = !DILocation(line: 60, column: 5, scope: !51)
!85 = !DILocation(line: 60, column: 10, scope: !51)
!86 = !DILocation(line: 60, column: 19, scope: !51)
!87 = !DILocation(line: 61, column: 5, scope: !51)
!88 = !DILocation(line: 61, column: 10, scope: !51)
!89 = !DILocation(line: 61, column: 22, scope: !51)
!90 = !DILocation(line: 63, column: 12, scope: !51)
!91 = !DILocation(line: 63, column: 5, scope: !51)
!92 = !DILocation(line: 64, column: 1, scope: !51)
!93 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !94, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!94 = !DISubroutineType(types: !95)
!95 = !{!14}
!96 = !DILocalVariable(name: "name", scope: !93, file: !1, line: 68, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 32)
!100 = !DILocation(line: 68, column: 10, scope: !93)
!101 = !DILocalVariable(name: "baseType_is_null", scope: !93, file: !1, line: 69, type: !14)
!102 = !DILocation(line: 69, column: 9, scope: !93)
!103 = !DILocation(line: 71, column: 24, scope: !93)
!104 = !DILocation(line: 71, column: 5, scope: !93)
!105 = !DILocation(line: 72, column: 24, scope: !93)
!106 = !DILocation(line: 72, column: 5, scope: !93)
!107 = !DILocation(line: 75, column: 5, scope: !93)
!108 = !DILocation(line: 75, column: 14, scope: !93)
!109 = !DILocalVariable(name: "baseType", scope: !93, file: !1, line: 78, type: !3)
!110 = !DILocation(line: 78, column: 22, scope: !93)
!111 = !DILocation(line: 79, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !93, file: !1, line: 79, column: 9)
!113 = !DILocation(line: 79, column: 9, scope: !93)
!114 = !DILocation(line: 80, column: 38, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 79, column: 28)
!116 = !DILocation(line: 80, column: 20, scope: !115)
!117 = !DILocation(line: 80, column: 18, scope: !115)
!118 = !DILocation(line: 81, column: 21, scope: !115)
!119 = !DILocation(line: 81, column: 30, scope: !115)
!120 = !DILocation(line: 81, column: 9, scope: !115)
!121 = !DILocation(line: 82, column: 5, scope: !115)
!122 = !DILocalVariable(name: "result", scope: !93, file: !1, line: 85, type: !3)
!123 = !DILocation(line: 85, column: 22, scope: !93)
!124 = !DILocation(line: 85, column: 57, scope: !93)
!125 = !DILocation(line: 85, column: 63, scope: !93)
!126 = !DILocation(line: 85, column: 31, scope: !93)
!127 = !DILocation(line: 88, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !93, file: !1, line: 88, column: 9)
!129 = !DILocation(line: 88, column: 16, scope: !128)
!130 = !DILocation(line: 88, column: 9, scope: !93)
!131 = !DILocation(line: 89, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 88, column: 25)
!133 = !DILocation(line: 89, column: 9, scope: !132)
!134 = !DILocation(line: 90, column: 5, scope: !132)
!135 = !DILocation(line: 91, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !93, file: !1, line: 91, column: 9)
!137 = !DILocation(line: 91, column: 18, scope: !136)
!138 = !DILocation(line: 91, column: 9, scope: !93)
!139 = !DILocation(line: 92, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 91, column: 27)
!141 = !DILocation(line: 92, column: 9, scope: !140)
!142 = !DILocation(line: 93, column: 5, scope: !140)
!143 = !DILocation(line: 95, column: 5, scope: !93)
!144 = distinct !DISubprogram(name: "memset", scope: !145, file: !145, line: 12, type: !146, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!145 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!146 = !DISubroutineType(types: !147)
!147 = !{!17, !17, !14, !31}
!148 = !DILocalVariable(name: "dst", arg: 1, scope: !144, file: !145, line: 12, type: !17)
!149 = !DILocation(line: 12, column: 20, scope: !144)
!150 = !DILocalVariable(name: "s", arg: 2, scope: !144, file: !145, line: 12, type: !14)
!151 = !DILocation(line: 12, column: 29, scope: !144)
!152 = !DILocalVariable(name: "count", arg: 3, scope: !144, file: !145, line: 12, type: !31)
!153 = !DILocation(line: 12, column: 39, scope: !144)
!154 = !DILocalVariable(name: "a", scope: !144, file: !145, line: 13, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!156 = !DILocation(line: 13, column: 9, scope: !144)
!157 = !DILocation(line: 13, column: 13, scope: !144)
!158 = !DILocation(line: 14, column: 3, scope: !144)
!159 = !DILocation(line: 14, column: 15, scope: !144)
!160 = !DILocation(line: 14, column: 18, scope: !144)
!161 = !DILocation(line: 15, column: 12, scope: !144)
!162 = !DILocation(line: 15, column: 7, scope: !144)
!163 = !DILocation(line: 15, column: 10, scope: !144)
!164 = distinct !{!164, !158, !161, !165}
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 16, column: 10, scope: !144)
!167 = !DILocation(line: 16, column: 3, scope: !144)
