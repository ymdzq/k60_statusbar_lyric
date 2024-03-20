.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.log.table.DiffableKt$logDiffsForTable$10"
    f = "Diffable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnPrefix:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnName:Ljava/lang/String;

    .line 6
    const/4 p1, 0x3

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnPrefix:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnName:Ljava/lang/String;

    .line 14
    invoke-direct {v0, v1, v2, p0, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->L$0:Ljava/lang/Object;

    .line 19
    iput-object p2, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->L$1:Ljava/lang/Object;

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->L$0:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->L$1:Ljava/lang/Object;

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnPrefix:Ljava/lang/String;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$10;->$columnName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-object v0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 36
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
    .line 43
.end method
