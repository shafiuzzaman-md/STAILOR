; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/029_c14n.c_662_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/029_c14n.c_662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i32, i8*, i8*, i8*, %struct._xmlDoc*, i16 }
%struct._xmlDoc = type opaque
%struct._xmlC14NCtx = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"xmlC14NVisibleNsStackFind_result\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"has_empty_ns\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/029_c14n.c_662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlC14NVisibleNsStackFind(i8* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !10 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  %6 = bitcast i32* %5 to i8*, !dbg !39
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %7 = load i32, i32* %5, align 4, !dbg !41
  %8 = icmp eq i32 %7, 0, !dbg !42
  br i1 %8, label %12, label %9, !dbg !43

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !44
  %11 = icmp eq i32 %10, 1, !dbg !45
  br label %12, !dbg !43

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32, !dbg !43
  %15 = sext i32 %14 to i64, !dbg !41
  call void @klee_assume(i64 noundef %15), !dbg !46
  %16 = load i32, i32* %5, align 4, !dbg !47
  ret i32 %16, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlC14NPrintNamespaces(%struct._xmlNs* noundef %0, %struct._xmlC14NCtx* noundef %1) #0 !dbg !49 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlC14NCtx*, align 8
  store %struct._xmlNs* %0, %struct._xmlNs** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %3, metadata !57, metadata !DIExpression()), !dbg !58
  store %struct._xmlC14NCtx* %1, %struct._xmlC14NCtx** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx** %4, metadata !59, metadata !DIExpression()), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !62 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlC14NCtx, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlC14NCtx* %2, metadata !65, metadata !DIExpression()), !dbg !66
  %5 = bitcast %struct._xmlC14NCtx* %2 to i8*, !dbg !67
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %3, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %4, metadata !71, metadata !DIExpression()), !dbg !72
  %6 = bitcast i32* %3 to i8*, !dbg !73
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !74
  %7 = bitcast i32* %4 to i8*, !dbg !75
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !76
  %8 = load i32, i32* %3, align 4, !dbg !77
  %9 = icmp ne i32 %8, 0, !dbg !77
  br i1 %9, label %10, label %14, !dbg !78

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !79
  %12 = icmp ne i32 %11, 0, !dbg !80
  %13 = xor i1 %12, true, !dbg !80
  br label %14

14:                                               ; preds = %10, %0
  %15 = phi i1 [ false, %0 ], [ %13, %10 ], !dbg !81
  %16 = zext i1 %15 to i32, !dbg !78
  %17 = sext i32 %16 to i64, !dbg !77
  call void @klee_assume(i64 noundef %17), !dbg !82
  %18 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !83
  ret i32 0, !dbg !84
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/029_c14n.c_662_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "19172085e7a8ebd5885175f01f64cca5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "xmlC14NVisibleNsStackFind", scope: !1, file: !1, line: 28, type: !11, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 11, size: 448, elements: !18)
!18 = !{!19, !20, !21, !25, !26, !27, !30}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !17, file: !1, line: 12, baseType: !14, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !1, line: 13, baseType: !13, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !17, file: !1, line: 14, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !17, file: !1, line: 15, baseType: !22, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_private", scope: !17, file: !1, line: 16, baseType: !14, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !17, file: !1, line: 17, baseType: !28, size: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 17, flags: DIFlagFwdDecl)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !17, file: !1, line: 18, baseType: !31, size: 16, offset: 384)
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !{}
!33 = !DILocalVariable(name: "ns_rendered", arg: 1, scope: !10, file: !1, line: 28, type: !14)
!34 = !DILocation(line: 28, column: 37, scope: !10)
!35 = !DILocalVariable(name: "ns", arg: 2, scope: !10, file: !1, line: 28, type: !15)
!36 = !DILocation(line: 28, column: 57, scope: !10)
!37 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 30, type: !13)
!38 = !DILocation(line: 30, column: 9, scope: !10)
!39 = !DILocation(line: 31, column: 24, scope: !10)
!40 = !DILocation(line: 31, column: 5, scope: !10)
!41 = !DILocation(line: 32, column: 17, scope: !10)
!42 = !DILocation(line: 32, column: 24, scope: !10)
!43 = !DILocation(line: 32, column: 29, scope: !10)
!44 = !DILocation(line: 32, column: 32, scope: !10)
!45 = !DILocation(line: 32, column: 39, scope: !10)
!46 = !DILocation(line: 32, column: 5, scope: !10)
!47 = !DILocation(line: 33, column: 12, scope: !10)
!48 = !DILocation(line: 33, column: 5, scope: !10)
!49 = distinct !DISubprogram(name: "xmlC14NPrintNamespaces", scope: !1, file: !1, line: 36, type: !50, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !15, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlC14NCtx", file: !1, line: 21, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlC14NCtx", file: !1, line: 22, size: 64, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ns_rendered", scope: !54, file: !1, line: 23, baseType: !14, size: 64)
!57 = !DILocalVariable(name: "ns", arg: 1, scope: !49, file: !1, line: 36, type: !15)
!58 = !DILocation(line: 36, column: 36, scope: !49)
!59 = !DILocalVariable(name: "ctx", arg: 2, scope: !49, file: !1, line: 36, type: !52)
!60 = !DILocation(line: 36, column: 52, scope: !49)
!61 = !DILocation(line: 38, column: 1, scope: !49)
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !63, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!63 = !DISubroutineType(types: !64)
!64 = !{!13}
!65 = !DILocalVariable(name: "ctx", scope: !62, file: !1, line: 43, type: !53)
!66 = !DILocation(line: 43, column: 16, scope: !62)
!67 = !DILocation(line: 44, column: 24, scope: !62)
!68 = !DILocation(line: 44, column: 5, scope: !62)
!69 = !DILocalVariable(name: "visible", scope: !62, file: !1, line: 47, type: !13)
!70 = !DILocation(line: 47, column: 9, scope: !62)
!71 = !DILocalVariable(name: "has_empty_ns", scope: !62, file: !1, line: 48, type: !13)
!72 = !DILocation(line: 48, column: 9, scope: !62)
!73 = !DILocation(line: 50, column: 24, scope: !62)
!74 = !DILocation(line: 50, column: 5, scope: !62)
!75 = !DILocation(line: 51, column: 24, scope: !62)
!76 = !DILocation(line: 51, column: 5, scope: !62)
!77 = !DILocation(line: 54, column: 17, scope: !62)
!78 = !DILocation(line: 54, column: 25, scope: !62)
!79 = !DILocation(line: 54, column: 29, scope: !62)
!80 = !DILocation(line: 54, column: 28, scope: !62)
!81 = !DILocation(line: 0, scope: !62)
!82 = !DILocation(line: 54, column: 5, scope: !62)
!83 = !DILocation(line: 65, column: 5, scope: !62)
!84 = !DILocation(line: 67, column: 5, scope: !62)
