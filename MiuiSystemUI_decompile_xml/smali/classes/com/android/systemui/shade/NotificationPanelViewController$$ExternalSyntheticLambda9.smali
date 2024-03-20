.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/TransitionState;->RUNNING:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 4
    const v2, 0x7f0704b7    # @dimen/keyguard_unfold_translation_x '16.0dp'

    .line 6
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    goto/16 :goto_5

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 18
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->setup(Landroid/view/ViewGroup;)V

    .line 24
    return-void

    .line 27
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 30
    check-cast p1, Lcom/android/keyguard/KeyguardUnfoldTransition;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 34
    iget-object v0, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 42
    move-result v0

    .line 45
    int-to-float v0, v0

    .line 46
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    .line 47
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    .line 53
    iput-object p0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    .line 55
    iput v0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    .line 57
    iget-object p0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 59
    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 61
    return-void

    .line 64
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 65
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 67
    check-cast p1, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;->setup(Landroid/view/ViewGroup;)V

    .line 73
    return-void

    .line 76
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 77
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 79
    check-cast p1, Lcom/android/keyguard/KeyguardUnfoldTransition;

    .line 81
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 83
    iget-object v0, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 91
    move-result v0

    .line 94
    int-to-float v0, v0

    .line 95
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUnfoldTransition;->translateAnimator$delegate:Lkotlin/Lazy;

    .line 96
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;

    .line 102
    iput-object p0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->rootView:Landroid/view/ViewGroup;

    .line 104
    iput v0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->translationMax:F

    .line 106
    iget-object p0, p1, Lcom/android/systemui/shared/animation/UnfoldConstantTranslateAnimator;->progressProvider:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 108
    invoke-interface {p0, p1}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 110
    return-void

    .line 113
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 114
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 116
    check-cast p1, Ljava/lang/Boolean;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    move-result p1

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsAnyMultiShadeExpanded:Z

    .line 127
    return-void

    .line 129
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 130
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 132
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 139
    if-ne p1, v1, :cond_0

    .line 141
    goto :goto_0

    .line 143
    :cond_0
    move v3, v4

    .line 144
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 145
    return-void

    .line 147
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 148
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 150
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 157
    if-ne p1, v1, :cond_1

    .line 159
    goto :goto_1

    .line 161
    :cond_1
    move v3, v4

    .line 162
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 163
    return-void

    .line 165
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 166
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 168
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 175
    if-ne p1, v1, :cond_2

    .line 177
    goto :goto_2

    .line 179
    :cond_2
    move v3, v4

    .line 180
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 181
    return-void

    .line 183
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 184
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 186
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 193
    if-ne p1, v1, :cond_3

    .line 195
    goto :goto_3

    .line 197
    :cond_3
    move v3, v4

    .line 198
    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 199
    return-void

    .line 201
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 202
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 204
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    .line 211
    if-ne p1, v1, :cond_4

    .line 213
    goto :goto_4

    .line 215
    :cond_4
    move v3, v4

    .line 216
    :goto_4
    iput-boolean v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsOcclusionTransitionRunning:Z

    .line 217
    return-void

    .line 219
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 220
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 222
    check-cast p1, Landroid/util/Property;

    .line 224
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    .line 226
    if-eqz p0, :cond_5

    .line 228
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 230
    :cond_5
    return-void

    .line 233
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    .line 234
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 236
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 242
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 246
.end method
