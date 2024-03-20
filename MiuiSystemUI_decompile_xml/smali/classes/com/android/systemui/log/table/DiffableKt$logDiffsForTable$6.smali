.class final Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.log.table.DiffableKt$logDiffsForTable$6"
    f = "Diffable.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $columnName:Ljava/lang/String;

.field final synthetic $columnPrefix:Ljava/lang/String;

.field final synthetic $tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

.field synthetic I$0:I

.field synthetic I$1:I

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnPrefix:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnName:Ljava/lang/String;

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
    check-cast p1, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 18
    iget-object v2, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnPrefix:Ljava/lang/String;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnName:Ljava/lang/String;

    .line 22
    invoke-direct {v0, v1, v2, p0, p3}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;-><init>(Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 24
    iput p1, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->I$0:I

    .line 27
    iput p2, v0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->I$1:I

    .line 29
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    return-object p0
    .line 37
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->label:I

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->I$0:I

    .line 9
    iget v0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->I$1:I

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$tableLogBuffer:Lcom/android/systemui/log/table/TableLogBuffer;

    .line 15
    iget-object v1, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnPrefix:Ljava/lang/String;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/log/table/DiffableKt$logDiffsForTable$6;->$columnName:Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/lang/Integer;

    .line 21
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {p1, v1, p0, v2}, Lcom/android/systemui/plugins/log/TableLogBufferBase$DefaultImpls;->logChange(Lcom/android/systemui/plugins/log/TableLogBufferBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/Integer;

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 34
    return-object p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
    .line 45
.end method
