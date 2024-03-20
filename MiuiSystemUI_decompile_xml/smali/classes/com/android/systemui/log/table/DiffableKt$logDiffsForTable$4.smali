.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.log.table.DiffableKt$logDiffsForTable$4"
    f = "Diffable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnPrefix:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnName:Ljava/lang/String;

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
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnPrefix:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnName:Ljava/lang/String;

    .line 22
    invoke-direct {v0, v1, v2, p0, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 24
    iput-boolean p1, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->Z$0:Z

    .line 27
    iput-boolean p2, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->Z$1:Z

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->Z$0:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->Z$1:Z

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnPrefix:Ljava/lang/String;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$4;->$columnName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
    .line 39
.end method
