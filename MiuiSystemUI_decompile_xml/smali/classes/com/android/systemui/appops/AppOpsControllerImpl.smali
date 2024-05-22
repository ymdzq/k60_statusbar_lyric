.class public final Lcom/android/systemui/appops/AppOpsControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController;
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;
.implements Landroid/app/AppOpsManager$OnOpNotedInternalListener;
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final OPS:[I


# instance fields
.field public final mActiveItems:Ljava/util/List;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

.field public mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field public final mCallbacks:Ljava/util/List;

.field public final mCallbacksByCode:Landroid/util/SparseArray;

.field public mCameraDisabled:Z

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mContext:Landroid/content/Context;

.field public final mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mListening:Z

.field public mMicMuted:Z

.field public final mNotedItems:Ljava/util/List;

.field public final mRecordingsByUid:Landroid/util/SparseArray;

.field public final mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 4
        0x2a
        0x1a
        0x65
        0x18
        0x1b
        0x78
        0x79
        0x64
        0x0
        0x1
    .end array-data
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/dump/DumpManager;Landroid/media/AudioManager;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    .line 40
    invoke-direct {v0, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl$1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    .line 42
    iput-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    .line 45
    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 47
    const-string p6, "appops"

    .line 49
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p6

    .line 54
    check-cast p6, Landroid/app/AppOpsManager;

    .line 55
    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 57
    new-instance p6, Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 59
    invoke-direct {p6, p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$H;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;Landroid/os/Looper;)V

    .line 61
    iput-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 64
    const/4 p2, 0x0

    .line 66
    move p6, p2

    .line 67
    :goto_0
    const/16 v0, 0xa

    .line 68
    if-ge p6, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 72
    sget-object v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    .line 74
    aget v1, v1, p6

    .line 76
    new-instance v2, Landroid/util/ArraySet;

    .line 78
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    add-int/lit8 p6, p6, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_0
    iput-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    iput-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 91
    invoke-virtual {p4}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    .line 93
    move-result p4

    .line 96
    const/4 p6, 0x1

    .line 97
    if-nez p4, :cond_1

    .line 98
    move-object p4, p5

    .line 100
    check-cast p4, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 101
    invoke-virtual {p4, p6}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 103
    move-result p4

    .line 106
    if-eqz p4, :cond_2

    .line 107
    :cond_1
    move p2, p6

    .line 109
    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 110
    const/4 p2, 0x2

    .line 112
    check-cast p5, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 113
    invoke-virtual {p5, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 115
    move-result p2

    .line 118
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 119
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    .line 121
    iput-object p7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 123
    const-string p1, "AppOpsControllerImpl"

    .line 125
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 127
    return-void
    .line 130
.end method

.method public static getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;
    .locals 4

    .line 1
    check-cast p0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    .line 15
    iget v3, v2, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 17
    if-ne v3, p1, :cond_0

    .line 19
    iget v3, v2, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 21
    if-ne v3, p2, :cond_0

    .line 23
    iget-object v3, v2, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    return-object v2

    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
    .line 38
.end method


# virtual methods
.method public final addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/4 v3, 0x1

    .line 5
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 8
    aget v5, p1, v1

    .line 10
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 18
    aget v4, p1, v1

    .line 20
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Ljava/util/Set;

    .line 26
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    move v2, v3

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v2, :cond_2

    .line 35
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 37
    check-cast p1, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    invoke-virtual {p0, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    .line 54
    :cond_3
    return-void
    .line 57
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "AppOpsController state:"

    .line 2
    const-string v0, "  Listening: "

    .line 4
    invoke-static {p1, p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    const-string p2, "  Active Items:"

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    const/4 p2, 0x0

    .line 27
    move v0, p2

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v1

    .line 36
    const-string v2, "    "

    .line 37
    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/systemui/appops/AppOpItem;

    .line 49
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "  Noted Items:"

    .line 64
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result v0

    .line 76
    if-ge p2, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 79
    check-cast v0, Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/systemui/appops/AppOpItem;

    .line 87
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/appops/AppOpItem;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    add-int/lit8 p2, p2, 0x1

    .line 99
    goto :goto_1

    .line 101
    :cond_1
    return-void
    .line 102
.end method

.method public final getActiveAppOps(Z)Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 10
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_0
    if-ge v4, v2, :cond_2

    .line 23
    iget-object v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 25
    check-cast v5, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/systemui/appops/AppOpItem;

    .line 33
    iget-object v6, v5, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 35
    iget-object v7, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {v7, v6}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    if-nez p1, :cond_0

    .line 45
    iget-boolean v6, v5, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 47
    if-nez v6, :cond_1

    .line 49
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 60
    monitor-enter p1

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 63
    check-cast v1, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    move-result v1

    .line 70
    :goto_1
    if-ge v3, v1, :cond_4

    .line 71
    iget-object v2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 73
    check-cast v2, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 80
    check-cast v2, Lcom/android/systemui/appops/AppOpItem;

    .line 81
    iget-object v4, v2, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 83
    iget-object v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {v5, v4}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    move-result v4

    .line 90
    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 96
    goto :goto_1

    .line 98
    :cond_4
    monitor-exit p1

    .line 99
    return-object v0

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    throw p0

    .line 103
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
    .line 105
.end method

.method public final isAnyRecordingPausedLocked(I)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    const/4 p1, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 17
    return p1

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v0

    .line 23
    move v2, p1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_3

    .line 25
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    .line 31
    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    return v1

    .line 39
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 42
    :cond_3
    return p1
    .line 43
.end method

.method public final notifySuscribers(Ljava/lang/String;ZII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 2
    new-instance v7, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;

    .line 4
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p1

    .line 10
    move v6, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IILjava/lang/String;Z)V

    .line 12
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final notifySuscribersWorker(Ljava/lang/String;ZII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v0, p1}, Landroid/permission/PermissionManager;->shouldShowPackageForIndicatorCached(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/Set;

    .line 24
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p0

    .line 29
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/appops/AppOpsController$Callback;

    .line 40
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/appops/AppOpsController$Callback;->onActiveStateChanged(Ljava/lang/String;ZII)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    return-void
    .line 46
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 7

    .line 2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p1

    if-eqz p5, :cond_0

    const/4 p4, -0x1

    if-eq p7, p4, :cond_0

    if-eqz p6, :cond_0

    and-int/lit8 p4, p6, 0x1

    if-nez p4, :cond_0

    and-int/lit8 p4, p6, 0x8

    if-nez p4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter p4

    .line 4
    :try_start_0
    iget-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-static {p6, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p6

    const/4 p7, 0x0

    const/4 v6, 0x1

    if-nez p6, :cond_8

    if-eqz p5, :cond_8

    .line 5
    new-instance p6, Lcom/android/systemui/appops/AppOpItem;

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object v0, p6

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/appops/AppOpItem;-><init>(IIJLjava/lang/String;)V

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x78

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p7

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v6

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    move-result v0

    .line 9
    iput-boolean v0, p6, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    goto :goto_4

    :cond_3
    const/16 v0, 0x1a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, p7

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v6

    :goto_3
    if-eqz v0, :cond_6

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 11
    iput-boolean v0, p6, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 12
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-boolean p6, p6, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    if-nez p6, :cond_7

    move p6, v6

    goto :goto_5

    :cond_7
    move p6, p7

    .line 14
    :goto_5
    monitor-exit p4

    goto :goto_6

    :cond_8
    if-eqz p6, :cond_9

    if-nez p5, :cond_9

    .line 15
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    monitor-exit p4

    move p6, v6

    goto :goto_6

    .line 17
    :cond_9
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move p6, p7

    :goto_6
    if-nez p6, :cond_a

    return-void

    .line 18
    :cond_a
    iget-object p6, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter p6

    .line 19
    :try_start_1
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-static {p4, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p4

    if-eqz p4, :cond_b

    move p7, v6

    .line 20
    :cond_b
    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p7, :cond_c

    .line 21
    invoke-virtual {p0, p3, p5, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(Ljava/lang/String;ZII)V

    :cond_c
    return-void

    :catchall_0
    move-exception p0

    .line 22
    :try_start_2
    monitor-exit p6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 23
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/appops/AppOpsControllerImpl;->onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public final onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 1
    if-eqz p6, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 5
    monitor-enter p4

    .line 7
    :try_start_0
    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 8
    invoke-static {p5, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    .line 10
    move-result-object p5

    .line 13
    const/4 p6, 0x0

    .line 14
    const/4 v0, 0x1

    .line 15
    if-nez p5, :cond_1

    .line 16
    new-instance p5, Lcom/android/systemui/appops/AppOpItem;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 20
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v4

    .line 30
    move-object v1, p5

    .line 31
    move v2, p1

    .line 32
    move v3, p2

    .line 33
    move-object v6, p3

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/appops/AppOpItem;-><init>(IIJLjava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 38
    check-cast v1, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    move v1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v1, p6

    .line 47
    :goto_0
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 49
    invoke-virtual {p4, p5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 51
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 54
    invoke-virtual {p4, p5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 56
    new-instance v2, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;

    .line 59
    invoke-direct {v2, p4, p5}, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl$H;Lcom/android/systemui/appops/AppOpItem;)V

    .line 61
    const-wide/16 v3, 0x1388

    .line 64
    invoke-virtual {p4, v2, p5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 66
    if-nez v1, :cond_2

    .line 69
    return-void

    .line 71
    :cond_2
    iget-object p5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 72
    monitor-enter p5

    .line 74
    :try_start_1
    iget-object p4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 75
    invoke-static {p4, p1, p2, p3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    .line 77
    move-result-object p4

    .line 80
    if-eqz p4, :cond_3

    .line 81
    move p6, v0

    .line 83
    :cond_3
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-nez p6, :cond_4

    .line 85
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(Ljava/lang/String;ZII)V

    .line 87
    :cond_4
    return-void

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    throw p0

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    throw p0
    .line 96
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    .line 4
    move-result p1

    .line 7
    const/4 p2, 0x1

    .line 8
    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 11
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/appops/AppOpsControllerImpl;->updateSensorDisabledStatus()V

    .line 25
    return-void
    .line 28
.end method

.method public final onSensorBlockedChanged(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 2
    new-instance v1, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda2;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;IZ)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public setBGHandler(Lcom/android/systemui/appops/AppOpsControllerImpl$H;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 2
    return-void
    .line 4
.end method

.method public setListening(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mListening:Z

    .line 2
    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 6
    sget-object v0, Lcom/android/systemui/appops/AppOpsControllerImpl;->OPS:[I

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 13
    invoke-virtual {p1, v0, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 27
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    .line 36
    move-result p1

    .line 39
    const/4 v0, 0x1

    .line 40
    if-nez p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 43
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 47
    move-result p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 55
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 57
    const/4 v0, 0x2

    .line 59
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    .line 62
    move-result p1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 66
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 68
    new-instance v0, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;

    .line 70
    invoke-direct {v0, p0}, Lcom/android/systemui/appops/AppOpsControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/appops/AppOpsControllerImpl;)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    .line 80
    const-string v1, "android.media.action.MICROPHONE_MUTE_CHANGED"

    .line 82
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 87
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 93
    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 98
    invoke-virtual {p1, p0}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mAudioRecordingCallback:Lcom/android/systemui/appops/AppOpsControllerImpl$1;

    .line 105
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    .line 107
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    .line 110
    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    .line 112
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 114
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mBGHandler:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    .line 117
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 123
    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 128
    monitor-enter p1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 131
    check-cast v0, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mRecordingsByUid:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 140
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 144
    monitor-enter v0

    .line 146
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    .line 147
    check-cast p0, Ljava/util/ArrayList;

    .line 149
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 151
    monitor-exit v0

    .line 154
    :goto_1
    return-void

    .line 155
    :catchall_0
    move-exception p0

    .line 156
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    throw p0

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    throw p0
    .line 161
.end method

.method public final updateSensorDisabledStatus()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v3, v1, :cond_8

    .line 15
    iget-object v4, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    .line 17
    check-cast v4, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/systemui/appops/AppOpItem;

    .line 25
    iget v5, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 27
    const/16 v6, 0x1b

    .line 29
    const/4 v7, 0x1

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    const/16 v6, 0x64

    .line 34
    if-eq v5, v6, :cond_1

    .line 36
    const/16 v6, 0x78

    .line 38
    if-ne v5, v6, :cond_0

    .line 40
    goto :goto_1

    .line 42
    :cond_0
    move v6, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    move v6, v7

    .line 45
    :goto_2
    if-eqz v6, :cond_2

    .line 46
    iget v5, v4, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 48
    invoke-virtual {p0, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->isAnyRecordingPausedLocked(I)Z

    .line 50
    move-result v5

    .line 53
    goto :goto_5

    .line 54
    :cond_2
    const/16 v6, 0x1a

    .line 55
    if-eq v5, v6, :cond_4

    .line 57
    const/16 v6, 0x65

    .line 59
    if-ne v5, v6, :cond_3

    .line 61
    goto :goto_3

    .line 63
    :cond_3
    move v5, v2

    .line 64
    goto :goto_4

    .line 65
    :cond_4
    :goto_3
    move v5, v7

    .line 66
    :goto_4
    if-eqz v5, :cond_5

    .line 67
    iget-boolean v5, p0, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCameraDisabled:Z

    .line 69
    goto :goto_5

    .line 71
    :cond_5
    move v5, v2

    .line 72
    :goto_5
    iget-boolean v6, v4, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 73
    if-eq v6, v5, :cond_7

    .line 75
    iput-boolean v5, v4, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    .line 77
    iget v6, v4, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 79
    iget v8, v4, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 81
    iget-object v4, v4, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 83
    if-nez v5, :cond_6

    .line 85
    goto :goto_6

    .line 87
    :cond_6
    move v7, v2

    .line 88
    :goto_6
    invoke-virtual {p0, v4, v7, v6, v8}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribers(Ljava/lang/String;ZII)V

    .line 89
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_0

    .line 94
    :cond_8
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
    .line 99
.end method
