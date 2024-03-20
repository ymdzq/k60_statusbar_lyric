.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    const v0, 0x10803f6    # @android:drawable/ic_lock_silent_mode_vibrate

    .line 4
    const v1, 0x10401ea    # @android:string/config_bodyFontFamilyMedium

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onLongPress()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 12
    const/16 v2, 0x125

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 19
    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 21
    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIActivityManager:Landroid/app/IActivityManager;

    .line 26
    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    return v1
    .line 31
.end method

.method public final onPress()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 9
    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    .line 11
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction$1;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;I)V

    .line 16
    iget p0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogPressDelay:I

    .line 19
    int-to-long v3, p0

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
    .line 25
.end method

.method public final showBeforeProvisioning()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 9
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 13
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 17
    const-string v3, "bugreport_in_power_menu"

    .line 19
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 37
    :cond_0
    return v1
    .line 38
.end method

.method public final showDuringKeyguard()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
