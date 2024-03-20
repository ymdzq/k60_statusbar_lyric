.class public final synthetic Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bluetooth/BroadcastDialog$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const v1, 0x7f1306ed    # @string/media_output_broadcast_start_failed 'Can’t broadcast'

    .line 4
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialog;->refreshSwitchBroadcastButton()V

    .line 26
    return-void

    .line 29
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mSwitchBroadcast:Landroid/widget/Button;

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialog;->refreshSwitchBroadcastButton()V

    .line 44
    return-void

    .line 47
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 50
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 53
    return-void

    .line 55
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialog;->handleLeBroadcastStopped()V

    .line 60
    return-void

    .line 63
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/bluetooth/BroadcastDialog$1;

    .line 64
    iget-object p0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog$1;->this$0:Lcom/android/systemui/bluetooth/BroadcastDialog;

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 68
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 72
    new-instance v1, Landroid/content/Intent;

    .line 74
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    iget-object v3, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    move-result-object v1

    .line 88
    const-string v3, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    move-result-object v1

    .line 94
    const-string v3, "package_name"

    .line 95
    iget-object v4, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mOutputPackageName:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 106
    iput-boolean v2, p0, Lcom/android/systemui/bluetooth/BroadcastDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 109
    :cond_0
    return-void

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 112
.end method
