.class public final Lcom/android/keyguard/KeyguardEditorHelper$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$4;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTopActivityMayChanged(Landroid/content/ComponentName;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "onTopActivityMayChanged, topActivity="

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "; mState="

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$4;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 22
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const/4 v0, 0x0

    .line 43
    if-nez p1, :cond_1

    .line 44
    move p1, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "com.miui.aod/com.miui.keyguard.editor"

    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    move-result p1

    .line 53
    :goto_0
    if-nez p1, :cond_5

    .line 54
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 56
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 58
    if-ne p1, v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 64
    if-eqz v1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 68
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 70
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideBouncer(Z)V

    .line 74
    :cond_2
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->sendKeyguardBouncerStateChangedCommandToEditor(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 85
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 87
    const/high16 v3, 0x3f800000    # 1.0f

    .line 89
    const/high16 v4, 0x3f800000    # 1.0f

    .line 91
    const/4 v5, 0x0

    .line 93
    const/4 v6, 0x0

    .line 94
    const/4 v7, 0x1

    .line 95
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->startAnimationForEditor(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;FFFFZ)V

    .line 96
    goto :goto_1

    .line 99
    :cond_3
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 100
    if-ne p1, v0, :cond_4

    .line 102
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->TOP_ACTIVITY_CHANGE:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInExitEditorMode()Z

    .line 109
    move-result p1

    .line 112
    if-nez p1, :cond_5

    .line 113
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 117
    :cond_5
    :goto_1
    return-void
    .line 120
.end method
