; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlParserInput*, i8*, i32, i32 }
%struct._xmlParserInput = type { i8*, i8* }
%struct._xmlSAXHandler = type { void (i8*, i8*, i32)* }

@.str = private unnamed_addr constant [10 x i8] c"<![CDATA[\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"(ctxt->input->cur - ctxt->input->base >= 9) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseExternalEntityPrivate = private unnamed_addr constant [85 x i8] c"void xmlParseExternalEntityPrivate(xmlParserCtxt *, const char *, const char *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"cur_ptr\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"URL_buf\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ID_buf\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"base_param\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_cdataBlock(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !40 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !42, metadata !DIExpression()), !dbg !43
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !46, metadata !DIExpression()), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlParseExternalEntityPrivate(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2, i32 noundef %3) #0 !dbg !49 {
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !52, metadata !DIExpression()), !dbg !53
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !58, metadata !DIExpression()), !dbg !59
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !60
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %9, i32 0, i32 0, !dbg !62
  %11 = load %struct._xmlParserInput*, %struct._xmlParserInput** %10, align 8, !dbg !62
  %12 = icmp ne %struct._xmlParserInput* %11, null, !dbg !60
  br i1 %12, label %13, label %103, !dbg !63

13:                                               ; preds = %4
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !64
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !65
  %16 = load %struct._xmlParserInput*, %struct._xmlParserInput** %15, align 8, !dbg !65
  %17 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %16, i32 0, i32 0, !dbg !66
  %18 = load i8*, i8** %17, align 8, !dbg !66
  %19 = icmp ne i8* %18, null, !dbg !64
  br i1 %19, label %20, label %103, !dbg !67

20:                                               ; preds = %13
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !68
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 0, !dbg !69
  %23 = load %struct._xmlParserInput*, %struct._xmlParserInput** %22, align 8, !dbg !69
  %24 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %23, i32 0, i32 1, !dbg !70
  %25 = load i8*, i8** %24, align 8, !dbg !70
  %26 = icmp ne i8* %25, null, !dbg !68
  br i1 %26, label %27, label %103, !dbg !71

27:                                               ; preds = %20
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !72
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 0, !dbg !75
  %30 = load %struct._xmlParserInput*, %struct._xmlParserInput** %29, align 8, !dbg !75
  %31 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %30, i32 0, i32 0, !dbg !76
  %32 = load i8*, i8** %31, align 8, !dbg !76
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !77
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !78
  %35 = load %struct._xmlParserInput*, %struct._xmlParserInput** %34, align 8, !dbg !78
  %36 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %35, i32 0, i32 1, !dbg !79
  %37 = load i8*, i8** %36, align 8, !dbg !79
  %38 = ptrtoint i8* %32 to i64, !dbg !80
  %39 = ptrtoint i8* %37 to i64, !dbg !80
  %40 = sub i64 %38, %39, !dbg !80
  %41 = icmp sge i64 %40, 9, !dbg !81
  br i1 %41, label %42, label %87, !dbg !82

42:                                               ; preds = %27
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !83
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %43, i32 0, i32 0, !dbg !84
  %45 = load %struct._xmlParserInput*, %struct._xmlParserInput** %44, align 8, !dbg !84
  %46 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %45, i32 0, i32 0, !dbg !85
  %47 = load i8*, i8** %46, align 8, !dbg !85
  %48 = getelementptr inbounds i8, i8* %47, i64 -9, !dbg !83
  %49 = call i32 @strncmp(i8* noundef %48, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 noundef 9) #6, !dbg !86
  %50 = icmp ne i32 %49, 0, !dbg !86
  br i1 %50, label %87, label %51, !dbg !87

