; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/211_parser.c_11087_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/211_parser.c_11087_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32, %struct._xmlParserInput* }
%struct._xmlParserInput = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"checkIndex\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"cur_offset\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [190 x i8] c"(ctxt->input->cur >= buffer && ctxt->input->cur <= buffer + buffer_size && (size_t)(ctxt->input->end - ctxt->input->cur) <= buffer_size - (ctxt->input->cur - buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/211_parser.c_11087_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !20, metadata !DIExpression()), !dbg !34
  %9 = call noalias i8* @malloc(i64 noundef 16) #6, !dbg !35
  %10 = bitcast i8* %9 to %struct._xmlParserCtxt*, !dbg !35
  store %struct._xmlParserCtxt* %10, %struct._xmlParserCtxt** %2, align 8, !dbg !34
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !36
  %12 = icmp ne %struct._xmlParserCtxt* %11, null, !dbg !36
  br i1 %12, label %14, label %13, !dbg !38

13:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !39
  br label %164, !dbg !39

14:                                               ; preds = %0
  %15 = call noalias i8* @malloc(i64 noundef 16) #6, !dbg !40
  %16 = bitcast i8* %15 to %struct._xmlParserInput*, !dbg !40
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !41
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 1, !dbg !42
  store %struct._xmlParserInput* %16, %struct._xmlParserInput** %18, align 8, !dbg !43
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !44
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 1, !dbg !46
  %21 = load %struct._xmlParserInput*, %struct._xmlParserInput** %20, align 8, !dbg !46
  %22 = icmp ne %struct._xmlParserInput* %21, null, !dbg !44
  br i1 %22, label %26, label %23, !dbg !47

23:                                               ; preds = %14
  %24 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !48
  %25 = bitcast %struct._xmlParserCtxt* %24 to i8*, !dbg !48
  call void @free(i8* noundef %25) #6, !dbg !50
  store i32 1, i32* %1, align 4, !dbg !51
  br label %164, !dbg !51

26:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata i8* %3, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %6, metadata !58, metadata !DIExpression()), !dbg !59
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !60
  %27 = bitcast i32* %4 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !62
  %28 = bitcast i64* %5 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !64
  %29 = bitcast i64* %6 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)), !dbg !66
  %30 = load i64, i64* %5, align 8, !dbg !67
  %31 = icmp uge i64 %30, 1, !dbg !68
  br i1 %31, label %32, label %35, !dbg !69

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8, !dbg !70
  %34 = icmp ule i64 %33, 1024, !dbg !71
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i1 [ false, %26 ], [ %34, %32 ], !dbg !72
  %37 = zext i1 %36 to i32, !dbg !69
  %38 = sext i32 %37 to i64, !dbg !67
  call void @klee_assume(i64 noundef %38), !dbg !73
  %39 = load i64, i64* %6, align 8, !dbg !74
  %40 = icmp uge i64 %39, 0, !dbg !75
  br i1 %40, label %41, label %45, !dbg !76

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8, !dbg !77
  %43 = load i64, i64* %5, align 8, !dbg !78
  %44 = icmp ult i64 %42, %43, !dbg !79
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ false, %35 ], [ %44, %41 ], !dbg !72
  %47 = zext i1 %46 to i32, !dbg !76
  %48 = sext i32 %47 to i64, !dbg !74
  call void @klee_assume(i64 noundef %48), !dbg !80
  %49 = load i32, i32* %4, align 4, !dbg !81
  %50 = icmp sge i32 %49, 0, !dbg !82
  br i1 %50, label %51, label %56, !dbg !83

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4, !dbg !84
  %53 = load i64, i64* %5, align 8, !dbg !85
  %54 = trunc i64 %53 to i32, !dbg !86
  %55 = icmp slt i32 %52, %54, !dbg !87
  br label %56

