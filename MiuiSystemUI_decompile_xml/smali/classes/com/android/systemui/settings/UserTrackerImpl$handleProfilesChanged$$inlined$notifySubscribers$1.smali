.class public final Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/settings/DataItem;

.field public final synthetic $profiles$inlined:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DataItem;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DataItem;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$profiles$inlined:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$it:Lcom/android/systemui/settings/DataItem;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/settings/DataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/settings/UserTracker$Callback;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;->$profiles$inlined:Ljava/util/List;

    .line 14
    invoke-interface {v0, p0}, Lcom/android/systemui/settings/UserTracker$Callback;->onProfilesChanged(Ljava/util/List;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
