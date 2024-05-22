.class public Lcom/android/systemui/statusbar/views/NetworkSpeedView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;


# instance fields
.field public mAreas:Ljava/util/ArrayList;

.field public mBlocked:Z

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mLightColor:I

.field public mNetworkSpeedNumber:Ljava/lang/CharSequence;

.field public mNetworkSpeedNumberText:Landroid/widget/TextView;

.field public mNetworkSpeedUnit:Ljava/lang/CharSequence;

.field public mNetworkSpeedUnitText:Landroid/widget/TextView;

.field public mShown:Z

.field public mTint:I

.field public mUseTint:Z

.field public final mVisibilityListeners:Ljava/util/LinkedList;

.field public mVisibleByController:Z

.field public mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibilityListeners:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibilityListeners:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 11
    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibilityListeners:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getDrawingRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    .line 5
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 9
    move-result p0

    .line 12
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 13
    int-to-float v1, v1

    .line 15
    add-float/2addr v1, v0

    .line 16
    float-to-int v1, v1

    .line 17
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 18
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 20
    int-to-float v1, v1

    .line 22
    add-float/2addr v1, v0

    .line 23
    float-to-int v0, v1

    .line 24
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 25
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 27
    int-to-float v0, v0

    .line 29
    add-float/2addr v0, p0

    .line 30
    float-to-int v0, v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    int-to-float v0, v0

    .line 36
    add-float/2addr v0, p0

    .line 37
    float-to-int p0, v0

    .line 38
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    return-void
    .line 41
.end method

.method public getSlot()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "network_speed"

    .line 2
    return-object p0
    .line 4
.end method

.method public getVisibleState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    .line 2
    return p0
    .line 4
.end method

.method public final isIconVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    .line 2
    iput p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkIntensity:F

    .line 4
    iput p3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mTint:I

    .line 6
    iput p4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mLightColor:I

    .line 8
    iput p5, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkColor:I

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mUseTint:Z

    .line 12
    if-eqz p6, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 16
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 18
    move-result p4

    .line 21
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 25
    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 27
    move-result p0

    .line 30
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    goto :goto_3

    .line 34
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 35
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 37
    move-result p6

    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p6, :cond_1

    .line 42
    move p6, p2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p6, v0

    .line 46
    :goto_0
    cmpl-float p6, p6, v0

    .line 47
    if-lez p6, :cond_2

    .line 49
    move p6, p5

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move p6, p4

    .line 53
    :goto_1
    invoke-virtual {p3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object p3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 57
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    .line 59
    move-result p0

    .line 62
    if-eqz p0, :cond_3

    .line 63
    goto :goto_2

    .line 65
    :cond_3
    move p2, v0

    .line 66
    :goto_2
    cmpl-float p0, p2, v0

    .line 67
    if-lez p0, :cond_4

    .line 69
    move p4, p5

    .line 71
    :cond_4
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    :goto_3
    return-void
    .line 75
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 2
    const v1, 0x7f140488    # @style/TextAppearance.StatusBar.NetWorkSpeedNumber

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 10
    const v1, 0x7f140489    # @style/TextAppearance.StatusBar.NetWorkSpeedUnit

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 15
    iget-object v3, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mAreas:Ljava/util/ArrayList;

    .line 18
    iget v4, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkIntensity:F

    .line 20
    iget v5, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mTint:I

    .line 22
    iget v6, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mLightColor:I

    .line 24
    iget v7, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mDarkColor:I

    .line 26
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mUseTint:Z

    .line 28
    move-object v2, p0

    .line 30
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->onDarkChanged(Ljava/util/ArrayList;FIIIZ)V

    .line 31
    return-void
    .line 34
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a068b    # @id/network_speed_number

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a068c    # @id/network_speed_unit

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 25
    return-void
    .line 27
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onVisibilityAggregated(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    if-ne p1, p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibilityListeners:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 26
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 27
    const/4 p0, 0x0

    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    return-void
    .line 32
.end method

.method public setBlocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const/16 p1, 0x8

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setDripEnd(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setNetworkSpeed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mShown:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->updateNetworkSpeed()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setStaticDrawableColor(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setVisibilityByController(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    .line 2
    if-eq v0, p1, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleByController:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mBlocked:Z

    .line 10
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    goto :goto_0

    .line 18
    :cond_0
    const/16 p1, 0x8

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    return-void
.end method

.method public setVisibleState(IZ)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mVisibleState:I

    return-void
.end method

.method public final updateNetworkSpeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumberText:Landroid/widget/TextView;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedNumber:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnitText:Landroid/widget/TextView;

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/views/NetworkSpeedView;->mNetworkSpeedUnit:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method
