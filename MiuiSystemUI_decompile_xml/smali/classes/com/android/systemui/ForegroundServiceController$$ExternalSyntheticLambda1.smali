.class public final synthetic Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ForegroundServiceController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceController;IILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 5
    iput p2, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$4:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ForegroundServiceController;

    .line 2
    iget v1, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget v2, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/ForegroundServiceController$$ExternalSyntheticLambda1;->f$4:Z

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 15
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    move-result v2

    .line 21
    iget-object v4, v0, Lcom/android/systemui/ForegroundServiceController;->mMutex:Ljava/lang/Object;

    .line 22
    monitor-enter v4

    .line 24
    :try_start_0
    iget-object v5, v0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/systemui/ForegroundServicesUserState;

    .line 31
    if-nez v5, :cond_0

    .line 33
    new-instance v5, Lcom/android/systemui/ForegroundServicesUserState;

    .line 35
    invoke-direct {v5}, Lcom/android/systemui/ForegroundServicesUserState;-><init>()V

    .line 37
    iget-object v0, v0, Lcom/android/systemui/ForegroundServiceController;->mUserServices:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    :cond_0
    if-eqz p0, :cond_2

    .line 45
    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    .line 47
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    new-instance v0, Landroid/util/ArraySet;

    .line 55
    const/4 v2, 0x3

    .line 57
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 58
    invoke-virtual {p0, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 67
    check-cast p0, Landroid/util/ArraySet;

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, v5, Lcom/android/systemui/ForegroundServicesUserState;->mAppOps:Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/util/ArraySet;

    .line 84
    if-nez v0, :cond_3

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 96
    move-result v0

    .line 99
    if-nez v0, :cond_4

    .line 100
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4
    :goto_0
    monitor-exit v4

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
    .line 109
.end method
