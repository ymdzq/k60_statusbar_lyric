.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$7;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$7;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 2
    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "activityResumed() intent\uff1a "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiFreeformModeObserver"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 21
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    const-string v0, "jp.softbank.mb.parentalcontrols"

    .line 27
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const-string v0, "jp.co.daj.consumer.ifilter.blocker.BlockActivity"

    .line 39
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    :cond_0
    const-string v0, "jp.netstar.familysmile"

    .line 51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    const-string v0, "jp.netstar.familysmile.appwatch.AppWatchBlockActivity"

    .line 63
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    :cond_1
    const-string p1, "exit from familysmile and parentalcontrols activity resumed mCurrentWindowMode == GESTURE_WINDOWING_MODE_FREEFORM"

    .line 75
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver$7;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;

    .line 80
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeObserver;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->exitAllFreeform()V

    .line 86
    :cond_2
    return-void
    .line 89
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
