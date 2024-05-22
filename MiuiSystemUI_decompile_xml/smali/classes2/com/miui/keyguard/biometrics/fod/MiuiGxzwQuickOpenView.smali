.class public Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;
.super Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBlurUtils:Lmiui/stub/MiuiStub$6;

.field public mCicleRadius:F

.field public mCloseView:Landroid/view/View;

.field public mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

.field public mFastRect:Landroid/graphics/RectF;

.field public mFingerID:I

.field public mFingerRect:Landroid/graphics/RectF;

.field public final mHandler:Landroid/os/Handler;

.field public mItemExpandAnimator:Landroid/animation/Animator;

.field public mItemRadius:F

.field public mItemScaleRadius:F

.field public mItemsExpanded:Z

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mLoading:Z

.field public mLoadingAnimator:Landroid/animation/ObjectAnimator;

.field public mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

.field public mPaint:Landroid/graphics/Paint;

.field public mPendingUpdateLp:Z

.field public mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

.field public final mQuickOpenItemList:Ljava/util/List;

.field public mQuickViewListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;

.field public mScreenHeight:I

.field public mSecurityManager:Lmiui/security/SecurityManager;

.field public mSelectBackgroundRadius:F

.field public final mShowRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

.field public mShowed:Z

.field public mSkipTeach:Landroid/widget/TextView;

.field public mSubTitleView:Landroid/widget/TextView;

.field public mTeachMode:Z

.field public mTipLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mTipPressMargin:I

.field public mTipSlideMargin:I

.field public mTipView:Landroid/widget/TextView;

.field public mTitleContainer:Landroid/widget/LinearLayout;

.field public mTitleLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public mTitleMargin:I

.field public mTitleView:Landroid/widget/TextView;