51:                                               ; preds = %42
  %52 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !88
  %53 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %52, i32 0, i32 0, !dbg !88
  %54 = load %struct._xmlParserInput*, %struct._xmlParserInput** %53, align 8, !dbg !88
  %55 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %54, i32 0, i32 0, !dbg !88
  %56 = load i8*, i8** %55, align 8, !dbg !88
  %57 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !88
  %58 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %57, i32 0, i32 0, !dbg !88
  %59 = load %struct._xmlParserInput*, %struct._xmlParserInput** %58, align 8, !dbg !88
  %60 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %59, i32 0, i32 1, !dbg !88
  %61 = load i8*, i8** %60, align 8, !dbg !88
  %62 = ptrtoint i8* %56 to i64, !dbg !88
  %63 = ptrtoint i8* %61 to i64, !dbg !88
  %64 = sub i64 %62, %63, !dbg !88
  %65 = icmp sge i64 %64, 9, !dbg !88
  br i1 %65, label %66, label %68, !dbg !88

66:                                               ; preds = %51
  br i1 true, label %67, label %68, !dbg !88

67:                                               ; preds = %66
  br label %70, !dbg !88

68:                                               ; preds = %66, %51
  %69 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.xmlParseExternalEntityPrivate, i64 0, i64 0)), !dbg !88
  br label %70, !dbg !88

70:                                               ; preds = %68, %67
  %71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.xmlParseExternalEntityPrivate, i64 0, i64 0)), !dbg !90
  %72 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !91
  %73 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %72, i32 0, i32 1, !dbg !93
  %74 = load i8*, i8** %73, align 8, !dbg !93
  %75 = icmp ne i8* %74, null, !dbg !91
  br i1 %75, label %76, label %86, !dbg !94

76:                                               ; preds = %70
  %77 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !95
  %78 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %77, i32 0, i32 1, !dbg !97
  %79 = load i8*, i8** %78, align 8, !dbg !97
  %80 = bitcast i8* %79 to %struct._xmlSAXHandler*, !dbg !98
  %81 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %80, i32 0, i32 0, !dbg !99
  %82 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %81, align 8, !dbg !99
  %83 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !100
  %84 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %83, i32 0, i32 2, !dbg !101
  %85 = bitcast i32* %84 to i8*, !dbg !102
  call void %82(i8* noundef %85, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 noundef 0), !dbg !103
  br label %86, !dbg !104

86:                                               ; preds = %76, %70
  br label %102, !dbg !105

87:                                               ; preds = %42, %27
  %88 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !106
  %89 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %88, i32 0, i32 1, !dbg !108
  %90 = load i8*, i8** %89, align 8, !dbg !108
  %91 = icmp ne i8* %90, null, !dbg !109
  br i1 %91, label %92, label %101, !dbg !110

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4, !dbg !111
  %94 = icmp sgt i32 %93, 0, !dbg !112
  br i1 %94, label %95, label %101, !dbg !113

95:                                               ; preds = %92
  %96 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !114
  %97 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %96, i32 0, i32 3, !dbg !115
  %98 = load i32, i32* %97, align 4, !dbg !115
  %99 = icmp ne i32 %98, 0, !dbg !114
  br i1 %99, label %101, label %100, !dbg !116

100:                                              ; preds = %95
  br label %101, !dbg !117

101:                                              ; preds = %100, %95, %92, %87
  br label %102

102:                                              ; preds = %101, %86
  br label %103, !dbg !119

103:                                              ; preds = %102, %20, %13, %4
  ret void, !dbg !120
}

; Function Attrs: nounwind readonly willreturn
declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !121 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlSAXHandler*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !124, metadata !DIExpression()), !dbg !125
  %10 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !126
  %11 = bitcast i8* %10 to %struct._xmlParserCtxt*, !dbg !127
  store %struct._xmlParserCtxt* %11, %struct._xmlParserCtxt** %2, align 8, !dbg !125
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !128
  %13 = icmp ne %struct._xmlParserCtxt* %12, null, !dbg !128
  br i1 %13, label %15, label %14, !dbg !130

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !131
  br label %104, !dbg !131

