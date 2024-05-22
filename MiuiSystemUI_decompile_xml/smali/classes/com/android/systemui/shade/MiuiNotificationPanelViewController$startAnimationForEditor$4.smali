.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $finalScaleX:F

.field public final synthetic $finalScaleY:F

.field public final synthetic $finalTranslationY:F

.field public final synthetic $screenHeight:I

.field public final synthetic $screenWidth:I

.field public final synthetic $state:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public final synthetic $updateOcclude:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;Lcom/android/systemui/shade/MiuiNotificationPanelViewController;IZIFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$state:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    iput p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenWidth:I

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$updateOcclude:Z

    .line 8
    iput p5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenHeight:I

    .line 10
    iput p6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalScaleY:F

    .line 12
    iput p7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalScaleX:F

    .line 14
    iput p8, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalTranslationY:F

    .line 16
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final completedScaleAnim()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$state:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result v1

    .line 7
    sget-object v2, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x2

    .line 11
    iget-object v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 12
    if-eq v1, v4, :cond_3

    .line 14
    const/4 v6, 0x3

    .line 16
    if-eq v1, v6, :cond_2

    .line 17
    const/4 v4, 0x5

    .line 19
    if-eq v1, v4, :cond_0

    .line 20
    const/4 v4, 0x6

    .line 22
    if-eq v1, v4, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 26
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->clearViewRootImplAddSurfaceControl(Lcom/android/systemui/shade/NotificationPanelView;)V

    .line 28
    iget-object v1, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 31
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseCreateSurfaceControl()V

    .line 33
    if-ne v0, v2, :cond_1

    .line 36
    iget-object v0, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 38
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setExitFromBouncerAnimIsRunning(Z)V

    .line 41
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;

    .line 44
    const/4 v1, 0x4

    .line 46
    invoke-direct {v0, v5, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mHidePanelRunnable$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    .line 47
    const-wide/16 v6, 0xc8

    .line 50
    iget-object v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 52
    invoke-virtual {v1, v0, v6, v7}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_1
    iget-object v0, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    new-instance v1, Landroid/os/Bundle;

    .line 62
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v4, "action_finish_editor"

    .line 67
    invoke-virtual {v0, v1, v4}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 73
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalScaleY:F

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 77
    iget-object v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 80
    iget v6, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalScaleX:F

    .line 82
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 84
    iget v7, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$finalTranslationY:F

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 89
    iget v8, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenWidth:I

    .line 92
    int-to-float v8, v8

    .line 94
    mul-float/2addr v6, v8

    .line 95
    int-to-float v8, v3

    .line 96
    sub-float/2addr v8, v1

    .line 97
    int-to-float v1, v4

    .line 98
    div-float/2addr v8, v1

    .line 99
    iget v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenHeight:I

    .line 100
    int-to-float v1, v1

    .line 102
    mul-float/2addr v8, v1

    .line 103
    add-float/2addr v8, v7

    .line 104
    iget-object v1, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 105
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardEditorHelper;->getEditorSurfaceControl()Landroid/view/SurfaceControl;

    .line 107
    move-result-object v1

    .line 110
    invoke-static {v0, v6, v8, v1}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->animKeyguardEditor(Lcom/android/systemui/shade/NotificationPanelView;FFLandroid/view/SurfaceControl;)V

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    const/4 v0, 0x0

    .line 115
    invoke-virtual {v5, v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setViewRadius(F)V

    .line 116
    iget-object v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 119
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->clearViewRootImplAddSurfaceControl(Lcom/android/systemui/shade/NotificationPanelView;)V

    .line 121
    iget-object v0, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 124
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 126
    iget-object v0, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 129
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseCreateSurfaceControl()V

    .line 131
    :goto_0
    iget-object v0, v5, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 134
    iget-object v1, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 136
    sget-object v4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 138
    if-ne v1, v4, :cond_4

    .line 140
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWNEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 142
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 144
    goto :goto_1

    .line 147
    :cond_4
    if-eq v1, v2, :cond_5

    .line 148
    sget-object v2, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 150
    if-ne v1, v2, :cond_6

    .line 152
    :cond_5
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 156
    :cond_6
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$updateOcclude:Z

    .line 159
    if-eqz p0, :cond_7

    .line 161
    invoke-virtual {v5, v3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateVisibility(Z)V

    .line 163
    :cond_7
    return-void
    .line 166
.end method

.method public final onBegin(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 5
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$state:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 10
    if-ne p0, p1, :cond_0

    .line 12
    iget-object p1, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->setExitFromBouncerAnimIsRunning(Z)V

    .line 16
    :cond_0
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 19
    if-ne p0, p1, :cond_1

    .line 21
    iget-object p0, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance p1, Landroid/os/Bundle;

    .line 28
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string v2, "action_start_exit_transformer_animation"

    .line 33
    invoke-virtual {p0, p1, v2}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 35
    new-instance p0, Landroid/animation/ValueAnimator;

    .line 38
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 40
    const/4 p1, 0x2

    .line 43
    new-array p1, p1, [F

    .line 44
    fill-array-data p1, :array_0

    .line 46
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 49
    const-wide/16 v2, 0x12c

    .line 52
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    .line 59
    invoke-direct {p1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 61
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 64
    new-instance p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;

    .line 67
    const/4 v2, 0x5

    .line 69
    invoke-direct {p1, v2, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$changeExpansion$1;-><init>(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 79
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 81
    if-eqz p0, :cond_2

    .line 83
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 91
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 93
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 96
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 99
    :cond_2
    return-void

    .line 102
    nop

    .line 103
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 104
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->completedScaleAnim()V

    .line 2
    return-void
    .line 5
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->completedScaleAnim()V

    .line 2
    return-void
    .line 5
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 5
    iget-object p2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 7
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenWidth:I

    .line 9
    if-eqz p2, :cond_0

    .line 11
    sget-object v1, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->WIDTH:Lmiuix/animation/property/ValueProperty;

    .line 13
    invoke-virtual {p2, v1}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 15
    move-result p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    int-to-float p2, v0

    .line 20
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 21
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    sget-object v3, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->TRANSLATION:Lmiuix/animation/property/ValueProperty;

    .line 26
    invoke-virtual {v1, v3}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 28
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_1
    int-to-float v0, v0

    .line 34
    div-float v3, p2, v0

    .line 35
    iget-object v4, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 37
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 39
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 42
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 45
    iget-boolean v5, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$updateOcclude:Z

    .line 48
    if-eqz v5, :cond_3

    .line 50
    iget-object v5, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 52
    if-eqz v5, :cond_2

    .line 54
    sget-object v2, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->ALPHA:Lmiuix/animation/property/ValueProperty;

    .line 56
    invoke-virtual {v5, v2}, Lmiuix/animation/ValueTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 58
    move-result v2

    .line 61
    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 62
    :cond_3
    const/4 v2, 0x1

    .line 65
    int-to-float v5, v2

    .line 66
    sub-float/2addr v5, v3

    .line 67
    const/4 v3, 0x2

    .line 68
    int-to-float v3, v3

    .line 69
    div-float/2addr v5, v3

    .line 70
    iget v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$screenHeight:I

    .line 71
    int-to-float v3, v3

    .line 73
    mul-float/2addr v5, v3

    .line 74
    add-float/2addr v5, v1

    .line 75
    iget-object v1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 76
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardEditorHelper;->getEditorSurfaceControl()Landroid/view/SurfaceControl;

    .line 78
    move-result-object v1

    .line 81
    invoke-static {v4, p2, v5, v1}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->animKeyguardEditor(Lcom/android/systemui/shade/NotificationPanelView;FFLandroid/view/SurfaceControl;)V

    .line 82
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 85
    iget-object v3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->$state:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 87
    if-ne v3, v1, :cond_7

    .line 89
    float-to-double v3, p2

    .line 91
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 92
    add-double/2addr v3, v5

    .line 94
    float-to-double v0, v0

    .line 95
    cmpl-double p2, v3, v0

    .line 96
    if-lez p2, :cond_7

    .line 98
    iget-object p2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->animTargetForEditor:Lmiuix/animation/ValueTarget;

    .line 100
    if-eqz p2, :cond_4

    .line 102
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 104
    move-result-object p2

    .line 107
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 108
    move-result-object p2

    .line 111
    invoke-interface {p2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 112
    :cond_4
    iget-object p2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->alphaAnimForEditor:Landroid/animation/ValueAnimator;

    .line 115
    if-eqz p2, :cond_5

    .line 117
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 119
    :cond_5
    iget-object p2, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->radiusAnimForEditor:Landroid/animation/ValueAnimator;

    .line 122
    if-eqz p2, :cond_6

    .line 124
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 126
    :cond_6
    invoke-static {p1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$resetAllViewsStateOnEditorStateChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startAnimationForEditor$4;->completedScaleAnim()V

    .line 132
    :cond_7
    return-void
    .line 135
.end method
