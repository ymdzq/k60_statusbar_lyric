.class public final synthetic Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeUi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeUi;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeUi;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 7
    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeTimeTick()V

    .line 11
    new-instance v0, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda2;

    .line 14
    invoke-direct {v0}, Lcom/android/systemui/doze/DozeUi$$ExternalSyntheticLambda2;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 19
    invoke-interface {v1, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    .line 21
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 30
    return-void
    .line 33
.end method