.field public final mUiOffloadThread:Lcom/miui/systemui/MiuiUiOffloadThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-class p1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 5
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 11
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mUiOffloadThread:Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 13
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 23
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoading:Z

    .line 25
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerID:I

    .line 27
    new-instance v0, Landroid/os/Handler;

    .line 29
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mHandler:Landroid/os/Handler;

    .line 34
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemsExpanded:Z

    .line 36
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 38
    invoke-direct {v0, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;I)V

    .line 40
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 43
    const-class v0, Lmiui/stub/MiuiStub$6;

    .line 45
    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Lmiui/stub/MiuiStub$6;

    .line 51
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mBlurUtils:Lmiui/stub/MiuiStub$6;

    .line 53
    const/16 v0, 0x1300

    .line 55
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->updatePixelSize()V

    .line 60
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 63
    const/4 v2, -0x1

    .line 65
    const/4 v3, -0x1

    .line 66
    const/16 v4, 0x7d9

    .line 67
    const v5, 0x5030500

    .line 69
    const/4 v6, -0x2

    .line 72
    move-object v1, v0

    .line 73
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 74
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 77
    const-string v1, "gxzw_quick_open"

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    const/4 v1, 0x1

    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 87
    const/4 v2, 0x3

    .line 89
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 95
    const-string/jumbo v2, "security"

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Lmiui/security/SecurityManager;

    .line 103
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 105
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 111
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 114
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 116
    div-int/lit8 v2, v2, 0x2

    .line 118
    add-int/2addr v2, v0

    .line 120
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 121
    sget v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 123
    div-int/lit8 v3, v3, 0x2

    .line 125
    add-int/2addr v3, v0

    .line 127
    new-instance v0, Landroid/graphics/RectF;

    .line 128
    int-to-float v2, v2

    .line 130
    iget v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 131
    sub-float v5, v2, v4

    .line 133
    int-to-float v6, v3

    .line 135
    sub-float v7, v6, v4

    .line 136
    add-float v8, v2, v4

    .line 138
    add-float/2addr v4, v6

    .line 140
    invoke-direct {v0, v5, v7, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 141
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerRect:Landroid/graphics/RectF;

    .line 144
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 146
    move-result-object v0

    .line 149
    const v4, 0x7f0703bd    # @dimen/gxzw_quick_open_region_samll '62.0dp'

    .line 150
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 153
    move-result v0

    .line 156
    new-instance v4, Landroid/graphics/RectF;

    .line 157
    sub-float v5, v2, v0

    .line 159
    sub-float v7, v6, v0

    .line 161
    add-float/2addr v2, v0

    .line 163
    add-float/2addr v6, v0

    .line 164
    invoke-direct {v4, v5, v7, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    iput-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFastRect:Landroid/graphics/RectF;

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    .line 170
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 172
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPaint:Landroid/graphics/Paint;

    .line 180
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 182
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPaint:Landroid/graphics/Paint;

    .line 187
    const v2, 0x33ffffff

    .line 189
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 195
    move-result-object v0

    .line 198
    const-string v2, "display"

    .line 199
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    move-result-object v0

    .line 204
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 205
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 207
    move-result-object v0

    .line 210
    new-instance v2, Landroid/graphics/Point;

    .line 211
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 213
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 216
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 219
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mScreenHeight:I

    .line 221
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;

    .line 223
    invoke-direct {v0, p1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$3;-><init>(ILjava/lang/Object;)V

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance p1, Landroid/widget/LinearLayout;

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 233
    move-result-object v0

    .line 236
    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 237
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 240
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 242
    new-instance p1, Landroid/widget/TextView;

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 247
    move-result-object v0

    .line 250
    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleView:Landroid/widget/TextView;

    .line 254
    const/4 v0, -0x1

    .line 256
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleView:Landroid/widget/TextView;

    .line 260
    const/16 v1, 0x11

    .line 262
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 264
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 267
    const/4 v2, -0x2

    .line 269
    invoke-direct {p1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 273
    iget-object v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleView:Landroid/widget/TextView;

    .line 275
    invoke-virtual {v4, v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance p1, Landroid/widget/TextView;

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 282
    move-result-object v4

    .line 285
    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 286
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSubTitleView:Landroid/widget/TextView;

    .line 289
    const v4, -0x65000001

    .line 291
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSubTitleView:Landroid/widget/TextView;

    .line 297
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 299
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 302
    invoke-direct {p1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 307
    iget-object v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSubTitleView:Landroid/widget/TextView;

    .line 309
    invoke-virtual {v4, v5, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 314
    invoke-direct {p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 316
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 319
    const/16 v0, 0x50

    .line 321
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 323
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mScreenHeight:I

    .line 325
    sub-int/2addr v0, v3

    .line 327
    iget v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleMargin:I

    .line 328
    add-int/2addr v0, v4

    .line 330
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 331
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 333
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance p1, Landroid/widget/TextView;

    .line 338
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 340
    move-result-object v0

    .line 343
    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 344
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 347
    const/high16 v0, -0x1000000

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 354
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 356
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 359
    const/4 v0, 0x4

    .line 361
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 365
    const v0, 0x7f080ea1    # @drawable/gxzw_quick_tip_background 'res/drawable/gxzw_quick_tip_background.9.png'

    .line 367
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 370
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 375
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 378
    const/16 v0, 0x51

    .line 380
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 382
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mScreenHeight:I

    .line 384
    sub-int/2addr v0, v3

    .line 386
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipPressMargin:I

    .line 387
    add-int/2addr v0, v1

    .line 389
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 390
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 392
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->updateTextSize()V

    .line 397
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 400
    move-result-object p0

    .line 403
    sget-boolean p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 404
    if-nez p1, :cond_0

    .line 406
    goto :goto_0

    .line 408
    :cond_0
    new-instance p1, Landroid/os/Handler;

    .line 409
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 411
    move-result-object v0

    .line 414
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 415
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 418
    new-instance v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;

    .line 420
    invoke-direct {v1, p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 422
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    :goto_0
    return-void
    .line 428
.end method


# virtual methods
.method public final caculateSelectQucikOpenItem(FF)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 2
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 20
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRegion:Landroid/graphics/Region;

    .line 22
    float-to-int v2, p1

    .line 24
    float-to-int v3, p2

    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public final cleanQuickOpenItemList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 20
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 22
    move-result-object v2

    .line 25
    const/4 v3, 0x4

    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 48
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
    .line 55
.end method

.method public final dismiss()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mHandler:Landroid/os/Handler;

    .line 9
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowRunnable:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$1;

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    const/4 v1, 0x0

    .line 16
    iput v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerID:I

    .line 17
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mShowed:Z

    .line 19
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoading:Z

    .line 21
    if-nez v2, :cond_6

    .line 23
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 25
    if-eqz v2, :cond_1

    .line 27
    goto/16 :goto_2

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 35
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 38
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 40
    const/4 v5, 0x2

    .line 42
    div-int/2addr v4, v5

    .line 43
    add-int/2addr v4, v2

    .line 44
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 45
    sget v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 47
    div-int/2addr v6, v5

    .line 49
    add-int/2addr v6, v2

    .line 50
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 51
    check-cast v2, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 58
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v7

    .line 62
    if-eqz v7, :cond_2

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v7

    .line 68
    check-cast v7, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 69
    new-instance v10, Landroid/animation/ObjectAnimator;

    .line 71
    invoke-direct {v10}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 73
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 76
    move-result-object v10

    .line 79
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 80
    new-array v12, v5, [F

    .line 82
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 84
    move-result-object v13

    .line 87
    invoke-virtual {v13}, Landroid/view/View;->getTranslationX()F

    .line 88
    move-result v13

    .line 91
    aput v13, v12, v1

    .line 92
    int-to-float v13, v4

    .line 94
    iget-object v14, v7, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRectF:Landroid/graphics/RectF;

    .line 95
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    .line 97
    move-result v15

    .line 100
    sub-float/2addr v13, v15

    .line 101
    const/4 v15, 0x1

    .line 102
    aput v13, v12, v15

    .line 103
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 105
    move-result-object v10

    .line 108
    new-instance v11, Landroid/animation/ObjectAnimator;

    .line 109
    invoke-direct {v11}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 111
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 114
    move-result-object v11

    .line 117
    sget-object v12, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 118
    new-array v13, v5, [F

    .line 120
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 122
    move-result-object v16

    .line 125
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTranslationY()F

    .line 126
    move-result v16

    .line 129
    aput v16, v13, v1

    .line 130
    int-to-float v3, v6

    .line 132
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    .line 133
    move-result v14

    .line 136
    sub-float/2addr v3, v14

    .line 137
    aput v3, v13, v15

    .line 138
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 140
    move-result-object v3

    .line 143
    new-instance v11, Landroid/animation/ObjectAnimator;

    .line 144
    invoke-direct {v11}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 146
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 149
    move-result-object v11

    .line 152
    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 153
    new-array v13, v5, [F

    .line 155
    fill-array-data v13, :array_0

    .line 157
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 160
    move-result-object v11

    .line 163
    new-instance v12, Landroid/animation/ObjectAnimator;

    .line 164
    invoke-direct {v12}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 166
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 169
    move-result-object v12

    .line 172
    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 173
    new-array v14, v5, [F

    .line 175
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 177
    move-result-object v17

    .line 180
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getScaleX()F

    .line 181
    move-result v17

    .line 184
    aput v17, v14, v1

    .line 185
    const/16 v17, 0x0

    .line 187
    aput v17, v14, v15

    .line 189
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 191
    move-result-object v12

    .line 194
    new-instance v13, Landroid/animation/ObjectAnimator;

    .line 195
    invoke-direct {v13}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 197
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 200
    move-result-object v13

    .line 203
    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 204
    new-array v8, v5, [F

    .line 206
    invoke-virtual {v7}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 208
    move-result-object v7

    .line 211
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 212
    move-result v7

    .line 215
    aput v7, v8, v1

    .line 216
    aput v17, v8, v15

    .line 218
    invoke-static {v13, v14, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 220
    move-result-object v7

    .line 223
    new-instance v8, Landroid/animation/AnimatorSet;

    .line 224
    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 226
    filled-new-array {v10, v3, v11, v12, v7}, [Landroid/animation/Animator;

    .line 229
    move-result-object v3

    .line 232
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    const-wide/16 v9, 0x96

    .line 236
    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 238
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 241
    goto/16 :goto_0

    .line 244
    :cond_2
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 246
    if-eqz v2, :cond_3

    .line 248
    new-instance v2, Landroid/animation/ObjectAnimator;

    .line 250
    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 252
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickLoadingView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickLoadingView;

    .line 255
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 257
    new-array v4, v5, [F

    .line 259
    fill-array-data v4, :array_1

    .line 261
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 264
    move-result-object v2

    .line 267
    const-wide/16 v3, 0x96

    .line 268
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$9;

    .line 273
    invoke-direct {v3, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$9;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;)V

    .line 275
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 281
    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->removeQuickView()V

    .line 285
    :goto_1
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 288
    if-eqz v2, :cond_5

    .line 290
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 292
    if-eqz v3, :cond_4

    .line 294
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 296
    :cond_4
    const/4 v3, 0x0

    .line 299
    iput-object v3, v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 300
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 302
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 307
    iput-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 310
    :cond_5
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 312
    const/4 v3, 0x4

    .line 314
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    goto :goto_3

    .line 318
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->removeQuickView()V

    .line 319
    :goto_3
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickViewListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;

    .line 322
    if-eqz v0, :cond_8

    .line 324
    check-cast v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 326
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mContext:Landroid/content/Context;

    .line 328
    invoke-static {v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;

    .line 330
    move-result-object v2

    .line 333
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->listener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;

    .line 334
    invoke-virtual {v2, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGestureMonitor;->unregisterPointerEventListener(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$2;)V

    .line 336
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mMiuiGxzwQuickOpenView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;

    .line 339
    const/4 v3, 0x0

    .line 341
    invoke-virtual {v2, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->setQuickViewListener(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;)V

    .line 342
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShow:Z

    .line 345
    if-eqz v2, :cond_7

    .line 347
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShowLightIcon:Z

    .line 349
    invoke-virtual {v0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->show(Z)V

    .line 351
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShow:Z

    .line 354
    iput-boolean v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShowLightIcon:Z

    .line 356
    goto :goto_4

    .line 358
    :cond_7
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 359
    const/16 v1, 0x8

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 364
    :cond_8
    :goto_4
    return-void

    .line 367
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 368
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 376
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 9
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->dismiss()V

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 23
    return p0
    .line 24
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    if-ne v0, p2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 12
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRectF:Landroid/graphics/RectF;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 16
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 20
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRectF:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 24
    move-result v1

    .line 27
    iget v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSelectBackgroundRadius:F

    .line 28
    iget-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPaint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 35
    move-result p0

    .line 38
    return p0
    .line 39
.end method

.method public final generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public final handleQucikOpenItemTouchUp(Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getIntent()Landroid/content/Intent;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-class v1, Lmiui/stub/MiuiStub$14;

    .line 9
    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Lmiui/stub/MiuiStub$14;

    .line 15
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getTitle()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getSubTitle()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 24
    iget-object v1, v1, Lmiui/stub/MiuiStub$14;->this$0:Lmiui/stub/MiuiStub;

    .line 25
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 27
    iget-object v1, v1, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mSystemUIStat:Ldagger/Lazy;

    .line 29
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 34
    check-cast v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance v4, Lcom/android/keyguard/event/FodQuickOpenActionEvent;

    .line 40
    const-string v5, " "

    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    const v3, 0x1511750

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 58
    const/4 v5, 0x0

    .line 59
    const-string v6, "178.2.0.1.20920"

    .line 60
    invoke-direct {v4, v5, v2, v6, v3}, Lcom/android/keyguard/event/FodQuickOpenActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 62
    iget-object v1, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 65
    invoke-interface {v1, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 80
    move-result-object v5

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 85
    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 91
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v1

    .line 102
    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 105
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 112
    :cond_2
    :goto_0
    if-nez v5, :cond_3

    .line 113
    return-void

    .line 115
    :cond_3
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->needStartProcess()Z

    .line 116
    move-result v1

    .line 119
    instance-of p1, p1, Lcom/miui/keyguard/biometrics/fod/item/XiaoaiItem;

    .line 120
    const/high16 v2, 0x10000

    .line 122
    if-eqz p1, :cond_4

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 126
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 130
    move-result-object v3

    .line 133
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 134
    move-result v4

    .line 137
    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 138
    move-result-object v2

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v3

    .line 146
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    move-result-object v3

    .line 150
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 151
    move-result v4

    .line 154
    invoke-virtual {v3, v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 155
    move-result-object v2

    .line 158
    :goto_1
    const/4 v3, 0x0

    .line 159
    if-eqz v2, :cond_c

    .line 160
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 162
    move-result v2

    .line 165
    if-lez v2, :cond_c

    .line 166
    const-class v2, Lmiui/stub/MiuiStub$19;

    .line 168
    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object v2

    .line 173
    check-cast v2, Lmiui/stub/MiuiStub$19;

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 176
    move-result-object v4

    .line 179
    iget-object v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 182
    move-result v7

    .line 185
    iget-object v2, v2, Lmiui/stub/MiuiStub$19;->this$0:Lmiui/stub/MiuiStub;

    .line 186
    iget-object v2, v2, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 188
    iget-object v2, v2, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mAppLockHelper:Ldagger/Lazy;

    .line 190
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 195
    check-cast v2, Lcom/miui/systemui/statusbar/phone/AppLockHelper;

    .line 196
    sget-object v2, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->sAppLocks:Ljava/util/Map;

    .line 198
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 200
    move-result-object v2

    .line 203
    invoke-static {v2, v7}, Lcom/miui/systemui/statusbar/phone/AppLockHelper;->isACLockEnabledAsUser(Landroid/content/ContentResolver;I)Z

    .line 204
    move-result v2

    .line 207
    const/4 v4, 0x1

    .line 208
    if-eqz v2, :cond_5

    .line 209
    invoke-virtual {v6, v5, v7}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    .line 211
    move-result v2

    .line 214
    if-eqz v2, :cond_5

    .line 215
    invoke-virtual {v6, v5, v7}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;I)Z

    .line 217
    move-result v2

    .line 220
    if-nez v2, :cond_5

    .line 221
    move v2, v4

    .line 223
    goto :goto_2

    .line 224
    :cond_5
    move v2, v3

    .line 225
    :goto_2
    const-string v6, "handleQucikOpenItemTouchUp appLock: "

    .line 226
    const-string v7, ", mFingerID: "

    .line 228
    invoke-static {v6, v2, v7}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    move-result-object v6

    .line 233
    iget v7, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerID:I

    .line 234
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object v6

    .line 242
    const-string v7, "MiuiGxzwQuickOpenView"

    .line 243
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerID:I

    .line 248
    if-eqz v6, :cond_8

    .line 250
    if-eqz v2, :cond_8

    .line 252
    if-nez v1, :cond_6

    .line 254
    if-nez p1, :cond_8

    .line 256
    :cond_6
    const-string v6, "fod_quick_open"

    .line 258
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 263
    move-result-object v6

    .line 266
    iget v8, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerID:I

    .line 267
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 269
    move-result v9

    .line 272
    sget-boolean v10, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 273
    if-nez v10, :cond_7

    .line 275
    goto :goto_3

    .line 277
    :cond_7
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 278
    move-result-object v6

    .line 281
    const-string v10, "fod_auth_fingerprint"

    .line 282
    invoke-static {v6, v10, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 284
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 287
    if-nez v2, :cond_9

    .line 289
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 291
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 295
    move-result-object v1

    .line 298
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    move-result-object v1

    .line 302
    invoke-virtual {p0, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->startActivitySafely(Landroid/content/Intent;)V

    .line 303
    goto :goto_4

    .line 306
    :cond_9
    if-eqz v1, :cond_a

    .line 307
    const-string v1, "quick_open_start_process"

    .line 309
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    .line 314
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 316
    move-result-object p1

    .line 319
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_5

    .line 325
    :catch_0
    move-exception p1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, "start service filed "

    .line 329
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object p1

    .line 341
    invoke-static {v7, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    goto :goto_5

    .line 345
    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->startActivitySafely(Landroid/content/Intent;)V

    .line 346
    goto :goto_5

    .line 349
    :cond_c
    new-instance p1, Landroid/content/Intent;

    .line 350
    const-string v0, "market://details?id="

    .line 352
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 354
    move-result-object v0

    .line 357
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 358
    move-result-object v0

    .line 361
    const-string v1, "android.intent.action.VIEW"

    .line 362
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 364
    const/high16 v0, 0x10000000

    .line 367
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->startActivitySafely(Landroid/content/Intent;)V

    .line 372
    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 375
    move-result-object p0

    .line 378
    sget-boolean p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 379
    if-nez p1, :cond_d

    .line 381
    goto :goto_6

    .line 383
    :cond_d
    sget p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 384
    if-eqz p1, :cond_e

    .line 386
    sput v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenTeachValue:I

    .line 388
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 390
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$4;

    .line 392
    invoke-direct {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$4;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 397
    :cond_e
    :goto_6
    return-void
    .line 400
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPendingUpdateLp:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 15
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 17
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPendingUpdateLp:Z

    .line 23
    return-void
    .line 25
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPendingUpdateLp:Z

    .line 6
    return-void
    .line 8
.end method

.method public final removeQuickView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mBlurUtils:Lmiui/stub/MiuiStub$6;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget-object v0, v0, Lmiui/stub/MiuiStub$6;->this$0:Lmiui/stub/MiuiStub;

    .line 11
    iget-object v0, v0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 13
    iget-object v0, v0, Lmiui/stub/MiuiStub$SysUIProvider;->mBlurUtils:Ldagger/Lazy;

    .line 15
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/BlurUtils;

    .line 21
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 27
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 30
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 32
    and-int/lit8 v1, v1, -0x5

    .line 34
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 38
    const/16 v0, 0x8

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->cleanQuickOpenItemList()V

    .line 46
    const-string v0, ""

    .line 49
    invoke-virtual {p0, v0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->showTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 54
    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCurrentSelectItem:Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 61
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 63
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 67
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSkipTeach:Landroid/widget/TextView;

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 72
    if-eqz v1, :cond_2

    .line 74
    iget-object v3, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 76
    if-eqz v3, :cond_1

    .line 78
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 80
    :cond_1
    iput-object v0, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 83
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 85
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 88
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 90
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mMiuiGxzwQuickTeachView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickTeachView;

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCloseView:Landroid/view/View;

    .line 95
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 99
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCloseView:Landroid/view/View;

    .line 102
    :cond_3
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTeachMode:Z

    .line 104
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemsExpanded:Z

    .line 106
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLoadingAnimator:Landroid/animation/ObjectAnimator;

    .line 108
    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 112
    :cond_4
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemExpandAnimator:Landroid/animation/Animator;

    .line 115
    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 119
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemExpandAnimator:Landroid/animation/Animator;

    .line 122
    :cond_5
    return-void
    .line 124
.end method

.method public setQuickViewListener(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickViewListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$QuickViewListener;

    .line 2
    return-void
    .line 4
.end method

.method public final showTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 2
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 4
    div-int/lit8 v1, v1, 0x2

    .line 6
    add-int/2addr v1, v0

    .line 8
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    .line 11
    sub-int/2addr v2, v1

    .line 13
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleMargin:I

    .line 14
    add-int/2addr v2, v1

    .line 16
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 17
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 19
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleView:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSubTitleView:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
    .line 34
.end method

.method public final startActivitySafely(Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v0, "start activity filed "

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    const-string p1, "MiuiGxzwQuickOpenView"

    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
    .line 33
.end method

.method public final startShowQuickOpenItemAnimation()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mBlurUtils:Lmiui/stub/MiuiStub$6;

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 6
    move-result-object v2

    .line 9
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mBlurUtils:Lmiui/stub/MiuiStub$6;

    .line 10
    iget-object v3, v3, Lmiui/stub/MiuiStub$6;->this$0:Lmiui/stub/MiuiStub;

    .line 12
    iget-object v3, v3, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 14
    iget-object v3, v3, Lmiui/stub/MiuiStub$SysUIProvider;->mBlurUtils:Ldagger/Lazy;

    .line 16
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/systemui/statusbar/BlurUtils;

    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 26
    move-result v3

    .line 29
    float-to-int v3, v3

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v1, v1, Lmiui/stub/MiuiStub$6;->this$0:Lmiui/stub/MiuiStub;

    .line 34
    iget-object v1, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 36
    iget-object v1, v1, Lmiui/stub/MiuiStub$SysUIProvider;->mBlurUtils:Ldagger/Lazy;

    .line 38
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/systemui/statusbar/BlurUtils;

    .line 44
    const/4 v5, 0x0

    .line 46
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/systemui/statusbar/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    .line 47
    const v1, 0x7f080c8c    # @drawable/finger_quick_open_bg 'res/drawable/finger_quick_open_bg.xml'

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 56
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 58
    const/4 v3, 0x4

    .line 60
    or-int/2addr v2, v3

    .line 61
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 64
    move-result v1

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 71
    iget-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    invoke-interface {v1, v0, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_0
    iput-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mPendingUpdateLp:Z

    .line 79
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->cleanQuickOpenItemList()V

    .line 81
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 86
    move-result-object v6

    .line 89
    iget v7, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 90
    iget v8, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCicleRadius:F

    .line 92
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object v9

    .line 97
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 98
    move-result-object v9

    .line 101
    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 102
    and-int/lit16 v9, v9, 0xc0

    .line 104
    const/16 v10, 0x80

    .line 106
    if-ne v9, v10, :cond_1

    .line 108
    move v9, v2

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    move v9, v5

    .line 112
    :goto_1
    sget-boolean v10, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 113
    new-instance v10, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 117
    sget-boolean v11, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 120
    const/4 v13, 0x2

    .line 122
    if-nez v11, :cond_3

    .line 123
    move-object/from16 v19, v1

    .line 125
    :cond_2
    move-object v5, v10

    .line 127
    goto/16 :goto_6

    .line 128
    :cond_3
    invoke-static {v6}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 130
    sget v11, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 133
    sget v14, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 135
    div-int/2addr v14, v13

    .line 137
    add-int/2addr v14, v11

    .line 138
    sget v11, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 139
    sget v15, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 141
    div-int/2addr v15, v13

    .line 143
    add-int/2addr v15, v11

    .line 144
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    move-result-object v11

    .line 148
    const v2, 0x7f0703bc    # @dimen/gxzw_quick_open_region_big '400.0dp'

    .line 149
    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 152
    move-result v2

    .line 155
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object v11

    .line 159
    const v13, 0x7f0703bd    # @dimen/gxzw_quick_open_region_samll '62.0dp'

    .line 160
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    .line 163
    move-result v11

    .line 166
    new-instance v13, Landroid/graphics/RectF;

    .line 167
    int-to-float v14, v14

    .line 169
    sub-float v3, v14, v2

    .line 170
    int-to-float v15, v15

    .line 172
    sub-float v12, v15, v2

    .line 173
    add-float v5, v14, v2

    .line 175
    add-float/2addr v2, v15

    .line 177
    invoke-direct {v13, v3, v12, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    new-instance v2, Landroid/graphics/RectF;

    .line 181
    sub-float v3, v14, v11

    .line 183
    sub-float v5, v15, v11

    .line 185
    add-float v12, v14, v11

    .line 187
    add-float/2addr v11, v15

    .line 189
    invoke-direct {v2, v3, v5, v12, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 190
    new-instance v3, Landroid/graphics/Region;

    .line 193
    iget v5, v13, Landroid/graphics/RectF;->left:F

    .line 195
    float-to-int v5, v5

    .line 197
    iget v11, v13, Landroid/graphics/RectF;->top:F

    .line 198
    float-to-int v11, v11

    .line 200
    iget v12, v13, Landroid/graphics/RectF;->right:F

    .line 201
    float-to-int v12, v12

    .line 203
    iget v4, v13, Landroid/graphics/RectF;->bottom:F

    .line 204
    float-to-int v4, v4

    .line 206
    invoke-direct {v3, v5, v11, v12, v4}, Landroid/graphics/Region;-><init>(IIII)V

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    .line 210
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    sget-object v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->DEFAULT_ITEM_ID_LIST:[I

    .line 215
    array-length v11, v5

    .line 217
    const/4 v12, 0x0

    .line 218
    :goto_2
    if-ge v12, v11, :cond_7

    .line 219
    move/from16 v17, v11

    .line 221
    aget v11, v5, v12

    .line 223
    move-object/from16 v18, v5

    .line 225
    new-instance v5, Landroid/graphics/RectF;

    .line 227
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 229
    new-instance v0, Landroid/graphics/Region;

    .line 232
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 234
    invoke-static {v5, v0, v6, v11}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->generateQuickOpenItem(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;I)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 237
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getIntent()Landroid/content/Intent;

    .line 241
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 245
    move-result-object v5

    .line 248
    if-nez v5, :cond_4

    .line 249
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 251
    move-result-object v19

    .line 254
    if-eqz v19, :cond_4

    .line 255
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 257
    move-result-object v5

    .line 260
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 261
    move-result-object v5

    .line 264
    :cond_4
    move-object/from16 v19, v1

    .line 265
    if-eqz v5, :cond_5

    .line 267
    const-string v1, "com.android"

    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 271
    move-result v1

    .line 274
    if-eqz v1, :cond_5

    .line 275
    invoke-static {v6, v0}, Lcom/miui/utils/IntentUtils;->isIntentActivityExist(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 277
    move-result v0

    .line 280
    if-eqz v0, :cond_6

    .line 281
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v0

    .line 286
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 290
    move-object/from16 v0, p0

    .line 292
    move/from16 v11, v17

    .line 294
    move-object/from16 v5, v18

    .line 296
    move-object/from16 v1, v19

    .line 298
    goto :goto_2

    .line 300
    :cond_7
    move-object/from16 v19, v1

    .line 301
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 303
    move-result v0

    .line 306
    const/4 v1, 0x5

    .line 307
    if-ne v0, v1, :cond_8

    .line 308
    const/high16 v1, 0x42340000    # 45.0f

    .line 310
    goto :goto_3

    .line 312
    :cond_8
    const/high16 v1, 0x42700000    # 60.0f

    .line 313
    :goto_3
    int-to-float v5, v0

    .line 315
    const/high16 v11, 0x3f800000    # 1.0f

    .line 316
    sub-float v11, v5, v11

    .line 318
    mul-float/2addr v11, v1

    .line 320
    const/high16 v12, 0x43340000    # 180.0f

    .line 321
    sub-float v11, v12, v11

    .line 323
    const/high16 v16, 0x40000000    # 2.0f

    .line 325
    div-float v11, v11, v16

    .line 327
    const/high16 v17, -0x3ccc0000    # -180.0f

    .line 329
    add-float v11, v11, v17

    .line 331
    mul-float/2addr v5, v1

    .line 333
    sub-float/2addr v12, v5

    .line 334
    div-float v12, v12, v16

    .line 335
    add-float v12, v12, v17

    .line 337
    const/4 v5, 0x0

    .line 339
    :goto_4
    if-ge v5, v0, :cond_2

    .line 340
    move-object/from16 v16, v10

    .line 342
    int-to-float v10, v5

    .line 344
    mul-float/2addr v10, v1

    .line 345
    move-object/from16 v17, v6

    .line 346
    add-float v6, v11, v10

    .line 348
    add-float/2addr v10, v12

    .line 350
    move/from16 v18, v11

    .line 351
    move/from16 v20, v12

    .line 353
    float-to-double v11, v8

    .line 355
    move-object/from16 v21, v4

    .line 356
    move/from16 v22, v5

    .line 358
    float-to-double v4, v6

    .line 360
    const-wide v23, 0x40091eb851eb851fL    # 3.14

    .line 361
    mul-double v4, v4, v23

    .line 366
    const-wide v23, 0x4066800000000000L    # 180.0

    .line 368
    div-double v4, v4, v23

    .line 373
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 375
    move-result-wide v23

    .line 378
    move v6, v8

    .line 379
    move/from16 v25, v9

    .line 380
    mul-double v8, v23, v11

    .line 382
    double-to-float v8, v8

    .line 384
    add-float/2addr v8, v14

    .line 385
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 386
    move-result-wide v4

    .line 389
    mul-double/2addr v4, v11

    .line 390
    double-to-float v4, v4

    .line 391
    add-float/2addr v4, v15

    .line 392
    new-instance v5, Landroid/graphics/RectF;

    .line 393
    sub-float v9, v8, v7

    .line 395
    sub-float v11, v4, v7

    .line 397
    add-float/2addr v8, v7

    .line 399
    add-float/2addr v4, v7

    .line 400
    invoke-direct {v5, v9, v11, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 401
    new-instance v4, Landroid/graphics/Path;

    .line 404
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 406
    new-instance v8, Landroid/graphics/Path;

    .line 409
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 411
    invoke-virtual {v4, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 414
    invoke-virtual {v8, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 417
    const/4 v9, 0x0

    .line 420
    invoke-virtual {v4, v13, v10, v1, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 421
    invoke-virtual {v8, v2, v10, v1, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 424
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 427
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 430
    sget-object v9, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 433
    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 435
    new-instance v8, Landroid/graphics/Region;

    .line 438
    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    .line 440
    invoke-virtual {v8, v4, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 443
    if-eqz v25, :cond_9

    .line 446
    sub-int v4, v0, v22

    .line 448
    const/4 v9, -0x1

    .line 450
    add-int/2addr v4, v9

    .line 451
    move-object/from16 v9, v21

    .line 452
    goto :goto_5

    .line 454
    :cond_9
    move-object/from16 v9, v21

    .line 455
    move/from16 v4, v22

    .line 457
    :goto_5
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 459
    move-result-object v4

    .line 462
    check-cast v4, Ljava/lang/Integer;

    .line 463
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 465
    move-result v4

    .line 468
    move-object/from16 v10, v17

    .line 469
    invoke-static {v5, v8, v10, v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->generateQuickOpenItem(Landroid/graphics/RectF;Landroid/graphics/Region;Landroid/content/Context;I)Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 471
    move-result-object v4

    .line 474
    move-object/from16 v5, v16

    .line 475
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v4, v22, 0x1

    .line 480
    move v8, v6

    .line 482
    move-object v6, v10

    .line 483
    move/from16 v11, v18

    .line 484
    move/from16 v12, v20

    .line 486
    move-object v10, v5

    .line 488
    move v5, v4

    .line 489
    move-object v4, v9

    .line 490
    move/from16 v9, v25

    .line 491
    goto/16 :goto_4

    .line 493
    :goto_6
    move-object/from16 v1, v19

    .line 495
    check-cast v1, Ljava/util/ArrayList;

    .line 497
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 499
    move-object/from16 v0, p0

    .line 502
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 504
    check-cast v1, Ljava/util/ArrayList;

    .line 506
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 508
    move-result-object v1

    .line 511
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    move-result v2

    .line 515
    if-eqz v2, :cond_b

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    move-result-object v2

    .line 521
    check-cast v2, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 522
    iget-object v3, v2, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRectF:Landroid/graphics/RectF;

    .line 524
    invoke-virtual {v2}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 526
    move-result-object v2

    .line 529
    const/4 v4, 0x4

    .line 530
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 534
    move-result v5

    .line 537
    const v6, 0x3dcccccd    # 0.1f

    .line 538
    mul-float/2addr v5, v6

    .line 541
    float-to-int v5, v5

    .line 542
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 543
    move-result-object v6

    .line 546
    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 547
    move-result-object v6

    .line 550
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 551
    move-result v6

    .line 554
    if-eqz v6, :cond_a

    .line 555
    new-instance v6, Landroid/graphics/RectF;

    .line 557
    iget v7, v3, Landroid/graphics/RectF;->left:F

    .line 559
    int-to-float v8, v5

    .line 561
    sub-float/2addr v7, v8

    .line 562
    iget v9, v3, Landroid/graphics/RectF;->top:F

    .line 563
    sub-float/2addr v9, v8

    .line 565
    iget v10, v3, Landroid/graphics/RectF;->right:F

    .line 566
    add-float/2addr v10, v8

    .line 568
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 569
    add-float/2addr v3, v8

    .line 571
    invoke-direct {v6, v7, v9, v10, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 572
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 575
    move-object v3, v6

    .line 578
    :cond_a
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 579
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 581
    move-result v6

    .line 584
    float-to-int v6, v6

    .line 585
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 586
    move-result v7

    .line 589
    float-to-int v7, v7

    .line 590
    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 591
    const/16 v6, 0x33

    .line 594
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 596
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 598
    float-to-int v6, v6

    .line 600
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 601
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 603
    float-to-int v3, v3

    .line 605
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 606
    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    goto :goto_7

    .line 611
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 612
    move-result-object v1

    .line 615
    invoke-static {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->caculateGxzwIconSize(Landroid/content/Context;)V

    .line 616
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 619
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 621
    const/4 v3, 0x2

    .line 623
    div-int/2addr v2, v3

    .line 624
    add-int/2addr v2, v1

    .line 625
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 626
    sget v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 628
    div-int/2addr v4, v3

    .line 630
    add-int/2addr v4, v1

    .line 631
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemExpandAnimator:Landroid/animation/Animator;

    .line 632
    if-eqz v1, :cond_c

    .line 634
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 636
    :cond_c
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mQuickOpenItemList:Ljava/util/List;

    .line 639
    check-cast v1, Ljava/util/ArrayList;

    .line 641
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 643
    move-result-object v1

    .line 646
    const/4 v3, 0x0

    .line 647
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    move-result v5

    .line 651
    const/4 v6, 0x0

    .line 652
    if-eqz v5, :cond_e

    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    move-result-object v5

    .line 658
    check-cast v5, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;

    .line 659
    invoke-virtual {v5}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 661
    move-result-object v7

    .line 664
    const/4 v8, 0x0

    .line 665
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 666
    new-instance v7, Landroid/animation/ObjectAnimator;

    .line 669
    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 671
    invoke-virtual {v5}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 674
    move-result-object v7

    .line 677
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 678
    const/4 v10, 0x2

    .line 680
    new-array v11, v10, [F

    .line 681
    int-to-float v10, v2

    .line 683
    iget-object v12, v5, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->mRectF:Landroid/graphics/RectF;

    .line 684
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    .line 686
    move-result v13

    .line 689
    sub-float/2addr v10, v13

    .line 690
    aput v10, v11, v8

    .line 691
    const/4 v10, 0x1

    .line 693
    aput v6, v11, v10

    .line 694
    invoke-static {v7, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 696
    move-result-object v7

    .line 699
    new-instance v9, Landroid/animation/ObjectAnimator;

    .line 700
    invoke-direct {v9}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 702
    invoke-virtual {v5}, Lcom/miui/keyguard/biometrics/fod/item/IQuickOpenItem;->getView()Landroid/view/View;

    .line 705
    move-result-object v5

    .line 708
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 709
    const/4 v11, 0x2

    .line 711
    new-array v13, v11, [F

    .line 712
    int-to-float v11, v4

    .line 714
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    .line 715
    move-result v12

    .line 718
    sub-float/2addr v11, v12

    .line 719
    aput v11, v13, v8

    .line 720
    aput v6, v13, v10

    .line 722
    invoke-static {v5, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 724
    move-result-object v5

    .line 727
    new-instance v6, Landroid/animation/AnimatorSet;

    .line 728
    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 730
    if-nez v3, :cond_d

    .line 733
    iput-object v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemExpandAnimator:Landroid/animation/Animator;

    .line 735
    new-instance v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$5;

    .line 737
    invoke-direct {v3, v0, v10}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView$5;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;I)V

    .line 739
    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 742
    const/4 v3, 0x1

    .line 745
    :cond_d
    filled-new-array {v7, v5}, [Landroid/animation/Animator;

    .line 746
    move-result-object v5

    .line 749
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 750
    const-wide/16 v7, 0x96

    .line 753
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 755
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 758
    goto :goto_8

    .line 761
    :cond_e
    const-class v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 762
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 764
    move-result-object v2

    .line 767
    check-cast v2, Lcom/miui/interfaces/IHapticFeedBack;

    .line 768
    const/16 v3, 0xa5

    .line 770
    check-cast v2, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 772
    invoke-virtual {v2, v3}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->isSupportExtHapticFeedback(I)Z

    .line 774
    move-result v2

    .line 777
    if-eqz v2, :cond_f

    .line 778
    invoke-static {v1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 780
    move-result-object v1

    .line 783
    check-cast v1, Lcom/miui/interfaces/IHapticFeedBack;

    .line 784
    const-string v2, "long_press"

    .line 786
    check-cast v1, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 788
    const/4 v3, -0x1

    .line 790
    const/4 v4, 0x1

    .line 791
    const/4 v5, 0x0

    .line 792
    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 793
    goto :goto_9

    .line 796
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 797
    move-result-object v1

    .line 800
    const-string/jumbo v2, "vibrator"

    .line 801
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 804
    move-result-object v1

    .line 807
    check-cast v1, Landroid/os/Vibrator;

    .line 808
    if-eqz v1, :cond_10

    .line 810
    const-wide/16 v2, 0x18

    .line 812
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 814
    :cond_10
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 817
    move-result-object v1

    .line 820
    invoke-static {v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->isShowQuickOpenSlide(Landroid/content/Context;)Z

    .line 821
    move-result v1

    .line 824
    if-eqz v1, :cond_13

    .line 825
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 827
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 829
    const/4 v3, 0x2

    .line 831
    div-int/2addr v2, v3

    .line 832
    add-int/2addr v2, v1

    .line 833
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 834
    sget v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->SCREEN_HEIGHT_PX:I

    .line 836
    sub-int/2addr v3, v2

    .line 838
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipPressMargin:I

    .line 839
    add-int/2addr v3, v2

    .line 841
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 842
    iget-object v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 844
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 849
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 851
    new-instance v1, Landroid/animation/ObjectAnimator;

    .line 854
    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 856
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 859
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 861
    const/4 v3, 0x2

    .line 863
    new-array v3, v3, [F

    .line 864
    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationY()F

    .line 866
    move-result v4

    .line 869
    const/4 v5, 0x0

    .line 870
    aput v4, v3, v5

    .line 871
    iget v4, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipPressMargin:I

    .line 873
    iget v6, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipSlideMargin:I

    .line 875
    sub-int/2addr v4, v6

    .line 877
    int-to-float v4, v4

    .line 878
    const/4 v6, 0x1

    .line 879
    aput v4, v3, v6

    .line 880
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 882
    move-result-object v1

    .line 885
    const-wide/16 v2, 0x64

    .line 886
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 888
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 891
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 894
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 899
    const v2, 0x7f1304f7    # @string/gxzw_quick_tip_slide 'Don't lift your finger. Swipe to select.'

    .line 901
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 907
    move-result-object v0

    .line 910
    sget-boolean v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->SUPPORT_QUICK_OPEN:Z

    .line 911
    if-nez v1, :cond_11

    .line 913
    goto :goto_a

    .line 915
    :cond_11
    sget-wide v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 916
    const-wide/16 v3, -0x1

    .line 918
    cmp-long v1, v1, v3

    .line 920
    const-wide/16 v2, 0x0

    .line 922
    if-nez v1, :cond_12

    .line 924
    const-string v1, "quick_open"

    .line 926
    const/4 v4, 0x0

    .line 928
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 929
    move-result-object v1

    .line 932
    const-string/jumbo v4, "sp_fod_show_quick_open_slide_time"

    .line 933
    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 936
    move-result-wide v4

    .line 939
    sput-wide v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 940
    :cond_12
    sget-wide v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 942
    cmp-long v1, v4, v2

    .line 944
    if-gtz v1, :cond_13

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 948
    move-result-wide v1

    .line 951
    sput-wide v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->sShowQuickOpenSlideTime:J

    .line 952
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 954
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;

    .line 956
    invoke-direct {v4, v1, v2, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil$3;-><init>(JLandroid/content/Context;)V

    .line 958
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 961
    :cond_13
    :goto_a
    return-void
    .line 964
.end method

.method public final updatePixelSize()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f0703b9    # @dimen/gxzw_quick_open_item_radius '26.0dp'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    sget-object v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenUtil;->DEFAULT_ITEM_ID_LIST:[I

    .line 22
    array-length v1, v1

    .line 24
    const/4 v2, 0x3

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    const/4 v2, 0x4

    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/high16 v1, 0x40a00000    # 5.0f

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    .line 36
    :goto_0
    add-float/2addr v0, v1

    .line 38
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v0

    .line 48
    const v1, 0x7f0703ba    # @dimen/gxzw_quick_open_item_scale_radius '33.0dp'

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    move-result v0

    .line 55
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemScaleRadius:F

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v0

    .line 65
    const v1, 0x7f0703b8    # @dimen/gxzw_quick_open_item_background_radius '40.0dp'

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 69
    move-result v0

    .line 72
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSelectBackgroundRadius:F

    .line 73
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v0

    .line 82
    const v1, 0x7f0703b7    # @dimen/gxzw_quick_open_circle_radius '103.0dp'

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 86
    move-result v0

    .line 89
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mCicleRadius:F

    .line 90
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v0

    .line 99
    const v1, 0x7f0703c7    # @dimen/gxzw_quick_open_title_margin '192.0dp'

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 103
    move-result v0

    .line 106
    float-to-int v0, v0

    .line 107
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleMargin:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    move-result-object v0

    .line 117
    const v1, 0x7f0703c4    # @dimen/gxzw_quick_open_tip_press_margin '57.0dp'

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 121
    move-result v0

    .line 124
    float-to-int v0, v0

    .line 125
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipPressMargin:I

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 128
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v0

    .line 135
    const v1, 0x7f0703c6    # @dimen/gxzw_quick_open_tip_slide_margin '152.0dp'

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 139
    move-result v0

    .line 142
    float-to-int v0, v0

    .line 143
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipSlideMargin:I

    .line 144
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_X:I

    .line 146
    sget v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_WIDTH:I

    .line 148
    div-int/lit8 v1, v1, 0x2

    .line 150
    add-int/2addr v1, v0

    .line 152
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_Y:I

    .line 153
    sget v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ICON_HEIGHT:I

    .line 155
    div-int/lit8 v2, v2, 0x2

    .line 157
    add-int/2addr v2, v0

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    .line 160
    int-to-float v1, v1

    .line 162
    iget v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mItemRadius:F

    .line 163
    sub-float v4, v1, v3

    .line 165
    int-to-float v2, v2

    .line 167
    sub-float v5, v2, v3

    .line 168
    add-float v6, v1, v3

    .line 170
    add-float/2addr v3, v2

    .line 172
    invoke-direct {v0, v4, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 173
    iput-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFingerRect:Landroid/graphics/RectF;

    .line 176
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 178
    move-result-object v0

    .line 181
    const v3, 0x7f0703bd    # @dimen/gxzw_quick_open_region_samll '62.0dp'

    .line 182
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 185
    move-result v0

    .line 188
    new-instance v3, Landroid/graphics/RectF;

    .line 189
    sub-float v4, v1, v0

    .line 191
    sub-float v5, v2, v0

    .line 193
    add-float/2addr v1, v0

    .line 195
    add-float/2addr v2, v0

    .line 196
    invoke-direct {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    iput-object v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mFastRect:Landroid/graphics/RectF;

    .line 200
    return-void
    .line 202
.end method

.method public final updateTextSize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0703c8    # @dimen/gxzw_quick_open_title_size '25.0sp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTitleView:Landroid/widget/TextView;

    .line 13
    int-to-float v0, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 23
    const v1, 0x7f0703c3    # @dimen/gxzw_quick_open_subtitle_size '15.0sp'

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mSubTitleView:Landroid/widget/TextView;

    .line 31
    int-to-float v0, v0

    .line 33
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    const v1, 0x7f0703c5    # @dimen/gxzw_quick_open_tip_size '15.0sp'

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v0

    .line 47
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwQuickOpenView;->mTipView:Landroid/widget/TextView;

    .line 48
    int-to-float v0, v0

    .line 50
    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    return-void
    .line 54
.end method