56:                                               ; preds = %51, %45
  %57 = phi i1 [ false, %45 ], [ %55, %51 ], !dbg !72
  %58 = zext i1 %57 to i32, !dbg !83
  %59 = sext i32 %58 to i64, !dbg !81
  call void @klee_assume(i64 noundef %59), !dbg !88
  call void @llvm.dbg.declare(metadata i8** %7, metadata !89, metadata !DIExpression()), !dbg !90
  %60 = load i64, i64* %5, align 8, !dbg !91
  %61 = call noalias i8* @malloc(i64 noundef %60) #6, !dbg !92
  store i8* %61, i8** %7, align 8, !dbg !90
  %62 = load i8*, i8** %7, align 8, !dbg !93
  %63 = icmp ne i8* %62, null, !dbg !93
  br i1 %63, label %71, label %64, !dbg !95

64:                                               ; preds = %56
  %65 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !96
  %66 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %65, i32 0, i32 1, !dbg !98
  %67 = load %struct._xmlParserInput*, %struct._xmlParserInput** %66, align 8, !dbg !98
  %68 = bitcast %struct._xmlParserInput* %67 to i8*, !dbg !96
  call void @free(i8* noundef %68) #6, !dbg !99
  %69 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !100
  %70 = bitcast %struct._xmlParserCtxt* %69 to i8*, !dbg !100
  call void @free(i8* noundef %70) #6, !dbg !101
  store i32 1, i32* %1, align 4, !dbg !102
  br label %164, !dbg !102

71:                                               ; preds = %56
  %72 = load i8*, i8** %7, align 8, !dbg !103
  %73 = load i64, i64* %5, align 8, !dbg !104
  call void @klee_make_symbolic(i8* noundef %72, i64 noundef %73, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !105
  %74 = load i8*, i8** %7, align 8, !dbg !106
  %75 = load i64, i64* %6, align 8, !dbg !107
  %76 = getelementptr inbounds i8, i8* %74, i64 %75, !dbg !108
  %77 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !109
  %78 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %77, i32 0, i32 1, !dbg !110
  %79 = load %struct._xmlParserInput*, %struct._xmlParserInput** %78, align 8, !dbg !110
  %80 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %79, i32 0, i32 0, !dbg !111
  store i8* %76, i8** %80, align 8, !dbg !112
  %81 = load i8*, i8** %7, align 8, !dbg !113
  %82 = load i64, i64* %5, align 8, !dbg !114
  %83 = getelementptr inbounds i8, i8* %81, i64 %82, !dbg !115
  %84 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !116
  %85 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %84, i32 0, i32 1, !dbg !117
  %86 = load %struct._xmlParserInput*, %struct._xmlParserInput** %85, align 8, !dbg !117
  %87 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %86, i32 0, i32 1, !dbg !118
  store i8* %83, i8** %87, align 8, !dbg !119
  %88 = load i32, i32* %4, align 4, !dbg !120
  %89 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !121
  %90 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %89, i32 0, i32 0, !dbg !122
  store i32 %88, i32* %90, align 8, !dbg !123
  %91 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !124
  %92 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %91, i32 0, i32 1, !dbg !125
  %93 = load %struct._xmlParserInput*, %struct._xmlParserInput** %92, align 8, !dbg !125
  %94 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %93, i32 0, i32 0, !dbg !126
  %95 = load i8*, i8** %94, align 8, !dbg !126
  %96 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !127
  %97 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %96, i32 0, i32 1, !dbg !128
  %98 = load %struct._xmlParserInput*, %struct._xmlParserInput** %97, align 8, !dbg !128
  %99 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %98, i32 0, i32 1, !dbg !129
  %100 = load i8*, i8** %99, align 8, !dbg !129
  %101 = icmp ule i8* %95, %100, !dbg !130
  %102 = zext i1 %101 to i32, !dbg !130
  %103 = sext i32 %102 to i64, !dbg !124
  call void @klee_assume(i64 noundef %103), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %8, metadata !132, metadata !DIExpression()), !dbg !133
  %104 = load i8, i8* %3, align 1, !dbg !134
  %105 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !135
  %106 = call i32 @xmlCheckCdataPush(i8 noundef zeroext %104, %struct._xmlParserCtxt* noundef %105), !dbg !136
  store i32 %106, i32* %8, align 4, !dbg !133
  %107 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %108 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %107, i32 0, i32 1, !dbg !137
  %109 = load %struct._xmlParserInput*, %struct._xmlParserInput** %108, align 8, !dbg !137
  %110 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %109, i32 0, i32 0, !dbg !137
  %111 = load i8*, i8** %110, align 8, !dbg !137
  %112 = load i8*, i8** %7, align 8, !dbg !137
  %113 = icmp uge i8* %111, %112, !dbg !137
  br i1 %113, label %114, label %152, !dbg !137

