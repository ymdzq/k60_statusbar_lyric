.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 10
    return-void

    .line 13
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 14
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 17
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 19
    return-void

    .line 22
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 23
    check-cast v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 26
    const/4 p0, 0x1

    .line 28
    iput-boolean p0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsNeedUpdateTranslucency:Z

    .line 29
    sget-object p0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 31
    const-string p0, "NotificationPanelView"

    .line 33
    const-string/jumbo p1, "updateNotificationViews animation cancel."

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 41
    :pswitch_3
    check-cast v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 42
    const/4 p0, 0x0

    .line 44
    invoke-virtual {v2, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMSpringLength(F)V

    .line 45
    iget-object p0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    return-void

    .line 53
    :pswitch_4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 54
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 57
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 59
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 62
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 66
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 10
    return-void

    .line 13
    :pswitch_1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 14
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 17
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 19
    return-void

    .line 22
    :pswitch_2
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 23
    check-cast v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 26
    const/4 p0, 0x1

    .line 28
    iput-boolean p0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsNeedUpdateTranslucency:Z

    .line 29
    sget-object p0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 31
    const-string p0, "NotificationPanelView"

    .line 33
    const-string/jumbo p1, "updateNotificationViews animation complete."

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 41
    :pswitch_3
    check-cast v2, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 42
    iget-object p0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    return-void

    .line 49
    :pswitch_4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 50
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 53
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 58
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 62
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    const-string/jumbo v1, "uReveal"

    const-string/jumbo v2, "uTexture"

    const-string/jumbo v3, "wallpaperBlack"

    iget-object v4, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void

    .line 3
    :pswitch_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 4
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WallpaperParam   toLock WallPaperAnimProcess : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationPanelView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 7
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p0

    invoke-virtual {v4, p0}, Landroid/view/SurfaceControl$Transaction;->setWallPaperAnimProcess(F)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 8
    :pswitch_2
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 9
    iget-object p0, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 10
    invoke-static {p2, p0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-boolean p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p0

    .line 13
    :goto_0
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardSignatureLayer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    :goto_1
    return-void

    .line 15
    :pswitch_3
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 16
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    .line 17
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 18
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 20
    :cond_3
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 22
    iput-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRenderEffect:Landroid/graphics/RenderEffect;

    .line 23
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 25
    :cond_4
    iget-object p0, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    .line 26
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRenderEffect:Landroid/graphics/RenderEffect;

    .line 27
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_5
    return-void

    .line 28
    :pswitch_4
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 29
    invoke-static {p2, v3}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p0

    .line 30
    check-cast v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 31
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 33
    :cond_6
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRuntimeShader:Landroid/graphics/RuntimeShader;

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v2}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 35
    iput-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRenderEffect:Landroid/graphics/RenderEffect;

    .line 36
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/ViewRootImpl;->setWallpaperBlack(F)V

    .line 38
    :cond_7
    iget-object p0, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDeductedImageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_8

    .line 39
    iget-object p1, v4, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mRenderEffect:Landroid/graphics/RenderEffect;

    .line 40
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-virtual {p0, p3}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMSpringLength(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
