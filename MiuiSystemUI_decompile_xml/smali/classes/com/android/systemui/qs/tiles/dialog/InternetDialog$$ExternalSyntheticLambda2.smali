.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 17
    return-void

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 23
    return-void

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 29
    return-void

    .line 32
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 35
    return-void

    .line 38
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 41
    return-void

    .line 44
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 45
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mDefaultDataSubId:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSignalStrengthDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 49
    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v3, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;

    .line 55
    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda9;-><init>(Landroid/view/KeyEvent$Callback;Landroid/graphics/drawable/Drawable;I)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void

    .line 63
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 66
    return-void

    .line 69
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 72
    return-void

    .line 75
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 78
    return-void

    .line 81
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 82
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 84
    return-void

    .line 87
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mIsSearchingHidden:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->mInternetDialogSubTitle:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->getSubtitleText()Ljava/lang/CharSequence;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 101
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 102
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->setProgressBarVisible(Z)V

    .line 105
    return-void

    .line 108
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    .line 111
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 116
.end method
