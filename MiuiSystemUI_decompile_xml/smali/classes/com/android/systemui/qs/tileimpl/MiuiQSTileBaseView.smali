.class public Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityClass:Ljava/lang/String;

.field public mClicked:Z

.field public final mCollapsedView:Z

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

.field public final mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

.field public mIconMouseAnim:Lmiuix/animation/ITouchStyle;

.field public mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;

    .line 14
    new-instance v0, Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 16
    invoke-direct {v0, p1}, Lcom/android/systemui/animation/LaunchableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 21
    const/16 v1, 0x11

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 31
    const v1, 0x7f070ff5    # @dimen/qs_tile_icon_bg_size '50.18dp'

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result p1

    .line 38
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    invoke-direct {v1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 47
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    const/4 p1, 0x2

    .line 52
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 53
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 63
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mCollapsedView:Z

    .line 66
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 69
    return-void
    .line 72
.end method


# virtual methods
.method public getDetailY()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 6
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    add-int/2addr p0, v0

    .line 12
    return p0
    .line 13
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    .line 2
    return-object p0
    .line 4
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 14
    instance-of v3, p0, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;

    .line 16
    xor-int/2addr v1, v3

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIcon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 22
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 31
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 37
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mTileState:Z

    .line 41
    if-eq v0, p1, :cond_1

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mClicked:Z

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mTileState:Z

    .line 47
    :cond_1
    return-void
    .line 49
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/qs/QSTile;I)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/qs/QSTile;I)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->init(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda1;)V

    return-void
.end method

.method public init(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda0;Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda1;)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mIconFrame:Lcom/android/systemui/animation/LaunchableFrameLayout;

    new-instance p2, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 15
    const-class v0, Landroid/widget/Switch;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mClicked:Z

    .line 32
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mTileState:Z

    .line 34
    if-eq v0, v1, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    const v1, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    const v1, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 51
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 61
    :cond_2
    return-void
    .line 64
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 13
    const-class v1, Landroid/widget/Button;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 29
    :cond_0
    const-class v0, Landroid/widget/Switch;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mClicked:Z

    .line 46
    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mTileState:Z

    .line 48
    const/4 v2, 0x1

    .line 50
    if-eq v0, v1, :cond_1

    .line 51
    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object p0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    const v1, 0x7f130b5a    # @string/switch_bar_on 'On'

    .line 62
    goto :goto_1

    .line 65
    :cond_2
    const v1, 0x7f130b59    # @string/switch_bar_off 'Off'

    .line 66
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 76
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 79
    :cond_3
    return-void
    .line 82
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView$H;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    return-void
    .line 12
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileBaseView;->mClicked:Z

    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    .line 6
    return-object p0
    .line 9
.end method
