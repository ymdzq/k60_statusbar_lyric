.class final Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.shared.customization.data.content.CustomizationProviderClientImpl$querySelections$2"
    f = "CustomizationProviderClient.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;-><init>(Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->label:I

    .line 2
    if-nez v0, :cond_3

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$querySelections$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->URI:Landroid/net/Uri;

    .line 17
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object p0

    .line 26
    const/4 p1, 0x0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    :try_start_0
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    .line 30
    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    .line 32
    const-string/jumbo v1, "slot_id"

    .line 35
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v1

    .line 41
    const-string v2, "affordance_id"

    .line 42
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    move-result v2

    .line 47
    const-string v3, "affordance_name"

    .line 48
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    move-result v3

    .line 53
    const/4 v4, -0x1

    .line 54
    if-eq v1, v4, :cond_1

    .line 55
    if-eq v2, v4, :cond_1

    .line 57
    if-ne v3, v4, :cond_0

    .line 59
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 62
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 66
    new-instance v4, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;

    .line 68
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 73
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 77
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    move-result-object v7

    .line 81
    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 92
    move-object p1, v0

    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    throw v0

    .line 103
    :cond_2
    :goto_2
    return-object p1

    .line 104
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 105
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 107
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
    .line 112
.end method
