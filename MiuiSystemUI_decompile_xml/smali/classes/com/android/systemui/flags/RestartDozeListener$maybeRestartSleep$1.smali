.class public final Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/RestartDozeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->settings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    invoke-interface {v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUserId()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string/jumbo v3, "restart_nap_after_start"

    .line 11
    invoke-interface {v0, v2, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getBoolForUser(ZILjava/lang/String;)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    const-string v0, "Restarting sleep state"

    .line 20
    const-string v1, "RestartDozeListener"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 27
    iget-object v2, v0, Lcom/android/systemui/flags/RestartDozeListener;->powerManager:Landroid/os/PowerManager;

    .line 29
    iget-object v0, v0, Lcom/android/systemui/flags/RestartDozeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 31
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 38
    move-result-wide v3

    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;->this$0:Lcom/android/systemui/flags/RestartDozeListener;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->powerManager:Landroid/os/PowerManager;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 50
    check-cast p0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 61
    :cond_0
    return-void
    .line 64
.end method
