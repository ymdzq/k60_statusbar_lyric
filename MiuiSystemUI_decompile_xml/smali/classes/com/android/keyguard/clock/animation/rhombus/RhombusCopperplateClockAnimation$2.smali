.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

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
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 2
    iget v1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$2;->$r8$classId:I

    .line 4
    const-string/jumbo v2, "rhombus_notification"

    .line 6
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation$2;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;

    .line 9
    const/4 v4, 0x0

    .line 11
    const-string v5, "alpha"

    .line 12
    packed-switch v1, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 18
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 25
    move-result p0

    .line 28
    cmpl-float p0, p0, v4

    .line 29
    if-nez p0, :cond_0

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->switchTemplate(Ljava/lang/String;)V

    .line 33
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 38
    move-result-object p0

    .line 41
    iput-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 42
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 44
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 47
    filled-new-array {p0}, [Landroid/view/View;

    .line 49
    move-result-object p0

    .line 52
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 53
    move-result-object p0

    .line 56
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 57
    move-result-object p0

    .line 60
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 61
    iget-object p2, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 63
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 68
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 69
    :cond_0
    return-void

    .line 72
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 73
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 80
    move-result p0

    .line 83
    cmpl-float p0, p0, v4

    .line 84
    if-nez p0, :cond_1

    .line 86
    invoke-virtual {v3, v2}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->switchTemplate(Ljava/lang/String;)V

    .line 88
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 93
    move-result-object p0

    .line 96
    iput-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 97
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 99
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 102
    filled-new-array {p0}, [Landroid/view/View;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 108
    move-result-object p0

    .line 111
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 112
    move-result-object p0

    .line 115
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 116
    iget-object p2, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 118
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 123
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 124
    :cond_1
    return-void

    .line 127
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 128
    invoke-static {p2, v5}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 131
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 135
    move-result p0

    .line 138
    cmpl-float p0, p0, v4

    .line 139
    if-nez p0, :cond_2

    .line 141
    const-string/jumbo p0, "rhombus"

    .line 143
    invoke-virtual {v3, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->switchTemplate(Ljava/lang/String;)V

    .line 146
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mMiuiClockController:Lcom/miui/clock/MiuiClockController;

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiClockController;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 151
    move-result-object p0

    .line 154
    iput-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 155
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 157
    iget-object p0, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation;->mAllView:Landroid/view/View;

    .line 160
    filled-new-array {p0}, [Landroid/view/View;

    .line 162
    move-result-object p0

    .line 165
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 166
    move-result-object p0

    .line 169
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 170
    move-result-object p0

    .line 173
    iget-object p1, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusCopperplateClockAnimation;->showEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 174
    iget-object p2, v3, Lcom/android/keyguard/clock/animation/ClockBaseAnimation;->mShowState:Lmiuix/animation/controller/AnimState;

    .line 176
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 181
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 182
    :cond_2
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 186
.end method
