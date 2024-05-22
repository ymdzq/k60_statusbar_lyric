.class public final Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;->this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    .line 2
    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;->this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->makePrivacyItem(Landroid/media/projection/MediaProjectionInfo;)Lcom/android/systemui/privacy/PrivacyItem;

    .line 7
    move-result-object p1

    .line 10
    iget-object v2, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 18
    iget v2, p1, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 20
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 24
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v0, v3, v2, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromMediaProjection(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;->this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 33
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1

    .line 38
    throw p0
    .line 39
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;->this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->lock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->makePrivacyItem(Landroid/media/projection/MediaProjectionInfo;)Lcom/android/systemui/privacy/PrivacyItem;

    .line 7
    move-result-object p1

    .line 10
    iget-object v2, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->privacyItems:Ljava/util/List;

    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    move v5, v4

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 30
    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    .line 31
    iget-object v6, v6, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 33
    iget-object v7, p1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 35
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v6

    .line 40
    if-eqz v6, :cond_0

    .line 41
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    const/4 v5, -0x1

    .line 47
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 51
    iget v2, p1, Lcom/android/systemui/privacy/PrivacyApplication;->uid:I

    .line 53
    iget-object p1, p1, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 57
    invoke-virtual {v0, v4, v2, p1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromMediaProjection(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    .line 62
    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor$mediaProjectionCallback$1;->this$0:Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    .line 65
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v1

    .line 70
    throw p0
    .line 71
.end method
