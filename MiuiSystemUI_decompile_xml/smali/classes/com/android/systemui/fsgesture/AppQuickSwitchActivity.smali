.class public Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field public final handler:Landroid/os/Handler;

.field public mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

.field public mFinishGestureDetection:Z

.field public mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field public mFsGestureView:Landroid/view/View;

.field public mIsShowNavigationHandle:Z

.field public mIsStartGesture:Z

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public final mSwipeAnimationRunnable:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

.field public mTranslationX:I

.field public mVelocityThreshold:F

.field public mVelocityTracker:Landroid/view/VelocityTracker;

.field public mXCur:F

.field public mXDown:F

.field public mYCur:F

.field public mYDown:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;I)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d0032    # @layout/activity_app_quick 'res/layout/activity_app_quick.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    const p1, 0x7f0a039f    # @id/fsgesture_title_view

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 18
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 20
    const p1, 0x7f0a01c6    # @id/card_container

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 31
    const p1, 0x7f0a039a    # @id/fsg_nav_view

    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureView:Landroid/view/View;

    .line 40
    const p1, 0x7f0a039e    # @id/fsgesture_swipe_view

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 51
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 53
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 55
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 59
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 61
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 67
    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 71
    move-result p1

    .line 74
    const/4 v0, 0x1

    .line 75
    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    move-result-object p1

    .line 90
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 99
    move-result-object p1

    .line 102
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    .line 105
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 107
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenWidth:I

    .line 109
    int-to-float v0, v0

    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    .line 112
    div-float/2addr v0, v1

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mCardContainer:Lcom/android/systemui/fsgesture/ScrollerLayout;

    .line 118
    iget v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mScreenHeight:I

    .line 120
    int-to-float v0, v0

    .line 122
    div-float/2addr v0, v1

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 131
    move-result-object p1

    .line 134
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 135
    const/high16 v0, 0x43af0000    # 350.0f

    .line 137
    mul-float/2addr p1, v0

    .line 139
    iput p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mVelocityThreshold:F

    .line 140
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 142
    new-instance v0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$1;

    .line 144
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$1;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    .line 146
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 149
    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 156
    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureView:Landroid/view/View;

    .line 161
    new-instance v0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;

    .line 163
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$2;-><init>(Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;)V

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    return-void
    .line 171
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    const/16 v1, 0x3f06

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 18
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const/4 p0, 0x5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x6

    .line 28
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 29
    return-void
    .line 32
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    .line 7
    const-wide/16 v1, 0x1f4

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    return-void
    .line 14
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->handler:Landroid/os/Handler;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/fsgesture/AppQuickSwitchActivity;->mSwipeAnimationRunnable:Lcom/android/systemui/fsgesture/AppQuickSwitchActivity$3;

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    return-void
    .line 17
.end method
