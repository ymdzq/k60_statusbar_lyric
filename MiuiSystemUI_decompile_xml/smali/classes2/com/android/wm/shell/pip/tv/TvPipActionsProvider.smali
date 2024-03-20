.class public final Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# instance fields
.field public final mActionsList:Ljava/util/List;

.field public final mAppActions:Ljava/util/List;

.field public final mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field public final mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

.field public final mListeners:Ljava/util/List;

.field public final mMediaActions:Ljava/util/List;

.field public final mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 26
    new-instance v9, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 33
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 35
    const/4 v3, 0x0

    .line 37
    const v4, 0x7f1308e6    # @string/pip_fullscreen 'Full screen'

    .line 38
    const v5, 0x7f0816ed    # @drawable/pip_ic_fullscreen_white 'res/drawable/pip_ic_fullscreen_white.xml'

    .line 41
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    .line 44
    move-object v2, v10

    .line 46
    move-object v7, p1

    .line 47
    move-object v8, p3

    .line 48
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V

    .line 49
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 55
    const/4 v3, 0x1

    .line 57
    const v4, 0x7f1308e2    # @string/pip_close 'Close'

    .line 58
    const v5, 0x7f0816ea    # @drawable/pip_ic_close_white 'res/drawable/pip_ic_close_white.xml'

    .line 61
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    .line 64
    move-object v2, v10

    .line 66
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V

    .line 67
    iput-object v10, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 70
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 75
    const/4 v3, 0x2

    .line 77
    const v4, 0x7f1308ea    # @string/pip_move 'Move'

    .line 78
    const v5, 0x7f0816ee    # @drawable/pip_ic_move_white 'res/drawable/pip_ic_move_white.xml'

    .line 81
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    .line 84
    move-object v2, v10

    .line 86
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V

    .line 87
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v10, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 93
    const/4 v3, 0x3

    .line 95
    const v4, 0x7f1308e3    # @string/pip_collapse 'Collapse'

    .line 96
    const v5, 0x7f0816eb    # @drawable/pip_ic_collapse 'res/drawable/pip_ic_collapse.xml'

    .line 99
    const-string v6, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    .line 102
    move-object v2, v10

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;-><init>(IIILjava/lang/String;Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipController$$ExternalSyntheticLambda0;)V

    .line 105
    iput-object v10, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 108
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;

    .line 113
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;)V

    .line 115
    iget-object v2, p2, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 123
    if-nez v3, :cond_0

    .line 124
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    .line 129
    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda0;->onMediaActionsChanged(Ljava/util/List;)V

    .line 133
    :cond_0
    return-void
    .line 136
.end method


