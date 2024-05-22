.class public Lcom/android/systemui/qs/MiuiQSDetail;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAnimInListener:Landroid/animation/Animator$AnimatorListener;

.field public mAnimOutListener:Landroid/animation/Animator$AnimatorListener;

.field public mAnimatingOpen:Z

.field public mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field public mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public mDetailContainer:Landroid/view/View;

.field public mDetailContent:Landroid/view/ViewGroup;

.field public mDetailDoneButton:Landroid/widget/TextView;

.field public mDetailSettingsButton:Landroid/widget/TextView;

.field public final mDetailViews:Landroid/util/SparseArray;

.field public mFooter:Landroid/view/View;

.field public mFullyExpanded:Z

.field public mHeader:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

.field public final mHideGridContentWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

.field public mInitY:F

.field public mIsShowingDetail:Z

.field public mNotifQsContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public mOpenX:I

.field public mOpenY:I

.field public mQS:Lcom/android/systemui/qs/MiuiQS;

.field public mQsDetailHeader:Landroid/view/View;

.field public mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

.field public mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

.field public mQsDetailHeaderTitle:Landroid/widget/TextView;

.field public mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

.field public final mQsPanelCallback:Lcom/android/systemui/qs/MiuiQSDetail$1;

.field public mScanState:Z

.field public mSwitchState:Z

.field public final mTeardownDetailWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 10
    sget-object p1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 14
    new-instance p1, Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiQSDetail$1;-><init>(Lcom/android/systemui/qs/MiuiQSDetail;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 21
    new-instance p1, Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 23
    const/4 p2, 0x0

    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSDetail$2;-><init>(Lcom/android/systemui/qs/MiuiQSDetail;I)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mHideGridContentWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 29
    new-instance p2, Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 31
    const/4 v0, 0x1

    .line 33
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/MiuiQSDetail$2;-><init>(Lcom/android/systemui/qs/MiuiQSDetail;I)V

    .line 34
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mTeardownDetailWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimInListener:Landroid/animation/Animator$AnimatorListener;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final handleToggleStateChanged(ZZ)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mSwitchState:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimatingOpen:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitch:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 18
    if-eqz p0, :cond_2

    .line 20
    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 22
    :cond_2
    return-void
    .line 25
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 15
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getContainerHeight()I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 31
    move-result v1

    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailViews:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 42
    check-cast v1, Landroid/view/View;

    .line 43
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_1
    return-void
    .line 51
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0758    # @id/qs_detail_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 12
    const v0, 0x1020002    # @android:id/content

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContent:Landroid/view/ViewGroup;

    .line 23
    const v0, 0x102001a    # @android:id/button2

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 34
    const v0, 0x1020019    # @android:id/button1

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0a0759    # @id/qs_detail_header

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 54
    const v1, 0x1020016    # @android:id/title

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeader:Landroid/view/View;

    .line 67
    const v1, 0x7f0a09ae    # @id/toggle_stub

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/ViewStub;

    .line 76
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsDetailHeaderSwitchStub:Landroid/view/ViewStub;

    .line 78
    const v0, 0x7f0a075a    # @id/qs_detail_header_progress

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f1309aa    # @string/quick_settings_done 'Done'

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailSettingsButton:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f1309ca    # @string/quick_settings_more_settings 'More settings'

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper;

    .line 105
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    .line 107
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 110
    new-instance v0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda0;

    .line 112
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSDetail;)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailDoneButton:Landroid/widget/TextView;

    .line 117
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 122
    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 128
    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 132
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getContainerHeight()I

    .line 134
    move-result v1

    .line 137
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 142
    :cond_0
    return-void
    .line 145
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mInitY:F

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mInitY:F

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 16
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    cmpg-float v0, v0, v1

    .line 21
    if-gez v0, :cond_1

    .line 23
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public setAnimatedViews(Ljava/util/List;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mHideGridContentWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 11
    new-instance v1, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;

    .line 13
    const/4 v2, 0x0

    .line 15
    new-array v3, v2, [Landroid/view/View;

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, [Landroid/view/View;

    .line 22
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;-><init>(I[Landroid/view/View;)V

    .line 24
    filled-new-array {v0, v1}, [Landroid/animation/Animator$AnimatorListener;

    .line 27
    move-result-object v0

    .line 30
    new-instance v1, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;

    .line 31
    invoke-direct {v1, v0}, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;-><init>([Landroid/animation/Animator$AnimatorListener;)V

    .line 33
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimInListener:Landroid/animation/Animator$AnimatorListener;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mTeardownDetailWhenDone:Lcom/android/systemui/qs/MiuiQSDetail$2;

    .line 38
    new-instance v1, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;

    .line 40
    new-array v2, v2, [Landroid/view/View;

    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, [Landroid/view/View;

    .line 48
    const/4 v2, 0x1

    .line 50
    invoke-direct {v1, v2, p1}, Lcom/android/systemui/qs/QSAnimation$QsHideBeforeAnimatorListener;-><init>(I[Landroid/view/View;)V

    .line 51
    filled-new-array {v0, v1}, [Landroid/animation/Animator$AnimatorListener;

    .line 54
    move-result-object p1

    .line 57
    new-instance v0, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;

    .line 58
    invoke-direct {v0, p1}, Lcom/android/systemui/controlcenter/phone/widget/AnimatorListenerWrapper;-><init>([Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mAnimOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 63
    :cond_1
    :goto_0
    return-void
    .line 65
.end method

.method public setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mNotifQsContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    return-void
    .line 4
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mFullyExpanded:Z

    .line 2
    return-void
    .line 4
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMargins(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 10
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailContainer:Landroid/view/View;

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    return-void
    .line 19
.end method

.method public setQS(Lcom/android/systemui/qs/MiuiQS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQS:Lcom/android/systemui/qs/MiuiQS;

    .line 2
    return-void
    .line 4
.end method

.method public setQsPanel(Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiNotificationShadeHeader;Lcom/android/systemui/qs/MiuiQuickQSPanel;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mHeader:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 4
    iput-object p4, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mFooter:Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 8
    invoke-virtual {p3, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setCallback(Lcom/android/systemui/qs/MiuiQSDetail$Callback;)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail;->mQsPanelCallback:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/MiuiQSPanel;->setCallback(Lcom/android/systemui/qs/MiuiQSDetail$Callback;)V

    .line 17
    return-void
    .line 20
.end method
