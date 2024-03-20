.class public final Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 10
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 13
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 15
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 17
    move-result p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 21
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 24
    check-cast p0, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 26
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 30
    return-void

    .line 33
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 34
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 37
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 39
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 41
    move-result p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 45
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 48
    check-cast p0, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 50
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 52
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 54
    return-void

    .line 57
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 58
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 61
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 63
    move-result-object p0

    .line 66
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 67
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 69
    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 73
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 76
    check-cast p0, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 78
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 80
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 82
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 86
    return-void

    .line 89
    :pswitch_3
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 90
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 93
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 95
    move-result-object p0

    .line 98
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 99
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 101
    move-result p1

    .line 104
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 105
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mContainer:Landroid/view/View;

    .line 108
    check-cast p0, Lcom/miui/clock/classic/ClassicPlusClockView;

    .line 110
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 112
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockController;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 114
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 118
    return-void

    .line 121
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 122
    const-string p0, "alpha"

    .line 125
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 127
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 131
    move-result p0

    .line 134
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 135
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getEndColor()I

    .line 137
    move-result p1

    .line 140
    const/16 p2, 0xff

    .line 141
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 143
    move-result p0

    .line 146
    const/4 p2, 0x0

    .line 147
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 148
    move-result p0

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 152
    move-result p2

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 156
    move-result v0

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 160
    move-result p1

    .line 163
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 164
    move-result p0

    .line 167
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 168
    iget-object p2, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 170
    iget-boolean v0, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 172
    iget-object v2, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 174
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 176
    move-result v3

    .line 179
    iget-object v4, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 180
    invoke-virtual {v4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 182
    move-result v4

    .line 185
    invoke-static {v3, v4, p1, v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 186
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView:Landroid/view/View;

    .line 189
    const/16 v0, 0xc8

    .line 191
    invoke-static {p1, p0, v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 193
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 196
    iget-boolean v3, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 198
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 200
    move-result v4

    .line 203
    iget-object v5, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 204
    invoke-virtual {v5}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 206
    move-result v5

    .line 209
    invoke-static {v4, v5, p1, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 210
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTimeView2:Landroid/view/View;

    .line 213
    invoke-static {p1, p0, v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 215
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTextArea:Landroid/view/View;

    .line 218
    iget-boolean p2, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 220
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 222
    move-result v2

    .line 225
    iget-object v3, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 226
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 228
    move-result v3

    .line 231
    invoke-static {v2, v3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 232
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation;->mTextArea:Landroid/view/View;

    .line 235
    invoke-static {p1, p0, v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 237
    return-void

    .line 240
    nop

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 242
.end method
