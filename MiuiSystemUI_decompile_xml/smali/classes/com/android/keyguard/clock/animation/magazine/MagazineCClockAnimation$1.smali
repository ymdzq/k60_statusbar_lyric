.class public final Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

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
    iget v0, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;->$r8$classId:I

    .line 2
    const/16 v1, 0xc8

    .line 4
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0xff

    .line 7
    iget-object v4, p0, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 15
    const-string p0, "alpha"

    .line 18
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 24
    move-result p0

    .line 27
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 28
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getEndColor()I

    .line 30
    move-result p1

    .line 33
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p0

    .line 37
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result p0

    .line 41
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 42
    move-result p2

    .line 45
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 46
    move-result v0

    .line 49
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 50
    move-result p1

    .line 53
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 54
    move-result p0

    .line 57
    sget-object p1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 58
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullHour:Landroid/view/View;

    .line 60
    iget-object p2, v4, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 62
    iget-boolean v0, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 64
    iget-object v2, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 66
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 68
    move-result v3

    .line 71
    invoke-static {v3, p1, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 72
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullHour:Landroid/view/View;

    .line 75
    invoke-static {p1, p0, v1}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 77
    iget-object p1, p2, Lcom/miui/clock/MiuiClockController;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 80
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 82
    move-result p1

    .line 85
    const/4 v0, 0x5

    .line 86
    if-ne p1, v0, :cond_0

    .line 87
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 89
    iget-boolean v0, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 91
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 93
    move-result v3

    .line 96
    iget-object v5, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 97
    invoke-virtual {v5}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 99
    move-result v5

    .line 102
    invoke-static {v3, v5, p1, v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 103
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullDate:Landroid/view/View;

    .line 106
    invoke-static {p1, p0, v1}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 108
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 111
    iget-boolean p2, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 113
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 115
    move-result v0

    .line 118
    iget-object v2, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 119
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 121
    move-result v2

    .line 124
    invoke-static {v0, v2, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 125
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mFullWeek:Landroid/view/View;

    .line 128
    invoke-static {p1, p0, v1}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 130
    :cond_0
    return-void

    .line 133
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 134
    const-string p0, "minAlpha"

    .line 137
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 139
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 143
    move-result p0

    .line 146
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 147
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getEndColor()I

    .line 149
    move-result p1

    .line 152
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 153
    move-result p0

    .line 156
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    .line 157
    move-result p0

    .line 160
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 161
    move-result p2

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 165
    move-result v0

    .line 168
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 169
    move-result p1

    .line 172
    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 173
    move-result p0

    .line 176
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullMinute:Landroid/view/View;

    .line 177
    iget-object p2, v4, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 179
    iget-boolean p2, p2, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 181
    iget-object v0, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 183
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 185
    move-result v0

    .line 188
    iget-object v2, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineBaseClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 189
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getSecondaryColor()I

    .line 191
    move-result v2

    .line 194
    invoke-static {v0, v2, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 195
    iget-object p1, v4, Lcom/android/keyguard/clock/animation/magazine/MagazineCClockAnimation;->mFullMinute:Landroid/view/View;

    .line 198
    invoke-static {p1, p0, v1}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 200
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 204
.end method
