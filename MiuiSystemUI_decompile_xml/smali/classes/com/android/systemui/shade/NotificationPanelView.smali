.class public final Lcom/android/systemui/shade/NotificationPanelView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAlphaPaint:Landroid/graphics/Paint;

.field public mCurrentPanelAlpha:I

.field public mDozing:Z

.field public mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

.field public mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 10
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 13
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    .line 16
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 18
    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 20
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 23
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 7
    check-cast p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->loadDimens()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateMiuiResources()V

    .line 14
    return-void
    .line 17
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 5
    const/16 v1, 0xff

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 13
    move-result v0

    .line 16
    int-to-float v5, v0

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 18
    move-result v0

    .line 21
    int-to-float v6, v0

    .line 22
    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 23
    move-object v2, p1

    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public getCurrentPanelAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    .line 2
    int-to-float p0, p0

    .line 4
    return p0
    .line 5
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mDozing:Z

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    return p0
    .line 6
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelView;->mRtlChangeListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOldLayoutDirection:I

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public setDozing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelView;->mDozing:Z

    .line 2
    return-void
    .line 4
.end method

.method public setOnTouchListener(Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelView;->mTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;

    .line 5
    return-void
    .line 7
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
