.class public final Lcom/android/keyguard/clock/ClockManager$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/ClockManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$1;->this$0:Lcom/android/keyguard/clock/ClockManager;

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
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/android/keyguard/clock/ClockManager$1;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 6
    iget-object p2, p2, Lcom/android/keyguard/clock/ClockManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    move-result p2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$1;->this$0:Lcom/android/keyguard/clock/ClockManager;

    .line 26
    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->-$$Nest$mreload(Lcom/android/keyguard/clock/ClockManager;)V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
