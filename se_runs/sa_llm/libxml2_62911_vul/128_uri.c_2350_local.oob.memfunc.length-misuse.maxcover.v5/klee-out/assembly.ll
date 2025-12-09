; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlURI = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca %struct._xmlURI*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [1024 x i8]* %3, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %4, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct._xmlURI** %5, metadata !32, metadata !DIExpression()), !dbg !51
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !52
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 1024, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %8 = bitcast i64* %4 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !55
  %9 = load i64, i64* %4, align 8, !dbg !56
  %10 = icmp ugt i64 %9, 1023, !dbg !58
  br i1 %10, label %11, label %12, !dbg !59

11:                                               ; preds = %0
  store i64 1023, i64* %4, align 8, !dbg !60
  br label %12, !dbg !62

12:                                               ; preds = %11, %0
  %13 = load i64, i64* %4, align 8, !dbg !63
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %13, !dbg !64
  store i8 0, i8* %14, align 1, !dbg !65
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0, !dbg !66
  store i8* %15, i8** %2, align 8, !dbg !67
  %16 = load i8*, i8** %2, align 8, !dbg !68
  %17 = call %struct._xmlURI* @xmlParseURI(i8* noundef %16), !dbg !69
  store %struct._xmlURI* %17, %struct._xmlURI** %5, align 8, !dbg !70
  %18 = load %struct._xmlURI*, %struct._xmlURI** %5, align 8, !dbg !71
  %19 = icmp eq %struct._xmlURI* %18, null, !dbg !73
  br i1 %19, label %20, label %21, !dbg !74

20:                                               ; preds = %12
  store i32 0, i32* %1, align 4, !dbg !75
  br label %31, !dbg !75

21:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i8** %6, metadata !77, metadata !DIExpression()), !dbg !78
  %22 = load %struct._xmlURI*, %struct._xmlURI** %5, align 8, !dbg !79
  %23 = call i8* @xmlSaveUri(%struct._xmlURI* noundef %22), !dbg !80
  store i8* %23, i8** %6, align 8, !dbg !78
  %24 = load i8*, i8** %6, align 8, !dbg !81
  %25 = icmp ne i8* %24, null, !dbg !83
  br i1 %25, label %26, label %28, !dbg !84

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8, !dbg !85
  call void @free(i8* noundef %27) #5, !dbg !87
  br label %28, !dbg !88

28:                                               ; preds = %26, %21
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !89
  %30 = load %struct._xmlURI*, %struct._xmlURI** %5, align 8, !dbg !90
  call void @xmlFreeURI(%struct._xmlURI* noundef %30), !dbg !91
  store i32 0, i32* %1, align 4, !dbg !92
  br label %31, !dbg !92

31:                                               ; preds = %28, %20
  %32 = load i32, i32* %1, align 4, !dbg !93
  ret i32 %32, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare %struct._xmlURI* @xmlParseURI(i8* noundef) #2

declare i8* @xmlSaveUri(%struct._xmlURI* noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare void @xmlFreeURI(%struct._xmlURI* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/128_uri.c_2350_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "2f83d9fe473b83ea469a4446d49ba514")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !13, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "uri_string", scope: !12, file: !1, line: 8, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 8, column: 17, scope: !12)
!22 = !DILocalVariable(name: "buf", scope: !12, file: !1, line: 9, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 1024)
!26 = !DILocation(line: 9, column: 10, scope: !12)
!27 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 10, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 10, column: 12, scope: !12)
!32 = !DILocalVariable(name: "uri", scope: !12, file: !1, line: 11, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURIPtr", file: !34, line: 32, baseType: !35)
!34 = !DIFile(filename: "/usr/include/libxml2/libxml/uri.h", directory: "", checksumkind: CSK_MD5, checksum: "032d430e35153af35f2fe17a9e9c37bf")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlURI", file: !34, line: 31, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlURI", file: !34, line: 33, size: 704, elements: !38)
!38 = !{!39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "scheme", scope: !37, file: !34, line: 34, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !37, file: !34, line: 35, baseType: !40, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "authority", scope: !37, file: !34, line: 36, baseType: !40, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !37, file: !34, line: 37, baseType: !40, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !37, file: !34, line: 38, baseType: !40, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !37, file: !34, line: 39, baseType: !15, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !37, file: !34, line: 40, baseType: !40, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "query", scope: !37, file: !34, line: 41, baseType: !40, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fragment", scope: !37, file: !34, line: 42, baseType: !40, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !37, file: !34, line: 43, baseType: !15, size: 32, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "query_raw", scope: !37, file: !34, line: 44, baseType: !40, size: 64, offset: 640)
!51 = !DILocation(line: 11, column: 15, scope: !12)
!52 = !DILocation(line: 13, column: 24, scope: !12)
!53 = !DILocation(line: 13, column: 5, scope: !12)
!54 = !DILocation(line: 14, column: 24, scope: !12)
!55 = !DILocation(line: 14, column: 5, scope: !12)
!56 = !DILocation(line: 16, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !12, file: !1, line: 16, column: 9)
!58 = !DILocation(line: 16, column: 13, scope: !57)
!59 = !DILocation(line: 16, column: 9, scope: !12)
!60 = !DILocation(line: 17, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 16, column: 32)
!62 = !DILocation(line: 18, column: 5, scope: !61)
!63 = !DILocation(line: 19, column: 9, scope: !12)
!64 = !DILocation(line: 19, column: 5, scope: !12)
!65 = !DILocation(line: 19, column: 14, scope: !12)
!66 = !DILocation(line: 20, column: 18, scope: !12)
!67 = !DILocation(line: 20, column: 16, scope: !12)
!68 = !DILocation(line: 22, column: 23, scope: !12)
!69 = !DILocation(line: 22, column: 11, scope: !12)
!70 = !DILocation(line: 22, column: 9, scope: !12)
!71 = !DILocation(line: 23, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !12, file: !1, line: 23, column: 9)
!73 = !DILocation(line: 23, column: 13, scope: !72)
!74 = !DILocation(line: 23, column: 9, scope: !12)
!75 = !DILocation(line: 24, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 23, column: 22)
!77 = !DILocalVariable(name: "uri_reconstructed", scope: !12, file: !1, line: 27, type: !40)
!78 = !DILocation(line: 27, column: 11, scope: !12)
!79 = !DILocation(line: 27, column: 42, scope: !12)
!80 = !DILocation(line: 27, column: 31, scope: !12)
!81 = !DILocation(line: 28, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !12, file: !1, line: 28, column: 9)
!83 = !DILocation(line: 28, column: 27, scope: !82)
!84 = !DILocation(line: 28, column: 9, scope: !12)
!85 = !DILocation(line: 29, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 28, column: 36)
!87 = !DILocation(line: 29, column: 9, scope: !86)
!88 = !DILocation(line: 30, column: 5, scope: !86)
!89 = !DILocation(line: 32, column: 5, scope: !12)
!90 = !DILocation(line: 33, column: 16, scope: !12)
!91 = !DILocation(line: 33, column: 5, scope: !12)
!92 = !DILocation(line: 34, column: 5, scope: !12)
!93 = !DILocation(line: 35, column: 1, scope: !12)
