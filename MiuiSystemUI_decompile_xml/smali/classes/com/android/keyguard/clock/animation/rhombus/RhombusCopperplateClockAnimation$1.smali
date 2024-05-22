.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

.field public final synthetic val$clockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$1;->val$clockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    const-string p1, "alpha"

    .line 5
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 11
    move-result p1

    .line 14
    const/4 p2, 0x0

    .line 15
    cmpl-float p1, p1, p2

    .line 16
    if-nez p1, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

    .line 20
    iget-boolean v0, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    const-string/jumbo v0, "rhombus"

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->switchTemplate(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->updateView()V

    .line 32
    iget-object v0, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 35
    filled-new-array {v0}, [Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 41
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 45
    move-result-object v0

    .line 48
    iget-object v1, p1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 49
    iget-object v2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 51
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 57
    iget-object v0, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullDate:Landroid/view/View;

    .line 60
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    iget-object v0, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullWeek:Landroid/view/View;

    .line 65
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 67
    iget-object v0, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMagazineInfo:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 72
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 75
    const v0, 0x3f19999a    # 0.6f

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 80
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 85
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mFullTime:Landroid/view/View;

    .line 88
    const/high16 v0, -0x3bdb0000    # -660.0f

    .line 90
    iget v1, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mDensity:F

    .line 92
    mul-float/2addr v1, v0

    .line 94
    const v0, 0x3e4ccccd    # 0.2f

    .line 95
    mul-float/2addr v1, v0

    .line 98
    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mHour1:Landroid/view/View;

    .line 102
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 104
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object p2

    .line 109
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$1;->val$clockStyleInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 110
    iget v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 112
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 114
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mMin1:Landroid/view/View;

    .line 117
    check-cast p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 119
    invoke-virtual {p2}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 121
    move-result-object p2

    .line 124
    iget v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 125
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 127
    iget-object p2, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 132
    move-result-object p2

    .line 135
    iget-object v0, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon1:Landroid/view/View;

    .line 136
    iget v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 138
    invoke-static {p2, v1}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 140
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object p1, p1, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mColon2:Landroid/view/View;

    .line 147
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 149
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 151
    move-result-object p2

    .line 154
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_0
    return-void
    .line 161
.end method
