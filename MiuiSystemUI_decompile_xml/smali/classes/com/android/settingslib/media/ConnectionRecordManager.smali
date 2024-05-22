.class public final Lcom/android/settingslib/media/ConnectionRecordManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

.field public static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field public mLastSelectedDevice:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstanceSync:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public static getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstanceSync:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 9
    invoke-direct {v1}, Lcom/android/settingslib/media/ConnectionRecordManager;-><init>()V

    .line 11
    sput-object v1, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 14
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    sget-object v0, Lcom/android/settingslib/media/ConnectionRecordManager;->sInstance:Lcom/android/settingslib/media/ConnectionRecordManager;

    .line 17
    return-object v0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1
    .line 22
.end method
