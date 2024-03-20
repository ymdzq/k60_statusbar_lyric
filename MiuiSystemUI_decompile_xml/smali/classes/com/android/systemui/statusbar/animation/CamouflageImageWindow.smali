.class public Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mCheckShow:Z

.field public final mContext:Landroid/content/Context;

.field public final mHeight:I

.field public mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

.field public mIntent:Landroid/content/Intent;

.field public final mView:Landroid/view/View;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mContext:Landroid/content/Context;

    .line 5
    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d008a    # @layout/copy_view 'res/layout/copy_view.xml'

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mView:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mHeight:I

    .line 8
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private getWindowParam()Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/4 v1, -0x1

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mHeight:I

    .line 5
    const/16 v3, 0x7f6

    .line 7
    const v4, 0x1800738

    .line 9
    const/4 v5, -0x3

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 14
    const/16 p0, 0x504

    .line 17
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 19
    const/4 p0, 0x0

    .line 21
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 22
    const-string p0, "camouflage_window"

    .line 24
    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 26
    const/16 p0, 0x30

    .line 29
    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    return-object v6
    .line 33
.end method


# virtual methods
.method public final hideView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mCheckShow:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 16
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mCheckShow:Z

    .line 20
    :cond_0
    return-void
    .line 22
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    new-instance v1, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$1;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$1;-><init>(Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;)V

    .line 12
    const-wide/16 v2, 0x7d0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    return-void
    .line 20
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 2
    return-void
    .line 4
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 5
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mIntent:Landroid/content/Intent;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iput-object v1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mIntent:Landroid/content/Intent;

    .line 16
    :cond_1
    return-void
    .line 18
.end method

.method public final showView(Landroid/content/Intent;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    const-string p0, "StatusBarLaunchAnimator"

    .line 4
    const-string/jumbo p1, "start location can\'t be null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mCheckShow:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    return-void

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mCheckShow:Z

    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->getWindowParam()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v1

    .line 26
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mView:Landroid/view/View;

    .line 30
    const v1, 0x7f0a025c    # @id/copy_imageview

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 39
    iput-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 41
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 49
    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 51
    sub-int/2addr v1, v2

    .line 53
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 54
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 56
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 58
    sub-int/2addr v1, v3

    .line 60
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 61
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 63
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 65
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 72
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 78
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mIntent:Landroid/content/Intent;

    .line 83
    new-instance p1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 85
    iget-object p3, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object p3, p0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->mImageView:Lcom/android/systemui/statusbar/animation/CamouflageImageView;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;

    .line 94
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;Landroid/graphics/Rect;)V

    .line 96
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
    .line 102
.end method