# virtual methods
.method public final executeAction(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;->executeAction(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final notifyActionsChanged(III)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mListeners:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$Listener;->onActionsChanged(III)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public onMediaActionsChanged(Ljava/util/List;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const-string v1, "TvPipActionsProvider"

    .line 8
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x25535887

    .line 14
    const/4 v3, 0x0

    .line 17
    const-string v4, "%s: onMediaActionsChanged()"

    .line 18
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 23
    move-object v1, v0

    .line 25
    check-cast v1, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    check-cast v2, Landroid/app/RemoteAction;

    .line 45
    invoke-virtual {v2}, Landroid/app/RemoteAction;->isEnabled()Z

    .line 47
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    .line 57
    return-void
    .line 60
.end method

.method public setAppActions(Ljava/util/List;Landroid/app/RemoteAction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 2
    if-nez p2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mDefaultCloseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    .line 9
    const/4 v2, 0x5

    .line 11
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 12
    invoke-direct {v1, v2, p2, v3}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 14
    :goto_0
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 24
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 27
    move-object v1, v0

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 38
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Landroid/app/RemoteAction;

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-static {v1, p2}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    .line 53
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    move-object v2, v0

    .line 59
    check-cast v2, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->updateCustomActions(Ljava/util/List;)V

    .line 66
    return-void
    .line 69
.end method

.method public final updateCustomActions(Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mMediaActions:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mAppActions:Ljava/util/List;

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    move-object v2, v1

    .line 8
    check-cast v2, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    return-void

    .line 17
    :cond_0
    if-ne p1, v1, :cond_1

    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    move-object p1, v0

    .line 28
    :cond_1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 29
    const/4 v1, 0x4

    .line 31
    if-eqz v0, :cond_2

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 37
    int-to-long v2, v0

    .line 38
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v2

    .line 44
    const-string v3, "TvPipActionsProvider"

    .line 45
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    const v3, 0x93e3712

    .line 51
    const-string v4, "%s: replaceCustomActions, count: %d"

    .line 54
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 59
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v2

    .line 66
    const/4 v3, 0x0

    .line 67
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipAction;

    .line 78
    iget v4, v4, Lcom/android/wm/shell/pip/tv/TvPipAction;->mActionType:I

    .line 80
    if-ne v4, v1, :cond_3

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 84
    goto :goto_0

    .line 86
    :cond_4
    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda1;

    .line 87
    invoke-direct {v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v4

    .line 103
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v5

    .line 113
    check-cast v5, Landroid/app/RemoteAction;

    .line 114
    new-instance v6, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;

    .line 116
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mSystemActionsHandler:Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;

    .line 118
    invoke-direct {v6, v1, v5, v7}, Lcom/android/wm/shell/pip/tv/TvPipCustomAction;-><init>(ILandroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipAction$SystemActionsHandler;)V

    .line 120
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_1

    .line 126
    :cond_5
    const/4 v1, 0x2

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 128
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 131
    move-result v0

    .line 134
    sub-int/2addr v0, v3

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    move-result p1

    .line 139
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 140
    move-result p1

    .line 143
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 144
    return-void
    .line 147
.end method

.method public updateExpansionEnabled(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "TvPipActionsProvider"

    .line 12
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    const-string v3, "%s: updateExpansionState, enabled: %b"

    .line 20
    const v4, -0x7ecdc621

    .line 22
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 28
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 34
    move-result v2

    .line 37
    const/4 v3, -0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x1

    .line 40
    if-eq v2, v3, :cond_1

    .line 41
    move v6, v5

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v6, v4

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    if-nez v6, :cond_2

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v0

    .line 56
    add-int/lit8 v2, v0, -0x1

    .line 57
    goto :goto_1

    .line 59
    :cond_2
    if-nez p1, :cond_4

    .line 60
    if-eqz v6, :cond_4

    .line 62
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 64
    :goto_1
    if-eqz p1, :cond_3

    .line 67
    move v3, v5

    .line 69
    :cond_3
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 70
    :cond_4
    return-void
    .line 73
.end method

.method public updatePipExpansionState(Z)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v1

    .line 11
    const-string v2, "TvPipActionsProvider"

    .line 12
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    const/16 v2, 0xc

    .line 18
    const-string v3, "%s: onPipExpansionToggled, expanded: %b"

    .line 20
    const v4, -0x1e59417d

    .line 22
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    const v0, 0x7f1308e3    # @string/pip_collapse 'Collapse'

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    const v0, 0x7f1308e5    # @string/pip_expand 'Expand'

    .line 34
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    const p1, 0x7f0816eb    # @drawable/pip_ic_collapse 'res/drawable/pip_ic_collapse.xml'

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    const p1, 0x7f0816ec    # @drawable/pip_ic_expand 'res/drawable/pip_ic_expand.xml'

    .line 43
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mExpandCollapseAction:Lcom/android/wm/shell/pip/tv/TvPipSystemAction;

    .line 46
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 48
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x1

    .line 51
    if-ne v0, v2, :cond_4

    .line 52
    iget v2, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 54
    if-eq p1, v2, :cond_3

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    move v2, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move v2, v4

    .line 61
    :goto_3
    iput v0, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mTitleResource:I

    .line 62
    iput p1, v1, Lcom/android/wm/shell/pip/tv/TvPipSystemAction;->mIconResource:I

    .line 64
    if-eqz v2, :cond_5

    .line 66
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->mActionsList:Ljava/util/List;

    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 72
    move-result p1

    .line 75
    invoke-virtual {p0, v3, v4, p1}, Lcom/android/wm/shell/pip/tv/TvPipActionsProvider;->notifyActionsChanged(III)V

    .line 76
    :cond_5
    return-void
    .line 79
.end method
