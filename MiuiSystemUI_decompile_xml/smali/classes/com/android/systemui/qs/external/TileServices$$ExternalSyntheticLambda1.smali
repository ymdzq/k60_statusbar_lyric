.class public final synthetic Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Comparable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Comparable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Comparable;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/qs/external/TileServices;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Comparable;

    .line 12
    check-cast p0, Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 16
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->createExternalSlotName(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 31
    check-cast v0, Lcom/android/systemui/qs/external/TileServices$2;

    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServices$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Comparable;

    .line 35
    check-cast p0, Landroid/content/ComponentName;

    .line 37
    iget-object v0, v0, Lcom/android/systemui/qs/external/TileServices$2;->this$0:Lcom/android/systemui/qs/external/TileServices;

    .line 39
    const-string v1, "No TileServiceManager found in requestListening for tile "

    .line 41
    const-string v2, "Couldn\'t find tile for "

    .line 43
    iget-object v3, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 45
    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/qs/external/TileServices;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 48
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 50
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 52
    move-result v4

    .line 55
    iget-object v5, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 56
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    iget-object v6, v0, Lcom/android/systemui/qs/external/TileServices;->mTiles:Landroid/util/SparseArrayMap;

    .line 59
    invoke-virtual {v6, v4, p0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v6

    .line 64
    check-cast v6, Lcom/android/systemui/qs/external/CustomTile;

    .line 65
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-nez v6, :cond_0

    .line 68
    :try_start_2
    const-string v0, "TileServices"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string p0, "("

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, ")"

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v3

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    iget-object p0, v0, Lcom/android/systemui/qs/external/TileServices;->mServices:Landroid/util/ArrayMap;

    .line 102
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    .line 108
    if-nez p0, :cond_1

    .line 110
    const-string p0, "TileServices"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, v6, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 127
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-exit v3

    .line 131
    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    .line 133
    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    monitor-exit v3

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :catch_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    :goto_1
    return-void

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    :try_start_6
    throw p0

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 156
    throw p0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 158
.end method
