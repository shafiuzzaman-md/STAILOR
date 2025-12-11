; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gz_state = type { i8*, i8*, i32, i32, i8*, i32, i32 }
%struct.z_stream = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"(state->have + strm->avail_in <= 4096) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.__libxml2_xzread = private unnamed_addr constant [45 x i8] c"int __libxml2_xzread(gz_state *, z_stream *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"strm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__libxml2_xzread(%struct.gz_state* noundef %0, %struct.z_stream* noundef %1) #0 !dbg !17 {
  %3 = alloca %struct.gz_state*, align 8
  %4 = alloca %struct.z_stream*, align 8
  store %struct.gz_state* %0, %struct.gz_state** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.gz_state** %3, metadata !40, metadata !DIExpression()), !dbg !41
  store %struct.z_stream* %1, %struct.z_stream** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream** %4, metadata !42, metadata !DIExpression()), !dbg !43
  %5 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !44
  %6 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %5, i32 0, i32 3, !dbg !45
  %7 = load i32, i32* %6, align 4, !dbg !45
  %8 = zext i32 %7 to i64, !dbg !46
  %9 = inttoptr i64 %8 to i8*, !dbg !47
  %10 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !48
  %11 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %10, i32 0, i32 4, !dbg !49
  store i8* %9, i8** %11, align 8, !dbg !50
  %12 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !51
  %13 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %12, i32 0, i32 0, !dbg !52
  %14 = load i8*, i8** %13, align 8, !dbg !52
  %15 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !53
  %16 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %15, i32 0, i32 1, !dbg !54
  store i8* %14, i8** %16, align 8, !dbg !55
  %17 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !56
  %18 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %17, i32 0, i32 1, !dbg !58
  %19 = load i32, i32* %18, align 8, !dbg !58
  %20 = icmp ne i32 %19, 0, !dbg !56
  br i1 %20, label %21, label %61, !dbg !59

21:                                               ; preds = %2
  %22 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !60
  %23 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %22, i32 0, i32 2, !dbg !60
  %24 = load i32, i32* %23, align 8, !dbg !60
  %25 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !60
  %26 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %25, i32 0, i32 1, !dbg !60
  %27 = load i32, i32* %26, align 8, !dbg !60
  %28 = add i32 %24, %27, !dbg !60
  %29 = icmp ule i32 %28, 4096, !dbg !60
  br i1 %29, label %30, label %32, !dbg !60

30:                                               ; preds = %21
  br i1 true, label %31, label %32, !dbg !60

31:                                               ; preds = %30
  br label %34, !dbg !60

32:                                               ; preds = %30, %21
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.__libxml2_xzread, i64 0, i64 0)), !dbg !60
  br label %34, !dbg !60

34:                                               ; preds = %32, %31
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.__libxml2_xzread, i64 0, i64 0)), !dbg !62
  %36 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !63
  %37 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %36, i32 0, i32 1, !dbg !64
  %38 = load i8*, i8** %37, align 8, !dbg !64
  %39 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !65
  %40 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %39, i32 0, i32 2, !dbg !66
  %41 = load i32, i32* %40, align 8, !dbg !66
  %42 = zext i32 %41 to i64, !dbg !67
  %43 = getelementptr inbounds i8, i8* %38, i64 %42, !dbg !67
  %44 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !68
  %45 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %44, i32 0, i32 0, !dbg !69
  %46 = load i8*, i8** %45, align 8, !dbg !69
  %47 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !70
  %48 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %47, i32 0, i32 1, !dbg !71
  %49 = load i32, i32* %48, align 8, !dbg !71
  %50 = zext i32 %49 to i64, !dbg !70
  %51 = call i8* @memcpy(i8* %43, i8* %46, i64 %50), !dbg !72
  %52 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !73
  %53 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %52, i32 0, i32 1, !dbg !74
  %54 = load i32, i32* %53, align 8, !dbg !74
  %55 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !75
  %56 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %55, i32 0, i32 2, !dbg !76
  %57 = load i32, i32* %56, align 8, !dbg !77
  %58 = add i32 %57, %54, !dbg !77
  store i32 %58, i32* %56, align 8, !dbg !77
  %59 = load %struct.z_stream*, %struct.z_stream** %4, align 8, !dbg !78
  %60 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %59, i32 0, i32 1, !dbg !79
  store i32 0, i32* %60, align 8, !dbg !80
  br label %61, !dbg !81

