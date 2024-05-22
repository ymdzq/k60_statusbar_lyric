.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;


# instance fields
.field final synthetic this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onAppTransition(Landroid/window/TransitionInfo;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository$TaskStateListener;->onAppTransition(Landroid/window/TransitionInfo;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_1

    const-string v0, "com.miui.personalassistant/.picker.business.home.pages.PickerHomeActivity"

    .line 3
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.personalassistant/.picker.business.detail.PickerDetailActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 5
    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.miui.personalassistant/.picker.business.filter.PickerReplaceWidgetActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "IMiuiDesktopModeImpl: onTaskAppeared realActivity="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MiuiFreeformModeController"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->setPickerTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    return-void
.end method

.method public onTaskAppeared(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskSizeLevelChanged(Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskWrapperInfo;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    const-string v1, "com.miui.personalassistant/.picker.business.home.pages.PickerHomeActivity"

    .line 8
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "com.miui.personalassistant/.picker.business.detail.PickerDetailActivity"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    const-string v1, "com.miui.personalassistant/.picker.business.filter.PickerReplaceWidgetActivity"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "IMiuiDesktopModeImpl: onTaskVanished realActivity="

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    const-string v0, "MiuiFreeformModeController"

    .line 64
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl$2;->this$1:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;

    .line 69
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController$IMiuiDesktopModeImpl;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 71
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->-$$Nest$fgetmMiuiFreeformModeGestureHandler(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeGestureHandler;->getMiuiFreefromAnimation()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 77
    move-result-object p0

    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->setPickerTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 82
    :cond_1
    return-void
    .line 85
.end method
