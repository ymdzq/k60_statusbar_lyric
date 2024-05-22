.class public final Lcom/android/wm/shell/pip/tv/TvPipCustomAction;
.super Lcom/android/wm/shell/pip/tv/TvPipAction;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mRemoteAction:Landroid/app/RemoteAction;


# direct methods
.method public constructor <init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/pip/tv/TvPipAction;-><init>(ILcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final executeAction()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/wm/shell/pip/tv/TvPipAction;->executeAction()V

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    .line 5
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 24
    const-string v1, "TvPipCustomAction"

    .line 26
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    const v1, -0x55398a4

    .line 32
    const/4 v2, 0x0

    .line 35
    const-string v3, "%s: Failed to send action, %s"

    .line 36
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    :goto_0
    return-void
    .line 41
.end method

.method public final getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    .line 2
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final populateButton(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/os/Handler;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_8

    .line 2
    if-nez p2, :cond_0

    .line 4
    goto :goto_5

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    .line 7
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 9
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v1

    .line 16
    if-lez v1, :cond_1

    .line 17
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 19
    move-result-object v1

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    .line 31
    :goto_0
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1, p2}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setImageIconAsync(Landroid/graphics/drawable/Icon;Landroid/os/Handler;)V

    .line 38
    const/4 p2, 0x5

    .line 41
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 42
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eq p0, v2, :cond_3

    .line 46
    if-ne p0, p2, :cond_2

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    move v3, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    move v3, v2

    .line 53
    :goto_2
    if-nez v3, :cond_5

    .line 54
    invoke-virtual {v0}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 56
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    goto :goto_3

    .line 62
    :cond_4
    move v0, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_5
    :goto_3
    move v0, v2

    .line 65
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 66
    if-eq p0, v2, :cond_6

    .line 69
    if-ne p0, p2, :cond_7

    .line 71
    :cond_6
    move v1, v2

    .line 73
    :cond_7
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setIsCustomCloseAction(Z)V

    .line 74
    :cond_8
    :goto_5
    return-void
    .line 77
.end method

.method public final toNotificationAction(Landroid/content/Context;)Landroid/app/Notification$Action;
    .locals 4

    .line 1
    new-instance p1, Landroid/app/Notification$Action$Builder;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;->mRemoteAction:Landroid/app/RemoteAction;

    .line 4
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 14
    move-result-object v3

    .line 17
    invoke-direct {p1, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 18
    new-instance v1, Landroid/os/Bundle;

    .line 21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-string v2, "android.pictureContentDescription"

    .line 26
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 32
    const-string v0, "EXTRA_IS_PIP_CUSTOM_ACTION"

    .line 35
    const/4 v2, 0x1

    .line 37
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 41
    const/4 v0, 0x0

    .line 44
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 45
    if-eq p0, v2, :cond_1

    .line 47
    const/4 v1, 0x5

    .line 49
    if-ne p0, v1, :cond_0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    move p0, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move p0, v2

    .line 55
    :goto_1
    if-eqz p0, :cond_2

    .line 56
    const/4 v0, 0x4

    .line 58
    :cond_2
    invoke-virtual {p1, v0}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 59
    invoke-virtual {p1, v2}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 62
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 65
    move-result-object p0

    .line 68
    return-object p0
    .line 69
.end method
