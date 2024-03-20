.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    .line 1
    const-string v0, " onDisplayAdded: displayId: "

    .line 2
    const-string v1, "MiuiFreeformModeDisplayInfo"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const-string p1, "onDisplayAdded updateDisplayLayout"

    .line 12
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 17
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->updateDisplayLayout()V

    .line 19
    return-void
    .line 22
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, " onDisplayConfigurationChanged: displayId: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " newConfig: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "MiuiFreeformModeDisplayInfo"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-eqz p1, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 32
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmDisplayController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/common/DisplayController;

    .line 34
    move-result-object p1

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    .line 39
    move-result-object p1

    .line 42
    iget v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 43
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 45
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isFoldScreenDevice()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    .line 57
    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isWideScreen(Landroid/content/res/Configuration;)Z

    .line 61
    move-result p1

    .line 64
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 65
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmLastIsWideScreen(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Z

    .line 67
    move-result v0

    .line 70
    if-eq v0, p1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 73
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fputmLastIsWideScreen(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;Z)V

    .line 75
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 78
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeformBoundsAndScaleIfNeed(Landroid/content/res/Configuration;)V

    .line 84
    goto :goto_0

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 88
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayWidth()I

    .line 90
    move-result v3

    .line 93
    if-ne v0, v3, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 96
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->getDisplayHeight()I

    .line 98
    move-result v0

    .line 101
    if-eq v2, v0, :cond_3

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, " onDisplayConfigurationChanged: newWidth: "

    .line 106
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, " newHeight: "

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget p1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 121
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 123
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo$1;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;

    .line 126
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;->-$$Nest$fgetmMiuiFreeformModeController(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeDisplayInfo;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeController;->adjustFreeformBoundsAndScaleIfNeed(Landroid/content/res/Configuration;)V

    .line 132
    :cond_3
    :goto_0
    return-void
    .line 135
.end method

.method public bridge synthetic onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationFinished(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onFixedRotationStarted(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic onKeepClearAreasChanged(ILjava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
