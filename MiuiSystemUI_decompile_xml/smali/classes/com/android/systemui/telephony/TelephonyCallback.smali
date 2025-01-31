.class public final Lcom/android/systemui/telephony/TelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field public final mActiveDataSubscriptionIdListeners:Ljava/util/List;

.field public final mCallStateListeners:Ljava/util/List;

.field public final mServiceStateListeners:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final hasAnyListeners()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    .line 22
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result p0

    .line 29
    if-nez p0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 35
    :goto_1
    return p0
    .line 36
.end method

.method public final onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mActiveDataSubscriptionIdListeners:Ljava/util/List;

    .line 7
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;-><init>(II)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
    .line 25
.end method

.method public final onCallStateChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mCallStateListeners:Ljava/util/List;

    .line 7
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;

    .line 13
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda0;-><init>(II)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
    .line 25
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    .line 7
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance p0, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda1;

    .line 13
    invoke-direct {p0, p1}, Lcom/android/systemui/telephony/TelephonyCallback$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ServiceState;)V

    .line 15
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method
