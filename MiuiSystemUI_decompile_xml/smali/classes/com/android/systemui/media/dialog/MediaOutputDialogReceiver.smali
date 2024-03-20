.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mediaOutputBroadcastDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;

.field public final mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputBroadcastDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v2

    .line 9
    const-string v3, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 10
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 15
    const-string v3, "MediaOutputDlgReceiver"

    .line 16
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v6, "package_name"

    .line 20
    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    move v4, v5

    .line 37
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 38
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2, v1, v5}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Landroid/view/View;Ljava/lang/String;Z)V

    .line 43
    goto/16 :goto_2

    .line 46
    :cond_2
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiverKt;->DEBUG:Z

    .line 48
    if-eqz v0, :cond_8

    .line 50
    const-string v0, "Unable to launch media output dialog. Package name is empty."

    .line 52
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    goto :goto_2

    .line 57
    :cond_3
    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 60
    move-result-object v7

    .line 63
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_8

    .line 68
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v9

    .line 73
    if-eqz v9, :cond_5

    .line 74
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 76
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    goto :goto_1

    .line 82
    :cond_4
    move v4, v5

    .line 83
    :cond_5
    :goto_1
    if-nez v4, :cond_7

    .line 84
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputBroadcastDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;

    .line 86
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->mediaOutputBroadcastDialog:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 88
    if-eqz v1, :cond_6

    .line 90
    invoke-virtual {v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 92
    :cond_6
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 95
    iget-object v8, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->context:Landroid/content/Context;

    .line 97
    iget-object v10, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 99
    iget-object v11, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 101
    iget-object v12, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 103
    iget-object v13, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 105
    iget-object v14, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 107
    iget-object v15, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    .line 109
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->audioManager:Landroid/media/AudioManager;

    .line 111
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 113
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 115
    iget-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 117
    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 119
    move-object v7, v1

    .line 121
    move-object/from16 v16, v2

    .line 122
    move-object/from16 v17, v3

    .line 124
    move-object/from16 v18, v4

    .line 126
    move-object/from16 v19, v5

    .line 128
    move-object/from16 v20, v6

    .line 130
    invoke-direct/range {v7 .. v20}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V

    .line 132
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 135
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->context:Landroid/content/Context;

    .line 137
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 139
    invoke-direct {v2, v3, v4, v1}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 141
    iput-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->mediaOutputBroadcastDialog:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 144
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 146
    goto :goto_2

    .line 149
    :cond_7
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiverKt;->DEBUG:Z

    .line 150
    if-eqz v0, :cond_8

    .line 152
    const-string v0, "Unable to launch media output broadcast dialog. Package name is empty."

    .line 154
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_8
    :goto_2
    return-void
    .line 159
.end method
