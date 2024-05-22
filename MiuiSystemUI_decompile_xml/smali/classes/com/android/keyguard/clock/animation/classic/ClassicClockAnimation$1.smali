.class public final Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

.field public final synthetic val$isAutoSecondaryColor:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;->val$isAutoSecondaryColor:Z

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    const-string p1, "alpha"

    .line 5
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 11
    move-result p1

    .line 14
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;

    .line 15
    iget-object v0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 17
    invoke-virtual {v0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getEndColor()I

    .line 19
    move-result v0

    .line 22
    const/16 v1, 0xff

    .line 23
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p1

    .line 33
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 34
    move-result v1

    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 38
    move-result v2

    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 42
    move-result v0

    .line 45
    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 46
    move-result p1

    .line 49
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 50
    iget-object v0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTextArea:Landroid/view/View;

    .line 52
    iget-object v1, p2, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 54
    iget-boolean v2, v1, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 56
    iget-object v3, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mBlendColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 58
    invoke-virtual {v3}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 60
    move-result v4

    .line 63
    invoke-static {v4, v0, v2}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 64
    iget-object v0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTextArea:Landroid/view/View;

    .line 67
    const/16 v2, 0xc8

    .line 69
    invoke-static {v0, p1, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 71
    iget-object v0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTimeArea:Landroid/view/View;

    .line 74
    iget-boolean v4, v1, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 76
    invoke-virtual {v3}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 78
    move-result v5

    .line 81
    iget-object v6, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mClockStyleInfo:Lcom/miui/clock/module/ClockStyleInfo;

    .line 82
    invoke-virtual {v6}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 84
    move-result v6

    .line 87
    invoke-static {v5, v6, v0, v4}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 88
    iget-object v0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mTimeArea:Landroid/view/View;

    .line 91
    invoke-static {v0, p1, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 93
    iget-boolean p0, p0, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation$1;->val$isAutoSecondaryColor:Z

    .line 96
    if-eqz p0, :cond_0

    .line 98
    iget-object p0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 100
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 102
    invoke-virtual {v3}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 104
    move-result v4

    .line 107
    invoke-static {v4, p0, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 108
    iget-object p0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea1:Landroid/view/View;

    .line 111
    invoke-static {p0, p1, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 113
    iget-object p0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 116
    iget-boolean v0, v1, Lcom/miui/clock/MiuiClockController;->mTextDark:Z

    .line 118
    invoke-virtual {v3}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getStartColor()I

    .line 120
    move-result v1

    .line 123
    invoke-static {v1, p0, v0}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->setMemberBlendColor(ILandroid/view/View;Z)V

    .line 124
    iget-object p0, p2, Lcom/android/keyguard/clock/animation/classic/ClassicClockAnimation;->mContentArea2:Landroid/view/View;

    .line 127
    invoke-static {p0, p1, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->addMiBackgroundBlendColor(Landroid/view/View;II)V

    .line 129
    :cond_0
    return-void
    .line 132
.end method
