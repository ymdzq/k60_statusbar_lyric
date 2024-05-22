.class public final Lcom/android/systemui/volume/VolumeDialogImpl$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 9
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 11
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mCsdDialog:Lcom/android/systemui/volume/CsdWarningDialog;

    .line 14
    if-nez p0, :cond_0

    .line 16
    monitor-exit p1

    .line 18
    goto/16 :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 21
    monitor-exit p1

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 29
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 33
    goto :goto_1

    .line 36
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 39
    goto :goto_1

    .line 42
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 43
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 45
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 47
    if-eqz p1, :cond_1

    .line 49
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mRows:Ljava/util/List;

    .line 54
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object p0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 72
    iget v2, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    .line 74
    if-ne v2, v0, :cond_2

    .line 76
    iput-boolean p1, v1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    .line 78
    goto :goto_1

    .line 80
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 81
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 84
    goto :goto_1

    .line 87
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 88
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 90
    check-cast p1, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->recheckH(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    .line 94
    goto :goto_1

    .line 97
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 98
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    .line 102
    goto :goto_1

    .line 105
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 108
    iget-object v1, v0, Lcom/android/systemui/volume/VolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 110
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 112
    move-result v1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 116
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 118
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 120
    move-result p0

    .line 123
    invoke-static {v0, p1, v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-$$Nest$mshowH(Lcom/android/systemui/volume/VolumeDialogImpl;IZI)V

    .line 124
    :cond_3
    :goto_1
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 128
.end method
