.class public final Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $data:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v2, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;

    .line 17
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;I)V

    .line 20
    iget-object p0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    .line 23
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    return-void

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 33
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 44
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 55
    const/4 v3, 0x0

    .line 57
    invoke-interface {v2, v1, p0, v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V

    .line 58
    goto :goto_1

    .line 61
    :cond_0
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 64
.end method
