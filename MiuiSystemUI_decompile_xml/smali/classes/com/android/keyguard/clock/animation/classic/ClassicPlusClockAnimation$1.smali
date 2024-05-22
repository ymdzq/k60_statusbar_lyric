.class public final Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

.field public final synthetic val$bean:Lcom/miui/clock/module/ClockBean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;Lcom/miui/clock/module/ClockBean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->val$bean:Lcom/miui/clock/module/ClockBean;

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->val$bean:Lcom/miui/clock/module/ClockBean;

    .line 6
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 11
    goto/16 :goto_0

    .line 14
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 16
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 19
    invoke-virtual {p0, v3, v4, v4}, Lcom/miui/clock/MiuiClockController;->setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V

    .line 21
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 24
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 26
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 29
    filled-new-array {p0}, [Landroid/view/View;

    .line 31
    move-result-object p0

    .line 34
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 35
    move-result-object p0

    .line 38
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 39
    move-result-object p0

    .line 42
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 43
    iget-object v0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 45
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 50
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 51
    return-void

    .line 54
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 55
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 58
    invoke-virtual {p0, v3, v4, v4}, Lcom/miui/clock/MiuiClockController;->setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V

    .line 60
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 63
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 65
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 68
    filled-new-array {p0}, [Landroid/view/View;

    .line 70
    move-result-object p0

    .line 73
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 74
    move-result-object p0

    .line 77
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 78
    move-result-object p0

    .line 81
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 82
    iget-object v0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 84
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 90
    invoke-virtual {v5, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 93
    move-result p0

    .line 96
    if-nez p0, :cond_0

    .line 97
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 99
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 101
    move-result-object p1

    .line 104
    iget v0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mLockColor:I

    .line 105
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 107
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 110
    check-cast p1, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 112
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 114
    move-result-object p0

    .line 117
    invoke-virtual {p1, p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 118
    :cond_0
    return-void

    .line 121
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 122
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 125
    invoke-virtual {p0, v3, v4, v4}, Lcom/miui/clock/MiuiClockController;->setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V

    .line 127
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 130
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 132
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 135
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 137
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 140
    filled-new-array {p0}, [Landroid/view/View;

    .line 142
    move-result-object p0

    .line 145
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 146
    move-result-object p0

    .line 149
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 150
    move-result-object p0

    .line 153
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 154
    iget-object v0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 156
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 161
    invoke-interface {p0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 162
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 165
    filled-new-array {p0}, [Landroid/view/View;

    .line 167
    move-result-object p0

    .line 170
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 171
    move-result-object p0

    .line 174
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 175
    move-result-object p0

    .line 178
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 179
    move-result-object p1

    .line 182
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 183
    invoke-virtual {v5, v1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 186
    move-result p0

    .line 189
    if-nez p0, :cond_1

    .line 190
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 192
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 194
    move-result-object p1

    .line 197
    iget v0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mAodColor:I

    .line 198
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 200
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 203
    check-cast p1, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 205
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 207
    move-result-object p0

    .line 210
    invoke-virtual {p1, p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 211
    :cond_1
    return-void

    .line 214
    :goto_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 215
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 218
    invoke-virtual {p0, v3, v4, v4}, Lcom/miui/clock/MiuiClockController;->setClockBean(Lcom/miui/clock/module/ClockBean;ZZ)V

    .line 220
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 223
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 225
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 228
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 230
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 233
    filled-new-array {p0}, [Landroid/view/View;

    .line 235
    move-result-object p0

    .line 238
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 239
    move-result-object p0

    .line 242
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 243
    move-result-object p0

    .line 246
    iget-object p1, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 247
    iget-object v0, v5, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 249
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 254
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 255
    iget-object p0, v5, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 258
    filled-new-array {p0}, [Landroid/view/View;

    .line 260
    move-result-object p0

    .line 263
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 264
    move-result-object p0

    .line 267
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 268
    move-result-object p0

    .line 271
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 272
    move-result-object p1

    .line 275
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 276
    return-void

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 280
.end method