15:                                               ; preds = %0
  %16 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !132
  %17 = bitcast i8* %16 to %struct._xmlParserInput*, !dbg !133
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !134
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 0, !dbg !135
  store %struct._xmlParserInput* %17, %struct._xmlParserInput** %19, align 8, !dbg !136
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !139
  %22 = load %struct._xmlParserInput*, %struct._xmlParserInput** %21, align 8, !dbg !139
  %23 = icmp ne %struct._xmlParserInput* %22, null, !dbg !137
  br i1 %23, label %27, label %24, !dbg !140

24:                                               ; preds = %15
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !141
  %26 = bitcast %struct._xmlParserCtxt* %25 to i8*, !dbg !141
  call void @free(i8* noundef %26) #7, !dbg !143
  store i32 1, i32* %1, align 4, !dbg !144
  br label %104, !dbg !144

27:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata i64* %3, metadata !145, metadata !DIExpression()), !dbg !149
  store i64 20, i64* %3, align 8, !dbg !149
  call void @llvm.dbg.declare(metadata i8** %4, metadata !150, metadata !DIExpression()), !dbg !151
  %28 = load i64, i64* %3, align 8, !dbg !152
  %29 = call noalias i8* @malloc(i64 noundef %28) #7, !dbg !153
  store i8* %29, i8** %4, align 8, !dbg !151
  %30 = load i8*, i8** %4, align 8, !dbg !154
  %31 = icmp ne i8* %30, null, !dbg !154
  br i1 %31, label %39, label %32, !dbg !156

32:                                               ; preds = %27
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !157
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 0, !dbg !159
  %35 = load %struct._xmlParserInput*, %struct._xmlParserInput** %34, align 8, !dbg !159
  %36 = bitcast %struct._xmlParserInput* %35 to i8*, !dbg !157
  call void @free(i8* noundef %36) #7, !dbg !160
  %37 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !161
  %38 = bitcast %struct._xmlParserCtxt* %37 to i8*, !dbg !161
  call void @free(i8* noundef %38) #7, !dbg !162
  store i32 1, i32* %1, align 4, !dbg !163
  br label %104, !dbg !163

39:                                               ; preds = %27
  %40 = load i8*, i8** %4, align 8, !dbg !164
  %41 = load i64, i64* %3, align 8, !dbg !165
  call void @klee_make_symbolic(i8* noundef %40, i64 noundef %41, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !166
  %42 = load i8*, i8** %4, align 8, !dbg !167
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !168
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %43, i32 0, i32 0, !dbg !169
  %45 = load %struct._xmlParserInput*, %struct._xmlParserInput** %44, align 8, !dbg !169
  %46 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %45, i32 0, i32 1, !dbg !170
  store i8* %42, i8** %46, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %5, metadata !172, metadata !DIExpression()), !dbg !173
  %47 = bitcast i8** %5 to i8*, !dbg !174
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !175
  %48 = load i8*, i8** %5, align 8, !dbg !176
  %49 = load i8*, i8** %4, align 8, !dbg !177
  %50 = icmp uge i8* %48, %49, !dbg !178
  %51 = zext i1 %50 to i32, !dbg !178
  %52 = sext i32 %51 to i64, !dbg !176
  call void @klee_assume(i64 noundef %52), !dbg !179
  %53 = load i8*, i8** %5, align 8, !dbg !180
  %54 = load i8*, i8** %4, align 8, !dbg !181
  %55 = load i64, i64* %3, align 8, !dbg !182
  %56 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !183
  %57 = icmp ule i8* %53, %56, !dbg !184
  %58 = zext i1 %57 to i32, !dbg !184
  %59 = sext i32 %58 to i64, !dbg !180
  call void @klee_assume(i64 noundef %59), !dbg !185
  %60 = load i8*, i8** %5, align 8, !dbg !186
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !187
  %62 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %61, i32 0, i32 0, !dbg !188
  %63 = load %struct._xmlParserInput*, %struct._xmlParserInput** %62, align 8, !dbg !188
  %64 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %63, i32 0, i32 0, !dbg !189
  store i8* %60, i8** %64, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata %struct._xmlSAXHandler** %6, metadata !191, metadata !DIExpression()), !dbg !192
  %65 = call noalias i8* @malloc(i64 noundef 8) #7, !dbg !193
  %66 = bitcast i8* %65 to %struct._xmlSAXHandler*, !dbg !194
  store %struct._xmlSAXHandler* %66, %struct._xmlSAXHandler** %6, align 8, !dbg !192
  %67 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %6, align 8, !dbg !195
  %68 = icmp ne %struct._xmlSAXHandler* %67, null, !dbg !195
  br i1 %68, label %77, label %69, !dbg !197

