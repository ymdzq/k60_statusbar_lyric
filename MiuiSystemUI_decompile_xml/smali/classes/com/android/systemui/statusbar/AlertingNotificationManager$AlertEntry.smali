.class public abstract Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mEarliestRemovaltime:J

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mPostTime:J

.field public mRemoveAlertRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public abstract compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I
.end method

.method public bridge synthetic compareTo$com$android$systemui$statusbar$policy$HeadsUpManager$HeadsUpEntry(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->compareTo(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public abstract isSticky()Z
.end method

.method public final removeAutoRemovalCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->mRemoveAlertRunnable:Ljava/lang/Runnable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;->this$0:Lcom/android/systemui/statusbar/AlertingNotificationManager;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public abstract updateEntry(Z)V
.end method