114:                                              ; preds = %71
  %115 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %116 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %115, i32 0, i32 1, !dbg !137
  %117 = load %struct._xmlParserInput*, %struct._xmlParserInput** %116, align 8, !dbg !137
  %118 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %117, i32 0, i32 0, !dbg !137
  %119 = load i8*, i8** %118, align 8, !dbg !137
  %120 = load i8*, i8** %7, align 8, !dbg !137
  %121 = load i64, i64* %5, align 8, !dbg !137
  %122 = getelementptr inbounds i8, i8* %120, i64 %121, !dbg !137
  %123 = icmp ule i8* %119, %122, !dbg !137
  br i1 %123, label %124, label %152, !dbg !137

124:                                              ; preds = %114
  %125 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %126 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %125, i32 0, i32 1, !dbg !137
  %127 = load %struct._xmlParserInput*, %struct._xmlParserInput** %126, align 8, !dbg !137
  %128 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %127, i32 0, i32 1, !dbg !137
  %129 = load i8*, i8** %128, align 8, !dbg !137
  %130 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %131 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %130, i32 0, i32 1, !dbg !137
  %132 = load %struct._xmlParserInput*, %struct._xmlParserInput** %131, align 8, !dbg !137
  %133 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %132, i32 0, i32 0, !dbg !137
  %134 = load i8*, i8** %133, align 8, !dbg !137
  %135 = ptrtoint i8* %129 to i64, !dbg !137
  %136 = ptrtoint i8* %134 to i64, !dbg !137
  %137 = sub i64 %135, %136, !dbg !137
  %138 = load i64, i64* %5, align 8, !dbg !137
  %139 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !137
  %140 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %139, i32 0, i32 1, !dbg !137
  %141 = load %struct._xmlParserInput*, %struct._xmlParserInput** %140, align 8, !dbg !137
  %142 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %141, i32 0, i32 0, !dbg !137
  %143 = load i8*, i8** %142, align 8, !dbg !137
  %144 = load i8*, i8** %7, align 8, !dbg !137
  %145 = ptrtoint i8* %143 to i64, !dbg !137
  %146 = ptrtoint i8* %144 to i64, !dbg !137
  %147 = sub i64 %145, %146, !dbg !137
  %148 = sub i64 %138, %147, !dbg !137
  %149 = icmp ule i64 %137, %148, !dbg !137
  br i1 %149, label %150, label %152, !dbg !137

150:                                              ; preds = %124
  br i1 true, label %151, label %152, !dbg !137

151:                                              ; preds = %150
  br label %154, !dbg !137

