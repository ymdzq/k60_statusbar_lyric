.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 14
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Ljava/lang/Object;

    .line 18
    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 26
    move-result-object p0

    .line 29
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 33
    new-instance v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4$run$$inlined$sortedByDescending$1;

    .line 34
    invoke-direct {v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4$run$$inlined$sortedByDescending$1;-><init>()V

    .line 36
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 48
    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    .line 51
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 53
    iput-object p0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    .line 55
    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$1;

    .line 57
    invoke-direct {v2, v1, p0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    .line 59
    invoke-static {v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    return-void

    .line 69
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Ljava/lang/Object;

    .line 70
    check-cast p0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;

    .line 72
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 76
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 78
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 83
    instance-of v0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 84
    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 88
    move-result-object p0

    .line 91
    const-string v0, "Failed to send updated state - downstream canceled or failed."

    .line 92
    const-string v1, "ForegroundServicesRepositoryImpl"

    .line 94
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_0
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 100
.end method