69:                                               ; preds = %39
  %70 = load i8*, i8** %4, align 8, !dbg !198
  call void @free(i8* noundef %70) #7, !dbg !200
  %71 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !201
  %72 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %71, i32 0, i32 0, !dbg !202
  %73 = load %struct._xmlParserInput*, %struct._xmlParserInput** %72, align 8, !dbg !202
  %74 = bitcast %struct._xmlParserInput* %73 to i8*, !dbg !201
  call void @free(i8* noundef %74) #7, !dbg !203
  %75 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !204
  %76 = bitcast %struct._xmlParserCtxt* %75 to i8*, !dbg !204
  call void @free(i8* noundef %76) #7, !dbg !205
  store i32 1, i32* %1, align 4, !dbg !206
  br label %104, !dbg !206

77:                                               ; preds = %39
  %78 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %6, align 8, !dbg !207
  %79 = getelementptr inbounds %struct._xmlSAXHandler, %struct._xmlSAXHandler* %78, i32 0, i32 0, !dbg !208
  store void (i8*, i8*, i32)* @stub_cdataBlock, void (i8*, i8*, i32)** %79, align 8, !dbg !209
  %80 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %6, align 8, !dbg !210
  %81 = bitcast %struct._xmlSAXHandler* %80 to i8*, !dbg !210
  %82 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !211
  %83 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %82, i32 0, i32 1, !dbg !212
  store i8* %81, i8** %83, align 8, !dbg !213
  %84 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !214
  %85 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %84, i32 0, i32 2, !dbg !215
  store i32 0, i32* %85, align 8, !dbg !216
  %86 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !217
  %87 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %86, i32 0, i32 3, !dbg !218
  store i32 0, i32* %87, align 4, !dbg !219
  call void @llvm.dbg.declare(metadata [10 x i8]* %7, metadata !220, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata [10 x i8]* %8, metadata !225, metadata !DIExpression()), !dbg !226
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !227
  call void @klee_make_symbolic(i8* noundef %88, i64 noundef 10, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !228
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !229
  call void @klee_make_symbolic(i8* noundef %89, i64 noundef 10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %9, metadata !231, metadata !DIExpression()), !dbg !232
  %90 = bitcast i32* %9 to i8*, !dbg !233
  call void @klee_make_symbolic(i8* noundef %90, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)), !dbg !234
  %91 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !235
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0, !dbg !236
  %93 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !237
  %94 = load i32, i32* %9, align 4, !dbg !238
  call void @xmlParseExternalEntityPrivate(%struct._xmlParserCtxt* noundef %91, i8* noundef %92, i8* noundef %93, i32 noundef %94), !dbg !239
  %95 = load %struct._xmlSAXHandler*, %struct._xmlSAXHandler** %6, align 8, !dbg !240
  %96 = bitcast %struct._xmlSAXHandler* %95 to i8*, !dbg !240
  call void @free(i8* noundef %96) #7, !dbg !241
  %97 = load i8*, i8** %4, align 8, !dbg !242
  call void @free(i8* noundef %97) #7, !dbg !243
  %98 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !244
  %99 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %98, i32 0, i32 0, !dbg !245
  %100 = load %struct._xmlParserInput*, %struct._xmlParserInput** %99, align 8, !dbg !245
  %101 = bitcast %struct._xmlParserInput* %100 to i8*, !dbg !244
  call void @free(i8* noundef %101) #7, !dbg !246
  %102 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !247
  %103 = bitcast %struct._xmlParserCtxt* %102 to i8*, !dbg !247
  call void @free(i8* noundef %103) #7, !dbg !248
  store i32 0, i32* %1, align 4, !dbg !249
  br label %104, !dbg !249

