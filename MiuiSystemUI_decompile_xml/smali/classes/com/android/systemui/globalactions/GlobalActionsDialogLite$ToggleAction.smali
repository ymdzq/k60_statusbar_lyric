.class public abstract Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;


# instance fields
.field public final mDisabledIconResid:I

.field public final mDisabledStatusMessageResId:I

.field public final mEnabledIconResId:I

.field public final mEnabledStatusMessageResId:I

.field public mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 5
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 7
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledIconResId:I

    .line 9
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledIconResid:I

    .line 11
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledStatusMessageResId:I

    .line 13
    iput p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledStatusMessageResId:I

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4

    .line 1
    const p2, 0x7f0d00cb    # @layout/global_actions_grid_item_v2 'res/layout/global_actions_grid_item_v2.xml'

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p4, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    move-result-object p3

    .line 13
    const/4 p4, -0x2

    .line 14
    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    const p3, 0x1020006    # @android:id/icon

    .line 20
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p3

    .line 26
    check-cast p3, Landroid/widget/ImageView;

    .line 27
    const p4, 0x102000b    # @android:id/message

    .line 29
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p4

    .line 35
    check-cast p4, Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->isEnabled()Z

    .line 38
    move-result v1

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz p4, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->getMessageResId()I

    .line 45
    move-result v3

    .line 48
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 49
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 52
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    :cond_0
    if-eqz p3, :cond_4

    .line 58
    iget-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 60
    sget-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 62
    if-eq p4, v3, :cond_1

    .line 64
    sget-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 66
    if-ne p4, v3, :cond_2

    .line 68
    :cond_1
    move v0, v2

    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledIconResId:I

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledIconResid:I

    .line 76
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 85
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    return-object p2
    .line 91
.end method

.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 2
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-eqz v0, :cond_2

    .line 16
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledIconResId:I

    .line 18
    goto :goto_2

    .line 20
    :cond_2
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledIconResid:I

    .line 21
    :goto_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method

.method public final getMessage()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMessageResId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 2
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    if-eqz v0, :cond_2

    .line 16
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mEnabledStatusMessageResId:I

    .line 18
    goto :goto_2

    .line 20
    :cond_2
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mDisabledStatusMessageResId:I

    .line 21
    :goto_2
    return p0
    .line 23
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->inTransition()Z

    .line 4
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    return p0
    .line 10
.end method

.method public final onPress()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->inTransition()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-string p0, "GlobalActionsDialogLite"

    .line 10
    const-string/jumbo v0, "shouldn\'t be able to toggle when in transition"

    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 19
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 21
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, v3

    .line 29
    :goto_0
    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    .line 30
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 32
    iget v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;->$r8$classId:I

    .line 34
    packed-switch v5, :pswitch_data_0

    .line 36
    goto :goto_1

    .line 39
    :pswitch_0
    iget-boolean v3, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    .line 40
    if-eqz v3, :cond_2

    .line 42
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    .line 44
    move-result-object v3

    .line 47
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    iput-boolean v2, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIsWaitingForEcmExit:Z

    .line 62
    new-instance v2, Landroid/content/Intent;

    .line 64
    const-string v3, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    .line 66
    const/4 v6, 0x0

    .line 68
    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    const/high16 v3, 0x10000000

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v3, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {v4, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->-$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V

    .line 83
    goto :goto_2

    .line 86
    :goto_1
    if-eqz v0, :cond_3

    .line 87
    iget-object v2, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 91
    goto :goto_2

    .line 94
    :cond_3
    iget-object v2, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    const/4 v3, 0x2

    .line 97
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 98
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 101
    goto :goto_4

    .line 104
    :pswitch_1
    iget-boolean v1, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    .line 105
    if-nez v1, :cond_4

    .line 107
    goto :goto_6

    .line 109
    :cond_4
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->in_ecm_mode()Ljava/util/Optional;

    .line 110
    move-result-object v1

    .line 113
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/Boolean;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    move-result v1

    .line 125
    if-nez v1, :cond_7

    .line 126
    if-eqz v0, :cond_5

    .line 128
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 130
    goto :goto_3

    .line 132
    :cond_5
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->TurningOff:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 133
    :goto_3
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 135
    iput-object v0, v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 137
    goto :goto_6

    .line 139
    :goto_4
    if-eqz v0, :cond_6

    .line 140
    goto :goto_5

    .line 142
    :cond_6
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 143
    :goto_5
    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    .line 145
    :cond_7
    :goto_6
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
    .line 154
.end method