61:                                               ; preds = %34, %2
  %62 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !82
  %63 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %62, i32 0, i32 5, !dbg !83
  store i32 1, i32* %63, align 8, !dbg !84
  %64 = load %struct.gz_state*, %struct.gz_state** %3, align 8, !dbg !85
  %65 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %64, i32 0, i32 6, !dbg !86
  store i32 1, i32* %65, align 4, !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !89 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gz_state*, align 8
  %3 = alloca %struct.z_stream*, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.gz_state** %2, metadata !92, metadata !DIExpression()), !dbg !93
  %6 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !94
  %7 = bitcast i8* %6 to %struct.gz_state*, !dbg !94
  store %struct.gz_state* %7, %struct.gz_state** %2, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata %struct.z_stream** %3, metadata !95, metadata !DIExpression()), !dbg !96
  %8 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !97
  %9 = bitcast i8* %8 to %struct.z_stream*, !dbg !97
  store %struct.z_stream* %9, %struct.z_stream** %3, align 8, !dbg !96
  %10 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !98
  %11 = bitcast %struct.gz_state* %10 to i8*, !dbg !98
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 40, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)), !dbg !99
  %12 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !100
  %13 = bitcast %struct.z_stream* %12 to i8*, !dbg !100
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !101
  %14 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !102
  %15 = icmp ne %struct.gz_state* %14, null, !dbg !103
  %16 = zext i1 %15 to i32, !dbg !103
  %17 = sext i32 %16 to i64, !dbg !102
  call void @klee_assume(i64 noundef %17), !dbg !104
  %18 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !105
  %19 = icmp ne %struct.z_stream* %18, null, !dbg !106
  %20 = zext i1 %19 to i32, !dbg !106
  %21 = sext i32 %20 to i64, !dbg !105
  call void @klee_assume(i64 noundef %21), !dbg !107
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !108, metadata !DIExpression()), !dbg !112
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !113
  %23 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !114
  %24 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %23, i32 0, i32 0, !dbg !115
  store i8* %22, i8** %24, align 8, !dbg !116
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !117
  %26 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !118
  %27 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %26, i32 0, i32 1, !dbg !119
  store i8* %25, i8** %27, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !121, metadata !DIExpression()), !dbg !122
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !123
  %29 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !124
  %30 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %29, i32 0, i32 0, !dbg !125
  store i8* %28, i8** %30, align 8, !dbg !126
  %31 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !127
  %32 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %31, i32 0, i32 1, !dbg !128
  %33 = load i32, i32* %32, align 8, !dbg !128
  %34 = icmp uge i32 %33, 0, !dbg !129
  br i1 %34, label %35, label %40, !dbg !130

35:                                               ; preds = %0
  %36 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !131
  %37 = getelementptr inbounds %struct.z_stream, %struct.z_stream* %36, i32 0, i32 1, !dbg !132
  %38 = load i32, i32* %37, align 8, !dbg !132
  %39 = icmp ule i32 %38, 4096, !dbg !133
  br label %40

40:                                               ; preds = %35, %0
  %41 = phi i1 [ false, %0 ], [ %39, %35 ], !dbg !134
  %42 = zext i1 %41 to i32, !dbg !130
  %43 = sext i32 %42 to i64, !dbg !127
  call void @klee_assume(i64 noundef %43), !dbg !135
  %44 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !136
  %45 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %44, i32 0, i32 2, !dbg !137
  %46 = load i32, i32* %45, align 8, !dbg !137
  %47 = icmp uge i32 %46, 0, !dbg !138
  br i1 %47, label %48, label %53, !dbg !139

