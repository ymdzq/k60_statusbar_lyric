.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

.field public final synthetic val$lastView:Z

.field public final synthetic val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

.field public final synthetic val$toAod:Z

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;Landroid/view/View;Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$view:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 6
    iput-boolean p4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$lastView:Z

    .line 8
    iput-boolean p5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$toAod:Z

    .line 10
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    const-string p1, "fraction"

    .line 5
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 11
    move-result p1

    .line 14
    iget-object p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$view:Landroid/view/View;

    .line 15
    instance-of v0, p2, Lcom/miui/clock/MiuiClockNumberView;

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 19
    iget-object v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$params:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 21
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    move-object v0, p2

    .line 26
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 27
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 29
    move-result-object v0

    .line 32
    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    move-object v0, p2

    .line 37
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 38
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->getVectorDrawable()Landroid/graphics/drawable/Drawable;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, " doClockNumSvgAnimation view: "

    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v5, " drawable: "

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v5, " fraction: "

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    const-string v5, " params.getDrawable(): "

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->getDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 83
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v4

    .line 93
    const-string v5, "ClockBaseAnimation"

    .line 94
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->getDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 99
    move-result-object v4

    .line 102
    if-eq v0, v4, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->initDrawable()V

    .line 105
    invoke-virtual {v2, p1}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->setFraction(F)V

    .line 108
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 112
    move-result-object v0

    .line 115
    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 116
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 120
    move-result-object v0

    .line 123
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 124
    goto :goto_0

    .line 126
    :cond_1
    move-object v0, v3

    .line 127
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 128
    cmpl-float v4, p1, v4

    .line 129
    if-nez v4, :cond_3

    .line 131
    invoke-virtual {v2}, Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;->toFirstFrame()V

    .line 133
    :cond_3
    iget-boolean v2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$lastView:Z

    .line 136
    if-eqz v2, :cond_5

    .line 138
    iget-boolean p0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$1;->val$toAod:Z

    .line 140
    if-nez p0, :cond_4

    .line 142
    const v2, 0x3e99999a    # 0.3f

    .line 144
    cmpg-float v2, p1, v2

    .line 147
    if-gez v2, :cond_4

    .line 149
    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->useBlur(Z)Z

    .line 152
    move-result v4

    .line 155
    if-eqz v4, :cond_4

    .line 156
    iget-boolean p0, v1, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mHasNotification:Z

    .line 158
    const/4 p1, 0x0

    .line 160
    invoke-virtual {v1, p1, p0, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->doBlendAnimation(ZZZ)V

    .line 161
    goto :goto_1

    .line 164
    :cond_4
    if-eqz p0, :cond_5

    .line 165
    const p0, 0x3f666666    # 0.9f

    .line 167
    cmpl-float p0, p1, p0

    .line 170
    if-lez p0, :cond_5

    .line 172
    invoke-virtual {v1}, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->clearBlurAndBlend()V

    .line 174
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 177
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->invalidateSelf()V

    .line 182
    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 185
    return-void
    .line 188
.end method