104:                                              ; preds = %77, %69, %32, %24, %14
  %105 = load i32, i32* %1, align 4, !dbg !250
  ret i32 %105, !dbg !250
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/070_parser.c_11894_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d1d0b6f4340d39e405fe4b2157467b35")
!2 = !{!3, !6, !14, !16, !21, !26}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSAXHandler", file: !1, line: 24, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSAXHandler", file: !1, line: 22, size: 64, elements: !9)
!9 = !{!10}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "cdataBlock", scope: !8, file: !1, line: 23, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !3, !15}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 20, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 15, size: 192, elements: !19)
!19 = !{!20, !29, !30, !31}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !18, file: !1, line: 16, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserInput", file: !1, line: 13, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 10, size: 128, elements: !24)
!24 = !{!25, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !23, file: !1, line: 11, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !23, file: !1, line: 12, baseType: !26, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sax", scope: !18, file: !1, line: 17, baseType: !14, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !18, file: !1, line: 18, baseType: !15, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "disableSAX", scope: !18, file: !1, line: 19, baseType: !15, size: 32, offset: 160)
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"Ubuntu clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "stub_cdataBlock", scope: !1, file: !1, line: 27, type: !12, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!41 = !{}
!42 = !DILocalVariable(name: "ctx", arg: 1, scope: !40, file: !1, line: 27, type: !14)
!43 = !DILocation(line: 27, column: 28, scope: !40)
!44 = !DILocalVariable(name: "data", arg: 2, scope: !40, file: !1, line: 27, type: !3)
!45 = !DILocation(line: 27, column: 45, scope: !40)
!46 = !DILocalVariable(name: "len", arg: 3, scope: !40, file: !1, line: 27, type: !15)
!47 = !DILocation(line: 27, column: 55, scope: !40)
!48 = !DILocation(line: 29, column: 1, scope: !40)
!49 = distinct !DISubprogram(name: "xmlParseExternalEntityPrivate", scope: !1, file: !1, line: 32, type: !50, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !16, !3, !3, !15}
!52 = !DILocalVariable(name: "ctxt", arg: 1, scope: !49, file: !1, line: 32, type: !16)
!53 = !DILocation(line: 32, column: 51, scope: !49)
!54 = !DILocalVariable(name: "URL", arg: 2, scope: !49, file: !1, line: 32, type: !3)
!55 = !DILocation(line: 32, column: 69, scope: !49)
!56 = !DILocalVariable(name: "ID", arg: 3, scope: !49, file: !1, line: 32, type: !3)
!57 = !DILocation(line: 32, column: 86, scope: !49)
!58 = !DILocalVariable(name: "base", arg: 4, scope: !49, file: !1, line: 32, type: !15)
!59 = !DILocation(line: 32, column: 94, scope: !49)
!60 = !DILocation(line: 34, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !49, file: !1, line: 34, column: 9)
!62 = !DILocation(line: 34, column: 15, scope: !61)
!63 = !DILocation(line: 34, column: 21, scope: !61)
!64 = !DILocation(line: 34, column: 24, scope: !61)
!65 = !DILocation(line: 34, column: 30, scope: !61)
!66 = !DILocation(line: 34, column: 37, scope: !61)
!67 = !DILocation(line: 34, column: 41, scope: !61)
!68 = !DILocation(line: 34, column: 44, scope: !61)
!69 = !DILocation(line: 34, column: 50, scope: !61)
!70 = !DILocation(line: 34, column: 57, scope: !61)
!71 = !DILocation(line: 34, column: 9, scope: !49)
!72 = !DILocation(line: 36, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 36, column: 13)
!74 = distinct !DILexicalBlock(scope: !61, file: !1, line: 34, column: 63)
!75 = !DILocation(line: 36, column: 20, scope: !73)
!76 = !DILocation(line: 36, column: 27, scope: !73)
!77 = !DILocation(line: 36, column: 33, scope: !73)
!78 = !DILocation(line: 36, column: 39, scope: !73)
!79 = !DILocation(line: 36, column: 46, scope: !73)
!80 = !DILocation(line: 36, column: 31, scope: !73)
!81 = !DILocation(line: 36, column: 51, scope: !73)
!82 = !DILocation(line: 36, column: 57, scope: !73)
!83 = !DILocation(line: 37, column: 38, scope: !73)
!84 = !DILocation(line: 37, column: 44, scope: !73)
!85 = !DILocation(line: 37, column: 51, scope: !73)
!86 = !DILocation(line: 37, column: 15, scope: !73)
!87 = !DILocation(line: 36, column: 13, scope: !74)
!88 = !DILocation(line: 44, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !73, file: !1, line: 37, column: 78)
!90 = !DILocation(line: 47, column: 13, scope: !89)
!91 = !DILocation(line: 49, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 49, column: 17)
!93 = !DILocation(line: 49, column: 23, scope: !92)
!94 = !DILocation(line: 49, column: 17, scope: !89)
!95 = !DILocation(line: 50, column: 34, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 49, column: 28)
!97 = !DILocation(line: 50, column: 40, scope: !96)
!98 = !DILocation(line: 50, column: 18, scope: !96)
!99 = !DILocation(line: 50, column: 46, scope: !96)
!100 = !DILocation(line: 50, column: 65, scope: !96)
!101 = !DILocation(line: 50, column: 71, scope: !96)
!102 = !DILocation(line: 50, column: 57, scope: !96)
!103 = !DILocation(line: 50, column: 17, scope: !96)
!104 = !DILocation(line: 51, column: 13, scope: !96)
!105 = !DILocation(line: 52, column: 9, scope: !89)
!106 = !DILocation(line: 52, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !73, file: !1, line: 52, column: 20)
!108 = !DILocation(line: 52, column: 27, scope: !107)
!109 = !DILocation(line: 52, column: 31, scope: !107)
!110 = !DILocation(line: 52, column: 40, scope: !107)
!111 = !DILocation(line: 52, column: 44, scope: !107)
!112 = !DILocation(line: 52, column: 49, scope: !107)
!113 = !DILocation(line: 52, column: 54, scope: !107)
!114 = !DILocation(line: 52, column: 59, scope: !107)
!115 = !DILocation(line: 52, column: 65, scope: !107)
!116 = !DILocation(line: 52, column: 20, scope: !73)
!117 = !DILocation(line: 54, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !107, file: !1, line: 52, column: 78)
!119 = !DILocation(line: 55, column: 5, scope: !74)
!120 = !DILocation(line: 56, column: 1, scope: !49)
!121 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !122, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !41)
!122 = !DISubroutineType(types: !123)
!123 = !{!15}
!124 = !DILocalVariable(name: "ctxt", scope: !121, file: !1, line: 60, type: !16)
!125 = !DILocation(line: 60, column: 20, scope: !121)
!126 = !DILocation(line: 60, column: 43, scope: !121)
!127 = !DILocation(line: 60, column: 27, scope: !121)
!128 = !DILocation(line: 61, column: 10, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !1, line: 61, column: 9)
!130 = !DILocation(line: 61, column: 9, scope: !121)
!131 = !DILocation(line: 61, column: 16, scope: !129)
!132 = !DILocation(line: 63, column: 36, scope: !121)
!133 = !DILocation(line: 63, column: 19, scope: !121)
!134 = !DILocation(line: 63, column: 5, scope: !121)
!135 = !DILocation(line: 63, column: 11, scope: !121)
!136 = !DILocation(line: 63, column: 17, scope: !121)
!137 = !DILocation(line: 64, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !121, file: !1, line: 64, column: 9)
!139 = !DILocation(line: 64, column: 16, scope: !138)
!140 = !DILocation(line: 64, column: 9, scope: !121)
!141 = !DILocation(line: 65, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 64, column: 23)
!143 = !DILocation(line: 65, column: 9, scope: !142)
!144 = !DILocation(line: 66, column: 9, scope: !142)
!145 = !DILocalVariable(name: "buffer_size", scope: !121, file: !1, line: 70, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DILocation(line: 70, column: 12, scope: !121)
!150 = !DILocalVariable(name: "buffer", scope: !121, file: !1, line: 71, type: !26)
!151 = !DILocation(line: 71, column: 20, scope: !121)
!152 = !DILocation(line: 71, column: 52, scope: !121)
!153 = !DILocation(line: 71, column: 45, scope: !121)
!154 = !DILocation(line: 72, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !121, file: !1, line: 72, column: 9)
!156 = !DILocation(line: 72, column: 9, scope: !121)
!157 = !DILocation(line: 73, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 72, column: 18)
!159 = !DILocation(line: 73, column: 20, scope: !158)
!160 = !DILocation(line: 73, column: 9, scope: !158)
!161 = !DILocation(line: 74, column: 14, scope: !158)
!162 = !DILocation(line: 74, column: 9, scope: !158)
!163 = !DILocation(line: 75, column: 9, scope: !158)
!164 = !DILocation(line: 79, column: 24, scope: !121)
!165 = !DILocation(line: 79, column: 32, scope: !121)
!166 = !DILocation(line: 79, column: 5, scope: !121)
!167 = !DILocation(line: 82, column: 25, scope: !121)
!168 = !DILocation(line: 82, column: 5, scope: !121)
!169 = !DILocation(line: 82, column: 11, scope: !121)
!170 = !DILocation(line: 82, column: 18, scope: !121)
!171 = !DILocation(line: 82, column: 23, scope: !121)
!172 = !DILocalVariable(name: "cur_ptr", scope: !121, file: !1, line: 86, type: !26)
!173 = !DILocation(line: 86, column: 20, scope: !121)
!174 = !DILocation(line: 87, column: 24, scope: !121)
!175 = !DILocation(line: 87, column: 5, scope: !121)
!176 = !DILocation(line: 90, column: 17, scope: !121)
!177 = !DILocation(line: 90, column: 28, scope: !121)
!178 = !DILocation(line: 90, column: 25, scope: !121)
!179 = !DILocation(line: 90, column: 5, scope: !121)
!180 = !DILocation(line: 91, column: 17, scope: !121)
!181 = !DILocation(line: 91, column: 28, scope: !121)
!182 = !DILocation(line: 91, column: 37, scope: !121)
!183 = !DILocation(line: 91, column: 35, scope: !121)
!184 = !DILocation(line: 91, column: 25, scope: !121)
!185 = !DILocation(line: 91, column: 5, scope: !121)
!186 = !DILocation(line: 92, column: 24, scope: !121)
!187 = !DILocation(line: 92, column: 5, scope: !121)
!188 = !DILocation(line: 92, column: 11, scope: !121)
!189 = !DILocation(line: 92, column: 18, scope: !121)
!190 = !DILocation(line: 92, column: 22, scope: !121)
!191 = !DILocalVariable(name: "sax", scope: !121, file: !1, line: 95, type: !6)
!192 = !DILocation(line: 95, column: 20, scope: !121)
!193 = !DILocation(line: 95, column: 42, scope: !121)
!194 = !DILocation(line: 95, column: 26, scope: !121)
!195 = !DILocation(line: 96, column: 10, scope: !196)
!196 = distinct !DILexicalBlock(scope: !121, file: !1, line: 96, column: 9)
!197 = !DILocation(line: 96, column: 9, scope: !121)
!198 = !DILocation(line: 97, column: 14, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 96, column: 15)
!200 = !DILocation(line: 97, column: 9, scope: !199)
!201 = !DILocation(line: 98, column: 14, scope: !199)
!202 = !DILocation(line: 98, column: 20, scope: !199)
!203 = !DILocation(line: 98, column: 9, scope: !199)
!204 = !DILocation(line: 99, column: 14, scope: !199)
!205 = !DILocation(line: 99, column: 9, scope: !199)
!206 = !DILocation(line: 100, column: 9, scope: !199)
!207 = !DILocation(line: 102, column: 5, scope: !121)
!208 = !DILocation(line: 102, column: 10, scope: !121)
!209 = !DILocation(line: 102, column: 21, scope: !121)
!210 = !DILocation(line: 103, column: 17, scope: !121)
!211 = !DILocation(line: 103, column: 5, scope: !121)
!212 = !DILocation(line: 103, column: 11, scope: !121)
!213 = !DILocation(line: 103, column: 15, scope: !121)
!214 = !DILocation(line: 104, column: 5, scope: !121)
!215 = !DILocation(line: 104, column: 11, scope: !121)
!216 = !DILocation(line: 104, column: 20, scope: !121)
!217 = !DILocation(line: 105, column: 5, scope: !121)
!218 = !DILocation(line: 105, column: 11, scope: !121)
!219 = !DILocation(line: 105, column: 22, scope: !121)
!220 = !DILocalVariable(name: "URL_buf", scope: !121, file: !1, line: 108, type: !221)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 80, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 10)
!224 = !DILocation(line: 108, column: 10, scope: !121)
!225 = !DILocalVariable(name: "ID_buf", scope: !121, file: !1, line: 109, type: !221)
!226 = !DILocation(line: 109, column: 10, scope: !121)
!227 = !DILocation(line: 110, column: 24, scope: !121)
!228 = !DILocation(line: 110, column: 5, scope: !121)
!229 = !DILocation(line: 111, column: 24, scope: !121)
!230 = !DILocation(line: 111, column: 5, scope: !121)
!231 = !DILocalVariable(name: "base_param", scope: !121, file: !1, line: 114, type: !15)
!232 = !DILocation(line: 114, column: 9, scope: !121)
!233 = !DILocation(line: 115, column: 24, scope: !121)
!234 = !DILocation(line: 115, column: 5, scope: !121)
!235 = !DILocation(line: 118, column: 35, scope: !121)
!236 = !DILocation(line: 118, column: 41, scope: !121)
!237 = !DILocation(line: 118, column: 50, scope: !121)
!238 = !DILocation(line: 118, column: 58, scope: !121)
!239 = !DILocation(line: 118, column: 5, scope: !121)
!240 = !DILocation(line: 121, column: 10, scope: !121)
!241 = !DILocation(line: 121, column: 5, scope: !121)
!242 = !DILocation(line: 122, column: 10, scope: !121)
!243 = !DILocation(line: 122, column: 5, scope: !121)
!244 = !DILocation(line: 123, column: 10, scope: !121)
!245 = !DILocation(line: 123, column: 16, scope: !121)
!246 = !DILocation(line: 123, column: 5, scope: !121)
!247 = !DILocation(line: 124, column: 10, scope: !121)
!248 = !DILocation(line: 124, column: 5, scope: !121)
!249 = !DILocation(line: 126, column: 5, scope: !121)
!250 = !DILocation(line: 127, column: 1, scope: !121)