48:                                               ; preds = %40
  %49 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !140
  %50 = getelementptr inbounds %struct.gz_state, %struct.gz_state* %49, i32 0, i32 2, !dbg !141
  %51 = load i32, i32* %50, align 8, !dbg !141
  %52 = icmp ule i32 %51, 4096, !dbg !142
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i1 [ false, %40 ], [ %52, %48 ], !dbg !134
  %55 = zext i1 %54 to i32, !dbg !139
  %56 = sext i32 %55 to i64, !dbg !136
  call void @klee_assume(i64 noundef %56), !dbg !143
  %57 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !144
  %58 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !145
  %59 = call i32 @__libxml2_xzread(%struct.gz_state* noundef %57, %struct.z_stream* noundef %58), !dbg !146
  %60 = load %struct.gz_state*, %struct.gz_state** %2, align 8, !dbg !147
  %61 = bitcast %struct.gz_state* %60 to i8*, !dbg !147
  call void @free(i8* noundef %61) #7, !dbg !148
  %62 = load %struct.z_stream*, %struct.z_stream** %3, align 8, !dbg !149
  %63 = bitcast %struct.z_stream* %62 to i8*, !dbg !149
  call void @free(i8* noundef %63) #7, !dbg !150
  ret i32 0, !dbg !151
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !152 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !DIExpression()), !dbg !161
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %7, metadata !166, metadata !DIExpression()), !dbg !169
  %9 = load i8*, i8** %4, align 8, !dbg !170
  store i8* %9, i8** %7, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i8** %8, metadata !171, metadata !DIExpression()), !dbg !174
  %10 = load i8*, i8** %5, align 8, !dbg !175
  store i8* %10, i8** %8, align 8, !dbg !174
  br label %11, !dbg !176

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !177
  %13 = add i64 %12, -1, !dbg !177
  store i64 %13, i64* %6, align 8, !dbg !177
  %14 = icmp ugt i64 %12, 0, !dbg !178
  br i1 %14, label %15, label %21, !dbg !176

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %8, align 8, !dbg !179
  %18 = load i8, i8* %16, align 1, !dbg !180
  %19 = load i8*, i8** %7, align 8, !dbg !181
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !181
  store i8* %20, i8** %7, align 8, !dbg !181
  store i8 %18, i8* %19, align 1, !dbg !182
  br label %11, !dbg !176, !llvm.loop !183

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %22, !dbg !186
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/281_xzlib.c_522_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "247b459950b0f0d9a3992b54a1c70b21")
!2 = !{!3, !5, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "__libxml2_xzread", scope: !1, file: !1, line: 26, type: !18, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !21, !33}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gz_state", file: !1, line: 23, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 15, size: 320, elements: !24)
!24 = !{!25, !26, !27, !29, !30, !31, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !23, file: !1, line: 16, baseType: !3, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !23, file: !1, line: 17, baseType: !3, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "have", scope: !23, file: !1, line: 18, baseType: !28, size: 32, offset: 128)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !23, file: !1, line: 19, baseType: !28, size: 32, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !23, file: !1, line: 20, baseType: !3, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "how", scope: !23, file: !1, line: 21, baseType: !20, size: 32, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "direct", scope: !23, file: !1, line: 22, baseType: !20, size: 32, offset: 288)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !1, line: 13, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !35, file: !1, line: 11, baseType: !3, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !35, file: !1, line: 12, baseType: !28, size: 32, offset: 64)
!39 = !{}
!40 = !DILocalVariable(name: "state", arg: 1, scope: !17, file: !1, line: 26, type: !21)
!41 = !DILocation(line: 26, column: 32, scope: !17)
!42 = !DILocalVariable(name: "strm", arg: 2, scope: !17, file: !1, line: 26, type: !33)
!43 = !DILocation(line: 26, column: 49, scope: !17)
!44 = !DILocation(line: 28, column: 50, scope: !17)
!45 = !DILocation(line: 28, column: 57, scope: !17)
!46 = !DILocation(line: 28, column: 35, scope: !17)
!47 = !DILocation(line: 28, column: 18, scope: !17)
!48 = !DILocation(line: 28, column: 5, scope: !17)
!49 = !DILocation(line: 28, column: 12, scope: !17)
!50 = !DILocation(line: 28, column: 16, scope: !17)
!51 = !DILocation(line: 31, column: 19, scope: !17)
!52 = !DILocation(line: 31, column: 26, scope: !17)
!53 = !DILocation(line: 31, column: 5, scope: !17)
!54 = !DILocation(line: 31, column: 12, scope: !17)
!55 = !DILocation(line: 31, column: 17, scope: !17)
!56 = !DILocation(line: 34, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !17, file: !1, line: 34, column: 9)
!58 = !DILocation(line: 34, column: 15, scope: !57)
!59 = !DILocation(line: 34, column: 9, scope: !17)
!60 = !DILocation(line: 38, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 34, column: 25)
!62 = !DILocation(line: 41, column: 9, scope: !61)
!63 = !DILocation(line: 43, column: 16, scope: !61)
!64 = !DILocation(line: 43, column: 23, scope: !61)
!65 = !DILocation(line: 43, column: 30, scope: !61)
!66 = !DILocation(line: 43, column: 37, scope: !61)
!67 = !DILocation(line: 43, column: 28, scope: !61)
!68 = !DILocation(line: 43, column: 43, scope: !61)
!69 = !DILocation(line: 43, column: 49, scope: !61)
!70 = !DILocation(line: 43, column: 58, scope: !61)
!71 = !DILocation(line: 43, column: 64, scope: !61)
!72 = !DILocation(line: 43, column: 9, scope: !61)
!73 = !DILocation(line: 44, column: 24, scope: !61)
!74 = !DILocation(line: 44, column: 30, scope: !61)
!75 = !DILocation(line: 44, column: 9, scope: !61)
!76 = !DILocation(line: 44, column: 16, scope: !61)
!77 = !DILocation(line: 44, column: 21, scope: !61)
!78 = !DILocation(line: 45, column: 9, scope: !61)
!79 = !DILocation(line: 45, column: 15, scope: !61)
!80 = !DILocation(line: 45, column: 24, scope: !61)
!81 = !DILocation(line: 46, column: 5, scope: !61)
!82 = !DILocation(line: 48, column: 5, scope: !17)
!83 = !DILocation(line: 48, column: 12, scope: !17)
!84 = !DILocation(line: 48, column: 16, scope: !17)
!85 = !DILocation(line: 49, column: 5, scope: !17)
!86 = !DILocation(line: 49, column: 12, scope: !17)
!87 = !DILocation(line: 49, column: 19, scope: !17)
!88 = !DILocation(line: 50, column: 5, scope: !17)
!89 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !90, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!90 = !DISubroutineType(types: !91)
!91 = !{!20}
!92 = !DILocalVariable(name: "state", scope: !89, file: !1, line: 55, type: !21)
!93 = !DILocation(line: 55, column: 15, scope: !89)
!94 = !DILocation(line: 55, column: 23, scope: !89)
!95 = !DILocalVariable(name: "strm", scope: !89, file: !1, line: 56, type: !33)
!96 = !DILocation(line: 56, column: 15, scope: !89)
!97 = !DILocation(line: 56, column: 22, scope: !89)
!98 = !DILocation(line: 59, column: 24, scope: !89)
!99 = !DILocation(line: 59, column: 5, scope: !89)
!100 = !DILocation(line: 60, column: 24, scope: !89)
!101 = !DILocation(line: 60, column: 5, scope: !89)
!102 = !DILocation(line: 63, column: 17, scope: !89)
!103 = !DILocation(line: 63, column: 23, scope: !89)
!104 = !DILocation(line: 63, column: 5, scope: !89)
!105 = !DILocation(line: 64, column: 17, scope: !89)
!106 = !DILocation(line: 64, column: 22, scope: !89)
!107 = !DILocation(line: 64, column: 5, scope: !89)
!108 = !DILocalVariable(name: "buffer", scope: !89, file: !1, line: 67, type: !109)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 4096)
!112 = !DILocation(line: 67, column: 19, scope: !89)
!113 = !DILocation(line: 68, column: 18, scope: !89)
!114 = !DILocation(line: 68, column: 5, scope: !89)
!115 = !DILocation(line: 68, column: 12, scope: !89)
!116 = !DILocation(line: 68, column: 16, scope: !89)
!117 = !DILocation(line: 69, column: 19, scope: !89)
!118 = !DILocation(line: 69, column: 5, scope: !89)
!119 = !DILocation(line: 69, column: 12, scope: !89)
!120 = !DILocation(line: 69, column: 17, scope: !89)
!121 = !DILocalVariable(name: "in_buffer", scope: !89, file: !1, line: 72, type: !109)
!122 = !DILocation(line: 72, column: 19, scope: !89)
!123 = !DILocation(line: 73, column: 21, scope: !89)
!124 = !DILocation(line: 73, column: 5, scope: !89)
!125 = !DILocation(line: 73, column: 11, scope: !89)
!126 = !DILocation(line: 73, column: 19, scope: !89)
!127 = !DILocation(line: 76, column: 17, scope: !89)
!128 = !DILocation(line: 76, column: 23, scope: !89)
!129 = !DILocation(line: 76, column: 32, scope: !89)
!130 = !DILocation(line: 76, column: 37, scope: !89)
!131 = !DILocation(line: 76, column: 40, scope: !89)
!132 = !DILocation(line: 76, column: 46, scope: !89)
!133 = !DILocation(line: 76, column: 55, scope: !89)
!134 = !DILocation(line: 0, scope: !89)
!135 = !DILocation(line: 76, column: 5, scope: !89)
!136 = !DILocation(line: 79, column: 17, scope: !89)
!137 = !DILocation(line: 79, column: 24, scope: !89)
!138 = !DILocation(line: 79, column: 29, scope: !89)
!139 = !DILocation(line: 79, column: 34, scope: !89)
!140 = !DILocation(line: 79, column: 37, scope: !89)
!141 = !DILocation(line: 79, column: 44, scope: !89)
!142 = !DILocation(line: 79, column: 49, scope: !89)
!143 = !DILocation(line: 79, column: 5, scope: !89)
!144 = !DILocation(line: 82, column: 22, scope: !89)
!145 = !DILocation(line: 82, column: 29, scope: !89)
!146 = !DILocation(line: 82, column: 5, scope: !89)
!147 = !DILocation(line: 84, column: 10, scope: !89)
!148 = !DILocation(line: 84, column: 5, scope: !89)
!149 = !DILocation(line: 85, column: 10, scope: !89)
!150 = !DILocation(line: 85, column: 5, scope: !89)
!151 = !DILocation(line: 86, column: 5, scope: !89)
!152 = distinct !DISubprogram(name: "memcpy", scope: !153, file: !153, line: 12, type: !154, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !39)
!153 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!154 = !DISubroutineType(types: !155)
!155 = !{!6, !6, !156, !158}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !159, line: 46, baseType: !5)
!159 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!160 = !DILocalVariable(name: "destaddr", arg: 1, scope: !152, file: !153, line: 12, type: !6)
!161 = !DILocation(line: 12, column: 20, scope: !152)
!162 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !152, file: !153, line: 12, type: !156)
!163 = !DILocation(line: 12, column: 42, scope: !152)
!164 = !DILocalVariable(name: "len", arg: 3, scope: !152, file: !153, line: 12, type: !158)
!165 = !DILocation(line: 12, column: 58, scope: !152)
!166 = !DILocalVariable(name: "dest", scope: !152, file: !153, line: 13, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DILocation(line: 13, column: 9, scope: !152)
!170 = !DILocation(line: 13, column: 16, scope: !152)
!171 = !DILocalVariable(name: "src", scope: !152, file: !153, line: 14, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!174 = !DILocation(line: 14, column: 15, scope: !152)
!175 = !DILocation(line: 14, column: 21, scope: !152)
!176 = !DILocation(line: 16, column: 3, scope: !152)
!177 = !DILocation(line: 16, column: 13, scope: !152)
!178 = !DILocation(line: 16, column: 16, scope: !152)
!179 = !DILocation(line: 17, column: 19, scope: !152)
!180 = !DILocation(line: 17, column: 15, scope: !152)
!181 = !DILocation(line: 17, column: 10, scope: !152)
!182 = !DILocation(line: 17, column: 13, scope: !152)
!183 = distinct !{!183, !176, !179, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 18, column: 10, scope: !152)
!186 = !DILocation(line: 18, column: 3, scope: !152)
