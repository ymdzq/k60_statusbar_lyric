.class public final synthetic Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_1

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnStashedState()V

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 15
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 17
    return-void

    .line 20
    :pswitch_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    .line 23
    return-void

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 29
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->isStashed()Z

    .line 31
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->animateToUnStashedState()V

    .line 37
    sget-object v2, Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_STASH_UNSTASHED:Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipUiEventLogger:Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/PipUiEventLogger;->log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 47
    goto :goto_0

    .line 50
    :cond_0
    const/4 v4, 0x1

    .line 51
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 52
    move-result-object v5

    .line 55
    const/4 v6, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 57
    move-result v8

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 61
    if-eqz v8, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    .line 65
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 71
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mMenuContainer:Landroid/view/View;

    .line 73
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 76
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mSettingsButton:Landroid/view/View;

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 81
    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mDismissButton:Landroid/view/View;

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 86
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipMenuView;->mEnterSplitButton:Landroid/view/View;

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->checkPipMenuState()Z

    .line 94
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    const/high16 v0, -0x40800000    # -1.0f

    .line 101
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v1, v1, v5, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->movePipMenu(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 104
    invoke-virtual {p0, v5}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->updateMenuBounds(Landroid/graphics/Rect;)V

    .line 107
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 110
    move v7, v8

    .line 112
    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/pip/phone/PipMenuView;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    .line 113
    :goto_0
    return-void

    .line 116
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 117
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object v0

    .line 124
    const v2, 0x7f050045    # @bool/config_pipEnableResizeForMenu 'true'

    .line 125
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 128
    move-result v0

    .line 131
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableResize:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->reloadResources()V

    .line 134
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 137
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 139
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 141
    iget-object v2, v2, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 143
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 145
    invoke-static {v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 147
    move-result-object v2

    .line 150
    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mTemporaryBoundsPhysicsAnimator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 151
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 153
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 157
    move-result-object v2

    .line 160
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMaxSize:Landroid/graphics/Point;

    .line 161
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    .line 166
    const-string/jumbo v2, "systemui"

    .line 169
    const-string v3, "pip_pinch_resize"

    .line 172
    const/4 v4, 0x1

    .line 174
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 175
    move-result v3

    .line 178
    iput-boolean v3, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 179
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;

    .line 181
    invoke-direct {v3, v0}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$1;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V

    .line 183
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 186
    invoke-static {v2, v0, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    .line 191
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->init()V

    .line 193
    const-string v0, "pip_stashing"

    .line 196
    invoke-static {v2, v0, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 198
    move-result v0

    .line 201
    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mEnableStash:Z

    .line 202
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda4;

    .line 204
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 206
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 209
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 211
    const-string v0, "pip_velocity_threshold"

    .line 214
    const v3, 0x468ca000    # 18000.0f

    .line 216
    invoke-static {v2, v0, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    .line 219
    move-result v0

    .line 222
    iput v0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mStashVelocityThreshold:F

    .line 223
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda4;

    .line 225
    invoke-direct {v0, p0, v4}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipTouchHandler;I)V

    .line 227
    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 230
    return-void

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 234
.end method
