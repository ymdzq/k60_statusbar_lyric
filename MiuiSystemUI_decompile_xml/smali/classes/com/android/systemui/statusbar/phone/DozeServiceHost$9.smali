.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$9;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    if-eqz p2, :cond_1

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;

    .line 16
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 18
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/systemui/doze/DozeHost$Callback;

    .line 40
    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeHost$Callback;->onNotificationAlerted(Lcom/android/systemui/statusbar/phone/DozeServiceHost$$ExternalSyntheticLambda1;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 46
    if-eqz p1, :cond_1

    .line 48
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 50
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 52
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object p1, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    :cond_1
    if-nez p2, :cond_2

    .line 62
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mHeadsUpManagerPhone:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/statusbar/AlertingNotificationManager;->mAlertEntries:Landroid/util/ArrayMap;

    .line 66
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 68
    move-result p1

    .line 71
    xor-int/lit8 p1, p1, 0x1

    .line 72
    if-nez p1, :cond_2

    .line 74
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsePending:Z

    .line 77
    iget-object p0, v1, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;->run()V

    .line 81
    :cond_2
    return-void
    .line 84
.end method
