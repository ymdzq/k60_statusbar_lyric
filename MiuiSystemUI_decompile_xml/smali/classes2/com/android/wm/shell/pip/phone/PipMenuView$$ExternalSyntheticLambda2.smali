.class public final synthetic Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

.field public final synthetic f$1:Landroid/app/RemoteAction;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMenuView;Landroid/app/RemoteAction;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$1:Landroid/app/RemoteAction;

    .line 7
    iput-boolean p3, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$1:Landroid/app/RemoteAction;

    .line 4
    iget-boolean p0, p0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    sget v1, Lcom/android/wm/shell/pip/phone/PipMenuView;->$r8$clinit:I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 31
    const-string v3, "PipMenuView"

    .line 33
    filled-new-array {v3, v0}, [Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    const v3, -0x619083eb

    .line 39
    const-string v4, "%s: Failed to send action, %s"

    .line 42
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 47
    iget-object p0, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 49
    sget-object v0, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_CUSTOM_CLOSE:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 53
    iput-boolean v1, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mAllowTouches:Z

    .line 56
    iget-object p0, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 58
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;

    .line 60
    const/4 v1, 0x1

    .line 62
    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/pip/phone/PipMenuView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/pip/phone/PipMenuView;I)V

    .line 63
    iget p1, p1, Lcom/android/wm/shell/pip/phone/PipMenuView;->mPipForceCloseDelay:I

    .line 66
    int-to-long v1, p1

    .line 68
    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 71
    :cond_1
    return-void
    .line 74
.end method
