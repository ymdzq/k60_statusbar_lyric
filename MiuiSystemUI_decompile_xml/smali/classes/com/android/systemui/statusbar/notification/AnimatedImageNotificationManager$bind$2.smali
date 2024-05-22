.class public final Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;->this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$bind$2;->this$0:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->isStatusBarExpanded:Z

    .line 4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 10
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 28
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->access$updateAnimatedImageDrawables(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    return-void
    .line 34
.end method