152:                                              ; preds = %150, %124, %114, %71
  %153 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([190 x i8], [190 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 90, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !137
  br label %154, !dbg !137

154:                                              ; preds = %152, %151
  %155 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 noundef 93, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !138
  %156 = load i8*, i8** %7, align 8, !dbg !139
  call void @free(i8* noundef %156) #6, !dbg !140
  %157 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !141
  %158 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %157, i32 0, i32 1, !dbg !142
  %159 = load %struct._xmlParserInput*, %struct._xmlParserInput** %158, align 8, !dbg !142
  %160 = bitcast %struct._xmlParserInput* %159 to i8*, !dbg !141
  call void @free(i8* noundef %160) #6, !dbg !143
  %161 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !144
  %162 = bitcast %struct._xmlParserCtxt* %161 to i8*, !dbg !144
  call void @free(i8* noundef %162) #6, !dbg !145
  %163 = load i32, i32* %8, align 4, !dbg !146
  store i32 %163, i32* %1, align 4, !dbg !147
  br label %164, !dbg !147

164:                                              ; preds = %154, %64, %23, %13
  %165 = load i32, i32* %1, align 4, !dbg !148
  ret i32 %165, !dbg !148
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCheckCdataPush(i8 noundef zeroext %0, %struct._xmlParserCtxt* noundef %1) #0 !dbg !149 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !152, metadata !DIExpression()), !dbg !153
  store %struct._xmlParserCtxt* %1, %struct._xmlParserCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %6, metadata !156, metadata !DIExpression()), !dbg !159
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !160
  %8 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %7, i32 0, i32 0, !dbg !162
  %9 = load i32, i32* %8, align 8, !dbg !162
  %10 = icmp eq i32 %9, 0, !dbg !163
  br i1 %10, label %11, label %18, !dbg !164

11:                                               ; preds = %2
  %12 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !165
  %13 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %12, i32 0, i32 1, !dbg !167
  %14 = load %struct._xmlParserInput*, %struct._xmlParserInput** %13, align 8, !dbg !167
  %15 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %14, i32 0, i32 0, !dbg !168
  %16 = load i8*, i8** %15, align 8, !dbg !168
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !169
  store i8* %17, i8** %6, align 8, !dbg !170
  br label %29, !dbg !171

18:                                               ; preds = %2
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !172
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 1, !dbg !174
  %21 = load %struct._xmlParserInput*, %struct._xmlParserInput** %20, align 8, !dbg !174
  %22 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %21, i32 0, i32 0, !dbg !175
  %23 = load i8*, i8** %22, align 8, !dbg !175
  %24 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !176
  %25 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %24, i32 0, i32 0, !dbg !177
  %26 = load i32, i32* %25, align 8, !dbg !177
  %27 = sext i32 %26 to i64, !dbg !178
  %28 = getelementptr inbounds i8, i8* %23, i64 %27, !dbg !178
  store i8* %28, i8** %6, align 8, !dbg !179
  br label %29

29:                                               ; preds = %18, %11
  %30 = load i8*, i8** %6, align 8, !dbg !180
  %31 = load i8, i8* %4, align 1, !dbg !182
  %32 = zext i8 %31 to i32, !dbg !182
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !183
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 1, !dbg !184
  %35 = load %struct._xmlParserInput*, %struct._xmlParserInput** %34, align 8, !dbg !184
  %36 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %35, i32 0, i32 1, !dbg !185
  %37 = load i8*, i8** %36, align 8, !dbg !185
  %38 = load i8*, i8** %6, align 8, !dbg !186
  %39 = ptrtoint i8* %37 to i64, !dbg !187
  %40 = ptrtoint i8* %38 to i64, !dbg !187
  %41 = sub i64 %39, %40, !dbg !187
  %42 = call i8* @memchr(i8* noundef %30, i32 noundef %32, i64 noundef %41) #7, !dbg !188
  %43 = icmp eq i8* %42, null, !dbg !189
  br i1 %43, label %44, label %61, !dbg !190

44:                                               ; preds = %29
  %45 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !191
  %46 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %45, i32 0, i32 1, !dbg !193
  %47 = load %struct._xmlParserInput*, %struct._xmlParserInput** %46, align 8, !dbg !193
  %48 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %47, i32 0, i32 1, !dbg !194
  %49 = load i8*, i8** %48, align 8, !dbg !194
  %50 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !195
  %51 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %50, i32 0, i32 1, !dbg !196
  %52 = load %struct._xmlParserInput*, %struct._xmlParserInput** %51, align 8, !dbg !196
  %53 = getelementptr inbounds %struct._xmlParserInput, %struct._xmlParserInput* %52, i32 0, i32 0, !dbg !197
  %54 = load i8*, i8** %53, align 8, !dbg !197
  %55 = ptrtoint i8* %49 to i64, !dbg !198
  %56 = ptrtoint i8* %54 to i64, !dbg !198
  %57 = sub i64 %55, %56, !dbg !198
  %58 = trunc i64 %57 to i32, !dbg !191
  %59 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !199
  %60 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %59, i32 0, i32 0, !dbg !200
  store i32 %58, i32* %60, align 8, !dbg !201
  store i32 0, i32* %3, align 4, !dbg !202
  br label %64, !dbg !202

61:                                               ; preds = %29
  %62 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !203
  %63 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %62, i32 0, i32 0, !dbg !205
  store i32 0, i32* %63, align 8, !dbg !206
  store i32 1, i32* %3, align 4, !dbg !207
  br label %64, !dbg !207

64:                                               ; preds = %61, %44
  %65 = load i32, i32* %3, align 4, !dbg !208
  ret i32 %65, !dbg !208
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/211_parser.c_11087_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a2131740e4b81151f2c32a293f5ff416")
!2 = !{!3, !4, !7}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 46, baseType: !6)
!5 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!6 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !17, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!3}
!19 = !{}
!20 = !DILocalVariable(name: "ctxt", scope: !16, file: !1, line: 27, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 17, size: 128, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "checkIndex", scope: !22, file: !1, line: 18, baseType: !3, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !22, file: !1, line: 19, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserInput", file: !1, line: 12, size: 128, elements: !28)
!28 = !{!29, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !27, file: !1, line: 13, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !1, line: 14, baseType: !30, size: 64, offset: 64)
!34 = !DILocation(line: 27, column: 28, scope: !16)
!35 = !DILocation(line: 27, column: 35, scope: !16)
!36 = !DILocation(line: 28, column: 10, scope: !37)
!37 = distinct !DILexicalBlock(scope: !16, file: !1, line: 28, column: 9)
!38 = !DILocation(line: 28, column: 9, scope: !16)
!39 = !DILocation(line: 28, column: 16, scope: !37)
!40 = !DILocation(line: 30, column: 19, scope: !16)
!41 = !DILocation(line: 30, column: 5, scope: !16)
!42 = !DILocation(line: 30, column: 11, scope: !16)
!43 = !DILocation(line: 30, column: 17, scope: !16)
!44 = !DILocation(line: 31, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !16, file: !1, line: 31, column: 9)
!46 = !DILocation(line: 31, column: 16, scope: !45)
!47 = !DILocation(line: 31, column: 9, scope: !16)
!48 = !DILocation(line: 32, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 31, column: 23)
!50 = !DILocation(line: 32, column: 9, scope: !49)
!51 = !DILocation(line: 33, column: 9, scope: !49)
!52 = !DILocalVariable(name: "c", scope: !16, file: !1, line: 37, type: !31)
!53 = !DILocation(line: 37, column: 13, scope: !16)
!54 = !DILocalVariable(name: "checkIndex", scope: !16, file: !1, line: 38, type: !3)
!55 = !DILocation(line: 38, column: 9, scope: !16)
!56 = !DILocalVariable(name: "buffer_size", scope: !16, file: !1, line: 39, type: !4)
!57 = !DILocation(line: 39, column: 12, scope: !16)
!58 = !DILocalVariable(name: "cur_offset", scope: !16, file: !1, line: 40, type: !4)
!59 = !DILocation(line: 40, column: 12, scope: !16)
!60 = !DILocation(line: 43, column: 5, scope: !16)
!61 = !DILocation(line: 44, column: 24, scope: !16)
!62 = !DILocation(line: 44, column: 5, scope: !16)
!63 = !DILocation(line: 45, column: 24, scope: !16)
!64 = !DILocation(line: 45, column: 5, scope: !16)
!65 = !DILocation(line: 46, column: 24, scope: !16)
!66 = !DILocation(line: 46, column: 5, scope: !16)
!67 = !DILocation(line: 49, column: 17, scope: !16)
!68 = !DILocation(line: 49, column: 29, scope: !16)
!69 = !DILocation(line: 49, column: 34, scope: !16)
!70 = !DILocation(line: 49, column: 37, scope: !16)
!71 = !DILocation(line: 49, column: 49, scope: !16)
!72 = !DILocation(line: 0, scope: !16)
!73 = !DILocation(line: 49, column: 5, scope: !16)
!74 = !DILocation(line: 50, column: 17, scope: !16)
!75 = !DILocation(line: 50, column: 28, scope: !16)
!76 = !DILocation(line: 50, column: 33, scope: !16)
!77 = !DILocation(line: 50, column: 36, scope: !16)
!78 = !DILocation(line: 50, column: 49, scope: !16)
!79 = !DILocation(line: 50, column: 47, scope: !16)
!80 = !DILocation(line: 50, column: 5, scope: !16)
!81 = !DILocation(line: 51, column: 17, scope: !16)
!82 = !DILocation(line: 51, column: 28, scope: !16)
!83 = !DILocation(line: 51, column: 33, scope: !16)
!84 = !DILocation(line: 51, column: 36, scope: !16)
!85 = !DILocation(line: 51, column: 54, scope: !16)
!86 = !DILocation(line: 51, column: 49, scope: !16)
!87 = !DILocation(line: 51, column: 47, scope: !16)
!88 = !DILocation(line: 51, column: 5, scope: !16)
!89 = !DILocalVariable(name: "buffer", scope: !16, file: !1, line: 54, type: !30)
!90 = !DILocation(line: 54, column: 14, scope: !16)
!91 = !DILocation(line: 54, column: 30, scope: !16)
!92 = !DILocation(line: 54, column: 23, scope: !16)
!93 = !DILocation(line: 55, column: 10, scope: !94)
!94 = distinct !DILexicalBlock(scope: !16, file: !1, line: 55, column: 9)
!95 = !DILocation(line: 55, column: 9, scope: !16)
!96 = !DILocation(line: 56, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 55, column: 18)
!98 = !DILocation(line: 56, column: 20, scope: !97)
!99 = !DILocation(line: 56, column: 9, scope: !97)
!100 = !DILocation(line: 57, column: 14, scope: !97)
!101 = !DILocation(line: 57, column: 9, scope: !97)
!102 = !DILocation(line: 58, column: 9, scope: !97)
!103 = !DILocation(line: 62, column: 24, scope: !16)
!104 = !DILocation(line: 62, column: 32, scope: !16)
!105 = !DILocation(line: 62, column: 5, scope: !16)
!106 = !DILocation(line: 65, column: 24, scope: !16)
!107 = !DILocation(line: 65, column: 33, scope: !16)
!108 = !DILocation(line: 65, column: 31, scope: !16)
!109 = !DILocation(line: 65, column: 5, scope: !16)
!110 = !DILocation(line: 65, column: 11, scope: !16)
!111 = !DILocation(line: 65, column: 18, scope: !16)
!112 = !DILocation(line: 65, column: 22, scope: !16)
!113 = !DILocation(line: 66, column: 24, scope: !16)
!114 = !DILocation(line: 66, column: 33, scope: !16)
!115 = !DILocation(line: 66, column: 31, scope: !16)
!116 = !DILocation(line: 66, column: 5, scope: !16)
!117 = !DILocation(line: 66, column: 11, scope: !16)
!118 = !DILocation(line: 66, column: 18, scope: !16)
!119 = !DILocation(line: 66, column: 22, scope: !16)
!120 = !DILocation(line: 67, column: 24, scope: !16)
!121 = !DILocation(line: 67, column: 5, scope: !16)
!122 = !DILocation(line: 67, column: 11, scope: !16)
!123 = !DILocation(line: 67, column: 22, scope: !16)
!124 = !DILocation(line: 70, column: 17, scope: !16)
!125 = !DILocation(line: 70, column: 23, scope: !16)
!126 = !DILocation(line: 70, column: 30, scope: !16)
!127 = !DILocation(line: 70, column: 37, scope: !16)
!128 = !DILocation(line: 70, column: 43, scope: !16)
!129 = !DILocation(line: 70, column: 50, scope: !16)
!130 = !DILocation(line: 70, column: 34, scope: !16)
!131 = !DILocation(line: 70, column: 5, scope: !16)
!132 = !DILocalVariable(name: "result", scope: !16, file: !1, line: 73, type: !3)
!133 = !DILocation(line: 73, column: 9, scope: !16)
!134 = !DILocation(line: 73, column: 36, scope: !16)
!135 = !DILocation(line: 73, column: 39, scope: !16)
!136 = !DILocation(line: 73, column: 18, scope: !16)
!137 = !DILocation(line: 88, column: 5, scope: !16)
!138 = !DILocation(line: 93, column: 5, scope: !16)
!139 = !DILocation(line: 96, column: 10, scope: !16)
!140 = !DILocation(line: 96, column: 5, scope: !16)
!141 = !DILocation(line: 97, column: 10, scope: !16)
!142 = !DILocation(line: 97, column: 16, scope: !16)
!143 = !DILocation(line: 97, column: 5, scope: !16)
!144 = !DILocation(line: 98, column: 10, scope: !16)
!145 = !DILocation(line: 98, column: 5, scope: !16)
!146 = !DILocation(line: 100, column: 12, scope: !16)
!147 = !DILocation(line: 100, column: 5, scope: !16)
!148 = !DILocation(line: 101, column: 1, scope: !16)
!149 = distinct !DISubprogram(name: "xmlCheckCdataPush", scope: !1, file: !1, line: 104, type: !150, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!150 = !DISubroutineType(types: !151)
!151 = !{!3, !31, !21}
!152 = !DILocalVariable(name: "c", arg: 1, scope: !149, file: !1, line: 104, type: !31)
!153 = !DILocation(line: 104, column: 31, scope: !149)
!154 = !DILocalVariable(name: "ctxt", arg: 2, scope: !149, file: !1, line: 104, type: !21)
!155 = !DILocation(line: 104, column: 57, scope: !149)
!156 = !DILocalVariable(name: "cur", scope: !149, file: !1, line: 105, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!159 = !DILocation(line: 105, column: 20, scope: !149)
!160 = !DILocation(line: 107, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !1, line: 107, column: 9)
!162 = !DILocation(line: 107, column: 15, scope: !161)
!163 = !DILocation(line: 107, column: 26, scope: !161)
!164 = !DILocation(line: 107, column: 9, scope: !149)
!165 = !DILocation(line: 108, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !1, line: 107, column: 32)
!167 = !DILocation(line: 108, column: 21, scope: !166)
!168 = !DILocation(line: 108, column: 28, scope: !166)
!169 = !DILocation(line: 108, column: 32, scope: !166)
!170 = !DILocation(line: 108, column: 13, scope: !166)
!171 = !DILocation(line: 109, column: 5, scope: !166)
!172 = !DILocation(line: 110, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !1, line: 109, column: 12)
!174 = !DILocation(line: 110, column: 21, scope: !173)
!175 = !DILocation(line: 110, column: 28, scope: !173)
!176 = !DILocation(line: 110, column: 34, scope: !173)
!177 = !DILocation(line: 110, column: 40, scope: !173)
!178 = !DILocation(line: 110, column: 32, scope: !173)
!179 = !DILocation(line: 110, column: 13, scope: !173)
!180 = !DILocation(line: 113, column: 16, scope: !181)
!181 = distinct !DILexicalBlock(scope: !149, file: !1, line: 113, column: 9)
!182 = !DILocation(line: 113, column: 21, scope: !181)
!183 = !DILocation(line: 113, column: 24, scope: !181)
!184 = !DILocation(line: 113, column: 30, scope: !181)
!185 = !DILocation(line: 113, column: 37, scope: !181)
!186 = !DILocation(line: 113, column: 43, scope: !181)
!187 = !DILocation(line: 113, column: 41, scope: !181)
!188 = !DILocation(line: 113, column: 9, scope: !181)
!189 = !DILocation(line: 113, column: 48, scope: !181)
!190 = !DILocation(line: 113, column: 9, scope: !149)
!191 = !DILocation(line: 114, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !181, file: !1, line: 113, column: 57)
!193 = !DILocation(line: 114, column: 34, scope: !192)
!194 = !DILocation(line: 114, column: 41, scope: !192)
!195 = !DILocation(line: 114, column: 47, scope: !192)
!196 = !DILocation(line: 114, column: 53, scope: !192)
!197 = !DILocation(line: 114, column: 60, scope: !192)
!198 = !DILocation(line: 114, column: 45, scope: !192)
!199 = !DILocation(line: 114, column: 9, scope: !192)
!200 = !DILocation(line: 114, column: 15, scope: !192)
!201 = !DILocation(line: 114, column: 26, scope: !192)
!202 = !DILocation(line: 115, column: 9, scope: !192)
!203 = !DILocation(line: 117, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !181, file: !1, line: 116, column: 12)
!205 = !DILocation(line: 117, column: 15, scope: !204)
!206 = !DILocation(line: 117, column: 26, scope: !204)
!207 = !DILocation(line: 118, column: 9, scope: !204)
!208 = !DILocation(line: 120, column: 1, scope: !149)
