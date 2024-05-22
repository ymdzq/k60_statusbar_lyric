.class public Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sHandler:Landroid/os/Handler;


# instance fields
.field public demoType:Ljava/lang/String;

.field public isFromPro:Z

.field public mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field public mBgView:Landroid/view/View;

.field public final mDemoActivityTouchListener:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

.field public mDemoActivityView:Landroid/view/View;

.field public final mDemoActivityViewMatrix:Landroid/graphics/Matrix;

.field public mDisplayHeight:I

.field public mDisplayWidth:I

.field public mDownX:F

.field public mDownY:F

.field public mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field public mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field public mGestureStatus:I

.field public mOffsetX:F

.field public mStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 13
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 17
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d00c3    # @layout/fs_gesture_back_demo 'res/layout/fs_gesture_back_demo.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 11
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    const-string/jumbo v0, "window"

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/WindowManager;

    .line 23
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 25
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 29
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32
    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 34
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 36
    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    move-result-object p1

    .line 43
    const-string v0, "DEMO_TYPE"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    .line 50
    if-nez v0, :cond_0

    .line 52
    const-string v0, "DEMO_FULLY_SHOW"

    .line 54
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    .line 56
    const-string v0, "DEMO_STEP"

    .line 58
    const/4 v1, 0x1

    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 61
    move-result v0

    .line 64
    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 65
    const-string v0, "IS_FROM_PROVISION"

    .line 67
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 70
    move-result p1

    .line 73
    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    .line 74
    const p1, 0x7f0a07cb    # @id/root_view

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 83
    const v0, 0x7f0a0130    # @id/bg_view

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    .line 92
    const v0, 0x7f0a02a6    # @id/demo_activity

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    .line 103
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    const v0, 0x7f0a039f    # @id/fsgesture_title_view

    .line 108
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 111
    move-result-object v0

    .line 114
    check-cast v0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 115
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 119
    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 123
    move-result v0

    .line 126
    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 134
    if-ne v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 140
    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 149
    new-instance v3, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;

    .line 151
    invoke-direct {v3, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 153
    iget-object v0, v0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    .line 156
    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 163
    invoke-static {p0, v0}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 165
    const v0, 0x7f0a039e    # @id/fsgesture_swipe_view

    .line 168
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v0

    .line 174
    check-cast v0, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 175
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 177
    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 179
    if-ne v0, v1, :cond_4

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 183
    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    .line 187
    :goto_1
    new-instance v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 190
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 192
    if-ne v3, v1, :cond_5

    .line 194
    goto :goto_2

    .line 196
    :cond_5
    move v2, v1

    .line 197
    :goto_2
    const/4 v3, 0x0

    .line 198
    invoke-direct {v0, p0, v3, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 202
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 204
    iput v2, v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    .line 206
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 210
    iget v3, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    .line 212
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    const/16 v2, 0xc

    .line 217
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 222
    if-ne v2, v1, :cond_6

    .line 224
    const/16 v1, 0x9

    .line 226
    goto :goto_3

    .line 228
    :cond_6
    const/16 v1, 0xb

    .line 229
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 234
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 239
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 246
    move-result-object p1

    .line 249
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 250
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 252
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActiivy;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 256
    return-void
    .line 258
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 7
    return-void
    .line 10
.end method

.method public final startSwipeViewAnimation(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    .line 6
    const-wide/16 p0, 0x1f4

    .line 9
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    return-void
    .line 14
.end method
