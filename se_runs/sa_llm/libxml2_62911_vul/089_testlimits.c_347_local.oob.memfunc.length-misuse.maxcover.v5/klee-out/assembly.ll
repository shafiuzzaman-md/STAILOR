; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.testlimits_state = type { i8*, i8*, i32, i64, i64, i64, i64, [4096 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"curlen\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.testlimits_state, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.testlimits_state* %2, metadata !17, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [4096 x i8]* %3, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !42, metadata !DIExpression()), !dbg !43
  %6 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 2, !dbg !44
  %7 = bitcast i32* %6 to i8*, !dbg !45
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !46
  %8 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !47
  %9 = bitcast i64* %8 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %10 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !50
  %11 = bitcast i64* %10 to i8*, !dbg !51
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !52
  %12 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 5, !dbg !53
  %13 = bitcast i64* %12 to i8*, !dbg !54
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !55
  %14 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 6, !dbg !56
  %15 = bitcast i64* %14 to i8*, !dbg !57
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !58
  %16 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 2, !dbg !59
  %17 = load i32, i32* %16, align 8, !dbg !59
  %18 = icmp eq i32 %17, 2, !dbg !60
  %19 = zext i1 %18 to i32, !dbg !60
  %20 = sext i32 %19 to i64, !dbg !61
  call void @klee_assume(i64 noundef %20), !dbg !62
  %21 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !63
  %22 = load i64, i64* %21, align 8, !dbg !63
  %23 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !64
  %24 = load i64, i64* %23, align 8, !dbg !64
  %25 = icmp ult i64 %22, %24, !dbg !65
  %26 = zext i1 %25 to i32, !dbg !65
  %27 = sext i32 %26 to i64, !dbg !66
  call void @klee_assume(i64 noundef %27), !dbg !67
  %28 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !68
  %29 = load i64, i64* %28, align 8, !dbg !68
  %30 = icmp ugt i64 %29, 0, !dbg !69
  %31 = zext i1 %30 to i32, !dbg !69
  %32 = sext i32 %31 to i64, !dbg !70
  call void @klee_assume(i64 noundef %32), !dbg !71
  %33 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !72
  %34 = load i64, i64* %33, align 8, !dbg !72
  %35 = icmp ule i64 %34, 4096, !dbg !73
  %36 = zext i1 %35 to i32, !dbg !73
  %37 = sext i32 %36 to i64, !dbg !74
  call void @klee_assume(i64 noundef %37), !dbg !75
  %38 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !76
  %39 = load i64, i64* %38, align 8, !dbg !76
  %40 = icmp ule i64 %39, 4096, !dbg !77
  %41 = zext i1 %40 to i32, !dbg !77
  %42 = sext i32 %41 to i64, !dbg !78
  call void @klee_assume(i64 noundef %42), !dbg !79
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0, !dbg !80
  %44 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 0, !dbg !81
  store i8* %43, i8** %44, align 8, !dbg !82
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !83
  %46 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 1, !dbg !84
  store i8* %45, i8** %46, align 8, !dbg !85
  %47 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 7, !dbg !86
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %47, i64 0, i64 0, !dbg !87
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !87
  %50 = call i8* @memcpy(i8* %48, i8* %49, i64 4096), !dbg !87
  %51 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 2, !dbg !88
  %52 = load i32, i32* %51, align 8, !dbg !88
  %53 = icmp eq i32 %52, 2, !dbg !90
  br i1 %53, label %54, label %94, !dbg !91

54:                                               ; preds = %0
  %55 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !92
  %56 = load i64, i64* %55, align 8, !dbg !92
  %57 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !95
  %58 = load i64, i64* %57, align 8, !dbg !95
  %59 = icmp uge i64 %56, %58, !dbg !96
  br i1 %59, label %60, label %74, !dbg !97

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !98
  %62 = load i64, i64* %61, align 8, !dbg !98
  %63 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !100
  store i64 %62, i64* %63, align 8, !dbg !101
  %64 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !102
  store i64 0, i64* %64, align 8, !dbg !103
  %65 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 0, !dbg !104
  %66 = load i8*, i8** %65, align 8, !dbg !104
  %67 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 1, !dbg !105
  %68 = load i8*, i8** %67, align 8, !dbg !105
  %69 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !106
  %70 = load i64, i64* %69, align 8, !dbg !106
  %71 = call i8* @memcpy(i8* %66, i8* %68, i64 %70), !dbg !107
  %72 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 2, !dbg !108
  store i32 3, i32* %72, align 8, !dbg !109
  %73 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 5, !dbg !110
  store i64 0, i64* %73, align 8, !dbg !111
  br label %93, !dbg !112

74:                                               ; preds = %54
  %75 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  %76 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 0, !dbg !115
  %77 = load i8*, i8** %76, align 8, !dbg !115
  %78 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 1, !dbg !116
  %79 = load i8*, i8** %78, align 8, !dbg !116
  %80 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !117
  %81 = load i64, i64* %80, align 8, !dbg !117
  %82 = call i8* @memcpy(i8* %77, i8* %79, i64 %81), !dbg !118
  %83 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !119
  %84 = load i64, i64* %83, align 8, !dbg !119
  %85 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 4, !dbg !120
  %86 = load i64, i64* %85, align 8, !dbg !121
  %87 = sub i64 %86, %84, !dbg !121
  store i64 %87, i64* %85, align 8, !dbg !121
  %88 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !122
  %89 = load i64, i64* %88, align 8, !dbg !122
  %90 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 1, !dbg !123
  %91 = load i8*, i8** %90, align 8, !dbg !124
  %92 = getelementptr inbounds i8, i8* %91, i64 %89, !dbg !124
  store i8* %92, i8** %90, align 8, !dbg !124
  br label %93

93:                                               ; preds = %74, %60
  br label %126, !dbg !125

94:                                               ; preds = %0
  %95 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 2, !dbg !126
  %96 = load i32, i32* %95, align 8, !dbg !126
  %97 = icmp eq i32 %96, 1, !dbg !128
  br i1 %97, label %98, label %125, !dbg !129

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !130
  %100 = load i64, i64* %99, align 8, !dbg !130
  %101 = icmp ugt i64 %100, 4096, !dbg !133
  br i1 %101, label %102, label %104, !dbg !134

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !135
  store i64 4096, i64* %103, align 8, !dbg !136
  br label %104, !dbg !137

104:                                              ; preds = %102, %98
  %105 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 0, !dbg !138
  %106 = load i8*, i8** %105, align 8, !dbg !138
  %107 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 7, !dbg !139
  %108 = getelementptr inbounds [4096 x i8], [4096 x i8]* %107, i64 0, i64 0, !dbg !140
  %109 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !141
  %110 = load i64, i64* %109, align 8, !dbg !141
  %111 = call i8* @memcpy(i8* %106, i8* %108, i64 %110), !dbg !142
  %112 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 3, !dbg !143
  %113 = load i64, i64* %112, align 8, !dbg !143
  %114 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 5, !dbg !144
  %115 = load i64, i64* %114, align 8, !dbg !145
  %116 = add i64 %115, %113, !dbg !145
  store i64 %116, i64* %114, align 8, !dbg !145
  %117 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 5, !dbg !146
  %118 = load i64, i64* %117, align 8, !dbg !146
  %119 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 6, !dbg !148
  %120 = load i64, i64* %119, align 8, !dbg !148
  %121 = icmp uge i64 %118, %120, !dbg !149
  br i1 %121, label %122, label %124, !dbg !150

122:                                              ; preds = %104
  %123 = getelementptr inbounds %struct.testlimits_state, %struct.testlimits_state* %2, i32 0, i32 5, !dbg !151
  store i64 0, i64* %123, align 8, !dbg !153
  br label %124, !dbg !154

124:                                              ; preds = %122, %104
  br label %125, !dbg !155

125:                                              ; preds = %124, %94
  br label %126

126:                                              ; preds = %125, %93
  ret i32 0, !dbg !156
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !157 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !164, metadata !DIExpression()), !dbg !165
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !166, metadata !DIExpression()), !dbg !167
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8** %7, metadata !170, metadata !DIExpression()), !dbg !171
  %9 = load i8*, i8** %4, align 8, !dbg !172
  store i8* %9, i8** %7, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %8, metadata !173, metadata !DIExpression()), !dbg !176
  %10 = load i8*, i8** %5, align 8, !dbg !177
  store i8* %10, i8** %8, align 8, !dbg !176
  br label %11, !dbg !178

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !179
  %13 = add i64 %12, -1, !dbg !179
  store i64 %13, i64* %6, align 8, !dbg !179
  %14 = icmp ugt i64 %12, 0, !dbg !180
  br i1 %14, label %15, label %21, !dbg !178

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %8, align 8, !dbg !181
  %18 = load i8, i8* %16, align 1, !dbg !182
  %19 = load i8*, i8** %7, align 8, !dbg !183
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !183
  store i8* %20, i8** %7, align 8, !dbg !183
  store i8 %18, i8* %19, align 1, !dbg !184
  br label %11, !dbg !178, !llvm.loop !185

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !187
  ret i8* %22, !dbg !188
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/089_testlimits.c_347_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/WorkDrive/SAILR", checksumkind: CSK_MD5, checksum: "9b3b8155aa7528f8b1ce08d4cd9a7e8b")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !13, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "state", scope: !12, file: !1, line: 20, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "testlimits_state", file: !1, line: 17, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 8, size: 33216, elements: !20)
!20 = !{!21, !24, !25, !26, !30, !31, !32, !33}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !1, line: 9, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !19, file: !1, line: 10, baseType: !22, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !19, file: !1, line: 11, baseType: !15, size: 32, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !1, line: 12, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 46, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !19, file: !1, line: 13, baseType: !27, size: 64, offset: 256)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !19, file: !1, line: 14, baseType: !27, size: 64, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !19, file: !1, line: 15, baseType: !27, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "filling", scope: !19, file: !1, line: 16, baseType: !34, size: 32768, offset: 448)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32768, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 4096)
!37 = !DILocation(line: 20, column: 22, scope: !12)
!38 = !DILocalVariable(name: "buffer_sym", scope: !12, file: !1, line: 21, type: !34)
!39 = !DILocation(line: 21, column: 10, scope: !12)
!40 = !DILocalVariable(name: "current_sym", scope: !12, file: !1, line: 22, type: !34)
!41 = !DILocation(line: 22, column: 10, scope: !12)
!42 = !DILocalVariable(name: "filling_sym", scope: !12, file: !1, line: 23, type: !34)
!43 = !DILocation(line: 23, column: 10, scope: !12)
!44 = !DILocation(line: 25, column: 31, scope: !12)
!45 = !DILocation(line: 25, column: 24, scope: !12)
!46 = !DILocation(line: 25, column: 5, scope: !12)
!47 = !DILocation(line: 26, column: 31, scope: !12)
!48 = !DILocation(line: 26, column: 24, scope: !12)
!49 = !DILocation(line: 26, column: 5, scope: !12)
!50 = !DILocation(line: 27, column: 31, scope: !12)
!51 = !DILocation(line: 27, column: 24, scope: !12)
!52 = !DILocation(line: 27, column: 5, scope: !12)
!53 = !DILocation(line: 28, column: 31, scope: !12)
!54 = !DILocation(line: 28, column: 24, scope: !12)
!55 = !DILocation(line: 28, column: 5, scope: !12)
!56 = !DILocation(line: 29, column: 31, scope: !12)
!57 = !DILocation(line: 29, column: 24, scope: !12)
!58 = !DILocation(line: 29, column: 5, scope: !12)
!59 = !DILocation(line: 31, column: 23, scope: !12)
!60 = !DILocation(line: 31, column: 31, scope: !12)
!61 = !DILocation(line: 31, column: 17, scope: !12)
!62 = !DILocation(line: 31, column: 5, scope: !12)
!63 = !DILocation(line: 32, column: 23, scope: !12)
!64 = !DILocation(line: 32, column: 35, scope: !12)
!65 = !DILocation(line: 32, column: 27, scope: !12)
!66 = !DILocation(line: 32, column: 17, scope: !12)
!67 = !DILocation(line: 32, column: 5, scope: !12)
!68 = !DILocation(line: 33, column: 23, scope: !12)
!69 = !DILocation(line: 33, column: 27, scope: !12)
!70 = !DILocation(line: 33, column: 17, scope: !12)
!71 = !DILocation(line: 33, column: 5, scope: !12)
!72 = !DILocation(line: 34, column: 23, scope: !12)
!73 = !DILocation(line: 34, column: 27, scope: !12)
!74 = !DILocation(line: 34, column: 17, scope: !12)
!75 = !DILocation(line: 34, column: 5, scope: !12)
!76 = !DILocation(line: 35, column: 23, scope: !12)
!77 = !DILocation(line: 35, column: 28, scope: !12)
!78 = !DILocation(line: 35, column: 17, scope: !12)
!79 = !DILocation(line: 35, column: 5, scope: !12)
!80 = !DILocation(line: 37, column: 20, scope: !12)
!81 = !DILocation(line: 37, column: 11, scope: !12)
!82 = !DILocation(line: 37, column: 18, scope: !12)
!83 = !DILocation(line: 38, column: 21, scope: !12)
!84 = !DILocation(line: 38, column: 11, scope: !12)
!85 = !DILocation(line: 38, column: 19, scope: !12)
!86 = !DILocation(line: 39, column: 18, scope: !12)
!87 = !DILocation(line: 39, column: 5, scope: !12)
!88 = !DILocation(line: 41, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !12, file: !1, line: 41, column: 9)
!90 = !DILocation(line: 41, column: 23, scope: !89)
!91 = !DILocation(line: 41, column: 9, scope: !12)
!92 = !DILocation(line: 42, column: 19, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 42, column: 13)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 41, column: 29)
!95 = !DILocation(line: 42, column: 32, scope: !93)
!96 = !DILocation(line: 42, column: 23, scope: !93)
!97 = !DILocation(line: 42, column: 13, scope: !94)
!98 = !DILocation(line: 43, column: 31, scope: !99)
!99 = distinct !DILexicalBlock(scope: !93, file: !1, line: 42, column: 38)
!100 = !DILocation(line: 43, column: 19, scope: !99)
!101 = !DILocation(line: 43, column: 23, scope: !99)
!102 = !DILocation(line: 44, column: 19, scope: !99)
!103 = !DILocation(line: 44, column: 24, scope: !99)
!104 = !DILocation(line: 45, column: 26, scope: !99)
!105 = !DILocation(line: 45, column: 40, scope: !99)
!106 = !DILocation(line: 45, column: 55, scope: !99)
!107 = !DILocation(line: 45, column: 13, scope: !99)
!108 = !DILocation(line: 46, column: 19, scope: !99)
!109 = !DILocation(line: 46, column: 27, scope: !99)
!110 = !DILocation(line: 47, column: 19, scope: !99)
!111 = !DILocation(line: 47, column: 26, scope: !99)
!112 = !DILocation(line: 48, column: 9, scope: !99)
!113 = !DILocation(line: 49, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !93, file: !1, line: 48, column: 16)
!115 = !DILocation(line: 50, column: 26, scope: !114)
!116 = !DILocation(line: 50, column: 40, scope: !114)
!117 = !DILocation(line: 50, column: 55, scope: !114)
!118 = !DILocation(line: 50, column: 13, scope: !114)
!119 = !DILocation(line: 51, column: 33, scope: !114)
!120 = !DILocation(line: 51, column: 19, scope: !114)
!121 = !DILocation(line: 51, column: 24, scope: !114)
!122 = !DILocation(line: 52, column: 36, scope: !114)
!123 = !DILocation(line: 52, column: 19, scope: !114)
!124 = !DILocation(line: 52, column: 27, scope: !114)
!125 = !DILocation(line: 54, column: 5, scope: !94)
!126 = !DILocation(line: 54, column: 22, scope: !127)
!127 = distinct !DILexicalBlock(scope: !89, file: !1, line: 54, column: 16)
!128 = !DILocation(line: 54, column: 30, scope: !127)
!129 = !DILocation(line: 54, column: 16, scope: !89)
!130 = !DILocation(line: 55, column: 19, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 55, column: 13)
!132 = distinct !DILexicalBlock(scope: !127, file: !1, line: 54, column: 36)
!133 = !DILocation(line: 55, column: 23, scope: !131)
!134 = !DILocation(line: 55, column: 13, scope: !132)
!135 = !DILocation(line: 55, column: 38, scope: !131)
!136 = !DILocation(line: 55, column: 42, scope: !131)
!137 = !DILocation(line: 55, column: 32, scope: !131)
!138 = !DILocation(line: 56, column: 22, scope: !132)
!139 = !DILocation(line: 56, column: 37, scope: !132)
!140 = !DILocation(line: 56, column: 31, scope: !132)
!141 = !DILocation(line: 56, column: 55, scope: !132)
!142 = !DILocation(line: 56, column: 9, scope: !132)
!143 = !DILocation(line: 57, column: 31, scope: !132)
!144 = !DILocation(line: 57, column: 15, scope: !132)
!145 = !DILocation(line: 57, column: 22, scope: !132)
!146 = !DILocation(line: 58, column: 19, scope: !147)
!147 = distinct !DILexicalBlock(scope: !132, file: !1, line: 58, column: 13)
!148 = !DILocation(line: 58, column: 35, scope: !147)
!149 = !DILocation(line: 58, column: 26, scope: !147)
!150 = !DILocation(line: 58, column: 13, scope: !132)
!151 = !DILocation(line: 59, column: 19, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 58, column: 43)
!153 = !DILocation(line: 59, column: 26, scope: !152)
!154 = !DILocation(line: 60, column: 9, scope: !152)
!155 = !DILocation(line: 61, column: 5, scope: !132)
!156 = !DILocation(line: 63, column: 5, scope: !12)
!157 = distinct !DISubprogram(name: "memcpy", scope: !158, file: !158, line: 12, type: !159, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!158 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !161, !162, !27}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DILocalVariable(name: "destaddr", arg: 1, scope: !157, file: !158, line: 12, type: !161)
!165 = !DILocation(line: 12, column: 20, scope: !157)
!166 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !157, file: !158, line: 12, type: !162)
!167 = !DILocation(line: 12, column: 42, scope: !157)
!168 = !DILocalVariable(name: "len", arg: 3, scope: !157, file: !158, line: 12, type: !27)
!169 = !DILocation(line: 12, column: 58, scope: !157)
!170 = !DILocalVariable(name: "dest", scope: !157, file: !158, line: 13, type: !22)
!171 = !DILocation(line: 13, column: 9, scope: !157)
!172 = !DILocation(line: 13, column: 16, scope: !157)
!173 = !DILocalVariable(name: "src", scope: !157, file: !158, line: 14, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!176 = !DILocation(line: 14, column: 15, scope: !157)
!177 = !DILocation(line: 14, column: 21, scope: !157)
!178 = !DILocation(line: 16, column: 3, scope: !157)
!179 = !DILocation(line: 16, column: 13, scope: !157)
!180 = !DILocation(line: 16, column: 16, scope: !157)
!181 = !DILocation(line: 17, column: 19, scope: !157)
!182 = !DILocation(line: 17, column: 15, scope: !157)
!183 = !DILocation(line: 17, column: 10, scope: !157)
!184 = !DILocation(line: 17, column: 13, scope: !157)
!185 = distinct !{!185, !178, !181, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 18, column: 10, scope: !157)
!188 = !DILocation(line: 18, column: 3, scope: !157)
