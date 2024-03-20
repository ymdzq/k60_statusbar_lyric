.class public final Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation$1;->this$0:Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_0

    .line 9
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 11
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mTextColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 14
    invoke-virtual {p0}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 16
    move-result p0

    .line 19
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour1:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mHour2:Landroid/widget/TextView;

    .line 25
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin1:Landroid/widget/TextView;

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mMin2:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mLineView:Landroid/view/View;

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    return-void

    .line 45
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 46
    const-string/jumbo p0, "rotationFraction"

    .line 49
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 56
    move-result p0

    .line 59
    float-to-double p0, p0

    .line 60
    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    .line 61
    cmpl-double p0, p0, v2

    .line 66
    if-lez p0, :cond_0

    .line 68
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeMaskDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 70
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 76
    move-result-object p0

    .line 79
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 80
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mShapeStrokeDrawableParams:Lcom/android/keyguard/clock/animation/utils/VectorDrawableSetParams;

    .line 83
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    invoke-static {p0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 89
    move-result-object p0

    .line 92
    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 93
    :cond_0
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 98
    return-void

    .line 101
    :pswitch_2
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 102
    const-string/jumbo p0, "transX"

    .line 105
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 108
    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 112
    move-result p0

    .line 115
    const-string/jumbo p1, "transY"

    .line 116
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 119
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 123
    move-result p1

    .line 126
    iget-object p2, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 127
    invoke-virtual {p2, p0}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateX(I)V

    .line 129
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 132
    invoke-virtual {p0, p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setDrawableTranslateY(I)V

    .line 134
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 137
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 139
    return-void

    .line 142
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 143
    iget-object p0, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mSmartFrame:Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;

    .line 146
    iget-object p1, v1, Lcom/android/keyguard/clock/animation/smartframe/SmartFrameClockAnimation;->mFillColorParams:Lcom/android/keyguard/clock/animation/utils/ColorParams;

    .line 148
    invoke-virtual {p1}, Lcom/android/keyguard/clock/animation/utils/ColorParams;->getCurrentColor()I

    .line 150
    move-result p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/miui/keyguardtemplate/smartframe/SmartFrameView;->setFillColor(I)V

    .line 154
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 158
.end method
