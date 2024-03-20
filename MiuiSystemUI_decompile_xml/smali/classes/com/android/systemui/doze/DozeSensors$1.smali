.class public final Lcom/android/systemui/doze/DozeSensors$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 4
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 8
    move-result p1

    .line 11
    if-eq p4, p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$1;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 17
    array-length p1, p0

    .line 19
    const/4 p2, 0x0

    .line 20
    :goto_0
    if-ge p2, p1, :cond_1

    .line 21
    aget-object p3, p0, p2

    .line 23
    invoke-virtual {p3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    return-void
    .line 31
.end method
