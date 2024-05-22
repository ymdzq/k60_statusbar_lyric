.class public final Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$mCloseSystemDialogReceiver$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;->headsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getAllEntries()Ljava/util/stream/Stream;

    .line 6
    move-result-object p2

    .line 9
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$releaseHeadsUps$hasInCallOrAlarmClockNotification$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy$releaseHeadsUps$hasInCallOrAlarmClockNotification$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiHeadsUpPolicy;)V

    .line 12
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    .line 30
    :goto_0
    return-void
    .line 33
.end method
