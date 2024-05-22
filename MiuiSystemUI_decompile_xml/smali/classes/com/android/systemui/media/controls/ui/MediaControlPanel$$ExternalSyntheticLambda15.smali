.class public final synthetic Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/MediaControlPanel;ZLcom/android/systemui/media/controls/models/player/MediaDeviceData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 5
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Z

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$0:Lcom/android/systemui/media/controls/ui/MediaControlPanel;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$1:Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda15;->f$2:Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 6
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 8
    const/4 v2, 0x2

    .line 10
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    goto/16 :goto_1

    .line 17
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 19
    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 21
    const/4 v3, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    iget-boolean v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mIsCurrentBroadcastedApp:Z

    .line 26
    if-nez v0, :cond_2

    .line 28
    iget v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 30
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_OPEN_BROADCAST_DIALOG:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 39
    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 41
    invoke-interface {v2, v4, v0, v1, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->name:Ljava/lang/CharSequence;

    .line 46
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    iget-object v5, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 52
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 54
    iget-object v8, p0, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessButton:Landroid/view/View;

    .line 56
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mBroadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance p1, Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mContext:Landroid/content/Context;

    .line 65
    iget-object v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mMediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 67
    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 69
    iget-object v6, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 71
    iget-object v7, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 73
    move-object v0, p1

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/bluetooth/BroadcastDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/broadcast/BroadcastSender;)V

    .line 76
    if-eqz v8, :cond_1

    .line 79
    iget-object v6, p0, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 81
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    const/16 v11, 0xc

    .line 88
    move-object v7, p1

    .line 90
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V

    .line 91
    goto/16 :goto_1

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 96
    goto/16 :goto_1

    .line 99
    :cond_2
    iget p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 101
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 103
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 110
    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 112
    invoke-interface {v2, v5, p0, v0, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 114
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 117
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/models/player/MediaViewHolder;

    .line 119
    iget-object p1, p1, Lcom/android/systemui/media/controls/models/player/MediaViewHolder;->seamlessButton:Landroid/view/View;

    .line 121
    invoke-virtual {v1, p1, p0, v3}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Landroid/view/View;Ljava/lang/String;Z)V

    .line 123
    goto :goto_1

    .line 126
    :cond_3
    iget v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mUid:I

    .line 127
    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 129
    iget-object v5, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 136
    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 138
    invoke-interface {v2, v6, v0, v4, v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    .line 143
    if-eqz p0, :cond_6

    .line 145
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 147
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 149
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 151
    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 155
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    .line 157
    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    .line 159
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 161
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(Landroid/app/PendingIntent;I)Z

    .line 163
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    move v0, v3

    .line 169
    goto :goto_0

    .line 170
    :cond_4
    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    .line 172
    move-result v1

    .line 175
    if-eqz v1, :cond_5

    .line 176
    if-nez v0, :cond_5

    .line 178
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 180
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 182
    goto :goto_1

    .line 185
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 186
    move-result-object p1

    .line 189
    invoke-virtual {p1, v3}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    .line 190
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 193
    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_1

    .line 200
    :catch_0
    const-string p0, "MediaControlPanel"

    .line 201
    const-string p1, "Device pending intent was canceled"

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    goto :goto_1

    .line 208
    :cond_6
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mPackageName:Ljava/lang/String;

    .line 209
    const/4 p1, 0x0

    .line 211
    invoke-virtual {v1, p1, p0, v3}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Landroid/view/View;Ljava/lang/String;Z)V

    .line 212
    :goto_1
    return-void
    .line 215
.end method
